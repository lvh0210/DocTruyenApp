.class public Lcom/doctruyen/data/AppDatabase;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "AppDatabase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/doctruyen/data/AppDatabase$HistoryItem;
    }
.end annotation


# static fields
.field public static final COL_CHAP_HREF:Ljava/lang/String; = "chapter_href"

.field public static final COL_CHAP_INDEX:Ljava/lang/String; = "chapter_index"

.field public static final COL_CHAP_TITLE:Ljava/lang/String; = "chapter_title"

.field public static final COL_ID:Ljava/lang/String; = "id"

.field public static final COL_IS_WEB:Ljava/lang/String; = "is_web"

.field public static final COL_PARA_INDEX:Ljava/lang/String; = "paragraph_index"

.field public static final COL_PATH:Ljava/lang/String; = "book_path"

.field public static final COL_SCROLL_Y:Ljava/lang/String; = "scroll_y"

.field public static final COL_TITLE:Ljava/lang/String; = "book_title"

.field public static final COL_UPDATED_AT:Ljava/lang/String; = "updated_at"

.field private static final DATABASE_NAME:Ljava/lang/String; = "doctruyen.db"

.field private static final DATABASE_VERSION:I = 0x2

.field public static final TABLE_HISTORY:Ljava/lang/String; = "history"

