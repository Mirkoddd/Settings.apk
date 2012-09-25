.class public Lcom/android/settings/rcs/RcsSettings;
.super Ljava/lang/Object;
.source "RcsSettings.java"


# static fields
.field private static final RCS_CONTENT_URI:Landroid/net/Uri;

.field private static final RCS_CONTENT_URI_SHOW_SETTINGS_WHEN_UNPROVISIONED:Landroid/net/Uri;

.field private static mRcsSettingsPreference:Landroid/preference/Preference;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 30
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/rcs/RcsSettings;->mRcsSettingsPreference:Landroid/preference/Preference;

    .line 35
    const-string v0, "content://com.samsung.rcs.settings/rcse_provisioned"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/rcs/RcsSettings;->RCS_CONTENT_URI:Landroid/net/Uri;

    .line 37
    const-string v0, "content://com.samsung.rcs.settings/rcse_show_settings_when_unprovisioned"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/rcs/RcsSettings;->RCS_CONTENT_URI_SHOW_SETTINGS_WHEN_UNPROVISIONED:Landroid/net/Uri;

    return-void
.end method
