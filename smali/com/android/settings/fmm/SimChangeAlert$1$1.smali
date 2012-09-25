.class Lcom/android/settings/fmm/SimChangeAlert$1$1;
.super Ljava/lang/Object;
.source "SimChangeAlert.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fmm/SimChangeAlert$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/fmm/SimChangeAlert$1;


# direct methods
.method constructor <init>(Lcom/android/settings/fmm/SimChangeAlert$1;)V
    .registers 2
    .parameter

    .prologue
    .line 137
    iput-object p1, p0, Lcom/android/settings/fmm/SimChangeAlert$1$1;->this$1:Lcom/android/settings/fmm/SimChangeAlert$1;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 11
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v7, 0x0

    .line 140
    const/4 v2, 0x0

    .line 141
    .local v2, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_3
    iget-object v4, p0, Lcom/android/settings/fmm/SimChangeAlert$1$1;->this$1:Lcom/android/settings/fmm/SimChangeAlert$1;

    iget-object v4, v4, Lcom/android/settings/fmm/SimChangeAlert$1;->this$0:Lcom/android/settings/fmm/SimChangeAlert;

    #getter for: Lcom/android/settings/fmm/SimChangeAlert;->mContent:Landroid/widget/LinearLayout;
    invoke-static {v4}, Lcom/android/settings/fmm/SimChangeAlert;->access$200(Lcom/android/settings/fmm/SimChangeAlert;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_2a

    .line 142
    iget-object v4, p0, Lcom/android/settings/fmm/SimChangeAlert$1$1;->this$1:Lcom/android/settings/fmm/SimChangeAlert$1;

    iget-object v4, v4, Lcom/android/settings/fmm/SimChangeAlert$1;->this$0:Lcom/android/settings/fmm/SimChangeAlert;

    #getter for: Lcom/android/settings/fmm/SimChangeAlert;->mContent:Landroid/widget/LinearLayout;
    invoke-static {v4}, Lcom/android/settings/fmm/SimChangeAlert;->access$200(Lcom/android/settings/fmm/SimChangeAlert;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/fmm/RecipientsMinusView;

    .line 143
    .local v0, ChildView:Lcom/android/settings/fmm/RecipientsMinusView;
    invoke-virtual {v0}, Lcom/android/settings/fmm/RecipientsMinusView;->isExist()Z

    move-result v4

    if-eqz v4, :cond_27

    .line 144
    add-int/lit8 v2, v2, 0x1

    .line 141
    :cond_27
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 149
    .end local v0           #ChildView:Lcom/android/settings/fmm/RecipientsMinusView;
    :cond_2a
    const/4 v4, 0x4

    if-gt v2, v4, :cond_81

    .line 150
    iget-object v4, p0, Lcom/android/settings/fmm/SimChangeAlert$1$1;->this$1:Lcom/android/settings/fmm/SimChangeAlert$1;

    iget-object v4, v4, Lcom/android/settings/fmm/SimChangeAlert$1;->this$0:Lcom/android/settings/fmm/SimChangeAlert;

    #getter for: Lcom/android/settings/fmm/SimChangeAlert;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v4}, Lcom/android/settings/fmm/SimChangeAlert;->access$300(Lcom/android/settings/fmm/SimChangeAlert;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f040053

    iget-object v6, p0, Lcom/android/settings/fmm/SimChangeAlert$1$1;->this$1:Lcom/android/settings/fmm/SimChangeAlert$1;

    iget-object v6, v6, Lcom/android/settings/fmm/SimChangeAlert$1;->this$0:Lcom/android/settings/fmm/SimChangeAlert;

    #getter for: Lcom/android/settings/fmm/SimChangeAlert;->mContent:Landroid/widget/LinearLayout;
    invoke-static {v6}, Lcom/android/settings/fmm/SimChangeAlert;->access$200(Lcom/android/settings/fmm/SimChangeAlert;)Landroid/widget/LinearLayout;

    move-result-object v6

    invoke-virtual {v4, v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 151
    .local v1, MinusLayout:Landroid/widget/LinearLayout;
    iget-object v4, p0, Lcom/android/settings/fmm/SimChangeAlert$1$1;->this$1:Lcom/android/settings/fmm/SimChangeAlert$1;

    iget-object v4, v4, Lcom/android/settings/fmm/SimChangeAlert$1;->this$0:Lcom/android/settings/fmm/SimChangeAlert;

    #getter for: Lcom/android/settings/fmm/SimChangeAlert;->mContent:Landroid/widget/LinearLayout;
    invoke-static {v4}, Lcom/android/settings/fmm/SimChangeAlert;->access$200(Lcom/android/settings/fmm/SimChangeAlert;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 153
    iget-object v4, p0, Lcom/android/settings/fmm/SimChangeAlert$1$1;->this$1:Lcom/android/settings/fmm/SimChangeAlert$1;

    iget-object v4, v4, Lcom/android/settings/fmm/SimChangeAlert$1;->this$0:Lcom/android/settings/fmm/SimChangeAlert;

    #getter for: Lcom/android/settings/fmm/SimChangeAlert;->mContent:Landroid/widget/LinearLayout;
    invoke-static {v4}, Lcom/android/settings/fmm/SimChangeAlert;->access$200(Lcom/android/settings/fmm/SimChangeAlert;)Landroid/widget/LinearLayout;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/fmm/SimChangeAlert$1$1;->this$1:Lcom/android/settings/fmm/SimChangeAlert$1;

    iget-object v5, v5, Lcom/android/settings/fmm/SimChangeAlert$1;->this$0:Lcom/android/settings/fmm/SimChangeAlert;

    #getter for: Lcom/android/settings/fmm/SimChangeAlert;->mContent:Landroid/widget/LinearLayout;
    invoke-static {v5}, Lcom/android/settings/fmm/SimChangeAlert;->access$200(Lcom/android/settings/fmm/SimChangeAlert;)Landroid/widget/LinearLayout;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/fmm/RecipientsMinusView;

    .line 154
    .restart local v0       #ChildView:Lcom/android/settings/fmm/RecipientsMinusView;
    iget-object v4, p0, Lcom/android/settings/fmm/SimChangeAlert$1$1;->this$1:Lcom/android/settings/fmm/SimChangeAlert$1;

    iget-object v4, v4, Lcom/android/settings/fmm/SimChangeAlert$1;->this$0:Lcom/android/settings/fmm/SimChangeAlert;

    #getter for: Lcom/android/settings/fmm/SimChangeAlert;->mText:Landroid/widget/EditText;
    invoke-static {v4}, Lcom/android/settings/fmm/SimChangeAlert;->access$100(Lcom/android/settings/fmm/SimChangeAlert;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/settings/fmm/RecipientsMinusView;->setPhoneNumber(Ljava/lang/String;)V

    .line 157
    .end local v0           #ChildView:Lcom/android/settings/fmm/RecipientsMinusView;
    .end local v1           #MinusLayout:Landroid/widget/LinearLayout;
    :goto_80
    return-void

    .line 156
    :cond_81
    iget-object v4, p0, Lcom/android/settings/fmm/SimChangeAlert$1$1;->this$1:Lcom/android/settings/fmm/SimChangeAlert$1;

    iget-object v4, v4, Lcom/android/settings/fmm/SimChangeAlert$1;->this$0:Lcom/android/settings/fmm/SimChangeAlert;

    invoke-virtual {v4}, Lcom/android/settings/fmm/SimChangeAlert;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f070741

    invoke-static {v4, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_80
.end method
