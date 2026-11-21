package com.doctruyen.data.local

import android.content.Context
import android.os.Environment
import com.doctruyen.data.model.BookItem
import java.io.File

object BookScanner {
    private val SUPPORTED_EXTENSIONS = setOf("epub", "txt", "pdf", "zip")

    fun scanDownloads(context: Context): List<BookItem> {
        val books = mutableListOf<BookItem>()
        val downloadDir = Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOWNLOADS)
        if (downloadDir != null && downloadDir.exists() && downloadDir.canRead()) {
            scanDirectory(downloadDir, books, 0, 3)
        }

        // Also scan app internal files
        val filesDir = context.getExternalFilesDir(null)
        if (filesDir != null && filesDir.exists()) {
            scanDirectory(filesDir, books, 0, 2)
        }

        return books.sortedByDescending { it.lastReadTime }
    }

    private fun scanDirectory(dir: File, result: MutableList<BookItem>, currentDepth: Int, maxDepth: Int) {
        if (currentDepth > maxDepth || !dir.canRead()) return
        val files = dir.listFiles() ?: return

        for (file in files) {
            if (file.isDirectory) {
                if (!file.name.startsWith(".")) {
                    scanDirectory(file, result, currentDepth + 1, maxDepth)
                }
            } else if (file.isFile) {
                val ext = file.extension.lowercase()
                if (ext in SUPPORTED_EXTENSIONS) {
                    val nameWithoutExt = file.nameWithoutExtension
                    val formattedTitle = nameWithoutExt.replace('_', ' ').replace('-', ' ').trim()
                    val formatName = ext.uppercase()

                    result.add(
                        BookItem(
                            title = formattedTitle,
                            author = "Tệp Máy",
                            filePath = file.absolutePath,
                            format = formatName,
                            lastReadTime = file.lastModified()
                        )
                    )
                }
            }
        }
    }
}
