.class Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$SyncStateTracker$1;
.super Landroid/os/AsyncTask;
.source "PowerSavingModeWidgetProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$SyncStateTracker;->requestStateChange(Landroid/content/Context;Z)V
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
.field final synthetic this$0:Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$SyncStateTracker;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$desiredState:Z

.field final synthetic val$sync:Z


# direct methods
.method constructor <init>(Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$SyncStateTracker;ZZLandroid/content/Context;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 514
    iput-object p1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$SyncStateTracker$1;->this$0:Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$SyncStateTracker;

    iput-boolean p2, p0, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$SyncStateTracker$1;->val$desiredState:Z

    iput-boolean p3, p0, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$SyncStateTracker$1;->val$sync:Z

    iput-object p4, p0, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$SyncStateTracker$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .registers 5
    .parameter "args"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 518
    iget-boolean v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$SyncStateTracker$1;->val$desiredState:Z

    if-eqz v0, :cond_12

    .line 519
    iget-boolean v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$SyncStateTracker$1;->val$sync:Z

    if-nez v0, :cond_d

    .line 520
    invoke-static {v2}, Landroid/content/ContentResolver;->setMasterSyncAutomatically(Z)V

    .line 522
    :cond_d
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 529
    :goto_11
    return-object v0

    .line 526
    :cond_12
    iget-boolean v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$SyncStateTracker$1;->val$sync:Z

    if-eqz v0, :cond_19

    .line 527
    invoke-static {v1}, Landroid/content/ContentResolver;->setMasterSyncAutomatically(Z)V

    .line 529
    :cond_19
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_11
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 514
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$SyncStateTracker$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .registers 5
    .parameter "result"

    .prologue
    .line 534
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$SyncStateTracker$1;->this$0:Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$SyncStateTracker;

    iget-object v2, p0, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$SyncStateTracker$1;->val$context:Landroid/content/Context;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    :goto_b
    invoke-virtual {v1, v2, v0}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$SyncStateTracker;->setCurrentState(Landroid/content/Context;I)V

    .line 535
    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$SyncStateTracker$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->updateWidget(Landroid/content/Context;)V

    .line 536
    return-void

    .line 534
    :cond_14
    const/4 v0, 0x0

    goto :goto_b
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 514
    check-cast p1, Ljava/lang/Boolean;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$SyncStateTracker$1;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
