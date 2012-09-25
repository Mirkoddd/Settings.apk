.class Lcom/android/settings/DataUsageSummary$ConfirmLimitFragment$1;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/DataUsageSummary$ConfirmLimitFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/DataUsageSummary$ConfirmLimitFragment;

.field final synthetic val$limitBytes:J


# direct methods
.method constructor <init>(Lcom/android/settings/DataUsageSummary$ConfirmLimitFragment;J)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 1700
    iput-object p1, p0, Lcom/android/settings/DataUsageSummary$ConfirmLimitFragment$1;->this$0:Lcom/android/settings/DataUsageSummary$ConfirmLimitFragment;

    iput-wide p2, p0, Lcom/android/settings/DataUsageSummary$ConfirmLimitFragment$1;->val$limitBytes:J

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 10
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1702
    iget-object v3, p0, Lcom/android/settings/DataUsageSummary$ConfirmLimitFragment$1;->this$0:Lcom/android/settings/DataUsageSummary$ConfirmLimitFragment;

    invoke-virtual {v3}, Lcom/android/settings/DataUsageSummary$ConfirmLimitFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/DataUsageSummary;

    .line 1703
    .local v0, target:Lcom/android/settings/DataUsageSummary;
    if-eqz v0, :cond_21

    .line 1704
    iget-wide v3, p0, Lcom/android/settings/DataUsageSummary$ConfirmLimitFragment$1;->val$limitBytes:J

    #calls: Lcom/android/settings/DataUsageSummary;->setPolicyLimitBytes(J)V
    invoke-static {v0, v3, v4}, Lcom/android/settings/DataUsageSummary;->access$1500(Lcom/android/settings/DataUsageSummary;J)V

    .line 1706
    #calls: Lcom/android/settings/DataUsageSummary;->getPolicyWarningBytes()J
    invoke-static {v0}, Lcom/android/settings/DataUsageSummary;->access$3100(Lcom/android/settings/DataUsageSummary;)J

    move-result-wide v1

    .line 1707
    .local v1, warningBytes:J
    iget-wide v3, p0, Lcom/android/settings/DataUsageSummary$ConfirmLimitFragment$1;->val$limitBytes:J

    cmp-long v3, v1, v3

    if-ltz v3, :cond_21

    .line 1708
    iget-wide v3, p0, Lcom/android/settings/DataUsageSummary$ConfirmLimitFragment$1;->val$limitBytes:J

    const-wide/16 v5, 0x1

    sub-long/2addr v3, v5

    #calls: Lcom/android/settings/DataUsageSummary;->setPolicyWarningBytes(J)V
    invoke-static {v0, v3, v4}, Lcom/android/settings/DataUsageSummary;->access$2800(Lcom/android/settings/DataUsageSummary;J)V

    .line 1712
    .end local v1           #warningBytes:J
    :cond_21
    return-void
.end method
