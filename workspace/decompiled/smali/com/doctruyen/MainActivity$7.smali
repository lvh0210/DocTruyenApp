.class public final synthetic Lcom/doctruyen/MainActivity$7;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lcom/doctruyen/MainActivity;"
    method = "lambda$initViews$3"
    proto = "(Landroid/content/DialogInterface;I)V"
.end annotation


# instance fields
.field public final synthetic f$0:Lcom/doctruyen/MainActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/doctruyen/MainActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/doctruyen/MainActivity$7;->f$0:Lcom/doctruyen/MainActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/doctruyen/MainActivity$7;->f$0:Lcom/doctruyen/MainActivity;

    invoke-virtual {v0, p1, p2}, Lcom/doctruyen/MainActivity;->lambda$initViews$3$com-doctruyen-MainActivity(Landroid/content/DialogInterface;I)V

    return-void
.end method
