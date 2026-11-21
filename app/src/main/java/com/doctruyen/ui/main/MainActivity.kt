package com.doctruyen.ui.main

import android.app.Activity
import android.content.Context
import android.content.Intent
import android.graphics.Color
import android.graphics.Typeface
import android.net.Uri
import android.os.Bundle
import android.view.Gravity
import android.view.View
import android.view.ViewGroup
import android.widget.Button
import android.widget.EditText
import android.widget.LinearLayout
import android.widget.ScrollView
import android.widget.TextView
import android.widget.Toast
import androidx.activity.result.contract.ActivityResultContracts
import androidx.appcompat.app.AppCompatActivity
import com.doctruyen.data.local.AppDatabase
import com.doctruyen.data.local.BookScanner
import com.doctruyen.data.model.BookItem
import com.doctruyen.data.model.ExtensionSource
import com.doctruyen.data.remote.ExtensionEngine
import com.doctruyen.ui.reader.ReaderActivity
import com.doctruyen.ui.theme.AppColors
import com.doctruyen.ui.web.WebBrowseActivity
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.launch
import kotlinx.coroutines.withContext

class MainActivity : AppCompatActivity() {

    private var isDarkMode = true
    private var currentTabIndex = 0 // 0: Bookshelf, 1: Web, 2: Sources, 3: Manga

    private lateinit var tabBookshelf: TextView
    private lateinit var tabWeb: TextView
    private lateinit var tabSources: TextView
    private lateinit var tabManga: TextView

    private lateinit var containerBookshelf: LinearLayout
    private lateinit var containerWeb: LinearLayout
    private lateinit var containerSources: LinearLayout
    private lateinit var containerManga: LinearLayout

    private lateinit var resumeCardContainer: LinearLayout
    private lateinit var booksListContainer: LinearLayout

