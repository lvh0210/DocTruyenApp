.class Lcom/doctruyen/reader/ReaderActivity$1;
.super Ljava/lang/Object;
.source "ReaderActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/doctruyen/reader/ReaderActivity;
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

    .line 220
    iput-object p1, p0, Lcom/doctruyen/reader/ReaderActivity$1;->this$0:Lcom/doctruyen/reader/ReaderActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 223
    check-cast p2, Lcom/doctruyen/tts/TtsPlaybackService$LocalBinder;

    .line 224
    iget-object p1, p0, Lcom/doctruyen/reader/ReaderActivity$1;->this$0:Lcom/doctruyen/reader/ReaderActivity;

    invoke-virtual {p2}, Lcom/doctruyen/tts/TtsPlaybackService$LocalBinder;->getService()Lcom/doctruyen/tts/TtsPlaybackService;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/doctruyen/reader/ReaderActivity;->access$002(Lcom/doctruyen/reader/ReaderActivity;Lcom/doctruyen/tts/TtsPlaybackService;)Lcom/doctruyen/tts/TtsPlaybackService;

    .line 225
    iget-object p1, p0, Lcom/doctruyen/reader/ReaderActivity$1;->this$0:Lcom/doctruyen/reader/ReaderActivity;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/doctruyen/reader/ReaderActivity;->access$102(Lcom/doctruyen/reader/ReaderActivity;Z)Z

    .line 226
    iget-object p1, p0, Lcom/doctruyen/reader/ReaderActivity$1;->this$0:Lcom/doctruyen/reader/ReaderActivity;

    invoke-static {p1}, Lcom/doctruyen/reader/ReaderActivity;->access$000(Lcom/doctruyen/reader/ReaderActivity;)Lcom/doctruyen/tts/TtsPlaybackService;

    move-result-object p1

    new-instance p2, Lcom/doctruyen/reader/ReaderActivity$1$1;

    invoke-direct {p2, p0}, Lcom/doctruyen/reader/ReaderActivity$1$1;-><init>(Lcom/doctruyen/reader/ReaderActivity$1;)V

    invoke-virtual {p1, p2}, Lcom/doctruyen/tts/TtsPlaybackService;->setOnTtsEventListener(Lcom/doctruyen/tts/TtsPlaybackService$OnTtsEventListener;)V

    .line 262
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 266
    iget-object p1, p0, Lcom/doctruyen/reader/ReaderActivity$1;->this$0:Lcom/doctruyen/reader/ReaderActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/doctruyen/reader/ReaderActivity;->access$002(Lcom/doctruyen/reader/ReaderActivity;Lcom/doctruyen/tts/TtsPlaybackService;)Lcom/doctruyen/tts/TtsPlaybackService;

    .line 267
    iget-object p1, p0, Lcom/doctruyen/reader/ReaderActivity$1;->this$0:Lcom/doctruyen/reader/ReaderActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/doctruyen/reader/ReaderActivity;->access$102(Lcom/doctruyen/reader/ReaderActivity;Z)Z

    .line 268
    return-void
.end method
