.class public Lcom/android/settings/wifi/PrioritySettingDialog;
.super Landroid/app/AlertDialog;
.source "PrioritySettingDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnShowListener;
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/PrioritySettingDialog$1;,
        Lcom/android/settings/wifi/PrioritySettingDialog$WifiServiceHandler;
    }
.end annotation


# instance fields
.field private final mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

.field private mContext:Landroid/content/Context;

.field private mPriorityButton:I

.field private mPriorityView:Landroid/view/ViewGroup;

.field private mRadioGroup:Landroid/widget/RadioGroup;

.field private mSecurity:I

.field private mView:Landroid/view/View;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field orderedConfigs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/settings/wifi/AccessPoint;)V
    .registers 4
    .parameter "context"
    .parameter "accessPoint"

    .prologue
    .line 106
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 107
    iput-object p1, p0, Lcom/android/settings/wifi/PrioritySettingDialog;->mContext:Landroid/content/Context;

    .line 108
    iput-object p2, p0, Lcom/android/settings/wifi/PrioritySettingDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    .line 109
    if-nez p2, :cond_d

    const/4 v0, 0x0

    :goto_a
    iput v0, p0, Lcom/android/settings/wifi/PrioritySettingDialog;->mSecurity:I

    .line 110
    return-void

    .line 109
    :cond_d
    iget v0, p2, Lcom/android/settings/wifi/AccessPoint;->security:I

    goto :goto_a
.end method

