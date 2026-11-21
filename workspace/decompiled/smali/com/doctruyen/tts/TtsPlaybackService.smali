.class public Lcom/doctruyen/tts/TtsPlaybackService;
.super Landroid/app/Service;
.source "TtsPlaybackService.java"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnInitListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/doctruyen/tts/TtsPlaybackService$OnTtsEventListener;,
        Lcom/doctruyen/tts/TtsPlaybackService$LocalBinder;
    }
.end annotation


# static fields
.field public static final ACTION_NEXT:Ljava/lang/String; = "com.doctruyen.ACTION_NEXT"

.field public static final ACTION_PLAY_PAUSE:Ljava/lang/String; = "com.doctruyen.ACTION_PLAY_PAUSE"

.field public static final ACTION_PREV:Ljava/lang/String; = "com.doctruyen.ACTION_PREV"

.field public static final ACTION_STOP:Ljava/lang/String; = "com.doctruyen.ACTION_STOP"

.field public static final CHANNEL_ID:Ljava/lang/String; = "doc_truyen_tts_channel"

.field public static final NOTIFICATION_ID:I = 0x3e9


# instance fields
.field private audioFocusRequest:Landroid/media/AudioFocusRequest;

.field private audioManager:Landroid/media/AudioManager;

.field private final binder:Landroid/os/IBinder;

.field private currentBookTitle:Ljava/lang/String;

.field private currentChapterTitle:Ljava/lang/String;

.field private currentParagraphIndex:I

.field private currentParagraphs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private currentVoice:Landroid/speech/tts/Voice;

.field private isPlaying:Z

.field private isTtsReady:Z

.field private listener:Lcom/doctruyen/tts/TtsPlaybackService$OnTtsEventListener;

.field private mediaSession:Landroid/media/session/MediaSession;

.field private sleepTimerMinutes:I

.field private speechPitch:F

.field private speechRate:F

.field private stopAtChapterEnd:Z

.field private final timerHandler:Landroid/os/Handler;

.field private timerRunnable:Ljava/lang/Runnable;

.field private tts:Landroid/speech/tts/TextToSpeech;

.field private wakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 31
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 40
    new-instance v0, Lcom/doctruyen/tts/TtsPlaybackService$LocalBinder;

    invoke-direct {v0, p0}, Lcom/doctruyen/tts/TtsPlaybackService$LocalBinder;-><init>(Lcom/doctruyen/tts/TtsPlaybackService;)V

    iput-object v0, p0, Lcom/doctruyen/tts/TtsPlaybackService;->binder:Landroid/os/IBinder;

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/doctruyen/tts/TtsPlaybackService;->isTtsReady:Z

    .line 48
    const-string v1, "\u0110\u1ecdc Truy\u1ec7n"

    iput-object v1, p0, Lcom/doctruyen/tts/TtsPlaybackService;->currentBookTitle:Ljava/lang/String;

    .line 49
    const-string v1, "Ch\u01b0\u01a1ng Truy\u1ec7n"

    iput-object v1, p0, Lcom/doctruyen/tts/TtsPlaybackService;->currentChapterTitle:Ljava/lang/String;

    .line 50
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/doctruyen/tts/TtsPlaybackService;->currentParagraphs:Ljava/util/List;

    .line 51
    iput v0, p0, Lcom/doctruyen/tts/TtsPlaybackService;->currentParagraphIndex:I

    .line 52
    iput-boolean v0, p0, Lcom/doctruyen/tts/TtsPlaybackService;->isPlaying:Z

    .line 54
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/doctruyen/tts/TtsPlaybackService;->speechRate:F

    .line 55
    iput v1, p0, Lcom/doctruyen/tts/TtsPlaybackService;->speechPitch:F

    .line 56
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/doctruyen/tts/TtsPlaybackService;->currentVoice:Landroid/speech/tts/Voice;

    .line 59
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/doctruyen/tts/TtsPlaybackService;->timerHandler:Landroid/os/Handler;

    .line 60
    iput-object v1, p0, Lcom/doctruyen/tts/TtsPlaybackService;->timerRunnable:Ljava/lang/Runnable;

    .line 61
    iput v0, p0, Lcom/doctruyen/tts/TtsPlaybackService;->sleepTimerMinutes:I

    .line 62
    iput-boolean v0, p0, Lcom/doctruyen/tts/TtsPlaybackService;->stopAtChapterEnd:Z

    return-void
.end method

.method private abandonAudioFocus()V
    .locals 2

    .line 138
    iget-object v0, p0, Lcom/doctruyen/tts/TtsPlaybackService;->audioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    return-void

    .line 139
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1

    .line 140
    iget-object v0, p0, Lcom/doctruyen/tts/TtsPlaybackService;->audioFocusRequest:Landroid/media/AudioFocusRequest;

    if-eqz v0, :cond_2

    .line 141
    iget-object v0, p0, Lcom/doctruyen/tts/TtsPlaybackService;->audioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/doctruyen/tts/TtsPlaybackService;->audioFocusRequest:Landroid/media/AudioFocusRequest;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocusRequest(Landroid/media/AudioFocusRequest;)I

    goto :goto_0

    .line 144
    :cond_1
    iget-object v0, p0, Lcom/doctruyen/tts/TtsPlaybackService;->audioManager:Landroid/media/AudioManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 146
    :cond_2
    :goto_0
    return-void
.end method

.method static synthetic access$000(Lcom/doctruyen/tts/TtsPlaybackService;)Lcom/doctruyen/tts/TtsPlaybackService$OnTtsEventListener;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/doctruyen/tts/TtsPlaybackService;->listener:Lcom/doctruyen/tts/TtsPlaybackService$OnTtsEventListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/doctruyen/tts/TtsPlaybackService;)Ljava/util/List;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/doctruyen/tts/TtsPlaybackService;->currentParagraphs:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200(Lcom/doctruyen/tts/TtsPlaybackService;)I
    .locals 0

    .line 31
    iget p0, p0, Lcom/doctruyen/tts/TtsPlaybackService;->currentParagraphIndex:I

    return p0
.end method

.method static synthetic access$208(Lcom/doctruyen/tts/TtsPlaybackService;)I
    .locals 2

    .line 31
    iget v0, p0, Lcom/doctruyen/tts/TtsPlaybackService;->currentParagraphIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/doctruyen/tts/TtsPlaybackService;->currentParagraphIndex:I

    return v0
