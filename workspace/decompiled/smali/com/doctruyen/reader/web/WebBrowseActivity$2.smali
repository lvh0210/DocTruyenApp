.class Lcom/doctruyen/reader/web/WebBrowseActivity$2;
.super Landroid/webkit/WebViewClient;
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

    .line 221
    iput-object p1, p0, Lcom/doctruyen/reader/web/WebBrowseActivity$2;->this$0:Lcom/doctruyen/reader/web/WebBrowseActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    .line 263
    iget-object v0, p0, Lcom/doctruyen/reader/web/WebBrowseActivity$2;->this$0:Lcom/doctruyen/reader/web/WebBrowseActivity;

    invoke-static {v0}, Lcom/doctruyen/reader/web/WebBrowseActivity;->access$600(Lcom/doctruyen/reader/web/WebBrowseActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 264
    iget-object v0, p0, Lcom/doctruyen/reader/web/WebBrowseActivity$2;->this$0:Lcom/doctruyen/reader/web/WebBrowseActivity;

    invoke-static {v0, p2}, Lcom/doctruyen/reader/web/WebBrowseActivity;->access$700(Lcom/doctruyen/reader/web/WebBrowseActivity;Ljava/lang/String;)V

    .line 265
    iget-object v0, p0, Lcom/doctruyen/reader/web/WebBrowseActivity$2;->this$0:Lcom/doctruyen/reader/web/WebBrowseActivity;

    invoke-static {v0}, Lcom/doctruyen/reader/web/WebBrowseActivity;->access$100(Lcom/doctruyen/reader/web/WebBrowseActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/doctruyen/reader/web/WebBrowseActivity$2;->this$0:Lcom/doctruyen/reader/web/WebBrowseActivity;

    invoke-static {v0, p1}, Lcom/doctruyen/reader/web/WebBrowseActivity;->access$200(Lcom/doctruyen/reader/web/WebBrowseActivity;Landroid/webkit/WebView;)V

    .line 268
    :cond_0
    if-eqz p2, :cond_1

    const-string v0, "sachiepvien.net"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 269
    iget-object p2, p0, Lcom/doctruyen/reader/web/WebBrowseActivity$2;->this$0:Lcom/doctruyen/reader/web/WebBrowseActivity;

    invoke-static {p2, p1}, Lcom/doctruyen/reader/web/WebBrowseActivity;->access$300(Lcom/doctruyen/reader/web/WebBrowseActivity;Landroid/webkit/WebView;)V

    .line 271
    
    :cond_1
    iget-object v0, p0, Lcom/doctruyen/reader/web/WebBrowseActivity$2;->this$0:Lcom/doctruyen/reader/web/WebBrowseActivity;

    invoke-static {v0, p1}, Lcom/doctruyen/reader/web/WebBrowseActivity;->access$800(Lcom/doctruyen/reader/web/WebBrowseActivity;Landroid/webkit/WebView;)V

    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    iget-object p2, p0, Lcom/doctruyen/reader/web/WebBrowseActivity$2;->this$0:Lcom/doctruyen/reader/web/WebBrowseActivity;

    invoke-static {p2, p1, v0}, Lcom/doctruyen/reader/web/ComicWebHelper;->onPageFinished(Lcom/doctruyen/reader/web/WebBrowseActivity;Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 254
    iget-object p3, p0, Lcom/doctruyen/reader/web/WebBrowseActivity$2;->this$0:Lcom/doctruyen/reader/web/WebBrowseActivity;

    invoke-static {p3}, Lcom/doctruyen/reader/web/WebBrowseActivity;->access$600(Lcom/doctruyen/reader/web/WebBrowseActivity;)Landroid/widget/EditText;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 255
    iget-object p3, p0, Lcom/doctruyen/reader/web/WebBrowseActivity$2;->this$0:Lcom/doctruyen/reader/web/WebBrowseActivity;

    invoke-static {p3, p2}, Lcom/doctruyen/reader/web/WebBrowseActivity;->access$700(Lcom/doctruyen/reader/web/WebBrowseActivity;Ljava/lang/String;)V

    .line 256
    iget-object p2, p0, Lcom/doctruyen/reader/web/WebBrowseActivity$2;->this$0:Lcom/doctruyen/reader/web/WebBrowseActivity;

    invoke-static {p2}, Lcom/doctruyen/reader/web/WebBrowseActivity;->access$100(Lcom/doctruyen/reader/web/WebBrowseActivity;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 257
    iget-object p2, p0, Lcom/doctruyen/reader/web/WebBrowseActivity$2;->this$0:Lcom/doctruyen/reader/web/WebBrowseActivity;

    invoke-static {p2, p1}, Lcom/doctruyen/reader/web/WebBrowseActivity;->access$200(Lcom/doctruyen/reader/web/WebBrowseActivity;Landroid/webkit/WebView;)V

    .line 259
    
    :cond_0
    iget-object p2, p0, Lcom/doctruyen/reader/web/WebBrowseActivity$2;->this$0:Lcom/doctruyen/reader/web/WebBrowseActivity;

    invoke-static {p2, p1}, Lcom/doctruyen/reader/web/WebBrowseActivity;->access$800(Lcom/doctruyen/reader/web/WebBrowseActivity;Landroid/webkit/WebView;)V

    return-void
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;
    .locals 6

    .line 243
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 244
    invoke-static {}, Lcom/doctruyen/reader/web/WebBrowseActivity;->access$500()[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    .line 245
    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 246
    new-instance p1, Landroid/webkit/WebResourceResponse;

    new-instance p2, Ljava/io/ByteArrayInputStream;

    new-array v0, v3, [B

    invoke-direct {p2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string v0, "text/plain"

    const-string v1, "UTF-8"

    invoke-direct {p1, v0, v1, p2}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    return-object p1

    .line 244
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 249
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .locals 1

    .line 232
    if-eqz p2, :cond_0

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 233
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    .line 234
    iget-object v0, p0, Lcom/doctruyen/reader/web/WebBrowseActivity$2;->this$0:Lcom/doctruyen/reader/web/WebBrowseActivity;

    invoke-static {v0, p1, p2}, Lcom/doctruyen/reader/web/WebBrowseActivity;->access$400(Lcom/doctruyen/reader/web/WebBrowseActivity;Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 235
    const/4 p1, 0x1

    return p1

    .line 238
    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1

    .line 224
    iget-object v0, p0, Lcom/doctruyen/reader/web/WebBrowseActivity$2;->this$0:Lcom/doctruyen/reader/web/WebBrowseActivity;

    invoke-static {v0, p1, p2}, Lcom/doctruyen/reader/web/WebBrowseActivity;->access$400(Lcom/doctruyen/reader/web/WebBrowseActivity;Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 225
    const/4 p1, 0x1

    return p1

    .line 227
    :cond_0
    const/4 p1, 0x0

    return p1
.end method
