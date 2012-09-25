.class Lcom/android/settings/accounts/AccountSyncSettings$1$1;
.super Ljava/lang/Object;
.source "AccountSyncSettings.java"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/accounts/AccountSyncSettings$1;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/accounts/AccountManagerCallback",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/accounts/AccountSyncSettings$1;


# direct methods
.method constructor <init>(Lcom/android/settings/accounts/AccountSyncSettings$1;)V
    .registers 2
    .parameter

    .prologue
    .line 112
    iput-object p1, p0, Lcom/android/settings/accounts/AccountSyncSettings$1$1;->this$1:Lcom/android/settings/accounts/AccountSyncSettings$1;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/accounts/AccountManagerFuture;)V
    .registers 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/AccountManagerFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, future:Landroid/accounts/AccountManagerFuture;,"Landroid/accounts/AccountManagerFuture<Ljava/lang/Boolean;>;"
    const/4 v4, 0x1

    .line 114
    const/4 v1, 0x1

    .line 115
    .local v1, failed:Z
    iget-object v3, p0, Lcom/android/settings/accounts/AccountSyncSettings$1$1;->this$1:Lcom/android/settings/accounts/AccountSyncSettings$1;

    iget-object v3, v3, Lcom/android/settings/accounts/AccountSyncSettings$1;->this$0:Lcom/android/settings/accounts/AccountSyncSettings;

    invoke-virtual {v3}, Lcom/android/settings/accounts/AccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 116
    .local v0, accountSyncSettingsActivity:Landroid/app/Activity;
    if-eqz v0, :cond_4f

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_4f

    move v2, v4

    .line 118
    .local v2, isActivityFinishable:Z
    :goto_13
    :try_start_13
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_1c
    .catch Landroid/accounts/OperationCanceledException; {:try_start_13 .. :try_end_1c} :catch_69
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_1c} :catch_67
    .catch Landroid/accounts/AuthenticatorException; {:try_start_13 .. :try_end_1c} :catch_65

    move-result v3

    if-ne v3, v4, :cond_20

    .line 119
    const/4 v1, 0x0

    .line 128
    :cond_20
    :goto_20
    if-eqz v1, :cond_5b

    .line 129
    iget-object v3, p0, Lcom/android/settings/accounts/AccountSyncSettings$1$1;->this$1:Lcom/android/settings/accounts/AccountSyncSettings$1;

    iget-object v3, v3, Lcom/android/settings/accounts/AccountSyncSettings$1;->this$0:Lcom/android/settings/accounts/AccountSyncSettings;

    #getter for: Lcom/android/settings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;
    invoke-static {v3}, Lcom/android/settings/accounts/AccountSyncSettings;->access$000(Lcom/android/settings/accounts/AccountSyncSettings;)Landroid/accounts/Account;

    move-result-object v3

    if-eqz v3, :cond_51

    const-string v3, "com.osp.app.signin"

    iget-object v4, p0, Lcom/android/settings/accounts/AccountSyncSettings$1$1;->this$1:Lcom/android/settings/accounts/AccountSyncSettings$1;

    iget-object v4, v4, Lcom/android/settings/accounts/AccountSyncSettings$1;->this$0:Lcom/android/settings/accounts/AccountSyncSettings;

    #getter for: Lcom/android/settings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;
    invoke-static {v4}, Lcom/android/settings/accounts/AccountSyncSettings;->access$000(Lcom/android/settings/accounts/AccountSyncSettings;)Landroid/accounts/Account;

    move-result-object v4

    iget-object v4, v4, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_51

    if-eqz v2, :cond_51

    .line 130
    const-string v3, "AccountSettings"

    const-string v4, "AccountSyncSettings : Remove Samsung account. The activity will be finished!!"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iget-object v3, p0, Lcom/android/settings/accounts/AccountSyncSettings$1$1;->this$1:Lcom/android/settings/accounts/AccountSyncSettings$1;

    iget-object v3, v3, Lcom/android/settings/accounts/AccountSyncSettings$1;->this$0:Lcom/android/settings/accounts/AccountSyncSettings;

    invoke-virtual {v3}, Lcom/android/settings/accounts/AccountSyncSettings;->finish()V

    .line 140
    :cond_4e
    :goto_4e
    return-void

    .line 116
    .end local v2           #isActivityFinishable:Z
    :cond_4f
    const/4 v2, 0x0

    goto :goto_13

    .line 133
    .restart local v2       #isActivityFinishable:Z
    :cond_51
    iget-object v3, p0, Lcom/android/settings/accounts/AccountSyncSettings$1$1;->this$1:Lcom/android/settings/accounts/AccountSyncSettings$1;

    iget-object v3, v3, Lcom/android/settings/accounts/AccountSyncSettings$1;->this$0:Lcom/android/settings/accounts/AccountSyncSettings;

    const/16 v4, 0x65

    #calls: Lcom/android/settings/accounts/AccountSyncSettings;->showDialog(I)V
    invoke-static {v3, v4}, Lcom/android/settings/accounts/AccountSyncSettings;->access$100(Lcom/android/settings/accounts/AccountSyncSettings;I)V

    goto :goto_4e

    .line 136
    :cond_5b
    if-eqz v2, :cond_4e

    .line 137
    iget-object v3, p0, Lcom/android/settings/accounts/AccountSyncSettings$1$1;->this$1:Lcom/android/settings/accounts/AccountSyncSettings$1;

    iget-object v3, v3, Lcom/android/settings/accounts/AccountSyncSettings$1;->this$0:Lcom/android/settings/accounts/AccountSyncSettings;

    invoke-virtual {v3}, Lcom/android/settings/accounts/AccountSyncSettings;->finish()V

    goto :goto_4e

    .line 125
    :catch_65
    move-exception v3

    goto :goto_20

    .line 123
    :catch_67
    move-exception v3

    goto :goto_20

    .line 121
    :catch_69
    move-exception v3

    goto :goto_20
.end method
