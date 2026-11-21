.class Lcom/doctruyen/ui/ComicTabHelper$1;
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


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/widget/LinearLayout;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 96
    iput-object p1, p0, Lcom/doctruyen/ui/ComicTabHelper$1;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/doctruyen/ui/ComicTabHelper$1;->val$container:Landroid/widget/LinearLayout;

    iput-boolean p3, p0, Lcom/doctruyen/ui/ComicTabHelper$1;->val$isDarkMode:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 99
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/doctruyen/ui/ComicTabHelper$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 100
    const-string v0, "X\u00e1c nh\u1eadn"

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 101
    const-string v0, "B\u1ea1n c\u00f3 ch\u1eafc ch\u1eafn mu\u1ed1n x\u00f3a to\u00e0n b\u1ed9 l\u1ecbch s\u1eed \u0111\u1ecdc truy\u1ec7n tranh?"

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/doctruyen/ui/ComicTabHelper$1$1;

    invoke-direct {v0, p0}, Lcom/doctruyen/ui/ComicTabHelper$1$1;-><init>(Lcom/doctruyen/ui/ComicTabHelper$1;)V

    .line 102
    const-string v1, "X\u00f3a t\u1ea5t c\u1ea3"

    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 110
    const-string v0, "H\u1ee7y"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 111
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 112
    return-void
.end method
