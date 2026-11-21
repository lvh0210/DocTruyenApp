.class public interface abstract Lcom/doctruyen/tts/TtsPlaybackService$OnTtsEventListener;
.super Ljava/lang/Object;
.source "TtsPlaybackService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/doctruyen/tts/TtsPlaybackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnTtsEventListener"
.end annotation


# virtual methods
.method public abstract onChapterFinished()V
.end method

.method public abstract onParagraphStarted(II)V
.end method

.method public abstract onPlaybackStateChanged(Z)V
.end method

.method public abstract onRequestPrevChapter()V
.end method
