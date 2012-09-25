.class Lcom/android/settings/CallSettings$4;
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
    .line 320
    iput-object p1, p0, Lcom/android/settings/CallSettings$4;->this$0:Lcom/android/settings/CallSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .parameter "dialog"
    .parameter "arg1"

    .prologue
    const/4 v3, 0x0

    .line 322
    iget-object v0, p0, Lcom/android/settings/CallSettings$4;->this$0:Lcom/android/settings/CallSettings;

    invoke-virtual {v0}, Lcom/android/settings/CallSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "incall_power_button_behavior"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 327
    iget-object v0, p0, Lcom/android/settings/CallSettings$4;->this$0:Lcom/android/settings/CallSettings;

    invoke-virtual {v0}, Lcom/android/settings/CallSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "proximity_sensor"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 330
    iget-object v0, p0, Lcom/android/settings/CallSettings$4;->this$0:Lcom/android/settings/CallSettings;

    #setter for: Lcom/android/settings/CallSettings;->proximityChecked:Z
    invoke-static {v0, v3}, Lcom/android/settings/CallSettings;->access$002(Lcom/android/settings/CallSettings;Z)Z

    .line 332
    return-void
.end method
