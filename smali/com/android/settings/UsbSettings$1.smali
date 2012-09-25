.class Lcom/android/settings/UsbSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "UsbSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/UsbSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/UsbSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/UsbSettings;)V
    .registers 2
    .parameter

    .prologue
    .line 85
    iput-object p1, p0, Lcom/android/settings/UsbSettings$1;->this$0:Lcom/android/settings/UsbSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .parameter "context"
    .parameter "arg1"

    .prologue
    const/4 v2, 0x2

    .line 88
    const-string v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 91
    .local v0, mPowerManager:Landroid/os/PowerManager;
    invoke-virtual {v0}, Landroid/os/PowerManager;->getPlugType()I

    move-result v1

    if-ne v1, v2, :cond_2b

    iget-object v1, p0, Lcom/android/settings/UsbSettings$1;->this$0:Lcom/android/settings/UsbSettings;

    #getter for: Lcom/android/settings/UsbSettings;->mDisplayState:Z
    invoke-static {v1}, Lcom/android/settings/UsbSettings;->access$000(Lcom/android/settings/UsbSettings;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 92
    iget-object v1, p0, Lcom/android/settings/UsbSettings$1;->this$0:Lcom/android/settings/UsbSettings;

    invoke-virtual {v1, v2}, Lcom/android/settings/UsbSettings;->removeDialog(I)V

    .line 93
    iget-object v1, p0, Lcom/android/settings/UsbSettings$1;->this$0:Lcom/android/settings/UsbSettings;

    invoke-virtual {v1}, Lcom/android/settings/UsbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/UsbSettings$1;->this$0:Lcom/android/settings/UsbSettings;

    #getter for: Lcom/android/settings/UsbSettings;->mBatteryReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v2}, Lcom/android/settings/UsbSettings;->access$100(Lcom/android/settings/UsbSettings;)Landroid/content/BroadcastReceiver;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 95
    :cond_2b
    return-void
.end method
