.class public Lcom/android/settings/powersavingmode/PowerSavingModeWidgetGpsPopup;
.super Landroid/app/Activity;
.source "PowerSavingModeWidgetGpsPopup.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    .line 21
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 23
    new-instance v1, Landroid/app/AlertDialog$Builder;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 24
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetGpsPopup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07041d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 25
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetGpsPopup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07041e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 26
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 27
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetGpsPopup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070416

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    new-instance v3, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetGpsPopup$1;

    invoke-direct {v3, p0}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetGpsPopup$1;-><init>(Lcom/android/settings/powersavingmode/PowerSavingModeWidgetGpsPopup;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 39
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetGpsPopup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070417

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    new-instance v3, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetGpsPopup$2;

    invoke-direct {v3, p0}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetGpsPopup$2;-><init>(Lcom/android/settings/powersavingmode/PowerSavingModeWidgetGpsPopup;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 50
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 51
    .local v0, alert:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 52
    return-void
.end method
