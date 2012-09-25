.class public Lcom/android/settings/ClockPanelInfo;
.super Landroid/widget/LinearLayout;
.source "ClockPanelInfo.java"


# instance fields
.field private final KEY_APP_SERVICE_STATUS:Ljava/lang/String;

.field private final KEY_CITY_ID:Ljava/lang/String;

.field private final KEY_CITY_NAME:Ljava/lang/String;

.field private final KEY_CURRENT_TEMP:Ljava/lang/String;

.field private final KEY_ICON_NUM:Ljava/lang/String;

.field private final KEY_TEMP_SCALE:Ljava/lang/String;

.field private final LOCK_SCREEN_SERVICE_CODE:I

.field private mBatteryLevel:I

.field private mCharging:Ljava/lang/String;

.field private mChargingIcon:Landroid/graphics/drawable/Drawable;

.field private mChargingLayout:Landroid/widget/RelativeLayout;

.field private mCharingText:Landroid/widget/TextView;

.field private mLayoutPosition:I

.field private mPluggedIn:Z

.field private mShowingBatteryInfo:Z

.field private mSpace_01:Landroid/widget/LinearLayout;

.field private mSpace_02:Landroid/widget/LinearLayout;

.field private mTemperatureUnit:Landroid/graphics/drawable/Drawable;

.field private mWeatherCity:Landroid/widget/TextView;

.field private mWeatherDaemonState:I

.field private mWeatherIcon:Landroid/widget/ImageView;

.field private mWeatherLayout:Landroid/widget/RelativeLayout;

