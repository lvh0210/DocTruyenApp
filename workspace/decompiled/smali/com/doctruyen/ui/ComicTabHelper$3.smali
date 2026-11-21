.class Lcom/doctruyen/ui/ComicTabHelper$3;
.super Ljava/lang/Object;
.source "ComicTabHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/doctruyen/ui/ComicTabHelper;->renderComicHistory(Landroid/app/Activity;Landroid/widget/LinearLayout;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$item:Lcom/doctruyen/data/ComicHistoryManager$ComicHistoryItem;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/doctruyen/data/ComicHistoryManager$ComicHistoryItem;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 193
    iput-object p1, p0, Lcom/doctruyen/ui/ComicTabHelper$3;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/doctruyen/ui/ComicTabHelper$3;->val$item:Lcom/doctruyen/data/ComicHistoryManager$ComicHistoryItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 196
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/doctruyen/ui/ComicTabHelper$3;->val$activity:Landroid/app/Activity;

    const-class v1, Lcom/doctruyen/reader/web/WebBrowseActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 197
    iget-object v0, p0, Lcom/doctruyen/ui/ComicTabHelper$3;->val$item:Lcom/doctruyen/data/ComicHistoryManager$ComicHistoryItem;

    iget-object v0, v0, Lcom/doctruyen/data/ComicHistoryManager$ComicHistoryItem;->url:Ljava/lang/String;

    const-string v1, "extra_initial_url"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 198
    iget-object v0, p0, Lcom/doctruyen/ui/ComicTabHelper$3;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 199
    return-void
.end method
