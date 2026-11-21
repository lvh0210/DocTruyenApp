package com.doctruyen.data.model

data class BookItem(
    val id: Long = 0,
    val title: String,
    val author: String = "Chưa rõ",
    val filePath: String = "",
    val coverUrl: String = "",
    val format: String = "TXT",
    val totalChapters: Int = 0,
    val currentChapterIndex: Int = 0,
    val currentChapterTitle: String = "",
    val lastReadTime: Long = System.currentTimeMillis(),
    val progressPercent: Int = 0,
    val isOnline: Boolean = false,
    val sourceUrl: String = ""
)

data class ChapterItem(
    val id: Long = 0,
    val bookId: Long = 0,
    val title: String,
    val url: String = "",
    val chapterIndex: Int = 0,
    val contentHtml: String = "",
    val nextUrl: String = "",
    val prevUrl: String = ""
)

data class ExtensionSource(
    val id: String,
    val name: String,
    val baseUrl: String,
    val iconAssetPath: String = "",
    val version: String = "1.0.0",
    val description: String = ""
)

enum class ReadingTheme(
    val key: String,
    val displayName: String,
    val bgHex: String,
    val textHex: String
) {
    DARK("dark", "Tối Obsidian", "#0F172A", "#F1F5F9"),
    LIGHT("light", "Sáng Chuẩn", "#FFFFFF", "#0F172A"),
    SEPIA("sepia", "Giấy Vàng", "#FBF0D9", "#3E2723")
}