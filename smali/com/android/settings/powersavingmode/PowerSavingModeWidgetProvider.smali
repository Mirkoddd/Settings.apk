.class public Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;
.super Landroid/appwidget/AppWidgetProvider;
.source "PowerSavingModeWidgetProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$1;,
        Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$SettingsObserver;,
        Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$SyncStateTracker;,
        Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$GpsStateTracker;,
        Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$BluetoothStateTracker;,
        Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$WifiStateTracker;,
        Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;
    }
.end annotation


# static fields
.field static final THIS_APPWIDGET:Landroid/content/ComponentName;

.field private static mContext:Landroid/content/Context;

.field private static mIsBatteryStateLow:I

.field private static mIsfirstPanel:Z

.field private static mRP:Landroid/app/enterprise/IRestrictionPolicy;

.field private static final sBluetoothState:Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;

.field private static final sGpsState:Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;

.field private static sLocalBluetoothAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

.field private static sSettingsObserver:Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$SettingsObserver;

.field private static final sSyncState:Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;

.field private static final sWifiState:Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 64
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.powersavingmode.PowerSavingModeWidgetProvider"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->THIS_APPWIDGET:Landroid/content/ComponentName;

    .line 67
    sput-object v3, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->sLocalBluetoothAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    .line 111
    new-instance v0, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$WifiStateTracker;

    invoke-direct {v0, v3}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$WifiStateTracker;-><init>(Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$1;)V

    sput-object v0, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->sWifiState:Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;

    .line 113
    new-instance v0, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$BluetoothStateTracker;

    invoke-direct {v0, v3}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$BluetoothStateTracker;-><init>(Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$1;)V

    sput-object v0, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->sBluetoothState:Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;

    .line 115
    new-instance v0, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$GpsStateTracker;

    invoke-direct {v0, v3}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$GpsStateTracker;-><init>(Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$1;)V

    sput-object v0, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->sGpsState:Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;

    .line 117
    new-instance v0, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$SyncStateTracker;

    invoke-direct {v0, v3}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$SyncStateTracker;-><init>(Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$1;)V

    sput-object v0, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->sSyncState:Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;

    .line 122
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->mIsfirstPanel:Z

    .line 132
    const/4 v0, 0x0

    sput v0, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->mIsBatteryStateLow:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 61
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    .line 1224
    return-void
.end method

.method static synthetic access$500()Lcom/android/settings/bluetooth/LocalBluetoothAdapter;
    .registers 1

    .prologue
    .line 61
    sget-object v0, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->sLocalBluetoothAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/settings/bluetooth/LocalBluetoothAdapter;)Lcom/android/settings/bluetooth/LocalBluetoothAdapter;
    .registers 1
    .parameter "x0"

    .prologue
    .line 61
    sput-object p0, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->sLocalBluetoothAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    return-object p0
.end method

