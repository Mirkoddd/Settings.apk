.class public Lcom/android/settings/fmm/RemoteControls$FragmentLocation;
.super Landroid/preference/PreferenceFragment;
.source "RemoteControls.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fmm/RemoteControls;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FragmentLocation"
.end annotation


# instance fields
.field private mNetwork:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 298
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 6
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 330
    iget-object v0, p0, Lcom/android/settings/fmm/RemoteControls$FragmentLocation;->mNetwork:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_17

    .line 331
    invoke-virtual {p0}, Lcom/android/settings/fmm/RemoteControls$FragmentLocation;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "network"

    iget-object v2, p0, Lcom/android/settings/fmm/RemoteControls$FragmentLocation;->mNetwork:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 335
    :cond_17
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .registers 5

    .prologue
    .line 306
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    .line 308
    invoke-virtual {p0}, Lcom/android/settings/fmm/RemoteControls$FragmentLocation;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 309
    .local v0, root:Landroid/preference/PreferenceScreen;
    if-eqz v0, :cond_c

    .line 310
    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 312
    :cond_c
    const v1, 0x7f050018

    invoke-virtual {p0, v1}, Lcom/android/settings/fmm/RemoteControls$FragmentLocation;->addPreferencesFromResource(I)V

    .line 313
    invoke-virtual {p0}, Lcom/android/settings/fmm/RemoteControls$FragmentLocation;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 315
    const-string v1, "location_network"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/fmm/RemoteControls$FragmentLocation;->mNetwork:Landroid/preference/CheckBoxPreference;

    .line 318
    invoke-virtual {p0}, Lcom/android/settings/fmm/RemoteControls$FragmentLocation;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 319
    iget-object v1, p0, Lcom/android/settings/fmm/RemoteControls$FragmentLocation;->mNetwork:Landroid/preference/CheckBoxPreference;

    const v2, 0x7f070409

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setSummaryOn(I)V

    .line 322
    :cond_32
    iget-object v1, p0, Lcom/android/settings/fmm/RemoteControls$FragmentLocation;->mNetwork:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/fmm/RemoteControls$FragmentLocation;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "network"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 324
    return-void
.end method
