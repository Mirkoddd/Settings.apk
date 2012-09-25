.class Lcom/android/settings/CryptKeeper$6;
.super Ljava/lang/Object;
.source "CryptKeeper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/CryptKeeper;->passwordEntryInit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/CryptKeeper;

.field final synthetic val$imm:Landroid/view/inputmethod/InputMethodManager;


# direct methods
.method constructor <init>(Lcom/android/settings/CryptKeeper;Landroid/view/inputmethod/InputMethodManager;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 496
    iput-object p1, p0, Lcom/android/settings/CryptKeeper$6;->this$0:Lcom/android/settings/CryptKeeper;

    iput-object p2, p0, Lcom/android/settings/CryptKeeper$6;->val$imm:Landroid/view/inputmethod/InputMethodManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 498
    invoke-static {}, Lcom/android/settings/CryptKeeper;->access$200()I

    move-result v0

    if-nez v0, :cond_11

    .line 499
    invoke-static {}, Lcom/android/settings/CryptKeeper;->access$1200()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_12

    .line 500
    invoke-static {v2}, Lcom/android/settings/CryptKeeper;->access$1202(Z)Z

    .line 505
    :cond_11
    :goto_11
    return-void

    .line 502
    :cond_12
    iget-object v0, p0, Lcom/android/settings/CryptKeeper$6;->val$imm:Landroid/view/inputmethod/InputMethodManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInputUnchecked(ILandroid/os/ResultReceiver;)V

    goto :goto_11
.end method
