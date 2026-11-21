.class Lcom/doctruyen/ui/UiModernizer$1;
.super Ljava/lang/Object;
.source "UiModernizer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/doctruyen/ui/UiModernizer;->createMenuExitButton(Landroid/app/Activity;Z)Landroid/widget/Button;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/doctruyen/ui/UiModernizer$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 74
    iget-object p1, p0, Lcom/doctruyen/ui/UiModernizer$1;->val$activity:Landroid/app/Activity;

    if-eqz p1, :cond_0

    .line 75
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 77
    :cond_0
    return-void
.end method
