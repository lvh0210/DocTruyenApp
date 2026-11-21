.class public Lcom/doctruyen/reader/ReaderActivity;
.super Landroid/app/Activity;
.source "ReaderActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/doctruyen/reader/ReaderActivity$AndroidBridge;
    }
.end annotation


# static fields
.field private static final DOM_EXTRACTION_SCRIPT:Ljava/lang/String; = "(function() {  var url = window.location.href;  var title = \'\';  var h1 = document.querySelector(\'h1, .chapter-title, .title-chap, #chapter-title, .truyen-title\');  if (h1) title = h1.innerText.trim();  if (!title) title = document.title;  var selectors = [    \'#chapter-c\', \'.chapter-c\', \'#js-truyen-content\', \'.reading-content\', \'.chapter-content\',     \'#chapter-content\', \'.entry-content\', \'.content-chap\', \'#content-chap\', \'#chap-content\',     \'.post-content\', \'.content\', \'#content\', \'#vung-doc\', \'.vung-doc\', \'.box-doc\', \'#box-doc\',     \'#article\', \'.txt-content\', \'.detail-content\', \'#truyen-content\', \'article\'  ];  var contentEl = null;  for (var i = 0; i < selectors.length; i++) {    var el = document.querySelector(selectors[i]);    if (el && el.innerText && el.innerText.trim().length > 100) {      contentEl = el; break;    }  }  if (!contentEl) {    var allDivs = document.querySelectorAll(\'div, section, article\');    var maxLen = 0;    allDivs.forEach(function(d) {      var tLen = (d.innerText || \'\').trim().length;      if (tLen > maxLen && d.querySelectorAll(\'div, section, article\').length < 15) {        maxLen = tLen; contentEl = d;      }    });  }  var nextA = document.querySelector(\'a#next_chap:not(.disabled), a.btn-next:not(.disabled), a[rel=\"next\"], a.next:not(.disabled), a.btn-chapter-nav:not(.disabled), a.chapter-next, a#next-chapter, a.next-chap, a.nav-next\');  if (!nextA || (nextA.href && (nextA.href.indexOf(\'javascript:\') !== -1 || nextA.href === url || nextA.href.endsWith(\'#\')))) {    nextA = null;    var links = document.querySelectorAll(\'a\');    for (var i = 0; i < links.length; i++) {      var a = links[i];      var t = (a.innerText || a.getAttribute(\'title\') || a.getAttribute(\'aria-label\') || \'\').toLowerCase().trim();      var cls = (a.className || \'\').toLowerCase();      if (cls.indexOf(\'disabled\') !== -1) continue;      if (t.indexOf(\'ti\u1ebfp\') !== -1 || t.indexOf(\'tiep\') !== -1 ||          t.indexOf(\'sau\') !== -1 || t.indexOf(\'next\') !== -1 ||          t === \'\u00bb\' || t === \'\u203a\' || t === \'>\' ||          (a.href && (a.href.indexOf(\'next-chap\') !== -1 || a.href.indexOf(\'chuong-sau\') !== -1))) {        if (a.href && a.href.indexOf(\'javascript:\') === -1 && a.href !== url && !a.href.endsWith(\'#\')) {          nextA = a; break;        }      }    }  }  var prevA = document.querySelector(\'a#prev_chap:not(.disabled), a.btn-prev:not(.disabled), a[rel=\"prev\"], a.prev:not(.disabled), a.btn-chapter-nav:not(.disabled), a.chapter-prev, a#prev-chapter, a.prev-chap, a.nav-prev\');  if (!prevA || (prevA.href && (prevA.href.indexOf(\'javascript:\') !== -1 || prevA.href === url || prevA.href.endsWith(\'#\')))) {    prevA = null;    var links = document.querySelectorAll(\'a\');    for (var i = 0; i < links.length; i++) {      var a = links[i];      var t = (a.innerText || a.getAttribute(\'title\') || a.getAttribute(\'aria-label\') || \'\').toLowerCase().trim();      var cls = (a.className || \'\').toLowerCase();      if (cls.indexOf(\'disabled\') !== -1) continue;      if (t.indexOf(\'tr\u01b0\u1edbc\') !== -1 || t.indexOf(\'truoc\') !== -1 ||          t.indexOf(\'prev\') !== -1 ||          t === \'\u00ab\' || t === \'\u2039\' || t === \'<\' ||          (a.href && (a.href.indexOf(\'prev-chap\') !== -1 || a.href.indexOf(\'chuong-truoc\') !== -1))) {        if (a.href && a.href.indexOf(\'javascript:\') === -1 && a.href !== url && !a.href.endsWith(\'#\')) {          prevA = a; break;        }      }    }  }  var textLength = (contentEl && contentEl.innerText) ? contentEl.innerText.trim().length : 0;  if (textLength > 60) {    var clone = contentEl.cloneNode(true);    var buttons = clone.querySelectorAll(\'.chapter_control, .chapter-title, .chapter-nav, .current-book, button, a.btn, script, style, .ads, .quang-cao\');    buttons.forEach(function(b) { b.remove(); });    return JSON.stringify({      isChapter: true,      title: title,      html: clone.innerHTML,      nextUrl: nextA ? nextA.href : \'\',      prevUrl: prevA ? prevA.href : \'\',      url: url    });  } else {    return JSON.stringify({      isChapter: false,      title: title,      url: url    });  }})();"

.field public static final EXTRA_BOOK_PATH:Ljava/lang/String; = "extra_book_path"

.field public static final EXTRA_BOOK_TITLE:Ljava/lang/String; = "extra_book_title"

.field public static final EXTRA_IS_WEB:Ljava/lang/String; = "extra_is_web"

.field public static final EXTRA_START_INDEX:Ljava/lang/String; = "extra_start_index"

.field public static final EXTRA_START_PARAGRAPH:Ljava/lang/String; = "extra_start_paragraph"

.field public static final EXTRA_START_SCROLL_Y:Ljava/lang/String; = "extra_start_scroll_y"

.field private static final KEY_THEME:Ljava/lang/String; = "key_reader_theme"

.field private static final PREF_READER:Ljava/lang/String; = "reader_prefs"


# instance fields
.field private autoPlayPendingTts:Z

.field private bookPath:Ljava/lang/String;

.field private bookTitle:Ljava/lang/String;

.field private btnNext:Landroid/widget/Button;

.field private btnPlayerClose:Landroid/widget/Button;

.field private btnPlayerNextChap:Landroid/widget/Button;

.field private btnPlayerNextPara:Landroid/widget/Button;

.field private btnPlayerPlayPause:Landroid/widget/Button;

.field private btnPlayerPrevChap:Landroid/widget/Button;

.field private btnPlayerPrevPara:Landroid/widget/Button;

.field private btnPlayerSpeed:Landroid/widget/Button;

.field private btnPlayerTimer:Landroid/widget/Button;

.field private btnPrev:Landroid/widget/Button;

.field private btnStandardTts:Landroid/widget/Button;

.field private btnTheme:Landroid/widget/Button;

.field private btnToc:Landroid/widget/Button;

.field private btnTtsSettings:Landroid/widget/Button;

.field private chapters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/doctruyen/reader/epub/Chapter;",
            ">;"
        }
    .end annotation
.end field

.field private currentActiveChapterTitle:Ljava/lang/String;

.field private currentChapterIndex:I

.field private currentFontSize:I

.field private currentParagraphIndex:I

.field private currentParagraphs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private currentScrollY:I

.field private currentTheme:Ljava/lang/String;

.field private currentWebUrl:Ljava/lang/String;

.field private epubBook:Lcom/doctruyen/reader/epub/BookMeta;

.field private headlessScraperWebView:Landroid/webkit/WebView;

.field private isBound:Z

.field private isControlsVisible:Z

.field private isReaderHtmlLoaded:Z

.field private isTxt:Z

.field private isUserSeeking:Z

.field private isWeb:Z

.field private lastChapterSwitchTime:J

.field private lastSaveTime:J

.field private lastToggleTime:J

.field private final mainHandler:Landroid/os/Handler;

.field private nextWebUrl:Ljava/lang/String;

.field private pendingChapterHtml:Ljava/lang/String;

.field private pendingChapterTitle:Ljava/lang/String;

.field private prevWebUrl:Ljava/lang/String;

.field private sbPlayerProgress:Landroid/widget/SeekBar;

.field private final serviceConn:Landroid/content/ServiceConnection;

.field private standardControlBar:Landroid/view/View;

.field private targetStartParagraph:I

.field private targetStartScrollY:I

.field private ttsPlayerPanel:Landroid/view/View;

.field private ttsService:Lcom/doctruyen/tts/TtsPlaybackService;

.field private tvPlayerInfo:Landroid/widget/TextView;

.field private tvPlayerProgress:Landroid/widget/TextView;

.field private tvStatus:Landroid/widget/TextView;

.field private webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 41
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput v0, p0, Lcom/doctruyen/reader/ReaderActivity;->targetStartParagraph:I

    .line 51
    iput v0, p0, Lcom/doctruyen/reader/ReaderActivity;->targetStartScrollY:I

    .line 52
    iput v0, p0, Lcom/doctruyen/reader/ReaderActivity;->currentParagraphIndex:I

    .line 53
    iput v0, p0, Lcom/doctruyen/reader/ReaderActivity;->currentScrollY:I

    .line 54
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/doctruyen/reader/ReaderActivity;->lastSaveTime:J

    .line 55
    iput-wide v1, p0, Lcom/doctruyen/reader/ReaderActivity;->lastChapterSwitchTime:J

    .line 85
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/doctruyen/reader/ReaderActivity;->isControlsVisible:Z

    .line 86
    iput-wide v1, p0, Lcom/doctruyen/reader/ReaderActivity;->lastToggleTime:J

    .line 88
    iput-boolean v0, p0, Lcom/doctruyen/reader/ReaderActivity;->isWeb:Z

    .line 89
    iput-boolean v0, p0, Lcom/doctruyen/reader/ReaderActivity;->isTxt:Z

    .line 92
    iput v0, p0, Lcom/doctruyen/reader/ReaderActivity;->currentChapterIndex:I

    .line 96
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/doctruyen/reader/ReaderActivity;->chapters:Ljava/util/List;

    .line 200
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/doctruyen/reader/ReaderActivity;->currentParagraphs:Ljava/util/List;

    .line 201
    const-string v1, "Ch\u01b0\u01a1ng Truy\u1ec7n"

    iput-object v1, p0, Lcom/doctruyen/reader/ReaderActivity;->currentActiveChapterTitle:Ljava/lang/String;

    .line 202
    iput-boolean v0, p0, Lcom/doctruyen/reader/ReaderActivity;->autoPlayPendingTts:Z

    .line 206
    iput-boolean v0, p0, Lcom/doctruyen/reader/ReaderActivity;->isBound:Z

    .line 207
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/doctruyen/reader/ReaderActivity;->mainHandler:Landroid/os/Handler;

    .line 212
    const-string v1, "light"

    iput-object v1, p0, Lcom/doctruyen/reader/ReaderActivity;->currentTheme:Ljava/lang/String;

    .line 213
    const/16 v1, 0x13

    iput v1, p0, Lcom/doctruyen/reader/ReaderActivity;->currentFontSize:I

    .line 214
    iput-boolean v0, p0, Lcom/doctruyen/reader/ReaderActivity;->isUserSeeking:Z

    .line 216
    iput-boolean v0, p0, Lcom/doctruyen/reader/ReaderActivity;->isReaderHtmlLoaded:Z

    .line 217
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/doctruyen/reader/ReaderActivity;->pendingChapterTitle:Ljava/lang/String;

    .line 218
    iput-object v0, p0, Lcom/doctruyen/reader/ReaderActivity;->pendingChapterHtml:Ljava/lang/String;

    .line 220
    new-instance v0, Lcom/doctruyen/reader/ReaderActivity$1;

    invoke-direct {v0, p0}, Lcom/doctruyen/reader/ReaderActivity$1;-><init>(Lcom/doctruyen/reader/ReaderActivity;)V

    iput-object v0, p0, Lcom/doctruyen/reader/ReaderActivity;->serviceConn:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic access$000(Lcom/doctruyen/reader/ReaderActivity;)Lcom/doctruyen/tts/TtsPlaybackService;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/doctruyen/reader/ReaderActivity;->ttsService:Lcom/doctruyen/tts/TtsPlaybackService;

    return-object p0
.end method

.method static synthetic access$002(Lcom/doctruyen/reader/ReaderActivity;Lcom/doctruyen/tts/TtsPlaybackService;)Lcom/doctruyen/tts/TtsPlaybackService;
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/doctruyen/reader/ReaderActivity;->ttsService:Lcom/doctruyen/tts/TtsPlaybackService;

    return-object p1
.end method

.method static synthetic access$1000(Lcom/doctruyen/reader/ReaderActivity;)Landroid/widget/SeekBar;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/doctruyen/reader/ReaderActivity;->sbPlayerProgress:Landroid/widget/SeekBar;

    return-object p0
.end method

.method static synthetic access$102(Lcom/doctruyen/reader/ReaderActivity;Z)Z
    .locals 0

    .line 41
    iput-boolean p1, p0, Lcom/doctruyen/reader/ReaderActivity;->isBound:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/doctruyen/reader/ReaderActivity;)Z
    .locals 0

    .line 41
    iget-boolean p0, p0, Lcom/doctruyen/reader/ReaderActivity;->isUserSeeking:Z

    return p0
.end method

.method static synthetic access$1102(Lcom/doctruyen/reader/ReaderActivity;Z)Z
    .locals 0

    .line 41
    iput-boolean p1, p0, Lcom/doctruyen/reader/ReaderActivity;->isUserSeeking:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/doctruyen/reader/ReaderActivity;Z)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/doctruyen/reader/ReaderActivity;->updatePlayerUi(Z)V

    return-void
.end method

.method static synthetic access$1302(Lcom/doctruyen/reader/ReaderActivity;Z)Z
    .locals 0

    .line 41
    iput-boolean p1, p0, Lcom/doctruyen/reader/ReaderActivity;->isReaderHtmlLoaded:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/doctruyen/reader/ReaderActivity;)Ljava/lang/String;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/doctruyen/reader/ReaderActivity;->currentTheme:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/doctruyen/reader/ReaderActivity;Ljava/lang/String;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/doctruyen/reader/ReaderActivity;->applyTheme(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/doctruyen/reader/ReaderActivity;)I
    .locals 0

    .line 41
    iget p0, p0, Lcom/doctruyen/reader/ReaderActivity;->currentFontSize:I

    return p0
.end method

