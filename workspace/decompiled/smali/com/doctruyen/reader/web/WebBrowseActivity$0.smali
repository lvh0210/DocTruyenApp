.class public final synthetic Lcom/doctruyen/reader/web/WebBrowseActivity$0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lcom/doctruyen/reader/web/WebBrowseActivity;"
    method = "lambda$handleReadModeClick$6"
    proto = "(Ljava/lang/String;)V"
.end annotation


# instance fields
.field public final synthetic f$0:Lcom/doctruyen/reader/web/WebBrowseActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/doctruyen/reader/web/WebBrowseActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/doctruyen/reader/web/WebBrowseActivity$0;->f$0:Lcom/doctruyen/reader/web/WebBrowseActivity;

    return-void
.end method


# virtual methods
.method public final onReceiveValue(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/doctruyen/reader/web/WebBrowseActivity$0;->f$0:Lcom/doctruyen/reader/web/WebBrowseActivity;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/doctruyen/reader/web/WebBrowseActivity;->lambda$handleReadModeClick$6$com-doctruyen-reader-web-WebBrowseActivity(Ljava/lang/String;)V

    return-void
.end method
