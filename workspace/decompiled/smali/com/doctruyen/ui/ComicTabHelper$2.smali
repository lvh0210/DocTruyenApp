.class Lcom/doctruyen/ui/ComicTabHelper$2;
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

.field final synthetic val$container:Landroid/widget/LinearLayout;

.field final synthetic val$isDarkMode:Z

.field final synthetic val$item:Lcom/doctruyen/data/ComicHistoryManager$ComicHistoryItem;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/doctruyen/data/ComicHistoryManager$ComicHistoryItem;Landroid/widget/LinearLayout;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 151
    iput-object p1, p0, Lcom/doctruyen/ui/ComicTabHelper$2;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/doctruyen/ui/ComicTabHelper$2;->val$item:Lcom/doctruyen/data/ComicHistoryManager$ComicHistoryItem;

    iput-object p3, p0, Lcom/doctruyen/ui/ComicTabHelper$2;->val$container:Landroid/widget/LinearLayout;

    iput-boolean p4, p0, Lcom/doctruyen/ui/ComicTabHelper$2;->val$isDarkMode:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 154
    iget-object p1, p0, Lcom/doctruyen/ui/ComicTabHelper$2;->val$activity:Landroid/app/Activity;

    iget-object v0, p0, Lcom/doctruyen/ui/ComicTabHelper$2;->val$item:Lcom/doctruyen/data/ComicHistoryManager$ComicHistoryItem;

    iget-object v0, v0, Lcom/doctruyen/data/ComicHistoryManager$ComicHistoryItem;->url:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/doctruyen/data/ComicHistoryManager;->deleteItem(Landroid/content/Context;Ljava/lang/String;)V

    .line 155
    iget-object p1, p0, Lcom/doctruyen/ui/ComicTabHelper$2;->val$activity:Landroid/app/Activity;

    iget-object v0, p0, Lcom/doctruyen/ui/ComicTabHelper$2;->val$container:Landroid/widget/LinearLayout;

    iget-boolean v1, p0, Lcom/doctruyen/ui/ComicTabHelper$2;->val$isDarkMode:Z

    invoke-static {p1, v0, v1}, Lcom/doctruyen/ui/ComicTabHelper;->renderComicHistory(Landroid/app/Activity;Landroid/widget/LinearLayout;Z)V

    .line 156
    return-void
.end method
