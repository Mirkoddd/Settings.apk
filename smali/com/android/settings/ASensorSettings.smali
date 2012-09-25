.class public Lcom/android/settings/ASensorSettings;
.super Landroid/app/Activity;
.source "ASensorSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/ASensorSettings$1;,
        Lcom/android/settings/ASensorSettings$SettingsHandler;,
        Lcom/android/settings/ASensorSettings$ASensorSettingsView;,
        Lcom/android/settings/ASensorSettings$SensorHandler;
    }
.end annotation


# static fields
.field static mAniCount:I

.field static mAniGapX:F

.field static mAniGapY:F

.field private static mCirclePaint:Landroid/graphics/Paint;

.field private static mSampleCount:I

.field static mSampleDataX:F

.field static mSampleDataY:F


# instance fields
.field private CENTER_X:I

.field private CENTER_Y:I

.field private CIRCLE_RADIUS:I

.field private ICON_RADIUS:I

.field private mAccelerometerSensor:Landroid/hardware/Sensor;

.field private mCalButton:Landroid/widget/Button;

.field private mDrawLayout:Landroid/widget/LinearLayout;

.field private mDrawView:Lcom/android/settings/ASensorSettings$ASensorSettingsView;

.field mHandler:Lcom/android/settings/ASensorSettings$SettingsHandler;

.field mSensorListner:Lcom/android/settings/ASensorSettings$SensorHandler;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 53
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 67
    const/16 v0, 0xf0

    iput v0, p0, Lcom/android/settings/ASensorSettings;->CENTER_X:I

    .line 68
    const/16 v0, 0x163

    iput v0, p0, Lcom/android/settings/ASensorSettings;->CENTER_Y:I

    .line 69
    const/16 v0, 0x25

    iput v0, p0, Lcom/android/settings/ASensorSettings;->ICON_RADIUS:I

    .line 70
    const/16 v0, 0xc8

    iput v0, p0, Lcom/android/settings/ASensorSettings;->CIRCLE_RADIUS:I

    .line 353
    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings/ASensorSettings;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/settings/ASensorSettings;->mText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/settings/ASensorSettings;)Landroid/hardware/SensorManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/settings/ASensorSettings;->mSensorManager:Landroid/hardware/SensorManager;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/settings/ASensorSettings;)Landroid/hardware/Sensor;
    .registers 2
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/settings/ASensorSettings;->mAccelerometerSensor:Landroid/hardware/Sensor;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/settings/ASensorSettings;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/settings/ASensorSettings;->diplayCompleted()V

    return-void
.end method

.method static synthetic access$300()I
    .registers 1

    .prologue
    .line 53
    sget v0, Lcom/android/settings/ASensorSettings;->mSampleCount:I

    return v0
.end method

.method static synthetic access$302(I)I
    .registers 1
    .parameter "x0"

    .prologue
    .line 53
    sput p0, Lcom/android/settings/ASensorSettings;->mSampleCount:I

    return p0
.end method

.method static synthetic access$304()I
    .registers 1

    .prologue
    .line 53
    sget v0, Lcom/android/settings/ASensorSettings;->mSampleCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/settings/ASensorSettings;->mSampleCount:I

    return v0
.end method

.method static synthetic access$308()I
    .registers 2

    .prologue
    .line 53
    sget v0, Lcom/android/settings/ASensorSettings;->mSampleCount:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/android/settings/ASensorSettings;->mSampleCount:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/settings/ASensorSettings;)Lcom/android/settings/ASensorSettings$ASensorSettingsView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/settings/ASensorSettings;->mDrawView:Lcom/android/settings/ASensorSettings$ASensorSettingsView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/ASensorSettings;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 53
    iget v0, p0, Lcom/android/settings/ASensorSettings;->CENTER_X:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/settings/ASensorSettings;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 53
    iget v0, p0, Lcom/android/settings/ASensorSettings;->ICON_RADIUS:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/settings/ASensorSettings;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 53
    iget v0, p0, Lcom/android/settings/ASensorSettings;->CENTER_Y:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/settings/ASensorSettings;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 53
    iget v0, p0, Lcom/android/settings/ASensorSettings;->CIRCLE_RADIUS:I

    return v0
.end method

.method static synthetic access$900()Landroid/graphics/Paint;
    .registers 1

    .prologue
    .line 53
    sget-object v0, Lcom/android/settings/ASensorSettings;->mCirclePaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method private diplayCompleted()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 246
    iget-object v1, p0, Lcom/android/settings/ASensorSettings;->mCalButton:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 247
    const v1, 0x7f0706f6

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 249
    .local v0, mtoast:Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 250
    return-void
.end method

