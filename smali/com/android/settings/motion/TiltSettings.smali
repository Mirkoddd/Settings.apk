.class public Lcom/android/settings/motion/TiltSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "TiltSettings.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field private static mActivity:Lcom/android/settings/motion/TiltSettings;

.field private static final mAnimationImage:[I


# instance fields
.field private mActionBarSwitch:Landroid/widget/Switch;

.field private mAnimationHandler:Landroid/os/Handler;

.field private mAnimationIndex:I

.field private mAnimationView:Landroid/widget/ImageView;

.field private mGuideDialog:Landroid/app/AlertDialog;

.field private mMotionDialog:Landroid/app/AlertDialog;

.field private mSensitivity:Lcom/android/settings/motion/TiltSensitivityPreference;

.field private mTutorial:Landroid/preference/Preference;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 58
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lcom/android/settings/motion/TiltSettings;->mAnimationImage:[I

    return-void

    nop

    :array_a
    .array-data 0x4
        0x58t 0x1t 0x2t 0x7ft
        0x59t 0x1t 0x2t 0x7ft
        0x5at 0x1t 0x2t 0x7ft
        0x5bt 0x1t 0x2t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 32
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 49
    iput-object v1, p0, Lcom/android/settings/motion/TiltSettings;->mMotionDialog:Landroid/app/AlertDialog;

    .line 50
    iput-object v1, p0, Lcom/android/settings/motion/TiltSettings;->mGuideDialog:Landroid/app/AlertDialog;

    .line 52
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/motion/TiltSettings;->mAnimationIndex:I

    .line 53
    iput-object v1, p0, Lcom/android/settings/motion/TiltSettings;->mAnimationView:Landroid/widget/ImageView;

    .line 61
    new-instance v0, Lcom/android/settings/motion/TiltSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/motion/TiltSettings$1;-><init>(Lcom/android/settings/motion/TiltSettings;)V

    iput-object v0, p0, Lcom/android/settings/motion/TiltSettings;->mAnimationHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/motion/TiltSettings;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/settings/motion/TiltSettings;->updateAnimation()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/motion/TiltSettings;)Landroid/content/ContentResolver;
    .registers 2
    .parameter "x0"

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/android/settings/motion/TiltSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/motion/TiltSettings;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/settings/motion/TiltSettings;->startTryActually()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/motion/TiltSettings;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/settings/motion/TiltSettings;->updateCheckedUI()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/motion/TiltSettings;)Landroid/content/ContentResolver;
    .registers 2
    .parameter "x0"

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/android/settings/motion/TiltSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/motion/TiltSettings;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/settings/motion/TiltSettings;->showMotionDialog()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings/motion/TiltSettings;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/settings/motion/TiltSettings;->stopAnimation()V

    return-void
.end method

.method public static getReference()Lcom/android/settings/motion/TiltSettings;
    .registers 1

    .prologue
    .line 300
    sget-object v0, Lcom/android/settings/motion/TiltSettings;->mActivity:Lcom/android/settings/motion/TiltSettings;

    return-object v0
.end method

