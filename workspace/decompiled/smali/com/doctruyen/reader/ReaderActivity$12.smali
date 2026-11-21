.class public final synthetic Lcom/doctruyen/reader/ReaderActivity$12;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lcom/doctruyen/reader/ReaderActivity;"
    method = "lambda$loadWebChapter$32"
    proto = "(Ljava/lang/String;Z)V"
.end annotation


# instance fields
.field public final synthetic f$0:Lcom/doctruyen/reader/ReaderActivity;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/doctruyen/reader/ReaderActivity;Ljava/lang/String;Z)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/doctruyen/reader/ReaderActivity$12;->f$0:Lcom/doctruyen/reader/ReaderActivity;

    iput-object p2, p0, Lcom/doctruyen/reader/ReaderActivity$12;->f$1:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/doctruyen/reader/ReaderActivity$12;->f$2:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/doctruyen/reader/ReaderActivity$12;->f$0:Lcom/doctruyen/reader/ReaderActivity;

    iget-object v1, p0, Lcom/doctruyen/reader/ReaderActivity$12;->f$1:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/doctruyen/reader/ReaderActivity$12;->f$2:Z

    invoke-virtual {v0, v1, v2}, Lcom/doctruyen/reader/ReaderActivity;->lambda$loadWebChapter$32$com-doctruyen-reader-ReaderActivity(Ljava/lang/String;Z)V

    return-void
.end method
