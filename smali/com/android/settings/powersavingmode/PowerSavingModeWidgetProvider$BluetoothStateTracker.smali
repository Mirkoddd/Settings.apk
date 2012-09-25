.class final Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$BluetoothStateTracker;
.super Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;
.source "PowerSavingModeWidgetProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BluetoothStateTracker"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 366
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;-><init>(Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 366
    invoke-direct {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$BluetoothStateTracker;-><init>()V

    return-void
.end method

.method private static bluetoothStateToFiveState(I)I
    .registers 2
    .parameter "bluetoothState"

    .prologue
    .line 413
    packed-switch p0, :pswitch_data_e

    .line 423
    const/4 v0, 0x4

    :goto_4
    return v0

    .line 415
    :pswitch_5
    const/4 v0, 0x0

    goto :goto_4

    .line 417
    :pswitch_7
    const/4 v0, 0x1

    goto :goto_4

    .line 419
    :pswitch_9
    const/4 v0, 0x2

    goto :goto_4

    .line 421
    :pswitch_b
    const/4 v0, 0x3

    goto :goto_4

    .line 413
    nop

    :pswitch_data_e
    .packed-switch 0xa
        :pswitch_5
        :pswitch_9
        :pswitch_7
        :pswitch_b
    .end packed-switch
.end method


# virtual methods
.method public getActualState(Landroid/content/Context;)I
    .registers 4
    .parameter "context"

    .prologue
    .line 369
    invoke-static {}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->access$500()Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    move-result-object v1

    if-nez v1, :cond_15

    .line 370
    invoke-static {p1}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v0

    .line 371
    .local v0, manager:Lcom/android/settings/bluetooth/LocalBluetoothManager;
    if-nez v0, :cond_e

    .line 372
    const/4 v1, 0x4

    .line 376
    .end local v0           #manager:Lcom/android/settings/bluetooth/LocalBluetoothManager;
    :goto_d
    return v1

    .line 374
    .restart local v0       #manager:Lcom/android/settings/bluetooth/LocalBluetoothManager;
    :cond_e
    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->access$502(Lcom/android/settings/bluetooth/LocalBluetoothAdapter;)Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    .line 376
    .end local v0           #manager:Lcom/android/settings/bluetooth/LocalBluetoothManager;
    :cond_15
    invoke-static {}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->access$500()Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v1

    invoke-static {v1}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$BluetoothStateTracker;->bluetoothStateToFiveState(I)I

    move-result v1

    goto :goto_d
.end method

.method public onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 401
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 406
    :goto_c
    return-void

    .line 404
    :cond_d
    const-string v1, "android.bluetooth.adapter.extra.STATE"

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 405
    .local v0, bluetoothState:I
    invoke-static {v0}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$BluetoothStateTracker;->bluetoothStateToFiveState(I)I

    move-result v1

    invoke-virtual {p0, p1, v1}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$BluetoothStateTracker;->setCurrentState(Landroid/content/Context;I)V

    goto :goto_c
.end method

.method protected requestStateChange(Landroid/content/Context;Z)V
    .registers 5
    .parameter "context"
    .parameter "desiredState"

    .prologue
    .line 381
    invoke-static {}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->access$500()Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    move-result-object v0

    if-nez v0, :cond_e

    .line 382
    const-string v0, "PowerSavingModeWidgetProvider"

    const-string v1, "No LocalBluetoothManager"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    :goto_d
    return-void

    .line 389
    :cond_e
    new-instance v0, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$BluetoothStateTracker$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$BluetoothStateTracker$1;-><init>(Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$BluetoothStateTracker;ZLandroid/content/Context;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$BluetoothStateTracker$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_d
.end method
