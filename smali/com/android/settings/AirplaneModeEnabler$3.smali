.class Lcom/android/settings/AirplaneModeEnabler$3;
.super Ljava/lang/Object;
.source "AirplaneModeEnabler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/AirplaneModeEnabler;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/AirplaneModeEnabler;

.field final synthetic val$value:Z


# direct methods
.method constructor <init>(Lcom/android/settings/AirplaneModeEnabler;Z)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 159
    iput-object p1, p0, Lcom/android/settings/AirplaneModeEnabler$3;->this$0:Lcom/android/settings/AirplaneModeEnabler;

    iput-boolean p2, p0, Lcom/android/settings/AirplaneModeEnabler$3;->val$value:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 162
    iget-boolean v0, p0, Lcom/android/settings/AirplaneModeEnabler$3;->val$value:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_12

    iget-object v0, p0, Lcom/android/settings/AirplaneModeEnabler$3;->this$0:Lcom/android/settings/AirplaneModeEnabler;

    #getter for: Lcom/android/settings/AirplaneModeEnabler;->mCheckBoxPref:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/settings/AirplaneModeEnabler;->access$200(Lcom/android/settings/AirplaneModeEnabler;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 169
    :cond_11
    :goto_11
    return-void

    .line 164
    :cond_12
    iget-boolean v0, p0, Lcom/android/settings/AirplaneModeEnabler$3;->val$value:Z

    if-nez v0, :cond_22

    iget-object v0, p0, Lcom/android/settings/AirplaneModeEnabler$3;->this$0:Lcom/android/settings/AirplaneModeEnabler;

    #getter for: Lcom/android/settings/AirplaneModeEnabler;->mCheckBoxPref:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/settings/AirplaneModeEnabler;->access$200(Lcom/android/settings/AirplaneModeEnabler;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 167
    :cond_22
    iget-object v0, p0, Lcom/android/settings/AirplaneModeEnabler$3;->this$0:Lcom/android/settings/AirplaneModeEnabler;

    iget-boolean v1, p0, Lcom/android/settings/AirplaneModeEnabler$3;->val$value:Z

    #calls: Lcom/android/settings/AirplaneModeEnabler;->setAirplaneModeOn(Z)V
    invoke-static {v0, v1}, Lcom/android/settings/AirplaneModeEnabler;->access$300(Lcom/android/settings/AirplaneModeEnabler;Z)V

    goto :goto_11
.end method
