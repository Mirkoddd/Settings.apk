.class public Lcom/android/settings/CallSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "CallSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mAdditionalSettings:Landroid/preference/PreferenceScreen;

.field private mAlertDialog:Landroid/app/AlertDialog$Builder;

.field private mButtonSipCallOptions:Landroid/preference/ListPreference;

.field private mCallFailOption:Landroid/preference/CheckBoxPreference;

.field private mCallForwarding:Landroid/preference/PreferenceScreen;

.field private mFixedDialing:Landroid/preference/PreferenceScreen;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mNwservicePref:Landroid/preference/PreferenceGroup;

.field private mProximitySensor:Landroid/preference/CheckBoxPreference;

.field private mSelected_SIP_Option:Ljava/lang/String;

.field private mShowMeForVideoCall:Landroid/preference/CheckBoxPreference;

.field private mVoicemail:Landroid/preference/PreferenceScreen;

.field private mVoipSupported:Z

.field private proximityChecked:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 46
    const-string v0, "wifiOnly"

    iput-object v0, p0, Lcom/android/settings/CallSettings;->mSelected_SIP_Option:Ljava/lang/String;

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/CallSettings;->mVoipSupported:Z

    .line 92
    new-instance v0, Lcom/android/settings/CallSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/CallSettings$1;-><init>(Lcom/android/settings/CallSettings;)V

    iput-object v0, p0, Lcom/android/settings/CallSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/CallSettings;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/android/settings/CallSettings;->proximityChecked:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/settings/CallSettings;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    iput-boolean p1, p0, Lcom/android/settings/CallSettings;->proximityChecked:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings/CallSettings;)Landroid/preference/CheckBoxPreference;
    .registers 2
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/settings/CallSettings;->mProximitySensor:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method private createSipCallSettings()V
    .registers 4

    .prologue
    .line 459
    const-string v0, "CallSettings"

    const-string v1, "createSipCallSettings()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    invoke-direct {p0}, Lcom/android/settings/CallSettings;->isVoipSupported()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 462
    const v0, 0x7f05003b

    invoke-virtual {p0, v0}, Lcom/android/settings/CallSettings;->addPreferencesFromResource(I)V

    .line 463
    invoke-direct {p0}, Lcom/android/settings/CallSettings;->getSipCallOptionPreference()Landroid/preference/ListPreference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/CallSettings;->mButtonSipCallOptions:Landroid/preference/ListPreference;

    .line 464
    iget-object v0, p0, Lcom/android/settings/CallSettings;->mButtonSipCallOptions:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 465
    iget-object v0, p0, Lcom/android/settings/CallSettings;->mButtonSipCallOptions:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/settings/CallSettings;->mButtonSipCallOptions:Landroid/preference/ListPreference;

    invoke-direct {p0}, Lcom/android/settings/CallSettings;->getSipCallOption()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 467
    iget-object v0, p0, Lcom/android/settings/CallSettings;->mButtonSipCallOptions:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/settings/CallSettings;->mButtonSipCallOptions:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 469
    :cond_38
    return-void
.end method

.method private createVideoCallSettings()V
    .registers 4

    .prologue
    .line 443
    const-string v1, "CallSettings"

    const-string v2, "createVideoCallSettings()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    invoke-virtual {p0}, Lcom/android/settings/CallSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_14

    .line 447
    const-string v1, "CallSettings"

    const-string v2, "getActivity() is null!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    :cond_14
    invoke-virtual {p0}, Lcom/android/settings/CallSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 451
    .local v0, telephony:Landroid/telephony/TelephonyManager;
    if-eqz v0, :cond_40

    .line 452
    const v1, 0x7f050048

    invoke-virtual {p0, v1}, Lcom/android/settings/CallSettings;->addPreferencesFromResource(I)V

    .line 453
    const-string v1, "showme_preference"

    invoke-virtual {p0, v1}, Lcom/android/settings/CallSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/CallSettings;->mShowMeForVideoCall:Landroid/preference/CheckBoxPreference;

    .line 454
    const-string v1, "failoption_preference"

    invoke-virtual {p0, v1}, Lcom/android/settings/CallSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/CallSettings;->mCallFailOption:Landroid/preference/CheckBoxPreference;

    .line 456
    :cond_40
    return-void
.end method

