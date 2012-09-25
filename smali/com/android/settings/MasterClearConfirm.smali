.class public Lcom/android/settings/MasterClearConfirm;
.super Landroid/app/Fragment;
.source "MasterClearConfirm.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/MasterClearConfirm$2;,
        Lcom/android/settings/MasterClearConfirm$PWState;
    }
.end annotation


# static fields
.field private static mTelMan:Landroid/telephony/TelephonyManager;


# instance fields
.field private LOG_TAG:Ljava/lang/String;

.field private mContentView:Landroid/view/View;

.field private mEraseSdCard:Z

.field private mFinalButton:Landroid/widget/Button;

.field private mFinalClickListener:Landroid/view/View$OnClickListener;

.field private mNewPassword:Ljava/lang/String;

.field private mPWState:Lcom/android/settings/MasterClearConfirm$PWState;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 63
    const-string v0, "MasterClearConfirm"

    iput-object v0, p0, Lcom/android/settings/MasterClearConfirm;->LOG_TAG:Ljava/lang/String;

    .line 80
    sget-object v0, Lcom/android/settings/MasterClearConfirm$PWState;->CURRENT:Lcom/android/settings/MasterClearConfirm$PWState;

    iput-object v0, p0, Lcom/android/settings/MasterClearConfirm;->mPWState:Lcom/android/settings/MasterClearConfirm$PWState;

    .line 90
    new-instance v0, Lcom/android/settings/MasterClearConfirm$1;

    invoke-direct {v0, p0}, Lcom/android/settings/MasterClearConfirm$1;-><init>(Lcom/android/settings/MasterClearConfirm;)V

    iput-object v0, p0, Lcom/android/settings/MasterClearConfirm;->mFinalClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method private DoMasterReset()V
    .registers 6

    .prologue
    .line 111
    const-string v2, "ATT"

    const-string v3, "ro.csc.sales_code"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 112
    iget-object v2, p0, Lcom/android/settings/MasterClearConfirm;->mFinalButton:Landroid/widget/Button;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 115
    :cond_14
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 151
    :cond_1a
    :goto_1a
    return-void

    .line 120
    :cond_1b
    invoke-virtual {p0}, Lcom/android/settings/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "enterprise_policy"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/enterprise/EnterpriseDeviceManager;

    move-object v0, v2

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 121
    .local v0, edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/enterprise/RestrictionPolicy;->isFactoryResetAllowed()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 126
    iget-boolean v2, p0, Lcom/android/settings/MasterClearConfirm;->mEraseSdCard:Z

    if-eqz v2, :cond_4f

    .line 127
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 131
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "com.android.internal.os.storage.FORMAT_AND_FACTORY_RESET"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 132
    sget-object v2, Lcom/android/internal/os/storage/ExternalStorageFormatter;->COMPONENT_NAME:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 134
    invoke-virtual {p0}, Lcom/android/settings/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_1a

    .line 147
    .end local v1           #intent:Landroid/content/Intent;
    :cond_4f
    invoke-virtual {p0}, Lcom/android/settings/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.MASTER_CLEAR"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1a
.end method

