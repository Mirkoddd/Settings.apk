.class Lcom/android/settings/motion/MotionView$1;
.super Landroid/os/Handler;
.source "MotionView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/motion/MotionView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/motion/MotionView;


# direct methods
.method constructor <init>(Lcom/android/settings/motion/MotionView;)V
    .registers 2
    .parameter

    .prologue
    .line 99
    iput-object p1, p0, Lcom/android/settings/motion/MotionView$1;->this$0:Lcom/android/settings/motion/MotionView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 101
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_c

    .line 106
    :goto_5
    return-void

    .line 103
    :pswitch_6
    iget-object v0, p0, Lcom/android/settings/motion/MotionView$1;->this$0:Lcom/android/settings/motion/MotionView;

    #calls: Lcom/android/settings/motion/MotionView;->updateAnimation()V
    invoke-static {v0}, Lcom/android/settings/motion/MotionView;->access$000(Lcom/android/settings/motion/MotionView;)V

    goto :goto_5

    .line 101
    :pswitch_data_c
    .packed-switch 0x66
        :pswitch_6
    .end packed-switch
.end method
