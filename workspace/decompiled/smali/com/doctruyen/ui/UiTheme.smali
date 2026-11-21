.class public Lcom/doctruyen/ui/UiTheme;
.super Ljava/lang/Object;
.source "UiTheme.java"


# static fields
.field public static final ACCENT_AMBER:I

.field public static final ACCENT_BLUE:I

.field public static final ACCENT_BLUE_LIGHT:I

.field public static final ACCENT_CYAN:I

.field public static final ACCENT_EMERALD:I

.field public static final ACCENT_INDIGO:I

.field public static final ACCENT_ROSE:I

.field public static final DARK_BG:I

.field public static final DARK_BORDER:I

.field public static final DARK_BORDER_SUBTLE:I

.field public static final DARK_SURFACE:I

.field public static final DARK_SURFACE_ELEVATED:I

.field public static final DARK_TEXT_MUTED:I

.field public static final DARK_TEXT_PRIMARY:I

.field public static final DARK_TEXT_SECONDARY:I

.field public static final LIGHT_BG:I

.field public static final LIGHT_BORDER:I

.field public static final LIGHT_BORDER_SUBTLE:I

.field public static final LIGHT_SURFACE:I

.field public static final LIGHT_SURFACE_ELEVATED:I

.field public static final LIGHT_TEXT_MUTED:I

.field public static final LIGHT_TEXT_PRIMARY:I

