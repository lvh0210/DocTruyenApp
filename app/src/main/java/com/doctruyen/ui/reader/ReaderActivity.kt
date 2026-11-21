package com.doctruyen.ui.reader

import android.annotation.SuppressLint
import android.content.ComponentName
import android.content.Context
import android.content.Intent
import android.content.ServiceConnection
import android.graphics.Color
import android.graphics.Typeface
import android.os.Bundle
import android.os.IBinder
import android.view.Gravity
import android.view.View
import android.view.ViewGroup
import android.webkit.WebView
import android.widget.Button
import android.widget.LinearLayout
import android.widget.TextView
import android.widget.Toast
import androidx.appcompat.app.AppCompatActivity
import com.doctruyen.data.local.AppDatabase
import com.doctruyen.data.model.BookItem
import com.doctruyen.data.remote.ExtensionEngine
import com.doctruyen.service.TtsPlaybackService
import com.doctruyen.ui.theme.AppColors
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.launch
import kotlinx.coroutines.withContext

class ReaderActivity : AppCompatActivity() {

    companion object {
        const val EXTRA_BOOK_TITLE = "extra_book_title"
        const val EXTRA_CHAPTER_TITLE = "extra_chapter_title"
        const val EXTRA_CONTENT_HTML = "extra_content_html"
        const val EXTRA_SOURCE_URL = "extra_source_url"
        const val EXTRA_NEXT_URL = "extra_next_url"
        const val EXTRA_PREV_URL = "extra_prev_url"
    }

    private lateinit var webView: WebView
    private lateinit var topBar: LinearLayout
    private lateinit var bottomBar: LinearLayout
    private lateinit var tvTitle: TextView
    private lateinit var btnTts: Button
    private lateinit var btnPrev: Button
    private lateinit var btnNext: Button

    private var isControlsVisible = true
    private var fontSizeSp = 18
    private var currentTheme = "dark" // dark, light, sepia

    private var bookTitle = "DocTruyen"
    private var chapterTitle = "Chương 1"
    private var contentHtml = ""
    private var nextUrl = ""
    private var prevUrl = ""
    private var sourceUrl = ""

    private var ttsService: TtsPlaybackService? = null
    private var isBound = false

    private val connection = object : ServiceConnection {
        override fun onServiceConnected(name: ComponentName?, service: IBinder?) {
            val binder = service as TtsPlaybackService.LocalBinder
            ttsService = binder.getService()
            isBound = true
            ttsService?.onChapterComplete = {
                runOnUiThread { loadNextChapter() }
            }
        }

        override fun onServiceDisconnected(name: ComponentName?) {
            ttsService = null
            isBound = false
        }
    }

