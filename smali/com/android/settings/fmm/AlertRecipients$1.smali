.class Lcom/android/settings/fmm/AlertRecipients$1;
.super Ljava/lang/Object;
.source "AlertRecipients.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fmm/AlertRecipients;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fmm/AlertRecipients;


# direct methods
.method constructor <init>(Lcom/android/settings/fmm/AlertRecipients;)V
    .registers 2
    .parameter

    .prologue
    .line 57
    iput-object p1, p0, Lcom/android/settings/fmm/AlertRecipients$1;->this$0:Lcom/android/settings/fmm/AlertRecipients;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "arg0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/settings/fmm/AlertRecipients$1;->this$0:Lcom/android/settings/fmm/AlertRecipients;

    #getter for: Lcom/android/settings/fmm/AlertRecipients;->PlusLayout:Lcom/android/settings/fmm/RecipientsPlusView;
    invoke-static {v0}, Lcom/android/settings/fmm/AlertRecipients;->access$000(Lcom/android/settings/fmm/AlertRecipients;)Lcom/android/settings/fmm/RecipientsPlusView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/fmm/RecipientsPlusView;->DoSave()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 61
    iget-object v0, p0, Lcom/android/settings/fmm/AlertRecipients$1;->this$0:Lcom/android/settings/fmm/AlertRecipients;

    invoke-virtual {v0}, Lcom/android/settings/fmm/AlertRecipients;->finish()V

    .line 63
    :cond_11
    return-void
.end method
