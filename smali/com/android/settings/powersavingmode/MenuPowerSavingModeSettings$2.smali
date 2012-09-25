.class Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings$2;
.super Ljava/lang/Object;
.source "MenuPowerSavingModeSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;

.field final synthetic val$not_show_again:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;Landroid/widget/CheckBox;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 163
    iput-object p1, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings$2;->this$0:Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;

    iput-object p2, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings$2;->val$not_show_again:Landroid/widget/CheckBox;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "v"

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings$2;->val$not_show_again:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->toggle()V

    .line 166
    iget-object v0, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings$2;->this$0:Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;

    #calls: Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->access$100(Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "powersaving_help_not_show_again"

    iget-object v0, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings$2;->val$not_show_again:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_38

    const/4 v0, 0x1

    :goto_16
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 167
    const-string v0, "MenuPowerSavingModeSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setOnClickListener HELP_NOT_SHOW_AGAIN not_show_again.isChecked() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings$2;->val$not_show_again:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    return-void

    .line 166
    :cond_38
    const/4 v0, 0x0

    goto :goto_16
.end method
