.class public Lcom/android/settings/powersavingmode/PowerSavingModeSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "PowerSavingModeSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mAdjustBrightness:Landroid/preference/CheckBoxPreference;

.field private mBrightnessSetting:Landroid/preference/ListPreference;

.field private mCancelButton:Landroid/widget/Button;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mDisableBluetooth:Landroid/preference/CheckBoxPreference;

.field private mDisableGps:Landroid/preference/CheckBoxPreference;

.field private mDisableSync:Landroid/preference/CheckBoxPreference;

.field private mDisableWifi:Landroid/preference/CheckBoxPreference;

.field private mModeValueSetting:Landroid/preference/ListPreference;

.field private mNew_battery_level:I

.field private mNew_brightness_level:I

.field private mNew_screen_timeout:I

.field private mOkButton:Landroid/widget/Button;

.field private mOptionsMenu:Landroid/view/Menu;

.field private mSaved_battery_level:I

.field private mSaved_brightness_level:I

.field private mSaved_screen_timeout:I

.field private mScreentimeout:Landroid/preference/ListPreference;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/16 v0, 0x3a98

    .line 46
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 107
    iput v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mSaved_screen_timeout:I

    .line 111
    iput v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mNew_screen_timeout:I

    return-void
.end method

.method private disableUnusableTimeouts(Landroid/preference/ListPreference;)V
    .registers 15
    .parameter "screenTimeoutPreference"

    .prologue
    .line 234
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    const-string v12, "device_policy"

    invoke-virtual {v11, v12}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 237
    .local v0, dpm:Landroid/app/admin/DevicePolicyManager;
    if-eqz v0, :cond_2a

    const/4 v11, 0x0

    invoke-virtual {v0, v11}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v3

    .line 239
    .local v3, maxTimeout:J
    :goto_13
    const-wide/32 v11, 0x927c0

    invoke-static {v3, v4, v11, v12}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    .line 240
    const-wide/16 v11, 0x1

    cmp-long v11, v3, v11

    if-gez v11, :cond_23

    .line 241
    const-wide/32 v3, 0x927c0

    .line 245
    :cond_23
    const-wide/16 v11, 0x0

    cmp-long v11, v3, v11

    if-nez v11, :cond_2d

    .line 276
    :goto_29
    return-void

    .line 237
    .end local v3           #maxTimeout:J
    :cond_2a
    const-wide/16 v3, 0x0

    goto :goto_13

    .line 249
    .restart local v3       #maxTimeout:J
    :cond_2d
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 250
    .local v1, entries:[Ljava/lang/CharSequence;
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v10

    .line 251
    .local v10, values:[Ljava/lang/CharSequence;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 252
    .local v5, revisedEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 253
    .local v6, revisedValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_40
    array-length v11, v10

    if-ge v2, v11, :cond_5e

    .line 254
    aget-object v11, v10, v2

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    .line 255
    .local v7, timeout:J
    cmp-long v11, v7, v3

    if-gtz v11, :cond_5b

    .line 256
    aget-object v11, v1, v2

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 257
    aget-object v11, v10, v2

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 253
    :cond_5b
    add-int/lit8 v2, v2, 0x1

    goto :goto_40

    .line 261
    .end local v7           #timeout:J
    :cond_5e
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v11

    array-length v12, v1

    if-ne v11, v12, :cond_6c

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v11

    array-length v12, v10

    if-eq v11, v12, :cond_9e

    .line 262
    :cond_6c
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v11

    new-array v11, v11, [Ljava/lang/CharSequence;

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/lang/CharSequence;

    invoke-virtual {p1, v11}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 263
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v11

    new-array v11, v11, [Ljava/lang/CharSequence;

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/lang/CharSequence;

    invoke-virtual {p1, v11}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 264
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 265
    .local v9, userPreference:I
    int-to-long v11, v9

    cmp-long v11, v11, v3

    if-gtz v11, :cond_a9

    .line 266
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1, v11}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 275
    .end local v9           #userPreference:I
    :cond_9e
    :goto_9e
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_b1

    const/4 v11, 0x1

    :goto_a5
    invoke-virtual {p1, v11}, Landroid/preference/ListPreference;->setEnabled(Z)V

    goto :goto_29

    .line 268
    .restart local v9       #userPreference:I
    :cond_a9
    const-string v11, "PowerSavingModeSettings"

    const-string v12, "mLockAfter.setValueIndex(revisedValues.size()-1)"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9e

    .line 275
    .end local v9           #userPreference:I
    :cond_b1
    const/4 v11, 0x0

    goto :goto_a5
.end method

.method private toggleBrightnessSetting()V
    .registers 3

    .prologue
    .line 373
    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mAdjustBrightness:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 374
    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mBrightnessSetting:Landroid/preference/ListPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 378
    :goto_e
    return-void

    .line 376
    :cond_f
    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mBrightnessSetting:Landroid/preference/ListPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEnabled(Z)V

    goto :goto_e
.end method

.method private updateUIFromPreferences()V
    .registers 11

    .prologue
    const/16 v9, 0x32

    const/16 v8, 0x1e

    const/16 v7, 0xa

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 337
    iget-object v2, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "psm_battery_level"

    invoke-static {v2, v5, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 338
    .local v0, batteryValue:I
    if-ne v0, v7, :cond_8f

    .line 339
    iget-object v2, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mModeValueSetting:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const v6, 0x7f0707c8

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 350
    :cond_22
    :goto_22
    iget-object v2, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "psm_brightness_level"

    invoke-static {v2, v5, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 351
    .local v1, brightnessValue:I
    if-ne v1, v7, :cond_e3

    .line 352
    iget-object v2, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mBrightnessSetting:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const v6, 0x7f0707cd

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 363
    :cond_3c
    :goto_3c
    invoke-direct {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->toggleBrightnessSetting()V

    .line 365
    iget-object v5, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mDisableWifi:Landroid/preference/CheckBoxPreference;

    iget-object v2, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v6, "psm_wifi"

    invoke-static {v2, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_137

    move v2, v3

    :goto_4c
    invoke-virtual {v5, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 366
    iget-object v5, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mDisableBluetooth:Landroid/preference/CheckBoxPreference;

    iget-object v2, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v6, "psm_bluetooth"

    invoke-static {v2, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_13a

    move v2, v3

    :goto_5c
    invoke-virtual {v5, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 367
    iget-object v5, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mDisableGps:Landroid/preference/CheckBoxPreference;

    iget-object v2, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v6, "psm_gps"

    invoke-static {v2, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_13d

    move v2, v3

    :goto_6c
    invoke-virtual {v5, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 368
    iget-object v5, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mDisableSync:Landroid/preference/CheckBoxPreference;

    iget-object v2, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v6, "psm_sync"

    invoke-static {v2, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_140

    move v2, v3

    :goto_7c
    invoke-virtual {v5, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 369
    iget-object v2, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mAdjustBrightness:Landroid/preference/CheckBoxPreference;

    iget-object v5, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v6, "psm_brightness"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v3, :cond_143

    :goto_8b
    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 370
    return-void

    .line 340
    .end local v1           #brightnessValue:I
    :cond_8f
    const/16 v2, 0x14

    if-ne v0, v2, :cond_a5

    .line 341
    iget-object v2, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mModeValueSetting:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const v6, 0x7f0707c9

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_22

    .line 342
    :cond_a5
    if-ne v0, v8, :cond_b9

    .line 343
    iget-object v2, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mModeValueSetting:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const v6, 0x7f0707ca

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_22

    .line 344
    :cond_b9
    const/16 v2, 0x28

    if-ne v0, v2, :cond_cf

    .line 345
    iget-object v2, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mModeValueSetting:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const v6, 0x7f0707cb

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_22

    .line 346
    :cond_cf
    if-ne v0, v9, :cond_22

    .line 347
    iget-object v2, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mModeValueSetting:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const v6, 0x7f0707cc

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_22

    .line 353
    .restart local v1       #brightnessValue:I
    :cond_e3
    if-ne v1, v8, :cond_f7

    .line 354
    iget-object v2, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mBrightnessSetting:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const v6, 0x7f0707ce

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_3c

    .line 355
    :cond_f7
    if-ne v1, v9, :cond_10b

    .line 356
    iget-object v2, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mBrightnessSetting:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const v6, 0x7f0707cf

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_3c

    .line 357
    :cond_10b
    const/16 v2, 0x46

    if-ne v1, v2, :cond_121

    .line 358
    iget-object v2, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mBrightnessSetting:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const v6, 0x7f0707d0

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_3c

    .line 359
    :cond_121
    const/16 v2, 0x64

    if-ne v1, v2, :cond_3c

    .line 360
    iget-object v2, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mBrightnessSetting:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const v6, 0x7f0707d1

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_3c

    :cond_137
    move v2, v4

    .line 365
    goto/16 :goto_4c

    :cond_13a
    move v2, v4

    .line 366
    goto/16 :goto_5c

    :cond_13d
    move v2, v4

    .line 367
    goto/16 :goto_6c

    :cond_140
    move v2, v4

    .line 368
    goto/16 :goto_7c

    :cond_143
    move v3, v4

    .line 369
    goto/16 :goto_8b
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8
    .parameter "v"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 380
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mOkButton:Landroid/widget/Button;

    if-ne p1, v1, :cond_98

    .line 381
    iget v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mNew_battery_level:I

    iput v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mSaved_battery_level:I

    .line 382
    iget v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mNew_brightness_level:I

    iput v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mSaved_brightness_level:I

    .line 383
    iget v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mNew_screen_timeout:I

    iput v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mSaved_screen_timeout:I

    .line 385
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "psm_battery_level"

    iget v5, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mSaved_battery_level:I

    invoke-static {v1, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 386
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "psm_brightness_level"

    iget v5, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mSaved_brightness_level:I

    invoke-static {v1, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 387
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "psm_screen_timeout"

    iget v5, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mSaved_screen_timeout:I

    invoke-static {v1, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 389
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.POWERSAVING_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 390
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 392
    iget-object v4, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "psm_wifi"

    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mDisableWifi:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_8e

    move v1, v2

    :goto_48
    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 393
    iget-object v4, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "psm_bluetooth"

    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mDisableBluetooth:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_90

    move v1, v2

    :goto_58
    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 395
    iget-object v4, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "psm_gps"

    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mDisableGps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_92

    move v1, v2

    :goto_68
    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 396
    iget-object v4, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "psm_sync"

    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mDisableSync:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_94

    move v1, v2

    :goto_78
    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 397
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "psm_brightness"

    iget-object v5, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mAdjustBrightness:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_96

    :goto_87
    invoke-static {v1, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 400
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->finish()V

    .line 407
    .end local v0           #intent:Landroid/content/Intent;
    :cond_8d
    :goto_8d
    return-void

    .restart local v0       #intent:Landroid/content/Intent;
    :cond_8e
    move v1, v3

    .line 392
    goto :goto_48

    :cond_90
    move v1, v3

    .line 393
    goto :goto_58

    :cond_92
    move v1, v3

    .line 395
    goto :goto_68

    :cond_94
    move v1, v3

    .line 396
    goto :goto_78

    :cond_96
    move v2, v3

    .line 397
    goto :goto_87

    .line 401
    .end local v0           #intent:Landroid/content/Intent;
    :cond_98
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mCancelButton:Landroid/widget/Button;

    if-ne p1, v1, :cond_8d

    .line 402
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "psm_battery_level"

    iget v3, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mSaved_battery_level:I

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 403
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "psm_brightness_level"

    iget v3, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mSaved_brightness_level:I

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 404
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "psm_screen_timeout"

    iget v3, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mSaved_screen_timeout:I

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 405
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->finish()V

    goto :goto_8d
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 122
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 124
    const v0, 0x7f050025

    invoke-virtual {p0, v0}, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->addPreferencesFromResource(I)V

    .line 125
    invoke-virtual {p0, v1}, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->setHasOptionsMenu(Z)V

    .line 127
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mContentResolver:Landroid/content/ContentResolver;

    .line 129
    const-string v0, "on_battery_level"

    invoke-virtual {p0, v0}, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mModeValueSetting:Landroid/preference/ListPreference;

    .line 130
    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mModeValueSetting:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 131
    const-string v0, "disable_wifi"

    invoke-virtual {p0, v0}, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mDisableWifi:Landroid/preference/CheckBoxPreference;

    .line 132
    const-string v0, "disable_bluetooth"

    invoke-virtual {p0, v0}, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mDisableBluetooth:Landroid/preference/CheckBoxPreference;

    .line 133
    const-string v0, "disable_gps"

    invoke-virtual {p0, v0}, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mDisableGps:Landroid/preference/CheckBoxPreference;

    .line 134
    const-string v0, "disable_sync"

    invoke-virtual {p0, v0}, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mDisableSync:Landroid/preference/CheckBoxPreference;

    .line 135
    const-string v0, "disable_brightness"

    invoke-virtual {p0, v0}, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mAdjustBrightness:Landroid/preference/CheckBoxPreference;

    .line 136
    const-string v0, "brightness_setting"

    invoke-virtual {p0, v0}, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mBrightnessSetting:Landroid/preference/ListPreference;

    .line 137
    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mBrightnessSetting:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 138
    const-string v0, "screentimeout_setting"

    invoke-virtual {p0, v0}, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mScreentimeout:Landroid/preference/ListPreference;

    .line 139
    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mScreentimeout:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 141
    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "psm_battery_level"

    const/16 v4, 0x1e

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mSaved_battery_level:I

    .line 142
    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "psm_brightness_level"

    const/16 v4, 0xa

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mSaved_brightness_level:I

    .line 143
    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "psm_screen_timeout"

    const/16 v4, 0x3a98

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mSaved_screen_timeout:I

    .line 145
    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mModeValueSetting:Landroid/preference/ListPreference;

    iget v3, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mSaved_battery_level:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mBrightnessSetting:Landroid/preference/ListPreference;

    iget v3, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mSaved_brightness_level:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mScreentimeout:Landroid/preference/ListPreference;

    iget v3, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mSaved_screen_timeout:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 149
    iget v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mSaved_battery_level:I

    iput v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mNew_battery_level:I

    .line 150
    iget v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mSaved_brightness_level:I

    iput v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mNew_brightness_level:I

    .line 151
    iget v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mSaved_screen_timeout:I

    iput v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mNew_screen_timeout:I

    .line 153
    const-string v0, "PowerSavingModeSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCreate/ mSaved_battery_level = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mSaved_battery_level:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mSaved_brightness_level = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mSaved_brightness_level:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mSaved_screen_timeout = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mSaved_screen_timeout:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    iget-object v3, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mDisableWifi:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "psm_wifi"

    invoke-static {v0, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_152

    move v0, v1

    :goto_107
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 159
    iget-object v3, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mDisableBluetooth:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "psm_bluetooth"

    invoke-static {v0, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_154

    move v0, v1

    :goto_117
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 160
    iget-object v3, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mDisableGps:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "psm_gps"

    invoke-static {v0, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_156

    move v0, v1

    :goto_127
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 161
    iget-object v3, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mDisableSync:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "psm_sync"

    invoke-static {v0, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_158

    move v0, v1

    :goto_137
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 162
    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mAdjustBrightness:Landroid/preference/CheckBoxPreference;

    iget-object v3, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "psm_brightness"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_15a

    :goto_146
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 164
    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mScreentimeout:Landroid/preference/ListPreference;

    invoke-direct {p0, v0}, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->disableUnusableTimeouts(Landroid/preference/ListPreference;)V

    .line 166
    invoke-direct {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->updateUIFromPreferences()V

    .line 167
    return-void

    :cond_152
    move v0, v2

    .line 158
    goto :goto_107

    :cond_154
    move v0, v2

    .line 159
    goto :goto_117

    :cond_156
    move v0, v2

    .line 160
    goto :goto_127

    :cond_158
    move v0, v2

    .line 161
    goto :goto_137

    :cond_15a
    move v1, v2

    .line 162
    goto :goto_146
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .registers 9
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v5, 0x5

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 193
    const-string v0, "PowerSavingModeSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreateOptionsMenu in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 196
    iput-object p1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mOptionsMenu:Landroid/view/Menu;

    .line 198
    const v0, 0x7f070492

    invoke-interface {p1, v3, v3, v3, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0200b3

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 200
    const v0, 0x7f07010e

    invoke-interface {p1, v3, v4, v3, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0200ae

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 203
    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v0, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 205
    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v0, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 208
    :cond_5d
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 209
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 7
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 173
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_33

    .line 174
    const v1, 0x7f040036

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 176
    .local v0, mContentView:Landroid/view/View;
    const v1, 0x7f09006a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mOkButton:Landroid/widget/Button;

    .line 177
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mOkButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 178
    const v1, 0x7f090019

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mCancelButton:Landroid/widget/Button;

    .line 179
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    .end local v0           #mContentView:Landroid/view/View;
    :goto_32
    return-object v0

    :cond_33
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    goto :goto_32
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 228
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 229
    const-string v0, "menupowersaving"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 8
    .parameter "item"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 411
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_124

    .line 453
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    :goto_d
    return v2

    .line 413
    :pswitch_e
    iget v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mNew_battery_level:I

    iput v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mSaved_battery_level:I

    .line 414
    iget v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mNew_brightness_level:I

    iput v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mSaved_brightness_level:I

    .line 415
    iget v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mNew_screen_timeout:I

    iput v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mSaved_screen_timeout:I

    .line 417
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "psm_battery_level"

    iget v5, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mSaved_battery_level:I

    invoke-static {v1, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 418
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "psm_brightness_level"

    iget v5, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mSaved_brightness_level:I

    invoke-static {v1, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 419
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "psm_screen_timeout"

    iget v5, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mSaved_screen_timeout:I

    invoke-static {v1, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 421
    const-string v1, "PowerSavingModeSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onOptionsItemSelected/mSaved_battery_level = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mSaved_battery_level:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mSaved_brightness_level = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mSaved_brightness_level:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mSaved_screen_timeout = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mSaved_screen_timeout:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    iget-object v4, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "psm_wifi"

    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mDisableWifi:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_ca

    move v1, v2

    :goto_74
    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 427
    iget-object v4, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "psm_bluetooth"

    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mDisableBluetooth:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_cc

    move v1, v2

    :goto_84
    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 429
    iget-object v4, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "psm_gps"

    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mDisableGps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_ce

    move v1, v2

    :goto_94
    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 430
    iget-object v4, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "psm_sync"

    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mDisableSync:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_d0

    move v1, v2

    :goto_a4
    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 431
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "psm_brightness"

    iget-object v5, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mAdjustBrightness:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_b4

    move v3, v2

    :cond_b4
    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 434
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.POWERSAVING_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 435
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 437
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->finishFragment()V

    goto/16 :goto_d

    .end local v0           #intent:Landroid/content/Intent;
    :cond_ca
    move v1, v3

    .line 426
    goto :goto_74

    :cond_cc
    move v1, v3

    .line 427
    goto :goto_84

    :cond_ce
    move v1, v3

    .line 429
    goto :goto_94

    :cond_d0
    move v1, v3

    .line 430
    goto :goto_a4

    .line 441
    :pswitch_d2
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "psm_battery_level"

    iget v4, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mSaved_battery_level:I

    invoke-static {v1, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 442
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "psm_brightness_level"

    iget v4, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mSaved_brightness_level:I

    invoke-static {v1, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 443
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "psm_screen_timeout"

    iget v4, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mSaved_screen_timeout:I

    invoke-static {v1, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 445
    const-string v1, "PowerSavingModeSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onOptionsItemSelected/mSaved_battery_level = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mSaved_battery_level:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mSaved_brightness_level = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mSaved_brightness_level:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mSaved_screen_timeout = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mSaved_screen_timeout:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->finishFragment()V

    goto/16 :goto_d

    .line 411
    :pswitch_data_124
    .packed-switch 0x0
        :pswitch_e
        :pswitch_d2
    .end packed-switch
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 11
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/16 v7, 0x32

    const/16 v6, 0x1e

    const/16 v5, 0xa

    .line 290
    const-string v3, "PowerSavingModeSettings"

    const-string v4, "onPreferenceChange"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    iget-object v3, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mModeValueSetting:Landroid/preference/ListPreference;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_88

    .line 293
    const-string v3, "PowerSavingModeSettings"

    const-string v4, "set battery level is changed"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 296
    .local v0, new_battery_level:I
    if-ne v0, v5, :cond_38

    .line 297
    iget-object v3, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mModeValueSetting:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0707c8

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 307
    :cond_34
    :goto_34
    iput v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mNew_battery_level:I

    .line 332
    .end local v0           #new_battery_level:I
    :cond_36
    :goto_36
    const/4 v3, 0x1

    return v3

    .line 298
    .restart local v0       #new_battery_level:I
    :cond_38
    const/16 v3, 0x14

    if-ne v0, v3, :cond_4d

    .line 299
    iget-object v3, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mModeValueSetting:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0707c9

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_34

    .line 300
    :cond_4d
    if-ne v0, v6, :cond_60

    .line 301
    iget-object v3, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mModeValueSetting:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0707ca

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_34

    .line 302
    :cond_60
    const/16 v3, 0x28

    if-ne v0, v3, :cond_75

    .line 303
    iget-object v3, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mModeValueSetting:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0707cb

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_34

    .line 304
    :cond_75
    if-ne v0, v7, :cond_34

    .line 305
    iget-object v3, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mModeValueSetting:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0707cc

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_34

    .line 308
    .end local v0           #new_battery_level:I
    .restart local p2
    :cond_88
    iget-object v3, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mBrightnessSetting:Landroid/preference/ListPreference;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_102

    .line 309
    const-string v3, "PowerSavingModeSettings"

    const-string v4, "Brightness level is changed"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 312
    .local v1, new_brightness_level:I
    if-ne v1, v5, :cond_b2

    .line 313
    iget-object v3, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mBrightnessSetting:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0707cd

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 323
    :cond_af
    :goto_af
    iput v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mNew_brightness_level:I

    goto :goto_36

    .line 314
    :cond_b2
    if-ne v1, v6, :cond_c5

    .line 315
    iget-object v3, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mBrightnessSetting:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0707ce

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_af

    .line 316
    :cond_c5
    if-ne v1, v7, :cond_d8

    .line 317
    iget-object v3, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mBrightnessSetting:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0707cf

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_af

    .line 318
    :cond_d8
    const/16 v3, 0x46

    if-ne v1, v3, :cond_ed

    .line 319
    iget-object v3, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mBrightnessSetting:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0707d0

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_af

    .line 320
    :cond_ed
    const/16 v3, 0x64

    if-ne v1, v3, :cond_af

    .line 321
    iget-object v3, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mBrightnessSetting:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0707d1

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_af

    .line 324
    .end local v1           #new_brightness_level:I
    .restart local p2
    :cond_102
    iget-object v3, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mScreentimeout:Landroid/preference/ListPreference;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_36

    .line 325
    const-string v3, "PowerSavingModeSettings"

    const-string v4, "Screentimeout is changed"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 328
    .local v2, new_screen_timeout:I
    const-string v3, "PowerSavingModeSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPreferenceChange/mNew_screen_timeout = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mNew_screen_timeout:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    iput v2, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mNew_screen_timeout:I

    goto/16 :goto_36
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 5
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 280
    const-string v0, "PowerSavingModeSettings"

    const-string v1, "onPreferenceTreeClick"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mAdjustBrightness:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 283
    invoke-direct {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->toggleBrightnessSetting()V

    .line 286
    :cond_12
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .registers 5
    .parameter "menu"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 213
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 215
    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mOptionsMenu:Landroid/view/Menu;

    if-nez v0, :cond_11

    .line 216
    const-string v0, "PowerSavingModeSettings"

    const-string v1, "mOptionsMenu is null in onPrepareOptionsMenu "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    :goto_10
    return-void

    .line 219
    :cond_11
    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v0, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 220
    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 222
    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v0, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 223
    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_10
.end method

.method public onResume()V
    .registers 1

    .prologue
    .line 187
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 188
    return-void
.end method
