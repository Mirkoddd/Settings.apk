.class Lcom/android/settings/wifi/p2p/WifiP2pSettings$14;
.super Ljava/lang/Object;
.source "WifiP2pSettings.java"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/p2p/WifiP2pSettings;->setScanTimer(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)V
    .registers 2
    .parameter

    .prologue
    .line 1248
    iput-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$14;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .registers 5
    .parameter "reason"

    .prologue
    .line 1274
    const-string v0, "WifiP2pSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " discover fail "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1275
    return-void
.end method

.method public onSuccess()V
    .registers 5

    .prologue
    const/16 v3, 0x8

    .line 1250
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$14;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v1}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_88

    .line 1251
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$14;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v1}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 1252
    .local v0, preferenceScreen:Landroid/preference/PreferenceScreen;
    invoke-static {}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$1700()Landroid/net/wifi/p2p/WifiP2pDeviceList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->clear()Z

    .line 1253
    invoke-static {}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$2300()Landroid/net/wifi/p2p/WifiP2pDeviceList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->clear()Z

    .line 1254
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$14;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mAvailablePeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;
    invoke-static {v1}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$3500(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pDeviceList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->clear()Z

    .line 1255
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$14;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeersGroup:Lcom/android/settings/ProgressCategory;
    invoke-static {v1}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$100(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Lcom/android/settings/ProgressCategory;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 1256
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$14;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeersGroup:Lcom/android/settings/ProgressCategory;
    invoke-static {v1}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$100(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Lcom/android/settings/ProgressCategory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/ProgressCategory;->removeAll()V

    .line 1257
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$14;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeersGroup:Lcom/android/settings/ProgressCategory;
    invoke-static {v1}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$100(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Lcom/android/settings/ProgressCategory;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/settings/ProgressCategory;->setProgress(Z)V

    .line 1259
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$14;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeersConnected:Landroid/preference/PreferenceGroup;
    invoke-static {v1}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$1500(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/preference/PreferenceGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 1260
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$14;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeersBusy:Landroid/preference/PreferenceGroup;
    invoke-static {v1}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$1600(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/preference/PreferenceGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 1261
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$14;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeersConnected:Landroid/preference/PreferenceGroup;
    invoke-static {v1}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$1500(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/preference/PreferenceGroup;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1262
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$14;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeersBusy:Landroid/preference/PreferenceGroup;
    invoke-static {v1}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$1600(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/preference/PreferenceGroup;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1264
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$14;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mNoDeviceText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$1900(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1265
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$14;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mNoDeviceImage:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$2000(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1267
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$14;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mScanTimer:Landroid/os/CountDownTimer;
    invoke-static {v1}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$3600(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/os/CountDownTimer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 1268
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$14;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    const/4 v2, 0x3

    #calls: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->setP2pMenu(I)V
    invoke-static {v1, v2}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$1400(Lcom/android/settings/wifi/p2p/WifiP2pSettings;I)V

    .line 1271
    .end local v0           #preferenceScreen:Landroid/preference/PreferenceScreen;
    :cond_88
    const-string v1, "WifiP2pSettings"

    const-string v2, " discover success"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1272
    return-void
.end method
