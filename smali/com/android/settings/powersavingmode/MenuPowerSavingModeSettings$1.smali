.class Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings$1;
.super Landroid/database/ContentObserver;
.source "MenuPowerSavingModeSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;Landroid/os/Handler;)V
    .registers 3
    .parameter
    .parameter "x0"

    .prologue
    .line 83
    iput-object p1, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings$1;->this$0:Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 6
    .parameter "selfChange"

    .prologue
    const/4 v0, 0x0

    .line 86
    iget-object v1, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings$1;->this$0:Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;

    #getter for: Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mMaximumPowerSavingMode:Landroid/preference/CheckBoxPreference;
    invoke-static {v1}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->access$000(Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings$1;->this$0:Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;

    invoke-virtual {v2}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "maximum_power_saving"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1a

    const/4 v0, 0x1

    :cond_1a
    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 87
    return-void
.end method
