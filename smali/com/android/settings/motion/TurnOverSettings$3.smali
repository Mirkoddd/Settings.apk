.class Lcom/android/settings/motion/TurnOverSettings$3;
.super Ljava/lang/Object;
.source "TurnOverSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/motion/TurnOverSettings;->showMotionDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/motion/TurnOverSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/motion/TurnOverSettings;)V
    .registers 2
    .parameter

    .prologue
    .line 173
    iput-object p1, p0, Lcom/android/settings/motion/TurnOverSettings$3;->this$0:Lcom/android/settings/motion/TurnOverSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 4
    .parameter "dialog"

    .prologue
    .line 175
    const-string v0, "TurnOverSettings"

    const-string v1, "use motion dismiss"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iget-object v0, p0, Lcom/android/settings/motion/TurnOverSettings$3;->this$0:Lcom/android/settings/motion/TurnOverSettings;

    #calls: Lcom/android/settings/motion/TurnOverSettings;->updateCheckedUI()V
    invoke-static {v0}, Lcom/android/settings/motion/TurnOverSettings;->access$300(Lcom/android/settings/motion/TurnOverSettings;)V

    .line 177
    return-void
.end method
