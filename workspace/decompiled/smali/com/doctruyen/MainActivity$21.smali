.class public final synthetic Lcom/doctruyen/MainActivity$21;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lcom/doctruyen/MainActivity;"
    method = "lambda$confirmDeleteBook$19"
    proto = "(Ljava/io/File;Lcom/doctruyen/MainActivity$LocalBookItem;Landroid/content/DialogInterface;I)V"
.end annotation


# instance fields
.field public final synthetic f$0:Lcom/doctruyen/MainActivity;

.field public final synthetic f$1:Ljava/io/File;

.field public final synthetic f$2:Lcom/doctruyen/MainActivity$LocalBookItem;


# direct methods
.method public synthetic constructor <init>(Lcom/doctruyen/MainActivity;Ljava/io/File;Lcom/doctruyen/MainActivity$LocalBookItem;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/doctruyen/MainActivity$21;->f$0:Lcom/doctruyen/MainActivity;

    iput-object p2, p0, Lcom/doctruyen/MainActivity$21;->f$1:Ljava/io/File;

    iput-object p3, p0, Lcom/doctruyen/MainActivity$21;->f$2:Lcom/doctruyen/MainActivity$LocalBookItem;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/doctruyen/MainActivity$21;->f$0:Lcom/doctruyen/MainActivity;

    iget-object v1, p0, Lcom/doctruyen/MainActivity$21;->f$1:Ljava/io/File;

    iget-object v2, p0, Lcom/doctruyen/MainActivity$21;->f$2:Lcom/doctruyen/MainActivity$LocalBookItem;

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/doctruyen/MainActivity;->lambda$confirmDeleteBook$19$com-doctruyen-MainActivity(Ljava/io/File;Lcom/doctruyen/MainActivity$LocalBookItem;Landroid/content/DialogInterface;I)V

    return-void
.end method
