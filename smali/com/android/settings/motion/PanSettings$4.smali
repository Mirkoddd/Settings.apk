.class Lcom/android/settings/motion/PanSettings$4;
.super Ljava/lang/Object;
.source "PanSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/motion/PanSettings;->showGuideDialog()V
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
    .line 214
    iput-object p1, p0, Lcom/android/settings/motion/PanSettings$4;->this$0:Lcom/android/settings/motion/PanSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter "dialog"
    .parameter "arg1"

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/settings/motion/PanSettings$4;->this$0:Lcom/android/settings/motion/PanSettings;

    #calls: Lcom/android/settings/motion/PanSettings;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/settings/motion/PanSettings;->access$400(Lcom/android/settings/motion/PanSettings;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "motion_panning"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_15

    .line 217
    iget-object v0, p0, Lcom/android/settings/motion/PanSettings$4;->this$0:Lcom/android/settings/motion/PanSettings;

    #calls: Lcom/android/settings/motion/PanSettings;->startTryActually()V
    invoke-static {v0}, Lcom/android/settings/motion/PanSettings;->access$200(Lcom/android/settings/motion/PanSettings;)V

    .line 221
    :goto_14
    return-void

    .line 219
    :cond_15
    iget-object v0, p0, Lcom/android/settings/motion/PanSettings$4;->this$0:Lcom/android/settings/motion/PanSettings;

    #calls: Lcom/android/settings/motion/PanSettings;->showMotionDialog()V
    invoke-static {v0}, Lcom/android/settings/motion/PanSettings;->access$500(Lcom/android/settings/motion/PanSettings;)V

    goto :goto_14
.end method
