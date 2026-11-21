package com.doctruyen.ui.web

import android.annotation.SuppressLint
import android.content.Context
import android.content.Intent
import android.graphics.Bitmap
import android.graphics.Color
import android.graphics.Typeface
import android.os.Bundle
import android.view.Gravity
import android.view.KeyEvent
import android.view.View
import android.view.ViewGroup
import android.view.inputmethod.EditorInfo
import android.webkit.WebChromeClient
import android.webkit.WebSettings
import android.webkit.WebView
import android.webkit.WebViewClient
import android.widget.Button
import android.widget.EditText
import android.widget.LinearLayout
import android.widget.ProgressBar
import android.widget.Toast
import androidx.appcompat.app.AppCompatActivity
import com.doctruyen.data.remote.ExtensionEngine
import com.doctruyen.ui.reader.ReaderActivity
import com.doctruyen.ui.theme.AppColors

class WebBrowseActivity : AppCompatActivity() {

    companion object {
        const val EXTRA_URL = "extra_initial_url"
        private const val DEFAULT_URL = "https://truyenfull.vision"
    }

    private lateinit var webView: WebView
    private lateinit var progressBar: ProgressBar
    private lateinit var etAddress: EditText
    private lateinit var btnMenu: Button
    private lateinit var btnBack: Button
    private lateinit var btnGo: Button
    private lateinit var btnDark: Button
    private lateinit var btnReadClean: Button

    private var isDarkMode = true
    private var lastBackPressTime = 0L

