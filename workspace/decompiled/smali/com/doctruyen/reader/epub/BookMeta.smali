.class public Lcom/doctruyen/reader/epub/BookMeta;
.super Ljava/lang/Object;
.source "BookMeta.java"


# instance fields
.field private author:Ljava/lang/String;

.field private chapters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/doctruyen/reader/epub/Chapter;",
            ">;"
        }
    .end annotation
.end field

.field private epubPath:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "Truy\u1ec7n kh\u00f4ng t\u00ean"

    :goto_0
    iput-object p1, p0, Lcom/doctruyen/reader/epub/BookMeta;->title:Ljava/lang/String;

    .line 14
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    const-string p2, "Ch\u01b0a r\u00f5 t\u00e1c gi\u1ea3"

    :goto_1
    iput-object p2, p0, Lcom/doctruyen/reader/epub/BookMeta;->author:Ljava/lang/String;

    .line 15
    iput-object p3, p0, Lcom/doctruyen/reader/epub/BookMeta;->epubPath:Ljava/lang/String;

    .line 16
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/doctruyen/reader/epub/BookMeta;->chapters:Ljava/util/List;

    .line 17
    return-void
.end method


# virtual methods
.method public getAuthor()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/doctruyen/reader/epub/BookMeta;->author:Ljava/lang/String;

    return-object v0
.end method

.method public getChapters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/doctruyen/reader/epub/Chapter;",
            ">;"
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lcom/doctruyen/reader/epub/BookMeta;->chapters:Ljava/util/List;

    return-object v0
.end method

.method public getEpubPath()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/doctruyen/reader/epub/BookMeta;->epubPath:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/doctruyen/reader/epub/BookMeta;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setChapters(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/doctruyen/reader/epub/Chapter;",
            ">;)V"
        }
    .end annotation

    .line 36
    iput-object p1, p0, Lcom/doctruyen/reader/epub/BookMeta;->chapters:Ljava/util/List;

    .line 37
    return-void
.end method