.method private init()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 134
    const-string v0, "sensor"

    invoke-virtual {p0, v0}, Lcom/android/settings/ASensorSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/android/settings/ASensorSettings;->mSensorManager:Landroid/hardware/SensorManager;

    .line 135
    iget-object v0, p0, Lcom/android/settings/ASensorSettings;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/ASensorSettings;->mAccelerometerSensor:Landroid/hardware/Sensor;

    .line 137
    const v0, 0x7f090021

    invoke-virtual {p0, v0}, Lcom/android/settings/ASensorSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/ASensorSettings;->mCalButton:Landroid/widget/Button;

    .line 138
    iget-object v0, p0, Lcom/android/settings/ASensorSettings;->mCalButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    iget-object v0, p0, Lcom/android/settings/ASensorSettings;->mCalButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 141
    const v0, 0x7f09001f

    invoke-virtual {p0, v0}, Lcom/android/settings/ASensorSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/ASensorSettings;->mText:Landroid/widget/TextView;

    .line 143
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lcom/android/settings/ASensorSettings;->mCirclePaint:Landroid/graphics/Paint;

    .line 144
    sget-object v0, Lcom/android/settings/ASensorSettings;->mCirclePaint:Landroid/graphics/Paint;

    const v1, -0xff0100

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 145
    sget-object v0, Lcom/android/settings/ASensorSettings;->mCirclePaint:Landroid/graphics/Paint;

    const/high16 v1, 0x4040

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 146
    sget-object v0, Lcom/android/settings/ASensorSettings;->mCirclePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 147
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter "view"

    .prologue
    .line 151
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_26

    .line 162
    :goto_7
    return-void

    .line 153
    :pswitch_8
    iget-object v1, p0, Lcom/android/settings/ASensorSettings;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/android/settings/ASensorSettings;->mSensorListner:Lcom/android/settings/ASensorSettings$SensorHandler;

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 154
    iget-object v1, p0, Lcom/android/settings/ASensorSettings;->mCalButton:Landroid/widget/Button;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 155
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 156
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 157
    iget-object v1, p0, Lcom/android/settings/ASensorSettings;->mHandler:Lcom/android/settings/ASensorSettings$SettingsHandler;

    const-wide/16 v2, 0x32

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/settings/ASensorSettings$SettingsHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_7

    .line 151
    :pswitch_data_26
    .packed-switch 0x7f090021
        :pswitch_8
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x10b

    const/16 v2, 0x38

    .line 96
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 98
    const-string v0, "800x480"

    const-string v1, "1280x720"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 99
    const/16 v0, 0x168

    iput v0, p0, Lcom/android/settings/ASensorSettings;->CENTER_X:I

    .line 100
    const/16 v0, 0x25e

    iput v0, p0, Lcom/android/settings/ASensorSettings;->CENTER_Y:I

    .line 101
    iput v2, p0, Lcom/android/settings/ASensorSettings;->ICON_RADIUS:I

    .line 102
    iput v3, p0, Lcom/android/settings/ASensorSettings;->CIRCLE_RADIUS:I

    .line 121
    :cond_1e
    :goto_1e
    new-instance v0, Lcom/android/settings/ASensorSettings$SettingsHandler;

    invoke-direct {v0, p0, v4}, Lcom/android/settings/ASensorSettings$SettingsHandler;-><init>(Lcom/android/settings/ASensorSettings;Lcom/android/settings/ASensorSettings$1;)V

    iput-object v0, p0, Lcom/android/settings/ASensorSettings;->mHandler:Lcom/android/settings/ASensorSettings$SettingsHandler;

    .line 123
    const v0, 0x7f04000d

    invoke-virtual {p0, v0}, Lcom/android/settings/ASensorSettings;->setContentView(I)V

    .line 124
    new-instance v0, Lcom/android/settings/ASensorSettings$ASensorSettingsView;

    invoke-direct {v0, p0, p0}, Lcom/android/settings/ASensorSettings$ASensorSettingsView;-><init>(Lcom/android/settings/ASensorSettings;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/ASensorSettings;->mDrawView:Lcom/android/settings/ASensorSettings$ASensorSettingsView;

    .line 125
    const v0, 0x7f090020

    invoke-virtual {p0, v0}, Lcom/android/settings/ASensorSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/settings/ASensorSettings;->mDrawLayout:Landroid/widget/LinearLayout;

    .line 126
    iget-object v0, p0, Lcom/android/settings/ASensorSettings;->mDrawLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/settings/ASensorSettings;->mDrawView:Lcom/android/settings/ASensorSettings$ASensorSettingsView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 127
    invoke-direct {p0}, Lcom/android/settings/ASensorSettings;->init()V

    .line 129
    new-instance v0, Lcom/android/settings/ASensorSettings$SensorHandler;

    invoke-direct {v0, p0, v4}, Lcom/android/settings/ASensorSettings$SensorHandler;-><init>(Lcom/android/settings/ASensorSettings;Lcom/android/settings/ASensorSettings$1;)V

    iput-object v0, p0, Lcom/android/settings/ASensorSettings;->mSensorListner:Lcom/android/settings/ASensorSettings$SensorHandler;

    .line 130
    return-void

    .line 103
    :cond_4f
    const-string v0, "800x480"

    const-string v1, "1280x800"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_74

    .line 104
    const/16 v0, 0x190

    iput v0, p0, Lcom/android/settings/ASensorSettings;->CENTER_X:I

    .line 105
    const/16 v0, 0x24b

    iput v0, p0, Lcom/android/settings/ASensorSettings;->CENTER_Y:I

    .line 106
    iput v2, p0, Lcom/android/settings/ASensorSettings;->ICON_RADIUS:I

    .line 107
    iput v3, p0, Lcom/android/settings/ASensorSettings;->CIRCLE_RADIUS:I

    .line 110
    invoke-virtual {p0}, Lcom/android/settings/ASensorSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 111
    const/16 v0, 0x25b

    iput v0, p0, Lcom/android/settings/ASensorSettings;->CENTER_Y:I

    goto :goto_1e

    .line 114
    :cond_74
    const-string v0, "800x480"

    const-string v1, "1024x600"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 115
    const-string v0, "ASensorSettings"

    const-string v1, "resolution is 1024x600"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    const/16 v0, 0x12c

    iput v0, p0, Lcom/android/settings/ASensorSettings;->CENTER_X:I

    .line 117
    const/16 v0, 0x1d6

    iput v0, p0, Lcom/android/settings/ASensorSettings;->CENTER_Y:I

    .line 118
    const/16 v0, 0x25

    iput v0, p0, Lcom/android/settings/ASensorSettings;->ICON_RADIUS:I

    .line 119
    const/16 v0, 0xeb

    iput v0, p0, Lcom/android/settings/ASensorSettings;->CIRCLE_RADIUS:I

    goto :goto_1e
.end method

.method protected onPause()V
    .registers 3

    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/settings/ASensorSettings;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/settings/ASensorSettings;->mSensorListner:Lcom/android/settings/ASensorSettings$SensorHandler;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 186
    iget-object v0, p0, Lcom/android/settings/ASensorSettings;->mHandler:Lcom/android/settings/ASensorSettings$SettingsHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/ASensorSettings$SettingsHandler;->removeMessages(I)V

    .line 187
    iget-object v0, p0, Lcom/android/settings/ASensorSettings;->mHandler:Lcom/android/settings/ASensorSettings$SettingsHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/settings/ASensorSettings$SettingsHandler;->removeMessages(I)V

    .line 188
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 189
    return-void
.end method

.method protected onResume()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 165
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 166
    sput v3, Lcom/android/settings/ASensorSettings;->mSampleCount:I

    .line 168
    iget-object v0, p0, Lcom/android/settings/ASensorSettings;->mDrawView:Lcom/android/settings/ASensorSettings$ASensorSettingsView;

    if-eqz v0, :cond_10

    .line 169
    iget-object v0, p0, Lcom/android/settings/ASensorSettings;->mDrawView:Lcom/android/settings/ASensorSettings$ASensorSettingsView;

    const/4 v1, 0x1

    #calls: Lcom/android/settings/ASensorSettings$ASensorSettingsView;->updateState(I)V
    invoke-static {v0, v1}, Lcom/android/settings/ASensorSettings$ASensorSettingsView;->access$200(Lcom/android/settings/ASensorSettings$ASensorSettingsView;I)V

    .line 171
    :cond_10
    iget-object v0, p0, Lcom/android/settings/ASensorSettings;->mText:Landroid/widget/TextView;

    if-eqz v0, :cond_1c

    .line 172
    iget-object v0, p0, Lcom/android/settings/ASensorSettings;->mText:Landroid/widget/TextView;

    const v1, 0x7f0706f4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 174
    :cond_1c
    iget-object v0, p0, Lcom/android/settings/ASensorSettings;->mCalButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 177
    iget-object v0, p0, Lcom/android/settings/ASensorSettings;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/settings/ASensorSettings;->mSensorListner:Lcom/android/settings/ASensorSettings$SensorHandler;

    iget-object v2, p0, Lcom/android/settings/ASensorSettings;->mAccelerometerSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 179
    return-void
.end method