    private val openFileLauncher = registerForActivityResult(ActivityResultContracts.StartActivityForResult()) { result ->
        if (result.resultCode == Activity.RESULT_OK) {
            val uri: Uri? = result.data?.data
            if (uri != null) {
                handlePickedFile(uri)
            }
        }
    }

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)

        val prefs = getSharedPreferences("app_theme_prefs", Context.MODE_PRIVATE)
        isDarkMode = prefs.getBoolean("key_dark_mode", true)

        val root = LinearLayout(this).apply {
            orientation = LinearLayout.VERTICAL
            setBackgroundColor(if (isDarkMode) AppColors.DARK_BG else AppColors.LIGHT_BG)
        }

        // 1. Header Bar
        val headerBar = createHeaderBar()
        root.addView(headerBar)

        // 2. Segmented Capsule TabBar
        val tabBar = createTabBar()
        root.addView(tabBar)

        // 3. Scrollable Content Area
        val scrollView = ScrollView(this).apply {
            isFillViewport = true
            layoutParams = LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, 0, 1.0f)
        }

        val contentLayout = LinearLayout(this).apply {
            orientation = LinearLayout.VERTICAL
            setPadding(dp(16), dp(12), dp(16), dp(32))
        }

        // Containers for 4 tabs
        containerBookshelf = createBookshelfTab()
        containerWeb = createWebTab()
        containerSources = createSourcesTab(isManga = false)
        containerManga = createSourcesTab(isManga = true)

        contentLayout.addView(containerBookshelf)
        contentLayout.addView(containerWeb)
        contentLayout.addView(containerSources)
        contentLayout.addView(containerManga)

        scrollView.addView(contentLayout)
        root.addView(scrollView)

        setContentView(root)

        selectTab(0)
    }

    override fun onResume() {
        super.onResume()
        refreshBookshelf()
    }

    private fun createHeaderBar(): LinearLayout {
        return LinearLayout(this).apply {
            orientation = LinearLayout.HORIZONTAL
            gravity = Gravity.CENTER_VERTICAL
            setPadding(dp(16), dp(12), dp(16), dp(8))
            setBackgroundColor(if (isDarkMode) AppColors.DARK_SURFACE else AppColors.LIGHT_SURFACE)

            // Logo & Titles
            val titleLayout = LinearLayout(this@MainActivity).apply {
                orientation = LinearLayout.VERTICAL
                layoutParams = LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1.0f)
            }

            val tvBrand = TextView(this@MainActivity).apply {
                text = "📚 DocTruyen Reader"
                textSize = 19f
                typeface = Typeface.DEFAULT_BOLD
                setTextColor(if (isDarkMode) Color.WHITE else Color.parseColor("#0F172A"))
            }
            titleLayout.addView(tvBrand)

            val tvSub = TextView(this@MainActivity).apply {
                text = "Kho Sách Điện Tử & Trình Đọc Web • v2.0.0"
                textSize = 12f
                setTextColor(if (isDarkMode) AppColors.DARK_TEXT_MUTED else AppColors.LIGHT_TEXT_MUTED)
            }
            titleLayout.addView(tvSub)
            addView(titleLayout)

            // Theme toggle button
            val btnTheme = Button(this@MainActivity).apply {
                text = if (isDarkMode) "🌙" else "☀️"
                textSize = 15f
                background = AppColors.pillBackground(
                    if (isDarkMode) AppColors.DARK_SURFACE_ELEVATED else AppColors.LIGHT_SURFACE_ELEVATED,
                    if (isDarkMode) AppColors.DARK_BORDER else AppColors.LIGHT_BORDER,
                    dp(1), dp(18).toFloat()
                )
                setPadding(0, 0, 0, 0)
                layoutParams = LinearLayout.LayoutParams(dp(36), dp(36))
                setOnClickListener { toggleTheme() }
            }
            addView(btnTheme)
        }
    }

    private fun createTabBar(): LinearLayout {
        return LinearLayout(this).apply {
            orientation = LinearLayout.HORIZONTAL
            gravity = Gravity.CENTER
            setPadding(dp(12), dp(8), dp(12), dp(8))
            setBackgroundColor(if (isDarkMode) AppColors.DARK_SURFACE else AppColors.LIGHT_SURFACE)

            tabBookshelf = createTabPill("📚 Tủ Sách") { selectTab(0) }
            tabWeb = createTabPill("🌐 Đọc Web") { selectTab(1) }
            tabSources = createTabPill("✨ Nguồn") { selectTab(2) }
            tabManga = createTabPill("🎨 Manga") { selectTab(3) }

            addView(tabBookshelf)
            addView(tabWeb)
            addView(tabSources)
            addView(tabManga)
        }
    }

    private fun createTabPill(title: String, onClick: () -> Unit): TextView {
        return TextView(this).apply {
            text = title
            textSize = 13f
            gravity = Gravity.CENTER
            setPadding(dp(12), dp(8), dp(12), dp(8))
            layoutParams = LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1.0f).apply {
                setMargins(dp(3), 0, dp(3), 0)
            }
            setOnClickListener { onClick() }
        }
    }

    private fun selectTab(index: Int) {
        currentTabIndex = index

        containerBookshelf.visibility = if (index == 0) View.VISIBLE else View.GONE
        containerWeb.visibility = if (index == 1) View.VISIBLE else View.GONE
        containerSources.visibility = if (index == 2) View.VISIBLE else View.GONE
        containerManga.visibility = if (index == 3) View.VISIBLE else View.GONE

        updatePillStyle(tabBookshelf, index == 0)
        updatePillStyle(tabWeb, index == 1)
        updatePillStyle(tabSources, index == 2)
        updatePillStyle(tabManga, index == 3)
    }

    private fun updatePillStyle(tab: TextView, isSelected: Boolean) {
        if (isSelected) {
            tab.setTypeface(Typeface.DEFAULT_BOLD)
            tab.setTextColor(Color.WHITE)
            tab.background = AppColors.pillBackground(AppColors.ACCENT_BLUE, 0, 0, dp(20).toFloat())
        } else {
            tab.setTypeface(Typeface.DEFAULT)
            tab.setTextColor(if (isDarkMode) AppColors.DARK_TEXT_SECONDARY else AppColors.LIGHT_TEXT_SECONDARY)
            tab.background = AppColors.pillBackground(
                if (isDarkMode) AppColors.DARK_SURFACE_ELEVATED else AppColors.LIGHT_SURFACE_ELEVATED,
                if (isDarkMode) AppColors.DARK_BORDER else AppColors.LIGHT_BORDER,
                dp(1), dp(20).toFloat()
            )
        }
    }

    private fun createBookshelfTab(): LinearLayout {
        return LinearLayout(this).apply {
            orientation = LinearLayout.VERTICAL

            // 1. Resume Reading Card (Hero)
            resumeCardContainer = LinearLayout(this@MainActivity).apply {
                orientation = LinearLayout.VERTICAL
                layoutParams = LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT)
            }
            addView(resumeCardContainer)

            // 2. Quick Action Buttons (50:50 Balanced)
            val actionsRow = LinearLayout(this@MainActivity).apply {
                orientation = LinearLayout.HORIZONTAL
                layoutParams = LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT).apply {
                    topMargin = dp(12)
                    bottomMargin = dp(16)
                }

                // Button 1: Nhập Sách
                val btnImport = Button(this@MainActivity).apply {
                    text = "📂 Nhập Sách\nEPUB, TXT, PDF"
                    textSize = 12.5f
                    typeface = Typeface.DEFAULT_BOLD
                    setTextColor(Color.WHITE)
                    background = AppColors.pillBackground(AppColors.ACCENT_BLUE, 0, 0, dp(14).toFloat())
                    setPadding(dp(12), dp(12), dp(12), dp(12))
                    layoutParams = LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1.0f).apply {
                        rightMargin = dp(6)
                    }
                    setOnClickListener { openDocumentPicker() }
                }
                addView(btnImport)

                // Button 2: Quét Tự Động
                val btnScan = Button(this@MainActivity).apply {
                    text = "🔄 Quét Tự Động\nThư mục Download"
                    textSize = 12.5f
                    typeface = Typeface.DEFAULT_BOLD
                    setTextColor(if (isDarkMode) AppColors.DARK_TEXT_PRIMARY else AppColors.LIGHT_TEXT_PRIMARY)
                    background = AppColors.pillBackground(
                        if (isDarkMode) AppColors.DARK_SURFACE else Color.WHITE,
                        if (isDarkMode) AppColors.DARK_BORDER else AppColors.LIGHT_BORDER,
                        dp(1), dp(14).toFloat()
                    )
                    setPadding(dp(12), dp(12), dp(12), dp(12))
                    layoutParams = LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1.0f)
                    setOnClickListener { scanDownloads() }
                }
                addView(btnScan)
            }
            addView(actionsRow)

            // 3. Books List Section
            val tvHeader = TextView(this@MainActivity).apply {
                text = "TỦ SÁCH CỦA BẠN"
                textSize = 12f
                typeface = Typeface.DEFAULT_BOLD
                setTextColor(if (isDarkMode) AppColors.DARK_TEXT_MUTED else AppColors.LIGHT_TEXT_MUTED)
                setPadding(dp(2), 0, 0, dp(8))
            }
            addView(tvHeader)

            booksListContainer = LinearLayout(this@MainActivity).apply {
                orientation = LinearLayout.VERTICAL
            }
            addView(booksListContainer)
        }
    }

    private fun createWebTab(): LinearLayout {
        return LinearLayout(this).apply {
            orientation = LinearLayout.VERTICAL

            // Web Hub Card
            val webCard = LinearLayout(this@MainActivity).apply {
                orientation = LinearLayout.VERTICAL
                setPadding(dp(16), dp(16), dp(16), dp(16))
                background = AppColors.pillBackground(
                    if (isDarkMode) AppColors.DARK_SURFACE else Color.WHITE,
                    if (isDarkMode) AppColors.DARK_BORDER else AppColors.LIGHT_BORDER,
                    dp(1), dp(16).toFloat()
                )
                layoutParams = LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT)

                val tvWebTitle = TextView(this@MainActivity).apply {
                    text = "🌐 Khám Phá Truyện Web"
                    textSize = 16f
                    typeface = Typeface.DEFAULT_BOLD
                    setTextColor(if (isDarkMode) Color.WHITE else Color.parseColor("#0F172A"))
                }
                addView(tvWebTitle)

                val tvWebDesc = TextView(this@MainActivity).apply {
                    text = "Duyệt web đọc truyện không giới hạn, hỗ trợ chặn quảng cáo và bóc tách nội dung sạch kèm phát âm thanh TTS đọc truyện chạy nền."
                    textSize = 13f
                    setTextColor(if (isDarkMode) AppColors.DARK_TEXT_SECONDARY else AppColors.LIGHT_TEXT_SECONDARY)
                    setPadding(0, dp(6), 0, dp(14))
                }
                addView(tvWebDesc)

                val btnOpenBrowser = Button(this@MainActivity).apply {
                    text = "🚀 MỞ TRÌNH DUYỆT WEB »"
                    textSize = 13.5f
                    typeface = Typeface.DEFAULT_BOLD
                    setTextColor(Color.WHITE)
                    background = AppColors.pillBackground(AppColors.ACCENT_BLUE, 0, 0, dp(20).toFloat())
                    setPadding(dp(16), dp(12), dp(16), dp(12))
                    layoutParams = LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, dp(44))
                    setOnClickListener {
                        val intent = Intent(this@MainActivity, WebBrowseActivity::class.java)
                        startActivity(intent)
                    }
                }
                addView(btnOpenBrowser)
            }
            addView(webCard)

            // Direct Link Box
            val directCard = LinearLayout(this@MainActivity).apply {
                orientation = LinearLayout.VERTICAL
                setPadding(dp(16), dp(16), dp(16), dp(16))
                background = AppColors.pillBackground(
                    if (isDarkMode) AppColors.DARK_SURFACE else Color.WHITE,
                    if (isDarkMode) AppColors.DARK_BORDER else AppColors.LIGHT_BORDER,
                    dp(1), dp(16).toFloat()
                )
                layoutParams = LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT).apply {
                    topMargin = dp(16)
                }

                val tvDirect = TextView(this@MainActivity).apply {
                    text = "🔗 Đọc Trực Tiếp Link Chương"
                    textSize = 14f
                    typeface = Typeface.DEFAULT_BOLD
                    setTextColor(if (isDarkMode) Color.WHITE else Color.parseColor("#0F172A"))
                }
                addView(tvDirect)

                val etLink = EditText(this@MainActivity).apply {
                    hint = "Dán link chương truyện (TruyenFull, TangThuVien...)"
                    textSize = 13f
                    isSingleLine = true
                    setTextColor(if (isDarkMode) Color.WHITE else Color.parseColor("#0F172A"))
                    background = AppColors.pillBackground(
                        if (isDarkMode) AppColors.DARK_SURFACE_ELEVATED else AppColors.LIGHT_SURFACE_ELEVATED,
                        0, 0, dp(12).toFloat()
                    )
                    setPadding(dp(12), dp(10), dp(12), dp(10))
                    layoutParams = LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT).apply {
                        topMargin = dp(8)
                        bottomMargin = dp(10)
                    }
                }
                addView(etLink)

                val btnDirectRead = Button(this@MainActivity).apply {
                    text = "▶ Bóc Tách & Đọc Ngay"
                    textSize = 13f
                    typeface = Typeface.DEFAULT_BOLD
                    setTextColor(Color.WHITE)
                    background = AppColors.pillBackground(AppColors.ACCENT_EMERALD, 0, 0, dp(16).toFloat())
                    layoutParams = LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, dp(40))
                    setOnClickListener {
                        val url = etLink.text.toString().trim()
                        if (url.isNotEmpty()) {
                            val intent = Intent(this@MainActivity, WebBrowseActivity::class.java).apply {
                                putExtra(WebBrowseActivity.EXTRA_URL, url)
                            }
                            startActivity(intent)
                        } else {
                            Toast.makeText(this@MainActivity, "Vui lòng nhập link chương truyện", Toast.LENGTH_SHORT).show()
                        }
                    }
                }
                addView(btnDirectRead)
            }
            addView(directCard)
        }
    }

    private fun createSourcesTab(isManga: Boolean): LinearLayout {
        val container = LinearLayout(this).apply {
            orientation = LinearLayout.VERTICAL
        }

        CoroutineScope(Dispatchers.Main).launch {
            val allSources = withContext(Dispatchers.IO) { ExtensionEngine.getExtensions(this@MainActivity) }
            val filtered = allSources.filter { src ->
                if (isManga) {
                    src.name.contains("Manga", ignoreCase = true) || src.name.contains("Hentai", ignoreCase = true) || src.name.contains("Manhwa", ignoreCase = true)
                } else {
                    !src.name.contains("Manga", ignoreCase = true) && !src.name.contains("Hentai", ignoreCase = true) && !src.name.contains("Manhwa", ignoreCase = true)
                }
            }

            container.removeAllViews()
            for (source in filtered) {
                val card = createSourceCard(source)
                container.addView(card)
            }
        }
        return container
    }

    private fun createSourceCard(source: ExtensionSource): View {
        return LinearLayout(this).apply {
            orientation = LinearLayout.HORIZONTAL
            gravity = Gravity.CENTER_VERTICAL
            setPadding(dp(14), dp(12), dp(14), dp(12))
            background = AppColors.pillBackground(
                if (isDarkMode) AppColors.DARK_SURFACE else Color.WHITE,
                if (isDarkMode) AppColors.DARK_BORDER else AppColors.LIGHT_BORDER,
                dp(1), dp(14).toFloat()
            )
            layoutParams = LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT).apply {
                bottomMargin = dp(8)
            }

            val tvIcon = TextView(this@MainActivity).apply {
                text = "📖"
                textSize = 22f
                setPadding(0, 0, dp(12), 0)
            }
            addView(tvIcon)

            val infoLayout = LinearLayout(this@MainActivity).apply {
                orientation = LinearLayout.VERTICAL
                layoutParams = LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1.0f)
            }

            val tvName = TextView(this@MainActivity).apply {
                text = source.name
                textSize = 14.5f
                typeface = Typeface.DEFAULT_BOLD
                setTextColor(if (isDarkMode) Color.WHITE else Color.parseColor("#0F172A"))
            }
            infoLayout.addView(tvName)

            val tvUrl = TextView(this@MainActivity).apply {
                text = source.baseUrl
                textSize = 12f
                setTextColor(if (isDarkMode) AppColors.DARK_TEXT_MUTED else AppColors.LIGHT_TEXT_MUTED)
            }
            infoLayout.addView(tvUrl)
            addView(infoLayout)

            val btnOpen = Button(this@MainActivity).apply {
                text = "Mở »"
                textSize = 12f
                typeface = Typeface.DEFAULT_BOLD
                setTextColor(Color.WHITE)
                background = AppColors.pillBackground(AppColors.ACCENT_BLUE, 0, 0, dp(14).toFloat())
                setPadding(dp(12), dp(4), dp(12), dp(4))
                layoutParams = LinearLayout.LayoutParams(ViewGroup.LayoutParams.WRAP_CONTENT, dp(34))
                setOnClickListener {
                    val intent = Intent(this@MainActivity, WebBrowseActivity::class.java).apply {
                        putExtra(WebBrowseActivity.EXTRA_URL, source.baseUrl)
                    }
                    startActivity(intent)
                }
            }
            addView(btnOpen)
        }
    }

    private fun refreshBookshelf() {
        CoroutineScope(Dispatchers.Main).launch {
            val db = AppDatabase.getInstance(this@MainActivity)
            val recentBook = withContext(Dispatchers.IO) { db.getRecentBook() }
            val allBooks = withContext(Dispatchers.IO) { db.getAllBooks() }

            // 1. Render Hero Resume Card
            resumeCardContainer.removeAllViews()
            if (recentBook != null) {
                val heroCard = createHeroResumeCard(recentBook)
                resumeCardContainer.addView(heroCard)
            }

            // 2. Render Bookshelf List
            booksListContainer.removeAllViews()
            if (allBooks.isEmpty()) {
                val emptyTv = TextView(this@MainActivity).apply {
                    text = "Chưa có sách nào trong tủ sách.\nHãy nhấn 'Nhập Sách' hoặc 'Quét Tự Động' để bắt đầu đọc!"
                    textSize = 13.5f
                    gravity = Gravity.CENTER
                    setTextColor(if (isDarkMode) AppColors.DARK_TEXT_MUTED else AppColors.LIGHT_TEXT_MUTED)
                    setPadding(dp(16), dp(32), dp(16), dp(32))
                }
                booksListContainer.addView(emptyTv)
            } else {
                for (book in allBooks) {
                    val bookItemView = createBookItemView(book)
                    booksListContainer.addView(bookItemView)
                }
            }
        }
    }

    private fun createHeroResumeCard(book: BookItem): View {
        return LinearLayout(this).apply {
            orientation = LinearLayout.VERTICAL
            setPadding(dp(16), dp(14), dp(16), dp(14))
            background = AppColors.pillBackground(
                if (isDarkMode) Color.parseColor("#131D2E") else Color.parseColor("#EBF5FF"),
                if (isDarkMode) Color.parseColor("#1E3A8A") else Color.parseColor("#BFDBFE"),
                dp(1), dp(16).toFloat()
            )

            val tvHeader = TextView(this@MainActivity).apply {
                text = "⚡ TIẾP TỤC ĐỌC DỞ"
                textSize = 11.5f
                typeface = Typeface.DEFAULT_BOLD
                setTextColor(AppColors.ACCENT_BLUE_LIGHT)
            }
            addView(tvHeader)

            val tvTitle = TextView(this@MainActivity).apply {
                text = book.title
                textSize = 16f
                typeface = Typeface.DEFAULT_BOLD
                setTextColor(if (isDarkMode) Color.WHITE else Color.parseColor("#0F172A"))
                setPadding(0, dp(4), 0, dp(2))
            }
            addView(tvTitle)

            val tvChapter = TextView(this@MainActivity).apply {
                text = if (book.currentChapterTitle.isNotEmpty()) book.currentChapterTitle else "Chương đang đọc"
                textSize = 13f
                setTextColor(if (isDarkMode) AppColors.DARK_TEXT_SECONDARY else AppColors.LIGHT_TEXT_SECONDARY)
            }
            addView(tvChapter)

            val btnContinue = Button(this@MainActivity).apply {
                text = "▶ ĐỌC TIẾP NGAY"
                textSize = 13f
                typeface = Typeface.DEFAULT_BOLD
                setTextColor(Color.WHITE)
                background = AppColors.pillBackground(AppColors.ACCENT_BLUE, 0, 0, dp(16).toFloat())
                layoutParams = LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, dp(40)).apply {
                    topMargin = dp(10)
                }
                setOnClickListener {
                    if (book.sourceUrl.isNotEmpty()) {
                        val intent = Intent(this@MainActivity, WebBrowseActivity::class.java).apply {
                            putExtra(WebBrowseActivity.EXTRA_URL, book.sourceUrl)
                        }
                        startActivity(intent)
                    } else {
                        Toast.makeText(this@MainActivity, "Mở lại: ${book.title}", Toast.LENGTH_SHORT).show()
                    }
                }
            }
            addView(btnContinue)
        }
    }

    private fun createBookItemView(book: BookItem): View {
        return LinearLayout(this).apply {
            orientation = LinearLayout.HORIZONTAL
            gravity = Gravity.CENTER_VERTICAL
            setPadding(dp(12), dp(10), dp(12), dp(10))
            background = AppColors.pillBackground(
                if (isDarkMode) AppColors.DARK_SURFACE else Color.WHITE,
                if (isDarkMode) AppColors.DARK_BORDER else AppColors.LIGHT_BORDER,
                dp(1), dp(12).toFloat()
            )
            layoutParams = LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT).apply {
                bottomMargin = dp(8)
            }

            val iconTv = TextView(this@MainActivity).apply {
                text = if (book.format == "EPUB") "📕" else if (book.format == "PDF") "📄" else "📘"
                textSize = 20f
                setPadding(0, 0, dp(10), 0)
            }
            addView(iconTv)

            val infoLayout = LinearLayout(this@MainActivity).apply {
                orientation = LinearLayout.VERTICAL
                layoutParams = LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1.0f)
            }

            val tvTitle = TextView(this@MainActivity).apply {
                text = book.title
                textSize = 14f
                typeface = Typeface.DEFAULT_BOLD
                setTextColor(if (isDarkMode) Color.WHITE else Color.parseColor("#0F172A"))
            }
            infoLayout.addView(tvTitle)

            val tvSub = TextView(this@MainActivity).apply {
                text = "${book.format} • ${book.author}"
                textSize = 12f
                setTextColor(if (isDarkMode) AppColors.DARK_TEXT_MUTED else AppColors.LIGHT_TEXT_MUTED)
            }
            infoLayout.addView(tvSub)
            addView(infoLayout)

            val btnDelete = Button(this@MainActivity).apply {
                text = "🗑"
                textSize = 13f
                setTextColor(AppColors.ACCENT_ROSE)
                background = AppColors.pillBackground(Color.TRANSPARENT, 0, 0, dp(12).toFloat())
                layoutParams = LinearLayout.LayoutParams(dp(36), dp(36))
                setOnClickListener {
                    CoroutineScope(Dispatchers.IO).launch {
                        AppDatabase.getInstance(this@MainActivity).deleteBook(book.id)
                        withContext(Dispatchers.Main) { refreshBookshelf() }
                    }
                }
            }
            addView(btnDelete)
        }
    }

    private fun openDocumentPicker() {
        val intent = Intent(Intent.ACTION_OPEN_DOCUMENT).apply {
            addCategory(Intent.CATEGORY_OPENABLE)
            type = "*/*"
            putExtra(Intent.EXTRA_MIME_TYPES, arrayOf("application/epub+zip", "text/plain", "application/pdf", "application/zip"))
        }
        openFileLauncher.launch(intent)
    }

    private fun handlePickedFile(uri: Uri) {
        val fileName = uri.lastPathSegment?.substringAfterLast('/') ?: "Sách Mới"
        val book = BookItem(
            title = fileName,
            filePath = uri.toString(),
            format = "FILE",
            lastReadTime = System.currentTimeMillis()
        )
        CoroutineScope(Dispatchers.IO).launch {
            AppDatabase.getInstance(this@MainActivity).insertOrUpdateBook(book)
            withContext(Dispatchers.Main) {
                Toast.makeText(this@MainActivity, "Đã thêm $fileName vào tủ sách!", Toast.LENGTH_SHORT).show()
                refreshBookshelf()
            }
        }
    }

    private fun scanDownloads() {
        Toast.makeText(this, "Đang quét thư mục Downloads...", Toast.LENGTH_SHORT).show()
        CoroutineScope(Dispatchers.IO).launch {
            val scanned = BookScanner.scanDownloads(this@MainActivity)
            val db = AppDatabase.getInstance(this@MainActivity)
            scanned.forEach { db.insertOrUpdateBook(it) }

            withContext(Dispatchers.Main) {
                Toast.makeText(this@MainActivity, "Tìm thấy ${scanned.size} tệp sách!", Toast.LENGTH_SHORT).show()
                refreshBookshelf()
            }
        }
    }

    private fun toggleTheme() {
        isDarkMode = !isDarkMode
        val prefs = getSharedPreferences("app_theme_prefs", Context.MODE_PRIVATE)
        prefs.edit().putBoolean("key_dark_mode", isDarkMode).apply()
        recreate()
    }

    private fun dp(dpValue: Int): Int {
        return (dpValue * resources.displayMetrics.density).toInt()
    }
}
