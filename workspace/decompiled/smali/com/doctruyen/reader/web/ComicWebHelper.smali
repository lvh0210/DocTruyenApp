.class public Lcom/doctruyen/reader/web/ComicWebHelper;
.super Ljava/lang/Object;
.source "ComicWebHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static handleComicClick(Lcom/doctruyen/reader/web/WebBrowseActivity;)Z
    .locals 2

    .line 33
    const/4 v0, 0x0

    if-eqz p0, :cond_6

    iget-object v1, p0, Lcom/doctruyen/reader/web/WebBrowseActivity;->webView:Landroid/webkit/WebView;

    if-nez v1, :cond_0

    goto :goto_1

    .line 34
    :cond_0
    iget-object v1, p0, Lcom/doctruyen/reader/web/WebBrowseActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v1

    .line 35
    if-eqz v1, :cond_5

    invoke-static {v1}, Lcom/doctruyen/data/ComicHistoryManager;->isComicUrl(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 36
    iget-object v1, p0, Lcom/doctruyen/reader/web/WebBrowseActivity;->topBar:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_4

    .line 37
    iget-object v1, p0, Lcom/doctruyen/reader/web/WebBrowseActivity;->topBar:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    .line 38
    iget-object v0, p0, Lcom/doctruyen/reader/web/WebBrowseActivity;->topBar:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 39
    iget-object v0, p0, Lcom/doctruyen/reader/web/WebBrowseActivity;->hsv:Landroid/widget/HorizontalScrollView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/doctruyen/reader/web/WebBrowseActivity;->hsv:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    .line 40
    :cond_1
    iget-object v0, p0, Lcom/doctruyen/reader/web/WebBrowseActivity;->btnActionRead:Landroid/widget/Button;

    if-eqz v0, :cond_4

    .line 41
    iget-object p0, p0, Lcom/doctruyen/reader/web/WebBrowseActivity;->btnActionRead:Landroid/widget/Button;

    const-string v0, "\ud83d\udd0d HI\u1ec6N THANH C\u00d4NG C\u1ee4"

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 44
    :cond_2
    iget-object v1, p0, Lcom/doctruyen/reader/web/WebBrowseActivity;->topBar:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 45
    iget-object v1, p0, Lcom/doctruyen/reader/web/WebBrowseActivity;->hsv:Landroid/widget/HorizontalScrollView;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/doctruyen/reader/web/WebBrowseActivity;->hsv:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v1, v0}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    .line 46
    :cond_3
    iget-object v0, p0, Lcom/doctruyen/reader/web/WebBrowseActivity;->btnActionRead:Landroid/widget/Button;

    if-eqz v0, :cond_4

    .line 47
    iget-object p0, p0, Lcom/doctruyen/reader/web/WebBrowseActivity;->btnActionRead:Landroid/widget/Button;

    const-string v0, "\ud83d\udd32 TO\u00c0N M\u00c0N H\u00ccNH"

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 51
    :cond_4
    :goto_0
    const/4 p0, 0x1

    return p0

    .line 53
    :cond_5
    return v0

    .line 33
    :cond_6
    :goto_1
    return v0
.end method

.method public static onPageFinished(Lcom/doctruyen/reader/web/WebBrowseActivity;Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    .line 11
    if-eqz p0, :cond_7

    if-nez p1, :cond_0

    goto :goto_2

    .line 12
    :cond_0
    if-eqz p2, :cond_5

    invoke-static {p2}, Lcom/doctruyen/data/ComicHistoryManager;->isComicUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 13
    invoke-virtual {p1}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object p1

    .line 14
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 15
    :cond_1
    move-object p1, p2

    .line 17
    :cond_2
    invoke-static {p0, p2, p1}, Lcom/doctruyen/data/ComicHistoryManager;->saveHistory(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    iget-object p1, p0, Lcom/doctruyen/reader/web/WebBrowseActivity;->btnActionRead:Landroid/widget/Button;

    if-eqz p1, :cond_4

    .line 19
    iget-object p1, p0, Lcom/doctruyen/reader/web/WebBrowseActivity;->topBar:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/doctruyen/reader/web/WebBrowseActivity;->topBar:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p1

    const/16 p2, 0x8

    if-ne p1, p2, :cond_3

    .line 20
    iget-object p0, p0, Lcom/doctruyen/reader/web/WebBrowseActivity;->btnActionRead:Landroid/widget/Button;

    const-string p1, "\ud83d\udd0d HI\u1ec6N THANH C\u00d4NG C\u1ee4"

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 22
    :cond_3
    iget-object p0, p0, Lcom/doctruyen/reader/web/WebBrowseActivity;->btnActionRead:Landroid/widget/Button;

    const-string p1, "\ud83d\udd32 TO\u00c0N M\u00c0N H\u00ccNH"

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 25
    :cond_4
    :goto_0
    goto :goto_1

    .line 26
    :cond_5
    iget-object p1, p0, Lcom/doctruyen/reader/web/WebBrowseActivity;->btnActionRead:Landroid/widget/Button;

    if-eqz p1, :cond_6

    .line 27
    iget-object p0, p0, Lcom/doctruyen/reader/web/WebBrowseActivity;->btnActionRead:Landroid/widget/Button;

    const-string p1, "\u26a1 CHUY\u1ec2N SANG CH\u1ebe \u0110\u1ed8 \u0110\u1eccC & CH\u1ea0Y TTS"

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 30
    :cond_6
    :goto_1
    return-void

    .line 11
    :cond_7
    :goto_2
    return-void
.end method
