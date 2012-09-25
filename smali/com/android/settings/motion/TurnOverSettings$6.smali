.class Lcom/android/settings/motion/TurnOverSettings$6;
.super Ljava/lang/Object;
.source "TurnOverSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/motion/TurnOverSettings;->showUseRingDialog()V
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
    .line 253
    iput-object p1, p0, Lcom/android/settings/motion/TurnOverSettings$6;->this$0:Lcom/android/settings/motion/TurnOverSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 255
    iget-object v0, p0, Lcom/android/settings/motion/TurnOverSettings$6;->this$0:Lcom/android/settings/motion/TurnOverSettings;

    const/4 v1, 0x0

    #calls: Lcom/android/settings/motion/TurnOverSettings;->startTryActually(Z)V
    invoke-static {v0, v1}, Lcom/android/settings/motion/TurnOverSettings;->access$600(Lcom/android/settings/motion/TurnOverSettings;Z)V

    .line 256
    return-void
.end method
