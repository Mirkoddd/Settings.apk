.class public Lcom/android/settings/motion/TiltSensitivityPreference;
.super Landroid/preference/SeekBarDialogPreference;
.source "TiltSensitivityPreference.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# static fields
.field private static mOldSensitivity:I


# instance fields
.field private mAfterTest:Z

.field private mContext:Landroid/content/Context;

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mSensitivityText:Landroid/widget/LinearLayout;

.field private mTest:Landroid/widget/Button;

.field private mWhichButtonClicked:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 31
    const/4 v0, 0x5

    sput v0, Lcom/android/settings/motion/TiltSensitivityPreference;->mOldSensitivity:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Landroid/preference/SeekBarDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/motion/TiltSensitivityPreference;->mAfterTest:Z

    .line 35
    const/4 v0, -0x2

    iput v0, p0, Lcom/android/settings/motion/TiltSensitivityPreference;->mWhichButtonClicked:I

    .line 39
    iput-object p1, p0, Lcom/android/settings/motion/TiltSensitivityPreference;->mContext:Landroid/content/Context;

    .line 40
    const v0, 0x7f040078

    invoke-virtual {p0, v0}, Lcom/android/settings/motion/TiltSensitivityPreference;->setDialogLayoutResource(I)V

    .line 41
    return-void
.end method

.method static synthetic access$002(Lcom/android/settings/motion/TiltSensitivityPreference;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    iput p1, p0, Lcom/android/settings/motion/TiltSensitivityPreference;->mWhichButtonClicked:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings/motion/TiltSensitivityPreference;)Landroid/widget/SeekBar;
    .registers 2
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/settings/motion/TiltSensitivityPreference;->mSeekBar:Landroid/widget/SeekBar;

    return-object v0
.end method


# virtual methods
.method protected onBindDialogView(Landroid/view/View;)V
    .registers 4
    .parameter "view"

    .prologue
    .line 58
    invoke-super {p0, p1}, Landroid/preference/SeekBarDialogPreference;->onBindDialogView(Landroid/view/View;)V

    .line 60
    invoke-static {p1}, Lcom/android/settings/motion/TiltSensitivityPreference;->getSeekBar(Landroid/view/View;)Landroid/widget/SeekBar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion/TiltSensitivityPreference;->mSeekBar:Landroid/widget/SeekBar;

    .line 61
    iget-object v0, p0, Lcom/android/settings/motion/TiltSensitivityPreference;->mSeekBar:Landroid/widget/SeekBar;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 63
    const v0, 0x7f090175

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/settings/motion/TiltSensitivityPreference;->mSensitivityText:Landroid/widget/LinearLayout;

    .line 64
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 104
    invoke-super {p0, p1, p2}, Landroid/preference/SeekBarDialogPreference;->onClick(Landroid/content/DialogInterface;I)V

    .line 105
    const-string v0, "TiltSensitivityPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mWhichButtonClicked : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iput p2, p0, Lcom/android/settings/motion/TiltSensitivityPreference;->mWhichButtonClicked:I

    .line 107
    return-void
.end method