.end method

.method static synthetic access$300(Lcom/doctruyen/tts/TtsPlaybackService;)Z
    .locals 0

    .line 31
    iget-boolean p0, p0, Lcom/doctruyen/tts/TtsPlaybackService;->isPlaying:Z

    return p0
.end method

.method static synthetic access$302(Lcom/doctruyen/tts/TtsPlaybackService;Z)Z
    .locals 0

    .line 31
    iput-boolean p1, p0, Lcom/doctruyen/tts/TtsPlaybackService;->isPlaying:Z

    return p1
.end method

.method static synthetic access$400(Lcom/doctruyen/tts/TtsPlaybackService;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/doctruyen/tts/TtsPlaybackService;->speakCurrentParagraph()V

    return-void
.end method

.method static synthetic access$500(Lcom/doctruyen/tts/TtsPlaybackService;)Z
    .locals 0

    .line 31
    iget-boolean p0, p0, Lcom/doctruyen/tts/TtsPlaybackService;->stopAtChapterEnd:Z

    return p0
.end method

.method static synthetic access$502(Lcom/doctruyen/tts/TtsPlaybackService;Z)Z
    .locals 0

    .line 31
    iput-boolean p1, p0, Lcom/doctruyen/tts/TtsPlaybackService;->stopAtChapterEnd:Z

    return p1
.end method

.method static synthetic access$600(Lcom/doctruyen/tts/TtsPlaybackService;Z)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/doctruyen/tts/TtsPlaybackService;->updateNotification(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/doctruyen/tts/TtsPlaybackService;Z)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/doctruyen/tts/TtsPlaybackService;->updatePlaybackState(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/doctruyen/tts/TtsPlaybackService;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/doctruyen/tts/TtsPlaybackService;->abandonAudioFocus()V

    return-void
.end method

.method private createNotificationChannel()V
    .locals 4

    .line 90
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 91
    new-instance v0, Landroid/app/NotificationChannel;

    const-string v1, "Ph\u00e1t Audio Truy\u1ec7n (TTS)"

    const/4 v2, 0x2

    const-string v3, "doc_truyen_tts_channel"

    invoke-direct {v0, v3, v1, v2}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 96
    const-string v1, "\u0110i\u1ec1u khi\u1ec3n ph\u00e1t \u00e2m thanh \u0111\u1ecdc truy\u1ec7n khi t\u1eaft m\u00e0n h\u00ecnh v\u00e0 tr\u00ean \u0111\u1ed3ng h\u1ed3 th\u00f4ng minh"

    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    .line 97
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    .line 98
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Lcom/doctruyen/tts/TtsPlaybackService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 99
    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 101
    :cond_0
    return-void
.end method

.method private initMediaSession()V
    .locals 2

    .line 149
    new-instance v0, Landroid/media/session/MediaSession;

    const-string v1, "DocTruyenTtsSession"

    invoke-direct {v0, p0, v1}, Landroid/media/session/MediaSession;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/doctruyen/tts/TtsPlaybackService;->mediaSession:Landroid/media/session/MediaSession;

    .line 150
    iget-object v0, p0, Lcom/doctruyen/tts/TtsPlaybackService;->mediaSession:Landroid/media/session/MediaSession;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/session/MediaSession;->setFlags(I)V

    .line 151
    iget-object v0, p0, Lcom/doctruyen/tts/TtsPlaybackService;->mediaSession:Landroid/media/session/MediaSession;

    new-instance v1, Lcom/doctruyen/tts/TtsPlaybackService$1;

    invoke-direct {v1, p0}, Lcom/doctruyen/tts/TtsPlaybackService$1;-><init>(Lcom/doctruyen/tts/TtsPlaybackService;)V

    invoke-virtual {v0, v1}, Landroid/media/session/MediaSession;->setCallback(Landroid/media/session/MediaSession$Callback;)V

    .line 192
    iget-object v0, p0, Lcom/doctruyen/tts/TtsPlaybackService;->mediaSession:Landroid/media/session/MediaSession;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/session/MediaSession;->setActive(Z)V

    .line 193
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/doctruyen/tts/TtsPlaybackService;->updatePlaybackState(Z)V

    .line 194
    return-void
.end method

.method private initWakeLock()V
    .locals 3

    .line 104
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/doctruyen/tts/TtsPlaybackService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 105
    if-eqz v0, :cond_0

    .line 106
    const/4 v1, 0x1

    const-string v2, "DocTruyen:TTSWakeLock"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/doctruyen/tts/TtsPlaybackService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 107
    iget-object v0, p0, Lcom/doctruyen/tts/TtsPlaybackService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 109
    :cond_0
    return-void
.end method

.method private requestAudioFocus()V
    .locals 4

    .line 112
    iget-object v0, p0, Lcom/doctruyen/tts/TtsPlaybackService;->audioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    return-void

    .line 113
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    const/4 v2, 0x1

    if-lt v0, v1, :cond_2

    .line 114
    iget-object v0, p0, Lcom/doctruyen/tts/TtsPlaybackService;->audioFocusRequest:Landroid/media/AudioFocusRequest;

    if-nez v0, :cond_1

    .line 115
    new-instance v0, Landroid/media/AudioFocusRequest$Builder;

    invoke-direct {v0, v2}, Landroid/media/AudioFocusRequest$Builder;-><init>(I)V

    new-instance v1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 117
    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    .line 118
    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    .line 119
    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v1

    .line 116
    invoke-virtual {v0, v1}, Landroid/media/AudioFocusRequest$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v0

    new-instance v1, Lcom/doctruyen/tts/TtsPlaybackService$0;

    invoke-direct {v1, p0}, Lcom/doctruyen/tts/TtsPlaybackService$0;-><init>(Lcom/doctruyen/tts/TtsPlaybackService;)V

    .line 120
    invoke-virtual {v0, v1}, Landroid/media/AudioFocusRequest$Builder;->setOnAudioFocusChangeListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v0

    .line 125
    invoke-virtual {v0}, Landroid/media/AudioFocusRequest$Builder;->build()Landroid/media/AudioFocusRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/doctruyen/tts/TtsPlaybackService;->audioFocusRequest:Landroid/media/AudioFocusRequest;

    .line 127
    :cond_1
    iget-object v0, p0, Lcom/doctruyen/tts/TtsPlaybackService;->audioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/doctruyen/tts/TtsPlaybackService;->audioFocusRequest:Landroid/media/AudioFocusRequest;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioFocusRequest;)I

    goto :goto_0

    .line 129
    :cond_2
    iget-object v0, p0, Lcom/doctruyen/tts/TtsPlaybackService;->audioManager:Landroid/media/AudioManager;

    new-instance v1, Lcom/doctruyen/tts/TtsPlaybackService$3;

    invoke-direct {v1, p0}, Lcom/doctruyen/tts/TtsPlaybackService$3;-><init>(Lcom/doctruyen/tts/TtsPlaybackService;)V

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v3, v2}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 135
    :goto_0
    return-void
