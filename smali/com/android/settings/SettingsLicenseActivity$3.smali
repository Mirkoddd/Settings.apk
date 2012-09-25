.class Lcom/android/settings/SettingsLicenseActivity$3;
.super Landroid/webkit/WebViewClient;
.source "SettingsLicenseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/SettingsLicenseActivity;->showPageOfText(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SettingsLicenseActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/SettingsLicenseActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 224
    iput-object p1, p0, Lcom/android/settings/SettingsLicenseActivity$3;->this$0:Lcom/android/settings/SettingsLicenseActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 4
    .parameter "view"
    .parameter "url"

    .prologue
    .line 229
    iget-object v0, p0, Lcom/android/settings/SettingsLicenseActivity$3;->this$0:Lcom/android/settings/SettingsLicenseActivity;

    #getter for: Lcom/android/settings/SettingsLicenseActivity;->mSpinnerDlg:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/settings/SettingsLicenseActivity;->access$200(Lcom/android/settings/SettingsLicenseActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/android/settings/SettingsLicenseActivity$3;->this$0:Lcom/android/settings/SettingsLicenseActivity;

    #getter for: Lcom/android/settings/SettingsLicenseActivity;->mSpinnerDlg:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/settings/SettingsLicenseActivity;->access$200(Lcom/android/settings/SettingsLicenseActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 230
    iget-object v0, p0, Lcom/android/settings/SettingsLicenseActivity$3;->this$0:Lcom/android/settings/SettingsLicenseActivity;

    #getter for: Lcom/android/settings/SettingsLicenseActivity;->mSpinnerDlg:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/settings/SettingsLicenseActivity;->access$200(Lcom/android/settings/SettingsLicenseActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 234
    :cond_1d
    iget-object v0, p0, Lcom/android/settings/SettingsLicenseActivity$3;->this$0:Lcom/android/settings/SettingsLicenseActivity;

    #getter for: Lcom/android/settings/SettingsLicenseActivity;->mTextDlg:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/settings/SettingsLicenseActivity;->access$300(Lcom/android/settings/SettingsLicenseActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_2e

    .line 235
    iget-object v0, p0, Lcom/android/settings/SettingsLicenseActivity$3;->this$0:Lcom/android/settings/SettingsLicenseActivity;

    #getter for: Lcom/android/settings/SettingsLicenseActivity;->mTextDlg:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/settings/SettingsLicenseActivity;->access$300(Lcom/android/settings/SettingsLicenseActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 237
    :cond_2e
    return-void
.end method
