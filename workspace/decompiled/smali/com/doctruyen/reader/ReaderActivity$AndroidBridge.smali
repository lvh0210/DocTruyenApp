.class public Lcom/doctruyen/reader/ReaderActivity$AndroidBridge;
.super Ljava/lang/Object;
.source "ReaderActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/doctruyen/reader/ReaderActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AndroidBridge"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/doctruyen/reader/ReaderActivity;


# direct methods
.method public constructor <init>(Lcom/doctruyen/reader/ReaderActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1351
    iput-object p1, p0, Lcom/doctruyen/reader/ReaderActivity$AndroidBridge;->this$0:Lcom/doctruyen/reader/ReaderActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onParagraphsParsed$0$com-doctruyen-reader-ReaderActivity$AndroidBridge(II)V
    .locals 3

    .line 1372
    iget-object v0, p0, Lcom/doctruyen/reader/ReaderActivity$AndroidBridge;->this$0:Lcom/doctruyen/reader/ReaderActivity;

    invoke-static {v0}, Lcom/doctruyen/reader/ReaderActivity;->access$800(Lcom/doctruyen/reader/ReaderActivity;)Landroid/webkit/WebView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:restoreReadingPosition("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 1373
    iget-object v0, p0, Lcom/doctruyen/reader/ReaderActivity$AndroidBridge;->this$0:Lcom/doctruyen/reader/ReaderActivity;

    invoke-static {v0, p1}, Lcom/doctruyen/reader/ReaderActivity;->access$302(Lcom/doctruyen/reader/ReaderActivity;I)I

    .line 1374
    iget-object p1, p0, Lcom/doctruyen/reader/ReaderActivity$AndroidBridge;->this$0:Lcom/doctruyen/reader/ReaderActivity;

    invoke-static {p1, p2}, Lcom/doctruyen/reader/ReaderActivity;->access$2602(Lcom/doctruyen/reader/ReaderActivity;I)I

    .line 1375
    return-void
.end method

.method synthetic lambda$onParagraphsParsed$1$com-doctruyen-reader-ReaderActivity$AndroidBridge(Ljava/lang/String;)V
    .locals 6

    .line 1355
    iget-object v0, p0, Lcom/doctruyen/reader/ReaderActivity$AndroidBridge;->this$0:Lcom/doctruyen/reader/ReaderActivity;

    invoke-static {v0}, Lcom/doctruyen/reader/ReaderActivity;->access$2800(Lcom/doctruyen/reader/ReaderActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1357
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 1358
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge p1, v2, :cond_0

    .line 1359
    iget-object v2, p0, Lcom/doctruyen/reader/ReaderActivity$AndroidBridge;->this$0:Lcom/doctruyen/reader/ReaderActivity;

    invoke-static {v2}, Lcom/doctruyen/reader/ReaderActivity;->access$2800(Lcom/doctruyen/reader/ReaderActivity;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, p1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1358
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 1363
    :cond_0
    goto :goto_1

    .line 1361
    :catch_0
    move-exception p1

    .line 1362
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1366
    :goto_1
    iget-object p1, p0, Lcom/doctruyen/reader/ReaderActivity$AndroidBridge;->this$0:Lcom/doctruyen/reader/ReaderActivity;

    invoke-static {p1}, Lcom/doctruyen/reader/ReaderActivity;->access$2900(Lcom/doctruyen/reader/ReaderActivity;)I

    move-result p1

    if-gtz p1, :cond_1

    iget-object p1, p0, Lcom/doctruyen/reader/ReaderActivity$AndroidBridge;->this$0:Lcom/doctruyen/reader/ReaderActivity;

    invoke-static {p1}, Lcom/doctruyen/reader/ReaderActivity;->access$3000(Lcom/doctruyen/reader/ReaderActivity;)I

    move-result p1

    if-lez p1, :cond_2

    .line 1367
    :cond_1
    iget-object p1, p0, Lcom/doctruyen/reader/ReaderActivity$AndroidBridge;->this$0:Lcom/doctruyen/reader/ReaderActivity;

    invoke-static {p1}, Lcom/doctruyen/reader/ReaderActivity;->access$2900(Lcom/doctruyen/reader/ReaderActivity;)I

    move-result p1

    .line 1368
    iget-object v1, p0, Lcom/doctruyen/reader/ReaderActivity$AndroidBridge;->this$0:Lcom/doctruyen/reader/ReaderActivity;

    invoke-static {v1}, Lcom/doctruyen/reader/ReaderActivity;->access$3000(Lcom/doctruyen/reader/ReaderActivity;)I

    move-result v1

    .line 1369
    iget-object v2, p0, Lcom/doctruyen/reader/ReaderActivity$AndroidBridge;->this$0:Lcom/doctruyen/reader/ReaderActivity;

    invoke-static {v2, v0}, Lcom/doctruyen/reader/ReaderActivity;->access$2902(Lcom/doctruyen/reader/ReaderActivity;I)I

    .line 1370
    iget-object v2, p0, Lcom/doctruyen/reader/ReaderActivity$AndroidBridge;->this$0:Lcom/doctruyen/reader/ReaderActivity;

    invoke-static {v2, v0}, Lcom/doctruyen/reader/ReaderActivity;->access$3002(Lcom/doctruyen/reader/ReaderActivity;I)I

    .line 1371
    iget-object v2, p0, Lcom/doctruyen/reader/ReaderActivity$AndroidBridge;->this$0:Lcom/doctruyen/reader/ReaderActivity;

    invoke-static {v2}, Lcom/doctruyen/reader/ReaderActivity;->access$200(Lcom/doctruyen/reader/ReaderActivity;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/doctruyen/reader/ReaderActivity$AndroidBridge$0;

    invoke-direct {v3, p0, p1, v1}, Lcom/doctruyen/reader/ReaderActivity$AndroidBridge$0;-><init>(Lcom/doctruyen/reader/ReaderActivity$AndroidBridge;II)V

    const-wide/16 v4, 0xc8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1378
    :cond_2
    iget-object p1, p0, Lcom/doctruyen/reader/ReaderActivity$AndroidBridge;->this$0:Lcom/doctruyen/reader/ReaderActivity;

    invoke-static {p1}, Lcom/doctruyen/reader/ReaderActivity;->access$3100(Lcom/doctruyen/reader/ReaderActivity;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/doctruyen/reader/ReaderActivity$AndroidBridge;->this$0:Lcom/doctruyen/reader/ReaderActivity;

    invoke-static {p1}, Lcom/doctruyen/reader/ReaderActivity;->access$000(Lcom/doctruyen/reader/ReaderActivity;)Lcom/doctruyen/tts/TtsPlaybackService;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/doctruyen/reader/ReaderActivity$AndroidBridge;->this$0:Lcom/doctruyen/reader/ReaderActivity;

    invoke-static {p1}, Lcom/doctruyen/reader/ReaderActivity;->access$2800(Lcom/doctruyen/reader/ReaderActivity;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_5

    .line 1379
    iget-object p1, p0, Lcom/doctruyen/reader/ReaderActivity$AndroidBridge;->this$0:Lcom/doctruyen/reader/ReaderActivity;

    invoke-static {p1, v0}, Lcom/doctruyen/reader/ReaderActivity;->access$3102(Lcom/doctruyen/reader/ReaderActivity;Z)Z

    .line 1380
    iget-object p1, p0, Lcom/doctruyen/reader/ReaderActivity$AndroidBridge;->this$0:Lcom/doctruyen/reader/ReaderActivity;

    invoke-static {p1}, Lcom/doctruyen/reader/ReaderActivity;->access$3200(Lcom/doctruyen/reader/ReaderActivity;)Lcom/doctruyen/reader/epub/BookMeta;

    move-result-object p1

    iget-object v1, p0, Lcom/doctruyen/reader/ReaderActivity$AndroidBridge;->this$0:Lcom/doctruyen/reader/ReaderActivity;

    if-eqz p1, :cond_3

    invoke-static {v1}, Lcom/doctruyen/reader/ReaderActivity;->access$3200(Lcom/doctruyen/reader/ReaderActivity;)Lcom/doctruyen/reader/epub/BookMeta;

    move-result-object p1

    invoke-virtual {p1}, Lcom/doctruyen/reader/epub/BookMeta;->getTitle()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_3
    invoke-static {v1}, Lcom/doctruyen/reader/ReaderActivity;->access$2500(Lcom/doctruyen/reader/ReaderActivity;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/doctruyen/reader/ReaderActivity$AndroidBridge;->this$0:Lcom/doctruyen/reader/ReaderActivity;

    invoke-static {p1}, Lcom/doctruyen/reader/ReaderActivity;->access$2500(Lcom/doctruyen/reader/ReaderActivity;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_4
    const-string p1, "Truy\u1ec7n Web"

    .line 1381
    :goto_2
    iget-object v1, p0, Lcom/doctruyen/reader/ReaderActivity$AndroidBridge;->this$0:Lcom/doctruyen/reader/ReaderActivity;

    invoke-static {v1}, Lcom/doctruyen/reader/ReaderActivity;->access$000(Lcom/doctruyen/reader/ReaderActivity;)Lcom/doctruyen/tts/TtsPlaybackService;

    move-result-object v1

    iget-object v2, p0, Lcom/doctruyen/reader/ReaderActivity$AndroidBridge;->this$0:Lcom/doctruyen/reader/ReaderActivity;

    invoke-static {v2}, Lcom/doctruyen/reader/ReaderActivity;->access$2300(Lcom/doctruyen/reader/ReaderActivity;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/doctruyen/reader/ReaderActivity$AndroidBridge;->this$0:Lcom/doctruyen/reader/ReaderActivity;

    invoke-static {v3}, Lcom/doctruyen/reader/ReaderActivity;->access$2800(Lcom/doctruyen/reader/ReaderActivity;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, p1, v2, v3, v0}, Lcom/doctruyen/tts/TtsPlaybackService;->playParagraphs(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;I)V

    .line 1382
    iget-object p1, p0, Lcom/doctruyen/reader/ReaderActivity$AndroidBridge;->this$0:Lcom/doctruyen/reader/ReaderActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/doctruyen/reader/ReaderActivity;->access$3300(Lcom/doctruyen/reader/ReaderActivity;Z)V

    .line 1384
    :cond_5
    return-void
.end method

.method synthetic lambda$requestNextChapter$3$com-doctruyen-reader-ReaderActivity$AndroidBridge()V
    .locals 5

    .line 1414
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/doctruyen/reader/ReaderActivity$AndroidBridge;->this$0:Lcom/doctruyen/reader/ReaderActivity;

    invoke-static {v2}, Lcom/doctruyen/reader/ReaderActivity;->access$2700(Lcom/doctruyen/reader/ReaderActivity;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x258

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    return-void

    .line 1415
    :cond_0
    iget-object v0, p0, Lcom/doctruyen/reader/ReaderActivity$AndroidBridge;->this$0:Lcom/doctruyen/reader/ReaderActivity;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/doctruyen/reader/ReaderActivity;->access$2702(Lcom/doctruyen/reader/ReaderActivity;J)J

    .line 1416
    iget-object v0, p0, Lcom/doctruyen/reader/ReaderActivity$AndroidBridge;->this$0:Lcom/doctruyen/reader/ReaderActivity;

    iget-object v1, p0, Lcom/doctruyen/reader/ReaderActivity$AndroidBridge;->this$0:Lcom/doctruyen/reader/ReaderActivity;

    invoke-static {v1}, Lcom/doctruyen/reader/ReaderActivity;->access$000(Lcom/doctruyen/reader/ReaderActivity;)Lcom/doctruyen/tts/TtsPlaybackService;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/doctruyen/reader/ReaderActivity$AndroidBridge;->this$0:Lcom/doctruyen/reader/ReaderActivity;

    invoke-static {v1}, Lcom/doctruyen/reader/ReaderActivity;->access$000(Lcom/doctruyen/reader/ReaderActivity;)Lcom/doctruyen/tts/TtsPlaybackService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/doctruyen/tts/TtsPlaybackService;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-static {v0, v1}, Lcom/doctruyen/reader/ReaderActivity;->access$700(Lcom/doctruyen/reader/ReaderActivity;Z)V

    .line 1417
    return-void
.end method

.method synthetic lambda$requestPrevChapter$2$com-doctruyen-reader-ReaderActivity$AndroidBridge()V
    .locals 5

    .line 1405
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/doctruyen/reader/ReaderActivity$AndroidBridge;->this$0:Lcom/doctruyen/reader/ReaderActivity;

    invoke-static {v2}, Lcom/doctruyen/reader/ReaderActivity;->access$2700(Lcom/doctruyen/reader/ReaderActivity;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x258

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    return-void

    .line 1406
    :cond_0
    iget-object v0, p0, Lcom/doctruyen/reader/ReaderActivity$AndroidBridge;->this$0:Lcom/doctruyen/reader/ReaderActivity;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/doctruyen/reader/ReaderActivity;->access$2702(Lcom/doctruyen/reader/ReaderActivity;J)J

    .line 1407
    iget-object v0, p0, Lcom/doctruyen/reader/ReaderActivity$AndroidBridge;->this$0:Lcom/doctruyen/reader/ReaderActivity;

    invoke-static {v0}, Lcom/doctruyen/reader/ReaderActivity;->access$600(Lcom/doctruyen/reader/ReaderActivity;)V

    .line 1408
    return-void
.end method

.method synthetic lambda$toggleControls$4$com-doctruyen-reader-ReaderActivity$AndroidBridge()V
    .locals 1

    .line 1422
    iget-object v0, p0, Lcom/doctruyen/reader/ReaderActivity$AndroidBridge;->this$0:Lcom/doctruyen/reader/ReaderActivity;

    invoke-virtual {v0}, Lcom/doctruyen/reader/ReaderActivity;->toggleControlsVisibility()V

    return-void
.end method

.method public onParagraphClicked(I)V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1400
    return-void
.end method

.method public onParagraphsParsed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1354
    iget-object p1, p0, Lcom/doctruyen/reader/ReaderActivity$AndroidBridge;->this$0:Lcom/doctruyen/reader/ReaderActivity;

    invoke-static {p1}, Lcom/doctruyen/reader/ReaderActivity;->access$200(Lcom/doctruyen/reader/ReaderActivity;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/doctruyen/reader/ReaderActivity$AndroidBridge$2;

    invoke-direct {v0, p0, p2}, Lcom/doctruyen/reader/ReaderActivity$AndroidBridge$2;-><init>(Lcom/doctruyen/reader/ReaderActivity$AndroidBridge;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1385
    return-void
.end method

.method public onScrollPositionChanged(II)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1389
    iget-object v0, p0, Lcom/doctruyen/reader/ReaderActivity$AndroidBridge;->this$0:Lcom/doctruyen/reader/ReaderActivity;

    invoke-static {v0, p1}, Lcom/doctruyen/reader/ReaderActivity;->access$302(Lcom/doctruyen/reader/ReaderActivity;I)I

    .line 1390
    iget-object p1, p0, Lcom/doctruyen/reader/ReaderActivity$AndroidBridge;->this$0:Lcom/doctruyen/reader/ReaderActivity;

    invoke-static {p1, p2}, Lcom/doctruyen/reader/ReaderActivity;->access$2602(Lcom/doctruyen/reader/ReaderActivity;I)I

    .line 1391
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iget-object v0, p0, Lcom/doctruyen/reader/ReaderActivity$AndroidBridge;->this$0:Lcom/doctruyen/reader/ReaderActivity;

    invoke-static {v0}, Lcom/doctruyen/reader/ReaderActivity;->access$400(Lcom/doctruyen/reader/ReaderActivity;)J

    move-result-wide v0

    sub-long/2addr p1, v0

    const-wide/16 v0, 0x9c4

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    .line 1392
    iget-object p1, p0, Lcom/doctruyen/reader/ReaderActivity$AndroidBridge;->this$0:Lcom/doctruyen/reader/ReaderActivity;

    invoke-static {p1}, Lcom/doctruyen/reader/ReaderActivity;->access$500(Lcom/doctruyen/reader/ReaderActivity;)V

    .line 1394
    :cond_0
    return-void
.end method

.method public requestNextChapter()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1413
    iget-object v0, p0, Lcom/doctruyen/reader/ReaderActivity$AndroidBridge;->this$0:Lcom/doctruyen/reader/ReaderActivity;

    invoke-static {v0}, Lcom/doctruyen/reader/ReaderActivity;->access$200(Lcom/doctruyen/reader/ReaderActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/doctruyen/reader/ReaderActivity$AndroidBridge$4;

    invoke-direct {v1, p0}, Lcom/doctruyen/reader/ReaderActivity$AndroidBridge$4;-><init>(Lcom/doctruyen/reader/ReaderActivity$AndroidBridge;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1418
    return-void
.end method

.method public requestPrevChapter()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1404
    iget-object v0, p0, Lcom/doctruyen/reader/ReaderActivity$AndroidBridge;->this$0:Lcom/doctruyen/reader/ReaderActivity;

    invoke-static {v0}, Lcom/doctruyen/reader/ReaderActivity;->access$200(Lcom/doctruyen/reader/ReaderActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/doctruyen/reader/ReaderActivity$AndroidBridge$1;

    invoke-direct {v1, p0}, Lcom/doctruyen/reader/ReaderActivity$AndroidBridge$1;-><init>(Lcom/doctruyen/reader/ReaderActivity$AndroidBridge;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1409
    return-void
.end method

.method public toggleControls()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1422
    iget-object v0, p0, Lcom/doctruyen/reader/ReaderActivity$AndroidBridge;->this$0:Lcom/doctruyen/reader/ReaderActivity;

    invoke-static {v0}, Lcom/doctruyen/reader/ReaderActivity;->access$200(Lcom/doctruyen/reader/ReaderActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/doctruyen/reader/ReaderActivity$AndroidBridge$3;

    invoke-direct {v1, p0}, Lcom/doctruyen/reader/ReaderActivity$AndroidBridge$3;-><init>(Lcom/doctruyen/reader/ReaderActivity$AndroidBridge;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1423
    return-void
.end method
