.class Lcom/android/settings/DataUsageSummary$ConfirmDataEnableFragment$2;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/DataUsageSummary$ConfirmDataEnableFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/DataUsageSummary$ConfirmDataEnableFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/DataUsageSummary$ConfirmDataEnableFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 1934
    iput-object p1, p0, Lcom/android/settings/DataUsageSummary$ConfirmDataEnableFragment$2;->this$0:Lcom/android/settings/DataUsageSummary$ConfirmDataEnableFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1936
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary$ConfirmDataEnableFragment$2;->this$0:Lcom/android/settings/DataUsageSummary$ConfirmDataEnableFragment;

    invoke-virtual {v1}, Lcom/android/settings/DataUsageSummary$ConfirmDataEnableFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/DataUsageSummary;

    .line 1937
    .local v0, target:Lcom/android/settings/DataUsageSummary;
    if-eqz v0, :cond_e

    .line 1939
    const/4 v1, 0x0

    #calls: Lcom/android/settings/DataUsageSummary;->setMobileDataEnabled(Z)V
    invoke-static {v0, v1}, Lcom/android/settings/DataUsageSummary;->access$1200(Lcom/android/settings/DataUsageSummary;Z)V

    .line 1941
    :cond_e
    return-void
.end method
