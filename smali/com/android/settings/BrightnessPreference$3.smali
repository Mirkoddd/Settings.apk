.class Lcom/android/settings/BrightnessPreference$3;
.super Landroid/content/BroadcastReceiver;
.source "BrightnessPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/BrightnessPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/BrightnessPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/BrightnessPreference;)V
    .registers 2
    .parameter

    .prologue
    .line 110
    iput-object p1, p0, Lcom/android/settings/BrightnessPreference$3;->this$0:Lcom/android/settings/BrightnessPreference;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, 0x1

    .line 113
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 114
    .local v0, action:Ljava/lang/String;
    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_37

    .line 115
    const-string v3, "status"

    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 116
    .local v1, battStatus:I
    const-string v3, "level"

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x5

    if-gt v3, v4, :cond_37

    const/4 v3, 0x2

    if-eq v1, v3, :cond_37

    .line 118
    iget-object v3, p0, Lcom/android/settings/BrightnessPreference$3;->this$0:Lcom/android/settings/BrightnessPreference;

    invoke-virtual {v3}, Lcom/android/settings/BrightnessPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    .line 119
    .local v2, dialog:Landroid/app/Dialog;
    if-eqz v2, :cond_37

    .line 120
    const-string v3, "BrightnessPreference"

    const-string v4, "Battery level is lower than the threshold. Force closing the dialog"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    iget-object v3, p0, Lcom/android/settings/BrightnessPreference$3;->this$0:Lcom/android/settings/BrightnessPreference;

    #setter for: Lcom/android/settings/BrightnessPreference;->mForceClosed:Z
    invoke-static {v3, v5}, Lcom/android/settings/BrightnessPreference;->access$202(Lcom/android/settings/BrightnessPreference;Z)Z

    .line 122
    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    .line 126
    .end local v1           #battStatus:I
    .end local v2           #dialog:Landroid/app/Dialog;
    :cond_37
    return-void
.end method
