.class Lcom/android/settings/applications/RunningState$1;
.super Landroid/os/Handler;
.source "RunningState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/RunningState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mNextUpdate:I

.field final synthetic this$0:Lcom/android/settings/applications/RunningState;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/RunningState;)V
    .registers 3
    .parameter

    .prologue
    .line 172
    iput-object p1, p0, Lcom/android/settings/applications/RunningState$1;->this$0:Lcom/android/settings/applications/RunningState;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 173
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/applications/RunningState$1;->mNextUpdate:I

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .parameter "msg"

    .prologue
    const/4 v3, 0x4

    .line 177
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_42

    .line 201
    :cond_6
    :goto_6
    return-void

    .line 179
    :pswitch_7
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_f

    const/4 v1, 0x2

    :goto_c
    iput v1, p0, Lcom/android/settings/applications/RunningState$1;->mNextUpdate:I

    goto :goto_6

    :cond_f
    const/4 v1, 0x1

    goto :goto_c

    .line 184
    :pswitch_11
    iget-object v1, p0, Lcom/android/settings/applications/RunningState$1;->this$0:Lcom/android/settings/applications/RunningState;

    iget-object v2, v1, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 185
    :try_start_16
    iget-object v1, p0, Lcom/android/settings/applications/RunningState$1;->this$0:Lcom/android/settings/applications/RunningState;

    iget-boolean v1, v1, Lcom/android/settings/applications/RunningState;->mResumed:Z

    if-nez v1, :cond_21

    .line 186
    monitor-exit v2

    goto :goto_6

    .line 188
    :catchall_1e
    move-exception v1

    monitor-exit v2
    :try_end_20
    .catchall {:try_start_16 .. :try_end_20} :catchall_1e

    throw v1

    :cond_21
    :try_start_21
    monitor-exit v2
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_1e

    .line 189
    invoke-virtual {p0, v3}, Lcom/android/settings/applications/RunningState$1;->removeMessages(I)V

    .line 190
    invoke-virtual {p0, v3}, Lcom/android/settings/applications/RunningState$1;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 191
    .local v0, m:Landroid/os/Message;
    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/settings/applications/RunningState$1;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 193
    iget-object v1, p0, Lcom/android/settings/applications/RunningState$1;->this$0:Lcom/android/settings/applications/RunningState;

    iget-object v1, v1, Lcom/android/settings/applications/RunningState;->mRefreshUiListener:Lcom/android/settings/applications/RunningState$OnRefreshUiListener;

    if-eqz v1, :cond_6

    .line 196
    iget-object v1, p0, Lcom/android/settings/applications/RunningState$1;->this$0:Lcom/android/settings/applications/RunningState;

    iget-object v1, v1, Lcom/android/settings/applications/RunningState;->mRefreshUiListener:Lcom/android/settings/applications/RunningState$OnRefreshUiListener;

    iget v2, p0, Lcom/android/settings/applications/RunningState$1;->mNextUpdate:I

    invoke-interface {v1, v2}, Lcom/android/settings/applications/RunningState$OnRefreshUiListener;->onRefreshUi(I)V

    .line 197
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/settings/applications/RunningState$1;->mNextUpdate:I

    goto :goto_6

    .line 177
    nop

    :pswitch_data_42
    .packed-switch 0x3
        :pswitch_7
        :pswitch_11
    .end packed-switch
.end method
