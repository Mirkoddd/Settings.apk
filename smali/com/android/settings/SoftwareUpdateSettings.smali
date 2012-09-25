.class public Lcom/android/settings/SoftwareUpdateSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "SoftwareUpdateSettings.java"


# static fields
.field private static SETTING_AUTO_UPDATE:Ljava/lang/String;

.field private static SETTING_PUSH_MSG:Ljava/lang/String;

.field private static SETTING_WIFI_ONLY:Ljava/lang/String;


# instance fields
.field private AutoUpdate:Landroid/preference/CheckBoxPreference;

.field private PushMessage:Landroid/preference/CheckBoxPreference;

.field private WifiOnly:Landroid/preference/CheckBoxPreference;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 30
    const-string v0, "SOFTWARE_UPDATE_AUTO_UPDATE"

    sput-object v0, Lcom/android/settings/SoftwareUpdateSettings;->SETTING_AUTO_UPDATE:Ljava/lang/String;

    .line 31
    const-string v0, "SOFTWARE_UPDATE_WIFI_ONLY"

    sput-object v0, Lcom/android/settings/SoftwareUpdateSettings;->SETTING_WIFI_ONLY:Ljava/lang/String;

    .line 32
    const-string v0, "SOFTWARE_UPDATE_PUSH_MESSAGE"

    sput-object v0, Lcom/android/settings/SoftwareUpdateSettings;->SETTING_PUSH_MSG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private ClickCheckBox(Landroid/preference/CheckBoxPreference;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .parameter "chkPreference"
    .parameter "settingDB"
    .parameter "broadcast"

    .prologue
    .line 139
    if-eqz p1, :cond_3e

    .line 140
    invoke-virtual {p1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 141
    .local v0, bChecked:Z
    const-string v2, "SoftwareUpdate"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isChecked() : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    invoke-virtual {p0}, Lcom/android/settings/SoftwareUpdateSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    if-eqz v0, :cond_3f

    const/4 v2, 0x1

    :goto_25
    invoke-static {v3, p2, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 143
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 144
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "changed_data"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 145
    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 146
    invoke-virtual {p0}, Lcom/android/settings/SoftwareUpdateSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 148
    .end local v0           #bChecked:Z
    .end local v1           #intent:Landroid/content/Intent;
    :cond_3e
    return-void

    .line 142
    .restart local v0       #bChecked:Z
    :cond_3f
    const/4 v2, 0x0

    goto :goto_25
.end method

.method private LoadCheckBox()V
    .registers 3

    .prologue
    .line 119
    const-string v0, "auto_update"

    invoke-virtual {p0, v0}, Lcom/android/settings/SoftwareUpdateSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/SoftwareUpdateSettings;->AutoUpdate:Landroid/preference/CheckBoxPreference;

    .line 120
    const-string v0, "wifi_only"

    invoke-virtual {p0, v0}, Lcom/android/settings/SoftwareUpdateSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/SoftwareUpdateSettings;->WifiOnly:Landroid/preference/CheckBoxPreference;

    .line 121
    const-string v0, "push_message"

    invoke-virtual {p0, v0}, Lcom/android/settings/SoftwareUpdateSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/SoftwareUpdateSettings;->PushMessage:Landroid/preference/CheckBoxPreference;

    .line 122
    iget-object v0, p0, Lcom/android/settings/SoftwareUpdateSettings;->AutoUpdate:Landroid/preference/CheckBoxPreference;

    sget-object v1, Lcom/android/settings/SoftwareUpdateSettings;->SETTING_AUTO_UPDATE:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/SoftwareUpdateSettings;->SetCheckBox(Landroid/preference/CheckBoxPreference;Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lcom/android/settings/SoftwareUpdateSettings;->WifiOnly:Landroid/preference/CheckBoxPreference;

    sget-object v1, Lcom/android/settings/SoftwareUpdateSettings;->SETTING_WIFI_ONLY:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/SoftwareUpdateSettings;->SetCheckBox(Landroid/preference/CheckBoxPreference;Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Lcom/android/settings/SoftwareUpdateSettings;->PushMessage:Landroid/preference/CheckBoxPreference;

    sget-object v1, Lcom/android/settings/SoftwareUpdateSettings;->SETTING_PUSH_MSG:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/SoftwareUpdateSettings;->SetCheckBox(Landroid/preference/CheckBoxPreference;Ljava/lang/String;)V

    .line 125
    return-void
.end method

.method private SetCheckBox(Landroid/preference/CheckBoxPreference;Ljava/lang/String;)V
    .registers 5
    .parameter "chkPrefernce"
    .parameter "settingDB"

    .prologue
    const/4 v0, 0x0

    .line 131
    invoke-virtual {p1, v0}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 132
    invoke-virtual {p0}, Lcom/android/settings/SoftwareUpdateSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_f

    const/4 v0, 0x1

    :cond_f
    invoke-virtual {p1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 133
    return-void
.end method

.method private setDefaultDB()V
    .registers 5

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x1

    .line 107
    invoke-virtual {p0}, Lcom/android/settings/SoftwareUpdateSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/settings/SoftwareUpdateSettings;->SETTING_AUTO_UPDATE:Ljava/lang/String;

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_30

    .line 108
    const-string v0, "SoftwareUpdate"

    const-string v1, "set Default Settings"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    invoke-virtual {p0}, Lcom/android/settings/SoftwareUpdateSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/settings/SoftwareUpdateSettings;->SETTING_AUTO_UPDATE:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 110
    invoke-virtual {p0}, Lcom/android/settings/SoftwareUpdateSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/settings/SoftwareUpdateSettings;->SETTING_WIFI_ONLY:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 111
    invoke-virtual {p0}, Lcom/android/settings/SoftwareUpdateSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/settings/SoftwareUpdateSettings;->SETTING_PUSH_MSG:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 113
    :cond_30
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    .line 54
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 55
    const-string v0, "SoftwareUpdate"

    const-string v1, "onActivityCreated"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    const v0, 0x7f05003c

    invoke-virtual {p0, v0}, Lcom/android/settings/SoftwareUpdateSettings;->addPreferencesFromResource(I)V

    .line 67
    invoke-direct {p0}, Lcom/android/settings/SoftwareUpdateSettings;->setDefaultDB()V

    .line 68
    invoke-direct {p0}, Lcom/android/settings/SoftwareUpdateSettings;->LoadCheckBox()V

    .line 70
    invoke-virtual {p0}, Lcom/android/settings/SoftwareUpdateSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 71
    invoke-virtual {p0}, Lcom/android/settings/SoftwareUpdateSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/SoftwareUpdateSettings;->WifiOnly:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 79
    :cond_29
    :goto_29
    return-void

    .line 73
    :cond_2a
    invoke-virtual {p0}, Lcom/android/settings/SoftwareUpdateSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "SMLDM_BEARER"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_29

    .line 74
    invoke-virtual {p0}, Lcom/android/settings/SoftwareUpdateSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/SoftwareUpdateSettings;->WifiOnly:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_29
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 8
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 83
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 84
    .local v1, key:Ljava/lang/String;
    const-string v2, "update"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 85
    const-string v2, "SoftwareUpdate"

    const-string v3, "Software Update Checked"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    new-instance v0, Landroid/content/Intent;

    const-string v2, "sec.fota.action.SOFTWARE_UPDATE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 87
    .local v0, intent:Landroid/content/Intent;
    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 88
    invoke-virtual {p0}, Lcom/android/settings/SoftwareUpdateSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 100
    .end local v0           #intent:Landroid/content/Intent;
    :cond_26
    :goto_26
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    return v2

    .line 89
    :cond_2b
    const-string v2, "auto_update"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_44

    .line 90
    const-string v2, "SoftwareUpdate"

    const-string v3, "Auto Update is Selected"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iget-object v2, p0, Lcom/android/settings/SoftwareUpdateSettings;->AutoUpdate:Landroid/preference/CheckBoxPreference;

    sget-object v3, Lcom/android/settings/SoftwareUpdateSettings;->SETTING_AUTO_UPDATE:Ljava/lang/String;

    const-string v4, "sec.fota.intent.AUTOUPDATE"

    invoke-direct {p0, v2, v3, v4}, Lcom/android/settings/SoftwareUpdateSettings;->ClickCheckBox(Landroid/preference/CheckBoxPreference;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_26

    .line 92
    :cond_44
    const-string v2, "wifi_only"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5d

    .line 93
    const-string v2, "SoftwareUpdate"

    const-string v3, "Wifi only is Selected"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    iget-object v2, p0, Lcom/android/settings/SoftwareUpdateSettings;->WifiOnly:Landroid/preference/CheckBoxPreference;

    sget-object v3, Lcom/android/settings/SoftwareUpdateSettings;->SETTING_WIFI_ONLY:Ljava/lang/String;

    const-string v4, "sec.fota.intent.WIFIONLY"

    invoke-direct {p0, v2, v3, v4}, Lcom/android/settings/SoftwareUpdateSettings;->ClickCheckBox(Landroid/preference/CheckBoxPreference;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_26

    .line 95
    :cond_5d
    const-string v2, "push_message"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 96
    const-string v2, "SoftwareUpdate"

    const-string v3, "Push message is Selected"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iget-object v2, p0, Lcom/android/settings/SoftwareUpdateSettings;->PushMessage:Landroid/preference/CheckBoxPreference;

    sget-object v3, Lcom/android/settings/SoftwareUpdateSettings;->SETTING_PUSH_MSG:Ljava/lang/String;

    const-string v4, "sec.fota.intent.PUSH"

    invoke-direct {p0, v2, v3, v4}, Lcom/android/settings/SoftwareUpdateSettings;->ClickCheckBox(Landroid/preference/CheckBoxPreference;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_26
.end method
