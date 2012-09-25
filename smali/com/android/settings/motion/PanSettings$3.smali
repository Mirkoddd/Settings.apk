.class Lcom/android/settings/motion/PanSettings$3;
.super Ljava/lang/Object;
.source "PanSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/motion/PanSettings;->showMotionDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/motion/PanSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/motion/PanSettings;)V
    .registers 2
    .parameter

    .prologue
    .line 185
    iput-object p1, p0, Lcom/android/settings/motion/PanSettings$3;->this$0:Lcom/android/settings/motion/PanSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 4
    .parameter "dialog"

    .prologue
    .line 187
    const-string v0, "PanSettings"

    const-string v1, "use motion dismiss"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    iget-object v0, p0, Lcom/android/settings/motion/PanSettings$3;->this$0:Lcom/android/settings/motion/PanSettings;

    #calls: Lcom/android/settings/motion/PanSettings;->updateCheckedUI()V
    invoke-static {v0}, Lcom/android/settings/motion/PanSettings;->access$300(Lcom/android/settings/motion/PanSettings;)V

    .line 189
    return-void
.end method
