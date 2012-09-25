.class Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;
.super Ljava/lang/Object;
.source "BatteryHistoryChart.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fuelgauge/BatteryHistoryChart;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ChartData"
.end annotation


# instance fields
.field mColors:[I

.field mLastBin:I

.field mNumTicks:I

.field mPaints:[Landroid/graphics/Paint;

.field mTicks:[I


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 42
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method addTick(II)V
    .registers 6
    .parameter "x"
    .parameter "bin"

    .prologue
    .line 71
    iget v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;->mLastBin:I

    if-eq p2, v0, :cond_1c

    iget v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;->mNumTicks:I

    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;->mTicks:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1c

    .line 72
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;->mTicks:[I

    iget v1, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;->mNumTicks:I

    shl-int/lit8 v2, p2, 0x10

    or-int/2addr v2, p1

    aput v2, v0, v1

    .line 73
    iget v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;->mNumTicks:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;->mNumTicks:I

    .line 74
    iput p2, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;->mLastBin:I

    .line 76
    :cond_1c
    return-void
.end method

.method draw(Landroid/graphics/Canvas;II)V
    .registers 17
    .parameter "canvas"
    .parameter "top"
    .parameter "height"

    .prologue
    .line 85
    const/4 v9, 0x0

    .local v9, lastBin:I
    const/4 v10, 0x0

    .line 86
    .local v10, lastX:I
    add-int v7, p2, p3

    .line 87
    .local v7, bottom:I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_5
    iget v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;->mNumTicks:I

    if-ge v8, v0, :cond_2f

    .line 88
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;->mTicks:[I

    aget v11, v0, v8

    .line 89
    .local v11, tick:I
    const v0, 0xffff

    and-int v12, v11, v0

    .line 90
    .local v12, x:I
    const/high16 v0, -0x1

    and-int/2addr v0, v11

    shr-int/lit8 v6, v0, 0x10

    .line 91
    .local v6, bin:I
    if-eqz v9, :cond_2a

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;->mPaints:[Landroid/graphics/Paint;

    array-length v0, v0

    if-ge v9, v0, :cond_2a

    .line 92
    int-to-float v1, v10

    int-to-float v2, p2

    int-to-float v3, v12

    int-to-float v4, v7

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;->mPaints:[Landroid/graphics/Paint;

    aget-object v5, v0, v9

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 94
    :cond_2a
    move v9, v6

    .line 95
    move v10, v12

    .line 87
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 98
    .end local v6           #bin:I
    .end local v11           #tick:I
    .end local v12           #x:I
    :cond_2f
    return-void
.end method

.method finish(I)V
    .registers 3
    .parameter "width"

    .prologue
    .line 79
    iget v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;->mLastBin:I

    if-eqz v0, :cond_8

    .line 80
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;->addTick(II)V

    .line 82
    :cond_8
    return-void
.end method

.method init(I)V
    .registers 4
    .parameter "width"

    .prologue
    const/4 v1, 0x0

    .line 61
    if-lez p1, :cond_e

    .line 62
    mul-int/lit8 v0, p1, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;->mTicks:[I

    .line 66
    :goto_9
    iput v1, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;->mNumTicks:I

    .line 67
    iput v1, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;->mLastBin:I

    .line 68
    return-void

    .line 64
    :cond_e
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;->mTicks:[I

    goto :goto_9
.end method

.method setColors([I)V
    .registers 5
    .parameter "colors"

    .prologue
    .line 51
    invoke-virtual {p1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    iput-object v1, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;->mColors:[I

    .line 52
    array-length v1, p1

    new-array v1, v1, [Landroid/graphics/Paint;

    iput-object v1, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;->mPaints:[Landroid/graphics/Paint;

    .line 53
    const/4 v0, 0x0

    .local v0, i:I
    :goto_e
    array-length v1, p1

    if-ge v0, v1, :cond_2f

    .line 54
    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;->mPaints:[Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    aput-object v2, v1, v0

    .line 55
    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;->mPaints:[Landroid/graphics/Paint;

    aget-object v1, v1, v0

    aget v2, p1, v0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 56
    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;->mPaints:[Landroid/graphics/Paint;

    aget-object v1, v1, v0

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 53
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 58
    :cond_2f
    return-void
.end method
