.class abstract Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "AccessibilitySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/AccessibilitySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "TogglePreferenceFragment"
.end annotation


# instance fields
.field private mDisableWarningMessage:Ljava/lang/CharSequence;

.field private mDisableWarningTitle:Ljava/lang/CharSequence;

.field private mEnableWarningMessage:Ljava/lang/CharSequence;

.field private mEnableWarningTitle:Ljava/lang/CharSequence;

.field private mOldActivityTitle:Ljava/lang/CharSequence;

.field private mPreferenceKey:Ljava/lang/String;

.field private mSettingsIntent:Landroid/content/Intent;

.field private mSettingsTitle:Ljava/lang/CharSequence;

.field private mShownDialogId:I

.field private mSummaryPreference:Landroid/preference/Preference;

.field private mToggleSwitch:Lcom/android/settings/AccessibilitySettings$ToggleSwitch;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 1151
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/AccessibilitySettings$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 1151
    invoke-direct {p0}, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;)Ljava/lang/CharSequence;
    .registers 2
    .parameter "x0"

    .prologue
    .line 1151
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->mEnableWarningMessage:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 1151
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->mPreferenceKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;)Ljava/lang/CharSequence;
    .registers 2
    .parameter "x0"

    .prologue
    .line 1151
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->mDisableWarningMessage:Ljava/lang/CharSequence;

    return-object v0
.end method

.method private installActionBarToggleSwitch()V
    .registers 3

    .prologue
    .line 1290
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    #calls: Lcom/android/settings/AccessibilitySettings;->createAndAddActionBarToggleSwitch(Landroid/app/Activity;)Lcom/android/settings/AccessibilitySettings$ToggleSwitch;
    invoke-static {v0}, Lcom/android/settings/AccessibilitySettings;->access$1000(Landroid/app/Activity;)Lcom/android/settings/AccessibilitySettings$ToggleSwitch;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->mToggleSwitch:Lcom/android/settings/AccessibilitySettings$ToggleSwitch;

    .line 1291
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->mToggleSwitch:Lcom/android/settings/AccessibilitySettings$ToggleSwitch;

    new-instance v1, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment$2;

    invoke-direct {v1, p0}, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment$2;-><init>(Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;)V

    invoke-virtual {v0, v1}, Lcom/android/settings/AccessibilitySettings$ToggleSwitch;->setOnBeforeCheckedChangeListener(Lcom/android/settings/AccessibilitySettings$ToggleSwitch$OnBeforeCheckedChangeListener;)V

    .line 1312
    return-void
.end method

