.class public Lcom/doctruyen/reader/epub/Chapter;
.super Ljava/lang/Object;
.source "Chapter.java"


# instance fields
.field private href:Ljava/lang/String;

.field private index:I

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput p1, p0, Lcom/doctruyen/reader/epub/Chapter;->index:I

    .line 10
    iput-object p2, p0, Lcom/doctruyen/reader/epub/Chapter;->title:Ljava/lang/String;

    .line 11
    iput-object p3, p0, Lcom/doctruyen/reader/epub/Chapter;->href:Ljava/lang/String;

    .line 12
    return-void
.end method


# virtual methods
.method public getHref()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/doctruyen/reader/epub/Chapter;->href:Ljava/lang/String;

    return-object v0
.end method

.method public getIndex()I
    .locals 1

    .line 15
    iget v0, p0, Lcom/doctruyen/reader/epub/Chapter;->index:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/doctruyen/reader/epub/Chapter;->title:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/doctruyen/reader/epub/Chapter;->title:Ljava/lang/String;

    return-object v0
.end method