.field public static final LIGHT_TEXT_SECONDARY:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 20
    const-string v0, "#0A0D14"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/doctruyen/ui/UiTheme;->DARK_BG:I

    .line 21
    const-string v0, "#121722"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/doctruyen/ui/UiTheme;->DARK_SURFACE:I

    .line 22
    const-string v0, "#1A2232"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/doctruyen/ui/UiTheme;->DARK_SURFACE_ELEVATED:I

    .line 23
    const-string v0, "#253046"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/doctruyen/ui/UiTheme;->DARK_BORDER:I

    .line 24
    const-string v0, "#1B2333"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/doctruyen/ui/UiTheme;->DARK_BORDER_SUBTLE:I

    .line 25
    const-string v0, "#F1F5F9"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/doctruyen/ui/UiTheme;->DARK_TEXT_PRIMARY:I

    .line 26
    const-string v1, "#94A3B8"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/doctruyen/ui/UiTheme;->DARK_TEXT_SECONDARY:I

    .line 27
    const-string v2, "#64748B"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/doctruyen/ui/UiTheme;->DARK_TEXT_MUTED:I

    .line 30
    const-string v2, "#F8FAFC"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/doctruyen/ui/UiTheme;->LIGHT_BG:I

    .line 31
    const-string v2, "#FFFFFF"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/doctruyen/ui/UiTheme;->LIGHT_SURFACE:I

    .line 32
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/doctruyen/ui/UiTheme;->LIGHT_SURFACE_ELEVATED:I

    .line 33
    const-string v0, "#E2E8F0"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/doctruyen/ui/UiTheme;->LIGHT_BORDER:I

    .line 34
    const-string v0, "#EDF2F7"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/doctruyen/ui/UiTheme;->LIGHT_BORDER_SUBTLE:I

    .line 35
    const-string v0, "#0F172A"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/doctruyen/ui/UiTheme;->LIGHT_TEXT_PRIMARY:I

    .line 36
    const-string v0, "#475569"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/doctruyen/ui/UiTheme;->LIGHT_TEXT_SECONDARY:I

    .line 37
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/doctruyen/ui/UiTheme;->LIGHT_TEXT_MUTED:I

    .line 40
    const-string v0, "#3B82F6"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/doctruyen/ui/UiTheme;->ACCENT_BLUE:I

    .line 41
    const-string v0, "#60A5FA"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/doctruyen/ui/UiTheme;->ACCENT_BLUE_LIGHT:I

    .line 42
    const-string v0, "#06B6D4"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/doctruyen/ui/UiTheme;->ACCENT_CYAN:I

    .line 43
    const-string v0, "#10B981"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/doctruyen/ui/UiTheme;->ACCENT_EMERALD:I

    .line 44
    const-string v0, "#F59E0B"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/doctruyen/ui/UiTheme;->ACCENT_AMBER:I

    .line 45
    const-string v0, "#F43F5E"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/doctruyen/ui/UiTheme;->ACCENT_ROSE:I

    .line 46
    const-string v0, "#6366F1"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/doctruyen/ui/UiTheme;->ACCENT_INDIGO:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applySystemBarColors(Landroid/app/Activity;IZ)V
    .locals 1

    .line 96
    if-nez p0, :cond_0

    return-void

    .line 97
    :cond_0
    nop

    .line 98
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    .line 99
    const/high16 v0, -0x80000000

    invoke-virtual {p0, v0}, Landroid/view/Window;->addFlags(I)V

    .line 100
    const/high16 v0, 0x4000000

    invoke-virtual {p0, v0}, Landroid/view/Window;->clearFlags(I)V

    .line 101
    const/high16 v0, 0x8000000

    invoke-virtual {p0, v0}, Landroid/view/Window;->clearFlags(I)V

    .line 102
    invoke-virtual {p0, p1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 103
    invoke-virtual {p0, p1}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 104
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 106
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-lt p1, v0, :cond_3

    .line 107
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    .line 108
    invoke-virtual {p0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result p1

    .line 109
    const/16 v0, 0x1a

    if-eqz p2, :cond_1

    .line 110
    and-int/lit16 p1, p1, -0x2001

    .line 111
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p2, v0, :cond_2

    .line 112
    and-int/lit8 p1, p1, -0x11

    goto :goto_0

    .line 115
    :cond_1
    or-int/lit16 p1, p1, 0x2000

    .line 116
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p2, v0, :cond_2

    .line 117
    or-int/lit8 p1, p1, 0x10

    .line 120
    :cond_2
    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 123
    :cond_3
    return-void
.end method

.method public static applyTouchFeedback(Landroid/view/View;IIFLandroid/content/Context;)Landroid/view/View;
    .locals 1

    .line 71
    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    invoke-virtual {p4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p4

    iget p4, p4, Landroid/util/DisplayMetrics;->density:F

    .line 72
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 73
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 74
    mul-float p3, p3, p4

    invoke-virtual {v0, p3}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 76
    nop

    .line 77
    new-instance p1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 78
    const/4 p4, -0x1

    invoke-virtual {p1, p4}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 79
    invoke-virtual {p1, p3}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 80
    new-instance p3, Landroid/graphics/drawable/RippleDrawable;

    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    invoke-direct {p3, p2, v0, p1}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 81
    invoke-virtual {p0, p3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 82
    nop

    .line 92
    return-object p0
.end method

.method public static dp(Landroid/content/Context;F)I
    .locals 1

    .line 49
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {v0, p1, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method public static gradientBox(IILandroid/graphics/drawable/GradientDrawable$Orientation;FLandroid/content/Context;)Landroid/graphics/drawable/GradientDrawable;
    .locals 1

    .line 64
    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    invoke-virtual {p4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p4

    iget p4, p4, Landroid/util/DisplayMetrics;->density:F

    .line 65
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    filled-new-array {p0, p1}, [I

    move-result-object p0

    invoke-direct {v0, p2, p0}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 66
    mul-float p3, p3, p4

    invoke-virtual {v0, p3}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 67
    return-object v0
.end method

.method public static roundBox(IIIFLandroid/content/Context;)Landroid/graphics/drawable/GradientDrawable;
    .locals 1

    .line 53
    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    invoke-virtual {p4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p4

    iget p4, p4, Landroid/util/DisplayMetrics;->density:F

    .line 54
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 55
    invoke-virtual {v0, p0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 56
    mul-float p3, p3, p4

    invoke-virtual {v0, p3}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 57
    if-lez p2, :cond_0

    if-eqz p1, :cond_0

    .line 58
    int-to-float p0, p2

    mul-float p0, p0, p4

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    const/4 p2, 0x1

    invoke-static {p2, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-virtual {v0, p0, p1}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 60
    :cond_0
    return-object v0
.end method
