.class final Lcom/android/settings/widget/SettingsAppWidgetProvider$WifiStateTracker;
.super Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;
.source "SettingsAppWidgetProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/widget/SettingsAppWidgetProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "WifiStateTracker"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 353
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;-><init>(Lcom/android/settings/widget/SettingsAppWidgetProvider$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/widget/SettingsAppWidgetProvider$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 353
    invoke-direct {p0}, Lcom/android/settings/widget/SettingsAppWidgetProvider$WifiStateTracker;-><init>()V

    return-void
.end method

.method private static wifiStateToFiveState(I)I
    .registers 2
    .parameter "wifiState"

    .prologue
    .line 418
    packed-switch p0, :pswitch_data_e

    .line 428
    const/4 v0, 0x4

    :goto_4
    return v0

    .line 420
    :pswitch_5
    const/4 v0, 0x0

    goto :goto_4

    .line 422
    :pswitch_7
    const/4 v0, 0x1

    goto :goto_4

    .line 424
    :pswitch_9
    const/4 v0, 0x3

    goto :goto_4

    .line 426
    :pswitch_b
    const/4 v0, 0x2

    goto :goto_4

    .line 418
    nop

    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_9
        :pswitch_5
        :pswitch_b
        :pswitch_7
    .end packed-switch
.end method


# virtual methods
.method public getActualState(Landroid/content/Context;)I
    .registers 4
    .parameter "context"

    .prologue
    .line 366
    const-string v1, "wifi"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 367
    .local v0, wifiManager:Landroid/net/wifi/WifiManager;
    if-eqz v0, :cond_13

    .line 368
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v1

    invoke-static {v1}, Lcom/android/settings/widget/SettingsAppWidgetProvider$WifiStateTracker;->wifiStateToFiveState(I)I

    move-result v1

    .line 370
    :goto_12
    return v1

    :cond_13
    const/4 v1, 0x4

    goto :goto_12
.end method

.method public getButtonId()I
    .registers 2

    .prologue
    .line 354
    const v0, 0x7f090141

    return v0
.end method

.method public getButtonImageId(Z)I
    .registers 3
    .parameter "on"

    .prologue
    .line 357
    if-eqz p1, :cond_6

    const v0, 0x7f020077

    :goto_5
    return v0

    :cond_6
    const v0, 0x7f020075

    goto :goto_5
.end method

.method public getIndicatorId()I
    .registers 2

    .prologue
    .line 355
    const v0, 0x7f090143

    return v0
.end method

.method public getPosition()I
    .registers 2

    .prologue
    .line 362
    const/4 v0, 0x0

    return v0
.end method

.method public onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 406
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 411
    :goto_c
    return-void

    .line 409
    :cond_d
    const-string v1, "wifi_state"

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 410
    .local v0, wifiState:I
    invoke-static {v0}, Lcom/android/settings/widget/SettingsAppWidgetProvider$WifiStateTracker;->wifiStateToFiveState(I)I

    move-result v1

    invoke-virtual {p0, p1, v1}, Lcom/android/settings/widget/SettingsAppWidgetProvider$WifiStateTracker;->setCurrentState(Landroid/content/Context;I)V

    goto :goto_c
.end method

.method protected requestStateChange(Landroid/content/Context;Z)V
    .registers 6
    .parameter "context"
    .parameter "desiredState"

    .prologue
    .line 375
    const-string v1, "wifi"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 377
    .local v0, wifiManager:Landroid/net/wifi/WifiManager;
    if-nez v0, :cond_12

    .line 378
    const-string v1, "SettingsAppWidgetProvider"

    const-string v2, "No wifiManager."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    :goto_11
    return-void

    .line 386
    :cond_12
    new-instance v1, Lcom/android/settings/widget/SettingsAppWidgetProvider$WifiStateTracker$1;

    invoke-direct {v1, p0, v0, p2}, Lcom/android/settings/widget/SettingsAppWidgetProvider$WifiStateTracker$1;-><init>(Lcom/android/settings/widget/SettingsAppWidgetProvider$WifiStateTracker;Landroid/net/wifi/WifiManager;Z)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/SettingsAppWidgetProvider$WifiStateTracker$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_11
.end method
