.class Lcom/android/settings/GSensorSettings$GSensorSettingsView;
.super Landroid/view/View;
.source "GSensorSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/GSensorSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GSensorSettingsView"
.end annotation


# instance fields
.field mImage:Landroid/graphics/drawable/Drawable;

.field mRadius:I

.field mSX:I

.field mSY:I

.field mState:I

.field final synthetic this$0:Lcom/android/settings/GSensorSettings;


# direct methods
.method public constructor <init>(Lcom/android/settings/GSensorSettings;Landroid/content/Context;)V
    .registers 5
    .parameter
    .parameter "context"

    .prologue
    .line 212
    iput-object p1, p0, Lcom/android/settings/GSensorSettings$GSensorSettingsView;->this$0:Lcom/android/settings/GSensorSettings;

    .line 213
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 202
    iget-object v0, p0, Lcom/android/settings/GSensorSettings$GSensorSettingsView;->this$0:Lcom/android/settings/GSensorSettings;

    #getter for: Lcom/android/settings/GSensorSettings;->CENTER_X:I
    invoke-static {v0}, Lcom/android/settings/GSensorSettings;->access$300(Lcom/android/settings/GSensorSettings;)I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/GSensorSettings$GSensorSettingsView;->this$0:Lcom/android/settings/GSensorSettings;

    #getter for: Lcom/android/settings/GSensorSettings;->ICON_RADIUS:I
    invoke-static {v1}, Lcom/android/settings/GSensorSettings;->access$400(Lcom/android/settings/GSensorSettings;)I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/settings/GSensorSettings$GSensorSettingsView;->mSX:I

    .line 204
    iget-object v0, p0, Lcom/android/settings/GSensorSettings$GSensorSettingsView;->this$0:Lcom/android/settings/GSensorSettings;

    #getter for: Lcom/android/settings/GSensorSettings;->CENTER_Y:I
    invoke-static {v0}, Lcom/android/settings/GSensorSettings;->access$500(Lcom/android/settings/GSensorSettings;)I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/GSensorSettings$GSensorSettingsView;->this$0:Lcom/android/settings/GSensorSettings;

    #getter for: Lcom/android/settings/GSensorSettings;->ICON_RADIUS:I
    invoke-static {v1}, Lcom/android/settings/GSensorSettings;->access$400(Lcom/android/settings/GSensorSettings;)I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/settings/GSensorSettings$GSensorSettingsView;->mSY:I

    .line 206
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/settings/GSensorSettings$GSensorSettingsView;->mState:I

    .line 210
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/GSensorSettings$GSensorSettingsView;->mImage:Landroid/graphics/drawable/Drawable;

    .line 214
    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/GSensorSettings$GSensorSettingsView;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 201
    invoke-direct {p0, p1}, Lcom/android/settings/GSensorSettings$GSensorSettingsView;->updateState(I)V

    return-void
.end method

.method private updateState(I)V
    .registers 2
    .parameter "state"

    .prologue
    .line 217
    iput p1, p0, Lcom/android/settings/GSensorSettings$GSensorSettingsView;->mState:I

    .line 218
    return-void
.end method


