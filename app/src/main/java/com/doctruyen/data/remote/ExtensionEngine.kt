package com.doctruyen.data.remote

import android.content.Context
import com.doctruyen.data.model.ExtensionSource
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.withContext
import org.json.JSONArray
import java.io.BufferedReader
import java.io.InputStreamReader
import java.net.HttpURLConnection
import java.net.URL
import java.util.regex.Pattern

object ExtensionEngine {
    private var cachedSources: List<ExtensionSource>? = null

    fun getExtensions(context: Context): List<ExtensionSource> {
        cachedSources?.let { return it }

        val list = mutableListOf<ExtensionSource>()
        try {
            val jsonString = context.assets.open("extensions/extensions.json").bufferedReader().use { it.readText() }
            val array = JSONArray(jsonString)
            for (i in 0 until array.length()) {
                val obj = array.getJSONObject(i)
                val id = obj.optString("id", i.toString())
                val name = obj.optString("name", "Nguồn Truyện")
                val url = obj.optString("url", "")
                val source = obj.optString("source", "")
                val version = obj.optString("version", "1")
                val cover = obj.optString("cover", "")

                list.add(
                    ExtensionSource(
                        id = id,
                        name = name,
                        baseUrl = url,
                        iconAssetPath = "extensions/$source/icon.png",
                        version = version,
                        description = url
                    )
                )
            }
        } catch (e: Exception) {
            e.printStackTrace()
        }

        cachedSources = list
        return list
    }

    suspend fun fetchUrlContent(targetUrl: String): String = withContext(Dispatchers.IO) {
        try {
            val url = URL(targetUrl)
            val conn = url.openConnection() as HttpURLConnection
            conn.requestMethod = "GET"
            conn.connectTimeout = 8000
            conn.readTimeout = 8000
            conn.setRequestProperty(
                "User-Agent",
                "Mozilla/5.0 (Linux; Android 13; Mobile) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Mobile Safari/537.36"
            )
            conn.instanceFollowRedirects = true

            if (conn.responseCode in 200..299) {
                BufferedReader(InputStreamReader(conn.inputStream, "UTF-8")).use { reader ->
                    reader.readText()
                }
            } else {
                ""
            }
        } catch (e: Exception) {
            e.printStackTrace()
            ""
        }
    }

    fun extractChapterContent(html: String): ExtractedChapter {
        if (html.isEmpty()) return ExtractedChapter("", "", "", "")

        // 1. Extract Title
        var title = ""
        val titleMatcher = Pattern.compile("(?i)<h[12][^>]*class=[\"'][^\"']*(?:chapter-title|title|current-chapter)[^\"']*[\"'][^>]*>(.*?)</h[12]>").matcher(html)
        if (titleMatcher.find()) {
            title = stripHtml(titleMatcher.group(1) ?: "")
        } else {
            val genericTitle = Pattern.compile("(?i)<title>(.*?)</title>").matcher(html)
            if (genericTitle.find()) {
                title = stripHtml(genericTitle.group(1) ?: "").replace("- TruyenFull", "").replace("- Mê Truyện Chữ", "").trim()
            }
        }

        // 2. Extract Body Content
        var content = ""
        val contentMatcher = Pattern.compile("(?is)<(?:div|article)[^>]*id=[\"'](?:chapter-c|vungdoc|content|truyen-content)[\"'][^>]*>(.*?)</(?:div|article)>").matcher(html)
        if (contentMatcher.find()) {
            content = cleanStoryHtml(contentMatcher.group(1) ?: "")
        } else {
            val classMatcher = Pattern.compile("(?is)<(?:div|article)[^>]*class=[\"'][^\"']*(?:chapter-c|chapter-content|reading-content|vung-doc|box-chap)[^\"']*[\"'][^>]*>(.*?)</(?:div|article)>").matcher(html)
            if (classMatcher.find()) {
                content = cleanStoryHtml(classMatcher.group(1) ?: "")
            }
        }

        // 3. Extract Next / Prev Links
        var nextUrl = ""
        var prevUrl = ""

        val nextMatcher = Pattern.compile("(?i)<a[^>]*id=[\"']next_chap[\"'][^>]*href=[\"']([^\"']+)[\"']").matcher(html)
        if (nextMatcher.find()) nextUrl = nextMatcher.group(1) ?: ""

        val prevMatcher = Pattern.compile("(?i)<a[^>]*id=[\"']prev_chap[\"'][^>]*href=[\"']([^\"']+)[\"']").matcher(html)
        if (prevMatcher.find()) prevUrl = prevMatcher.group(1) ?: ""

        return ExtractedChapter(title, content, nextUrl, prevUrl)
    }

    private fun stripHtml(html: String): String {
        return html.replace(Regex("<[^>]*>"), "").replace("&nbsp;", " ").replace("&amp;", "&").trim()
    }

    private fun cleanStoryHtml(html: String): String {
        var clean = html
        // Remove ads, scripts, buttons
        clean = clean.replace(Regex("(?is)<script.*?</script>"), "")
        clean = clean.replace(Regex("(?is)<style.*?</style>"), "")
        clean = clean.replace(Regex("(?is)<(?:button|a)[^>]*class=[\"'][^\"']*(?:btn|chapter_control|ads)[^\"']*[\"'].*?</(?:button|a)>"), "")
        clean = clean.replace(Regex("(?is)<!--.*?-->"), "")
        return clean.trim()
    }
}

data class ExtractedChapter(
    val title: String,
    val contentHtml: String,
    val nextUrl: String,
    val prevUrl: String
)
