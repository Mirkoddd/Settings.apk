.class Lcom/android/settings/UsbSettings$6;
.super Ljava/lang/Object;
.source "UsbSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/UsbSettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/UsbSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/UsbSettings;)V
    .registers 2
    .parameter

    .prologue
    .line 276
    iput-object p1, p0, Lcom/android/settings/UsbSettings$6;->this$0:Lcom/android/settings/UsbSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 278
    iget-object v0, p0, Lcom/android/settings/UsbSettings$6;->this$0:Lcom/android/settings/UsbSettings;

    #calls: Lcom/android/settings/UsbSettings;->setDefaultMode()V
    invoke-static {v0}, Lcom/android/settings/UsbSettings;->access$500(Lcom/android/settings/UsbSettings;)V

    .line 280
    iget-object v0, p0, Lcom/android/settings/UsbSettings$6;->this$0:Lcom/android/settings/UsbSettings;

    invoke-virtual {v0}, Lcom/android/settings/UsbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "usb_setting_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 283
    return-void
.end method
