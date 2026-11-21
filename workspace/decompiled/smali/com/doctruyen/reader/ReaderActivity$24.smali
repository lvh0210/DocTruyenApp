.class public final synthetic Lcom/doctruyen/reader/ReaderActivity$24;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lcom/doctruyen/reader/ReaderActivity;"
    method = "lambda$loadTxtData$22"
    proto = "(Ljava/lang/Exception;)V"
.end annotation


# instance fields
.field public final synthetic f$0:Lcom/doctruyen/reader/ReaderActivity;

.field public final synthetic f$1:Ljava/lang/Exception;


# direct methods
.method public synthetic constructor <init>(Lcom/doctruyen/reader/ReaderActivity;Ljava/lang/Exception;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/doctruyen/reader/ReaderActivity$24;->f$0:Lcom/doctruyen/reader/ReaderActivity;

    iput-object p2, p0, Lcom/doctruyen/reader/ReaderActivity$24;->f$1:Ljava/lang/Exception;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/doctruyen/reader/ReaderActivity$24;->f$0:Lcom/doctruyen/reader/ReaderActivity;

    iget-object v1, p0, Lcom/doctruyen/reader/ReaderActivity$24;->f$1:Ljava/lang/Exception;

    invoke-virtual {v0, v1}, Lcom/doctruyen/reader/ReaderActivity;->lambda$loadTxtData$22$com-doctruyen-reader-ReaderActivity(Ljava/lang/Exception;)V

    return-void
.end method
