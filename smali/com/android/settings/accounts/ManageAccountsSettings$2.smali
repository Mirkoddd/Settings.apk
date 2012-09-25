.class Lcom/android/settings/accounts/ManageAccountsSettings$2;
.super Ljava/lang/Object;
.source "ManageAccountsSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/accounts/ManageAccountsSettings;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accounts/ManageAccountsSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/accounts/ManageAccountsSettings;)V
    .registers 2
    .parameter

    .prologue
    .line 212
    iput-object p1, p0, Lcom/android/settings/accounts/ManageAccountsSettings$2;->this$0:Lcom/android/settings/accounts/ManageAccountsSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 5
    .parameter "preference"
    .parameter "value"

    .prologue
    .line 216
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 218
    .local v0, enable:Z
    iget-object v1, p0, Lcom/android/settings/accounts/ManageAccountsSettings$2;->this$0:Lcom/android/settings/accounts/ManageAccountsSettings;

    #getter for: Lcom/android/settings/accounts/ManageAccountsSettings;->mSwitchPreference:Landroid/preference/SwitchPreference;
    invoke-static {v1}, Lcom/android/settings/accounts/ManageAccountsSettings;->access$000(Lcom/android/settings/accounts/ManageAccountsSettings;)Landroid/preference/SwitchPreference;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-ne v1, v0, :cond_14

    .line 219
    const/4 v1, 0x1

    .line 226
    :goto_13
    return v1

    .line 222
    :cond_14
    iget-object v1, p0, Lcom/android/settings/accounts/ManageAccountsSettings$2;->this$0:Lcom/android/settings/accounts/ManageAccountsSettings;

    #getter for: Lcom/android/settings/accounts/ManageAccountsSettings;->mSwitchPreference:Landroid/preference/SwitchPreference;
    invoke-static {v1}, Lcom/android/settings/accounts/ManageAccountsSettings;->access$000(Lcom/android/settings/accounts/ManageAccountsSettings;)Landroid/preference/SwitchPreference;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 223
    invoke-static {v0}, Landroid/content/ContentResolver;->setMasterSyncAutomatically(Z)V

    .line 224
    iget-object v1, p0, Lcom/android/settings/accounts/ManageAccountsSettings$2;->this$0:Lcom/android/settings/accounts/ManageAccountsSettings;

    invoke-virtual {v1}, Lcom/android/settings/accounts/ManageAccountsSettings;->onSyncStateUpdated()V

    .line 226
    const/4 v1, 0x0

    goto :goto_13
.end method
