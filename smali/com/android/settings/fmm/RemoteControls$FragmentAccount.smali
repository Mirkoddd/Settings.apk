.class public Lcom/android/settings/fmm/RemoteControls$FragmentAccount;
.super Landroid/preference/PreferenceFragment;
.source "RemoteControls.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fmm/RemoteControls;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FragmentAccount"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 143
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onResume()V
    .registers 4

    .prologue
    .line 147
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    .line 149
    invoke-virtual {p0}, Lcom/android/settings/fmm/RemoteControls$FragmentAccount;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 150
    .local v1, root:Landroid/preference/PreferenceScreen;
    if-eqz v1, :cond_c

    .line 151
    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 153
    :cond_c
    const v2, 0x7f050014

    invoke-virtual {p0, v2}, Lcom/android/settings/fmm/RemoteControls$FragmentAccount;->addPreferencesFromResource(I)V

    .line 154
    invoke-virtual {p0}, Lcom/android/settings/fmm/RemoteControls$FragmentAccount;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 156
    new-instance v0, Landroid/preference/PreferenceCategory;

    invoke-virtual {p0}, Lcom/android/settings/fmm/RemoteControls$FragmentAccount;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 157
    .local v0, AccountRegist:Landroid/preference/PreferenceCategory;
    const v2, 0x7f07073a

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 158
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 159
    return-void
.end method
