.class public final synthetic Lcom/doctruyen/tts/TtsPlaybackService$4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lcom/doctruyen/tts/TtsPlaybackService;"
    method = "pause"
    proto = "()V"
.end annotation


# instance fields
.field public final synthetic f$0:Lcom/doctruyen/tts/TtsPlaybackService;


# direct methods
.method public synthetic constructor <init>(Lcom/doctruyen/tts/TtsPlaybackService;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/doctruyen/tts/TtsPlaybackService$4;->f$0:Lcom/doctruyen/tts/TtsPlaybackService;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/doctruyen/tts/TtsPlaybackService$4;->f$0:Lcom/doctruyen/tts/TtsPlaybackService;

    invoke-virtual {v0}, Lcom/doctruyen/tts/TtsPlaybackService;->pause()V

    return-void
.end method
