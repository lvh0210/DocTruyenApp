.class public final synthetic Lcom/doctruyen/reader/ReaderActivity$36;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lcom/doctruyen/reader/ReaderActivity;"
    method = "lambda$showTimerDialog$20"
    proto = "(Landroid/content/DialogInterface;I)V"
.end annotation


# instance fields
.field public final synthetic f$0:Lcom/doctruyen/reader/ReaderActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/doctruyen/reader/ReaderActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/doctruyen/reader/ReaderActivity$36;->f$0:Lcom/doctruyen/reader/ReaderActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/doctruyen/reader/ReaderActivity$36;->f$0:Lcom/doctruyen/reader/ReaderActivity;

    invoke-virtual {v0, p1, p2}, Lcom/doctruyen/reader/ReaderActivity;->lambda$showTimerDialog$20$com-doctruyen-reader-ReaderActivity(Landroid/content/DialogInterface;I)V

    return-void
.end method
