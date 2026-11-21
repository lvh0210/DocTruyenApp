.class public final synthetic Lcom/doctruyen/MainActivity$6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lcom/doctruyen/MainActivity;"
    method = "lambda$refreshResumeCard$10"
    proto = "(Lcom/doctruyen/data/AppDatabase$HistoryItem;Landroid/content/DialogInterface;I)V"
.end annotation


# instance fields
.field public final synthetic f$0:Lcom/doctruyen/MainActivity;

.field public final synthetic f$1:Lcom/doctruyen/data/AppDatabase$HistoryItem;


# direct methods
.method public synthetic constructor <init>(Lcom/doctruyen/MainActivity;Lcom/doctruyen/data/AppDatabase$HistoryItem;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/doctruyen/MainActivity$6;->f$0:Lcom/doctruyen/MainActivity;

    iput-object p2, p0, Lcom/doctruyen/MainActivity$6;->f$1:Lcom/doctruyen/data/AppDatabase$HistoryItem;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/doctruyen/MainActivity$6;->f$0:Lcom/doctruyen/MainActivity;

    iget-object v1, p0, Lcom/doctruyen/MainActivity$6;->f$1:Lcom/doctruyen/data/AppDatabase$HistoryItem;

    invoke-virtual {v0, v1, p1, p2}, Lcom/doctruyen/MainActivity;->lambda$refreshResumeCard$10$com-doctruyen-MainActivity(Lcom/doctruyen/data/AppDatabase$HistoryItem;Landroid/content/DialogInterface;I)V

    return-void
.end method
