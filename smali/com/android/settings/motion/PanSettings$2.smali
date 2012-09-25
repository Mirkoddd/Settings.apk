.class Lcom/android/settings/motion/PanSettings$2;
.super Ljava/lang/Object;
.source "PanSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 175
    iput-object p1, p0, Lcom/android/settings/motion/PanSettings$2;->this$0:Lcom/android/settings/motion/PanSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 177
    const-string v0, "PanSettings"

    const-string v1, "showMotionDialog, positive click"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget-object v0, p0, Lcom/android/settings/motion/PanSettings$2;->this$0:Lcom/android/settings/motion/PanSettings;

    #calls: Lcom/android/settings/motion/PanSettings;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/settings/motion/PanSettings;->access$100(Lcom/android/settings/motion/PanSettings;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "motion_panning"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 179
    iget-object v0, p0, Lcom/android/settings/motion/PanSettings$2;->this$0:Lcom/android/settings/motion/PanSettings;

    #calls: Lcom/android/settings/motion/PanSettings;->startTryActually()V
    invoke-static {v0}, Lcom/android/settings/motion/PanSettings;->access$200(Lcom/android/settings/motion/PanSettings;)V

    .line 180
    return-void
.end method