# virtual methods
.method public getPoint([F)[F
    .registers 5
    .parameter "position"

    .prologue
    .line 232
    const/4 v0, 0x0

    iget v1, p0, Lcom/android/settings/GSensorSettings$GSensorSettingsView;->mSX:I

    iget-object v2, p0, Lcom/android/settings/GSensorSettings$GSensorSettingsView;->this$0:Lcom/android/settings/GSensorSettings;

    #getter for: Lcom/android/settings/GSensorSettings;->ICON_RADIUS:I
    invoke-static {v2}, Lcom/android/settings/GSensorSettings;->access$400(Lcom/android/settings/GSensorSettings;)I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    aput v1, p1, v0

    .line 233
    const/4 v0, 0x1

    iget v1, p0, Lcom/android/settings/GSensorSettings$GSensorSettingsView;->mSY:I

    iget-object v2, p0, Lcom/android/settings/GSensorSettings$GSensorSettingsView;->this$0:Lcom/android/settings/GSensorSettings;

    #getter for: Lcom/android/settings/GSensorSettings;->ICON_RADIUS:I
    invoke-static {v2}, Lcom/android/settings/GSensorSettings;->access$400(Lcom/android/settings/GSensorSettings;)I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    aput v1, p1, v0

    .line 236
    return-object p1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 8
    .parameter "canvas"

    .prologue
    const-wide/high16 v4, 0x4000

    .line 241
    iget v0, p0, Lcom/android/settings/GSensorSettings$GSensorSettingsView;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_39

    .line 242
    invoke-virtual {p0}, Lcom/android/settings/GSensorSettings$GSensorSettingsView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02018a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/GSensorSettings$GSensorSettingsView;->mImage:Landroid/graphics/drawable/Drawable;

    .line 252
    :cond_14
    :goto_14
    iget-object v0, p0, Lcom/android/settings/GSensorSettings$GSensorSettingsView;->mImage:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/android/settings/GSensorSettings$GSensorSettingsView;->mSX:I

    iget v2, p0, Lcom/android/settings/GSensorSettings$GSensorSettingsView;->mSY:I

    iget v3, p0, Lcom/android/settings/GSensorSettings$GSensorSettingsView;->mSX:I

    iget-object v4, p0, Lcom/android/settings/GSensorSettings$GSensorSettingsView;->this$0:Lcom/android/settings/GSensorSettings;

    #getter for: Lcom/android/settings/GSensorSettings;->ICON_RADIUS:I
    invoke-static {v4}, Lcom/android/settings/GSensorSettings;->access$400(Lcom/android/settings/GSensorSettings;)I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    iget v4, p0, Lcom/android/settings/GSensorSettings$GSensorSettingsView;->mSY:I

    iget-object v5, p0, Lcom/android/settings/GSensorSettings$GSensorSettingsView;->this$0:Lcom/android/settings/GSensorSettings;

    #getter for: Lcom/android/settings/GSensorSettings;->ICON_RADIUS:I
    invoke-static {v5}, Lcom/android/settings/GSensorSettings;->access$400(Lcom/android/settings/GSensorSettings;)I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 253
    iget-object v0, p0, Lcom/android/settings/GSensorSettings$GSensorSettingsView;->mImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 255
    return-void

    .line 243
    :cond_39
    iget v0, p0, Lcom/android/settings/GSensorSettings$GSensorSettingsView;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_14

    .line 246
    sget v0, Lcom/android/settings/GSensorSettings;->mAniGapX:F

    sget v1, Lcom/android/settings/GSensorSettings;->mAniCount:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    sget v2, Lcom/android/settings/GSensorSettings;->mAniGapY:F

    sget v3, Lcom/android/settings/GSensorSettings;->mAniCount:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/android/settings/GSensorSettings$GSensorSettingsView;->mRadius:I

    .line 248
    iget-object v0, p0, Lcom/android/settings/GSensorSettings$GSensorSettingsView;->this$0:Lcom/android/settings/GSensorSettings;

    #getter for: Lcom/android/settings/GSensorSettings;->CENTER_X:I
    invoke-static {v0}, Lcom/android/settings/GSensorSettings;->access$300(Lcom/android/settings/GSensorSettings;)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/settings/GSensorSettings$GSensorSettingsView;->this$0:Lcom/android/settings/GSensorSettings;

    #getter for: Lcom/android/settings/GSensorSettings;->CENTER_Y:I
    invoke-static {v1}, Lcom/android/settings/GSensorSettings;->access$500(Lcom/android/settings/GSensorSettings;)I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/android/settings/GSensorSettings$GSensorSettingsView;->mRadius:I

    iget-object v3, p0, Lcom/android/settings/GSensorSettings$GSensorSettingsView;->this$0:Lcom/android/settings/GSensorSettings;

    #getter for: Lcom/android/settings/GSensorSettings;->ICON_RADIUS:I
    invoke-static {v3}, Lcom/android/settings/GSensorSettings;->access$400(Lcom/android/settings/GSensorSettings;)I

    move-result v3

    add-int/2addr v2, v3

    sget v3, Lcom/android/settings/GSensorSettings;->mAniCount:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-static {}, Lcom/android/settings/GSensorSettings;->access$700()Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 250
    const-string v0, "GSensorSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDraw mRadius "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/GSensorSettings$GSensorSettingsView;->mRadius:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_14
.end method

.method protected setImage(I)V
    .registers 4
    .parameter "count"

    .prologue
    .line 258
    const/16 v0, 0x20

    if-lt p1, v0, :cond_12

    .line 259
    invoke-virtual {p0}, Lcom/android/settings/GSensorSettings$GSensorSettingsView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02018e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/GSensorSettings$GSensorSettingsView;->mImage:Landroid/graphics/drawable/Drawable;

    .line 264
    :goto_11
    return-void

    .line 260
    :cond_12
    const/16 v0, 0x10

    if-lt p1, v0, :cond_24

    .line 261
    invoke-virtual {p0}, Lcom/android/settings/GSensorSettings$GSensorSettingsView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02018d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/GSensorSettings$GSensorSettingsView;->mImage:Landroid/graphics/drawable/Drawable;

    goto :goto_11

    .line 263
    :cond_24
    invoke-virtual {p0}, Lcom/android/settings/GSensorSettings$GSensorSettingsView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02018c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/GSensorSettings$GSensorSettingsView;->mImage:Landroid/graphics/drawable/Drawable;

    goto :goto_11
.end method
