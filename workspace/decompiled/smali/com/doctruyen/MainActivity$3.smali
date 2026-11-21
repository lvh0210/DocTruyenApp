.class public final synthetic Lcom/doctruyen/MainActivity$3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lcom/doctruyen/MainActivity;"
    method = "lambda$refreshResumeCard$13"
    proto = "(Lcom/doctruyen/data/AppDatabase$HistoryItem;Landroid/view/View;)V"
.end annotation


# instance fields
.field public final synthetic f$0:Lcom/doctruyen/MainActivity;

.field public final synthetic f$1:Lcom/doctruyen/data/AppDatabase$HistoryItem;


# direct methods
.method public synthetic constructor <init>(Lcom/doctruyen/MainActivity;Lcom/doctruyen/data/AppDatabase$HistoryItem;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/doctruyen/MainActivity$3;->f$0:Lcom/doctruyen/MainActivity;

    iput-object p2, p0, Lcom/doctruyen/MainActivity$3;->f$1:Lcom/doctruyen/data/AppDatabase$HistoryItem;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/doctruyen/MainActivity$3;->f$0:Lcom/doctruyen/MainActivity;

    iget-object v1, p0, Lcom/doctruyen/MainActivity$3;->f$1:Lcom/doctruyen/data/AppDatabase$HistoryItem;

    invoke-virtual {v0, v1, p1}, Lcom/doctruyen/MainActivity;->lambda$refreshResumeCard$13$com-doctruyen-MainActivity(Lcom/doctruyen/data/AppDatabase$HistoryItem;Landroid/view/View;)V

    return-void
.end method
