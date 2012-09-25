.class Lcom/android/settings/wifi/WifiStatusTest$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiStatusTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WifiStatusTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiStatusTest;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiStatusTest;)V
    .registers 2
    .parameter

    .prologue
    .line 87
    iput-object p1, p0, Lcom/android/settings/wifi/WifiStatusTest$1;->this$0:Lcom/android/settings/wifi/WifiStatusTest;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, 0x0

    .line 90
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 91
    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest$1;->this$0:Lcom/android/settings/wifi/WifiStatusTest;

    const-string v1, "wifi_state"

    const/4 v2, 0x4

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    #calls: Lcom/android/settings/wifi/WifiStatusTest;->handleWifiStateChanged(I)V
    invoke-static {v0, v1}, Lcom/android/settings/wifi/WifiStatusTest;->access$000(Lcom/android/settings/wifi/WifiStatusTest;I)V

    .line 112
    :cond_19
    :goto_19
    return-void

    .line 93
    :cond_1a
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 94
    iget-object v1, p0, Lcom/android/settings/wifi/WifiStatusTest$1;->this$0:Lcom/android/settings/wifi/WifiStatusTest;

    const-string v0, "networkInfo"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    #calls: Lcom/android/settings/wifi/WifiStatusTest;->handleNetworkStateChanged(Landroid/net/NetworkInfo;)V
    invoke-static {v1, v0}, Lcom/android/settings/wifi/WifiStatusTest;->access$100(Lcom/android/settings/wifi/WifiStatusTest;Landroid/net/NetworkInfo;)V

    goto :goto_19

    .line 96
    :cond_34
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 97
    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest$1;->this$0:Lcom/android/settings/wifi/WifiStatusTest;

    #calls: Lcom/android/settings/wifi/WifiStatusTest;->handleScanResultsAvailable()V
    invoke-static {v0}, Lcom/android/settings/wifi/WifiStatusTest;->access$200(Lcom/android/settings/wifi/WifiStatusTest;)V

    goto :goto_19

    .line 98
    :cond_46
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.wifi.supplicant.CONNECTION_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 100
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_78

    .line 101
    iget-object v1, p0, Lcom/android/settings/wifi/WifiStatusTest$1;->this$0:Lcom/android/settings/wifi/WifiStatusTest;

    const-string v0, "newState"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/SupplicantState;

    const-string v2, "supplicantError"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "supplicantError"

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    #calls: Lcom/android/settings/wifi/WifiStatusTest;->handleSupplicantStateChanged(Landroid/net/wifi/SupplicantState;ZI)V
    invoke-static {v1, v0, v2, v3}, Lcom/android/settings/wifi/WifiStatusTest;->access$300(Lcom/android/settings/wifi/WifiStatusTest;Landroid/net/wifi/SupplicantState;ZI)V

    goto :goto_19

    .line 105
    :cond_78
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_90

    .line 106
    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest$1;->this$0:Lcom/android/settings/wifi/WifiStatusTest;

    const-string v1, "newRssi"

    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    #calls: Lcom/android/settings/wifi/WifiStatusTest;->handleSignalChanged(I)V
    invoke-static {v0, v1}, Lcom/android/settings/wifi/WifiStatusTest;->access$400(Lcom/android/settings/wifi/WifiStatusTest;I)V

    goto :goto_19

    .line 107
    :cond_90
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.wifi.NETWORK_IDS_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 110
    const-string v0, "WifiStatusTest"

    const-string v1, "Received an unknown Wifi Intent"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_19
.end method