    @SuppressLint("SetJavaScriptEnabled")
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)

        bookTitle = intent.getStringExtra(EXTRA_BOOK_TITLE) ?: "DocTruyen"
        chapterTitle = intent.getStringExtra(EXTRA_CHAPTER_TITLE) ?: "Chương"
        contentHtml = intent.getStringExtra(EXTRA_CONTENT_HTML) ?: "<p>Nội dung đang tải...</p>"
        nextUrl = intent.getStringExtra(EXTRA_NEXT_URL) ?: ""
        prevUrl = intent.getStringExtra(EXTRA_PREV_URL) ?: ""
        sourceUrl = intent.getStringExtra(EXTRA_SOURCE_URL) ?: ""

        val prefs = getSharedPreferences("reader_prefs", Context.MODE_PRIVATE)
        fontSizeSp = prefs.getInt("key_font_size", 18)
        currentTheme = prefs.getString("key_theme", "dark") ?: "dark"

        val rootLayout = LinearLayout(this).apply {
            orientation = LinearLayout.VERTICAL
            setBackgroundColor(getThemeBgColor())
        }

        // 1. Top Bar with Menu & Title
        topBar = createTopBar()
        rootLayout.addView(topBar)

        // 2. Main Reader WebView
        webView = WebView(this).apply {
            layoutParams = LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, 0, 1.0f)
            settings.apply {
                javaScriptEnabled = true
                domStorageEnabled = true
            }
            setBackgroundColor(Color.TRANSPARENT)
            setOnClickListener { toggleControls() }
        }
        rootLayout.addView(webView)

        // 3. Bottom Control Bar
        bottomBar = createBottomBar()
        rootLayout.addView(bottomBar)

        setContentView(rootLayout)

        // Save progress to database
        saveReadingProgress()

        // Bind TTS Service
        val serviceIntent = Intent(this, TtsPlaybackService::class.java)
        bindService(serviceIntent, connection, Context.BIND_AUTO_CREATE)

        renderHtmlContent()
    }

    private fun createTopBar(): LinearLayout {
        return LinearLayout(this).apply {
            orientation = LinearLayout.HORIZONTAL
            gravity = Gravity.CENTER_VERTICAL
            setPadding(dp(12), dp(8), dp(12), dp(8))
            setBackgroundColor(getThemeSurfaceColor())

            val btnMenu = Button(this@ReaderActivity).apply {
                text = "🏠 Menu"
                textSize = 12.5f
                typeface = Typeface.DEFAULT_BOLD
                setTextColor(Color.parseColor("#38BDF8"))
                background = AppColors.pillBackground(Color.parseColor("#1E293B"), Color.parseColor("#334155"), dp(1), dp(18).toFloat())
                setPadding(dp(12), dp(6), dp(12), dp(6))
                layoutParams = LinearLayout.LayoutParams(ViewGroup.LayoutParams.WRAP_CONTENT, dp(38)).apply {
                    rightMargin = dp(8)
                }
                setOnClickListener { finish() }
            }
            addView(btnMenu)

            tvTitle = TextView(this@ReaderActivity).apply {
                text = "$bookTitle • $chapterTitle"
                textSize = 13.5f
                typeface = Typeface.DEFAULT_BOLD
                setTextColor(getThemeTextColor())
                isSingleLine = true
                layoutParams = LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1.0f)
            }
            addView(tvTitle)
        }
    }

    private fun createBottomBar(): LinearLayout {
        return LinearLayout(this).apply {
            orientation = LinearLayout.VERTICAL
            setPadding(dp(12), dp(8), dp(12), dp(8))
            setBackgroundColor(getThemeSurfaceColor())

            // Row 1: Prev, TTS, Next
            val row1 = LinearLayout(this@ReaderActivity).apply {
                orientation = LinearLayout.HORIZONTAL
                gravity = Gravity.CENTER_VERTICAL
                layoutParams = LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT)

                btnPrev = Button(this@ReaderActivity).apply {
                    text = "« Trước"
                    textSize = 13f
                    setTextColor(getThemeTextColor())
                    background = AppColors.pillBackground(getThemeElevatedColor(), 0, 0, dp(18).toFloat())
                    layoutParams = LinearLayout.LayoutParams(0, dp(40), 1.0f).apply { rightMargin = dp(6) }
                    setOnClickListener { loadPrevChapter() }
                }
                addView(btnPrev)

                btnTts = Button(this@ReaderActivity).apply {
                    text = "▶ Đọc TTS"
                    textSize = 13.5f
                    typeface = Typeface.DEFAULT_BOLD
                    setTextColor(Color.WHITE)
                    background = AppColors.pillBackground(AppColors.ACCENT_BLUE, 0, 0, dp(18).toFloat())
                    layoutParams = LinearLayout.LayoutParams(0, dp(40), 1.3f).apply { rightMargin = dp(6) }
                    setOnClickListener { toggleTts() }
                }
                addView(btnTts)

                btnNext = Button(this@ReaderActivity).apply {
                    text = "Sau »"
                    textSize = 13f
                    setTextColor(getThemeTextColor())
                    background = AppColors.pillBackground(getThemeElevatedColor(), 0, 0, dp(18).toFloat())
                    layoutParams = LinearLayout.LayoutParams(0, dp(40), 1.0f)
                    setOnClickListener { loadNextChapter() }
                }
                addView(btnNext)
            }
            addView(row1)

            // Row 2: Theme, Font-, Font+
            val row2 = LinearLayout(this@ReaderActivity).apply {
                orientation = LinearLayout.HORIZONTAL
                gravity = Gravity.CENTER_VERTICAL
                layoutParams = LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT).apply {
                    topMargin = dp(6)
                }

                val btnTheme = Button(this@ReaderActivity).apply {
                    text = "🎨 Nền"
                    textSize = 12f
                    setTextColor(getThemeTextColor())
                    background = AppColors.pillBackground(getThemeElevatedColor(), 0, 0, dp(16).toFloat())
                    layoutParams = LinearLayout.LayoutParams(0, dp(36), 1.0f).apply { rightMargin = dp(6) }
                    setOnClickListener { cycleTheme() }
                }
                addView(btnTheme)

                val btnFontDec = Button(this@ReaderActivity).apply {
                    text = "A-"
                    textSize = 13f
                    typeface = Typeface.DEFAULT_BOLD
                    setTextColor(getThemeTextColor())
                    background = AppColors.pillBackground(getThemeElevatedColor(), 0, 0, dp(16).toFloat())
                    layoutParams = LinearLayout.LayoutParams(0, dp(36), 0.8f).apply { rightMargin = dp(6) }
                    setOnClickListener { changeFontSize(-2) }
                }
                addView(btnFontDec)

                val btnFontInc = Button(this@ReaderActivity).apply {
                    text = "A+"
                    textSize = 13f
                    typeface = Typeface.DEFAULT_BOLD
                    setTextColor(getThemeTextColor())
                    background = AppColors.pillBackground(getThemeElevatedColor(), 0, 0, dp(16).toFloat())
                    layoutParams = LinearLayout.LayoutParams(0, dp(36), 0.8f)
                    setOnClickListener { changeFontSize(+2) }
                }
                addView(btnFontInc)
            }
            addView(row2)
        }
    }

    private fun renderHtmlContent() {
        val bgHex = when (currentTheme) {
            "light" -> "#FFFFFF"
            "sepia" -> "#FBF0D9"
            else -> "#0A0D14"
        }
        val textHex = when (currentTheme) {
            "light" -> "#0F172A"
            "sepia" -> "#3E2723"
            else -> "#E2E8F0"
        }

        val fullHtml = """
            <!DOCTYPE html>
            <html>
            <head>
                <meta charset="utf-8">
                <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">
                <style>
                    body {
                        background-color: $bgHex;
                        color: $textHex;
                        font-family: -apple-system, Roboto, sans-serif;
                        font-size: ${fontSizeSp}px;
                        line-height: 1.8;
                        padding: 16px;
                        margin: 0;
                        word-wrap: break-word;
                    }
                    h2 {
                        font-size: ${fontSizeSp + 4}px;
                        color: #38BDF8;
                        margin-bottom: 20px;
                        border-bottom: 1px solid #334155;
                        padding-bottom: 8px;
                    }
                    p {
                        margin-bottom: 16px;
                        text-indent: 1.5em;
                    }
                </style>
            </head>
            <body>
                <h2>$chapterTitle</h2>
                $contentHtml
                <div style="height: 60px;"></div>
            </body>
            </html>
        """.trimIndent()

        webView.loadDataWithBaseURL("file:///android_asset/reader/", fullHtml, "text/html", "UTF-8", null)
    }

    private fun toggleControls() {
        isControlsVisible = !isControlsVisible
        val vis = if (isControlsVisible) View.VISIBLE else View.GONE
        topBar.visibility = vis
        bottomBar.visibility = vis
    }

    private fun toggleTts() {
        ttsService?.let { service ->
            if (service.isCurrentlyPlaying()) {
                service.pauseSpeaking()
                btnTts.text = "▶ Đọc TTS"
            } else {
                service.startSpeaking(contentHtml, chapterTitle, bookTitle)
                btnTts.text = "⏸ Tạm Dừng"
            }
        } ?: run {
            Toast.makeText(this, "Đang khởi tạo TTS, vui lòng thử lại...", Toast.LENGTH_SHORT).show()
        }
    }

    private fun loadNextChapter() {
        if (nextUrl.isNotEmpty()) {
            Toast.makeText(this, "Đang tải chương tiếp theo...", Toast.LENGTH_SHORT).show()
            CoroutineScope(Dispatchers.Main).launch {
                val html = withContext(Dispatchers.IO) { ExtensionEngine.fetchUrlContent(nextUrl) }
                if (html.isNotEmpty()) {
                    val extracted = ExtensionEngine.extractChapterContent(html)
                    chapterTitle = extracted.title.ifEmpty { "Chương tiếp" }
                    contentHtml = extracted.contentHtml
                    sourceUrl = nextUrl
                    nextUrl = extracted.nextUrl
                    prevUrl = extracted.prevUrl

                    tvTitle.text = "$bookTitle • $chapterTitle"
                    renderHtmlContent()
                    saveReadingProgress()

                    if (ttsService?.isCurrentlyPlaying() == true) {
                        ttsService?.startSpeaking(contentHtml, chapterTitle, bookTitle)
                    }
                } else {
                    Toast.makeText(this@ReaderActivity, "Không thể tải chương tiếp theo", Toast.LENGTH_SHORT).show()
                }
            }
        } else {
            Toast.makeText(this, "Đã tới chương mới nhất!", Toast.LENGTH_SHORT).show()
        }
    }

    private fun loadPrevChapter() {
        if (prevUrl.isNotEmpty()) {
            Toast.makeText(this, "Đang tải chương trước...", Toast.LENGTH_SHORT).show()
            CoroutineScope(Dispatchers.Main).launch {
                val html = withContext(Dispatchers.IO) { ExtensionEngine.fetchUrlContent(prevUrl) }
                if (html.isNotEmpty()) {
                    val extracted = ExtensionEngine.extractChapterContent(html)
                    chapterTitle = extracted.title.ifEmpty { "Chương trước" }
                    contentHtml = extracted.contentHtml
                    sourceUrl = prevUrl
                    nextUrl = extracted.nextUrl
                    prevUrl = extracted.prevUrl

                    tvTitle.text = "$bookTitle • $chapterTitle"
                    renderHtmlContent()
                    saveReadingProgress()
                }
            }
        } else {
            Toast.makeText(this, "Đã tới chương đầu tiên!", Toast.LENGTH_SHORT).show()
        }
    }

    private fun cycleTheme() {
        currentTheme = when (currentTheme) {
            "dark" -> "sepia"
            "sepia" -> "light"
            else -> "dark"
        }
        val prefs = getSharedPreferences("reader_prefs", Context.MODE_PRIVATE)
        prefs.edit().putString("key_theme", currentTheme).apply()
        renderHtmlContent()
    }

    private fun changeFontSize(delta: Int) {
        fontSizeSp = (fontSizeSp + delta).coerceIn(12, 32)
        val prefs = getSharedPreferences("reader_prefs", Context.MODE_PRIVATE)
        prefs.edit().putInt("key_font_size", fontSizeSp).apply()
        renderHtmlContent()
    }

    private fun saveReadingProgress() {
        CoroutineScope(Dispatchers.IO).launch {
            val db = AppDatabase.getInstance(this@ReaderActivity)
            val book = BookItem(
                title = bookTitle,
                author = "Online",
                currentChapterTitle = chapterTitle,
                sourceUrl = sourceUrl,
                isOnline = true,
                lastReadTime = System.currentTimeMillis()
            )
            db.insertOrUpdateBook(book)
        }
    }

    private fun getThemeBgColor() = when (currentTheme) {
        "light" -> AppColors.LIGHT_BG
        "sepia" -> Color.parseColor("#F5E6C8")
        else -> AppColors.DARK_BG
    }

    private fun getThemeSurfaceColor() = when (currentTheme) {
        "light" -> AppColors.LIGHT_SURFACE
        "sepia" -> Color.parseColor("#EED9B3")
        else -> AppColors.DARK_SURFACE
    }

    private fun getThemeElevatedColor() = when (currentTheme) {
        "light" -> AppColors.LIGHT_SURFACE_ELEVATED
        "sepia" -> Color.parseColor("#E4CC9F")
        else -> AppColors.DARK_SURFACE_ELEVATED
    }

    private fun getThemeTextColor() = when (currentTheme) {
        "light" -> AppColors.LIGHT_TEXT_PRIMARY
        "sepia" -> Color.parseColor("#3E2723")
        else -> AppColors.DARK_TEXT_PRIMARY
    }

    private fun dp(dpValue: Int): Int {
        return (dpValue * resources.displayMetrics.density).toInt()
    }

    override fun onDestroy() {
        if (isBound) {
            unbindService(connection)
            isBound = false
        }
        super.onDestroy()
    }
}
