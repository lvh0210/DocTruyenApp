.class Lcom/doctruyen/reader/txt/TxtLazyEngine$ChapterMarker;
.super Ljava/lang/Object;
.source "TxtLazyEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/doctruyen/reader/txt/TxtLazyEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ChapterMarker"
.end annotation


# instance fields
.field index:I

.field startLine:I

.field title:Ljava/lang/String;


# direct methods
.method constructor <init>(ILjava/lang/String;I)V
    .locals 0

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    iput p1, p0, Lcom/doctruyen/reader/txt/TxtLazyEngine$ChapterMarker;->index:I

    .line 151
    iput-object p2, p0, Lcom/doctruyen/reader/txt/TxtLazyEngine$ChapterMarker;->title:Ljava/lang/String;

    .line 152
    iput p3, p0, Lcom/doctruyen/reader/txt/TxtLazyEngine$ChapterMarker;->startLine:I

    .line 153
    return-void
.end method
