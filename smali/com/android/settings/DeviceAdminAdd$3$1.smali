.class Lcom/android/settings/DeviceAdminAdd$3$1;
.super Landroid/os/RemoteCallback;
.source "DeviceAdminAdd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/DeviceAdminAdd$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/DeviceAdminAdd$3;


# direct methods
.method constructor <init>(Lcom/android/settings/DeviceAdminAdd$3;Landroid/os/Handler;)V
    .registers 3
    .parameter
    .parameter "x0"

    .prologue
    .line 250
    iput-object p1, p0, Lcom/android/settings/DeviceAdminAdd$3$1;->this$1:Lcom/android/settings/DeviceAdminAdd$3;

    invoke-direct {p0, p2}, Landroid/os/RemoteCallback;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method protected onResult(Landroid/os/Bundle;)V
    .registers 6
    .parameter "bundle"

    .prologue
    .line 253
    if-eqz p1, :cond_2c

    const-string v2, "android.app.extra.DISABLE_WARNING"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 257
    .local v1, msg:Ljava/lang/CharSequence;
    :goto_8
    if-nez v1, :cond_2e

    .line 259
    :try_start_a
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IActivityManager;->resumeAppSwitches()V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_11} :catch_41

    .line 262
    :goto_11
    iget-object v2, p0, Lcom/android/settings/DeviceAdminAdd$3$1;->this$1:Lcom/android/settings/DeviceAdminAdd$3;

    iget-object v2, v2, Lcom/android/settings/DeviceAdminAdd$3;->this$0:Lcom/android/settings/DeviceAdminAdd;

    iget-object v2, v2, Lcom/android/settings/DeviceAdminAdd;->mDPM:Landroid/app/enterprise/EnterpriseDeviceManager;

    iget-object v3, p0, Lcom/android/settings/DeviceAdminAdd$3$1;->this$1:Lcom/android/settings/DeviceAdminAdd$3;

    iget-object v3, v3, Lcom/android/settings/DeviceAdminAdd$3;->this$0:Lcom/android/settings/DeviceAdminAdd;

    iget-object v3, v3, Lcom/android/settings/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/enterprise/EnterpriseDeviceAdminInfo;

    invoke-virtual {v3}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/enterprise/EnterpriseDeviceManager;->removeActiveAdmin(Landroid/content/ComponentName;)V

    .line 263
    iget-object v2, p0, Lcom/android/settings/DeviceAdminAdd$3$1;->this$1:Lcom/android/settings/DeviceAdminAdd$3;

    iget-object v2, v2, Lcom/android/settings/DeviceAdminAdd$3;->this$0:Lcom/android/settings/DeviceAdminAdd;

    invoke-virtual {v2}, Lcom/android/settings/DeviceAdminAdd;->finish()V

    .line 270
    :goto_2b
    return-void

    .line 253
    .end local v1           #msg:Ljava/lang/CharSequence;
    :cond_2c
    const/4 v1, 0x0

    goto :goto_8

    .line 265
    .restart local v1       #msg:Ljava/lang/CharSequence;
    :cond_2e
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 266
    .local v0, args:Landroid/os/Bundle;
    const-string v2, "android.app.extra.DISABLE_WARNING"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 268
    iget-object v2, p0, Lcom/android/settings/DeviceAdminAdd$3$1;->this$1:Lcom/android/settings/DeviceAdminAdd$3;

    iget-object v2, v2, Lcom/android/settings/DeviceAdminAdd$3;->this$0:Lcom/android/settings/DeviceAdminAdd;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v0}, Lcom/android/settings/DeviceAdminAdd;->showDialog(ILandroid/os/Bundle;)Z

    goto :goto_2b

    .line 260
    .end local v0           #args:Landroid/os/Bundle;
    :catch_41
    move-exception v2

    goto :goto_11
.end method
