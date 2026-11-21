.class public final synthetic Lcom/doctruyen/reader/ReaderActivity$AndroidBridge$1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lcom/doctruyen/reader/ReaderActivity$AndroidBridge;"
    method = "lambda$requestPrevChapter$2"
    proto = "()V"
.end annotation


# instance fields
.field public final synthetic f$0:Lcom/doctruyen/reader/ReaderActivity$AndroidBridge;


# direct methods
.method public synthetic constructor <init>(Lcom/doctruyen/reader/ReaderActivity$AndroidBridge;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/doctruyen/reader/ReaderActivity$AndroidBridge$1;->f$0:Lcom/doctruyen/reader/ReaderActivity$AndroidBridge;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/doctruyen/reader/ReaderActivity$AndroidBridge$1;->f$0:Lcom/doctruyen/reader/ReaderActivity$AndroidBridge;

    invoke-virtual {v0}, Lcom/doctruyen/reader/ReaderActivity$AndroidBridge;->lambda$requestPrevChapter$2$com-doctruyen-reader-ReaderActivity$AndroidBridge()V

    return-void
.end method
