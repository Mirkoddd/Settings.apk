.class Lcom/android/settings/motion/DoubleTapTryActually$1;
.super Ljava/lang/Object;
.source "DoubleTapTryActually.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/motion/DoubleTapTryActually;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/motion/DoubleTapTryActually;


# direct methods
.method constructor <init>(Lcom/android/settings/motion/DoubleTapTryActually;)V
    .registers 2
    .parameter

    .prologue
    .line 58
    iput-object p1, p0, Lcom/android/settings/motion/DoubleTapTryActually$1;->this$0:Lcom/android/settings/motion/DoubleTapTryActually;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "view"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/settings/motion/DoubleTapTryActually$1;->this$0:Lcom/android/settings/motion/DoubleTapTryActually;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/motion/DoubleTapTryActually;->createDialog(I)V

    .line 61
    return-void
.end method