.method static getOrderedConfigs(Landroid/net/wifi/WifiManager;)Ljava/util/List;
    .registers 9
    .parameter "wifiManager"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/WifiManager;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    .prologue
    .line 302
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v1

    .line 304
    .local v1, configs:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v1, :cond_41

    .line 305
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 306
    .local v4, orderedConfigs:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_42

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 307
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_26

    .line 309
    const/4 v6, 0x0

    invoke-interface {v4, v6, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_f

    .line 312
    :cond_26
    const/4 v2, 0x0

    .line 313
    .local v2, i:I
    const/4 v2, 0x0

    :goto_28
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_3d

    .line 314
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/WifiConfiguration;

    .line 315
    .local v5, t:Landroid/net/wifi/WifiConfiguration;
    iget v6, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    iget v7, v5, Landroid/net/wifi/WifiConfiguration;->priority:I

    if-ge v6, v7, :cond_3d

    .line 313
    add-int/lit8 v2, v2, 0x1

    goto :goto_28

    .line 322
    .end local v5           #t:Landroid/net/wifi/WifiConfiguration;
    :cond_3d
    invoke-interface {v4, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_f

    .line 326
    .end local v0           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v2           #i:I
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #orderedConfigs:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    :cond_41
    const/4 v4, 0x0

    .line 328
    .restart local v4       #orderedConfigs:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    :cond_42
    return-object v4
.end method

.method static resortOrderedConfigs(Ljava/util/List;)V
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 291
    .local p0, lOrderedConfigs:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 292
    .local v0, cur_priority:I
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_19

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    .line 293
    .local v2, oconfig:Landroid/net/wifi/WifiConfiguration;
    iput v0, v2, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 294
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 296
    .end local v2           #oconfig:Landroid/net/wifi/WifiConfiguration;
    :cond_19
    return-void
.end method

.method private validatePriorityButtons()V
    .registers 8

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x3

    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 373
    iget-object v2, p0, Lcom/android/settings/wifi/PrioritySettingDialog;->mRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v2}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    .line 374
    .local v0, id:I
    iget-object v2, p0, Lcom/android/settings/wifi/PrioritySettingDialog;->orderedConfigs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 376
    .local v1, total_num:I
    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/PrioritySettingDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    if-nez v2, :cond_17

    .line 396
    :goto_16
    return-void

    .line 379
    :cond_17
    if-ne v0, v3, :cond_28

    .line 380
    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/PrioritySettingDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 381
    invoke-virtual {p0, v5}, Lcom/android/settings/wifi/PrioritySettingDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_16

    .line 382
    :cond_28
    if-ne v1, v6, :cond_39

    .line 383
    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/PrioritySettingDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 384
    invoke-virtual {p0, v5}, Lcom/android/settings/wifi/PrioritySettingDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_16

    .line 385
    :cond_39
    if-nez v0, :cond_4a

    .line 386
    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/PrioritySettingDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 387
    invoke-virtual {p0, v5}, Lcom/android/settings/wifi/PrioritySettingDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_16

    .line 388
    :cond_4a
    add-int/lit8 v2, v1, -0x1

    if-ne v0, v2, :cond_5d

    .line 389
    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/PrioritySettingDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 390
    invoke-virtual {p0, v5}, Lcom/android/settings/wifi/PrioritySettingDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_16

    .line 393
    :cond_5d
    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/PrioritySettingDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 394
    invoke-virtual {p0, v5}, Lcom/android/settings/wifi/PrioritySettingDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_16
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 2
    .parameter "editable"

    .prologue
    .line 221
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 215
    return-void
.end method

.method public cancel()V
    .registers 3

    .prologue
    .line 333
    const-string v0, "WifiPriorityDialog"

    const-string v1, "cancel"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/PrioritySettingDialog;->cancelOrDismiss(Z)V

    .line 335
    return-void
.end method

.method protected cancelOrDismiss(Z)V
    .registers 5
    .parameter "isCancel"

    .prologue
    .line 347
    const-string v0, "WifiPriorityDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancelOrDismiss isCancel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mPriorityButton="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/wifi/PrioritySettingDialog;->mPriorityButton:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    iget v0, p0, Lcom/android/settings/wifi/PrioritySettingDialog;->mPriorityButton:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_2d

    iget v0, p0, Lcom/android/settings/wifi/PrioritySettingDialog;->mPriorityButton:I

    if-nez v0, :cond_32

    .line 349
    :cond_2d
    if-eqz p1, :cond_36

    .line 350
    invoke-super {p0}, Landroid/app/AlertDialog;->cancel()V

    .line 354
    :cond_32
    :goto_32
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/wifi/PrioritySettingDialog;->mPriorityButton:I

    .line 355
    return-void

    .line 352
    :cond_36
    invoke-super {p0}, Landroid/app/AlertDialog;->dismiss()V

    goto :goto_32
.end method

.method public dismiss()V
    .registers 3

    .prologue
    .line 339
    const-string v0, "WifiPriorityDialog"

    const-string v1, "dismiss"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/PrioritySettingDialog;->cancelOrDismiss(Z)V

    .line 341
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .registers 6
    .parameter "rg"
    .parameter "checkedId"

    .prologue
    .line 363
    const-string v0, "WifiPriorityDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCheckedChanged checkedId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    invoke-direct {p0}, Lcom/android/settings/wifi/PrioritySettingDialog;->validatePriorityButtons()V

    .line 365
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 12
    .parameter "dialogInterface"
    .parameter "button"

    .prologue
    const/4 v8, -0x1

    .line 245
    const-string v6, "WifiPriorityDialog"

    const-string v7, "onClick"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    iput p2, p0, Lcom/android/settings/wifi/PrioritySettingDialog;->mPriorityButton:I

    .line 249
    iget-object v6, p0, Lcom/android/settings/wifi/PrioritySettingDialog;->mRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v6}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v2

    .line 250
    .local v2, id:I
    if-ne v2, v8, :cond_13

    .line 285
    :cond_12
    return-void

    .line 254
    :cond_13
    iget-object v6, p0, Lcom/android/settings/wifi/PrioritySettingDialog;->orderedConfigs:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v5

    .line 255
    .local v5, total_num:I
    if-ne p2, v8, :cond_3c

    const/4 v6, 0x1

    if-lt v2, v6, :cond_3c

    .line 256
    iget-object v6, p0, Lcom/android/settings/wifi/PrioritySettingDialog;->orderedConfigs:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiConfiguration;

    .line 257
    .local v4, sel_config:Landroid/net/wifi/WifiConfiguration;
    iget-object v6, p0, Lcom/android/settings/wifi/PrioritySettingDialog;->orderedConfigs:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 259
    iget-object v6, p0, Lcom/android/settings/wifi/PrioritySettingDialog;->orderedConfigs:Ljava/util/List;

    add-int/lit8 v7, v2, -0x1

    invoke-interface {v6, v7, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 260
    iget-object v6, p0, Lcom/android/settings/wifi/PrioritySettingDialog;->orderedConfigs:Ljava/util/List;

    invoke-static {v6}, Lcom/android/settings/wifi/PrioritySettingDialog;->resortOrderedConfigs(Ljava/util/List;)V

    .line 261
    add-int/lit8 v6, v2, -0x1

    invoke-virtual {p0, v6}, Lcom/android/settings/wifi/PrioritySettingDialog;->updateRadioGroup(I)V

    .line 264
    .end local v4           #sel_config:Landroid/net/wifi/WifiConfiguration;
    :cond_3c
    const/4 v6, -0x3

    if-ne p2, v6, :cond_61

    add-int/lit8 v6, v5, -0x2

    if-gt v2, v6, :cond_61

    .line 265
    iget-object v6, p0, Lcom/android/settings/wifi/PrioritySettingDialog;->orderedConfigs:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiConfiguration;

    .line 266
    .restart local v4       #sel_config:Landroid/net/wifi/WifiConfiguration;
    iget-object v6, p0, Lcom/android/settings/wifi/PrioritySettingDialog;->orderedConfigs:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 268
    iget-object v6, p0, Lcom/android/settings/wifi/PrioritySettingDialog;->orderedConfigs:Ljava/util/List;

    add-int/lit8 v7, v2, 0x1

    invoke-interface {v6, v7, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 269
    iget-object v6, p0, Lcom/android/settings/wifi/PrioritySettingDialog;->orderedConfigs:Ljava/util/List;

    invoke-static {v6}, Lcom/android/settings/wifi/PrioritySettingDialog;->resortOrderedConfigs(Ljava/util/List;)V

    .line 270
    add-int/lit8 v6, v2, 0x1

    invoke-virtual {p0, v6}, Lcom/android/settings/wifi/PrioritySettingDialog;->updateRadioGroup(I)V

    .line 272
    .end local v4           #sel_config:Landroid/net/wifi/WifiConfiguration;
    :cond_61
    const/4 v6, -0x2

    if-ne p2, v6, :cond_12

    .line 275
    iget-object v6, p0, Lcom/android/settings/wifi/PrioritySettingDialog;->orderedConfigs:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_6a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_12

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiConfiguration;

    .line 276
    .local v3, oconfig:Landroid/net/wifi/WifiConfiguration;
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 278
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    iget v6, v3, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iput v6, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 279
    iget-object v6, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iput-object v6, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 280
    iget v6, v3, Landroid/net/wifi/WifiConfiguration;->priority:I

    iput v6, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 282
    iget-object v6, p0, Lcom/android/settings/wifi/PrioritySettingDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6, v0}, Landroid/net/wifi/WifiManager;->saveNetwork(Landroid/net/wifi/WifiConfiguration;)V

    goto :goto_6a
.end method

.method public onClick(Landroid/view/View;)V
    .registers 2
    .parameter "view"

    .prologue
    .line 209
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 10
    .parameter "savedInstanceState"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 115
    invoke-virtual {p0}, Lcom/android/settings/wifi/PrioritySettingDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0400b0

    invoke-virtual {v3, v4, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/wifi/PrioritySettingDialog;->mView:Landroid/view/View;

    .line 116
    iget-object v3, p0, Lcom/android/settings/wifi/PrioritySettingDialog;->mView:Landroid/view/View;

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/PrioritySettingDialog;->setView(Landroid/view/View;)V

    .line 117
    invoke-virtual {p0}, Lcom/android/settings/wifi/PrioritySettingDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 118
    .local v0, context:Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 119
    .local v2, resources:Landroid/content/res/Resources;
    const-string v3, "wifi"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    iput-object v3, p0, Lcom/android/settings/wifi/PrioritySettingDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 120
    iget-object v3, p0, Lcom/android/settings/wifi/PrioritySettingDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v4, p0, Lcom/android/settings/wifi/PrioritySettingDialog;->mContext:Landroid/content/Context;

    new-instance v5, Lcom/android/settings/wifi/PrioritySettingDialog$WifiServiceHandler;

    invoke-direct {v5, p0, v7}, Lcom/android/settings/wifi/PrioritySettingDialog$WifiServiceHandler;-><init>(Lcom/android/settings/wifi/PrioritySettingDialog;Lcom/android/settings/wifi/PrioritySettingDialog$1;)V

    invoke-virtual {v3, v4, v5}, Landroid/net/wifi/WifiManager;->asyncConnect(Landroid/content/Context;Landroid/os/Handler;)V

    .line 122
    const-string v3, "WifiPriorityDialog"

    const-string v4, "PrioritySettingDialog onCreate null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    invoke-virtual {p0}, Lcom/android/settings/wifi/PrioritySettingDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0400b1

    iget-object v5, p0, Lcom/android/settings/wifi/PrioritySettingDialog;->mPriorityView:Landroid/view/ViewGroup;

    invoke-virtual {v3, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 124
    .local v1, priorityView:Landroid/view/View;
    iget-object v3, p0, Lcom/android/settings/wifi/PrioritySettingDialog;->mView:Landroid/view/View;

    const v4, 0x7f090252

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/android/settings/wifi/PrioritySettingDialog;->mPriorityView:Landroid/view/ViewGroup;

    .line 125
    iget-object v3, p0, Lcom/android/settings/wifi/PrioritySettingDialog;->mPriorityView:Landroid/view/ViewGroup;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 126
    const v3, 0x7f070204

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/PrioritySettingDialog;->setTitle(I)V

    .line 128
    iget-object v3, p0, Lcom/android/settings/wifi/PrioritySettingDialog;->mView:Landroid/view/View;

    const v4, 0x7f090253

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioGroup;

    iput-object v3, p0, Lcom/android/settings/wifi/PrioritySettingDialog;->mRadioGroup:Landroid/widget/RadioGroup;

    .line 129
    iget-object v3, p0, Lcom/android/settings/wifi/PrioritySettingDialog;->mRadioGroup:Landroid/widget/RadioGroup;

    if-nez v3, :cond_77

    .line 130
    const-string v3, "WifiPriorityDialog"

    const-string v4, "mRadioGroup is null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :goto_76
    return-void

    .line 134
    :cond_77
    iget-object v3, p0, Lcom/android/settings/wifi/PrioritySettingDialog;->mPriorityView:Landroid/view/ViewGroup;

    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 135
    iget-object v3, p0, Lcom/android/settings/wifi/PrioritySettingDialog;->mRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v3, v6}, Landroid/widget/RadioGroup;->setVisibility(I)V

    .line 137
    const/4 v3, -0x1

    const v4, 0x7f070201

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4, p0}, Lcom/android/settings/wifi/PrioritySettingDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 139
    const/4 v3, -0x3

    const v4, 0x7f070202

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4, p0}, Lcom/android/settings/wifi/PrioritySettingDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 141
    const/4 v3, -0x2

    const v4, 0x7f070203

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4, p0}, Lcom/android/settings/wifi/PrioritySettingDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 145
    iget-object v3, p0, Lcom/android/settings/wifi/PrioritySettingDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-static {v3}, Lcom/android/settings/wifi/PrioritySettingDialog;->getOrderedConfigs(Landroid/net/wifi/WifiManager;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/wifi/PrioritySettingDialog;->orderedConfigs:Ljava/util/List;

    .line 146
    invoke-virtual {p0, v6}, Lcom/android/settings/wifi/PrioritySettingDialog;->updateRadioGroup(I)V

    .line 147
    iput v6, p0, Lcom/android/settings/wifi/PrioritySettingDialog;->mPriorityButton:I

    .line 148
    iget-object v3, p0, Lcom/android/settings/wifi/PrioritySettingDialog;->mRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v3, p0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 149
    invoke-virtual {p0, p0}, Lcom/android/settings/wifi/PrioritySettingDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 150
    invoke-direct {p0}, Lcom/android/settings/wifi/PrioritySettingDialog;->validatePriorityButtons()V

    .line 151
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    goto :goto_76
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 6
    .parameter "parent"
    .parameter "view"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 218
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .registers 2
    .parameter "parent"

    .prologue
    .line 206
    return-void
.end method

.method public onShow(Landroid/content/DialogInterface;)V
    .registers 2
    .parameter "dialog"

    .prologue
    .line 402
    invoke-direct {p0}, Lcom/android/settings/wifi/PrioritySettingDialog;->validatePriorityButtons()V

    .line 403
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 212
    return-void
.end method

.method protected updateRadioGroup(I)V
    .registers 12
    .parameter "checkId"

    .prologue
    const/4 v9, -0x2

    .line 179
    iget-object v6, p0, Lcom/android/settings/wifi/PrioritySettingDialog;->orderedConfigs:Ljava/util/List;

    if-eqz v6, :cond_74

    .line 180
    const-string v6, "WifiPriorityDialog"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateRadioGroup add ordered configurations. number:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/wifi/PrioritySettingDialog;->orderedConfigs:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    iget-object v6, p0, Lcom/android/settings/wifi/PrioritySettingDialog;->mRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v6}, Landroid/widget/RadioGroup;->removeAllViews()V

    .line 182
    const/4 v0, 0x0

    .line 183
    .local v0, i:I
    iget-object v6, p0, Lcom/android/settings/wifi/PrioritySettingDialog;->orderedConfigs:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_2f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiConfiguration;

    .line 184
    .local v4, oconfig:Landroid/net/wifi/WifiConfiguration;
    new-instance v5, Landroid/widget/RadioButton;

    iget-object v6, p0, Lcom/android/settings/wifi/PrioritySettingDialog;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    .line 185
    .local v5, rb1:Landroid/widget/RadioButton;
    iget-object v6, v4, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/settings/wifi/AccessPoint;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 186
    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Landroid/widget/RadioButton;->setTextColor(I)V

    .line 188
    invoke-virtual {v5, v0}, Landroid/widget/RadioButton;->setId(I)V

    .line 189
    new-instance v3, Landroid/widget/RadioGroup$LayoutParams;

    invoke-direct {v3, v9, v9}, Landroid/widget/RadioGroup$LayoutParams;-><init>(II)V

    .line 192
    .local v3, lp_rb1:Landroid/widget/RadioGroup$LayoutParams;
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 193
    iget-object v6, p0, Lcom/android/settings/wifi/PrioritySettingDialog;->mRadioGroup:Landroid/widget/RadioGroup;

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .local v1, i:I
    invoke-virtual {v6, v5, v0, v3}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 194
    const-string v6, "WifiPriorityDialog"

    const-string v7, "updateRadioGroup current ssid:"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 195
    .end local v1           #i:I
    .restart local v0       #i:I
    goto :goto_2f

    .line 196
    .end local v3           #lp_rb1:Landroid/widget/RadioGroup$LayoutParams;
    .end local v4           #oconfig:Landroid/net/wifi/WifiConfiguration;
    .end local v5           #rb1:Landroid/widget/RadioButton;
    :cond_6b
    iget-object v6, p0, Lcom/android/settings/wifi/PrioritySettingDialog;->mRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v6, p1}, Landroid/widget/RadioGroup;->check(I)V

    .line 202
    invoke-direct {p0}, Lcom/android/settings/wifi/PrioritySettingDialog;->validatePriorityButtons()V

    .line 203
    .end local v0           #i:I
    .end local v2           #i$:Ljava/util/Iterator;
    :goto_73
    return-void

    .line 199
    :cond_74
    const-string v6, "WifiPriorityDialog"

    const-string v7, "updateRadioGroup orderedConfigs is null"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_73
.end method
