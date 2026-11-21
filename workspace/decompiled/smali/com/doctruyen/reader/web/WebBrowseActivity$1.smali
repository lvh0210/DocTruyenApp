.class Lcom/doctruyen/reader/web/WebBrowseActivity$1;
.super Landroid/webkit/WebChromeClient;
.source "WebBrowseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/doctruyen/reader/web/WebBrowseActivity;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/doctruyen/reader/web/WebBrowseActivity;


# direct methods
.method constructor <init>(Lcom/doctruyen/reader/web/WebBrowseActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 203
    iput-object p1, p0, Lcom/doctruyen/reader/web/WebBrowseActivity$1;->this$0:Lcom/doctruyen/reader/web/WebBrowseActivity;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 2

    .line 206
    nop

    .line 210
    iget-object v0, p0, Lcom/doctruyen/reader/web/WebBrowseActivity$1;->this$0:Lcom/doctruyen/reader/web/WebBrowseActivity;

    .line 206
    const/16 v1, 0x64

    if-ge p2, v1, :cond_0

    .line 207
    invoke-static {v0}, Lcom/doctruyen/reader/web/WebBrowseActivity;->access$000(Lcom/doctruyen/reader/web/WebBrowseActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 208
    iget-object v0, p0, Lcom/doctruyen/reader/web/WebBrowseActivity$1;->this$0:Lcom/doctruyen/reader/web/WebBrowseActivity;

    invoke-static {v0}, Lcom/doctruyen/reader/web/WebBrowseActivity;->access$000(Lcom/doctruyen/reader/web/WebBrowseActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_0

    .line 210
    :cond_0
    invoke-static {v0}, Lcom/doctruyen/reader/web/WebBrowseActivity;->access$000(Lcom/doctruyen/reader/web/WebBrowseActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 212
    :goto_0
    iget-object v0, p0, Lcom/doctruyen/reader/web/WebBrowseActivity$1;->this$0:Lcom/doctruyen/reader/web/WebBrowseActivity;

    invoke-static {v0}, Lcom/doctruyen/reader/web/WebBrowseActivity;->access$100(Lcom/doctruyen/reader/web/WebBrowseActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x1e

    if-lt p2, v0, :cond_1

    .line 213
    iget-object v0, p0, Lcom/doctruyen/reader/web/WebBrowseActivity$1;->this$0:Lcom/doctruyen/reader/web/WebBrowseActivity;

    invoke-static {v0, p1}, Lcom/doctruyen/reader/web/WebBrowseActivity;->access$200(Lcom/doctruyen/reader/web/WebBrowseActivity;Landroid/webkit/WebView;)V

    .line 215
    :cond_1
    const/16 v0, 0x32

    if-lt p2, v0, :cond_2

    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object p2

    const-string v0, "sachiepvien.net"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 216
    iget-object p2, p0, Lcom/doctruyen/reader/web/WebBrowseActivity$1;->this$0:Lcom/doctruyen/reader/web/WebBrowseActivity;

    invoke-static {p2, p1}, Lcom/doctruyen/reader/web/WebBrowseActivity;->access$300(Lcom/doctruyen/reader/web/WebBrowseActivity;Landroid/webkit/WebView;)V

    .line 218
    :cond_2
    return-void
.end method