.method private processArguments()V
    .registers 10

    .prologue
    .line 1315
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 1318
    .local v1, arguments:Landroid/os/Bundle;
    const-string v7, "preference_key"

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->mPreferenceKey:Ljava/lang/String;

    .line 1321
    const-string v7, "checked"

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 1322
    .local v2, enabled:Z
    iget-object v7, p0, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->mToggleSwitch:Lcom/android/settings/AccessibilitySettings$ToggleSwitch;

    invoke-virtual {v7, v2}, Lcom/android/settings/AccessibilitySettings$ToggleSwitch;->setCheckedInternal(Z)V

    .line 1325
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 1326
    .local v0, activity:Landroid/preference/PreferenceActivity;
    invoke-virtual {v0}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v7

    if-eqz v7, :cond_29

    invoke-virtual {v0}, Landroid/preference/PreferenceActivity;->onIsHidingHeaders()Z

    move-result v7

    if-eqz v7, :cond_38

    .line 1327
    :cond_29
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->mOldActivityTitle:Ljava/lang/CharSequence;

    .line 1328
    const-string v7, "title"

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 1335
    :cond_38
    const-string v7, "summary"

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1336
    .local v6, summary:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->mSummaryPreference:Landroid/preference/Preference;

    invoke-virtual {v7, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1339
    const-string v7, "settings_title"

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1340
    .local v5, settingsTitle:Ljava/lang/String;
    const-string v7, "settings_component_name"

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1341
    .local v3, settingsComponentName:Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_85

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_85

    .line 1342
    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.intent.action.MAIN"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v4

    .line 1344
    .local v4, settingsIntent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v4, v8}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_85

    .line 1345
    iput-object v5, p0, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->mSettingsTitle:Ljava/lang/CharSequence;

    .line 1346
    iput-object v4, p0, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->mSettingsIntent:Landroid/content/Intent;

    .line 1347
    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->setHasOptionsMenu(Z)V

    .line 1352
    .end local v4           #settingsIntent:Landroid/content/Intent;
    :cond_85
    const-string v7, "enable_warning_title"

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->mEnableWarningTitle:Ljava/lang/CharSequence;

    .line 1356
    const-string v7, "enable_warning_message"

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->mEnableWarningMessage:Ljava/lang/CharSequence;

    .line 1360
    const-string v7, "disable_warning_title"

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->mDisableWarningTitle:Ljava/lang/CharSequence;

    .line 1364
    const-string v7, "disable_warning_message"

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->mDisableWarningMessage:Ljava/lang/CharSequence;

    .line 1366
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1273
    packed-switch p2, :pswitch_data_2e

    .line 1285
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 1275
    :pswitch_b
    iget v2, p0, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->mShownDialogId:I

    if-ne v2, v0, :cond_1a

    .line 1276
    .local v0, checked:Z
    :goto_f
    iget-object v1, p0, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->mToggleSwitch:Lcom/android/settings/AccessibilitySettings$ToggleSwitch;

    invoke-virtual {v1, v0}, Lcom/android/settings/AccessibilitySettings$ToggleSwitch;->setCheckedInternal(Z)V

    .line 1277
    iget-object v1, p0, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->mPreferenceKey:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->onPreferenceToggled(Ljava/lang/String;Z)V

    .line 1287
    :goto_19
    return-void

    .end local v0           #checked:Z
    :cond_1a
    move v0, v1

    .line 1275
    goto :goto_f

    .line 1280
    :pswitch_1c
    iget v2, p0, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->mShownDialogId:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2c

    .line 1281
    .restart local v0       #checked:Z
    :goto_21
    iget-object v1, p0, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->mToggleSwitch:Lcom/android/settings/AccessibilitySettings$ToggleSwitch;

    invoke-virtual {v1, v0}, Lcom/android/settings/AccessibilitySettings$ToggleSwitch;->setCheckedInternal(Z)V

    .line 1282
    iget-object v1, p0, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->mPreferenceKey:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->onPreferenceToggled(Ljava/lang/String;Z)V

    goto :goto_19

    .end local v0           #checked:Z
    :cond_2c
    move v0, v1

    .line 1280
    goto :goto_21

    .line 1273
    :pswitch_data_2e
    .packed-switch -0x2
        :pswitch_1c
        :pswitch_b
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    .line 1178
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 1179
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 1181
    .local v0, preferenceScreen:Landroid/preference/PreferenceScreen;
    invoke-virtual {p0, v0}, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 1182
    new-instance v1, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment$1;

    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment$1;-><init>(Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->mSummaryPreference:Landroid/preference/Preference;

    .line 1206
    iget-object v1, p0, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->mSummaryPreference:Landroid/preference/Preference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 1207
    iget-object v1, p0, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->mSummaryPreference:Landroid/preference/Preference;

    const v2, 0x7f04009a

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 1208
    iget-object v1, p0, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->mSummaryPreference:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 1209
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .registers 7
    .parameter "dialogId"

    .prologue
    const/4 v4, 0x1

    .line 1244
    const/4 v1, 0x0

    .line 1245
    .local v1, title:Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .line 1246
    .local v0, message:Ljava/lang/CharSequence;
    packed-switch p1, :pswitch_data_48

    .line 1258
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 1248
    :pswitch_c
    iput v4, p0, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->mShownDialogId:I

    .line 1249
    iget-object v1, p0, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->mEnableWarningTitle:Ljava/lang/CharSequence;

    .line 1250
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->mEnableWarningMessage:Ljava/lang/CharSequence;

    .line 1260
    :goto_12
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x1080027

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    invoke-virtual {v2, v3, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/high16 v3, 0x104

    invoke-virtual {v2, v3, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2

    .line 1253
    :pswitch_40
    const/4 v2, 0x2

    iput v2, p0, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->mShownDialogId:I

    .line 1254
    iget-object v1, p0, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->mDisableWarningTitle:Ljava/lang/CharSequence;

    .line 1255
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->mDisableWarningMessage:Ljava/lang/CharSequence;

    .line 1256
    goto :goto_12

    .line 1246
    :pswitch_data_48
    .packed-switch 0x1
        :pswitch_c
        :pswitch_40
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .registers 5
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 1236
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 1237
    iget-object v1, p0, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->mSettingsTitle:Ljava/lang/CharSequence;

    invoke-interface {p1, v1}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 1238
    .local v0, menuItem:Landroid/view/MenuItem;
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1239
    iget-object v1, p0, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->mSettingsIntent:Landroid/content/Intent;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 1240
    return-void
.end method

.method public onDestroyView()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 1222
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 1228
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->mToggleSwitch:Lcom/android/settings/AccessibilitySettings$ToggleSwitch;

    invoke-virtual {v0, v1}, Lcom/android/settings/AccessibilitySettings$ToggleSwitch;->setOnBeforeCheckedChangeListener(Lcom/android/settings/AccessibilitySettings$ToggleSwitch$OnBeforeCheckedChangeListener;)V

    .line 1229
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroyView()V

    .line 1230
    return-void
.end method

.method public abstract onPreferenceToggled(Ljava/lang/String;Z)V
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 5
    .parameter "view"
    .parameter "savedInstanceState"

    .prologue
    .line 1213
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 1214
    invoke-direct {p0}, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->installActionBarToggleSwitch()V

    .line 1215
    invoke-direct {p0}, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->processArguments()V

    .line 1216
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 1217
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEnabled(Z)V

    .line 1218
    return-void
.end method
