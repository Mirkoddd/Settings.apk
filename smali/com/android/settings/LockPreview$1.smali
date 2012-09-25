.class Lcom/android/settings/LockPreview$1;
.super Ljava/lang/Object;
.source "LockPreview.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/LockPreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/LockPreview;


# direct methods
.method constructor <init>(Lcom/android/settings/LockPreview;)V
    .registers 2
    .parameter

    .prologue
    .line 65
    iput-object p1, p0, Lcom/android/settings/LockPreview$1;->this$0:Lcom/android/settings/LockPreview;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 68
    const-string v0, "LockPreview"

    const-string v1, "mStartLockAnimation()"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    iget-object v0, p0, Lcom/android/settings/LockPreview$1;->this$0:Lcom/android/settings/LockPreview;

    #getter for: Lcom/android/settings/LockPreview;->mClockLayout:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/android/settings/LockPreview;->access$000(Lcom/android/settings/LockPreview;)Landroid/widget/RelativeLayout;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 70
    iget-object v0, p0, Lcom/android/settings/LockPreview$1;->this$0:Lcom/android/settings/LockPreview;

    #getter for: Lcom/android/settings/LockPreview;->mClockLayout:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/android/settings/LockPreview;->access$000(Lcom/android/settings/LockPreview;)Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/LockPreview$1;->this$0:Lcom/android/settings/LockPreview;

    #getter for: Lcom/android/settings/LockPreview;->mTransAnimation:Landroid/view/animation/TranslateAnimation;
    invoke-static {v1}, Lcom/android/settings/LockPreview;->access$100(Lcom/android/settings/LockPreview;)Landroid/view/animation/TranslateAnimation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 71
    :cond_1e
    return-void
.end method
