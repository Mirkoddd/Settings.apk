.class public Lcom/android/settings/motion/MotionView;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "MotionView.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private mActionBarSwitch:Landroid/widget/Switch;

.field private mActivity:Landroid/app/Activity;

.field private mAnimationHandler:Landroid/os/Handler;

.field private mAnimationImage:[I

.field private mAnimationIndex:I

.field private mAnimationView:Landroid/widget/ImageView;

.field private mCameraShortCutDialog:Landroid/app/AlertDialog;

.field private mCurrentDB:Ljava/lang/String;

.field private mCurrentMotion:I

.field private mCurrentText:Ljava/lang/String;

.field private mDoubleTapToGoTopAnimationImage:[I

.field private mGuideDialog:Landroid/app/AlertDialog;

.field private mMotionDialog:Landroid/app/AlertDialog;

.field private mPanToMoveIconAnimationImage:[I

.field private mSensitivity:Lcom/android/settings/motion/SensitivityPreference;

.field private mShakeToUpdateAnimationImage:[I

.field private mTabletPanToMoveIconAnimationImage:[I

.field private mTabletTiltToZoomAnimationImage:[I

.field private mTiltToZoomAnimationImage:[I

.field private mTitle:Ljava/lang/String;

.field private mTutorial:Landroid/preference/Preference;

.field private mUseRingDialog:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>()V
    .registers 5

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x3

    const/4 v1, 0x0

    .line 34
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 75
    iput-object v1, p0, Lcom/android/settings/motion/MotionView;->mUseRingDialog:Landroid/app/AlertDialog;

    .line 79
    iput-object v1, p0, Lcom/android/settings/motion/MotionView;->mMotionDialog:Landroid/app/AlertDialog;

    .line 80
    iput-object v1, p0, Lcom/android/settings/motion/MotionView;->mGuideDialog:Landroid/app/AlertDialog;

    .line 81
    iput-object v1, p0, Lcom/android/settings/motion/MotionView;->mCameraShortCutDialog:Landroid/app/AlertDialog;

    .line 83
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/motion/MotionView;->mAnimationIndex:I

    .line 84
    iput-object v1, p0, Lcom/android/settings/motion/MotionView;->mAnimationView:Landroid/widget/ImageView;

    .line 87
    new-array v0, v3, [I

    fill-array-data v0, :array_46

    iput-object v0, p0, Lcom/android/settings/motion/MotionView;->mTiltToZoomAnimationImage:[I

    .line 88
    new-array v0, v2, [I

    fill-array-data v0, :array_52

    iput-object v0, p0, Lcom/android/settings/motion/MotionView;->mPanToMoveIconAnimationImage:[I

    .line 89
    new-array v0, v2, [I

    fill-array-data v0, :array_5c

    iput-object v0, p0, Lcom/android/settings/motion/MotionView;->mShakeToUpdateAnimationImage:[I

    .line 90
    new-array v0, v3, [I

    fill-array-data v0, :array_66

    iput-object v0, p0, Lcom/android/settings/motion/MotionView;->mDoubleTapToGoTopAnimationImage:[I

    .line 91
    new-array v0, v3, [I

    fill-array-data v0, :array_72

    iput-object v0, p0, Lcom/android/settings/motion/MotionView;->mTabletTiltToZoomAnimationImage:[I

    .line 92
    new-array v0, v2, [I

    fill-array-data v0, :array_7e

    iput-object v0, p0, Lcom/android/settings/motion/MotionView;->mTabletPanToMoveIconAnimationImage:[I

    .line 99
    new-instance v0, Lcom/android/settings/motion/MotionView$1;

    invoke-direct {v0, p0}, Lcom/android/settings/motion/MotionView$1;-><init>(Lcom/android/settings/motion/MotionView;)V

    iput-object v0, p0, Lcom/android/settings/motion/MotionView;->mAnimationHandler:Landroid/os/Handler;

    return-void

    .line 87
    nop

    :array_46
    .array-data 0x4
        0x58t 0x1t 0x2t 0x7ft
        0x59t 0x1t 0x2t 0x7ft
        0x5at 0x1t 0x2t 0x7ft
        0x5bt 0x1t 0x2t 0x7ft
    .end array-data

    .line 88
    :array_52
    .array-data 0x4
        0x55t 0x1t 0x2t 0x7ft
        0x56t 0x1t 0x2t 0x7ft
        0x57t 0x1t 0x2t 0x7ft
    .end array-data

    .line 89
    :array_5c
    .array-data 0x4
        0x61t 0x1t 0x2t 0x7ft
        0x62t 0x1t 0x2t 0x7ft
        0x63t 0x1t 0x2t 0x7ft
    .end array-data

    .line 90
    :array_66
    .array-data 0x4
        0x50t 0x1t 0x2t 0x7ft
        0x51t 0x1t 0x2t 0x7ft
        0x50t 0x1t 0x2t 0x7ft
        0x51t 0x1t 0x2t 0x7ft
    .end array-data

    .line 91
    :array_72
    .array-data 0x4
        0xa9t 0x1t 0x2t 0x7ft
        0xaat 0x1t 0x2t 0x7ft
        0xabt 0x1t 0x2t 0x7ft
        0xact 0x1t 0x2t 0x7ft
    .end array-data

    .line 92
    :array_7e
    .array-data 0x4
        0xa5t 0x1t 0x2t 0x7ft
        0xa6t 0x1t 0x2t 0x7ft
        0xa7t 0x1t 0x2t 0x7ft
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/settings/motion/MotionView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/settings/motion/MotionView;->updateAnimation()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/motion/MotionView;)Landroid/content/ContentResolver;
    .registers 2
    .parameter "x0"

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionView;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/settings/motion/MotionView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 34
    iget v0, p0, Lcom/android/settings/motion/MotionView;->mCurrentMotion:I

    return v0
.end method

.method static synthetic access$1100(Lcom/android/settings/motion/MotionView;Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    invoke-virtual {p0, p1}, Lcom/android/settings/motion/MotionView;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/settings/motion/MotionView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/settings/motion/MotionView;->showUseRingDialog()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/settings/motion/MotionView;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/android/settings/motion/MotionView;->startTryActually(Z)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/settings/motion/MotionView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/settings/motion/MotionView;->stopAnimation()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/motion/MotionView;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mCurrentDB:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/motion/MotionView;)Landroid/content/ContentResolver;
    .registers 2
    .parameter "x0"

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionView;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/motion/MotionView;)Landroid/content/ContentResolver;
    .registers 2
    .parameter "x0"

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionView;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/motion/MotionView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/settings/motion/MotionView;->startTryActually()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings/motion/MotionView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/settings/motion/MotionView;->updateCheckedUI()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings/motion/MotionView;)Landroid/content/ContentResolver;
    .registers 2
    .parameter "x0"

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionView;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/motion/MotionView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/settings/motion/MotionView;->showMotionDialog()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/settings/motion/MotionView;)Landroid/content/ContentResolver;
    .registers 2
    .parameter "x0"

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionView;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method private setArguments()V
    .registers 10

    .prologue
    const/16 v7, 0x10

    const/4 v8, -0x2

    const/4 v6, 0x0

    .line 379
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionView;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 380
    .local v0, arguments:Landroid/os/Bundle;
    const-string v4, "title"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/motion/MotionView;->mTitle:Ljava/lang/String;

    .line 381
    const-string v4, "sensitivity"

    invoke-virtual {v0, v4, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 382
    .local v1, bSensitivity:Z
    new-instance v4, Landroid/widget/Switch;

    iget-object v5, p0, Lcom/android/settings/motion/MotionView;->mActivity:Landroid/app/Activity;

    invoke-direct {v4, v5}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/settings/motion/MotionView;->mActionBarSwitch:Landroid/widget/Switch;

    .line 384
    iget-object v4, p0, Lcom/android/settings/motion/MotionView;->mActivity:Landroid/app/Activity;

    instance-of v4, v4, Landroid/preference/PreferenceActivity;

    if-eqz v4, :cond_6d

    .line 386
    iget-object v3, p0, Lcom/android/settings/motion/MotionView;->mActivity:Landroid/app/Activity;

    check-cast v3, Landroid/preference/PreferenceActivity;

    .line 387
    .local v3, preferenceActivity:Landroid/preference/PreferenceActivity;
    invoke-virtual {v3}, Landroid/preference/PreferenceActivity;->onIsHidingHeaders()Z

    move-result v4

    if-nez v4, :cond_35

    invoke-virtual {v3}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v4

    if-nez v4, :cond_6d

    .line 388
    :cond_35
    iget-object v4, p0, Lcom/android/settings/motion/MotionView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0002

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 390
    .local v2, padding:I
    iget-object v4, p0, Lcom/android/settings/motion/MotionView;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v4, v6, v6, v2, v6}, Landroid/widget/Switch;->setPadding(IIII)V

    .line 391
    iget-object v4, p0, Lcom/android/settings/motion/MotionView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    invoke-virtual {v4, v7, v7}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 393
    iget-object v4, p0, Lcom/android/settings/motion/MotionView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/motion/MotionView;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v6, Landroid/app/ActionBar$LayoutParams;

    const/16 v7, 0x15

    invoke-direct {v6, v8, v8, v7}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v4, v5, v6}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 397
    iget-object v4, p0, Lcom/android/settings/motion/MotionView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/motion/MotionView;->mTitle:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 401
    .end local v2           #padding:I
    .end local v3           #preferenceActivity:Landroid/preference/PreferenceActivity;
    :cond_6d
    iget-object v4, p0, Lcom/android/settings/motion/MotionView;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v4, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 402
    const-string v4, "MotionView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "title: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/motion/MotionView;->mTitle:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    iget-object v4, p0, Lcom/android/settings/motion/MotionView;->mTitle:Ljava/lang/String;

    if-eqz v4, :cond_f4

    .line 404
    iget-object v4, p0, Lcom/android/settings/motion/MotionView;->mTitle:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/settings/motion/MotionView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0707f6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f5

    .line 405
    const/16 v4, 0x44d

    iput v4, p0, Lcom/android/settings/motion/MotionView;->mCurrentMotion:I

    .line 406
    const-string v4, "motion_zooming"

    iput-object v4, p0, Lcom/android/settings/motion/MotionView;->mCurrentDB:Ljava/lang/String;

    .line 407
    iget-object v4, p0, Lcom/android/settings/motion/MotionView;->mTiltToZoomAnimationImage:[I

    iput-object v4, p0, Lcom/android/settings/motion/MotionView;->mAnimationImage:[I

    .line 408
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionView;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_bf

    .line 409
    iget-object v4, p0, Lcom/android/settings/motion/MotionView;->mTabletTiltToZoomAnimationImage:[I

    iput-object v4, p0, Lcom/android/settings/motion/MotionView;->mAnimationImage:[I

    .line 411
    :cond_bf
    iget-object v4, p0, Lcom/android/settings/motion/MotionView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f07080f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/motion/MotionView;->mCurrentText:Ljava/lang/String;

    .line 412
    iget-object v4, p0, Lcom/android/settings/motion/MotionView;->mTutorial:Landroid/preference/Preference;

    const v5, 0x7f070809

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setTitle(I)V

    .line 436
    :cond_d6
    :goto_d6
    if-nez v1, :cond_ed

    .line 437
    const-string v4, "sensitivity_category"

    invoke-virtual {p0, v4}, Lcom/android/settings/motion/MotionView;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    if-eqz v4, :cond_ed

    .line 438
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionView;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    const-string v5, "sensitivity_category"

    invoke-virtual {p0, v5}, Lcom/android/settings/motion/MotionView;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 442
    :cond_ed
    iget-object v4, p0, Lcom/android/settings/motion/MotionView;->mSensitivity:Lcom/android/settings/motion/SensitivityPreference;

    iget v5, p0, Lcom/android/settings/motion/MotionView;->mCurrentMotion:I

    invoke-virtual {v4, v5}, Lcom/android/settings/motion/SensitivityPreference;->setMotion(I)V

    .line 445
    :cond_f4
    return-void

    .line 413
    :cond_f5
    iget-object v4, p0, Lcom/android/settings/motion/MotionView;->mTitle:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/settings/motion/MotionView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0707f7

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13c

    .line 414
    const/16 v4, 0x4b1

    iput v4, p0, Lcom/android/settings/motion/MotionView;->mCurrentMotion:I

    .line 415
    const-string v4, "motion_panning"

    iput-object v4, p0, Lcom/android/settings/motion/MotionView;->mCurrentDB:Ljava/lang/String;

    .line 416
    iget-object v4, p0, Lcom/android/settings/motion/MotionView;->mPanToMoveIconAnimationImage:[I

    iput-object v4, p0, Lcom/android/settings/motion/MotionView;->mAnimationImage:[I

    .line 417
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionView;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_124

    .line 418
    iget-object v4, p0, Lcom/android/settings/motion/MotionView;->mTabletPanToMoveIconAnimationImage:[I

    iput-object v4, p0, Lcom/android/settings/motion/MotionView;->mAnimationImage:[I

    .line 420
    :cond_124
    iget-object v4, p0, Lcom/android/settings/motion/MotionView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070810

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/motion/MotionView;->mCurrentText:Ljava/lang/String;

    .line 421
    iget-object v4, p0, Lcom/android/settings/motion/MotionView;->mTutorial:Landroid/preference/Preference;

    const v5, 0x7f07080a

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setTitle(I)V

    goto :goto_d6

    .line 422
    :cond_13c
    iget-object v4, p0, Lcom/android/settings/motion/MotionView;->mTitle:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/settings/motion/MotionView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0707f8

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_176

    .line 423
    const/16 v4, 0x515

    iput v4, p0, Lcom/android/settings/motion/MotionView;->mCurrentMotion:I

    .line 424
    const-string v4, "motion_shake"

    iput-object v4, p0, Lcom/android/settings/motion/MotionView;->mCurrentDB:Ljava/lang/String;

    .line 425
    iget-object v4, p0, Lcom/android/settings/motion/MotionView;->mShakeToUpdateAnimationImage:[I

    iput-object v4, p0, Lcom/android/settings/motion/MotionView;->mAnimationImage:[I

    .line 426
    iget-object v4, p0, Lcom/android/settings/motion/MotionView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070811

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/motion/MotionView;->mCurrentText:Ljava/lang/String;

    .line 427
    iget-object v4, p0, Lcom/android/settings/motion/MotionView;->mTutorial:Landroid/preference/Preference;

    const v5, 0x7f07080b

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setTitle(I)V

    goto/16 :goto_d6

    .line 428
    :cond_176
    iget-object v4, p0, Lcom/android/settings/motion/MotionView;->mTitle:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/settings/motion/MotionView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0707f9

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d6

    .line 429
    const/16 v4, 0x579

    iput v4, p0, Lcom/android/settings/motion/MotionView;->mCurrentMotion:I

    .line 430
    const-string v4, "motion_double_tap"

    iput-object v4, p0, Lcom/android/settings/motion/MotionView;->mCurrentDB:Ljava/lang/String;

    .line 431
    iget-object v4, p0, Lcom/android/settings/motion/MotionView;->mDoubleTapToGoTopAnimationImage:[I

    iput-object v4, p0, Lcom/android/settings/motion/MotionView;->mAnimationImage:[I

    .line 432
    iget-object v4, p0, Lcom/android/settings/motion/MotionView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070812

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/motion/MotionView;->mCurrentText:Ljava/lang/String;

    .line 433
    iget-object v4, p0, Lcom/android/settings/motion/MotionView;->mTutorial:Landroid/preference/Preference;

    const v5, 0x7f07080c

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setTitle(I)V

    goto/16 :goto_d6
.end method

.method private showMotionDialog()V
    .registers 5

    .prologue
    const v3, 0x7f07081d

    .line 184
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionView;->allDialogDismiss()V

    .line 186
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 187
    .local v0, message:Ljava/lang/String;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/motion/MotionView;->getActivity()Landroid/app/Activity;

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

    new-instance v2, Lcom/android/settings/motion/MotionView$2;

    invoke-direct {v2, p0}, Lcom/android/settings/motion/MotionView$2;-><init>(Lcom/android/settings/motion/MotionView;)V

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f07010e

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/motion/MotionView;->mMotionDialog:Landroid/app/AlertDialog;

    .line 206
    iget-object v1, p0, Lcom/android/settings/motion/MotionView;->mMotionDialog:Landroid/app/AlertDialog;

    new-instance v2, Lcom/android/settings/motion/MotionView$3;

    invoke-direct {v2, p0}, Lcom/android/settings/motion/MotionView$3;-><init>(Lcom/android/settings/motion/MotionView;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 212
    return-void
.end method

.method private showUseRingDialog()V
    .registers 4

    .prologue
    .line 261
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionView;->allDialogDismiss()V

    .line 262
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/motion/MotionView;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings/motion/MotionView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07081b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f07081a

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070492

    new-instance v2, Lcom/android/settings/motion/MotionView$7;

    invoke-direct {v2, p0}, Lcom/android/settings/motion/MotionView$7;-><init>(Lcom/android/settings/motion/MotionView;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f07081c

    new-instance v2, Lcom/android/settings/motion/MotionView$6;

    invoke-direct {v2, p0}, Lcom/android/settings/motion/MotionView$6;-><init>(Lcom/android/settings/motion/MotionView;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion/MotionView;->mUseRingDialog:Landroid/app/AlertDialog;

    .line 279
    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mUseRingDialog:Landroid/app/AlertDialog;

    new-instance v1, Lcom/android/settings/motion/MotionView$8;

    invoke-direct {v1, p0}, Lcom/android/settings/motion/MotionView$8;-><init>(Lcom/android/settings/motion/MotionView;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 285
    return-void
.end method

.method private startAnimation()V
    .registers 3

    .prologue
    .line 361
    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mAnimationView:Landroid/widget/ImageView;

    if-nez v0, :cond_5

    .line 367
    :cond_4
    :goto_4
    return-void

    .line 362
    :cond_5
    const-string v0, "MotionView"

    const-string v1, "startAnimation()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mAnimationHandler:Landroid/os/Handler;

    if-eqz v0, :cond_4

    .line 364
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/motion/MotionView;->mAnimationIndex:I

    .line 365
    invoke-direct {p0}, Lcom/android/settings/motion/MotionView;->updateAnimation()V

    goto :goto_4
.end method

.method private startTryActually()V
    .registers 8

    .prologue
    const/16 v6, 0xa

    .line 289
    iget v0, p0, Lcom/android/settings/motion/MotionView;->mCurrentMotion:I

    const/16 v1, 0x44d

    if-ne v0, v1, :cond_25

    .line 290
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 291
    const-string v1, "image/jpeg"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 292
    const-string v1, "com.android.sec.gallery3d"

    const-string v2, "com.android.sec.gallery3d.app.Gallery"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 293
    const-string v1, "MotionTest"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 294
    invoke-virtual {p0, v0, v6}, Lcom/android/settings/motion/MotionView;->startActivityForResult(Landroid/content/Intent;I)V

    .line 326
    :cond_24
    :goto_24
    return-void

    .line 295
    :cond_25
    iget v0, p0, Lcom/android/settings/motion/MotionView;->mCurrentMotion:I

    const/16 v1, 0x44e

    if-eq v0, v1, :cond_24

    .line 297
    iget v0, p0, Lcom/android/settings/motion/MotionView;->mCurrentMotion:I

    const/16 v1, 0x4b1

    if-ne v0, v1, :cond_41

    .line 298
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 299
    const-string v1, "com.sec.android.motions.settings.panningtutorial"

    const-string v2, "com.sec.android.motions.settings.panningtutorial.PanningTryActually"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 300
    invoke-virtual {p0, v0, v6}, Lcom/android/settings/motion/MotionView;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_24

    .line 301
    :cond_41
    iget v0, p0, Lcom/android/settings/motion/MotionView;->mCurrentMotion:I

    const/16 v1, 0x4b2

    if-ne v0, v1, :cond_64

    .line 302
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 303
    const-string v1, "image/jpeg"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 304
    const-string v1, "com.android.sec.gallery3d"

    const-string v2, "com.android.sec.gallery3d.app.Gallery"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 305
    const-string v1, "MotionTest"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 306
    invoke-virtual {p0, v0, v6}, Lcom/android/settings/motion/MotionView;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_24

    .line 307
    :cond_64
    iget v0, p0, Lcom/android/settings/motion/MotionView;->mCurrentMotion:I

    const/16 v1, 0x515

    if-ne v0, v1, :cond_8c

    .line 308
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionView;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Landroid/preference/PreferenceActivity;

    if-eqz v0, :cond_24

    .line 309
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionView;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 310
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 311
    const-class v1, Lcom/android/settings/motion/ShakeTutorial;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f070819

    const/4 v4, 0x0

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_24

    .line 313
    :cond_8c
    iget v0, p0, Lcom/android/settings/motion/MotionView;->mCurrentMotion:I

    const/16 v1, 0x5dd

    if-ne v0, v1, :cond_a0

    .line 314
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 315
    const-string v1, "android.pickuptutorial.PICKUPTUTORIAL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 316
    invoke-virtual {p0, v0, v6}, Lcom/android/settings/motion/MotionView;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_24

    .line 317
    :cond_a0
    iget v0, p0, Lcom/android/settings/motion/MotionView;->mCurrentMotion:I

    const/16 v1, 0x5de

    if-ne v0, v1, :cond_b9

    .line 318
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 319
    const-string v1, "com.android.mms.ui.DirectCallTutorial"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 320
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionView;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_24

    .line 321
    :cond_b9
    iget v0, p0, Lcom/android/settings/motion/MotionView;->mCurrentMotion:I

    const/16 v1, 0x6a5

    if-ne v0, v1, :cond_24

    .line 322
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 323
    const-string v1, "android.camerashortcut.CAMERASHORTCUTTUTORIAL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 324
    invoke-virtual {p0, v0, v6}, Lcom/android/settings/motion/MotionView;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_24
.end method

.method private startTryActually(Z)V
    .registers 5
    .parameter "useRing"

    .prologue
    .line 329
    iget v1, p0, Lcom/android/settings/motion/MotionView;->mCurrentMotion:I

    const/16 v2, 0x641

    if-ne v1, v2, :cond_1a

    .line 330
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 331
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "UseRing"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 332
    const-string v1, "com.android.phone"

    const-string v2, "com.android.phone.callsettings.OverturnTutorialIncallScreen"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 333
    invoke-virtual {p0, v0}, Lcom/android/settings/motion/MotionView;->startActivity(Landroid/content/Intent;)V

    .line 335
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1a
    return-void
.end method

.method private stopAnimation()V
    .registers 3

    .prologue
    .line 371
    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mAnimationView:Landroid/widget/ImageView;

    if-nez v0, :cond_5

    .line 376
    :cond_4
    :goto_4
    return-void

    .line 372
    :cond_5
    const-string v0, "MotionView"

    const-string v1, "stopAnimation()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mAnimationHandler:Landroid/os/Handler;

    if-eqz v0, :cond_4

    .line 374
    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mAnimationHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_4
.end method

.method private updateAnimation()V
    .registers 5

    .prologue
    const/16 v3, 0x66

    .line 339
    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mAnimationView:Landroid/widget/ImageView;

    if-nez v0, :cond_7

    .line 357
    :cond_6
    :goto_6
    return-void

    .line 340
    :cond_7
    const-string v0, "MotionView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CHANGE_ANIMATION : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/motion/MotionView;->mAnimationIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mAnimationView:Landroid/widget/ImageView;

    if-eqz v0, :cond_36

    .line 342
    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mAnimationView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/settings/motion/MotionView;->mAnimationImage:[I

    iget v2, p0, Lcom/android/settings/motion/MotionView;->mAnimationIndex:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 343
    iget v0, p0, Lcom/android/settings/motion/MotionView;->mAnimationIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings/motion/MotionView;->mAnimationIndex:I

    .line 346
    :cond_36
    iget v0, p0, Lcom/android/settings/motion/MotionView;->mAnimationIndex:I

    iget-object v1, p0, Lcom/android/settings/motion/MotionView;->mAnimationImage:[I

    array-length v1, v1

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/android/settings/motion/MotionView;->mAnimationIndex:I

    .line 348
    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mAnimationHandler:Landroid/os/Handler;

    if-eqz v0, :cond_6

    .line 349
    invoke-direct {p0}, Lcom/android/settings/motion/MotionView;->stopAnimation()V

    .line 350
    iget v0, p0, Lcom/android/settings/motion/MotionView;->mAnimationIndex:I

    if-nez v0, :cond_51

    .line 351
    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mAnimationHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_6

    .line 353
    :cond_51
    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mAnimationHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_6
.end method

.method private updateCheckedUI()V
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 167
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionView;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/motion/MotionView;->mCurrentDB:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_e

    const/4 v0, 0x1

    .line 168
    .local v0, saved_value:Z
    :cond_e
    iget-object v1, p0, Lcom/android/settings/motion/MotionView;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 169
    iget-object v1, p0, Lcom/android/settings/motion/MotionView;->mSensitivity:Lcom/android/settings/motion/SensitivityPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/motion/SensitivityPreference;->setEnabled(Z)V

    .line 170
    return-void
.end method


# virtual methods
.method public allDialogDismiss()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 448
    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mGuideDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_c

    .line 449
    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mGuideDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 450
    iput-object v1, p0, Lcom/android/settings/motion/MotionView;->mGuideDialog:Landroid/app/AlertDialog;

    .line 452
    :cond_c
    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mMotionDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_17

    .line 453
    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mMotionDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 454
    iput-object v1, p0, Lcom/android/settings/motion/MotionView;->mMotionDialog:Landroid/app/AlertDialog;

    .line 456
    :cond_17
    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mUseRingDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_22

    .line 457
    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mUseRingDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 458
    iput-object v1, p0, Lcom/android/settings/motion/MotionView;->mUseRingDialog:Landroid/app/AlertDialog;

    .line 460
    :cond_22
    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mCameraShortCutDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2d

    .line 461
    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mCameraShortCutDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 462
    iput-object v1, p0, Lcom/android/settings/motion/MotionView;->mCameraShortCutDialog:Landroid/app/AlertDialog;

    .line 465
    :cond_2d
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 2
    .parameter "savedInstanceState"

    .prologue
    .line 124
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 125
    invoke-direct {p0}, Lcom/android/settings/motion/MotionView;->setArguments()V

    .line 126
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 7
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 151
    const-string v0, "MotionView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "request code : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , resultCode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    packed-switch p1, :pswitch_data_38

    .line 165
    :cond_25
    :goto_25
    :pswitch_25
    return-void

    .line 155
    :pswitch_26
    const/16 v0, 0x65

    if-ne p2, v0, :cond_25

    .line 156
    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mSensitivity:Lcom/android/settings/motion/SensitivityPreference;

    invoke-virtual {v0}, Lcom/android/settings/motion/SensitivityPreference;->showTutorialDialog()V

    goto :goto_25

    .line 160
    :pswitch_30
    const/16 v0, 0x64

    if-ne p2, v0, :cond_25

    .line 161
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionView;->showGuideDialog()V

    goto :goto_25

    .line 152
    :pswitch_data_38
    .packed-switch 0xa
        :pswitch_30
        :pswitch_25
        :pswitch_26
    .end packed-switch
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 6
    .parameter "buttonView"
    .parameter "desiredState"

    .prologue
    .line 130
    const-string v0, "MotionView"

    const-string v1, "onCheckChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionView;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/motion/MotionView;->mCurrentDB:Ljava/lang/String;

    if-eqz p2, :cond_19

    const/4 v0, 0x1

    :goto_10
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 132
    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mSensitivity:Lcom/android/settings/motion/SensitivityPreference;

    invoke-virtual {v0, p2}, Lcom/android/settings/motion/SensitivityPreference;->setEnabled(Z)V

    .line 134
    return-void

    .line 131
    :cond_19
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3
    .parameter "savedInstanceState"

    .prologue
    .line 112
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 114
    const v0, 0x7f050023

    invoke-virtual {p0, v0}, Lcom/android/settings/motion/MotionView;->addPreferencesFromResource(I)V

    .line 115
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionView;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion/MotionView;->mActivity:Landroid/app/Activity;

    .line 116
    const-string v0, "sensitivity"

    invoke-virtual {p0, v0}, Lcom/android/settings/motion/MotionView;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/motion/SensitivityPreference;

    iput-object v0, p0, Lcom/android/settings/motion/MotionView;->mSensitivity:Lcom/android/settings/motion/SensitivityPreference;

    .line 117
    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mSensitivity:Lcom/android/settings/motion/SensitivityPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/motion/SensitivityPreference;->setInformation(Lcom/android/settings/SettingsPreferenceFragment;)V

    .line 118
    const-string v0, "tutorial"

    invoke-virtual {p0, v0}, Lcom/android/settings/motion/MotionView;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion/MotionView;->mTutorial:Landroid/preference/Preference;

    .line 119
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/motion/MotionView;->mCurrentMotion:I

    .line 120
    return-void
.end method

.method public onPause()V
    .registers 1

    .prologue
    .line 145
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 146
    invoke-direct {p0}, Lcom/android/settings/motion/MotionView;->stopAnimation()V

    .line 147
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 4
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mTutorial:Landroid/preference/Preference;

    if-ne p2, v0, :cond_9

    .line 175
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionView;->showGuideDialog()V

    .line 179
    const/4 v0, 0x1

    :goto_8
    return v0

    .line 177
    :cond_9
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    goto :goto_8
.end method

.method public onResume()V
    .registers 1

    .prologue
    .line 138
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 139
    invoke-direct {p0}, Lcom/android/settings/motion/MotionView;->updateCheckedUI()V

    .line 140
    invoke-direct {p0}, Lcom/android/settings/motion/MotionView;->updateAnimation()V

    .line 141
    return-void
.end method

.method public showGuideDialog()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 216
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/settings/motion/MotionView;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 217
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionView;->allDialogDismiss()V

    .line 220
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionView;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 221
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v4, 0x7f040047

    invoke-virtual {v1, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 222
    .local v2, layout:Landroid/view/View;
    const v4, 0x7f09002c

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 223
    .local v3, message:Landroid/widget/TextView;
    const v4, 0x7f0900a0

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/settings/motion/MotionView;->mAnimationView:Landroid/widget/ImageView;

    .line 225
    iget-object v4, p0, Lcom/android/settings/motion/MotionView;->mCurrentText:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 226
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 227
    iget-object v4, p0, Lcom/android/settings/motion/MotionView;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 229
    const v4, 0x7f070815

    new-instance v5, Lcom/android/settings/motion/MotionView$4;

    invoke-direct {v5, p0}, Lcom/android/settings/motion/MotionView$4;-><init>(Lcom/android/settings/motion/MotionView;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f07010e

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 250
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/motion/MotionView;->mGuideDialog:Landroid/app/AlertDialog;

    .line 251
    iget-object v4, p0, Lcom/android/settings/motion/MotionView;->mGuideDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 252
    iget-object v4, p0, Lcom/android/settings/motion/MotionView;->mGuideDialog:Landroid/app/AlertDialog;

    new-instance v5, Lcom/android/settings/motion/MotionView$5;

    invoke-direct {v5, p0}, Lcom/android/settings/motion/MotionView$5;-><init>(Lcom/android/settings/motion/MotionView;)V

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 257
    invoke-direct {p0}, Lcom/android/settings/motion/MotionView;->startAnimation()V

    .line 258
    return-void
.end method