.end method

.method private speakCurrentParagraph()V
    .locals 6

    .line 325
    iget-boolean v0, p0, Lcom/doctruyen/tts/TtsPlaybackService;->isTtsReady:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/doctruyen/tts/TtsPlaybackService;->currentParagraphs:Ljava/util/List;

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/doctruyen/tts/TtsPlaybackService;->currentParagraphIndex:I

    iget-object v1, p0, Lcom/doctruyen/tts/TtsPlaybackService;->currentParagraphs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    goto :goto_1

    .line 326
    :cond_0
    iget-object v0, p0, Lcom/doctruyen/tts/TtsPlaybackService;->currentParagraphs:Ljava/util/List;

    iget v1, p0, Lcom/doctruyen/tts/TtsPlaybackService;->currentParagraphIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 327
    const/4 v1, 0x1

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 335
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    const/16 v4, 0xbb8

    if-le v2, v4, :cond_2

    .line 336
    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 339
    :cond_2
    iget-object v2, p0, Lcom/doctruyen/tts/TtsPlaybackService;->tts:Landroid/speech/tts/TextToSpeech;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "p_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/doctruyen/tts/TtsPlaybackService;->currentParagraphIndex:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v0, v3, v5, v4}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/CharSequence;ILandroid/os/Bundle;Ljava/lang/String;)I

    .line 340
    invoke-direct {p0, v1}, Lcom/doctruyen/tts/TtsPlaybackService;->updatePlaybackState(Z)V

    .line 341
    return-void

    .line 328
    :cond_3
    :goto_0
    iget v0, p0, Lcom/doctruyen/tts/TtsPlaybackService;->currentParagraphIndex:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/doctruyen/tts/TtsPlaybackService;->currentParagraphIndex:I

    .line 329
    iget v0, p0, Lcom/doctruyen/tts/TtsPlaybackService;->currentParagraphIndex:I

    iget-object v1, p0, Lcom/doctruyen/tts/TtsPlaybackService;->currentParagraphs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    iget-boolean v0, p0, Lcom/doctruyen/tts/TtsPlaybackService;->isPlaying:Z

    if-eqz v0, :cond_4

    .line 330
    invoke-direct {p0}, Lcom/doctruyen/tts/TtsPlaybackService;->speakCurrentParagraph()V

    .line 332
    :cond_4
    return-void

    .line 325
    :cond_5
    :goto_1
    return-void
.end method

.method private updateMediaMetadata()V
    .locals 5

    .line 212
    iget-object v0, p0, Lcom/doctruyen/tts/TtsPlaybackService;->mediaSession:Landroid/media/session/MediaSession;

    if-nez v0, :cond_0

    return-void

    .line 213
    :cond_0
    new-instance v0, Landroid/media/MediaMetadata$Builder;

    invoke-direct {v0}, Landroid/media/MediaMetadata$Builder;-><init>()V

    iget-object v1, p0, Lcom/doctruyen/tts/TtsPlaybackService;->currentChapterTitle:Ljava/lang/String;

    .line 214
    const-string v2, "android.media.metadata.TITLE"

    invoke-virtual {v0, v2, v1}, Landroid/media/MediaMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/media/MediaMetadata$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/doctruyen/tts/TtsPlaybackService;->currentBookTitle:Ljava/lang/String;

    .line 215
    const-string v2, "android.media.metadata.ARTIST"

    invoke-virtual {v0, v2, v1}, Landroid/media/MediaMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/media/MediaMetadata$Builder;

    move-result-object v0

    .line 216
    const-string v1, "android.media.metadata.ALBUM"

    const-string v2, "DocTruyen Audio"

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/media/MediaMetadata$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/doctruyen/tts/TtsPlaybackService;->currentParagraphs:Ljava/util/List;

    .line 217
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    int-to-long v1, v1

    const-wide/16 v3, 0x3e8

    mul-long v1, v1, v3

    const-string v3, "android.media.metadata.DURATION"

    invoke-virtual {v0, v3, v1, v2}, Landroid/media/MediaMetadata$Builder;->putLong(Ljava/lang/String;J)Landroid/media/MediaMetadata$Builder;

    move-result-object v0

    .line 219
    iget-object v1, p0, Lcom/doctruyen/tts/TtsPlaybackService;->mediaSession:Landroid/media/session/MediaSession;

    invoke-virtual {v0}, Landroid/media/MediaMetadata$Builder;->build()Landroid/media/MediaMetadata;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/media/session/MediaSession;->setMetadata(Landroid/media/MediaMetadata;)V

    .line 220
    return-void
.end method

