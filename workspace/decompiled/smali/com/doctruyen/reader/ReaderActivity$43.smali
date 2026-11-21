.class public final synthetic Lcom/doctruyen/reader/ReaderActivity$43;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lcom/doctruyen/reader/ReaderActivity;"
    method = "lambda$doStartTts$19"
    proto = "(Ljava/lang/String;)V"
.end annotation


# instance fields
.field public final synthetic f$0:Lcom/doctruyen/reader/ReaderActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/doctruyen/reader/ReaderActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/doctruyen/reader/ReaderActivity$43;->f$0:Lcom/doctruyen/reader/ReaderActivity;

    return-void
.end method


# virtual methods
.method public final onReceiveValue(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/doctruyen/reader/ReaderActivity$43;->f$0:Lcom/doctruyen/reader/ReaderActivity;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/doctruyen/reader/ReaderActivity;->lambda$doStartTts$19$com-doctruyen-reader-ReaderActivity(Ljava/lang/String;)V

    return-void
.end method
