package com.doctruyen.service

import android.app.Notification
import android.app.NotificationChannel
import android.app.NotificationManager
import android.app.PendingIntent
import android.app.Service
import android.content.Context
import android.content.Intent
import android.os.Binder
import android.os.Build
import android.os.IBinder
import android.speech.tts.TextToSpeech
import android.speech.tts.UtteranceProgressListener
import androidx.core.app.NotificationCompat
import java.util.Locale

class TtsPlaybackService : Service(), TextToSpeech.OnInitListener {

    companion object {
        const val ACTION_PLAY = "com.doctruyen.ACTION_PLAY"
        const val ACTION_PAUSE = "com.doctruyen.ACTION_PAUSE"
        const val ACTION_STOP = "com.doctruyen.ACTION_STOP"
        const val ACTION_NEXT = "com.doctruyen.ACTION_NEXT"
        const val ACTION_PREV = "com.doctruyen.ACTION_PREV"

        const val EXTRA_TEXT = "extra_text"
        const val EXTRA_TITLE = "extra_title"
        const val EXTRA_BOOK_TITLE = "extra_book_title"

        private const val NOTIFICATION_ID = 1001
        private const val CHANNEL_ID = "doctruyen_tts_channel"
    }

    private val binder = LocalBinder()
    private var tts: TextToSpeech? = null
    private var isTtsReady = false

    private var currentText: String = ""
    private var currentTitle: String = "Đang đọc truyện"
    private var currentBookTitle: String = "DocTruyen Reader"
    private var isPlaying = false

    var onChapterComplete: (() -> Unit)? = null

    inner class LocalBinder : Binder() {
        fun getService(): TtsPlaybackService = this@TtsPlaybackService
    }

    override fun onBind(intent: Intent?): IBinder = binder

    override fun onCreate() {
        super.onCreate()
        createNotificationChannel()
        tts = TextToSpeech(applicationContext, this)
    }

    override fun onInit(status: Int) {
        if (status == TextToSpeech.SUCCESS) {
            val result = tts?.setLanguage(Locale("vi", "VN"))
            if (result == TextToSpeech.LANG_MISSING_DATA || result == TextToSpeech.LANG_NOT_SUPPORTED) {
                tts?.language = Locale.getDefault()
            }
            tts?.setSpeechRate(1.0f)
            tts?.setPitch(1.0f)

            tts?.setOnUtteranceProgressListener(object : UtteranceProgressListener() {
                override fun onStart(utteranceId: String?) {
                    isPlaying = true
                    updateNotification()
                }

                override fun onDone(utteranceId: String?) {
                    isPlaying = false
                    updateNotification()
                    onChapterComplete?.invoke()
                }

                override fun onError(utteranceId: String?) {
                    isPlaying = false
                    updateNotification()
                }
            })

            isTtsReady = true
            if (currentText.isNotEmpty()) {
                speakText(currentText)
            }
        }
    }

    override fun onStartCommand(intent: Intent?, flags: Int, startId: Int): Int {
        val action = intent?.action
        when (action) {
            ACTION_PLAY -> {
                val text = intent.getStringExtra(EXTRA_TEXT) ?: ""
                val title = intent.getStringExtra(EXTRA_TITLE) ?: currentTitle
                val bookTitle = intent.getStringExtra(EXTRA_BOOK_TITLE) ?: currentBookTitle
                startSpeaking(text, title, bookTitle)
            }
            ACTION_PAUSE -> pauseSpeaking()
            ACTION_STOP -> stopSpeaking()
        }
        return START_NOT_STICKY
    }

    fun startSpeaking(text: String, title: String, bookTitle: String) {
        currentText = text
        currentTitle = title
        currentBookTitle = bookTitle

        startForeground(NOTIFICATION_ID, buildNotification())
        if (isTtsReady) {
            speakText(text)
        }
    }

    private fun speakText(text: String) {
        if (text.isEmpty()) return
        val cleanText = text.replace(Regex("<[^>]*>"), " ").replace("&nbsp;", " ").trim()
        val chunks = cleanText.chunked(3500)
        tts?.stop()
        chunks.forEachIndexed { index, chunk ->
            val queueMode = if (index == 0) TextToSpeech.QUEUE_FLUSH else TextToSpeech.QUEUE_ADD
            tts?.speak(chunk, queueMode, null, "utterance_$index")
        }
        isPlaying = true
        updateNotification()
    }

    fun pauseSpeaking() {
        tts?.stop()
        isPlaying = false
        updateNotification()
    }

    fun stopSpeaking() {
        tts?.stop()
        isPlaying = false
        stopForeground(STOP_FOREGROUND_REMOVE)
        stopSelf()
    }

    fun isCurrentlyPlaying(): Boolean = isPlaying

    fun setSpeechRate(rate: Float) {
        tts?.setSpeechRate(rate)
    }

    private fun buildNotification(): Notification {
        val stopIntent = Intent(this, TtsPlaybackService::class.java).apply { action = ACTION_STOP }
        val stopPending = PendingIntent.getService(this, 1, stopIntent, PendingIntent.FLAG_IMMUTABLE)

        val toggleActionIntent = Intent(this, TtsPlaybackService::class.java).apply {
            action = if (isPlaying) ACTION_PAUSE else ACTION_PLAY
        }
        val togglePending = PendingIntent.getService(this, 2, toggleActionIntent, PendingIntent.FLAG_IMMUTABLE)

        val toggleIcon = if (isPlaying) android.R.drawable.ic_media_pause else android.R.drawable.ic_media_play
        val toggleTitle = if (isPlaying) "Tạm dừng" else "Tiếp tục"

        return NotificationCompat.Builder(this, CHANNEL_ID)
            .setContentTitle(currentTitle)
            .setContentText(currentBookTitle)
            .setSmallIcon(android.R.drawable.ic_lock_silent_mode_off)
            .setOngoing(isPlaying)
            .addAction(toggleIcon, toggleTitle, togglePending)
            .addAction(android.R.drawable.ic_menu_close_clear_cancel, "Dừng", stopPending)
            .setPriority(NotificationCompat.PRIORITY_LOW)
            .setVisibility(NotificationCompat.VISIBILITY_PUBLIC)
            .build()
    }

    private fun updateNotification() {
        val manager = getSystemService(Context.NOTIFICATION_SERVICE) as NotificationManager
        manager.notify(NOTIFICATION_ID, buildNotification())
    }

    private fun createNotificationChannel() {
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
            val channel = NotificationChannel(
                CHANNEL_ID,
                "Giọng Đọc Truyện (TTS)",
                NotificationManager.IMPORTANCE_LOW
            ).apply {
                description = "Điều khiển phát âm thanh đọc truyện chạy nền"
            }
            val manager = getSystemService(Context.NOTIFICATION_SERVICE) as NotificationManager
            manager.createNotificationChannel(channel)
        }
    }

    override fun onDestroy() {
        tts?.stop()
        tts?.shutdown()
        super.onDestroy()
    }
}
