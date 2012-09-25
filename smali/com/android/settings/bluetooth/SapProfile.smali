.class final Lcom/android/settings/bluetooth/SapProfile;
.super Ljava/lang/Object;
.source "SapProfile.java"

# interfaces
.implements Lcom/android/settings/bluetooth/LocalBluetoothProfile;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/bluetooth/SapProfile$1;,
        Lcom/android/settings/bluetooth/SapProfile$SapServiceListener;
    }
.end annotation


# instance fields
.field private mService:Landroid/bluetooth/BluetoothSap;


# direct methods
.method static synthetic access$002(Lcom/android/settings/bluetooth/SapProfile;Landroid/bluetooth/BluetoothSap;)Landroid/bluetooth/BluetoothSap;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput-object p1, p0, Lcom/android/settings/bluetooth/SapProfile;->mService:Landroid/bluetooth/BluetoothSap;

    return-object p1
.end method


# virtual methods
.method public connect(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 3
    .parameter "device"

    .prologue
    .line 70
    const/4 v0, 0x0

    return v0
.end method

.method public disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 3
    .parameter "device"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/settings/bluetooth/SapProfile;->mService:Landroid/bluetooth/BluetoothSap;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothSap;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    return v0
.end method

.method public disconnectImmediate(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 3
    .parameter "device"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/settings/bluetooth/SapProfile;->mService:Landroid/bluetooth/BluetoothSap;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothSap;->disconnectImmediate(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    return v0
.end method

.method public getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I
    .registers 3
    .parameter "device"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/settings/bluetooth/SapProfile;->mService:Landroid/bluetooth/BluetoothSap;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothSap;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    return v0
.end method

.method public getDrawableResource(Landroid/bluetooth/BluetoothClass;)I
    .registers 3
    .parameter "btClass"

    .prologue
    .line 134
    const/4 v0, 0x0

    return v0
.end method

.method public getNameResource(Landroid/bluetooth/BluetoothDevice;)I
    .registers 3
    .parameter "device"

    .prologue
    .line 116
    const v0, 0x7f0701b0

    return v0
.end method

.method public getOrdinal()I
    .registers 2

    .prologue
    .line 112
    const/4 v0, 0x7

    return v0
.end method

.method public getPreferred(Landroid/bluetooth/BluetoothDevice;)I
    .registers 3
    .parameter "device"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/settings/bluetooth/SapProfile;->mService:Landroid/bluetooth/BluetoothSap;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothSap;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    return v0
.end method

.method public getSummaryResourceForDevice(Landroid/bluetooth/BluetoothDevice;)I
    .registers 4
    .parameter "device"

    .prologue
    .line 120
    iget-object v1, p0, Lcom/android/settings/bluetooth/SapProfile;->mService:Landroid/bluetooth/BluetoothSap;

    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothSap;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    .line 121
    .local v0, state:I
    packed-switch v0, :pswitch_data_16

    .line 129
    :pswitch_9
    invoke-static {v0}, Lcom/android/settings/bluetooth/Utils;->getConnectionStateSummary(I)I

    move-result v1

    :goto_d
    return v1

    .line 123
    :pswitch_e
    const v1, 0x7f0701c3

    goto :goto_d

    .line 126
    :pswitch_12
    const v1, 0x7f0701c2

    goto :goto_d

    .line 121
    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_e
        :pswitch_9
        :pswitch_12
    .end packed-switch
.end method

.method public isAutoConnectable()Z
    .registers 2

    .prologue
    .line 66
    const/4 v0, 0x0

    return v0
.end method

.method public isConnectable()Z
    .registers 2

    .prologue
    .line 62
    const/4 v0, 0x1

    return v0
.end method

.method public isPreferred(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 3
    .parameter "device"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/settings/bluetooth/SapProfile;->mService:Landroid/bluetooth/BluetoothSap;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothSap;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    if-lez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isProfileReady()Z
    .registers 2

    .prologue
    .line 104
    const/4 v0, 0x1

    return v0
.end method

.method public setPreferred(Landroid/bluetooth/BluetoothDevice;Z)V
    .registers 5
    .parameter "device"
    .parameter "preferred"

    .prologue
    const/16 v1, 0x64

    .line 94
    if-eqz p2, :cond_12

    .line 95
    iget-object v0, p0, Lcom/android/settings/bluetooth/SapProfile;->mService:Landroid/bluetooth/BluetoothSap;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothSap;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    if-ge v0, v1, :cond_11

    .line 96
    iget-object v0, p0, Lcom/android/settings/bluetooth/SapProfile;->mService:Landroid/bluetooth/BluetoothSap;

    invoke-virtual {v0, p1, v1}, Landroid/bluetooth/BluetoothSap;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    .line 101
    :cond_11
    :goto_11
    return-void

    .line 99
    :cond_12
    iget-object v0, p0, Lcom/android/settings/bluetooth/SapProfile;->mService:Landroid/bluetooth/BluetoothSap;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Landroid/bluetooth/BluetoothSap;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    goto :goto_11
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 108
    const-string v0, "SAP"

    return-object v0
.end method
