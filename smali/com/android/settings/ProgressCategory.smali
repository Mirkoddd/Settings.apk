.class public Lcom/android/settings/ProgressCategory;
.super Lcom/android/settings/ProgressCategoryBase;
.source "ProgressCategory.java"


# instance fields
.field private mChangeProgressText:Z

.field private mCheckIgnore:Z

.field private mNoDeviceFoundAdded:Z

.field private mNoDeviceFoundPreference:Landroid/preference/Preference;

.field private mNoDeviceIgnore:Z

.field private mNoDeviceTitle:I

.field private mProgress:Z

.field private mProgressText:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/android/settings/ProgressCategoryBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    iput-boolean v0, p0, Lcom/android/settings/ProgressCategory;->mProgress:Z

    .line 30
    iput-boolean v0, p0, Lcom/android/settings/ProgressCategory;->mCheckIgnore:Z

    .line 31
    iput-boolean v0, p0, Lcom/android/settings/ProgressCategory;->mNoDeviceIgnore:Z

    .line 32
    iput-boolean v0, p0, Lcom/android/settings/ProgressCategory;->mChangeProgressText:Z

    .line 34
    const v0, 0x7f070096

    iput v0, p0, Lcom/android/settings/ProgressCategory;->mNoDeviceTitle:I

    .line 38
    const v0, 0x7f04007a

    invoke-virtual {p0, v0}, Lcom/android/settings/ProgressCategory;->setLayoutResource(I)V

    .line 39
    return-void
.end method


# virtual methods
.method public onBindView(Landroid/view/View;)V
    .registers 10
    .parameter "view"

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 43
    invoke-super {p0, p1}, Lcom/android/settings/ProgressCategoryBase;->onBindView(Landroid/view/View;)V

    .line 44
    const v3, 0x7f09017a

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 45
    .local v2, textView:Landroid/widget/TextView;
    const v3, 0x7f090179

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 48
    .local v1, progressBar:Landroid/view/View;
    iget-boolean v3, p0, Lcom/android/settings/ProgressCategory;->mChangeProgressText:Z

    if-nez v3, :cond_66

    .line 49
    iget-boolean v3, p0, Lcom/android/settings/ProgressCategory;->mProgress:Z

    if-eqz v3, :cond_62

    const v3, 0x7f070094

    :goto_22
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 54
    :goto_25
    invoke-virtual {p0}, Lcom/android/settings/ProgressCategory;->getPreferenceCount()I

    move-result v3

    if-eqz v3, :cond_39

    invoke-virtual {p0}, Lcom/android/settings/ProgressCategory;->getPreferenceCount()I

    move-result v3

    if-ne v3, v5, :cond_6c

    invoke-virtual {p0, v4}, Lcom/android/settings/ProgressCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v3

    iget-object v7, p0, Lcom/android/settings/ProgressCategory;->mNoDeviceFoundPreference:Landroid/preference/Preference;

    if-ne v3, v7, :cond_6c

    :cond_39
    move v0, v5

    .line 56
    .local v0, noDeviceFound:Z
    :goto_3a
    iget-boolean v3, p0, Lcom/android/settings/ProgressCategory;->mNoDeviceIgnore:Z

    if-nez v3, :cond_70

    .line 57
    if-eqz v0, :cond_6e

    move v3, v6

    :goto_41
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 60
    :goto_44
    iget-boolean v3, p0, Lcom/android/settings/ProgressCategory;->mProgress:Z

    if-eqz v3, :cond_49

    move v6, v4

    :cond_49
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 62
    iget-boolean v3, p0, Lcom/android/settings/ProgressCategory;->mProgress:Z

    if-nez v3, :cond_56

    if-eqz v0, :cond_56

    iget-boolean v3, p0, Lcom/android/settings/ProgressCategory;->mCheckIgnore:Z

    if-eqz v3, :cond_74

    .line 63
    :cond_56
    iget-boolean v3, p0, Lcom/android/settings/ProgressCategory;->mNoDeviceFoundAdded:Z

    if-eqz v3, :cond_61

    .line 64
    iget-object v3, p0, Lcom/android/settings/ProgressCategory;->mNoDeviceFoundPreference:Landroid/preference/Preference;

    invoke-virtual {p0, v3}, Lcom/android/settings/ProgressCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 65
    iput-boolean v4, p0, Lcom/android/settings/ProgressCategory;->mNoDeviceFoundAdded:Z

    .line 79
    :cond_61
    :goto_61
    return-void

    .line 49
    .end local v0           #noDeviceFound:Z
    :cond_62
    const v3, 0x7f070091

    goto :goto_22

    .line 52
    :cond_66
    iget v3, p0, Lcom/android/settings/ProgressCategory;->mProgressText:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_25

    :cond_6c
    move v0, v4

    .line 54
    goto :goto_3a

    .restart local v0       #noDeviceFound:Z
    :cond_6e
    move v3, v4

    .line 57
    goto :goto_41

    .line 59
    :cond_70
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_44

    .line 68
    :cond_74
    iget-boolean v3, p0, Lcom/android/settings/ProgressCategory;->mNoDeviceFoundAdded:Z

    if-nez v3, :cond_61

    .line 69
    iget-object v3, p0, Lcom/android/settings/ProgressCategory;->mNoDeviceFoundPreference:Landroid/preference/Preference;

    if-nez v3, :cond_9b

    .line 70
    new-instance v3, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/ProgressCategory;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v3, v6}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings/ProgressCategory;->mNoDeviceFoundPreference:Landroid/preference/Preference;

    .line 71
    iget-object v3, p0, Lcom/android/settings/ProgressCategory;->mNoDeviceFoundPreference:Landroid/preference/Preference;

    const v6, 0x7f040072

    invoke-virtual {v3, v6}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 72
    iget-object v3, p0, Lcom/android/settings/ProgressCategory;->mNoDeviceFoundPreference:Landroid/preference/Preference;

    iget v6, p0, Lcom/android/settings/ProgressCategory;->mNoDeviceTitle:I

    invoke-virtual {v3, v6}, Landroid/preference/Preference;->setTitle(I)V

    .line 73
    iget-object v3, p0, Lcom/android/settings/ProgressCategory;->mNoDeviceFoundPreference:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSelectable(Z)V

    .line 75
    :cond_9b
    iget-object v3, p0, Lcom/android/settings/ProgressCategory;->mNoDeviceFoundPreference:Landroid/preference/Preference;

    invoke-virtual {p0, v3}, Lcom/android/settings/ProgressCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 76
    iput-boolean v5, p0, Lcom/android/settings/ProgressCategory;->mNoDeviceFoundAdded:Z

    goto :goto_61
