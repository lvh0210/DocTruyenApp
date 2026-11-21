.class public final synthetic Lcom/doctruyen/reader/ReaderActivity$37;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lcom/doctruyen/reader/ReaderActivity;"
    method = "lambda$loadLocalChapter$27"
    proto = "(Lcom/doctruyen/reader/epub/Chapter;Ljava/lang/String;I)V"
.end annotation


# instance fields
.field public final synthetic f$0:Lcom/doctruyen/reader/ReaderActivity;

.field public final synthetic f$1:Lcom/doctruyen/reader/epub/Chapter;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/doctruyen/reader/ReaderActivity;Lcom/doctruyen/reader/epub/Chapter;Ljava/lang/String;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/doctruyen/reader/ReaderActivity$37;->f$0:Lcom/doctruyen/reader/ReaderActivity;

    iput-object p2, p0, Lcom/doctruyen/reader/ReaderActivity$37;->f$1:Lcom/doctruyen/reader/epub/Chapter;

    iput-object p3, p0, Lcom/doctruyen/reader/ReaderActivity$37;->f$2:Ljava/lang/String;

    iput p4, p0, Lcom/doctruyen/reader/ReaderActivity$37;->f$3:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 0
    iget-object v0, p0, Lcom/doctruyen/reader/ReaderActivity$37;->f$0:Lcom/doctruyen/reader/ReaderActivity;

    iget-object v1, p0, Lcom/doctruyen/reader/ReaderActivity$37;->f$1:Lcom/doctruyen/reader/epub/Chapter;

    iget-object v2, p0, Lcom/doctruyen/reader/ReaderActivity$37;->f$2:Ljava/lang/String;

    iget v3, p0, Lcom/doctruyen/reader/ReaderActivity$37;->f$3:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/doctruyen/reader/ReaderActivity;->lambda$loadLocalChapter$27$com-doctruyen-reader-ReaderActivity(Lcom/doctruyen/reader/epub/Chapter;Ljava/lang/String;I)V

    return-void
.end method
