.class Lcom/doctruyen/tts/TtsPlaybackService$2;
.super Landroid/speech/tts/UtteranceProgressListener;
.source "TtsPlaybackService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/doctruyen/tts/TtsPlaybackService;->onInit(I)V
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

    .line 244
    iput-object p1, p0, Lcom/doctruyen/tts/TtsPlaybackService$2;->this$0:Lcom/doctruyen/tts/TtsPlaybackService;

    invoke-direct {p0}, Landroid/speech/tts/UtteranceProgressListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDone(Ljava/lang/String;)V
    .locals 2

    .line 259
    iget-object p1, p0, Lcom/doctruyen/tts/TtsPlaybackService$2;->this$0:Lcom/doctruyen/tts/TtsPlaybackService;

    invoke-static {p1}, Lcom/doctruyen/tts/TtsPlaybackService;->access$208(Lcom/doctruyen/tts/TtsPlaybackService;)I

    .line 260
    iget-object p1, p0, Lcom/doctruyen/tts/TtsPlaybackService$2;->this$0:Lcom/doctruyen/tts/TtsPlaybackService;

    invoke-static {p1}, Lcom/doctruyen/tts/TtsPlaybackService;->access$200(Lcom/doctruyen/tts/TtsPlaybackService;)I

    move-result p1

    iget-object v0, p0, Lcom/doctruyen/tts/TtsPlaybackService$2;->this$0:Lcom/doctruyen/tts/TtsPlaybackService;

    invoke-static {v0}, Lcom/doctruyen/tts/TtsPlaybackService;->access$100(Lcom/doctruyen/tts/TtsPlaybackService;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 265
    iget-object v1, p0, Lcom/doctruyen/tts/TtsPlaybackService$2;->this$0:Lcom/doctruyen/tts/TtsPlaybackService;

    .line 260
    if-ge p1, v0, :cond_0

    .line 261
    invoke-static {v1}, Lcom/doctruyen/tts/TtsPlaybackService;->access$300(Lcom/doctruyen/tts/TtsPlaybackService;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 262
    iget-object p1, p0, Lcom/doctruyen/tts/TtsPlaybackService$2;->this$0:Lcom/doctruyen/tts/TtsPlaybackService;

    invoke-static {p1}, Lcom/doctruyen/tts/TtsPlaybackService;->access$400(Lcom/doctruyen/tts/TtsPlaybackService;)V

    goto :goto_0

    .line 265
    :cond_0
    invoke-static {v1}, Lcom/doctruyen/tts/TtsPlaybackService;->access$500(Lcom/doctruyen/tts/TtsPlaybackService;)Z

    move-result p1

    .line 271
    iget-object v0, p0, Lcom/doctruyen/tts/TtsPlaybackService$2;->this$0:Lcom/doctruyen/tts/TtsPlaybackService;

    .line 265
    if-nez p1, :cond_1

    .line 267
    invoke-static {v0}, Lcom/doctruyen/tts/TtsPlaybackService;->access$000(Lcom/doctruyen/tts/TtsPlaybackService;)Lcom/doctruyen/tts/TtsPlaybackService$OnTtsEventListener;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 268
    iget-object p1, p0, Lcom/doctruyen/tts/TtsPlaybackService$2;->this$0:Lcom/doctruyen/tts/TtsPlaybackService;

    invoke-static {p1}, Lcom/doctruyen/tts/TtsPlaybackService;->access$000(Lcom/doctruyen/tts/TtsPlaybackService;)Lcom/doctruyen/tts/TtsPlaybackService$OnTtsEventListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/doctruyen/tts/TtsPlaybackService$OnTtsEventListener;->onChapterFinished()V

    goto :goto_0

    .line 271
    :cond_1
    const/4 p1, 0x0

    invoke-static {v0, p1}, Lcom/doctruyen/tts/TtsPlaybackService;->access$502(Lcom/doctruyen/tts/TtsPlaybackService;Z)Z

    .line 272
    iget-object v0, p0, Lcom/doctruyen/tts/TtsPlaybackService$2;->this$0:Lcom/doctruyen/tts/TtsPlaybackService;

    invoke-static {v0, p1}, Lcom/doctruyen/tts/TtsPlaybackService;->access$302(Lcom/doctruyen/tts/TtsPlaybackService;Z)Z

    .line 273
    iget-object v0, p0, Lcom/doctruyen/tts/TtsPlaybackService$2;->this$0:Lcom/doctruyen/tts/TtsPlaybackService;

    invoke-static {v0, p1}, Lcom/doctruyen/tts/TtsPlaybackService;->access$600(Lcom/doctruyen/tts/TtsPlaybackService;Z)V

    .line 274
    iget-object v0, p0, Lcom/doctruyen/tts/TtsPlaybackService$2;->this$0:Lcom/doctruyen/tts/TtsPlaybackService;

    invoke-static {v0, p1}, Lcom/doctruyen/tts/TtsPlaybackService;->access$700(Lcom/doctruyen/tts/TtsPlaybackService;Z)V

    .line 275
    iget-object v0, p0, Lcom/doctruyen/tts/TtsPlaybackService$2;->this$0:Lcom/doctruyen/tts/TtsPlaybackService;

    invoke-static {v0}, Lcom/doctruyen/tts/TtsPlaybackService;->access$800(Lcom/doctruyen/tts/TtsPlaybackService;)V

    .line 276
    iget-object v0, p0, Lcom/doctruyen/tts/TtsPlaybackService$2;->this$0:Lcom/doctruyen/tts/TtsPlaybackService;

    invoke-static {v0}, Lcom/doctruyen/tts/TtsPlaybackService;->access$000(Lcom/doctruyen/tts/TtsPlaybackService;)Lcom/doctruyen/tts/TtsPlaybackService$OnTtsEventListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 277
    iget-object v0, p0, Lcom/doctruyen/tts/TtsPlaybackService$2;->this$0:Lcom/doctruyen/tts/TtsPlaybackService;

    invoke-static {v0}, Lcom/doctruyen/tts/TtsPlaybackService;->access$000(Lcom/doctruyen/tts/TtsPlaybackService;)Lcom/doctruyen/tts/TtsPlaybackService$OnTtsEventListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/doctruyen/tts/TtsPlaybackService$OnTtsEventListener;->onPlaybackStateChanged(Z)V

    .line 281
    :cond_2
    :goto_0
    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 1

    .line 285
    iget-object p1, p0, Lcom/doctruyen/tts/TtsPlaybackService$2;->this$0:Lcom/doctruyen/tts/TtsPlaybackService;

    invoke-static {p1}, Lcom/doctruyen/tts/TtsPlaybackService;->access$208(Lcom/doctruyen/tts/TtsPlaybackService;)I

    .line 286
    iget-object p1, p0, Lcom/doctruyen/tts/TtsPlaybackService$2;->this$0:Lcom/doctruyen/tts/TtsPlaybackService;

    invoke-static {p1}, Lcom/doctruyen/tts/TtsPlaybackService;->access$200(Lcom/doctruyen/tts/TtsPlaybackService;)I

    move-result p1

    iget-object v0, p0, Lcom/doctruyen/tts/TtsPlaybackService$2;->this$0:Lcom/doctruyen/tts/TtsPlaybackService;

    invoke-static {v0}, Lcom/doctruyen/tts/TtsPlaybackService;->access$100(Lcom/doctruyen/tts/TtsPlaybackService;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object p1, p0, Lcom/doctruyen/tts/TtsPlaybackService$2;->this$0:Lcom/doctruyen/tts/TtsPlaybackService;

    invoke-static {p1}, Lcom/doctruyen/tts/TtsPlaybackService;->access$300(Lcom/doctruyen/tts/TtsPlaybackService;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 287
    iget-object p1, p0, Lcom/doctruyen/tts/TtsPlaybackService$2;->this$0:Lcom/doctruyen/tts/TtsPlaybackService;

    invoke-static {p1}, Lcom/doctruyen/tts/TtsPlaybackService;->access$400(Lcom/doctruyen/tts/TtsPlaybackService;)V

    .line 289
    :cond_0
    return-void
.end method

.method public onStart(Ljava/lang/String;)V
    .locals 2

    .line 247
    if-eqz p1, :cond_1

    const-string v0, "p_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 249
    const/4 v0, 0x2

    :try_start_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 250
    iget-object v0, p0, Lcom/doctruyen/tts/TtsPlaybackService$2;->this$0:Lcom/doctruyen/tts/TtsPlaybackService;

    invoke-static {v0}, Lcom/doctruyen/tts/TtsPlaybackService;->access$000(Lcom/doctruyen/tts/TtsPlaybackService;)Lcom/doctruyen/tts/TtsPlaybackService$OnTtsEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/doctruyen/tts/TtsPlaybackService$2;->this$0:Lcom/doctruyen/tts/TtsPlaybackService;

    invoke-static {v0}, Lcom/doctruyen/tts/TtsPlaybackService;->access$000(Lcom/doctruyen/tts/TtsPlaybackService;)Lcom/doctruyen/tts/TtsPlaybackService$OnTtsEventListener;

    move-result-object v0

    iget-object v1, p0, Lcom/doctruyen/tts/TtsPlaybackService$2;->this$0:Lcom/doctruyen/tts/TtsPlaybackService;

    invoke-static {v1}, Lcom/doctruyen/tts/TtsPlaybackService;->access$100(Lcom/doctruyen/tts/TtsPlaybackService;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/doctruyen/tts/TtsPlaybackService$OnTtsEventListener;->onParagraphStarted(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 253
    :catch_0
    move-exception p1

    :cond_0
    :goto_0
    nop

    .line 255
    :cond_1
    return-void
.end method