.end method

.method public setIgnoreMessage(Z)V
    .registers 2
    .parameter "flag"

    .prologue
    .line 88
    iput-boolean p1, p0, Lcom/android/settings/ProgressCategory;->mCheckIgnore:Z

    .line 89
    return-void
.end method

.method public setIgnoreNoDevice(Z)V
    .registers 2
    .parameter "flag"

    .prologue
    .line 92
    iput-boolean p1, p0, Lcom/android/settings/ProgressCategory;->mNoDeviceIgnore:Z

    .line 93
    return-void
.end method

.method public setNoDeviceFoundText(I)V
    .registers 2
    .parameter "resource_id"

    .prologue
    .line 103
    iput p1, p0, Lcom/android/settings/ProgressCategory;->mNoDeviceTitle:I

    .line 104
    return-void
.end method

.method public setProgress(Z)V
    .registers 2
    .parameter "progressOn"

    .prologue
    .line 83
    iput-boolean p1, p0, Lcom/android/settings/ProgressCategory;->mProgress:Z

    .line 84
    invoke-virtual {p0}, Lcom/android/settings/ProgressCategory;->notifyChanged()V

    .line 85
    return-void
.end method

.method public setProgressText(ZI)V
    .registers 4
    .parameter "flag"
    .parameter "resource_id"

    .prologue
    .line 96
    iput-boolean p1, p0, Lcom/android/settings/ProgressCategory;->mChangeProgressText:Z

    .line 97
    iget-boolean v0, p0, Lcom/android/settings/ProgressCategory;->mChangeProgressText:Z

    if-eqz v0, :cond_9

    .line 98
    iput p2, p0, Lcom/android/settings/ProgressCategory;->mProgressText:I

    .line 101
    :goto_8
    return-void

    .line 100
    :cond_9
    const v0, 0x7f070094

    iput v0, p0, Lcom/android/settings/ProgressCategory;->mProgressText:I

    goto :goto_8
.end method
