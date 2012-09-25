.class public Lcom/android/settings/fmm/RemoteControls$SamsungAccount;
.super Landroid/preference/PreferenceFragment;
.source "RemoteControls.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fmm/RemoteControls;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SamsungAccount"
.end annotation


# instance fields
.field private authContext:Landroid/content/Context;

.field private mSamsungAdd:Landroid/widget/ImageView;

.field private mSamsungDescription:Landroid/accounts/AuthenticatorDescription;

.field private mSamsungSummary:Landroid/widget/TextView;

.field private mSamsungTitle:Landroid/widget/TextView;

.field private returnvalue_sa:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 162
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/fmm/RemoteControls$SamsungAccount;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 162
    iget v0, p0, Lcom/android/settings/fmm/RemoteControls$SamsungAccount;->returnvalue_sa:I

    return v0
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 13
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v8, 0x0

    .line 174
    invoke-virtual {p0}, Lcom/android/settings/fmm/RemoteControls$SamsungAccount;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/accounts/AccountManager;->getAuthenticatorTypes()[Landroid/accounts/AuthenticatorDescription;

    move-result-object v0

    .line 175
    .local v0, desc:[Landroid/accounts/AuthenticatorDescription;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_e
    array-length v5, v0

    if-ge v2, v5, :cond_21

    .line 176
    aget-object v5, v0, v2

    iget-object v5, v5, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    const-string v6, "com.osp.app.signin"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_83

    .line 177
    aget-object v5, v0, v2

    iput-object v5, p0, Lcom/android/settings/fmm/RemoteControls$SamsungAccount;->mSamsungDescription:Landroid/accounts/AuthenticatorDescription;

    .line 183
    :cond_21
    :try_start_21
    invoke-virtual {p0}, Lcom/android/settings/fmm/RemoteControls$SamsungAccount;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/fmm/RemoteControls$SamsungAccount;->mSamsungDescription:Landroid/accounts/AuthenticatorDescription;

    iget-object v6, v6, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/app/Activity;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/fmm/RemoteControls$SamsungAccount;->authContext:Landroid/content/Context;
    :try_end_30
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_21 .. :try_end_30} :catch_86

    .line 188
    :goto_30
    const v5, 0x7f040007

    invoke-virtual {p1, v5, p2, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 189
    .local v4, view:Landroid/view/View;
    const v5, 0x7f09000c

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 190
    .local v3, mSamsungIcon:Landroid/widget/ImageView;
    iget-object v5, p0, Lcom/android/settings/fmm/RemoteControls$SamsungAccount;->authContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/fmm/RemoteControls$SamsungAccount;->mSamsungDescription:Landroid/accounts/AuthenticatorDescription;

    iget v6, v6, Landroid/accounts/AuthenticatorDescription;->iconId:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 191
    const v5, 0x7f090014

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/settings/fmm/RemoteControls$SamsungAccount;->mSamsungTitle:Landroid/widget/TextView;

    .line 192
    const v5, 0x7f090015

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/settings/fmm/RemoteControls$SamsungAccount;->mSamsungSummary:Landroid/widget/TextView;

    .line 193
    const v5, 0x7f090016

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/android/settings/fmm/RemoteControls$SamsungAccount;->mSamsungAdd:Landroid/widget/ImageView;

    .line 194
    iget-object v5, p0, Lcom/android/settings/fmm/RemoteControls$SamsungAccount;->mSamsungAdd:Landroid/widget/ImageView;

    const v6, 0x7f02013a

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 195
    new-instance v5, Lcom/android/settings/fmm/RemoteControls$SamsungAccount$1;

    invoke-direct {v5, p0}, Lcom/android/settings/fmm/RemoteControls$SamsungAccount$1;-><init>(Lcom/android/settings/fmm/RemoteControls$SamsungAccount;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 207
    return-object v4

    .line 175
    .end local v3           #mSamsungIcon:Landroid/widget/ImageView;
    .end local v4           #view:Landroid/view/View;
    :cond_83
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 184
    :catch_86
    move-exception v1

    .line 185
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "RemoteControls"

    const-string v6, "No Package name for account type com.osp.app.signin"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_30
.end method

.method public onResume()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 212
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    .line 214
    invoke-virtual {p0}, Lcom/android/settings/fmm/RemoteControls$SamsungAccount;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 215
    .local v0, manager:Landroid/accounts/AccountManager;
    const-string v2, "com.osp.app.signin"

    invoke-virtual {v0, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    .line 216
    .local v1, samsungAccnts:[Landroid/accounts/Account;
    array-length v2, v1

    iput v2, p0, Lcom/android/settings/fmm/RemoteControls$SamsungAccount;->returnvalue_sa:I

    .line 217
    iget v2, p0, Lcom/android/settings/fmm/RemoteControls$SamsungAccount;->returnvalue_sa:I

    if-eqz v2, :cond_3d

    .line 218
    iget-object v2, p0, Lcom/android/settings/fmm/RemoteControls$SamsungAccount;->mSamsungTitle:Landroid/widget/TextView;

    aget-object v3, v1, v4

    iget-object v3, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 219
    iget-object v2, p0, Lcom/android/settings/fmm/RemoteControls$SamsungAccount;->mSamsungSummary:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings/fmm/RemoteControls$SamsungAccount;->authContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/fmm/RemoteControls$SamsungAccount;->mSamsungDescription:Landroid/accounts/AuthenticatorDescription;

    iget v4, v4, Landroid/accounts/AuthenticatorDescription;->labelId:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 220
    iget-object v2, p0, Lcom/android/settings/fmm/RemoteControls$SamsungAccount;->mSamsungAdd:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 226
    :goto_3c
    return-void

    .line 222
    :cond_3d
    iget-object v2, p0, Lcom/android/settings/fmm/RemoteControls$SamsungAccount;->mSamsungTitle:Landroid/widget/TextView;

    const v3, 0x7f070615

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 223
    iget-object v2, p0, Lcom/android/settings/fmm/RemoteControls$SamsungAccount;->mSamsungSummary:Landroid/widget/TextView;

    const v3, 0x7f07073b

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 224
    iget-object v2, p0, Lcom/android/settings/fmm/RemoteControls$SamsungAccount;->mSamsungAdd:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3c
.end method