.method private getSipCallOption()Ljava/lang/String;
    .registers 5

    .prologue
    .line 496
    invoke-virtual {p0}, Lcom/android/settings/CallSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "sip_call_options"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 498
    .local v0, option:Ljava/lang/String;
    const-string v1, "CallSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "option in getSipCallOption() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    if-eqz v0, :cond_25

    .end local v0           #option:Ljava/lang/String;
    :goto_24
    return-object v0

    .restart local v0       #option:Ljava/lang/String;
    :cond_25
    const v1, 0x7f070951

    invoke-virtual {p0, v1}, Lcom/android/settings/CallSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_24
.end method

.method private getSipCallOptionPreference()Landroid/preference/ListPreference;
    .registers 5

    .prologue
    .line 472
    const-string v3, "sip_call_options_key"

    invoke-virtual {p0, v3}, Lcom/android/settings/CallSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    .line 474
    .local v1, wifiAnd3G:Landroid/preference/ListPreference;
    const-string v3, "sip_call_options_wifi_only_key"

    invoke-virtual {p0, v3}, Lcom/android/settings/CallSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    .line 476
    .local v2, wifiOnly:Landroid/preference/ListPreference;
    const-string v3, "sip_settings_category_key"

    invoke-virtual {p0, v3}, Lcom/android/settings/CallSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    .line 479
    .local v0, sipSettings:Landroid/preference/PreferenceGroup;
    invoke-virtual {p0}, Lcom/android/settings/CallSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Landroid/net/sip/SipManager;->isSipWifiOnly(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 480
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 481
    const-string v3, "wifiOnly"

    iput-object v3, p0, Lcom/android/settings/CallSettings;->mSelected_SIP_Option:Ljava/lang/String;

    .line 486
    .end local v2           #wifiOnly:Landroid/preference/ListPreference;
    :goto_29
    return-object v2

    .line 484
    .restart local v2       #wifiOnly:Landroid/preference/ListPreference;
    :cond_2a
    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 485
    const-string v3, "wifiAnd3G"

    iput-object v3, p0, Lcom/android/settings/CallSettings;->mSelected_SIP_Option:Ljava/lang/String;

    move-object v2, v1

    .line 486
    goto :goto_29
.end method

.method private isVoipSupported()Z
    .registers 2

    .prologue
    .line 516
    iget-boolean v0, p0, Lcom/android/settings/CallSettings;->mVoipSupported:Z

    return v0
.end method

.method private setSipCallOption(Ljava/lang/String;)V
    .registers 4
    .parameter "option"

    .prologue
    .line 491
    invoke-virtual {p0}, Lcom/android/settings/CallSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "sip_call_options"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 493
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 9
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 209
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 210
    const-string v2, "CallSettings"

    const-string v5, "onActivityCreated"

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    iput-boolean v4, p0, Lcom/android/settings/CallSettings;->mVoipSupported:Z

    .line 214
    invoke-virtual {p0}, Lcom/android/settings/CallSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/net/sip/SipManager;->isVoipSupported(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_cc

    invoke-virtual {p0}, Lcom/android/settings/CallSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x111002f

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_cc

    invoke-virtual {p0}, Lcom/android/settings/CallSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x1110029

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_cc

    move v2, v3

    :goto_3b
    iput-boolean v2, p0, Lcom/android/settings/CallSettings;->mVoipSupported:Z

    .line 217
    const-string v2, "CallSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mVoipSupported = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/settings/CallSettings;->mVoipSupported:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    const v2, 0x7f05000a

    invoke-virtual {p0, v2}, Lcom/android/settings/CallSettings;->addPreferencesFromResource(I)V

    .line 223
    invoke-virtual {p0}, Lcom/android/settings/CallSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 225
    .local v1, prefSet:Landroid/preference/PreferenceScreen;
    invoke-direct {p0}, Lcom/android/settings/CallSettings;->createVideoCallSettings()V

    .line 226
    invoke-direct {p0}, Lcom/android/settings/CallSettings;->createSipCallSettings()V

    .line 228
    const-string v2, "fixed_dialing"

    invoke-virtual {p0, v2}, Lcom/android/settings/CallSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceScreen;

    iput-object v2, p0, Lcom/android/settings/CallSettings;->mFixedDialing:Landroid/preference/PreferenceScreen;

    .line 229
    const-string v2, "voicemail"

    invoke-virtual {p0, v2}, Lcom/android/settings/CallSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceScreen;

    iput-object v2, p0, Lcom/android/settings/CallSettings;->mVoicemail:Landroid/preference/PreferenceScreen;

    .line 230
    const-string v2, "call_forwarding"

    invoke-virtual {p0, v2}, Lcom/android/settings/CallSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceScreen;

    iput-object v2, p0, Lcom/android/settings/CallSettings;->mCallForwarding:Landroid/preference/PreferenceScreen;

    .line 231
    const-string v2, "additional_settings"

    invoke-virtual {p0, v2}, Lcom/android/settings/CallSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceScreen;

    iput-object v2, p0, Lcom/android/settings/CallSettings;->mAdditionalSettings:Landroid/preference/PreferenceScreen;

    .line 232
    const-string v2, "proximity_sensor_preference"

    invoke-virtual {p0, v2}, Lcom/android/settings/CallSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/settings/CallSettings;->mProximitySensor:Landroid/preference/CheckBoxPreference;

    .line 236
    const-string v2, "GT-P7570"

    const-string v5, "GT-I9100"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_ad

    const-string v2, "GT-N8000"

    const-string v5, "GT-I9100"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_cf

    :cond_ad
    move v0, v3

    .line 238
    .local v0, P4_NOTE_RF_EUR_OPEN:Z
    :goto_ae
    if-eqz v0, :cond_c1

    .line 239
    const-string v2, "proximity_sensor_preference"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    if-eqz v2, :cond_c1

    .line 240
    const-string v2, "proximity_sensor_preference"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 245
    :cond_c1
    const-string v2, "nwservice_pref"

    invoke-virtual {p0, v2}, Lcom/android/settings/CallSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceGroup;

    iput-object v2, p0, Lcom/android/settings/CallSettings;->mNwservicePref:Landroid/preference/PreferenceGroup;

    .line 246
    return-void

    .end local v0           #P4_NOTE_RF_EUR_OPEN:Z
    .end local v1           #prefSet:Landroid/preference/PreferenceScreen;
    :cond_cc
    move v2, v4

    .line 214
    goto/16 :goto_3b

    .restart local v1       #prefSet:Landroid/preference/PreferenceScreen;
    :cond_cf
    move v0, v4

    .line 236
    goto :goto_ae
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 121
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 122
    invoke-virtual {p0}, Lcom/android/settings/CallSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/CallSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 123
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 7
    .parameter "preference"
    .parameter "objValue"

    .prologue
    .line 504
    iget-object v1, p0, Lcom/android/settings/CallSettings;->mButtonSipCallOptions:Landroid/preference/ListPreference;

    if-ne p1, v1, :cond_39

    .line 505
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 506
    .local v0, option:Ljava/lang/String;
    const-string v1, "CallSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "option in onPreferenceChange() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    invoke-direct {p0, v0}, Lcom/android/settings/CallSettings;->setSipCallOption(Ljava/lang/String;)V

    .line 508
    iget-object v1, p0, Lcom/android/settings/CallSettings;->mButtonSipCallOptions:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/settings/CallSettings;->mButtonSipCallOptions:Landroid/preference/ListPreference;

    invoke-virtual {v2, v0}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 509
    iget-object v1, p0, Lcom/android/settings/CallSettings;->mButtonSipCallOptions:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/settings/CallSettings;->mButtonSipCallOptions:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 511
    .end local v0           #option:Ljava/lang/String;
    :cond_39
    const/4 v1, 0x1

    return v1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 11
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v7, 0x0

    const/4 v3, 0x1

    .line 252
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 253
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 254
    .local v2, key:Ljava/lang/String;
    const-string v4, "CallSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Selected Key onPreferenceTreeClick() = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    const-string v4, "fixed_dialing"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3a

    .line 257
    const-string v3, "com.android.phone"

    const-string v4, "com.android.phone.FdnSetting"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 258
    invoke-virtual {p0, v1}, Lcom/android/settings/CallSettings;->startActivity(Landroid/content/Intent;)V

    .line 439
    :cond_35
    :goto_35
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v3

    :goto_39
    return v3

    .line 260
    :cond_3a
    const-string v4, "voicemail"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_52

    .line 261
    const-string v3, "com.android.phone"

    const-string v4, "com.android.phone.CallFeaturesSetting"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 262
    const-string v3, "com.android.phone.CallFeaturesSetting.ADD_VOICEMAIL"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 263
    invoke-virtual {p0, v1}, Lcom/android/settings/CallSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_35

    .line 265
    :cond_52
    const-string v4, "call_forwarding"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_65

    .line 266
    const-string v3, "com.android.phone"

    const-string v4, "com.android.phone.GsmUmtsCallForwardOptions"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 267
    invoke-virtual {p0, v1}, Lcom/android/settings/CallSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_35

    .line 269
    :cond_65
    const-string v4, "answering_call"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_78

    .line 270
    const-string v3, "com.android.phone"

    const-string v4, "com.android.phone.AnsweringCall"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 271
    invoke-virtual {p0, v1}, Lcom/android/settings/CallSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_35

    .line 273
    :cond_78
    const-string v4, "auto_reject"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8b

    .line 274
    const-string v3, "com.android.phone"

    const-string v4, "com.android.phone.AutoReject"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 275
    invoke-virtual {p0, v1}, Lcom/android/settings/CallSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_35

    .line 277
    :cond_8b
    const-string v4, "reject_call"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9e

    .line 278
    const-string v3, "com.android.phone"

    const-string v4, "com.android.phone.RejectCallWithMsgSetting"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 279
    invoke-virtual {p0, v1}, Lcom/android/settings/CallSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_35

    .line 281
    :cond_9e
    const-string v4, "additional_settings"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b1

    .line 282
    const-string v3, "com.android.phone"

    const-string v4, "com.android.phone.GsmUmtsAdditionalCallOptions"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 283
    invoke-virtual {p0, v1}, Lcom/android/settings/CallSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_35

    .line 285
    :cond_b1
    const-string v4, "sip_account_settings_key"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c5

    .line 286
    const-string v3, "com.android.phone"

    const-string v4, "com.android.phone.sip.SipSettings"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 287
    invoke-virtual {p0, v1}, Lcom/android/settings/CallSettings;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_35

    .line 289
    :cond_c5
    const-string v4, "preset_image"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d9

    .line 290
    const-string v3, "com.android.phone"

    const-string v4, "com.android.phone.PresetImage"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 291
    invoke-virtual {p0, v1}, Lcom/android/settings/CallSettings;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_35

    .line 293
    :cond_d9
    const-string v4, "proximity_sensor_preference"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17b

    .line 294
    iget-object v4, p0, Lcom/android/settings/CallSettings;->mProximitySensor:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-nez v4, :cond_167

    .line 304
    invoke-virtual {p0}, Lcom/android/settings/CallSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "incall_power_button_behavior"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 307
    .local v0, currntPowerButtonStatus:I
    const/4 v4, 0x2

    if-ne v0, v4, :cond_153

    .line 311
    iput-boolean v3, p0, Lcom/android/settings/CallSettings;->proximityChecked:Z

    .line 312
    iget-object v4, p0, Lcom/android/settings/CallSettings;->mProximitySensor:Landroid/preference/CheckBoxPreference;

    iget-boolean v5, p0, Lcom/android/settings/CallSettings;->proximityChecked:Z

    invoke-virtual {v4, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 315
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/CallSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/settings/CallSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    .line 316
    iget-object v4, p0, Lcom/android/settings/CallSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/CallSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f07096e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x1040014

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x1080027

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f07096f

    new-instance v6, Lcom/android/settings/CallSettings$4;

    invoke-direct {v6, p0}, Lcom/android/settings/CallSettings$4;-><init>(Lcom/android/settings/CallSettings;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f070970

    new-instance v6, Lcom/android/settings/CallSettings$3;

    invoke-direct {v6, p0}, Lcom/android/settings/CallSettings$3;-><init>(Lcom/android/settings/CallSettings;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v4

    new-instance v5, Lcom/android/settings/CallSettings$2;

    invoke-direct {v5, p0}, Lcom/android/settings/CallSettings$2;-><init>(Lcom/android/settings/CallSettings;)V

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto/16 :goto_39

    .line 350
    :cond_153
    invoke-virtual {p0}, Lcom/android/settings/CallSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "proximity_sensor"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 352
    iput-boolean v7, p0, Lcom/android/settings/CallSettings;->proximityChecked:Z

    .line 353
    iget-object v4, p0, Lcom/android/settings/CallSettings;->mProximitySensor:Landroid/preference/CheckBoxPreference;

    iget-boolean v5, p0, Lcom/android/settings/CallSettings;->proximityChecked:Z

    invoke-virtual {v4, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_39

    .line 356
    .end local v0           #currntPowerButtonStatus:I
    :cond_167
    invoke-virtual {p0}, Lcom/android/settings/CallSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "proximity_sensor"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 358
    iput-boolean v3, p0, Lcom/android/settings/CallSettings;->proximityChecked:Z

    .line 359
    iget-object v4, p0, Lcom/android/settings/CallSettings;->mProximitySensor:Landroid/preference/CheckBoxPreference;

    iget-boolean v5, p0, Lcom/android/settings/CallSettings;->proximityChecked:Z

    invoke-virtual {v4, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_39

    .line 421
    :cond_17b
    const-string v4, "failoption_preference"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a1

    .line 422
    iget-object v4, p0, Lcom/android/settings/CallSettings;->mCallFailOption:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_196

    .line 423
    invoke-virtual {p0}, Lcom/android/settings/CallSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "usecall_fail_option"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_39

    .line 426
    :cond_196
    invoke-virtual {p0}, Lcom/android/settings/CallSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "usecall_fail_option"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_39

    .line 430
    :cond_1a1
    const-string v4, "showme_preference"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_35

    .line 431
    iget-object v4, p0, Lcom/android/settings/CallSettings;->mShowMeForVideoCall:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_1bc

    .line 432
    invoke-virtual {p0}, Lcom/android/settings/CallSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "own_video_receivedcall"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_39

    .line 435
    :cond_1bc
    invoke-virtual {p0}, Lcom/android/settings/CallSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "own_video_receivedcall"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_39
.end method

.method public onResume()V
    .registers 16

    .prologue
    const/4 v14, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 128
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 130
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v11

    invoke-virtual {v11}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    .line 131
    .local v0, SimState:I
    invoke-virtual {p0}, Lcom/android/settings/CallSettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-static {v11}, Lcom/android/settings/AirplaneModeEnabler;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v4

    .line 132
    .local v4, isAirplaneMode:Z
    if-eqz v0, :cond_b4

    if-eq v0, v9, :cond_b4

    move v5, v9

    .line 135
    .local v5, isValidSimState:Z
    :goto_1b
    const-string v11, "CallSettings"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "sim status : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " isAirplaneMode : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    iget-object v11, p0, Lcom/android/settings/CallSettings;->mFixedDialing:Landroid/preference/PreferenceScreen;

    if-eqz v11, :cond_51

    .line 138
    iget-object v12, p0, Lcom/android/settings/CallSettings;->mFixedDialing:Landroid/preference/PreferenceScreen;

    if-eqz v4, :cond_4b

    invoke-direct {p0}, Lcom/android/settings/CallSettings;->isVoipSupported()Z

    move-result v11

    if-eqz v11, :cond_b7

    :cond_4b
    if-eqz v5, :cond_b7

    move v11, v9

    :goto_4e
    invoke-virtual {v12, v11}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 140
    :cond_51
    iget-object v11, p0, Lcom/android/settings/CallSettings;->mVoicemail:Landroid/preference/PreferenceScreen;

    if-eqz v11, :cond_65

    .line 141
    iget-object v12, p0, Lcom/android/settings/CallSettings;->mVoicemail:Landroid/preference/PreferenceScreen;

    if-eqz v4, :cond_5f

    invoke-direct {p0}, Lcom/android/settings/CallSettings;->isVoipSupported()Z

    move-result v11

    if-eqz v11, :cond_b9

    :cond_5f
    if-eqz v5, :cond_b9

    move v11, v9

    :goto_62
    invoke-virtual {v12, v11}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 143
    :cond_65
    iget-object v11, p0, Lcom/android/settings/CallSettings;->mCallForwarding:Landroid/preference/PreferenceScreen;

    if-eqz v11, :cond_79

    .line 144
    iget-object v12, p0, Lcom/android/settings/CallSettings;->mCallForwarding:Landroid/preference/PreferenceScreen;

    if-eqz v4, :cond_73

    invoke-direct {p0}, Lcom/android/settings/CallSettings;->isVoipSupported()Z

    move-result v11

    if-eqz v11, :cond_bb

    :cond_73
    if-eqz v5, :cond_bb

    move v11, v9

    :goto_76
    invoke-virtual {v12, v11}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 147
    :cond_79
    iget-object v11, p0, Lcom/android/settings/CallSettings;->mNwservicePref:Landroid/preference/PreferenceGroup;

    if-eqz v11, :cond_82

    .line 148
    iget-object v11, p0, Lcom/android/settings/CallSettings;->mNwservicePref:Landroid/preference/PreferenceGroup;

    invoke-virtual {v11, v5}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    .line 151
    :cond_82
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 152
    .local v2, filter:Landroid/content/IntentFilter;
    const-string v11, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v2, v11}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 153
    invoke-virtual {p0}, Lcom/android/settings/CallSettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    iget-object v12, p0, Lcom/android/settings/CallSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v11, v12, v2, v14, v14}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 156
    if-eqz v4, :cond_bd

    .line 157
    const-string v9, "sip_settings_category_key"

    invoke-virtual {p0, v9}, Lcom/android/settings/CallSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    .line 158
    .local v8, sipSettings:Landroid/preference/Preference;
    invoke-virtual {p0}, Lcom/android/settings/CallSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    .line 159
    .local v7, screen:Landroid/preference/PreferenceScreen;
    invoke-virtual {v7}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v1

    .line 160
    .local v1, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_a6
    if-ge v3, v1, :cond_102

    .line 161
    invoke-virtual {v7, v3}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v6

    .line 162
    .local v6, pref:Landroid/preference/Preference;
    if-eq v6, v8, :cond_b1

    .line 163
    invoke-virtual {v6, v10}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 160
    :cond_b1
    add-int/lit8 v3, v3, 0x1

    goto :goto_a6

    .end local v1           #count:I
    .end local v2           #filter:Landroid/content/IntentFilter;
    .end local v3           #i:I
    .end local v5           #isValidSimState:Z
    .end local v6           #pref:Landroid/preference/Preference;
    .end local v7           #screen:Landroid/preference/PreferenceScreen;
    .end local v8           #sipSettings:Landroid/preference/Preference;
    :cond_b4
    move v5, v10

    .line 132
    goto/16 :goto_1b

    .restart local v5       #isValidSimState:Z
    :cond_b7
    move v11, v10

    .line 138
    goto :goto_4e

    :cond_b9
    move v11, v10

    .line 141
    goto :goto_62

    :cond_bb
    move v11, v10

    .line 144
    goto :goto_76

    .line 169
    .restart local v2       #filter:Landroid/content/IntentFilter;
    :cond_bd
    iget-object v11, p0, Lcom/android/settings/CallSettings;->mShowMeForVideoCall:Landroid/preference/CheckBoxPreference;

    if-eqz v11, :cond_d3

    .line 170
    iget-object v12, p0, Lcom/android/settings/CallSettings;->mShowMeForVideoCall:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/CallSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v13, "own_video_receivedcall"

    invoke-static {v11, v13, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    if-ne v11, v9, :cond_103

    move v11, v9

    :goto_d0
    invoke-virtual {v12, v11}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 175
    :cond_d3
    iget-object v11, p0, Lcom/android/settings/CallSettings;->mCallFailOption:Landroid/preference/CheckBoxPreference;

    if-eqz v11, :cond_e9

    .line 176
    iget-object v12, p0, Lcom/android/settings/CallSettings;->mCallFailOption:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/CallSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v13, "usecall_fail_option"

    invoke-static {v11, v13, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    if-ne v11, v9, :cond_105

    move v11, v9

    :goto_e6
    invoke-virtual {v12, v11}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 181
    :cond_e9
    iget-object v11, p0, Lcom/android/settings/CallSettings;->mProximitySensor:Landroid/preference/CheckBoxPreference;

    if-eqz v11, :cond_102

    .line 182
    invoke-virtual {p0}, Lcom/android/settings/CallSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "proximity_sensor"

    invoke-static {v11, v12, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    if-ne v11, v9, :cond_107

    .line 184
    iput-boolean v9, p0, Lcom/android/settings/CallSettings;->proximityChecked:Z

    .line 188
    :goto_fb
    iget-object v9, p0, Lcom/android/settings/CallSettings;->mProximitySensor:Landroid/preference/CheckBoxPreference;

    iget-boolean v10, p0, Lcom/android/settings/CallSettings;->proximityChecked:Z

    invoke-virtual {v9, v10}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 204
    :cond_102
    return-void

    :cond_103
    move v11, v10

    .line 170
    goto :goto_d0

    :cond_105
    move v11, v10

    .line 176
    goto :goto_e6

    .line 186
    :cond_107
    iput-boolean v10, p0, Lcom/android/settings/CallSettings;->proximityChecked:Z

    goto :goto_fb
.end method
