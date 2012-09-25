.class Lcom/android/settings/motion/ShakeSettings$4;
.super Ljava/lang/Object;
.source "ShakeSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 197
    iput-object p1, p0, Lcom/android/settings/motion/ShakeSettings$4;->this$0:Lcom/android/settings/motion/ShakeSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter "dialog"
    .parameter "arg1"

    .prologue
    .line 199
    iget-object v0, p0, Lcom/android/settings/motion/ShakeSettings$4;->this$0:Lcom/android/settings/motion/ShakeSettings;

    #calls: Lcom/android/settings/motion/ShakeSettings;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/settings/motion/ShakeSettings;->access$400(Lcom/android/settings/motion/ShakeSettings;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "motion_shake"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_15

    .line 200
    iget-object v0, p0, Lcom/android/settings/motion/ShakeSettings$4;->this$0:Lcom/android/settings/motion/ShakeSettings;

    #calls: Lcom/android/settings/motion/ShakeSettings;->startTryActually()V
    invoke-static {v0}, Lcom/android/settings/motion/ShakeSettings;->access$200(Lcom/android/settings/motion/ShakeSettings;)V

    .line 204
    :goto_14
    return-void

    .line 202
    :cond_15
    iget-object v0, p0, Lcom/android/settings/motion/ShakeSettings$4;->this$0:Lcom/android/settings/motion/ShakeSettings;

    #calls: Lcom/android/settings/motion/ShakeSettings;->showMotionDialog()V
    invoke-static {v0}, Lcom/android/settings/motion/ShakeSettings;->access$500(Lcom/android/settings/motion/ShakeSettings;)V

    goto :goto_14
.end method
