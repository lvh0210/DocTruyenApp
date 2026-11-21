.class public Lcom/doctruyen/reader/txt/TxtLazyEngine;
.super Ljava/lang/Object;
.source "TxtLazyEngine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/doctruyen/reader/txt/TxtLazyEngine$ChapterMarker;
    }
.end annotation


# static fields
.field private static final CHAPTER_PATTERN:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 17
    const-string v0, "^\\s*(Ch\u01b0\u01a1ng|H\u1ed3i|Quy\u1ec3n|Ti\u1ebft|Th\u1ee9|Chapter|Chap|Ph\u1ea7n)\\s+([0-9IVXLCDMivxlcdm]+|[\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d\u5341\u767e\u5343\u4e07]+)[:\\s.-]*(.*)$"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/doctruyen/reader/txt/TxtLazyEngine;->CHAPTER_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static detectCharset(Ljava/io/File;)Ljava/nio/charset/Charset;
    .locals 8

    .line 120
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    const/4 p0, 0x4

    :try_start_1
    new-array v1, p0, [B

    .line 122
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Ljava/io/InputStream;->read([BII)I

    move-result p0

    .line 123
    const/4 v3, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/16 v6, 0xff

    if-lt p0, v3, :cond_0

    aget-byte v3, v1, v2

    and-int/2addr v3, v6

    const/16 v7, 0xef

    if-ne v3, v7, :cond_0

    aget-byte v3, v1, v4

    and-int/2addr v3, v6

    const/16 v7, 0xbb

    if-ne v3, v7, :cond_0

    aget-byte v3, v1, v5

    and-int/2addr v3, v6

    const/16 v7, 0xbf

    if-ne v3, v7, :cond_0

    .line 124
    sget-object p0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 132
    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 124
    return-object p0

    .line 126
    :cond_0
    const/16 v3, 0xfe

    if-lt p0, v5, :cond_1

    :try_start_3
    aget-byte v7, v1, v2

    and-int/2addr v7, v6

    if-ne v7, v6, :cond_1

    aget-byte v7, v1, v4

    and-int/2addr v7, v6

    if-ne v7, v3, :cond_1

    .line 127
    sget-object p0, Ljava/nio/charset/StandardCharsets;->UTF_16LE:Ljava/nio/charset/Charset;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 132
    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 127
    return-object p0

    .line 129
    :cond_1
    if-lt p0, v5, :cond_2

    :try_start_5
    aget-byte p0, v1, v2

    and-int/2addr p0, v6

    if-ne p0, v3, :cond_2

    aget-byte p0, v1, v4

    and-int/2addr p0, v6

    if-ne p0, v6, :cond_2

    .line 130
    sget-object p0, Ljava/nio/charset/StandardCharsets;->UTF_16BE:Ljava/nio/charset/Charset;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 132
    :try_start_6
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 130
    return-object p0

    .line 132
    :cond_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_1

    .line 120
    :catchall_0
    move-exception p0

    :try_start_7
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_8
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    .line 132
    :catch_0
    move-exception p0

    .line 133
    :goto_1
    sget-object p0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    return-object p0
.end method

.method private static escapeHtml(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 137
    const-string v0, "&"

    const-string v1, "&amp;"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 138
    const-string v0, "<"

    const-string v1, "&lt;"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 139
    const-string v0, ">"

    const-string v1, "&gt;"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 140
    const-string v0, "\""

    const-string v1, "&quot;"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 141
    const-string v0, "\'"

    const-string v1, "&#39;"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 137
    return-object p0
.end method

.method public static getChapterHtml(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 79
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 80
    invoke-static {v0}, Lcom/doctruyen/reader/txt/TxtLazyEngine;->detectCharset(Ljava/io/File;)Ljava/nio/charset/Charset;

    move-result-object p0

    .line 82
    nop

    .line 83
    nop

    .line 84
    const/4 v1, 0x0

    const/4 v2, 0x1

    const v3, 0x7fffffff

    if-eqz p1, :cond_0

    const-string v4, ":"

    invoke-virtual {p1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 85
    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 87
    :try_start_0
    aget-object v4, p1, v1

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 88
    :try_start_1
    aget-object p1, p1, v2

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 89
    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    const/4 v4, 0x1

    :goto_0
    goto :goto_1

    .line 92
    :cond_0
    const/4 v4, 0x1

    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 93
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v6, v7, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    const p0, 0x8000

    invoke-direct {v5, v6, p0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 95
    nop

    .line 96
    :goto_2
    :try_start_2
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 97
    add-int/2addr v1, v2

    .line 98
    if-ge v1, v4, :cond_1

    .line 99
    goto :goto_2

    .line 101
    :cond_1
    if-le v1, v3, :cond_2

    .line 102
    goto :goto_3

    .line 105
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 106
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 107
    const-string v0, "<p>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/doctruyen/reader/txt/TxtLazyEngine;->escapeHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "</p>\n"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 109
    :cond_3
    goto :goto_2

    .line 110
    :cond_4
    :goto_3
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    .line 112
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-nez p0, :cond_5

    .line 113
    const-string p0, "<p>(N\u1ed9i dung ch\u01b0\u01a1ng tr\u1ed1ng)</p>"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    :cond_5
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 93
    :catchall_0
    move-exception p0

    :try_start_3
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw p0
.end method

.method public static parseTxtBook(Ljava/lang/String;)Lcom/doctruyen/reader/epub/BookMeta;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 23
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 24
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 28
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 29
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".txt"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 30
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x4

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 33
    :cond_0
    invoke-static {v0}, Lcom/doctruyen/reader/txt/TxtLazyEngine;->detectCharset(Ljava/io/File;)Ljava/nio/charset/Charset;

    move-result-object v2

    .line 34
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 36
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v6, v7, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    const v0, 0x8000

    invoke-direct {v5, v6, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 38
    const/4 v0, 0x0

    .line 39
    :cond_1
    :goto_0
    :try_start_0
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 40
    add-int/lit8 v0, v0, 0x1

    .line 41
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 42
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0x78

    if-le v6, v7, :cond_2

    .line 43
    goto :goto_0

    .line 46
    :cond_2
    sget-object v6, Lcom/doctruyen/reader/txt/TxtLazyEngine;->CHAPTER_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v6, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 47
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 48
    nop

    .line 49
    new-instance v6, Lcom/doctruyen/reader/txt/TxtLazyEngine$ChapterMarker;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    invoke-direct {v6, v7, v2, v0}, Lcom/doctruyen/reader/txt/TxtLazyEngine$ChapterMarker;-><init>(ILjava/lang/String;I)V

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    :cond_3
    goto :goto_0

    .line 54
    :cond_4
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v6, 0x1

    if-eqz v2, :cond_5

    .line 55
    nop

    .line 56
    nop

    .line 57
    nop

    .line 58
    const/4 v2, 0x1

    const/4 v7, 0x1

    :goto_1
    if-gt v2, v0, :cond_5

    .line 59
    new-instance v8, Lcom/doctruyen/reader/txt/TxtLazyEngine$ChapterMarker;

    add-int/lit8 v9, v7, -0x1

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Ph\u1ea7n "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, v10, v2}, Lcom/doctruyen/reader/txt/TxtLazyEngine$ChapterMarker;-><init>(ILjava/lang/String;I)V

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    add-int/lit8 v7, v7, 0x1

    .line 58
    add-int/lit16 v2, v2, 0x96

    goto :goto_1

    .line 63
    :cond_5
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 66
    :goto_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    if-ge v3, v2, :cond_7

    .line 67
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/doctruyen/reader/txt/TxtLazyEngine$ChapterMarker;

    .line 68
    iget v5, v2, Lcom/doctruyen/reader/txt/TxtLazyEngine$ChapterMarker;->startLine:I

    .line 69
    add-int/lit8 v3, v3, 0x1

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-ge v3, v7, :cond_6

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/doctruyen/reader/txt/TxtLazyEngine$ChapterMarker;

    iget v7, v7, Lcom/doctruyen/reader/txt/TxtLazyEngine$ChapterMarker;->startLine:I

    sub-int/2addr v7, v6

    goto :goto_3

    :cond_6
    const v7, 0x7fffffff

    .line 70
    :goto_3
    new-instance v8, Lcom/doctruyen/reader/epub/Chapter;

    iget v9, v2, Lcom/doctruyen/reader/txt/TxtLazyEngine$ChapterMarker;->index:I

    iget-object v2, v2, Lcom/doctruyen/reader/txt/TxtLazyEngine$ChapterMarker;->title:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, ":"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v8, v9, v2, v5}, Lcom/doctruyen/reader/epub/Chapter;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 73
    :cond_7
    new-instance v2, Lcom/doctruyen/reader/epub/BookMeta;

    const-string v3, "T\u1ec7p TXT"

    invoke-direct {v2, v1, v3, p0}, Lcom/doctruyen/reader/epub/BookMeta;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    invoke-virtual {v2, v0}, Lcom/doctruyen/reader/epub/BookMeta;->setChapters(Ljava/util/List;)V

    .line 75
    return-object v2

    .line 36
    :catchall_0
    move-exception p0

    :try_start_1
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw p0

    .line 25
    :cond_8
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Kh\u00f4ng t\u00ecm th\u1ea5y t\u1ec7p TXT: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
