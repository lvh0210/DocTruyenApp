.class public final synthetic Lcom/doctruyen/reader/web/WebBrowseActivity$6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lcom/doctruyen/reader/web/WebBrowseActivity;"
    method = "lambda$initViews$1"
    proto = "(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z"
.end annotation


# instance fields
.field public final synthetic f$0:Lcom/doctruyen/reader/web/WebBrowseActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/doctruyen/reader/web/WebBrowseActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/doctruyen/reader/web/WebBrowseActivity$6;->f$0:Lcom/doctruyen/reader/web/WebBrowseActivity;

    return-void
.end method


# virtual methods
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/doctruyen/reader/web/WebBrowseActivity$6;->f$0:Lcom/doctruyen/reader/web/WebBrowseActivity;

    invoke-virtual {v0, p1, p2, p3}, Lcom/doctruyen/reader/web/WebBrowseActivity;->lambda$initViews$1$com-doctruyen-reader-web-WebBrowseActivity(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
