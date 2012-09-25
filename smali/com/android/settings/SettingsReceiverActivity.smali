.class public Lcom/android/settings/SettingsReceiverActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "SettingsReceiverActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private mAskOnPlug:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/SettingsReceiverActivity;->mAskOnPlug:Z

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 4
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 66
    if-nez p2, :cond_6

    const/4 v0, 0x1

    :goto_3
    iput-boolean v0, p0, Lcom/android/settings/SettingsReceiverActivity;->mAskOnPlug:Z

    .line 67
    return-void

    .line 66
    :cond_6
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3
    .parameter "dialog"
    .parameter "position"

    .prologue
    .line 54
    packed-switch p2, :pswitch_data_8

    .line 61
    :goto_3
    return-void

    .line 56
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/settings/SettingsReceiverActivity;->finish()V

    goto :goto_3

    .line 54
    :pswitch_data_8
    .packed-switch -0x1
        :pswitch_4
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    .line 38
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    iget-object v0, p0, Lcom/android/settings/SettingsReceiverActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 42
    .local v0, ap:Lcom/android/internal/app/AlertController$AlertParams;
    invoke-virtual {p0}, Lcom/android/settings/SettingsReceiverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0700cb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 43
    invoke-virtual {p0}, Lcom/android/settings/SettingsReceiverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x104000a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 44
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 45
    invoke-virtual {p0}, Lcom/android/settings/SettingsReceiverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070985

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 46
    const v1, 0x1080027

    iput v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mIconId:I

    .line 47
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 49
    invoke-virtual {p0}, Lcom/android/settings/SettingsReceiverActivity;->setupAlert()V

    .line 50
    return-void
.end method

.method protected onPause()V
    .registers 1

    .prologue
    .line 71
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onPause()V

    .line 72
    return-void
.end method

.method protected onResume()V
    .registers 1

    .prologue
    .line 76
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onResume()V

    .line 77
    return-void
.end method
