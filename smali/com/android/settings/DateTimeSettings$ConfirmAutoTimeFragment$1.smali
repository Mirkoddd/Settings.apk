.class Lcom/android/settings/DateTimeSettings$ConfirmAutoTimeFragment$1;
.super Ljava/lang/Object;
.source "DateTimeSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/DateTimeSettings$ConfirmAutoTimeFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/DateTimeSettings$ConfirmAutoTimeFragment;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/settings/DateTimeSettings$ConfirmAutoTimeFragment;Landroid/content/Context;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 615
    iput-object p1, p0, Lcom/android/settings/DateTimeSettings$ConfirmAutoTimeFragment$1;->this$0:Lcom/android/settings/DateTimeSettings$ConfirmAutoTimeFragment;

    iput-object p2, p0, Lcom/android/settings/DateTimeSettings$ConfirmAutoTimeFragment$1;->val$context:Landroid/content/Context;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 10
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 621
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v4, p0, Lcom/android/settings/DateTimeSettings$ConfirmAutoTimeFragment$1;->val$context:Landroid/content/Context;

    invoke-direct {v0, v4}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 622
    .local v0, progressDialog:Landroid/app/ProgressDialog;
    iget-object v4, p0, Lcom/android/settings/DateTimeSettings$ConfirmAutoTimeFragment$1;->this$0:Lcom/android/settings/DateTimeSettings$ConfirmAutoTimeFragment;

    const v5, 0x7f0708b1

    invoke-virtual {v4, v5}, Lcom/android/settings/DateTimeSettings$ConfirmAutoTimeFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 623
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 624
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 625
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x7d3

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    .line 626
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 629
    const-string v4, "shutdownlogger"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/app/IShutdownLogger$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IShutdownLogger;

    move-result-object v2

    .line 630
    .local v2, service:Landroid/app/IShutdownLogger;
    new-instance v3, Landroid/app/ShutdownLoggerManager;

    invoke-direct {v3, v2}, Landroid/app/ShutdownLoggerManager;-><init>(Landroid/app/IShutdownLogger;)V

    .line 631
    .local v3, slm:Landroid/app/ShutdownLoggerManager;
    const-string v4, "DateTimeSettings.DIALOG_AUTO_TIME"

    invoke-virtual {v3, v4}, Landroid/app/ShutdownLoggerManager;->appendLog(Ljava/lang/String;)V

    .line 634
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 635
    .local v1, rebootHandler:Landroid/os/Handler;
    new-instance v4, Lcom/android/settings/DateTimeSettings$ConfirmAutoTimeFragment$1$1;

    invoke-direct {v4, p0}, Lcom/android/settings/DateTimeSettings$ConfirmAutoTimeFragment$1$1;-><init>(Lcom/android/settings/DateTimeSettings$ConfirmAutoTimeFragment$1;)V

    const-wide/16 v5, 0x5dc

    invoke-virtual {v1, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 641
    return-void
.end method