.method static buildUpdate(Landroid/content/Context;)Landroid/widget/RemoteViews;
    .registers 7
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 583
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f04006b

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 585
    const v1, 0x7f090140

    const/4 v2, 0x1

    invoke-static {p0, v2}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->getLaunchPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 587
    const v1, 0x7f090144

    const/4 v2, 0x2

    invoke-static {p0, v2}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->getLaunchPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 589
    const v1, 0x7f090148

    const/4 v2, 0x3

    invoke-static {p0, v2}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->getLaunchPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 591
    const v1, 0x7f090151

    const/4 v2, 0x4

    invoke-static {p0, v2}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->getLaunchPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 593
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 595
    const-string v2, "android.intent.action.MAIN"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 596
    invoke-static {p0, v5, v1, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 598
    const v2, 0x7f09015a

    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 599
    const v1, 0x7f09014c

    const/4 v2, 0x5

    invoke-static {p0, v2}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->getLaunchPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 601
    const v1, 0x7f090154

    const/4 v2, 0x6

    invoke-static {p0, v2}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->getLaunchPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 604
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 605
    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 606
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.android.settings"

    const-string v4, "com.android.settings.powersavingmode.PowerSavingModeTips"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 608
    invoke-static {p0, v5, v1, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 609
    const v2, 0x7f090157

    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 610
    invoke-static {v0, p0}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->updateButtons(Landroid/widget/RemoteViews;Landroid/content/Context;)V

    .line 611
    return-object v0
.end method

.method private static checkObserver(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 542
    sget-object v0, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->sSettingsObserver:Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$SettingsObserver;

    if-nez v0, :cond_19

    .line 543
    new-instance v0, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$SettingsObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$SettingsObserver;-><init>(Landroid/os/Handler;Landroid/content/Context;)V

    sput-object v0, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->sSettingsObserver:Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$SettingsObserver;

    .line 545
    sget-object v0, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->sSettingsObserver:Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$SettingsObserver;->startObserving()V

    .line 547
    :cond_19
    return-void
.end method

.method private static getBrightness(Landroid/content/Context;)I
    .registers 8
    .parameter "context"

    .prologue
    .line 1001
    const/4 v0, 0x0

    .line 1003
    .local v0, brightness:I
    :try_start_1
    const-string v4, "power"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v3

    .line 1005
    .local v3, power:Landroid/os/IPowerManager;
    if-eqz v3, :cond_4a

    .line 1006
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "screen_brightness"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    .line 1008
    const-string v4, "powersaving modewidget provider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getBrightness brightness= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2f} :catch_31

    move v1, v0

    .line 1014
    .end local v0           #brightness:I
    .end local v3           #power:Landroid/os/IPowerManager;
    .local v1, brightness:I
    :goto_30
    return v1

    .line 1011
    .end local v1           #brightness:I
    .restart local v0       #brightness:I
    :catch_31
    move-exception v2

    .line 1012
    .local v2, e:Ljava/lang/Exception;
    const-string v4, "PowerSavingModeWidgetProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getBrightness: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2           #e:Ljava/lang/Exception;
    :cond_4a
    move v1, v0

    .line 1014
    .end local v0           #brightness:I
    .restart local v1       #brightness:I
    goto :goto_30
.end method

.method private static getBrightnessMode(Landroid/content/Context;)Z
    .registers 8
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1025
    :try_start_2
    const-string v5, "power"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v2

    .line 1027
    .local v2, power:Landroid/os/IPowerManager;
    if-eqz v2, :cond_36

    .line 1028
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "screen_brightness_mode"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_17} :catch_1d

    move-result v0

    .line 1030
    .local v0, brightnessMode:I
    if-ne v0, v3, :cond_1b

    .line 1035
    .end local v0           #brightnessMode:I
    .end local v2           #power:Landroid/os/IPowerManager;
    :goto_1a
    return v3

    .restart local v0       #brightnessMode:I
    .restart local v2       #power:Landroid/os/IPowerManager;
    :cond_1b
    move v3, v4

    .line 1030
    goto :goto_1a

    .line 1032
    .end local v0           #brightnessMode:I
    .end local v2           #power:Landroid/os/IPowerManager;
    :catch_1d
    move-exception v1

    .line 1033
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "PowerSavingModeWidgetProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getBrightnessMode: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1           #e:Ljava/lang/Exception;
    :cond_36
    move v3, v4

    .line 1035
    goto :goto_1a
.end method

.method private static getGpsState(Landroid/content/Context;)Z
    .registers 3
    .parameter "context"

    .prologue
    .line 979
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 980
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v1, "gps"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method private static getLaunchPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 824
    const-string v0, "PowerSavingModeWidgetProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLaunchPendingIntent(): buttonId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 826
    const-class v1, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 827
    const-string v1, "android.intent.category.ALTERNATIVE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 828
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "custom:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 829
    invoke-static {p0, v3, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 836
    return-object v0
.end method

.method private static getScreentimeout(Landroid/content/Context;)I
    .registers 6
    .parameter "context"

    .prologue
    .line 1111
    const/16 v1, 0x7530

    .line 1113
    .local v1, screentimeout:I
    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_off_timeout"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_b
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_2 .. :try_end_b} :catch_d

    move-result v1

    .line 1118
    :goto_c
    return v1

    .line 1115
    :catch_d
    move-exception v0

    .line 1116
    .local v0, e:Landroid/provider/Settings$SettingNotFoundException;
    const-string v2, "PowerSavingModeWidgetProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getScreentimeout: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c
.end method

.method private static getSync(Landroid/content/Context;)Z
    .registers 2
    .parameter "context"

    .prologue
    .line 932
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v0

    .line 933
    .local v0, sync:Z
    return v0
.end method

.method public static setBatteryState(I)V
    .registers 1
    .parameter "batteyrState"

    .prologue
    .line 1220
    sput p0, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->mIsBatteryStateLow:I

    .line 1221
    return-void
.end method

.method private toggleBrightness(Landroid/content/Context;)V
    .registers 10
    .parameter "context"

    .prologue
    const/4 v7, 0x1

    .line 1048
    :try_start_1
    sget-object v5, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->mRP:Landroid/app/enterprise/IRestrictionPolicy;

    if-nez v5, :cond_11

    .line 1049
    const-string v5, "restriction_policy"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/app/enterprise/IRestrictionPolicy$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IRestrictionPolicy;

    move-result-object v5

    sput-object v5, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->mRP:Landroid/app/enterprise/IRestrictionPolicy;

    .line 1051
    :cond_11
    sget-object v5, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->mRP:Landroid/app/enterprise/IRestrictionPolicy;

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Landroid/app/enterprise/IRestrictionPolicy;->isSettingsChangesAllowed(Z)Z
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_17} :catch_1b
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_17} :catch_95

    move-result v5

    if-nez v5, :cond_1f

    .line 1108
    :cond_1a
    :goto_1a
    return-void

    .line 1054
    :catch_1b
    move-exception v3

    .line 1055
    .local v3, e:Landroid/os/RemoteException;
    :try_start_1c
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1058
    .end local v3           #e:Landroid/os/RemoteException;
    :cond_1f
    sget v5, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->mIsBatteryStateLow:I

    if-ne v5, v7, :cond_45

    .line 1059
    const-string v5, "PowerSavingModeWidgetProvider"

    const-string v6, "Battery Level is critical low "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_2a} :catch_2b
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1c .. :try_end_2a} :catch_95

    goto :goto_1a

    .line 1103
    :catch_2b
    move-exception v3

    .line 1104
    .restart local v3       #e:Landroid/os/RemoteException;
    const-string v5, "PowerSavingModeWidgetProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "toggleBrightness: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a

    .line 1063
    .end local v3           #e:Landroid/os/RemoteException;
    :cond_45
    :try_start_45
    const-string v5, "power"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v4

    .line 1065
    .local v4, power:Landroid/os/IPowerManager;
    if-eqz v4, :cond_1a

    .line 1066
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1067
    .local v2, cr:Landroid/content/ContentResolver;
    const-string v5, "screen_brightness"

    invoke-static {v2, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    .line 1068
    .local v0, brightness:I
    const/4 v1, 0x0

    .line 1070
    .local v1, brightnessMode:I
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x111000f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-eqz v5, :cond_6f

    .line 1072
    const-string v5, "screen_brightness_mode"

    invoke-static {v2, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    .line 1077
    :cond_6f
    if-ne v1, v7, :cond_b0

    .line 1078
    const/16 v0, 0x1e

    .line 1079
    const/4 v1, 0x0

    .line 1088
    :goto_74
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x111000f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-eqz v5, :cond_c2

    .line 1091
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "screen_brightness_mode"

    invoke-static {v5, v6, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1098
    :goto_8a
    if-nez v1, :cond_1a

    .line 1099
    invoke-interface {v4, v0}, Landroid/os/IPowerManager;->setBacklightBrightness(I)V

    .line 1100
    const-string v5, "screen_brightness"

    invoke-static {v2, v5, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_94
    .catch Landroid/os/RemoteException; {:try_start_45 .. :try_end_94} :catch_2b
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_45 .. :try_end_94} :catch_95

    goto :goto_1a

    .line 1105
    .end local v0           #brightness:I
    .end local v1           #brightnessMode:I
    .end local v2           #cr:Landroid/content/ContentResolver;
    .end local v4           #power:Landroid/os/IPowerManager;
    :catch_95
    move-exception v3

    .line 1106
    .local v3, e:Landroid/provider/Settings$SettingNotFoundException;
    const-string v5, "PowerSavingModeWidgetProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "toggleBrightness: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1a

    .line 1080
    .end local v3           #e:Landroid/provider/Settings$SettingNotFoundException;
    .restart local v0       #brightness:I
    .restart local v1       #brightnessMode:I
    .restart local v2       #cr:Landroid/content/ContentResolver;
    .restart local v4       #power:Landroid/os/IPowerManager;
    :cond_b0
    const/16 v5, 0x66

    if-ge v0, v5, :cond_b7

    .line 1081
    const/16 v0, 0x66

    goto :goto_74

    .line 1082
    :cond_b7
    const/16 v5, 0xff

    if-ge v0, v5, :cond_be

    .line 1083
    const/16 v0, 0xff

    goto :goto_74

    .line 1085
    :cond_be
    const/4 v1, 0x1

    .line 1086
    const/16 v0, 0x1e

    goto :goto_74

    .line 1096
    :cond_c2
    const/4 v1, 0x0

    goto :goto_8a
.end method

.method private toogleScreentimeout(Landroid/content/Context;)V
    .registers 16
    .parameter "context"

    .prologue
    const/4 v13, 0x0

    .line 1124
    const-string v10, "PowerSavingModeWidgetProvider"

    const-string v11, "toogleScreentimeout: "

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1126
    :try_start_8
    sget-object v10, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->mRP:Landroid/app/enterprise/IRestrictionPolicy;

    if-nez v10, :cond_18

    .line 1127
    const-string v10, "restriction_policy"

    invoke-static {v10}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v10

    invoke-static {v10}, Landroid/app/enterprise/IRestrictionPolicy$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IRestrictionPolicy;

    move-result-object v10

    sput-object v10, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->mRP:Landroid/app/enterprise/IRestrictionPolicy;

    .line 1129
    :cond_18
    sget-object v10, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->mRP:Landroid/app/enterprise/IRestrictionPolicy;

    const/4 v11, 0x1

    invoke-interface {v10, v11}, Landroid/app/enterprise/IRestrictionPolicy;->isSettingsChangesAllowed(Z)Z
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_1e} :catch_22

    move-result v10

    if-nez v10, :cond_26

    .line 1217
    :cond_21
    :goto_21
    return-void

    .line 1132
    :catch_22
    move-exception v1

    .line 1133
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1136
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_26
    invoke-static {p1}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->getScreentimeout(Landroid/content/Context;)I

    move-result v7

    .line 1137
    .local v7, screentimeout:I
    const/4 v10, 0x7

    new-array v8, v10, [I

    fill-array-data v8, :array_120

    .line 1143
    .local v8, timeTable:[I
    const/4 v6, 0x0

    .line 1144
    .local v6, policyTimeTable:[I
    const-string v10, "device_policy"

    invoke-virtual {p1, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 1145
    .local v0, dpm:Landroid/app/admin/DevicePolicyManager;
    if-eqz v0, :cond_68

    const/4 v10, 0x0

    invoke-virtual {v0, v10}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v4

    .line 1152
    .local v4, maxTimeout:J
    :goto_40
    const-wide/32 v4, 0x927c0

    .line 1153
    const-wide/16 v10, 0x1

    cmp-long v10, v4, v10

    if-gez v10, :cond_4c

    .line 1154
    const-wide/32 v4, 0x927c0

    .line 1165
    :cond_4c
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1166
    .local v3, limitedTimeTable:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_52
    array-length v10, v8

    if-ge v2, v10, :cond_6b

    .line 1167
    aget v9, v8, v2

    .line 1168
    .local v9, timeout:I
    int-to-long v10, v9

    cmp-long v10, v10, v4

    if-gtz v10, :cond_65

    .line 1169
    aget v10, v8, v2

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1166
    :cond_65
    add-int/lit8 v2, v2, 0x1

    goto :goto_52

    .line 1145
    .end local v2           #i:I
    .end local v3           #limitedTimeTable:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4           #maxTimeout:J
    .end local v9           #timeout:I
    :cond_68
    const-wide/16 v4, 0x0

    goto :goto_40

    .line 1172
    .restart local v2       #i:I
    .restart local v3       #limitedTimeTable:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v4       #maxTimeout:J
    :cond_6b
    const-string v10, "PowerSavingModeWidgetProvider"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "toogleScreentimeout() : maxTimeout: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1173
    const-string v10, "PowerSavingModeWidgetProvider"

    const-string v11, "toogleScreentimeout() : SecFeature.AMOLED_DISPLAY: true"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1174
    const-string v10, "PowerSavingModeWidgetProvider"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "toogleScreentimeout() : limitedTimeTable.size() : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1203
    const/4 v2, 0x0

    :goto_a7
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v2, v10, :cond_21

    .line 1204
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    if-ne v7, v10, :cond_f8

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    if-ge v2, v10, :cond_f8

    .line 1205
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "screen_off_timeout"

    add-int/lit8 v10, v2, 0x1

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-static {v11, v12, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1207
    const-string v11, "PowerSavingModeWidgetProvider"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "toogleScreentimeout() : limitedTimeTable.get(i + 1) : "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    add-int/lit8 v10, v2, 0x1

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v11, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_21

    .line 1210
    :cond_f8
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "screen_off_timeout"

    aget v12, v8, v13

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1212
    const-string v10, "PowerSavingModeWidgetProvider"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "toogleScreentimeout() : timeTable[0] : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    aget v12, v8, v13

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1203
    add-int/lit8 v2, v2, 0x1

    goto :goto_a7

    .line 1137
    :array_120
    .array-data 0x4
        0x98t 0x3at 0x0t 0x0t
        0x30t 0x75t 0x0t 0x0t
        0x60t 0xeat 0x0t 0x0t
        0xc0t 0xd4t 0x1t 0x0t
        0xe0t 0x93t 0x4t 0x0t
        0xc0t 0x27t 0x9t 0x0t
        0x40t 0x77t 0x1bt 0x0t
    .end array-data
.end method

.method private static updateButtons(Landroid/widget/RemoteViews;Landroid/content/Context;)V
    .registers 10
    .parameter "views"
    .parameter "context"

    .prologue
    const v7, 0x7f02017e

    const v6, 0x7f0b000e

    const v5, 0x7f090155

    const/4 v3, 0x0

    const v4, 0x7f0b000d

    .line 636
    const-string v1, "PowerSavingModeWidgetProvider"

    const-string v2, "updateButtons(): "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    const v1, 0x7f090140

    invoke-virtual {p0, v1, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 638
    const v1, 0x7f090144

    invoke-virtual {p0, v1, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 639
    const v1, 0x7f090148

    invoke-virtual {p0, v1, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 640
    const v1, 0x7f09015a

    invoke-virtual {p0, v1, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 641
    const v1, 0x7f09014c

    invoke-virtual {p0, v1, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 642
    const v1, 0x7f090154

    invoke-virtual {p0, v1, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 643
    const v1, 0x7f090157

    invoke-virtual {p0, v1, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 644
    sget-object v1, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->sWifiState:Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;

    invoke-virtual {v1, p1}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;->getTriState(Landroid/content/Context;)I

    move-result v1

    packed-switch v1, :pswitch_data_320

    .line 676
    :pswitch_47
    const-string v1, "PowerSavingModeWidgetProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateButtons() : WiFi state : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->sWifiState:Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;

    invoke-virtual {v3, p1}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;->getTriState(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    :goto_65
    invoke-static {p1}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->getBrightnessMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1c5

    .line 680
    const v1, 0x7f090152

    const v2, 0x7f020117

    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 681
    const v1, 0x7f090153

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 696
    :goto_82
    invoke-static {p1}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->getSync(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_220

    .line 697
    const v1, 0x7f09014d

    const v2, 0x7f020130

    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 698
    const v1, 0x7f09014e

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 699
    const v1, 0x7f09014f

    const v2, 0x7f02017f

    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 705
    :goto_a8
    invoke-static {p1}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->getGpsState(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_23f

    .line 706
    const v1, 0x7f090149

    const v2, 0x7f020119

    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 707
    const v1, 0x7f09014a

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 708
    const v1, 0x7f09014b

    const v2, 0x7f02017f

    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 722
    :goto_ce
    sget-object v1, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->sBluetoothState:Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;

    invoke-virtual {v1, p1}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;->getTriState(Landroid/content/Context;)I

    move-result v1

    packed-switch v1, :pswitch_data_330

    .line 755
    :pswitch_d7
    const-string v1, "PowerSavingModeWidgetProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateButtons() : BT state : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->sBluetoothState:Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;

    invoke-virtual {v3, p1}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;->getTriState(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    :goto_f5
    invoke-static {p1}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->getScreentimeout(Landroid/content/Context;)I

    move-result v0

    .line 769
    .local v0, screentimeout:I
    const-string v1, "PowerSavingModeWidgetProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateButtons() : screentimeout : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    sparse-switch v0, :sswitch_data_340

    .line 800
    const-string v1, "PowerSavingModeWidgetProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateButtons() : screentimeout : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    :goto_12c
    const v1, 0x7f090156

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 814
    return-void

    .line 646
    .end local v0           #screentimeout:I
    :pswitch_13b
    const v1, 0x7f090141

    const v2, 0x7f020134

    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 647
    const v1, 0x7f090142

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 649
    const v1, 0x7f090143

    invoke-virtual {p0, v1, v7}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_65

    .line 652
    :pswitch_15a
    const v1, 0x7f090141

    const v2, 0x7f020135

    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 653
    const v1, 0x7f090142

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 655
    const v1, 0x7f090143

    const v2, 0x7f02017f

    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_65

    .line 663
    :pswitch_17c
    sget-object v1, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->sWifiState:Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;

    invoke-virtual {v1}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;->isTurningOn()Z

    move-result v1

    if-eqz v1, :cond_1a6

    .line 664
    const v1, 0x7f090141

    const v2, 0x7f020135

    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 665
    const v1, 0x7f090142

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 667
    const v1, 0x7f090143

    const v2, 0x7f02017f

    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_65

    .line 669
    :cond_1a6
    const v1, 0x7f090141

    const v2, 0x7f020134

    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 670
    const v1, 0x7f090142

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 672
    const v1, 0x7f090143

    invoke-virtual {p0, v1, v7}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_65

    .line 683
    :cond_1c5
    invoke-static {p1}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->getBrightness(Landroid/content/Context;)I

    move-result v1

    const/16 v2, 0xff

    if-ne v1, v2, :cond_1e6

    .line 684
    const v1, 0x7f090152

    const v2, 0x7f020116

    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 685
    const v1, 0x7f090153

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setTextColor(II)V

    goto/16 :goto_82

    .line 687
    :cond_1e6
    invoke-static {p1}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->getBrightness(Landroid/content/Context;)I

    move-result v1

    const/16 v2, 0x66

    if-lt v1, v2, :cond_207

    .line 688
    const v1, 0x7f090152

    const v2, 0x7f020115

    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 689
    const v1, 0x7f090153

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setTextColor(II)V

    goto/16 :goto_82

    .line 692
    :cond_207
    const v1, 0x7f090152

    const v2, 0x7f020112

    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 693
    const v1, 0x7f090153

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setTextColor(II)V

    goto/16 :goto_82

    .line 701
    :cond_220
    const v1, 0x7f09014d

    const v2, 0x7f02012f

    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 702
    const v1, 0x7f09014e

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 703
    const v1, 0x7f09014f

    invoke-virtual {p0, v1, v7}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_a8

    .line 710
    :cond_23f
    const v1, 0x7f090149

    const v2, 0x7f020118

    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 711
    const v1, 0x7f09014a

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 712
    const v1, 0x7f09014b

    invoke-virtual {p0, v1, v7}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_ce

    .line 724
    :pswitch_25e
    const v1, 0x7f090145

    const v2, 0x7f02010c

    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 725
    const v1, 0x7f090146

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 727
    const v1, 0x7f090147

    invoke-virtual {p0, v1, v7}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_f5

    .line 730
    :pswitch_27d
    const v1, 0x7f090145

    const v2, 0x7f02010d

    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 731
    const v1, 0x7f090146

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 733
    const v1, 0x7f090147

    const v2, 0x7f02017f

    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_f5

    .line 741
    :pswitch_29f
    sget-object v1, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->sBluetoothState:Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;

    invoke-virtual {v1}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;->isTurningOn()Z

    move-result v1

    if-eqz v1, :cond_2c9

    .line 742
    const v1, 0x7f090145

    const v2, 0x7f02010d

    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 743
    const v1, 0x7f090146

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 745
    const v1, 0x7f090147

    const v2, 0x7f02017f

    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_f5

    .line 747
    :cond_2c9
    const v1, 0x7f090145

    const v2, 0x7f02010c

    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 749
    const v1, 0x7f090146

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 751
    const v1, 0x7f090147

    invoke-virtual {p0, v1, v7}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_f5

    .line 772
    .restart local v0       #screentimeout:I
    :sswitch_2e8
    const v1, 0x7f020123

    invoke-virtual {p0, v5, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_12c

    .line 776
    :sswitch_2f0
    const v1, 0x7f02012a

    invoke-virtual {p0, v5, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_12c

    .line 780
    :sswitch_2f8
    const v1, 0x7f020125

    invoke-virtual {p0, v5, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_12c

    .line 784
    :sswitch_300
    const v1, 0x7f020127

    invoke-virtual {p0, v5, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_12c

    .line 788
    :sswitch_308
    const v1, 0x7f02012b

    invoke-virtual {p0, v5, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_12c

    .line 792
    :sswitch_310
    const v1, 0x7f020121

    invoke-virtual {p0, v5, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_12c

    .line 796
    :sswitch_318
    const v1, 0x7f020128

    invoke-virtual {p0, v5, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_12c

    .line 644
    :pswitch_data_320
    .packed-switch 0x0
        :pswitch_13b
        :pswitch_15a
        :pswitch_47
        :pswitch_47
        :pswitch_47
        :pswitch_17c
    .end packed-switch

    .line 722
    :pswitch_data_330
    .packed-switch 0x0
        :pswitch_25e
        :pswitch_27d
        :pswitch_d7
        :pswitch_d7
        :pswitch_d7
        :pswitch_29f
    .end packed-switch

    .line 770
    :sswitch_data_340
    .sparse-switch
        0x3a98 -> :sswitch_2e8
        0x7530 -> :sswitch_2f0
        0xea60 -> :sswitch_2f8
        0x1d4c0 -> :sswitch_300
        0x493e0 -> :sswitch_308
        0x927c0 -> :sswitch_310
        0x1b7740 -> :sswitch_318
    .end sparse-switch
.end method

.method public static updateWidget(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 620
    invoke-static {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->buildUpdate(Landroid/content/Context;)Landroid/widget/RemoteViews;

    move-result-object v1

    .line 623
    .local v1, views:Landroid/widget/RemoteViews;
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 624
    .local v0, gm:Landroid/appwidget/AppWidgetManager;
    sget-object v2, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->THIS_APPWIDGET:Landroid/content/ComponentName;

    invoke-virtual {v0, v2, v1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    .line 625
    invoke-static {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->checkObserver(Landroid/content/Context;)V

    .line 626
    return-void
.end method


# virtual methods
.method public onDisabled(Landroid/content/Context;)V
    .registers 4
    .parameter

    .prologue
    .line 570
    sget-object v0, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->sSettingsObserver:Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$SettingsObserver;

    if-eqz v0, :cond_c

    .line 571
    sget-object v0, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->sSettingsObserver:Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$SettingsObserver;->stopObserving()V

    .line 572
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->sSettingsObserver:Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$SettingsObserver;

    .line 575
    :cond_c
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetBatteryService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 576
    invoke-virtual {p1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 577
    return-void
.end method

.method public onEnabled(Landroid/content/Context;)V
    .registers 4
    .parameter

    .prologue
    .line 562
    invoke-static {p1}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->checkObserver(Landroid/content/Context;)V

    .line 564
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetBatteryService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 565
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 566
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 847
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 848
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 850
    .local v0, action:Ljava/lang/String;
    const-string v4, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 851
    sget-object v4, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->sWifiState:Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;

    invoke-virtual {v4, p1, p2}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;->onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V

    .line 922
    :cond_14
    :goto_14
    invoke-static {p1}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->updateWidget(Landroid/content/Context;)V

    .line 923
    :cond_17
    return-void

    .line 852
    :cond_18
    const-string v4, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 853
    sget-object v4, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->sBluetoothState:Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;

    invoke-virtual {v4, p1, p2}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;->onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_14

    .line 854
    :cond_26
    const-string v4, "android.location.PROVIDERS_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_34

    .line 855
    sget-object v4, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->sGpsState:Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;

    invoke-virtual {v4, p1, p2}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;->onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_14

    .line 866
    :cond_34
    const-string v4, "android.net.conn.BACKGROUND_DATA_SETTING_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_48

    sget-object v4, Landroid/content/SyncStorageEngine;->SYNC_CONNECTION_SETTING_CHANGED_INTENT:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_58

    .line 869
    :cond_48
    sget-object v4, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->sSyncState:Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;

    invoke-virtual {v4, p1, p2}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;->onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V

    .line 871
    new-instance v3, Landroid/content/Intent;

    const-string v4, "DataCallSettingWidget.intent.action.DATACALL_WIDGET_UPDATE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 873
    .local v3, intent_widget:Landroid/content/Intent;
    invoke-virtual {p1, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_14

    .line 874
    .end local v3           #intent_widget:Landroid/content/Intent;
    :cond_58
    const-string v4, "android.settings.BRIGHTNESS_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_64

    .line 875
    invoke-static {p1}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->updateWidget(Landroid/content/Context;)V

    goto :goto_14

    .line 876
    :cond_64
    const-string v4, "android.settings.SCREENTIMEOUT_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_70

    .line 877
    invoke-static {p1}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->updateWidget(Landroid/content/Context;)V

    goto :goto_14

    .line 878
    :cond_70
    const-string v4, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7c

    .line 879
    invoke-static {p1}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->updateWidget(Landroid/content/Context;)V

    goto :goto_14

    .line 880
    :cond_7c
    const-string v4, "android.intent.category.ALTERNATIVE"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d2

    .line 882
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 883
    .local v2, data:Landroid/net/Uri;
    invoke-virtual {v2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 884
    .local v1, buttonId:I
    const/4 v4, 0x1

    if-ne v1, v4, :cond_9a

    .line 885
    sget-object v4, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->sWifiState:Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;

    invoke-virtual {v4, p1}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;->toggleState(Landroid/content/Context;)V

    goto/16 :goto_14

    .line 886
    :cond_9a
    const/4 v4, 0x2

    if-ne v1, v4, :cond_a4

    .line 893
    sget-object v4, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->sBluetoothState:Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;

    invoke-virtual {v4, p1}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;->toggleState(Landroid/content/Context;)V

    goto/16 :goto_14

    .line 895
    :cond_a4
    const/4 v4, 0x3

    if-ne v1, v4, :cond_ae

    .line 896
    sget-object v4, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->sGpsState:Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;

    invoke-virtual {v4, p1}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;->toggleState(Landroid/content/Context;)V

    goto/16 :goto_14

    .line 898
    :cond_ae
    const/4 v4, 0x4

    if-ne v1, v4, :cond_b6

    .line 899
    invoke-direct {p0, p1}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->toggleBrightness(Landroid/content/Context;)V

    goto/16 :goto_14

    .line 900
    :cond_b6
    const/4 v4, 0x5

    if-ne v1, v4, :cond_ca

    .line 901
    sget-object v4, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->sSyncState:Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;

    invoke-virtual {v4, p1}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;->toggleState(Landroid/content/Context;)V

    .line 903
    new-instance v3, Landroid/content/Intent;

    const-string v4, "DataCallSettingWidget.intent.action.DATACALL_WIDGET_UPDATE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 905
    .restart local v3       #intent_widget:Landroid/content/Intent;
    invoke-virtual {p1, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_14

    .line 906
    .end local v3           #intent_widget:Landroid/content/Intent;
    :cond_ca
    const/4 v4, 0x6

    if-ne v1, v4, :cond_14

    .line 907
    invoke-direct {p0, p1}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->toogleScreentimeout(Landroid/content/Context;)V

    goto/16 :goto_14

    .line 910
    .end local v1           #buttonId:I
    .end local v2           #data:Landroid/net/Uri;
    :cond_d2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_17

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.net.conn.BACKGROUND_DATA_SETTING_CHANGED_FROM_WIDGET"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 913
    sget-object v4, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->sSyncState:Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;

    invoke-virtual {v4, p1}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;->toggleState(Landroid/content/Context;)V

    goto/16 :goto_14
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .registers 7
    .parameter "context"
    .parameter "appWidgetManager"
    .parameter "appWidgetIds"

    .prologue
    .line 551
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sput-object v2, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->mContext:Landroid/content/Context;

    .line 553
    invoke-static {p1}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->buildUpdate(Landroid/content/Context;)Landroid/widget/RemoteViews;

    move-result-object v1

    .line 555
    .local v1, view:Landroid/widget/RemoteViews;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_b
    array-length v2, p3

    if-ge v0, v2, :cond_16

    .line 556
    aget v2, p3, v0

    invoke-virtual {p2, v2, v1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 555
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 558
    :cond_16
    return-void
.end method
