.class Lcom/android/settings/accounts/AccountSyncSettings$3;
.super Ljava/lang/Object;
.source "AccountSyncSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/accounts/AccountSyncSettings;->initializeUi(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accounts/AccountSyncSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/accounts/AccountSyncSettings;)V
    .registers 2
    .parameter

    .prologue
    .line 213
    iput-object p1, p0, Lcom/android/settings/accounts/AccountSyncSettings$3;->this$0:Lcom/android/settings/accounts/AccountSyncSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 217
    iget-object v0, p0, Lcom/android/settings/accounts/AccountSyncSettings$3;->this$0:Lcom/android/settings/accounts/AccountSyncSettings;

    const/16 v1, 0x64

    #calls: Lcom/android/settings/accounts/AccountSyncSettings;->showDialog(I)V
    invoke-static {v0, v1}, Lcom/android/settings/accounts/AccountSyncSettings;->access$600(Lcom/android/settings/accounts/AccountSyncSettings;I)V

    .line 218
    return-void
.end method
