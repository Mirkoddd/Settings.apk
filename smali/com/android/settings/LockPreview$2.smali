.class Lcom/android/settings/LockPreview$2;
.super Ljava/lang/Object;
.source "LockPreview.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/LockPreview;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/LockPreview;


# direct methods
.method constructor <init>(Lcom/android/settings/LockPreview;)V
    .registers 2
    .parameter

    .prologue
    .line 126
    iput-object p1, p0, Lcom/android/settings/LockPreview$2;->this$0:Lcom/android/settings/LockPreview;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "v"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/settings/LockPreview$2;->this$0:Lcom/android/settings/LockPreview;

    invoke-virtual {v0}, Lcom/android/settings/LockPreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "clock_position"

    iget-object v2, p0, Lcom/android/settings/LockPreview$2;->this$0:Lcom/android/settings/LockPreview;

    #getter for: Lcom/android/settings/LockPreview;->position:I
    invoke-static {v2}, Lcom/android/settings/LockPreview;->access$200(Lcom/android/settings/LockPreview;)I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 129
    iget-object v0, p0, Lcom/android/settings/LockPreview$2;->this$0:Lcom/android/settings/LockPreview;

    invoke-virtual {v0}, Lcom/android/settings/LockPreview;->finish()V

    .line 130
    return-void
.end method