.field private static instance:Lcom/doctruyen/data/AppDatabase;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 51
    const/4 v0, 0x0

    const/4 v1, 0x2

    const-string v2, "doctruyen.db"

    invoke-direct {p0, p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 52
    return-void
.end method

.method private cursorToItem(Landroid/database/Cursor;)Lcom/doctruyen/data/AppDatabase$HistoryItem;
    .locals 5

    .line 181
    new-instance v0, Lcom/doctruyen/data/AppDatabase$HistoryItem;

    invoke-direct {v0}, Lcom/doctruyen/data/AppDatabase$HistoryItem;-><init>()V

    .line 182
    const-string v1, "book_path"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/doctruyen/data/AppDatabase$HistoryItem;->bookPath:Ljava/lang/String;

    .line 183
    const-string v1, "book_title"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/doctruyen/data/AppDatabase$HistoryItem;->bookTitle:Ljava/lang/String;

    .line 184
    const-string v1, "chapter_index"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/doctruyen/data/AppDatabase$HistoryItem;->chapterIndex:I

    .line 185
    const-string v1, "chapter_title"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/doctruyen/data/AppDatabase$HistoryItem;->chapterTitle:Ljava/lang/String;

    .line 186
    const-string v1, "chapter_href"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/doctruyen/data/AppDatabase$HistoryItem;->chapterHref:Ljava/lang/String;

    .line 187
    const-string v1, "is_web"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iput-boolean v3, v0, Lcom/doctruyen/data/AppDatabase$HistoryItem;->isWeb:Z

    .line 188
    const-string v1, "updated_at"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, v0, Lcom/doctruyen/data/AppDatabase$HistoryItem;->updatedAt:J

    .line 190
    iput v2, v0, Lcom/doctruyen/data/AppDatabase$HistoryItem;->paragraphIndex:I

    .line 191
    const-string v1, "paragraph_index"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 192
    const/4 v3, -0x1

    if-eq v1, v3, :cond_1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/doctruyen/data/AppDatabase$HistoryItem;->paragraphIndex:I

    .line 194
    :cond_1
    iput v2, v0, Lcom/doctruyen/data/AppDatabase$HistoryItem;->scrollY:I

    .line 195
    const-string v1, "scroll_y"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 196
    if-eq v1, v3, :cond_2

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    iput p1, v0, Lcom/doctruyen/data/AppDatabase$HistoryItem;->scrollY:I

    .line 198
    :cond_2
    return-object v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/doctruyen/data/AppDatabase;
    .locals 2

    const-class v0, Lcom/doctruyen/data/AppDatabase;

    monitor-enter v0

    .line 44
    :try_start_0
    sget-object v1, Lcom/doctruyen/data/AppDatabase;->instance:Lcom/doctruyen/data/AppDatabase;

    if-nez v1, :cond_0

    .line 45
    new-instance v1, Lcom/doctruyen/data/AppDatabase;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/doctruyen/data/AppDatabase;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/doctruyen/data/AppDatabase;->instance:Lcom/doctruyen/data/AppDatabase;

    .line 47
    :cond_0
    sget-object p0, Lcom/doctruyen/data/AppDatabase;->instance:Lcom/doctruyen/data/AppDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    .line 43
    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static normalizeStoryKey(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1

    .line 84
    if-eqz p1, :cond_2

    if-nez p0, :cond_0

    goto :goto_0

    .line 87
    :cond_0
    const-string p1, "/(chuong|chap|chapter)-[0-9a-zA-Z_-]+/?.*$"

    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 88
    const-string p1, "/"

    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 89
    :cond_1
    return-object p0

    .line 84
    :cond_2
    :goto_0
    return-object p0
.end method


# virtual methods
.method public clearAllHistory()V
    .locals 3

    .line 176
    invoke-virtual {p0}, Lcom/doctruyen/data/AppDatabase;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 177
    const-string v1, "history"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 178
    return-void
.end method

.method public deleteHistory(Ljava/lang/String;)V
    .locals 1

    .line 172
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/doctruyen/data/AppDatabase;->deleteHistory(Ljava/lang/String;Z)V

    .line 173
    return-void
.end method

.method public deleteHistory(Ljava/lang/String;Z)V
    .locals 2

    .line 165
    if-nez p1, :cond_0

    return-void

    .line 166
    :cond_0
    invoke-static {p1, p2}, Lcom/doctruyen/data/AppDatabase;->normalizeStoryKey(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p2

    .line 167
    invoke-virtual {p0}, Lcom/doctruyen/data/AppDatabase;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 168
    const-string v1, "book_path=? OR book_path=?"

    filled-new-array {p2, p1}, [Ljava/lang/String;

    move-result-object p1

    const-string p2, "history"

    invoke-virtual {v0, p2, v1, p1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 169
    return-void
.end method

.method public getLatestBook()Lcom/doctruyen/data/AppDatabase$HistoryItem;
    .locals 9

    .line 114
    invoke-virtual {p0}, Lcom/doctruyen/data/AppDatabase;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 115
    const-string v7, "updated_at DESC"

    const-string v8, "1"

    const-string v1, "history"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 116
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 117
    invoke-direct {p0, v0}, Lcom/doctruyen/data/AppDatabase;->cursorToItem(Landroid/database/Cursor;)Lcom/doctruyen/data/AppDatabase$HistoryItem;

    move-result-object v1

    .line 118
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 119
    return-object v1

    .line 121
    :cond_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 122
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLocalBooks()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/doctruyen/data/AppDatabase$HistoryItem;",
            ">;"
        }
    .end annotation

    .line 152
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 153
    invoke-virtual {p0}, Lcom/doctruyen/data/AppDatabase;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 154
    const/4 v7, 0x0

    const-string v8, "updated_at DESC"

    const-string v2, "history"

    const/4 v3, 0x0

    const-string v4, "is_web = 0"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 155
    if-eqz v1, :cond_1

    .line 156
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 157
    invoke-direct {p0, v1}, Lcom/doctruyen/data/AppDatabase;->cursorToItem(Landroid/database/Cursor;)Lcom/doctruyen/data/AppDatabase$HistoryItem;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 159
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 161
    :cond_1
    return-object v0
.end method

.method public getProgress(Ljava/lang/String;Z)Lcom/doctruyen/data/AppDatabase$HistoryItem;
    .locals 8

    .line 126
    invoke-static {p1, p2}, Lcom/doctruyen/data/AppDatabase;->normalizeStoryKey(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    .line 127
    invoke-virtual {p0}, Lcom/doctruyen/data/AppDatabase;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 128
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v1, "history"

    const/4 v2, 0x0

    const-string v3, "book_path=?"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 129
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 130
    invoke-direct {p0, p1}, Lcom/doctruyen/data/AppDatabase;->cursorToItem(Landroid/database/Cursor;)Lcom/doctruyen/data/AppDatabase$HistoryItem;

    move-result-object p2

    .line 131
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 132
    return-object p2

    .line 134
    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 135
    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getRecentBooks()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/doctruyen/data/AppDatabase$HistoryItem;",
            ">;"
        }
    .end annotation

    .line 139
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 140
    invoke-virtual {p0}, Lcom/doctruyen/data/AppDatabase;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 141
    const-string v8, "updated_at DESC"

    const-string v9, "50"

    const-string v2, "history"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 142
    if-eqz v1, :cond_1

    .line 143
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 144
    invoke-direct {p0, v1}, Lcom/doctruyen/data/AppDatabase;->cursorToItem(Landroid/database/Cursor;)Lcom/doctruyen/data/AppDatabase$HistoryItem;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 146
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 148
    :cond_1
    return-object v0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .line 56
    nop

    .line 68
    const-string v0, "CREATE TABLE history (id INTEGER PRIMARY KEY AUTOINCREMENT, book_path TEXT UNIQUE, book_title TEXT, chapter_index INTEGER, chapter_title TEXT, chapter_href TEXT, is_web INTEGER, paragraph_index INTEGER DEFAULT 0, scroll_y INTEGER DEFAULT 0, updated_at INTEGER)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 69
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    .line 73
    const/4 p3, 0x2

    if-ge p2, p3, :cond_0

    .line 75
    :try_start_0
    const-string p2, "ALTER TABLE history ADD COLUMN paragraph_index INTEGER DEFAULT 0"

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 76
    :catch_0
    move-exception p2

    :goto_0
    nop

    .line 78
    :try_start_1
    const-string p2, "ALTER TABLE history ADD COLUMN scroll_y INTEGER DEFAULT 0"

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 79
    :catch_1
    move-exception p1

    :goto_1
    nop

    .line 81
    :cond_0
    return-void
.end method

.method public saveProgress(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 9

    .line 110
    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v8}, Lcom/doctruyen/data/AppDatabase;->saveProgress(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZII)V

    .line 111
    return-void
.end method

.method public saveProgress(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZII)V
    .locals 3

    .line 93
    invoke-static {p1, p6}, Lcom/doctruyen/data/AppDatabase;->normalizeStoryKey(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    .line 94
    invoke-virtual {p0}, Lcom/doctruyen/data/AppDatabase;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 95
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 96
    const-string v2, "book_path"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, "Truy\u1ec7n Web"

    :goto_0
    const-string p1, "book_title"

    invoke-virtual {v1, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const-string p1, "chapter_index"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 99
    const-string p1, "chapter_title"

    invoke-virtual {v1, p1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const-string p1, "chapter_href"

    invoke-virtual {v1, p1, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "is_web"

    invoke-virtual {v1, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 102
    const-string p1, "paragraph_index"

    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 103
    const-string p1, "scroll_y"

    invoke-static {p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 104
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "updated_at"

    invoke-virtual {v1, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 106
    const/4 p1, 0x0

    const/4 p2, 0x5

    const-string p3, "history"

    invoke-virtual {v0, p3, p1, v1, p2}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    .line 107
    return-void
.end method