.method private SetFirstTimePhonepassword(Landroid/content/Intent;)V
    .registers 6
    .parameter "intent"

    .prologue
    .line 177
    sget-object v0, Lcom/android/settings/MasterClearConfirm$2;->$SwitchMap$com$android$settings$MasterClearConfirm$PWState:[I

    iget-object v1, p0, Lcom/android/settings/MasterClearConfirm;->mPWState:Lcom/android/settings/MasterClearConfirm$PWState;

    invoke-virtual {v1}, Lcom/android/settings/MasterClearConfirm$PWState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_48

    .line 194
    :goto_d
    return-void

    .line 179
    :pswitch_e
    const-string v0, ".password"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/MasterClearConfirm;->mNewPassword:Ljava/lang/String;

    .line 180
    sget-object v0, Lcom/android/settings/MasterClearConfirm$PWState;->CONFIRM:Lcom/android/settings/MasterClearConfirm$PWState;

    iput-object v0, p0, Lcom/android/settings/MasterClearConfirm;->mPWState:Lcom/android/settings/MasterClearConfirm$PWState;

    .line 181
    const v0, 0x7f070013

    invoke-virtual {p0, v0}, Lcom/android/settings/MasterClearConfirm;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f070015

    invoke-virtual {p0, v1}, Lcom/android/settings/MasterClearConfirm;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/MasterClearConfirm;->mNewPassword:Ljava/lang/String;

    const/16 v3, 0x64

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/settings/MasterClearConfirm;->queryPhonepassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_d

    .line 186
    :pswitch_30
    sget-object v0, Lcom/android/settings/MasterClearConfirm$PWState;->CURRENT:Lcom/android/settings/MasterClearConfirm$PWState;

    iput-object v0, p0, Lcom/android/settings/MasterClearConfirm;->mPWState:Lcom/android/settings/MasterClearConfirm$PWState;

    .line 187
    invoke-virtual {p0}, Lcom/android/settings/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "SYSTEM_PHONE_PASSWORD"

    iget-object v2, p0, Lcom/android/settings/MasterClearConfirm;->mNewPassword:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 189
    invoke-direct {p0}, Lcom/android/settings/MasterClearConfirm;->DoMasterReset()V

    goto :goto_d

    .line 177
    nop

    :pswitch_data_48
    .packed-switch 0x1
        :pswitch_e
        :pswitch_30
    .end packed-switch
.end method

.method private StartPassword()V
    .registers 6

    .prologue
    const v3, 0x7f070013

    .line 154
    invoke-virtual {p0}, Lcom/android/settings/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "SYSTEM_PHONE_PASSWORD"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 156
    .local v0, phone_password:Ljava/lang/String;
    if-nez v0, :cond_2f

    .line 157
    sget-object v1, Lcom/android/settings/MasterClearConfirm$PWState;->NEW:Lcom/android/settings/MasterClearConfirm$PWState;

    iput-object v1, p0, Lcom/android/settings/MasterClearConfirm;->mPWState:Lcom/android/settings/MasterClearConfirm$PWState;

    .line 158
    invoke-virtual {p0, v3}, Lcom/android/settings/MasterClearConfirm;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f070012

    invoke-virtual {p0, v2}, Lcom/android/settings/MasterClearConfirm;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f070020

    invoke-virtual {p0, v3}, Lcom/android/settings/MasterClearConfirm;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x64

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/settings/MasterClearConfirm;->queryPhonepassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 164
    :goto_2e
    return-void

    .line 161
    :cond_2f
    invoke-virtual {p0, v3}, Lcom/android/settings/MasterClearConfirm;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f070015

    invoke-virtual {p0, v2}, Lcom/android/settings/MasterClearConfirm;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x65

    invoke-virtual {p0, v1, v2, v0, v3}, Lcom/android/settings/MasterClearConfirm;->queryPhonepassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_2e
.end method

.method static synthetic access$000(Lcom/android/settings/MasterClearConfirm;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/settings/MasterClearConfirm;->DoMasterReset()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/MasterClearConfirm;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/settings/MasterClearConfirm;->StartPassword()V

    return-void
.end method

.method private establishFinalConfirmationState()V
    .registers 3

    .prologue
    .line 237
    iget-object v0, p0, Lcom/android/settings/MasterClearConfirm;->mContentView:Landroid/view/View;

    const v1, 0x7f090121

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/MasterClearConfirm;->mFinalButton:Landroid/widget/Button;

    .line 238
    iget-object v0, p0, Lcom/android/settings/MasterClearConfirm;->mFinalButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/MasterClearConfirm;->mFinalClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 239
    return-void
.end method

.method public static isSimEnabled()Z
    .registers 2

    .prologue
    const/4 v0, 0x1

    .line 197
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    sput-object v1, Lcom/android/settings/MasterClearConfirm;->mTelMan:Landroid/telephony/TelephonyManager;

    .line 198
    sget-object v1, Lcom/android/settings/MasterClearConfirm;->mTelMan:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    if-eqz v1, :cond_17

    sget-object v1, Lcom/android/settings/MasterClearConfirm;->mTelMan:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    if-ne v1, v0, :cond_18

    .line 200
    :cond_17
    const/4 v0, 0x0

    .line 202
    :cond_18
    return v0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 7
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v2, -0x1

    .line 208
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 210
    packed-switch p1, :pswitch_data_30

    .line 230
    :cond_7
    :goto_7
    return-void

    .line 212
    :pswitch_8
    const-string v0, "ATT"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 213
    if-ne p2, v2, :cond_7

    .line 214
    invoke-direct {p0, p3}, Lcom/android/settings/MasterClearConfirm;->SetFirstTimePhonepassword(Landroid/content/Intent;)V

    goto :goto_7

    .line 220
    :pswitch_1c
    const-string v0, "ATT"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 221
    if-ne p2, v2, :cond_7

    .line 222
    invoke-direct {p0}, Lcom/android/settings/MasterClearConfirm;->DoMasterReset()V

    goto :goto_7

    .line 210
    :pswitch_data_30
    .packed-switch 0x64
        :pswitch_8
        :pswitch_1c
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 263
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 265
    invoke-virtual {p0}, Lcom/android/settings/MasterClearConfirm;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 266
    .local v0, args:Landroid/os/Bundle;
    if-eqz v0, :cond_12

    const-string v1, "erase_sd"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    :goto_f
    iput-boolean v1, p0, Lcom/android/settings/MasterClearConfirm;->mEraseSdCard:Z

    .line 267
    return-void

    .line 266
    :cond_12
    const/4 v1, 0x0

    goto :goto_f
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 6
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 244
    const v0, 0x7f04005d

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/MasterClearConfirm;->mContentView:Landroid/view/View;

    .line 245
    invoke-direct {p0}, Lcom/android/settings/MasterClearConfirm;->establishFinalConfirmationState()V

    .line 246
    iget-object v0, p0, Lcom/android/settings/MasterClearConfirm;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method public onResume()V
    .registers 4

    .prologue
    .line 252
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 254
    invoke-virtual {p0}, Lcom/android/settings/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "enterprise_policy"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 255
    .local v0, edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    iget-object v1, p0, Lcom/android/settings/MasterClearConfirm;->mFinalButton:Landroid/widget/Button;

    if-eqz v1, :cond_20

    .line 256
    iget-object v1, p0, Lcom/android/settings/MasterClearConfirm;->mFinalButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/enterprise/RestrictionPolicy;->isFactoryResetAllowed()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 258
    :cond_20
    return-void
.end method

.method protected queryPhonepassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 8
    .parameter "title"
    .parameter "subject"
    .parameter "password"
    .parameter "requestCode"

    .prologue
    .line 168
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 169
    .local v0, pickIntent:Landroid/content/Intent;
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.Password"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 170
    const-string v1, ".title"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 171
    const-string v1, ".subject"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 172
    const-string v1, ".password"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 173
    invoke-virtual {p0, v0, p4}, Lcom/android/settings/MasterClearConfirm;->startActivityForResult(Landroid/content/Intent;I)V

    .line 174
    return-void
.end method
