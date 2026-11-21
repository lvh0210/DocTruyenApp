.class Lcom/doctruyen/tts/TtsPlaybackService$1;
.super Landroid/media/session/MediaSession$Callback;
.source "TtsPlaybackService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/doctruyen/tts/TtsPlaybackService;->initMediaSession()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/doctruyen/tts/TtsPlaybackService;


# direct methods
.method constructor <init>(Lcom/doctruyen/tts/TtsPlaybackService;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 151
    iput-object p1, p0, Lcom/doctruyen/tts/TtsPlaybackService$1;->this$0:Lcom/doctruyen/tts/TtsPlaybackService;

    invoke-direct {p0}, Landroid/media/session/MediaSession$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFastForward()V
    .locals 2

    .line 174
    iget-object v0, p0, Lcom/doctruyen/tts/TtsPlaybackService$1;->this$0:Lcom/doctruyen/tts/TtsPlaybackService;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/doctruyen/tts/TtsPlaybackService;->skipParagraph(I)V

    .line 175
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/doctruyen/tts/TtsPlaybackService$1;->this$0:Lcom/doctruyen/tts/TtsPlaybackService;

    invoke-virtual {v0}, Lcom/doctruyen/tts/TtsPlaybackService;->pause()V

    .line 160
    return-void
.end method

.method public onPlay()V
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/doctruyen/tts/TtsPlaybackService$1;->this$0:Lcom/doctruyen/tts/TtsPlaybackService;

    invoke-virtual {v0}, Lcom/doctruyen/tts/TtsPlaybackService;->resume()V

    .line 155
    return-void
.end method

.method public onRewind()V
    .locals 2

    .line 179
    iget-object v0, p0, Lcom/doctruyen/tts/TtsPlaybackService$1;->this$0:Lcom/doctruyen/tts/TtsPlaybackService;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Lcom/doctruyen/tts/TtsPlaybackService;->skipParagraph(I)V

    .line 180
    return-void
.end method

.method public onSeekTo(J)V
    .locals 3

    .line 184
    iget-object v0, p0, Lcom/doctruyen/tts/TtsPlaybackService$1;->this$0:Lcom/doctruyen/tts/TtsPlaybackService;

    const-wide/16 v1, 0x3e8

    div-long/2addr p1, v1

    long-to-int p2, p1

    invoke-virtual {v0, p2}, Lcom/doctruyen/tts/TtsPlaybackService;->seekToParagraph(I)V

    .line 185
    return-void
.end method

.method public onSkipToNext()V
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/doctruyen/tts/TtsPlaybackService$1;->this$0:Lcom/doctruyen/tts/TtsPlaybackService;

    invoke-static {v0}, Lcom/doctruyen/tts/TtsPlaybackService;->access$000(Lcom/doctruyen/tts/TtsPlaybackService;)Lcom/doctruyen/tts/TtsPlaybackService$OnTtsEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/doctruyen/tts/TtsPlaybackService$1;->this$0:Lcom/doctruyen/tts/TtsPlaybackService;

    invoke-static {v0}, Lcom/doctruyen/tts/TtsPlaybackService;->access$000(Lcom/doctruyen/tts/TtsPlaybackService;)Lcom/doctruyen/tts/TtsPlaybackService$OnTtsEventListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/doctruyen/tts/TtsPlaybackService$OnTtsEventListener;->onChapterFinished()V

    .line 165
    :cond_0
    return-void
.end method

.method public onSkipToPrevious()V
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/doctruyen/tts/TtsPlaybackService$1;->this$0:Lcom/doctruyen/tts/TtsPlaybackService;

    invoke-static {v0}, Lcom/doctruyen/tts/TtsPlaybackService;->access$000(Lcom/doctruyen/tts/TtsPlaybackService;)Lcom/doctruyen/tts/TtsPlaybackService$OnTtsEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/doctruyen/tts/TtsPlaybackService$1;->this$0:Lcom/doctruyen/tts/TtsPlaybackService;

    invoke-static {v0}, Lcom/doctruyen/tts/TtsPlaybackService;->access$000(Lcom/doctruyen/tts/TtsPlaybackService;)Lcom/doctruyen/tts/TtsPlaybackService$OnTtsEventListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/doctruyen/tts/TtsPlaybackService$OnTtsEventListener;->onRequestPrevChapter()V

    .line 170
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/doctruyen/tts/TtsPlaybackService$1;->this$0:Lcom/doctruyen/tts/TtsPlaybackService;

    invoke-virtual {v0}, Lcom/doctruyen/tts/TtsPlaybackService;->pause()V

    .line 190
    return-void
.end method
