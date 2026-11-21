.class public final synthetic Lcom/doctruyen/MainActivity$22;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lcom/doctruyen/MainActivity;"
    method = "lambda$confirmClearAllHistory$21"
    proto = "(Ljava/util/List;Landroid/content/DialogInterface;I)V"
.end annotation


# instance fields
.field public final synthetic f$0:Lcom/doctruyen/MainActivity;

.field public final synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/doctruyen/MainActivity;Ljava/util/List;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/doctruyen/MainActivity$22;->f$0:Lcom/doctruyen/MainActivity;

    iput-object p2, p0, Lcom/doctruyen/MainActivity$22;->f$1:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/doctruyen/MainActivity$22;->f$0:Lcom/doctruyen/MainActivity;

    iget-object v1, p0, Lcom/doctruyen/MainActivity$22;->f$1:Ljava/util/List;

    invoke-virtual {v0, v1, p1, p2}, Lcom/doctruyen/MainActivity;->lambda$confirmClearAllHistory$21$com-doctruyen-MainActivity(Ljava/util/List;Landroid/content/DialogInterface;I)V

    return-void
.end method
