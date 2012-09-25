.class Lcom/android/settings/CallSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "CallSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/CallSettings;
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
    .line 92
    iput-object p1, p0, Lcom/android/settings/CallSettings$1;->this$0:Lcom/android/settings/CallSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 14
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v10, 0x0

    .line 95
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 96
    .local v0, action:Ljava/lang/String;
    const-string v7, "state"

    invoke-virtual {p2, v7, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 97
    .local v2, extra:Ljava/lang/Boolean;
    const-string v7, "CallSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onReceive() : Action is = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", Extra is = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    iget-object v7, p0, Lcom/android/settings/CallSettings$1;->this$0:Lcom/android/settings/CallSettings;

    const-string v8, "sip_settings_category_key"

    invoke-virtual {v7, v8}, Lcom/android/settings/CallSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    .line 100
    .local v6, sipSettings:Landroid/preference/Preference;
    iget-object v7, p0, Lcom/android/settings/CallSettings$1;->this$0:Lcom/android/settings/CallSettings;

    invoke-virtual {v7}, Lcom/android/settings/CallSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    .line 101
    .local v5, screen:Landroid/preference/PreferenceScreen;
    invoke-virtual {v5}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v1

    .line 103
    .local v1, count:I
    const-string v7, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_65

    .line 104
    const/4 v3, 0x0

    .local v3, i:I
    :goto_4c
    if-ge v3, v1, :cond_65

    .line 105
    invoke-virtual {v5, v3}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v4

    .line 106
    .local v4, pref:Landroid/preference/Preference;
    if-eq v4, v6, :cond_5d

    .line 107
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_60

    .line 108
    invoke-virtual {v4, v10}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 104
    :cond_5d
    :goto_5d
    add-int/lit8 v3, v3, 0x1

    goto :goto_4c

    .line 110
    :cond_60
    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_5d

    .line 115
    .end local v3           #i:I
    .end local v4           #pref:Landroid/preference/Preference;
    :cond_65
    return-void
.end method
