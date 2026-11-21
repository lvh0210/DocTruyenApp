.class public final synthetic Lcom/doctruyen/reader/ReaderActivity$1$1$3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lcom/doctruyen/reader/ReaderActivity$1$1;"
    method = "lambda$onParagraphStarted$1"
    proto = "(II)V"
.end annotation


# instance fields
.field public final synthetic f$0:Lcom/doctruyen/reader/ReaderActivity$1$1;

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/doctruyen/reader/ReaderActivity$1$1;II)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/doctruyen/reader/ReaderActivity$1$1$3;->f$0:Lcom/doctruyen/reader/ReaderActivity$1$1;

    iput p2, p0, Lcom/doctruyen/reader/ReaderActivity$1$1$3;->f$1:I

    iput p3, p0, Lcom/doctruyen/reader/ReaderActivity$1$1$3;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/doctruyen/reader/ReaderActivity$1$1$3;->f$0:Lcom/doctruyen/reader/ReaderActivity$1$1;

    iget v1, p0, Lcom/doctruyen/reader/ReaderActivity$1$1$3;->f$1:I

    iget v2, p0, Lcom/doctruyen/reader/ReaderActivity$1$1$3;->f$2:I

    invoke-virtual {v0, v1, v2}, Lcom/doctruyen/reader/ReaderActivity$1$1;->lambda$onParagraphStarted$1$com-doctruyen-reader-ReaderActivity$1$1(II)V

    return-void
.end method
