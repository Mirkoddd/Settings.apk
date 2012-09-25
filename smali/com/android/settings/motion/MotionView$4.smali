.class Lcom/android/settings/motion/MotionView$4;
.super Ljava/lang/Object;
.source "MotionView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/motion/MotionView;->showGuideDialog()V
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
    .line 229
    iput-object p1, p0, Lcom/android/settings/motion/MotionView$4;->this$0:Lcom/android/settings/motion/MotionView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 8
    .parameter "dialog"
    .parameter "arg1"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 231
    iget-object v1, p0, Lcom/android/settings/motion/MotionView$4;->this$0:Lcom/android/settings/motion/MotionView;

    #calls: Lcom/android/settings/motion/MotionView;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/android/settings/motion/MotionView;->access$700(Lcom/android/settings/motion/MotionView;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "motion_engine"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_15

    .line 232
    iget-object v1, p0, Lcom/android/settings/motion/MotionView$4;->this$0:Lcom/android/settings/motion/MotionView;

    #calls: Lcom/android/settings/motion/MotionView;->showMotionDialog()V
    invoke-static {v1}, Lcom/android/settings/motion/MotionView;->access$800(Lcom/android/settings/motion/MotionView;)V

    .line 234
    :cond_15
    iget-object v1, p0, Lcom/android/settings/motion/MotionView$4;->this$0:Lcom/android/settings/motion/MotionView;

    #calls: Lcom/android/settings/motion/MotionView;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/android/settings/motion/MotionView;->access$900(Lcom/android/settings/motion/MotionView;)Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/motion/MotionView$4;->this$0:Lcom/android/settings/motion/MotionView;

    #getter for: Lcom/android/settings/motion/MotionView;->mCurrentDB:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/settings/motion/MotionView;->access$200(Lcom/android/settings/motion/MotionView;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_59

    .line 235
    iget-object v1, p0, Lcom/android/settings/motion/MotionView$4;->this$0:Lcom/android/settings/motion/MotionView;

    #getter for: Lcom/android/settings/motion/MotionView;->mCurrentMotion:I
    invoke-static {v1}, Lcom/android/settings/motion/MotionView;->access$1000(Lcom/android/settings/motion/MotionView;)I

    move-result v1

    const/16 v2, 0x641

    if-ne v1, v2, :cond_53

    .line 236
    iget-object v1, p0, Lcom/android/settings/motion/MotionView$4;->this$0:Lcom/android/settings/motion/MotionView;

    const-string v2, "audio"

    #calls: Lcom/android/settings/motion/MotionView;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    invoke-static {v1, v2}, Lcom/android/settings/motion/MotionView;->access$1100(Lcom/android/settings/motion/MotionView;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 237
    .local v0, audioManager:Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    if-ne v1, v4, :cond_4d

    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    if-eqz v1, :cond_4d

    .line 238
    iget-object v1, p0, Lcom/android/settings/motion/MotionView$4;->this$0:Lcom/android/settings/motion/MotionView;

    #calls: Lcom/android/settings/motion/MotionView;->showUseRingDialog()V
    invoke-static {v1}, Lcom/android/settings/motion/MotionView;->access$1200(Lcom/android/settings/motion/MotionView;)V

    .line 248
    .end local v0           #audioManager:Landroid/media/AudioManager;
    :goto_4c
    return-void

    .line 240
    .restart local v0       #audioManager:Landroid/media/AudioManager;
    :cond_4d
    iget-object v1, p0, Lcom/android/settings/motion/MotionView$4;->this$0:Lcom/android/settings/motion/MotionView;

    #calls: Lcom/android/settings/motion/MotionView;->startTryActually(Z)V
    invoke-static {v1, v3}, Lcom/android/settings/motion/MotionView;->access$1300(Lcom/android/settings/motion/MotionView;Z)V

    goto :goto_4c

    .line 243
    .end local v0           #audioManager:Landroid/media/AudioManager;
    :cond_53
    iget-object v1, p0, Lcom/android/settings/motion/MotionView$4;->this$0:Lcom/android/settings/motion/MotionView;

    #calls: Lcom/android/settings/motion/MotionView;->startTryActually()V
    invoke-static {v1}, Lcom/android/settings/motion/MotionView;->access$500(Lcom/android/settings/motion/MotionView;)V

    goto :goto_4c

    .line 246
    :cond_59
    iget-object v1, p0, Lcom/android/settings/motion/MotionView$4;->this$0:Lcom/android/settings/motion/MotionView;

    #calls: Lcom/android/settings/motion/MotionView;->showMotionDialog()V
    invoke-static {v1}, Lcom/android/settings/motion/MotionView;->access$800(Lcom/android/settings/motion/MotionView;)V

    goto :goto_4c
.end method
