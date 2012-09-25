.class Lcom/android/settings/fmm/RecipientsMinusView$1;
.super Ljava/lang/Object;
.source "RecipientsMinusView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fmm/RecipientsMinusView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fmm/RecipientsMinusView;


# direct methods
.method constructor <init>(Lcom/android/settings/fmm/RecipientsMinusView;)V
    .registers 2
    .parameter

    .prologue
    .line 48
    iput-object p1, p0, Lcom/android/settings/fmm/RecipientsMinusView$1;->this$0:Lcom/android/settings/fmm/RecipientsMinusView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "arg0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/settings/fmm/RecipientsMinusView$1;->this$0:Lcom/android/settings/fmm/RecipientsMinusView;

    #getter for: Lcom/android/settings/fmm/RecipientsMinusView;->CurrentView:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/settings/fmm/RecipientsMinusView;->access$000(Lcom/android/settings/fmm/RecipientsMinusView;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 52
    iget-object v0, p0, Lcom/android/settings/fmm/RecipientsMinusView$1;->this$0:Lcom/android/settings/fmm/RecipientsMinusView;

    const/4 v1, 0x0

    #setter for: Lcom/android/settings/fmm/RecipientsMinusView;->VisibleView:Z
    invoke-static {v0, v1}, Lcom/android/settings/fmm/RecipientsMinusView;->access$102(Lcom/android/settings/fmm/RecipientsMinusView;Z)Z

    .line 53
    return-void
.end method
