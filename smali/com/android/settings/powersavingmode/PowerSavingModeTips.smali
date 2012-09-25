.class public Lcom/android/settings/powersavingmode/PowerSavingModeTips;
.super Landroid/app/Activity;
.source "PowerSavingModeTips.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 11
    .parameter "savedInstanceState"

    .prologue
    const/16 v8, 0x8

    .line 31
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    const v5, 0x7f040066

    invoke-virtual {p0, v5}, Lcom/android/settings/powersavingmode/PowerSavingModeTips;->setContentView(I)V

    .line 34
    const v5, 0x7f090131

    invoke-virtual {p0, v5}, Lcom/android/settings/powersavingmode/PowerSavingModeTips;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 35
    .local v3, systemcategorytext:Landroid/widget/TextView;
    const v5, 0x7f090132

    invoke-virtual {p0, v5}, Lcom/android/settings/powersavingmode/PowerSavingModeTips;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 36
    .local v4, systemsummarytext:Landroid/widget/TextView;
    const v5, 0x7f090133

    invoke-virtual {p0, v5}, Lcom/android/settings/powersavingmode/PowerSavingModeTips;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 37
    .local v0, etccategorytext:Landroid/widget/TextView;
    const v5, 0x7f090134

    invoke-virtual {p0, v5}, Lcom/android/settings/powersavingmode/PowerSavingModeTips;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 38
    .local v1, etcsummarytext:Landroid/widget/TextView;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    .local v2, sb:Ljava/lang/StringBuilder;
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeTips;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0707c7

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    invoke-static {p0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_67

    .line 44
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 45
    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 47
    :cond_67
    return-void
.end method