    @SuppressLint("SetJavaScriptEnabled")
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)

        val prefs = getSharedPreferences("app_theme_prefs", Context.MODE_PRIVATE)
        isDarkMode = prefs.getBoolean("key_dark_mode", true)

        val rootLayout = LinearLayout(this).apply {
            orientation = LinearLayout.VERTICAL
            setBackgroundColor(if (isDarkMode) AppColors.DARK_BG else AppColors.LIGHT_BG)
        }

        // 1. Setup Top Toolbar
        val topBar = createTopBar()
        rootLayout.addView(topBar)

        // 2. ProgressBar
        progressBar = ProgressBar(this, null, android.R.attr.progressBarStyleHorizontal).apply {
            max = 100
            visibility = View.GONE
            layoutParams = LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, dp(3))
        }
        rootLayout.addView(progressBar)

        // 3. WebView Container
        val webContainer = LinearLayout(this).apply {
            orientation = LinearLayout.VERTICAL
            layoutParams = LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, 0, 1.0f)
        }

        webView = WebView(this).apply {
            layoutParams = LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.MATCH_PARENT)
            settings.apply {
                javaScriptEnabled = true
                domStorageEnabled = true
                loadsImagesAutomatically = true
                useWideViewPort = true
                loadWithOverviewMode = true
                cacheMode = WebSettings.LOAD_DEFAULT
                userAgentString = "Mozilla/5.0 (Linux; Android 13; Mobile) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Mobile Safari/537.36"
            }

            webViewClient = object : WebViewClient() {
                override fun onPageStarted(view: WebView?, url: String?, favicon: Bitmap?) {
                    super.onPageStarted(view, url, favicon)
                    progressBar.visibility = View.VISIBLE
                    url?.let { etAddress.setText(it) }
                }

                override fun onPageFinished(view: WebView?, url: String?) {
                    super.onPageFinished(view, url)
                    progressBar.visibility = View.GONE
                    checkChapterDetection()
                }
            }

            webChromeClient = object : WebChromeClient() {
                override fun onProgressChanged(view: WebView?, newProgress: Int) {
                    progressBar.progress = newProgress
                    if (newProgress == 100) progressBar.visibility = View.GONE
                }
            }
        }
        webContainer.addView(webView)
        rootLayout.addView(webContainer)

        // 4. Bottom Action Bar: Read Clean & TTS
        val bottomBar = createBottomBar()
        rootLayout.addView(bottomBar)

        setContentView(rootLayout)

        val initialUrl = intent.getStringExtra(EXTRA_URL) ?: DEFAULT_URL
        loadWebUrl(initialUrl)
    }

    private fun createTopBar(): LinearLayout {
        return LinearLayout(this).apply {
            orientation = LinearLayout.HORIZONTAL
            gravity = Gravity.CENTER_VERTICAL
            setPadding(dp(8), dp(8), dp(8), dp(8))
            setBackgroundColor(if (isDarkMode) AppColors.DARK_SURFACE else AppColors.LIGHT_SURFACE)

            // Nút Menu cố định
            btnMenu = Button(this@WebBrowseActivity).apply {
                text = "🏠 Menu"
                textSize = 12.5f
                typeface = Typeface.DEFAULT_BOLD
                setTextColor(if (isDarkMode) Color.parseColor("#38BDF8") else Color.parseColor("#0284C7"))
                background = AppColors.pillBackground(
                    if (isDarkMode) Color.parseColor("#1E293B") else Color.parseColor("#E0F2FE"),
                    if (isDarkMode) Color.parseColor("#334155") else Color.parseColor("#BAE6FD"),
                    dp(1), dp(18).toFloat()
                )
                setPadding(dp(12), dp(6), dp(12), dp(6))
                layoutParams = LinearLayout.LayoutParams(ViewGroup.LayoutParams.WRAP_CONTENT, dp(38)).apply {
                    rightMargin = dp(6)
                }
                setOnClickListener { finish() }
            }
            addView(btnMenu)

            // Nút Back «
            btnBack = Button(this@WebBrowseActivity).apply {
                text = "«"
                textSize = 16f
                setTextColor(if (isDarkMode) AppColors.DARK_TEXT_PRIMARY else AppColors.LIGHT_TEXT_PRIMARY)
                background = AppColors.pillBackground(
                    if (isDarkMode) AppColors.DARK_SURFACE_ELEVATED else AppColors.LIGHT_SURFACE_ELEVATED,
                    if (isDarkMode) AppColors.DARK_BORDER else AppColors.LIGHT_BORDER,
                    dp(1), dp(19).toFloat()
                )
                setPadding(0, 0, 0, 0)
                layoutParams = LinearLayout.LayoutParams(dp(38), dp(38)).apply {
                    rightMargin = dp(6)
                }
                setOnClickListener {
                    if (webView.canGoBack()) webView.goBack() else finish()
                }
            }
            addView(btnBack)

            // Ô URL
            etAddress = EditText(this@WebBrowseActivity).apply {
                hint = "Nhập link truyện hoặc tìm kiếm..."
                textSize = 13f
                isSingleLine = true
                setTextColor(if (isDarkMode) AppColors.DARK_TEXT_PRIMARY else AppColors.LIGHT_TEXT_PRIMARY)
                setHintTextColor(if (isDarkMode) AppColors.DARK_TEXT_MUTED else AppColors.LIGHT_TEXT_MUTED)
                background = AppColors.pillBackground(
                    if (isDarkMode) AppColors.DARK_SURFACE_ELEVATED else Color.WHITE,
                    if (isDarkMode) AppColors.DARK_BORDER else AppColors.LIGHT_BORDER,
                    dp(1), dp(19).toFloat()
                )
                setPadding(dp(12), dp(6), dp(12), dp(6))
                layoutParams = LinearLayout.LayoutParams(0, dp(38), 1.0f).apply {
                    rightMargin = dp(6)
                }
                setOnEditorActionListener { _, actionId, event ->
                    if (actionId == EditorInfo.IME_ACTION_GO ||
                        (event != null && event.keyCode == KeyEvent.KEYCODE_ENTER && event.action == KeyEvent.ACTION_DOWN)
                    ) {
                        loadWebUrl(text.toString())
                        true
                    } else false
                }
            }
            addView(etAddress)

            // Nút Đi
            btnGo = Button(this@WebBrowseActivity).apply {
                text = "Đi"
                textSize = 13f
                setTextColor(Color.WHITE)
                background = AppColors.pillBackground(AppColors.ACCENT_BLUE, 0, 0, dp(19).toFloat())
                setPadding(0, 0, 0, 0)
                layoutParams = LinearLayout.LayoutParams(dp(44), dp(38)).apply {
                    rightMargin = dp(6)
                }
                setOnClickListener { loadWebUrl(etAddress.text.toString()) }
            }
            addView(btnGo)

            // Nút Dark mode
            btnDark = Button(this@WebBrowseActivity).apply {
                text = if (isDarkMode) "🌙" else "☀️"
                textSize = 14f
                background = AppColors.pillBackground(
                    if (isDarkMode) AppColors.DARK_SURFACE_ELEVATED else AppColors.LIGHT_SURFACE_ELEVATED,
                    if (isDarkMode) AppColors.DARK_BORDER else AppColors.LIGHT_BORDER,
                    dp(1), dp(19).toFloat()
                )
                setPadding(0, 0, 0, 0)
                layoutParams = LinearLayout.LayoutParams(dp(38), dp(38))
                setOnClickListener { toggleTheme() }
            }
            addView(btnDark)
        }
    }

    private fun createBottomBar(): LinearLayout {
        return LinearLayout(this).apply {
            orientation = LinearLayout.HORIZONTAL
            gravity = Gravity.CENTER
            setPadding(dp(12), dp(10), dp(12), dp(10))
            setBackgroundColor(if (isDarkMode) AppColors.DARK_SURFACE else AppColors.LIGHT_SURFACE)

            btnReadClean = Button(this@WebBrowseActivity).apply {
                text = "📖 Bóc Tách & Đọc Sạch (Kèm TTS) »"
                textSize = 13.5f
                typeface = Typeface.DEFAULT_BOLD
                setTextColor(Color.WHITE)
                background = AppColors.pillBackground(AppColors.ACCENT_BLUE, 0, 0, dp(22).toFloat())
                setPadding(dp(20), dp(10), dp(20), dp(10))
                layoutParams = LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, dp(44))
                setOnClickListener { extractAndReadCurrentPage() }
            }
            addView(btnReadClean)
        }
    }

    private fun loadWebUrl(input: String) {
        var url = input.trim()
        if (url.isEmpty()) return
        if (!url.startsWith("http://") && !url.startsWith("https://")) {
            url = if (url.contains(".")) "https://$url" else "https://www.google.com/search?q=$url"
        }
        webView.loadUrl(url)
    }

    private fun checkChapterDetection() {
        val currentUrl = webView.url ?: return
        val isLikelyChapter = currentUrl.contains("chuong") || currentUrl.contains("chap") || currentUrl.contains("chapter")
        if (isLikelyChapter) {
            btnReadClean.text = "✨ Phát hiện chương đọc! Chạm để Đọc Sạch »"
            btnReadClean.background = AppColors.pillBackground(AppColors.ACCENT_EMERALD, 0, 0, dp(22).toFloat())
        } else {
            btnReadClean.text = "📖 Bóc Tách & Đọc Sạch (Kèm TTS) »"
            btnReadClean.background = AppColors.pillBackground(AppColors.ACCENT_BLUE, 0, 0, dp(22).toFloat())
        }
    }

    private fun extractAndReadCurrentPage() {
        val currentUrl = webView.url ?: return
        webView.evaluateJavascript(
            "(function() { return document.documentElement.outerHTML; })();"
        ) { rawHtml ->
            if (rawHtml != null && rawHtml.length > 200) {
                val unescaped = unescapeJsString(rawHtml)
                val extracted = ExtensionEngine.extractChapterContent(unescaped)
                val intent = Intent(this, ReaderActivity::class.java).apply {
                    putExtra(ReaderActivity.EXTRA_BOOK_TITLE, extracted.title.ifEmpty { "Truyện Online" })
                    putExtra(ReaderActivity.EXTRA_CHAPTER_TITLE, extracted.title)
                    putExtra(ReaderActivity.EXTRA_CONTENT_HTML, extracted.contentHtml)
                    putExtra(ReaderActivity.EXTRA_SOURCE_URL, currentUrl)
                    putExtra(ReaderActivity.EXTRA_NEXT_URL, extracted.nextUrl)
                    putExtra(ReaderActivity.EXTRA_PREV_URL, extracted.prevUrl)
                }
                startActivity(intent)
            } else {
                Toast.makeText(this, "Đang tải trang, vui lòng thử lại sau 2 giây", Toast.LENGTH_SHORT).show()
            }
        }
    }

    private fun unescapeJsString(str: String): String {
        var s = str
        if (s.startsWith("\"") && s.endsWith("\"")) s = s.substring(1, s.length - 1)
        return s.replace("\\\"", "\"").replace("\\n", "\n").replace("\\r", "").replace("\\t", "\t").replace("\\\\", "\\")
    }

    private fun toggleTheme() {
        isDarkMode = !isDarkMode
        val prefs = getSharedPreferences("app_theme_prefs", Context.MODE_PRIVATE)
        prefs.edit().putBoolean("key_dark_mode", isDarkMode).apply()
        recreate()
    }

    @Deprecated("Deprecated in Java")
    override fun onBackPressed() {
        val now = System.currentTimeMillis()
        if (now - lastBackPressTime < 1800) {
            finish()
            return
        }

        if (webView.canGoBack()) {
            webView.goBack()
            lastBackPressTime = now
            Toast.makeText(this, "Nhấn [Back] lần nữa để thoát về Menu", Toast.LENGTH_SHORT).show()
        } else {
            finish()
        }
    }

    private fun dp(dpValue: Int): Int {
        return (dpValue * resources.displayMetrics.density).toInt()
    }
}
