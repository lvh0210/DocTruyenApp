.class public final synthetic Lcom/doctruyen/reader/web/WebBrowseActivity$9;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/webkit/DownloadListener;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lcom/doctruyen/reader/web/WebBrowseActivity;"
    method = "lambda$initViews$4"
    proto = "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V"
.end annotation


# instance fields
.field public final synthetic f$0:Lcom/doctruyen/reader/web/WebBrowseActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/doctruyen/reader/web/WebBrowseActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/doctruyen/reader/web/WebBrowseActivity$9;->f$0:Lcom/doctruyen/reader/web/WebBrowseActivity;

    return-void
.end method


# virtual methods
.method public final onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 7

    .line 0
    iget-object v0, p0, Lcom/doctruyen/reader/web/WebBrowseActivity$9;->f$0:Lcom/doctruyen/reader/web/WebBrowseActivity;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-wide v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/doctruyen/reader/web/WebBrowseActivity;->lambda$initViews$4$com-doctruyen-reader-web-WebBrowseActivity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method
