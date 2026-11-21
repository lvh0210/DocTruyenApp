.class public Lcom/doctruyen/extension/ExtensionEngine$SourceItem;
.super Ljava/lang/Object;
.source "ExtensionEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/doctruyen/extension/ExtensionEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SourceItem"
.end annotation


# instance fields
.field public cover:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public source:Ljava/lang/String;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/doctruyen/extension/ExtensionEngine$SourceItem;->id:Ljava/lang/String;

    .line 23
    iput-object p2, p0, Lcom/doctruyen/extension/ExtensionEngine$SourceItem;->name:Ljava/lang/String;

    .line 24
    iput-object p3, p0, Lcom/doctruyen/extension/ExtensionEngine$SourceItem;->source:Ljava/lang/String;

    .line 25
    iput-object p4, p0, Lcom/doctruyen/extension/ExtensionEngine$SourceItem;->url:Ljava/lang/String;

    .line 26
    iput-object p5, p0, Lcom/doctruyen/extension/ExtensionEngine$SourceItem;->cover:Ljava/lang/String;

    .line 27
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/doctruyen/extension/ExtensionEngine$SourceItem;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/doctruyen/extension/ExtensionEngine$SourceItem;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
