.class Lcom/android/settings/motion/PickUpSettings$3;
.super Ljava/lang/Object;
.source "PickUpSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/motion/PickUpSettings;->showMotionDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/motion/PickUpSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/motion/PickUpSettings;)V
    .registers 2
    .parameter

    .prologue
    .line 167
    iput-object p1, p0, Lcom/android/settings/motion/PickUpSettings$3;->this$0:Lcom/android/settings/motion/PickUpSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 4
    .parameter "dialog"

    .prologue
    .line 169
    const-string v0, "PickUpSettings"

    const-string v1, "use motion dismiss"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    iget-object v0, p0, Lcom/android/settings/motion/PickUpSettings$3;->this$0:Lcom/android/settings/motion/PickUpSettings;

    #calls: Lcom/android/settings/motion/PickUpSettings;->updateCheckedUI()V
    invoke-static {v0}, Lcom/android/settings/motion/PickUpSettings;->access$300(Lcom/android/settings/motion/PickUpSettings;)V

    .line 171
    return-void
.end method
