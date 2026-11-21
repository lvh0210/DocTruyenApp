.class public Lcom/doctruyen/reader/web/WebBrowseActivity;
.super Landroid/app/Activity;
.source "WebBrowseActivity.java"


# static fields
.field private static final AD_KEYWORDS:[Ljava/lang/String;

.field public static final EXTRA_INITIAL_URL:Ljava/lang/String; = "extra_initial_url"

.field private static final KEY_LAST_URL:Ljava/lang/String; = "key_last_url"

.field private static final PREF_NAME:Ljava/lang/String; = "web_browser_prefs"

.field public static cachedChapterHtml:Ljava/lang/String;

.field public static cachedChapterNextUrl:Ljava/lang/String;

.field public static cachedChapterPrevUrl:Ljava/lang/String;

.field public static cachedChapterTitle:Ljava/lang/String;


# instance fields
.field private bottomAction:Landroid/widget/LinearLayout;

.field public btnActionRead:Landroid/widget/Button;

.field private btnBack:Landroid/widget/Button;

.field private btnDarkToggle:Landroid/widget/Button;

.field private btnGo:Landroid/widget/Button;

.field private etAddress:Landroid/widget/EditText;

.field public hsv:Landroid/widget/HorizontalScrollView;

.field private isDarkMode:Z

.field private final mainHandler:Landroid/os/Handler;

.field private progressBar:Landroid/widget/ProgressBar;

.field private root:Landroid/widget/LinearLayout;

.field private final shortcutButtons:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/Button;",
            ">;"
        }
    .end annotation
.end field

.field private shortcutsLayout:Landroid/widget/LinearLayout;

.field public topBar:Landroid/widget/LinearLayout;

