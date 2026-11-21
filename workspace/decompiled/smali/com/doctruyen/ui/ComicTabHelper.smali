.class public Lcom/doctruyen/ui/ComicTabHelper;
.super Ljava/lang/Object;
.source "ComicTabHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static refreshComicHistory(Landroid/app/Activity;Landroid/widget/LinearLayout;Z)V
    .locals 1

    .line 52
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 53
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 54
    instance-of v0, p1, Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    .line 55
    check-cast p1, Landroid/widget/LinearLayout;

    invoke-static {p0, p1, p2}, Lcom/doctruyen/ui/ComicTabHelper;->renderComicHistory(Landroid/app/Activity;Landroid/widget/LinearLayout;Z)V

    .line 57
    :cond_1
    return-void

    .line 52
    :cond_2
    :goto_0
    return-void
.end method

.method public static renderComicHistory(Landroid/app/Activity;Landroid/widget/LinearLayout;Z)V
    .locals 19

    .line 60
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    if-eqz v1, :cond_b

    if-nez v2, :cond_0

    goto/16 :goto_9

    .line 61
    :cond_0
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 63
    invoke-static {v1}, Lcom/doctruyen/data/ComicHistoryManager;->getHistory(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 64
    if-eqz v0, :cond_a

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    goto/16 :goto_8

    .line 68
    :cond_1
    if-eqz v3, :cond_2

    sget v4, Lcom/doctruyen/ui/UiTheme;->DARK_SURFACE:I

    goto :goto_0

    :cond_2
    sget v4, Lcom/doctruyen/ui/UiTheme;->LIGHT_SURFACE:I

    .line 69
    :goto_0
    if-eqz v3, :cond_3

    sget v5, Lcom/doctruyen/ui/UiTheme;->DARK_BORDER:I

    goto :goto_1

    :cond_3
    sget v5, Lcom/doctruyen/ui/UiTheme;->LIGHT_BORDER:I

    .line 70
    :goto_1
    if-eqz v3, :cond_4

    sget v6, Lcom/doctruyen/ui/UiTheme;->DARK_TEXT_PRIMARY:I

    goto :goto_2

    :cond_4
    sget v6, Lcom/doctruyen/ui/UiTheme;->LIGHT_TEXT_PRIMARY:I

    .line 71
    :goto_2
    if-eqz v3, :cond_5

    sget v7, Lcom/doctruyen/ui/UiTheme;->DARK_TEXT_SECONDARY:I

    goto :goto_3

    :cond_5
    sget v7, Lcom/doctruyen/ui/UiTheme;->LIGHT_TEXT_SECONDARY:I

    .line 72
    :goto_3
    if-eqz v3, :cond_6

    sget v8, Lcom/doctruyen/ui/UiTheme;->DARK_TEXT_MUTED:I

    goto :goto_4

    :cond_6
    sget v8, Lcom/doctruyen/ui/UiTheme;->LIGHT_TEXT_MUTED:I

    .line 75
    :goto_4
    new-instance v9, Landroid/widget/LinearLayout;

    invoke-direct {v9, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 76
    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 77
    const/16 v11, 0x10

    invoke-virtual {v9, v11}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 78
    const/high16 v12, 0x40800000    # 4.0f

    invoke-static {v1, v12}, Lcom/doctruyen/ui/UiTheme;->dp(Landroid/content/Context;F)I

    move-result v13

    const/high16 v14, 0x41000000    # 8.0f

    invoke-static {v1, v14}, Lcom/doctruyen/ui/UiTheme;->dp(Landroid/content/Context;F)I

    move-result v15

    invoke-virtual {v9, v10, v13, v10, v15}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 80
    new-instance v13, Landroid/widget/TextView;

    invoke-direct {v13, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 81
    const-string v15, "\ud83d\udd52 L\u1ecaCH S\u1eec TRUY\u1ec6N TRANH \u0110ANG \u0110\u1eccC"

    invoke-virtual {v13, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    const/high16 v15, 0x41500000    # 13.0f

    invoke-virtual {v13, v15}, Landroid/widget/TextView;->setTextSize(F)V

    .line 83
    sget-object v15, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v13, v15}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 84
    sget v15, Lcom/doctruyen/ui/UiTheme;->ACCENT_CYAN:I

    invoke-virtual {v13, v15}, Landroid/widget/TextView;->setTextColor(I)V

    .line 85
    new-instance v15, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v11, -0x2

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-direct {v15, v10, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 86
    invoke-virtual {v9, v13, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 88
    new-instance v13, Landroid/widget/TextView;

    invoke-direct {v13, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 89
    const-string v15, "\ud83d\uddd1 X\u00f3a h\u1ebft"

    invoke-virtual {v13, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    const/high16 v15, 0x41400000    # 12.0f

    invoke-virtual {v13, v15}, Landroid/widget/TextView;->setTextSize(F)V

    .line 91
    sget v15, Lcom/doctruyen/ui/UiTheme;->ACCENT_ROSE:I

    invoke-virtual {v13, v15}, Landroid/widget/TextView;->setTextColor(I)V

    .line 92
    invoke-static {v1, v14}, Lcom/doctruyen/ui/UiTheme;->dp(Landroid/content/Context;F)I

    move-result v15

    .line 93
    const/high16 v12, 0x40800000    # 4.0f

    invoke-static {v1, v12}, Lcom/doctruyen/ui/UiTheme;->dp(Landroid/content/Context;F)I

    move-result v10

    .line 94
    invoke-virtual {v13, v15, v10, v15, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 95
    const/4 v10, 0x1

    invoke-static {v4, v5, v10, v14, v1}, Lcom/doctruyen/ui/UiTheme;->roundBox(IIIFLandroid/content/Context;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v12

    invoke-virtual {v13, v12}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 96
    new-instance v12, Lcom/doctruyen/ui/ComicTabHelper$1;

    invoke-direct {v12, v1, v2, v3}, Lcom/doctruyen/ui/ComicTabHelper$1;-><init>(Landroid/app/Activity;Landroid/widget/LinearLayout;Z)V

    invoke-virtual {v13, v12}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    invoke-virtual {v9, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 115
    invoke-virtual {v2, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 117
    new-instance v9, Ljava/text/SimpleDateFormat;

    const-string v12, "HH:mm dd/MM"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v13

    invoke-direct {v9, v12, v13}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 119
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_5
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Lcom/doctruyen/data/ComicHistoryManager$ComicHistoryItem;

    .line 120
    new-instance v15, Landroid/widget/LinearLayout;

    invoke-direct {v15, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 121
    invoke-virtual {v15, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 122
    const/high16 v0, 0x41600000    # 14.0f

    invoke-static {v1, v0}, Lcom/doctruyen/ui/UiTheme;->dp(Landroid/content/Context;F)I

    move-result v14

    .line 123
    const/high16 v0, 0x41200000    # 10.0f

    invoke-static {v1, v0}, Lcom/doctruyen/ui/UiTheme;->dp(Landroid/content/Context;F)I

    move-result v11

    .line 124
    invoke-virtual {v15, v14, v11, v14, v11}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 125
    invoke-static {v4, v5, v10, v0, v1}, Lcom/doctruyen/ui/UiTheme;->roundBox(IIIFLandroid/content/Context;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-virtual {v15, v0}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 127
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v11, -0x1

    const/4 v14, -0x2

    invoke-direct {v0, v11, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 128
    const/high16 v14, 0x41000000    # 8.0f

    invoke-static {v1, v14}, Lcom/doctruyen/ui/UiTheme;->dp(Landroid/content/Context;F)I

    move-result v10

    const/4 v14, 0x0

    invoke-virtual {v0, v14, v14, v14, v10}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 129
    invoke-virtual {v15, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 132
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 133
    invoke-virtual {v0, v14}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 134
    const/16 v10, 0x10

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 136
    new-instance v10, Landroid/widget/TextView;

    invoke-direct {v10, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 137
    iget-object v14, v13, Lcom/doctruyen/data/ComicHistoryManager$ComicHistoryItem;->title:Ljava/lang/String;

    if-eqz v14, :cond_7

    iget-object v14, v13, Lcom/doctruyen/data/ComicHistoryManager$ComicHistoryItem;->title:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_7

    iget-object v14, v13, Lcom/doctruyen/data/ComicHistoryManager$ComicHistoryItem;->title:Ljava/lang/String;

    goto :goto_6

    :cond_7
    iget-object v14, v13, Lcom/doctruyen/data/ComicHistoryManager$ComicHistoryItem;->url:Ljava/lang/String;

    :goto_6
    invoke-virtual {v10, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    const/high16 v14, 0x41600000    # 14.0f

    invoke-virtual {v10, v14}, Landroid/widget/TextView;->setTextSize(F)V

    .line 139
    sget-object v14, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v10, v14}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 140
    invoke-virtual {v10, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 141
    const/4 v14, 0x2

    invoke-virtual {v10, v14}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 142
    sget-object v14, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v10, v14}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 143
    new-instance v14, Landroid/widget/LinearLayout$LayoutParams;

    move/from16 v17, v4

    move/from16 v18, v5

    const/4 v4, -0x2

    const/4 v5, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-direct {v14, v5, v4, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 144
    invoke-virtual {v0, v10, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 146
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 147
    const-string v5, "\u2715"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    const/high16 v14, 0x41600000    # 14.0f

    invoke-virtual {v4, v14}, Landroid/widget/TextView;->setTextSize(F)V

    .line 149
    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 150
    const/high16 v14, 0x41000000    # 8.0f

    invoke-static {v1, v14}, Lcom/doctruyen/ui/UiTheme;->dp(Landroid/content/Context;F)I

    move-result v5

    const/high16 v10, 0x40000000    # 2.0f

    invoke-static {v1, v10}, Lcom/doctruyen/ui/UiTheme;->dp(Landroid/content/Context;F)I

    move-result v11

    move/from16 v16, v6

    const/high16 v14, 0x40800000    # 4.0f

    invoke-static {v1, v14}, Lcom/doctruyen/ui/UiTheme;->dp(Landroid/content/Context;F)I

    move-result v6

    invoke-static {v1, v10}, Lcom/doctruyen/ui/UiTheme;->dp(Landroid/content/Context;F)I

    move-result v10

    invoke-virtual {v4, v5, v11, v6, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 151
    new-instance v5, Lcom/doctruyen/ui/ComicTabHelper$2;

    invoke-direct {v5, v1, v13, v2, v3}, Lcom/doctruyen/ui/ComicTabHelper$2;-><init>(Landroid/app/Activity;Lcom/doctruyen/data/ComicHistoryManager$ComicHistoryItem;Landroid/widget/LinearLayout;Z)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 159
    invoke-virtual {v15, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 162
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 163
    const/4 v14, 0x0

    invoke-virtual {v4, v14}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 164
    const/16 v10, 0x10

    invoke-virtual {v4, v10}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 165
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, -0x2

    invoke-direct {v0, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 166
    const/high16 v5, 0x40800000    # 4.0f

    invoke-static {v1, v5}, Lcom/doctruyen/ui/UiTheme;->dp(Landroid/content/Context;F)I

    move-result v6

    invoke-virtual {v0, v14, v6, v14, v14}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 167
    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 169
    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 170
    iget-object v11, v13, Lcom/doctruyen/data/ComicHistoryManager$ComicHistoryItem;->url:Ljava/lang/String;

    .line 172
    :try_start_0
    new-instance v0, Ljava/net/URI;

    iget-object v14, v13, Lcom/doctruyen/data/ComicHistoryManager$ComicHistoryItem;->url:Ljava/lang/String;

    invoke-direct {v0, v14}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 173
    invoke-virtual {v0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    if-eqz v0, :cond_8

    move-object v11, v0

    goto :goto_7

    .line 175
    :catch_0
    move-exception v0

    :cond_8
    :goto_7
    nop

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "\ud83c\udf10 "

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    const/high16 v0, 0x41300000    # 11.0f

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 178
    sget v11, Lcom/doctruyen/ui/UiTheme;->ACCENT_CYAN:I

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 179
    const/4 v11, 0x1

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 180
    sget-object v14, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v6, v14}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 181
    new-instance v14, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v10, -0x2

    const/4 v11, 0x0

    invoke-direct {v14, v11, v10, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 182
    invoke-virtual {v4, v6, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 184
    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 185
    new-instance v14, Ljava/util/Date;

    iget-wide v10, v13, Lcom/doctruyen/data/ComicHistoryManager$ComicHistoryItem;->timestamp:J

    invoke-direct {v14, v10, v11}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v9, v14}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 187
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 188
    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 190
    invoke-virtual {v15, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 193
    new-instance v0, Lcom/doctruyen/ui/ComicTabHelper$3;

    invoke-direct {v0, v1, v13}, Lcom/doctruyen/ui/ComicTabHelper$3;-><init>(Landroid/app/Activity;Lcom/doctruyen/data/ComicHistoryManager$ComicHistoryItem;)V

    invoke-virtual {v15, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 202
    invoke-virtual {v2, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 203
    move/from16 v6, v16

    move/from16 v4, v17

    move/from16 v5, v18

    const/4 v10, 0x1

    const/4 v11, -0x2

    const/high16 v14, 0x41000000    # 8.0f

    goto/16 :goto_5

    .line 204
    :cond_9
    return-void

    .line 65
    :cond_a
    :goto_8
    return-void

    .line 60
    :cond_b
    :goto_9
    return-void
.end method

.method public static setupContainerComics(Landroid/app/Activity;Z)Landroid/widget/LinearLayout;
    .locals 3

    .line 29
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 30
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 31
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 34
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 35
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 36
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 37
    invoke-static {p0, v2, p1}, Lcom/doctruyen/ui/ComicTabHelper;->renderComicHistory(Landroid/app/Activity;Landroid/widget/LinearLayout;Z)V

    .line 40
    new-instance p1, Landroid/widget/TextView;

    invoke-direct {p1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 41
    const-string v1, "\ud83d\udd1e NGU\u1ed2N TRUY\u1ec6N TRANH & MANHWA 18+"

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    const/high16 v1, 0x41500000    # 13.0f

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 43
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 44
    sget v1, Lcom/doctruyen/ui/UiTheme;->ACCENT_CYAN:I

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 45
    const/high16 v1, 0x41600000    # 14.0f

    invoke-static {p0, v1}, Lcom/doctruyen/ui/UiTheme;->dp(Landroid/content/Context;F)I

    move-result v1

    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {p0, v2}, Lcom/doctruyen/ui/UiTheme;->dp(Landroid/content/Context;F)I

    move-result p0

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1, v2, p0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 46
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 48
    return-object v0
.end method
