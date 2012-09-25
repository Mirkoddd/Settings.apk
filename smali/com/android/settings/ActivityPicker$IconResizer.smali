.class Lcom/android/settings/ActivityPicker$IconResizer;
.super Ljava/lang/Object;
.source "ActivityPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ActivityPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IconResizer"
.end annotation


# instance fields
.field private final mCanvas:Landroid/graphics/Canvas;

.field private final mIconHeight:I

.field private final mIconWidth:I

.field private final mMetrics:Landroid/util/DisplayMetrics;

.field private final mOldBounds:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(IILandroid/util/DisplayMetrics;)V
    .registers 8
    .parameter "width"
    .parameter "height"
    .parameter "metrics"

    .prologue
    .line 353
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 350
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/settings/ActivityPicker$IconResizer;->mOldBounds:Landroid/graphics/Rect;

    .line 351
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Lcom/android/settings/ActivityPicker$IconResizer;->mCanvas:Landroid/graphics/Canvas;

    .line 354
    iget-object v0, p0, Lcom/android/settings/ActivityPicker$IconResizer;->mCanvas:Landroid/graphics/Canvas;

    new-instance v1, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v2, 0x4

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 357
    iput-object p3, p0, Lcom/android/settings/ActivityPicker$IconResizer;->mMetrics:Landroid/util/DisplayMetrics;

    .line 358
    iput p1, p0, Lcom/android/settings/ActivityPicker$IconResizer;->mIconWidth:I

    .line 359
    iput p2, p0, Lcom/android/settings/ActivityPicker$IconResizer;->mIconHeight:I

    .line 360
    return-void
.end method


