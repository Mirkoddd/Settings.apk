.class Lcom/android/settings/ASensorSettings$ASensorSettingsView;
.super Landroid/view/View;
.source "ASensorSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ASensorSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ASensorSettingsView"
.end annotation


# instance fields
.field image:Landroid/graphics/drawable/Drawable;

.field mRadius:I

.field mSX:I

.field mSY:I

.field mState:I

.field final synthetic this$0:Lcom/android/settings/ASensorSettings;


# direct methods
.method public constructor <init>(Lcom/android/settings/ASensorSettings;Landroid/content/Context;)V
    .registers 5
    .parameter
    .parameter "context"

    .prologue
    .line 285
    iput-object p1, p0, Lcom/android/settings/ASensorSettings$ASensorSettingsView;->this$0:Lcom/android/settings/ASensorSettings;

    .line 286
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 278
    iget-object v0, p0, Lcom/android/settings/ASensorSettings$ASensorSettingsView;->this$0:Lcom/android/settings/ASensorSettings;

    #getter for: Lcom/android/settings/ASensorSettings;->CENTER_X:I
    invoke-static {v0}, Lcom/android/settings/ASensorSettings;->access$500(Lcom/android/settings/ASensorSettings;)I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/ASensorSettings$ASensorSettingsView;->this$0:Lcom/android/settings/ASensorSettings;

    #getter for: Lcom/android/settings/ASensorSettings;->ICON_RADIUS:I
    invoke-static {v1}, Lcom/android/settings/ASensorSettings;->access$600(Lcom/android/settings/ASensorSettings;)I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/settings/ASensorSettings$ASensorSettingsView;->mSX:I

    .line 279
    iget-object v0, p0, Lcom/android/settings/ASensorSettings$ASensorSettingsView;->this$0:Lcom/android/settings/ASensorSettings;

    #getter for: Lcom/android/settings/ASensorSettings;->CENTER_Y:I
    invoke-static {v0}, Lcom/android/settings/ASensorSettings;->access$700(Lcom/android/settings/ASensorSettings;)I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/ASensorSettings$ASensorSettingsView;->this$0:Lcom/android/settings/ASensorSettings;

    #getter for: Lcom/android/settings/ASensorSettings;->ICON_RADIUS:I
    invoke-static {v1}, Lcom/android/settings/ASensorSettings;->access$600(Lcom/android/settings/ASensorSettings;)I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/settings/ASensorSettings$ASensorSettingsView;->mSY:I

    .line 280
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/settings/ASensorSettings$ASensorSettingsView;->mState:I

    .line 283
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/ASensorSettings$ASensorSettingsView;->image:Landroid/graphics/drawable/Drawable;

    .line 287
    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/ASensorSettings$ASensorSettingsView;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 277
    invoke-direct {p0, p1}, Lcom/android/settings/ASensorSettings$ASensorSettingsView;->updateState(I)V

    return-void
.end method

.method private updateState(I)V
    .registers 2
    .parameter "state"

    .prologue
    .line 290
    iput p1, p0, Lcom/android/settings/ASensorSettings$ASensorSettingsView;->mState:I

    .line 291
    return-void
.end method


