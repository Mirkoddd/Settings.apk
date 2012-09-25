.class Lcom/android/settings/CallSettings$3;
.super Ljava/lang/Object;
.source "CallSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/CallSettings;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/CallSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/CallSettings;)V
    .registers 2
    .parameter

    .prologue
    .line 334
    iput-object p1, p0, Lcom/android/settings/CallSettings$3;->this$0:Lcom/android/settings/CallSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter "dialog"
    .parameter "arg1"

    .prologue
    .line 336
    iget-object v0, p0, Lcom/android/settings/CallSettings$3;->this$0:Lcom/android/settings/CallSettings;

    invoke-virtual {v0}, Lcom/android/settings/CallSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "proximity_sensor"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 339
    iget-object v0, p0, Lcom/android/settings/CallSettings$3;->this$0:Lcom/android/settings/CallSettings;

    #getter for: Lcom/android/settings/CallSettings;->mProximitySensor:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/settings/CallSettings;->access$100(Lcom/android/settings/CallSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/CallSettings$3;->this$0:Lcom/android/settings/CallSettings;

    #getter for: Lcom/android/settings/CallSettings;->proximityChecked:Z
    invoke-static {v1}, Lcom/android/settings/CallSettings;->access$000(Lcom/android/settings/CallSettings;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 340
    return-void
.end method
