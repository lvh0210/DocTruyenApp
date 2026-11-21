.class Lcom/doctruyen/reader/ReaderActivity$7;
.super Ljava/lang/Object;
.source "ReaderActivity.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/doctruyen/reader/ReaderActivity;->showTtsSettingsDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/doctruyen/reader/ReaderActivity;

.field final synthetic val$tvSpeedLabel:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/doctruyen/reader/ReaderActivity;Landroid/widget/TextView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1128
    iput-object p1, p0, Lcom/doctruyen/reader/ReaderActivity$7;->this$0:Lcom/doctruyen/reader/ReaderActivity;

    iput-object p2, p0, Lcom/doctruyen/reader/ReaderActivity$7;->val$tvSpeedLabel:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1

    .line 1131
    add-int/lit8 p2, p2, 0x32

    .line 1132
    iget-object p1, p0, Lcom/doctruyen/reader/ReaderActivity$7;->val$tvSpeedLabel:Landroid/widget/TextView;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "T\u1ed1c \u0111\u1ed9: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1133
    iget-object p1, p0, Lcom/doctruyen/reader/ReaderActivity$7;->this$0:Lcom/doctruyen/reader/ReaderActivity;

    invoke-static {p1}, Lcom/doctruyen/reader/ReaderActivity;->access$000(Lcom/doctruyen/reader/ReaderActivity;)Lcom/doctruyen/tts/TtsPlaybackService;

    move-result-object p1

    int-to-float p2, p2

    const/high16 p3, 0x42c80000    # 100.0f

    div-float/2addr p2, p3

    invoke-virtual {p1, p2}, Lcom/doctruyen/tts/TtsPlaybackService;->setSpeed(F)V

    .line 1134
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    .line 1136
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    .line 1138
    return-void
.end method
