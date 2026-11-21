.class public Lcom/doctruyen/reader/web/WebDirectScraper$ScrapedChapter;
.super Ljava/lang/Object;
.source "WebDirectScraper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/doctruyen/reader/web/WebDirectScraper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScrapedChapter"
.end annotation


# instance fields
.field public htmlContent:Ljava/lang/String;

.field public isOverviewPage:Z

.field public nextUrl:Ljava/lang/String;

.field public prevUrl:Ljava/lang/String;

.field public textContent:Ljava/lang/String;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/doctruyen/reader/web/WebDirectScraper$ScrapedChapter;->title:Ljava/lang/String;

    .line 24
    iput-object p2, p0, Lcom/doctruyen/reader/web/WebDirectScraper$ScrapedChapter;->htmlContent:Ljava/lang/String;

    .line 25
    iput-object p3, p0, Lcom/doctruyen/reader/web/WebDirectScraper$ScrapedChapter;->textContent:Ljava/lang/String;

    .line 26
    iput-object p4, p0, Lcom/doctruyen/reader/web/WebDirectScraper$ScrapedChapter;->nextUrl:Ljava/lang/String;

    .line 27
    iput-object p5, p0, Lcom/doctruyen/reader/web/WebDirectScraper$ScrapedChapter;->prevUrl:Ljava/lang/String;

    .line 28
    iput-boolean p6, p0, Lcom/doctruyen/reader/web/WebDirectScraper$ScrapedChapter;->isOverviewPage:Z

    .line 29
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 7

    .line 32
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/doctruyen/reader/web/WebDirectScraper$ScrapedChapter;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 33
    return-void
.end method
