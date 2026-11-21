.class public Lcom/doctruyen/ui/UiModernizer;
.super Ljava/lang/Object;
.source "UiModernizer.java"


# static fields
.field private static lastBackPressTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 23
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/doctruyen/ui/UiModernizer;->lastBackPressTime:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applyPillRipple(Landroid/view/View;IIFLandroid/content/Context;)V
    .locals 1

    .line 44
    const/4 v0, 0x1

    invoke-static {p1, p2, v0, p3, p4}, Lcom/doctruyen/ui/UiModernizer;->roundBox(IIIFLandroid/content/Context;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object p1

    .line 45
    nop

    .line 46
    const/4 p2, -0x1

    const/4 v0, 0x0

    invoke-static {p2, v0, v0, p3, p4}, Lcom/doctruyen/ui/UiModernizer;->roundBox(IIIFLandroid/content/Context;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object p2

    .line 47
    const/16 p3, 0x2d

    const/16 p4, 0xff

    invoke-static {p3, p4, p4, p4}, Landroid/graphics/Color;->argb(IIII)I

    move-result p3

    .line 48
    new-instance p4, Landroid/graphics/drawable/RippleDrawable;

    invoke-static {p3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p3

    invoke-direct {p4, p3, p1, p2}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 49
    invoke-virtual {p0, p4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 50
    nop

    .line 53
    return-void
.end method

.method public static createMenuExitButton(Landroid/app/Activity;Z)Landroid/widget/Button;
    .locals 3

    .line 56
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 57
    const-string v1, "\ud83c\udfe0 Menu"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 58
    const/high16 v1, 0x41480000    # 12.5f

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextSize(F)V

    .line 59
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 60
    if-eqz p1, :cond_0

    const-string v1, "#38BDF8"

    goto :goto_0

    :cond_0
    const-string v1, "#0284C7"

    :goto_0
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    .line 61
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 63
    if-eqz p1, :cond_1

    const-string v1, "#1E293B"

    goto :goto_1

    :cond_1
    const-string v1, "#E0F2FE"

    :goto_1
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    .line 64
    if-eqz p1, :cond_2

    const-string p1, "#334155"

    goto :goto_2

    :cond_2
    const-string p1, "#BAE6FD"

    :goto_2
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    .line 65
    const/high16 v2, 0x41900000    # 18.0f

    invoke-static {v0, v1, p1, v2, p0}, Lcom/doctruyen/ui/UiModernizer;->applyPillRipple(Landroid/view/View;IIFLandroid/content/Context;)V

    .line 67
    const/high16 p1, 0x41400000    # 12.0f

    invoke-static {p0, p1}, Lcom/doctruyen/ui/UiModernizer;->dp(Landroid/content/Context;F)I

    move-result p1

    .line 68
    const/high16 v1, 0x40c00000    # 6.0f

    invoke-static {p0, v1}, Lcom/doctruyen/ui/UiModernizer;->dp(Landroid/content/Context;F)I

    move-result v1

    .line 69
    invoke-virtual {v0, p1, v1, p1, v1}, Landroid/widget/Button;->setPadding(IIII)V

    .line 71
    new-instance p1, Lcom/doctruyen/ui/UiModernizer$1;

    invoke-direct {p1, p0}, Lcom/doctruyen/ui/UiModernizer$1;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    return-object v0
.end method

.method public static dp(Landroid/content/Context;F)I
    .locals 1

    .line 26
    if-nez p0, :cond_0

    float-to-int p0, p1

    return p0

    .line 27
    :cond_0
    nop

    .line 28
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    .line 27
    const/4 v0, 0x1

    invoke-static {v0, p1, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method public static handleSmartBack(Landroid/app/Activity;Landroid/webkit/WebView;)Z
    .locals 8

    .line 83
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 84
    sget-wide v2, Lcom/doctruyen/ui/UiModernizer;->lastBackPressTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x708

    const/4 v6, 0x1

    cmp-long v7, v2, v4

    if-gez v7, :cond_1

    .line 85
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 86
    :cond_0
    return v6

    .line 89
    :cond_1
    const/4 v2, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 90
    invoke-virtual {p1}, Landroid/webkit/WebView;->goBack()V

    .line 91
    sput-wide v0, Lcom/doctruyen/ui/UiModernizer;->lastBackPressTime:J

    .line 92
    const-string p1, "Nh\u1ea5n [Back] l\u1ea7n n\u1eefa \u0111\u1ec3 tho\u00e1t v\u1ec1 Menu"

    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 93
    return v6

    .line 96
    :cond_2
    if-eqz p0, :cond_3

    .line 97
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 98
    return v6

    .line 100
    :cond_3
    return v2
.end method

.method public static roundBox(IIIFLandroid/content/Context;)Landroid/graphics/drawable/GradientDrawable;
    .locals 2

    .line 33
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 34
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 35
    invoke-virtual {v0, p0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 36
    if-lez p2, :cond_0

    if-eqz p1, :cond_0

    .line 37
    int-to-float p0, p2

    invoke-static {p4, p0}, Lcom/doctruyen/ui/UiModernizer;->dp(Landroid/content/Context;F)I

    move-result p0

    invoke-virtual {v0, p0, p1}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 39
    :cond_0
    invoke-static {p4, p3}, Lcom/doctruyen/ui/UiModernizer;->dp(Landroid/content/Context;F)I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 40
    return-object v0
.end method

.method public static setupWebToolbar(Landroid/app/Activity;Landroid/widget/LinearLayout;Z)V
    .locals 22

    .line 104
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    if-eqz v1, :cond_15

    if-nez v0, :cond_0

    goto/16 :goto_d

    .line 105
    :cond_0
    nop

    .line 106
    nop

    .line 107
    nop

    .line 108
    nop

    .line 110
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v5, v3

    move-object v6, v5

    move-object v7, v6

    const/4 v8, 0x0

    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v9

    const-string v10, "\u2600"

    const-string v11, "\ud83c\udf19"

    const-string v12, "\u0110i"

    const-string v13, "\u00ab"

    if-ge v8, v9, :cond_7

    .line 111
    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 112
    instance-of v14, v9, Landroid/widget/EditText;

    if-eqz v14, :cond_1

    .line 113
    check-cast v9, Landroid/widget/EditText;

    move-object v5, v9

    goto :goto_2

    .line 114
    :cond_1
    instance-of v14, v9, Landroid/widget/Button;

    if-eqz v14, :cond_6

    .line 115
    check-cast v9, Landroid/widget/Button;

    .line 116
    invoke-virtual {v9}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v14

    .line 117
    if-eqz v14, :cond_6

    .line 118
    invoke-interface {v14}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v14

    .line 119
    invoke-virtual {v14, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_2

    move-object v3, v9

    goto :goto_2

    .line 120
    :cond_2
    invoke-virtual {v14, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_5

    const-string v12, "Go"

    invoke-virtual {v14, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_3

    goto :goto_1

    .line 121
    :cond_3
    invoke-virtual {v14, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_4

    invoke-virtual {v14, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_6

    :cond_4
    move-object v7, v9

    goto :goto_2

    .line 120
    :cond_5
    :goto_1
    move-object v6, v9

    .line 110
    :cond_6
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 126
    :cond_7
    invoke-static {v0, v2}, Lcom/doctruyen/ui/UiModernizer;->createMenuExitButton(Landroid/app/Activity;Z)Landroid/widget/Button;

    move-result-object v8

    .line 128
    invoke-virtual/range {p1 .. p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 129
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 130
    const/16 v9, 0x10

    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 131
    const/high16 v9, 0x41000000    # 8.0f

    invoke-static {v0, v9}, Lcom/doctruyen/ui/UiModernizer;->dp(Landroid/content/Context;F)I

    move-result v9

    .line 132
    invoke-virtual {v1, v9, v9, v9, v9}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 133
    const-string v9, "#0F172A"

    const-string v14, "#F8FAFC"

    if-eqz v2, :cond_8

    invoke-static {v9}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v15

    goto :goto_3

    :cond_8
    invoke-static {v14}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v15

    .line 134
    :goto_3
    invoke-virtual {v1, v15}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 136
    if-eqz v2, :cond_9

    invoke-static {v14}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v9

    goto :goto_4

    :cond_9
    invoke-static {v9}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v9

    .line 137
    :goto_4
    if-eqz v2, :cond_a

    const-string v14, "#94A3B8"

    goto :goto_5

    :cond_a
    const-string v14, "#64748B"

    :goto_5
    invoke-static {v14}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v14

    .line 138
    const-string v15, "#1E293B"

    if-eqz v2, :cond_b

    invoke-static {v15}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v16

    goto :goto_6

    :cond_b
    const-string v16, "#F1F5F9"

    invoke-static/range {v16 .. v16}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v16

    :goto_6
    move/from16 v17, v16

    .line 139
    const-string v16, "#334155"

    if-eqz v2, :cond_c

    invoke-static/range {v16 .. v16}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v18

    goto :goto_7

    :cond_c
    const-string v18, "#CBD5E1"

    invoke-static/range {v18 .. v18}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v18

    :goto_7
    move/from16 v19, v18

    .line 142
    const/high16 v4, 0x42180000    # 38.0f

    if-eqz v8, :cond_d

    .line 143
    move-object/from16 v20, v10

    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    .line 144
    move-object/from16 v21, v11

    invoke-static {v0, v4}, Lcom/doctruyen/ui/UiModernizer;->dp(Landroid/content/Context;F)I

    move-result v11

    const/4 v4, -0x2

    invoke-direct {v10, v4, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 146
    const/high16 v4, 0x40c00000    # 6.0f

    invoke-static {v0, v4}, Lcom/doctruyen/ui/UiModernizer;->dp(Landroid/content/Context;F)I

    move-result v11

    const/4 v4, 0x0

    invoke-virtual {v10, v4, v4, v11, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 147
    invoke-virtual {v8, v10}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 148
    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_8

    .line 142
    :cond_d
    move-object/from16 v20, v10

    move-object/from16 v21, v11

    .line 152
    :goto_8
    const/high16 v4, 0x41980000    # 19.0f

    if-eqz v3, :cond_e

    .line 153
    invoke-virtual {v3, v13}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 154
    const/high16 v8, 0x41800000    # 16.0f

    invoke-virtual {v3, v8}, Landroid/widget/Button;->setTextSize(F)V

    .line 155
    invoke-virtual {v3, v9}, Landroid/widget/Button;->setTextColor(I)V

    .line 156
    move/from16 v8, v17

    move/from16 v10, v19

    invoke-static {v3, v8, v10, v4, v0}, Lcom/doctruyen/ui/UiModernizer;->applyPillRipple(Landroid/view/View;IIFLandroid/content/Context;)V

    .line 157
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    .line 158
    const/high16 v13, 0x42180000    # 38.0f

    invoke-static {v0, v13}, Lcom/doctruyen/ui/UiModernizer;->dp(Landroid/content/Context;F)I

    move-result v4

    move/from16 v19, v8

    invoke-static {v0, v13}, Lcom/doctruyen/ui/UiModernizer;->dp(Landroid/content/Context;F)I

    move-result v8

    invoke-direct {v11, v4, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 160
    const/high16 v4, 0x40c00000    # 6.0f

    invoke-static {v0, v4}, Lcom/doctruyen/ui/UiModernizer;->dp(Landroid/content/Context;F)I

    move-result v8

    const/4 v4, 0x0

    invoke-virtual {v11, v4, v4, v8, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 161
    invoke-virtual {v3, v11}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 162
    invoke-virtual {v3, v4, v4, v4, v4}, Landroid/widget/Button;->setPadding(IIII)V

    .line 163
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_9

    .line 152
    :cond_e
    move/from16 v10, v19

    move/from16 v19, v17

    .line 167
    :goto_9
    const/high16 v3, 0x41500000    # 13.0f

    if-eqz v5, :cond_11

    .line 168
    invoke-virtual {v5, v3}, Landroid/widget/EditText;->setTextSize(F)V

    .line 169
    invoke-virtual {v5, v9}, Landroid/widget/EditText;->setTextColor(I)V

    .line 170
    invoke-virtual {v5, v14}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 171
    if-eqz v2, :cond_f

    invoke-static {v15}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    goto :goto_a

    :cond_f
    const-string v4, "#FFFFFF"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    .line 172
    :goto_a
    if-eqz v2, :cond_10

    invoke-static/range {v16 .. v16}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    goto :goto_b

    :cond_10
    const-string v8, "#E2E8F0"

    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    .line 173
    :goto_b
    const/4 v11, 0x1

    const/high16 v13, 0x41980000    # 19.0f

    invoke-static {v4, v8, v11, v13, v0}, Lcom/doctruyen/ui/UiModernizer;->roundBox(IIIFLandroid/content/Context;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/EditText;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 174
    const/high16 v4, 0x41400000    # 12.0f

    invoke-static {v0, v4}, Lcom/doctruyen/ui/UiModernizer;->dp(Landroid/content/Context;F)I

    move-result v4

    .line 175
    const/high16 v8, 0x40c00000    # 6.0f

    invoke-static {v0, v8}, Lcom/doctruyen/ui/UiModernizer;->dp(Landroid/content/Context;F)I

    move-result v11

    .line 176
    invoke-virtual {v5, v4, v11, v4, v11}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 177
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 178
    const/high16 v11, 0x42180000    # 38.0f

    invoke-static {v0, v11}, Lcom/doctruyen/ui/UiModernizer;->dp(Landroid/content/Context;F)I

    move-result v13

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v14, 0x0

    invoke-direct {v4, v14, v13, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 180
    invoke-static {v0, v8}, Lcom/doctruyen/ui/UiModernizer;->dp(Landroid/content/Context;F)I

    move-result v11

    invoke-virtual {v4, v14, v14, v11, v14}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 181
    invoke-virtual {v5, v4}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 182
    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 186
    :cond_11
    if-eqz v6, :cond_12

    .line 187
    invoke-virtual {v6, v12}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 188
    invoke-virtual {v6, v3}, Landroid/widget/Button;->setTextSize(F)V

    .line 189
    const/4 v3, -0x1

    invoke-virtual {v6, v3}, Landroid/widget/Button;->setTextColor(I)V

    .line 190
    const-string v3, "#2563EB"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    .line 191
    const/high16 v4, 0x41980000    # 19.0f

    const/4 v5, 0x0

    invoke-static {v6, v3, v5, v4, v0}, Lcom/doctruyen/ui/UiModernizer;->applyPillRipple(Landroid/view/View;IIFLandroid/content/Context;)V

    .line 192
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 193
    const/high16 v4, 0x42380000    # 46.0f

    invoke-static {v0, v4}, Lcom/doctruyen/ui/UiModernizer;->dp(Landroid/content/Context;F)I

    move-result v4

    const/high16 v8, 0x42180000    # 38.0f

    invoke-static {v0, v8}, Lcom/doctruyen/ui/UiModernizer;->dp(Landroid/content/Context;F)I

    move-result v11

    invoke-direct {v3, v4, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 195
    const/high16 v4, 0x40c00000    # 6.0f

    invoke-static {v0, v4}, Lcom/doctruyen/ui/UiModernizer;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {v3, v5, v5, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 196
    invoke-virtual {v6, v3}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 197
    invoke-virtual {v6, v5, v5, v5, v5}, Landroid/widget/Button;->setPadding(IIII)V

    .line 198
    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 202
    :cond_12
    if-eqz v7, :cond_14

    .line 203
    if-eqz v2, :cond_13

    move-object/from16 v2, v21

    goto :goto_c

    :cond_13
    move-object/from16 v2, v20

    :goto_c
    invoke-virtual {v7, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 204
    const/high16 v2, 0x41600000    # 14.0f

    invoke-virtual {v7, v2}, Landroid/widget/Button;->setTextSize(F)V

    .line 205
    invoke-virtual {v7, v9}, Landroid/widget/Button;->setTextColor(I)V

    .line 206
    move/from16 v2, v19

    const/high16 v3, 0x41980000    # 19.0f

    invoke-static {v7, v2, v10, v3, v0}, Lcom/doctruyen/ui/UiModernizer;->applyPillRipple(Landroid/view/View;IIFLandroid/content/Context;)V

    .line 207
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 208
    const/high16 v3, 0x42180000    # 38.0f

    invoke-static {v0, v3}, Lcom/doctruyen/ui/UiModernizer;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-static {v0, v3}, Lcom/doctruyen/ui/UiModernizer;->dp(Landroid/content/Context;F)I

    move-result v0

    invoke-direct {v2, v4, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 210
    invoke-virtual {v7, v2}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 211
    const/4 v0, 0x0

    invoke-virtual {v7, v0, v0, v0, v0}, Landroid/widget/Button;->setPadding(IIII)V

    .line 212
    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 214
    :cond_14
    return-void

    .line 104
    :cond_15
    :goto_d
    return-void
.end method

.method public static styleQuickActions(Landroid/widget/Button;Landroid/widget/Button;ZLandroid/content/Context;)V
    .locals 7

    .line 217
    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v1, 0x41400000    # 12.0f

    const/high16 v2, 0x41600000    # 14.0f

    const/high16 v3, 0x41480000    # 12.5f

    const/4 v4, 0x0

    if-eqz p0, :cond_0

    .line 218
    const-string v5, "\ud83d\udcc2 Nh\u1eadp S\u00e1ch\nEPUB, TXT, PDF"

    invoke-virtual {p0, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 219
    invoke-virtual {p0, v3}, Landroid/widget/Button;->setTextSize(F)V

    .line 220
    sget-object v5, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {p0, v5}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 221
    const/4 v5, -0x1

    invoke-virtual {p0, v5}, Landroid/widget/Button;->setTextColor(I)V

    .line 222
    const-string v5, "#2563EB"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    .line 223
    invoke-static {p0, v5, v4, v2, p3}, Lcom/doctruyen/ui/UiModernizer;->applyPillRipple(Landroid/view/View;IIFLandroid/content/Context;)V

    .line 224
    invoke-static {p3, v1}, Lcom/doctruyen/ui/UiModernizer;->dp(Landroid/content/Context;F)I

    move-result v5

    .line 225
    invoke-virtual {p0, v5, v5, v5, v5}, Landroid/widget/Button;->setPadding(IIII)V

    .line 226
    invoke-virtual {p0}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 227
    if-eqz v5, :cond_0

    .line 228
    iput v0, v5, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 229
    iput v4, v5, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 230
    const/high16 v6, 0x41000000    # 8.0f

    invoke-static {p3, v6}, Lcom/doctruyen/ui/UiModernizer;->dp(Landroid/content/Context;F)I

    move-result v6

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 231
    invoke-virtual {p0, v5}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 235
    :cond_0
    if-eqz p1, :cond_4

    .line 236
    const-string p0, "\ud83d\udd04 Qu\u00e9t T\u1ef1 \u0110\u1ed9ng\nTh\u01b0 m\u1ee5c Download"

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 237
    invoke-virtual {p1, v3}, Landroid/widget/Button;->setTextSize(F)V

    .line 238
    sget-object p0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 239
    if-eqz p2, :cond_1

    const-string p0, "#F1F5F9"

    goto :goto_0

    :cond_1
    const-string p0, "#0F172A"

    :goto_0
    invoke-static {p0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p0

    .line 240
    invoke-virtual {p1, p0}, Landroid/widget/Button;->setTextColor(I)V

    .line 241
    if-eqz p2, :cond_2

    const-string p0, "#161E2E"

    goto :goto_1

    :cond_2
    const-string p0, "#FFFFFF"

    :goto_1
    invoke-static {p0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p0

    .line 242
    if-eqz p2, :cond_3

    const-string p2, "#293548"

    goto :goto_2

    :cond_3
    const-string p2, "#CBD5E1"

    :goto_2
    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    .line 243
    invoke-static {p1, p0, p2, v2, p3}, Lcom/doctruyen/ui/UiModernizer;->applyPillRipple(Landroid/view/View;IIFLandroid/content/Context;)V

    .line 244
    invoke-static {p3, v1}, Lcom/doctruyen/ui/UiModernizer;->dp(Landroid/content/Context;F)I

    move-result p0

    .line 245
    invoke-virtual {p1, p0, p0, p0, p0}, Landroid/widget/Button;->setPadding(IIII)V

    .line 246
    invoke-virtual {p1}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/widget/LinearLayout$LayoutParams;

    .line 247
    if-eqz p0, :cond_4

    .line 248
    iput v0, p0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 249
    iput v4, p0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 250
    invoke-virtual {p1, p0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 253
    :cond_4
    return-void
.end method

.method public static styleTabPill(Landroid/widget/TextView;ZZLandroid/content/Context;)V
    .locals 2

    .line 256
    if-nez p0, :cond_0

    return-void

    .line 257
    :cond_0
    const/high16 v0, 0x41500000    # 13.0f

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 258
    const/high16 v0, 0x41a00000    # 20.0f

    if-eqz p1, :cond_1

    .line 259
    sget-object p1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 260
    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 261
    const-string p1, "#2563EB"

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    .line 262
    const/4 p2, 0x0

    invoke-static {p1, p2, p2, v0, p3}, Lcom/doctruyen/ui/UiModernizer;->roundBox(IIIFLandroid/content/Context;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 263
    goto :goto_3

    .line 264
    :cond_1
    sget-object p1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 265
    if-eqz p2, :cond_2

    const-string p1, "#94A3B8"

    goto :goto_0

    :cond_2
    const-string p1, "#64748B"

    :goto_0
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    .line 266
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 267
    if-eqz p2, :cond_3

    const-string p1, "#161E2E"

    goto :goto_1

    :cond_3
    const-string p1, "#F1F5F9"

    :goto_1
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    .line 268
    if-eqz p2, :cond_4

    const-string p2, "#232E42"

    goto :goto_2

    :cond_4
    const-string p2, "#E2E8F0"

    :goto_2
    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    .line 269
    const/4 v1, 0x1

    invoke-static {p1, p2, v1, v0, p3}, Lcom/doctruyen/ui/UiModernizer;->roundBox(IIIFLandroid/content/Context;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 271
    :goto_3
    const/high16 p1, 0x41600000    # 14.0f

    invoke-static {p3, p1}, Lcom/doctruyen/ui/UiModernizer;->dp(Landroid/content/Context;F)I

    move-result p1

    .line 272
    const/high16 p2, 0x41000000    # 8.0f

    invoke-static {p3, p2}, Lcom/doctruyen/ui/UiModernizer;->dp(Landroid/content/Context;F)I

    move-result p2

    .line 273
    invoke-virtual {p0, p1, p2, p1, p2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 274
    return-void
.end method
