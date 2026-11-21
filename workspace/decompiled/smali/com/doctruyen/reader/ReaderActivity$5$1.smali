.class public final synthetic Lcom/doctruyen/reader/ReaderActivity$5$1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lcom/doctruyen/reader/ReaderActivity$5;"
    method = "lambda$onPageFinished$0"
    proto = "(Ljava/lang/String;Ljava/lang/String;)V"
.end annotation


# instance fields
.field public final synthetic f$0:Lcom/doctruyen/reader/ReaderActivity$5;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/doctruyen/reader/ReaderActivity$5;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/doctruyen/reader/ReaderActivity$5$1;->f$0:Lcom/doctruyen/reader/ReaderActivity$5;

    iput-object p2, p0, Lcom/doctruyen/reader/ReaderActivity$5$1;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onReceiveValue(Ljava/lang/Object;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/doctruyen/reader/ReaderActivity$5$1;->f$0:Lcom/doctruyen/reader/ReaderActivity$5;

    iget-object v1, p0, Lcom/doctruyen/reader/ReaderActivity$5$1;->f$1:Ljava/lang/String;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/doctruyen/reader/ReaderActivity$5;->lambda$onPageFinished$0$com-doctruyen-reader-ReaderActivity$5(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
