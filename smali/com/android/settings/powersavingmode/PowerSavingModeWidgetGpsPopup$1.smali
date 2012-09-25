.class Lcom/android/settings/powersavingmode/PowerSavingModeWidgetGpsPopup$1;
.super Ljava/lang/Object;
.source "PowerSavingModeWidgetGpsPopup.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/powersavingmode/PowerSavingModeWidgetGpsPopup;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/powersavingmode/PowerSavingModeWidgetGpsPopup;


# direct methods
.method constructor <init>(Lcom/android/settings/powersavingmode/PowerSavingModeWidgetGpsPopup;)V
    .registers 2
    .parameter

    .prologue
    .line 27
    iput-object p1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetGpsPopup$1;->this$0:Lcom/android/settings/powersavingmode/PowerSavingModeWidgetGpsPopup;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 29
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 30
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetGpsPopup$1;->this$0:Lcom/android/settings/powersavingmode/PowerSavingModeWidgetGpsPopup;

    invoke-virtual {v1}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetGpsPopup;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "gps"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 33
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.GPS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 34
    .local v0, i:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetGpsPopup$1;->this$0:Lcom/android/settings/powersavingmode/PowerSavingModeWidgetGpsPopup;

    invoke-virtual {v1, v0}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetGpsPopup;->sendBroadcast(Landroid/content/Intent;)V

    .line 35
    const-string v1, "PowerSavingModeWidgetGpsPopup"

    const-string v2, "sendBroadcast : android.settings.GPS_CHANGED"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetGpsPopup$1;->this$0:Lcom/android/settings/powersavingmode/PowerSavingModeWidgetGpsPopup;

    invoke-virtual {v1}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetGpsPopup;->finish()V

    .line 37
    return-void
.end method
