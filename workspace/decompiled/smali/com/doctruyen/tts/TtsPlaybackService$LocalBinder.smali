.class public Lcom/doctruyen/tts/TtsPlaybackService$LocalBinder;
.super Landroid/os/Binder;
.source "TtsPlaybackService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/doctruyen/tts/TtsPlaybackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocalBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/doctruyen/tts/TtsPlaybackService;


# direct methods
.method public constructor <init>(Lcom/doctruyen/tts/TtsPlaybackService;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 73
    iput-object p1, p0, Lcom/doctruyen/tts/TtsPlaybackService$LocalBinder;->this$0:Lcom/doctruyen/tts/TtsPlaybackService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public getService()Lcom/doctruyen/tts/TtsPlaybackService;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/doctruyen/tts/TtsPlaybackService$LocalBinder;->this$0:Lcom/doctruyen/tts/TtsPlaybackService;

    return-object v0
.end method
