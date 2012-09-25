.class public Lcom/android/settings/fmm/AlertRecipients;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "AlertRecipients.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field private PlusLayout:Lcom/android/settings/fmm/RecipientsPlusView;

.field private mContent:Landroid/widget/LinearLayout;

.field private mMessage:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/fmm/AlertRecipients;)Lcom/android/settings/fmm/RecipientsPlusView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/settings/fmm/AlertRecipients;->PlusLayout:Lcom/android/settings/fmm/RecipientsPlusView;

    return-object v0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 5
    .parameter "arg0"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/settings/fmm/AlertRecipients;->mMessage:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    const/16 v1, 0x12

    if-ne v0, v1, :cond_1d

    .line 114
    invoke-virtual {p0}, Lcom/android/settings/fmm/AlertRecipients;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f070747

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 115
    :cond_1d
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 121
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 7
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 101
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 103
    const/4 v0, -0x1

    if-eq p2, v0, :cond_7

    .line 109
    :cond_6
    :goto_6
    return-void

    .line 106
    :cond_7
    const/16 v0, 0x65

    if-ne p1, v0, :cond_6

    .line 107
    iget-object v0, p0, Lcom/android/settings/fmm/AlertRecipients;->PlusLayout:Lcom/android/settings/fmm/RecipientsPlusView;

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "result"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/fmm/RecipientsPlusView;->SetContactNumber(Ljava/util/ArrayList;)V

    goto :goto_6
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 10
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x0

    .line 52
    const v3, 0x7f040085

    invoke-virtual {p1, v3, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 54
    .local v2, view:Landroid/view/View;
    const v3, 0x7f0901b4

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/settings/fmm/AlertRecipients;->mContent:Landroid/widget/LinearLayout;

    .line 56
    const v3, 0x7f0901b5

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 57
    .local v1, buttonOk:Landroid/widget/Button;
    new-instance v3, Lcom/android/settings/fmm/AlertRecipients$1;

    invoke-direct {v3, p0}, Lcom/android/settings/fmm/AlertRecipients$1;-><init>(Lcom/android/settings/fmm/AlertRecipients;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    const v3, 0x7f04004a

    iget-object v4, p0, Lcom/android/settings/fmm/AlertRecipients;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/settings/fmm/RecipientsPlusView;

    iput-object v3, p0, Lcom/android/settings/fmm/AlertRecipients;->PlusLayout:Lcom/android/settings/fmm/RecipientsPlusView;

    .line 67
    iget-object v3, p0, Lcom/android/settings/fmm/AlertRecipients;->mContent:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/android/settings/fmm/AlertRecipients;->PlusLayout:Lcom/android/settings/fmm/RecipientsPlusView;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 69
    const v3, 0x7f0900ba

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 70
    .local v0, ContactButton:Landroid/widget/ImageButton;
    new-instance v3, Lcom/android/settings/fmm/AlertRecipients$2;

    invoke-direct {v3, p0}, Lcom/android/settings/fmm/AlertRecipients$2;-><init>(Lcom/android/settings/fmm/AlertRecipients;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    const v3, 0x7f0900bc

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/android/settings/fmm/AlertRecipients;->mMessage:Landroid/widget/EditText;

    .line 86
    iget-object v3, p0, Lcom/android/settings/fmm/AlertRecipients;->mMessage:Landroid/widget/EditText;

    invoke-virtual {v3, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 88
    return-object v2
.end method

.method public onDestroyView()V
    .registers 4

    .prologue
    .line 93
    iget-object v1, p0, Lcom/android/settings/fmm/AlertRecipients;->mMessage:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    .line 94
    invoke-virtual {p0}, Lcom/android/settings/fmm/AlertRecipients;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 95
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/android/settings/fmm/AlertRecipients;->mMessage:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 96
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroyView()V

    .line 97
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 126
    return-void
.end method
