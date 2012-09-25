.class public Lcom/android/settings/AccessibilitySettings$ToggleSwitch;
.super Landroid/widget/Switch;
.source "AccessibilitySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/AccessibilitySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ToggleSwitch"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/AccessibilitySettings$ToggleSwitch$OnBeforeCheckedChangeListener;
    }
.end annotation


# instance fields
.field private mOnBeforeListener:Lcom/android/settings/AccessibilitySettings$ToggleSwitch$OnBeforeCheckedChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 1059
    invoke-direct {p0, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    .line 1060
    return-void
.end method


# virtual methods
.method public setChecked(Z)V
    .registers 3
    .parameter "checked"

    .prologue
    .line 1068
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings$ToggleSwitch;->mOnBeforeListener:Lcom/android/settings/AccessibilitySettings$ToggleSwitch$OnBeforeCheckedChangeListener;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings$ToggleSwitch;->mOnBeforeListener:Lcom/android/settings/AccessibilitySettings$ToggleSwitch$OnBeforeCheckedChangeListener;

    invoke-interface {v0, p0, p1}, Lcom/android/settings/AccessibilitySettings$ToggleSwitch$OnBeforeCheckedChangeListener;->onBeforeCheckedChanged(Lcom/android/settings/AccessibilitySettings$ToggleSwitch;Z)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1073
    :goto_c
    return-void

    .line 1072
    :cond_d
    invoke-super {p0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_c
.end method

.method public setCheckedInternal(Z)V
    .registers 2
    .parameter "checked"

    .prologue
    .line 1076
    invoke-super {p0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 1077
    return-void
.end method

.method public setOnBeforeCheckedChangeListener(Lcom/android/settings/AccessibilitySettings$ToggleSwitch$OnBeforeCheckedChangeListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 1063
    iput-object p1, p0, Lcom/android/settings/AccessibilitySettings$ToggleSwitch;->mOnBeforeListener:Lcom/android/settings/AccessibilitySettings$ToggleSwitch$OnBeforeCheckedChangeListener;

    .line 1064
    return-void
.end method
