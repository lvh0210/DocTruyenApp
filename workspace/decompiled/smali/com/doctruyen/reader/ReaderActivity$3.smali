.class Lcom/doctruyen/reader/ReaderActivity$3;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "ReaderActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/doctruyen/reader/ReaderActivity;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/doctruyen/reader/ReaderActivity;


# direct methods
.method constructor <init>(Lcom/doctruyen/reader/ReaderActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 375
    iput-object p1, p0, Lcom/doctruyen/reader/ReaderActivity$3;->this$0:Lcom/doctruyen/reader/ReaderActivity;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 378
    iget-object p1, p0, Lcom/doctruyen/reader/ReaderActivity$3;->this$0:Lcom/doctruyen/reader/ReaderActivity;

    invoke-virtual {p1}, Lcom/doctruyen/reader/ReaderActivity;->toggleControlsVisibility()V

    .line 379
    const/4 p1, 0x0

    return p1
.end method
