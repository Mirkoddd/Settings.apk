.class Lcom/android/settings/LocationSettings$5;
.super Ljava/lang/Object;
.source "LocationSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/LocationSettings;->showPDRDescription()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/LocationSettings;

.field final synthetic val$cbDontAsk:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/android/settings/LocationSettings;Landroid/widget/CheckBox;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 387
    iput-object p1, p0, Lcom/android/settings/LocationSettings$5;->this$0:Lcom/android/settings/LocationSettings;

    iput-object p2, p0, Lcom/android/settings/LocationSettings$5;->val$cbDontAsk:Landroid/widget/CheckBox;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 5
    .parameter "dialog"

    .prologue
    .line 389
    iget-object v0, p0, Lcom/android/settings/LocationSettings$5;->this$0:Lcom/android/settings/LocationSettings;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/settings/LocationSettings$5;->val$cbDontAsk:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    #calls: Lcom/android/settings/LocationSettings;->selectPdrDescription(ZZ)V
    invoke-static {v0, v1, v2}, Lcom/android/settings/LocationSettings;->access$100(Lcom/android/settings/LocationSettings;ZZ)V

    .line 390
    return-void
.end method
