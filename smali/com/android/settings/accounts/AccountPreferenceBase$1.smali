.class Lcom/android/settings/accounts/AccountPreferenceBase$1;
.super Ljava/lang/Object;
.source "AccountPreferenceBase.java"

# interfaces
.implements Landroid/content/SyncStatusObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accounts/AccountPreferenceBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accounts/AccountPreferenceBase;


# direct methods
.method constructor <init>(Lcom/android/settings/accounts/AccountPreferenceBase;)V
    .registers 2
    .parameter

    .prologue
    .line 97
    iput-object p1, p0, Lcom/android/settings/accounts/AccountPreferenceBase$1;->this$0:Lcom/android/settings/accounts/AccountPreferenceBase;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStatusChanged(I)V
    .registers 4
    .parameter "which"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/settings/accounts/AccountPreferenceBase$1;->this$0:Lcom/android/settings/accounts/AccountPreferenceBase;

    #getter for: Lcom/android/settings/accounts/AccountPreferenceBase;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/settings/accounts/AccountPreferenceBase;->access$000(Lcom/android/settings/accounts/AccountPreferenceBase;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/settings/accounts/AccountPreferenceBase$1$1;

    invoke-direct {v1, p0}, Lcom/android/settings/accounts/AccountPreferenceBase$1$1;-><init>(Lcom/android/settings/accounts/AccountPreferenceBase$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 104
    return-void
.end method
