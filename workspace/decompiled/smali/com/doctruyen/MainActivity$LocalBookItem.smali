.class Lcom/doctruyen/MainActivity$LocalBookItem;
.super Ljava/lang/Object;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/doctruyen/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LocalBookItem"
.end annotation


# instance fields
.field chapterIndex:I

.field fileSize:J

.field isEpub:Z

.field paragraphIndex:I

.field path:Ljava/lang/String;

.field progressDesc:Ljava/lang/String;

.field scrollY:I

.field title:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 662
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/doctruyen/MainActivity$1;)V
    .locals 0

    .line 662
    invoke-direct {p0}, Lcom/doctruyen/MainActivity$LocalBookItem;-><init>()V

    return-void
.end method
