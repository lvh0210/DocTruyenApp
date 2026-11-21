.class public final synthetic Lcom/doctruyen/tts/TtsPlaybackService$0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lcom/doctruyen/tts/TtsPlaybackService;"
    method = "lambda$requestAudioFocus$0"
    proto = "(I)V"
.end annotation


# instance fields
.field public final synthetic f$0:Lcom/doctruyen/tts/TtsPlaybackService;


# direct methods
.method public synthetic constructor <init>(Lcom/doctruyen/tts/TtsPlaybackService;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/doctruyen/tts/TtsPlaybackService$0;->f$0:Lcom/doctruyen/tts/TtsPlaybackService;

    return-void
.end method


# virtual methods
.method public final onAudioFocusChange(I)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/doctruyen/tts/TtsPlaybackService$0;->f$0:Lcom/doctruyen/tts/TtsPlaybackService;

    invoke-virtual {v0, p1}, Lcom/doctruyen/tts/TtsPlaybackService;->lambda$requestAudioFocus$0$com-doctruyen-tts-TtsPlaybackService(I)V

    return-void
.end method
