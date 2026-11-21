.class Lcom/doctruyen/reader/ReaderActivity$1$1;
.super Ljava/lang/Object;
.source "ReaderActivity.java"

# interfaces
.implements Lcom/doctruyen/tts/TtsPlaybackService$OnTtsEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/doctruyen/reader/ReaderActivity$1;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/doctruyen/reader/ReaderActivity$1;


# direct methods
.method constructor <init>(Lcom/doctruyen/reader/ReaderActivity$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 226
    iput-object p1, p0, Lcom/doctruyen/reader/ReaderActivity$1$1;->this$1:Lcom/doctruyen/reader/ReaderActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onChapterFinished$2$com-doctruyen-reader-ReaderActivity$1$1()V
    .locals 2

    .line 254
    iget-object v0, p0, Lcom/doctruyen/reader/ReaderActivity$1$1;->this$1:Lcom/doctruyen/reader/ReaderActivity$1;

    iget-object v0, v0, Lcom/doctruyen/reader/ReaderActivity$1;->this$0:Lcom/doctruyen/reader/ReaderActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/doctruyen/reader/ReaderActivity;->access$700(Lcom/doctruyen/reader/ReaderActivity;Z)V

    return-void
.end method

.method synthetic lambda$onParagraphStarted$1$com-doctruyen-reader-ReaderActivity$1$1(II)V
    .locals 3

    .line 241
    iget-object v0, p0, Lcom/doctruyen/reader/ReaderActivity$1$1;->this$1:Lcom/doctruyen/reader/ReaderActivity$1;

    iget-object v0, v0, Lcom/doctruyen/reader/ReaderActivity$1;->this$0:Lcom/doctruyen/reader/ReaderActivity;

    invoke-static {v0}, Lcom/doctruyen/reader/ReaderActivity;->access$800(Lcom/doctruyen/reader/ReaderActivity;)Landroid/webkit/WebView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:highlightParagraph("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 242
    iget-object v0, p0, Lcom/doctruyen/reader/ReaderActivity$1$1;->this$1:Lcom/doctruyen/reader/ReaderActivity$1;

    iget-object v0, v0, Lcom/doctruyen/reader/ReaderActivity$1;->this$0:Lcom/doctruyen/reader/ReaderActivity;

    invoke-static {v0}, Lcom/doctruyen/reader/ReaderActivity;->access$900(Lcom/doctruyen/reader/ReaderActivity;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/doctruyen/reader/ReaderActivity$1$1;->this$1:Lcom/doctruyen/reader/ReaderActivity$1;

    iget-object v0, v0, Lcom/doctruyen/reader/ReaderActivity$1;->this$0:Lcom/doctruyen/reader/ReaderActivity;

    invoke-static {v0}, Lcom/doctruyen/reader/ReaderActivity;->access$900(Lcom/doctruyen/reader/ReaderActivity;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 245
    :cond_0
    iget-object v0, p0, Lcom/doctruyen/reader/ReaderActivity$1$1;->this$1:Lcom/doctruyen/reader/ReaderActivity$1;

    iget-object v0, v0, Lcom/doctruyen/reader/ReaderActivity$1;->this$0:Lcom/doctruyen/reader/ReaderActivity;

    invoke-static {v0}, Lcom/doctruyen/reader/ReaderActivity;->access$1000(Lcom/doctruyen/reader/ReaderActivity;)Landroid/widget/SeekBar;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/doctruyen/reader/ReaderActivity$1$1;->this$1:Lcom/doctruyen/reader/ReaderActivity$1;

    iget-object v0, v0, Lcom/doctruyen/reader/ReaderActivity$1;->this$0:Lcom/doctruyen/reader/ReaderActivity;

    invoke-static {v0}, Lcom/doctruyen/reader/ReaderActivity;->access$1100(Lcom/doctruyen/reader/ReaderActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 246
    iget-object v0, p0, Lcom/doctruyen/reader/ReaderActivity$1$1;->this$1:Lcom/doctruyen/reader/ReaderActivity$1;

    iget-object v0, v0, Lcom/doctruyen/reader/ReaderActivity$1;->this$0:Lcom/doctruyen/reader/ReaderActivity;

    invoke-static {v0}, Lcom/doctruyen/reader/ReaderActivity;->access$1000(Lcom/doctruyen/reader/ReaderActivity;)Landroid/widget/SeekBar;

    move-result-object v0

    const/4 v1, 0x1

    sub-int/2addr p2, v1

    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-virtual {v0, p2}, Landroid/widget/SeekBar;->setMax(I)V

    .line 247
    iget-object p2, p0, Lcom/doctruyen/reader/ReaderActivity$1$1;->this$1:Lcom/doctruyen/reader/ReaderActivity$1;

    iget-object p2, p2, Lcom/doctruyen/reader/ReaderActivity$1;->this$0:Lcom/doctruyen/reader/ReaderActivity;

    invoke-static {p2}, Lcom/doctruyen/reader/ReaderActivity;->access$1000(Lcom/doctruyen/reader/ReaderActivity;)Landroid/widget/SeekBar;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 249
    :cond_1
    return-void
.end method

.method synthetic lambda$onPlaybackStateChanged$0$com-doctruyen-reader-ReaderActivity$1$1(Z)V
    .locals 1

    .line 230
    iget-object v0, p0, Lcom/doctruyen/reader/ReaderActivity$1$1;->this$1:Lcom/doctruyen/reader/ReaderActivity$1;

    iget-object v0, v0, Lcom/doctruyen/reader/ReaderActivity$1;->this$0:Lcom/doctruyen/reader/ReaderActivity;

    invoke-static {v0, p1}, Lcom/doctruyen/reader/ReaderActivity;->access$1200(Lcom/doctruyen/reader/ReaderActivity;Z)V

    .line 231
    return-void
.end method

.method synthetic lambda$onRequestPrevChapter$3$com-doctruyen-reader-ReaderActivity$1$1()V
    .locals 1

    .line 259
    iget-object v0, p0, Lcom/doctruyen/reader/ReaderActivity$1$1;->this$1:Lcom/doctruyen/reader/ReaderActivity$1;

    iget-object v0, v0, Lcom/doctruyen/reader/ReaderActivity$1;->this$0:Lcom/doctruyen/reader/ReaderActivity;

    invoke-static {v0}, Lcom/doctruyen/reader/ReaderActivity;->access$600(Lcom/doctruyen/reader/ReaderActivity;)V

    return-void
.end method

.method public onChapterFinished()V
    .locals 2

    .line 254
    iget-object v0, p0, Lcom/doctruyen/reader/ReaderActivity$1$1;->this$1:Lcom/doctruyen/reader/ReaderActivity$1;

    iget-object v0, v0, Lcom/doctruyen/reader/ReaderActivity$1;->this$0:Lcom/doctruyen/reader/ReaderActivity;

    invoke-static {v0}, Lcom/doctruyen/reader/ReaderActivity;->access$200(Lcom/doctruyen/reader/ReaderActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/doctruyen/reader/ReaderActivity$1$1$2;

    invoke-direct {v1, p0}, Lcom/doctruyen/reader/ReaderActivity$1$1$2;-><init>(Lcom/doctruyen/reader/ReaderActivity$1$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 255
    return-void
.end method

.method public onParagraphStarted(II)V
    .locals 5

    .line 236
    iget-object v0, p0, Lcom/doctruyen/reader/ReaderActivity$1$1;->this$1:Lcom/doctruyen/reader/ReaderActivity$1;

    iget-object v0, v0, Lcom/doctruyen/reader/ReaderActivity$1;->this$0:Lcom/doctruyen/reader/ReaderActivity;

    invoke-static {v0, p1}, Lcom/doctruyen/reader/ReaderActivity;->access$302(Lcom/doctruyen/reader/ReaderActivity;I)I

    .line 237
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/doctruyen/reader/ReaderActivity$1$1;->this$1:Lcom/doctruyen/reader/ReaderActivity$1;

    iget-object v2, v2, Lcom/doctruyen/reader/ReaderActivity$1;->this$0:Lcom/doctruyen/reader/ReaderActivity;

    invoke-static {v2}, Lcom/doctruyen/reader/ReaderActivity;->access$400(Lcom/doctruyen/reader/ReaderActivity;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xbb8

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 238
    iget-object v0, p0, Lcom/doctruyen/reader/ReaderActivity$1$1;->this$1:Lcom/doctruyen/reader/ReaderActivity$1;

    iget-object v0, v0, Lcom/doctruyen/reader/ReaderActivity$1;->this$0:Lcom/doctruyen/reader/ReaderActivity;

    invoke-static {v0}, Lcom/doctruyen/reader/ReaderActivity;->access$500(Lcom/doctruyen/reader/ReaderActivity;)V

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/doctruyen/reader/ReaderActivity$1$1;->this$1:Lcom/doctruyen/reader/ReaderActivity$1;

    iget-object v0, v0, Lcom/doctruyen/reader/ReaderActivity$1;->this$0:Lcom/doctruyen/reader/ReaderActivity;

    invoke-static {v0}, Lcom/doctruyen/reader/ReaderActivity;->access$200(Lcom/doctruyen/reader/ReaderActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/doctruyen/reader/ReaderActivity$1$1$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/doctruyen/reader/ReaderActivity$1$1$3;-><init>(Lcom/doctruyen/reader/ReaderActivity$1$1;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 250
    return-void
.end method

.method public onPlaybackStateChanged(Z)V
    .locals 2

    .line 229
    iget-object v0, p0, Lcom/doctruyen/reader/ReaderActivity$1$1;->this$1:Lcom/doctruyen/reader/ReaderActivity$1;

    iget-object v0, v0, Lcom/doctruyen/reader/ReaderActivity$1;->this$0:Lcom/doctruyen/reader/ReaderActivity;

    invoke-static {v0}, Lcom/doctruyen/reader/ReaderActivity;->access$200(Lcom/doctruyen/reader/ReaderActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/doctruyen/reader/ReaderActivity$1$1$0;

    invoke-direct {v1, p0, p1}, Lcom/doctruyen/reader/ReaderActivity$1$1$0;-><init>(Lcom/doctruyen/reader/ReaderActivity$1$1;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 232
    return-void
.end method

.method public onRequestPrevChapter()V
    .locals 2

    .line 259
    iget-object v0, p0, Lcom/doctruyen/reader/ReaderActivity$1$1;->this$1:Lcom/doctruyen/reader/ReaderActivity$1;

    iget-object v0, v0, Lcom/doctruyen/reader/ReaderActivity$1;->this$0:Lcom/doctruyen/reader/ReaderActivity;

    invoke-static {v0}, Lcom/doctruyen/reader/ReaderActivity;->access$200(Lcom/doctruyen/reader/ReaderActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/doctruyen/reader/ReaderActivity$1$1$1;

    invoke-direct {v1, p0}, Lcom/doctruyen/reader/ReaderActivity$1$1$1;-><init>(Lcom/doctruyen/reader/ReaderActivity$1$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 260
    return-void
.end method
