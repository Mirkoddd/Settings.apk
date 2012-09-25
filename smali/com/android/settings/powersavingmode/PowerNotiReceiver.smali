.class public Lcom/android/settings/powersavingmode/PowerNotiReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PowerNotiReceiver.java"


# static fields
.field private static is_siop_cpu:Z

.field private static is_siop_uirendering:Z

.field private static mCharging:Z


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mNotificationMode:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 75
    sput-boolean v0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mCharging:Z

    .line 76
    sput-boolean v0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->is_siop_cpu:Z

    .line 77
    sput-boolean v0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->is_siop_uirendering:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private adjustBrightness()V
    .registers 11

    .prologue
    const/4 v9, 0x0

    const-wide v7, 0x406fe00000000000L

    const-wide/high16 v5, 0x4059

    .line 335
    iget-object v2, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "psm_brightness"

    invoke-static {v2, v3, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_50

    .line 336
    iget-object v2, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "psm_brightness_level"

    const/16 v4, 0xa

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 339
    .local v0, brightness:I
    const/16 v2, 0x64

    if-ne v0, v2, :cond_51

    .line 340
    int-to-double v2, v0

    div-double/2addr v2, v5

    mul-double/2addr v2, v7

    double-to-int v1, v2

    .line 344
    .local v1, set_brightness:I
    :goto_25
    const-string v2, "PowerNotiReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PSM_brightness = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "set_brightness = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    invoke-direct {p0, v9, v1}, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->doAdjustBrightness(II)V

    .line 347
    .end local v0           #brightness:I
    .end local v1           #set_brightness:I
    :cond_50
    return-void

    .line 342
    .restart local v0       #brightness:I
    :cond_51
    int-to-double v2, v0

    div-double/2addr v2, v5

    mul-double/2addr v2, v7

    const-wide/high16 v4, 0x4024

    add-double/2addr v2, v4

    double-to-int v1, v2

    .restart local v1       #set_brightness:I
    goto :goto_25
.end method

.method private adjustScreentimeout()V
    .registers 5

    .prologue
    .line 370
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "psm_screen_timeout"

    const/16 v3, 0x3a98

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 371
    .local v0, timeout:I
    invoke-direct {p0, v0}, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->doAdjustScreentimeout(I)V

    .line 372
    return-void
.end method

.method private clearNotification()V
    .registers 4

    .prologue
    .line 229
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContext:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 231
    .local v0, notificationManager:Landroid/app/NotificationManager;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 232
    return-void
.end method

.method private clearSystemNotification()V
    .registers 4

    .prologue
    .line 180
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContext:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 182
    .local v0, notificationManager:Landroid/app/NotificationManager;
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 184
    return-void
.end method

.method private doAdjustBrightness(II)V
    .registers 9
    .parameter "brightnessAutoMode"
    .parameter "brightnessValue"

    .prologue
    .line 350
    iget-object v3, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "screen_brightness_mode"

    invoke-static {v3, v4, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 353
    const-string v3, "power"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v2

    .line 354
    .local v2, power:Landroid/os/IPowerManager;
    if-eqz v2, :cond_1a

    .line 356
    :try_start_17
    invoke-interface {v2, p2}, Landroid/os/IPowerManager;->setBacklightBrightness(I)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_1a} :catch_32

    .line 361
    :cond_1a
    :goto_1a
    iget-object v3, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "screen_brightness"

    invoke-static {v3, v4, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 365
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.settings.BRIGHTNESS_CHANGED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 366
    .local v1, intent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 367
    return-void

    .line 357
    .end local v1           #intent:Landroid/content/Intent;
    :catch_32
    move-exception v0

    .line 358
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "PowerNotiReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RemoteException"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a
.end method

.method private doAdjustScreentimeout(I)V
    .registers 5
    .parameter "screentimeout"

    .prologue
    .line 375
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_off_timeout"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 379
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.SCREENTIMEOUT_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 380
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 381
    return-void
.end method

.method private doPowerSaveAction(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 235
    invoke-direct {p0}, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->stopWifi()V

    .line 236
    invoke-direct {p0}, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->stopBluetooth()V

    .line 237
    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->stopGps(Landroid/content/Context;)V

    .line 238
    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->stopSync(Landroid/content/Context;)V

    .line 239
    invoke-direct {p0}, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->adjustBrightness()V

    .line 240
    invoke-direct {p0}, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->adjustScreentimeout()V

    .line 241
    return-void
.end method

.method private showNotification(I)V
    .registers 15
    .parameter

    .prologue
    const v12, 0x7f0707ba

    const/16 v4, 0x97

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 187
    iput p1, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mNotificationMode:I

    .line 188
    const-string v0, "PowerNotiReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mNotificationMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mNotificationMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 193
    const v5, 0x7f0200a7

    .line 194
    const-string v3, ""

    .line 195
    const-string v2, ""

    .line 196
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContentResolver:Landroid/content/ContentResolver;

    const-string v6, "psm_battery_level"

    const/16 v7, 0x1e

    invoke-static {v1, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 197
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContext:Landroid/content/Context;

    const-string v7, "power"

    invoke-virtual {v1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 198
    const-string v7, "powernotirecevier jusok"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mPowerManager.getPlugType()"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Landroid/os/PowerManager;->getPlugType()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    invoke-virtual {v1}, Landroid/os/PowerManager;->getPlugType()I

    move-result v7

    const/4 v8, 0x2

    if-eq v7, v8, :cond_71

    invoke-virtual {v1}, Landroid/os/PowerManager;->getPlugType()I

    move-result v1

    if-ne v1, v11, :cond_72

    :cond_71
    move p1, v4

    .line 203
    :cond_72
    const/16 v1, 0x96

    if-ne p1, v1, :cond_cc

    .line 204
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 205
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0707bb

    new-array v4, v11, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v10

    invoke-virtual {v1, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 214
    :goto_95
    new-instance v3, Landroid/app/Notification;

    const-wide/16 v6, 0x0

    invoke-direct {v3, v5, v2, v6, v7}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 215
    iget v2, v3, Landroid/app/Notification;->flags:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v3, Landroid/app/Notification;->flags:I

    .line 217
    iget-object v2, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0707a8

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 219
    new-instance v4, Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContext:Landroid/content/Context;

    const-class v6, Lcom/android/settings/Settings$MenuPowerSavingModeSettingsActivity;

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 220
    const-string v5, "android.intent.action.MAIN"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 221
    iget-object v5, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContext:Landroid/content/Context;

    invoke-static {v5, v10, v4, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 222
    iget-object v5, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v5, v2, v1, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 224
    invoke-virtual {v0, v11, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 226
    return-void

    .line 206
    :cond_cc
    if-ne p1, v4, :cond_e9

    .line 207
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0707bc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 208
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0707bd

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_95

    .line 209
    :cond_e9
    const/16 v1, 0x98

    if-ne p1, v1, :cond_105

    .line 210
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 211
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0707be

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_95

    :cond_105
    move-object v1, v2

    move-object v2, v3

    goto :goto_95
.end method

.method private showSystemNotification()V
    .registers 10

    .prologue
    const v8, 0x7f0707a0

    const/4 v7, 0x0

    .line 156
    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 160
    const v1, 0x7f0200a7

    .line 161
    const-string v2, ""

    .line 162
    const-string v2, ""

    .line 163
    iget-object v2, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 164
    iget-object v3, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0707a2

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 165
    new-instance v4, Landroid/app/Notification;

    const-wide/16 v5, 0x0

    invoke-direct {v4, v1, v2, v5, v6}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 166
    iget v1, v4, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v4, Landroid/app/Notification;->flags:I

    .line 168
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 170
    new-instance v2, Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContext:Landroid/content/Context;

    const-class v6, Lcom/android/settings/Settings$MenuPowerSavingModeSettingsActivity;

    invoke-direct {v2, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 171
    const-string v5, "android.intent.action.MAIN"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 172
    iget-object v5, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContext:Landroid/content/Context;

    invoke-static {v5, v7, v2, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 173
    iget-object v5, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5, v1, v3, v2}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 175
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 177
    return-void
.end method

.method private stopBluetooth()V
    .registers 5

    .prologue
    .line 279
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "psm_bluetooth"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_29

    .line 280
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 282
    .local v0, bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getConnectedDeviceCount()I

    move-result v1

    if-nez v1, :cond_21

    .line 283
    const-string v1, "PowerNotiReceiver"

    const-string v2, "doAction : disableBluetooth"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    .line 291
    .end local v0           #bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;
    :goto_20
    return-void

    .line 286
    .restart local v0       #bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;
    :cond_21
    const-string v1, "PowerNotiReceiver"

    const-string v2, "Not disable Bluetooth because it\'s being used"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_20

    .line 289
    .end local v0           #bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;
    :cond_29
    const-string v1, "PowerNotiReceiver"

    const-string v2, "PSM_BLUETOOTH = psm_bluetooth, do not disable Bluetooth because PSM_BLUETOOTH is unchecked"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_20
.end method

.method private stopGps(Landroid/content/Context;)V
    .registers 7
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 294
    iget-object v2, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "psm_gps"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_35

    .line 295
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->isGpsRunning()Z

    move-result v2

    if-nez v2, :cond_2d

    .line 296
    const-string v2, "PowerNotiReceiver"

    const-string v3, "doAction : disableGPS"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 298
    .local v1, resolver:Landroid/content/ContentResolver;
    const-string v2, "gps"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 300
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.settings.GPS_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 301
    .local v0, i:Landroid/content/Intent;
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 308
    .end local v0           #i:Landroid/content/Intent;
    .end local v1           #resolver:Landroid/content/ContentResolver;
    :goto_2c
    return-void

    .line 303
    :cond_2d
    const-string v2, "PowerNotiReceiver"

    const-string v3, "Not disable Gps because it\'s being used"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2c

    .line 306
    :cond_35
    const-string v2, "PowerNotiReceiver"

    const-string v3, "PSM_GPS = psm_gps, do not disable Gps because PSM_GPS is unchecked"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2c
.end method

.method private stopSync(Landroid/content/Context;)V
    .registers 9
    .parameter "context"

    .prologue
    const/4 v6, 0x0

    .line 311
    iget-object v4, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "psm_sync"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_32

    .line 312
    const-string v4, "connectivity"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 315
    .local v1, connManager:Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getBackgroundDataSetting()Z

    move-result v0

    .line 316
    .local v0, backgroundData:Z
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v3

    .line 318
    .local v3, sync:Z
    invoke-static {}, Landroid/content/ContentResolver;->getCurrentSync()Landroid/content/SyncInfo;

    move-result-object v2

    .line 322
    .local v2, now_sync:Landroid/content/SyncInfo;
    if-eqz v0, :cond_29

    if-eqz v3, :cond_29

    .line 323
    if-nez v2, :cond_2a

    .line 324
    invoke-static {v6}, Landroid/content/ContentResolver;->setMasterSyncAutomatically(Z)V

    .line 332
    .end local v0           #backgroundData:Z
    .end local v1           #connManager:Landroid/net/ConnectivityManager;
    .end local v2           #now_sync:Landroid/content/SyncInfo;
    .end local v3           #sync:Z
    :cond_29
    :goto_29
    return-void

    .line 326
    .restart local v0       #backgroundData:Z
    .restart local v1       #connManager:Landroid/net/ConnectivityManager;
    .restart local v2       #now_sync:Landroid/content/SyncInfo;
    .restart local v3       #sync:Z
    :cond_2a
    const-string v4, "PowerNotiReceiver"

    const-string v5, "Not disable Auto Sync because it\'s being used"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_29

    .line 330
    .end local v0           #backgroundData:Z
    .end local v1           #connManager:Landroid/net/ConnectivityManager;
    .end local v2           #now_sync:Landroid/content/SyncInfo;
    .end local v3           #sync:Z
    :cond_32
    const-string v4, "PowerNotiReceiver"

    const-string v5, "PSM_SYNC = psm_sync, do not disable Auto Sync because PSM_SYNC is unchecked"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_29
.end method

.method private stopWifi()V
    .registers 9

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 244
    iget-object v4, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "psm_wifi"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v7, :cond_3f

    .line 245
    iget-object v4, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContext:Landroid/content/Context;

    const-string v5, "wifi"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    .line 247
    .local v2, wifiManager:Landroid/net/wifi/WifiManager;
    iget-object v4, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContext:Landroid/content/Context;

    const-string v5, "connectivity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 248
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v7}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 249
    .local v1, networkInfo:Landroid/net/NetworkInfo;
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    .line 251
    .local v3, wifistate:Landroid/net/NetworkInfo$DetailedState;
    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-eq v3, v4, :cond_37

    .line 252
    const-string v4, "PowerNotiReceiver"

    const-string v5, "doAction : disableWifi"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    invoke-virtual {v2, v6}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 260
    .end local v0           #cm:Landroid/net/ConnectivityManager;
    .end local v1           #networkInfo:Landroid/net/NetworkInfo;
    .end local v2           #wifiManager:Landroid/net/wifi/WifiManager;
    .end local v3           #wifistate:Landroid/net/NetworkInfo$DetailedState;
    :goto_36
    return-void

    .line 255
    .restart local v0       #cm:Landroid/net/ConnectivityManager;
    .restart local v1       #networkInfo:Landroid/net/NetworkInfo;
    .restart local v2       #wifiManager:Landroid/net/wifi/WifiManager;
    .restart local v3       #wifistate:Landroid/net/NetworkInfo$DetailedState;
    :cond_37
    const-string v4, "PowerNotiReceiver"

    const-string v5, "Not disable Wifi because it\'s connected to AP"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_36

    .line 258
    .end local v0           #cm:Landroid/net/ConnectivityManager;
    .end local v1           #networkInfo:Landroid/net/NetworkInfo;
    .end local v2           #wifiManager:Landroid/net/wifi/WifiManager;
    .end local v3           #wifistate:Landroid/net/NetworkInfo$DetailedState;
    :cond_3f
    const-string v4, "PowerNotiReceiver"

    const-string v5, "PSM_WIFI = psm_wifi, do not disable Wifi because PSM_WIFI is unchecked"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_36
.end method

.method private updatemaximumpowersaving(Z)V
    .registers 7
    .parameter "enableMode"

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 388
    if-eqz p1, :cond_2f

    .line 390
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 391
    .local v0, mPowerManager:Landroid/os/PowerManager;
    sget-boolean v1, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->is_siop_cpu:Z

    if-nez v1, :cond_24

    .line 392
    invoke-virtual {v0}, Landroid/os/PowerManager;->getSupportedFrequency()[I

    move-result-object v1

    if-eqz v1, :cond_24

    .line 397
    const/4 v1, 0x2

    invoke-virtual {v0}, Landroid/os/PowerManager;->getSupportedFrequency()[I

    move-result-object v2

    aget v2, v2, v4

    const-string v3, "PowerNotiReceiver"

    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/os/PowerManager;->acquirePersistentDVFSLock(IIILjava/lang/String;)V

    .line 403
    :cond_24
    sget-boolean v1, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->is_siop_uirendering:Z

    if-nez v1, :cond_2b

    .line 404
    invoke-static {v4}, Lcom/sec/android/hardware/SecHardwareInterface;->setPowerSaveFPS(Z)V

    .line 407
    :cond_2b
    invoke-virtual {v0, v4}, Landroid/os/PowerManager;->setSystemPowerSaveMode(Z)V

    .line 422
    :goto_2e
    return-void

    .line 411
    .end local v0           #mPowerManager:Landroid/os/PowerManager;
    :cond_2f
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 412
    .restart local v0       #mPowerManager:Landroid/os/PowerManager;
    sget-boolean v1, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->is_siop_cpu:Z

    if-nez v1, :cond_40

    .line 413
    invoke-virtual {v0, v4}, Landroid/os/PowerManager;->releasePersistentDVFSLock(I)V

    .line 416
    :cond_40
    sget-boolean v1, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->is_siop_uirendering:Z

    if-nez v1, :cond_47

    .line 417
    invoke-static {v3}, Lcom/sec/android/hardware/SecHardwareInterface;->setPowerSaveFPS(Z)V

    .line 420
    :cond_47
    invoke-virtual {v0, v3}, Landroid/os/PowerManager;->setSystemPowerSaveMode(Z)V

    goto :goto_2e
.end method


# virtual methods
.method public isGpsRunning()Z
    .registers 4

    .prologue
    .line 384
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContext:Landroid/content/Context;

    const-string v2, "location"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 385
    .local v0, lm:Landroid/location/LocationManager;
    invoke-virtual {v0}, Landroid/location/LocationManager;->isGpsRunning()Z

    move-result v1

    return v1
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 15
    .parameter "context"
    .parameter "intent"

    .prologue
    const/16 v11, 0x97

    const/16 v10, 0x96

    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 87
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, action:Ljava/lang/String;
    iput-object p1, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContext:Landroid/content/Context;

    .line 90
    iget-object v7, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContentResolver:Landroid/content/ContentResolver;

    .line 94
    const-string v7, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_34

    const-string v7, "android.settings.POWERSAVING_CHANGED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_34

    const-string v7, "android.settings.ACTION_POWERSAVINGBATTERYLEVELCHANGE"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_34

    const-string v7, "android.settings.SYSTEMPOWERSAVING_CHANGED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e1

    .line 97
    :cond_34
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 98
    .local v4, prefs:Landroid/content/SharedPreferences;
    const-string v7, "use_power_saving_mode"

    invoke-interface {v4, v7, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 99
    .local v1, enableMode:Z
    const-string v7, "PowerNotiReceiver"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "enableMode="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iget-object v7, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContext:Landroid/content/Context;

    const-string v8, "power"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .line 101
    .local v2, mPowerManager:Landroid/os/PowerManager;
    invoke-virtual {v2}, Landroid/os/PowerManager;->getPlugType()I

    move-result v7

    const/4 v8, 0x2

    if-eq v7, v8, :cond_6d

    invoke-virtual {v2}, Landroid/os/PowerManager;->getPlugType()I

    move-result v7

    if-ne v7, v3, :cond_6f

    .line 103
    :cond_6d
    sput-boolean v3, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mCharging:Z

    .line 104
    :cond_6f
    if-eqz v1, :cond_d2

    .line 105
    sget-boolean v7, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mCharging:Z

    if-eqz v7, :cond_ce

    .line 106
    invoke-direct {p0, v11}, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->showNotification(I)V

    .line 115
    :goto_78
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "maximum_power_saving"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 116
    .local v5, temp:I
    if-nez v5, :cond_85

    move v3, v6

    .line 117
    .local v3, maximumpowersavingmode:Z
    :cond_85
    const-string v7, "PowerNotiReceiver"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "enableMode="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    const-string v7, "PowerNotiReceiver"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "maximumpowersavingmode="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    if-eqz v3, :cond_dd

    .line 120
    invoke-direct {p0}, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->showSystemNotification()V

    .line 124
    :goto_ba
    const-string v7, "pref_siop_clock"

    invoke-interface {v4, v7, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    sput-boolean v7, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->is_siop_cpu:Z

    .line 125
    const-string v7, "pref_siop_rendering"

    invoke-interface {v4, v7, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    sput-boolean v6, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->is_siop_uirendering:Z

    .line 126
    invoke-direct {p0, v3}, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->updatemaximumpowersaving(Z)V

    .line 153
    .end local v1           #enableMode:Z
    .end local v2           #mPowerManager:Landroid/os/PowerManager;
    .end local v3           #maximumpowersavingmode:Z
    .end local v4           #prefs:Landroid/content/SharedPreferences;
    .end local v5           #temp:I
    :cond_cd
    :goto_cd
    return-void

    .line 108
    .restart local v1       #enableMode:Z
    .restart local v2       #mPowerManager:Landroid/os/PowerManager;
    .restart local v4       #prefs:Landroid/content/SharedPreferences;
    :cond_ce
    invoke-direct {p0, v10}, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->showNotification(I)V

    goto :goto_78

    .line 110
    :cond_d2
    const-string v7, "PowerNotiReceiver"

    const-string v8, "clearNotification"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    invoke-direct {p0}, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->clearNotification()V

    goto :goto_78

    .line 122
    .restart local v3       #maximumpowersavingmode:Z
    .restart local v5       #temp:I
    :cond_dd
    invoke-direct {p0}, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->clearSystemNotification()V

    goto :goto_ba

    .line 128
    .end local v1           #enableMode:Z
    .end local v2           #mPowerManager:Landroid/os/PowerManager;
    .end local v3           #maximumpowersavingmode:Z
    .end local v4           #prefs:Landroid/content/SharedPreferences;
    .end local v5           #temp:I
    :cond_e1
    const-string v7, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_fb

    .line 129
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 130
    .restart local v4       #prefs:Landroid/content/SharedPreferences;
    const-string v7, "use_power_saving_mode"

    invoke-interface {v4, v7, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 131
    .restart local v1       #enableMode:Z
    sput-boolean v3, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mCharging:Z

    .line 132
    if-eqz v1, :cond_cd

    .line 133
    invoke-direct {p0, v11}, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->showNotification(I)V

    goto :goto_cd

    .line 134
    .end local v1           #enableMode:Z
    .end local v4           #prefs:Landroid/content/SharedPreferences;
    :cond_fb
    const-string v7, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_115

    .line 135
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 136
    .restart local v4       #prefs:Landroid/content/SharedPreferences;
    const-string v7, "use_power_saving_mode"

    invoke-interface {v4, v7, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 137
    .restart local v1       #enableMode:Z
    sput-boolean v6, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mCharging:Z

    .line 138
    if-eqz v1, :cond_cd

    .line 139
    invoke-direct {p0, v10}, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->showNotification(I)V

    goto :goto_cd

    .line 140
    .end local v1           #enableMode:Z
    .end local v4           #prefs:Landroid/content/SharedPreferences;
    :cond_115
    const-string v7, "android.settings.ACTION_POWERSAVING"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_128

    .line 142
    iget-object v6, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContext:Landroid/content/Context;

    invoke-direct {p0, v6}, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->doPowerSaveAction(Landroid/content/Context;)V

    .line 143
    const/16 v6, 0x98

    invoke-direct {p0, v6}, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->showNotification(I)V

    goto :goto_cd

    .line 144
    :cond_128
    const-string v7, "android.intent.action.POWER_SIOP_DISABLE"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_cd

    .line 145
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 147
    .restart local v4       #prefs:Landroid/content/SharedPreferences;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "maximum_power_saving"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 148
    .restart local v5       #temp:I
    if-nez v5, :cond_149

    move v1, v6

    .line 149
    .restart local v1       #enableMode:Z
    :goto_141
    sput-boolean v6, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->is_siop_cpu:Z

    .line 150
    sput-boolean v6, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->is_siop_uirendering:Z

    .line 151
    invoke-direct {p0, v1}, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->updatemaximumpowersaving(Z)V

    goto :goto_cd

    .end local v1           #enableMode:Z
    :cond_149
    move v1, v3

    .line 148
    goto :goto_141
.end method
