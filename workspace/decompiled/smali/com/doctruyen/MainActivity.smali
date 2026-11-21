.class public Lcom/doctruyen/MainActivity;
.super Landroid/app/Activity;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/doctruyen/MainActivity$LocalBookItem;
    }
.end annotation


# static fields
.field private static final KEY_DARK_MODE:Ljava/lang/String; = "key_dark_mode"

.field private static final PREFS_NAME:Ljava/lang/String; = "app_theme_prefs"

.field private static final PREF_HIDDEN_BOOKS:Ljava/lang/String; = "pref_hidden_books"

.field private static final REQUEST_CODE_PICK_FILE:I = 0x65


.field private containerComics:Landroid/widget/LinearLayout;

.field private containerLibrary:Landroid/widget/LinearLayout;

.field private containerSources:Landroid/widget/LinearLayout;

.field private containerWeb:Landroid/widget/LinearLayout;

.field private currentTab:I

.field private etWebUrl:Landroid/widget/EditText;

.field private historyListContainer:Landroid/widget/LinearLayout;

.field private isDarkMode:Z

.field private localShelfContainer:Landroid/widget/LinearLayout;

.field private resumeCardContainer:Landroid/widget/LinearLayout;

.field private tabComics:Landroid/widget/TextView;

.field private tabLibrary:Landroid/widget/TextView;

.field private tabSources:Landroid/widget/TextView;

.field private tabWeb:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/doctruyen/MainActivity;->isDarkMode:Z

    .line 84
    const/4 v0, 0x0

    iput v0, p0, Lcom/doctruyen/MainActivity;->currentTab:I

    return-void
.end method

.method private addHiddenBookPath(Ljava/lang/String;)V
    .locals 4

    .line 46
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 47
    :cond_0
    const-string v0, "app_theme_prefs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/doctruyen/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 48
    new-instance v1, Ljava/util/HashSet;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    const-string v3, "pref_hidden_books"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 49
    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 51
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 52
    :catch_0
    move-exception p1

    :goto_0
    nop

    .line 53
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, v3, v1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 54
    return-void

    .line 46
    :cond_1
    :goto_1
    return-void
.end method

