.class public Lcom/android/settings/VoiceInputOutputSettings;
.super Ljava/lang/Object;
.source "VoiceInputOutputSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mAvailableRecognizersMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mFragment:Lcom/android/settings/SettingsPreferenceFragment;

.field private mParent:Landroid/preference/PreferenceGroup;

.field private mRecognizerPref:Landroid/preference/ListPreference;

.field private mRecognizerSettingsPref:Landroid/preference/Preference;

.field private mSettingsPref:Landroid/preference/PreferenceScreen;

.field private final mTtsEngines:Landroid/speech/tts/TtsEngines;

.field private mTtsSettingsPref:Landroid/preference/Preference;

.field private mVoiceCategory:Landroid/preference/PreferenceCategory;


# direct methods
.method public constructor <init>(Lcom/android/settings/SettingsPreferenceFragment;)V
    .registers 4
    .parameter "fragment"

    .prologue
    .line 72
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lcom/android/settings/VoiceInputOutputSettings;->mFragment:Lcom/android/settings/SettingsPreferenceFragment;

    .line 74
    new-instance v0, Landroid/speech/tts/TtsEngines;

    invoke-virtual {p1}, Lcom/android/settings/SettingsPreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/speech/tts/TtsEngines;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/VoiceInputOutputSettings;->mTtsEngines:Landroid/speech/tts/TtsEngines;

    .line 75
    return-void
.end method

.method private populateOrRemovePreferences()V
    .registers 5

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/android/settings/VoiceInputOutputSettings;->populateOrRemoveRecognizerPrefs()Z

    move-result v0

    .line 95
    .local v0, hasRecognizerPrefs:Z
    invoke-direct {p0}, Lcom/android/settings/VoiceInputOutputSettings;->populateOrRemoveTtsPrefs()Z

    move-result v1

    .line 96
    .local v1, hasTtsPrefs:Z
    if-nez v0, :cond_17

    if-nez v1, :cond_17

    .line 100
    iget-object v2, p0, Lcom/android/settings/VoiceInputOutputSettings;->mFragment:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {v2}, Lcom/android/settings/SettingsPreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/VoiceInputOutputSettings;->mVoiceCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 102
    :cond_17
    return-void
.end method

