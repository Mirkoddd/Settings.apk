.class Lcom/android/settings/widget/SettingsAppWidgetProvider$GpsStateTracker$1;
.super Landroid/os/AsyncTask;
.source "SettingsAppWidgetProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/widget/SettingsAppWidgetProvider$GpsStateTracker;->requestStateChange(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/widget/SettingsAppWidgetProvider$GpsStateTracker;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$desiredState:Z

.field final synthetic val$resolver:Landroid/content/ContentResolver;


# direct methods
.method constructor <init>(Lcom/android/settings/widget/SettingsAppWidgetProvider$GpsStateTracker;Landroid/content/ContentResolver;ZLandroid/content/Context;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 533
    iput-object p1, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$GpsStateTracker$1;->this$0:Lcom/android/settings/widget/SettingsAppWidgetProvider$GpsStateTracker;

    iput-object p2, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$GpsStateTracker$1;->val$resolver:Landroid/content/ContentResolver;

    iput-boolean p3, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$GpsStateTracker$1;->val$desiredState:Z

    iput-object p4, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$GpsStateTracker$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .registers 5
    .parameter "args"

    .prologue
    .line 536
    iget-object v0, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$GpsStateTracker$1;->val$resolver:Landroid/content/ContentResolver;

    const-string v1, "gps"

    iget-boolean v2, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$GpsStateTracker$1;->val$desiredState:Z

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 540
    iget-boolean v0, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$GpsStateTracker$1;->val$desiredState:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 533
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/SettingsAppWidgetProvider$GpsStateTracker$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .registers 5
    .parameter "result"

    .prologue
    .line 545
    iget-object v1, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$GpsStateTracker$1;->this$0:Lcom/android/settings/widget/SettingsAppWidgetProvider$GpsStateTracker;

    iget-object v2, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$GpsStateTracker$1;->val$context:Landroid/content/Context;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    :goto_b
    invoke-virtual {v1, v2, v0}, Lcom/android/settings/widget/SettingsAppWidgetProvider$GpsStateTracker;->setCurrentState(Landroid/content/Context;I)V

    .line 548
    iget-object v0, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$GpsStateTracker$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->updateWidget(Landroid/content/Context;)V

    .line 549
    return-void

    .line 545
    :cond_14
    const/4 v0, 0x0

    goto :goto_b
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 533
    check-cast p1, Ljava/lang/Boolean;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/SettingsAppWidgetProvider$GpsStateTracker$1;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
