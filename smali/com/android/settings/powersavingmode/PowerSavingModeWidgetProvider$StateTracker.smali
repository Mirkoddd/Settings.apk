.class abstract Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;
.super Ljava/lang/Object;
.source "PowerSavingModeWidgetProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "StateTracker"
.end annotation


# instance fields
.field private mActualState:Ljava/lang/Boolean;

.field private mDeferredStateChangeRequestNeeded:Z

.field private mInTransition:Z

.field private mIntendedState:Ljava/lang/Boolean;


# direct methods
.method private constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 141
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 143
    iput-boolean v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;->mInTransition:Z

    .line 145
    iput-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;->mActualState:Ljava/lang/Boolean;

    .line 147
    iput-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;->mIntendedState:Ljava/lang/Boolean;

    .line 153
    iput-boolean v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;->mDeferredStateChangeRequestNeeded:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 141
    invoke-direct {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getActualState(Landroid/content/Context;)I
.end method

.method public final getTriState(Landroid/content/Context;)I
    .registers 4
    .parameter "context"

    .prologue
    const/4 v0, 0x5

    .line 257
    iget-boolean v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;->mInTransition:Z

    if-eqz v1, :cond_6

    .line 273
    :goto_5
    return v0

    .line 267
    :cond_6
    invoke-virtual {p0, p1}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;->getActualState(Landroid/content/Context;)I

    move-result v1

    packed-switch v1, :pswitch_data_12

    goto :goto_5

    .line 269
    :pswitch_e
    const/4 v0, 0x0

    goto :goto_5

    .line 271
    :pswitch_10
    const/4 v0, 0x1

    goto :goto_5

    .line 267
    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_e
        :pswitch_10
    .end packed-switch
.end method

.method public final isTurningOn()Z
    .registers 2

    .prologue
    .line 247
    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;->mIntendedState:Ljava/lang/Boolean;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;->mIntendedState:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public abstract onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V
.end method

.method protected abstract requestStateChange(Landroid/content/Context;Z)V
.end method

.method protected final setCurrentState(Landroid/content/Context;I)V
    .registers 9
    .parameter "context"
    .parameter "newState"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 205
    iget-boolean v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;->mInTransition:Z

    .line 206
    .local v0, wasInTransition:Z
    packed-switch p2, :pswitch_data_80

    .line 224
    const-string v1, "PowerSavingModeWidgetProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCurrentState() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    :goto_1f
    if-eqz v0, :cond_4b

    iget-boolean v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;->mInTransition:Z

    if-nez v1, :cond_4b

    .line 228
    iget-boolean v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;->mDeferredStateChangeRequestNeeded:Z

    if-eqz v1, :cond_4b

    .line 229
    const-string v1, "PowerSavingModeWidgetProvider"

    const-string v2, "processing deferred state change"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;->mActualState:Ljava/lang/Boolean;

    if-eqz v1, :cond_70

    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;->mIntendedState:Ljava/lang/Boolean;

    if-eqz v1, :cond_70

    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;->mIntendedState:Ljava/lang/Boolean;

    iget-object v2, p0, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;->mActualState:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_70

    .line 232
    const-string v1, "PowerSavingModeWidgetProvider"

    const-string v2, "... but intended state matches, so no changes."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    :cond_49
    :goto_49
    iput-boolean v4, p0, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;->mDeferredStateChangeRequestNeeded:Z

    .line 240
    :cond_4b
    return-void

    .line 208
    :pswitch_4c
    iput-boolean v4, p0, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;->mInTransition:Z

    .line 209
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;->mActualState:Ljava/lang/Boolean;

    goto :goto_1f

    .line 212
    :pswitch_55
    iput-boolean v4, p0, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;->mInTransition:Z

    .line 213
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;->mActualState:Ljava/lang/Boolean;

    goto :goto_1f

    .line 216
    :pswitch_5e
    iput-boolean v5, p0, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;->mInTransition:Z

    .line 217
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;->mActualState:Ljava/lang/Boolean;

    goto :goto_1f

    .line 220
    :pswitch_67
    iput-boolean v5, p0, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;->mInTransition:Z

    .line 221
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;->mActualState:Ljava/lang/Boolean;

    goto :goto_1f

    .line 233
    :cond_70
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;->mIntendedState:Ljava/lang/Boolean;

    if-eqz v1, :cond_49

    .line 234
    iput-boolean v5, p0, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;->mInTransition:Z

    .line 235
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;->mIntendedState:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p0, p1, v1}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;->requestStateChange(Landroid/content/Context;Z)V

    goto :goto_49

    .line 206
    :pswitch_data_80
    .packed-switch 0x0
        :pswitch_4c
        :pswitch_55
        :pswitch_5e
        :pswitch_67
    .end packed-switch
.end method

.method public final toggleState(Landroid/content/Context;)V
    .registers 8
    .parameter "context"

    .prologue
    const/4 v2, 0x1

    .line 161
    invoke-virtual {p0, p1}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;->getTriState(Landroid/content/Context;)I

    move-result v0

    .line 162
    .local v0, currentState:I
    const/4 v1, 0x0

    .line 163
    .local v1, newState:Z
    packed-switch v0, :pswitch_data_48

    .line 176
    :pswitch_9
    const-string v3, "PowerSavingModeWidgetProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "toggleState() : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    :cond_21
    :goto_21
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;->mIntendedState:Ljava/lang/Boolean;

    .line 180
    iget-boolean v3, p0, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;->mInTransition:Z

    if-eqz v3, :cond_42

    .line 185
    iput-boolean v2, p0, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;->mDeferredStateChangeRequestNeeded:Z

    .line 190
    :goto_2d
    return-void

    .line 165
    :pswitch_2e
    const/4 v1, 0x0

    .line 166
    goto :goto_21

    .line 168
    :pswitch_30
    const/4 v1, 0x1

    .line 169
    goto :goto_21

    .line 171
    :pswitch_32
    iget-object v3, p0, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;->mIntendedState:Ljava/lang/Boolean;

    if-eqz v3, :cond_21

    .line 172
    iget-object v3, p0, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;->mIntendedState:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_40

    move v1, v2

    :goto_3f
    goto :goto_21

    :cond_40
    const/4 v1, 0x0

    goto :goto_3f

    .line 187
    :cond_42
    iput-boolean v2, p0, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;->mInTransition:Z

    .line 188
    invoke-virtual {p0, p1, v1}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;->requestStateChange(Landroid/content/Context;Z)V

    goto :goto_2d

    .line 163
    :pswitch_data_48
    .packed-switch 0x0
        :pswitch_30
        :pswitch_2e
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_32
    .end packed-switch
.end method
