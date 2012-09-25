.class Lcom/android/settings/fmm/AlertRecipients$2;
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
    .line 70
    iput-object p1, p0, Lcom/android/settings/fmm/AlertRecipients$2;->this$0:Lcom/android/settings/fmm/AlertRecipients;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "arg0"

    .prologue
    .line 73
    new-instance v0, Landroid/content/Intent;

    const-string v1, "intent.action.INTERACTION_TAB"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 74
    .local v0, phonebookIntent:Landroid/content/Intent;
    const-string v1, "additional"

    const-string v2, "phone-multi"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 75
    const-string v1, "existingRecipientCount"

    iget-object v2, p0, Lcom/android/settings/fmm/AlertRecipients$2;->this$0:Lcom/android/settings/fmm/AlertRecipients;

    #getter for: Lcom/android/settings/fmm/AlertRecipients;->PlusLayout:Lcom/android/settings/fmm/RecipientsPlusView;
    invoke-static {v2}, Lcom/android/settings/fmm/AlertRecipients;->access$000(Lcom/android/settings/fmm/AlertRecipients;)Lcom/android/settings/fmm/RecipientsPlusView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/fmm/RecipientsPlusView;->getCountFilledRecipient()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 76
    const-string v1, "maxRecipientCount"

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 77
    iget-object v1, p0, Lcom/android/settings/fmm/AlertRecipients$2;->this$0:Lcom/android/settings/fmm/AlertRecipients;

    const/16 v2, 0x65

    invoke-virtual {v1, v0, v2}, Lcom/android/settings/fmm/AlertRecipients;->startActivityForResult(Landroid/content/Intent;I)V

    .line 78
    return-void
.end method
