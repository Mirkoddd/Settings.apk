.class public Lcom/android/settings/wifi/WifiConfigUiForSetupWizardXL;
.super Ljava/lang/Object;
.source "WifiConfigUiForSetupWizardXL.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;
.implements Lcom/android/settings/wifi/WifiConfigUiBase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/WifiConfigUiForSetupWizardXL$FocusRunnable;
    }
.end annotation


# instance fields
.field private mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

.field private final mActivity:Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;

.field private mCancelButton:Landroid/widget/Button;

.field private mConnectButton:Landroid/widget/Button;

.field private mController:Lcom/android/settings/wifi/WifiConfigController;

.field private mEdit:Z

.field private mHandler:Landroid/os/Handler;

.field private mInflater:Landroid/view/LayoutInflater;

.field private final mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;Landroid/view/ViewGroup;Lcom/android/settings/wifi/AccessPoint;Z)V
    .registers 8
    .parameter "activity"
    .parameter "parent"
    .parameter "accessPoint"
    .parameter "edit"

    .prologue
    .line 62
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigUiForSetupWizardXL;->mHandler:Landroid/os/Handler;

    .line 63
    iput-object p1, p0, Lcom/android/settings/wifi/WifiConfigUiForSetupWizardXL;->mActivity:Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;

    .line 64
    const v0, 0x7f090282

    invoke-virtual {p1, v0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigUiForSetupWizardXL;->mConnectButton:Landroid/widget/Button;

    .line 65
    const v0, 0x7f090281

    invoke-virtual {p1, v0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigUiForSetupWizardXL;->mCancelButton:Landroid/widget/Button;

    .line 66
    iput-object p3, p0, Lcom/android/settings/wifi/WifiConfigUiForSetupWizardXL;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    .line 67
    iput-boolean p4, p0, Lcom/android/settings/wifi/WifiConfigUiForSetupWizardXL;->mEdit:Z

    .line 68
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigUiForSetupWizardXL;->mInflater:Landroid/view/LayoutInflater;

    .line 70
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigUiForSetupWizardXL;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0400af

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigUiForSetupWizardXL;->mView:Landroid/view/View;

    .line 71
    new-instance v0, Lcom/android/settings/wifi/WifiConfigController;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigUiForSetupWizardXL;->mView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigUiForSetupWizardXL;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-direct {v0, p0, v1, v2, p4}, Lcom/android/settings/wifi/WifiConfigController;-><init>(Lcom/android/settings/wifi/WifiConfigUiBase;Landroid/view/View;Lcom/android/settings/wifi/AccessPoint;Z)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigUiForSetupWizardXL;->mController:Lcom/android/settings/wifi/WifiConfigController;

    .line 73
    const-string v0, "input_method"

    invoke-virtual {p1, v0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigUiForSetupWizardXL;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 76
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigUiForSetupWizardXL;->mView:Landroid/view/View;

    const v1, 0x7f090220

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_67

    .line 77
    const v0, 0x7f090213

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiConfigUiForSetupWizardXL;->requestFocusAndShowKeyboard(I)V

    .line 82
    :cond_66
    :goto_66
    return-void

    .line 78
    :cond_67
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigUiForSetupWizardXL;->mView:Landroid/view/View;

    const v1, 0x7f090239

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_66

    .line 80
    const v0, 0x7f090217

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiConfigUiForSetupWizardXL;->requestFocusAndShowKeyboard(I)V

    goto :goto_66
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/WifiConfigUiForSetupWizardXL;)Landroid/view/inputmethod/InputMethodManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigUiForSetupWizardXL;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/WifiConfigUiForSetupWizardXL;)Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;
    .registers 2
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigUiForSetupWizardXL;->mActivity:Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;

    return-object v0
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .registers 2

    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigUiForSetupWizardXL;->mActivity:Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;

    return-object v0
.end method

.method public getController()Lcom/android/settings/wifi/WifiConfigController;
    .registers 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigUiForSetupWizardXL;->mController:Lcom/android/settings/wifi/WifiConfigController;

    return-object v0
.end method

.method public getLayoutInflater()Landroid/view/LayoutInflater;
    .registers 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigUiForSetupWizardXL;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method public getSubmitButton()Landroid/widget/Button;
    .registers 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigUiForSetupWizardXL;->mConnectButton:Landroid/widget/Button;

    return-object v0
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .registers 5
    .parameter "view"
    .parameter "hasFocus"

    .prologue
    .line 205
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 206
    if-eqz p2, :cond_10

    .line 207
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigUiForSetupWizardXL;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/settings/wifi/WifiConfigUiForSetupWizardXL$FocusRunnable;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/wifi/WifiConfigUiForSetupWizardXL$FocusRunnable;-><init>(Lcom/android/settings/wifi/WifiConfigUiForSetupWizardXL;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 209
    :cond_10
    return-void
.end method

.method public requestFocusAndShowKeyboard(I)V
    .registers 9
    .parameter "editViewId"

    .prologue
    const/4 v6, 0x0

    .line 89
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigUiForSetupWizardXL;->mView:Landroid/view/View;

    invoke-virtual {v2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 90
    .local v1, viewToBeFocused:Landroid/view/View;
    if-nez v1, :cond_11

    .line 91
    const-string v2, "SetupWizard"

    const-string v3, "password field to be focused not found."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :cond_10
    :goto_10
    return-void

    .line 92
    :cond_11
    instance-of v2, v1, Landroid/widget/EditText;

    if-nez v2, :cond_1d

    .line 93
    const-string v2, "SetupWizard"

    const-string v3, "password field is not EditText"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    .line 95
    :cond_1d
    invoke-virtual {v1}, Landroid/view/View;->isFocused()Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 96
    const-string v2, "SetupWizard"

    const-string v3, "Already focused"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigUiForSetupWizardXL;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v2, v1, v6}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    move-result v2

    if-nez v2, :cond_10

    .line 98
    const-string v2, "SetupWizard"

    const-string v3, "Failed to show SoftInput"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    .line 102
    :cond_3a
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 103
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    move-result v0

    .line 104
    .local v0, requestFocusResult:Z
    const-string v3, "SetupWizard"

    const-string v4, "Focus request: %s"

    const/4 v2, 0x1

    new-array v5, v2, [Ljava/lang/Object;

    if-eqz v0, :cond_5c

    const-string v2, "successful"

    :goto_4c
    aput-object v2, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    if-nez v0, :cond_10

    .line 107
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    goto :goto_10

    .line 104
    :cond_5c
    const-string v2, "failed"

    goto :goto_4c
.end method

.method public setCancelButton(Ljava/lang/CharSequence;)V
    .registers 4
    .parameter "text"

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigUiForSetupWizardXL;->mCancelButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 167
    return-void
.end method

.method public setForgetButton(Ljava/lang/CharSequence;)V
    .registers 2
    .parameter "text"

    .prologue
    .line 160
    return-void
.end method

.method public setSubmitButton(Ljava/lang/CharSequence;)V
    .registers 4
    .parameter "text"

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigUiForSetupWizardXL;->mConnectButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 154
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigUiForSetupWizardXL;->mConnectButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 155
    return-void
.end method

.method public setTitle(I)V
    .registers 4
    .parameter "id"

    .prologue
    .line 176
    const-string v0, "SetupWizard"

    const-string v1, "Ignoring setTitle"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .registers 4
    .parameter "title"

    .prologue
    .line 181
    const-string v0, "SetupWizard"

    const-string v1, "Ignoring setTitle"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    return-void
.end method
