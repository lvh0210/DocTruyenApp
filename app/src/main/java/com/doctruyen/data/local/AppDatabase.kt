package com.doctruyen.data.local

import android.content.ContentValues
import android.content.Context
import android.database.sqlite.SQLiteDatabase
import android.database.sqlite.SQLiteOpenHelper
import com.doctruyen.data.model.BookItem
import com.doctruyen.data.model.ChapterItem

class AppDatabase(context: Context) : SQLiteOpenHelper(context, DATABASE_NAME, null, DATABASE_VERSION) {

    companion object {
        private const val DATABASE_NAME = "doctruyen_v2.db"
        private const val DATABASE_VERSION = 1

        private const val TABLE_BOOKS = "books"
        private const val TABLE_CHAPTERS = "chapters"

        @Volatile
        private var instance: AppDatabase? = null

        fun getInstance(context: Context): AppDatabase {
            return instance ?: synchronized(this) {
                instance ?: AppDatabase(context.applicationContext).also { instance = it }
            }
        }
    }

    override fun onCreate(db: SQLiteDatabase) {
        db.execSQL(
            """
            CREATE TABLE $TABLE_BOOKS (
                id INTEGER PRIMARY KEY AUTOINCREMENT,
                title TEXT NOT NULL,
                author TEXT DEFAULT 'Chưa rõ',
                file_path TEXT DEFAULT '',
                cover_url TEXT DEFAULT '',
                format TEXT DEFAULT 'TXT',
                total_chapters INTEGER DEFAULT 0,
                current_chapter_index INTEGER DEFAULT 0,
                current_chapter_title TEXT DEFAULT '',
                last_read_time INTEGER DEFAULT 0,
                progress_percent INTEGER DEFAULT 0,
                is_online INTEGER DEFAULT 0,
                source_url TEXT DEFAULT ''
            )
            """.trimIndent()
        )

        db.execSQL(
            """
            CREATE TABLE $TABLE_CHAPTERS (
                id INTEGER PRIMARY KEY AUTOINCREMENT,
                book_id INTEGER DEFAULT 0,
                title TEXT NOT NULL,
                url TEXT DEFAULT '',
                chapter_index INTEGER DEFAULT 0,
                content_html TEXT DEFAULT '',
                next_url TEXT DEFAULT '',
                prev_url TEXT DEFAULT ''
            )
            """.trimIndent()
        )
    }

    override fun onUpgrade(db: SQLiteDatabase, oldVersion: Int, newVersion: Int) {
        db.execSQL("DROP TABLE IF EXISTS $TABLE_BOOKS")
        db.execSQL("DROP TABLE IF EXISTS $TABLE_CHAPTERS")
        onCreate(db)
    }

    @Synchronized
    fun insertOrUpdateBook(book: BookItem): Long {
        val db = writableDatabase
        val cv = ContentValues().apply {
            put("title", book.title)
            put("author", book.author)
            put("file_path", book.filePath)
            put("cover_url", book.coverUrl)
            put("format", book.format)
            put("total_chapters", book.totalChapters)
            put("current_chapter_index", book.currentChapterIndex)
            put("current_chapter_title", book.currentChapterTitle)
            put("last_read_time", book.lastReadTime)
            put("progress_percent", book.progressPercent)
            put("is_online", if (book.isOnline) 1 else 0)
            put("source_url", book.sourceUrl)
        }

        return if (book.id > 0) {
            db.update(TABLE_BOOKS, cv, "id = ?", arrayOf(book.id.toString()))
            book.id
        } else {
            // Check if filePath or sourceUrl exists
            val cursor = if (book.filePath.isNotEmpty()) {
                db.rawQuery("SELECT id FROM $TABLE_BOOKS WHERE file_path = ?", arrayOf(book.filePath))
            } else if (book.sourceUrl.isNotEmpty()) {
                db.rawQuery("SELECT id FROM $TABLE_BOOKS WHERE source_url = ?", arrayOf(book.sourceUrl))
            } else null

            cursor?.use {
                if (it.moveToFirst()) {
                    val existingId = it.getLong(0)
                    db.update(TABLE_BOOKS, cv, "id = ?", arrayOf(existingId.toString()))
                    return existingId
                }
            }
            db.insert(TABLE_BOOKS, null, cv)
        }
    }

    @Synchronized
    fun getAllBooks(): List<BookItem> {
        val list = mutableListOf<BookItem>()
        val db = readableDatabase
        val cursor = db.rawQuery("SELECT * FROM $TABLE_BOOKS ORDER BY last_read_time DESC", null)
        cursor.use {
            while (it.moveToNext()) {
                list.add(
                    BookItem(
                        id = it.getLong(it.getColumnIndexOrThrow("id")),
                        title = it.getString(it.getColumnIndexOrThrow("title")),
                        author = it.getString(it.getColumnIndexOrThrow("author")),
                        filePath = it.getString(it.getColumnIndexOrThrow("file_path")),
                        coverUrl = it.getString(it.getColumnIndexOrThrow("cover_url")),
                        format = it.getString(it.getColumnIndexOrThrow("format")),
                        totalChapters = it.getInt(it.getColumnIndexOrThrow("total_chapters")),
                        currentChapterIndex = it.getInt(it.getColumnIndexOrThrow("current_chapter_index")),
                        currentChapterTitle = it.getString(it.getColumnIndexOrThrow("current_chapter_title")),
                        lastReadTime = it.getLong(it.getColumnIndexOrThrow("last_read_time")),
                        progressPercent = it.getInt(it.getColumnIndexOrThrow("progress_percent")),
                        isOnline = it.getInt(it.getColumnIndexOrThrow("is_online")) == 1,
                        sourceUrl = it.getString(it.getColumnIndexOrThrow("source_url"))
                    )
                )
            }
        }
        return list
    }

