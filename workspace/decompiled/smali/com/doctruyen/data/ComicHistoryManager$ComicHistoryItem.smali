.class public Lcom/doctruyen/data/ComicHistoryManager$ComicHistoryItem;
.super Ljava/lang/Object;
.source "ComicHistoryManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/doctruyen/data/ComicHistoryManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ComicHistoryItem"
.end annotation


# instance fields
.field public timestamp:J

.field public title:Ljava/lang/String;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/doctruyen/data/ComicHistoryManager$ComicHistoryItem;->url:Ljava/lang/String;

    .line 22
    iput-object p2, p0, Lcom/doctruyen/data/ComicHistoryManager$ComicHistoryItem;->title:Ljava/lang/String;

    .line 23
    iput-wide p3, p0, Lcom/doctruyen/data/ComicHistoryManager$ComicHistoryItem;->timestamp:J

    .line 24
    return-void
.end method
