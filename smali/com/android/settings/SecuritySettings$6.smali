.class Lcom/android/settings/SecuritySettings$6;
.super Landroid/content/BroadcastReceiver;
.source "SecuritySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SecuritySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SecuritySettings;


# direct methods
.method constructor <init>(Lcom/android/settings/SecuritySettings;)V
    .registers 2
    .parameter

    .prologue
    .line 912
    iput-object p1, p0, Lcom/android/settings/SecuritySettings$6;->this$0:Lcom/android/settings/SecuritySettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 915
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$6;->this$0:Lcom/android/settings/SecuritySettings;

    const-string v1, "state"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    #calls: Lcom/android/settings/SecuritySettings;->updateSIMLockEnable(Z)V
    invoke-static {v0, v1}, Lcom/android/settings/SecuritySettings;->access$300(Lcom/android/settings/SecuritySettings;Z)V

    .line 916
    return-void
.end method
