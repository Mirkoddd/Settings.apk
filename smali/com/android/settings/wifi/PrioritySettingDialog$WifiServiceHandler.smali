.class Lcom/android/settings/wifi/PrioritySettingDialog$WifiServiceHandler;
.super Landroid/os/Handler;
.source "PrioritySettingDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/PrioritySettingDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WifiServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/PrioritySettingDialog;


# direct methods
.method private constructor <init>(Lcom/android/settings/wifi/PrioritySettingDialog;)V
    .registers 2
    .parameter

    .prologue
    .line 154
    iput-object p1, p0, Lcom/android/settings/wifi/PrioritySettingDialog$WifiServiceHandler;->this$0:Lcom/android/settings/wifi/PrioritySettingDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/wifi/PrioritySettingDialog;Lcom/android/settings/wifi/PrioritySettingDialog$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 154
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/PrioritySettingDialog$WifiServiceHandler;-><init>(Lcom/android/settings/wifi/PrioritySettingDialog;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .parameter "msg"

    .prologue
    .line 157
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_12

    .line 170
    :cond_5
    :goto_5
    return-void

    .line 159
    :pswitch_6
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_5

    .line 163
    const-string v0, "WifiPriorityDialog"

    const-string v1, "Failed to establish AsyncChannel connection"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 157
    :pswitch_data_12
    .packed-switch 0x11000
        :pswitch_6
    .end packed-switch
.end method
