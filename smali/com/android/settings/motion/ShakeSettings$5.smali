.class Lcom/android/settings/motion/ShakeSettings$5;
.super Ljava/lang/Object;
.source "ShakeSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/motion/ShakeSettings;->showGuideDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/motion/ShakeSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/motion/ShakeSettings;)V
    .registers 2
    .parameter

    .prologue
    .line 208
    iput-object p1, p0, Lcom/android/settings/motion/ShakeSettings$5;->this$0:Lcom/android/settings/motion/ShakeSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 3
    .parameter "dialog"

    .prologue
    .line 210
    iget-object v0, p0, Lcom/android/settings/motion/ShakeSettings$5;->this$0:Lcom/android/settings/motion/ShakeSettings;

    #calls: Lcom/android/settings/motion/ShakeSettings;->stopAnimation()V
    invoke-static {v0}, Lcom/android/settings/motion/ShakeSettings;->access$600(Lcom/android/settings/motion/ShakeSettings;)V

    .line 211
    return-void
.end method
