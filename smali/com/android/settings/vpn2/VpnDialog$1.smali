.class Lcom/android/settings/vpn2/VpnDialog$1;
.super Ljava/lang/Object;
.source "VpnDialog.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/vpn2/VpnDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/vpn2/VpnDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/vpn2/VpnDialog;)V
    .registers 2
    .parameter

    .prologue
    .line 90
    iput-object p1, p0, Lcom/android/settings/vpn2/VpnDialog$1;->this$0:Lcom/android/settings/vpn2/VpnDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .registers 5
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    .line 93
    if-eqz p2, :cond_10

    move-object v0, p1

    .line 95
    check-cast v0, Landroid/widget/EditText;

    .line 96
    .local v0, et:Landroid/widget/EditText;
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 98
    .end local v0           #et:Landroid/widget/EditText;
    :cond_10
    return-void
.end method
