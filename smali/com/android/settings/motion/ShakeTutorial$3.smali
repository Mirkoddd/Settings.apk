.class Lcom/android/settings/motion/ShakeTutorial$3;
.super Ljava/lang/Object;
.source "ShakeTutorial.java"

# interfaces
.implements Landroid/hardware/motion/MRListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/motion/ShakeTutorial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/motion/ShakeTutorial;


# direct methods
.method constructor <init>(Lcom/android/settings/motion/ShakeTutorial;)V
    .registers 2
    .parameter

    .prologue
    .line 92
    iput-object p1, p0, Lcom/android/settings/motion/ShakeTutorial$3;->this$0:Lcom/android/settings/motion/ShakeTutorial;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMotionListener(Landroid/hardware/motion/MREvent;)V
    .registers 5
    .parameter "motionEvent"

    .prologue
    .line 94
    invoke-virtual {p1}, Landroid/hardware/motion/MREvent;->getMotion()I

    move-result v0

    sparse-switch v0, :sswitch_data_56

    .line 110
    :cond_7
    :goto_7
    :sswitch_7
    return-void

    .line 101
    :sswitch_8
    const-string v0, "ShakeTutorial"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Motion Event = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/hardware/motion/MREvent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 104
    :sswitch_25
    const-string v0, "ShakeTutorial"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Motion Event = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/hardware/motion/MREvent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iget-object v0, p0, Lcom/android/settings/motion/ShakeTutorial$3;->this$0:Lcom/android/settings/motion/ShakeTutorial;

    #getter for: Lcom/android/settings/motion/ShakeTutorial;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/settings/motion/ShakeTutorial;->access$700(Lcom/android/settings/motion/ShakeTutorial;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 106
    iget-object v0, p0, Lcom/android/settings/motion/ShakeTutorial$3;->this$0:Lcom/android/settings/motion/ShakeTutorial;

    #getter for: Lcom/android/settings/motion/ShakeTutorial;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/settings/motion/ShakeTutorial;->access$700(Lcom/android/settings/motion/ShakeTutorial;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x1e0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_7

    .line 94
    nop

    :sswitch_data_56
    .sparse-switch
        0x1 -> :sswitch_7
        0xa -> :sswitch_7
        0x23 -> :sswitch_8
        0x24 -> :sswitch_25
        0x3d -> :sswitch_7
        0x43 -> :sswitch_7
    .end sparse-switch
.end method
