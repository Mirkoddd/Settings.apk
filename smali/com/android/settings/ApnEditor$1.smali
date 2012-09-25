.class Lcom/android/settings/ApnEditor$1;
.super Ljava/lang/Object;
.source "ApnEditor.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/ApnEditor;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ApnEditor;


# direct methods
.method constructor <init>(Lcom/android/settings/ApnEditor;)V
    .registers 2
    .parameter

    .prologue
    .line 773
    iput-object p1, p0, Lcom/android/settings/ApnEditor$1;->this$0:Lcom/android/settings/ApnEditor;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 775
    iget-object v0, p0, Lcom/android/settings/ApnEditor$1;->this$0:Lcom/android/settings/ApnEditor;

    invoke-virtual {v0}, Lcom/android/settings/ApnEditor;->finish()V

    .line 776
    return-void
.end method
