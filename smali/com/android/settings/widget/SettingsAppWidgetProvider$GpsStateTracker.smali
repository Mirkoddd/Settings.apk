.class final Lcom/android/settings/widget/SettingsAppWidgetProvider$GpsStateTracker;
.super Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;
.source "SettingsAppWidgetProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/widget/SettingsAppWidgetProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "GpsStateTracker"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 507
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;-><init>(Lcom/android/settings/widget/SettingsAppWidgetProvider$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/widget/SettingsAppWidgetProvider$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 507
    invoke-direct {p0}, Lcom/android/settings/widget/SettingsAppWidgetProvider$GpsStateTracker;-><init>()V

    return-void
.end method


# virtual methods
.method public getActualState(Landroid/content/Context;)I
    .registers 5
    .parameter "context"

    .prologue
    .line 517
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 518
    .local v1, resolver:Landroid/content/ContentResolver;
    const-string v2, "gps"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    .line 520
    .local v0, on:Z
    if-eqz v0, :cond_e

    const/4 v2, 0x1

    :goto_d
    return v2

    :cond_e
    const/4 v2, 0x0

    goto :goto_d
.end method

.method public getButtonId()I
    .registers 2

    .prologue
    .line 508
    const v0, 0x7f090149

    return v0
.end method

.method public getButtonImageId(Z)I
    .registers 3
    .parameter "on"

    .prologue
    .line 511
    if-eqz p1, :cond_6

    const v0, 0x7f02006f

    :goto_5
    return v0

    :cond_6
    const v0, 0x7f02006d

    goto :goto_5
.end method

.method public getIndicatorId()I
    .registers 2

    .prologue
    .line 509
    const v0, 0x7f09014b

    return v0
.end method

.method public onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4
    .parameter "context"
    .parameter "unused"

    .prologue
    .line 527
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/SettingsAppWidgetProvider$GpsStateTracker;->getActualState(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/widget/SettingsAppWidgetProvider$GpsStateTracker;->setCurrentState(Landroid/content/Context;I)V

    .line 528
    return-void
.end method

.method public requestStateChange(Landroid/content/Context;Z)V
    .registers 6
    .parameter "context"
    .parameter "desiredState"

    .prologue
    .line 532
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 533
    .local v0, resolver:Landroid/content/ContentResolver;
    new-instance v1, Lcom/android/settings/widget/SettingsAppWidgetProvider$GpsStateTracker$1;

    invoke-direct {v1, p0, v0, p2, p1}, Lcom/android/settings/widget/SettingsAppWidgetProvider$GpsStateTracker$1;-><init>(Lcom/android/settings/widget/SettingsAppWidgetProvider$GpsStateTracker;Landroid/content/ContentResolver;ZLandroid/content/Context;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/SettingsAppWidgetProvider$GpsStateTracker$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 551
    return-void
.end method
