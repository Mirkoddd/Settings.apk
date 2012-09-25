.class Lcom/android/settings/encryption/CryptSDCardSettings$1;
.super Landroid/os/Handler;
.source "CryptSDCardSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/encryption/CryptSDCardSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/encryption/CryptSDCardSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/encryption/CryptSDCardSettings;)V
    .registers 2
    .parameter

    .prologue
    .line 102
    iput-object p1, p0, Lcom/android/settings/encryption/CryptSDCardSettings$1;->this$0:Lcom/android/settings/encryption/CryptSDCardSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .parameter "msg"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings$1;->this$0:Lcom/android/settings/encryption/CryptSDCardSettings;

    #getter for: Lcom/android/settings/encryption/CryptSDCardSettings;->mSync:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/settings/encryption/CryptSDCardSettings;->access$300(Lcom/android/settings/encryption/CryptSDCardSettings;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 105
    :try_start_7
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_1e

    .line 114
    :goto_c
    monitor-exit v1

    .line 115
    return-void

    .line 107
    :pswitch_e
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings$1;->this$0:Lcom/android/settings/encryption/CryptSDCardSettings;

    #calls: Lcom/android/settings/encryption/CryptSDCardSettings;->enableAllUI()V
    invoke-static {v0}, Lcom/android/settings/encryption/CryptSDCardSettings;->access$400(Lcom/android/settings/encryption/CryptSDCardSettings;)V

    goto :goto_c

    .line 114
    :catchall_14
    move-exception v0

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v0

    .line 110
    :pswitch_17
    :try_start_17
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings$1;->this$0:Lcom/android/settings/encryption/CryptSDCardSettings;

    #calls: Lcom/android/settings/encryption/CryptSDCardSettings;->disableAllUI()V
    invoke-static {v0}, Lcom/android/settings/encryption/CryptSDCardSettings;->access$500(Lcom/android/settings/encryption/CryptSDCardSettings;)V
    :try_end_1c
    .catchall {:try_start_17 .. :try_end_1c} :catchall_14

    goto :goto_c

    .line 105
    nop

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_e
        :pswitch_17
    .end packed-switch
.end method
