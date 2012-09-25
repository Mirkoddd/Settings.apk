.class final Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;
.super Ljava/lang/Object;
.source "LocalBluetoothProfileManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$PanStateChangedHandler;,
        Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;,
        Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$ServiceListener;
    }
.end annotation


# instance fields
.field private mA2dpProfile:Lcom/android/settings/bluetooth/A2dpProfile;

.field private final mContext:Landroid/content/Context;

.field private final mDeviceManager:Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

.field private final mEventManager:Lcom/android/settings/bluetooth/BluetoothEventManager;

.field private mHeadsetProfile:Lcom/android/settings/bluetooth/HeadsetProfile;

.field private final mHidProfile:Lcom/android/settings/bluetooth/HidProfile;

.field private final mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

.field private mOppProfile:Lcom/android/settings/bluetooth/OppProfile;

.field private final mPanProfile:Lcom/android/settings/bluetooth/PanProfile;

.field private final mProfileNameMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/settings/bluetooth/LocalBluetoothProfile;",
            ">;"
        }
    .end annotation
.end field

.field private final mServiceListeners:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$ServiceListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/settings/bluetooth/LocalBluetoothAdapter;Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;Lcom/android/settings/bluetooth/BluetoothEventManager;)V
    .registers 9
    .parameter "context"
    .parameter "adapter"
    .parameter "deviceManager"
    .parameter "eventManager"

    .prologue
    .line 92
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 86
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mProfileNameMap:Ljava/util/Map;

    .line 190
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mServiceListeners:Ljava/util/Collection;

    .line 93
    iput-object p1, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mContext:Landroid/content/Context;

    .line 95
    iput-object p2, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    .line 96
    iput-object p3, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mDeviceManager:Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    .line 97
    iput-object p4, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mEventManager:Lcom/android/settings/bluetooth/BluetoothEventManager;

    .line 99
    iget-object v1, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1, p0}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->setProfileManager(Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;)V

    .line 100
    iget-object v1, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mEventManager:Lcom/android/settings/bluetooth/BluetoothEventManager;

    invoke-virtual {v1, p0}, Lcom/android/settings/bluetooth/BluetoothEventManager;->setProfileManager(Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;)V

    .line 102
    invoke-virtual {p2}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v0

    .line 105
    .local v0, uuids:[Landroid/os/ParcelUuid;
    if-eqz v0, :cond_2c

    .line 106
    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->updateLocalProfiles([Landroid/os/ParcelUuid;)V

    .line 110
    :cond_2c
    new-instance v1, Lcom/android/settings/bluetooth/HidProfile;

    iget-object v2, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-direct {v1, p1, v2}, Lcom/android/settings/bluetooth/HidProfile;-><init>(Landroid/content/Context;Lcom/android/settings/bluetooth/LocalBluetoothAdapter;)V

    iput-object v1, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mHidProfile:Lcom/android/settings/bluetooth/HidProfile;

    .line 111
    iget-object v1, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mHidProfile:Lcom/android/settings/bluetooth/HidProfile;

    const-string v2, "HID"

    const-string v3, "android.bluetooth.input.profile.action.CONNECTION_STATE_CHANGED"

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->addProfile(Lcom/android/settings/bluetooth/LocalBluetoothProfile;Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    new-instance v1, Lcom/android/settings/bluetooth/PanProfile;

    invoke-direct {v1, p1}, Lcom/android/settings/bluetooth/PanProfile;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mPanProfile:Lcom/android/settings/bluetooth/PanProfile;

    .line 115
    iget-object v1, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mPanProfile:Lcom/android/settings/bluetooth/PanProfile;

    const-string v2, "PAN"

    const-string v3, "android.bluetooth.pan.profile.action.CONNECTION_STATE_CHANGED"

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->addPanProfile(Lcom/android/settings/bluetooth/LocalBluetoothProfile;Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    const-string v1, "LocalBluetoothProfileManager"

    const-string v2, "LocalBluetoothProfileManager construction complete"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;)Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mDeviceManager:Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;)Lcom/android/settings/bluetooth/LocalBluetoothAdapter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;)Lcom/android/settings/bluetooth/BluetoothEventManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mEventManager:Lcom/android/settings/bluetooth/BluetoothEventManager;

    return-object v0
.end method

.method private addPanProfile(Lcom/android/settings/bluetooth/LocalBluetoothProfile;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "profile"
    .parameter "profileName"
    .parameter "stateChangedAction"

    .prologue
    .line 201
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mEventManager:Lcom/android/settings/bluetooth/BluetoothEventManager;

    new-instance v1, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$PanStateChangedHandler;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$PanStateChangedHandler;-><init>(Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;Lcom/android/settings/bluetooth/LocalBluetoothProfile;)V

    invoke-virtual {v0, p3, v1}, Lcom/android/settings/bluetooth/BluetoothEventManager;->addProfileHandler(Ljava/lang/String;Lcom/android/settings/bluetooth/BluetoothEventManager$Handler;)V

    .line 203
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mProfileNameMap:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    return-void
.end method

.method private addProfile(Lcom/android/settings/bluetooth/LocalBluetoothProfile;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "profile"
    .parameter "profileName"
    .parameter "stateChangedAction"

    .prologue
    .line 195
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mEventManager:Lcom/android/settings/bluetooth/BluetoothEventManager;

    new-instance v1, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;-><init>(Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;Lcom/android/settings/bluetooth/LocalBluetoothProfile;)V

    invoke-virtual {v0, p3, v1}, Lcom/android/settings/bluetooth/BluetoothEventManager;->addProfileHandler(Ljava/lang/String;Lcom/android/settings/bluetooth/BluetoothEventManager$Handler;)V

    .line 196
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mProfileNameMap:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    return-void
.end method


# virtual methods
.method addServiceListener(Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$ServiceListener;)V
    .registers 3
    .parameter "l"

    .prologue
    .line 269
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mServiceListeners:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 270
    return-void
.end method

.method callServiceConnectedListeners()V
    .registers 4

    .prologue
    .line 279
    iget-object v2, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mServiceListeners:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$ServiceListener;

    .line 280
    .local v1, l:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$ServiceListener;
    invoke-interface {v1}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$ServiceListener;->onServiceConnected()V

    goto :goto_6

    .line 282
    .end local v1           #l:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$ServiceListener;
    :cond_16
    return-void
.end method

.method callServiceDisconnectedListeners()V
    .registers 4

    .prologue
    .line 286
    iget-object v2, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mServiceListeners:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$ServiceListener;

    .line 287
    .local v1, listener:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$ServiceListener;
    invoke-interface {v1}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$ServiceListener;->onServiceDisconnected()V

    goto :goto_6

    .line 289
    .end local v1           #listener:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$ServiceListener;
    :cond_16
    return-void
.end method

.method getA2dpProfile()Lcom/android/settings/bluetooth/A2dpProfile;
    .registers 2

    .prologue
    .line 307
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mA2dpProfile:Lcom/android/settings/bluetooth/A2dpProfile;

    return-object v0
.end method

.method getHeadsetProfile()Lcom/android/settings/bluetooth/HeadsetProfile;
    .registers 2

    .prologue
    .line 311
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mHeadsetProfile:Lcom/android/settings/bluetooth/HeadsetProfile;

    return-object v0
.end method

.method getProfileByName(Ljava/lang/String;)Lcom/android/settings/bluetooth/LocalBluetoothProfile;
    .registers 3
    .parameter "name"

    .prologue
    .line 207
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mProfileNameMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/bluetooth/LocalBluetoothProfile;

    return-object v0
.end method

.method public declared-synchronized isManagerReady()Z
    .registers 3

    .prologue
    .line 295
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mHeadsetProfile:Lcom/android/settings/bluetooth/HeadsetProfile;

    .line 296
    .local v0, profile:Lcom/android/settings/bluetooth/LocalBluetoothProfile;
    if-eqz v0, :cond_b

    .line 297
    invoke-interface {v0}, Lcom/android/settings/bluetooth/LocalBluetoothProfile;->isProfileReady()Z
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_16

    move-result v1

    .line 303
    :goto_9
    monitor-exit p0

    return v1

    .line 299
    :cond_b
    :try_start_b
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mA2dpProfile:Lcom/android/settings/bluetooth/A2dpProfile;

    .line 300
    if-eqz v0, :cond_14

    .line 301
    invoke-interface {v0}, Lcom/android/settings/bluetooth/LocalBluetoothProfile;->isProfileReady()Z
    :try_end_12
    .catchall {:try_start_b .. :try_end_12} :catchall_16

    move-result v1

    goto :goto_9

    .line 303
    :cond_14
    const/4 v1, 0x0

    goto :goto_9

    .line 295
    .end local v0           #profile:Lcom/android/settings/bluetooth/LocalBluetoothProfile;
    :catchall_16
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method removeServiceListener(Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$ServiceListener;)V
    .registers 3
    .parameter "l"

    .prologue
    .line 274
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mServiceListeners:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 275
    return-void
.end method

.method setBluetoothStateOn()V
    .registers 3

    .prologue
    .line 212
    iget-object v1, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v0

    .line 213
    .local v0, uuids:[Landroid/os/ParcelUuid;
    if-eqz v0, :cond_b

    .line 214
    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->updateLocalProfiles([Landroid/os/ParcelUuid;)V

    .line 216
    :cond_b
    iget-object v1, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mEventManager:Lcom/android/settings/bluetooth/BluetoothEventManager;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/BluetoothEventManager;->readPairedDevices()Z

    .line 217
    return-void
.end method

.method updateLocalProfiles([Landroid/os/ParcelUuid;)V
    .registers 6
    .parameter "uuids"

    .prologue
    .line 134
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->AudioSource:Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_7f

    .line 135
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mA2dpProfile:Lcom/android/settings/bluetooth/A2dpProfile;

    if-nez v0, :cond_25

    .line 136
    const-string v0, "LocalBluetoothProfileManager"

    const-string v1, "Adding local A2DP profile"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    new-instance v0, Lcom/android/settings/bluetooth/A2dpProfile;

    iget-object v1, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/settings/bluetooth/A2dpProfile;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mA2dpProfile:Lcom/android/settings/bluetooth/A2dpProfile;

    .line 138
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mA2dpProfile:Lcom/android/settings/bluetooth/A2dpProfile;

    const-string v1, "A2DP"

    const-string v2, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->addProfile(Lcom/android/settings/bluetooth/LocalBluetoothProfile;Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    :cond_25
    :goto_25
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->Handsfree_AG:Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-nez v0, :cond_35

    sget-object v0, Landroid/bluetooth/BluetoothUuid;->HSP_AG:Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_8b

    .line 148
    :cond_35
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mHeadsetProfile:Lcom/android/settings/bluetooth/HeadsetProfile;

    if-nez v0, :cond_56

    .line 149
    const-string v0, "LocalBluetoothProfileManager"

    const-string v1, "Adding local HEADSET profile"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    new-instance v0, Lcom/android/settings/bluetooth/HeadsetProfile;

    iget-object v1, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    iget-object v3, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mDeviceManager:Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/android/settings/bluetooth/HeadsetProfile;-><init>(Landroid/content/Context;Lcom/android/settings/bluetooth/LocalBluetoothAdapter;Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mHeadsetProfile:Lcom/android/settings/bluetooth/HeadsetProfile;

    .line 152
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mHeadsetProfile:Lcom/android/settings/bluetooth/HeadsetProfile;

    const-string v1, "HEADSET"

    const-string v2, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->addProfile(Lcom/android/settings/bluetooth/LocalBluetoothProfile;Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    :cond_56
    :goto_56
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->ObexObjectPush:Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_97

    .line 161
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mOppProfile:Lcom/android/settings/bluetooth/OppProfile;

    if-nez v0, :cond_79

    .line 162
    const-string v0, "LocalBluetoothProfileManager"

    const-string v1, "Adding local OPP profile"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    new-instance v0, Lcom/android/settings/bluetooth/OppProfile;

    invoke-direct {v0}, Lcom/android/settings/bluetooth/OppProfile;-><init>()V

    iput-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mOppProfile:Lcom/android/settings/bluetooth/OppProfile;

    .line 165
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mProfileNameMap:Ljava/util/Map;

    const-string v1, "OPP"

    iget-object v2, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mOppProfile:Lcom/android/settings/bluetooth/OppProfile;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    :cond_79
    :goto_79
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mEventManager:Lcom/android/settings/bluetooth/BluetoothEventManager;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothEventManager;->registerProfileIntentReceiver()V

    .line 188
    return-void

    .line 141
    :cond_7f
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mA2dpProfile:Lcom/android/settings/bluetooth/A2dpProfile;

    if-eqz v0, :cond_25

    .line 142
    const-string v0, "LocalBluetoothProfileManager"

    const-string v1, "Warning: A2DP profile was previously added but the UUID is now missing."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_25

    .line 155
    :cond_8b
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mHeadsetProfile:Lcom/android/settings/bluetooth/HeadsetProfile;

    if-eqz v0, :cond_56

    .line 156
    const-string v0, "LocalBluetoothProfileManager"

    const-string v1, "Warning: HEADSET profile was previously added but the UUID is now missing."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_56

    .line 167
    :cond_97
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mOppProfile:Lcom/android/settings/bluetooth/OppProfile;

    if-eqz v0, :cond_79

    .line 168
    const-string v0, "LocalBluetoothProfileManager"

    const-string v1, "Warning: OPP profile was previously added but the UUID is now missing."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_79
.end method

.method declared-synchronized updateProfiles([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;Ljava/util/Collection;Ljava/util/Collection;)V
    .registers 6
    .parameter "uuids"
    .parameter "localUuids"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/os/ParcelUuid;",
            "[",
            "Landroid/os/ParcelUuid;",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/settings/bluetooth/LocalBluetoothProfile;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/settings/bluetooth/LocalBluetoothProfile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 327
    .local p3, profiles:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/settings/bluetooth/LocalBluetoothProfile;>;"
    .local p4, removedProfiles:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/settings/bluetooth/LocalBluetoothProfile;>;"
    monitor-enter p0

    :try_start_1
    invoke-interface {p4}, Ljava/util/Collection;->clear()V

    .line 328
    invoke-interface {p4, p3}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 329
    invoke-interface {p3}, Ljava/util/Collection;->clear()V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_96

    .line 331
    if-nez p1, :cond_e

    .line 368
    :cond_c
    :goto_c
    monitor-exit p0

    return-void

    .line 335
    :cond_e
    :try_start_e
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mHeadsetProfile:Lcom/android/settings/bluetooth/HeadsetProfile;

    if-eqz v0, :cond_3c

    .line 336
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->HSP_AG:Landroid/os/ParcelUuid;

    invoke-static {p2, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_22

    sget-object v0, Landroid/bluetooth/BluetoothUuid;->HSP:Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-nez v0, :cond_32

    :cond_22
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->Handsfree_AG:Landroid/os/ParcelUuid;

    invoke-static {p2, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_3c

    sget-object v0, Landroid/bluetooth/BluetoothUuid;->Handsfree:Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 340
    :cond_32
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mHeadsetProfile:Lcom/android/settings/bluetooth/HeadsetProfile;

    invoke-interface {p3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 341
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mHeadsetProfile:Lcom/android/settings/bluetooth/HeadsetProfile;

    invoke-interface {p4, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 345
    :cond_3c
    sget-object v0, Lcom/android/settings/bluetooth/A2dpProfile;->SINK_UUIDS:[Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->containsAnyUuid([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_52

    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mA2dpProfile:Lcom/android/settings/bluetooth/A2dpProfile;

    if-eqz v0, :cond_52

    .line 347
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mA2dpProfile:Lcom/android/settings/bluetooth/A2dpProfile;

    invoke-interface {p3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 348
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mA2dpProfile:Lcom/android/settings/bluetooth/A2dpProfile;

    invoke-interface {p4, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 351
    :cond_52
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->ObexObjectPush:Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_68

    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mOppProfile:Lcom/android/settings/bluetooth/OppProfile;

    if-eqz v0, :cond_68

    .line 353
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mOppProfile:Lcom/android/settings/bluetooth/OppProfile;

    invoke-interface {p3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 354
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mOppProfile:Lcom/android/settings/bluetooth/OppProfile;

    invoke-interface {p4, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 357
    :cond_68
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->Hid:Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_7e

    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mHidProfile:Lcom/android/settings/bluetooth/HidProfile;

    if-eqz v0, :cond_7e

    .line 359
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mHidProfile:Lcom/android/settings/bluetooth/HidProfile;

    invoke-interface {p3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 360
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mHidProfile:Lcom/android/settings/bluetooth/HidProfile;

    invoke-interface {p4, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 363
    :cond_7e
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->NAP:Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mPanProfile:Lcom/android/settings/bluetooth/PanProfile;

    if-eqz v0, :cond_c

    .line 365
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mPanProfile:Lcom/android/settings/bluetooth/PanProfile;

    invoke-interface {p3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 366
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mPanProfile:Lcom/android/settings/bluetooth/PanProfile;

    invoke-interface {p4, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z
    :try_end_94
    .catchall {:try_start_e .. :try_end_94} :catchall_96

    goto/16 :goto_c

    .line 327
    :catchall_96
    move-exception v0

    monitor-exit p0

    throw v0
.end method
