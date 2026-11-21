.class Lcom/doctruyen/ui/ComicTabHelper$1$1;
.super Ljava/lang/Object;
.source "ComicTabHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/doctruyen/ui/ComicTabHelper$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/doctruyen/ui/ComicTabHelper$1;


# direct methods
.method constructor <init>(Lcom/doctruyen/ui/ComicTabHelper$1;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/doctruyen/ui/ComicTabHelper$1$1;->this$0:Lcom/doctruyen/ui/ComicTabHelper$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 105
    iget-object p1, p0, Lcom/doctruyen/ui/ComicTabHelper$1$1;->this$0:Lcom/doctruyen/ui/ComicTabHelper$1;

    iget-object p1, p1, Lcom/doctruyen/ui/ComicTabHelper$1;->val$activity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/doctruyen/data/ComicHistoryManager;->clearAll(Landroid/content/Context;)V

    .line 106
    iget-object p1, p0, Lcom/doctruyen/ui/ComicTabHelper$1$1;->this$0:Lcom/doctruyen/ui/ComicTabHelper$1;

    iget-object p1, p1, Lcom/doctruyen/ui/ComicTabHelper$1;->val$activity:Landroid/app/Activity;

    iget-object p2, p0, Lcom/doctruyen/ui/ComicTabHelper$1$1;->this$0:Lcom/doctruyen/ui/ComicTabHelper$1;

    iget-object p2, p2, Lcom/doctruyen/ui/ComicTabHelper$1;->val$container:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/doctruyen/ui/ComicTabHelper$1$1;->this$0:Lcom/doctruyen/ui/ComicTabHelper$1;

    iget-boolean v0, v0, Lcom/doctruyen/ui/ComicTabHelper$1;->val$isDarkMode:Z

    invoke-static {p1, p2, v0}, Lcom/doctruyen/ui/ComicTabHelper;->renderComicHistory(Landroid/app/Activity;Landroid/widget/LinearLayout;Z)V

    .line 107
    iget-object p1, p0, Lcom/doctruyen/ui/ComicTabHelper$1$1;->this$0:Lcom/doctruyen/ui/ComicTabHelper$1;

    iget-object p1, p1, Lcom/doctruyen/ui/ComicTabHelper$1;->val$activity:Landroid/app/Activity;

    const-string p2, "\u0110\u00e3 x\u00f3a to\u00e0n b\u1ed9 l\u1ecbch s\u1eed truy\u1ec7n tranh"

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 108
    return-void
.end method
