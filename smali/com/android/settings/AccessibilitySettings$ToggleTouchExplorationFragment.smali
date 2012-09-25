.class public Lcom/android/settings/AccessibilitySettings$ToggleTouchExplorationFragment;
.super Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;
.source "AccessibilitySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/AccessibilitySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ToggleTouchExplorationFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 1132
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;-><init>(Lcom/android/settings/AccessibilitySettings$1;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onClick(Landroid/content/DialogInterface;I)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1132
    invoke-super {p0, p1, p2}, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->onClick(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public bridge synthetic onCreate(Landroid/os/Bundle;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 1132
    invoke-super {p0, p1}, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public bridge synthetic onCreateDialog(I)Landroid/app/Dialog;
    .registers 3
    .parameter "x0"

    .prologue
    .line 1132
    invoke-super {p0, p1}, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1132
    invoke-super {p0, p1, p2}, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public bridge synthetic onDestroyView()V
    .registers 1

    .prologue
    .line 1132
    invoke-super {p0}, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->onDestroyView()V

    return-void
.end method

.method public onPreferenceToggled(Ljava/lang/String;Z)V
    .registers 11
    .parameter "preferenceKey"
    .parameter "enabled"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1135
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings$ToggleTouchExplorationFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "touch_exploration_enabled"

    if-eqz p2, :cond_3f

    move v3, v4

    :goto_b
    invoke-static {v6, v7, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1137
    if-eqz p2, :cond_3e

    .line 1138
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings$ToggleTouchExplorationFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/app/Activity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 1139
    .local v2, preferences:Landroid/content/SharedPreferences;
    const-string v3, "key_accessibility_tutorial_launched_once"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_41

    move v1, v4

    .line 1141
    .local v1, launchAccessibilityTutorial:Z
    :goto_21
    if-eqz v1, :cond_3e

    .line 1142
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v5, "key_accessibility_tutorial_launched_once"

    invoke-interface {v3, v5, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1144
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.settings.ACCESSIBILITY_TUTORIAL"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1145
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings$ToggleTouchExplorationFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 1148
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #launchAccessibilityTutorial:Z
    .end local v2           #preferences:Landroid/content/SharedPreferences;
    :cond_3e
    return-void

    :cond_3f
    move v3, v5

    .line 1135
    goto :goto_b

    .restart local v2       #preferences:Landroid/content/SharedPreferences;
    :cond_41
    move v1, v5

    .line 1139
    goto :goto_21
.end method

.method public bridge synthetic onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1132
    invoke-super {p0, p1, p2}, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    return-void
.end method
