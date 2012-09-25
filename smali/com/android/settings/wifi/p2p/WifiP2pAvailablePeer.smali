.class public Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;
.super Landroid/preference/CheckBoxPreference;
.source "WifiP2pAvailablePeer.java"


# instance fields
.field public device:Landroid/net/wifi/p2p/WifiP2pDevice;


# direct methods
.method private refresh()V
    .registers 5

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 103
    .local v0, context:Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080021

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 104
    .local v1, statusArray:[Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    aget-object v2, v1, v2

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;->setSummary(Ljava/lang/CharSequence;)V

    .line 105
    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .registers 3
    .parameter "view"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 55
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;->setTitle(Ljava/lang/CharSequence;)V

    .line 66
    :goto_11
    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;->refresh()V

    .line 67
    invoke-super {p0, p1}, Landroid/preference/CheckBoxPreference;->onBindView(Landroid/view/View;)V

    .line 68
    return-void

    .line 57
    :cond_18
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_11
.end method
