.class public Lcom/android/settings/accounts/ManageAccountsSettings;
.super Lcom/android/settings/accounts/AccountPreferenceBase;
.source "ManageAccountsSettings.java"

# interfaces
.implements Landroid/accounts/OnAccountsUpdateListener;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/settings/DialogCreatable;


# instance fields
.field private mAddAccount:Landroid/view/MenuItem;

.field private mAddAccountButton1:Landroid/widget/Button;

.field private mAddAccountButton2:Landroid/widget/Button;

.field private mAuthorities:[Ljava/lang/String;

.field private mAutoSyncSwitch:Landroid/widget/Switch;

.field private mCancelSync:Landroid/view/MenuItem;

.field private mDialogFragment:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mErrorInfoIcon:Landroid/widget/ImageView;

.field private mErrorInfoView:Landroid/widget/TextView;

.field private mManageAccountsCategory:Landroid/preference/PreferenceCategory;

.field private mOneButtonLayout:Landroid/widget/LinearLayout;

.field private mSwitchPreference:Landroid/preference/SwitchPreference;

.field private mSyncAll:Landroid/view/MenuItem;

.field private mSyncAllButton:Landroid/widget/Button;

.field private mTelMgr:Landroid/telephony/TelephonyManager;

.field private mTwoButtonsLayout:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/settings/accounts/AccountPreferenceBase;-><init>()V

    .line 111
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/accounts/ManageAccountsSettings;)Landroid/preference/SwitchPreference;
    .registers 2
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mSwitchPreference:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method private cancelSyncAllForEnabledProviders()V
    .registers 2

    .prologue
    .line 676
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/accounts/ManageAccountsSettings;->requestOrCancelSyncAllForEnabledProviders(Z)V

    .line 677
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 678
    return-void
.end method

.method private requestOrCancelSyncAll(Landroid/accounts/Account;Ljava/lang/String;Z)V
    .registers 8
    .parameter "account"
    .parameter "authority"
    .parameter "flag"

    .prologue
    .line 718
    if-eqz p3, :cond_3d

    .line 719
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 720
    .local v0, extras:Landroid/os/Bundle;
    const-string v1, "force"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 721
    const-string v1, "AccountSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ManageAccountsSettings : request : account = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, p1}, Lcom/android/settings/accounts/ManageAccountsSettings;->getProviderNameForType(Landroid/accounts/Account;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ], authority = [ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    invoke-static {p1, p2, v0}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 729
    .end local v0           #extras:Landroid/os/Bundle;
    :goto_3c
    return-void

    .line 725
    :cond_3d
    const-string v1, "AccountSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ManageAccountsSettings : cancel : account = [ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, p1}, Lcom/android/settings/accounts/ManageAccountsSettings;->getProviderNameForType(Landroid/accounts/Account;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ], authority = [ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    invoke-static {p1, p2}, Landroid/content/ContentResolver;->cancelSync(Landroid/accounts/Account;Ljava/lang/String;)V

    goto :goto_3c
.end method

