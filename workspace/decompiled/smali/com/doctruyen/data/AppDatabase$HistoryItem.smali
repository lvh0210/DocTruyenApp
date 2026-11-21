.class public Lcom/doctruyen/data/AppDatabase$HistoryItem;
.super Ljava/lang/Object;
.source "AppDatabase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/doctruyen/data/AppDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HistoryItem"
.end annotation


# instance fields
.field public bookPath:Ljava/lang/String;

.field public bookTitle:Ljava/lang/String;

.field public chapterHref:Ljava/lang/String;

.field public chapterIndex:I

.field public chapterTitle:Ljava/lang/String;

.field public isWeb:Z

.field public paragraphIndex:I

.field public scrollY:I

.field public updatedAt:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
