.class Lcom/android/settings/ASensorSettings$SensorHandler;
.super Ljava/lang/Object;
.source "ASensorSettings.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ASensorSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SensorHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ASensorSettings;


# direct methods
.method private constructor <init>(Lcom/android/settings/ASensorSettings;)V
    .registers 2
    .parameter

    .prologue
    .line 193
    iput-object p1, p0, Lcom/android/settings/ASensorSettings$SensorHandler;->this$0:Lcom/android/settings/ASensorSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/ASensorSettings;Lcom/android/settings/ASensorSettings$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 193
    invoke-direct {p0, p1}, Lcom/android/settings/ASensorSettings$SensorHandler;-><init>(Lcom/android/settings/ASensorSettings;)V

    return-void
.end method

.method private changeAcceleroMeter(Landroid/hardware/Sensor;[F)V
    .registers 11
    .parameter "sensor"
    .parameter "values"

    .prologue
    const/high16 v7, 0x4000

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 212
    const/4 v2, 0x3

    new-array v0, v2, [F

    .line 213
    .local v0, data:[F
    const/high16 v1, 0x4120

    .line 215
    .local v1, m_Rev_Convert:F
    aget v2, p2, v4

    cmpg-float v2, v2, v6

    if-gez v2, :cond_3a

    .line 216
    aget v2, p2, v4

    aget v3, p2, v4

    mul-float/2addr v2, v3

    mul-float/2addr v2, v1

    neg-float v2, v2

    aput v2, v0, v4

    .line 220
    :goto_19
    aget v2, p2, v5

    cmpg-float v2, v2, v6

    if-gez v2, :cond_43

    .line 221
    aget v2, p2, v5

    aget v3, p2, v5

    mul-float/2addr v2, v3

    mul-float/2addr v2, v1

    neg-float v2, v2

    aput v2, v0, v5

    .line 226
    :goto_28
    invoke-static {}, Lcom/android/settings/ASensorSettings;->access$300()I

    move-result v2

    if-nez v2, :cond_4c

    .line 227
    aget v2, v0, v4

    sput v2, Lcom/android/settings/ASensorSettings;->mSampleDataX:F

    .line 228
    aget v2, v0, v5

    sput v2, Lcom/android/settings/ASensorSettings;->mSampleDataY:F

    .line 229
    invoke-static {}, Lcom/android/settings/ASensorSettings;->access$308()I

    .line 241
    :goto_39
    return-void

    .line 218
    :cond_3a
    aget v2, p2, v4

    aget v3, p2, v4

    mul-float/2addr v2, v3

    mul-float/2addr v2, v1

    aput v2, v0, v4

    goto :goto_19

    .line 223
    :cond_43
    aget v2, p2, v5

    aget v3, p2, v5

    mul-float/2addr v2, v3

    mul-float/2addr v2, v1

    aput v2, v0, v5

    goto :goto_28

    .line 231
    :cond_4c
    invoke-static {}, Lcom/android/settings/ASensorSettings;->access$304()I

    move-result v2

    const/4 v3, 0x6

    if-ge v2, v3, :cond_64

    .line 232
    sget v2, Lcom/android/settings/ASensorSettings;->mSampleDataX:F

    aget v3, v0, v4

    add-float/2addr v2, v3

    div-float/2addr v2, v7

    sput v2, Lcom/android/settings/ASensorSettings;->mSampleDataX:F

    .line 233
    sget v2, Lcom/android/settings/ASensorSettings;->mSampleDataY:F

    aget v3, v0, v5

    add-float/2addr v2, v3

    div-float/2addr v2, v7

    sput v2, Lcom/android/settings/ASensorSettings;->mSampleDataY:F

    goto :goto_39

    .line 236
    :cond_64
    invoke-static {v4}, Lcom/android/settings/ASensorSettings;->access$302(I)I

    .line 237
    iget-object v2, p0, Lcom/android/settings/ASensorSettings$SensorHandler;->this$0:Lcom/android/settings/ASensorSettings;

    #getter for: Lcom/android/settings/ASensorSettings;->mDrawView:Lcom/android/settings/ASensorSettings$ASensorSettingsView;
    invoke-static {v2}, Lcom/android/settings/ASensorSettings;->access$400(Lcom/android/settings/ASensorSettings;)Lcom/android/settings/ASensorSettings$ASensorSettingsView;

    move-result-object v2

    sget v3, Lcom/android/settings/ASensorSettings;->mSampleDataX:F

    sget v4, Lcom/android/settings/ASensorSettings;->mSampleDataY:F

    invoke-virtual {v2, v3, v4}, Lcom/android/settings/ASensorSettings$ASensorSettingsView;->setPoint(FF)V

    .line 238
    iget-object v2, p0, Lcom/android/settings/ASensorSettings$SensorHandler;->this$0:Lcom/android/settings/ASensorSettings;

    #getter for: Lcom/android/settings/ASensorSettings;->mDrawView:Lcom/android/settings/ASensorSettings$ASensorSettingsView;
    invoke-static {v2}, Lcom/android/settings/ASensorSettings;->access$400(Lcom/android/settings/ASensorSettings;)Lcom/android/settings/ASensorSettings$ASensorSettingsView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/ASensorSettings$ASensorSettingsView;->invalidate()V

    goto :goto_39
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 5
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 196
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    .line 199
    :cond_7
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 4
    .parameter "event"

    .prologue
    .line 202
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_12

    .line 209
    :goto_9
    return-void

    .line 204
    :pswitch_a
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-direct {p0, v0, v1}, Lcom/android/settings/ASensorSettings$SensorHandler;->changeAcceleroMeter(Landroid/hardware/Sensor;[F)V

    goto :goto_9

    .line 202
    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_a
    .end packed-switch
.end method