.field public webView:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x0

    sput-object v0, Lcom/doctruyen/reader/web/WebBrowseActivity;->cachedChapterHtml:Ljava/lang/String;

    sput-object v0, Lcom/doctruyen/reader/web/WebBrowseActivity;->cachedChapterTitle:Ljava/lang/String;

    sput-object v0, Lcom/doctruyen/reader/web/WebBrowseActivity;->cachedChapterNextUrl:Ljava/lang/String;

    sput-object v0, Lcom/doctruyen/reader/web/WebBrowseActivity;->cachedChapterPrevUrl:Ljava/lang/String;

    const/16 v0, 52

    new-array v0, v0, [Ljava/lang/String;

    const/16 v1, 0
    const-string v2, "googleads"
    aput-object v2, v0, v1

    const/16 v1, 1
    const-string v2, "doubleclick"
    aput-object v2, v0, v1

    const/16 v1, 2
    const-string v2, "googlesyndication"
    aput-object v2, v0, v1

    const/16 v1, 3
    const-string v2, "adnxs"
    aput-object v2, v0, v1

    const/16 v1, 4
    const-string v2, "adservice"
    aput-object v2, v0, v1

    const/16 v1, 5
    const-string v2, "adkeeper"
    aput-object v2, v0, v1

    const/16 v1, 6
    const-string v2, "popads"
    aput-object v2, v0, v1

    const/16 v1, 7
    const-string v2, "mgid"
    aput-object v2, v0, v1

    const/16 v1, 8
    const-string v2, "facebook.net"
    aput-object v2, v0, v1

    const/16 v1, 9
    const-string v2, "scorecardresearch"
    aput-object v2, v0, v1

    const/16 v1, 10
    const-string v2, "outbrain"
    aput-object v2, v0, v1

    const/16 v1, 11
    const-string v2, "taboola"
    aput-object v2, v0, v1

    const/16 v1, 12
    const-string v2, "clickadu"
    aput-object v2, v0, v1

    const/16 v1, 13
    const-string v2, "histats"
    aput-object v2, v0, v1

    const/16 v1, 14
    const-string v2, "dtiserv"
    aput-object v2, v0, v1

    const/16 v1, 15
    const-string v2, "admicro"
    aput-object v2, v0, v1

    const/16 v1, 16
    const-string v2, "adsterra"
    aput-object v2, v0, v1

    const/16 v1, 17
    const-string v2, "exoclick"
    aput-object v2, v0, v1

    const/16 v1, 18
    const-string v2, "trafficjunky"
    aput-object v2, v0, v1

    const/16 v1, 19
    const-string v2, "monetag"
    aput-object v2, v0, v1

    const/16 v1, 20
    const-string v2, "juicyads"
    aput-object v2, v0, v1

    const/16 v1, 21
    const-string v2, "yandex"
    aput-object v2, v0, v1

    const/16 v1, 22
    const-string v2, "propellerads"
    aput-object v2, v0, v1

    const/16 v1, 23
    const-string v2, "hilltopads"
    aput-object v2, v0, v1

    const/16 v1, 24
    const-string v2, "f8bet"
    aput-object v2, v0, v1

    const/16 v1, 25
    const-string v2, "f168"
    aput-object v2, v0, v1

    const/16 v1, 26
    const-string v2, "f88"
    aput-object v2, v0, v1

    const/16 v1, 27
    const-string v2, "fb88"
    aput-object v2, v0, v1

    const/16 v1, 28
    const-string v2, "w88"
    aput-object v2, v0, v1

    const/16 v1, 29
    const-string v2, "jun88"
    aput-object v2, v0, v1

    const/16 v1, 30
    const-string v2, "shbet"
    aput-object v2, v0, v1

    const/16 v1, 31
    const-string v2, "hi88"
    aput-object v2, v0, v1

    const/16 v1, 32
    const-string v2, "new88"
    aput-object v2, v0, v1

    const/16 v1, 33
    const-string v2, "789bet"
    aput-object v2, v0, v1

    const/16 v1, 34
    const-string v2, "casino"
    aput-object v2, v0, v1

    const/16 v1, 35
    const-string v2, "gamebai"
    aput-object v2, v0, v1

    const/16 v1, 36
    const-string v2, "bet88"
    aput-object v2, v0, v1

    const/16 v1, 37
    const-string v2, "kubet"
    aput-object v2, v0, v1

    const/16 v1, 38
    const-string v2, "fun88"
    aput-object v2, v0, v1

    const/16 v1, 39
    const-string v2, "bk8"
    aput-object v2, v0, v1

    const/16 v1, 40
    const-string v2, "okvip"
    aput-object v2, v0, v1

    const/16 v1, 41
    const-string v2, "bong88"
    aput-object v2, v0, v1

    const/16 v1, 42
    const-string v2, "sv388"
    aput-object v2, v0, v1

    const/16 v1, 43
    const-string v2, "789club"
    aput-object v2, v0, v1

    const/16 v1, 44
    const-string v2, "sunwin"
    aput-object v2, v0, v1

    const/16 v1, 45
    const-string v2, "go88"
    aput-object v2, v0, v1

    const/16 v1, 46
    const-string v2, "rikvip"
    aput-object v2, v0, v1

    const/16 v1, 47
    const-string v2, "hitclub"
    aput-object v2, v0, v1

    const/16 v1, 48
    const-string v2, "b52club"
    aput-object v2, v0, v1

    const/16 v1, 49
    const-string v2, "iwin"
    aput-object v2, v0, v1

    const/16 v1, 50
    const-string v2, "taixiu"
    aput-object v2, v0, v1

    const/16 v1, 51
    const-string v2, "nohu"
    aput-object v2, v0, v1

    sput-object v0, Lcom/doctruyen/reader/web/WebBrowseActivity;->AD_KEYWORDS:[Ljava/lang/String;

    return-void
.end method


.method public constructor <init>()V
    .locals 2

    .line 35
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/doctruyen/reader/web/WebBrowseActivity;->isDarkMode:Z

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/doctruyen/reader/web/WebBrowseActivity;->shortcutButtons:Ljava/util/List;

    .line 60
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/doctruyen/reader/web/WebBrowseActivity;->mainHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/doctruyen/reader/web/WebBrowseActivity;)Landroid/widget/ProgressBar;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/doctruyen/reader/web/WebBrowseActivity;->progressBar:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static synthetic access$100(Lcom/doctruyen/reader/web/WebBrowseActivity;)Z
    .locals 0

    .line 35
    iget-boolean p0, p0, Lcom/doctruyen/reader/web/WebBrowseActivity;->isDarkMode:Z

    return p0
.end method

.method static synthetic access$200(Lcom/doctruyen/reader/web/WebBrowseActivity;Landroid/webkit/WebView;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/doctruyen/reader/web/WebBrowseActivity;->injectDarkCss(Landroid/webkit/WebView;)V

    return-void
.end method

.method static synthetic access$300(Lcom/doctruyen/reader/web/WebBrowseActivity;Landroid/webkit/WebView;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/doctruyen/reader/web/WebBrowseActivity;->injectSachiepvienBypass(Landroid/webkit/WebView;)V

    return-void
.end method

.method static synthetic access$400(Lcom/doctruyen/reader/web/WebBrowseActivity;Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/doctruyen/reader/web/WebBrowseActivity;->handleInterceptUrl(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$500()[Ljava/lang/String;
    .locals 1

    .line 35
    sget-object v0, Lcom/doctruyen/reader/web/WebBrowseActivity;->AD_KEYWORDS:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/doctruyen/reader/web/WebBrowseActivity;)Landroid/widget/EditText;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/doctruyen/reader/web/WebBrowseActivity;->etAddress:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$700(Lcom/doctruyen/reader/web/WebBrowseActivity;Ljava/lang/String;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/doctruyen/reader/web/WebBrowseActivity;->saveLastUrl(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/doctruyen/reader/web/WebBrowseActivity;Landroid/webkit/WebView;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/doctruyen/reader/web/WebBrowseActivity;->injectAdBlock(Landroid/webkit/WebView;)V

    return-void
.end method


.method private addShortcutButton(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    .line 491
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 492
    invoke-virtual {v0, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 493
    const/high16 p2, 0x41400000    # 12.0f

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setTextSize(F)V

    .line 494
    if-eqz p4, :cond_0

    const-string p2, "#252525"

    goto :goto_0

    :cond_0
    const-string p2, "#E9ECEF"

    :goto_0
    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 495
    if-eqz p4, :cond_1

    const-string p2, "#E0E0E0"

    goto :goto_1

    :cond_1
    const-string p2, "#212529"

    :goto_1
    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setTextColor(I)V

    .line 496
    const/16 p2, 0x10

    const/16 p4, 0x8

    invoke-virtual {v0, p2, p4, p2, p4}, Landroid/widget/Button;->setPadding(IIII)V

    .line 497
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 p4, -0x2

    invoke-direct {p2, p4, p4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 498
    const/4 p4, 0x4

    const/4 v1, 0x0

    invoke-virtual {p2, p4, v1, p4, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 499
    invoke-virtual {v0, p2}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 500
    new-instance p2, Lcom/doctruyen/reader/web/WebBrowseActivity$3;

    invoke-direct {p2, p0, p3}, Lcom/doctruyen/reader/web/WebBrowseActivity$3;-><init>(Lcom/doctruyen/reader/web/WebBrowseActivity;Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 501
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 502
    iget-object p1, p0, Lcom/doctruyen/reader/web/WebBrowseActivity;->shortcutButtons:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 503
    return-void
.end method

.method private applyWebTheme(Z)V
    .locals 9

    .line 513
    const-string v0, "#121212"

    if-eqz p1, :cond_0

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :cond_0
    const-string v1, "#F8FAFC"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    .line 514
    :goto_0
    if-eqz p1, :cond_1

    const-string v2, "#181B26"

    goto :goto_1

    :cond_1
    const-string v2, "#FFFFFF"

    :goto_1
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    .line 515
    invoke-static {p0, v1, p1}, Lcom/doctruyen/ui/UiTheme;->applySystemBarColors(Landroid/app/Activity;IZ)V

    .line 517
    iget-object v3, p0, Lcom/doctruyen/reader/web/WebBrowseActivity;->root:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/doctruyen/reader/web/WebBrowseActivity;->root:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 518
    :cond_2
    iget-object v3, p0, Lcom/doctruyen/reader/web/WebBrowseActivity;->topBar:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/doctruyen/reader/web/WebBrowseActivity;->topBar:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 520
    :cond_3
    iget-object v3, p0, Lcom/doctruyen/reader/web/WebBrowseActivity;->btnBack:Landroid/widget/Button;

    const-string v4, "#333333"

    const-string v5, "#D0D0D0"

    const/high16 v6, -0x1000000

    const/4 v7, -0x1

    if-eqz v3, :cond_6

    .line 521
    iget-object v3, p0, Lcom/doctruyen/reader/web/WebBrowseActivity;->btnBack:Landroid/widget/Button;

    if-eqz p1, :cond_4

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    goto :goto_2

    :cond_4
    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    :goto_2
    invoke-virtual {v3, v8}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 522
    iget-object v3, p0, Lcom/doctruyen/reader/web/WebBrowseActivity;->btnBack:Landroid/widget/Button;

    if-eqz p1, :cond_5

    const/4 v8, -0x1

    goto :goto_3

    :cond_5
    const/high16 v8, -0x1000000

    :goto_3
    invoke-virtual {v3, v8}, Landroid/widget/Button;->setTextColor(I)V

    .line 525
    :cond_6
    iget-object v3, p0, Lcom/doctruyen/reader/web/WebBrowseActivity;->etAddress:Landroid/widget/EditText;

    if-eqz v3, :cond_a

    .line 526
    iget-object v3, p0, Lcom/doctruyen/reader/web/WebBrowseActivity;->etAddress:Landroid/widget/EditText;

    if-eqz p1, :cond_7

    const-string v8, "#2A2A2A"

    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    goto :goto_4

    :cond_7
    const/4 v8, -0x1

    :goto_4
    invoke-virtual {v3, v8}, Landroid/widget/EditText;->setBackgroundColor(I)V

    .line 527
    iget-object v3, p0, Lcom/doctruyen/reader/web/WebBrowseActivity;->etAddress:Landroid/widget/EditText;

    if-eqz p1, :cond_8

    const/4 v8, -0x1

    goto :goto_5

    :cond_8
    const/high16 v8, -0x1000000

    :goto_5
    invoke-virtual {v3, v8}, Landroid/widget/EditText;->setTextColor(I)V

    .line 528
    iget-object v3, p0, Lcom/doctruyen/reader/web/WebBrowseActivity;->etAddress:Landroid/widget/EditText;

    if-eqz p1, :cond_9

    const-string v8, "#757575"

    goto :goto_6

    :cond_9
    const-string v8, "#9E9E9E"

    :goto_6
    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v3, v8}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 531
    :cond_a
    iget-object v3, p0, Lcom/doctruyen/reader/web/WebBrowseActivity;->btnGo:Landroid/widget/Button;

    if-eqz v3, :cond_d

    .line 532
    iget-object v3, p0, Lcom/doctruyen/reader/web/WebBrowseActivity;->btnGo:Landroid/widget/Button;

    if-eqz p1, :cond_b

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    goto :goto_7

    :cond_b
    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    :goto_7
    invoke-virtual {v3, v8}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 533
    iget-object v3, p0, Lcom/doctruyen/reader/web/WebBrowseActivity;->btnGo:Landroid/widget/Button;

    if-eqz p1, :cond_c

    const/4 v8, -0x1

    goto :goto_8

    :cond_c
    const/high16 v8, -0x1000000

    :goto_8
    invoke-virtual {v3, v8}, Landroid/widget/Button;->setTextColor(I)V

    .line 536
    :cond_d
    iget-object v3, p0, Lcom/doctruyen/reader/web/WebBrowseActivity;->btnDarkToggle:Landroid/widget/Button;

    if-eqz v3, :cond_11

    .line 537
    iget-object v3, p0, Lcom/doctruyen/reader/web/WebBrowseActivity;->btnDarkToggle:Landroid/widget/Button;

    if-eqz p1, :cond_e

    const-string v8, "\ud83c\udf19"

    goto :goto_9

    :cond_e
    const-string v8, "\u2600"

    :goto_9
    invoke-virtual {v3, v8}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 538
    iget-object v3, p0, Lcom/doctruyen/reader/web/WebBrowseActivity;->btnDarkToggle:Landroid/widget/Button;

    if-eqz p1, :cond_f

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    goto :goto_a

    :cond_f
    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    :goto_a
    invoke-virtual {v3, v4}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 539
    iget-object v3, p0, Lcom/doctruyen/reader/web/WebBrowseActivity;->btnDarkToggle:Landroid/widget/Button;

    if-eqz p1, :cond_10

    const/4 v6, -0x1

    :cond_10
    invoke-virtual {v3, v6}, Landroid/widget/Button;->setTextColor(I)V

    .line 542
    :cond_11
    iget-object v3, p0, Lcom/doctruyen/reader/web/WebBrowseActivity;->hsv:Landroid/widget/HorizontalScrollView;

    if-eqz v3, :cond_12

    iget-object v3, p0, Lcom/doctruyen/reader/web/WebBrowseActivity;->hsv:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v3, v1}, Landroid/widget/HorizontalScrollView;->setBackgroundColor(I)V

    .line 543
    :cond_12
    iget-object v1, p0, Lcom/doctruyen/reader/web/WebBrowseActivity;->bottomAction:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_13

    iget-object v1, p0, Lcom/doctruyen/reader/web/WebBrowseActivity;->bottomAction:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 545
    :cond_13
    iget-object v1, p0, Lcom/doctruyen/reader/web/WebBrowseActivity;->shortcutButtons:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_17

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 546
    if-eqz v2, :cond_16

    .line 547
    if-eqz p1, :cond_14

    const-string v3, "#252525"

    goto :goto_c

    :cond_14
    const-string v3, "#E9ECEF"

    :goto_c
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 548
    if-eqz p1, :cond_15

    const-string v3, "#E0E0E0"

    goto :goto_d

    :cond_15
    const-string v3, "#212529"

    :goto_d
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTextColor(I)V

    .line 550
    :cond_16
    goto :goto_b

    .line 552
    :cond_17
    iget-object v1, p0, Lcom/doctruyen/reader/web/WebBrowseActivity;->webView:Landroid/webkit/WebView;

    if-eqz v1, :cond_1b

    .line 553
    nop

    .line 566
    iget-object v1, p0, Lcom/doctruyen/reader/web/WebBrowseActivity;->webView:Landroid/webkit/WebView;

    .line 553
    const/16 v2, 0x1d

    const-string v3, "setAlgorithmicDarkeningAllowed"

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz p1, :cond_19

    .line 554
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 557
    :try_start_0
    iget-object p1, p0, Lcom/doctruyen/reader/web/WebBrowseActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    new-array v0, v4, [Ljava/lang/Class;

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v5

    invoke-virtual {p1, v3, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iget-object v0, p0, Lcom/doctruyen/reader/web/WebBrowseActivity;->webView:Landroid/webkit/WebView;

    .line 558
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    new-array v3, v4, [Ljava/lang/Object;

    aput-object v1, v3, v5

    invoke-virtual {p1, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_e

    .line 559
    :catchall_0
    move-exception p1

    :goto_e
    nop

    .line 560
    :try_start_1
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v2, :cond_18

    .line 561
    iget-object p1, p0, Lcom/doctruyen/reader/web/WebBrowseActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setForceDark(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_f

    .line 563
    :catchall_1
    move-exception p1

    :cond_18
    :goto_f
    nop

    .line 564
    iget-object p1, p0, Lcom/doctruyen/reader/web/WebBrowseActivity;->webView:Landroid/webkit/WebView;

    invoke-direct {p0, p1}, Lcom/doctruyen/reader/web/WebBrowseActivity;->injectDarkCss(Landroid/webkit/WebView;)V

    goto :goto_12

    .line 566
    :cond_19
    invoke-virtual {v1, v7}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 569
    :try_start_2
    iget-object p1, p0, Lcom/doctruyen/reader/web/WebBrowseActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    new-array v0, v4, [Ljava/lang/Class;

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v5

    invoke-virtual {p1, v3, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iget-object v0, p0, Lcom/doctruyen/reader/web/WebBrowseActivity;->webView:Landroid/webkit/WebView;

    .line 570
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    new-array v3, v4, [Ljava/lang/Object;

    aput-object v1, v3, v5

    invoke-virtual {p1, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_10

    .line 571
    :catchall_2
    move-exception p1

    :goto_10
    nop

    .line 572
    :try_start_3
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v2, :cond_1a

    .line 573
    iget-object p1, p0, Lcom/doctruyen/reader/web/WebBrowseActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/webkit/WebSettings;->setForceDark(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_11

    .line 575
    :catchall_3
    move-exception p1

    :cond_1a
    :goto_11
    nop

    .line 576
    iget-object p1, p0, Lcom/doctruyen/reader/web/WebBrowseActivity;->webView:Landroid/webkit/WebView;

    invoke-direct {p0, p1}, Lcom/doctruyen/reader/web/WebBrowseActivity;->removeDarkCss(Landroid/webkit/WebView;)V

    .line 579
    :cond_1b
    :goto_12
    return-void
.end method

.method private fallbackOpenReader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 475
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/doctruyen/reader/ReaderActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 476
    const-string v1, "extra_book_path"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 477
    const-string p1, "extra_book_title"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 478
    const-string p1, "extra_is_web"

    const/4 p2, 0x1

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 479
    const-string p1, "extra_start_index"

    const/4 p2, 0x0

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 480
    invoke-virtual {p0, v0}, Lcom/doctruyen/reader/web/WebBrowseActivity;->startActivity(Landroid/content/Intent;)V

    .line 481
    return-void
.end method

.method private handleInterceptUrl(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 3

    .line 632
    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    .line 635
    :cond_0
    const-string v1, "sachiepvien.net/redirect.html"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_5

    const-string v1, "redirect.html?url="

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 641
    :cond_1
    const-string v1, "link.sachiepvien.net/"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 642
    invoke-direct {p0, p1, p2}, Lcom/doctruyen/reader/web/WebBrowseActivity;->resolveDirectLink(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 643
    return v2

    .line 647
    :cond_2
    const-string p1, "https://mega.nz/"

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "http://mega.nz/"

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 648
    const-string p1, "mediafire.com/file"

    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "drive.google.com/file"

    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    .line 653
    :cond_3
    return v0

    .line 649
    :cond_4
    :goto_0
    invoke-direct {p0, p2}, Lcom/doctruyen/reader/web/WebBrowseActivity;->openExternalLink(Ljava/lang/String;)V

    .line 650
    return v2

    .line 636
    :cond_5
    :goto_1
    invoke-direct {p0, p1, p2}, Lcom/doctruyen/reader/web/WebBrowseActivity;->resolveSachiepvienRedirect(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 637
    return v2
.end method

.method private handleReadModeClick()V
    .locals 3

    invoke-static {p0}, Lcom/doctruyen/reader/web/ComicWebHelper;->handleComicClick(Lcom/doctruyen/reader/web/WebBrowseActivity;)Z

    move-result v0

    if-eqz v0, :cond_comic_done

    return-void

    :cond_comic_done
    .line 297
    iget-object v0, p0, Lcom/doctruyen/reader/web/WebBrowseActivity;->btnActionRead:Landroid/widget/Button;

    const-string v1, "\u23f3 \u0110ang ph\u00e2n t\u00edch n\u1ed9i dung trang..."

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 298
    iget-object v0, p0, Lcom/doctruyen/reader/web/WebBrowseActivity;->btnActionRead:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 301
    nop

    .line 419
    iget-object v0, p0, Lcom/doctruyen/reader/web/WebBrowseActivity;->webView:Landroid/webkit/WebView;

    new-instance v1, Lcom/doctruyen/reader/web/WebBrowseActivity$0;

    invoke-direct {v1, p0}, Lcom/doctruyen/reader/web/WebBrowseActivity$0;-><init>(Lcom/doctruyen/reader/web/WebBrowseActivity;)V

    const-string v2, "(function() {  var url = window.location.href;  var title = \'\';  var chapTitleEl = document.querySelector(\'h2.current-chapter, .chapter-title h2, .chapter-title, h1, h2, .title\');  if (chapTitleEl) title = chapTitleEl.innerText.trim();  else title = document.title;  // 1. T\u00ecm container n\u1ed9i dung truy\u1ec7n (H\u1ed7 tr\u1ee3 MeTruyenChu, TruyenFull, TangThuVien, TruyenYY, v.v.)  var contentEl = document.querySelector(\'.truyen, #truyen, .vung-doc, #vungdoc, .chapter_wrap, .chapter-c, #chapter-c, .reading-content, .chapter-content, .truyen-content, .box-chap, .entry-content, .content, #content, article\');  // Fallback qu\u00e9t t\u00ecm th\u1ebb ch\u1ee9a v\u0103n b\u1ea3n d\u00e0i nh\u1ea5t n\u1ebfu selector tr\u00ean kh\u00f4ng kh\u1edbp  if (!contentEl || (contentEl.innerText && contentEl.innerText.trim().length < 200)) {    var divs = document.querySelectorAll(\'div, article, section\');    var maxLen = 0;    var best = null;    for (var i = 0; i < divs.length; i++) {      var d = divs[i];      var cls = (d.className + \' \' + d.id).toLowerCase();      if (cls.indexOf(\'header\') !== -1 || cls.indexOf(\'footer\') !== -1 || cls.indexOf(\'nav\') !== -1 ||          cls.indexOf(\'sidebar\') !== -1 || cls.indexOf(\'comment\') !== -1 || cls.indexOf(\'menu\') !== -1) {        continue;      }      var len = d.innerText ? d.innerText.trim().length : 0;      if (len > 300 && len > maxLen && d.querySelectorAll(\'div\').length < 20) {        maxLen = len;        best = d;      }    }    if (best) contentEl = best;  }  // 2. T\u00ecm n\u00fat ch\u01b0\u01a1ng k\u1ebf ti\u1ebfp (H\u1ed7 tr\u1ee3 c\u1ea3 \'Ch\u01b0\u01a1ng ti\u1ebfp \u300b\', \'Ch\u01b0\u01a1ng sau\', \'Ti\u1ebfp theo\', \'Next\')  var nextA = document.querySelector(\'a#next_chap:not(.disabled), a.btn-next:not(.disabled), a[rel=\"next\"], a.next:not(.disabled), a.btn-chapter-nav:not(.disabled), a.chapter-next, a#next-chapter, a.next-chap, a.nav-next\');  if (!nextA || (nextA.href && (nextA.href.indexOf(\'javascript:\') !== -1 || nextA.href === url || nextA.href.endsWith(\'#\')))) {    nextA = null;    var links = document.querySelectorAll(\'a\');    for (var i = 0; i < links.length; i++) {      var a = links[i];      var t = (a.innerText || a.getAttribute(\'title\') || a.getAttribute(\'aria-label\') || \'\').toLowerCase().trim();      var cls = (a.className || \'\').toLowerCase();      if (cls.indexOf(\'disabled\') !== -1) continue;      if (t.indexOf(\'ti\u1ebfp\') !== -1 || t.indexOf(\'tiep\') !== -1 ||          t.indexOf(\'sau\') !== -1 || t.indexOf(\'next\') !== -1 ||          t === \'\u00bb\' || t === \'\u203a\' || t === \'>\' ||          (a.href && (a.href.indexOf(\'next-chap\') !== -1 || a.href.indexOf(\'chuong-sau\') !== -1))) {        if (a.href && a.href.indexOf(\'javascript:\') === -1 && a.href !== url && !a.href.endsWith(\'#\')) {          nextA = a; break;        }      }    }  }  var prevA = document.querySelector(\'a#prev_chap:not(.disabled), a.btn-prev:not(.disabled), a[rel=\"prev\"], a.prev:not(.disabled), a.btn-chapter-nav:not(.disabled), a.chapter-prev, a#prev-chapter, a.prev-chap, a.nav-prev\');  if (!prevA || (prevA.href && (prevA.href.indexOf(\'javascript:\') !== -1 || prevA.href === url || prevA.href.endsWith(\'#\')))) {    prevA = null;    var links = document.querySelectorAll(\'a\');    for (var i = 0; i < links.length; i++) {      var a = links[i];      var t = (a.innerText || a.getAttribute(\'title\') || a.getAttribute(\'aria-label\') || \'\').toLowerCase().trim();      var cls = (a.className || \'\').toLowerCase();      if (cls.indexOf(\'disabled\') !== -1) continue;      if (t.indexOf(\'tr\u01b0\u1edbc\') !== -1 || t.indexOf(\'truoc\') !== -1 ||          t.indexOf(\'prev\') !== -1 ||          t === \'\u00ab\' || t === \'\u2039\' || t === \'<\' ||          (a.href && (a.href.indexOf(\'prev-chap\') !== -1 || a.href.indexOf(\'chuong-truoc\') !== -1))) {        if (a.href && a.href.indexOf(\'javascript:\') === -1 && a.href !== url && !a.href.endsWith(\'#\')) {          prevA = a; break;        }      }    }  }  // 3. Ph\u00e2n bi\u1ec7t ch\u00ednh x\u00e1c gi\u1eefa Trang \u0110\u1ecdc Ch\u01b0\u01a1ng v\u00e0 Trang Gi\u1edbi Thi\u1ec7u  var hasChapterSignals = (nextA !== null) ||                          (url.indexOf(\'chuong\') !== -1) ||                          (url.indexOf(\'chap\') !== -1) ||                          (url.indexOf(\'chapter\') !== -1) ||                          (document.querySelector(\'.chapter_control, #gotochap, h2.current-chapter, .current-chapter\') !== null);  var textLength = (contentEl && contentEl.innerText) ? contentEl.innerText.trim().length : 0;  if ((hasChapterSignals && textLength > 100) || textLength > 350) {    // \u0110\u00cdCH TH\u1eca L\u00c0 TRANG CH\u01af\u01a0NG \u0110\u1eccC!    // Lo\u1ea1i b\u1ecf c\u00e1c n\u00fat chuy\u1ec3n ch\u01b0\u01a1ng ho\u1eb7c qu\u1ea3ng c\u00e1o n\u1eb1m b\u00ean trong contentEl n\u1ebfu c\u00f3    var clone = contentEl.cloneNode(true);    var buttons = clone.querySelectorAll(\'.chapter_control, .chapter-title, .chapter-nav, .current-book, button, a.btn, script, style, .ads, .quang-cao\');    buttons.forEach(function(b) { b.remove(); });    return JSON.stringify({      isChapter: true,      title: title,      html: clone.innerHTML,      nextUrl: nextA ? nextA.href : \'\',      prevUrl: prevA ? prevA.href : \'\',      url: url    });  } else {    // TRANG GI\u1edaI THI\u1ec6U TRUY\u1ec6N -> T\u00ccM CH\u01af\u01a0NG 1    var firstA = null;    var links = document.querySelectorAll(\'a\');    for (var i = 0; i < links.length; i++) {      var t = (links[i].innerText || \'\').toLowerCase().trim();      if (t === \'\u0111\u1ecdc t\u1eeb \u0111\u1ea7u\' || t === \'\u0111\u1ecdc truy\u1ec7n\' || t.indexOf(\'ch\u01b0\u01a1ng 1\') !== -1 || t.indexOf(\'ch\u01b0\u01a1ng 01\') !== -1 || t.indexOf(\'chap 1\') !== -1) {        firstA = links[i]; break;      }    }    if (!firstA) {      firstA = document.querySelector(\'.list-chapter a, #list-chapter a, .chapter-list a, .list-chap a, .vung-doc a\');    }    return JSON.stringify({      isChapter: false,      title: title,      firstChapUrl: firstA ? firstA.href : \'\',      url: url    });  }})();"

    invoke-virtual {v0, v2, v1}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 472
    return-void
.end method

.method private initViews()V
    .locals 10

    .line 82
    const-string v0, "app_theme_prefs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/doctruyen/reader/web/WebBrowseActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 83
    const-string v2, "key_dark_mode"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/doctruyen/reader/web/WebBrowseActivity;->isDarkMode:Z

    .line 85
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/doctruyen/reader/web/WebBrowseActivity;->root:Landroid/widget/LinearLayout;

    .line 86
    iget-object v0, p0, Lcom/doctruyen/reader/web/WebBrowseActivity;->root:Landroid/widget/LinearLayout;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 89
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/doctruyen/reader/web/WebBrowseActivity;->topBar:Landroid/widget/LinearLayout;

    .line 90
    iget-object v0, p0, Lcom/doctruyen/reader/web/WebBrowseActivity;->topBar:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 91
    iget-object v0, p0, Lcom/doctruyen/reader/web/WebBrowseActivity;->topBar:Landroid/widget/LinearLayout;

    const/16 v3, 0xc

    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    new-instance v4, Landroid/widget/Button;

    invoke-direct {v4, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const-string v5, "\ud83c\udfe0 Menu"

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/high16 v5, 0x41300000    # 11.0f

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setTextSize(F)V

    const/high16 v5, 0x42100000    # 36.0f

    invoke-static {p0, v5}, Lcom/doctruyen/ui/UiTheme;->dp(Landroid/content/Context;F)I

    move-result v7

    const/4 v6, -0x2

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v5, Lcom/doctruyen/reader/web/WebBrowseActivity$ExitClickListener;

    invoke-direct {v5, p0}, Lcom/doctruyen/reader/web/WebBrowseActivity$ExitClickListener;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, p0, Lcom/doctruyen/reader/web/WebBrowseActivity;->topBar:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 93
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/doctruyen/reader/web/WebBrowseActivity;->btnBack:Landroid/widget/Button;

    .line 94
    iget-object v0, p0, Lcom/doctruyen/reader/web/WebBrowseActivity;->btnBack:Landroid/widget/Button;

    const-string v4, "\u00ab"

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 95
    iget-object v0, p0, Lcom/doctruyen/reader/web/WebBrowseActivity;->btnBack:Landroid/widget/Button;

    const/high16 v4, 0x41800000    # 16.0f

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setTextSize(F)V

    .line 96
    iget-object v0, p0, Lcom/doctruyen/reader/web/WebBrowseActivity;->btnBack:Landroid/widget/Button;

    const/high16 v4, 0x42180000    # 38.0f

    invoke-static {p0, v4}, Lcom/doctruyen/ui/UiTheme;->dp(Landroid/content/Context;F)I

    move-result v5

    const/high16 v4, 0x42100000    # 36.0f

    invoke-static {p0, v4}, Lcom/doctruyen/ui/UiTheme;->dp(Landroid/content/Context;F)I

    move-result v6

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v5, 0x40800000    # 4.0f

    invoke-static {p0, v5}, Lcom/doctruyen/ui/UiTheme;->dp(Landroid/content/Context;F)I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 97
    iget-object v0, p0, Lcom/doctruyen/reader/web/WebBrowseActivity;->btnBack:Landroid/widget/Button;

    new-instance v4, Lcom/doctruyen/reader/web/WebBrowseActivity$5;

    invoke-direct {v4, p0}, Lcom/doctruyen/reader/web/WebBrowseActivity$5;-><init>(Lcom/doctruyen/reader/web/WebBrowseActivity;)V

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    iget-object v0, p0, Lcom/doctruyen/reader/web/WebBrowseActivity;->topBar:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/doctruyen/reader/web/WebBrowseActivity;->btnBack:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 103
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/doctruyen/reader/web/WebBrowseActivity;->etAddress:Landroid/widget/EditText;

    .line 104
    iget-object v0, p0, Lcom/doctruyen/reader/web/WebBrowseActivity;->etAddress:Landroid/widget/EditText;

    const-string v4, "Nh\u1eadp \u0111\u1ecba ch\u1ec9 web ho\u1eb7c t\u00ecm ki\u1ebfm..."

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 105
    iget-object v0, p0, Lcom/doctruyen/reader/web/WebBrowseActivity;->etAddress:Landroid/widget/EditText;

    const/high16 v4, 0x41500000    # 13.0f

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setTextSize(F)V

    .line 106
    iget-object v0, p0, Lcom/doctruyen/reader/web/WebBrowseActivity;->etAddress:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 107
    iget-object v0, p0, Lcom/doctruyen/reader/web/WebBrowseActivity;->etAddress:Landroid/widget/EditText;

    const/16 v4, 0x10

    invoke-virtual {v0, v4, v3, v4, v3}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 108
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v6, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 109
    const/4 v7, 0x6

    invoke-virtual {v0, v7, v1, v7, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 110
    iget-object v7, p0, Lcom/doctruyen/reader/web/WebBrowseActivity;->etAddress:Landroid/widget/EditText;

    invoke-virtual {v7, v0}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 111
    iget-object v0, p0, Lcom/doctruyen/reader/web/WebBrowseActivity;->etAddress:Landroid/widget/EditText;

    new-instance v7, Lcom/doctruyen/reader/web/WebBrowseActivity$6;

    invoke-direct {v7, p0}, Lcom/doctruyen/reader/web/WebBrowseActivity$6;-><init>(Lcom/doctruyen/reader/web/WebBrowseActivity;)V

    invoke-virtual {v0, v7}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 125
    iget-object v0, p0, Lcom/doctruyen/reader/web/WebBrowseActivity;->topBar:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/doctruyen/reader/web/WebBrowseActivity;->etAddress:Landroid/widget/EditText;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 127
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/doctruyen/reader/web/WebBrowseActivity;->btnGo:Landroid/widget/Button;

    .line 128
    iget-object v0, p0, Lcom/doctruyen/reader/web/WebBrowseActivity;->btnGo:Landroid/widget/Button;

    const-string v7, "\u0110i"

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 129
    iget-object v0, p0, Lcom/doctruyen/reader/web/WebBrowseActivity;->btnGo:Landroid/widget/Button;

    const/high16 v7, 0x42280000    # 42.0f

    invoke-static {p0, v7}, Lcom/doctruyen/ui/UiTheme;->dp(Landroid/content/Context;F)I

    move-result v7

    const/high16 v8, 0x42100000    # 36.0f

    invoke-static {p0, v8}, Lcom/doctruyen/ui/UiTheme;->dp(Landroid/content/Context;F)I

    move-result v8

    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v9, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v7, 0x40800000    # 4.0f

    invoke-static {p0, v7}, Lcom/doctruyen/ui/UiTheme;->dp(Landroid/content/Context;F)I

    move-result v7

    const/4 v8, 0x0

    invoke-virtual {v9, v8, v8, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v0, v9}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 130
    iget-object v0, p0, Lcom/doctruyen/reader/web/WebBrowseActivity;->btnGo:Landroid/widget/Button;

    new-instance v7, Lcom/doctruyen/reader/web/WebBrowseActivity$7;

    invoke-direct {v7, p0}, Lcom/doctruyen/reader/web/WebBrowseActivity$7;-><init>(Lcom/doctruyen/reader/web/WebBrowseActivity;)V

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    iget-object v0, p0, Lcom/doctruyen/reader/web/WebBrowseActivity;->topBar:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/doctruyen/reader/web/WebBrowseActivity;->btnGo:Landroid/widget/Button;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 141
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/doctruyen/reader/web/WebBrowseActivity;->btnDarkToggle:Landroid/widget/Button;

    .line 142
    iget-object v0, p0, Lcom/doctruyen/reader/web/WebBrowseActivity;->btnDarkToggle:Landroid/widget/Button;

    iget-boolean v7, p0, Lcom/doctruyen/reader/web/WebBrowseActivity;->isDarkMode:Z

    if-eqz v7, :cond_0

    const-string v7, "\ud83c\udf19"

    goto :goto_0

    :cond_0
    const-string v7, "\u2600"

    :goto_0
    invoke-virtual {v0, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 143
    iget-object v0, p0, Lcom/doctruyen/reader/web/WebBrowseActivity;->btnDarkToggle:Landroid/widget/Button;

    const/high16 v7, 0x41600000    # 14.0f

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setTextSize(F)V

    .line 144
    iget-object v0, p0, Lcom/doctruyen/reader/web/WebBrowseActivity;->btnDarkToggle:Landroid/widget/Button;

    const/high16 v7, 0x42180000    # 38.0f

    invoke-static {p0, v7}, Lcom/doctruyen/ui/UiTheme;->dp(Landroid/content/Context;F)I

    move-result v7

    const/high16 v8, 0x42100000    # 36.0f

    invoke-static {p0, v8}, Lcom/doctruyen/ui/UiTheme;->dp(Landroid/content/Context;F)I

    move-result v8

    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v9, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v9}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 145
    iget-object v0, p0, Lcom/doctruyen/reader/web/WebBrowseActivity;->btnDarkToggle:Landroid/widget/Button;

    new-instance v6, Lcom/doctruyen/reader/web/WebBrowseActivity$8;

    invoke-direct {v6, p0}, Lcom/doctruyen/reader/web/WebBrowseActivity$8;-><init>(Lcom/doctruyen/reader/web/WebBrowseActivity;)V

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    iget-object v0, p0, Lcom/doctruyen/reader/web/WebBrowseActivity;->topBar:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/doctruyen/reader/web/WebBrowseActivity;->btnDarkToggle:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 148
    iget-object v0, p0, Lcom/doctruyen/reader/web/WebBrowseActivity;->root:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/doctruyen/reader/web/WebBrowseActivity;->topBar:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 151
    new-instance v0, Landroid/widget/ProgressBar;

    const/4 v6, 0x0

    const v7, 0x1010078

    invoke-direct {v0, p0, v6, v7}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/doctruyen/reader/web/WebBrowseActivity;->progressBar:Landroid/widget/ProgressBar;

    .line 152
    iget-object v0, p0, Lcom/doctruyen/reader/web/WebBrowseActivity;->progressBar:Landroid/widget/ProgressBar;

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x1

    const/16 v8, 0x8

    invoke-direct {v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v6}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 153
    iget-object v0, p0, Lcom/doctruyen/reader/web/WebBrowseActivity;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v8}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 154
    iget-object v0, p0, Lcom/doctruyen/reader/web/WebBrowseActivity;->root:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/doctruyen/reader/web/WebBrowseActivity;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 157
    new-instance v0, Landroid/widget/HorizontalScrollView;

    invoke-direct {v0, p0}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/doctruyen/reader/web/WebBrowseActivity;->hsv:Landroid/widget/HorizontalScrollView;

    .line 158
    iget-object v0, p0, Lcom/doctruyen/reader/web/WebBrowseActivity;->hsv:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0, v8, v8, v8, v8}, Landroid/widget/HorizontalScrollView;->setPadding(IIII)V

    .line 159
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/doctruyen/reader/web/WebBrowseActivity;->shortcutsLayout:Landroid/widget/LinearLayout;

    .line 160
    iget-object v0, p0, Lcom/doctruyen/reader/web/WebBrowseActivity;->shortcutsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 162
    iget-object v0, p0, Lcom/doctruyen/reader/web/WebBrowseActivity;->shortcutButtons:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 163
    iget-object v0, p0, Lcom/doctruyen/reader/web/WebBrowseActivity;->shortcutsLayout:Landroid/widget/LinearLayout;

    const-string v6, "https://truyenfull.live"

    iget-boolean v8, p0, Lcom/doctruyen/reader/web/WebBrowseActivity;->isDarkMode:Z

    const-string v9, "Truy\u1ec7n Full"

    invoke-direct {p0, v0, v9, v6, v8}, Lcom/doctruyen/reader/web/WebBrowseActivity;->addShortcutButton(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 164
    iget-object v0, p0, Lcom/doctruyen/reader/web/WebBrowseActivity;->shortcutsLayout:Landroid/widget/LinearLayout;

    const-string v6, "https://metruyenchu.com.vn"

    iget-boolean v8, p0, Lcom/doctruyen/reader/web/WebBrowseActivity;->isDarkMode:Z

    const-string v9, "M\u00ea Truy\u1ec7n Ch\u1eef"

    invoke-direct {p0, v0, v9, v6, v8}, Lcom/doctruyen/reader/web/WebBrowseActivity;->addShortcutButton(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 165
    iget-object v0, p0, Lcom/doctruyen/reader/web/WebBrowseActivity;->shortcutsLayout:Landroid/widget/LinearLayout;

    const-string v6, "https://metruyencv.com"

    iget-boolean v8, p0, Lcom/doctruyen/reader/web/WebBrowseActivity;->isDarkMode:Z

    const-string v9, "M\u00ea Truy\u1ec7n CV"

    invoke-direct {p0, v0, v9, v6, v8}, Lcom/doctruyen/reader/web/WebBrowseActivity;->addShortcutButton(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 166
    iget-object v0, p0, Lcom/doctruyen/reader/web/WebBrowseActivity;->shortcutsLayout:Landroid/widget/LinearLayout;

    const-string v6, "https://wetruyen.com"

    iget-boolean v8, p0, Lcom/doctruyen/reader/web/WebBrowseActivity;->isDarkMode:Z

    const-string v9, "WeTruyen"

    invoke-direct {p0, v0, v9, v6, v8}, Lcom/doctruyen/reader/web/WebBrowseActivity;->addShortcutButton(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 167
    iget-object v0, p0, Lcom/doctruyen/reader/web/WebBrowseActivity;->shortcutsLayout:Landroid/widget/LinearLayout;

    const-string v6, "https://wikicv.org"

    iget-boolean v8, p0, Lcom/doctruyen/reader/web/WebBrowseActivity;->isDarkMode:Z

    const-string v9, "WikiCV"

    invoke-direct {p0, v0, v9, v6, v8}, Lcom/doctruyen/reader/web/WebBrowseActivity;->addShortcutButton(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 168
    iget-object v0, p0, Lcom/doctruyen/reader/web/WebBrowseActivity;->shortcutsLayout:Landroid/widget/LinearLayout;

    const-string v6, "https://sachiepvien.net"

    iget-boolean v8, p0, Lcom/doctruyen/reader/web/WebBrowseActivity;->isDarkMode:Z

    const-string v9, "\ud83d\udd1e S\u1eafc Hi\u1ec7p Vi\u1ec7n"

    invoke-direct {p0, v0, v9, v6, v8}, Lcom/doctruyen/reader/web/WebBrowseActivity;->addShortcutButton(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 169
    iget-object v0, p0, Lcom/doctruyen/reader/web/WebBrowseActivity;->shortcutsLayout:Landroid/widget/LinearLayout;

    const-string v6, "https://tusachiep.xyz"

    iget-boolean v8, p0, Lcom/doctruyen/reader/web/WebBrowseActivity;->isDarkMode:Z

    const-string v9, "\ud83d\udd1e T\u1eed S\u1eafc Hi\u1ec7p"

    invoke-direct {p0, v0, v9, v6, v8}, Lcom/doctruyen/reader/web/WebBrowseActivity;->addShortcutButton(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 170
    iget-object v0, p0, Lcom/doctruyen/reader/web/WebBrowseActivity;->shortcutsLayout:Landroid/widget/LinearLayout;

    const-string v6, "https://truyensac.me"

    iget-boolean v8, p0, Lcom/doctruyen/reader/web/WebBrowseActivity;->isDarkMode:Z

    const-string v9, "\ud83d\udd1e Truy\u1ec7n S\u1eafc Me"

    invoke-direct {p0, v0, v9, v6, v8}, Lcom/doctruyen/reader/web/WebBrowseActivity;->addShortcutButton(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 171
    iget-object v0, p0, Lcom/doctruyen/reader/web/WebBrowseActivity;->shortcutsLayout:Landroid/widget/LinearLayout;

    const-string v6, "https://wetruyen.com/the-loai/sac/"

    iget-boolean v8, p0, Lcom/doctruyen/reader/web/WebBrowseActivity;->isDarkMode:Z

    const-string v9, "\ud83d\udd1e WeTruyen S\u1eafc"

    invoke-direct {p0, v0, v9, v6, v8}, Lcom/doctruyen/reader/web/WebBrowseActivity;->addShortcutButton(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 172
    iget-object v0, p0, Lcom/doctruyen/reader/web/WebBrowseActivity;->shortcutsLayout:Landroid/widget/LinearLayout;

    const-string v6, "https://trichtinhlau.com"

    iget-boolean v8, p0, Lcom/doctruyen/reader/web/WebBrowseActivity;->isDarkMode:Z

    const-string v9, "\ud83d\udd1e Tr\u00edch Tinh L\u00e2u"

    invoke-direct {p0, v0, v9, v6, v8}, Lcom/doctruyen/reader/web/WebBrowseActivity;->addShortcutButton(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 173
    iget-object v0, p0, Lcom/doctruyen/reader/web/WebBrowseActivity;->shortcutsLayout:Landroid/widget/LinearLayout;

    const-string v6, "https://hahatruyen.com.vn"

    iget-boolean v8, p0, Lcom/doctruyen/reader/web/WebBrowseActivity;->isDarkMode:Z

    const-string v9, "\ud83d\udd1e HahaTruyen"

    invoke-direct {p0, v0, v9, v6, v8}, Lcom/doctruyen/reader/web/WebBrowseActivity;->addShortcutButton(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 174
    iget-object v0, p0, Lcom/doctruyen/reader/web/WebBrowseActivity;->shortcutsLayout:Landroid/widget/LinearLayout;

    const-string v6, "https://truyensex.net"

    iget-boolean v8, p0, Lcom/doctruyen/reader/web/WebBrowseActivity;->isDarkMode:Z

    const-string v9, "\ud83d\udd1e Truy\u1ec7n Sex Net"

    invoke-direct {p0, v0, v9, v6, v8}, Lcom/doctruyen/reader/web/WebBrowseActivity;->addShortcutButton(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 175
    iget-object v0, p0, Lcom/doctruyen/reader/web/WebBrowseActivity;->shortcutsLayout:Landroid/widget/LinearLayout;

    const-string v6, "https://metruyenhotvn.com"

    iget-boolean v8, p0, Lcom/doctruyen/reader/web/WebBrowseActivity;->isDarkMode:Z

    const-string v9, "\ud83d\udd1e M\u00ea Truy\u1ec7n Hot"

    invoke-direct {p0, v0, v9, v6, v8}, Lcom/doctruyen/reader/web/WebBrowseActivity;->addShortcutButton(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/doctruyen/reader/web/WebBrowseActivity;->shortcutsLayout:Landroid/widget/LinearLayout;

    const-string v6, "https://hentaivn.tv"

    iget-boolean v8, p0, Lcom/doctruyen/reader/web/WebBrowseActivity;->isDarkMode:Z

    const-string v9, "\ud83d\udd1e HentaiVN"

    invoke-direct {p0, v0, v9, v6, v8}, Lcom/doctruyen/reader/web/WebBrowseActivity;->addShortcutButton(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/doctruyen/reader/web/WebBrowseActivity;->shortcutsLayout:Landroid/widget/LinearLayout;

    const-string v6, "https://lxmanga.top"

    iget-boolean v8, p0, Lcom/doctruyen/reader/web/WebBrowseActivity;->isDarkMode:Z

    const-string v9, "\ud83d\udd1e LX Manga"

    invoke-direct {p0, v0, v9, v6, v8}, Lcom/doctruyen/reader/web/WebBrowseActivity;->addShortcutButton(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/doctruyen/reader/web/WebBrowseActivity;->shortcutsLayout:Landroid/widget/LinearLayout;

    const-string v6, "https://sayhentai.cx"

    iget-boolean v8, p0, Lcom/doctruyen/reader/web/WebBrowseActivity;->isDarkMode:Z

    const-string v9, "\ud83d\udd1e Say Hentai"

    invoke-direct {p0, v0, v9, v6, v8}, Lcom/doctruyen/reader/web/WebBrowseActivity;->addShortcutButton(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/doctruyen/reader/web/WebBrowseActivity;->shortcutsLayout:Landroid/widget/LinearLayout;

    const-string v6, "https://manhwa18.cc"

    iget-boolean v8, p0, Lcom/doctruyen/reader/web/WebBrowseActivity;->isDarkMode:Z

    const-string v9, "\ud83d\udd1e Manhwa 18"

    invoke-direct {p0, v0, v9, v6, v8}, Lcom/doctruyen/reader/web/WebBrowseActivity;->addShortcutButton(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/doctruyen/reader/web/WebBrowseActivity;->shortcutsLayout:Landroid/widget/LinearLayout;

    const-string v6, "https://manga18fx.com"

    iget-boolean v8, p0, Lcom/doctruyen/reader/web/WebBrowseActivity;->isDarkMode:Z

    const-string v9, "\ud83d\udd1e Manga18fx"

    invoke-direct {p0, v0, v9, v6, v8}, Lcom/doctruyen/reader/web/WebBrowseActivity;->addShortcutButton(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/doctruyen/reader/web/WebBrowseActivity;->shortcutsLayout:Landroid/widget/LinearLayout;

    const-string v6, "https://nhentai.net"

    iget-boolean v8, p0, Lcom/doctruyen/reader/web/WebBrowseActivity;->isDarkMode:Z

    const-string v9, "\ud83d\udd1e nhentai"

    invoke-direct {p0, v0, v9, v6, v8}, Lcom/doctruyen/reader/web/WebBrowseActivity;->addShortcutButton(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 176
    iget-object v0, p0, Lcom/doctruyen/reader/web/WebBrowseActivity;->shortcutsLayout:Landroid/widget/LinearLayout;

    const-string v6, "https://www.google.com"

    iget-boolean v8, p0, Lcom/doctruyen/reader/web/WebBrowseActivity;->isDarkMode:Z

    const-string v9, "Google"

    invoke-direct {p0, v0, v9, v6, v8}, Lcom/doctruyen/reader/web/WebBrowseActivity;->addShortcutButton(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 178
    iget-object v0, p0, Lcom/doctruyen/reader/web/WebBrowseActivity;->hsv:Landroid/widget/HorizontalScrollView;

    iget-object v6, p0, Lcom/doctruyen/reader/web/WebBrowseActivity;->shortcutsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;)V

    .line 179
    iget-object v0, p0, Lcom/doctruyen/reader/web/WebBrowseActivity;->root:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/doctruyen/reader/web/WebBrowseActivity;->hsv:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 182
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/doctruyen/reader/web/WebBrowseActivity;->webView:Landroid/webkit/WebView;

    .line 183
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v7, v1, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 184
    iget-object v5, p0, Lcom/doctruyen/reader/web/WebBrowseActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v5, v0}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 186
    iget-object v0, p0, Lcom/doctruyen/reader/web/WebBrowseActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 187
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 188
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 189
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 190
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 191
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 192
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 193
    invoke-virtual {v0, v7}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 194
    sget-object v1, Landroid/webkit/WebSettings$RenderPriority;->HIGH:Landroid/webkit/WebSettings$RenderPriority;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setRenderPriority(Landroid/webkit/WebSettings$RenderPriority;)V

    .line 195
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 196
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 197
    const-string v1, "Mozilla/5.0 (Linux; Android 13; Mobile) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Mobile Safari/537.36"

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 199
    iget-object v0, p0, Lcom/doctruyen/reader/web/WebBrowseActivity;->webView:Landroid/webkit/WebView;

    new-instance v1, Lcom/doctruyen/reader/web/WebBrowseActivity$9;

    invoke-direct {v1, p0}, Lcom/doctruyen/reader/web/WebBrowseActivity$9;-><init>(Lcom/doctruyen/reader/web/WebBrowseActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 203
    iget-object v0, p0, Lcom/doctruyen/reader/web/WebBrowseActivity;->webView:Landroid/webkit/WebView;

    new-instance v1, Lcom/doctruyen/reader/web/WebBrowseActivity$1;

    invoke-direct {v1, p0}, Lcom/doctruyen/reader/web/WebBrowseActivity$1;-><init>(Lcom/doctruyen/reader/web/WebBrowseActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 221
    iget-object v0, p0, Lcom/doctruyen/reader/web/WebBrowseActivity;->webView:Landroid/webkit/WebView;

    new-instance v1, Lcom/doctruyen/reader/web/WebBrowseActivity$2;

    invoke-direct {v1, p0}, Lcom/doctruyen/reader/web/WebBrowseActivity$2;-><init>(Lcom/doctruyen/reader/web/WebBrowseActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 274
    iget-object v0, p0, Lcom/doctruyen/reader/web/WebBrowseActivity;->root:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/doctruyen/reader/web/WebBrowseActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 277
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/doctruyen/reader/web/WebBrowseActivity;->bottomAction:Landroid/widget/LinearLayout;

    .line 278
    iget-object v0, p0, Lcom/doctruyen/reader/web/WebBrowseActivity;->bottomAction:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 279
    iget-object v0, p0, Lcom/doctruyen/reader/web/WebBrowseActivity;->bottomAction:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4, v3, v4, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 281
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/doctruyen/reader/web/WebBrowseActivity;->btnActionRead:Landroid/widget/Button;

    .line 282
    iget-object v0, p0, Lcom/doctruyen/reader/web/WebBrowseActivity;->btnActionRead:Landroid/widget/Button;

    const-string v1, "\u26a1 CHUY\u1ec2N SANG CH\u1ebe \u0110\u1ed8 \u0110\u1eccC & CH\u1ea0Y TTS"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 283
    iget-object v0, p0, Lcom/doctruyen/reader/web/WebBrowseActivity;->btnActionRead:Landroid/widget/Button;

    const-string v1, "#0D6EFD"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 284
    iget-object v0, p0, Lcom/doctruyen/reader/web/WebBrowseActivity;->btnActionRead:Landroid/widget/Button;

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setTextColor(I)V

    .line 285
    iget-object v0, p0, Lcom/doctruyen/reader/web/WebBrowseActivity;->btnActionRead:Landroid/widget/Button;

    const/high16 v1, 0x41700000    # 15.0f

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextSize(F)V

    .line 286
    iget-object v0, p0, Lcom/doctruyen/reader/web/WebBrowseActivity;->btnActionRead:Landroid/widget/Button;

    const/16 v1, 0x14

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/Button;->setPadding(IIII)V

    .line 287
    iget-object v0, p0, Lcom/doctruyen/reader/web/WebBrowseActivity;->btnActionRead:Landroid/widget/Button;

    new-instance v1, Lcom/doctruyen/reader/web/WebBrowseActivity$10;

    invoke-direct {v1, p0}, Lcom/doctruyen/reader/web/WebBrowseActivity$10;-><init>(Lcom/doctruyen/reader/web/WebBrowseActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 288
    iget-object v0, p0, Lcom/doctruyen/reader/web/WebBrowseActivity;->bottomAction:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/doctruyen/reader/web/WebBrowseActivity;->btnActionRead:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 290
    iget-object v0, p0, Lcom/doctruyen/reader/web/WebBrowseActivity;->root:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/doctruyen/reader/web/WebBrowseActivity;->bottomAction:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 292
    iget-object v0, p0, Lcom/doctruyen/reader/web/WebBrowseActivity;->root:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/doctruyen/reader/web/WebBrowseActivity;->setContentView(Landroid/view/View;)V

    .line 293
    iget-boolean v0, p0, Lcom/doctruyen/reader/web/WebBrowseActivity;->isDarkMode:Z

    invoke-direct {p0, v0}, Lcom/doctruyen/reader/web/WebBrowseActivity;->applyWebTheme(Z)V

    .line 294
    return-void
.end method

.method private injectDarkCss(Landroid/webkit/WebView;)V
    .locals 2

    .line 582
    iget-boolean v0, p0, Lcom/doctruyen/reader/web/WebBrowseActivity;->isDarkMode:Z

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 583
    :cond_0
    nop

    .line 601
    const/4 v0, 0x0

    const-string v1, "javascript:(function() {  var id = \'__app_web_dark_css__\';  var el = document.getElementById(id);  if (!el) {    el = document.createElement(\'style\');    el.id = id;    (document.head || document.documentElement).appendChild(el);  }  el.innerHTML = \'    html, body { background-color: #121212 !important; color: #d4d4d8 !important; }     div, section, article, main, header, footer, nav, aside { background-color: #121212 !important; color: #d4d4d8 !important; border-color: #27272a !important; }     p, span, li, td, th, h1, h2, h3, h4, h5, h6, label { color: #d4d4d8 !important; }     a, a * { color: #60a5fa !important; }     input, textarea, select, button { background-color: #27272a !important; color: #f4f4f5 !important; border-color: #3f3f46 !important; }     img { filter: brightness(0.85) !important; }   \';})();"

    invoke-virtual {p1, v1, v0}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 602
    return-void

    .line 582
    :cond_1
    :goto_0
    return-void
.end method

.method private injectSachiepvienBypass(Landroid/webkit/WebView;)V
    .locals 2

    .line 724
    if-nez p1, :cond_0

    return-void

    .line 725
    :cond_0
    nop

    .line 752
    const/4 v0, 0x0

    const-string v1, "javascript:(function() {  var links = document.querySelectorAll(\'a[href*=\"redirect.html\"]\');  for (var i = 0; i < links.length; i++) {    var a = links[i];    var href = a.getAttribute(\'href\');    if (href) {      var match = href.match(/[?&]url=([^&]+)/);      if (match) {        try {          var raw = match[1];          var decoded = atob(decodeURIComponent(raw));          if (decoded && (decoded.indexOf(\'http://\') === 0 || decoded.indexOf(\'https://\') === 0)) {            a.setAttribute(\'href\', decoded);            a.style.backgroundColor = \'#10B981\';            a.style.backgroundImage = \'none\';            a.style.color = \'#ffffff\';            a.style.fontWeight = \'bold\';            a.style.borderRadius = \'8px\';            a.style.padding = \'12px 18px\';            a.innerText = \'\u26a1 B\u1ea4M \u0110\u1ec2 T\u1ea2I TR\u1ef0C TI\u1ebeP (\u0110\u00c3 BYPASS)\';          }        } catch(e) {}      }    }  }})();"

    invoke-virtual {p1, v1, v0}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 753
    return-void
.end method

.method private injectAdBlock(Landroid/webkit/WebView;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const-string v1, "javascript:(function() { var id = '__app_adblock_css__'; if (!document.getElementById(id)) {   var el = document.createElement('style');   el.id = id;   el.innerHTML = '[id*=banner], [class*=banner], [id*=popup], [class*=popup], [id*=adv], [class*=adv], [id*=ads], [class*=ads], [id*=floating], [class*=floating], iframe[src*=bet], iframe[src*=ad], iframe[src*=f8], iframe[src*=aff], a[href*=bet], a[href*=f8], a[href*=f168], a[href*=jun88], a[href*=shbet], a[href*=hi88], a[href*=new88], a[href*=789], a[href*=casino], a[href*=gamebai], a[href*=nohu], a[href*=taixiu], a[href*=okvip], a[href*=kubet], a[href*=bk8], a[href*=sunwin], a[href*=go88], a[href*=hitclub], a[href*=b52], a[href*=fun88], a[href*=w88], a[href*=m88], a[href*=fb88], a[href*=rikvip], div[class*=\\\"ad-\\\"], div[id*=\\\"ad-\\\"] { display: none !important; visibility: hidden !important; height: 0 !important; width: 0 !important; pointer-events: none !important; opacity: 0 !important; }';   (document.head || document.documentElement).appendChild(el); } function purgeAds() {   var sel = '[id*=banner], [class*=banner], [id*=popup], [class*=popup], iframe[src*=bet], iframe[src*=ad], a[href*=bet], a[href*=f8], a[href*=f168], a[href*=jun88], a[href*=shbet], a[href*=hi88], a[href*=new88], a[href*=789], a[href*=casino], a[href*=gamebai], a[href*=okvip], a[href*=kubet], a[href*=bk8], a[href*=sunwin], a[href*=go88], a[href*=hitclub], a[href*=b52], a[href*=fun88], a[href*=w88], a[href*=m88], a[href*=fb88], a[href*=rikvip]';   var nodes = document.querySelectorAll(sel);   for (var i = 0; i < nodes.length; i++) { try { nodes[i].remove(); } catch(e){} } } purgeAds(); if (!window.__adblock_obs__) {   window.__adblock_obs__ = new MutationObserver(purgeAds);   window.__adblock_obs__.observe(document.documentElement || document.body, { childList: true, subtree: true }); } })();"

    invoke-virtual {p1, v1, v0}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void
.end method


.method private loadUrl(Ljava/lang/String;)V
    .locals 1

    .line 615
    iget-object v0, p0, Lcom/doctruyen/reader/web/WebBrowseActivity;->etAddress:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 616
    iget-object v0, p0, Lcom/doctruyen/reader/web/WebBrowseActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 617
    return-void
.end method

.method private openExternalLink(Ljava/lang/String;)V
    .locals 3

    .line 716
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 717
    invoke-virtual {p0, v0}, Lcom/doctruyen/reader/web/WebBrowseActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 720
    goto :goto_0

    .line 718
    :catch_0
    move-exception v0

    .line 719
    iget-object v0, p0, Lcom/doctruyen/reader/web/WebBrowseActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 721
    :goto_0
    return-void
.end method

.method private removeDarkCss(Landroid/webkit/WebView;)V
    .locals 2

    .line 605
    if-nez p1, :cond_0

    return-void

    .line 606
    :cond_0
    nop

    .line 611
    const/4 v0, 0x0

    const-string v1, "javascript:(function() {  var el = document.getElementById(\'__app_web_dark_css__\');  if (el) el.remove();})();"

    invoke-virtual {p1, v1, v0}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 612
    return-void
.end method

.method private resolveDirectLink(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    .line 681
    const-string p1, "\u26a1 \u0110ang bypass x\u00e1c minh, nh\u1ea3y th\u1eb3ng t\u1edbi link t\u1ea3i..."

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 683
    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcom/doctruyen/reader/web/WebBrowseActivity$4;

    invoke-direct {v0, p0, p2}, Lcom/doctruyen/reader/web/WebBrowseActivity$4;-><init>(Lcom/doctruyen/reader/web/WebBrowseActivity;Ljava/lang/String;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 711
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 712
    return-void
.end method

.method private resolveSachiepvienRedirect(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 4

    .line 658
    :try_start_0
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 659
    const-string v1, "url"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 660
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 665
    :cond_0
    nop

    .line 667
    const/4 v1, 0x0

    :try_start_1
    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    .line 668
    new-instance v2, Ljava/lang/String;

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, v1, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 669
    const-string v2, "http://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "https://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v2, :cond_2

    .line 670
    :cond_1
    move-object v0, v1

    goto :goto_0

    .line 672
    :catch_0
    move-exception v1

    :cond_2
    :goto_0
    nop

    .line 674
    :try_start_2
    invoke-direct {p0, p1, v0}, Lcom/doctruyen/reader/web/WebBrowseActivity;->resolveDirectLink(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 677
    goto :goto_2

    .line 661
    :cond_3
    :goto_1
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 662
    return-void

    .line 675
    :catch_1
    move-exception v0

    .line 676
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 678
    :goto_2
    return-void
.end method

.method private saveLastUrl(Ljava/lang/String;)V
    .locals 2

    .line 484
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "http://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "https://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 485
    :cond_0
    const-string v0, "web_browser_prefs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/doctruyen/reader/web/WebBrowseActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 486
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "key_last_url"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 488
    :cond_1
    return-void
.end method

.method private toggleDarkMode()V
    .locals 3

    .line 506
    iget-boolean v0, p0, Lcom/doctruyen/reader/web/WebBrowseActivity;->isDarkMode:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/doctruyen/reader/web/WebBrowseActivity;->isDarkMode:Z

    .line 507
    const-string v0, "app_theme_prefs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/doctruyen/reader/web/WebBrowseActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 508
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "key_dark_mode"

    iget-boolean v2, p0, Lcom/doctruyen/reader/web/WebBrowseActivity;->isDarkMode:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 509
    iget-boolean v0, p0, Lcom/doctruyen/reader/web/WebBrowseActivity;->isDarkMode:Z

    invoke-direct {p0, v0}, Lcom/doctruyen/reader/web/WebBrowseActivity;->applyWebTheme(Z)V

    .line 510
    return-void
.end method


# virtual methods
.method synthetic lambda$addShortcutButton$7$com-doctruyen-reader-web-WebBrowseActivity(Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    .line 500
    invoke-direct {p0, p1}, Lcom/doctruyen/reader/web/WebBrowseActivity;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$handleReadModeClick$6$com-doctruyen-reader-web-WebBrowseActivity(Ljava/lang/String;)V
    .locals 6

    .line 420
    iget-object v0, p0, Lcom/doctruyen/reader/web/WebBrowseActivity;->btnActionRead:Landroid/widget/Button;

    const-string v1, "\u26a1 CHUY\u1ec2N SANG CH\u1ebe \u0110\u1ed8 \u0110\u1eccC & CH\u1ea0Y TTS"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 421
    iget-object v0, p0, Lcom/doctruyen/reader/web/WebBrowseActivity;->btnActionRead:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 423
    if-eqz p1, :cond_9

    const-string v0, "null"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_4

    .line 429
    :cond_0
    nop

    .line 430
    :try_start_0
    const-string v0, "\""

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v0, :cond_2

    .line 432
    :try_start_1
    new-instance v0, Lorg/json/JSONTokener;

    invoke-direct {v0, p1}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v0

    .line 433
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 434
    check-cast v0, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object p1, v0

    .line 436
    :cond_1
    :goto_0
    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    .line 438
    :cond_2
    :goto_1
    :try_start_2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 439
    const-string p1, "isChapter"

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 441
    const-string v3, ""

    if-eqz p1, :cond_7

    .line 442
    :try_start_3
    const-string p1, "title"

    const-string v4, "Ch\u01b0\u01a1ng Truy\u1ec7n"

    invoke-virtual {v0, p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/doctruyen/reader/web/WebDirectScraper;->unescapeHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/doctruyen/reader/web/WebBrowseActivity;->cachedChapterTitle:Ljava/lang/String;

    .line 443
    const-string p1, "html"

    invoke-virtual {v0, p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/doctruyen/reader/web/WebBrowseActivity;->cachedChapterHtml:Ljava/lang/String;

    .line 444
    const-string p1, "nextUrl"

    invoke-virtual {v0, p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/doctruyen/reader/web/WebBrowseActivity;->cachedChapterNextUrl:Ljava/lang/String;

    .line 445
    const-string p1, "prevUrl"

    invoke-virtual {v0, p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/doctruyen/reader/web/WebBrowseActivity;->cachedChapterPrevUrl:Ljava/lang/String;

    .line 446
    sget-object p1, Lcom/doctruyen/reader/web/WebBrowseActivity;->cachedChapterNextUrl:Ljava/lang/String;

    if-eqz p1, :cond_3

    sget-object p1, Lcom/doctruyen/reader/web/WebBrowseActivity;->cachedChapterNextUrl:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    sget-object p1, Lcom/doctruyen/reader/web/WebBrowseActivity;->cachedChapterNextUrl:Ljava/lang/String;

    iget-object v3, p0, Lcom/doctruyen/reader/web/WebBrowseActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 447
    :cond_3
    iget-object p1, p0, Lcom/doctruyen/reader/web/WebBrowseActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/doctruyen/reader/web/WebDirectScraper;->guessNextChapterUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/doctruyen/reader/web/WebBrowseActivity;->cachedChapterNextUrl:Ljava/lang/String;

    .line 449
    :cond_4
    sget-object p1, Lcom/doctruyen/reader/web/WebBrowseActivity;->cachedChapterPrevUrl:Ljava/lang/String;

    if-eqz p1, :cond_5

    sget-object p1, Lcom/doctruyen/reader/web/WebBrowseActivity;->cachedChapterPrevUrl:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_5

    sget-object p1, Lcom/doctruyen/reader/web/WebBrowseActivity;->cachedChapterPrevUrl:Ljava/lang/String;

    iget-object v3, p0, Lcom/doctruyen/reader/web/WebBrowseActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 450
    :cond_5
    iget-object p1, p0, Lcom/doctruyen/reader/web/WebBrowseActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/doctruyen/reader/web/WebDirectScraper;->guessPrevChapterUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/doctruyen/reader/web/WebBrowseActivity;->cachedChapterPrevUrl:Ljava/lang/String;

    .line 453
    :cond_6
    new-instance p1, Landroid/content/Intent;

    const-class v3, Lcom/doctruyen/reader/ReaderActivity;

    invoke-direct {p1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 454
    const-string v3, "extra_book_path"

    const-string v4, "url"

    iget-object v5, p0, Lcom/doctruyen/reader/web/WebBrowseActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v5}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 455
    const-string v0, "extra_book_title"

    sget-object v3, Lcom/doctruyen/reader/web/WebBrowseActivity;->cachedChapterTitle:Ljava/lang/String;

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 456
    const-string v0, "extra_is_web"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 457
    const-string v0, "extra_start_index"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 458
    invoke-virtual {p0, p1}, Lcom/doctruyen/reader/web/WebBrowseActivity;->startActivity(Landroid/content/Intent;)V

    .line 459
    goto :goto_2

    .line 460
    :cond_7
    const-string p1, "firstChapUrl"

    invoke-virtual {v0, p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 461
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 462
    const-string v0, "\u0110ang m\u1edf Ch\u01b0\u01a1ng 1 \u0111\u1ec3 \u0111\u1ecdc..."

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 463
    invoke-direct {p0, p1}, Lcom/doctruyen/reader/web/WebBrowseActivity;->loadUrl(Ljava/lang/String;)V

    goto :goto_2

    .line 465
    :cond_8
    const-string p1, "B\u1ea1n \u0111ang \u1edf trang danh m\u1ee5c. Vui l\u00f2ng b\u1ea5m v\u00e0o m\u1ed9t ch\u01b0\u01a1ng trong danh s\u00e1ch \u0111\u1ec3 \u0111\u1ecdc!"

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 470
    :goto_2
    goto :goto_3

    .line 468
    :catch_1
    move-exception p1

    .line 469
    iget-object p1, p0, Lcom/doctruyen/reader/web/WebBrowseActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/doctruyen/reader/web/WebBrowseActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/doctruyen/reader/web/WebBrowseActivity;->fallbackOpenReader(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    :goto_3
    return-void

    .line 424
    :cond_9
    :goto_4
    iget-object p1, p0, Lcom/doctruyen/reader/web/WebBrowseActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/doctruyen/reader/web/WebBrowseActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/doctruyen/reader/web/WebBrowseActivity;->fallbackOpenReader(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    return-void
.end method

.method synthetic lambda$initViews$0$com-doctruyen-reader-web-WebBrowseActivity(Landroid/view/View;)V
    .locals 0

    .line 98
    iget-object p1, p0, Lcom/doctruyen/reader/web/WebBrowseActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoBack()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/doctruyen/reader/web/WebBrowseActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->goBack()V

    goto :goto_0

    .line 99
    :cond_0
    invoke-virtual {p0}, Lcom/doctruyen/reader/web/WebBrowseActivity;->finish()V

    .line 100
    :goto_0
    return-void
.end method

.method synthetic lambda$initViews$1$com-doctruyen-reader-web-WebBrowseActivity(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 112
    iget-object p1, p0, Lcom/doctruyen/reader/web/WebBrowseActivity;->etAddress:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 113
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_2

    .line 114
    const-string p2, "http://"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_1

    const-string p2, "https://"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_1

    .line 115
    const-string p3, "."

    invoke-virtual {p1, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 116
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 118
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "https://www.google.com/search?q="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 121
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lcom/doctruyen/reader/web/WebBrowseActivity;->loadUrl(Ljava/lang/String;)V

    .line 123
    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method synthetic lambda$initViews$2$com-doctruyen-reader-web-WebBrowseActivity(Landroid/view/View;)V
    .locals 2

    .line 131
    iget-object p1, p0, Lcom/doctruyen/reader/web/WebBrowseActivity;->etAddress:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 132
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 133
    const-string v0, "http://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "https://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 134
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 136
    :cond_0
    invoke-direct {p0, p1}, Lcom/doctruyen/reader/web/WebBrowseActivity;->loadUrl(Ljava/lang/String;)V

    .line 138
    :cond_1
    return-void
.end method

.method synthetic lambda$initViews$3$com-doctruyen-reader-web-WebBrowseActivity(Landroid/view/View;)V
    .locals 0

    .line 145
    invoke-direct {p0}, Lcom/doctruyen/reader/web/WebBrowseActivity;->toggleDarkMode()V

    return-void
.end method

.method synthetic lambda$initViews$4$com-doctruyen-reader-web-WebBrowseActivity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    .line 200
    invoke-direct {p0, p1}, Lcom/doctruyen/reader/web/WebBrowseActivity;->openExternalLink(Ljava/lang/String;)V

    .line 201
    return-void
.end method

.method synthetic lambda$initViews$5$com-doctruyen-reader-web-WebBrowseActivity(Landroid/view/View;)V
    .locals 0

    .line 287
    invoke-direct {p0}, Lcom/doctruyen/reader/web/WebBrowseActivity;->handleReadModeClick()V

    return-void
.end method

.method synthetic lambda$resolveDirectLink$8$com-doctruyen-reader-web-WebBrowseActivity(Ljava/lang/String;)V
    .locals 2

    .line 708
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\ud83c\udf89 \u0110\u00e3 t\u1edbi th\u1eb3ng \u0111\u00edch t\u1ea3i: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 709
    invoke-direct {p0, p1}, Lcom/doctruyen/reader/web/WebBrowseActivity;->openExternalLink(Ljava/lang/String;)V

    .line 710
    return-void
.end method

.method synthetic lambda$resolveDirectLink$9$com-doctruyen-reader-web-WebBrowseActivity(Ljava/lang/String;)V
    .locals 3

    .line 684
    nop

    .line 686
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 687
    const-string v1, "GET"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 688
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 689
    const-string v1, "User-Agent"

    const-string v2, "Mozilla/5.0 (Linux; Android 13; Mobile) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Mobile Safari/537.36"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 690
    const/16 v1, 0x1f40

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 691
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 692
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 694
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    .line 695
    const/16 v2, 0x12d

    if-eq v1, v2, :cond_0

    const/16 v2, 0x12e

    if-eq v1, v2, :cond_0

    const/16 v2, 0x12f

    if-eq v1, v2, :cond_0

    const/16 v2, 0x133

    if-eq v1, v2, :cond_0

    const/16 v2, 0x134

    if-ne v1, v2, :cond_1

    .line 696
    :cond_0
    const-string v1, "Location"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 697
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 698
    move-object p1, v1

    .line 701
    :cond_1
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 704
    goto :goto_0

    .line 702
    :catch_0
    move-exception v0

    .line 703
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 706
    :goto_0
    nop

    .line 707
    iget-object v0, p0, Lcom/doctruyen/reader/web/WebBrowseActivity;->mainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/doctruyen/reader/web/WebBrowseActivity$11;

    invoke-direct {v1, p0, p1}, Lcom/doctruyen/reader/web/WebBrowseActivity$11;-><init>(Lcom/doctruyen/reader/web/WebBrowseActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 711
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .line 621
    invoke-virtual {p0}, Lcom/doctruyen/reader/web/WebBrowseActivity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 70
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 71
    invoke-direct {p0}, Lcom/doctruyen/reader/web/WebBrowseActivity;->initViews()V

    .line 73
    invoke-virtual {p0}, Lcom/doctruyen/reader/web/WebBrowseActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "extra_initial_url"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 74
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 75
    :cond_0
    const-string p1, "web_browser_prefs"

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/doctruyen/reader/web/WebBrowseActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 76
    const-string v0, "key_last_url"

    const-string v1, "https://truyenfull.vision"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 78
    :cond_1
    invoke-direct {p0, p1}, Lcom/doctruyen/reader/web/WebBrowseActivity;->loadUrl(Ljava/lang/String;)V

    .line 79
    return-void
.end method