# virtual methods
.method public getPoint([F)[F
    .registers 7
    .parameter "position"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 320
    iget v0, p0, Lcom/android/settings/ASensorSettings$ASensorSettingsView;->mSX:I

    iget-object v1, p0, Lcom/android/settings/ASensorSettings$ASensorSettingsView;->this$0:Lcom/android/settings/ASensorSettings;

    #getter for: Lcom/android/settings/ASensorSettings;->ICON_RADIUS:I
    invoke-static {v1}, Lcom/android/settings/ASensorSettings;->access$600(Lcom/android/settings/ASensorSettings;)I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    aput v0, p1, v3

    .line 321
    iget v0, p0, Lcom/android/settings/ASensorSettings$ASensorSettingsView;->mSY:I

    iget-object v1, p0, Lcom/android/settings/ASensorSettings$ASensorSettingsView;->this$0:Lcom/android/settings/ASensorSettings;

    #getter for: Lcom/android/settings/ASensorSettings;->ICON_RADIUS:I
    invoke-static {v1}, Lcom/android/settings/ASensorSettings;->access$600(Lcom/android/settings/ASensorSettings;)I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    aput v0, p1, v4

    .line 322
    const-string v0, "ASensorSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRect position[0]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget v2, p1, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", position[1]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget v2, p1, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    return-object p1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 8
    .parameter "canvas"

    .prologue
    const-wide/high16 v4, 0x4000

    .line 327
    iget v0, p0, Lcom/android/settings/ASensorSettings$ASensorSettingsView;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5f

    .line 328
    invoke-virtual {p0}, Lcom/android/settings/ASensorSettings$ASensorSettingsView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02018a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/ASensorSettings$ASensorSettingsView;->image:Landroid/graphics/drawable/Drawable;

    .line 336
    :cond_14
    :goto_14
    iget-object v0, p0, Lcom/android/settings/ASensorSettings$ASensorSettingsView;->image:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/android/settings/ASensorSettings$ASensorSettingsView;->mSX:I

    iget v2, p0, Lcom/android/settings/ASensorSettings$ASensorSettingsView;->mSY:I

    iget v3, p0, Lcom/android/settings/ASensorSettings$ASensorSettingsView;->mSX:I

    iget-object v4, p0, Lcom/android/settings/ASensorSettings$ASensorSettingsView;->this$0:Lcom/android/settings/ASensorSettings;

    #getter for: Lcom/android/settings/ASensorSettings;->ICON_RADIUS:I
    invoke-static {v4}, Lcom/android/settings/ASensorSettings;->access$600(Lcom/android/settings/ASensorSettings;)I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    iget v4, p0, Lcom/android/settings/ASensorSettings$ASensorSettingsView;->mSY:I

    iget-object v5, p0, Lcom/android/settings/ASensorSettings$ASensorSettingsView;->this$0:Lcom/android/settings/ASensorSettings;

    #getter for: Lcom/android/settings/ASensorSettings;->ICON_RADIUS:I
    invoke-static {v5}, Lcom/android/settings/ASensorSettings;->access$600(Lcom/android/settings/ASensorSettings;)I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 338
    iget-object v0, p0, Lcom/android/settings/ASensorSettings$ASensorSettingsView;->image:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 339
    const-string v0, "ASensorSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDraw mSX: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/ASensorSettings$ASensorSettingsView;->mSX:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mSY: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/ASensorSettings$ASensorSettingsView;->mSY:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    return-void

    .line 330
    :cond_5f
    iget v0, p0, Lcom/android/settings/ASensorSettings$ASensorSettingsView;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_14

    .line 332
    sget v0, Lcom/android/settings/ASensorSettings;->mAniGapX:F

    sget v1, Lcom/android/settings/ASensorSettings;->mAniCount:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    sget v2, Lcom/android/settings/ASensorSettings;->mAniGapY:F

    sget v3, Lcom/android/settings/ASensorSettings;->mAniCount:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/android/settings/ASensorSettings$ASensorSettingsView;->mRadius:I

    .line 333
    iget-object v0, p0, Lcom/android/settings/ASensorSettings$ASensorSettingsView;->this$0:Lcom/android/settings/ASensorSettings;

    #getter for: Lcom/android/settings/ASensorSettings;->CENTER_X:I
    invoke-static {v0}, Lcom/android/settings/ASensorSettings;->access$500(Lcom/android/settings/ASensorSettings;)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/settings/ASensorSettings$ASensorSettingsView;->this$0:Lcom/android/settings/ASensorSettings;

    #getter for: Lcom/android/settings/ASensorSettings;->CENTER_Y:I
    invoke-static {v1}, Lcom/android/settings/ASensorSettings;->access$700(Lcom/android/settings/ASensorSettings;)I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/android/settings/ASensorSettings$ASensorSettingsView;->mRadius:I

    iget-object v3, p0, Lcom/android/settings/ASensorSettings$ASensorSettingsView;->this$0:Lcom/android/settings/ASensorSettings;

    #getter for: Lcom/android/settings/ASensorSettings;->ICON_RADIUS:I
    invoke-static {v3}, Lcom/android/settings/ASensorSettings;->access$600(Lcom/android/settings/ASensorSettings;)I

    move-result v3

    add-int/2addr v2, v3

    sget v3, Lcom/android/settings/ASensorSettings;->mAniCount:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-static {}, Lcom/android/settings/ASensorSettings;->access$900()Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 334
    const-string v0, "ASensorSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDraw mRadius "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/ASensorSettings$ASensorSettingsView;->mRadius:I

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
    .line 344
    const/16 v0, 0x20

    if-lt p1, v0, :cond_12

    .line 345
    invoke-virtual {p0}, Lcom/android/settings/ASensorSettings$ASensorSettingsView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02018e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/ASensorSettings$ASensorSettingsView;->image:Landroid/graphics/drawable/Drawable;

    .line 350
    :goto_11
    return-void

    .line 346
    :cond_12
    const/16 v0, 0x10

    if-lt p1, v0, :cond_24

    .line 347
    invoke-virtual {p0}, Lcom/android/settings/ASensorSettings$ASensorSettingsView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02018d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/ASensorSettings$ASensorSettingsView;->image:Landroid/graphics/drawable/Drawable;

    goto :goto_11

    .line 349
    :cond_24
    invoke-virtual {p0}, Lcom/android/settings/ASensorSettings$ASensorSettingsView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02018c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/ASensorSettings$ASensorSettingsView;->image:Landroid/graphics/drawable/Drawable;

    goto :goto_11
.end method

.method public setPoint(FF)V
    .registers 11
    .parameter "x"
    .parameter "y"

    .prologue
    const-wide/high16 v6, 0x4000

    .line 294
    invoke-virtual {p0}, Lcom/android/settings/ASensorSettings$ASensorSettingsView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 295
    const-string v2, "ASensorSettings"

    const-string v3, "values are set for tablet"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    move v1, p1

    .line 297
    .local v1, temp:F
    move p1, p2

    .line 298
    move p2, v1

    .line 302
    .end local v1           #temp:F
    :cond_16
    const-string v2, "ASensorSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setRect x: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", y: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    float-to-double v2, p1

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    float-to-double v4, p2

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v0, v2

    .line 304
    .local v0, lengthPoint:F
    iget-object v2, p0, Lcom/android/settings/ASensorSettings$ASensorSettingsView;->this$0:Lcom/android/settings/ASensorSettings;

    #getter for: Lcom/android/settings/ASensorSettings;->CIRCLE_RADIUS:I
    invoke-static {v2}, Lcom/android/settings/ASensorSettings;->access$800(Lcom/android/settings/ASensorSettings;)I

    move-result v2

    int-to-float v2, v2

    cmpl-float v2, v0, v2

    if-lez v2, :cond_67

    .line 305
    iget-object v2, p0, Lcom/android/settings/ASensorSettings$ASensorSettingsView;->this$0:Lcom/android/settings/ASensorSettings;

    #getter for: Lcom/android/settings/ASensorSettings;->CIRCLE_RADIUS:I
    invoke-static {v2}, Lcom/android/settings/ASensorSettings;->access$800(Lcom/android/settings/ASensorSettings;)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p1

    div-float p1, v2, v0

    .line 306
    iget-object v2, p0, Lcom/android/settings/ASensorSettings$ASensorSettingsView;->this$0:Lcom/android/settings/ASensorSettings;

    #getter for: Lcom/android/settings/ASensorSettings;->CIRCLE_RADIUS:I
    invoke-static {v2}, Lcom/android/settings/ASensorSettings;->access$800(Lcom/android/settings/ASensorSettings;)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p2

    div-float p2, v2, v0

    .line 308
    :cond_67
    iget-object v2, p0, Lcom/android/settings/ASensorSettings$ASensorSettingsView;->this$0:Lcom/android/settings/ASensorSettings;

    #getter for: Lcom/android/settings/ASensorSettings;->CENTER_X:I
    invoke-static {v2}, Lcom/android/settings/ASensorSettings;->access$500(Lcom/android/settings/ASensorSettings;)I

    move-result v2

    iget-object v3, p0, Lcom/android/settings/ASensorSettings$ASensorSettingsView;->this$0:Lcom/android/settings/ASensorSettings;

    #getter for: Lcom/android/settings/ASensorSettings;->ICON_RADIUS:I
    invoke-static {v3}, Lcom/android/settings/ASensorSettings;->access$600(Lcom/android/settings/ASensorSettings;)I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    add-float/2addr v2, p1

    float-to-int v2, v2

    iput v2, p0, Lcom/android/settings/ASensorSettings$ASensorSettingsView;->mSX:I

    .line 309
    invoke-virtual {p0}, Lcom/android/settings/ASensorSettings$ASensorSettingsView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_96

    .line 310
    iget-object v2, p0, Lcom/android/settings/ASensorSettings$ASensorSettingsView;->this$0:Lcom/android/settings/ASensorSettings;

    #getter for: Lcom/android/settings/ASensorSettings;->CENTER_Y:I
    invoke-static {v2}, Lcom/android/settings/ASensorSettings;->access$700(Lcom/android/settings/ASensorSettings;)I

    move-result v2

    iget-object v3, p0, Lcom/android/settings/ASensorSettings$ASensorSettingsView;->this$0:Lcom/android/settings/ASensorSettings;

    #getter for: Lcom/android/settings/ASensorSettings;->ICON_RADIUS:I
    invoke-static {v3}, Lcom/android/settings/ASensorSettings;->access$600(Lcom/android/settings/ASensorSettings;)I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    add-float/2addr v2, p2

    float-to-int v2, v2

    iput v2, p0, Lcom/android/settings/ASensorSettings$ASensorSettingsView;->mSY:I

    .line 317
    :goto_95
    return-void

    .line 313
    :cond_96
    iget-object v2, p0, Lcom/android/settings/ASensorSettings$ASensorSettingsView;->this$0:Lcom/android/settings/ASensorSettings;

    #getter for: Lcom/android/settings/ASensorSettings;->CENTER_Y:I
    invoke-static {v2}, Lcom/android/settings/ASensorSettings;->access$700(Lcom/android/settings/ASensorSettings;)I

    move-result v2

    iget-object v3, p0, Lcom/android/settings/ASensorSettings$ASensorSettingsView;->this$0:Lcom/android/settings/ASensorSettings;

    #getter for: Lcom/android/settings/ASensorSettings;->ICON_RADIUS:I
    invoke-static {v3}, Lcom/android/settings/ASensorSettings;->access$600(Lcom/android/settings/ASensorSettings;)I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    sub-float/2addr v2, p2

    float-to-int v2, v2

    iput v2, p0, Lcom/android/settings/ASensorSettings$ASensorSettingsView;->mSY:I

    goto :goto_95
.end method
