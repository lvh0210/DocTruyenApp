.class public final synthetic Lcom/doctruyen/reader/ReaderActivity$1$1$0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lcom/doctruyen/reader/ReaderActivity$1$1;"
    method = "lambda$onPlaybackStateChanged$0"
    proto = "(Z)V"
.end annotation


# instance fields
.field public final synthetic f$0:Lcom/doctruyen/reader/ReaderActivity$1$1;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/doctruyen/reader/ReaderActivity$1$1;Z)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/doctruyen/reader/ReaderActivity$1$1$0;->f$0:Lcom/doctruyen/reader/ReaderActivity$1$1;

    iput-boolean p2, p0, Lcom/doctruyen/reader/ReaderActivity$1$1$0;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/doctruyen/reader/ReaderActivity$1$1$0;->f$0:Lcom/doctruyen/reader/ReaderActivity$1$1;

    iget-boolean v1, p0, Lcom/doctruyen/reader/ReaderActivity$1$1$0;->f$1:Z

    invoke-virtual {v0, v1}, Lcom/doctruyen/reader/ReaderActivity$1$1;->lambda$onPlaybackStateChanged$0$com-doctruyen-reader-ReaderActivity$1$1(Z)V

    return-void
.end method
