.class Lcom/android/settings/motion/TiltSettings$2;
.super Ljava/lang/Object;
.source "TiltSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/motion/TiltSettings;->showMotionDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/motion/TiltSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/motion/TiltSettings;)V
    .registers 2
    .parameter

    .prologue
    .line 174
    iput-object p1, p0, Lcom/android/settings/motion/TiltSettings$2;->this$0:Lcom/android/settings/motion/TiltSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 176
    const-string v0, "TiltSettings"

    const-string v1, "showMotionDialog, positive click"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    iget-object v0, p0, Lcom/android/settings/motion/TiltSettings$2;->this$0:Lcom/android/settings/motion/TiltSettings;

    #calls: Lcom/android/settings/motion/TiltSettings;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/settings/motion/TiltSettings;->access$100(Lcom/android/settings/motion/TiltSettings;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "motion_zooming"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 178
    iget-object v0, p0, Lcom/android/settings/motion/TiltSettings$2;->this$0:Lcom/android/settings/motion/TiltSettings;

    #calls: Lcom/android/settings/motion/TiltSettings;->startTryActually()V
    invoke-static {v0}, Lcom/android/settings/motion/TiltSettings;->access$200(Lcom/android/settings/motion/TiltSettings;)V

    .line 179
    return-void
.end method
