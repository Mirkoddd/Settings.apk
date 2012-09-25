.class Lcom/android/settings/Display$1;
.super Ljava/lang/Object;
.source "Display.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/Display;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/Display;


# direct methods
.method constructor <init>(Lcom/android/settings/Display;)V
    .registers 2
    .parameter

    .prologue
    .line 115
    iput-object p1, p0, Lcom/android/settings/Display$1;->this$0:Lcom/android/settings/Display;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 8
    .parameter "av"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 118
    if-nez p3, :cond_12

    .line 119
    iget-object v0, p0, Lcom/android/settings/Display$1;->this$0:Lcom/android/settings/Display;

    #getter for: Lcom/android/settings/Display;->mCurConfig:Landroid/content/res/Configuration;
    invoke-static {v0}, Lcom/android/settings/Display;->access$000(Lcom/android/settings/Display;)Landroid/content/res/Configuration;

    move-result-object v0

    const/high16 v1, 0x3f40

    iput v1, v0, Landroid/content/res/Configuration;->fontScale:F

    .line 126
    :goto_c
    iget-object v0, p0, Lcom/android/settings/Display$1;->this$0:Lcom/android/settings/Display;

    #calls: Lcom/android/settings/Display;->updateFontScale()V
    invoke-static {v0}, Lcom/android/settings/Display;->access$100(Lcom/android/settings/Display;)V

    .line 127
    return-void

    .line 120
    :cond_12
    const/4 v0, 0x2

    if-ne p3, v0, :cond_20

    .line 121
    iget-object v0, p0, Lcom/android/settings/Display$1;->this$0:Lcom/android/settings/Display;

    #getter for: Lcom/android/settings/Display;->mCurConfig:Landroid/content/res/Configuration;
    invoke-static {v0}, Lcom/android/settings/Display;->access$000(Lcom/android/settings/Display;)Landroid/content/res/Configuration;

    move-result-object v0

    const/high16 v1, 0x3fa0

    iput v1, v0, Landroid/content/res/Configuration;->fontScale:F

    goto :goto_c

    .line 123
    :cond_20
    iget-object v0, p0, Lcom/android/settings/Display$1;->this$0:Lcom/android/settings/Display;

    #getter for: Lcom/android/settings/Display;->mCurConfig:Landroid/content/res/Configuration;
    invoke-static {v0}, Lcom/android/settings/Display;->access$000(Lcom/android/settings/Display;)Landroid/content/res/Configuration;

    move-result-object v0

    const/high16 v1, 0x3f80

    iput v1, v0, Landroid/content/res/Configuration;->fontScale:F

    goto :goto_c
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .registers 2
    .parameter "av"

    .prologue
    .line 130
    return-void
.end method
