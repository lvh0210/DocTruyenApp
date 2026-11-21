.class public final synthetic Lcom/doctruyen/MainActivity$17;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lcom/doctruyen/MainActivity;"
    method = "lambda$confirmDeleteBook$20"
    proto = "(Lcom/doctruyen/MainActivity$LocalBookItem;ZLjava/io/File;Landroid/content/DialogInterface;I)V"
.end annotation


# instance fields
.field public final synthetic f$0:Lcom/doctruyen/MainActivity;

.field public final synthetic f$1:Lcom/doctruyen/MainActivity$LocalBookItem;

.field public final synthetic f$2:Z

.field public final synthetic f$3:Ljava/io/File;


# direct methods
.method public synthetic constructor <init>(Lcom/doctruyen/MainActivity;Lcom/doctruyen/MainActivity$LocalBookItem;ZLjava/io/File;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/doctruyen/MainActivity$17;->f$0:Lcom/doctruyen/MainActivity;

    iput-object p2, p0, Lcom/doctruyen/MainActivity$17;->f$1:Lcom/doctruyen/MainActivity$LocalBookItem;

    iput-boolean p3, p0, Lcom/doctruyen/MainActivity$17;->f$2:Z

    iput-object p4, p0, Lcom/doctruyen/MainActivity$17;->f$3:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    .line 0
    iget-object v0, p0, Lcom/doctruyen/MainActivity$17;->f$0:Lcom/doctruyen/MainActivity;

    iget-object v1, p0, Lcom/doctruyen/MainActivity$17;->f$1:Lcom/doctruyen/MainActivity$LocalBookItem;

    iget-boolean v2, p0, Lcom/doctruyen/MainActivity$17;->f$2:Z

    iget-object v3, p0, Lcom/doctruyen/MainActivity$17;->f$3:Ljava/io/File;

    move-object v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/doctruyen/MainActivity;->lambda$confirmDeleteBook$20$com-doctruyen-MainActivity(Lcom/doctruyen/MainActivity$LocalBookItem;ZLjava/io/File;Landroid/content/DialogInterface;I)V

    return-void
.end method
