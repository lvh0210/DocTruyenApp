.class public final synthetic Lcom/doctruyen/reader/ReaderActivity$5$0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lcom/doctruyen/reader/ReaderActivity$5;"
    method = "lambda$onPageFinished$1"
    proto = "(Landroid/webkit/WebView;Ljava/lang/String;)V"
.end annotation


# instance fields
.field public final synthetic f$0:Lcom/doctruyen/reader/ReaderActivity$5;

.field public final synthetic f$1:Landroid/webkit/WebView;

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/doctruyen/reader/ReaderActivity$5;Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/doctruyen/reader/ReaderActivity$5$0;->f$0:Lcom/doctruyen/reader/ReaderActivity$5;

    iput-object p2, p0, Lcom/doctruyen/reader/ReaderActivity$5$0;->f$1:Landroid/webkit/WebView;

    iput-object p3, p0, Lcom/doctruyen/reader/ReaderActivity$5$0;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/doctruyen/reader/ReaderActivity$5$0;->f$0:Lcom/doctruyen/reader/ReaderActivity$5;

    iget-object v1, p0, Lcom/doctruyen/reader/ReaderActivity$5$0;->f$1:Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/doctruyen/reader/ReaderActivity$5$0;->f$2:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/doctruyen/reader/ReaderActivity$5;->lambda$onPageFinished$1$com-doctruyen-reader-ReaderActivity$5(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method
