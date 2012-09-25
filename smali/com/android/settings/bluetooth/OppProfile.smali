.class final Lcom/android/settings/bluetooth/OppProfile;
.super Ljava/lang/Object;
.source "OppProfile.java"

# interfaces
.implements Lcom/android/settings/bluetooth/LocalBluetoothProfile;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 28
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public connect(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 3
    .parameter "device"

    .prologue
    .line 44
    const/4 v0, 0x0

    return v0
.end method

.method public disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 3
    .parameter "device"

    .prologue
    .line 48
    const/4 v0, 0x0

    return v0
.end method

.method public getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I
    .registers 3
    .parameter "device"

    .prologue
    .line 52
    const/4 v0, 0x0

    return v0
.end method

.method public getDrawableResource(Landroid/bluetooth/BluetoothClass;)I
    .registers 3
    .parameter "btClass"

    .prologue
    .line 87
    const/4 v0, 0x0

    return v0
.end method

.method public getNameResource(Landroid/bluetooth/BluetoothDevice;)I
    .registers 3
    .parameter "device"

    .prologue
    .line 79
    const v0, 0x7f0701ae

    return v0
.end method

.method public getOrdinal()I
    .registers 2

    .prologue
    .line 75
    const/4 v0, 0x2

    return v0
.end method

.method public getPreferred(Landroid/bluetooth/BluetoothDevice;)I
    .registers 3
    .parameter "device"

    .prologue
    .line 60
    const/4 v0, 0x0

    return v0
.end method

.method public getSummaryResourceForDevice(Landroid/bluetooth/BluetoothDevice;)I
    .registers 3
    .parameter "device"

    .prologue
    .line 83
    const/4 v0, 0x0

    return v0
.end method

.method public isAutoConnectable()Z
    .registers 2

    .prologue
    .line 40
    const/4 v0, 0x0

    return v0
.end method

.method public isConnectable()Z
    .registers 2

    .prologue
    .line 36
    const/4 v0, 0x0

    return v0
.end method

.method public isPreferred(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 3
    .parameter "device"

    .prologue
    .line 56
    const/4 v0, 0x0

    return v0
.end method

.method public isProfileReady()Z
    .registers 2

    .prologue
    .line 67
    const/4 v0, 0x1

    return v0
.end method

.method public setPreferred(Landroid/bluetooth/BluetoothDevice;Z)V
    .registers 3
    .parameter "device"
    .parameter "preferred"

    .prologue
    .line 64
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 71
    const-string v0, "OPP"

    return-object v0
.end method
