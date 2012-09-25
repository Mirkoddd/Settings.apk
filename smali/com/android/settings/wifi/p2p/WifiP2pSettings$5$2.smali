.class Lcom/android/settings/wifi/p2p/WifiP2pSettings$5$2;
.super Ljava/lang/Object;
.source "WifiP2pSettings.java"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/p2p/WifiP2pSettings$5;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/wifi/p2p/WifiP2pSettings$5;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/p2p/WifiP2pSettings$5;)V
    .registers 2
    .parameter

    .prologue
    .line 545
    iput-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$5$2;->this$1:Lcom/android/settings/wifi/p2p/WifiP2pSettings$5;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .registers 5
    .parameter "reason"

    .prologue
    .line 551
    const-string v0, "WifiP2pSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " cancelConnect fail "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$5$2;->this$1:Lcom/android/settings/wifi/p2p/WifiP2pSettings$5;

    iget-object v0, v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$5;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    const/4 v1, 0x1

    const/4 v2, 0x0

    #calls: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->setScanTimer(ZZ)V
    invoke-static {v0, v1, v2}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$1000(Lcom/android/settings/wifi/p2p/WifiP2pSettings;ZZ)V

    .line 553
    return-void
.end method

.method public onSuccess()V
    .registers 4

    .prologue
    .line 547
    const-string v0, "WifiP2pSettings"

    const-string v1, " cancelConnect success"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$5$2;->this$1:Lcom/android/settings/wifi/p2p/WifiP2pSettings$5;

    iget-object v0, v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$5;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    const/4 v1, 0x1

    const/4 v2, 0x0

    #calls: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->setScanTimer(ZZ)V
    invoke-static {v0, v1, v2}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$1000(Lcom/android/settings/wifi/p2p/WifiP2pSettings;ZZ)V

    .line 549
    return-void
.end method