.method private updateNotification(Z)V
    .locals 11

    .line 486
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/doctruyen/tts/TtsPlaybackService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "com.doctruyen.ACTION_PREV"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 487
    const/4 v2, 0x1

    const/high16 v3, 0xc000000

    invoke-static {p0, v2, v0, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 489
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v5, "com.doctruyen.ACTION_PLAY_PAUSE"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    .line 490
    const/4 v5, 0x2

    invoke-static {p0, v5, v4, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 492
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.doctruyen.ACTION_NEXT"

    invoke-virtual {v6, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 493
    const/4 v6, 0x3

    invoke-static {p0, v6, v1, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 496
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1a

    if-lt v3, v6, :cond_0

    .line 497
    new-instance v3, Landroid/app/Notification$Builder;

    const-string v6, "doc_truyen_tts_channel"

    invoke-direct {v3, p0, v6}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 499
    :cond_0
    new-instance v3, Landroid/app/Notification$Builder;

    invoke-direct {v3, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 502
    :goto_0
    iget-object v6, p0, Lcom/doctruyen/tts/TtsPlaybackService;->currentChapterTitle:Ljava/lang/String;

    invoke-virtual {v3, v6}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/doctruyen/tts/TtsPlaybackService;->currentBookTitle:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 503
    if-eqz p1, :cond_1

    const-string v8, " - \u0110ang \u0111\u1ecdc"

    goto :goto_1

    :cond_1
    const-string v8, " - T\u1ea1m d\u1eebng"

    :goto_1
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v6

    .line 504
    const-string v7, "DocTruyen Audio"

    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setSubText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v6

    .line 505
    const v7, 0x1080024

    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v6

    .line 506
    invoke-virtual {v6, p1}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v6

    new-instance v8, Landroid/app/Notification$Action;

    const v9, 0x1080025

    const-string v10, "Ch\u01b0\u01a1ng tr\u01b0\u1edbc"

    invoke-direct {v8, v9, v10, v0}, Landroid/app/Notification$Action;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 507
    invoke-virtual {v6, v8}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    move-result-object v0

    new-instance v6, Landroid/app/Notification$Action;

    .line 513
    if-eqz p1, :cond_2

    const v7, 0x1080023

    .line 514
    :cond_2
    if-eqz p1, :cond_3

    const-string p1, "T\u1ea1m d\u1eebng"

    goto :goto_2

    :cond_3
    const-string p1, "Ti\u1ebfp t\u1ee5c"

    :goto_2
    invoke-direct {v6, v7, p1, v4}, Landroid/app/Notification$Action;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 512
    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    move-result-object p1

    new-instance v0, Landroid/app/Notification$Action;

    const v4, 0x1080022

    const-string v6, "Ch\u01b0\u01a1ng sau"

    invoke-direct {v0, v4, v6, v1}, Landroid/app/Notification$Action;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 517
    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    .line 523
    iget-object p1, p0, Lcom/doctruyen/tts/TtsPlaybackService;->mediaSession:Landroid/media/session/MediaSession;

    if-eqz p1, :cond_4

    .line 524
    new-instance p1, Landroid/app/Notification$MediaStyle;

    invoke-direct {p1}, Landroid/app/Notification$MediaStyle;-><init>()V

    iget-object v0, p0, Lcom/doctruyen/tts/TtsPlaybackService;->mediaSession:Landroid/media/session/MediaSession;

    .line 525
    invoke-virtual {v0}, Landroid/media/session/MediaSession;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/Notification$MediaStyle;->setMediaSession(Landroid/media/session/MediaSession$Token;)Landroid/app/Notification$MediaStyle;

    move-result-object p1

    const/4 v0, 0x0

    filled-new-array {v0, v2, v5}, [I

    move-result-object v0

    .line 526
    invoke-virtual {p1, v0}, Landroid/app/Notification$MediaStyle;->setShowActionsInCompactView([I)Landroid/app/Notification$MediaStyle;

    move-result-object p1

    .line 527
    invoke-virtual {v3, p1}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 530
    :cond_4
    invoke-virtual {v3}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    .line 531
    const/16 v0, 0x3e9

    invoke-virtual {p0, v0, p1}, Lcom/doctruyen/tts/TtsPlaybackService;->startForeground(ILandroid/app/Notification;)V

    .line 532
    return-void
.end method

.method private updatePlaybackState(Z)V
    .locals 10

    .line 197
    iget-object v0, p0, Lcom/doctruyen/tts/TtsPlaybackService;->mediaSession:Landroid/media/session/MediaSession;

    if-nez v0, :cond_0

    return-void

    .line 198
    :cond_0
    nop

    .line 203
    new-instance v0, Landroid/media/session/PlaybackState$Builder;

    invoke-direct {v0}, Landroid/media/session/PlaybackState$Builder;-><init>()V

    .line 204
    const-wide/16 v1, 0x37f

    invoke-virtual {v0, v1, v2}, Landroid/media/session/PlaybackState$Builder;->setActions(J)Landroid/media/session/PlaybackState$Builder;

    move-result-object v3

    .line 205
    if-eqz p1, :cond_1

    const/4 p1, 0x3

    const/4 v4, 0x3

    goto :goto_0

    :cond_1
    const/4 p1, 0x2

    const/4 v4, 0x2

    :goto_0
    iget p1, p0, Lcom/doctruyen/tts/TtsPlaybackService;->currentParagraphIndex:I

    int-to-long v0, p1

    const-wide/16 v5, 0x3e8

    mul-long v5, v5, v0

    iget v7, p0, Lcom/doctruyen/tts/TtsPlaybackService;->speechRate:F

    .line 206
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 205
    invoke-virtual/range {v3 .. v9}, Landroid/media/session/PlaybackState$Builder;->setState(IJFJ)Landroid/media/session/PlaybackState$Builder;

    move-result-object p1

    .line 208
    iget-object v0, p0, Lcom/doctruyen/tts/TtsPlaybackService;->mediaSession:Landroid/media/session/MediaSession;

    invoke-virtual {p1}, Landroid/media/session/PlaybackState$Builder;->build()Landroid/media/session/PlaybackState;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/media/session/MediaSession;->setPlaybackState(Landroid/media/session/PlaybackState;)V

    .line 209
    return-void
.end method


# virtual methods
.method public getCurrentEngineName()Ljava/lang/String;
    .locals 1

    .line 479
    iget-object v0, p0, Lcom/doctruyen/tts/TtsPlaybackService;->tts:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_0

    .line 480
    iget-object v0, p0, Lcom/doctruyen/tts/TtsPlaybackService;->tts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->getDefaultEngine()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 482
    :cond_0
    const-string v0, "Android TextToSpeech"

    return-object v0
.end method

.method public getCurrentParagraphIndex()I
    .locals 1

    .line 400
    iget v0, p0, Lcom/doctruyen/tts/TtsPlaybackService;->currentParagraphIndex:I

    return v0
.end method

.method public getCurrentVoice()Landroid/speech/tts/Voice;
    .locals 1

    .line 471
    iget-object v0, p0, Lcom/doctruyen/tts/TtsPlaybackService;->currentVoice:Landroid/speech/tts/Voice;

    return-object v0
.end method

.method public getPitch()F
    .locals 1

    .line 446
    iget v0, p0, Lcom/doctruyen/tts/TtsPlaybackService;->speechPitch:F

    return v0
.end method

.method public getSleepTimerMinutes()I
    .locals 1

    .line 422
    iget v0, p0, Lcom/doctruyen/tts/TtsPlaybackService;->sleepTimerMinutes:I

    return v0
.end method

.method public getSpeed()F
    .locals 1

    .line 437
    iget v0, p0, Lcom/doctruyen/tts/TtsPlaybackService;->speechRate:F

    return v0
.end method

.method public getTotalParagraphs()I
    .locals 1

    .line 404
    iget-object v0, p0, Lcom/doctruyen/tts/TtsPlaybackService;->currentParagraphs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getVietnameseVoices()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/speech/tts/Voice;",
            ">;"
        }
    .end annotation

    .line 450
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 451
    iget-object v1, p0, Lcom/doctruyen/tts/TtsPlaybackService;->tts:Landroid/speech/tts/TextToSpeech;

    if-eqz v1, :cond_2

    .line 453
    :try_start_0
    iget-object v1, p0, Lcom/doctruyen/tts/TtsPlaybackService;->tts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v1}, Landroid/speech/tts/TextToSpeech;->getVoices()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/speech/tts/Voice;

    .line 454
    invoke-virtual {v2}, Landroid/speech/tts/Voice;->getLocale()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    const-string v4, "vi"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 455
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 457
    :cond_0
    goto :goto_0

    .line 458
    :catch_0
    move-exception v1

    :cond_1
    nop

    .line 460
    :cond_2
    return-object v0
.end method

.method public isPlaying()Z
    .locals 1

    .line 475
    iget-boolean v0, p0, Lcom/doctruyen/tts/TtsPlaybackService;->isPlaying:Z

    return v0
.end method

.method synthetic lambda$requestAudioFocus$0$com-doctruyen-tts-TtsPlaybackService(I)V
    .locals 1

    .line 121
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 v0, -0x2

    if-ne p1, v0, :cond_1

    .line 122
    :cond_0
    invoke-virtual {p0}, Lcom/doctruyen/tts/TtsPlaybackService;->pause()V

    .line 124
    :cond_1
    return-void
.end method

.method synthetic lambda$requestAudioFocus$1$com-doctruyen-tts-TtsPlaybackService(I)V
    .locals 1

    .line 130
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 v0, -0x2

    if-ne p1, v0, :cond_1

    .line 131
    :cond_0
    invoke-virtual {p0}, Lcom/doctruyen/tts/TtsPlaybackService;->pause()V

    .line 133
    :cond_1
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 556
    iget-object p1, p0, Lcom/doctruyen/tts/TtsPlaybackService;->binder:Landroid/os/IBinder;

    return-object p1
.end method

.method public onCreate()V
    .locals 1

    .line 81
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 82
    invoke-direct {p0}, Lcom/doctruyen/tts/TtsPlaybackService;->createNotificationChannel()V

    .line 83
    invoke-direct {p0}, Lcom/doctruyen/tts/TtsPlaybackService;->initWakeLock()V

    .line 84
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/doctruyen/tts/TtsPlaybackService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/doctruyen/tts/TtsPlaybackService;->audioManager:Landroid/media/AudioManager;

    .line 85
    invoke-direct {p0}, Lcom/doctruyen/tts/TtsPlaybackService;->initMediaSession()V

    .line 86
    new-instance v0, Landroid/speech/tts/TextToSpeech;

    invoke-direct {v0, p0, p0}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    iput-object v0, p0, Lcom/doctruyen/tts/TtsPlaybackService;->tts:Landroid/speech/tts/TextToSpeech;

    .line 87
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 561
    iget-object v0, p0, Lcom/doctruyen/tts/TtsPlaybackService;->tts:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_0

    .line 562
    iget-object v0, p0, Lcom/doctruyen/tts/TtsPlaybackService;->tts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->stop()I

    .line 563
    iget-object v0, p0, Lcom/doctruyen/tts/TtsPlaybackService;->tts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    .line 565
    :cond_0
    iget-object v0, p0, Lcom/doctruyen/tts/TtsPlaybackService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/doctruyen/tts/TtsPlaybackService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 566
    iget-object v0, p0, Lcom/doctruyen/tts/TtsPlaybackService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 568
    :cond_1
    iget-object v0, p0, Lcom/doctruyen/tts/TtsPlaybackService;->mediaSession:Landroid/media/session/MediaSession;

    if-eqz v0, :cond_2

    .line 569
    iget-object v0, p0, Lcom/doctruyen/tts/TtsPlaybackService;->mediaSession:Landroid/media/session/MediaSession;

    invoke-virtual {v0}, Landroid/media/session/MediaSession;->release()V

    .line 571
    :cond_2
    invoke-direct {p0}, Lcom/doctruyen/tts/TtsPlaybackService;->abandonAudioFocus()V

    .line 572
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 573
    return-void
.end method

.method public onInit(I)V
    .locals 3

    .line 224
    if-nez p1, :cond_4

    .line 225
    iget-object p1, p0, Lcom/doctruyen/tts/TtsPlaybackService;->tts:Landroid/speech/tts/TextToSpeech;

    new-instance v0, Ljava/util/Locale;

    const-string v1, "VN"

    const-string v2, "vi"

    invoke-direct {v0, v2, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    move-result p1

    .line 226
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 v0, -0x2

    if-ne p1, v0, :cond_1

    .line 227
    :cond_0
    iget-object p1, p0, Lcom/doctruyen/tts/TtsPlaybackService;->tts:Landroid/speech/tts/TextToSpeech;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    .line 229
    :cond_1
    iget-object p1, p0, Lcom/doctruyen/tts/TtsPlaybackService;->tts:Landroid/speech/tts/TextToSpeech;

    iget v0, p0, Lcom/doctruyen/tts/TtsPlaybackService;->speechRate:F

    invoke-virtual {p1, v0}, Landroid/speech/tts/TextToSpeech;->setSpeechRate(F)I

    .line 230
    iget-object p1, p0, Lcom/doctruyen/tts/TtsPlaybackService;->tts:Landroid/speech/tts/TextToSpeech;

    iget v0, p0, Lcom/doctruyen/tts/TtsPlaybackService;->speechPitch:F

    invoke-virtual {p1, v0}, Landroid/speech/tts/TextToSpeech;->setPitch(F)I

    .line 232
    nop

    .line 234
    :try_start_0
    iget-object p1, p0, Lcom/doctruyen/tts/TtsPlaybackService;->tts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {p1}, Landroid/speech/tts/TextToSpeech;->getVoices()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/speech/tts/Voice;

    .line 235
    invoke-virtual {v0}, Landroid/speech/tts/Voice;->getLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 236
    iput-object v0, p0, Lcom/doctruyen/tts/TtsPlaybackService;->currentVoice:Landroid/speech/tts/Voice;

    .line 237
    iget-object p1, p0, Lcom/doctruyen/tts/TtsPlaybackService;->tts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {p1, v0}, Landroid/speech/tts/TextToSpeech;->setVoice(Landroid/speech/tts/Voice;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 238
    goto :goto_1

    .line 240
    :cond_2
    goto :goto_0

    .line 241
    :catch_0
    move-exception p1

    :cond_3
    :goto_1
    nop

    .line 244
    iget-object p1, p0, Lcom/doctruyen/tts/TtsPlaybackService;->tts:Landroid/speech/tts/TextToSpeech;

    new-instance v0, Lcom/doctruyen/tts/TtsPlaybackService$2;

    invoke-direct {v0, p0}, Lcom/doctruyen/tts/TtsPlaybackService$2;-><init>(Lcom/doctruyen/tts/TtsPlaybackService;)V

    invoke-virtual {p1, v0}, Landroid/speech/tts/TextToSpeech;->setOnUtteranceProgressListener(Landroid/speech/tts/UtteranceProgressListener;)I

    .line 291
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/doctruyen/tts/TtsPlaybackService;->isTtsReady:Z

    .line 292
    iget-boolean p1, p0, Lcom/doctruyen/tts/TtsPlaybackService;->isPlaying:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/doctruyen/tts/TtsPlaybackService;->currentParagraphs:Ljava/util/List;

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/doctruyen/tts/TtsPlaybackService;->currentParagraphs:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    .line 293
    invoke-direct {p0}, Lcom/doctruyen/tts/TtsPlaybackService;->speakCurrentParagraph()V

    .line 296
    :cond_4
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    .line 536
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 537
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 538
    const-string p2, "com.doctruyen.ACTION_PLAY_PAUSE"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 539
    iget-boolean p1, p0, Lcom/doctruyen/tts/TtsPlaybackService;->isPlaying:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/doctruyen/tts/TtsPlaybackService;->pause()V

    goto :goto_0

    .line 540
    :cond_0
    invoke-virtual {p0}, Lcom/doctruyen/tts/TtsPlaybackService;->resume()V

    goto :goto_0

    .line 541
    :cond_1
    const-string p2, "com.doctruyen.ACTION_NEXT"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 542
    iget-object p1, p0, Lcom/doctruyen/tts/TtsPlaybackService;->listener:Lcom/doctruyen/tts/TtsPlaybackService$OnTtsEventListener;

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/doctruyen/tts/TtsPlaybackService;->listener:Lcom/doctruyen/tts/TtsPlaybackService$OnTtsEventListener;

    invoke-interface {p1}, Lcom/doctruyen/tts/TtsPlaybackService$OnTtsEventListener;->onChapterFinished()V

    goto :goto_0

    .line 543
    :cond_2
    const-string p2, "com.doctruyen.ACTION_PREV"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 544
    iget-object p1, p0, Lcom/doctruyen/tts/TtsPlaybackService;->listener:Lcom/doctruyen/tts/TtsPlaybackService$OnTtsEventListener;

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/doctruyen/tts/TtsPlaybackService;->listener:Lcom/doctruyen/tts/TtsPlaybackService$OnTtsEventListener;

    invoke-interface {p1}, Lcom/doctruyen/tts/TtsPlaybackService$OnTtsEventListener;->onRequestPrevChapter()V

    goto :goto_0

    .line 545
    :cond_3
    const-string p2, "com.doctruyen.ACTION_STOP"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 546
    invoke-virtual {p0}, Lcom/doctruyen/tts/TtsPlaybackService;->pause()V

    .line 547
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/doctruyen/tts/TtsPlaybackService;->stopForeground(Z)V

    .line 548
    invoke-virtual {p0}, Lcom/doctruyen/tts/TtsPlaybackService;->stopSelf()V

    .line 551
    :cond_4
    :goto_0
    const/4 p1, 0x2

    return p1
.end method

.method public pause()V
    .locals 2

    .line 344
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/doctruyen/tts/TtsPlaybackService;->isPlaying:Z

    .line 345
    iget-object v1, p0, Lcom/doctruyen/tts/TtsPlaybackService;->tts:Landroid/speech/tts/TextToSpeech;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/doctruyen/tts/TtsPlaybackService;->tts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v1}, Landroid/speech/tts/TextToSpeech;->stop()I

    .line 346
    :cond_0
    iget-object v1, p0, Lcom/doctruyen/tts/TtsPlaybackService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/doctruyen/tts/TtsPlaybackService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 347
    iget-object v1, p0, Lcom/doctruyen/tts/TtsPlaybackService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 349
    :cond_1
    invoke-direct {p0, v0}, Lcom/doctruyen/tts/TtsPlaybackService;->updatePlaybackState(Z)V

    .line 350
    invoke-direct {p0, v0}, Lcom/doctruyen/tts/TtsPlaybackService;->updateNotification(Z)V

    .line 351
    invoke-direct {p0}, Lcom/doctruyen/tts/TtsPlaybackService;->abandonAudioFocus()V

    .line 352
    iget-object v1, p0, Lcom/doctruyen/tts/TtsPlaybackService;->listener:Lcom/doctruyen/tts/TtsPlaybackService$OnTtsEventListener;

    if-eqz v1, :cond_2

    .line 353
    iget-object v1, p0, Lcom/doctruyen/tts/TtsPlaybackService;->listener:Lcom/doctruyen/tts/TtsPlaybackService$OnTtsEventListener;

    invoke-interface {v1, v0}, Lcom/doctruyen/tts/TtsPlaybackService$OnTtsEventListener;->onPlaybackStateChanged(Z)V

    .line 355
    :cond_2
    return-void
.end method

.method public playParagraphs(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 303
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "\u0110\u1ecdc Truy\u1ec7n"

    :goto_0
    iput-object p1, p0, Lcom/doctruyen/tts/TtsPlaybackService;->currentBookTitle:Ljava/lang/String;

    .line 304
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    const-string p2, "Ch\u01b0\u01a1ng Truy\u1ec7n"

    :goto_1
    iput-object p2, p0, Lcom/doctruyen/tts/TtsPlaybackService;->currentChapterTitle:Ljava/lang/String;

    .line 305
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/doctruyen/tts/TtsPlaybackService;->currentParagraphs:Ljava/util/List;

    .line 306
    iget-object p1, p0, Lcom/doctruyen/tts/TtsPlaybackService;->currentParagraphs:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 p2, 0x1

    sub-int/2addr p1, p2

    invoke-static {p4, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 p3, 0x0

    invoke-static {p3, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/doctruyen/tts/TtsPlaybackService;->currentParagraphIndex:I

    .line 307
    iput-boolean p2, p0, Lcom/doctruyen/tts/TtsPlaybackService;->isPlaying:Z

    .line 309
    invoke-direct {p0}, Lcom/doctruyen/tts/TtsPlaybackService;->requestAudioFocus()V

    .line 311
    iget-object p1, p0, Lcom/doctruyen/tts/TtsPlaybackService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/doctruyen/tts/TtsPlaybackService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result p1

    if-nez p1, :cond_2

    .line 312
    iget-object p1, p0, Lcom/doctruyen/tts/TtsPlaybackService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/32 p3, 0x2932e00

    invoke-virtual {p1, p3, p4}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 315
    :cond_2
    invoke-direct {p0}, Lcom/doctruyen/tts/TtsPlaybackService;->updateMediaMetadata()V

    .line 316
    invoke-direct {p0, p2}, Lcom/doctruyen/tts/TtsPlaybackService;->updatePlaybackState(Z)V

    .line 317
    invoke-direct {p0, p2}, Lcom/doctruyen/tts/TtsPlaybackService;->updateNotification(Z)V

    .line 319
    iget-boolean p1, p0, Lcom/doctruyen/tts/TtsPlaybackService;->isTtsReady:Z

    if-eqz p1, :cond_3

    .line 320
    invoke-direct {p0}, Lcom/doctruyen/tts/TtsPlaybackService;->speakCurrentParagraph()V

    .line 322
    :cond_3
    return-void
.end method

.method public resume()V
    .locals 4

    .line 358
    iget v0, p0, Lcom/doctruyen/tts/TtsPlaybackService;->currentParagraphIndex:I

    iget-object v1, p0, Lcom/doctruyen/tts/TtsPlaybackService;->currentParagraphs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 359
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/doctruyen/tts/TtsPlaybackService;->isPlaying:Z

    .line 360
    invoke-direct {p0}, Lcom/doctruyen/tts/TtsPlaybackService;->requestAudioFocus()V

    .line 361
    iget-object v1, p0, Lcom/doctruyen/tts/TtsPlaybackService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/doctruyen/tts/TtsPlaybackService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-nez v1, :cond_0

    .line 362
    iget-object v1, p0, Lcom/doctruyen/tts/TtsPlaybackService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/32 v2, 0x2932e00

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 364
    :cond_0
    invoke-direct {p0, v0}, Lcom/doctruyen/tts/TtsPlaybackService;->updatePlaybackState(Z)V

    .line 365
    invoke-direct {p0, v0}, Lcom/doctruyen/tts/TtsPlaybackService;->updateNotification(Z)V

    .line 366
    invoke-direct {p0}, Lcom/doctruyen/tts/TtsPlaybackService;->speakCurrentParagraph()V

    .line 367
    iget-object v1, p0, Lcom/doctruyen/tts/TtsPlaybackService;->listener:Lcom/doctruyen/tts/TtsPlaybackService$OnTtsEventListener;

    if-eqz v1, :cond_1

    .line 368
    iget-object v1, p0, Lcom/doctruyen/tts/TtsPlaybackService;->listener:Lcom/doctruyen/tts/TtsPlaybackService$OnTtsEventListener;

    invoke-interface {v1, v0}, Lcom/doctruyen/tts/TtsPlaybackService$OnTtsEventListener;->onPlaybackStateChanged(Z)V

    .line 371
    :cond_1
    return-void
.end method

.method public seekToParagraph(I)V
    .locals 2

    .line 387
    iget-object v0, p0, Lcom/doctruyen/tts/TtsPlaybackService;->currentParagraphs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 388
    :cond_0
    iget-object v0, p0, Lcom/doctruyen/tts/TtsPlaybackService;->currentParagraphs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/doctruyen/tts/TtsPlaybackService;->currentParagraphIndex:I

    .line 389
    iget-boolean p1, p0, Lcom/doctruyen/tts/TtsPlaybackService;->isPlaying:Z

    if-eqz p1, :cond_1

    .line 390
    invoke-direct {p0}, Lcom/doctruyen/tts/TtsPlaybackService;->speakCurrentParagraph()V

    goto :goto_0

    .line 392
    :cond_1
    iget-object p1, p0, Lcom/doctruyen/tts/TtsPlaybackService;->listener:Lcom/doctruyen/tts/TtsPlaybackService$OnTtsEventListener;

    if-eqz p1, :cond_2

    .line 393
    iget-object p1, p0, Lcom/doctruyen/tts/TtsPlaybackService;->listener:Lcom/doctruyen/tts/TtsPlaybackService$OnTtsEventListener;

    iget v0, p0, Lcom/doctruyen/tts/TtsPlaybackService;->currentParagraphIndex:I

    iget-object v1, p0, Lcom/doctruyen/tts/TtsPlaybackService;->currentParagraphs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p1, v0, v1}, Lcom/doctruyen/tts/TtsPlaybackService$OnTtsEventListener;->onParagraphStarted(II)V

    .line 396
    :cond_2
    :goto_0
    iget-boolean p1, p0, Lcom/doctruyen/tts/TtsPlaybackService;->isPlaying:Z

    invoke-direct {p0, p1}, Lcom/doctruyen/tts/TtsPlaybackService;->updatePlaybackState(Z)V

    .line 397
    return-void
.end method

.method public setOnTtsEventListener(Lcom/doctruyen/tts/TtsPlaybackService$OnTtsEventListener;)V
    .locals 0

    .line 299
    iput-object p1, p0, Lcom/doctruyen/tts/TtsPlaybackService;->listener:Lcom/doctruyen/tts/TtsPlaybackService$OnTtsEventListener;

    .line 300
    return-void
.end method

.method public setPitch(F)V
    .locals 1

    .line 441
    iput p1, p0, Lcom/doctruyen/tts/TtsPlaybackService;->speechPitch:F

    .line 442
    iget-object v0, p0, Lcom/doctruyen/tts/TtsPlaybackService;->tts:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/doctruyen/tts/TtsPlaybackService;->tts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0, p1}, Landroid/speech/tts/TextToSpeech;->setPitch(F)I

    .line 443
    :cond_0
    return-void
.end method

.method public setSleepTimer(I)V
    .locals 6

    .line 408
    iget-object v0, p0, Lcom/doctruyen/tts/TtsPlaybackService;->timerRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 409
    iget-object v0, p0, Lcom/doctruyen/tts/TtsPlaybackService;->timerHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/doctruyen/tts/TtsPlaybackService;->timerRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 410
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/doctruyen/tts/TtsPlaybackService;->timerRunnable:Ljava/lang/Runnable;

    .line 412
    :cond_0
    iput p1, p0, Lcom/doctruyen/tts/TtsPlaybackService;->sleepTimerMinutes:I

    .line 413
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/doctruyen/tts/TtsPlaybackService;->stopAtChapterEnd:Z

    .line 415
    if-lez p1, :cond_2

    .line 416
    new-instance v0, Lcom/doctruyen/tts/TtsPlaybackService$4;

    invoke-direct {v0, p0}, Lcom/doctruyen/tts/TtsPlaybackService$4;-><init>(Lcom/doctruyen/tts/TtsPlaybackService;)V

    iput-object v0, p0, Lcom/doctruyen/tts/TtsPlaybackService;->timerRunnable:Ljava/lang/Runnable;

    .line 417
    iget-object v0, p0, Lcom/doctruyen/tts/TtsPlaybackService;->timerHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/doctruyen/tts/TtsPlaybackService;->timerRunnable:Ljava/lang/Runnable;

    mul-int/lit8 p1, p1, 0x3c

    int-to-long v2, p1

    const-wide/16 v4, 0x3e8

    mul-long v2, v2, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 419
    :cond_2
    return-void
.end method

.method public setSpeed(F)V
    .locals 1

    .line 431
    iput p1, p0, Lcom/doctruyen/tts/TtsPlaybackService;->speechRate:F

    .line 432
    iget-object v0, p0, Lcom/doctruyen/tts/TtsPlaybackService;->tts:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/doctruyen/tts/TtsPlaybackService;->tts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0, p1}, Landroid/speech/tts/TextToSpeech;->setSpeechRate(F)I

    .line 433
    :cond_0
    iget-boolean p1, p0, Lcom/doctruyen/tts/TtsPlaybackService;->isPlaying:Z

    invoke-direct {p0, p1}, Lcom/doctruyen/tts/TtsPlaybackService;->updatePlaybackState(Z)V

    .line 434
    return-void
.end method

.method public setVoice(Landroid/speech/tts/Voice;)V
    .locals 1

    .line 464
    iput-object p1, p0, Lcom/doctruyen/tts/TtsPlaybackService;->currentVoice:Landroid/speech/tts/Voice;

    .line 465
    iget-object v0, p0, Lcom/doctruyen/tts/TtsPlaybackService;->tts:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 466
    iget-object v0, p0, Lcom/doctruyen/tts/TtsPlaybackService;->tts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0, p1}, Landroid/speech/tts/TextToSpeech;->setVoice(Landroid/speech/tts/Voice;)I

    .line 468
    :cond_0
    return-void
.end method

.method public skipParagraph(I)V
    .locals 2

    .line 374
    iget-object v0, p0, Lcom/doctruyen/tts/TtsPlaybackService;->currentParagraphs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 375
    :cond_0
    iget v0, p0, Lcom/doctruyen/tts/TtsPlaybackService;->currentParagraphIndex:I

    add-int/2addr v0, p1

    iget-object p1, p0, Lcom/doctruyen/tts/TtsPlaybackService;->currentParagraphs:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/doctruyen/tts/TtsPlaybackService;->currentParagraphIndex:I

    .line 376
    iget-boolean p1, p0, Lcom/doctruyen/tts/TtsPlaybackService;->isPlaying:Z

    if-eqz p1, :cond_1

    .line 377
    invoke-direct {p0}, Lcom/doctruyen/tts/TtsPlaybackService;->speakCurrentParagraph()V

    goto :goto_0

    .line 379
    :cond_1
    iget-object p1, p0, Lcom/doctruyen/tts/TtsPlaybackService;->listener:Lcom/doctruyen/tts/TtsPlaybackService$OnTtsEventListener;

    if-eqz p1, :cond_2

    .line 380
    iget-object p1, p0, Lcom/doctruyen/tts/TtsPlaybackService;->listener:Lcom/doctruyen/tts/TtsPlaybackService$OnTtsEventListener;

    iget v0, p0, Lcom/doctruyen/tts/TtsPlaybackService;->currentParagraphIndex:I

    iget-object v1, p0, Lcom/doctruyen/tts/TtsPlaybackService;->currentParagraphs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p1, v0, v1}, Lcom/doctruyen/tts/TtsPlaybackService$OnTtsEventListener;->onParagraphStarted(II)V

    .line 383
    :cond_2
    :goto_0
    iget-boolean p1, p0, Lcom/doctruyen/tts/TtsPlaybackService;->isPlaying:Z

    invoke-direct {p0, p1}, Lcom/doctruyen/tts/TtsPlaybackService;->updatePlaybackState(Z)V

    .line 384
    return-void
.end method

.method public testVoice(Ljava/lang/String;)V
    .locals 4

    .line 426
    iget-boolean v0, p0, Lcom/doctruyen/tts/TtsPlaybackService;->isTtsReady:Z

    if-nez v0, :cond_0

    return-void

    .line 427
    :cond_0
    iget-object v0, p0, Lcom/doctruyen/tts/TtsPlaybackService;->tts:Landroid/speech/tts/TextToSpeech;

    const/4 v1, 0x0

    const-string v2, "test_voice"

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v3, v1, v2}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/CharSequence;ILandroid/os/Bundle;Ljava/lang/String;)I

    .line 428
    return-void
.end method