    @Synchronized
    fun getRecentBook(): BookItem? {
        val db = readableDatabase
        val cursor = db.rawQuery("SELECT * FROM $TABLE_BOOKS ORDER BY last_read_time DESC LIMIT 1", null)
        cursor.use {
            if (it.moveToFirst()) {
                return BookItem(
                    id = it.getLong(it.getColumnIndexOrThrow("id")),
                    title = it.getString(it.getColumnIndexOrThrow("title")),
                    author = it.getString(it.getColumnIndexOrThrow("author")),
                    filePath = it.getString(it.getColumnIndexOrThrow("file_path")),
                    coverUrl = it.getString(it.getColumnIndexOrThrow("cover_url")),
                    format = it.getString(it.getColumnIndexOrThrow("format")),
                    totalChapters = it.getInt(it.getColumnIndexOrThrow("total_chapters")),
                    currentChapterIndex = it.getInt(it.getColumnIndexOrThrow("current_chapter_index")),
                    currentChapterTitle = it.getString(it.getColumnIndexOrThrow("current_chapter_title")),
                    lastReadTime = it.getLong(it.getColumnIndexOrThrow("last_read_time")),
                    progressPercent = it.getInt(it.getColumnIndexOrThrow("progress_percent")),
                    isOnline = it.getInt(it.getColumnIndexOrThrow("is_online")) == 1,
                    sourceUrl = it.getString(it.getColumnIndexOrThrow("source_url"))
                )
            }
        }
        return null
    }

    @Synchronized
    fun deleteBook(id: Long): Boolean {
        val db = writableDatabase
        db.delete(TABLE_CHAPTERS, "book_id = ?", arrayOf(id.toString()))
        return db.delete(TABLE_BOOKS, "id = ?", arrayOf(id.toString())) > 0
    }

    @Synchronized
    fun updateProgress(bookId: Long, chapterIndex: Int, chapterTitle: String, percent: Int) {
        val db = writableDatabase
        val cv = ContentValues().apply {
            put("current_chapter_index", chapterIndex)
            put("current_chapter_title", chapterTitle)
            put("progress_percent", percent)
            put("last_read_time", System.currentTimeMillis())
        }
        db.update(TABLE_BOOKS, cv, "id = ?", arrayOf(bookId.toString()))
    }

    @Synchronized
    fun saveChapter(chapter: ChapterItem): Long {
        val db = writableDatabase
        val cv = ContentValues().apply {
            put("book_id", chapter.bookId)
            put("title", chapter.title)
            put("url", chapter.url)
            put("chapter_index", chapter.chapterIndex)
            put("content_html", chapter.contentHtml)
            put("next_url", chapter.nextUrl)
            put("prev_url", chapter.prevUrl)
        }
        return db.insert(TABLE_CHAPTERS, null, cv)
    }

    @Synchronized
    fun getChapter(bookId: Long, chapterIndex: Int): ChapterItem? {
        val db = readableDatabase
        val cursor = db.rawQuery(
            "SELECT * FROM $TABLE_CHAPTERS WHERE book_id = ? AND chapter_index = ? LIMIT 1",
            arrayOf(bookId.toString(), chapterIndex.toString())
        )
        cursor.use {
            if (it.moveToFirst()) {
                return ChapterItem(
                    id = it.getLong(it.getColumnIndexOrThrow("id")),
                    bookId = it.getLong(it.getColumnIndexOrThrow("book_id")),
                    title = it.getString(it.getColumnIndexOrThrow("title")),
                    url = it.getString(it.getColumnIndexOrThrow("url")),
                    chapterIndex = it.getInt(it.getColumnIndexOrThrow("chapter_index")),
                    contentHtml = it.getString(it.getColumnIndexOrThrow("content_html")),
                    nextUrl = it.getString(it.getColumnIndexOrThrow("next_url")),
                    prevUrl = it.getString(it.getColumnIndexOrThrow("prev_url"))
                )
            }
        }
        return null
    }

    @Synchronized
    fun getChaptersForBook(bookId: Long): List<ChapterItem> {
        val list = mutableListOf<ChapterItem>()
        val db = readableDatabase
        val cursor = db.rawQuery(
            "SELECT * FROM $TABLE_CHAPTERS WHERE book_id = ? ORDER BY chapter_index ASC",
            arrayOf(bookId.toString())
        )
        cursor.use {
            while (it.moveToNext()) {
                list.add(
                    ChapterItem(
                        id = it.getLong(it.getColumnIndexOrThrow("id")),
                        bookId = it.getLong(it.getColumnIndexOrThrow("book_id")),
                        title = it.getString(it.getColumnIndexOrThrow("title")),
                        url = it.getString(it.getColumnIndexOrThrow("url")),
                        chapterIndex = it.getInt(it.getColumnIndexOrThrow("chapter_index")),
                        contentHtml = it.getString(it.getColumnIndexOrThrow("content_html")),
                        nextUrl = it.getString(it.getColumnIndexOrThrow("next_url")),
                        prevUrl = it.getString(it.getColumnIndexOrThrow("prev_url"))
                    )
                )
            }
        }
        return list
    }
}
