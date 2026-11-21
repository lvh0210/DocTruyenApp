.class Lcom/doctruyen/reader/ReaderActivity$4;
.super Ljava/lang/Object;
.source "ReaderActivity.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/doctruyen/reader/ReaderActivity;->createTtsPlayerPanel()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/doctruyen/reader/ReaderActivity;


# direct methods
.method constructor <init>(Lcom/doctruyen/reader/ReaderActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 584
    iput-object p1, p0, Lcom/doctruyen/reader/ReaderActivity$4;->this$0:Lcom/doctruyen/reader/ReaderActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1

    .line 587
    if-eqz p3, :cond_0

    iget-object p1, p0, Lcom/doctruyen/reader/ReaderActivity$4;->this$0:Lcom/doctruyen/reader/ReaderActivity;

    invoke-static {p1}, Lcom/doctruyen/reader/ReaderActivity;->access$000(Lcom/doctruyen/reader/ReaderActivity;)Lcom/doctruyen/tts/TtsPlaybackService;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 588
    iget-object p1, p0, Lcom/doctruyen/reader/ReaderActivity$4;->this$0:Lcom/doctruyen/reader/ReaderActivity;

    invoke-static {p1}, Lcom/doctruyen/reader/ReaderActivity;->access$900(Lcom/doctruyen/reader/ReaderActivity;)Landroid/widget/TextView;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "["

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " / "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p3, p0, Lcom/doctruyen/reader/ReaderActivity$4;->this$0:Lcom/doctruyen/reader/ReaderActivity;

    invoke-static {p3}, Lcom/doctruyen/reader/ReaderActivity;->access$000(Lcom/doctruyen/reader/ReaderActivity;)Lcom/doctruyen/tts/TtsPlaybackService;

    move-result-object p3

    invoke-virtual {p3}, Lcom/doctruyen/tts/TtsPlaybackService;->getTotalParagraphs()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, "]"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 590
    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    .line 594
    iget-object p1, p0, Lcom/doctruyen/reader/ReaderActivity$4;->this$0:Lcom/doctruyen/reader/ReaderActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/doctruyen/reader/ReaderActivity;->access$1102(Lcom/doctruyen/reader/ReaderActivity;Z)Z

    .line 595
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    .line 599
    iget-object v0, p0, Lcom/doctruyen/reader/ReaderActivity$4;->this$0:Lcom/doctruyen/reader/ReaderActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/doctruyen/reader/ReaderActivity;->access$1102(Lcom/doctruyen/reader/ReaderActivity;Z)Z

    .line 600
    iget-object v0, p0, Lcom/doctruyen/reader/ReaderActivity$4;->this$0:Lcom/doctruyen/reader/ReaderActivity;

    invoke-static {v0}, Lcom/doctruyen/reader/ReaderActivity;->access$000(Lcom/doctruyen/reader/ReaderActivity;)Lcom/doctruyen/tts/TtsPlaybackService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 601
    iget-object v0, p0, Lcom/doctruyen/reader/ReaderActivity$4;->this$0:Lcom/doctruyen/reader/ReaderActivity;

    invoke-static {v0}, Lcom/doctruyen/reader/ReaderActivity;->access$000(Lcom/doctruyen/reader/ReaderActivity;)Lcom/doctruyen/tts/TtsPlaybackService;

    move-result-object v0

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/doctruyen/tts/TtsPlaybackService;->seekToParagraph(I)V

    .line 603
    :cond_0
    return-void
.end method