.field private mWeatherTemperature:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 9
    .parameter "context"

    .prologue
    const/4 v6, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 58
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 18
    const-string v2, "aw_daemon_service_key_app_service_status"

    iput-object v2, p0, Lcom/android/settings/ClockPanelInfo;->KEY_APP_SERVICE_STATUS:Ljava/lang/String;

    .line 19
    const-string v2, "aw_daemon_service_key_loc_code"

    iput-object v2, p0, Lcom/android/settings/ClockPanelInfo;->KEY_CITY_ID:Ljava/lang/String;

    .line 20
    const-string v2, "aw_daemon_service_key_current_temp"

    iput-object v2, p0, Lcom/android/settings/ClockPanelInfo;->KEY_CURRENT_TEMP:Ljava/lang/String;

    .line 21
    const-string v2, "aw_daemon_service_key_temp_scale"

    iput-object v2, p0, Lcom/android/settings/ClockPanelInfo;->KEY_TEMP_SCALE:Ljava/lang/String;

    .line 22
    const-string v2, "aw_daemon_service_key_icon_num"

    iput-object v2, p0, Lcom/android/settings/ClockPanelInfo;->KEY_ICON_NUM:Ljava/lang/String;

    .line 23
    const-string v2, "aw_daemon_service_key_city_name"

    iput-object v2, p0, Lcom/android/settings/ClockPanelInfo;->KEY_CITY_NAME:Ljava/lang/String;

    .line 26
    iput v3, p0, Lcom/android/settings/ClockPanelInfo;->LOCK_SCREEN_SERVICE_CODE:I

    .line 34
    iput-object v5, p0, Lcom/android/settings/ClockPanelInfo;->mWeatherLayout:Landroid/widget/RelativeLayout;

    .line 35
    iput-object v5, p0, Lcom/android/settings/ClockPanelInfo;->mChargingLayout:Landroid/widget/RelativeLayout;

    .line 37
    iput-object v5, p0, Lcom/android/settings/ClockPanelInfo;->mSpace_01:Landroid/widget/LinearLayout;

    .line 38
    iput-object v5, p0, Lcom/android/settings/ClockPanelInfo;->mSpace_02:Landroid/widget/LinearLayout;

    .line 40
    iput-object v5, p0, Lcom/android/settings/ClockPanelInfo;->mWeatherCity:Landroid/widget/TextView;

    .line 41
    iput-object v5, p0, Lcom/android/settings/ClockPanelInfo;->mWeatherTemperature:Landroid/widget/TextView;

    .line 42
    iput-object v5, p0, Lcom/android/settings/ClockPanelInfo;->mWeatherIcon:Landroid/widget/ImageView;

    .line 43
    iput-object v5, p0, Lcom/android/settings/ClockPanelInfo;->mTemperatureUnit:Landroid/graphics/drawable/Drawable;

    .line 44
    iput-object v5, p0, Lcom/android/settings/ClockPanelInfo;->mCharingText:Landroid/widget/TextView;

    .line 46
    iput v4, p0, Lcom/android/settings/ClockPanelInfo;->mWeatherDaemonState:I

    .line 49
    iput-boolean v4, p0, Lcom/android/settings/ClockPanelInfo;->mShowingBatteryInfo:Z

    .line 50
    iput-boolean v4, p0, Lcom/android/settings/ClockPanelInfo;->mPluggedIn:Z

    .line 51
    const/16 v2, 0x64

    iput v2, p0, Lcom/android/settings/ClockPanelInfo;->mBatteryLevel:I

    .line 52
    iput-object v5, p0, Lcom/android/settings/ClockPanelInfo;->mCharging:Ljava/lang/String;

    .line 53
    iput-object v5, p0, Lcom/android/settings/ClockPanelInfo;->mChargingIcon:Landroid/graphics/drawable/Drawable;

    .line 55
    iput v6, p0, Lcom/android/settings/ClockPanelInfo;->mLayoutPosition:I

    .line 59
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 61
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v2, 0x7f040052

    invoke-virtual {v0, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 63
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "clock_position"

    invoke-static {v2, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/settings/ClockPanelInfo;->mLayoutPosition:I

    .line 66
    const v2, 0x7f0900f6

    invoke-virtual {p0, v2}, Lcom/android/settings/ClockPanelInfo;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/android/settings/ClockPanelInfo;->mWeatherLayout:Landroid/widget/RelativeLayout;

    .line 67
    const v2, 0x7f0900fb

    invoke-virtual {p0, v2}, Lcom/android/settings/ClockPanelInfo;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/android/settings/ClockPanelInfo;->mChargingLayout:Landroid/widget/RelativeLayout;

    .line 68
    iget-object v2, p0, Lcom/android/settings/ClockPanelInfo;->mWeatherLayout:Landroid/widget/RelativeLayout;

    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 69
    iget-object v2, p0, Lcom/android/settings/ClockPanelInfo;->mChargingLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 71
    const v2, 0x7f0900fd

    invoke-virtual {p0, v2}, Lcom/android/settings/ClockPanelInfo;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/settings/ClockPanelInfo;->mSpace_01:Landroid/widget/LinearLayout;

    .line 72
    const v2, 0x7f0900fe

    invoke-virtual {p0, v2}, Lcom/android/settings/ClockPanelInfo;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/settings/ClockPanelInfo;->mSpace_02:Landroid/widget/LinearLayout;

    .line 76
    const v2, 0x7f0900f7

    invoke-virtual {p0, v2}, Lcom/android/settings/ClockPanelInfo;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/ClockPanelInfo;->mWeatherCity:Landroid/widget/TextView;

    .line 77
    const v2, 0x7f0900f8

    invoke-virtual {p0, v2}, Lcom/android/settings/ClockPanelInfo;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/ClockPanelInfo;->mWeatherTemperature:Landroid/widget/TextView;

    .line 78
    const v2, 0x7f0900f9

    invoke-virtual {p0, v2}, Lcom/android/settings/ClockPanelInfo;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/settings/ClockPanelInfo;->mWeatherIcon:Landroid/widget/ImageView;

    .line 79
    const v2, 0x7f0900fc

    invoke-virtual {p0, v2}, Lcom/android/settings/ClockPanelInfo;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/ClockPanelInfo;->mCharingText:Landroid/widget/TextView;

    .line 83
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "aw_daemon_service_key_app_service_status"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 84
    .local v1, mAppServiceStatus:I
    and-int/lit8 v2, v1, 0x1

    if-ne v2, v3, :cond_d7

    move v2, v3

    :goto_cc
    iput v2, p0, Lcom/android/settings/ClockPanelInfo;->mWeatherDaemonState:I

    .line 86
    invoke-virtual {p0}, Lcom/android/settings/ClockPanelInfo;->updateChargingInfo()V

    .line 87
    iget v2, p0, Lcom/android/settings/ClockPanelInfo;->mWeatherDaemonState:I

    invoke-direct {p0, v2}, Lcom/android/settings/ClockPanelInfo;->setWeatherInfoVisivility(I)V

    .line 89
    return-void

    :cond_d7
    move v2, v4

    .line 84
    goto :goto_cc
.end method

.method private findDrawableId(I)I
    .registers 3
    .parameter "weatherIconNum"

    .prologue
    const/4 v0, 0x0

    .line 212
    packed-switch p1, :pswitch_data_38

    .line 274
    :goto_4
    :pswitch_4
    return v0

    .line 219
    :pswitch_5
    const/4 v0, 0x1

    goto :goto_4

    .line 223
    :pswitch_7
    const/4 v0, 0x2

    goto :goto_4

    .line 225
    :pswitch_9
    const/4 v0, 0x3

    goto :goto_4

    .line 230
    :pswitch_b
    const/4 v0, 0x4

    goto :goto_4

    .line 232
    :pswitch_d
    const/4 v0, 0x5

    goto :goto_4

    .line 236
    :pswitch_f
    const/4 v0, 0x6

    goto :goto_4

    .line 239
    :pswitch_11
    const/4 v0, 0x7

    goto :goto_4

    .line 241
    :pswitch_13
    const/16 v0, 0x8

    goto :goto_4

    .line 244
    :pswitch_16
    const/16 v0, 0x9

    goto :goto_4

    .line 247
    :pswitch_19
    const/16 v0, 0xa

    goto :goto_4

    .line 251
    :pswitch_1c
    const/16 v0, 0xb

    goto :goto_4

    .line 255
    :pswitch_1f
    const/16 v0, 0xc

    goto :goto_4

    .line 257
    :pswitch_22
    const/16 v0, 0xd

    goto :goto_4

    .line 259
    :pswitch_25
    const/16 v0, 0xe

    goto :goto_4

    .line 261
    :pswitch_28
    const/16 v0, 0xf

    goto :goto_4

    .line 263
    :pswitch_2b
    const/16 v0, 0x10

    goto :goto_4

    .line 265
    :pswitch_2e
    const/16 v0, 0x11

    goto :goto_4

    .line 270
    :pswitch_31
    const/16 v0, 0x12

    goto :goto_4

    .line 272
    :pswitch_34
    const/16 v0, 0x13

    goto :goto_4

    .line 212
    nop

    :pswitch_data_38
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_4
        :pswitch_4
        :pswitch_9
        :pswitch_b
        :pswitch_b
        :pswitch_d
        :pswitch_f
        :pswitch_11
        :pswitch_11
        :pswitch_13
        :pswitch_16
        :pswitch_19
        :pswitch_19
        :pswitch_1c
        :pswitch_1c
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_4
        :pswitch_4
        :pswitch_22
        :pswitch_25
        :pswitch_28
        :pswitch_2b
        :pswitch_2e
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_34
        :pswitch_b
        :pswitch_b
        :pswitch_f
        :pswitch_f
        :pswitch_16
        :pswitch_1c
    .end packed-switch
.end method

.method private refreshBatteryStringAndIcon()V
    .registers 2

    .prologue
    .line 108
    iget-boolean v0, p0, Lcom/android/settings/ClockPanelInfo;->mShowingBatteryInfo:Z

    if-nez v0, :cond_7

    .line 109
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/ClockPanelInfo;->mCharging:Ljava/lang/String;

    .line 112
    :cond_7
    return-void
.end method

.method private setWeatherIcon(I)V
    .registers 6
    .parameter "iconNum"

    .prologue
    .line 194
    const/16 v2, 0x15

    new-array v1, v2, [I

    fill-array-data v1, :array_14

    .line 206
    .local v1, unlock_weather_drawables:[I
    invoke-direct {p0, p1}, Lcom/android/settings/ClockPanelInfo;->findDrawableId(I)I

    move-result v0

    .line 208
    .local v0, i:I
    iget-object v2, p0, Lcom/android/settings/ClockPanelInfo;->mWeatherIcon:Landroid/widget/ImageView;

    aget v3, v1, v0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 209
    return-void

    .line 194
    nop

    :array_14
    .array-data 0x4
        0xa0t 0x7t 0x8t 0x1t
        0xa1t 0x7t 0x8t 0x1t
        0xa2t 0x7t 0x8t 0x1t
        0xa3t 0x7t 0x8t 0x1t
        0xa4t 0x7t 0x8t 0x1t
        0xa5t 0x7t 0x8t 0x1t
        0xa6t 0x7t 0x8t 0x1t
        0xa7t 0x7t 0x8t 0x1t
        0xa8t 0x7t 0x8t 0x1t
        0xa9t 0x7t 0x8t 0x1t
        0xaat 0x7t 0x8t 0x1t
        0xabt 0x7t 0x8t 0x1t
        0xabt 0x7t 0x8t 0x1t
        0xact 0x7t 0x8t 0x1t
        0xadt 0x7t 0x8t 0x1t
        0xc2t 0x7t 0x8t 0x1t
        0xc3t 0x7t 0x8t 0x1t
        0xc4t 0x7t 0x8t 0x1t
        0xc5t 0x7t 0x8t 0x1t
        0xc6t 0x7t 0x8t 0x1t
        0xc7t 0x7t 0x8t 0x1t
    .end array-data
.end method

.method private setWeatherInfoVisivility(I)V
    .registers 4
    .parameter "daemonState"

    .prologue
    const/16 v1, 0x8

    .line 151
    packed-switch p1, :pswitch_data_1c

    .line 160
    iget-object v0, p0, Lcom/android/settings/ClockPanelInfo;->mWeatherLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 163
    :goto_a
    return-void

    .line 153
    :pswitch_b
    iget-object v0, p0, Lcom/android/settings/ClockPanelInfo;->mWeatherLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_a

    .line 156
    :pswitch_11
    invoke-virtual {p0}, Lcom/android/settings/ClockPanelInfo;->updateWeatherInfo()V

    .line 157
    iget-object v0, p0, Lcom/android/settings/ClockPanelInfo;->mWeatherLayout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_a

    .line 151
    nop

    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_b
        :pswitch_11
    .end packed-switch
.end method

.method private updateCharingStatus()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 98
    iget-object v0, p0, Lcom/android/settings/ClockPanelInfo;->mCharging:Ljava/lang/String;

    if-nez v0, :cond_6

    .line 105
    :cond_5
    :goto_5
    return-void

    .line 100
    :cond_6
    iget-object v0, p0, Lcom/android/settings/ClockPanelInfo;->mCharging:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 101
    iget-object v0, p0, Lcom/android/settings/ClockPanelInfo;->mCharingText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 102
    iget-object v0, p0, Lcom/android/settings/ClockPanelInfo;->mCharingText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/ClockPanelInfo;->mCharging:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    iget-object v0, p0, Lcom/android/settings/ClockPanelInfo;->mCharingText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/ClockPanelInfo;->mChargingIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_5
.end method

.method private updateWeatherView(FIILjava/lang/String;)V
    .registers 9
    .parameter "currentTemp"
    .parameter "tempScale"
    .parameter "iconNum"
    .parameter "cityName"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 177
    iget-object v1, p0, Lcom/android/settings/ClockPanelInfo;->mWeatherCity:Landroid/widget/TextView;

    invoke-virtual {v1, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 178
    iget-object v1, p0, Lcom/android/settings/ClockPanelInfo;->mWeatherCity:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 180
    if-ne p2, v2, :cond_33

    .line 181
    invoke-virtual {p0}, Lcom/android/settings/ClockPanelInfo;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1080782

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/ClockPanelInfo;->mTemperatureUnit:Landroid/graphics/drawable/Drawable;

    .line 186
    :cond_1f
    :goto_1f
    invoke-static {p1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    .line 187
    .local v0, text_currentTemp:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/ClockPanelInfo;->mWeatherTemperature:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 188
    iget-object v1, p0, Lcom/android/settings/ClockPanelInfo;->mWeatherTemperature:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings/ClockPanelInfo;->mTemperatureUnit:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v3, v3, v2, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 189
    invoke-direct {p0, p3}, Lcom/android/settings/ClockPanelInfo;->setWeatherIcon(I)V

    .line 191
    return-void

    .line 182
    .end local v0           #text_currentTemp:Ljava/lang/String;
    :cond_33
    if-nez p2, :cond_1f

    .line 183
    invoke-virtual {p0}, Lcom/android/settings/ClockPanelInfo;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1080783

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/ClockPanelInfo;->mTemperatureUnit:Landroid/graphics/drawable/Drawable;

    goto :goto_1f
.end method


# virtual methods
.method public updateChargingInfo()V
    .registers 1

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/android/settings/ClockPanelInfo;->refreshBatteryStringAndIcon()V

    .line 94
    invoke-direct {p0}, Lcom/android/settings/ClockPanelInfo;->updateCharingStatus()V

    .line 95
    return-void
.end method

.method public updateWeatherInfo()V
    .registers 8

    .prologue
    .line 166
    invoke-virtual {p0}, Lcom/android/settings/ClockPanelInfo;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "aw_daemon_service_key_city_name"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 167
    .local v0, cityName:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/ClockPanelInfo;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "aw_daemon_service_key_current_temp"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v1

    .line 168
    .local v1, currentTemp:F
    invoke-virtual {p0}, Lcom/android/settings/ClockPanelInfo;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "aw_daemon_service_key_temp_scale"

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 169
    .local v3, tempScale:I
    invoke-virtual {p0}, Lcom/android/settings/ClockPanelInfo;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "aw_daemon_service_key_icon_num"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 171
    .local v2, iconNum:I
    invoke-direct {p0, v1, v3, v2, v0}, Lcom/android/settings/ClockPanelInfo;->updateWeatherView(FIILjava/lang/String;)V

    .line 173
    return-void
.end method