.method static synthetic access$1700(Lcom/doctruyen/reader/ReaderActivity;)Ljava/lang/String;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/doctruyen/reader/ReaderActivity;->pendingChapterHtml:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1702(Lcom/doctruyen/reader/ReaderActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/doctruyen/reader/ReaderActivity;->pendingChapterHtml:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/doctruyen/reader/ReaderActivity;)Ljava/lang/String;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/doctruyen/reader/ReaderActivity;->pendingChapterTitle:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1802(Lcom/doctruyen/reader/ReaderActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/doctruyen/reader/ReaderActivity;->pendingChapterTitle:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/doctruyen/reader/ReaderActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/doctruyen/reader/ReaderActivity;->injectChapterToWeb(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/doctruyen/reader/ReaderActivity;)Landroid/os/Handler;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/doctruyen/reader/ReaderActivity;->mainHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/doctruyen/reader/ReaderActivity;)Landroid/widget/TextView;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/doctruyen/reader/ReaderActivity;->tvStatus:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$2102(Lcom/doctruyen/reader/ReaderActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/doctruyen/reader/ReaderActivity;->nextWebUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2202(Lcom/doctruyen/reader/ReaderActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/doctruyen/reader/ReaderActivity;->prevWebUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2300(Lcom/doctruyen/reader/ReaderActivity;)Ljava/lang/String;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/doctruyen/reader/ReaderActivity;->currentActiveChapterTitle:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2302(Lcom/doctruyen/reader/ReaderActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/doctruyen/reader/ReaderActivity;->currentActiveChapterTitle:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2402(Lcom/doctruyen/reader/ReaderActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/doctruyen/reader/ReaderActivity;->currentWebUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2500(Lcom/doctruyen/reader/ReaderActivity;)Ljava/lang/String;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/doctruyen/reader/ReaderActivity;->bookTitle:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2602(Lcom/doctruyen/reader/ReaderActivity;I)I
    .locals 0

    .line 41
    iput p1, p0, Lcom/doctruyen/reader/ReaderActivity;->currentScrollY:I

    return p1
.end method

.method static synthetic access$2700(Lcom/doctruyen/reader/ReaderActivity;)J
    .locals 2

    .line 41
    iget-wide v0, p0, Lcom/doctruyen/reader/ReaderActivity;->lastChapterSwitchTime:J

    return-wide v0
.end method

.method static synthetic access$2702(Lcom/doctruyen/reader/ReaderActivity;J)J
    .locals 0

    .line 41
    iput-wide p1, p0, Lcom/doctruyen/reader/ReaderActivity;->lastChapterSwitchTime:J

    return-wide p1
.end method

.method static synthetic access$2800(Lcom/doctruyen/reader/ReaderActivity;)Ljava/util/List;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/doctruyen/reader/ReaderActivity;->currentParagraphs:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$2900(Lcom/doctruyen/reader/ReaderActivity;)I
    .locals 0

    .line 41
    iget p0, p0, Lcom/doctruyen/reader/ReaderActivity;->targetStartParagraph:I

    return p0
.end method

.method static synthetic access$2902(Lcom/doctruyen/reader/ReaderActivity;I)I
    .locals 0

    .line 41
    iput p1, p0, Lcom/doctruyen/reader/ReaderActivity;->targetStartParagraph:I

    return p1
.end method

.method static synthetic access$3000(Lcom/doctruyen/reader/ReaderActivity;)I
    .locals 0

    .line 41
    iget p0, p0, Lcom/doctruyen/reader/ReaderActivity;->targetStartScrollY:I

    return p0
.end method

.method static synthetic access$3002(Lcom/doctruyen/reader/ReaderActivity;I)I
    .locals 0

    .line 41
    iput p1, p0, Lcom/doctruyen/reader/ReaderActivity;->targetStartScrollY:I

    return p1
.end method

.method static synthetic access$302(Lcom/doctruyen/reader/ReaderActivity;I)I
    .locals 0

    .line 41
    iput p1, p0, Lcom/doctruyen/reader/ReaderActivity;->currentParagraphIndex:I

    return p1
.end method

.method static synthetic access$3100(Lcom/doctruyen/reader/ReaderActivity;)Z
    .locals 0

    .line 41
    iget-boolean p0, p0, Lcom/doctruyen/reader/ReaderActivity;->autoPlayPendingTts:Z

    return p0
.end method

.method static synthetic access$3102(Lcom/doctruyen/reader/ReaderActivity;Z)Z
    .locals 0

    .line 41
    iput-boolean p1, p0, Lcom/doctruyen/reader/ReaderActivity;->autoPlayPendingTts:Z

    return p1
.end method

.method static synthetic access$3200(Lcom/doctruyen/reader/ReaderActivity;)Lcom/doctruyen/reader/epub/BookMeta;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/doctruyen/reader/ReaderActivity;->epubBook:Lcom/doctruyen/reader/epub/BookMeta;

    return-object p0
.end method

.method static synthetic access$3300(Lcom/doctruyen/reader/ReaderActivity;Z)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/doctruyen/reader/ReaderActivity;->switchToPlayerUi(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/doctruyen/reader/ReaderActivity;)J
    .locals 2

    .line 41
    iget-wide v0, p0, Lcom/doctruyen/reader/ReaderActivity;->lastSaveTime:J

    return-wide v0
.end method

.method static synthetic access$500(Lcom/doctruyen/reader/ReaderActivity;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/doctruyen/reader/ReaderActivity;->saveCurrentReadingProgress()V

    return-void
.end method

.method static synthetic access$600(Lcom/doctruyen/reader/ReaderActivity;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/doctruyen/reader/ReaderActivity;->loadPrevChapter()V

    return-void
.end method

.method static synthetic access$700(Lcom/doctruyen/reader/ReaderActivity;Z)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/doctruyen/reader/ReaderActivity;->loadNextChapter(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/doctruyen/reader/ReaderActivity;)Landroid/webkit/WebView;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/doctruyen/reader/ReaderActivity;->webView:Landroid/webkit/WebView;

    return-object p0
.end method

.method static synthetic access$900(Lcom/doctruyen/reader/ReaderActivity;)Landroid/widget/TextView;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/doctruyen/reader/ReaderActivity;->tvPlayerProgress:Landroid/widget/TextView;

    return-object p0
.end method

.method private applyTheme(Ljava/lang/String;)V
    .locals 4

    .line 1196
    iput-object p1, p0, Lcom/doctruyen/reader/ReaderActivity;->currentTheme:Ljava/lang/String;

    .line 1197
    const-string v0, "reader_prefs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/doctruyen/reader/ReaderActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1198
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "key_reader_theme"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1200
    iget-object v0, p0, Lcom/doctruyen/reader/ReaderActivity;->webView:Landroid/webkit/WebView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "javascript:setTheme(\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\')"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 1202
    const-string v0, "dark"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1203
    const-string p1, "#121212"

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/doctruyen/ui/UiTheme;->applySystemBarColors(Landroid/app/Activity;IZ)V

    .line 1204
    iget-object v0, p0, Lcom/doctruyen/reader/ReaderActivity;->tvStatus:Landroid/widget/TextView;

    const-string v1, "#9E9E9E"

    if-eqz v0, :cond_0

    .line 1205
    iget-object v0, p0, Lcom/doctruyen/reader/ReaderActivity;->tvStatus:Landroid/widget/TextView;

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 1206
    iget-object v0, p0, Lcom/doctruyen/reader/ReaderActivity;->tvStatus:Landroid/widget/TextView;

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1208
    :cond_0
    iget-object v0, p0, Lcom/doctruyen/reader/ReaderActivity;->standardControlBar:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/doctruyen/reader/ReaderActivity;->standardControlBar:Landroid/view/View;

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1209
    :cond_1
    iget-object v0, p0, Lcom/doctruyen/reader/ReaderActivity;->ttsPlayerPanel:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/doctruyen/reader/ReaderActivity;->ttsPlayerPanel:Landroid/view/View;

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1211
    :cond_2
    iget-object p1, p0, Lcom/doctruyen/reader/ReaderActivity;->btnPrev:Landroid/widget/Button;

    const-string v0, "#2A2A2A"

    const-string v2, "#E0E0E0"

    invoke-direct {p0, p1, v0, v2}, Lcom/doctruyen/reader/ReaderActivity;->styleButton(Landroid/widget/Button;Ljava/lang/String;Ljava/lang/String;)V

    .line 1212
    iget-object p1, p0, Lcom/doctruyen/reader/ReaderActivity;->btnNext:Landroid/widget/Button;

    invoke-direct {p0, p1, v0, v2}, Lcom/doctruyen/reader/ReaderActivity;->styleButton(Landroid/widget/Button;Ljava/lang/String;Ljava/lang/String;)V

    .line 1213
    iget-object p1, p0, Lcom/doctruyen/reader/ReaderActivity;->btnToc:Landroid/widget/Button;

    invoke-direct {p0, p1, v0, v2}, Lcom/doctruyen/reader/ReaderActivity;->styleButton(Landroid/widget/Button;Ljava/lang/String;Ljava/lang/String;)V

    .line 1214
    iget-object p1, p0, Lcom/doctruyen/reader/ReaderActivity;->btnTheme:Landroid/widget/Button;

    invoke-direct {p0, p1, v0, v2}, Lcom/doctruyen/reader/ReaderActivity;->styleButton(Landroid/widget/Button;Ljava/lang/String;Ljava/lang/String;)V

    .line 1215
    iget-object p1, p0, Lcom/doctruyen/reader/ReaderActivity;->btnTtsSettings:Landroid/widget/Button;

    invoke-direct {p0, p1, v0, v2}, Lcom/doctruyen/reader/ReaderActivity;->styleButton(Landroid/widget/Button;Ljava/lang/String;Ljava/lang/String;)V

    .line 1217
    iget-object p1, p0, Lcom/doctruyen/reader/ReaderActivity;->btnPlayerPrevChap:Landroid/widget/Button;

    invoke-direct {p0, p1, v0, v2}, Lcom/doctruyen/reader/ReaderActivity;->styleButton(Landroid/widget/Button;Ljava/lang/String;Ljava/lang/String;)V

    .line 1218
    iget-object p1, p0, Lcom/doctruyen/reader/ReaderActivity;->btnPlayerPrevPara:Landroid/widget/Button;

    invoke-direct {p0, p1, v0, v2}, Lcom/doctruyen/reader/ReaderActivity;->styleButton(Landroid/widget/Button;Ljava/lang/String;Ljava/lang/String;)V

    .line 1219
    iget-object p1, p0, Lcom/doctruyen/reader/ReaderActivity;->btnPlayerNextPara:Landroid/widget/Button;

    invoke-direct {p0, p1, v0, v2}, Lcom/doctruyen/reader/ReaderActivity;->styleButton(Landroid/widget/Button;Ljava/lang/String;Ljava/lang/String;)V

    .line 1220
    iget-object p1, p0, Lcom/doctruyen/reader/ReaderActivity;->btnPlayerNextChap:Landroid/widget/Button;

    invoke-direct {p0, p1, v0, v2}, Lcom/doctruyen/reader/ReaderActivity;->styleButton(Landroid/widget/Button;Ljava/lang/String;Ljava/lang/String;)V

    .line 1221
    iget-object p1, p0, Lcom/doctruyen/reader/ReaderActivity;->btnPlayerTimer:Landroid/widget/Button;

    invoke-direct {p0, p1, v0, v2}, Lcom/doctruyen/reader/ReaderActivity;->styleButton(Landroid/widget/Button;Ljava/lang/String;Ljava/lang/String;)V

    .line 1222
    iget-object p1, p0, Lcom/doctruyen/reader/ReaderActivity;->btnPlayerSpeed:Landroid/widget/Button;

    invoke-direct {p0, p1, v0, v2}, Lcom/doctruyen/reader/ReaderActivity;->styleButton(Landroid/widget/Button;Ljava/lang/String;Ljava/lang/String;)V

    .line 1224
    iget-object p1, p0, Lcom/doctruyen/reader/ReaderActivity;->tvPlayerInfo:Landroid/widget/TextView;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/doctruyen/reader/ReaderActivity;->tvPlayerInfo:Landroid/widget/TextView;

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1225
    :cond_3
    iget-object p1, p0, Lcom/doctruyen/reader/ReaderActivity;->tvPlayerProgress:Landroid/widget/TextView;

    if-eqz p1, :cond_e

    iget-object p1, p0, Lcom/doctruyen/reader/ReaderActivity;->tvPlayerProgress:Landroid/widget/TextView;

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 1226
    :cond_4
    const-string v0, "sepia"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 1227
    const-string p1, "#FBF0D9"

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-static {p0, v0, v1}, Lcom/doctruyen/ui/UiTheme;->applySystemBarColors(Landroid/app/Activity;IZ)V

    .line 1228
    iget-object v0, p0, Lcom/doctruyen/reader/ReaderActivity;->tvStatus:Landroid/widget/TextView;

    const-string v1, "#5F4B32"

    if-eqz v0, :cond_5

    .line 1229
    iget-object v0, p0, Lcom/doctruyen/reader/ReaderActivity;->tvStatus:Landroid/widget/TextView;

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 1230
    iget-object v0, p0, Lcom/doctruyen/reader/ReaderActivity;->tvStatus:Landroid/widget/TextView;

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1232
    :cond_5
    iget-object v0, p0, Lcom/doctruyen/reader/ReaderActivity;->standardControlBar:Landroid/view/View;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/doctruyen/reader/ReaderActivity;->standardControlBar:Landroid/view/View;

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1233
    :cond_6
    iget-object v0, p0, Lcom/doctruyen/reader/ReaderActivity;->ttsPlayerPanel:Landroid/view/View;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/doctruyen/reader/ReaderActivity;->ttsPlayerPanel:Landroid/view/View;

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1235
    :cond_7
    iget-object p1, p0, Lcom/doctruyen/reader/ReaderActivity;->btnPrev:Landroid/widget/Button;

    const-string v0, "#ECDDBD"

    invoke-direct {p0, p1, v0, v1}, Lcom/doctruyen/reader/ReaderActivity;->styleButton(Landroid/widget/Button;Ljava/lang/String;Ljava/lang/String;)V

    .line 1236
    iget-object p1, p0, Lcom/doctruyen/reader/ReaderActivity;->btnNext:Landroid/widget/Button;

    invoke-direct {p0, p1, v0, v1}, Lcom/doctruyen/reader/ReaderActivity;->styleButton(Landroid/widget/Button;Ljava/lang/String;Ljava/lang/String;)V

    .line 1237
    iget-object p1, p0, Lcom/doctruyen/reader/ReaderActivity;->btnToc:Landroid/widget/Button;

    invoke-direct {p0, p1, v0, v1}, Lcom/doctruyen/reader/ReaderActivity;->styleButton(Landroid/widget/Button;Ljava/lang/String;Ljava/lang/String;)V

    .line 1238
    iget-object p1, p0, Lcom/doctruyen/reader/ReaderActivity;->btnTheme:Landroid/widget/Button;

    invoke-direct {p0, p1, v0, v1}, Lcom/doctruyen/reader/ReaderActivity;->styleButton(Landroid/widget/Button;Ljava/lang/String;Ljava/lang/String;)V

    .line 1239
    iget-object p1, p0, Lcom/doctruyen/reader/ReaderActivity;->btnTtsSettings:Landroid/widget/Button;

    invoke-direct {p0, p1, v0, v1}, Lcom/doctruyen/reader/ReaderActivity;->styleButton(Landroid/widget/Button;Ljava/lang/String;Ljava/lang/String;)V

    .line 1241
    iget-object p1, p0, Lcom/doctruyen/reader/ReaderActivity;->btnPlayerPrevChap:Landroid/widget/Button;

    invoke-direct {p0, p1, v0, v1}, Lcom/doctruyen/reader/ReaderActivity;->styleButton(Landroid/widget/Button;Ljava/lang/String;Ljava/lang/String;)V

    .line 1242
    iget-object p1, p0, Lcom/doctruyen/reader/ReaderActivity;->btnPlayerPrevPara:Landroid/widget/Button;

    invoke-direct {p0, p1, v0, v1}, Lcom/doctruyen/reader/ReaderActivity;->styleButton(Landroid/widget/Button;Ljava/lang/String;Ljava/lang/String;)V

    .line 1243
    iget-object p1, p0, Lcom/doctruyen/reader/ReaderActivity;->btnPlayerNextPara:Landroid/widget/Button;

    invoke-direct {p0, p1, v0, v1}, Lcom/doctruyen/reader/ReaderActivity;->styleButton(Landroid/widget/Button;Ljava/lang/String;Ljava/lang/String;)V

    .line 1244
    iget-object p1, p0, Lcom/doctruyen/reader/ReaderActivity;->btnPlayerNextChap:Landroid/widget/Button;

    invoke-direct {p0, p1, v0, v1}, Lcom/doctruyen/reader/ReaderActivity;->styleButton(Landroid/widget/Button;Ljava/lang/String;Ljava/lang/String;)V

    .line 1245
    iget-object p1, p0, Lcom/doctruyen/reader/ReaderActivity;->btnPlayerTimer:Landroid/widget/Button;

    invoke-direct {p0, p1, v0, v1}, Lcom/doctruyen/reader/ReaderActivity;->styleButton(Landroid/widget/Button;Ljava/lang/String;Ljava/lang/String;)V

    .line 1246
    iget-object p1, p0, Lcom/doctruyen/reader/ReaderActivity;->btnPlayerSpeed:Landroid/widget/Button;

    invoke-direct {p0, p1, v0, v1}, Lcom/doctruyen/reader/ReaderActivity;->styleButton(Landroid/widget/Button;Ljava/lang/String;Ljava/lang/String;)V

    .line 1248
    iget-object p1, p0, Lcom/doctruyen/reader/ReaderActivity;->tvPlayerInfo:Landroid/widget/TextView;

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/doctruyen/reader/ReaderActivity;->tvPlayerInfo:Landroid/widget/TextView;

    const-string v0, "#3E2723"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1249
    :cond_8
    iget-object p1, p0, Lcom/doctruyen/reader/ReaderActivity;->tvPlayerProgress:Landroid/widget/TextView;

    if-eqz p1, :cond_e

    iget-object p1, p0, Lcom/doctruyen/reader/ReaderActivity;->tvPlayerProgress:Landroid/widget/TextView;

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 1252
    :cond_9
    const-string p1, "#F8F9FA"

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-static {p0, v0, v1}, Lcom/doctruyen/ui/UiTheme;->applySystemBarColors(Landroid/app/Activity;IZ)V

    .line 1253
    iget-object v0, p0, Lcom/doctruyen/reader/ReaderActivity;->tvStatus:Landroid/widget/TextView;

    if-eqz v0, :cond_a

    .line 1254
    iget-object v0, p0, Lcom/doctruyen/reader/ReaderActivity;->tvStatus:Landroid/widget/TextView;

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 1255
    iget-object v0, p0, Lcom/doctruyen/reader/ReaderActivity;->tvStatus:Landroid/widget/TextView;

    const-string v1, "#495057"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1257
    :cond_a
    iget-object v0, p0, Lcom/doctruyen/reader/ReaderActivity;->standardControlBar:Landroid/view/View;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/doctruyen/reader/ReaderActivity;->standardControlBar:Landroid/view/View;

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1258
    :cond_b
    iget-object v0, p0, Lcom/doctruyen/reader/ReaderActivity;->ttsPlayerPanel:Landroid/view/View;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/doctruyen/reader/ReaderActivity;->ttsPlayerPanel:Landroid/view/View;

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1260
    :cond_c
    iget-object p1, p0, Lcom/doctruyen/reader/ReaderActivity;->btnPrev:Landroid/widget/Button;

    const-string v0, "#E9ECEF"

    const-string v1, "#212529"

    invoke-direct {p0, p1, v0, v1}, Lcom/doctruyen/reader/ReaderActivity;->styleButton(Landroid/widget/Button;Ljava/lang/String;Ljava/lang/String;)V

    .line 1261
    iget-object p1, p0, Lcom/doctruyen/reader/ReaderActivity;->btnNext:Landroid/widget/Button;

    invoke-direct {p0, p1, v0, v1}, Lcom/doctruyen/reader/ReaderActivity;->styleButton(Landroid/widget/Button;Ljava/lang/String;Ljava/lang/String;)V

    .line 1262
    iget-object p1, p0, Lcom/doctruyen/reader/ReaderActivity;->btnToc:Landroid/widget/Button;

    invoke-direct {p0, p1, v0, v1}, Lcom/doctruyen/reader/ReaderActivity;->styleButton(Landroid/widget/Button;Ljava/lang/String;Ljava/lang/String;)V

    .line 1263
    iget-object p1, p0, Lcom/doctruyen/reader/ReaderActivity;->btnTheme:Landroid/widget/Button;

    invoke-direct {p0, p1, v0, v1}, Lcom/doctruyen/reader/ReaderActivity;->styleButton(Landroid/widget/Button;Ljava/lang/String;Ljava/lang/String;)V

    .line 1264
    iget-object p1, p0, Lcom/doctruyen/reader/ReaderActivity;->btnTtsSettings:Landroid/widget/Button;

    invoke-direct {p0, p1, v0, v1}, Lcom/doctruyen/reader/ReaderActivity;->styleButton(Landroid/widget/Button;Ljava/lang/String;Ljava/lang/String;)V

    .line 1266
    iget-object p1, p0, Lcom/doctruyen/reader/ReaderActivity;->btnPlayerPrevChap:Landroid/widget/Button;

    invoke-direct {p0, p1, v0, v1}, Lcom/doctruyen/reader/ReaderActivity;->styleButton(Landroid/widget/Button;Ljava/lang/String;Ljava/lang/String;)V

    .line 1267
    iget-object p1, p0, Lcom/doctruyen/reader/ReaderActivity;->btnPlayerPrevPara:Landroid/widget/Button;

    invoke-direct {p0, p1, v0, v1}, Lcom/doctruyen/reader/ReaderActivity;->styleButton(Landroid/widget/Button;Ljava/lang/String;Ljava/lang/String;)V

    .line 1268
    iget-object p1, p0, Lcom/doctruyen/reader/ReaderActivity;->btnPlayerNextPara:Landroid/widget/Button;

    invoke-direct {p0, p1, v0, v1}, Lcom/doctruyen/reader/ReaderActivity;->styleButton(Landroid/widget/Button;Ljava/lang/String;Ljava/lang/String;)V

    .line 1269
    iget-object p1, p0, Lcom/doctruyen/reader/ReaderActivity;->btnPlayerNextChap:Landroid/widget/Button;

    invoke-direct {p0, p1, v0, v1}, Lcom/doctruyen/reader/ReaderActivity;->styleButton(Landroid/widget/Button;Ljava/lang/String;Ljava/lang/String;)V

    .line 1270
    iget-object p1, p0, Lcom/doctruyen/reader/ReaderActivity;->btnPlayerTimer:Landroid/widget/Button;

    invoke-direct {p0, p1, v0, v1}, Lcom/doctruyen/reader/ReaderActivity;->styleButton(Landroid/widget/Button;Ljava/lang/String;Ljava/lang/String;)V

    .line 1271
    iget-object p1, p0, Lcom/doctruyen/reader/ReaderActivity;->btnPlayerSpeed:Landroid/widget/Button;

    invoke-direct {p0, p1, v0, v1}, Lcom/doctruyen/reader/ReaderActivity;->styleButton(Landroid/widget/Button;Ljava/lang/String;Ljava/lang/String;)V

    .line 1273
    iget-object p1, p0, Lcom/doctruyen/reader/ReaderActivity;->tvPlayerInfo:Landroid/widget/TextView;

    if-eqz p1, :cond_d

    iget-object p1, p0, Lcom/doctruyen/reader/ReaderActivity;->tvPlayerInfo:Landroid/widget/TextView;

    const/high16 v0, -0x1000000

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1274
    :cond_d
    iget-object p1, p0, Lcom/doctruyen/reader/ReaderActivity;->tvPlayerProgress:Landroid/widget/TextView;

    if-eqz p1, :cond_e

    iget-object p1, p0, Lcom/doctruyen/reader/ReaderActivity;->tvPlayerProgress:Landroid/widget/TextView;

    const-string v0, "#6C757D"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1276
    :cond_e
    :goto_0
    return-void
.end method

.method private changeFontSize(I)V
    .locals 2

    .line 1287
    iget v0, p0, Lcom/doctruyen/reader/ReaderActivity;->currentFontSize:I

    add-int/2addr v0, p1

    const/16 p1, 0x24

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/16 v0, 0xc

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/doctruyen/reader/ReaderActivity;->currentFontSize:I

    .line 1288
    iget-object p1, p0, Lcom/doctruyen/reader/ReaderActivity;->webView:Landroid/webkit/WebView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "javascript:setFontSize("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/doctruyen/reader/ReaderActivity;->currentFontSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 1289
    return-void
.end method

.method private closeTtsPlayer()V
    .locals 1

    .line 704
    iget-object v0, p0, Lcom/doctruyen/reader/ReaderActivity;->ttsService:Lcom/doctruyen/tts/TtsPlaybackService;

    if-eqz v0, :cond_0

    .line 705
    iget-object v0, p0, Lcom/doctruyen/reader/ReaderActivity;->ttsService:Lcom/doctruyen/tts/TtsPlaybackService;

    invoke-virtual {v0}, Lcom/doctruyen/tts/TtsPlaybackService;->pause()V

    .line 707
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/doctruyen/reader/ReaderActivity;->switchToPlayerUi(Z)V

    .line 708
    return-void
.end method

.method private createStandardControlBar()Landroid/view/View;
    .locals 9

    .line 404
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 405
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 406
    const-string v1, "#F8F9FA"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 407
    const/16 v1, 0x10

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2, v1, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 410
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 411
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 412
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    const/4 v6, 0x1

    invoke-static {p0, v6}, Lcom/doctruyen/ui/UiModernizer;->createMenuExitButton(Landroid/app/Activity;Z)Landroid/widget/Button;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 414
    new-instance v3, Landroid/widget/Button;

    invoke-direct {v3, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/doctruyen/reader/ReaderActivity;->btnPrev:Landroid/widget/Button;

    .line 415
    iget-object v3, p0, Lcom/doctruyen/reader/ReaderActivity;->btnPrev:Landroid/widget/Button;

    const-string v6, "\u00ab Tr\u01b0\u1edbc"

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 416
    iget-object v3, p0, Lcom/doctruyen/reader/ReaderActivity;->btnPrev:Landroid/widget/Button;

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v6, v2, v5, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 417
    iget-object v3, p0, Lcom/doctruyen/reader/ReaderActivity;->btnPrev:Landroid/widget/Button;

    new-instance v6, Lcom/doctruyen/reader/ReaderActivity$13;

    invoke-direct {v6, p0}, Lcom/doctruyen/reader/ReaderActivity$13;-><init>(Lcom/doctruyen/reader/ReaderActivity;)V

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 418
    iget-object v3, p0, Lcom/doctruyen/reader/ReaderActivity;->btnPrev:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 420
    new-instance v3, Landroid/widget/Button;

    invoke-direct {v3, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/doctruyen/reader/ReaderActivity;->btnStandardTts:Landroid/widget/Button;

    .line 421
    iget-object v3, p0, Lcom/doctruyen/reader/ReaderActivity;->btnStandardTts:Landroid/widget/Button;

    const-string v6, "\u25b6 \u0110\u1ecdc TTS"

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 422
    iget-object v3, p0, Lcom/doctruyen/reader/ReaderActivity;->btnStandardTts:Landroid/widget/Button;

    sget v6, Lcom/doctruyen/ui/UiTheme;->ACCENT_BLUE:I

    const/high16 v8, 0x41000000    # 8.0f

    invoke-static {v6, v2, v2, v8, p0}, Lcom/doctruyen/ui/UiTheme;->roundBox(IIIFLandroid/content/Context;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 423
    iget-object v3, p0, Lcom/doctruyen/reader/ReaderActivity;->btnStandardTts:Landroid/widget/Button;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setTextColor(I)V

    .line 424
    iget-object v3, p0, Lcom/doctruyen/reader/ReaderActivity;->btnStandardTts:Landroid/widget/Button;

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const v8, 0x3fa66666    # 1.3f

    invoke-direct {v6, v2, v5, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 425
    iget-object v3, p0, Lcom/doctruyen/reader/ReaderActivity;->btnStandardTts:Landroid/widget/Button;

    new-instance v6, Lcom/doctruyen/reader/ReaderActivity$14;

    invoke-direct {v6, p0}, Lcom/doctruyen/reader/ReaderActivity$14;-><init>(Lcom/doctruyen/reader/ReaderActivity;)V

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 426
    iget-object v3, p0, Lcom/doctruyen/reader/ReaderActivity;->btnStandardTts:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 428
    new-instance v3, Landroid/widget/Button;

    invoke-direct {v3, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/doctruyen/reader/ReaderActivity;->btnNext:Landroid/widget/Button;

    .line 429
    iget-object v3, p0, Lcom/doctruyen/reader/ReaderActivity;->btnNext:Landroid/widget/Button;

    const-string v6, "Sau \u00bb"

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 430
    iget-object v3, p0, Lcom/doctruyen/reader/ReaderActivity;->btnNext:Landroid/widget/Button;

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v2, v5, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 431
    iget-object v3, p0, Lcom/doctruyen/reader/ReaderActivity;->btnNext:Landroid/widget/Button;

    new-instance v6, Lcom/doctruyen/reader/ReaderActivity$15;

    invoke-direct {v6, p0}, Lcom/doctruyen/reader/ReaderActivity$15;-><init>(Lcom/doctruyen/reader/ReaderActivity;)V

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 432
    iget-object v3, p0, Lcom/doctruyen/reader/ReaderActivity;->btnNext:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 434
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 437
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 438
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 439
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 441
    new-instance v3, Landroid/widget/Button;

    invoke-direct {v3, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/doctruyen/reader/ReaderActivity;->btnToc:Landroid/widget/Button;

    .line 442
    iget-object v3, p0, Lcom/doctruyen/reader/ReaderActivity;->btnToc:Landroid/widget/Button;

    const-string v4, "\ud83d\udcd1 M\u1ee5c L\u1ee5c"

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 443
    iget-object v3, p0, Lcom/doctruyen/reader/ReaderActivity;->btnToc:Landroid/widget/Button;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const v6, 0x3f8ccccd    # 1.1f

    invoke-direct {v4, v2, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 444
    iget-object v3, p0, Lcom/doctruyen/reader/ReaderActivity;->btnToc:Landroid/widget/Button;

    new-instance v4, Lcom/doctruyen/reader/ReaderActivity$16;

    invoke-direct {v4, p0}, Lcom/doctruyen/reader/ReaderActivity$16;-><init>(Lcom/doctruyen/reader/ReaderActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 445
    iget-object v3, p0, Lcom/doctruyen/reader/ReaderActivity;->btnToc:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 447
    new-instance v3, Landroid/widget/Button;

    invoke-direct {v3, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/doctruyen/reader/ReaderActivity;->btnTtsSettings:Landroid/widget/Button;

    .line 448
    iget-object v3, p0, Lcom/doctruyen/reader/ReaderActivity;->btnTtsSettings:Landroid/widget/Button;

    const-string v4, "\u2699 Gi\u1ecdng \u0111\u1ecdc"

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 449
    iget-object v3, p0, Lcom/doctruyen/reader/ReaderActivity;->btnTtsSettings:Landroid/widget/Button;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v2, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 450
    iget-object v3, p0, Lcom/doctruyen/reader/ReaderActivity;->btnTtsSettings:Landroid/widget/Button;

    new-instance v4, Lcom/doctruyen/reader/ReaderActivity$17;

    invoke-direct {v4, p0}, Lcom/doctruyen/reader/ReaderActivity$17;-><init>(Lcom/doctruyen/reader/ReaderActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 451
    iget-object v3, p0, Lcom/doctruyen/reader/ReaderActivity;->btnTtsSettings:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 453
    new-instance v3, Landroid/widget/Button;

    invoke-direct {v3, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/doctruyen/reader/ReaderActivity;->btnTheme:Landroid/widget/Button;

    .line 454
    iget-object v3, p0, Lcom/doctruyen/reader/ReaderActivity;->btnTheme:Landroid/widget/Button;

    const-string v4, "\ud83c\udf13 N\u1ec1n"

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 455
    iget-object v3, p0, Lcom/doctruyen/reader/ReaderActivity;->btnTheme:Landroid/widget/Button;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const v6, 0x3f4ccccd    # 0.8f

    invoke-direct {v4, v2, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 456
    iget-object v3, p0, Lcom/doctruyen/reader/ReaderActivity;->btnTheme:Landroid/widget/Button;

    new-instance v4, Lcom/doctruyen/reader/ReaderActivity$18;

    invoke-direct {v4, p0}, Lcom/doctruyen/reader/ReaderActivity$18;-><init>(Lcom/doctruyen/reader/ReaderActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 457
    iget-object v3, p0, Lcom/doctruyen/reader/ReaderActivity;->btnTheme:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 459
    new-instance v3, Landroid/widget/Button;

    invoke-direct {v3, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 460
    const-string v4, "A-"

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 461
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const v6, 0x3f19999a    # 0.6f

    invoke-direct {v4, v2, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 462
    new-instance v4, Lcom/doctruyen/reader/ReaderActivity$19;

    invoke-direct {v4, p0}, Lcom/doctruyen/reader/ReaderActivity$19;-><init>(Lcom/doctruyen/reader/ReaderActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 463
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 465
    new-instance v3, Landroid/widget/Button;

    invoke-direct {v3, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 466
    const-string v4, "A+"

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 467
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v2, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 468
    new-instance v2, Lcom/doctruyen/reader/ReaderActivity$20;

    invoke-direct {v2, p0}, Lcom/doctruyen/reader/ReaderActivity$20;-><init>(Lcom/doctruyen/reader/ReaderActivity;)V

    invoke-virtual {v3, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 469
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 471
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 472
    return-object v0
.end method

.method private createTtsPlayerPanel()Landroid/view/View;
    .locals 13

    .line 476
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 477
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 478
    const-string v1, "#FFFFFF"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 479
    const/16 v1, 0x14

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2, v1, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 482
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 483
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 484
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 486
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/doctruyen/reader/ReaderActivity;->tvPlayerInfo:Landroid/widget/TextView;

    .line 487
    iget-object v3, p0, Lcom/doctruyen/reader/ReaderActivity;->tvPlayerInfo:Landroid/widget/TextView;

    const-string v6, "\ud83c\udfb5 \u0110ang \u0111\u1ecdc Audio TTS"

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 488
    iget-object v3, p0, Lcom/doctruyen/reader/ReaderActivity;->tvPlayerInfo:Landroid/widget/TextView;

    const/high16 v6, 0x41600000    # 14.0f

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 489
    iget-object v3, p0, Lcom/doctruyen/reader/ReaderActivity;->tvPlayerInfo:Landroid/widget/TextView;

    const-string v7, "#0D6EFD"

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 490
    iget-object v3, p0, Lcom/doctruyen/reader/ReaderActivity;->tvPlayerInfo:Landroid/widget/TextView;

    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-direct {v8, v2, v5, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 491
    iget-object v3, p0, Lcom/doctruyen/reader/ReaderActivity;->tvPlayerInfo:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 493
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/doctruyen/reader/ReaderActivity;->tvPlayerProgress:Landroid/widget/TextView;

    .line 494
    iget-object v3, p0, Lcom/doctruyen/reader/ReaderActivity;->tvPlayerProgress:Landroid/widget/TextView;

    const-string v8, "[1 / 1]"

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 495
    iget-object v3, p0, Lcom/doctruyen/reader/ReaderActivity;->tvPlayerProgress:Landroid/widget/TextView;

    const/high16 v8, 0x41500000    # 13.0f

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setTextSize(F)V

    .line 496
    iget-object v3, p0, Lcom/doctruyen/reader/ReaderActivity;->tvPlayerProgress:Landroid/widget/TextView;

    const-string v8, "#6C757D"

    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 497
    iget-object v3, p0, Lcom/doctruyen/reader/ReaderActivity;->tvPlayerProgress:Landroid/widget/TextView;

    const/16 v8, 0x8

    invoke-virtual {v3, v8, v2, v8, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 498
    iget-object v3, p0, Lcom/doctruyen/reader/ReaderActivity;->tvPlayerProgress:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 500
    new-instance v3, Landroid/widget/Button;

    invoke-direct {v3, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/doctruyen/reader/ReaderActivity;->btnPlayerTimer:Landroid/widget/Button;

    .line 501
    iget-object v3, p0, Lcom/doctruyen/reader/ReaderActivity;->btnPlayerTimer:Landroid/widget/Button;

    const-string v10, "\u23f1 H\u1eb9n gi\u1edd"

    invoke-virtual {v3, v10}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 502
    iget-object v3, p0, Lcom/doctruyen/reader/ReaderActivity;->btnPlayerTimer:Landroid/widget/Button;

    const/high16 v10, 0x41400000    # 12.0f

    invoke-virtual {v3, v10}, Landroid/widget/Button;->setTextSize(F)V

    .line 503
    iget-object v3, p0, Lcom/doctruyen/reader/ReaderActivity;->btnPlayerTimer:Landroid/widget/Button;

    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v11, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v11}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 504
    iget-object v3, p0, Lcom/doctruyen/reader/ReaderActivity;->btnPlayerTimer:Landroid/widget/Button;

    new-instance v11, Lcom/doctruyen/reader/ReaderActivity$25;

    invoke-direct {v11, p0}, Lcom/doctruyen/reader/ReaderActivity$25;-><init>(Lcom/doctruyen/reader/ReaderActivity;)V

    invoke-virtual {v3, v11}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 505
    iget-object v3, p0, Lcom/doctruyen/reader/ReaderActivity;->btnPlayerTimer:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 507
    new-instance v3, Landroid/widget/Button;

    invoke-direct {v3, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/doctruyen/reader/ReaderActivity;->btnPlayerClose:Landroid/widget/Button;

    .line 508
    iget-object v3, p0, Lcom/doctruyen/reader/ReaderActivity;->btnPlayerClose:Landroid/widget/Button;

    const-string v11, "\u2715 \u0110\u00f3ng"

    invoke-virtual {v3, v11}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 509
    iget-object v3, p0, Lcom/doctruyen/reader/ReaderActivity;->btnPlayerClose:Landroid/widget/Button;

    invoke-virtual {v3, v10}, Landroid/widget/Button;->setTextSize(F)V

    .line 510
    iget-object v3, p0, Lcom/doctruyen/reader/ReaderActivity;->btnPlayerClose:Landroid/widget/Button;

    const-string v11, "#DC3545"

    invoke-static {v11}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v3, v11}, Landroid/widget/Button;->setTextColor(I)V

    .line 511
    iget-object v3, p0, Lcom/doctruyen/reader/ReaderActivity;->btnPlayerClose:Landroid/widget/Button;

    invoke-virtual {v3, v2}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 512
    iget-object v3, p0, Lcom/doctruyen/reader/ReaderActivity;->btnPlayerClose:Landroid/widget/Button;

    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v11, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v11}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 513
    iget-object v3, p0, Lcom/doctruyen/reader/ReaderActivity;->btnPlayerClose:Landroid/widget/Button;

    new-instance v11, Lcom/doctruyen/reader/ReaderActivity$26;

    invoke-direct {v11, p0}, Lcom/doctruyen/reader/ReaderActivity$26;-><init>(Lcom/doctruyen/reader/ReaderActivity;)V

    invoke-virtual {v3, v11}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 514
    iget-object v3, p0, Lcom/doctruyen/reader/ReaderActivity;->btnPlayerClose:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 516
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 519
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 520
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 521
    const/16 v3, 0xc

    invoke-virtual {v1, v2, v3, v2, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 522
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 524
    new-instance v3, Landroid/widget/Button;

    invoke-direct {v3, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/doctruyen/reader/ReaderActivity;->btnPlayerPrevChap:Landroid/widget/Button;

    .line 525
    iget-object v3, p0, Lcom/doctruyen/reader/ReaderActivity;->btnPlayerPrevChap:Landroid/widget/Button;

    const-string v11, "\u23ee Ch\u01b0\u01a1ng"

    invoke-virtual {v3, v11}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 526
    iget-object v3, p0, Lcom/doctruyen/reader/ReaderActivity;->btnPlayerPrevChap:Landroid/widget/Button;

    invoke-virtual {v3, v10}, Landroid/widget/Button;->setTextSize(F)V

    .line 527
    iget-object v3, p0, Lcom/doctruyen/reader/ReaderActivity;->btnPlayerPrevChap:Landroid/widget/Button;

    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v11, v2, v5, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v3, v11}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 528
    iget-object v3, p0, Lcom/doctruyen/reader/ReaderActivity;->btnPlayerPrevChap:Landroid/widget/Button;

    new-instance v11, Lcom/doctruyen/reader/ReaderActivity$27;

    invoke-direct {v11, p0}, Lcom/doctruyen/reader/ReaderActivity$27;-><init>(Lcom/doctruyen/reader/ReaderActivity;)V

    invoke-virtual {v3, v11}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 529
    iget-object v3, p0, Lcom/doctruyen/reader/ReaderActivity;->btnPlayerPrevChap:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 531
    new-instance v3, Landroid/widget/Button;

    invoke-direct {v3, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/doctruyen/reader/ReaderActivity;->btnPlayerPrevPara:Landroid/widget/Button;

    .line 532
    iget-object v3, p0, Lcom/doctruyen/reader/ReaderActivity;->btnPlayerPrevPara:Landroid/widget/Button;

    const-string v11, "\u23ea \u0110o\u1ea1n"

    invoke-virtual {v3, v11}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 533
    iget-object v3, p0, Lcom/doctruyen/reader/ReaderActivity;->btnPlayerPrevPara:Landroid/widget/Button;

    invoke-virtual {v3, v10}, Landroid/widget/Button;->setTextSize(F)V

    .line 534
    iget-object v3, p0, Lcom/doctruyen/reader/ReaderActivity;->btnPlayerPrevPara:Landroid/widget/Button;

    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    const v12, 0x3f666666    # 0.9f

    invoke-direct {v11, v2, v5, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v3, v11}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 535
    iget-object v3, p0, Lcom/doctruyen/reader/ReaderActivity;->btnPlayerPrevPara:Landroid/widget/Button;

    new-instance v11, Lcom/doctruyen/reader/ReaderActivity$28;

    invoke-direct {v11, p0}, Lcom/doctruyen/reader/ReaderActivity$28;-><init>(Lcom/doctruyen/reader/ReaderActivity;)V

    invoke-virtual {v3, v11}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 538
    iget-object v3, p0, Lcom/doctruyen/reader/ReaderActivity;->btnPlayerPrevPara:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 540
    new-instance v3, Landroid/widget/Button;

    invoke-direct {v3, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/doctruyen/reader/ReaderActivity;->btnPlayerPlayPause:Landroid/widget/Button;

    .line 541
    iget-object v3, p0, Lcom/doctruyen/reader/ReaderActivity;->btnPlayerPlayPause:Landroid/widget/Button;

    const-string v11, "\u23f8 T\u1ea0M D\u1eeaNG"

    invoke-virtual {v3, v11}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 542
    iget-object v3, p0, Lcom/doctruyen/reader/ReaderActivity;->btnPlayerPlayPause:Landroid/widget/Button;

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v3, v7}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 543
    iget-object v3, p0, Lcom/doctruyen/reader/ReaderActivity;->btnPlayerPlayPause:Landroid/widget/Button;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setTextColor(I)V

    .line 544
    iget-object v3, p0, Lcom/doctruyen/reader/ReaderActivity;->btnPlayerPlayPause:Landroid/widget/Button;

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setTextSize(F)V

    .line 545
    iget-object v3, p0, Lcom/doctruyen/reader/ReaderActivity;->btnPlayerPlayPause:Landroid/widget/Button;

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const v7, 0x3fb33333    # 1.4f

    invoke-direct {v6, v2, v5, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 546
    iget-object v3, p0, Lcom/doctruyen/reader/ReaderActivity;->btnPlayerPlayPause:Landroid/widget/Button;

    new-instance v6, Lcom/doctruyen/reader/ReaderActivity$29;

    invoke-direct {v6, p0}, Lcom/doctruyen/reader/ReaderActivity$29;-><init>(Lcom/doctruyen/reader/ReaderActivity;)V

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 561
    iget-object v3, p0, Lcom/doctruyen/reader/ReaderActivity;->btnPlayerPlayPause:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 563
    new-instance v3, Landroid/widget/Button;

    invoke-direct {v3, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/doctruyen/reader/ReaderActivity;->btnPlayerNextPara:Landroid/widget/Button;

    .line 564
    iget-object v3, p0, Lcom/doctruyen/reader/ReaderActivity;->btnPlayerNextPara:Landroid/widget/Button;

    const-string v6, "\u0110o\u1ea1n \u23e9"

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 565
    iget-object v3, p0, Lcom/doctruyen/reader/ReaderActivity;->btnPlayerNextPara:Landroid/widget/Button;

    invoke-virtual {v3, v10}, Landroid/widget/Button;->setTextSize(F)V

    .line 566
    iget-object v3, p0, Lcom/doctruyen/reader/ReaderActivity;->btnPlayerNextPara:Landroid/widget/Button;

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v2, v5, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 567
    iget-object v3, p0, Lcom/doctruyen/reader/ReaderActivity;->btnPlayerNextPara:Landroid/widget/Button;

    new-instance v6, Lcom/doctruyen/reader/ReaderActivity$30;

    invoke-direct {v6, p0}, Lcom/doctruyen/reader/ReaderActivity$30;-><init>(Lcom/doctruyen/reader/ReaderActivity;)V

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 570
    iget-object v3, p0, Lcom/doctruyen/reader/ReaderActivity;->btnPlayerNextPara:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 572
    new-instance v3, Landroid/widget/Button;

    invoke-direct {v3, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/doctruyen/reader/ReaderActivity;->btnPlayerNextChap:Landroid/widget/Button;

    .line 573
    iget-object v3, p0, Lcom/doctruyen/reader/ReaderActivity;->btnPlayerNextChap:Landroid/widget/Button;

    const-string v6, "Ch\u01b0\u01a1ng \u23ed"

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 574
    iget-object v3, p0, Lcom/doctruyen/reader/ReaderActivity;->btnPlayerNextChap:Landroid/widget/Button;

    invoke-virtual {v3, v10}, Landroid/widget/Button;->setTextSize(F)V

    .line 575
    iget-object v3, p0, Lcom/doctruyen/reader/ReaderActivity;->btnPlayerNextChap:Landroid/widget/Button;

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v2, v5, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 576
    iget-object v3, p0, Lcom/doctruyen/reader/ReaderActivity;->btnPlayerNextChap:Landroid/widget/Button;

    new-instance v6, Lcom/doctruyen/reader/ReaderActivity$31;

    invoke-direct {v6, p0}, Lcom/doctruyen/reader/ReaderActivity$31;-><init>(Lcom/doctruyen/reader/ReaderActivity;)V

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 577
    iget-object v3, p0, Lcom/doctruyen/reader/ReaderActivity;->btnPlayerNextChap:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 579
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 582
    new-instance v1, Landroid/widget/SeekBar;

    invoke-direct {v1, p0}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/doctruyen/reader/ReaderActivity;->sbPlayerProgress:Landroid/widget/SeekBar;

    .line 583
    iget-object v1, p0, Lcom/doctruyen/reader/ReaderActivity;->sbPlayerProgress:Landroid/widget/SeekBar;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3}, Landroid/widget/SeekBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 584
    iget-object v1, p0, Lcom/doctruyen/reader/ReaderActivity;->sbPlayerProgress:Landroid/widget/SeekBar;

    new-instance v3, Lcom/doctruyen/reader/ReaderActivity$4;

    invoke-direct {v3, p0}, Lcom/doctruyen/reader/ReaderActivity$4;-><init>(Lcom/doctruyen/reader/ReaderActivity;)V

    invoke-virtual {v1, v3}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 605
    iget-object v1, p0, Lcom/doctruyen/reader/ReaderActivity;->sbPlayerProgress:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 608
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 609
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 610
    invoke-virtual {v1, v2, v8, v2, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 612
    new-instance v3, Landroid/widget/Button;

    invoke-direct {v3, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/doctruyen/reader/ReaderActivity;->btnPlayerSpeed:Landroid/widget/Button;

    .line 613
    iget-object v3, p0, Lcom/doctruyen/reader/ReaderActivity;->btnPlayerSpeed:Landroid/widget/Button;

    const-string v4, "\u26a1 1.0x"

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 614
    iget-object v3, p0, Lcom/doctruyen/reader/ReaderActivity;->btnPlayerSpeed:Landroid/widget/Button;

    invoke-virtual {v3, v10}, Landroid/widget/Button;->setTextSize(F)V

    .line 615
    iget-object v3, p0, Lcom/doctruyen/reader/ReaderActivity;->btnPlayerSpeed:Landroid/widget/Button;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v2, v5, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 616
    iget-object v3, p0, Lcom/doctruyen/reader/ReaderActivity;->btnPlayerSpeed:Landroid/widget/Button;

    new-instance v4, Lcom/doctruyen/reader/ReaderActivity$32;

    invoke-direct {v4, p0}, Lcom/doctruyen/reader/ReaderActivity$32;-><init>(Lcom/doctruyen/reader/ReaderActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 617
    iget-object v3, p0, Lcom/doctruyen/reader/ReaderActivity;->btnPlayerSpeed:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 619
    new-instance v3, Landroid/widget/Button;

    invoke-direct {v3, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 620
    const-string v4, "\u2699 Gi\u1ecdng \u0111\u1ecdc & Cao \u0111\u1ed9"

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 621
    invoke-virtual {v3, v10}, Landroid/widget/Button;->setTextSize(F)V

    .line 622
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v6, 0x3fc00000    # 1.5f

    invoke-direct {v4, v2, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 623
    new-instance v2, Lcom/doctruyen/reader/ReaderActivity$33;

    invoke-direct {v2, p0}, Lcom/doctruyen/reader/ReaderActivity$33;-><init>(Lcom/doctruyen/reader/ReaderActivity;)V

    invoke-virtual {v3, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 624
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 626
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 627
    return-object v0
.end method

.method private cycleTheme()V
    .locals 3

    .line 1188
    iget-object v0, p0, Lcom/doctruyen/reader/ReaderActivity;->currentTheme:Ljava/lang/String;

    const-string v1, "light"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "dark"

    if-eqz v0, :cond_0

    iput-object v2, p0, Lcom/doctruyen/reader/ReaderActivity;->currentTheme:Ljava/lang/String;

    goto :goto_0

    .line 1189
    :cond_0
    iget-object v0, p0, Lcom/doctruyen/reader/ReaderActivity;->currentTheme:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "sepia"

    iput-object v0, p0, Lcom/doctruyen/reader/ReaderActivity;->currentTheme:Ljava/lang/String;

    goto :goto_0

    .line 1190
    :cond_1
    iput-object v1, p0, Lcom/doctruyen/reader/ReaderActivity;->currentTheme:Ljava/lang/String;

    .line 1192
    :goto_0
    iget-object v0, p0, Lcom/doctruyen/reader/ReaderActivity;->currentTheme:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/doctruyen/reader/ReaderActivity;->applyTheme(Ljava/lang/String;)V

    .line 1193
    return-void
.end method

.method private cycleTtsSpeed()V
    .locals 4

    .line 711
    iget-object v0, p0, Lcom/doctruyen/reader/ReaderActivity;->ttsService:Lcom/doctruyen/tts/TtsPlaybackService;

    if-nez v0, :cond_0

    return-void

    .line 712
    :cond_0
    iget-object v0, p0, Lcom/doctruyen/reader/ReaderActivity;->ttsService:Lcom/doctruyen/tts/TtsPlaybackService;

    invoke-virtual {v0}, Lcom/doctruyen/tts/TtsPlaybackService;->getSpeed()F

    move-result v0

    .line 713
    nop

    .line 714
    const v1, 0x3f933333    # 1.15f

    cmpg-float v1, v0, v1

    if-gez v1, :cond_1

    const/high16 v0, 0x3fa00000    # 1.25f

    goto :goto_0

    .line 715
    :cond_1
    const v1, 0x3fb33333    # 1.4f

    cmpg-float v1, v0, v1

    if-gez v1, :cond_2

    const/high16 v0, 0x3fc00000    # 1.5f

    goto :goto_0

    .line 716
    :cond_2
    const v1, 0x3fe66666    # 1.8f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    const/high16 v0, 0x40000000    # 2.0f

    goto :goto_0

    .line 717
    :cond_3
    const/high16 v0, 0x3f800000    # 1.0f

    .line 719
    :goto_0
    iget-object v1, p0, Lcom/doctruyen/reader/ReaderActivity;->ttsService:Lcom/doctruyen/tts/TtsPlaybackService;

    invoke-virtual {v1, v0}, Lcom/doctruyen/tts/TtsPlaybackService;->setSpeed(F)V

    .line 720
    iget-object v1, p0, Lcom/doctruyen/reader/ReaderActivity;->btnPlayerSpeed:Landroid/widget/Button;

    if-eqz v1, :cond_4

    .line 721
    iget-object v1, p0, Lcom/doctruyen/reader/ReaderActivity;->btnPlayerSpeed:Landroid/widget/Button;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u26a1 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 723
    :cond_4
    return-void
.end method

.method private doStartTts()V
    .locals 3

    .line 661
    iget-object v0, p0, Lcom/doctruyen/reader/ReaderActivity;->webView:Landroid/webkit/WebView;

    new-instance v1, Lcom/doctruyen/reader/ReaderActivity$43;

    invoke-direct {v1, p0}, Lcom/doctruyen/reader/ReaderActivity$43;-><init>(Lcom/doctruyen/reader/ReaderActivity;)V

    const-string v2, "getFirstVisibleParagraphIndex()"

    invoke-virtual {v0, v2, v1}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 675
    return-void
.end method

.method private initViews()V
    .locals 6

    .line 340
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 341
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 342
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 345
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/doctruyen/reader/ReaderActivity;->tvStatus:Landroid/widget/TextView;

    .line 346
    iget-object v2, p0, Lcom/doctruyen/reader/ReaderActivity;->tvStatus:Landroid/widget/TextView;

    const/16 v4, 0x18

    const/16 v5, 0x10

    invoke-virtual {v2, v4, v5, v4, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 347
    iget-object v2, p0, Lcom/doctruyen/reader/ReaderActivity;->tvStatus:Landroid/widget/TextView;

    const/high16 v4, 0x41600000    # 14.0f

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 348
    iget-object v2, p0, Lcom/doctruyen/reader/ReaderActivity;->tvStatus:Landroid/widget/TextView;

    const-string v4, "#E9ECEF"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 349
    iget-object v2, p0, Lcom/doctruyen/reader/ReaderActivity;->tvStatus:Landroid/widget/TextView;

    const-string v4, "#495057"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 350
    iget-object v2, p0, Lcom/doctruyen/reader/ReaderActivity;->tvStatus:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/doctruyen/reader/ReaderActivity;->bookTitle:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/doctruyen/reader/ReaderActivity;->bookTitle:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v4, "\u0110ang m\u1edf truy\u1ec7n..."

    :goto_0
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 351
    iget-object v2, p0, Lcom/doctruyen/reader/ReaderActivity;->tvStatus:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 354
    new-instance v2, Landroid/webkit/WebView;

    invoke-direct {v2, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/doctruyen/reader/ReaderActivity;->webView:Landroid/webkit/WebView;

    .line 355
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 356
    iget-object v3, p0, Lcom/doctruyen/reader/ReaderActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v3, v2}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 357
    iget-object v2, p0, Lcom/doctruyen/reader/ReaderActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    .line 358
    invoke-virtual {v2, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 359
    invoke-virtual {v2, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 360
    const-string v1, "UTF-8"

    invoke-virtual {v2, v1}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 361
    iget-object v1, p0, Lcom/doctruyen/reader/ReaderActivity;->webView:Landroid/webkit/WebView;

    new-instance v2, Lcom/doctruyen/reader/ReaderActivity$AndroidBridge;

    invoke-direct {v2, p0}, Lcom/doctruyen/reader/ReaderActivity$AndroidBridge;-><init>(Lcom/doctruyen/reader/ReaderActivity;)V

    const-string v3, "AndroidBridge"

    invoke-virtual {v1, v2, v3}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 362
    iget-object v1, p0, Lcom/doctruyen/reader/ReaderActivity;->webView:Landroid/webkit/WebView;

    new-instance v2, Lcom/doctruyen/reader/ReaderActivity$2;

    invoke-direct {v2, p0}, Lcom/doctruyen/reader/ReaderActivity$2;-><init>(Lcom/doctruyen/reader/ReaderActivity;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 375
    new-instance v1, Landroid/view/GestureDetector;

    new-instance v2, Lcom/doctruyen/reader/ReaderActivity$3;

    invoke-direct {v2, p0}, Lcom/doctruyen/reader/ReaderActivity$3;-><init>(Lcom/doctruyen/reader/ReaderActivity;)V

    invoke-direct {v1, p0, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 382
    iget-object v2, p0, Lcom/doctruyen/reader/ReaderActivity;->webView:Landroid/webkit/WebView;

    new-instance v3, Lcom/doctruyen/reader/ReaderActivity$9;

    invoke-direct {v3, v1}, Lcom/doctruyen/reader/ReaderActivity$9;-><init>(Landroid/view/GestureDetector;)V

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 387
    iget-object v1, p0, Lcom/doctruyen/reader/ReaderActivity;->webView:Landroid/webkit/WebView;

    const-string v2, "file:///android_asset/reader/reader.html"

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 388
    iget-object v1, p0, Lcom/doctruyen/reader/ReaderActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 391
    invoke-direct {p0}, Lcom/doctruyen/reader/ReaderActivity;->createStandardControlBar()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/doctruyen/reader/ReaderActivity;->standardControlBar:Landroid/view/View;

    .line 392
    iget-object v1, p0, Lcom/doctruyen/reader/ReaderActivity;->standardControlBar:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 395
    invoke-direct {p0}, Lcom/doctruyen/reader/ReaderActivity;->createTtsPlayerPanel()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/doctruyen/reader/ReaderActivity;->ttsPlayerPanel:Landroid/view/View;

    .line 396
    iget-object v1, p0, Lcom/doctruyen/reader/ReaderActivity;->ttsPlayerPanel:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 397
    iget-object v1, p0, Lcom/doctruyen/reader/ReaderActivity;->ttsPlayerPanel:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 399
    invoke-virtual {p0, v0}, Lcom/doctruyen/reader/ReaderActivity;->setContentView(Landroid/view/View;)V

    .line 400
    iget-object v0, p0, Lcom/doctruyen/reader/ReaderActivity;->currentTheme:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/doctruyen/reader/ReaderActivity;->applyTheme(Ljava/lang/String;)V

    .line 401
    return-void
.end method

.method private injectChapterToWeb(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 951
    const-string v0, ""

    iget-boolean v1, p0, Lcom/doctruyen/reader/ReaderActivity;->isReaderHtmlLoaded:Z

    if-nez v1, :cond_0

    .line 952
    iput-object p1, p0, Lcom/doctruyen/reader/ReaderActivity;->pendingChapterTitle:Ljava/lang/String;

    .line 953
    iput-object p2, p0, Lcom/doctruyen/reader/ReaderActivity;->pendingChapterHtml:Ljava/lang/String;

    .line 954
    return-void

    .line 957
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 958
    const-string v2, "title"

    if-eqz p1, :cond_1

    move-object v3, p1

    goto :goto_0

    :cond_1
    move-object v3, v0

    :goto_0
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 959
    const-string v2, "html"

    if-eqz p2, :cond_2

    move-object v3, p2

    goto :goto_1

    :cond_2
    move-object v3, v0

    :goto_1
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 960
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadChapterData("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ");"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 961
    iget-object v2, p0, Lcom/doctruyen/reader/ReaderActivity;->webView:Landroid/webkit/WebView;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 966
    goto :goto_3

    .line 962
    :catch_0
    move-exception v1

    .line 963
    const-string v1, " "

    const-string v2, "\n"

    const-string v3, "\\\'"

    const-string v4, "\'"

    const-string v5, "\\\\"

    const-string v6, "\\"

    if-eqz p1, :cond_3

    invoke-virtual {p1, v6, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_3
    move-object p1, v0

    .line 964
    :goto_2
    if-eqz p2, :cond_4

    invoke-virtual {p2, v6, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    const-string v3, "\r"

    invoke-virtual {p2, v3, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 965
    :cond_4
    iget-object p2, p0, Lcom/doctruyen/reader/ReaderActivity;->webView:Landroid/webkit/WebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:loadChapter(\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "\', \'"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\')"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 967
    :goto_3
    return-void
.end method

.method static synthetic lambda$initViews$0(Landroid/view/GestureDetector;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 383
    invoke-virtual {p0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 384
    const/4 p0, 0x0

    return p0
.end method

.method private loadEpubData()V
    .locals 2

    .line 781
    iget-object v0, p0, Lcom/doctruyen/reader/ReaderActivity;->tvStatus:Landroid/widget/TextView;

    const-string v1, "\u0110ang \u0111\u1ecdc m\u1ee5c l\u1ee5c s\u00e1ch..."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 782
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/doctruyen/reader/ReaderActivity$42;

    invoke-direct {v1, p0}, Lcom/doctruyen/reader/ReaderActivity$42;-><init>(Lcom/doctruyen/reader/ReaderActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 803
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 804
    return-void
.end method

.method private loadLocalChapter(IZ)V
    .locals 4

    .line 807
    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/doctruyen/reader/ReaderActivity;->chapters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 808
    :cond_0
    iput p1, p0, Lcom/doctruyen/reader/ReaderActivity;->currentChapterIndex:I

    .line 809
    iget-object v0, p0, Lcom/doctruyen/reader/ReaderActivity;->chapters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/doctruyen/reader/epub/Chapter;

    .line 810
    invoke-virtual {v0}, Lcom/doctruyen/reader/epub/Chapter;->getTitle()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/doctruyen/reader/ReaderActivity;->currentActiveChapterTitle:Ljava/lang/String;

    .line 811
    iget-object v1, p0, Lcom/doctruyen/reader/ReaderActivity;->tvStatus:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/doctruyen/reader/ReaderActivity;->chapters:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/doctruyen/reader/epub/Chapter;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 812
    iput-boolean p2, p0, Lcom/doctruyen/reader/ReaderActivity;->autoPlayPendingTts:Z

    .line 814
    new-instance p2, Ljava/lang/Thread;

    new-instance v1, Lcom/doctruyen/reader/ReaderActivity$34;

    invoke-direct {v1, p0, v0, p1}, Lcom/doctruyen/reader/ReaderActivity$34;-><init>(Lcom/doctruyen/reader/ReaderActivity;Lcom/doctruyen/reader/epub/Chapter;I)V

    invoke-direct {p2, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 829
    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    .line 830
    return-void

    .line 807
    :cond_1
    :goto_0
    return-void
.end method

.method private loadNextChapter(Z)V
    .locals 5

    .line 1027
    invoke-direct {p0}, Lcom/doctruyen/reader/ReaderActivity;->saveCurrentReadingProgress()V

    .line 1028
    const/4 v0, 0x0

    iput v0, p0, Lcom/doctruyen/reader/ReaderActivity;->currentParagraphIndex:I

    .line 1029
    iput v0, p0, Lcom/doctruyen/reader/ReaderActivity;->currentScrollY:I

    .line 1030
    iput v0, p0, Lcom/doctruyen/reader/ReaderActivity;->targetStartParagraph:I

    .line 1031
    iput v0, p0, Lcom/doctruyen/reader/ReaderActivity;->targetStartScrollY:I

    .line 1032
    const/4 v1, 0x1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/doctruyen/reader/ReaderActivity;->ttsService:Lcom/doctruyen/tts/TtsPlaybackService;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/doctruyen/reader/ReaderActivity;->ttsService:Lcom/doctruyen/tts/TtsPlaybackService;

    invoke-virtual {p1}, Lcom/doctruyen/tts/TtsPlaybackService;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 1033
    :goto_1
    iget-boolean v2, p0, Lcom/doctruyen/reader/ReaderActivity;->isWeb:Z

    const-string v3, "\ud83d\udc49 \u0110ang chuy\u1ec3n sang ch\u01b0\u01a1ng sau..."

    if-eqz v2, :cond_5

    .line 1034
    iget-object v1, p0, Lcom/doctruyen/reader/ReaderActivity;->nextWebUrl:Ljava/lang/String;

    .line 1035
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/doctruyen/reader/ReaderActivity;->currentWebUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1036
    :cond_2
    iget-object v1, p0, Lcom/doctruyen/reader/ReaderActivity;->currentWebUrl:Ljava/lang/String;

    invoke-static {v1}, Lcom/doctruyen/reader/web/WebDirectScraper;->guessNextChapterUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1038
    :cond_3
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/doctruyen/reader/ReaderActivity;->currentWebUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1039
    invoke-static {p0, v3, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1040
    invoke-direct {p0, v1, p1}, Lcom/doctruyen/reader/ReaderActivity;->loadWebChapter(Ljava/lang/String;Z)V

    goto :goto_2

    .line 1042
    :cond_4
    const-string p1, "Kh\u00f4ng t\u00ecm th\u1ea5y ch\u01b0\u01a1ng ti\u1ebfp theo"

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 1044
    :goto_2
    goto :goto_3

    .line 1045
    :cond_5
    iget v2, p0, Lcom/doctruyen/reader/ReaderActivity;->currentChapterIndex:I

    iget-object v4, p0, Lcom/doctruyen/reader/ReaderActivity;->chapters:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v1

    if-ge v2, v4, :cond_6

    .line 1046
    invoke-static {p0, v3, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1047
    iget v0, p0, Lcom/doctruyen/reader/ReaderActivity;->currentChapterIndex:I

    add-int/2addr v0, v1

    invoke-direct {p0, v0, p1}, Lcom/doctruyen/reader/ReaderActivity;->loadLocalChapter(IZ)V

    goto :goto_3

    .line 1049
    :cond_6
    const-string p1, "\u0110\u00e3 \u0111\u1ecdc \u0111\u1ebfn ch\u01b0\u01a1ng cu\u1ed1i"

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 1052
    :goto_3
    return-void
.end method

.method private loadPrevChapter()V
    .locals 5

    .line 999
    invoke-direct {p0}, Lcom/doctruyen/reader/ReaderActivity;->saveCurrentReadingProgress()V

    .line 1000
    const/4 v0, 0x0

    iput v0, p0, Lcom/doctruyen/reader/ReaderActivity;->currentParagraphIndex:I

    .line 1001
    iput v0, p0, Lcom/doctruyen/reader/ReaderActivity;->currentScrollY:I

    .line 1002
    iput v0, p0, Lcom/doctruyen/reader/ReaderActivity;->targetStartParagraph:I

    .line 1003
    iput v0, p0, Lcom/doctruyen/reader/ReaderActivity;->targetStartScrollY:I

    .line 1004
    iget-object v1, p0, Lcom/doctruyen/reader/ReaderActivity;->ttsService:Lcom/doctruyen/tts/TtsPlaybackService;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/doctruyen/reader/ReaderActivity;->ttsService:Lcom/doctruyen/tts/TtsPlaybackService;

    invoke-virtual {v1}, Lcom/doctruyen/tts/TtsPlaybackService;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1005
    :goto_0
    iget-boolean v3, p0, Lcom/doctruyen/reader/ReaderActivity;->isWeb:Z

    const-string v4, "\ud83d\udc48 \u0110ang chuy\u1ec3n sang ch\u01b0\u01a1ng tr\u01b0\u1edbc..."

    if-eqz v3, :cond_4

    .line 1006
    iget-object v2, p0, Lcom/doctruyen/reader/ReaderActivity;->prevWebUrl:Ljava/lang/String;

    .line 1007
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/doctruyen/reader/ReaderActivity;->currentWebUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1008
    :cond_1
    iget-object v2, p0, Lcom/doctruyen/reader/ReaderActivity;->currentWebUrl:Ljava/lang/String;

    invoke-static {v2}, Lcom/doctruyen/reader/web/WebDirectScraper;->guessPrevChapterUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1010
    :cond_2
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/doctruyen/reader/ReaderActivity;->currentWebUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1011
    invoke-static {p0, v4, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1012
    invoke-direct {p0, v2, v1}, Lcom/doctruyen/reader/ReaderActivity;->loadWebChapter(Ljava/lang/String;Z)V

    goto :goto_1

    .line 1014
    :cond_3
    const-string v1, "Kh\u00f4ng t\u00ecm th\u1ea5y ch\u01b0\u01a1ng tr\u01b0\u1edbc"

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1016
    :goto_1
    goto :goto_2

    .line 1017
    :cond_4
    iget v3, p0, Lcom/doctruyen/reader/ReaderActivity;->currentChapterIndex:I

    if-lez v3, :cond_5

    .line 1018
    invoke-static {p0, v4, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1019
    iget v0, p0, Lcom/doctruyen/reader/ReaderActivity;->currentChapterIndex:I

    sub-int/2addr v0, v2

    invoke-direct {p0, v0, v1}, Lcom/doctruyen/reader/ReaderActivity;->loadLocalChapter(IZ)V

    goto :goto_2

    .line 1021
    :cond_5
    const-string v1, "\u0110\u00e2y l\u00e0 ch\u01b0\u01a1ng \u0111\u1ea7u ti\u00ean"

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1024
    :goto_2
    return-void
.end method

.method private loadTxtData()V
    .locals 2

    .line 755
    iget-object v0, p0, Lcom/doctruyen/reader/ReaderActivity;->tvStatus:Landroid/widget/TextView;

    const-string v1, "\u0110ang \u0111\u1ecdc m\u1ee5c l\u1ee5c t\u1ec7p TXT..."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 756
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/doctruyen/reader/ReaderActivity$41;

    invoke-direct {v1, p0}, Lcom/doctruyen/reader/ReaderActivity$41;-><init>(Lcom/doctruyen/reader/ReaderActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 777
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 778
    return-void
.end method

.method private loadWebChapter(Ljava/lang/String;Z)V
    .locals 2

    .line 833
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 834
    :cond_0
    iput-object p1, p0, Lcom/doctruyen/reader/ReaderActivity;->currentWebUrl:Ljava/lang/String;

    .line 835
    iget-object v0, p0, Lcom/doctruyen/reader/ReaderActivity;->tvStatus:Landroid/widget/TextView;

    const-string v1, "\u0110ang t\u1ea3i d\u1eef li\u1ec7u t\u1eeb web..."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 836
    iput-boolean p2, p0, Lcom/doctruyen/reader/ReaderActivity;->autoPlayPendingTts:Z

    .line 838
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/doctruyen/reader/ReaderActivity$21;

    invoke-direct {v1, p0, p1, p2}, Lcom/doctruyen/reader/ReaderActivity$21;-><init>(Lcom/doctruyen/reader/ReaderActivity;Ljava/lang/String;Z)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 865
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 866
    return-void

    .line 833
    :cond_1
    :goto_0
    return-void
.end method

.method private loadWebChapterViaHeadless(Ljava/lang/String;Z)V
    .locals 1

    .line 869
    iput-boolean p2, p0, Lcom/doctruyen/reader/ReaderActivity;->autoPlayPendingTts:Z

    .line 870
    iget-object p2, p0, Lcom/doctruyen/reader/ReaderActivity;->headlessScraperWebView:Landroid/webkit/WebView;

    if-nez p2, :cond_0

    .line 871
    new-instance p2, Landroid/webkit/WebView;

    invoke-direct {p2, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/doctruyen/reader/ReaderActivity;->headlessScraperWebView:Landroid/webkit/WebView;

    .line 872
    iget-object p2, p0, Lcom/doctruyen/reader/ReaderActivity;->headlessScraperWebView:Landroid/webkit/WebView;

    invoke-virtual {p2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p2

    .line 873
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 874
    invoke-virtual {p2, v0}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 875
    invoke-virtual {p2, v0}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 876
    const/4 v0, -0x1

    invoke-virtual {p2, v0}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 877
    const-string v0, "Mozilla/5.0 (Linux; Android 14; Mobile; rv:128.0) Gecko/128.0 Firefox/128.0"

    invoke-virtual {p2, v0}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 880
    :cond_0
    iget-object p2, p0, Lcom/doctruyen/reader/ReaderActivity;->headlessScraperWebView:Landroid/webkit/WebView;

    new-instance v0, Lcom/doctruyen/reader/ReaderActivity$5;

    invoke-direct {v0, p0}, Lcom/doctruyen/reader/ReaderActivity$5;-><init>(Lcom/doctruyen/reader/ReaderActivity;)V

    invoke-virtual {p2, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 947
    iget-object p2, p0, Lcom/doctruyen/reader/ReaderActivity;->headlessScraperWebView:Landroid/webkit/WebView;

    invoke-virtual {p2, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 948
    return-void
.end method

.method private saveCurrentReadingProgress()V
    .locals 10

    .line 971
    :try_start_0
    iget-object v0, p0, Lcom/doctruyen/reader/ReaderActivity;->epubBook:Lcom/doctruyen/reader/epub/BookMeta;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/doctruyen/reader/ReaderActivity;->epubBook:Lcom/doctruyen/reader/epub/BookMeta;

    invoke-virtual {v0}, Lcom/doctruyen/reader/epub/BookMeta;->getTitle()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/doctruyen/reader/ReaderActivity;->epubBook:Lcom/doctruyen/reader/epub/BookMeta;

    invoke-virtual {v0}, Lcom/doctruyen/reader/epub/BookMeta;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 972
    iget-object v0, p0, Lcom/doctruyen/reader/ReaderActivity;->epubBook:Lcom/doctruyen/reader/epub/BookMeta;

    invoke-virtual {v0}, Lcom/doctruyen/reader/epub/BookMeta;->getTitle()Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    goto :goto_1

    .line 973
    :cond_0
    iget-object v0, p0, Lcom/doctruyen/reader/ReaderActivity;->bookTitle:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/doctruyen/reader/ReaderActivity;->bookTitle:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/doctruyen/reader/ReaderActivity;->bookTitle:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/doctruyen/reader/ReaderActivity;->currentActiveChapterTitle:Ljava/lang/String;

    :goto_0
    move-object v3, v0

    .line 974
    :goto_1
    iget-boolean v0, p0, Lcom/doctruyen/reader/ReaderActivity;->isWeb:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/doctruyen/reader/ReaderActivity;->currentWebUrl:Ljava/lang/String;

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/doctruyen/reader/ReaderActivity;->bookPath:Ljava/lang/String;

    :goto_2
    move-object v2, v0

    .line 975
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_4

    .line 977
    :cond_3
    const-string v0, ""

    .line 978
    iget-boolean v1, p0, Lcom/doctruyen/reader/ReaderActivity;->isWeb:Z

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/doctruyen/reader/ReaderActivity;->chapters:Ljava/util/List;

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/doctruyen/reader/ReaderActivity;->currentChapterIndex:I

    if-ltz v1, :cond_4

    iget v1, p0, Lcom/doctruyen/reader/ReaderActivity;->currentChapterIndex:I

    iget-object v4, p0, Lcom/doctruyen/reader/ReaderActivity;->chapters:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_4

    .line 979
    iget-object v0, p0, Lcom/doctruyen/reader/ReaderActivity;->chapters:Ljava/util/List;

    iget v1, p0, Lcom/doctruyen/reader/ReaderActivity;->currentChapterIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/doctruyen/reader/epub/Chapter;

    invoke-virtual {v0}, Lcom/doctruyen/reader/epub/Chapter;->getHref()Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    goto :goto_3

    .line 980
    :cond_4
    iget-boolean v1, p0, Lcom/doctruyen/reader/ReaderActivity;->isWeb:Z

    if-eqz v1, :cond_5

    .line 981
    iget-object v0, p0, Lcom/doctruyen/reader/ReaderActivity;->currentWebUrl:Ljava/lang/String;

    move-object v6, v0

    goto :goto_3

    .line 980
    :cond_5
    move-object v6, v0

    .line 984
    :goto_3
    invoke-static {p0}, Lcom/doctruyen/data/AppDatabase;->getInstance(Landroid/content/Context;)Lcom/doctruyen/data/AppDatabase;

    move-result-object v1

    iget v4, p0, Lcom/doctruyen/reader/ReaderActivity;->currentChapterIndex:I

    iget-object v5, p0, Lcom/doctruyen/reader/ReaderActivity;->currentActiveChapterTitle:Ljava/lang/String;

    iget-boolean v7, p0, Lcom/doctruyen/reader/ReaderActivity;->isWeb:Z

    iget v8, p0, Lcom/doctruyen/reader/ReaderActivity;->currentParagraphIndex:I

    iget v9, p0, Lcom/doctruyen/reader/ReaderActivity;->currentScrollY:I

    invoke-virtual/range {v1 .. v9}, Lcom/doctruyen/data/AppDatabase;->saveProgress(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZII)V

    .line 994
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/doctruyen/reader/ReaderActivity;->lastSaveTime:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    .line 975
    :cond_6
    :goto_4
    return-void

    .line 995
    :catch_0
    move-exception v0

    :goto_5
    nop

    .line 996
    return-void
.end method

.method private showTimerDialog()V
    .locals 6

    .line 726
    const-string v4, "60 ph\u00fat"

    const-string v5, "H\u1ebft ch\u01b0\u01a1ng d\u1eebng"

    const-string v0, "T\u1eaft h\u1eb9n gi\u1edd"

    const-string v1, "15 ph\u00fat"

    const-string v2, "30 ph\u00fat"

    const-string v3, "45 ph\u00fat"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    .line 727
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 728
    const-string v2, "\u23f1 H\u1eb9n Gi\u1edd T\u1eaft \u0110\u1ecdc"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/doctruyen/reader/ReaderActivity$36;

    invoke-direct {v2, p0}, Lcom/doctruyen/reader/ReaderActivity$36;-><init>(Lcom/doctruyen/reader/ReaderActivity;)V

    .line 729
    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 751
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 752
    return-void
.end method

.method private showTocDialog()V
    .locals 5

    .line 1292
    iget-boolean v0, p0, Lcom/doctruyen/reader/ReaderActivity;->isWeb:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1293
    const-string v0, "Ch\u1ebf \u0111\u1ed9 web kh\u00f4ng c\u00f3 danh m\u1ee5c c\u1ed1 \u0111\u1ecbnh"

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1294
    return-void

    .line 1296
    :cond_0
    iget-object v0, p0, Lcom/doctruyen/reader/ReaderActivity;->chapters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 1298
    :cond_1
    iget-object v0, p0, Lcom/doctruyen/reader/ReaderActivity;->chapters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 1299
    nop

    :goto_0
    iget-object v2, p0, Lcom/doctruyen/reader/ReaderActivity;->chapters:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 1300
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ". "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/doctruyen/reader/ReaderActivity;->chapters:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/doctruyen/reader/epub/Chapter;

    invoke-virtual {v4}, Lcom/doctruyen/reader/epub/Chapter;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1299
    move v1, v3

    goto :goto_0

    .line 1303
    :cond_2
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "M\u1ee5c L\u1ee5c ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/doctruyen/reader/ReaderActivity;->chapters:Ljava/util/List;

    .line 1304
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ch\u01b0\u01a1ng)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/doctruyen/reader/ReaderActivity$22;

    invoke-direct {v2, p0}, Lcom/doctruyen/reader/ReaderActivity$22;-><init>(Lcom/doctruyen/reader/ReaderActivity;)V

    .line 1305
    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1308
    const-string v1, "\u0110\u00f3ng"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1309
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1310
    return-void
.end method

.method private showTtsSettingsDialog()V
    .locals 16

    .line 1055
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/doctruyen/reader/ReaderActivity;->ttsService:Lcom/doctruyen/tts/TtsPlaybackService;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 1056
    const-string v1, "D\u1ecbch v\u1ee5 TTS ch\u01b0a s\u1eb5n s\u00e0ng"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1057
    return-void

    .line 1060
    :cond_0
    new-instance v1, Landroid/widget/ScrollView;

    invoke-direct {v1, v0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 1061
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1062
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1063
    const/16 v4, 0x20

    const/16 v5, 0x18

    invoke-virtual {v3, v4, v5, v4, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1065
    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1066
    const-string v7, "Engine: Android TextToSpeech"

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1067
    const/high16 v7, 0x41600000    # 14.0f

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1068
    const-string v8, "#495057"

    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1069
    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1071
    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1072
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "TTS Engine: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v0, Lcom/doctruyen/reader/ReaderActivity;->ttsService:Lcom/doctruyen/tts/TtsPlaybackService;

    invoke-virtual {v10}, Lcom/doctruyen/tts/TtsPlaybackService;->getCurrentEngineName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1073
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1074
    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1075
    const/16 v9, 0x8

    invoke-virtual {v6, v2, v9, v2, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1076
    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1078
    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1079
    const-string v10, "Ng\u00f4n ng\u1eef: Ti\u1ebfng Vi\u1ec7t (Vi\u1ec7t Nam)"

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1080
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1081
    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1082
    const/16 v7, 0x10

    invoke-virtual {v6, v2, v2, v2, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1083
    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1085
    iget-object v6, v0, Lcom/doctruyen/reader/ReaderActivity;->ttsService:Lcom/doctruyen/tts/TtsPlaybackService;

    invoke-virtual {v6}, Lcom/doctruyen/tts/TtsPlaybackService;->getVietnameseVoices()Ljava/util/List;

    move-result-object v6

    .line 1086
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v7

    const/high16 v8, 0x41700000    # 15.0f

    if-nez v7, :cond_3

    .line 1087
    new-instance v7, Landroid/widget/TextView;

    invoke-direct {v7, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1088
    const-string v10, "Ch\u1ecdn Gi\u1ecdng \u0110\u1ecdc:"

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1089
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1090
    const/high16 v10, -0x1000000

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1091
    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1093
    new-instance v7, Landroid/widget/Spinner;

    invoke-direct {v7, v0}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;)V

    .line 1094
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 1095
    nop

    .line 1096
    iget-object v11, v0, Lcom/doctruyen/reader/ReaderActivity;->ttsService:Lcom/doctruyen/tts/TtsPlaybackService;

    invoke-virtual {v11}, Lcom/doctruyen/tts/TtsPlaybackService;->getCurrentVoice()Landroid/speech/tts/Voice;

    move-result-object v11

    .line 1097
    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_0
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v14

    if-ge v12, v14, :cond_2

    .line 1098
    invoke-interface {v6, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/speech/tts/Voice;

    .line 1099
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Gi\u1ecdng \u0111\u1ecdc "

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v15, v12, 0x1

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v2, " ("

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v14}, Landroid/speech/tts/Voice;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1100
    if-eqz v11, :cond_1

    invoke-virtual {v11}, Landroid/speech/tts/Voice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14}, Landroid/speech/tts/Voice;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1101
    move v13, v12

    .line 1097
    :cond_1
    move v12, v15

    const/4 v2, 0x0

    const/16 v4, 0x20

    goto :goto_0

    .line 1104
    :cond_2
    new-instance v2, Landroid/widget/ArrayAdapter;

    const v4, 0x1090009

    invoke-direct {v2, v0, v4, v10}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 1105
    invoke-virtual {v7, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1106
    invoke-virtual {v7, v13}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1107
    new-instance v2, Lcom/doctruyen/reader/ReaderActivity$6;

    invoke-direct {v2, v0, v6}, Lcom/doctruyen/reader/ReaderActivity$6;-><init>(Lcom/doctruyen/reader/ReaderActivity;Ljava/util/List;)V

    invoke-virtual {v7, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1115
    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1118
    :cond_3
    iget-object v2, v0, Lcom/doctruyen/reader/ReaderActivity;->ttsService:Lcom/doctruyen/tts/TtsPlaybackService;

    invoke-virtual {v2}, Lcom/doctruyen/tts/TtsPlaybackService;->getSpeed()F

    move-result v2

    const/high16 v4, 0x42c80000    # 100.0f

    mul-float v2, v2, v4

    float-to-int v2, v2

    .line 1119
    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1120
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "T\u1ed1c \u0111\u1ed9: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1121
    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1122
    const/4 v7, 0x0

    invoke-virtual {v6, v7, v5, v7, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1123
    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1125
    new-instance v7, Landroid/widget/SeekBar;

    invoke-direct {v7, v0}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    .line 1126
    const/16 v10, 0x12c

    invoke-virtual {v7, v10}, Landroid/widget/SeekBar;->setMax(I)V

    .line 1127
    add-int/lit8 v2, v2, -0x32

    invoke-virtual {v7, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1128
    new-instance v2, Lcom/doctruyen/reader/ReaderActivity$7;

    invoke-direct {v2, v0, v6}, Lcom/doctruyen/reader/ReaderActivity$7;-><init>(Lcom/doctruyen/reader/ReaderActivity;Landroid/widget/TextView;)V

    invoke-virtual {v7, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 1140
    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1142
    iget-object v2, v0, Lcom/doctruyen/reader/ReaderActivity;->ttsService:Lcom/doctruyen/tts/TtsPlaybackService;

    invoke-virtual {v2}, Lcom/doctruyen/tts/TtsPlaybackService;->getPitch()F

    move-result v2

    mul-float v2, v2, v4

    float-to-int v2, v2

    .line 1143
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1144
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u0110\u1ed9 cao: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1145
    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1146
    const/4 v7, 0x0

    invoke-virtual {v4, v7, v5, v7, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1147
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1149
    new-instance v5, Landroid/widget/SeekBar;

    invoke-direct {v5, v0}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    .line 1150
    const/16 v6, 0x96

    invoke-virtual {v5, v6}, Landroid/widget/SeekBar;->setMax(I)V

    .line 1151
    add-int/lit8 v2, v2, -0x32

    invoke-virtual {v5, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1152
    new-instance v2, Lcom/doctruyen/reader/ReaderActivity$8;

    invoke-direct {v2, v0, v4}, Lcom/doctruyen/reader/ReaderActivity$8;-><init>(Lcom/doctruyen/reader/ReaderActivity;Landroid/widget/TextView;)V

    invoke-virtual {v5, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 1164
    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1166
    new-instance v2, Landroid/widget/Button;

    invoke-direct {v2, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 1167
    const-string v4, "\ud83d\udd0a Nghe th\u1eed gi\u1ecdng \u0111\u1ecdc"

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1168
    const-string v4, "#0D6EFD"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 1169
    const/4 v4, -0x1

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setTextColor(I)V

    .line 1170
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x2

    invoke-direct {v5, v4, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1171
    const/16 v4, 0x20

    const/4 v7, 0x0

    invoke-virtual {v5, v7, v4, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 1172
    invoke-virtual {v2, v5}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1173
    new-instance v4, Lcom/doctruyen/reader/ReaderActivity$35;

    invoke-direct {v4, v0}, Lcom/doctruyen/reader/ReaderActivity$35;-><init>(Lcom/doctruyen/reader/ReaderActivity;)V

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1176
    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1178
    invoke-virtual {v1, v3}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 1180
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1181
    const-string v3, "C\u00e0i \u0110\u1eb7t Gi\u1ecdng \u0110\u1ecdc & TTS"

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 1182
    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 1183
    const-string v2, "\u0110\u00f3ng"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 1184
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1185
    return-void
.end method

.method private startTtsFromVisibleParagraph()V
    .locals 3

    .line 632
    iget-object v0, p0, Lcom/doctruyen/reader/ReaderActivity;->currentParagraphs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 634
    iget-object v0, p0, Lcom/doctruyen/reader/ReaderActivity;->webView:Landroid/webkit/WebView;

    new-instance v1, Lcom/doctruyen/reader/ReaderActivity$0;

    invoke-direct {v1, p0}, Lcom/doctruyen/reader/ReaderActivity$0;-><init>(Lcom/doctruyen/reader/ReaderActivity;)V

    const-string v2, "getAllParagraphs()"

    invoke-virtual {v0, v2, v1}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 655
    return-void

    .line 657
    :cond_0
    invoke-direct {p0}, Lcom/doctruyen/reader/ReaderActivity;->doStartTts()V

    .line 658
    return-void
.end method

.method private styleButton(Landroid/widget/Button;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1279
    if-nez p1, :cond_0

    return-void

    .line 1280
    :cond_0
    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    .line 1281
    const-string v0, "dark"

    iget-object v1, p0, Lcom/doctruyen/reader/ReaderActivity;->currentTheme:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "#333A4D"

    :goto_0
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    :cond_1
    const-string v0, "sepia"

    iget-object v1, p0, Lcom/doctruyen/reader/ReaderActivity;->currentTheme:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "#DECDB0"

    goto :goto_0

    :cond_2
    const-string v0, "#D1D5DB"

    goto :goto_0

    .line 1282
    :goto_1
    const/4 v1, 0x1

    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {p2, v0, v1, v2, p0}, Lcom/doctruyen/ui/UiTheme;->roundBox(IIIFLandroid/content/Context;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1283
    invoke-static {p3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setTextColor(I)V

    .line 1284
    return-void
.end method

.method private switchToPlayerUi(Z)V
    .locals 2

    .line 678
    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p1, :cond_0

    .line 679
    iget-object p1, p0, Lcom/doctruyen/reader/ReaderActivity;->standardControlBar:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 680
    iget-object p1, p0, Lcom/doctruyen/reader/ReaderActivity;->ttsPlayerPanel:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 682
    :cond_0
    iget-object p1, p0, Lcom/doctruyen/reader/ReaderActivity;->ttsPlayerPanel:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 683
    iget-object p1, p0, Lcom/doctruyen/reader/ReaderActivity;->standardControlBar:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 685
    :goto_0
    return-void
.end method

.method private updatePlayerUi(Z)V
    .locals 3

    .line 688
    const/high16 v0, 0x41000000    # 8.0f

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 689
    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/doctruyen/reader/ReaderActivity;->switchToPlayerUi(Z)V

    .line 690
    iget-object p1, p0, Lcom/doctruyen/reader/ReaderActivity;->btnPlayerPlayPause:Landroid/widget/Button;

    if-eqz p1, :cond_2

    .line 691
    iget-object p1, p0, Lcom/doctruyen/reader/ReaderActivity;->btnPlayerPlayPause:Landroid/widget/Button;

    const-string v2, "\u23f8 T\u1ea0M D\u1eeaNG"

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 692
    iget-object p1, p0, Lcom/doctruyen/reader/ReaderActivity;->btnPlayerPlayPause:Landroid/widget/Button;

    sget v2, Lcom/doctruyen/ui/UiTheme;->ACCENT_ROSE:I

    invoke-static {v2, v1, v1, v0, p0}, Lcom/doctruyen/ui/UiTheme;->roundBox(IIIFLandroid/content/Context;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 695
    :cond_0
    iget-object p1, p0, Lcom/doctruyen/reader/ReaderActivity;->btnPlayerPlayPause:Landroid/widget/Button;

    if-eqz p1, :cond_1

    .line 696
    iget-object p1, p0, Lcom/doctruyen/reader/ReaderActivity;->btnPlayerPlayPause:Landroid/widget/Button;

    const-string v2, "\u25b6 TI\u1ebeP T\u1ee4C"

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 697
    iget-object p1, p0, Lcom/doctruyen/reader/ReaderActivity;->btnPlayerPlayPause:Landroid/widget/Button;

    sget v2, Lcom/doctruyen/ui/UiTheme;->ACCENT_BLUE:I

    invoke-static {v2, v1, v1, v0, p0}, Lcom/doctruyen/ui/UiTheme;->roundBox(IIIFLandroid/content/Context;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 699
    :cond_1
    iget-object p1, p0, Lcom/doctruyen/reader/ReaderActivity;->webView:Landroid/webkit/WebView;

    const-string v0, "javascript:clearHighlight()"

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 701
    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method synthetic lambda$createStandardControlBar$1$com-doctruyen-reader-ReaderActivity(Landroid/view/View;)V
    .locals 0

    .line 417
    invoke-direct {p0}, Lcom/doctruyen/reader/ReaderActivity;->loadPrevChapter()V

    return-void
.end method

.method synthetic lambda$createStandardControlBar$2$com-doctruyen-reader-ReaderActivity(Landroid/view/View;)V
    .locals 0

    .line 425
    invoke-direct {p0}, Lcom/doctruyen/reader/ReaderActivity;->startTtsFromVisibleParagraph()V

    return-void
.end method

.method synthetic lambda$createStandardControlBar$3$com-doctruyen-reader-ReaderActivity(Landroid/view/View;)V
    .locals 0

    .line 431
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/doctruyen/reader/ReaderActivity;->loadNextChapter(Z)V

    return-void
.end method

.method synthetic lambda$createStandardControlBar$4$com-doctruyen-reader-ReaderActivity(Landroid/view/View;)V
    .locals 0

    .line 444
    invoke-direct {p0}, Lcom/doctruyen/reader/ReaderActivity;->showTocDialog()V

    return-void
.end method

.method synthetic lambda$createStandardControlBar$5$com-doctruyen-reader-ReaderActivity(Landroid/view/View;)V
    .locals 0

    .line 450
    invoke-direct {p0}, Lcom/doctruyen/reader/ReaderActivity;->showTtsSettingsDialog()V

    return-void
.end method

.method synthetic lambda$createStandardControlBar$6$com-doctruyen-reader-ReaderActivity(Landroid/view/View;)V
    .locals 0

    .line 456
    invoke-direct {p0}, Lcom/doctruyen/reader/ReaderActivity;->cycleTheme()V

    return-void
.end method

.method synthetic lambda$createStandardControlBar$7$com-doctruyen-reader-ReaderActivity(Landroid/view/View;)V
    .locals 0

    .line 462
    const/4 p1, -0x2

    invoke-direct {p0, p1}, Lcom/doctruyen/reader/ReaderActivity;->changeFontSize(I)V

    return-void
.end method

.method synthetic lambda$createStandardControlBar$8$com-doctruyen-reader-ReaderActivity(Landroid/view/View;)V
    .locals 0

    .line 468
    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lcom/doctruyen/reader/ReaderActivity;->changeFontSize(I)V

    return-void
.end method

.method synthetic lambda$createTtsPlayerPanel$10$com-doctruyen-reader-ReaderActivity(Landroid/view/View;)V
    .locals 0

    .line 513
    invoke-direct {p0}, Lcom/doctruyen/reader/ReaderActivity;->closeTtsPlayer()V

    return-void
.end method

.method synthetic lambda$createTtsPlayerPanel$11$com-doctruyen-reader-ReaderActivity(Landroid/view/View;)V
    .locals 0

    .line 528
    invoke-direct {p0}, Lcom/doctruyen/reader/ReaderActivity;->loadPrevChapter()V

    return-void
.end method

.method synthetic lambda$createTtsPlayerPanel$12$com-doctruyen-reader-ReaderActivity(Landroid/view/View;)V
    .locals 1

    .line 536
    iget-object p1, p0, Lcom/doctruyen/reader/ReaderActivity;->ttsService:Lcom/doctruyen/tts/TtsPlaybackService;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/doctruyen/reader/ReaderActivity;->ttsService:Lcom/doctruyen/tts/TtsPlaybackService;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lcom/doctruyen/tts/TtsPlaybackService;->skipParagraph(I)V

    .line 537
    :cond_0
    return-void
.end method

.method synthetic lambda$createTtsPlayerPanel$13$com-doctruyen-reader-ReaderActivity(Landroid/view/View;)V
    .locals 4

    .line 547
    iget-object p1, p0, Lcom/doctruyen/reader/ReaderActivity;->ttsService:Lcom/doctruyen/tts/TtsPlaybackService;

    if-eqz p1, :cond_4

    .line 548
    iget-object p1, p0, Lcom/doctruyen/reader/ReaderActivity;->ttsService:Lcom/doctruyen/tts/TtsPlaybackService;

    invoke-virtual {p1}, Lcom/doctruyen/tts/TtsPlaybackService;->isPlaying()Z

    move-result p1

    .line 551
    iget-object v0, p0, Lcom/doctruyen/reader/ReaderActivity;->ttsService:Lcom/doctruyen/tts/TtsPlaybackService;

    .line 548
    if-eqz p1, :cond_0

    .line 549
    invoke-virtual {v0}, Lcom/doctruyen/tts/TtsPlaybackService;->pause()V

    goto :goto_1

    .line 551
    :cond_0
    invoke-virtual {v0}, Lcom/doctruyen/tts/TtsPlaybackService;->getCurrentParagraphIndex()I

    move-result p1

    iget-object v0, p0, Lcom/doctruyen/reader/ReaderActivity;->currentParagraphs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_3

    .line 552
    iget-object p1, p0, Lcom/doctruyen/reader/ReaderActivity;->epubBook:Lcom/doctruyen/reader/epub/BookMeta;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/doctruyen/reader/ReaderActivity;->epubBook:Lcom/doctruyen/reader/epub/BookMeta;

    invoke-virtual {p1}, Lcom/doctruyen/reader/epub/BookMeta;->getTitle()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/doctruyen/reader/ReaderActivity;->bookTitle:Ljava/lang/String;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/doctruyen/reader/ReaderActivity;->bookTitle:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string p1, "Truy\u1ec7n Web"

    .line 553
    :goto_0
    iget-object v0, p0, Lcom/doctruyen/reader/ReaderActivity;->ttsService:Lcom/doctruyen/tts/TtsPlaybackService;

    iget-object v1, p0, Lcom/doctruyen/reader/ReaderActivity;->currentActiveChapterTitle:Ljava/lang/String;

    iget-object v2, p0, Lcom/doctruyen/reader/ReaderActivity;->currentParagraphs:Ljava/util/List;

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/doctruyen/tts/TtsPlaybackService;->playParagraphs(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;I)V

    .line 554
    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/doctruyen/reader/ReaderActivity;->switchToPlayerUi(Z)V

    .line 555
    goto :goto_1

    .line 556
    :cond_3
    iget-object p1, p0, Lcom/doctruyen/reader/ReaderActivity;->ttsService:Lcom/doctruyen/tts/TtsPlaybackService;

    invoke-virtual {p1}, Lcom/doctruyen/tts/TtsPlaybackService;->resume()V

    .line 560
    :cond_4
    :goto_1
    return-void
.end method

.method synthetic lambda$createTtsPlayerPanel$14$com-doctruyen-reader-ReaderActivity(Landroid/view/View;)V
    .locals 1

    .line 568
    iget-object p1, p0, Lcom/doctruyen/reader/ReaderActivity;->ttsService:Lcom/doctruyen/tts/TtsPlaybackService;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/doctruyen/reader/ReaderActivity;->ttsService:Lcom/doctruyen/tts/TtsPlaybackService;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/doctruyen/tts/TtsPlaybackService;->skipParagraph(I)V

    .line 569
    :cond_0
    return-void
.end method

.method synthetic lambda$createTtsPlayerPanel$15$com-doctruyen-reader-ReaderActivity(Landroid/view/View;)V
    .locals 0

    .line 576
    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/doctruyen/reader/ReaderActivity;->loadNextChapter(Z)V

    return-void
.end method

.method synthetic lambda$createTtsPlayerPanel$16$com-doctruyen-reader-ReaderActivity(Landroid/view/View;)V
    .locals 0

    .line 616
    invoke-direct {p0}, Lcom/doctruyen/reader/ReaderActivity;->cycleTtsSpeed()V

    return-void
.end method

.method synthetic lambda$createTtsPlayerPanel$17$com-doctruyen-reader-ReaderActivity(Landroid/view/View;)V
    .locals 0

    .line 623
    invoke-direct {p0}, Lcom/doctruyen/reader/ReaderActivity;->showTtsSettingsDialog()V

    return-void
.end method

.method synthetic lambda$createTtsPlayerPanel$9$com-doctruyen-reader-ReaderActivity(Landroid/view/View;)V
    .locals 0

    .line 504
    invoke-direct {p0}, Lcom/doctruyen/reader/ReaderActivity;->showTimerDialog()V

    return-void
.end method

.method synthetic lambda$doStartTts$19$com-doctruyen-reader-ReaderActivity(Ljava/lang/String;)V
    .locals 4

    .line 662
    nop

    .line 664
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    const-string v1, "null"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 665
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, p1

    goto :goto_0

    .line 667
    :catch_0
    move-exception p1

    :cond_0
    :goto_0
    nop

    .line 669
    iget-object p1, p0, Lcom/doctruyen/reader/ReaderActivity;->epubBook:Lcom/doctruyen/reader/epub/BookMeta;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/doctruyen/reader/ReaderActivity;->epubBook:Lcom/doctruyen/reader/epub/BookMeta;

    invoke-virtual {p1}, Lcom/doctruyen/reader/epub/BookMeta;->getTitle()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/doctruyen/reader/ReaderActivity;->bookTitle:Ljava/lang/String;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/doctruyen/reader/ReaderActivity;->bookTitle:Ljava/lang/String;

    goto :goto_1

    :cond_2
    const-string p1, "Truy\u1ec7n Web"

    .line 670
    :goto_1
    iget-object v1, p0, Lcom/doctruyen/reader/ReaderActivity;->ttsService:Lcom/doctruyen/tts/TtsPlaybackService;

    if-eqz v1, :cond_3

    .line 671
    iget-object v1, p0, Lcom/doctruyen/reader/ReaderActivity;->ttsService:Lcom/doctruyen/tts/TtsPlaybackService;

    iget-object v2, p0, Lcom/doctruyen/reader/ReaderActivity;->currentActiveChapterTitle:Ljava/lang/String;

    iget-object v3, p0, Lcom/doctruyen/reader/ReaderActivity;->currentParagraphs:Ljava/util/List;

    invoke-virtual {v1, p1, v2, v3, v0}, Lcom/doctruyen/tts/TtsPlaybackService;->playParagraphs(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;I)V

    .line 672
    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/doctruyen/reader/ReaderActivity;->switchToPlayerUi(Z)V

    .line 674
    :cond_3
    return-void
.end method

.method synthetic lambda$loadEpubData$24$com-doctruyen-reader-ReaderActivity()V
    .locals 3

    .line 787
    iget-object v0, p0, Lcom/doctruyen/reader/ReaderActivity;->chapters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 788
    const-string v0, "Kh\u00f4ng t\u00ecm th\u1ea5y ch\u01b0\u01a1ng n\u00e0o trong file EPUB"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 789
    iget-object v0, p0, Lcom/doctruyen/reader/ReaderActivity;->tvStatus:Landroid/widget/TextView;

    const-string v1, "L\u1ed7i: File EPUB kh\u00f4ng c\u00f3 ch\u01b0\u01a1ng"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 790
    return-void

    .line 792
    :cond_0
    iget v0, p0, Lcom/doctruyen/reader/ReaderActivity;->currentChapterIndex:I

    const/4 v1, 0x0

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/doctruyen/reader/ReaderActivity;->currentChapterIndex:I

    iget-object v2, p0, Lcom/doctruyen/reader/ReaderActivity;->chapters:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_2

    .line 793
    :cond_1
    iput v1, p0, Lcom/doctruyen/reader/ReaderActivity;->currentChapterIndex:I

    .line 795
    :cond_2
    iget v0, p0, Lcom/doctruyen/reader/ReaderActivity;->currentChapterIndex:I

    invoke-direct {p0, v0, v1}, Lcom/doctruyen/reader/ReaderActivity;->loadLocalChapter(IZ)V

    .line 796
    return-void
.end method

.method synthetic lambda$loadEpubData$25$com-doctruyen-reader-ReaderActivity(Ljava/lang/Exception;)V
    .locals 3

    .line 799
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "L\u1ed7i m\u1edf file: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 800
    iget-object v0, p0, Lcom/doctruyen/reader/ReaderActivity;->tvStatus:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "L\u1ed7i: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 801
    return-void
.end method

.method synthetic lambda$loadEpubData$26$com-doctruyen-reader-ReaderActivity()V
    .locals 3

    .line 784
    :try_start_0
    iget-object v0, p0, Lcom/doctruyen/reader/ReaderActivity;->bookPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/doctruyen/reader/epub/EpubLazyEngine;->parseBook(Ljava/lang/String;)Lcom/doctruyen/reader/epub/BookMeta;

    move-result-object v0

    iput-object v0, p0, Lcom/doctruyen/reader/ReaderActivity;->epubBook:Lcom/doctruyen/reader/epub/BookMeta;

    .line 785
    iget-object v0, p0, Lcom/doctruyen/reader/ReaderActivity;->epubBook:Lcom/doctruyen/reader/epub/BookMeta;

    invoke-virtual {v0}, Lcom/doctruyen/reader/epub/BookMeta;->getChapters()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/doctruyen/reader/ReaderActivity;->chapters:Ljava/util/List;

    .line 786
    iget-object v0, p0, Lcom/doctruyen/reader/ReaderActivity;->mainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/doctruyen/reader/ReaderActivity$39;

    invoke-direct {v1, p0}, Lcom/doctruyen/reader/ReaderActivity$39;-><init>(Lcom/doctruyen/reader/ReaderActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 802
    goto :goto_0

    .line 797
    :catch_0
    move-exception v0

    .line 798
    iget-object v1, p0, Lcom/doctruyen/reader/ReaderActivity;->mainHandler:Landroid/os/Handler;

    new-instance v2, Lcom/doctruyen/reader/ReaderActivity$40;

    invoke-direct {v2, p0, v0}, Lcom/doctruyen/reader/ReaderActivity$40;-><init>(Lcom/doctruyen/reader/ReaderActivity;Ljava/lang/Exception;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 803
    :goto_0
    return-void
.end method

.method synthetic lambda$loadLocalChapter$27$com-doctruyen-reader-ReaderActivity(Lcom/doctruyen/reader/epub/Chapter;Ljava/lang/String;I)V
    .locals 8

    .line 823
    invoke-virtual {p1}, Lcom/doctruyen/reader/epub/Chapter;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/doctruyen/reader/ReaderActivity;->injectChapterToWeb(Ljava/lang/String;Ljava/lang/String;)V

    .line 824
    invoke-static {p0}, Lcom/doctruyen/data/AppDatabase;->getInstance(Landroid/content/Context;)Lcom/doctruyen/data/AppDatabase;

    move-result-object v1

    iget-object v2, p0, Lcom/doctruyen/reader/ReaderActivity;->bookPath:Ljava/lang/String;

    iget-object p2, p0, Lcom/doctruyen/reader/ReaderActivity;->epubBook:Lcom/doctruyen/reader/epub/BookMeta;

    invoke-virtual {p2}, Lcom/doctruyen/reader/epub/BookMeta;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/doctruyen/reader/epub/Chapter;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/doctruyen/reader/epub/Chapter;->getHref()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    move v4, p3

    invoke-virtual/range {v1 .. v7}, Lcom/doctruyen/data/AppDatabase;->saveProgress(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)V

    .line 825
    return-void
.end method

.method synthetic lambda$loadLocalChapter$28$com-doctruyen-reader-ReaderActivity(Ljava/lang/Exception;)V
    .locals 2

    .line 827
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "L\u1ed7i t\u1ea3i ch\u01b0\u01a1ng: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method synthetic lambda$loadLocalChapter$29$com-doctruyen-reader-ReaderActivity(Lcom/doctruyen/reader/epub/Chapter;I)V
    .locals 3

    .line 817
    :try_start_0
    iget-boolean v0, p0, Lcom/doctruyen/reader/ReaderActivity;->isTxt:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 820
    iget-object v1, p0, Lcom/doctruyen/reader/ReaderActivity;->bookPath:Ljava/lang/String;

    .line 817
    if-eqz v0, :cond_0

    .line 818
    :try_start_1
    invoke-virtual {p1}, Lcom/doctruyen/reader/epub/Chapter;->getHref()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/doctruyen/reader/txt/TxtLazyEngine;->getChapterHtml(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 820
    :cond_0
    invoke-virtual {p1}, Lcom/doctruyen/reader/epub/Chapter;->getHref()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/doctruyen/reader/epub/EpubLazyEngine;->getChapterHtml(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 822
    :goto_0
    iget-object v1, p0, Lcom/doctruyen/reader/ReaderActivity;->mainHandler:Landroid/os/Handler;

    new-instance v2, Lcom/doctruyen/reader/ReaderActivity$37;

    invoke-direct {v2, p0, p1, v0, p2}, Lcom/doctruyen/reader/ReaderActivity$37;-><init>(Lcom/doctruyen/reader/ReaderActivity;Lcom/doctruyen/reader/epub/Chapter;Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 828
    goto :goto_1

    .line 826
    :catch_0
    move-exception p1

    .line 827
    iget-object p2, p0, Lcom/doctruyen/reader/ReaderActivity;->mainHandler:Landroid/os/Handler;

    new-instance v0, Lcom/doctruyen/reader/ReaderActivity$38;

    invoke-direct {v0, p0, p1}, Lcom/doctruyen/reader/ReaderActivity$38;-><init>(Lcom/doctruyen/reader/ReaderActivity;Ljava/lang/Exception;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 829
    :goto_1
    return-void
.end method

.method synthetic lambda$loadTxtData$21$com-doctruyen-reader-ReaderActivity()V
    .locals 3

    .line 761
    iget-object v0, p0, Lcom/doctruyen/reader/ReaderActivity;->chapters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 762
    const-string v0, "Kh\u00f4ng t\u00ecm th\u1ea5y n\u1ed9i dung trong t\u1ec7p TXT"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 763
    iget-object v0, p0, Lcom/doctruyen/reader/ReaderActivity;->tvStatus:Landroid/widget/TextView;

    const-string v1, "L\u1ed7i: T\u1ec7p TXT r\u1ed7ng"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 764
    return-void

    .line 766
    :cond_0
    iget v0, p0, Lcom/doctruyen/reader/ReaderActivity;->currentChapterIndex:I

    const/4 v1, 0x0

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/doctruyen/reader/ReaderActivity;->currentChapterIndex:I

    iget-object v2, p0, Lcom/doctruyen/reader/ReaderActivity;->chapters:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_2

    .line 767
    :cond_1
    iput v1, p0, Lcom/doctruyen/reader/ReaderActivity;->currentChapterIndex:I

    .line 769
    :cond_2
    iget v0, p0, Lcom/doctruyen/reader/ReaderActivity;->currentChapterIndex:I

    invoke-direct {p0, v0, v1}, Lcom/doctruyen/reader/ReaderActivity;->loadLocalChapter(IZ)V

    .line 770
    return-void
.end method

.method synthetic lambda$loadTxtData$22$com-doctruyen-reader-ReaderActivity(Ljava/lang/Exception;)V
    .locals 3

    .line 773
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "L\u1ed7i m\u1edf t\u1ec7p TXT: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 774
    iget-object v0, p0, Lcom/doctruyen/reader/ReaderActivity;->tvStatus:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "L\u1ed7i: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 775
    return-void
.end method

.method synthetic lambda$loadTxtData$23$com-doctruyen-reader-ReaderActivity()V
    .locals 3

    .line 758
    :try_start_0
    iget-object v0, p0, Lcom/doctruyen/reader/ReaderActivity;->bookPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/doctruyen/reader/txt/TxtLazyEngine;->parseTxtBook(Ljava/lang/String;)Lcom/doctruyen/reader/epub/BookMeta;

    move-result-object v0

    iput-object v0, p0, Lcom/doctruyen/reader/ReaderActivity;->epubBook:Lcom/doctruyen/reader/epub/BookMeta;

    .line 759
    iget-object v0, p0, Lcom/doctruyen/reader/ReaderActivity;->epubBook:Lcom/doctruyen/reader/epub/BookMeta;

    invoke-virtual {v0}, Lcom/doctruyen/reader/epub/BookMeta;->getChapters()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/doctruyen/reader/ReaderActivity;->chapters:Ljava/util/List;

    .line 760
    iget-object v0, p0, Lcom/doctruyen/reader/ReaderActivity;->mainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/doctruyen/reader/ReaderActivity$23;

    invoke-direct {v1, p0}, Lcom/doctruyen/reader/ReaderActivity$23;-><init>(Lcom/doctruyen/reader/ReaderActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 776
    goto :goto_0

    .line 771
    :catch_0
    move-exception v0

    .line 772
    iget-object v1, p0, Lcom/doctruyen/reader/ReaderActivity;->mainHandler:Landroid/os/Handler;

    new-instance v2, Lcom/doctruyen/reader/ReaderActivity$24;

    invoke-direct {v2, p0, v0}, Lcom/doctruyen/reader/ReaderActivity$24;-><init>(Lcom/doctruyen/reader/ReaderActivity;Ljava/lang/Exception;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 777
    :goto_0
    return-void
.end method

.method synthetic lambda$loadWebChapter$30$com-doctruyen-reader-ReaderActivity(Lcom/doctruyen/reader/web/WebDirectScraper$ScrapedChapter;Ljava/lang/String;)V
    .locals 8

    .line 846
    iget-object v0, p0, Lcom/doctruyen/reader/ReaderActivity;->tvStatus:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/doctruyen/reader/web/WebDirectScraper$ScrapedChapter;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 847
    iget-object v0, p1, Lcom/doctruyen/reader/web/WebDirectScraper$ScrapedChapter;->title:Ljava/lang/String;

    iget-object v1, p1, Lcom/doctruyen/reader/web/WebDirectScraper$ScrapedChapter;->htmlContent:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/doctruyen/reader/ReaderActivity;->injectChapterToWeb(Ljava/lang/String;Ljava/lang/String;)V

    .line 848
    iget-object v0, p0, Lcom/doctruyen/reader/ReaderActivity;->bookTitle:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/doctruyen/reader/ReaderActivity;->bookTitle:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/doctruyen/reader/ReaderActivity;->bookTitle:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lcom/doctruyen/reader/web/WebDirectScraper$ScrapedChapter;->title:Ljava/lang/String;

    :goto_0
    move-object v3, v0

    .line 849
    invoke-static {p0}, Lcom/doctruyen/data/AppDatabase;->getInstance(Landroid/content/Context;)Lcom/doctruyen/data/AppDatabase;

    move-result-object v1

    iget-object v5, p1, Lcom/doctruyen/reader/web/WebDirectScraper$ScrapedChapter;->title:Ljava/lang/String;

    const/4 v7, 0x1

    const/4 v4, 0x0

    move-object v6, p2

    move-object v2, p2

    invoke-virtual/range {v1 .. v7}, Lcom/doctruyen/data/AppDatabase;->saveProgress(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)V

    .line 850
    return-void
.end method

.method synthetic lambda$loadWebChapter$31$com-doctruyen-reader-ReaderActivity(Ljava/lang/String;Z)V
    .locals 2

    .line 855
    iget-object v0, p0, Lcom/doctruyen/reader/ReaderActivity;->tvStatus:Landroid/widget/TextView;

    const-string v1, "\u0110ang d\u00f9ng tr\u00ecnh duy\u1ec7t n\u1ec1n gi\u1ea3i m\u00e3 trang..."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 856
    invoke-direct {p0, p1, p2}, Lcom/doctruyen/reader/ReaderActivity;->loadWebChapterViaHeadless(Ljava/lang/String;Z)V

    .line 857
    return-void
.end method

.method synthetic lambda$loadWebChapter$32$com-doctruyen-reader-ReaderActivity(Ljava/lang/String;Z)V
    .locals 2

    .line 861
    iget-object v0, p0, Lcom/doctruyen/reader/ReaderActivity;->tvStatus:Landroid/widget/TextView;

    const-string v1, "\u0110ang v\u01b0\u1ee3t b\u1ea3o m\u1eadt b\u1eb1ng tr\u00ecnh duy\u1ec7t n\u1ec1n..."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 862
    invoke-direct {p0, p1, p2}, Lcom/doctruyen/reader/ReaderActivity;->loadWebChapterViaHeadless(Ljava/lang/String;Z)V

    .line 863
    return-void
.end method

.method synthetic lambda$loadWebChapter$33$com-doctruyen-reader-ReaderActivity(Ljava/lang/String;Z)V
    .locals 3

    .line 840
    :try_start_0
    invoke-static {p1}, Lcom/doctruyen/reader/web/WebDirectScraper;->scrapeUrl(Ljava/lang/String;)Lcom/doctruyen/reader/web/WebDirectScraper$ScrapedChapter;

    move-result-object v0

    .line 841
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/doctruyen/reader/web/WebDirectScraper$ScrapedChapter;->htmlContent:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/doctruyen/reader/web/WebDirectScraper$ScrapedChapter;->htmlContent:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x3c

    if-le v1, v2, :cond_0

    .line 842
    iget-object v1, v0, Lcom/doctruyen/reader/web/WebDirectScraper$ScrapedChapter;->nextUrl:Ljava/lang/String;

    iput-object v1, p0, Lcom/doctruyen/reader/ReaderActivity;->nextWebUrl:Ljava/lang/String;

    .line 843
    iget-object v1, v0, Lcom/doctruyen/reader/web/WebDirectScraper$ScrapedChapter;->prevUrl:Ljava/lang/String;

    iput-object v1, p0, Lcom/doctruyen/reader/ReaderActivity;->prevWebUrl:Ljava/lang/String;

    .line 844
    iget-object v1, v0, Lcom/doctruyen/reader/web/WebDirectScraper$ScrapedChapter;->title:Ljava/lang/String;

    iput-object v1, p0, Lcom/doctruyen/reader/ReaderActivity;->currentActiveChapterTitle:Ljava/lang/String;

    .line 845
    iget-object v1, p0, Lcom/doctruyen/reader/ReaderActivity;->mainHandler:Landroid/os/Handler;

    new-instance v2, Lcom/doctruyen/reader/ReaderActivity$10;

    invoke-direct {v2, p0, v0, p1}, Lcom/doctruyen/reader/ReaderActivity$10;-><init>(Lcom/doctruyen/reader/ReaderActivity;Lcom/doctruyen/reader/web/WebDirectScraper$ScrapedChapter;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 851
    return-void

    .line 854
    :cond_0
    iget-object v0, p0, Lcom/doctruyen/reader/ReaderActivity;->mainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/doctruyen/reader/ReaderActivity$11;

    invoke-direct {v1, p0, p1, p2}, Lcom/doctruyen/reader/ReaderActivity$11;-><init>(Lcom/doctruyen/reader/ReaderActivity;Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 864
    goto :goto_0

    .line 858
    :catch_0
    move-exception v0

    .line 860
    iget-object v0, p0, Lcom/doctruyen/reader/ReaderActivity;->mainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/doctruyen/reader/ReaderActivity$12;

    invoke-direct {v1, p0, p1, p2}, Lcom/doctruyen/reader/ReaderActivity$12;-><init>(Lcom/doctruyen/reader/ReaderActivity;Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 865
    :goto_0
    return-void
.end method

.method synthetic lambda$showTimerDialog$20$com-doctruyen-reader-ReaderActivity(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 730
    nop

    .line 731
    const/4 p1, 0x1

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-ne p2, p1, :cond_0

    const/16 p1, 0xf

    goto :goto_0

    .line 732
    :cond_0
    const/4 p1, 0x2

    if-ne p2, p1, :cond_1

    const/16 p1, 0x1e

    goto :goto_0

    .line 733
    :cond_1
    const/4 p1, 0x3

    if-ne p2, p1, :cond_2

    const/16 p1, 0x2d

    goto :goto_0

    .line 734
    :cond_2
    const/4 p1, 0x4

    if-ne p2, p1, :cond_3

    const/16 p1, 0x3c

    goto :goto_0

    .line 735
    :cond_3
    const/4 p1, 0x5

    if-ne p2, p1, :cond_4

    const/4 p1, -0x1

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    .line 737
    :goto_0
    iget-object p2, p0, Lcom/doctruyen/reader/ReaderActivity;->ttsService:Lcom/doctruyen/tts/TtsPlaybackService;

    if-eqz p2, :cond_7

    .line 738
    iget-object p2, p0, Lcom/doctruyen/reader/ReaderActivity;->ttsService:Lcom/doctruyen/tts/TtsPlaybackService;

    invoke-virtual {p2, p1}, Lcom/doctruyen/tts/TtsPlaybackService;->setSleepTimer(I)V

    .line 739
    if-nez p1, :cond_5

    .line 740
    iget-object p1, p0, Lcom/doctruyen/reader/ReaderActivity;->btnPlayerTimer:Landroid/widget/Button;

    const-string p2, "\u23f1 H\u1eb9n gi\u1edd"

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 741
    const-string p1, "\u0110\u00e3 h\u1ee7y h\u1eb9n gi\u1edd"

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 742
    :cond_5
    nop

    .line 746
    iget-object p2, p0, Lcom/doctruyen/reader/ReaderActivity;->btnPlayerTimer:Landroid/widget/Button;

    .line 742
    if-ne p1, v0, :cond_6

    .line 743
    const-string p1, "\u23f1 H\u1ebft ch\u01b0\u01a1ng"

    invoke-virtual {p2, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 744
    const-string p1, "S\u1ebd d\u1eebng khi \u0111\u1ecdc h\u1ebft ch\u01b0\u01a1ng n\u00e0y"

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 746
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u23f1 "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "p"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 747
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "S\u1ebd d\u1eebng sau "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " ph\u00fat"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 750
    :cond_7
    :goto_1
    return-void
.end method

.method synthetic lambda$showTocDialog$35$com-doctruyen-reader-ReaderActivity(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1306
    iget-object p1, p0, Lcom/doctruyen/reader/ReaderActivity;->ttsService:Lcom/doctruyen/tts/TtsPlaybackService;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/doctruyen/reader/ReaderActivity;->ttsService:Lcom/doctruyen/tts/TtsPlaybackService;

    invoke-virtual {p1}, Lcom/doctruyen/tts/TtsPlaybackService;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-direct {p0, p2, p1}, Lcom/doctruyen/reader/ReaderActivity;->loadLocalChapter(IZ)V

    .line 1307
    return-void
.end method

.method synthetic lambda$showTtsSettingsDialog$34$com-doctruyen-reader-ReaderActivity(Landroid/view/View;)V
    .locals 1

    .line 1174
    iget-object p1, p0, Lcom/doctruyen/reader/ReaderActivity;->ttsService:Lcom/doctruyen/tts/TtsPlaybackService;

    const-string v0, "Xin ch\u00e0o, b\u1ea1n \u0111ang nghe th\u1eed gi\u1ecdng \u0111\u1ecdc c\u1ee7a \u1ee9ng d\u1ee5ng \u0110\u1ecdc Truy\u1ec7n."

    invoke-virtual {p1, v0}, Lcom/doctruyen/tts/TtsPlaybackService;->testVoice(Ljava/lang/String;)V

    .line 1175
    return-void
.end method

.method synthetic lambda$startTtsFromVisibleParagraph$18$com-doctruyen-reader-ReaderActivity(Ljava/lang/String;)V
    .locals 4

    .line 635
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    const-string v1, "null"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 637
    nop

    .line 638
    :try_start_0
    const-string v1, "\""

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 639
    new-instance v1, Lorg/json/JSONTokener;

    invoke-direct {v1, p1}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 641
    :cond_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 642
    iget-object p1, p0, Lcom/doctruyen/reader/ReaderActivity;->currentParagraphs:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 643
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge p1, v2, :cond_1

    .line 644
    iget-object v2, p0, Lcom/doctruyen/reader/ReaderActivity;->currentParagraphs:Ljava/util/List;

    invoke-virtual {v1, p1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 643
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 646
    :catch_0
    move-exception p1

    :cond_1
    nop

    .line 649
    :cond_2
    iget-object p1, p0, Lcom/doctruyen/reader/ReaderActivity;->currentParagraphs:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 650
    const-string p1, "N\u1ed9i dung ch\u01b0\u01a1ng ch\u01b0a s\u1eb5n s\u00e0ng \u0111\u1ec3 \u0111\u1ecdc"

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 651
    return-void

    .line 653
    :cond_3
    invoke-direct {p0}, Lcom/doctruyen/reader/ReaderActivity;->doStartTts()V

    .line 654
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    .line 273
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 275
    invoke-virtual {p0}, Lcom/doctruyen/reader/ReaderActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "extra_book_path"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/doctruyen/reader/ReaderActivity;->bookPath:Ljava/lang/String;

    .line 276
    invoke-virtual {p0}, Lcom/doctruyen/reader/ReaderActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "extra_book_title"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/doctruyen/reader/ReaderActivity;->bookTitle:Ljava/lang/String;

    .line 277
    invoke-virtual {p0}, Lcom/doctruyen/reader/ReaderActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "extra_is_web"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/doctruyen/reader/ReaderActivity;->isWeb:Z

    .line 278
    invoke-virtual {p0}, Lcom/doctruyen/reader/ReaderActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "extra_start_index"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/doctruyen/reader/ReaderActivity;->currentChapterIndex:I

    .line 279
    invoke-virtual {p0}, Lcom/doctruyen/reader/ReaderActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "extra_start_paragraph"

    const/4 v2, -0x1

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/doctruyen/reader/ReaderActivity;->targetStartParagraph:I

    .line 280
    invoke-virtual {p0}, Lcom/doctruyen/reader/ReaderActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "extra_start_scroll_y"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/doctruyen/reader/ReaderActivity;->targetStartScrollY:I

    .line 282
    iget p1, p0, Lcom/doctruyen/reader/ReaderActivity;->targetStartParagraph:I

    if-gez p1, :cond_2

    .line 283
    invoke-static {p0}, Lcom/doctruyen/data/AppDatabase;->getInstance(Landroid/content/Context;)Lcom/doctruyen/data/AppDatabase;

    move-result-object p1

    iget-object v0, p0, Lcom/doctruyen/reader/ReaderActivity;->bookPath:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/doctruyen/reader/ReaderActivity;->isWeb:Z

    invoke-virtual {p1, v0, v2}, Lcom/doctruyen/data/AppDatabase;->getProgress(Ljava/lang/String;Z)Lcom/doctruyen/data/AppDatabase$HistoryItem;

    move-result-object p1

    .line 284
    if-eqz p1, :cond_1

    .line 285
    iget v0, p0, Lcom/doctruyen/reader/ReaderActivity;->currentChapterIndex:I

    iget v2, p1, Lcom/doctruyen/data/AppDatabase$HistoryItem;->chapterIndex:I

    if-ne v0, v2, :cond_0

    .line 286
    iget v0, p1, Lcom/doctruyen/data/AppDatabase$HistoryItem;->paragraphIndex:I

    iput v0, p0, Lcom/doctruyen/reader/ReaderActivity;->targetStartParagraph:I

    .line 287
    iget p1, p1, Lcom/doctruyen/data/AppDatabase$HistoryItem;->scrollY:I

    iput p1, p0, Lcom/doctruyen/reader/ReaderActivity;->targetStartScrollY:I

    goto :goto_0

    .line 288
    :cond_0
    iget v0, p0, Lcom/doctruyen/reader/ReaderActivity;->currentChapterIndex:I

    if-nez v0, :cond_2

    iget v0, p1, Lcom/doctruyen/data/AppDatabase$HistoryItem;->chapterIndex:I

    if-lez v0, :cond_2

    .line 289
    iget v0, p1, Lcom/doctruyen/data/AppDatabase$HistoryItem;->chapterIndex:I

    iput v0, p0, Lcom/doctruyen/reader/ReaderActivity;->currentChapterIndex:I

    .line 290
    iget v0, p1, Lcom/doctruyen/data/AppDatabase$HistoryItem;->paragraphIndex:I

    iput v0, p0, Lcom/doctruyen/reader/ReaderActivity;->targetStartParagraph:I

    .line 291
    iget p1, p1, Lcom/doctruyen/data/AppDatabase$HistoryItem;->scrollY:I

    iput p1, p0, Lcom/doctruyen/reader/ReaderActivity;->targetStartScrollY:I

    goto :goto_0

    .line 294
    :cond_1
    iput v1, p0, Lcom/doctruyen/reader/ReaderActivity;->targetStartParagraph:I

    .line 295
    iput v1, p0, Lcom/doctruyen/reader/ReaderActivity;->targetStartScrollY:I

    .line 299
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/doctruyen/reader/ReaderActivity;->bookPath:Ljava/lang/String;

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/doctruyen/reader/ReaderActivity;->bookPath:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string v2, ".txt"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 300
    iput-boolean v0, p0, Lcom/doctruyen/reader/ReaderActivity;->isTxt:Z

    .line 303
    :cond_3
    iget-object p1, p0, Lcom/doctruyen/reader/ReaderActivity;->bookTitle:Ljava/lang/String;

    if-eqz p1, :cond_4

    .line 304
    iget-object p1, p0, Lcom/doctruyen/reader/ReaderActivity;->bookTitle:Ljava/lang/String;

    invoke-static {p1}, Lcom/doctruyen/reader/web/WebDirectScraper;->unescapeHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/doctruyen/reader/ReaderActivity;->bookTitle:Ljava/lang/String;

    .line 307
    :cond_4
    const-string p1, "reader_prefs"

    invoke-virtual {p0, p1, v1}, Lcom/doctruyen/reader/ReaderActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 308
    const-string v2, "key_reader_theme"

    const-string v3, "light"

    invoke-interface {p1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/doctruyen/reader/ReaderActivity;->currentTheme:Ljava/lang/String;

    .line 310
    invoke-direct {p0}, Lcom/doctruyen/reader/ReaderActivity;->initViews()V

    .line 311
    new-instance p1, Landroid/content/Intent;

    const-class v2, Lcom/doctruyen/tts/TtsPlaybackService;

    invoke-direct {p1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v2, p0, Lcom/doctruyen/reader/ReaderActivity;->serviceConn:Landroid/content/ServiceConnection;

    invoke-virtual {p0, p1, v2, v0}, Lcom/doctruyen/reader/ReaderActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 313
    iget-boolean p1, p0, Lcom/doctruyen/reader/ReaderActivity;->isWeb:Z

    if-eqz p1, :cond_8

    .line 314
    iget-object p1, p0, Lcom/doctruyen/reader/ReaderActivity;->bookPath:Ljava/lang/String;

    iput-object p1, p0, Lcom/doctruyen/reader/ReaderActivity;->currentWebUrl:Ljava/lang/String;

    .line 315
    sget-object p1, Lcom/doctruyen/reader/web/WebBrowseActivity;->cachedChapterHtml:Ljava/lang/String;

    if-eqz p1, :cond_7

    .line 316
    sget-object p1, Lcom/doctruyen/reader/web/WebBrowseActivity;->cachedChapterTitle:Ljava/lang/String;

    if-eqz p1, :cond_5

    sget-object p1, Lcom/doctruyen/reader/web/WebBrowseActivity;->cachedChapterTitle:Ljava/lang/String;

    :goto_1
    move-object v2, p1

    goto :goto_2

    :cond_5
    iget-object p1, p0, Lcom/doctruyen/reader/ReaderActivity;->bookTitle:Ljava/lang/String;

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/doctruyen/reader/ReaderActivity;->bookTitle:Ljava/lang/String;

    goto :goto_1

    :cond_6
    const-string p1, "Ch\u01b0\u01a1ng Truy\u1ec7n"

    goto :goto_1

    .line 317
    :goto_2
    sget-object p1, Lcom/doctruyen/reader/web/WebBrowseActivity;->cachedChapterHtml:Ljava/lang/String;

    .line 318
    sget-object v0, Lcom/doctruyen/reader/web/WebBrowseActivity;->cachedChapterNextUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/doctruyen/reader/ReaderActivity;->nextWebUrl:Ljava/lang/String;

    .line 319
    sget-object v0, Lcom/doctruyen/reader/web/WebBrowseActivity;->cachedChapterPrevUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/doctruyen/reader/ReaderActivity;->prevWebUrl:Ljava/lang/String;

    .line 320
    iput-object v2, p0, Lcom/doctruyen/reader/ReaderActivity;->currentActiveChapterTitle:Ljava/lang/String;

    .line 321
    iget-object v0, p0, Lcom/doctruyen/reader/ReaderActivity;->tvStatus:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 322
    invoke-direct {p0, v2, p1}, Lcom/doctruyen/reader/ReaderActivity;->injectChapterToWeb(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    invoke-static {p0}, Lcom/doctruyen/data/AppDatabase;->getInstance(Landroid/content/Context;)Lcom/doctruyen/data/AppDatabase;

    move-result-object v0

    iget-object v1, p0, Lcom/doctruyen/reader/ReaderActivity;->currentWebUrl:Ljava/lang/String;

    iget-object v5, p0, Lcom/doctruyen/reader/ReaderActivity;->currentWebUrl:Ljava/lang/String;

    const/4 v6, 0x1

    const/4 v3, 0x0

    move-object v4, v2

    invoke-virtual/range {v0 .. v6}, Lcom/doctruyen/data/AppDatabase;->saveProgress(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)V

    .line 325
    const/4 p1, 0x0

    sput-object p1, Lcom/doctruyen/reader/web/WebBrowseActivity;->cachedChapterHtml:Ljava/lang/String;

    .line 326
    sput-object p1, Lcom/doctruyen/reader/web/WebBrowseActivity;->cachedChapterTitle:Ljava/lang/String;

    .line 327
    sput-object p1, Lcom/doctruyen/reader/web/WebBrowseActivity;->cachedChapterNextUrl:Ljava/lang/String;

    .line 328
    sput-object p1, Lcom/doctruyen/reader/web/WebBrowseActivity;->cachedChapterPrevUrl:Ljava/lang/String;

    .line 329
    goto :goto_3

    .line 330
    :cond_7
    iget-object p1, p0, Lcom/doctruyen/reader/ReaderActivity;->currentWebUrl:Ljava/lang/String;

    invoke-direct {p0, p1, v1}, Lcom/doctruyen/reader/ReaderActivity;->loadWebChapter(Ljava/lang/String;Z)V

    goto :goto_3

    .line 332
    :cond_8
    iget-boolean p1, p0, Lcom/doctruyen/reader/ReaderActivity;->isTxt:Z

    if-eqz p1, :cond_9

    .line 333
    invoke-direct {p0}, Lcom/doctruyen/reader/ReaderActivity;->loadTxtData()V

    goto :goto_3

    .line 335
    :cond_9
    invoke-direct {p0}, Lcom/doctruyen/reader/ReaderActivity;->loadEpubData()V

    .line 337
    :goto_3
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 1440
    invoke-direct {p0}, Lcom/doctruyen/reader/ReaderActivity;->saveCurrentReadingProgress()V

    .line 1441
    iget-object v0, p0, Lcom/doctruyen/reader/ReaderActivity;->headlessScraperWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 1442
    iget-object v0, p0, Lcom/doctruyen/reader/ReaderActivity;->headlessScraperWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 1443
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/doctruyen/reader/ReaderActivity;->headlessScraperWebView:Landroid/webkit/WebView;

    .line 1445
    :cond_0
    iget-boolean v0, p0, Lcom/doctruyen/reader/ReaderActivity;->isBound:Z

    if-eqz v0, :cond_1

    .line 1446
    iget-object v0, p0, Lcom/doctruyen/reader/ReaderActivity;->serviceConn:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/doctruyen/reader/ReaderActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1447
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/doctruyen/reader/ReaderActivity;->isBound:Z

    .line 1449
    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 1450
    return-void
.end method

.method protected onPause()V
    .locals 0

    .line 1428
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 1429
    invoke-direct {p0}, Lcom/doctruyen/reader/ReaderActivity;->saveCurrentReadingProgress()V

    .line 1430
    return-void
.end method

.method protected onStop()V
    .locals 0

    .line 1434
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 1435
    invoke-direct {p0}, Lcom/doctruyen/reader/ReaderActivity;->saveCurrentReadingProgress()V

    .line 1436
    return-void
.end method

.method public declared-synchronized toggleControlsVisibility()V
    .locals 7

    monitor-enter p0

    .line 1313
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1314
    iget-wide v2, p0, Lcom/doctruyen/reader/ReaderActivity;->lastToggleTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-long v2, v0, v2

    const-wide/16 v4, 0x15e

    cmp-long v6, v2, v4

    if-gez v6, :cond_0

    .line 1315
    monitor-exit p0

    return-void

    .line 1317
    :cond_0
    :try_start_1
    iput-wide v0, p0, Lcom/doctruyen/reader/ReaderActivity;->lastToggleTime:J

    .line 1319
    iget-boolean v0, p0, Lcom/doctruyen/reader/ReaderActivity;->isControlsVisible:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/doctruyen/reader/ReaderActivity;->isControlsVisible:Z

    .line 1320
    iget-boolean v0, p0, Lcom/doctruyen/reader/ReaderActivity;->isControlsVisible:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1335
    iget-object v2, p0, Lcom/doctruyen/reader/ReaderActivity;->tvStatus:Landroid/widget/TextView;

    .line 1320
    const/16 v3, 0x8

    if-nez v0, :cond_5

    .line 1322
    if-eqz v2, :cond_2

    :try_start_2
    iget-object v0, p0, Lcom/doctruyen/reader/ReaderActivity;->tvStatus:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1323
    :cond_2
    iget-object v0, p0, Lcom/doctruyen/reader/ReaderActivity;->standardControlBar:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/doctruyen/reader/ReaderActivity;->standardControlBar:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1324
    :cond_3
    iget-object v0, p0, Lcom/doctruyen/reader/ReaderActivity;->ttsPlayerPanel:Landroid/view/View;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/doctruyen/reader/ReaderActivity;->ttsPlayerPanel:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1327
    :cond_4
    invoke-virtual {p0}, Lcom/doctruyen/reader/ReaderActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 1328
    const/16 v1, 0x1006

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 1333
    goto :goto_2

    .line 1335
    :cond_5
    if-eqz v2, :cond_6

    iget-object v0, p0, Lcom/doctruyen/reader/ReaderActivity;->tvStatus:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1336
    :cond_6
    iget-object v0, p0, Lcom/doctruyen/reader/ReaderActivity;->ttsService:Lcom/doctruyen/tts/TtsPlaybackService;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/doctruyen/reader/ReaderActivity;->ttsService:Lcom/doctruyen/tts/TtsPlaybackService;

    invoke-virtual {v0}, Lcom/doctruyen/tts/TtsPlaybackService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1337
    iget-object v0, p0, Lcom/doctruyen/reader/ReaderActivity;->ttsPlayerPanel:Landroid/view/View;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/doctruyen/reader/ReaderActivity;->ttsPlayerPanel:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1338
    :cond_7
    iget-object v0, p0, Lcom/doctruyen/reader/ReaderActivity;->standardControlBar:Landroid/view/View;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/doctruyen/reader/ReaderActivity;->standardControlBar:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 1340
    :cond_8
    iget-object v0, p0, Lcom/doctruyen/reader/ReaderActivity;->standardControlBar:Landroid/view/View;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/doctruyen/reader/ReaderActivity;->standardControlBar:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1341
    :cond_9
    iget-object v0, p0, Lcom/doctruyen/reader/ReaderActivity;->ttsPlayerPanel:Landroid/view/View;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/doctruyen/reader/ReaderActivity;->ttsPlayerPanel:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1345
    :cond_a
    :goto_1
    invoke-virtual {p0}, Lcom/doctruyen/reader/ReaderActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 1346
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 1347
    iget-object v0, p0, Lcom/doctruyen/reader/ReaderActivity;->currentTheme:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/doctruyen/reader/ReaderActivity;->applyTheme(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1349
    :goto_2
    monitor-exit p0

    return-void

    .line 1312
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method