.method private checkStoragePermission(Z)V
    .locals 2

    .line 907
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    .line 908
    invoke-static {}, Landroid/os/Environment;->isExternalStorageManager()Z

    move-result v0

    if-nez v0, :cond_1

    .line 909
    if-eqz p1, :cond_1

    .line 911
    :try_start_0
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.settings.MANAGE_APP_ALL_FILES_ACCESS_PERMISSION"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 912
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "package:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/doctruyen/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 913
    invoke-virtual {p0, p1}, Lcom/doctruyen/MainActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 914
    :catch_0
    move-exception p1

    .line 916
    :try_start_1
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.settings.MANAGE_ALL_FILES_ACCESS_PERMISSION"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 917
    invoke-virtual {p0, p1}, Lcom/doctruyen/MainActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 918
    :catch_1
    move-exception p1

    :goto_0
    nop

    .line 919
    :goto_1
    goto :goto_2

    .line 922
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 923
    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {p0, v0}, Lcom/doctruyen/MainActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    .line 924
    if-eqz p1, :cond_1

    .line 925
    const-string p1, "android.permission.WRITE_EXTERNAL_STORAGE"

    filled-new-array {v0, p1}, [Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0xca

    invoke-virtual {p0, p1, v0}, Lcom/doctruyen/MainActivity;->requestPermissions([Ljava/lang/String;I)V

    .line 929
    :cond_1
    :goto_2
    return-void
.end method

.method private cleanFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1120
    if-nez p1, :cond_0

    const-string p1, "Truy\u1ec7n"

    return-object p1

    .line 1121
    :cond_0
    const-string v0, ".epub"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, ".txt"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 1124
    :cond_1
    return-object p1

    .line 1122
    :cond_2
    :goto_0
    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private clearHiddenBooks()V
    .locals 2

    .line 68
    const-string v0, "app_theme_prefs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/doctruyen/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 69
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_hidden_books"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 70
    return-void
.end method

.method private confirmClearAllHistory()V
    .locals 5

    .line 1089
    invoke-static {p0}, Lcom/doctruyen/data/AppDatabase;->getInstance(Landroid/content/Context;)Lcom/doctruyen/data/AppDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/doctruyen/data/AppDatabase;->getRecentBooks()Ljava/util/List;

    move-result-object v0

    .line 1090
    invoke-direct {p0}, Lcom/doctruyen/MainActivity;->getHiddenBookPaths()Ljava/util/Set;

    move-result-object v1

    .line 1091
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1092
    if-eqz v0, :cond_1

    .line 1093
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/doctruyen/data/AppDatabase$HistoryItem;

    .line 1094
    iget-object v4, v3, Lcom/doctruyen/data/AppDatabase$HistoryItem;->bookPath:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, v3, Lcom/doctruyen/data/AppDatabase$HistoryItem;->bookPath:Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1095
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1097
    :cond_0
    goto :goto_0

    .line 1099
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1100
    const-string v0, "L\u1ecbch s\u1eed \u0111\u1ecdc hi\u1ec7n \u0111ang tr\u1ed1ng"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1101
    return-void

    .line 1104
    :cond_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1105
    const-string v1, "X\u00f3a To\u00e0n B\u1ed9 L\u1ecbch S\u1eed \u0110\u1ecdc"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "B\u1ea1n c\u00f3 ch\u1eafc ch\u1eafn mu\u1ed1n x\u00f3a to\u00e0n b\u1ed9 "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1106
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " truy\u1ec7n trong l\u1ecbch s\u1eed \u0111\u1ecdc g\u1ea7n \u0111\u00e2y kh\u00f4ng?"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/doctruyen/MainActivity$22;

    invoke-direct {v1, p0, v2}, Lcom/doctruyen/MainActivity$22;-><init>(Lcom/doctruyen/MainActivity;Ljava/util/List;)V

    .line 1107
    const-string v2, "X\u00f3a T\u1ea5t C\u1ea3"

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1115
    const-string v1, "H\u1ee7y"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1116
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1117
    return-void
.end method

.method private confirmDeleteBook(Lcom/doctruyen/MainActivity$LocalBookItem;)V
    .locals 6

    .line 1036
    new-instance v0, Ljava/io/File;

    iget-object v1, p1, Lcom/doctruyen/MainActivity$LocalBookItem;->path:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1037
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    .line 1039
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    .line 1040
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "1. X\u00f3a kh\u1ecfi danh s\u00e1ch (gi\u1eef l\u1ea1i t\u1ec7p g\u1ed1c tr\u00ean m\u00e1y)"

    aput-object v5, v4, v2

    const-string v2, "2. X\u00f3a v\u0129nh vi\u1ec5n t\u1ec7p truy\u1ec7n kh\u1ecfi thi\u1ebft b\u1ecb"

    aput-object v2, v4, v3

    goto :goto_0

    .line 1045
    :cond_0
    new-array v4, v3, [Ljava/lang/String;

    const-string v3, "1. X\u00f3a kh\u1ecfi danh s\u00e1ch"

    aput-object v3, v4, v2

    .line 1050
    :goto_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "X\u00f3a Truy\u1ec7n Kh\u1ecfi Danh S\u00e1ch: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p1, Lcom/doctruyen/MainActivity$LocalBookItem;->title:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1051
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/doctruyen/MainActivity$17;

    invoke-direct {v3, p0, p1, v1, v0}, Lcom/doctruyen/MainActivity$17;-><init>(Lcom/doctruyen/MainActivity;Lcom/doctruyen/MainActivity$LocalBookItem;ZLjava/io/File;)V

    .line 1052
    invoke-virtual {v2, v4, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 1084
    const-string v0, "\u0110\u00f3ng"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 1085
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1086
    return-void
.end method

.method private copyUriAndOpen(Landroid/net/Uri;)V
    .locals 9

    .line 1156
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "book_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".epub"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 1157
    const/4 v2, -0x1

    :try_start_1
    invoke-virtual {p0}, Lcom/doctruyen/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v4, p1

    :try_start_2
    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1158
    if-eqz p1, :cond_1

    :try_start_3
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1159
    const-string v0, "_display_name"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 1160
    if-eq v0, v2, :cond_1

    .line 1161
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1162
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v3, :cond_1

    .line 1163
    move-object v1, v0

    goto :goto_1

    .line 1157
    :catchall_0
    move-exception v0

    move-object v3, v0

    if-eqz p1, :cond_0

    :try_start_4
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object p1, v0

    :try_start_5
    invoke-virtual {v3, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw v3

    .line 1167
    :cond_1
    :goto_1
    if-eqz p1, :cond_2

    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v4, p1

    .line 1169
    :cond_2
    :goto_2
    :try_start_6
    new-instance p1, Ljava/io/File;

    invoke-virtual {p0}, Lcom/doctruyen/MainActivity;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1170
    invoke-virtual {p0}, Lcom/doctruyen/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 1171
    :try_start_7
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 1172
    const/16 v0, 0x2000

    :try_start_8
    new-array v0, v0, [B

    .line 1174
    :goto_3
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/4 v6, 0x0

    if-eq v5, v2, :cond_3

    .line 1175
    invoke-virtual {v4, v0, v6, v5}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_3

    .line 1177
    :cond_3
    :try_start_9
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    if-eqz v3, :cond_4

    :try_start_a
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 1179
    :cond_4
    invoke-direct {p0, v1}, Lcom/doctruyen/MainActivity;->cleanFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1180
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v0, v6, v6}, Lcom/doctruyen/MainActivity;->openReader(Ljava/lang/String;Ljava/lang/String;ZI)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2

    .line 1183
    goto :goto_6

    .line 1170
    :catchall_2
    move-exception v0

    move-object p1, v0

    :try_start_b
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    goto :goto_4

    :catchall_3
    move-exception v0

    :try_start_c
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw p1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    :catchall_4
    move-exception v0

    move-object p1, v0

    if-eqz v3, :cond_5

    :try_start_d
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    goto :goto_5

    :catchall_5
    move-exception v0

    :try_start_e
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_5
    throw p1
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_2

    .line 1181
    :catch_2
    move-exception v0

    move-object p1, v0

    .line 1182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "L\u1ed7i n\u1ea1p t\u1ec7p: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 1184
    :goto_6
    return-void
.end method

.method private createTabButton(Ljava/lang/String;I)Landroid/widget/TextView;
    .locals 4

    .line 475
    nop

    .line 476
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 477
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 478
    const/high16 p1, 0x41500000    # 13.0f

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 479
    const/16 p1, 0x11

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setGravity(I)V

    .line 480
    const/high16 p1, 0x41200000    # 10.0f

    invoke-static {p0, p1}, Lcom/doctruyen/ui/UiTheme;->dp(Landroid/content/Context;F)I

    move-result v1

    invoke-static {p0, p1}, Lcom/doctruyen/ui/UiTheme;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-static {p0, p1}, Lcom/doctruyen/ui/UiTheme;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-static {p0, p1}, Lcom/doctruyen/ui/UiTheme;->dp(Landroid/content/Context;F)I

    move-result p1

    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 481
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-direct {p1, v3, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 482
    new-instance p1, Lcom/doctruyen/MainActivity$8;

    invoke-direct {p1, p0, p2}, Lcom/doctruyen/MainActivity$8;-><init>(Lcom/doctruyen/MainActivity;I)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 483
    return-object v0
.end method

.method private formatFileSize(J)Ljava/lang/String;
    .locals 4

    .line 1128
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    const-string p1, "0 B"

    return-object p1

    .line 1129
    :cond_0
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "0.#"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 1130
    const-wide/32 v1, 0x100000

    cmp-long v3, p1, v1

    if-ltz v3, :cond_1

    .line 1131
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    long-to-double p1, p1

    const-wide/high16 v2, 0x4130000000000000L    # 1048576.0

    div-double/2addr p1, v2

    invoke-virtual {v0, p1, p2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " MB"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1133
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    long-to-double p1, p1

    const-wide/high16 v2, 0x4090000000000000L    # 1024.0

    div-double/2addr p1, v2

    invoke-virtual {v0, p1, p2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " KB"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getHiddenBookPaths()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 41
    const-string v0, "app_theme_prefs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/doctruyen/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 42
    new-instance v1, Ljava/util/HashSet;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    const-string v3, "pref_hidden_books"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v1
.end method

.method private initViews()V
    .locals 16

    .line 110
    move-object/from16 v0, p0

    .line 111
    iget-boolean v1, v0, Lcom/doctruyen/MainActivity;->isDarkMode:Z

    if-eqz v1, :cond_0

    sget v1, Lcom/doctruyen/ui/UiTheme;->DARK_BG:I

    goto :goto_0

    :cond_0
    sget v1, Lcom/doctruyen/ui/UiTheme;->LIGHT_BG:I

    .line 112
    :goto_0
    iget-boolean v2, v0, Lcom/doctruyen/MainActivity;->isDarkMode:Z

    if-eqz v2, :cond_1

    sget v2, Lcom/doctruyen/ui/UiTheme;->DARK_SURFACE:I

    goto :goto_1

    :cond_1
    sget v2, Lcom/doctruyen/ui/UiTheme;->LIGHT_SURFACE:I

    .line 113
    :goto_1
    iget-boolean v3, v0, Lcom/doctruyen/MainActivity;->isDarkMode:Z

    if-eqz v3, :cond_2

    sget v3, Lcom/doctruyen/ui/UiTheme;->DARK_BORDER:I

    goto :goto_2

    :cond_2
    sget v3, Lcom/doctruyen/ui/UiTheme;->LIGHT_BORDER:I

    .line 114
    :goto_2
    iget-boolean v4, v0, Lcom/doctruyen/MainActivity;->isDarkMode:Z

    if-eqz v4, :cond_3

    sget v4, Lcom/doctruyen/ui/UiTheme;->DARK_TEXT_PRIMARY:I

    goto :goto_3

    :cond_3
    sget v4, Lcom/doctruyen/ui/UiTheme;->LIGHT_TEXT_PRIMARY:I

    .line 115
    :goto_3
    iget-boolean v5, v0, Lcom/doctruyen/MainActivity;->isDarkMode:Z

    if-eqz v5, :cond_4

    sget v5, Lcom/doctruyen/ui/UiTheme;->DARK_TEXT_SECONDARY:I

    goto :goto_4

    :cond_4
    sget v5, Lcom/doctruyen/ui/UiTheme;->LIGHT_TEXT_SECONDARY:I

    .line 116
    :goto_4
    iget-boolean v6, v0, Lcom/doctruyen/MainActivity;->isDarkMode:Z

    if-eqz v6, :cond_5

    sget v6, Lcom/doctruyen/ui/UiTheme;->DARK_TEXT_MUTED:I

    goto :goto_5

    :cond_5
    sget v6, Lcom/doctruyen/ui/UiTheme;->LIGHT_TEXT_MUTED:I

    .line 119
    :goto_5
    iget-boolean v7, v0, Lcom/doctruyen/MainActivity;->isDarkMode:Z

    invoke-static {v0, v1, v7}, Lcom/doctruyen/ui/UiTheme;->applySystemBarColors(Landroid/app/Activity;IZ)V

    .line 121
    new-instance v7, Landroid/widget/ScrollView;

    invoke-direct {v7, v0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 122
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, -0x1

    invoke-direct {v8, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v8}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 123
    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    .line 124
    invoke-virtual {v7, v1}, Landroid/widget/ScrollView;->setBackgroundColor(I)V

    .line 126
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 127
    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 128
    const/high16 v10, 0x41900000    # 18.0f

    invoke-static {v0, v10}, Lcom/doctruyen/ui/UiTheme;->dp(Landroid/content/Context;F)I

    move-result v11

    const/high16 v12, 0x41b00000    # 22.0f

    invoke-static {v0, v12}, Lcom/doctruyen/ui/UiTheme;->dp(Landroid/content/Context;F)I

    move-result v13

    invoke-static {v0, v10}, Lcom/doctruyen/ui/UiTheme;->dp(Landroid/content/Context;F)I

    move-result v14

    const/high16 v15, 0x42100000    # 36.0f

    invoke-static {v0, v15}, Lcom/doctruyen/ui/UiTheme;->dp(Landroid/content/Context;F)I

    move-result v15

    invoke-virtual {v1, v11, v13, v14, v15}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 131
    new-instance v11, Landroid/widget/LinearLayout;

    invoke-direct {v11, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 132
    const/4 v13, 0x0

    invoke-virtual {v11, v13}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 133
    const/16 v14, 0x10

    invoke-virtual {v11, v14}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 134
    const/high16 v15, 0x41800000    # 16.0f

    invoke-static {v0, v15}, Lcom/doctruyen/ui/UiTheme;->dp(Landroid/content/Context;F)I

    move-result v12

    invoke-virtual {v11, v13, v13, v13, v12}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 136
    new-instance v12, Landroid/widget/LinearLayout;

    invoke-direct {v12, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 137
    invoke-virtual {v12, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 138
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v10, -0x2

    const/high16 v15, 0x3f800000    # 1.0f

    invoke-direct {v9, v13, v10, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v12, v9}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 140
    new-instance v9, Landroid/widget/LinearLayout;

    invoke-direct {v9, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 141
    invoke-virtual {v9, v13}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 142
    invoke-virtual {v9, v14}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 144
    new-instance v14, Landroid/widget/TextView;

    invoke-direct {v14, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 145
    const-string v15, "\u0110\u1eccC TRUY\u1ec6N PRO"

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    const/high16 v15, 0x41a00000    # 20.0f

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setTextSize(F)V

    .line 147
    sget-object v15, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 148
    invoke-virtual {v14, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 149
    invoke-virtual {v9, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 151
    new-instance v14, Landroid/widget/TextView;

    invoke-direct {v14, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 152
    const-string v15, " v1.1 "

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    const/high16 v15, 0x41200000    # 10.0f

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setTextSize(F)V

    .line 154
    sget-object v15, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 155
    sget v15, Lcom/doctruyen/ui/UiTheme;->ACCENT_CYAN:I

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setTextColor(I)V

    .line 156
    iget-boolean v15, v0, Lcom/doctruyen/MainActivity;->isDarkMode:Z

    if-eqz v15, :cond_6

    const-string v15, "#0E2A38"

    goto :goto_6

    :cond_6
    const-string v15, "#E0F2FE"

    :goto_6
    invoke-static {v15}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v15

    sget v13, Lcom/doctruyen/ui/UiTheme;->ACCENT_CYAN:I

    const/high16 v10, 0x40c00000    # 6.0f

    invoke-static {v15, v13, v8, v10, v0}, Lcom/doctruyen/ui/UiTheme;->roundBox(IIIFLandroid/content/Context;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v13

    invoke-virtual {v14, v13}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 157
    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v15, -0x2

    invoke-direct {v13, v15, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 158
    const/high16 v15, 0x41000000    # 8.0f

    invoke-static {v0, v15}, Lcom/doctruyen/ui/UiTheme;->dp(Landroid/content/Context;F)I

    move-result v10

    const/4 v8, 0x0

    invoke-virtual {v13, v10, v8, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 159
    invoke-virtual {v14, v13}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 160
    invoke-virtual {v9, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 161
    invoke-virtual {v12, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 163
    new-instance v8, Landroid/widget/TextView;

    invoke-direct {v8, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 164
    const-string v9, "Kho s\u00e1ch EPUB 3, TXT & Tr\u00ecnh duy\u1ec7t Web S\u1eafc Hi\u1ec7p"

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    const/high16 v9, 0x41400000    # 12.0f

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextSize(F)V

    .line 166
    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 167
    const/high16 v10, 0x40000000    # 2.0f

    invoke-static {v0, v10}, Lcom/doctruyen/ui/UiTheme;->dp(Landroid/content/Context;F)I

    move-result v10

    const/4 v13, 0x0

    invoke-virtual {v8, v13, v10, v13, v13}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 168
    invoke-virtual {v12, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 169
    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 172
    new-instance v8, Landroid/widget/TextView;

    invoke-direct {v8, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 173
    iget-boolean v10, v0, Lcom/doctruyen/MainActivity;->isDarkMode:Z

    if-eqz v10, :cond_7

    const-string v10, "\u2600\ufe0f S\u00e1ng"

    goto :goto_7

    :cond_7
    const-string v10, "\ud83c\udf19 T\u1ed1i"

    :goto_7
    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextSize(F)V

    .line 175
    sget-object v10, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 176
    invoke-virtual {v8, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 177
    invoke-static {v0, v9}, Lcom/doctruyen/ui/UiTheme;->dp(Landroid/content/Context;F)I

    move-result v10

    invoke-static {v0, v15}, Lcom/doctruyen/ui/UiTheme;->dp(Landroid/content/Context;F)I

    move-result v12

    invoke-static {v0, v9}, Lcom/doctruyen/ui/UiTheme;->dp(Landroid/content/Context;F)I

    move-result v13

    invoke-static {v0, v15}, Lcom/doctruyen/ui/UiTheme;->dp(Landroid/content/Context;F)I

    move-result v14

    invoke-virtual {v8, v10, v12, v13, v14}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 178
    const/high16 v10, 0x41800000    # 16.0f

    const/4 v12, 0x1

    invoke-static {v2, v3, v12, v10, v0}, Lcom/doctruyen/ui/UiTheme;->roundBox(IIIFLandroid/content/Context;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v13

    invoke-virtual {v8, v13}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 179
    new-instance v10, Lcom/doctruyen/MainActivity$9;

    invoke-direct {v10, v0}, Lcom/doctruyen/MainActivity$9;-><init>(Lcom/doctruyen/MainActivity;)V

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    invoke-virtual {v11, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 185
    invoke-virtual {v1, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 188
    new-instance v8, Landroid/widget/LinearLayout;

    invoke-direct {v8, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v8, v0, Lcom/doctruyen/MainActivity;->resumeCardContainer:Landroid/widget/LinearLayout;

    .line 189
    iget-object v8, v0, Lcom/doctruyen/MainActivity;->resumeCardContainer:Landroid/widget/LinearLayout;

    const/4 v12, 0x1

    invoke-virtual {v8, v12}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 190
    iget-object v8, v0, Lcom/doctruyen/MainActivity;->resumeCardContainer:Landroid/widget/LinearLayout;

    const/high16 v10, 0x41900000    # 18.0f

    invoke-static {v0, v10}, Lcom/doctruyen/ui/UiTheme;->dp(Landroid/content/Context;F)I

    move-result v11

    const/4 v13, 0x0

    invoke-virtual {v8, v13, v13, v13, v11}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 191
    iget-object v8, v0, Lcom/doctruyen/MainActivity;->resumeCardContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 194
    new-instance v8, Landroid/widget/LinearLayout;

    invoke-direct {v8, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 195
    invoke-virtual {v8, v13}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 196
    const/high16 v10, 0x40800000    # 4.0f

    invoke-static {v0, v10}, Lcom/doctruyen/ui/UiTheme;->dp(Landroid/content/Context;F)I

    move-result v11

    invoke-static {v0, v10}, Lcom/doctruyen/ui/UiTheme;->dp(Landroid/content/Context;F)I

    move-result v12

    invoke-static {v0, v10}, Lcom/doctruyen/ui/UiTheme;->dp(Landroid/content/Context;F)I

    move-result v13

    invoke-static {v0, v10}, Lcom/doctruyen/ui/UiTheme;->dp(Landroid/content/Context;F)I

    move-result v14

    invoke-virtual {v8, v11, v12, v13, v14}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 197
    iget-boolean v11, v0, Lcom/doctruyen/MainActivity;->isDarkMode:Z

    if-eqz v11, :cond_8

    const-string v11, "#141822"

    goto :goto_8

    :cond_8
    const-string v11, "#E2E8F0"

    :goto_8
    invoke-static {v11}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v11

    iget-boolean v12, v0, Lcom/doctruyen/MainActivity;->isDarkMode:Z

    if-eqz v12, :cond_9

    const-string v12, "#22283A"

    goto :goto_9

    :cond_9
    const-string v12, "#CBD5E1"

    :goto_9
    invoke-static {v12}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v12

    const/high16 v13, 0x41600000    # 14.0f

    const/4 v14, 0x1

    invoke-static {v11, v12, v14, v13, v0}, Lcom/doctruyen/ui/UiTheme;->roundBox(IIIFLandroid/content/Context;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v11

    invoke-virtual {v8, v11}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 199
    const-string v11, "\ud83d\udcd6 T\u1ee7 S\u00e1ch"

    const/4 v12, 0x0

    invoke-direct {v0, v11, v12}, Lcom/doctruyen/MainActivity;->createTabButton(Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v11

    iput-object v11, v0, Lcom/doctruyen/MainActivity;->tabLibrary:Landroid/widget/TextView;

    .line 200
    const-string v11, "\ud83c\udf10 Web"

    invoke-direct {v0, v11, v14}, Lcom/doctruyen/MainActivity;->createTabButton(Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v11

    iput-object v11, v0, Lcom/doctruyen/MainActivity;->tabWeb:Landroid/widget/TextView;

    .line 201
    const-string v11, "\ud83d\udcdc Truy\u1ec7n Ch\u1eef"

    const/4 v12, 0x2

    invoke-direct {v0, v11, v12}, Lcom/doctruyen/MainActivity;->createTabButton(Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v11

    iput-object v11, v0, Lcom/doctruyen/MainActivity;->tabSources:Landroid/widget/TextView;

    const-string v11, "\ud83d\udd1e Truy\u1ec7n Tranh"

    const/4 v12, 0x3

    invoke-direct {v0, v11, v12}, Lcom/doctruyen/MainActivity;->createTabButton(Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v11

    iput-object v11, v0, Lcom/doctruyen/MainActivity;->tabComics:Landroid/widget/TextView;

    .line 203
    iget-object v11, v0, Lcom/doctruyen/MainActivity;->tabLibrary:Landroid/widget/TextView;

    invoke-virtual {v8, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 204
    iget-object v11, v0, Lcom/doctruyen/MainActivity;->tabWeb:Landroid/widget/TextView;

    invoke-virtual {v8, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 205
    iget-object v11, v0, Lcom/doctruyen/MainActivity;->tabSources:Landroid/widget/TextView;

    invoke-virtual {v8, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v11, v0, Lcom/doctruyen/MainActivity;->tabComics:Landroid/widget/TextView;

    invoke-virtual {v8, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 206
    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 209
    new-instance v8, Landroid/view/View;

    invoke-direct {v8, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 210
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v12, 0x41900000    # 18.0f

    invoke-static {v0, v12}, Lcom/doctruyen/ui/UiTheme;->dp(Landroid/content/Context;F)I

    move-result v14

    const/4 v12, -0x1

    invoke-direct {v11, v12, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v11}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 211
    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 216
    new-instance v8, Landroid/widget/LinearLayout;

    invoke-direct {v8, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v8, v0, Lcom/doctruyen/MainActivity;->containerLibrary:Landroid/widget/LinearLayout;

    .line 217
    iget-object v8, v0, Lcom/doctruyen/MainActivity;->containerLibrary:Landroid/widget/LinearLayout;

    const/4 v12, 0x1

    invoke-virtual {v8, v12}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 220
    new-instance v8, Landroid/widget/LinearLayout;

    invoke-direct {v8, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 221
    const/4 v12, 0x0

    invoke-virtual {v8, v12}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 222
    invoke-static {v0, v13}, Lcom/doctruyen/ui/UiTheme;->dp(Landroid/content/Context;F)I

    move-result v11

    invoke-virtual {v8, v12, v12, v12, v11}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 224
    new-instance v11, Landroid/widget/Button;

    invoke-direct {v11, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 225
    const-string v12, "\ud83d\udcc2 M\u1edf T\u1ec7p T\u1eeb M\u00e1y..."

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 226
    const/high16 v12, 0x41500000    # 13.0f

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setTextSize(F)V

    .line 227
    sget-object v14, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v11, v14}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 228
    const/4 v14, -0x1

    invoke-virtual {v11, v14}, Landroid/widget/Button;->setTextColor(I)V

    .line 229
    sget v14, Lcom/doctruyen/ui/UiTheme;->ACCENT_BLUE:I

    const/4 v9, 0x0

    const/high16 v10, 0x41200000    # 10.0f

    invoke-static {v14, v9, v9, v10, v0}, Lcom/doctruyen/ui/UiTheme;->roundBox(IIIFLandroid/content/Context;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v14

    invoke-virtual {v11, v14}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 230
    invoke-static {v0, v13}, Lcom/doctruyen/ui/UiTheme;->dp(Landroid/content/Context;F)I

    move-result v14

    invoke-static {v0, v10}, Lcom/doctruyen/ui/UiTheme;->dp(Landroid/content/Context;F)I

    move-result v12

    invoke-static {v0, v13}, Lcom/doctruyen/ui/UiTheme;->dp(Landroid/content/Context;F)I

    move-result v15

    invoke-static {v0, v10}, Lcom/doctruyen/ui/UiTheme;->dp(Landroid/content/Context;F)I

    move-result v13

    invoke-virtual {v11, v14, v12, v15, v13}, Landroid/widget/Button;->setPadding(IIII)V

    .line 231
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    const v12, 0x3f99999a    # 1.2f

    const/4 v15, -0x2

    invoke-direct {v10, v9, v15, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 232
    const/high16 v12, 0x41000000    # 8.0f

    invoke-static {v0, v12}, Lcom/doctruyen/ui/UiTheme;->dp(Landroid/content/Context;F)I

    move-result v13

    invoke-virtual {v10, v9, v9, v13, v9}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 233
    invoke-virtual {v11, v10}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 234
    new-instance v9, Lcom/doctruyen/MainActivity$10;

    invoke-direct {v9, v0}, Lcom/doctruyen/MainActivity$10;-><init>(Lcom/doctruyen/MainActivity;)V

    invoke-virtual {v11, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 235
    invoke-virtual {v8, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 237
    new-instance v9, Landroid/widget/Button;

    invoke-direct {v9, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 238
    const-string v10, "\ud83d\udd04 Qu\u00e9t Th\u01b0 M\u1ee5c Download"

    invoke-virtual {v9, v10}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 239
    const/high16 v10, 0x41500000    # 13.0f

    invoke-virtual {v9, v10}, Landroid/widget/Button;->setTextSize(F)V

    .line 240
    invoke-virtual {v9, v4}, Landroid/widget/Button;->setTextColor(I)V

    .line 241
    const/high16 v10, 0x41200000    # 10.0f

    const/4 v12, 0x1

    invoke-static {v2, v3, v12, v10, v0}, Lcom/doctruyen/ui/UiTheme;->roundBox(IIIFLandroid/content/Context;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v11

    invoke-virtual {v9, v11}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 242
    const/high16 v11, 0x41400000    # 12.0f

    invoke-static {v0, v11}, Lcom/doctruyen/ui/UiTheme;->dp(Landroid/content/Context;F)I

    move-result v12

    invoke-static {v0, v10}, Lcom/doctruyen/ui/UiTheme;->dp(Landroid/content/Context;F)I

    move-result v13

    invoke-static {v0, v11}, Lcom/doctruyen/ui/UiTheme;->dp(Landroid/content/Context;F)I

    move-result v14

    invoke-static {v0, v10}, Lcom/doctruyen/ui/UiTheme;->dp(Landroid/content/Context;F)I

    move-result v11

    invoke-virtual {v9, v12, v13, v14, v11}, Landroid/widget/Button;->setPadding(IIII)V

    .line 243
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v12, 0x0

    const/4 v15, -0x2

    invoke-direct {v10, v12, v15, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v9, v10}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 244
    new-instance v10, Lcom/doctruyen/MainActivity$11;

    invoke-direct {v10, v0}, Lcom/doctruyen/MainActivity$11;-><init>(Lcom/doctruyen/MainActivity;)V

    invoke-virtual {v9, v10}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 249
    new-instance v10, Lcom/doctruyen/MainActivity$12;

    invoke-direct {v10, v0}, Lcom/doctruyen/MainActivity$12;-><init>(Lcom/doctruyen/MainActivity;)V

    invoke-virtual {v9, v10}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 267
    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 268
    iget-object v9, v0, Lcom/doctruyen/MainActivity;->containerLibrary:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 271
    new-instance v8, Landroid/widget/TextView;

    invoke-direct {v8, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 272
    const-string v9, "T\u1ee6 S\u00c1CH TRONG TH\u01af M\u1ee4C DOWNLOAD"

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 273
    const/high16 v10, 0x41500000    # 13.0f

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setTextSize(F)V

    .line 274
    sget-object v9, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 275
    sget v9, Lcom/doctruyen/ui/UiTheme;->ACCENT_CYAN:I

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 276
    const/high16 v9, 0x40800000    # 4.0f

    invoke-static {v0, v9}, Lcom/doctruyen/ui/UiTheme;->dp(Landroid/content/Context;F)I

    move-result v10

    const/high16 v12, 0x41000000    # 8.0f

    invoke-static {v0, v12}, Lcom/doctruyen/ui/UiTheme;->dp(Landroid/content/Context;F)I

    move-result v9

    const/4 v12, 0x0

    invoke-virtual {v8, v12, v10, v12, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 277
    iget-object v9, v0, Lcom/doctruyen/MainActivity;->containerLibrary:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 279
    new-instance v8, Landroid/widget/LinearLayout;

    invoke-direct {v8, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v8, v0, Lcom/doctruyen/MainActivity;->localShelfContainer:Landroid/widget/LinearLayout;

    .line 280
    iget-object v8, v0, Lcom/doctruyen/MainActivity;->localShelfContainer:Landroid/widget/LinearLayout;

    const/4 v12, 0x1

    invoke-virtual {v8, v12}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 281
    iget-object v8, v0, Lcom/doctruyen/MainActivity;->containerLibrary:Landroid/widget/LinearLayout;

    iget-object v9, v0, Lcom/doctruyen/MainActivity;->localShelfContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 284
    new-instance v8, Landroid/widget/LinearLayout;

    invoke-direct {v8, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 285
    const/4 v12, 0x0

    invoke-virtual {v8, v12}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 286
    const/16 v9, 0x10

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 287
    const/high16 v9, 0x41b00000    # 22.0f

    invoke-static {v0, v9}, Lcom/doctruyen/ui/UiTheme;->dp(Landroid/content/Context;F)I

    move-result v9

    const/high16 v10, 0x41000000    # 8.0f

    invoke-static {v0, v10}, Lcom/doctruyen/ui/UiTheme;->dp(Landroid/content/Context;F)I

    move-result v11

    invoke-virtual {v8, v12, v9, v12, v11}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 289
    new-instance v9, Landroid/widget/TextView;

    invoke-direct {v9, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 290
    const-string v10, "L\u1ecaCH S\u1eec \u0110\u1eccC G\u1ea6N \u0110\u00c2Y"

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 291
    const/high16 v10, 0x41500000    # 13.0f

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextSize(F)V

    .line 292
    sget-object v10, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 293
    invoke-virtual {v9, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 294
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v12, 0x0

    const/4 v15, -0x2

    invoke-direct {v10, v12, v15, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 295
    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 297
    new-instance v9, Landroid/widget/TextView;

    invoke-direct {v9, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 298
    const-string v10, "\ud83d\uddd1 X\u00f3a To\u00e0n B\u1ed9 L\u1ecbch S\u1eed"

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 299
    const/high16 v10, 0x41300000    # 11.0f

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextSize(F)V

    .line 300
    sget-object v11, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 301
    sget v11, Lcom/doctruyen/ui/UiTheme;->ACCENT_ROSE:I

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 302
    iget-boolean v11, v0, Lcom/doctruyen/MainActivity;->isDarkMode:Z

    if-eqz v11, :cond_a

    const-string v11, "#251318"

    goto :goto_a

    :cond_a
    const-string v11, "#FEE2E2"

    :goto_a
    invoke-static {v11}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v11

    sget v12, Lcom/doctruyen/ui/UiTheme;->ACCENT_ROSE:I

    const/high16 v13, 0x40c00000    # 6.0f

    const/4 v14, 0x1

    invoke-static {v11, v12, v14, v13, v0}, Lcom/doctruyen/ui/UiTheme;->roundBox(IIIFLandroid/content/Context;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v11

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 303
    const/high16 v11, 0x41200000    # 10.0f

    invoke-static {v0, v11}, Lcom/doctruyen/ui/UiTheme;->dp(Landroid/content/Context;F)I

    move-result v12

    const/high16 v13, 0x40800000    # 4.0f

    invoke-static {v0, v13}, Lcom/doctruyen/ui/UiTheme;->dp(Landroid/content/Context;F)I

    move-result v14

    invoke-static {v0, v11}, Lcom/doctruyen/ui/UiTheme;->dp(Landroid/content/Context;F)I

    move-result v15

    invoke-static {v0, v13}, Lcom/doctruyen/ui/UiTheme;->dp(Landroid/content/Context;F)I

    move-result v11

    invoke-virtual {v9, v12, v14, v15, v11}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 304
    new-instance v11, Lcom/doctruyen/MainActivity$13;

    invoke-direct {v11, v0}, Lcom/doctruyen/MainActivity$13;-><init>(Lcom/doctruyen/MainActivity;)V

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 305
    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 307
    iget-object v9, v0, Lcom/doctruyen/MainActivity;->containerLibrary:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 309
    new-instance v8, Landroid/widget/LinearLayout;

    invoke-direct {v8, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v8, v0, Lcom/doctruyen/MainActivity;->historyListContainer:Landroid/widget/LinearLayout;

    .line 310
    iget-object v8, v0, Lcom/doctruyen/MainActivity;->historyListContainer:Landroid/widget/LinearLayout;

    const/4 v12, 0x1

    invoke-virtual {v8, v12}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 311
    iget-object v8, v0, Lcom/doctruyen/MainActivity;->containerLibrary:Landroid/widget/LinearLayout;

    iget-object v9, v0, Lcom/doctruyen/MainActivity;->historyListContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 313
    iget-object v8, v0, Lcom/doctruyen/MainActivity;->containerLibrary:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 318
    new-instance v8, Landroid/widget/LinearLayout;

    invoke-direct {v8, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v8, v0, Lcom/doctruyen/MainActivity;->containerWeb:Landroid/widget/LinearLayout;

    .line 319
    iget-object v8, v0, Lcom/doctruyen/MainActivity;->containerWeb:Landroid/widget/LinearLayout;

    const/4 v12, 0x1

    invoke-virtual {v8, v12}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 321
    new-instance v8, Landroid/widget/LinearLayout;

    invoke-direct {v8, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 322
    invoke-virtual {v8, v12}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 323
    const/high16 v9, 0x41900000    # 18.0f

    invoke-static {v0, v9}, Lcom/doctruyen/ui/UiTheme;->dp(Landroid/content/Context;F)I

    move-result v11

    invoke-static {v0, v9}, Lcom/doctruyen/ui/UiTheme;->dp(Landroid/content/Context;F)I

    move-result v13

    invoke-static {v0, v9}, Lcom/doctruyen/ui/UiTheme;->dp(Landroid/content/Context;F)I

    move-result v14

    invoke-static {v0, v9}, Lcom/doctruyen/ui/UiTheme;->dp(Landroid/content/Context;F)I

    move-result v9

    invoke-virtual {v8, v11, v13, v14, v9}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 324
    const/high16 v9, 0x41600000    # 14.0f

    invoke-static {v2, v3, v12, v9, v0}, Lcom/doctruyen/ui/UiTheme;->roundBox(IIIFLandroid/content/Context;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v11

    invoke-virtual {v8, v11}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 326
    new-instance v9, Landroid/widget/TextView;

    invoke-direct {v9, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 327
    const-string v11, "Tr\u00ecnh Duy\u1ec7t \u0110\u1ecdc Truy\u1ec7n Web"

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 328
    const/high16 v11, 0x41880000    # 17.0f

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setTextSize(F)V

    .line 329
    sget-object v11, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 330
    invoke-virtual {v9, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 331
    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 333
    new-instance v9, Landroid/widget/TextView;

    invoke-direct {v9, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 334
    const-string v11, "Duy\u1ec7t c\u00e1c trang truy\u1ec7n online m\u01b0\u1ee3t m\u00e0, t\u1ef1 \u0111\u1ed9ng b\u1eadt n\u1ec1n t\u1ed1i Dark Mode, ch\u1eb7n qu\u1ea3ng c\u00e1o v\u00e0 b\u00f3c t\u00e1ch n\u1ed9i dung ch\u01b0\u01a1ng \u0111\u1ec3 \u0111\u1ecdc TTS."

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 335
    const/high16 v11, 0x41500000    # 13.0f

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setTextSize(F)V

    .line 336
    invoke-virtual {v9, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 337
    const/high16 v13, 0x40c00000    # 6.0f

    invoke-static {v0, v13}, Lcom/doctruyen/ui/UiTheme;->dp(Landroid/content/Context;F)I

    move-result v5

    const/high16 v11, 0x41800000    # 16.0f

    invoke-static {v0, v11}, Lcom/doctruyen/ui/UiTheme;->dp(Landroid/content/Context;F)I

    move-result v12

    const/4 v13, 0x0

    invoke-virtual {v9, v13, v5, v13, v12}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 338
    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 340
    new-instance v5, Landroid/widget/Button;

    invoke-direct {v5, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 341
    const-string v9, "\ud83d\udd0d M\u1ede TR\u00ccNH DUY\u1ec6T T\u00ccM & L\u1ef0A TRUY\u1ec6N"

    invoke-virtual {v5, v9}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 342
    const/high16 v9, 0x41600000    # 14.0f

    invoke-virtual {v5, v9}, Landroid/widget/Button;->setTextSize(F)V

    .line 343
    sget-object v9, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v5, v9}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 344
    sget v9, Lcom/doctruyen/ui/UiTheme;->ACCENT_EMERALD:I

    const/high16 v11, 0x41400000    # 12.0f

    const/4 v12, 0x0

    invoke-static {v9, v12, v12, v11, v0}, Lcom/doctruyen/ui/UiTheme;->roundBox(IIIFLandroid/content/Context;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 345
    const/4 v12, -0x1

    invoke-virtual {v5, v12}, Landroid/widget/Button;->setTextColor(I)V

    .line 346
    const/high16 v11, 0x41800000    # 16.0f

    invoke-static {v0, v11}, Lcom/doctruyen/ui/UiTheme;->dp(Landroid/content/Context;F)I

    move-result v9

    const/high16 v12, 0x41600000    # 14.0f

    invoke-static {v0, v12}, Lcom/doctruyen/ui/UiTheme;->dp(Landroid/content/Context;F)I

    move-result v13

    invoke-static {v0, v11}, Lcom/doctruyen/ui/UiTheme;->dp(Landroid/content/Context;F)I

    move-result v14

    invoke-static {v0, v12}, Lcom/doctruyen/ui/UiTheme;->dp(Landroid/content/Context;F)I

    move-result v11

    invoke-virtual {v5, v9, v13, v14, v11}, Landroid/widget/Button;->setPadding(IIII)V

    .line 347
    new-instance v9, Lcom/doctruyen/MainActivity$14;

    invoke-direct {v9, v0}, Lcom/doctruyen/MainActivity$14;-><init>(Lcom/doctruyen/MainActivity;)V

    invoke-virtual {v5, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 351
    invoke-virtual {v8, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 352
    iget-object v5, v0, Lcom/doctruyen/MainActivity;->containerWeb:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 354
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 355
    const-string v8, "\u2014 HO\u1eb6C D\u00c1N TR\u1ef0C TI\u1ebeP LINK CH\u01af\u01a0NG \u0110\u1ec2 \u0110\u1eccC \u2014"

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 356
    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setTextSize(F)V

    .line 357
    sget-object v8, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 358
    const/16 v8, 0x11

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 359
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 360
    const/high16 v8, 0x41c00000    # 24.0f

    invoke-static {v0, v8}, Lcom/doctruyen/ui/UiTheme;->dp(Landroid/content/Context;F)I

    move-result v8

    const/high16 v9, 0x41600000    # 14.0f

    invoke-static {v0, v9}, Lcom/doctruyen/ui/UiTheme;->dp(Landroid/content/Context;F)I

    move-result v10

    const/4 v12, 0x0

    invoke-virtual {v5, v12, v8, v12, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 361
    iget-object v8, v0, Lcom/doctruyen/MainActivity;->containerWeb:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 363
    new-instance v5, Landroid/widget/LinearLayout;

    invoke-direct {v5, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 364
    const/4 v12, 0x1

    invoke-virtual {v5, v12}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 365
    const/high16 v11, 0x41800000    # 16.0f

    invoke-static {v0, v11}, Lcom/doctruyen/ui/UiTheme;->dp(Landroid/content/Context;F)I

    move-result v8

    invoke-static {v0, v11}, Lcom/doctruyen/ui/UiTheme;->dp(Landroid/content/Context;F)I

    move-result v9

    invoke-static {v0, v11}, Lcom/doctruyen/ui/UiTheme;->dp(Landroid/content/Context;F)I

    move-result v10

    invoke-static {v0, v11}, Lcom/doctruyen/ui/UiTheme;->dp(Landroid/content/Context;F)I

    move-result v13

    invoke-virtual {v5, v8, v9, v10, v13}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 366
    const/high16 v9, 0x41600000    # 14.0f

    invoke-static {v2, v3, v12, v9, v0}, Lcom/doctruyen/ui/UiTheme;->roundBox(IIIFLandroid/content/Context;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 368
    new-instance v8, Landroid/widget/EditText;

    invoke-direct {v8, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v8, v0, Lcom/doctruyen/MainActivity;->etWebUrl:Landroid/widget/EditText;

    .line 369
    iget-object v8, v0, Lcom/doctruyen/MainActivity;->etWebUrl:Landroid/widget/EditText;

    const-string v9, "D\u00e1n li\u00ean k\u1ebft ch\u01b0\u01a1ng truy\u1ec7n (https://...)"

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 370
    iget-object v8, v0, Lcom/doctruyen/MainActivity;->etWebUrl:Landroid/widget/EditText;

    const/high16 v9, 0x41600000    # 14.0f

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setTextSize(F)V

    .line 371
    iget-object v8, v0, Lcom/doctruyen/MainActivity;->etWebUrl:Landroid/widget/EditText;

    invoke-virtual {v8, v4}, Landroid/widget/EditText;->setTextColor(I)V

    .line 372
    iget-object v8, v0, Lcom/doctruyen/MainActivity;->etWebUrl:Landroid/widget/EditText;

    invoke-virtual {v8, v6}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 373
    iget-object v8, v0, Lcom/doctruyen/MainActivity;->etWebUrl:Landroid/widget/EditText;

    iget-boolean v9, v0, Lcom/doctruyen/MainActivity;->isDarkMode:Z

    if-eqz v9, :cond_b

    const-string v9, "#12151E"

    goto :goto_b

    :cond_b
    const-string v9, "#F1F5F9"

    :goto_b
    invoke-static {v9}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v9

    const/high16 v10, 0x41200000    # 10.0f

    const/4 v12, 0x1

    invoke-static {v9, v3, v12, v10, v0}, Lcom/doctruyen/ui/UiTheme;->roundBox(IIIFLandroid/content/Context;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 374
    iget-object v8, v0, Lcom/doctruyen/MainActivity;->etWebUrl:Landroid/widget/EditText;

    const/high16 v9, 0x41600000    # 14.0f

    invoke-static {v0, v9}, Lcom/doctruyen/ui/UiTheme;->dp(Landroid/content/Context;F)I

    move-result v10

    const/high16 v11, 0x41400000    # 12.0f

    invoke-static {v0, v11}, Lcom/doctruyen/ui/UiTheme;->dp(Landroid/content/Context;F)I

    move-result v12

    invoke-static {v0, v9}, Lcom/doctruyen/ui/UiTheme;->dp(Landroid/content/Context;F)I

    move-result v13

    invoke-static {v0, v11}, Lcom/doctruyen/ui/UiTheme;->dp(Landroid/content/Context;F)I

    move-result v9

    invoke-virtual {v8, v10, v12, v13, v9}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 375
    iget-object v8, v0, Lcom/doctruyen/MainActivity;->etWebUrl:Landroid/widget/EditText;

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 377
    new-instance v8, Landroid/widget/Button;

    invoke-direct {v8, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 378
    const-string v9, "\u25b6 B\u00f3c T\u00e1ch & \u0110\u1ecdc Ngay Link N\u00e0y"

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 379
    const/high16 v10, 0x41500000    # 13.0f

    invoke-virtual {v8, v10}, Landroid/widget/Button;->setTextSize(F)V

    .line 380
    sget-object v9, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 381
    sget v9, Lcom/doctruyen/ui/UiTheme;->ACCENT_BLUE:I

    const/high16 v10, 0x41200000    # 10.0f

    const/4 v12, 0x0

    invoke-static {v9, v12, v12, v10, v0}, Lcom/doctruyen/ui/UiTheme;->roundBox(IIIFLandroid/content/Context;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 382
    const/4 v14, -0x1

    invoke-virtual {v8, v14}, Landroid/widget/Button;->setTextColor(I)V

    .line 383
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v15, -0x2

    invoke-direct {v9, v14, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 384
    const/high16 v11, 0x41400000    # 12.0f

    invoke-static {v0, v11}, Lcom/doctruyen/ui/UiTheme;->dp(Landroid/content/Context;F)I

    move-result v10

    invoke-virtual {v9, v12, v10, v12, v12}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 385
    invoke-virtual {v8, v9}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 386
    new-instance v9, Lcom/doctruyen/MainActivity$15;

    invoke-direct {v9, v0}, Lcom/doctruyen/MainActivity$15;-><init>(Lcom/doctruyen/MainActivity;)V

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 394
    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 395
    iget-object v8, v0, Lcom/doctruyen/MainActivity;->containerWeb:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 397
    iget-object v5, v0, Lcom/doctruyen/MainActivity;->containerWeb:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 402
    new-instance v5, Landroid/widget/LinearLayout;

    invoke-direct {v5, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lcom/doctruyen/MainActivity;->containerSources:Landroid/widget/LinearLayout;

    .line 403
    iget-object v5, v0, Lcom/doctruyen/MainActivity;->containerSources:Landroid/widget/LinearLayout;

    const/4 v12, 0x1

    invoke-virtual {v5, v12}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-boolean v5, v0, Lcom/doctruyen/MainActivity;->isDarkMode:Z

    invoke-static {v0, v5}, Lcom/doctruyen/ui/ComicTabHelper;->setupContainerComics(Landroid/app/Activity;Z)Landroid/widget/LinearLayout;

    move-result-object v5

    iput-object v5, v0, Lcom/doctruyen/MainActivity;->containerComics:Landroid/widget/LinearLayout;

    .line 405
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 406
    const-string v8, "C\u00c1C NGU\u1ed2N TRUY\u1ec6N \u0110\u00c3 T\u00cdCH H\u1ee2P"

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 407
    const/high16 v10, 0x41500000    # 13.0f

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setTextSize(F)V

    .line 408
    sget-object v8, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 409
    sget v8, Lcom/doctruyen/ui/UiTheme;->ACCENT_CYAN:I

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 410
    const/high16 v11, 0x41400000    # 12.0f

    invoke-static {v0, v11}, Lcom/doctruyen/ui/UiTheme;->dp(Landroid/content/Context;F)I

    move-result v8

    const/4 v12, 0x0

    invoke-virtual {v5, v12, v12, v12, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 411
    iget-object v8, v0, Lcom/doctruyen/MainActivity;->containerSources:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 413
    invoke-static {v0}, Lcom/doctruyen/extension/ExtensionEngine;->loadBuiltInSources(Landroid/content/Context;)Ljava/util/List;

    move-result-object v5

    .line 414
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_c
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_15

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/doctruyen/extension/ExtensionEngine$SourceItem;

    .line 415
    new-instance v9, Landroid/widget/LinearLayout;

    invoke-direct {v9, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 416
    const/4 v12, 0x1

    invoke-virtual {v9, v12}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 417
    const/high16 v11, 0x41800000    # 16.0f

    invoke-static {v0, v11}, Lcom/doctruyen/ui/UiTheme;->dp(Landroid/content/Context;F)I

    move-result v10

    const/high16 v13, 0x41600000    # 14.0f

    invoke-static {v0, v13}, Lcom/doctruyen/ui/UiTheme;->dp(Landroid/content/Context;F)I

    move-result v14

    invoke-static {v0, v11}, Lcom/doctruyen/ui/UiTheme;->dp(Landroid/content/Context;F)I

    move-result v15

    invoke-static {v0, v13}, Lcom/doctruyen/ui/UiTheme;->dp(Landroid/content/Context;F)I

    move-result v11

    invoke-virtual {v9, v10, v14, v15, v11}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 418
    const/high16 v11, 0x41400000    # 12.0f

    invoke-static {v2, v3, v12, v11, v0}, Lcom/doctruyen/ui/UiTheme;->roundBox(IIIFLandroid/content/Context;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 419
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v12, -0x1

    const/4 v15, -0x2

    invoke-direct {v10, v12, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 420
    const/high16 v11, 0x41200000    # 10.0f

    invoke-static {v0, v11}, Lcom/doctruyen/ui/UiTheme;->dp(Landroid/content/Context;F)I

    move-result v14

    const/4 v11, 0x0

    invoke-virtual {v10, v11, v11, v11, v14}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 421
    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 423
    new-instance v10, Landroid/widget/LinearLayout;

    invoke-direct {v10, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 424
    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 425
    const/16 v11, 0x10

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 427
    new-instance v14, Landroid/widget/TextView;

    invoke-direct {v14, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 428
    iget-object v15, v8, Lcom/doctruyen/extension/ExtensionEngine$SourceItem;->name:Ljava/lang/String;

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 429
    const/high16 v15, 0x41700000    # 15.0f

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setTextSize(F)V

    .line 430
    sget-object v15, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 431
    invoke-virtual {v14, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 432
    new-instance v15, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v12, -0x2

    const/4 v13, 0x0

    invoke-direct {v15, v13, v12, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 433
    invoke-virtual {v10, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 435
    iget-object v13, v8, Lcom/doctruyen/extension/ExtensionEngine$SourceItem;->name:Ljava/lang/String;

    const-string v14, "Tranh"

    invoke-virtual {v13, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_badge_comic

    iget-object v13, v8, Lcom/doctruyen/extension/ExtensionEngine$SourceItem;->name:Ljava/lang/String;

    const-string v14, "Manga"

    invoke-virtual {v13, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_badge_comic

    iget-object v13, v8, Lcom/doctruyen/extension/ExtensionEngine$SourceItem;->name:Ljava/lang/String;

    const-string v14, "Hentai"

    invoke-virtual {v13, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_badge_comic

    iget-object v13, v8, Lcom/doctruyen/extension/ExtensionEngine$SourceItem;->name:Ljava/lang/String;

    const-string v14, "Manhwa"

    invoke-virtual {v13, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_badge_comic

    iget-object v13, v8, Lcom/doctruyen/extension/ExtensionEngine$SourceItem;->name:Ljava/lang/String;

    const-string v14, "nhentai"

    invoke-virtual {v13, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_check_sac

    :cond_badge_comic
    const/4 v13, 0x2

    goto :goto_e

    :cond_check_sac
    iget-object v13, v8, Lcom/doctruyen/extension/ExtensionEngine$SourceItem;->name:Ljava/lang/String;

    const-string v14, "S\u1eafc"

    invoke-virtual {v13, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_d

    iget-object v13, v8, Lcom/doctruyen/extension/ExtensionEngine$SourceItem;->name:Ljava/lang/String;

    const-string v14, "Sex"

    invoke-virtual {v13, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_d

    iget-object v13, v8, Lcom/doctruyen/extension/ExtensionEngine$SourceItem;->name:Ljava/lang/String;

    const-string v14, "Tr\u00edch Tinh"

    invoke-virtual {v13, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_c

    goto :goto_d

    :cond_c
    const/4 v13, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v13, 0x1

    .line 436
    :goto_e
    new-instance v14, Landroid/widget/TextView;

    invoke-direct {v14, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 437
    const/4 v11, 0x2

    if-ne v13, v11, :cond_chk_sac_badge

    const-string v15, " \ud83d\udd1e 18+ TRANH "

    goto :goto_f

    :cond_chk_sac_badge
    const/4 v11, 0x1

    if-ne v13, v11, :cond_e

    const-string v15, " \ud83d\udd1e 18+ S\u1eaeC "

    goto :goto_f

    :cond_e
    const-string v15, " \ud83d\udcd6 TRUY\u1ec6N "

    :goto_f
    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 438
    const/high16 v15, 0x41200000    # 10.0f

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setTextSize(F)V

    .line 439
    sget-object v11, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v14, v11}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 440
    const/4 v11, 0x2

    if-ne v13, v11, :cond_chk_sac_col

    sget v11, Lcom/doctruyen/ui/UiTheme;->ACCENT_AMBER:I

    goto :goto_10

    :cond_chk_sac_col
    const/4 v11, 0x1

    if-ne v13, v11, :cond_f

    sget v11, Lcom/doctruyen/ui/UiTheme;->ACCENT_ROSE:I

    goto :goto_10

    :cond_f
    sget v11, Lcom/doctruyen/ui/UiTheme;->ACCENT_EMERALD:I

    :goto_10
    invoke-virtual {v14, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 441
    iget-boolean v11, v0, Lcom/doctruyen/MainActivity;->isDarkMode:Z

    const/4 v12, 0x2

    if-ne v13, v12, :cond_chk_sac_bg

    if-eqz v11, :cond_bg_comic_light

    const-string v11, "#382813"

    goto :goto_11

    :cond_bg_comic_light
    const-string v11, "#FEF3C7"

    goto :goto_11

    :cond_chk_sac_bg
    const/4 v12, 0x1

    if-ne v13, v12, :cond_11

    if-eqz v11, :cond_10

    const-string v11, "#38131B"

    goto :goto_11

    :cond_10
    const-string v11, "#FFE4E6"

    goto :goto_11

    :cond_11
    if-eqz v11, :cond_12

    const-string v11, "#062E20"

    goto :goto_11

    :cond_12
    const-string v11, "#D1FAE5"

    :goto_11
    invoke-static {v11}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v11

    const/4 v12, 0x2

    if-ne v13, v12, :cond_chk_sac_stroke

    sget v13, Lcom/doctruyen/ui/UiTheme;->ACCENT_AMBER:I

    goto :goto_12

    :cond_chk_sac_stroke
    const/4 v12, 0x1

    if-ne v13, v12, :cond_13

    sget v13, Lcom/doctruyen/ui/UiTheme;->ACCENT_ROSE:I

    goto :goto_12

    :cond_13
    sget v13, Lcom/doctruyen/ui/UiTheme;->ACCENT_EMERALD:I

    :goto_12
    const/high16 v12, 0x40c00000    # 6.0f

    const/4 v15, 0x1

    invoke-static {v11, v13, v15, v12, v0}, Lcom/doctruyen/ui/UiTheme;->roundBox(IIIFLandroid/content/Context;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v11

    invoke-virtual {v14, v11}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 442
    invoke-virtual {v10, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 443
    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 445
    new-instance v10, Landroid/widget/TextView;

    invoke-direct {v10, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 446
    iget-object v11, v8, Lcom/doctruyen/extension/ExtensionEngine$SourceItem;->url:Ljava/lang/String;

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 447
    const/high16 v11, 0x41400000    # 12.0f

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTextSize(F)V

    .line 448
    invoke-virtual {v10, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 449
    const/high16 v13, 0x40800000    # 4.0f

    invoke-static {v0, v13}, Lcom/doctruyen/ui/UiTheme;->dp(Landroid/content/Context;F)I

    move-result v11

    const/high16 v14, 0x41000000    # 8.0f

    invoke-static {v0, v14}, Lcom/doctruyen/ui/UiTheme;->dp(Landroid/content/Context;F)I

    move-result v15

    const/4 v14, 0x0

    invoke-virtual {v10, v14, v11, v14, v15}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 450
    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 452
    new-instance v10, Landroid/widget/Button;

    invoke-direct {v10, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 453
    const-string v11, "Kh\u00e1m Ph\u00e1 Ngu\u1ed3n \u00bb"

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 454
    const/high16 v11, 0x41400000    # 12.0f

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setTextSize(F)V

    .line 455
    sget v11, Lcom/doctruyen/ui/UiTheme;->ACCENT_BLUE_LIGHT:I

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setTextColor(I)V

    .line 456
    iget-boolean v11, v0, Lcom/doctruyen/MainActivity;->isDarkMode:Z

    if-eqz v11, :cond_14

    const-string v11, "#161D2B"

    goto :goto_13

    :cond_14
    const-string v11, "#EFF6FF"

    :goto_13
    invoke-static {v11}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v11

    sget v15, Lcom/doctruyen/ui/UiTheme;->ACCENT_BLUE:I

    const/high16 v12, 0x41000000    # 8.0f

    const/4 v13, 0x1

    invoke-static {v11, v15, v13, v12, v0}, Lcom/doctruyen/ui/UiTheme;->roundBox(IIIFLandroid/content/Context;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 457
    const/high16 v11, 0x41400000    # 12.0f

    invoke-static {v0, v11}, Lcom/doctruyen/ui/UiTheme;->dp(Landroid/content/Context;F)I

    move-result v15

    invoke-static {v0, v12}, Lcom/doctruyen/ui/UiTheme;->dp(Landroid/content/Context;F)I

    move-result v13

    invoke-static {v0, v11}, Lcom/doctruyen/ui/UiTheme;->dp(Landroid/content/Context;F)I

    move-result v14

    invoke-static {v0, v12}, Lcom/doctruyen/ui/UiTheme;->dp(Landroid/content/Context;F)I

    move-result v11

    invoke-virtual {v10, v15, v13, v14, v11}, Landroid/widget/Button;->setPadding(IIII)V

    .line 458
    new-instance v11, Lcom/doctruyen/MainActivity$16;

    invoke-direct {v11, v0, v8}, Lcom/doctruyen/MainActivity$16;-><init>(Lcom/doctruyen/MainActivity;Lcom/doctruyen/extension/ExtensionEngine$SourceItem;)V

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 463
    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 465
    iget-object v11, v8, Lcom/doctruyen/extension/ExtensionEngine$SourceItem;->url:Ljava/lang/String;

    invoke-static {v11}, Lcom/doctruyen/data/ComicHistoryManager;->isComicUrl(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_add_source

    iget-object v8, v0, Lcom/doctruyen/MainActivity;->containerComics:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_c

    :cond_add_source
    iget-object v8, v0, Lcom/doctruyen/MainActivity;->containerSources:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 466
    goto/16 :goto_c

    .line 468
    :cond_15
    iget-object v2, v0, Lcom/doctruyen/MainActivity;->containerSources:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v2, v0, Lcom/doctruyen/MainActivity;->containerComics:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 470
    invoke-virtual {v7, v1}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 471
    invoke-virtual {v0, v7}, Lcom/doctruyen/MainActivity;->setContentView(Landroid/view/View;)V

    .line 472
    return-void
.end method

.method private openReader(Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 7

    .line 1199
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/doctruyen/MainActivity;->openReader(Ljava/lang/String;Ljava/lang/String;ZIII)V

    .line 1200
    return-void
.end method

.method private openReader(Ljava/lang/String;Ljava/lang/String;ZIII)V
    .locals 2

    .line 1187
    invoke-direct {p0, p1}, Lcom/doctruyen/MainActivity;->unhideBookPath(Ljava/lang/String;)V

    .line 1188
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/doctruyen/reader/ReaderActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1189
    const-string v1, "extra_book_path"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1190
    const-string p1, "extra_book_title"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1191
    const-string p1, "extra_is_web"

    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1192
    const-string p1, "extra_start_index"

    invoke-virtual {v0, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1193
    const-string p1, "extra_start_paragraph"

    invoke-virtual {v0, p1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1194
    const-string p1, "extra_start_scroll_y"

    invoke-virtual {v0, p1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1195
    invoke-virtual {p0, v0}, Lcom/doctruyen/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 1196
    return-void
.end method

.method private pickEpubFile()V
    .locals 2

    .line 1137
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.OPEN_DOCUMENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1138
    const-string v1, "android.intent.category.OPENABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1139
    const-string v1, "*/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1140
    const/16 v1, 0x65

    invoke-virtual {p0, v0, v1}, Lcom/doctruyen/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1141
    return-void
.end method

.method private refreshAllContent()V
    .locals 2

    .line 521
    invoke-direct {p0}, Lcom/doctruyen/MainActivity;->refreshResumeCard()V

    .line 522
    invoke-direct {p0}, Lcom/doctruyen/MainActivity;->refreshLocalBookshelf()I

    .line 523
    invoke-direct {p0}, Lcom/doctruyen/MainActivity;->refreshHistoryList()V

    iget-object v0, p0, Lcom/doctruyen/MainActivity;->containerComics:Landroid/widget/LinearLayout;

    iget-boolean v1, p0, Lcom/doctruyen/MainActivity;->isDarkMode:Z

    invoke-static {p0, v0, v1}, Lcom/doctruyen/ui/ComicTabHelper;->refreshComicHistory(Landroid/app/Activity;Landroid/widget/LinearLayout;Z)V

    .line 524
    return-void
.end method

.method private refreshHistoryList()V
    .locals 16

    .line 940
    move-object/from16 v0, p0

    .line 941
    iget-object v1, v0, Lcom/doctruyen/MainActivity;->historyListContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 943
    iget-boolean v1, v0, Lcom/doctruyen/MainActivity;->isDarkMode:Z

    if-eqz v1, :cond_0

    sget v1, Lcom/doctruyen/ui/UiTheme;->DARK_SURFACE:I

    goto :goto_0

    :cond_0
    sget v1, Lcom/doctruyen/ui/UiTheme;->LIGHT_SURFACE:I

    .line 944
    :goto_0
    iget-boolean v2, v0, Lcom/doctruyen/MainActivity;->isDarkMode:Z

    if-eqz v2, :cond_1

    sget v2, Lcom/doctruyen/ui/UiTheme;->DARK_BORDER:I

    goto :goto_1

    :cond_1
    sget v2, Lcom/doctruyen/ui/UiTheme;->LIGHT_BORDER:I

    .line 945
    :goto_1
    iget-boolean v3, v0, Lcom/doctruyen/MainActivity;->isDarkMode:Z

    if-eqz v3, :cond_2

    sget v3, Lcom/doctruyen/ui/UiTheme;->DARK_TEXT_PRIMARY:I

    goto :goto_2

    :cond_2
    sget v3, Lcom/doctruyen/ui/UiTheme;->LIGHT_TEXT_PRIMARY:I

    .line 946
    :goto_2
    iget-boolean v4, v0, Lcom/doctruyen/MainActivity;->isDarkMode:Z

    if-eqz v4, :cond_3

    sget v4, Lcom/doctruyen/ui/UiTheme;->DARK_TEXT_SECONDARY:I

    goto :goto_3

    :cond_3
    sget v4, Lcom/doctruyen/ui/UiTheme;->LIGHT_TEXT_SECONDARY:I

    .line 947
    :goto_3
    iget-boolean v5, v0, Lcom/doctruyen/MainActivity;->isDarkMode:Z

    if-eqz v5, :cond_4

    sget v5, Lcom/doctruyen/ui/UiTheme;->DARK_TEXT_MUTED:I

    goto :goto_4

    :cond_4
    sget v5, Lcom/doctruyen/ui/UiTheme;->LIGHT_TEXT_MUTED:I

    .line 949
    :goto_4
    invoke-static {v0}, Lcom/doctruyen/data/AppDatabase;->getInstance(Landroid/content/Context;)Lcom/doctruyen/data/AppDatabase;

    move-result-object v6

    invoke-virtual {v6}, Lcom/doctruyen/data/AppDatabase;->getRecentBooks()Ljava/util/List;

    move-result-object v6

    .line 950
    invoke-direct {v0}, Lcom/doctruyen/MainActivity;->getHiddenBookPaths()Ljava/util/Set;

    move-result-object v7

    .line 951
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 952
    if-eqz v6, :cond_6

    .line 953
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/doctruyen/data/AppDatabase$HistoryItem;

    .line 954
    iget-object v10, v9, Lcom/doctruyen/data/AppDatabase$HistoryItem;->bookPath:Ljava/lang/String;

    if-eqz v10, :cond_5

    iget-object v10, v9, Lcom/doctruyen/data/AppDatabase$HistoryItem;->bookPath:Ljava/lang/String;

    invoke-interface {v7, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5

    .line 955
    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 957
    :cond_5
    goto :goto_5

    .line 960
    :cond_6
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v6

    const/high16 v7, 0x41000000    # 8.0f

    const/high16 v9, 0x41400000    # 12.0f

    const/4 v10, 0x0

    if-eqz v6, :cond_7

    .line 961
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 962
    const-string v2, "Ch\u01b0a c\u00f3 truy\u1ec7n n\u00e0o trong l\u1ecbch s\u1eed \u0111\u1ecdc."

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 963
    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setTextSize(F)V

    .line 964
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 965
    invoke-static {v0, v7}, Lcom/doctruyen/ui/UiTheme;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-static {v0, v7}, Lcom/doctruyen/ui/UiTheme;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {v1, v10, v2, v10, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 966
    iget-object v2, v0, Lcom/doctruyen/MainActivity;->historyListContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 967
    return-void

    .line 970
    :cond_7
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/doctruyen/data/AppDatabase$HistoryItem;

    .line 971
    new-instance v8, Landroid/widget/LinearLayout;

    invoke-direct {v8, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 972
    invoke-virtual {v8, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 973
    const/16 v11, 0x10

    invoke-virtual {v8, v11}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 974
    const/high16 v11, 0x41600000    # 14.0f

    invoke-static {v0, v11}, Lcom/doctruyen/ui/UiTheme;->dp(Landroid/content/Context;F)I

    move-result v12

    invoke-static {v0, v9}, Lcom/doctruyen/ui/UiTheme;->dp(Landroid/content/Context;F)I

    move-result v13

    const/high16 v14, 0x41200000    # 10.0f

    invoke-static {v0, v14}, Lcom/doctruyen/ui/UiTheme;->dp(Landroid/content/Context;F)I

    move-result v15

    invoke-static {v0, v9}, Lcom/doctruyen/ui/UiTheme;->dp(Landroid/content/Context;F)I

    move-result v14

    invoke-virtual {v8, v12, v13, v15, v14}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 975
    const/4 v12, 0x1

    invoke-static {v1, v2, v12, v9, v0}, Lcom/doctruyen/ui/UiTheme;->roundBox(IIIFLandroid/content/Context;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v13

    invoke-virtual {v8, v13}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 976
    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v14, -0x1

    const/4 v15, -0x2

    invoke-direct {v13, v14, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 977
    invoke-static {v0, v7}, Lcom/doctruyen/ui/UiTheme;->dp(Landroid/content/Context;F)I

    move-result v14

    invoke-virtual {v13, v10, v10, v10, v14}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 978
    invoke-virtual {v8, v13}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 980
    new-instance v13, Landroid/widget/LinearLayout;

    invoke-direct {v13, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 981
    invoke-virtual {v13, v12}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 982
    new-instance v14, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v14, v10, v15, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v13, v14}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 984
    new-instance v7, Landroid/widget/TextView;

    invoke-direct {v7, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 985
    iget-object v14, v6, Lcom/doctruyen/data/AppDatabase$HistoryItem;->bookTitle:Ljava/lang/String;

    invoke-virtual {v7, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 986
    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setTextSize(F)V

    .line 987
    sget-object v11, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 988
    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 989
    invoke-virtual {v13, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 991
    new-instance v7, Landroid/widget/TextView;

    invoke-direct {v7, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 992
    iget v11, v6, Lcom/doctruyen/data/AppDatabase$HistoryItem;->paragraphIndex:I

    if-lez v11, :cond_8

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, " \u2022 \u0110o\u1ea1n "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v14, v6, Lcom/doctruyen/data/AppDatabase$HistoryItem;->paragraphIndex:I

    add-int/2addr v14, v12

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto :goto_7

    :cond_8
    const-string v11, ""

    .line 993
    :goto_7
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v15, v6, Lcom/doctruyen/data/AppDatabase$HistoryItem;->isWeb:Z

    if-eqz v15, :cond_9

    const-string v15, "\ud83c\udf10 "

    goto :goto_8

    :cond_9
    const-string v15, "\ud83d\udcd6 "

    :goto_8
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v6, Lcom/doctruyen/data/AppDatabase$HistoryItem;->chapterTitle:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 994
    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setTextSize(F)V

    .line 995
    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 996
    const/high16 v11, 0x40000000    # 2.0f

    invoke-static {v0, v11}, Lcom/doctruyen/ui/UiTheme;->dp(Landroid/content/Context;F)I

    move-result v11

    invoke-virtual {v7, v10, v11, v10, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 997
    invoke-virtual {v13, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 998
    invoke-virtual {v8, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1001
    new-instance v7, Landroid/widget/TextView;

    invoke-direct {v7, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1002
    const-string v11, "\ud83d\uddd1 X\u00f3a"

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1003
    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1004
    sget-object v11, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1005
    sget v11, Lcom/doctruyen/ui/UiTheme;->ACCENT_ROSE:I

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1006
    iget-boolean v11, v0, Lcom/doctruyen/MainActivity;->isDarkMode:Z

    if-eqz v11, :cond_a

    const-string v11, "#251318"

    goto :goto_9

    :cond_a
    const-string v11, "#FEE2E2"

    :goto_9
    invoke-static {v11}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v11

    sget v13, Lcom/doctruyen/ui/UiTheme;->ACCENT_ROSE:I

    const/high16 v14, 0x40c00000    # 6.0f

    invoke-static {v11, v13, v12, v14, v0}, Lcom/doctruyen/ui/UiTheme;->roundBox(IIIFLandroid/content/Context;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v11

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1007
    const/high16 v11, 0x41200000    # 10.0f

    invoke-static {v0, v11}, Lcom/doctruyen/ui/UiTheme;->dp(Landroid/content/Context;F)I

    move-result v12

    invoke-static {v0, v14}, Lcom/doctruyen/ui/UiTheme;->dp(Landroid/content/Context;F)I

    move-result v13

    invoke-static {v0, v11}, Lcom/doctruyen/ui/UiTheme;->dp(Landroid/content/Context;F)I

    move-result v11

    invoke-static {v0, v14}, Lcom/doctruyen/ui/UiTheme;->dp(Landroid/content/Context;F)I

    move-result v14

    invoke-virtual {v7, v12, v13, v11, v14}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1008
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v12, -0x2

    invoke-direct {v11, v12, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1009
    const/high16 v12, 0x41000000    # 8.0f

    invoke-static {v0, v12}, Lcom/doctruyen/ui/UiTheme;->dp(Landroid/content/Context;F)I

    move-result v13

    invoke-virtual {v11, v13, v10, v10, v10}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 1010
    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1011
    new-instance v11, Lcom/doctruyen/MainActivity$19;

    invoke-direct {v11, v0, v6}, Lcom/doctruyen/MainActivity$19;-><init>(Lcom/doctruyen/MainActivity;Lcom/doctruyen/data/AppDatabase$HistoryItem;)V

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1024
    invoke-virtual {v8, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1026
    new-instance v7, Lcom/doctruyen/MainActivity$20;

    invoke-direct {v7, v0, v6}, Lcom/doctruyen/MainActivity$20;-><init>(Lcom/doctruyen/MainActivity;Lcom/doctruyen/data/AppDatabase$HistoryItem;)V

    invoke-virtual {v8, v7}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1031
    iget-object v6, v0, Lcom/doctruyen/MainActivity;->historyListContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1032
    const/high16 v7, 0x41000000    # 8.0f

    goto/16 :goto_6

    .line 1033
    :cond_b
    return-void
.end method

.method private refreshLocalBookshelf()I
    .locals 19

    .line 674
    move-object/from16 v1, p0

    .line 675
    iget-object v0, v1, Lcom/doctruyen/MainActivity;->localShelfContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 677
    iget-boolean v0, v1, Lcom/doctruyen/MainActivity;->isDarkMode:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/doctruyen/ui/UiTheme;->DARK_SURFACE:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/doctruyen/ui/UiTheme;->LIGHT_SURFACE:I

    :goto_0
    move v2, v0

    .line 678
    iget-boolean v0, v1, Lcom/doctruyen/MainActivity;->isDarkMode:Z

    if-eqz v0, :cond_1

    sget v0, Lcom/doctruyen/ui/UiTheme;->DARK_BORDER:I

    goto :goto_1

    :cond_1
    sget v0, Lcom/doctruyen/ui/UiTheme;->LIGHT_BORDER:I

    :goto_1
    move v3, v0

    .line 679
    iget-boolean v0, v1, Lcom/doctruyen/MainActivity;->isDarkMode:Z

    if-eqz v0, :cond_2

    sget v0, Lcom/doctruyen/ui/UiTheme;->DARK_TEXT_PRIMARY:I

    goto :goto_2

    :cond_2
    sget v0, Lcom/doctruyen/ui/UiTheme;->LIGHT_TEXT_PRIMARY:I

    :goto_2
    move v4, v0

    .line 680
    iget-boolean v0, v1, Lcom/doctruyen/MainActivity;->isDarkMode:Z

    if-eqz v0, :cond_3

    sget v0, Lcom/doctruyen/ui/UiTheme;->DARK_TEXT_SECONDARY:I

    goto :goto_3

    :cond_3
    sget v0, Lcom/doctruyen/ui/UiTheme;->LIGHT_TEXT_SECONDARY:I

    :goto_3
    move v5, v0

    .line 681
    iget-boolean v0, v1, Lcom/doctruyen/MainActivity;->isDarkMode:Z

    if-eqz v0, :cond_4

    sget v0, Lcom/doctruyen/ui/UiTheme;->DARK_TEXT_MUTED:I

    goto :goto_4

    :cond_4
    sget v0, Lcom/doctruyen/ui/UiTheme;->LIGHT_TEXT_MUTED:I

    :goto_4
    move v6, v0

    .line 683
    invoke-direct {v1}, Lcom/doctruyen/MainActivity;->getHiddenBookPaths()Ljava/util/Set;

    move-result-object v7

    .line 684
    new-instance v8, Ljava/util/LinkedHashMap;

    invoke-direct {v8}, Ljava/util/LinkedHashMap;-><init>()V

    .line 687
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 689
    :try_start_0
    sget-object v0, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    .line 690
    :catch_0
    move-exception v0

    :goto_5
    nop

    .line 691
    new-instance v0, Ljava/io/File;

    const-string v10, "/storage/emulated/0/Download"

    invoke-direct {v0, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 693
    :try_start_1
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v10

    const-string v11, "Download"

    invoke-direct {v0, v10, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_6

    .line 694
    :catch_1
    move-exception v0

    :goto_6
    nop

    .line 695
    new-instance v0, Ljava/io/File;

    const-string v10, "/sdcard/Download"

    invoke-direct {v0, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 697
    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    .line 698
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_7
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v11, 0x0

    if-eqz v0, :cond_7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Ljava/io/File;

    .line 699
    if-eqz v12, :cond_6

    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v12}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 701
    :try_start_2
    invoke-virtual {v12}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    .line 702
    invoke-interface {v10, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_5

    .line 703
    invoke-interface {v10, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 704
    invoke-direct {v1, v12, v8, v11, v7}, Lcom/doctruyen/MainActivity;->scanDownloadDirectory(Ljava/io/File;Ljava/util/Map;ILjava/util/Set;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 708
    :cond_5
    goto :goto_8

    .line 706
    :catch_2
    move-exception v0

    .line 707
    invoke-direct {v1, v12, v8, v11, v7}, Lcom/doctruyen/MainActivity;->scanDownloadDirectory(Ljava/io/File;Ljava/util/Map;ILjava/util/Set;)V

    .line 710
    :cond_6
    :goto_8
    goto :goto_7

    .line 713
    :cond_7
    invoke-static {v1}, Lcom/doctruyen/data/AppDatabase;->getInstance(Landroid/content/Context;)Lcom/doctruyen/data/AppDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/doctruyen/data/AppDatabase;->getLocalBooks()Ljava/util/List;

    move-result-object v0

    .line 714
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_9
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v10, 0x1

    if-eqz v0, :cond_f

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lcom/doctruyen/data/AppDatabase$HistoryItem;

    .line 715
    iget-object v0, v12, Lcom/doctruyen/data/AppDatabase$HistoryItem;->bookPath:Ljava/lang/String;

    if-eqz v0, :cond_e

    iget-object v0, v12, Lcom/doctruyen/data/AppDatabase$HistoryItem;->bookPath:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    .line 716
    iget-object v0, v12, Lcom/doctruyen/data/AppDatabase$HistoryItem;->bookPath:Ljava/lang/String;

    invoke-interface {v7, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_9

    .line 717
    :cond_8
    new-instance v13, Ljava/io/File;

    iget-object v0, v12, Lcom/doctruyen/data/AppDatabase$HistoryItem;->bookPath:Ljava/lang/String;

    invoke-direct {v13, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 719
    :try_start_3
    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {v13}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    if-eqz v0, :cond_a

    :cond_9
    goto :goto_9

    .line 720
    :catch_3
    move-exception v0

    :cond_a
    nop

    .line 721
    iget-object v0, v12, Lcom/doctruyen/data/AppDatabase$HistoryItem;->bookPath:Ljava/lang/String;

    invoke-interface {v8, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/doctruyen/MainActivity$LocalBookItem;

    .line 722
    if-nez v0, :cond_c

    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v14

    if-eqz v14, :cond_c

    .line 723
    new-instance v0, Lcom/doctruyen/MainActivity$LocalBookItem;

    const/4 v14, 0x0

    invoke-direct {v0, v14}, Lcom/doctruyen/MainActivity$LocalBookItem;-><init>(Lcom/doctruyen/MainActivity$1;)V

    .line 724
    iget-object v14, v12, Lcom/doctruyen/data/AppDatabase$HistoryItem;->bookPath:Ljava/lang/String;

    iput-object v14, v0, Lcom/doctruyen/MainActivity$LocalBookItem;->path:Ljava/lang/String;

    .line 725
    iget-object v14, v12, Lcom/doctruyen/data/AppDatabase$HistoryItem;->bookTitle:Ljava/lang/String;

    if-eqz v14, :cond_b

    iget-object v14, v12, Lcom/doctruyen/data/AppDatabase$HistoryItem;->bookTitle:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_b

    iget-object v14, v12, Lcom/doctruyen/data/AppDatabase$HistoryItem;->bookTitle:Ljava/lang/String;

    goto :goto_a

    :cond_b
    invoke-virtual {v13}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v1, v14}, Lcom/doctruyen/MainActivity;->cleanFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    :goto_a
    iput-object v14, v0, Lcom/doctruyen/MainActivity$LocalBookItem;->title:Ljava/lang/String;

    .line 726
    iget-object v14, v12, Lcom/doctruyen/data/AppDatabase$HistoryItem;->bookPath:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v14

    const-string v15, ".epub"

    invoke-virtual {v14, v15}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v14

    iput-boolean v14, v0, Lcom/doctruyen/MainActivity$LocalBookItem;->isEpub:Z

    .line 727
    invoke-virtual {v13}, Ljava/io/File;->length()J

    move-result-wide v13

    iput-wide v13, v0, Lcom/doctruyen/MainActivity$LocalBookItem;->fileSize:J

    .line 728
    iget-object v13, v0, Lcom/doctruyen/MainActivity$LocalBookItem;->path:Ljava/lang/String;

    invoke-interface {v8, v13, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 730
    :cond_c
    if-eqz v0, :cond_e

    .line 731
    iget v13, v12, Lcom/doctruyen/data/AppDatabase$HistoryItem;->chapterIndex:I

    iput v13, v0, Lcom/doctruyen/MainActivity$LocalBookItem;->chapterIndex:I

    .line 732
    iget v13, v12, Lcom/doctruyen/data/AppDatabase$HistoryItem;->paragraphIndex:I

    iput v13, v0, Lcom/doctruyen/MainActivity$LocalBookItem;->paragraphIndex:I

    .line 733
    iget v13, v12, Lcom/doctruyen/data/AppDatabase$HistoryItem;->scrollY:I

    iput v13, v0, Lcom/doctruyen/MainActivity$LocalBookItem;->scrollY:I

    .line 734
    iget v13, v12, Lcom/doctruyen/data/AppDatabase$HistoryItem;->paragraphIndex:I

    if-lez v13, :cond_d

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, " (\u0111o\u1ea1n "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v12, Lcom/doctruyen/data/AppDatabase$HistoryItem;->paragraphIndex:I

    add-int/2addr v14, v10

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v13, ")"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_b

    :cond_d
    const-string v10, ""

    .line 735
    :goto_b
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "\u0110ang \u0111\u1ecdc: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v12, v12, Lcom/doctruyen/data/AppDatabase$HistoryItem;->chapterTitle:Ljava/lang/String;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Lcom/doctruyen/MainActivity$LocalBookItem;->progressDesc:Ljava/lang/String;

    .line 738
    :cond_e
    goto/16 :goto_9

    .line 740
    :cond_f
    invoke-interface {v8}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    const/high16 v7, 0x40c00000    # 6.0f

    const/high16 v9, 0x41500000    # 13.0f

    const/16 v12, 0x11

    const/high16 v13, 0x41400000    # 12.0f

    const/high16 v14, 0x41600000    # 14.0f

    if-eqz v0, :cond_10

    .line 741
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 742
    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 743
    invoke-virtual {v0, v12}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 744
    const/high16 v4, 0x41c00000    # 24.0f

    invoke-static {v1, v4}, Lcom/doctruyen/ui/UiTheme;->dp(Landroid/content/Context;F)I

    move-result v5

    const/high16 v8, 0x42000000    # 32.0f

    invoke-static {v1, v8}, Lcom/doctruyen/ui/UiTheme;->dp(Landroid/content/Context;F)I

    move-result v12

    invoke-static {v1, v4}, Lcom/doctruyen/ui/UiTheme;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-static {v1, v8}, Lcom/doctruyen/ui/UiTheme;->dp(Landroid/content/Context;F)I

    move-result v8

    invoke-virtual {v0, v5, v12, v4, v8}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 745
    invoke-static {v2, v3, v10, v14, v1}, Lcom/doctruyen/ui/UiTheme;->roundBox(IIIFLandroid/content/Context;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 747
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 748
    const-string v3, "Ch\u01b0a t\u00ecm th\u1ea5y truy\u1ec7n EPUB ho\u1eb7c TXT n\u00e0o trong th\u01b0 m\u1ee5c Download."

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 749
    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setTextSize(F)V

    .line 750
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 751
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 753
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 754
    const-string v3, "Ch\u00e9p truy\u1ec7n (.epub, .txt) v\u00e0o Download ho\u1eb7c b\u1ea5m \'M\u1edf T\u1ec7p T\u1eeb M\u00e1y\'"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 755
    invoke-virtual {v2, v13}, Landroid/widget/TextView;->setTextSize(F)V

    .line 756
    sget v3, Lcom/doctruyen/ui/UiTheme;->ACCENT_CYAN:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 757
    invoke-static {v1, v7}, Lcom/doctruyen/ui/UiTheme;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {v2, v11, v3, v11, v11}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 758
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 760
    iget-object v2, v1, Lcom/doctruyen/MainActivity;->localShelfContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 761
    return v11

    .line 765
    :cond_10
    invoke-interface {v8}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/doctruyen/MainActivity$LocalBookItem;

    .line 766
    new-instance v7, Landroid/widget/LinearLayout;

    invoke-direct {v7, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 767
    invoke-virtual {v7, v11}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 768
    const/16 v9, 0x10

    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 769
    invoke-static {v1, v14}, Lcom/doctruyen/ui/UiTheme;->dp(Landroid/content/Context;F)I

    move-result v9

    invoke-static {v1, v14}, Lcom/doctruyen/ui/UiTheme;->dp(Landroid/content/Context;F)I

    move-result v13

    invoke-static {v1, v14}, Lcom/doctruyen/ui/UiTheme;->dp(Landroid/content/Context;F)I

    move-result v12

    invoke-static {v1, v14}, Lcom/doctruyen/ui/UiTheme;->dp(Landroid/content/Context;F)I

    move-result v11

    invoke-virtual {v7, v9, v13, v12, v11}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 770
    invoke-static {v2, v3, v10, v14, v1}, Lcom/doctruyen/ui/UiTheme;->roundBox(IIIFLandroid/content/Context;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 771
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v11, -0x1

    const/4 v12, -0x2

    invoke-direct {v9, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 772
    const/high16 v13, 0x41200000    # 10.0f

    invoke-static {v1, v13}, Lcom/doctruyen/ui/UiTheme;->dp(Landroid/content/Context;F)I

    move-result v11

    const/4 v13, 0x0

    invoke-virtual {v9, v13, v13, v13, v11}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 773
    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 776
    new-instance v9, Landroid/widget/LinearLayout;

    invoke-direct {v9, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 777
    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 778
    const/16 v11, 0x11

    invoke-virtual {v9, v11}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 779
    iget-boolean v11, v15, Lcom/doctruyen/MainActivity$LocalBookItem;->isEpub:Z

    iget-boolean v13, v1, Lcom/doctruyen/MainActivity;->isDarkMode:Z

    if-eqz v11, :cond_12

    if-eqz v13, :cond_11

    const-string v11, "#0C2E3B"

    goto :goto_d

    :cond_11
    const-string v11, "#E0F2FE"

    goto :goto_d

    :cond_12
    if-eqz v13, :cond_13

    const-string v11, "#38230B"

    goto :goto_d

    :cond_13
    const-string v11, "#FEF3C7"

    :goto_d
    invoke-static {v11}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v11

    .line 780
    iget-boolean v13, v15, Lcom/doctruyen/MainActivity$LocalBookItem;->isEpub:Z

    if-eqz v13, :cond_14

    sget v13, Lcom/doctruyen/ui/UiTheme;->ACCENT_CYAN:I

    goto :goto_e

    :cond_14
    sget v13, Lcom/doctruyen/ui/UiTheme;->ACCENT_AMBER:I

    .line 781
    :goto_e
    const/high16 v12, 0x41000000    # 8.0f

    invoke-static {v11, v13, v10, v12, v1}, Lcom/doctruyen/ui/UiTheme;->roundBox(IIIFLandroid/content/Context;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v11

    invoke-virtual {v9, v11}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 782
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v13, 0x42300000    # 44.0f

    invoke-static {v1, v13}, Lcom/doctruyen/ui/UiTheme;->dp(Landroid/content/Context;F)I

    move-result v13

    const/high16 v12, 0x42680000    # 58.0f

    invoke-static {v1, v12}, Lcom/doctruyen/ui/UiTheme;->dp(Landroid/content/Context;F)I

    move-result v12

    invoke-direct {v11, v13, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 783
    invoke-static {v1, v14}, Lcom/doctruyen/ui/UiTheme;->dp(Landroid/content/Context;F)I

    move-result v12

    const/4 v13, 0x0

    invoke-virtual {v11, v13, v13, v12, v13}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 784
    invoke-virtual {v9, v11}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 786
    new-instance v11, Landroid/widget/TextView;

    invoke-direct {v11, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 787
    iget-boolean v12, v15, Lcom/doctruyen/MainActivity$LocalBookItem;->isEpub:Z

    if-eqz v12, :cond_15

    const-string v12, "\ud83d\udcd8"

    goto :goto_f

    :cond_15
    const-string v12, "\ud83d\udcd9"

    :goto_f
    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 788
    const/high16 v12, 0x41800000    # 16.0f

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setTextSize(F)V

    .line 789
    const/16 v12, 0x11

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setGravity(I)V

    .line 790
    invoke-virtual {v9, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 792
    new-instance v11, Landroid/widget/TextView;

    invoke-direct {v11, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 793
    iget-boolean v13, v15, Lcom/doctruyen/MainActivity$LocalBookItem;->isEpub:Z

    if-eqz v13, :cond_16

    const-string v13, "EPUB"

    goto :goto_10

    :cond_16
    const-string v13, "TXT"

    :goto_10
    invoke-virtual {v11, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 794
    const/high16 v13, 0x41100000    # 9.0f

    invoke-virtual {v11, v13}, Landroid/widget/TextView;->setTextSize(F)V

    .line 795
    sget-object v13, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v11, v13}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 796
    iget-boolean v13, v15, Lcom/doctruyen/MainActivity$LocalBookItem;->isEpub:Z

    if-eqz v13, :cond_17

    sget v13, Lcom/doctruyen/ui/UiTheme;->ACCENT_CYAN:I

    goto :goto_11

    :cond_17
    sget v13, Lcom/doctruyen/ui/UiTheme;->ACCENT_AMBER:I

    :goto_11
    invoke-virtual {v11, v13}, Landroid/widget/TextView;->setTextColor(I)V

    .line 797
    invoke-virtual {v9, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 798
    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 801
    new-instance v9, Landroid/widget/LinearLayout;

    invoke-direct {v9, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 802
    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 803
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v12, -0x2

    const/4 v14, 0x0

    invoke-direct {v11, v14, v12, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v9, v11}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 805
    new-instance v11, Landroid/widget/TextView;

    invoke-direct {v11, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 806
    iget-object v12, v15, Lcom/doctruyen/MainActivity$LocalBookItem;->title:Ljava/lang/String;

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 807
    const/high16 v12, 0x41700000    # 15.0f

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setTextSize(F)V

    .line 808
    sget-object v12, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 809
    invoke-virtual {v11, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 810
    const/4 v12, 0x2

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 811
    invoke-virtual {v9, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 813
    new-instance v11, Landroid/widget/LinearLayout;

    invoke-direct {v11, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 814
    const/4 v13, 0x0

    invoke-virtual {v11, v13}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 815
    const/high16 v12, 0x40800000    # 4.0f

    invoke-static {v1, v12}, Lcom/doctruyen/ui/UiTheme;->dp(Landroid/content/Context;F)I

    move-result v12

    invoke-virtual {v11, v13, v12, v13, v13}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 817
    iget-wide v12, v15, Lcom/doctruyen/MainActivity$LocalBookItem;->fileSize:J

    const-wide/16 v17, 0x0

    cmp-long v14, v12, v17

    if-lez v14, :cond_18

    .line 818
    new-instance v12, Landroid/widget/TextView;

    invoke-direct {v12, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 819
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v11

    iget-wide v10, v15, Lcom/doctruyen/MainActivity$LocalBookItem;->fileSize:J

    invoke-direct {v1, v10, v11}, Lcom/doctruyen/MainActivity;->formatFileSize(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " \u2022 "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v12, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 820
    const/high16 v10, 0x41400000    # 12.0f

    invoke-virtual {v12, v10}, Landroid/widget/TextView;->setTextSize(F)V

    .line 821
    invoke-virtual {v12, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 822
    move-object/from16 v10, v17

    invoke-virtual {v10, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_12

    .line 817
    :cond_18
    move-object v10, v11

    .line 825
    :goto_12
    new-instance v11, Landroid/widget/TextView;

    invoke-direct {v11, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 826
    iget-object v12, v15, Lcom/doctruyen/MainActivity$LocalBookItem;->progressDesc:Ljava/lang/String;

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 827
    const/high16 v12, 0x41400000    # 12.0f

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setTextSize(F)V

    .line 828
    iget-object v12, v15, Lcom/doctruyen/MainActivity$LocalBookItem;->progressDesc:Ljava/lang/String;

    const-string v13, "\u0110ang \u0111\u1ecdc"

    invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_19

    sget v12, Lcom/doctruyen/ui/UiTheme;->ACCENT_CYAN:I

    goto :goto_13

    :cond_19
    move v12, v5

    :goto_13
    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setSingleLine(Z)V

    sget-object v12, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 829
    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 830
    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 832
    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 835
    new-instance v9, Landroid/widget/LinearLayout;

    invoke-direct {v9, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 836
    const/4 v13, 0x0

    invoke-virtual {v9, v13}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 837
    const/16 v10, 0x10

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 838
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v12, -0x2

    invoke-direct {v10, v12, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 839
    const/high16 v11, 0x41000000    # 8.0f

    invoke-static {v1, v11}, Lcom/doctruyen/ui/UiTheme;->dp(Landroid/content/Context;F)I

    move-result v12

    invoke-virtual {v10, v12, v13, v13, v13}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 840
    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 842
    new-instance v10, Landroid/widget/Button;

    invoke-direct {v10, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 843
    const-string v11, "\u25b6 \u0110\u1ecdc"

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 844
    const/high16 v12, 0x41400000    # 12.0f

    invoke-virtual {v10, v12}, Landroid/widget/Button;->setTextSize(F)V

    .line 845
    sget-object v11, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 846
    const/4 v11, -0x1

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setTextColor(I)V

    .line 847
    sget v11, Lcom/doctruyen/ui/UiTheme;->ACCENT_BLUE:I

    const/high16 v13, 0x41000000    # 8.0f

    const/4 v14, 0x0

    invoke-static {v11, v14, v14, v13, v1}, Lcom/doctruyen/ui/UiTheme;->roundBox(IIIFLandroid/content/Context;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 848
    invoke-static {v1, v12}, Lcom/doctruyen/ui/UiTheme;->dp(Landroid/content/Context;F)I

    move-result v11

    invoke-static {v1, v13}, Lcom/doctruyen/ui/UiTheme;->dp(Landroid/content/Context;F)I

    move-result v14

    move-object/from16 v16, v0

    invoke-static {v1, v12}, Lcom/doctruyen/ui/UiTheme;->dp(Landroid/content/Context;F)I

    move-result v0

    invoke-static {v1, v13}, Lcom/doctruyen/ui/UiTheme;->dp(Landroid/content/Context;F)I

    move-result v12

    invoke-virtual {v10, v11, v14, v0, v12}, Landroid/widget/Button;->setPadding(IIII)V

    .line 849
    new-instance v0, Lcom/doctruyen/MainActivity$4;

    invoke-direct {v0, v1, v15}, Lcom/doctruyen/MainActivity$4;-><init>(Lcom/doctruyen/MainActivity;Lcom/doctruyen/MainActivity$LocalBookItem;)V

    invoke-virtual {v10, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 850
    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 852
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 853
    const-string v10, "\ud83d\uddd1"

    invoke-virtual {v0, v10}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 854
    const/high16 v10, 0x41500000    # 13.0f

    invoke-virtual {v0, v10}, Landroid/widget/Button;->setTextSize(F)V

    .line 855
    sget v11, Lcom/doctruyen/ui/UiTheme;->ACCENT_ROSE:I

    invoke-virtual {v0, v11}, Landroid/widget/Button;->setTextColor(I)V

    .line 856
    iget-boolean v11, v1, Lcom/doctruyen/MainActivity;->isDarkMode:Z

    if-eqz v11, :cond_1a

    const-string v11, "#251318"

    goto :goto_14

    :cond_1a
    const-string v11, "#FEE2E2"

    :goto_14
    invoke-static {v11}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v11

    sget v12, Lcom/doctruyen/ui/UiTheme;->ACCENT_ROSE:I

    const/high16 v13, 0x41000000    # 8.0f

    const/4 v14, 0x1

    invoke-static {v11, v12, v14, v13, v1}, Lcom/doctruyen/ui/UiTheme;->roundBox(IIIFLandroid/content/Context;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v11

    invoke-virtual {v0, v11}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 857
    const/high16 v11, 0x41200000    # 10.0f

    invoke-static {v1, v11}, Lcom/doctruyen/ui/UiTheme;->dp(Landroid/content/Context;F)I

    move-result v12

    invoke-static {v1, v13}, Lcom/doctruyen/ui/UiTheme;->dp(Landroid/content/Context;F)I

    move-result v10

    invoke-static {v1, v11}, Lcom/doctruyen/ui/UiTheme;->dp(Landroid/content/Context;F)I

    move-result v11

    invoke-static {v1, v13}, Lcom/doctruyen/ui/UiTheme;->dp(Landroid/content/Context;F)I

    move-result v13

    invoke-virtual {v0, v12, v10, v11, v13}, Landroid/widget/Button;->setPadding(IIII)V

    .line 858
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v12, -0x2

    invoke-direct {v10, v12, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 859
    const/high16 v11, 0x40c00000    # 6.0f

    invoke-static {v1, v11}, Lcom/doctruyen/ui/UiTheme;->dp(Landroid/content/Context;F)I

    move-result v12

    const/4 v13, 0x0

    invoke-virtual {v10, v12, v13, v13, v13}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 860
    invoke-virtual {v0, v10}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 861
    new-instance v10, Lcom/doctruyen/MainActivity$5;

    invoke-direct {v10, v1, v15}, Lcom/doctruyen/MainActivity$5;-><init>(Lcom/doctruyen/MainActivity;Lcom/doctruyen/MainActivity$LocalBookItem;)V

    invoke-virtual {v0, v10}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 862
    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 864
    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 866
    iget-object v0, v1, Lcom/doctruyen/MainActivity;->localShelfContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 867
    move-object/from16 v0, v16

    const/high16 v7, 0x40c00000    # 6.0f

    const/high16 v9, 0x41500000    # 13.0f

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/16 v12, 0x11

    const/high16 v13, 0x41400000    # 12.0f

    const/high16 v14, 0x41600000    # 14.0f

    goto/16 :goto_c

    .line 868
    :cond_1b
    invoke-interface {v8}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method private refreshResumeCard()V
    .locals 17

    .line 527
    move-object/from16 v0, p0

    .line 528
    iget-object v1, v0, Lcom/doctruyen/MainActivity;->resumeCardContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 529
    invoke-static {v0}, Lcom/doctruyen/data/AppDatabase;->getInstance(Landroid/content/Context;)Lcom/doctruyen/data/AppDatabase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/doctruyen/data/AppDatabase;->getLatestBook()Lcom/doctruyen/data/AppDatabase$HistoryItem;

    move-result-object v1

    .line 530
    invoke-direct {v0}, Lcom/doctruyen/MainActivity;->getHiddenBookPaths()Ljava/util/Set;

    move-result-object v2

    .line 531
    if-eqz v1, :cond_0

    iget-object v3, v1, Lcom/doctruyen/data/AppDatabase$HistoryItem;->bookPath:Ljava/lang/String;

    if-eqz v3, :cond_3

    iget-object v3, v1, Lcom/doctruyen/data/AppDatabase$HistoryItem;->bookPath:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 532
    :cond_0
    invoke-static {v0}, Lcom/doctruyen/data/AppDatabase;->getInstance(Landroid/content/Context;)Lcom/doctruyen/data/AppDatabase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/doctruyen/data/AppDatabase;->getRecentBooks()Ljava/util/List;

    move-result-object v1

    .line 533
    nop

    .line 534
    if-eqz v1, :cond_2

    .line 535
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/doctruyen/data/AppDatabase$HistoryItem;

    .line 536
    iget-object v4, v3, Lcom/doctruyen/data/AppDatabase$HistoryItem;->bookPath:Ljava/lang/String;

    if-eqz v4, :cond_1

    iget-object v4, v3, Lcom/doctruyen/data/AppDatabase$HistoryItem;->bookPath:Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 537
    nop

    .line 538
    move-object v1, v3

    goto :goto_1

    .line 540
    :cond_1
    goto :goto_0

    .line 543
    :cond_2
    const/4 v1, 0x0

    :cond_3
    :goto_1
    const/16 v2, 0x8

    if-nez v1, :cond_4

    .line 544
    iget-object v1, v0, Lcom/doctruyen/MainActivity;->resumeCardContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 545
    return-void

    .line 548
    :cond_4
    iget-boolean v3, v0, Lcom/doctruyen/MainActivity;->isDarkMode:Z

    if-eqz v3, :cond_5

    sget v3, Lcom/doctruyen/ui/UiTheme;->DARK_SURFACE:I

    goto :goto_2

    :cond_5
    sget v3, Lcom/doctruyen/ui/UiTheme;->LIGHT_SURFACE:I

    .line 549
    :goto_2
    iget-boolean v4, v0, Lcom/doctruyen/MainActivity;->isDarkMode:Z

    if-eqz v4, :cond_6

    sget v4, Lcom/doctruyen/ui/UiTheme;->DARK_BORDER:I

    goto :goto_3

    :cond_6
    sget v4, Lcom/doctruyen/ui/UiTheme;->LIGHT_BORDER:I

    .line 550
    :goto_3
    iget-boolean v5, v0, Lcom/doctruyen/MainActivity;->isDarkMode:Z

    if-eqz v5, :cond_7

    sget v5, Lcom/doctruyen/ui/UiTheme;->DARK_TEXT_PRIMARY:I

    goto :goto_4

    :cond_7
    sget v5, Lcom/doctruyen/ui/UiTheme;->LIGHT_TEXT_PRIMARY:I

    .line 551
    :goto_4
    iget-boolean v6, v0, Lcom/doctruyen/MainActivity;->isDarkMode:Z

    if-eqz v6, :cond_8

    sget v6, Lcom/doctruyen/ui/UiTheme;->DARK_TEXT_SECONDARY:I

    goto :goto_5

    :cond_8
    sget v6, Lcom/doctruyen/ui/UiTheme;->LIGHT_TEXT_SECONDARY:I

    .line 553
    :goto_5
    new-instance v7, Landroid/widget/LinearLayout;

    invoke-direct {v7, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 554
    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 555
    const/high16 v9, 0x41900000    # 18.0f

    invoke-static {v0, v9}, Lcom/doctruyen/ui/UiTheme;->dp(Landroid/content/Context;F)I

    move-result v10

    const/high16 v11, 0x41800000    # 16.0f

    invoke-static {v0, v11}, Lcom/doctruyen/ui/UiTheme;->dp(Landroid/content/Context;F)I

    move-result v12

    invoke-static {v0, v9}, Lcom/doctruyen/ui/UiTheme;->dp(Landroid/content/Context;F)I

    move-result v13

    invoke-static {v0, v9}, Lcom/doctruyen/ui/UiTheme;->dp(Landroid/content/Context;F)I

    move-result v9

    invoke-virtual {v7, v10, v12, v13, v9}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 556
    invoke-static {v3, v4, v8, v11, v0}, Lcom/doctruyen/ui/UiTheme;->roundBox(IIIFLandroid/content/Context;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v3

    invoke-virtual {v7, v3}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 559
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 560
    const/4 v9, 0x0

    invoke-virtual {v3, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 561
    const/16 v10, 0x10

    invoke-virtual {v3, v10}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 563
    new-instance v10, Landroid/widget/TextView;

    invoke-direct {v10, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 564
    const-string v12, "\u26a1 TI\u1ebeP T\u1ee4C \u0110\u1eccC"

    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 565
    const/high16 v12, 0x41300000    # 11.0f

    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setTextSize(F)V

    .line 566
    sget-object v13, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v10, v13}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 567
    sget v13, Lcom/doctruyen/ui/UiTheme;->ACCENT_EMERALD:I

    invoke-virtual {v10, v13}, Landroid/widget/TextView;->setTextColor(I)V

    .line 568
    invoke-virtual {v3, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 570
    new-instance v10, Landroid/view/View;

    invoke-direct {v10, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 571
    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-direct {v13, v9, v8, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v10, v13}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 572
    invoke-virtual {v3, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 574
    new-instance v10, Landroid/widget/TextView;

    invoke-direct {v10, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 575
    iget-boolean v13, v1, Lcom/doctruyen/data/AppDatabase$HistoryItem;->isWeb:Z

    if-eqz v13, :cond_9

    const-string v13, " [WEB] "

    goto :goto_6

    :cond_9
    iget-object v13, v1, Lcom/doctruyen/data/AppDatabase$HistoryItem;->bookPath:Ljava/lang/String;

    if-eqz v13, :cond_a

    iget-object v13, v1, Lcom/doctruyen/data/AppDatabase$HistoryItem;->bookPath:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    const-string v14, ".txt"

    invoke-virtual {v13, v14}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_a

    const-string v13, " [TXT] "

    goto :goto_6

    :cond_a
    const-string v13, " [EPUB 3] "

    :goto_6
    invoke-virtual {v10, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 576
    const/high16 v13, 0x41200000    # 10.0f

    invoke-virtual {v10, v13}, Landroid/widget/TextView;->setTextSize(F)V

    .line 577
    sget-object v14, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v10, v14}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 578
    sget v14, Lcom/doctruyen/ui/UiTheme;->ACCENT_CYAN:I

    invoke-virtual {v10, v14}, Landroid/widget/TextView;->setTextColor(I)V

    .line 579
    iget-boolean v14, v0, Lcom/doctruyen/MainActivity;->isDarkMode:Z

    if-eqz v14, :cond_b

    const-string v14, "#0C2633"

    goto :goto_7

    :cond_b
    const-string v14, "#E0F2FE"

    :goto_7
    invoke-static {v14}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v14

    sget v15, Lcom/doctruyen/ui/UiTheme;->ACCENT_CYAN:I

    const/high16 v2, 0x40c00000    # 6.0f

    invoke-static {v14, v15, v8, v2, v0}, Lcom/doctruyen/ui/UiTheme;->roundBox(IIIFLandroid/content/Context;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v14

    invoke-virtual {v10, v14}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 580
    invoke-virtual {v3, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 582
    nop

    .line 583
    new-instance v10, Landroid/widget/TextView;

    invoke-direct {v10, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 584
    const-string v14, " \u2715 X\u00f3a "

    invoke-virtual {v10, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 585
    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setTextSize(F)V

    .line 586
    sget-object v12, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 587
    sget v12, Lcom/doctruyen/ui/UiTheme;->ACCENT_ROSE:I

    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setTextColor(I)V

    .line 588
    iget-boolean v12, v0, Lcom/doctruyen/MainActivity;->isDarkMode:Z

    if-eqz v12, :cond_c

    const-string v12, "#251318"

    goto :goto_8

    :cond_c
    const-string v12, "#FEE2E2"

    :goto_8
    invoke-static {v12}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v12

    sget v14, Lcom/doctruyen/ui/UiTheme;->ACCENT_ROSE:I

    invoke-static {v12, v14, v8, v2, v0}, Lcom/doctruyen/ui/UiTheme;->roundBox(IIIFLandroid/content/Context;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 589
    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {v0, v2}, Lcom/doctruyen/ui/UiTheme;->dp(Landroid/content/Context;F)I

    move-result v12

    const/high16 v14, 0x40400000    # 3.0f

    invoke-static {v0, v14}, Lcom/doctruyen/ui/UiTheme;->dp(Landroid/content/Context;F)I

    move-result v15

    const/16 v16, 0x1

    invoke-static {v0, v2}, Lcom/doctruyen/ui/UiTheme;->dp(Landroid/content/Context;F)I

    move-result v8

    invoke-static {v0, v14}, Lcom/doctruyen/ui/UiTheme;->dp(Landroid/content/Context;F)I

    move-result v14

    invoke-virtual {v10, v12, v15, v8, v14}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 590
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v12, -0x2

    invoke-direct {v8, v12, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 591
    invoke-static {v0, v2}, Lcom/doctruyen/ui/UiTheme;->dp(Landroid/content/Context;F)I

    move-result v14

    invoke-virtual {v8, v14, v9, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 592
    invoke-virtual {v10, v8}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 593
    new-instance v8, Lcom/doctruyen/MainActivity$0;

    invoke-direct {v8, v0, v1}, Lcom/doctruyen/MainActivity$0;-><init>(Lcom/doctruyen/MainActivity;Lcom/doctruyen/data/AppDatabase$HistoryItem;)V

    invoke-virtual {v10, v8}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 606
    invoke-virtual {v3, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 607
    invoke-virtual {v7, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 610
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 611
    iget-object v8, v1, Lcom/doctruyen/data/AppDatabase$HistoryItem;->bookTitle:Ljava/lang/String;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 612
    const/high16 v8, 0x41880000    # 17.0f

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setTextSize(F)V

    .line 613
    sget-object v8, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 614
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 615
    invoke-static {v0, v2}, Lcom/doctruyen/ui/UiTheme;->dp(Landroid/content/Context;F)I

    move-result v5

    const/high16 v8, 0x40800000    # 4.0f

    invoke-static {v0, v8}, Lcom/doctruyen/ui/UiTheme;->dp(Landroid/content/Context;F)I

    move-result v8

    invoke-virtual {v3, v9, v5, v9, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 616
    invoke-virtual {v7, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 619
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 620
    iget v5, v1, Lcom/doctruyen/data/AppDatabase$HistoryItem;->paragraphIndex:I

    if-lez v5, :cond_d

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " \u2022 V\u1ecb tr\u00ed: \u0110o\u1ea1n "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v8, v1, Lcom/doctruyen/data/AppDatabase$HistoryItem;->paragraphIndex:I

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_9

    :cond_d
    const-string v5, ""

    .line 621
    :goto_9
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\ud83d\udcd6 "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v10, v1, Lcom/doctruyen/data/AppDatabase$HistoryItem;->chapterTitle:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 622
    const/high16 v5, 0x41500000    # 13.0f

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 623
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 624
    const/high16 v8, 0x41600000    # 14.0f

    invoke-static {v0, v8}, Lcom/doctruyen/ui/UiTheme;->dp(Landroid/content/Context;F)I

    move-result v8

    invoke-virtual {v3, v9, v9, v9, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 625
    invoke-virtual {v7, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 628
    new-instance v3, Landroid/widget/Button;

    invoke-direct {v3, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 629
    const-string v8, "\u25b6 \u0110\u1eccC TI\u1ebeP NGAY"

    invoke-virtual {v3, v8}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 630
    invoke-virtual {v3, v5}, Landroid/widget/Button;->setTextSize(F)V

    .line 631
    sget-object v5, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 632
    sget v5, Lcom/doctruyen/ui/UiTheme;->ACCENT_EMERALD:I

    invoke-static {v5, v9, v9, v13, v0}, Lcom/doctruyen/ui/UiTheme;->roundBox(IIIFLandroid/content/Context;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 633
    const/4 v5, -0x1

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setTextColor(I)V

    .line 634
    invoke-static {v0, v11}, Lcom/doctruyen/ui/UiTheme;->dp(Landroid/content/Context;F)I

    move-result v8

    const/high16 v10, 0x41400000    # 12.0f

    invoke-static {v0, v10}, Lcom/doctruyen/ui/UiTheme;->dp(Landroid/content/Context;F)I

    move-result v13

    invoke-static {v0, v11}, Lcom/doctruyen/ui/UiTheme;->dp(Landroid/content/Context;F)I

    move-result v11

    invoke-static {v0, v10}, Lcom/doctruyen/ui/UiTheme;->dp(Landroid/content/Context;F)I

    move-result v14

    invoke-virtual {v3, v8, v13, v11, v14}, Landroid/widget/Button;->setPadding(IIII)V

    .line 635
    new-instance v8, Lcom/doctruyen/MainActivity$2;

    invoke-direct {v8, v0, v1}, Lcom/doctruyen/MainActivity$2;-><init>(Lcom/doctruyen/MainActivity;Lcom/doctruyen/data/AppDatabase$HistoryItem;)V

    invoke-virtual {v3, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 639
    invoke-virtual {v7, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 641
    iget-boolean v3, v1, Lcom/doctruyen/data/AppDatabase$HistoryItem;->isWeb:Z

    if-eqz v3, :cond_f

    .line 642
    new-instance v3, Landroid/widget/Button;

    invoke-direct {v3, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 643
    const-string v8, "\ud83c\udf10 Xem L\u1ea1i Trang Web Ngu\u1ed3n"

    invoke-virtual {v3, v8}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 644
    invoke-virtual {v3, v10}, Landroid/widget/Button;->setTextSize(F)V

    .line 645
    invoke-virtual {v3, v6}, Landroid/widget/Button;->setTextColor(I)V

    .line 646
    iget-boolean v6, v0, Lcom/doctruyen/MainActivity;->isDarkMode:Z

    if-eqz v6, :cond_e

    const-string v6, "#22283A"

    goto :goto_a

    :cond_e
    const-string v6, "#F1F5F9"

    :goto_a
    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    const/4 v8, 0x1

    invoke-static {v6, v4, v8, v2, v0}, Lcom/doctruyen/ui/UiTheme;->roundBox(IIIFLandroid/content/Context;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 647
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v5, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 648
    invoke-static {v0, v2}, Lcom/doctruyen/ui/UiTheme;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v4, v9, v2, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 649
    invoke-virtual {v3, v4}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 650
    new-instance v2, Lcom/doctruyen/MainActivity$3;

    invoke-direct {v2, v0, v1}, Lcom/doctruyen/MainActivity$3;-><init>(Lcom/doctruyen/MainActivity;Lcom/doctruyen/data/AppDatabase$HistoryItem;)V

    invoke-virtual {v3, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 655
    invoke-virtual {v7, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 658
    :cond_f
    iget-object v1, v0, Lcom/doctruyen/MainActivity;->resumeCardContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 659
    iget-object v1, v0, Lcom/doctruyen/MainActivity;->resumeCardContainer:Landroid/widget/LinearLayout;

    iget v2, v0, Lcom/doctruyen/MainActivity;->currentTab:I

    if-nez v2, :cond_10

    const/4 v2, 0x0

    goto :goto_b

    :cond_10
    const/16 v2, 0x8

    :goto_b
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 660
    return-void
.end method

.method private scanDownloadDirectory(Ljava/io/File;Ljava/util/Map;ILjava/util/Set;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/doctruyen/MainActivity$LocalBookItem;",
            ">;I",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 872
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    if-eqz p1, :cond_7

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x3

    if-le v3, v0, :cond_0

    goto/16 :goto_3

    .line 873
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    .line 874
    if-nez v5, :cond_1

    return-void

    .line 875
    :cond_1
    array-length v6, v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v6, :cond_6

    aget-object v9, v5, v8

    .line 876
    invoke-virtual {v9}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 877
    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v10, "."

    invoke-virtual {v0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 878
    add-int/lit8 v0, v3, 0x1

    invoke-direct {v1, v9, v2, v0, v4}, Lcom/doctruyen/MainActivity;->scanDownloadDirectory(Ljava/io/File;Ljava/util/Map;ILjava/util/Set;)V

    goto :goto_2

    .line 881
    :cond_2
    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    .line 882
    nop

    .line 884
    :try_start_0
    invoke-virtual {v9}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 885
    goto :goto_1

    :catch_0
    move-exception v0

    const-string v0, ""

    .line 886
    :goto_1
    if-eqz v4, :cond_3

    invoke-interface {v4, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_3

    invoke-interface {v4, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 887
    goto :goto_2

    .line 889
    :cond_3
    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 890
    const-string v11, ".epub"

    invoke-virtual {v0, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_4

    const-string v12, ".txt"

    invoke-virtual {v0, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_5

    :cond_4
    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v12

    const-wide/16 v14, 0x0

    cmp-long v16, v12, v14

    if-lez v16, :cond_5

    .line 891
    new-instance v12, Lcom/doctruyen/MainActivity$LocalBookItem;

    const/4 v13, 0x0

    invoke-direct {v12, v13}, Lcom/doctruyen/MainActivity$LocalBookItem;-><init>(Lcom/doctruyen/MainActivity$1;)V

    .line 892
    iput-object v10, v12, Lcom/doctruyen/MainActivity$LocalBookItem;->path:Ljava/lang/String;

    .line 893
    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v1, v10}, Lcom/doctruyen/MainActivity;->cleanFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v12, Lcom/doctruyen/MainActivity$LocalBookItem;->title:Ljava/lang/String;

    .line 894
    invoke-virtual {v0, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v12, Lcom/doctruyen/MainActivity$LocalBookItem;->isEpub:Z

    .line 895
    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v9

    iput-wide v9, v12, Lcom/doctruyen/MainActivity$LocalBookItem;->fileSize:J

    .line 896
    const-string v0, "Ch\u01b0a \u0111\u1ecdc"

    iput-object v0, v12, Lcom/doctruyen/MainActivity$LocalBookItem;->progressDesc:Ljava/lang/String;

    .line 897
    iput v7, v12, Lcom/doctruyen/MainActivity$LocalBookItem;->chapterIndex:I

    .line 898
    iput v7, v12, Lcom/doctruyen/MainActivity$LocalBookItem;->paragraphIndex:I

    .line 899
    iput v7, v12, Lcom/doctruyen/MainActivity$LocalBookItem;->scrollY:I

    .line 900
    iget-object v0, v12, Lcom/doctruyen/MainActivity$LocalBookItem;->path:Ljava/lang/String;

    invoke-interface {v2, v0, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 875
    :cond_5
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 904
    :cond_6
    return-void

    .line 872
    :cond_7
    :goto_3
    return-void
.end method

.method private selectTab(I)V
    .locals 13

    .line 487
    iput p1, p0, Lcom/doctruyen/MainActivity;->currentTab:I

    .line 488
    iget-object v0, p0, Lcom/doctruyen/MainActivity;->containerLibrary:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-nez p1, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    const/16 v3, 0x8

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 489
    iget-object v0, p0, Lcom/doctruyen/MainActivity;->containerWeb:Landroid/widget/LinearLayout;

    const/4 v3, 0x1

    if-ne p1, v3, :cond_1

    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    const/16 v4, 0x8

    :goto_1
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 490
    iget-object v0, p0, Lcom/doctruyen/MainActivity;->containerSources:Landroid/widget/LinearLayout;

    const/4 v4, 0x2

    if-ne p1, v4, :cond_2

    const/4 v5, 0x0

    goto :goto_2

    :cond_2
    const/16 v5, 0x8

    :goto_2
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/doctruyen/MainActivity;->containerComics:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_comic_vis_done

    const/4 v5, 0x3

    if-ne p1, v5, :cond_comic_vis_hide

    const/4 v5, 0x0

    goto :goto_comic_vis

    :cond_comic_vis_hide
    const/16 v5, 0x8

    :goto_comic_vis
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_comic_vis_done
    .line 493
    iget-object v0, p0, Lcom/doctruyen/MainActivity;->resumeCardContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_5

    .line 494
    iget-object v0, p0, Lcom/doctruyen/MainActivity;->resumeCardContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_3

    const/4 v0, 0x1

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    .line 495
    :goto_3
    iget-object v5, p0, Lcom/doctruyen/MainActivity;->resumeCardContainer:Landroid/widget/LinearLayout;

    if-nez p1, :cond_4

    if-eqz v0, :cond_4

    const/4 v1, 0x0

    :cond_4
    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 498
    :cond_5
    nop

    .line 499
    sget v9, Lcom/doctruyen/ui/UiTheme;->ACCENT_BLUE:I

    .line 500
    nop

    .line 501
    iget-boolean v0, p0, Lcom/doctruyen/MainActivity;->isDarkMode:Z

    if-eqz v0, :cond_6

    sget v0, Lcom/doctruyen/ui/UiTheme;->DARK_TEXT_SECONDARY:I

    goto :goto_4

    :cond_6
    sget v0, Lcom/doctruyen/ui/UiTheme;->LIGHT_TEXT_SECONDARY:I

    :goto_4
    move v11, v0

    .line 503
    iget-object v7, p0, Lcom/doctruyen/MainActivity;->tabLibrary:Landroid/widget/TextView;

    if-nez p1, :cond_7

    const/4 v8, 0x1

    goto :goto_5

    :cond_7
    const/4 v8, 0x0

    :goto_5
    const/4 v10, -0x1

    move-object v12, p0

    move-object v6, p0

    invoke-direct/range {v6 .. v12}, Lcom/doctruyen/MainActivity;->updateTabStyle(Landroid/widget/TextView;ZIIILandroid/content/Context;)V

    .line 504
    iget-object v7, p0, Lcom/doctruyen/MainActivity;->tabWeb:Landroid/widget/TextView;

    if-ne p1, v3, :cond_8

    const/4 v8, 0x1

    goto :goto_6

    :cond_8
    const/4 v8, 0x0

    :goto_6
    move-object v12, p0

    move-object v6, p0

    invoke-direct/range {v6 .. v12}, Lcom/doctruyen/MainActivity;->updateTabStyle(Landroid/widget/TextView;ZIIILandroid/content/Context;)V

    .line 505
    iget-object v7, p0, Lcom/doctruyen/MainActivity;->tabSources:Landroid/widget/TextView;

    if-ne p1, v4, :cond_9

    const/4 v8, 0x1

    goto :goto_7

    :cond_9
    const/4 v8, 0x0

    :goto_7
    move-object v12, p0

    move-object v6, p0

    invoke-direct/range {v6 .. v12}, Lcom/doctruyen/MainActivity;->updateTabStyle(Landroid/widget/TextView;ZIIILandroid/content/Context;)V

    iget-object v7, p0, Lcom/doctruyen/MainActivity;->tabComics:Landroid/widget/TextView;

    if-eqz v7, :cond_tab_comic_done

    const/4 v0, 0x3

    if-ne p1, v0, :cond_tab_comic_unselected

    const/4 v8, 0x1

    goto :goto_tab_comic

    :cond_tab_comic_unselected
    const/4 v8, 0x0

    :goto_tab_comic
    move-object v12, p0

    move-object v6, p0

    invoke-direct/range {v6 .. v12}, Lcom/doctruyen/MainActivity;->updateTabStyle(Landroid/widget/TextView;ZIIILandroid/content/Context;)V

    :cond_tab_comic_done
    .line 506
    return-void
.end method

.method private unhideBookPath(Ljava/lang/String;)V
    .locals 4

    .line 57
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 58
    :cond_0
    const-string v0, "app_theme_prefs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/doctruyen/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 59
    new-instance v1, Ljava/util/HashSet;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    const-string v3, "pref_hidden_books"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 60
    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 62
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 63
    :catch_0
    move-exception p1

    :goto_0
    nop

    .line 64
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, v3, v1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 65
    return-void

    .line 57
    :cond_1
    :goto_1
    return-void
.end method

.method private updateTabStyle(Landroid/widget/TextView;ZIIILandroid/content/Context;)V
    .locals 0

    .line 509
    if-eqz p2, :cond_0

    .line 510
    sget-object p2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 511
    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 512
    const/high16 p2, 0x41200000    # 10.0f

    const/4 p4, 0x0

    invoke-static {p3, p4, p4, p2, p6}, Lcom/doctruyen/ui/UiTheme;->roundBox(IIIFLandroid/content/Context;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 514
    :cond_0
    sget-object p2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 515
    invoke-virtual {p1, p5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 516
    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 518
    :goto_0
    return-void
.end method


# virtual methods
.method synthetic lambda$confirmClearAllHistory$21$com-doctruyen-MainActivity(Ljava/util/List;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1108
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/doctruyen/data/AppDatabase$HistoryItem;

    .line 1109
    iget-object p2, p2, Lcom/doctruyen/data/AppDatabase$HistoryItem;->bookPath:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/doctruyen/MainActivity;->addHiddenBookPath(Ljava/lang/String;)V

    .line 1110
    goto :goto_0

    .line 1111
    :cond_0
    invoke-static {p0}, Lcom/doctruyen/data/AppDatabase;->getInstance(Landroid/content/Context;)Lcom/doctruyen/data/AppDatabase;

    move-result-object p1

    invoke-virtual {p1}, Lcom/doctruyen/data/AppDatabase;->clearAllHistory()V

    .line 1112
    invoke-direct {p0}, Lcom/doctruyen/MainActivity;->refreshAllContent()V

    .line 1113
    const-string p1, "\u0110\u00e3 x\u00f3a to\u00e0n b\u1ed9 l\u1ecbch s\u1eed \u0111\u1ecdc"

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 1114
    return-void
.end method

.method synthetic lambda$confirmDeleteBook$19$com-doctruyen-MainActivity(Ljava/io/File;Lcom/doctruyen/MainActivity$LocalBookItem;Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1064
    const/4 p3, 0x0

    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result p1

    .line 1065
    iget-object p4, p2, Lcom/doctruyen/MainActivity$LocalBookItem;->path:Ljava/lang/String;

    invoke-direct {p0, p4}, Lcom/doctruyen/MainActivity;->addHiddenBookPath(Ljava/lang/String;)V

    .line 1066
    invoke-static {p0}, Lcom/doctruyen/data/AppDatabase;->getInstance(Landroid/content/Context;)Lcom/doctruyen/data/AppDatabase;

    move-result-object p4

    iget-object v0, p2, Lcom/doctruyen/MainActivity$LocalBookItem;->path:Ljava/lang/String;

    invoke-virtual {p4, v0}, Lcom/doctruyen/data/AppDatabase;->deleteHistory(Ljava/lang/String;)V

    .line 1067
    invoke-direct {p0}, Lcom/doctruyen/MainActivity;->refreshAllContent()V

    .line 1068
    if-eqz p1, :cond_0

    .line 1069
    const-string p1, "\u0110\u00e3 x\u00f3a t\u1ec7p v\u00e0 g\u1ee1 kh\u1ecfi danh s\u00e1ch"

    invoke-static {p0, p1, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1071
    :cond_0
    const-string p1, "\u0110\u00e3 x\u00f3a kh\u1ecfi danh s\u00e1ch (t\u1ec7p \u0111\u01b0\u1ee3c h\u1ec7 th\u1ed1ng b\u1ea3o v\u1ec7)"

    invoke-static {p0, p1, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1078
    :goto_0
    goto :goto_1

    .line 1073
    :catch_0
    move-exception p1

    .line 1074
    iget-object p1, p2, Lcom/doctruyen/MainActivity$LocalBookItem;->path:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/doctruyen/MainActivity;->addHiddenBookPath(Ljava/lang/String;)V

    .line 1075
    invoke-static {p0}, Lcom/doctruyen/data/AppDatabase;->getInstance(Landroid/content/Context;)Lcom/doctruyen/data/AppDatabase;

    move-result-object p1

    iget-object p2, p2, Lcom/doctruyen/MainActivity$LocalBookItem;->path:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/doctruyen/data/AppDatabase;->deleteHistory(Ljava/lang/String;)V

    .line 1076
    invoke-direct {p0}, Lcom/doctruyen/MainActivity;->refreshAllContent()V

    .line 1077
    const-string p1, "\u0110\u00e3 x\u00f3a kh\u1ecfi danh s\u00e1ch"

    invoke-static {p0, p1, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 1079
    :goto_1
    return-void
.end method

.method synthetic lambda$confirmDeleteBook$20$com-doctruyen-MainActivity(Lcom/doctruyen/MainActivity$LocalBookItem;ZLjava/io/File;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1053
    if-nez p5, :cond_0

    .line 1054
    iget-object p2, p1, Lcom/doctruyen/MainActivity$LocalBookItem;->path:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/doctruyen/MainActivity;->addHiddenBookPath(Ljava/lang/String;)V

    .line 1055
    invoke-static {p0}, Lcom/doctruyen/data/AppDatabase;->getInstance(Landroid/content/Context;)Lcom/doctruyen/data/AppDatabase;

    move-result-object p2

    iget-object p1, p1, Lcom/doctruyen/MainActivity$LocalBookItem;->path:Ljava/lang/String;

    invoke-virtual {p2, p1}, Lcom/doctruyen/data/AppDatabase;->deleteHistory(Ljava/lang/String;)V

    .line 1056
    invoke-direct {p0}, Lcom/doctruyen/MainActivity;->refreshAllContent()V

    .line 1057
    const-string p1, "\u0110\u00e3 x\u00f3a truy\u1ec7n kh\u1ecfi danh s\u00e1ch t\u1ee7 s\u00e1ch"

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1058
    :cond_0
    const/4 p4, 0x1

    if-ne p5, p4, :cond_1

    if-eqz p2, :cond_1

    .line 1059
    new-instance p2, Landroid/app/AlertDialog$Builder;

    invoke-direct {p2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1060
    const-string p4, "X\u00e1c Nh\u1eadn X\u00f3a T\u1ec7p V\u0129nh Vi\u1ec5n"

    invoke-virtual {p2, p4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "B\u1ea1n c\u00f3 ch\u1eafc ch\u1eafn mu\u1ed1n x\u00f3a v\u0129nh vi\u1ec5n t\u1ec7p \""

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    .line 1061
    invoke-virtual {p3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    const-string p5, "\" kh\u1ecfi b\u1ed9 nh\u1edb m\u00e1y kh\u00f4ng?"

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    new-instance p4, Lcom/doctruyen/MainActivity$21;

    invoke-direct {p4, p0, p3, p1}, Lcom/doctruyen/MainActivity$21;-><init>(Lcom/doctruyen/MainActivity;Ljava/io/File;Lcom/doctruyen/MainActivity$LocalBookItem;)V

    .line 1062
    const-string p1, "X\u00f3a V\u0129nh Vi\u1ec5n"

    invoke-virtual {p2, p1, p4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 1080
    const-string p2, "H\u1ee7y"

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 1081
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1083
    :cond_1
    :goto_0
    return-void
.end method

.method synthetic lambda$createTabButton$9$com-doctruyen-MainActivity(ILandroid/view/View;)V
    .locals 0

    .line 482
    invoke-direct {p0, p1}, Lcom/doctruyen/MainActivity;->selectTab(I)V

    return-void
.end method

.method synthetic lambda$initViews$0$com-doctruyen-MainActivity(Landroid/view/View;)V
    .locals 2

    .line 180
    iget-boolean p1, p0, Lcom/doctruyen/MainActivity;->isDarkMode:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/doctruyen/MainActivity;->isDarkMode:Z

    .line 181
    const-string p1, "app_theme_prefs"

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/doctruyen/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "key_dark_mode"

    iget-boolean v1, p0, Lcom/doctruyen/MainActivity;->isDarkMode:Z

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 182
    invoke-virtual {p0}, Lcom/doctruyen/MainActivity;->recreate()V

    .line 183
    return-void
.end method

.method synthetic lambda$initViews$1$com-doctruyen-MainActivity(Landroid/view/View;)V
    .locals 0

    .line 234
    invoke-direct {p0}, Lcom/doctruyen/MainActivity;->pickEpubFile()V

    return-void
.end method

.method synthetic lambda$initViews$2$com-doctruyen-MainActivity(Landroid/view/View;)V
    .locals 2

    .line 245
    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/doctruyen/MainActivity;->checkStoragePermission(Z)V

    .line 246
    invoke-direct {p0}, Lcom/doctruyen/MainActivity;->refreshLocalBookshelf()I

    move-result p1

    .line 247
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u0110\u00e3 qu\u00e9t th\u01b0 m\u1ee5c Download: T\u00ecm th\u1ea5y "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " t\u1ec7p"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 248
    return-void
.end method

.method synthetic lambda$initViews$3$com-doctruyen-MainActivity(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 259
    invoke-direct {p0}, Lcom/doctruyen/MainActivity;->clearHiddenBooks()V

    .line 260
    invoke-direct {p0}, Lcom/doctruyen/MainActivity;->refreshAllContent()V

    .line 261
    const-string p1, "\u0110\u00e3 kh\u00f4i ph\u1ee5c to\u00e0n b\u1ed9 truy\u1ec7n v\u00e0o danh s\u00e1ch"

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 262
    return-void
.end method

.method synthetic lambda$initViews$4$com-doctruyen-MainActivity(Landroid/view/View;)Z
    .locals 4

    .line 250
    invoke-direct {p0}, Lcom/doctruyen/MainActivity;->getHiddenBookPaths()Ljava/util/Set;

    move-result-object p1

    .line 251
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 252
    const-string p1, "Kh\u00f4ng c\u00f3 truy\u1ec7n n\u00e0o \u0111ang b\u1ecb \u1ea9n kh\u1ecfi danh s\u00e1ch"

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 253
    return v1

    .line 255
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 256
    const-string v2, "Kh\u00f4i Ph\u1ee5c Danh S\u00e1ch T\u1ee7 S\u00e1ch"

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Hi\u1ec7n c\u00f3 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 257
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, " truy\u1ec7n \u0111ang b\u1ecb \u1ea9n kh\u1ecfi danh s\u00e1ch. B\u1ea1n c\u00f3 mu\u1ed1n hi\u1ec7n l\u1ea1i to\u00e0n b\u1ed9 kh\u00f4ng?"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/doctruyen/MainActivity$7;

    invoke-direct {v0, p0}, Lcom/doctruyen/MainActivity$7;-><init>(Lcom/doctruyen/MainActivity;)V

    .line 258
    const-string v2, "Kh\u00f4i Ph\u1ee5c T\u1ea5t C\u1ea3"

    invoke-virtual {p1, v2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 263
    const-string v0, "H\u1ee7y"

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 264
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 265
    return v1
.end method

.method synthetic lambda$initViews$5$com-doctruyen-MainActivity(Landroid/view/View;)V
    .locals 0

    .line 304
    invoke-direct {p0}, Lcom/doctruyen/MainActivity;->confirmClearAllHistory()V

    return-void
.end method

.method synthetic lambda$initViews$6$com-doctruyen-MainActivity(Landroid/view/View;)V
    .locals 1

    .line 348
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/doctruyen/reader/web/WebBrowseActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 349
    invoke-virtual {p0, p1}, Lcom/doctruyen/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 350
    return-void
.end method

.method synthetic lambda$initViews$7$com-doctruyen-MainActivity(Landroid/view/View;)V
    .locals 3

    .line 387
    iget-object p1, p0, Lcom/doctruyen/MainActivity;->etWebUrl:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 388
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const-string v0, "http://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "https://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 389
    :cond_0
    const-string v0, "Truy\u1ec7n Web"

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v2, v1}, Lcom/doctruyen/MainActivity;->openReader(Ljava/lang/String;Ljava/lang/String;ZI)V

    goto :goto_0

    .line 391
    :cond_1
    const-string p1, "Vui l\u00f2ng nh\u1eadp link web h\u1ee3p l\u1ec7"

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 393
    :goto_0
    return-void
.end method

.method synthetic lambda$initViews$8$com-doctruyen-MainActivity(Lcom/doctruyen/extension/ExtensionEngine$SourceItem;Landroid/view/View;)V
    .locals 1

    .line 459
    new-instance p2, Landroid/content/Intent;

    const-class v0, Lcom/doctruyen/reader/web/WebBrowseActivity;

    invoke-direct {p2, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 460
    const-string v0, "extra_initial_url"

    iget-object p1, p1, Lcom/doctruyen/extension/ExtensionEngine$SourceItem;->url:Ljava/lang/String;

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 461
    invoke-virtual {p0, p2}, Lcom/doctruyen/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 462
    return-void
.end method

.method synthetic lambda$refreshHistoryList$16$com-doctruyen-MainActivity(Lcom/doctruyen/data/AppDatabase$HistoryItem;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1016
    iget-object p2, p1, Lcom/doctruyen/data/AppDatabase$HistoryItem;->bookPath:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/doctruyen/MainActivity;->addHiddenBookPath(Ljava/lang/String;)V

    .line 1017
    invoke-static {p0}, Lcom/doctruyen/data/AppDatabase;->getInstance(Landroid/content/Context;)Lcom/doctruyen/data/AppDatabase;

    move-result-object p2

    iget-object p3, p1, Lcom/doctruyen/data/AppDatabase$HistoryItem;->bookPath:Ljava/lang/String;

    iget-boolean p1, p1, Lcom/doctruyen/data/AppDatabase$HistoryItem;->isWeb:Z

    invoke-virtual {p2, p3, p1}, Lcom/doctruyen/data/AppDatabase;->deleteHistory(Ljava/lang/String;Z)V

    .line 1018
    invoke-direct {p0}, Lcom/doctruyen/MainActivity;->refreshAllContent()V

    .line 1019
    const-string p1, "\u0110\u00e3 x\u00f3a truy\u1ec7n kh\u1ecfi danh s\u00e1ch"

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 1020
    return-void
.end method

.method synthetic lambda$refreshHistoryList$17$com-doctruyen-MainActivity(Lcom/doctruyen/data/AppDatabase$HistoryItem;Landroid/view/View;)V
    .locals 2

    .line 1012
    new-instance p2, Landroid/app/AlertDialog$Builder;

    invoke-direct {p2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1013
    const-string v0, "X\u00f3a Kh\u1ecfi Danh S\u00e1ch \u0110\u1ecdc"

    invoke-virtual {p2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "B\u1ea1n c\u00f3 ch\u1eafc ch\u1eafn mu\u1ed1n x\u00f3a truy\u1ec7n \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/doctruyen/data/AppDatabase$HistoryItem;->bookTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" kh\u1ecfi danh s\u00e1ch v\u00e0 l\u1ecbch s\u1eed \u0111\u1ecdc?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1014
    invoke-virtual {p2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    new-instance v0, Lcom/doctruyen/MainActivity$18;

    invoke-direct {v0, p0, p1}, Lcom/doctruyen/MainActivity$18;-><init>(Lcom/doctruyen/MainActivity;Lcom/doctruyen/data/AppDatabase$HistoryItem;)V

    .line 1015
    const-string p1, "X\u00f3a Kh\u1ecfi Danh S\u00e1ch"

    invoke-virtual {p2, p1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 1021
    const-string p2, "H\u1ee7y"

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 1022
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1023
    return-void
.end method

.method synthetic lambda$refreshHistoryList$18$com-doctruyen-MainActivity(Lcom/doctruyen/data/AppDatabase$HistoryItem;Landroid/view/View;)V
    .locals 7

    .line 1027
    iget-boolean p2, p1, Lcom/doctruyen/data/AppDatabase$HistoryItem;->isWeb:Z

    if-eqz p2, :cond_0

    iget-object p2, p1, Lcom/doctruyen/data/AppDatabase$HistoryItem;->chapterHref:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object p2, p1, Lcom/doctruyen/data/AppDatabase$HistoryItem;->bookPath:Ljava/lang/String;

    :goto_0
    move-object v1, p2

    .line 1028
    iget-object v2, p1, Lcom/doctruyen/data/AppDatabase$HistoryItem;->bookTitle:Ljava/lang/String;

    iget-boolean v3, p1, Lcom/doctruyen/data/AppDatabase$HistoryItem;->isWeb:Z

    iget v4, p1, Lcom/doctruyen/data/AppDatabase$HistoryItem;->chapterIndex:I

    iget v5, p1, Lcom/doctruyen/data/AppDatabase$HistoryItem;->paragraphIndex:I

    iget v6, p1, Lcom/doctruyen/data/AppDatabase$HistoryItem;->scrollY:I

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/doctruyen/MainActivity;->openReader(Ljava/lang/String;Ljava/lang/String;ZIII)V

    .line 1029
    return-void
.end method

.method synthetic lambda$refreshLocalBookshelf$14$com-doctruyen-MainActivity(Lcom/doctruyen/MainActivity$LocalBookItem;Landroid/view/View;)V
    .locals 7

    .line 849
    iget-object v1, p1, Lcom/doctruyen/MainActivity$LocalBookItem;->path:Ljava/lang/String;

    iget-object v2, p1, Lcom/doctruyen/MainActivity$LocalBookItem;->title:Ljava/lang/String;

    iget v4, p1, Lcom/doctruyen/MainActivity$LocalBookItem;->chapterIndex:I

    iget v5, p1, Lcom/doctruyen/MainActivity$LocalBookItem;->paragraphIndex:I

    iget v6, p1, Lcom/doctruyen/MainActivity$LocalBookItem;->scrollY:I

    const/4 v3, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/doctruyen/MainActivity;->openReader(Ljava/lang/String;Ljava/lang/String;ZIII)V

    return-void
.end method

.method synthetic lambda$refreshLocalBookshelf$15$com-doctruyen-MainActivity(Lcom/doctruyen/MainActivity$LocalBookItem;Landroid/view/View;)V
    .locals 0

    .line 861
    invoke-direct {p0, p1}, Lcom/doctruyen/MainActivity;->confirmDeleteBook(Lcom/doctruyen/MainActivity$LocalBookItem;)V

    return-void
.end method

.method synthetic lambda$refreshResumeCard$10$com-doctruyen-MainActivity(Lcom/doctruyen/data/AppDatabase$HistoryItem;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 598
    iget-object p2, p1, Lcom/doctruyen/data/AppDatabase$HistoryItem;->bookPath:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/doctruyen/MainActivity;->addHiddenBookPath(Ljava/lang/String;)V

    .line 599
    invoke-static {p0}, Lcom/doctruyen/data/AppDatabase;->getInstance(Landroid/content/Context;)Lcom/doctruyen/data/AppDatabase;

    move-result-object p2

    iget-object p3, p1, Lcom/doctruyen/data/AppDatabase$HistoryItem;->bookPath:Ljava/lang/String;

    iget-boolean p1, p1, Lcom/doctruyen/data/AppDatabase$HistoryItem;->isWeb:Z

    invoke-virtual {p2, p3, p1}, Lcom/doctruyen/data/AppDatabase;->deleteHistory(Ljava/lang/String;Z)V

    .line 600
    invoke-direct {p0}, Lcom/doctruyen/MainActivity;->refreshAllContent()V

    .line 601
    const-string p1, "\u0110\u00e3 x\u00f3a truy\u1ec7n kh\u1ecfi danh s\u00e1ch"

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 602
    return-void
.end method

.method synthetic lambda$refreshResumeCard$11$com-doctruyen-MainActivity(Lcom/doctruyen/data/AppDatabase$HistoryItem;Landroid/view/View;)V
    .locals 2

    .line 594
    new-instance p2, Landroid/app/AlertDialog$Builder;

    invoke-direct {p2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 595
    const-string v0, "X\u00f3a Kh\u1ecfi Ti\u1ebfp T\u1ee5c \u0110\u1ecdc"

    invoke-virtual {p2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "B\u1ea1n c\u00f3 ch\u1eafc ch\u1eafn mu\u1ed1n x\u00f3a truy\u1ec7n \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/doctruyen/data/AppDatabase$HistoryItem;->bookTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" kh\u1ecfi m\u1ee5c Ti\u1ebfp t\u1ee5c \u0111\u1ecdc v\u00e0 danh s\u00e1ch?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 596
    invoke-virtual {p2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    new-instance v0, Lcom/doctruyen/MainActivity$6;

    invoke-direct {v0, p0, p1}, Lcom/doctruyen/MainActivity$6;-><init>(Lcom/doctruyen/MainActivity;Lcom/doctruyen/data/AppDatabase$HistoryItem;)V

    .line 597
    const-string p1, "X\u00f3a Kh\u1ecfi Danh S\u00e1ch"

    invoke-virtual {p2, p1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 603
    const-string p2, "H\u1ee7y"

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 604
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 605
    return-void
.end method

.method synthetic lambda$refreshResumeCard$12$com-doctruyen-MainActivity(Lcom/doctruyen/data/AppDatabase$HistoryItem;Landroid/view/View;)V
    .locals 7

    .line 636
    iget-boolean p2, p1, Lcom/doctruyen/data/AppDatabase$HistoryItem;->isWeb:Z

    if-eqz p2, :cond_0

    iget-object p2, p1, Lcom/doctruyen/data/AppDatabase$HistoryItem;->chapterHref:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object p2, p1, Lcom/doctruyen/data/AppDatabase$HistoryItem;->bookPath:Ljava/lang/String;

    :goto_0
    move-object v1, p2

    .line 637
    iget-object v2, p1, Lcom/doctruyen/data/AppDatabase$HistoryItem;->bookTitle:Ljava/lang/String;

    iget-boolean v3, p1, Lcom/doctruyen/data/AppDatabase$HistoryItem;->isWeb:Z

    iget v4, p1, Lcom/doctruyen/data/AppDatabase$HistoryItem;->chapterIndex:I

    iget v5, p1, Lcom/doctruyen/data/AppDatabase$HistoryItem;->paragraphIndex:I

    iget v6, p1, Lcom/doctruyen/data/AppDatabase$HistoryItem;->scrollY:I

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/doctruyen/MainActivity;->openReader(Ljava/lang/String;Ljava/lang/String;ZIII)V

    .line 638
    return-void
.end method

.method synthetic lambda$refreshResumeCard$13$com-doctruyen-MainActivity(Lcom/doctruyen/data/AppDatabase$HistoryItem;Landroid/view/View;)V
    .locals 1

    .line 651
    new-instance p2, Landroid/content/Intent;

    const-class v0, Lcom/doctruyen/reader/web/WebBrowseActivity;

    invoke-direct {p2, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 652
    const-string v0, "extra_initial_url"

    iget-object p1, p1, Lcom/doctruyen/data/AppDatabase$HistoryItem;->chapterHref:Ljava/lang/String;

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 653
    invoke-virtual {p0, p2}, Lcom/doctruyen/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 654
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 1145
    const/16 v0, 0x65

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    if-eqz p3, :cond_0

    .line 1146
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 1147
    if-eqz v0, :cond_0

    .line 1148
    invoke-direct {p0, v0}, Lcom/doctruyen/MainActivity;->copyUriAndOpen(Landroid/net/Uri;)V

    .line 1151
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 1152
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 93
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 94
    const-string p1, "app_theme_prefs"

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/doctruyen/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 96
    const-string v1, "key_dark_mode"

    const/4 v2, 0x1

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/doctruyen/MainActivity;->isDarkMode:Z

    .line 98
    invoke-direct {p0}, Lcom/doctruyen/MainActivity;->initViews()V

    .line 99
    invoke-direct {p0, v0}, Lcom/doctruyen/MainActivity;->selectTab(I)V

    .line 100
    invoke-direct {p0, v0}, Lcom/doctruyen/MainActivity;->checkStoragePermission(Z)V

    .line 101
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    .line 933
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 934
    const/16 p2, 0xca

    if-ne p1, p2, :cond_0

    array-length p1, p3

    if-lez p1, :cond_0

    const/4 p1, 0x0

    aget p1, p3, p1

    if-nez p1, :cond_0

    .line 935
    invoke-direct {p0}, Lcom/doctruyen/MainActivity;->refreshLocalBookshelf()I

    .line 937
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 105
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 106
    invoke-direct {p0}, Lcom/doctruyen/MainActivity;->refreshAllContent()V

    .line 107
    return-void
.end method
