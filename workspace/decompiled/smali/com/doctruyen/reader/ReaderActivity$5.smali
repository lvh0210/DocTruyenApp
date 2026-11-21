.class Lcom/doctruyen/reader/ReaderActivity$5;
.super Landroid/webkit/WebViewClient;
.source "ReaderActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/doctruyen/reader/ReaderActivity;->loadWebChapterViaHeadless(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private extracted:Z

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

    .line 880
    iput-object p1, p0, Lcom/doctruyen/reader/ReaderActivity$5;->this$0:Lcom/doctruyen/reader/ReaderActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 881
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/doctruyen/reader/ReaderActivity$5;->extracted:Z

    return-void
.end method


# virtual methods
.method synthetic lambda$onPageFinished$0$com-doctruyen-reader-ReaderActivity$5(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .line 889
    const-string v1, ""

    iget-boolean v0, p0, Lcom/doctruyen/reader/ReaderActivity$5;->extracted:Z

    if-eqz v0, :cond_0

    return-void

    .line 890
    :cond_0
    if-eqz p2, :cond_a

    const-string v0, "null"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_5

    .line 895
    :cond_1
    nop

    .line 896
    :try_start_0
    const-string v0, "\""

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v0, :cond_3

    .line 898
    :try_start_1
    new-instance v0, Lorg/json/JSONTokener;

    invoke-direct {v0, p2}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v0

    .line 899
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 900
    check-cast v0, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object p2, v0

    .line 902
    :cond_2
    :goto_0
    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    .line 904
    :cond_3
    :goto_1
    :try_start_2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 905
    const-string p2, "isChapter"

    const/4 v2, 0x0

    invoke-virtual {v0, p2, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p2

    .line 906
    if-eqz p2, :cond_9

    .line 907
    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/doctruyen/reader/ReaderActivity$5;->extracted:Z

    .line 908
    const-string p2, "title"

    const-string v2, "Ch\u01b0\u01a1ng Truy\u1ec7n"

    invoke-virtual {v0, p2, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/doctruyen/reader/web/WebDirectScraper;->unescapeHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 909
    const-string p2, "html"

    invoke-virtual {v0, p2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 910
    const-string v2, "nextUrl"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 911
    const-string v3, "prevUrl"

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 913
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 914
    :cond_4
    invoke-static {p1}, Lcom/doctruyen/reader/web/WebDirectScraper;->guessNextChapterUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 916
    :cond_5
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 917
    :cond_6
    invoke-static {p1}, Lcom/doctruyen/reader/web/WebDirectScraper;->guessPrevChapterUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 920
    :cond_7
    iget-object v1, p0, Lcom/doctruyen/reader/ReaderActivity$5;->this$0:Lcom/doctruyen/reader/ReaderActivity;

    invoke-static {v1, v2}, Lcom/doctruyen/reader/ReaderActivity;->access$2102(Lcom/doctruyen/reader/ReaderActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 921
    iget-object v1, p0, Lcom/doctruyen/reader/ReaderActivity$5;->this$0:Lcom/doctruyen/reader/ReaderActivity;

    invoke-static {v1, v0}, Lcom/doctruyen/reader/ReaderActivity;->access$2202(Lcom/doctruyen/reader/ReaderActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 922
    iget-object v0, p0, Lcom/doctruyen/reader/ReaderActivity$5;->this$0:Lcom/doctruyen/reader/ReaderActivity;

    invoke-static {v0, v6}, Lcom/doctruyen/reader/ReaderActivity;->access$2302(Lcom/doctruyen/reader/ReaderActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 923
    iget-object v0, p0, Lcom/doctruyen/reader/ReaderActivity$5;->this$0:Lcom/doctruyen/reader/ReaderActivity;

    invoke-static {v0, p1}, Lcom/doctruyen/reader/ReaderActivity;->access$2402(Lcom/doctruyen/reader/ReaderActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 924
    iget-object v0, p0, Lcom/doctruyen/reader/ReaderActivity$5;->this$0:Lcom/doctruyen/reader/ReaderActivity;

    invoke-static {v0}, Lcom/doctruyen/reader/ReaderActivity;->access$2000(Lcom/doctruyen/reader/ReaderActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 925
    iget-object v0, p0, Lcom/doctruyen/reader/ReaderActivity$5;->this$0:Lcom/doctruyen/reader/ReaderActivity;

    invoke-static {v0, v6, p2}, Lcom/doctruyen/reader/ReaderActivity;->access$1900(Lcom/doctruyen/reader/ReaderActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 926
    iget-object p2, p0, Lcom/doctruyen/reader/ReaderActivity$5;->this$0:Lcom/doctruyen/reader/ReaderActivity;

    invoke-static {p2}, Lcom/doctruyen/reader/ReaderActivity;->access$2500(Lcom/doctruyen/reader/ReaderActivity;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_8

    iget-object p2, p0, Lcom/doctruyen/reader/ReaderActivity$5;->this$0:Lcom/doctruyen/reader/ReaderActivity;

    invoke-static {p2}, Lcom/doctruyen/reader/ReaderActivity;->access$2500(Lcom/doctruyen/reader/ReaderActivity;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_8

    iget-object p2, p0, Lcom/doctruyen/reader/ReaderActivity$5;->this$0:Lcom/doctruyen/reader/ReaderActivity;

    invoke-static {p2}, Lcom/doctruyen/reader/ReaderActivity;->access$2500(Lcom/doctruyen/reader/ReaderActivity;)Ljava/lang/String;

    move-result-object p2

    move-object v4, p2

    goto :goto_2

    :cond_8
    move-object v4, v6

    .line 927
    :goto_2
    iget-object p2, p0, Lcom/doctruyen/reader/ReaderActivity$5;->this$0:Lcom/doctruyen/reader/ReaderActivity;

    invoke-static {p2}, Lcom/doctruyen/data/AppDatabase;->getInstance(Landroid/content/Context;)Lcom/doctruyen/data/AppDatabase;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v8, 0x1

    move-object v7, p1

    move-object v3, p1

    invoke-virtual/range {v2 .. v8}, Lcom/doctruyen/data/AppDatabase;->saveProgress(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)V

    .line 928
    goto :goto_3

    .line 929
    :cond_9
    iget-object p1, p0, Lcom/doctruyen/reader/ReaderActivity$5;->this$0:Lcom/doctruyen/reader/ReaderActivity;

    invoke-static {p1}, Lcom/doctruyen/reader/ReaderActivity;->access$2000(Lcom/doctruyen/reader/ReaderActivity;)Landroid/widget/TextView;

    move-result-object p1

    const-string p2, "L\u1ed7i: Kh\u00f4ng t\u00ecm th\u1ea5y n\u1ed9i dung ch\u01b0\u01a1ng"

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 933
    :goto_3
    goto :goto_4

    .line 931
    :catch_1
    move-exception v0

    move-object p1, v0

    .line 932
    iget-object p2, p0, Lcom/doctruyen/reader/ReaderActivity$5;->this$0:Lcom/doctruyen/reader/ReaderActivity;

    invoke-static {p2}, Lcom/doctruyen/reader/ReaderActivity;->access$2000(Lcom/doctruyen/reader/ReaderActivity;)Landroid/widget/TextView;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "L\u1ed7i ph\u00e2n t\u00edch n\u1ed9i dung: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 934
    :goto_4
    return-void

    .line 891
    :cond_a
    :goto_5
    iget-object p1, p0, Lcom/doctruyen/reader/ReaderActivity$5;->this$0:Lcom/doctruyen/reader/ReaderActivity;

    invoke-static {p1}, Lcom/doctruyen/reader/ReaderActivity;->access$2000(Lcom/doctruyen/reader/ReaderActivity;)Landroid/widget/TextView;

    move-result-object p1

    const-string p2, "Kh\u00f4ng tr\u00edch xu\u1ea5t \u0111\u01b0\u1ee3c n\u1ed9i dung ch\u01b0\u01a1ng"

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 892
    return-void
.end method

.method synthetic lambda$onPageFinished$1$com-doctruyen-reader-ReaderActivity$5(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    .line 887
    iget-boolean v0, p0, Lcom/doctruyen/reader/ReaderActivity$5;->extracted:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/doctruyen/reader/ReaderActivity$5;->this$0:Lcom/doctruyen/reader/ReaderActivity;

    invoke-virtual {v0}, Lcom/doctruyen/reader/ReaderActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/doctruyen/reader/ReaderActivity$5;->this$0:Lcom/doctruyen/reader/ReaderActivity;

    invoke-virtual {v0}, Lcom/doctruyen/reader/ReaderActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 888
    :cond_0
    new-instance v0, Lcom/doctruyen/reader/ReaderActivity$5$1;

    invoke-direct {v0, p0, p2}, Lcom/doctruyen/reader/ReaderActivity$5$1;-><init>(Lcom/doctruyen/reader/ReaderActivity$5;Ljava/lang/String;)V

    const-string p2, "(function() {  var url = window.location.href;  var title = \'\';  var h1 = document.querySelector(\'h1, .chapter-title, .title-chap, #chapter-title, .truyen-title\');  if (h1) title = h1.innerText.trim();  if (!title) title = document.title;  var selectors = [    \'#chapter-c\', \'.chapter-c\', \'#js-truyen-content\', \'.reading-content\', \'.chapter-content\',     \'#chapter-content\', \'.entry-content\', \'.content-chap\', \'#content-chap\', \'#chap-content\',     \'.post-content\', \'.content\', \'#content\', \'#vung-doc\', \'.vung-doc\', \'.box-doc\', \'#box-doc\',     \'#article\', \'.txt-content\', \'.detail-content\', \'#truyen-content\', \'article\'  ];  var contentEl = null;  for (var i = 0; i < selectors.length; i++) {    var el = document.querySelector(selectors[i]);    if (el && el.innerText && el.innerText.trim().length > 100) {      contentEl = el; break;    }  }  if (!contentEl) {    var allDivs = document.querySelectorAll(\'div, section, article\');    var maxLen = 0;    allDivs.forEach(function(d) {      var tLen = (d.innerText || \'\').trim().length;      if (tLen > maxLen && d.querySelectorAll(\'div, section, article\').length < 15) {        maxLen = tLen; contentEl = d;      }    });  }  var nextA = document.querySelector(\'a#next_chap:not(.disabled), a.btn-next:not(.disabled), a[rel=\"next\"], a.next:not(.disabled), a.btn-chapter-nav:not(.disabled), a.chapter-next, a#next-chapter, a.next-chap, a.nav-next\');  if (!nextA || (nextA.href && (nextA.href.indexOf(\'javascript:\') !== -1 || nextA.href === url || nextA.href.endsWith(\'#\')))) {    nextA = null;    var links = document.querySelectorAll(\'a\');    for (var i = 0; i < links.length; i++) {      var a = links[i];      var t = (a.innerText || a.getAttribute(\'title\') || a.getAttribute(\'aria-label\') || \'\').toLowerCase().trim();      var cls = (a.className || \'\').toLowerCase();      if (cls.indexOf(\'disabled\') !== -1) continue;      if (t.indexOf(\'ti\u1ebfp\') !== -1 || t.indexOf(\'tiep\') !== -1 ||          t.indexOf(\'sau\') !== -1 || t.indexOf(\'next\') !== -1 ||          t === \'\u00bb\' || t === \'\u203a\' || t === \'>\' ||          (a.href && (a.href.indexOf(\'next-chap\') !== -1 || a.href.indexOf(\'chuong-sau\') !== -1))) {        if (a.href && a.href.indexOf(\'javascript:\') === -1 && a.href !== url && !a.href.endsWith(\'#\')) {          nextA = a; break;        }      }    }  }  var prevA = document.querySelector(\'a#prev_chap:not(.disabled), a.btn-prev:not(.disabled), a[rel=\"prev\"], a.prev:not(.disabled), a.btn-chapter-nav:not(.disabled), a.chapter-prev, a#prev-chapter, a.prev-chap, a.nav-prev\');  if (!prevA || (prevA.href && (prevA.href.indexOf(\'javascript:\') !== -1 || prevA.href === url || prevA.href.endsWith(\'#\')))) {    prevA = null;    var links = document.querySelectorAll(\'a\');    for (var i = 0; i < links.length; i++) {      var a = links[i];      var t = (a.innerText || a.getAttribute(\'title\') || a.getAttribute(\'aria-label\') || \'\').toLowerCase().trim();      var cls = (a.className || \'\').toLowerCase();      if (cls.indexOf(\'disabled\') !== -1) continue;      if (t.indexOf(\'tr\u01b0\u1edbc\') !== -1 || t.indexOf(\'truoc\') !== -1 ||          t.indexOf(\'prev\') !== -1 ||          t === \'\u00ab\' || t === \'\u2039\' || t === \'<\' ||          (a.href && (a.href.indexOf(\'prev-chap\') !== -1 || a.href.indexOf(\'chuong-truoc\') !== -1))) {        if (a.href && a.href.indexOf(\'javascript:\') === -1 && a.href !== url && !a.href.endsWith(\'#\')) {          prevA = a; break;        }      }    }  }  var textLength = (contentEl && contentEl.innerText) ? contentEl.innerText.trim().length : 0;  if (textLength > 60) {    var clone = contentEl.cloneNode(true);    var buttons = clone.querySelectorAll(\'.chapter_control, .chapter-title, .chapter-nav, .current-book, button, a.btn, script, style, .ads, .quang-cao\');    buttons.forEach(function(b) { b.remove(); });    return JSON.stringify({      isChapter: true,      title: title,      html: clone.innerHTML,      nextUrl: nextA ? nextA.href : \'\',      prevUrl: prevA ? prevA.href : \'\',      url: url    });  } else {    return JSON.stringify({      isChapter: false,      title: title,      url: url    });  }})();"

    invoke-virtual {p1, p2, v0}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 935
    return-void

    .line 887
    :cond_1
    :goto_0
    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    .line 885
    iget-boolean v0, p0, Lcom/doctruyen/reader/ReaderActivity$5;->extracted:Z

    if-eqz v0, :cond_0

    return-void

    .line 886
    :cond_0
    iget-object v0, p0, Lcom/doctruyen/reader/ReaderActivity$5;->this$0:Lcom/doctruyen/reader/ReaderActivity;

    invoke-static {v0}, Lcom/doctruyen/reader/ReaderActivity;->access$200(Lcom/doctruyen/reader/ReaderActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/doctruyen/reader/ReaderActivity$5$0;

    invoke-direct {v1, p0, p1, p2}, Lcom/doctruyen/reader/ReaderActivity$5$0;-><init>(Lcom/doctruyen/reader/ReaderActivity$5;Landroid/webkit/WebView;Ljava/lang/String;)V

    const-wide/16 p1, 0x1f4

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 936
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 940
    iget-boolean p1, p0, Lcom/doctruyen/reader/ReaderActivity$5;->extracted:Z

    if-nez p1, :cond_0

    .line 941
    iget-object p1, p0, Lcom/doctruyen/reader/ReaderActivity$5;->this$0:Lcom/doctruyen/reader/ReaderActivity;

    invoke-static {p1}, Lcom/doctruyen/reader/ReaderActivity;->access$2000(Lcom/doctruyen/reader/ReaderActivity;)Landroid/widget/TextView;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "L\u1ed7i t\u1ea3i trang web: "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 942
    iget-object p1, p0, Lcom/doctruyen/reader/ReaderActivity$5;->this$0:Lcom/doctruyen/reader/ReaderActivity;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x1

    invoke-static {p1, p2, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 944
    :cond_0
    return-void
.end method
