.class public final synthetic Lcom/doctruyen/reader/web/WebBrowseActivity$11;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lcom/doctruyen/reader/web/WebBrowseActivity;"
    method = "lambda$resolveDirectLink$8"
    proto = "(Ljava/lang/String;)V"
.end annotation


# instance fields
.field public final synthetic f$0:Lcom/doctruyen/reader/web/WebBrowseActivity;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/doctruyen/reader/web/WebBrowseActivity;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/doctruyen/reader/web/WebBrowseActivity$11;->f$0:Lcom/doctruyen/reader/web/WebBrowseActivity;

    iput-object p2, p0, Lcom/doctruyen/reader/web/WebBrowseActivity$11;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/doctruyen/reader/web/WebBrowseActivity$11;->f$0:Lcom/doctruyen/reader/web/WebBrowseActivity;

    iget-object v1, p0, Lcom/doctruyen/reader/web/WebBrowseActivity$11;->f$1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/doctruyen/reader/web/WebBrowseActivity;->lambda$resolveDirectLink$8$com-doctruyen-reader-web-WebBrowseActivity(Ljava/lang/String;)V

    return-void
.end method
