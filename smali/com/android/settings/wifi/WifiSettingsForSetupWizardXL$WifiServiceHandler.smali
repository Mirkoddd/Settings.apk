.class Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL$WifiServiceHandler;
.super Landroid/os/Handler;
.source "WifiSettingsForSetupWizardXL.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WifiServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;


# direct methods
.method private constructor <init>(Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;)V
    .registers 2
    .parameter

    .prologue
    .line 215
    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL$WifiServiceHandler;->this$0:Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 215
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL$WifiServiceHandler;-><init>(Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .parameter "msg"

    .prologue
    .line 218
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_12

    .line 231
    :cond_5
    :goto_5
    return-void

    .line 220
    :pswitch_6
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_5

    .line 224
    const-string v0, "SetupWizard"

    const-string v1, "Failed to establish AsyncChannel connection"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 218
    :pswitch_data_12
    .packed-switch 0x11000
        :pswitch_6
    .end packed-switch
.end method
