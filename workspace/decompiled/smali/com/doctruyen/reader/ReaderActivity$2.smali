.class Lcom/doctruyen/reader/ReaderActivity$2;
.super Landroid/webkit/WebViewClient;
.source "ReaderActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/doctruyen/reader/ReaderActivity;->initViews()V
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

    .line 362
    iput-object p1, p0, Lcom/doctruyen/reader/ReaderActivity$2;->this$0:Lcom/doctruyen/reader/ReaderActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    .line 365
    iget-object p1, p0, Lcom/doctruyen/reader/ReaderActivity$2;->this$0:Lcom/doctruyen/reader/ReaderActivity;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/doctruyen/reader/ReaderActivity;->access$1302(Lcom/doctruyen/reader/ReaderActivity;Z)Z

    .line 366
    iget-object p1, p0, Lcom/doctruyen/reader/ReaderActivity$2;->this$0:Lcom/doctruyen/reader/ReaderActivity;

    iget-object p2, p0, Lcom/doctruyen/reader/ReaderActivity$2;->this$0:Lcom/doctruyen/reader/ReaderActivity;

    invoke-static {p2}, Lcom/doctruyen/reader/ReaderActivity;->access$1400(Lcom/doctruyen/reader/ReaderActivity;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/doctruyen/reader/ReaderActivity;->access$1500(Lcom/doctruyen/reader/ReaderActivity;Ljava/lang/String;)V

    .line 367
    iget-object p1, p0, Lcom/doctruyen/reader/ReaderActivity$2;->this$0:Lcom/doctruyen/reader/ReaderActivity;

    invoke-static {p1}, Lcom/doctruyen/reader/ReaderActivity;->access$800(Lcom/doctruyen/reader/ReaderActivity;)Landroid/webkit/WebView;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "javascript:setFontSize("

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v0, p0, Lcom/doctruyen/reader/ReaderActivity$2;->this$0:Lcom/doctruyen/reader/ReaderActivity;

    invoke-static {v0}, Lcom/doctruyen/reader/ReaderActivity;->access$1600(Lcom/doctruyen/reader/ReaderActivity;)I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, ")"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 368
    iget-object p1, p0, Lcom/doctruyen/reader/ReaderActivity$2;->this$0:Lcom/doctruyen/reader/ReaderActivity;

    invoke-static {p1}, Lcom/doctruyen/reader/ReaderActivity;->access$1700(Lcom/doctruyen/reader/ReaderActivity;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 369
    iget-object p1, p0, Lcom/doctruyen/reader/ReaderActivity$2;->this$0:Lcom/doctruyen/reader/ReaderActivity;

    iget-object p2, p0, Lcom/doctruyen/reader/ReaderActivity$2;->this$0:Lcom/doctruyen/reader/ReaderActivity;

    invoke-static {p2}, Lcom/doctruyen/reader/ReaderActivity;->access$1800(Lcom/doctruyen/reader/ReaderActivity;)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/doctruyen/reader/ReaderActivity$2;->this$0:Lcom/doctruyen/reader/ReaderActivity;

    invoke-static {v0}, Lcom/doctruyen/reader/ReaderActivity;->access$1700(Lcom/doctruyen/reader/ReaderActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/doctruyen/reader/ReaderActivity;->access$1900(Lcom/doctruyen/reader/ReaderActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    iget-object p1, p0, Lcom/doctruyen/reader/ReaderActivity$2;->this$0:Lcom/doctruyen/reader/ReaderActivity;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/doctruyen/reader/ReaderActivity;->access$1802(Lcom/doctruyen/reader/ReaderActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 371
    iget-object p1, p0, Lcom/doctruyen/reader/ReaderActivity$2;->this$0:Lcom/doctruyen/reader/ReaderActivity;

    invoke-static {p1, p2}, Lcom/doctruyen/reader/ReaderActivity;->access$1702(Lcom/doctruyen/reader/ReaderActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 373
    :cond_0
    return-void
.end method