.method private showMotionDialog()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 162
    iget-object v1, p0, Lcom/android/settings/motion/TiltSettings;->mGuideDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_c

    .line 163
    iget-object v1, p0, Lcom/android/settings/motion/TiltSettings;->mGuideDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 164
    iput-object v4, p0, Lcom/android/settings/motion/TiltSettings;->mGuideDialog:Landroid/app/AlertDialog;

    .line 166
    :cond_c
    iget-object v1, p0, Lcom/android/settings/motion/TiltSettings;->mMotionDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_17

    .line 167
    iget-object v1, p0, Lcom/android/settings/motion/TiltSettings;->mMotionDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 168
    iput-object v4, p0, Lcom/android/settings/motion/TiltSettings;->mMotionDialog:Landroid/app/AlertDialog;

    .line 170
    :cond_17
    invoke-virtual {p0}, Lcom/android/settings/motion/TiltSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07081f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 171
    .local v0, message:Ljava/lang/String;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/motion/TiltSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f07081e

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1080027

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f07081d

    new-instance v3, Lcom/android/settings/motion/TiltSettings$2;

    invoke-direct {v3, p0}, Lcom/android/settings/motion/TiltSettings$2;-><init>(Lcom/android/settings/motion/TiltSettings;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f07010e

    invoke-virtual {v1, v2, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/motion/TiltSettings;->mMotionDialog:Landroid/app/AlertDialog;

    .line 184
    iget-object v1, p0, Lcom/android/settings/motion/TiltSettings;->mMotionDialog:Landroid/app/AlertDialog;

    new-instance v2, Lcom/android/settings/motion/TiltSettings$3;

    invoke-direct {v2, p0}, Lcom/android/settings/motion/TiltSettings$3;-><init>(Lcom/android/settings/motion/TiltSettings;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 190
    return-void
.end method

.method private startAnimation()V
    .registers 3

    .prologue
    .line 282
    const-string v0, "TiltSettings"

    const-string v1, "startAnimation()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    iget-object v0, p0, Lcom/android/settings/motion/TiltSettings;->mAnimationHandler:Landroid/os/Handler;

    if-eqz v0, :cond_11

    .line 284
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/motion/TiltSettings;->mAnimationIndex:I

    .line 285
    invoke-direct {p0}, Lcom/android/settings/motion/TiltSettings;->updateAnimation()V

    .line 287
    :cond_11
    return-void
.end method

.method private startTryActually()V
    .registers 5

    .prologue
    .line 233
    const/4 v0, 0x0

    .line 234
    .local v0, intent:Landroid/content/Intent;
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 235
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v2, "com.cooliris.media"

    const-string v3, "com.cooliris.media.Gallery"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 236
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 237
    const-string v2, "android.resource://com.cooliris.media/"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 238
    .local v1, uri:Landroid/net/Uri;
    const-string v2, "image/png"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 239
    const-string v2, "MotionTest"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 240
    const/16 v2, 0xa

    invoke-virtual {p0, v0, v2}, Lcom/android/settings/motion/TiltSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 241
    return-void
.end method

.method private stopAnimation()V
    .registers 3

    .prologue
    .line 291
    const-string v0, "TiltSettings"

    const-string v1, "stopAnimation()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    iget-object v0, p0, Lcom/android/settings/motion/TiltSettings;->mAnimationHandler:Landroid/os/Handler;

    if-eqz v0, :cond_12

    .line 293
    iget-object v0, p0, Lcom/android/settings/motion/TiltSettings;->mAnimationHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 295
    :cond_12
    return-void
.end method

.method private updateAnimation()V
    .registers 5

    .prologue
    const/16 v3, 0x66

    .line 261
    const-string v0, "TiltSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CHANGE_ANIMATION : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/motion/TiltSettings;->mAnimationIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    iget-object v0, p0, Lcom/android/settings/motion/TiltSettings;->mAnimationView:Landroid/widget/ImageView;

    if-eqz v0, :cond_31

    .line 263
    iget-object v0, p0, Lcom/android/settings/motion/TiltSettings;->mAnimationView:Landroid/widget/ImageView;

    sget-object v1, Lcom/android/settings/motion/TiltSettings;->mAnimationImage:[I

    iget v2, p0, Lcom/android/settings/motion/TiltSettings;->mAnimationIndex:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 264
    iget v0, p0, Lcom/android/settings/motion/TiltSettings;->mAnimationIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings/motion/TiltSettings;->mAnimationIndex:I

    .line 267
    :cond_31
    iget v0, p0, Lcom/android/settings/motion/TiltSettings;->mAnimationIndex:I

    rem-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/settings/motion/TiltSettings;->mAnimationIndex:I

    .line 269
    iget-object v0, p0, Lcom/android/settings/motion/TiltSettings;->mAnimationHandler:Landroid/os/Handler;

    if-eqz v0, :cond_49

    .line 270
    invoke-direct {p0}, Lcom/android/settings/motion/TiltSettings;->stopAnimation()V

    .line 271
    iget v0, p0, Lcom/android/settings/motion/TiltSettings;->mAnimationIndex:I

    if-nez v0, :cond_4a

    .line 272
    iget-object v0, p0, Lcom/android/settings/motion/TiltSettings;->mAnimationHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 278
    :cond_49
    :goto_49
    return-void

    .line 274
    :cond_4a
    iget-object v0, p0, Lcom/android/settings/motion/TiltSettings;->mAnimationHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_49
.end method

.method private updateCheckedUI()V
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 145
    invoke-virtual {p0}, Lcom/android/settings/motion/TiltSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "motion_zooming"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_e

    const/4 v0, 0x1

    .line 146
    .local v0, saved_value:Z
    :cond_e
    iget-object v1, p0, Lcom/android/settings/motion/TiltSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 147
    iget-object v1, p0, Lcom/android/settings/motion/TiltSettings;->mSensitivity:Lcom/android/settings/motion/TiltSensitivityPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/motion/TiltSensitivityPreference;->setEnabled(Z)V

    .line 148
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 10
    .parameter "savedInstanceState"

    .prologue
    const/16 v6, 0x10

    const/4 v7, -0x2

    const/4 v5, 0x0

    .line 86
    invoke-virtual {p0}, Lcom/android/settings/motion/TiltSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 87
    .local v0, activity:Landroid/app/Activity;
    new-instance v3, Landroid/widget/Switch;

    invoke-direct {v3, v0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings/motion/TiltSettings;->mActionBarSwitch:Landroid/widget/Switch;

    .line 89
    instance-of v3, v0, Landroid/preference/PreferenceActivity;

    if-eqz v3, :cond_53

    move-object v2, v0

    .line 90
    check-cast v2, Landroid/preference/PreferenceActivity;

    .line 91
    .local v2, preferenceActivity:Landroid/preference/PreferenceActivity;
    invoke-virtual {v2}, Landroid/preference/PreferenceActivity;->onIsHidingHeaders()Z

    move-result v3

    if-nez v3, :cond_22

    invoke-virtual {v2}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v3

    if-nez v3, :cond_53

    .line 92
    :cond_22
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0002

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 94
    .local v1, padding:I
    iget-object v3, p0, Lcom/android/settings/motion/TiltSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v5, v5, v1, v5}, Landroid/widget/Switch;->setPadding(IIII)V

    .line 95
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v6, v6}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 97
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/motion/TiltSettings;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v5, Landroid/app/ActionBar$LayoutParams;

    const/16 v6, 0x15

    invoke-direct {v5, v7, v7, v6}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v3, v4, v5}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 101
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    const v4, 0x7f0707f6

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->setTitle(I)V

    .line 105
    .end local v1           #padding:I
    .end local v2           #preferenceActivity:Landroid/preference/PreferenceActivity;
    :cond_53
    iget-object v3, p0, Lcom/android/settings/motion/TiltSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 106
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 107
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 5
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 131
    packed-switch p1, :pswitch_data_16

    .line 143
    :cond_3
    :goto_3
    :pswitch_3
    return-void

    .line 133
    :pswitch_4
    const/16 v0, 0x65

    if-ne p2, v0, :cond_3

    .line 134
    iget-object v0, p0, Lcom/android/settings/motion/TiltSettings;->mSensitivity:Lcom/android/settings/motion/TiltSensitivityPreference;

    invoke-virtual {v0}, Lcom/android/settings/motion/TiltSensitivityPreference;->showTutorialDialog()V

    goto :goto_3

    .line 138
    :pswitch_e
    const/16 v0, 0x64

    if-ne p2, v0, :cond_3

    .line 139
    invoke-virtual {p0}, Lcom/android/settings/motion/TiltSettings;->showGuideDialog()V

    goto :goto_3

    .line 131
    :pswitch_data_16
    .packed-switch 0xa
        :pswitch_e
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 6
    .parameter "buttonView"
    .parameter "desiredState"

    .prologue
    .line 111
    const-string v0, "TiltSettings"

    const-string v1, "onCheckChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    invoke-virtual {p0}, Lcom/android/settings/motion/TiltSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "motion_zooming"

    if-eqz p2, :cond_19

    const/4 v0, 0x1

    :goto_10
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 113
    iget-object v0, p0, Lcom/android/settings/motion/TiltSettings;->mSensitivity:Lcom/android/settings/motion/TiltSensitivityPreference;

    invoke-virtual {v0, p2}, Lcom/android/settings/motion/TiltSensitivityPreference;->setEnabled(Z)V

    .line 114
    return-void

    .line 112
    :cond_19
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3
    .parameter "savedInstanceState"

    .prologue
    .line 74
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 76
    const v0, 0x7f050021

    invoke-virtual {p0, v0}, Lcom/android/settings/motion/TiltSettings;->addPreferencesFromResource(I)V

    .line 78
    sput-object p0, Lcom/android/settings/motion/TiltSettings;->mActivity:Lcom/android/settings/motion/TiltSettings;

    .line 80
    const-string v0, "sensitivity"

    invoke-virtual {p0, v0}, Lcom/android/settings/motion/TiltSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/motion/TiltSensitivityPreference;

    iput-object v0, p0, Lcom/android/settings/motion/TiltSettings;->mSensitivity:Lcom/android/settings/motion/TiltSensitivityPreference;

    .line 81
    const-string v0, "tutorial"

    invoke-virtual {p0, v0}, Lcom/android/settings/motion/TiltSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion/TiltSettings;->mTutorial:Landroid/preference/Preference;

    .line 82
    return-void
.end method

.method public onPause()V
    .registers 1

    .prologue
    .line 125
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 126
    invoke-direct {p0}, Lcom/android/settings/motion/TiltSettings;->stopAnimation()V

    .line 127
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 4
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/settings/motion/TiltSettings;->mTutorial:Landroid/preference/Preference;

    if-ne p2, v0, :cond_9

    .line 153
    invoke-virtual {p0}, Lcom/android/settings/motion/TiltSettings;->showGuideDialog()V

    .line 157
    const/4 v0, 0x1

    :goto_8
    return v0

    .line 155
    :cond_9
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    goto :goto_8
.end method

.method public onResume()V
    .registers 1

    .prologue
    .line 118
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 119
    invoke-direct {p0}, Lcom/android/settings/motion/TiltSettings;->updateCheckedUI()V

    .line 120
    invoke-direct {p0}, Lcom/android/settings/motion/TiltSettings;->updateAnimation()V

    .line 121
    return-void
.end method

.method public showGuideDialog()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 194
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/motion/TiltSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 195
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    iget-object v4, p0, Lcom/android/settings/motion/TiltSettings;->mGuideDialog:Landroid/app/AlertDialog;

    if-eqz v4, :cond_15

    .line 196
    iget-object v4, p0, Lcom/android/settings/motion/TiltSettings;->mGuideDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->dismiss()V

    .line 197
    iput-object v6, p0, Lcom/android/settings/motion/TiltSettings;->mGuideDialog:Landroid/app/AlertDialog;

    .line 199
    :cond_15
    iget-object v4, p0, Lcom/android/settings/motion/TiltSettings;->mMotionDialog:Landroid/app/AlertDialog;

    if-eqz v4, :cond_20

    .line 200
    iget-object v4, p0, Lcom/android/settings/motion/TiltSettings;->mMotionDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->dismiss()V

    .line 201
    iput-object v6, p0, Lcom/android/settings/motion/TiltSettings;->mMotionDialog:Landroid/app/AlertDialog;

    .line 204
    :cond_20
    invoke-virtual {p0}, Lcom/android/settings/motion/TiltSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 205
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v4, 0x7f040047

    invoke-virtual {v1, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 206
    .local v2, layout:Landroid/view/View;
    const v4, 0x7f09002c

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 207
    .local v3, message:Landroid/widget/TextView;
    const v4, 0x7f0900a0

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/settings/motion/TiltSettings;->mAnimationView:Landroid/widget/ImageView;

    .line 209
    const v4, 0x7f07080f

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 210
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 211
    const v4, 0x7f0707f6

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 213
    const v4, 0x7f070815

    new-instance v5, Lcom/android/settings/motion/TiltSettings$4;

    invoke-direct {v5, p0}, Lcom/android/settings/motion/TiltSettings$4;-><init>(Lcom/android/settings/motion/TiltSettings;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f07010e

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 222
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/motion/TiltSettings;->mGuideDialog:Landroid/app/AlertDialog;

    .line 223
    iget-object v4, p0, Lcom/android/settings/motion/TiltSettings;->mGuideDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 224
    iget-object v4, p0, Lcom/android/settings/motion/TiltSettings;->mGuideDialog:Landroid/app/AlertDialog;

    new-instance v5, Lcom/android/settings/motion/TiltSettings$5;

    invoke-direct {v5, p0}, Lcom/android/settings/motion/TiltSettings$5;-><init>(Lcom/android/settings/motion/TiltSettings;)V

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 229
    invoke-direct {p0}, Lcom/android/settings/motion/TiltSettings;->startAnimation()V

    .line 230
    return-void
.end method

.method public startSensitivityTest(I)V
    .registers 6
    .parameter "sensitivity"

    .prologue
    .line 245
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 246
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "com.cooliris.media"

    const-string v3, "com.cooliris.media.Gallery"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 247
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 248
    const-string v2, "android.resource://com.cooliris.media/"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 249
    .local v1, uri:Landroid/net/Uri;
    const-string v2, "image/png"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 251
    const-string v2, "MotionTest"

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 252
    const-string v2, "Sensitivity"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 255
    const/16 v2, 0xc

    invoke-virtual {p0, v0, v2}, Lcom/android/settings/motion/TiltSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 257
    return-void
.end method