.method protected onDialogClosed(Z)V
    .registers 5
    .parameter "positiveResult"

    .prologue
    .line 89
    invoke-super {p0, p1}, Landroid/preference/SeekBarDialogPreference;->onDialogClosed(Z)V

    .line 91
    if-eqz p1, :cond_1b

    .line 92
    invoke-virtual {p0}, Lcom/android/settings/motion/TiltSensitivityPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "motion_zooming_sensitivity"

    iget-object v2, p0, Lcom/android/settings/motion/TiltSensitivityPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    add-int/lit8 v2, v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 100
    :cond_1a
    :goto_1a
    return-void

    .line 94
    :cond_1b
    iget v0, p0, Lcom/android/settings/motion/TiltSensitivityPreference;->mWhichButtonClicked:I

    const/4 v1, -0x3

    if-eq v0, v1, :cond_1a

    .line 95
    const-string v0, "TiltSensitivityPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick - mOldSensitivity : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/settings/motion/TiltSensitivityPreference;->mOldSensitivity:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    invoke-virtual {p0}, Lcom/android/settings/motion/TiltSensitivityPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "motion_zooming_sensitivity"

    sget v2, Lcom/android/settings/motion/TiltSensitivityPreference;->mOldSensitivity:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1a
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .registers 4
    .parameter "builder"

    .prologue
    .line 45
    const v0, 0x7f070807

    new-instance v1, Lcom/android/settings/motion/TiltSensitivityPreference$1;

    invoke-direct {v1, p0}, Lcom/android/settings/motion/TiltSensitivityPreference$1;-><init>(Lcom/android/settings/motion/TiltSensitivityPreference;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 54
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .registers 4
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 118
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 2
    .parameter "arg0"

    .prologue
    .line 124
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 5
    .parameter "arg0"

    .prologue
    .line 128
    const-string v0, "TiltSensitivityPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStopTrackingTouch"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/motion/TiltSensitivityPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    invoke-virtual {p0}, Lcom/android/settings/motion/TiltSensitivityPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "motion_zooming_sensitivity"

    iget-object v2, p0, Lcom/android/settings/motion/TiltSensitivityPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    add-int/lit8 v2, v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 131
    return-void
.end method

.method protected showDialog(Landroid/os/Bundle;)V
    .registers 7
    .parameter "state"

    .prologue
    const/4 v4, 0x5

    .line 68
    invoke-super {p0, p1}, Landroid/preference/SeekBarDialogPreference;->showDialog(Landroid/os/Bundle;)V

    .line 69
    const/4 v0, 0x0

    .line 70
    .local v0, currentUseMotion:I
    const/4 v1, -0x2

    iput v1, p0, Lcom/android/settings/motion/TiltSensitivityPreference;->mWhichButtonClicked:I

    .line 71
    iget-boolean v1, p0, Lcom/android/settings/motion/TiltSensitivityPreference;->mAfterTest:Z

    if-nez v1, :cond_3f

    .line 72
    const-string v1, "TiltSensitivityPreference"

    const-string v2, "showDialog :1 "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    invoke-virtual {p0}, Lcom/android/settings/motion/TiltSensitivityPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "motion_zooming_sensitivity"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/settings/motion/TiltSensitivityPreference;->mOldSensitivity:I

    .line 75
    iget-object v1, p0, Lcom/android/settings/motion/TiltSensitivityPreference;->mSeekBar:Landroid/widget/SeekBar;

    sget v2, Lcom/android/settings/motion/TiltSensitivityPreference;->mOldSensitivity:I

    add-int/lit8 v2, v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 83
    :goto_2c
    invoke-virtual {p0}, Lcom/android/settings/motion/TiltSensitivityPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    check-cast v1, Landroid/app/AlertDialog;

    const/4 v2, -0x3

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/motion/TiltSensitivityPreference;->mTest:Landroid/widget/Button;

    .line 84
    iget-object v1, p0, Lcom/android/settings/motion/TiltSensitivityPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 85
    return-void

    .line 77
    :cond_3f
    const-string v1, "TiltSensitivityPreference"

    const-string v2, "showDialog :2 "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings/motion/TiltSensitivityPreference;->mAfterTest:Z

    .line 79
    iget-object v1, p0, Lcom/android/settings/motion/TiltSensitivityPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p0}, Lcom/android/settings/motion/TiltSensitivityPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "motion_zooming_sensitivity"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    add-int/lit8 v2, v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_2c
.end method

.method public showTutorialDialog()V
    .registers 2

    .prologue
    .line 110
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/motion/TiltSensitivityPreference;->mAfterTest:Z

    .line 111
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/motion/TiltSensitivityPreference;->showDialog(Landroid/os/Bundle;)V

    .line 112
    return-void
.end method