# virtual methods
.method public createIconThumbnail(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .registers 24
    .parameter "icon"

    .prologue
    .line 375
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/ActivityPicker$IconResizer;->mIconWidth:I

    move/from16 v17, v0

    .line 376
    .local v17, width:I
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/settings/ActivityPicker$IconResizer;->mIconHeight:I

    .line 378
    .local v9, height:I
    if-nez p1, :cond_16

    .line 379
    new-instance v20, Lcom/android/settings/ActivityPicker$EmptyDrawable;

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-direct {v0, v1, v9}, Lcom/android/settings/ActivityPicker$EmptyDrawable;-><init>(II)V

    .line 450
    :goto_15
    return-object v20

    .line 383
    :cond_16
    :try_start_16
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/graphics/drawable/PaintDrawable;

    move/from16 v20, v0

    if-eqz v20, :cond_e2

    .line 384
    move-object/from16 v0, p1

    check-cast v0, Landroid/graphics/drawable/PaintDrawable;

    move-object v13, v0

    .line 385
    .local v13, painter:Landroid/graphics/drawable/PaintDrawable;
    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicWidth(I)V

    .line 386
    invoke-virtual {v13, v9}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicHeight(I)V

    .line 395
    .end local v13           #painter:Landroid/graphics/drawable/PaintDrawable;
    :cond_2b
    :goto_2b
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v12

    .line 396
    .local v12, iconWidth:I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v11

    .line 398
    .local v11, iconHeight:I
    if-lez v12, :cond_de

    if-lez v11, :cond_de

    .line 399
    move/from16 v0, v17

    if-lt v0, v12, :cond_3d

    if-ge v9, v11, :cond_123

    .line 400
    :cond_3d
    int-to-float v0, v12

    move/from16 v20, v0

    int-to-float v0, v11

    move/from16 v21, v0

    div-float v14, v20, v21

    .line 402
    .local v14, ratio:F
    if-le v12, v11, :cond_111

    .line 403
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v20, v0

    div-float v20, v20, v14

    move/from16 v0, v20

    float-to-int v9, v0

    .line 408
    :cond_51
    :goto_51
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v20

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_11f

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 410
    .local v7, c:Landroid/graphics/Bitmap$Config;
    :goto_5f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/ActivityPicker$IconResizer;->mIconWidth:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/ActivityPicker$IconResizer;->mIconHeight:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-static {v0, v1, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v16

    .line 411
    .local v16, thumb:Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/settings/ActivityPicker$IconResizer;->mCanvas:Landroid/graphics/Canvas;

    .line 412
    .local v8, canvas:Landroid/graphics/Canvas;
    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 418
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ActivityPicker$IconResizer;->mOldBounds:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 419
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/ActivityPicker$IconResizer;->mIconWidth:I

    move/from16 v20, v0

    sub-int v20, v20, v17

    div-int/lit8 v18, v20, 0x2

    .line 420
    .local v18, x:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/ActivityPicker$IconResizer;->mIconHeight:I

    move/from16 v20, v0

    sub-int v20, v20, v9

    div-int/lit8 v19, v20, 0x2

    .line 421
    .local v19, y:I
    add-int v20, v18, v17

    add-int v21, v19, v9

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 422
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 423
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ActivityPicker$IconResizer;->mOldBounds:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 425
    new-instance v10, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, v16

    invoke-direct {v10, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V
    :try_end_c7
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_c7} :catch_106

    .line 426
    .end local p1
    .local v10, icon:Landroid/graphics/drawable/Drawable;
    :try_start_c7
    move-object v0, v10

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ActivityPicker$IconResizer;->mMetrics:Landroid/util/DisplayMetrics;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(Landroid/util/DisplayMetrics;)V

    .line 427
    const/16 v20, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V
    :try_end_dc
    .catch Ljava/lang/Throwable; {:try_start_c7 .. :try_end_dc} :catch_1a0

    move-object/from16 p1, v10

    .end local v7           #c:Landroid/graphics/Bitmap$Config;
    .end local v8           #canvas:Landroid/graphics/Canvas;
    .end local v10           #icon:Landroid/graphics/drawable/Drawable;
    .end local v11           #iconHeight:I
    .end local v12           #iconWidth:I
    .end local v14           #ratio:F
    .end local v16           #thumb:Landroid/graphics/Bitmap;
    .end local v18           #x:I
    .end local v19           #y:I
    .restart local p1
    :cond_de
    :goto_de
    move-object/from16 v20, p1

    .line 450
    goto/16 :goto_15

    .line 387
    :cond_e2
    :try_start_e2
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/graphics/drawable/BitmapDrawable;

    move/from16 v20, v0

    if-eqz v20, :cond_2b

    .line 389
    move-object/from16 v0, p1

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    move-object v6, v0

    .line 390
    .local v6, bitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v6}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    .line 391
    .local v5, bitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v20

    if-nez v20, :cond_2b

    .line 392
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ActivityPicker$IconResizer;->mMetrics:Landroid/util/DisplayMetrics;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(Landroid/util/DisplayMetrics;)V
    :try_end_104
    .catch Ljava/lang/Throwable; {:try_start_e2 .. :try_end_104} :catch_106

    goto/16 :goto_2b

    .line 446
    .end local v5           #bitmap:Landroid/graphics/Bitmap;
    .end local v6           #bitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    :catch_106
    move-exception v15

    .line 447
    .local v15, t:Ljava/lang/Throwable;
    :goto_107
    new-instance p1, Lcom/android/settings/ActivityPicker$EmptyDrawable;

    .end local p1
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-direct {v0, v1, v9}, Lcom/android/settings/ActivityPicker$EmptyDrawable;-><init>(II)V

    .restart local p1
    goto :goto_de

    .line 404
    .end local v15           #t:Ljava/lang/Throwable;
    .restart local v11       #iconHeight:I
    .restart local v12       #iconWidth:I
    .restart local v14       #ratio:F
    :cond_111
    if-le v11, v12, :cond_51

    .line 405
    int-to-float v0, v9

    move/from16 v20, v0

    mul-float v20, v20, v14

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v17, v0

    goto/16 :goto_51

    .line 408
    :cond_11f
    :try_start_11f
    sget-object v7, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto/16 :goto_5f

    .line 428
    .end local v14           #ratio:F
    :cond_123
    move/from16 v0, v17

    if-ge v12, v0, :cond_de

    if-ge v11, v9, :cond_de

    .line 429
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 430
    .restart local v7       #c:Landroid/graphics/Bitmap$Config;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/ActivityPicker$IconResizer;->mIconWidth:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/ActivityPicker$IconResizer;->mIconHeight:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-static {v0, v1, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v16

    .line 431
    .restart local v16       #thumb:Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/settings/ActivityPicker$IconResizer;->mCanvas:Landroid/graphics/Canvas;

    .line 432
    .restart local v8       #canvas:Landroid/graphics/Canvas;
    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 433
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ActivityPicker$IconResizer;->mOldBounds:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 434
    sub-int v20, v17, v12

    div-int/lit8 v18, v20, 0x2

    .line 435
    .restart local v18       #x:I
    sub-int v20, v9, v11

    div-int/lit8 v19, v20, 0x2

    .line 436
    .restart local v19       #y:I
    add-int v20, v18, v12

    add-int v21, v19, v11

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 437
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 438
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ActivityPicker$IconResizer;->mOldBounds:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 440
    new-instance v10, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, v16

    invoke-direct {v10, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V
    :try_end_187
    .catch Ljava/lang/Throwable; {:try_start_11f .. :try_end_187} :catch_106

    .line 441
    .end local p1
    .restart local v10       #icon:Landroid/graphics/drawable/Drawable;
    :try_start_187
    move-object v0, v10

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ActivityPicker$IconResizer;->mMetrics:Landroid/util/DisplayMetrics;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(Landroid/util/DisplayMetrics;)V

    .line 442
    const/16 v20, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V
    :try_end_19c
    .catch Ljava/lang/Throwable; {:try_start_187 .. :try_end_19c} :catch_1a0

    move-object/from16 p1, v10

    .end local v10           #icon:Landroid/graphics/drawable/Drawable;
    .restart local p1
    goto/16 :goto_de

    .line 446
    .end local p1
    .restart local v10       #icon:Landroid/graphics/drawable/Drawable;
    :catch_1a0
    move-exception v15

    move-object/from16 p1, v10

    .end local v10           #icon:Landroid/graphics/drawable/Drawable;
    .restart local p1
    goto/16 :goto_107
.end method