.method private requestOrCancelSyncAllForEnabledProviders(Z)V
    .registers 13
    .parameter "startSync"

    .prologue
    .line 682
    const/4 v3, 0x0

    .line 684
    .local v3, count:I
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_57

    .line 685
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    invoke-virtual {v8}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v3

    .line 690
    :goto_13
    const/4 v4, 0x0

    .local v4, i:I
    :goto_14
    if-ge v4, v3, :cond_8c

    .line 692
    const/4 v6, 0x0

    .line 694
    .local v6, pref:Lcom/android/settings/AccountPreference;
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_5e

    .line 695
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    invoke-virtual {v8, v4}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v6

    .end local v6           #pref:Lcom/android/settings/AccountPreference;
    check-cast v6, Lcom/android/settings/AccountPreference;

    .line 700
    .restart local v6       #pref:Lcom/android/settings/AccountPreference;
    :goto_2b
    invoke-virtual {v6}, Lcom/android/settings/AccountPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    .line 701
    .local v0, account:Landroid/accounts/Account;
    invoke-virtual {v6}, Lcom/android/settings/AccountPreference;->getAuthorities()Ljava/util/ArrayList;

    move-result-object v1

    .line 702
    .local v1, authorities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v1, :cond_67

    .line 703
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_39
    :goto_39
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_89

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 704
    .local v2, authority:Ljava/lang/String;
    invoke-static {v0, v2}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v7

    .line 705
    .local v7, syncEnabled:Z
    iget-object v8, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mAutoSyncSwitch:Landroid/widget/Switch;

    invoke-virtual {v8}, Landroid/widget/Switch;->isChecked()Z

    move-result v8

    if-eqz v8, :cond_53

    if-eqz v7, :cond_39

    .line 706
    :cond_53
    invoke-direct {p0, v0, v2, p1}, Lcom/android/settings/accounts/ManageAccountsSettings;->requestOrCancelSyncAll(Landroid/accounts/Account;Ljava/lang/String;Z)V

    goto :goto_39

    .line 687
    .end local v0           #account:Landroid/accounts/Account;
    .end local v1           #authorities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2           #authority:Ljava/lang/String;
    .end local v4           #i:I
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v6           #pref:Lcom/android/settings/AccountPreference;
    .end local v7           #syncEnabled:Z
    :cond_57
    iget-object v8, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mManageAccountsCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v8}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v3

    goto :goto_13

    .line 697
    .restart local v4       #i:I
    .restart local v6       #pref:Lcom/android/settings/AccountPreference;
    :cond_5e
    iget-object v8, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mManageAccountsCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v8, v4}, Landroid/preference/PreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v6

    .end local v6           #pref:Lcom/android/settings/AccountPreference;
    check-cast v6, Lcom/android/settings/AccountPreference;

    .restart local v6       #pref:Lcom/android/settings/AccountPreference;
    goto :goto_2b

    .line 710
    .restart local v0       #account:Landroid/accounts/Account;
    .restart local v1       #authorities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_67
    const-string v8, "AccountSettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ManageAccountsSettings : requestOrCancelSyncAllForEnabledProviders : no syncadapters found for [ "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0, v0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getProviderNameForType(Landroid/accounts/Account;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " ]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    :cond_89
    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    .line 715
    .end local v0           #account:Landroid/accounts/Account;
    .end local v1           #authorities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6           #pref:Lcom/android/settings/AccountPreference;
    :cond_8c
    return-void
.end method

.method private setTextSyncAll(Z)V
    .registers 18
    .parameter "bAnySyncEnabledAuth"

    .prologue
    .line 458
    invoke-static {}, Landroid/content/ContentResolver;->getCurrentSync()Landroid/content/SyncInfo;

    move-result-object v4

    .line 459
    .local v4, currentSync:Landroid/content/SyncInfo;
    if-eqz v4, :cond_58

    const/4 v9, 0x1

    .line 460
    .local v9, isSyncActive:Z
    :goto_7
    const/4 v8, 0x0

    .line 461
    .local v8, isAnyAuthority:Z
    const/4 v12, 0x0

    .line 463
    .local v12, syncPendingCount:I
    const/4 v11, 0x0

    .line 464
    .local v11, preferenceCount:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-static {v13}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v13

    if-nez v13, :cond_5a

    .line 465
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v13

    invoke-virtual {v13}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v11

    .line 470
    :goto_1c
    const/4 v6, 0x0

    .local v6, i:I
    :goto_1d
    if-ge v6, v11, :cond_95

    .line 472
    const/4 v10, 0x0

    .line 473
    .local v10, pref:Lcom/android/settings/AccountPreference;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-static {v13}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v13

    if-nez v13, :cond_63

    .line 474
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v13

    invoke-virtual {v13, v6}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v10

    .end local v10           #pref:Lcom/android/settings/AccountPreference;
    check-cast v10, Lcom/android/settings/AccountPreference;

    .line 479
    .restart local v10       #pref:Lcom/android/settings/AccountPreference;
    :goto_34
    invoke-virtual {v10}, Lcom/android/settings/AccountPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v1

    .line 480
    .local v1, account:Landroid/accounts/Account;
    invoke-virtual {v10}, Lcom/android/settings/AccountPreference;->getAuthorities()Ljava/util/ArrayList;

    move-result-object v2

    .line 481
    .local v2, authorities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v2, :cond_6e

    .line 482
    const/4 v8, 0x1

    .line 483
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :cond_43
    :goto_43
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_92

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 484
    .local v3, authority:Ljava/lang/String;
    invoke-static {v1, v3}, Landroid/content/ContentResolver;->isSyncPending(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_43

    .line 485
    add-int/lit8 v12, v12, 0x1

    goto :goto_43

    .line 459
    .end local v1           #account:Landroid/accounts/Account;
    .end local v2           #authorities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3           #authority:Ljava/lang/String;
    .end local v6           #i:I
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v8           #isAnyAuthority:Z
    .end local v9           #isSyncActive:Z
    .end local v10           #pref:Lcom/android/settings/AccountPreference;
    .end local v11           #preferenceCount:I
    .end local v12           #syncPendingCount:I
    :cond_58
    const/4 v9, 0x0

    goto :goto_7

    .line 467
    .restart local v8       #isAnyAuthority:Z
    .restart local v9       #isSyncActive:Z
    .restart local v11       #preferenceCount:I
    .restart local v12       #syncPendingCount:I
    :cond_5a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/accounts/ManageAccountsSettings;->mManageAccountsCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v13}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v11

    goto :goto_1c

    .line 476
    .restart local v6       #i:I
    .restart local v10       #pref:Lcom/android/settings/AccountPreference;
    :cond_63
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/accounts/ManageAccountsSettings;->mManageAccountsCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v13, v6}, Landroid/preference/PreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v10

    .end local v10           #pref:Lcom/android/settings/AccountPreference;
    check-cast v10, Lcom/android/settings/AccountPreference;

    .restart local v10       #pref:Lcom/android/settings/AccountPreference;
    goto :goto_34

    .line 489
    .restart local v1       #account:Landroid/accounts/Account;
    .restart local v2       #authorities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_6e
    const-string v13, "AccountSettings"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "ManageAccountsSettings : setSyncButtonText : no syncadapters found for [ "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/settings/accounts/ManageAccountsSettings;->getProviderNameForType(Landroid/accounts/Account;)Ljava/lang/CharSequence;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " ]"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    :cond_92
    add-int/lit8 v6, v6, 0x1

    goto :goto_1d

    .line 496
    .end local v1           #account:Landroid/accounts/Account;
    .end local v2           #authorities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v10           #pref:Lcom/android/settings/AccountPreference;
    :cond_95
    if-nez v11, :cond_d3

    .line 500
    :try_start_97
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-static {v13}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v13

    if-nez v13, :cond_b9

    .line 501
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/accounts/ManageAccountsSettings;->mOneButtonLayout:Landroid/widget/LinearLayout;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 502
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/accounts/ManageAccountsSettings;->mTwoButtonsLayout:Landroid/widget/LinearLayout;

    const/4 v14, 0x4

    invoke-virtual {v13, v14}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 507
    :goto_b1
    const-string v13, "AccountSettings"

    const-string v14, "ManageAccountsSettings : Sync button is removed !!"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    .end local p1
    :goto_b8
    return-void

    .line 504
    .restart local p1
    :cond_b9
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/accounts/ManageAccountsSettings;->mSyncAll:Landroid/view/MenuItem;

    const/4 v14, 0x0

    invoke-interface {v13, v14}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 505
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/accounts/ManageAccountsSettings;->mCancelSync:Landroid/view/MenuItem;

    const/4 v14, 0x0

    invoke-interface {v13, v14}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;
    :try_end_c9
    .catch Ljava/lang/NullPointerException; {:try_start_97 .. :try_end_c9} :catch_ca

    goto :goto_b1

    .line 546
    .end local p1
    :catch_ca
    move-exception v5

    .line 547
    .local v5, e:Ljava/lang/NullPointerException;
    const-string v13, "AccountSettings"

    const-string v14, "ManageAccountsSettings : setTextSyncAll() : Null Pointer Exception!!!"

    invoke-static {v13, v14, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b8

    .line 508
    .end local v5           #e:Ljava/lang/NullPointerException;
    .restart local p1
    :cond_d3
    if-nez v9, :cond_177

    if-nez v12, :cond_177

    .line 511
    :try_start_d7
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-static {v13}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v13

    if-nez v13, :cond_143

    .line 512
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/accounts/ManageAccountsSettings;->mOneButtonLayout:Landroid/widget/LinearLayout;

    const/4 v14, 0x4

    invoke-virtual {v13, v14}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 513
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/accounts/ManageAccountsSettings;->mTwoButtonsLayout:Landroid/widget/LinearLayout;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 514
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/accounts/ManageAccountsSettings;->mSyncAllButton:Landroid/widget/Button;

    const v14, 0x7f0707e7

    invoke-virtual {v13, v14}, Landroid/widget/Button;->setText(I)V

    .line 515
    if-eqz v8, :cond_13a

    .line 516
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/accounts/ManageAccountsSettings;->mSyncAllButton:Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/accounts/ManageAccountsSettings;->mAutoSyncSwitch:Landroid/widget/Switch;

    invoke-virtual {v14}, Landroid/widget/Switch;->isChecked()Z

    move-result v14

    if-eqz v14, :cond_137

    .end local p1
    :goto_10b
    move/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 520
    :goto_110
    const-string v13, "AccountSettings"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "ManageAccountsSettings : Sync button is [ Sync all ] and enable is [ "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/accounts/ManageAccountsSettings;->mSyncAllButton:Landroid/widget/Button;

    invoke-virtual {v15}, Landroid/widget/Button;->isEnabled()Z

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " ]"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b8

    .line 516
    .restart local p1
    :cond_137
    const/16 p1, 0x1

    goto :goto_10b

    .line 518
    :cond_13a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/accounts/ManageAccountsSettings;->mSyncAllButton:Landroid/widget/Button;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_110

    .line 522
    :cond_143
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/accounts/ManageAccountsSettings;->mSyncAll:Landroid/view/MenuItem;

    const/4 v14, 0x1

    invoke-interface {v13, v14}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 523
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/accounts/ManageAccountsSettings;->mCancelSync:Landroid/view/MenuItem;

    const/4 v14, 0x0

    invoke-interface {v13, v14}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 524
    if-eqz v8, :cond_16d

    .line 525
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/accounts/ManageAccountsSettings;->mSyncAll:Landroid/view/MenuItem;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/accounts/ManageAccountsSettings;->mAutoSyncSwitch:Landroid/widget/Switch;

    invoke-virtual {v14}, Landroid/widget/Switch;->isChecked()Z

    move-result v14

    if-eqz v14, :cond_16a

    .end local p1
    :goto_163
    move/from16 v0, p1

    invoke-interface {v13, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_b8

    .restart local p1
    :cond_16a
    const/16 p1, 0x1

    goto :goto_163

    .line 527
    :cond_16d
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/accounts/ManageAccountsSettings;->mSyncAll:Landroid/view/MenuItem;

    const/4 v14, 0x0

    invoke-interface {v13, v14}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_b8

    .line 533
    :cond_177
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-static {v13}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v13

    if-nez v13, :cond_1ac

    .line 534
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/accounts/ManageAccountsSettings;->mOneButtonLayout:Landroid/widget/LinearLayout;

    const/4 v14, 0x4

    invoke-virtual {v13, v14}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 535
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/accounts/ManageAccountsSettings;->mTwoButtonsLayout:Landroid/widget/LinearLayout;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 537
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/accounts/ManageAccountsSettings;->mSyncAllButton:Landroid/widget/Button;

    const v14, 0x7f0707e9

    invoke-virtual {v13, v14}, Landroid/widget/Button;->setText(I)V

    .line 538
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/accounts/ManageAccountsSettings;->mSyncAllButton:Landroid/widget/Button;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/widget/Button;->setEnabled(Z)V

    .line 544
    :goto_1a3
    const-string v13, "AccountSettings"

    const-string v14, "ManageAccountsSettings : Sync button is [ Cancel sync ] !!"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b8

    .line 540
    :cond_1ac
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/accounts/ManageAccountsSettings;->mSyncAll:Landroid/view/MenuItem;

    const/4 v14, 0x0

    invoke-interface {v13, v14}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 541
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/accounts/ManageAccountsSettings;->mCancelSync:Landroid/view/MenuItem;

    const/4 v14, 0x1

    invoke-interface {v13, v14}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 542
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/accounts/ManageAccountsSettings;->mCancelSync:Landroid/view/MenuItem;

    const/4 v14, 0x1

    invoke-interface {v13, v14}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;
    :try_end_1c4
    .catch Ljava/lang/NullPointerException; {:try_start_d7 .. :try_end_1c4} :catch_ca

    goto :goto_1a3
.end method

.method private startAccountSettings(Lcom/android/settings/AccountPreference;)V
    .registers 9
    .parameter

    .prologue
    .line 288
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 289
    const-string v0, "account"

    invoke-virtual {p1}, Lcom/android/settings/AccountPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 290
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    const-class v1, Lcom/android/settings/accounts/AccountSyncSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f070613

    invoke-virtual {p1}, Lcom/android/settings/AccountPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v4

    iget-object v4, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/4 v6, 0x1

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 294
    return-void
.end method

.method private startSyncAllForEnabledProvider()V
    .registers 2

    .prologue
    .line 671
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings/accounts/ManageAccountsSettings;->requestOrCancelSyncAllForEnabledProviders(Z)V

    .line 672
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 673
    return-void
.end method


# virtual methods
.method public bridge synthetic getAuthoritiesForAccountType(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 3
    .parameter "x0"

    .prologue
    .line 72
    invoke-super {p0, p1}, Lcom/android/settings/accounts/AccountPreferenceBase;->getAuthoritiesForAccountType(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public onAccountsUpdated([Landroid/accounts/Account;)V
    .registers 19
    .parameter "accounts"

    .prologue
    .line 553
    const-string v7, ""

    .line 554
    .local v7, SalesCode:Ljava/lang/String;
    const-string v12, ""

    .line 555
    .local v12, myphonebook_isd:Ljava/lang/String;
    const-string v2, "ril.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 557
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-nez v2, :cond_11

    .line 635
    :goto_10
    return-void

    .line 560
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_8c

    .line 561
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 566
    :goto_22
    const/4 v9, 0x0

    .local v9, i:I
    move-object/from16 v0, p1

    array-length v13, v0

    .local v13, n:I
    :goto_26
    if-ge v9, v13, :cond_9f

    .line 567
    aget-object v3, p1, v9

    .line 568
    .local v3, account:Landroid/accounts/Account;
    iget-object v2, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/accounts/ManageAccountsSettings;->getAuthoritiesForAccountType(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 570
    .local v5, auths:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v15, 0x1

    .line 571
    .local v15, showAccount:Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/accounts/ManageAccountsSettings;->mAuthorities:[Ljava/lang/String;

    if-eqz v2, :cond_4d

    if-eqz v5, :cond_4d

    .line 572
    const/4 v15, 0x0

    .line 573
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/settings/accounts/ManageAccountsSettings;->mAuthorities:[Ljava/lang/String;

    .local v8, arr$:[Ljava/lang/String;
    array-length v11, v8

    .local v11, len$:I
    const/4 v10, 0x0

    .local v10, i$:I
    :goto_42
    if-ge v10, v11, :cond_4d

    aget-object v14, v8, v10

    .line 574
    .local v14, requestedAuthority:Ljava/lang/String;
    invoke-virtual {v5, v14}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_94

    .line 575
    const/4 v15, 0x1

    .line 581
    .end local v8           #arr$:[Ljava/lang/String;
    .end local v10           #i$:I
    .end local v11           #len$:I
    .end local v14           #requestedAuthority:Ljava/lang/String;
    :cond_4d
    if-eqz v15, :cond_89

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_89

    .line 582
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/settings/accounts/ManageAccountsSettings;->getProviderNameForType(Landroid/accounts/Account;)Ljava/lang/CharSequence;

    move-result-object v6

    .line 583
    .local v6, providerName:Ljava/lang/CharSequence;
    iget-object v2, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/accounts/ManageAccountsSettings;->getDrawableForType(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 586
    .local v4, icon:Landroid/graphics/drawable/Drawable;
    iget-object v2, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string v16, "com.android.tmo_myphonebook"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6f

    .line 621
    :cond_6f
    new-instance v1, Lcom/android/settings/AccountPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct/range {v1 .. v6}, Lcom/android/settings/AccountPreference;-><init>(Landroid/content/Context;Landroid/accounts/Account;Landroid/graphics/drawable/Drawable;Ljava/util/ArrayList;Ljava/lang/CharSequence;)V

    .line 625
    .local v1, preference:Lcom/android/settings/AccountPreference;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_97

    .line 626
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 566
    .end local v1           #preference:Lcom/android/settings/AccountPreference;
    .end local v4           #icon:Landroid/graphics/drawable/Drawable;
    .end local v6           #providerName:Ljava/lang/CharSequence;
    :cond_89
    :goto_89
    add-int/lit8 v9, v9, 0x1

    goto :goto_26

    .line 563
    .end local v3           #account:Landroid/accounts/Account;
    .end local v5           #auths:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v9           #i:I
    .end local v13           #n:I
    .end local v15           #showAccount:Z
    :cond_8c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/accounts/ManageAccountsSettings;->mManageAccountsCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v2}, Landroid/preference/PreferenceCategory;->removeAll()V

    goto :goto_22

    .line 573
    .restart local v3       #account:Landroid/accounts/Account;
    .restart local v5       #auths:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v8       #arr$:[Ljava/lang/String;
    .restart local v9       #i:I
    .restart local v10       #i$:I
    .restart local v11       #len$:I
    .restart local v13       #n:I
    .restart local v14       #requestedAuthority:Ljava/lang/String;
    .restart local v15       #showAccount:Z
    :cond_94
    add-int/lit8 v10, v10, 0x1

    goto :goto_42

    .line 628
    .end local v8           #arr$:[Ljava/lang/String;
    .end local v10           #i$:I
    .end local v11           #len$:I
    .end local v14           #requestedAuthority:Ljava/lang/String;
    .restart local v1       #preference:Lcom/android/settings/AccountPreference;
    .restart local v4       #icon:Landroid/graphics/drawable/Drawable;
    .restart local v6       #providerName:Ljava/lang/CharSequence;
    :cond_97
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/accounts/ManageAccountsSettings;->mManageAccountsCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_89

    .line 634
    .end local v1           #preference:Lcom/android/settings/AccountPreference;
    .end local v3           #account:Landroid/accounts/Account;
    .end local v4           #icon:Landroid/graphics/drawable/Drawable;
    .end local v5           #auths:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6           #providerName:Ljava/lang/CharSequence;
    .end local v15           #showAccount:Z
    :cond_9f
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->onSyncStateUpdated()V

    goto/16 :goto_10
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 12
    .parameter "savedInstanceState"

    .prologue
    const/16 v9, 0x10

    const/4 v8, -0x2

    const/4 v7, 0x0

    const/16 v6, 0x8

    .line 138
    invoke-super {p0, p1}, Lcom/android/settings/accounts/AccountPreferenceBase;->onActivityCreated(Landroid/os/Bundle;)V

    .line 140
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 141
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getView()Landroid/view/View;

    move-result-object v2

    .line 143
    .local v2, view:Landroid/view/View;
    const v3, 0x7f09010b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mAddAccountButton1:Landroid/widget/Button;

    .line 144
    const v3, 0x7f09010e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mAddAccountButton2:Landroid/widget/Button;

    .line 145
    const v3, 0x7f09010d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mSyncAllButton:Landroid/widget/Button;

    .line 147
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_126

    .line 148
    iget-object v3, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mAddAccountButton1:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    iget-object v3, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mAddAccountButton2:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    iget-object v3, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mSyncAllButton:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    :goto_4b
    const v3, 0x7f09010a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mOneButtonLayout:Landroid/widget/LinearLayout;

    .line 158
    const v3, 0x7f09010c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mTwoButtonsLayout:Landroid/widget/LinearLayout;

    .line 161
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_75

    .line 162
    iget-object v3, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mOneButtonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 163
    iget-object v3, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mTwoButtonsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 166
    :cond_75
    const v3, 0x7f09000e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mErrorInfoIcon:Landroid/widget/ImageView;

    .line 167
    iget-object v3, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mErrorInfoIcon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0200aa

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 168
    iget-object v3, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mErrorInfoIcon:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 170
    const v3, 0x7f09000f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mErrorInfoView:Landroid/widget/TextView;

    .line 171
    iget-object v3, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mErrorInfoView:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 173
    new-instance v3, Landroid/widget/Switch;

    invoke-direct {v3, v0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mAutoSyncSwitch:Landroid/widget/Switch;

    .line 176
    const-string v3, "manageAccountsSwitch"

    invoke-virtual {p0, v3}, Lcom/android/settings/accounts/ManageAccountsSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreference;

    iput-object v3, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mSwitchPreference:Landroid/preference/SwitchPreference;

    .line 177
    const-string v3, "manageAccountsCategory"

    invoke-virtual {p0, v3}, Lcom/android/settings/accounts/ManageAccountsSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceCategory;

    iput-object v3, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mManageAccountsCategory:Landroid/preference/PreferenceCategory;

    .line 179
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_137

    .line 180
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mSwitchPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 181
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mManageAccountsCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 185
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0002

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 187
    .local v1, padding:I
    iget-object v3, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mAutoSyncSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v7, v7, v1, v7}, Landroid/widget/Switch;->setPadding(IIII)V

    .line 189
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v9, v9}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 191
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mAutoSyncSwitch:Landroid/widget/Switch;

    new-instance v5, Landroid/app/ActionBar$LayoutParams;

    const/16 v6, 0x15

    invoke-direct {v5, v8, v8, v6}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v3, v4, v5}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 196
    iget-object v3, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mAutoSyncSwitch:Landroid/widget/Switch;

    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/Switch;->setChecked(Z)V

    .line 197
    iget-object v3, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mAutoSyncSwitch:Landroid/widget/Switch;

    new-instance v4, Lcom/android/settings/accounts/ManageAccountsSettings$1;

    invoke-direct {v4, p0}, Lcom/android/settings/accounts/ManageAccountsSettings$1;-><init>(Lcom/android/settings/accounts/ManageAccountsSettings;)V

    invoke-virtual {v3, v4}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 232
    .end local v1           #padding:I
    :goto_116
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "authorities"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mAuthorities:[Ljava/lang/String;

    .line 234
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->updateAuthDescriptions()V

    .line 235
    return-void

    .line 152
    :cond_126
    iget-object v3, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mAddAccountButton1:Landroid/widget/Button;

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 153
    iget-object v3, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mAddAccountButton2:Landroid/widget/Button;

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 154
    iget-object v3, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mSyncAllButton:Landroid/widget/Button;

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_4b

    .line 207
    :cond_137
    iget-object v3, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mSwitchPreference:Landroid/preference/SwitchPreference;

    const v4, 0x7f0707eb

    invoke-virtual {p0, v4}, Lcom/android/settings/accounts/ManageAccountsSettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/SwitchPreference;->setSwitchTextOff(Ljava/lang/CharSequence;)V

    .line 208
    iget-object v3, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mSwitchPreference:Landroid/preference/SwitchPreference;

    const v4, 0x7f0707ea

    invoke-virtual {p0, v4}, Lcom/android/settings/accounts/ManageAccountsSettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/SwitchPreference;->setSwitchTextOn(Ljava/lang/CharSequence;)V

    .line 210
    iget-object v3, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mSwitchPreference:Landroid/preference/SwitchPreference;

    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 212
    iget-object v3, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mSwitchPreference:Landroid/preference/SwitchPreference;

    new-instance v4, Lcom/android/settings/accounts/ManageAccountsSettings$2;

    invoke-direct {v4, p0}, Lcom/android/settings/accounts/ManageAccountsSettings$2;-><init>(Lcom/android/settings/accounts/ManageAccountsSettings;)V

    invoke-virtual {v3, v4}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_116
.end method

.method public onAddAccountClicked()V
    .registers 4

    .prologue
    .line 665
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.ADD_ACCOUNT_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 666
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "authorities"

    iget-object v2, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mAuthorities:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 667
    invoke-virtual {p0, v0}, Lcom/android/settings/accounts/ManageAccountsSettings;->startActivity(Landroid/content/Intent;)V

    .line 668
    return-void
.end method

.method protected onAuthDescriptionsUpdated()V
    .registers 5

    .prologue
    .line 641
    const/4 v0, 0x0

    .line 643
    .local v0, count:I
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_48

    .line 644
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v0

    .line 649
    :goto_13
    const/4 v1, 0x0

    .local v1, i:I
    :goto_14
    if-ge v1, v0, :cond_58

    .line 652
    const/4 v2, 0x0

    .line 653
    .local v2, pref:Lcom/android/settings/AccountPreference;
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_4f

    .line 654
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    .end local v2           #pref:Lcom/android/settings/AccountPreference;
    check-cast v2, Lcom/android/settings/AccountPreference;

    .line 659
    .restart local v2       #pref:Lcom/android/settings/AccountPreference;
    :goto_2b
    invoke-virtual {v2}, Lcom/android/settings/AccountPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v3

    iget-object v3, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/settings/accounts/ManageAccountsSettings;->getDrawableForType(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/AccountPreference;->setProviderIcon(Landroid/graphics/drawable/Drawable;)V

    .line 660
    invoke-virtual {v2}, Lcom/android/settings/AccountPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v3

    iget-object v3, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/settings/accounts/ManageAccountsSettings;->getLabelForType(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/AccountPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 649
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 646
    .end local v1           #i:I
    .end local v2           #pref:Lcom/android/settings/AccountPreference;
    :cond_48
    iget-object v3, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mManageAccountsCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v3}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v0

    goto :goto_13

    .line 656
    .restart local v1       #i:I
    .restart local v2       #pref:Lcom/android/settings/AccountPreference;
    :cond_4f
    iget-object v3, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mManageAccountsCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v3, v1}, Landroid/preference/PreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    .end local v2           #pref:Lcom/android/settings/AccountPreference;
    check-cast v2, Lcom/android/settings/AccountPreference;

    .restart local v2       #pref:Lcom/android/settings/AccountPreference;
    goto :goto_2b

    .line 662
    .end local v2           #pref:Lcom/android/settings/AccountPreference;
    :cond_58
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "v"

    .prologue
    .line 732
    iget-object v1, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mAddAccountButton1:Landroid/widget/Button;

    if-eq p1, v1, :cond_8

    iget-object v1, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mAddAccountButton2:Landroid/widget/Button;

    if-ne p1, v1, :cond_21

    .line 733
    :cond_8
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.ADD_ACCOUNT_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 734
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "authorities"

    iget-object v2, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mAuthorities:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 735
    const-string v1, "AccountSettings"

    const-string v2, "ManageAccountsSettings : Add account button is clicked!!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    invoke-virtual {p0, v0}, Lcom/android/settings/accounts/ManageAccountsSettings;->startActivity(Landroid/content/Intent;)V

    .line 747
    .end local v0           #intent:Landroid/content/Intent;
    :cond_20
    :goto_20
    return-void

    .line 737
    :cond_21
    iget-object v1, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mSyncAllButton:Landroid/widget/Button;

    if-ne p1, v1, :cond_20

    .line 738
    const v1, 0x7f0707e7

    invoke-virtual {p0, v1}, Lcom/android/settings/accounts/ManageAccountsSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mSyncAllButton:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_48

    .line 739
    const-string v1, "AccountSettings"

    const-string v2, "ManageAccountsSettings : Sync all button is clicked!!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    invoke-direct {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->startSyncAllForEnabledProvider()V

    .line 745
    :goto_44
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->onSyncStateUpdated()V

    goto :goto_20

    .line 742
    :cond_48
    const-string v1, "AccountSettings"

    const-string v2, "ManageAccountsSettings : Cancel sync button is clicked!!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    invoke-direct {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->cancelSyncAllForEnabledProviders()V

    goto :goto_44
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3
    .parameter "icicle"

    .prologue
    .line 117
    invoke-super {p0, p1}, Lcom/android/settings/accounts/AccountPreferenceBase;->onCreate(Landroid/os/Bundle;)V

    .line 119
    const v0, 0x7f05001a

    invoke-virtual {p0, v0}, Lcom/android/settings/accounts/ManageAccountsSettings;->addPreferencesFromResource(I)V

    .line 120
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/accounts/ManageAccountsSettings;->setHasOptionsMenu(Z)V

    .line 121
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .registers 7
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v3, 0x6

    const/4 v2, 0x0

    .line 309
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 310
    const/4 v0, 0x3

    const v1, 0x7f070615

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0200ad

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mAddAccount:Landroid/view/MenuItem;

    .line 312
    const/4 v0, 0x1

    const v1, 0x7f0707e7

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0200b6

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mSyncAll:Landroid/view/MenuItem;

    .line 313
    const/4 v0, 0x2

    const v1, 0x7f0707e9

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0200ae

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mCancelSync:Landroid/view/MenuItem;

    .line 314
    iget-object v0, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mAddAccount:Landroid/view/MenuItem;

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 316
    iget-object v0, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mSyncAll:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 318
    iget-object v0, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mCancelSync:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 321
    :cond_4f
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 7
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 132
    const v1, 0x7f040057

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 133
    .local v0, view:Landroid/view/View;
    return-object v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 6
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 341
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 342
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 343
    .local v0, itemId:I
    const/4 v2, 0x3

    if-ne v0, v2, :cond_19

    .line 344
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->onAddAccountClicked()V

    .line 354
    :goto_15
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->onSyncStateUpdated()V

    .line 356
    .end local v0           #itemId:I
    :cond_18
    :goto_18
    return v1

    .line 345
    .restart local v0       #itemId:I
    :cond_19
    if-ne v0, v1, :cond_26

    .line 346
    const-string v2, "AccountSettings"

    const-string v3, "ManageAccountsSettings : Sync all button is clicked!!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    invoke-direct {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->startSyncAllForEnabledProvider()V

    goto :goto_15

    .line 348
    :cond_26
    const/4 v2, 0x2

    if-ne v0, v2, :cond_34

    .line 349
    const-string v2, "AccountSettings"

    const-string v3, "ManageAccountsSettings : Cancel sync button is clicked!!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    invoke-direct {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->cancelSyncAllForEnabledProviders()V

    goto :goto_15

    .line 352
    :cond_34
    invoke-super {p0, p1}, Lcom/android/settings/accounts/AccountPreferenceBase;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_18
.end method

.method public bridge synthetic onPause()V
    .registers 1

    .prologue
    .line 72
    invoke-super {p0}, Lcom/android/settings/accounts/AccountPreferenceBase;->onPause()V

    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 5
    .parameter "preferences"
    .parameter "preference"

    .prologue
    .line 261
    instance-of v1, p2, Lcom/android/settings/AccountPreference;

    if-eqz v1, :cond_10

    move-object v0, p2

    .line 263
    check-cast v0, Lcom/android/settings/AccountPreference;

    .line 265
    .local v0, pref:Lcom/android/settings/AccountPreference;
    if-eqz v0, :cond_9

    .line 280
    :cond_9
    check-cast p2, Lcom/android/settings/AccountPreference;

    .end local p2
    invoke-direct {p0, p2}, Lcom/android/settings/accounts/ManageAccountsSettings;->startAccountSettings(Lcom/android/settings/AccountPreference;)V

    .line 284
    const/4 v1, 0x1

    .end local v0           #pref:Lcom/android/settings/AccountPreference;
    :goto_f
    return v1

    .line 282
    .restart local p2
    :cond_10
    const/4 v1, 0x0

    goto :goto_f
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .registers 7
    .parameter "menu"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 325
    invoke-super {p0, p1}, Lcom/android/settings/accounts/AccountPreferenceBase;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 326
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_30

    .line 327
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v0

    .line 328
    .local v0, accounts:[Landroid/accounts/Account;
    invoke-static {}, Landroid/content/ContentResolver;->getCurrentSync()Landroid/content/SyncInfo;

    move-result-object v4

    if-eqz v4, :cond_31

    move v1, v2

    .line 329
    .local v1, syncActive:Z
    :goto_22
    if-eqz v0, :cond_35

    .line 330
    iget-object v4, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mSyncAll:Landroid/view/MenuItem;

    if-nez v1, :cond_33

    :goto_28
    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 331
    iget-object v2, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mCancelSync:Landroid/view/MenuItem;

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 337
    .end local v0           #accounts:[Landroid/accounts/Account;
    .end local v1           #syncActive:Z
    :cond_30
    :goto_30
    return-void

    .restart local v0       #accounts:[Landroid/accounts/Account;
    :cond_31
    move v1, v3

    .line 328
    goto :goto_22

    .restart local v1       #syncActive:Z
    :cond_33
    move v2, v3

    .line 330
    goto :goto_28

    .line 333
    :cond_35
    iget-object v2, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mSyncAll:Landroid/view/MenuItem;

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 334
    iget-object v2, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mCancelSync:Landroid/view/MenuItem;

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_30
.end method

.method public onResume()V
    .registers 4

    .prologue
    .line 244
    invoke-super {p0}, Lcom/android/settings/accounts/AccountPreferenceBase;->onResume()V

    .line 245
    iget-object v1, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mAutoSyncSwitch:Landroid/widget/Switch;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setVisibility(I)V

    .line 248
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "enterprise_policy"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v1, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 250
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mTelMgr:Landroid/telephony/TelephonyManager;

    .line 251
    iget-object v1, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-eqz v1, :cond_46

    iget-object v1, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mTelMgr:Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_46

    .line 252
    iget-object v1, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRoamingPolicy()Landroid/app/enterprise/RoamingPolicy;

    move-result-object v0

    .line 253
    .local v0, rp:Landroid/app/enterprise/RoamingPolicy;
    if-eqz v0, :cond_46

    iget-object v1, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v1

    if-eqz v1, :cond_46

    .line 254
    iget-object v1, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mAutoSyncSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/app/enterprise/RoamingPolicy;->isRoamingSyncEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 258
    .end local v0           #rp:Landroid/app/enterprise/RoamingPolicy;
    :cond_46
    return-void
.end method

.method public onStart()V
    .registers 4

    .prologue
    .line 125
    invoke-super {p0}, Lcom/android/settings/accounts/AccountPreferenceBase;->onStart()V

    .line 126
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Landroid/accounts/AccountManager;->addOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;Landroid/os/Handler;Z)V

    .line 127
    return-void
.end method

.method public onStop()V
    .registers 3

    .prologue
    .line 239
    invoke-super {p0}, Lcom/android/settings/accounts/AccountPreferenceBase;->onStop()V

    .line 240
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/accounts/AccountManager;->removeOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;)V

    .line 241
    iget-object v0, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mAutoSyncSwitch:Landroid/widget/Switch;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setVisibility(I)V

    .line 242
    return-void
.end method

.method protected onSyncStateUpdated()V
    .registers 31

    .prologue
    .line 364
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v26

    if-nez v26, :cond_7

    .line 455
    :goto_6
    return-void

    .line 366
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/ManageAccountsSettings;->mAutoSyncSwitch:Landroid/widget/Switch;

    move-object/from16 v26, v0

    if-eqz v26, :cond_1c

    .line 367
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/ManageAccountsSettings;->mAutoSyncSwitch:Landroid/widget/Switch;

    move-object/from16 v26, v0

    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v27

    invoke-virtual/range {v26 .. v27}, Landroid/widget/Switch;->setChecked(Z)V

    .line 371
    :cond_1c
    invoke-static {}, Landroid/content/ContentResolver;->getCurrentSync()Landroid/content/SyncInfo;

    move-result-object v11

    .line 373
    .local v11, currentSync:Landroid/content/SyncInfo;
    const/4 v6, 0x0

    .line 374
    .local v6, anySyncFailed:Z
    const/4 v5, 0x0

    .line 377
    .local v5, anySyncEnabledAuth:Z
    invoke-static {}, Landroid/content/ContentResolver;->getSyncAdapterTypes()[Landroid/content/SyncAdapterType;

    move-result-object v20

    .line 378
    .local v20, syncAdapters:[Landroid/content/SyncAdapterType;
    new-instance v25, Ljava/util/HashSet;

    invoke-direct/range {v25 .. v25}, Ljava/util/HashSet;-><init>()V

    .line 379
    .local v25, userFacing:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v14, 0x0

    .local v14, k:I
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v16, v0

    .local v16, n:I
    :goto_31
    move/from16 v0, v16

    if-ge v14, v0, :cond_49

    .line 380
    aget-object v18, v20, v14

    .line 381
    .local v18, sa:Landroid/content/SyncAdapterType;
    invoke-virtual/range {v18 .. v18}, Landroid/content/SyncAdapterType;->isUserVisible()Z

    move-result v26

    if-eqz v26, :cond_46

    .line 382
    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 379
    :cond_46
    add-int/lit8 v14, v14, 0x1

    goto :goto_31

    .line 386
    .end local v18           #sa:Landroid/content/SyncAdapterType;
    :cond_49
    const/4 v10, 0x0

    .line 388
    .local v10, count:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v26

    if-nez v26, :cond_80

    .line 389
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v10

    .line 394
    :goto_5c
    const/4 v12, 0x0

    .local v12, i:I
    :goto_5d
    if-ge v12, v10, :cond_189

    .line 396
    const/16 v17, 0x0

    .line 397
    .local v17, pref:Landroid/preference/Preference;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v26

    if-nez v26, :cond_8b

    .line 398
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v12}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v17

    .line 403
    :goto_75
    move-object/from16 v0, v17

    instance-of v0, v0, Lcom/android/settings/AccountPreference;

    move/from16 v26, v0

    if-nez v26, :cond_98

    .line 394
    :goto_7d
    add-int/lit8 v12, v12, 0x1

    goto :goto_5d

    .line 391
    .end local v12           #i:I
    .end local v17           #pref:Landroid/preference/Preference;
    :cond_80
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/ManageAccountsSettings;->mManageAccountsCategory:Landroid/preference/PreferenceCategory;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v10

    goto :goto_5c

    .line 400
    .restart local v12       #i:I
    .restart local v17       #pref:Landroid/preference/Preference;
    :cond_8b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/ManageAccountsSettings;->mManageAccountsCategory:Landroid/preference/PreferenceCategory;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v12}, Landroid/preference/PreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v17

    goto :goto_75

    :cond_98
    move-object/from16 v3, v17

    .line 407
    check-cast v3, Lcom/android/settings/AccountPreference;

    .line 408
    .local v3, accountPref:Lcom/android/settings/AccountPreference;
    invoke-virtual {v3}, Lcom/android/settings/AccountPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v2

    .line 409
    .local v2, account:Landroid/accounts/Account;
    const/16 v21, 0x0

    .line 410
    .local v21, syncCount:I
    const/16 v23, 0x0

    .line 411
    .local v23, syncIsFailing:Z
    invoke-virtual {v3}, Lcom/android/settings/AccountPreference;->getAuthorities()Ljava/util/ArrayList;

    move-result-object v7

    .line 412
    .local v7, authorities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v7, :cond_14c

    .line 413
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, i$:Ljava/util/Iterator;
    :goto_ae
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_170

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 414
    .local v8, authority:Ljava/lang/String;
    invoke-static {v2, v8}, Landroid/content/ContentResolver;->getSyncStatus(Landroid/accounts/Account;Ljava/lang/String;)Landroid/content/SyncStatusInfo;

    move-result-object v19

    .line 415
    .local v19, status:Landroid/content/SyncStatusInfo;
    invoke-static {v2, v8}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_142

    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v26

    if-eqz v26, :cond_142

    invoke-static {v2, v8}, Landroid/content/ContentResolver;->getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I

    move-result v26

    if-lez v26, :cond_142

    const/16 v22, 0x1

    .line 418
    .local v22, syncEnabled:Z
    :goto_d2
    invoke-static {v2, v8}, Landroid/content/ContentResolver;->isSyncPending(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v9

    .line 419
    .local v9, authorityIsPending:Z
    if-eqz v11, :cond_145

    iget-object v0, v11, Landroid/content/SyncInfo;->authority:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_145

    new-instance v26, Landroid/accounts/Account;

    iget-object v0, v11, Landroid/content/SyncInfo;->account:Landroid/accounts/Account;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v27, v0

    iget-object v0, v11, Landroid/content/SyncInfo;->account:Landroid/accounts/Account;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-direct/range {v26 .. v28}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_145

    const/4 v4, 0x1

    .line 423
    .local v4, activelySyncing:Z
    :goto_106
    if-eqz v19, :cond_147

    if-eqz v22, :cond_147

    move-object/from16 v0, v19

    iget-wide v0, v0, Landroid/content/SyncStatusInfo;->lastFailureTime:J

    move-wide/from16 v26, v0

    const-wide/16 v28, 0x0

    cmp-long v26, v26, v28

    if-eqz v26, :cond_147

    const/16 v26, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/SyncStatusInfo;->getLastFailureMesgAsInt(I)I

    move-result v26

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_147

    const/4 v15, 0x1

    .line 428
    .local v15, lastSyncFailed:Z
    :goto_129
    if-eqz v15, :cond_132

    if-nez v4, :cond_132

    if-nez v9, :cond_132

    .line 429
    const/16 v23, 0x1

    .line 430
    const/4 v6, 0x1

    .line 432
    :cond_132
    if-eqz v22, :cond_149

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_149

    const/16 v26, 0x1

    :goto_13e
    add-int v21, v21, v26

    .line 433
    goto/16 :goto_ae

    .line 415
    .end local v4           #activelySyncing:Z
    .end local v9           #authorityIsPending:Z
    .end local v15           #lastSyncFailed:Z
    .end local v22           #syncEnabled:Z
    :cond_142
    const/16 v22, 0x0

    goto :goto_d2

    .line 419
    .restart local v9       #authorityIsPending:Z
    .restart local v22       #syncEnabled:Z
    :cond_145
    const/4 v4, 0x0

    goto :goto_106

    .line 423
    .restart local v4       #activelySyncing:Z
    :cond_147
    const/4 v15, 0x0

    goto :goto_129

    .line 432
    .restart local v15       #lastSyncFailed:Z
    :cond_149
    const/16 v26, 0x0

    goto :goto_13e

    .line 435
    .end local v4           #activelySyncing:Z
    .end local v8           #authority:Ljava/lang/String;
    .end local v9           #authorityIsPending:Z
    .end local v13           #i$:Ljava/util/Iterator;
    .end local v15           #lastSyncFailed:Z
    .end local v19           #status:Landroid/content/SyncStatusInfo;
    .end local v22           #syncEnabled:Z
    :cond_14c
    const-string v26, "AccountSettings"

    const/16 v27, 0x2

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v26

    if-eqz v26, :cond_170

    .line 436
    const-string v26, "AccountSettings"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "no syncadapters found for "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    :cond_170
    const/16 v24, 0x1

    .line 440
    .local v24, syncStatus:I
    if-eqz v23, :cond_17e

    .line 441
    const/16 v24, 0x2

    .line 442
    const/4 v5, 0x1

    .line 449
    :cond_177
    :goto_177
    move/from16 v0, v24

    invoke-virtual {v3, v0}, Lcom/android/settings/AccountPreference;->setSyncStatus(I)V

    goto/16 :goto_7d

    .line 443
    :cond_17e
    if-nez v21, :cond_183

    .line 444
    const/16 v24, 0x1

    goto :goto_177

    .line 445
    :cond_183
    if-lez v21, :cond_177

    .line 446
    const/16 v24, 0x0

    .line 447
    const/4 v5, 0x1

    goto :goto_177

    .line 452
    .end local v2           #account:Landroid/accounts/Account;
    .end local v3           #accountPref:Lcom/android/settings/AccountPreference;
    .end local v7           #authorities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v17           #pref:Landroid/preference/Preference;
    .end local v21           #syncCount:I
    .end local v23           #syncIsFailing:Z
    .end local v24           #syncStatus:I
    :cond_189
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/ManageAccountsSettings;->mErrorInfoView:Landroid/widget/TextView;

    move-object/from16 v27, v0

    if-eqz v6, :cond_1b2

    const/16 v26, 0x0

    :goto_193
    move-object/from16 v0, v27

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 453
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/ManageAccountsSettings;->mErrorInfoIcon:Landroid/widget/ImageView;

    move-object/from16 v27, v0

    if-eqz v6, :cond_1b5

    const/16 v26, 0x0

    :goto_1a4
    move-object/from16 v0, v27

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 454
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/settings/accounts/ManageAccountsSettings;->setTextSyncAll(Z)V

    goto/16 :goto_6

    .line 452
    :cond_1b2
    const/16 v26, 0x8

    goto :goto_193

    .line 453
    :cond_1b5
    const/16 v26, 0x8

    goto :goto_1a4
.end method

.method public showDialog(I)V
    .registers 5
    .parameter "dialogId"

    .prologue
    .line 298
    iget-object v0, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mDialogFragment:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    if-eqz v0, :cond_b

    .line 299
    const-string v0, "AccountSettings"

    const-string v1, "Old dialog fragment not null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    :cond_b
    new-instance v0, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;-><init>(Lcom/android/settings/DialogCreatable;I)V

    iput-object v0, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mDialogFragment:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    .line 302
    iget-object v0, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mDialogFragment:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 303
    return-void
.end method
