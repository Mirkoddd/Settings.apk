.class Lcom/android/settings/SecuritySettings$5;
.super Ljava/lang/Object;
.source "SecuritySettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/SecuritySettings;->updateSIMLockEnable(Z)V
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
    .line 896
    iput-object p1, p0, Lcom/android/settings/SecuritySettings$5;->this$0:Lcom/android/settings/SecuritySettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 898
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    packed-switch v0, :pswitch_data_16

    .line 905
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$5;->this$0:Lcom/android/settings/SecuritySettings;

    #getter for: Lcom/android/settings/SecuritySettings;->mSimLockPreferences:Landroid/preference/PreferenceCategory;
    invoke-static {v0}, Lcom/android/settings/SecuritySettings;->access$200(Lcom/android/settings/SecuritySettings;)Landroid/preference/PreferenceCategory;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    .line 907
    :pswitch_15
    return-void

    .line 898
    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_15
        :pswitch_15
    .end packed-switch
.end method