.method private populateOrRemoveRecognizerPrefs()Z
    .registers 11

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 105
    iget-object v7, p0, Lcom/android/settings/VoiceInputOutputSettings;->mFragment:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {v7}, Lcom/android/settings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.speech.RecognitionService"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v9, 0x80

    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 109
    .local v0, availableRecognitionServices:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 111
    .local v2, numAvailable:I
    if-nez v2, :cond_2a

    .line 112
    iget-object v6, p0, Lcom/android/settings/VoiceInputOutputSettings;->mVoiceCategory:Landroid/preference/PreferenceCategory;

    iget-object v7, p0, Lcom/android/settings/VoiceInputOutputSettings;->mRecognizerPref:Landroid/preference/ListPreference;

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 113
    iget-object v6, p0, Lcom/android/settings/VoiceInputOutputSettings;->mVoiceCategory:Landroid/preference/PreferenceCategory;

    iget-object v7, p0, Lcom/android/settings/VoiceInputOutputSettings;->mRecognizerSettingsPref:Landroid/preference/Preference;

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 140
    :goto_29
    return v5

    .line 117
    :cond_2a
    if-ne v2, v6, :cond_60

    .line 120
    iget-object v7, p0, Lcom/android/settings/VoiceInputOutputSettings;->mVoiceCategory:Landroid/preference/PreferenceCategory;

    iget-object v8, p0, Lcom/android/settings/VoiceInputOutputSettings;->mRecognizerPref:Landroid/preference/ListPreference;

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 123
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 124
    .local v4, resolveInfo:Landroid/content/pm/ResolveInfo;
    new-instance v5, Landroid/content/ComponentName;

    iget-object v7, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v7, v7, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v8, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v8, v8, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v5, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    .line 128
    .local v3, recognizerComponent:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/settings/VoiceInputOutputSettings;->mAvailableRecognizersMap:Ljava/util/HashMap;

    invoke-virtual {v5, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    iget-object v5, p0, Lcom/android/settings/VoiceInputOutputSettings;->mFragment:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {v5}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v7, "voice_recognition_service"

    invoke-static {v5, v7}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 132
    .local v1, currentSetting:Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/android/settings/VoiceInputOutputSettings;->updateSettingsLink(Ljava/lang/String;)V

    .end local v1           #currentSetting:Ljava/lang/String;
    .end local v3           #recognizerComponent:Ljava/lang/String;
    .end local v4           #resolveInfo:Landroid/content/pm/ResolveInfo;
    :goto_5e
    move v5, v6

    .line 140
    goto :goto_29

    .line 135
    :cond_60
    invoke-direct {p0, v0}, Lcom/android/settings/VoiceInputOutputSettings;->populateRecognizerPreference(Ljava/util/List;)V

    goto :goto_5e
.end method

.method private populateOrRemoveTtsPrefs()Z
    .registers 3

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/settings/VoiceInputOutputSettings;->mTtsEngines:Landroid/speech/tts/TtsEngines;

    invoke-virtual {v0}, Landroid/speech/tts/TtsEngines;->getEngines()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 145
    iget-object v0, p0, Lcom/android/settings/VoiceInputOutputSettings;->mVoiceCategory:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/settings/VoiceInputOutputSettings;->mTtsSettingsPref:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 146
    const/4 v0, 0x0

    .line 149
    :goto_14
    return v0

    :cond_15
    const/4 v0, 0x1

    goto :goto_14
.end method

.method private populateRecognizerPreference(Ljava/util/List;)V
    .registers 12
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 153
    .local p1, recognizers:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    .line 154
    .local v5, size:I
    new-array v1, v5, [Ljava/lang/CharSequence;

    .line 155
    .local v1, entries:[Ljava/lang/CharSequence;
    new-array v6, v5, [Ljava/lang/CharSequence;

    .line 158
    .local v6, values:[Ljava/lang/CharSequence;
    iget-object v7, p0, Lcom/android/settings/VoiceInputOutputSettings;->mFragment:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {v7}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "voice_recognition_service"

    invoke-static {v7, v8}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 164
    .local v0, currentSetting:Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_15
    if-ge v2, v5, :cond_44

    .line 165
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 166
    .local v4, resolveInfo:Landroid/content/pm/ResolveInfo;
    new-instance v7, Landroid/content/ComponentName;

    iget-object v8, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v8, v8, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v9, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v9, v9, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v7, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    .line 170
    .local v3, recognizerComponent:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/settings/VoiceInputOutputSettings;->mAvailableRecognizersMap:Ljava/util/HashMap;

    invoke-virtual {v7, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    iget-object v7, p0, Lcom/android/settings/VoiceInputOutputSettings;->mFragment:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {v7}, Lcom/android/settings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    aput-object v7, v1, v2

    .line 173
    aput-object v3, v6, v2

    .line 164
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 176
    .end local v3           #recognizerComponent:Ljava/lang/String;
    .end local v4           #resolveInfo:Landroid/content/pm/ResolveInfo;
    :cond_44
    iget-object v7, p0, Lcom/android/settings/VoiceInputOutputSettings;->mRecognizerPref:Landroid/preference/ListPreference;

    invoke-virtual {v7, v1}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 177
    iget-object v7, p0, Lcom/android/settings/VoiceInputOutputSettings;->mRecognizerPref:Landroid/preference/ListPreference;

    invoke-virtual {v7, v6}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 179
    iget-object v7, p0, Lcom/android/settings/VoiceInputOutputSettings;->mRecognizerPref:Landroid/preference/ListPreference;

    invoke-virtual {v7, v0}, Landroid/preference/ListPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 180
    iget-object v7, p0, Lcom/android/settings/VoiceInputOutputSettings;->mRecognizerPref:Landroid/preference/ListPreference;

    invoke-virtual {v7, v0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 182
    invoke-direct {p0, v0}, Lcom/android/settings/VoiceInputOutputSettings;->updateSettingsLink(Ljava/lang/String;)V

    .line 183
    return-void
.end method

.method private updateSettingsLink(Ljava/lang/String;)V
    .registers 19
    .parameter "currentSetting"

    .prologue
    .line 186
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_69

    .line 187
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/VoiceInputOutputSettings;->mFragment:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {v14}, Lcom/android/settings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    new-instance v15, Landroid/content/Intent;

    const-string v16, "android.speech.RecognitionService"

    invoke-direct/range {v15 .. v16}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v16, 0x80

    invoke-virtual/range {v14 .. v16}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 192
    .local v3, availableRecognitionServices:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v14, 0x0

    invoke-interface {v3, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/ResolveInfo;

    .line 193
    .local v10, resolveInfo:Landroid/content/pm/ResolveInfo;
    new-instance v14, Landroid/content/ComponentName;

    iget-object v15, v10, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v15, v15, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v0, v10, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-direct/range {v14 .. v16}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v14}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p1

    .line 196
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_5a

    .line 198
    const-string v14, "VoiceInputOutputSettings"

    const-string v15, "No recognizer is defined"

    invoke-static {v14, v15}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/VoiceInputOutputSettings;->mSettingsPref:Landroid/preference/PreferenceScreen;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/preference/PreferenceScreen;->setIntent(Landroid/content/Intent;)V

    .line 200
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/VoiceInputOutputSettings;->mVoiceCategory:Landroid/preference/PreferenceCategory;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/VoiceInputOutputSettings;->mSettingsPref:Landroid/preference/PreferenceScreen;

    invoke-virtual {v14, v15}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 265
    .end local v3           #availableRecognitionServices:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v10           #resolveInfo:Landroid/content/pm/ResolveInfo;
    :goto_59
    return-void

    .line 206
    .restart local v3       #availableRecognitionServices:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v10       #resolveInfo:Landroid/content/pm/ResolveInfo;
    :cond_5a
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/VoiceInputOutputSettings;->mFragment:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {v14}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "voice_recognition_service"

    move-object/from16 v0, p1

    invoke-static {v14, v15, v0}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 211
    .end local v3           #availableRecognitionServices:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v10           #resolveInfo:Landroid/content/pm/ResolveInfo;
    :cond_69
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/VoiceInputOutputSettings;->mAvailableRecognizersMap:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 212
    .local v4, currentRecognizer:Landroid/content/pm/ResolveInfo;
    iget-object v12, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 213
    .local v12, si:Landroid/content/pm/ServiceInfo;
    const/4 v8, 0x0

    .line 214
    .local v8, parser:Landroid/content/res/XmlResourceParser;
    const/4 v11, 0x0

    .line 216
    .local v11, settingsActivity:Ljava/lang/String;
    :try_start_79
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/VoiceInputOutputSettings;->mFragment:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {v14}, Lcom/android/settings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    const-string v15, "android.speech"

    invoke-virtual {v12, v14, v15}, Landroid/content/pm/ServiceInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v8

    .line 218
    if-nez v8, :cond_e6

    .line 219
    new-instance v14, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "No android.speech meta-data for "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget-object v0, v12, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v14
    :try_end_a6
    .catchall {:try_start_79 .. :try_end_a6} :catchall_148
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_79 .. :try_end_a6} :catch_a6
    .catch Ljava/io/IOException; {:try_start_79 .. :try_end_a6} :catch_116
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_79 .. :try_end_a6} :catch_139

    .line 244
    :catch_a6
    move-exception v5

    .line 245
    .local v5, e:Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_a7
    const-string v14, "VoiceInputOutputSettings"

    const-string v15, "error parsing recognition service meta-data"

    invoke-static {v14, v15, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_ae
    .catchall {:try_start_a7 .. :try_end_ae} :catchall_148

    .line 251
    if-eqz v8, :cond_b3

    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->close()V

    .line 254
    .end local v5           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :cond_b3
    :goto_b3
    if-nez v11, :cond_14f

    .line 256
    const-string v14, "VoiceInputOutputSettings"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "no recognizer settings available for "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget-object v0, v12, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/VoiceInputOutputSettings;->mSettingsPref:Landroid/preference/PreferenceScreen;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/preference/PreferenceScreen;->setIntent(Landroid/content/Intent;)V

    .line 258
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/VoiceInputOutputSettings;->mVoiceCategory:Landroid/preference/PreferenceCategory;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/VoiceInputOutputSettings;->mSettingsPref:Landroid/preference/PreferenceScreen;

    invoke-virtual {v14, v15}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_59

    .line 223
    :cond_e6
    :try_start_e6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/VoiceInputOutputSettings;->mFragment:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {v14}, Lcom/android/settings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    iget-object v15, v12, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v14, v15}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v9

    .line 226
    .local v9, res:Landroid/content/res/Resources;
    invoke-static {v8}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v2

    .line 230
    .local v2, attrs:Landroid/util/AttributeSet;
    :cond_f8
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v13

    .local v13, type:I
    const/4 v14, 0x1

    if-eq v13, v14, :cond_102

    const/4 v14, 0x2

    if-ne v13, v14, :cond_f8

    .line 233
    :cond_102
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 234
    .local v7, nodeName:Ljava/lang/String;
    const-string v14, "recognition-service"

    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_124

    .line 235
    new-instance v14, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v15, "Meta-data does not start with recognition-service tag"

    invoke-direct {v14, v15}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v14
    :try_end_116
    .catchall {:try_start_e6 .. :try_end_116} :catchall_148
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_e6 .. :try_end_116} :catch_a6
    .catch Ljava/io/IOException; {:try_start_e6 .. :try_end_116} :catch_116
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_e6 .. :try_end_116} :catch_139

    .line 246
    .end local v2           #attrs:Landroid/util/AttributeSet;
    .end local v7           #nodeName:Ljava/lang/String;
    .end local v9           #res:Landroid/content/res/Resources;
    .end local v13           #type:I
    :catch_116
    move-exception v5

    .line 247
    .local v5, e:Ljava/io/IOException;
    :try_start_117
    const-string v14, "VoiceInputOutputSettings"

    const-string v15, "error parsing recognition service meta-data"

    invoke-static {v14, v15, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_11e
    .catchall {:try_start_117 .. :try_end_11e} :catchall_148

    .line 251
    if-eqz v8, :cond_b3

    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_b3

    .line 239
    .end local v5           #e:Ljava/io/IOException;
    .restart local v2       #attrs:Landroid/util/AttributeSet;
    .restart local v7       #nodeName:Ljava/lang/String;
    .restart local v9       #res:Landroid/content/res/Resources;
    .restart local v13       #type:I
    :cond_124
    :try_start_124
    sget-object v14, Lcom/android/internal/R$styleable;->RecognitionService:[I

    invoke-virtual {v9, v2, v14}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 241
    .local v1, array:Landroid/content/res/TypedArray;
    const/4 v14, 0x0

    invoke-virtual {v1, v14}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 243
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_132
    .catchall {:try_start_124 .. :try_end_132} :catchall_148
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_124 .. :try_end_132} :catch_a6
    .catch Ljava/io/IOException; {:try_start_124 .. :try_end_132} :catch_116
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_124 .. :try_end_132} :catch_139

    .line 251
    if-eqz v8, :cond_b3

    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->close()V

    goto/16 :goto_b3

    .line 248
    .end local v1           #array:Landroid/content/res/TypedArray;
    .end local v2           #attrs:Landroid/util/AttributeSet;
    .end local v7           #nodeName:Ljava/lang/String;
    .end local v9           #res:Landroid/content/res/Resources;
    .end local v13           #type:I
    :catch_139
    move-exception v5

    .line 249
    .local v5, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_13a
    const-string v14, "VoiceInputOutputSettings"

    const-string v15, "error parsing recognition service meta-data"

    invoke-static {v14, v15, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_141
    .catchall {:try_start_13a .. :try_end_141} :catchall_148

    .line 251
    if-eqz v8, :cond_b3

    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->close()V

    goto/16 :goto_b3

    .end local v5           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catchall_148
    move-exception v14

    if-eqz v8, :cond_14e

    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_14e
    throw v14

    .line 260
    :cond_14f
    new-instance v6, Landroid/content/Intent;

    const-string v14, "android.intent.action.MAIN"

    invoke-direct {v6, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 261
    .local v6, i:Landroid/content/Intent;
    new-instance v14, Landroid/content/ComponentName;

    iget-object v15, v12, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-direct {v14, v15, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v14}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 262
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/VoiceInputOutputSettings;->mSettingsPref:Landroid/preference/PreferenceScreen;

    invoke-virtual {v14, v6}, Landroid/preference/PreferenceScreen;->setIntent(Landroid/content/Intent;)V

    .line 263
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/VoiceInputOutputSettings;->mRecognizerPref:Landroid/preference/ListPreference;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/VoiceInputOutputSettings;->mFragment:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {v15}, Lcom/android/settings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    invoke-virtual {v4, v15}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_59
.end method


# virtual methods
.method public onCreate()V
    .registers 3

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/settings/VoiceInputOutputSettings;->mFragment:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {v0}, Lcom/android/settings/SettingsPreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/VoiceInputOutputSettings;->mParent:Landroid/preference/PreferenceGroup;

    .line 80
    iget-object v0, p0, Lcom/android/settings/VoiceInputOutputSettings;->mParent:Landroid/preference/PreferenceGroup;

    const-string v1, "voice_category"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/VoiceInputOutputSettings;->mVoiceCategory:Landroid/preference/PreferenceCategory;

    .line 81
    iget-object v0, p0, Lcom/android/settings/VoiceInputOutputSettings;->mVoiceCategory:Landroid/preference/PreferenceCategory;

    const-string v1, "recognizer"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settings/VoiceInputOutputSettings;->mRecognizerPref:Landroid/preference/ListPreference;

    .line 82
    iget-object v0, p0, Lcom/android/settings/VoiceInputOutputSettings;->mVoiceCategory:Landroid/preference/PreferenceCategory;

    const-string v1, "recognizer_settings"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/VoiceInputOutputSettings;->mRecognizerSettingsPref:Landroid/preference/Preference;

    .line 83
    iget-object v0, p0, Lcom/android/settings/VoiceInputOutputSettings;->mVoiceCategory:Landroid/preference/PreferenceCategory;

    const-string v1, "tts_settings"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/VoiceInputOutputSettings;->mTtsSettingsPref:Landroid/preference/Preference;

    .line 84
    iget-object v0, p0, Lcom/android/settings/VoiceInputOutputSettings;->mRecognizerPref:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 85
    iget-object v0, p0, Lcom/android/settings/VoiceInputOutputSettings;->mVoiceCategory:Landroid/preference/PreferenceCategory;

    const-string v1, "recognizer_settings"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/settings/VoiceInputOutputSettings;->mSettingsPref:Landroid/preference/PreferenceScreen;

    .line 88
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/VoiceInputOutputSettings;->mAvailableRecognizersMap:Ljava/util/HashMap;

    .line 90
    invoke-direct {p0}, Lcom/android/settings/VoiceInputOutputSettings;->populateOrRemovePreferences()V

    .line 91
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 6
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 268
    iget-object v1, p0, Lcom/android/settings/VoiceInputOutputSettings;->mRecognizerPref:Landroid/preference/ListPreference;

    if-ne p1, v1, :cond_15

    move-object v0, p2

    .line 269
    check-cast v0, Ljava/lang/String;

    .line 272
    .local v0, setting:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/VoiceInputOutputSettings;->mFragment:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {v1}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "voice_recognition_service"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 277
    invoke-direct {p0, v0}, Lcom/android/settings/VoiceInputOutputSettings;->updateSettingsLink(Ljava/lang/String;)V

    .line 279
    .end local v0           #setting:Ljava/lang/String;
    :cond_15
    const/4 v1, 0x1

    return v1
.end method
