.class public final synthetic Lcom/doctruyen/reader/ReaderActivity$34;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lcom/doctruyen/reader/ReaderActivity;"
    method = "lambda$loadLocalChapter$29"
    proto = "(Lcom/doctruyen/reader/epub/Chapter;I)V"
.end annotation


# instance fields
.field public final synthetic f$0:Lcom/doctruyen/reader/ReaderActivity;

.field public final synthetic f$1:Lcom/doctruyen/reader/epub/Chapter;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/doctruyen/reader/ReaderActivity;Lcom/doctruyen/reader/epub/Chapter;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/doctruyen/reader/ReaderActivity$34;->f$0:Lcom/doctruyen/reader/ReaderActivity;

    iput-object p2, p0, Lcom/doctruyen/reader/ReaderActivity$34;->f$1:Lcom/doctruyen/reader/epub/Chapter;

    iput p3, p0, Lcom/doctruyen/reader/ReaderActivity$34;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/doctruyen/reader/ReaderActivity$34;->f$0:Lcom/doctruyen/reader/ReaderActivity;

    iget-object v1, p0, Lcom/doctruyen/reader/ReaderActivity$34;->f$1:Lcom/doctruyen/reader/epub/Chapter;

    iget v2, p0, Lcom/doctruyen/reader/ReaderActivity$34;->f$2:I

    invoke-virtual {v0, v1, v2}, Lcom/doctruyen/reader/ReaderActivity;->lambda$loadLocalChapter$29$com-doctruyen-reader-ReaderActivity(Lcom/doctruyen/reader/epub/Chapter;I)V

    return-void
.end method
