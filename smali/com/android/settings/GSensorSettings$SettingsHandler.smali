.class Lcom/android/settings/GSensorSettings$SettingsHandler;
.super Landroid/os/Handler;
.source "GSensorSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/GSensorSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/GSensorSettings;


# direct methods
.method private constructor <init>(Lcom/android/settings/GSensorSettings;)V
    .registers 2
    .parameter

    .prologue
    .line 269
    iput-object p1, p0, Lcom/android/settings/GSensorSettings$SettingsHandler;->this$0:Lcom/android/settings/GSensorSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/GSensorSettings;Lcom/android/settings/GSensorSettings$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 269
    invoke-direct {p0, p1}, Lcom/android/settings/GSensorSettings$SettingsHandler;-><init>(Lcom/android/settings/GSensorSettings;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 13
    .parameter "msg"

    .prologue
    const/4 v10, 0x0

    const/high16 v9, 0x4248

    const-wide/16 v7, 0x32

    const/4 v6, 0x1

    const/4 v5, 0x2

    .line 271
    new-array v1, v5, [F

    .line 272
    .local v1, position:[F
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 273
    .local v0, message:Landroid/os/Message;
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_d8

    .line 320
    :goto_13
    return-void

    .line 275
    :pswitch_14
    iget-object v3, p0, Lcom/android/settings/GSensorSettings$SettingsHandler;->this$0:Lcom/android/settings/GSensorSettings;

    #getter for: Lcom/android/settings/GSensorSettings;->mText:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/android/settings/GSensorSettings;->access$800(Lcom/android/settings/GSensorSettings;)Landroid/widget/TextView;

    move-result-object v3

    const v4, 0x7f0706ee

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 276
    iget-object v3, p0, Lcom/android/settings/GSensorSettings$SettingsHandler;->this$0:Lcom/android/settings/GSensorSettings;

    #getter for: Lcom/android/settings/GSensorSettings;->mDrawView:Lcom/android/settings/GSensorSettings$GSensorSettingsView;
    invoke-static {v3}, Lcom/android/settings/GSensorSettings;->access$900(Lcom/android/settings/GSensorSettings;)Lcom/android/settings/GSensorSettings$GSensorSettingsView;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/settings/GSensorSettings$GSensorSettingsView;->getPoint([F)[F

    .line 277
    iget-object v3, p0, Lcom/android/settings/GSensorSettings$SettingsHandler;->this$0:Lcom/android/settings/GSensorSettings;

    #getter for: Lcom/android/settings/GSensorSettings;->mDrawView:Lcom/android/settings/GSensorSettings$GSensorSettingsView;
    invoke-static {v3}, Lcom/android/settings/GSensorSettings;->access$900(Lcom/android/settings/GSensorSettings;)Lcom/android/settings/GSensorSettings$GSensorSettingsView;

    move-result-object v3

    #calls: Lcom/android/settings/GSensorSettings$GSensorSettingsView;->updateState(I)V
    invoke-static {v3, v5}, Lcom/android/settings/GSensorSettings$GSensorSettingsView;->access$200(Lcom/android/settings/GSensorSettings$GSensorSettingsView;I)V

    .line 278
    aget v3, v1, v10

    iget-object v4, p0, Lcom/android/settings/GSensorSettings$SettingsHandler;->this$0:Lcom/android/settings/GSensorSettings;

    #getter for: Lcom/android/settings/GSensorSettings;->CENTER_X:I
    invoke-static {v4}, Lcom/android/settings/GSensorSettings;->access$300(Lcom/android/settings/GSensorSettings;)I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    div-float/2addr v3, v9

    sput v3, Lcom/android/settings/GSensorSettings;->mAniGapX:F

    .line 279
    aget v3, v1, v6

    iget-object v4, p0, Lcom/android/settings/GSensorSettings$SettingsHandler;->this$0:Lcom/android/settings/GSensorSettings;

    #getter for: Lcom/android/settings/GSensorSettings;->CENTER_Y:I
    invoke-static {v4}, Lcom/android/settings/GSensorSettings;->access$500(Lcom/android/settings/GSensorSettings;)I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    div-float/2addr v3, v9

    sput v3, Lcom/android/settings/GSensorSettings;->mAniGapY:F

    .line 280
    const/16 v3, 0x32

    sput v3, Lcom/android/settings/GSensorSettings;->mAniCount:I

    .line 281
    iget-object v3, p0, Lcom/android/settings/GSensorSettings$SettingsHandler;->this$0:Lcom/android/settings/GSensorSettings;

    #getter for: Lcom/android/settings/GSensorSettings;->mDrawView:Lcom/android/settings/GSensorSettings$GSensorSettingsView;
    invoke-static {v3}, Lcom/android/settings/GSensorSettings;->access$900(Lcom/android/settings/GSensorSettings;)Lcom/android/settings/GSensorSettings$GSensorSettingsView;

    move-result-object v3

    sget v4, Lcom/android/settings/GSensorSettings;->mAniCount:I

    invoke-virtual {v3, v4}, Lcom/android/settings/GSensorSettings$GSensorSettingsView;->setImage(I)V

    .line 282
    iput v5, v0, Landroid/os/Message;->what:I

    .line 283
    invoke-virtual {p0, v0, v7, v8}, Lcom/android/settings/GSensorSettings$SettingsHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 284
    invoke-virtual {p0, v6}, Lcom/android/settings/GSensorSettings$SettingsHandler;->removeMessages(I)V

    goto :goto_13

    .line 287
    :pswitch_64
    sget v3, Lcom/android/settings/GSensorSettings;->mAniCount:I

    add-int/lit8 v3, v3, -0x1

    sput v3, Lcom/android/settings/GSensorSettings;->mAniCount:I

    if-ltz v3, :cond_89

    .line 289
    iget-object v3, p0, Lcom/android/settings/GSensorSettings$SettingsHandler;->this$0:Lcom/android/settings/GSensorSettings;

    #getter for: Lcom/android/settings/GSensorSettings;->mDrawView:Lcom/android/settings/GSensorSettings$GSensorSettingsView;
    invoke-static {v3}, Lcom/android/settings/GSensorSettings;->access$900(Lcom/android/settings/GSensorSettings;)Lcom/android/settings/GSensorSettings$GSensorSettingsView;

    move-result-object v3

    sget v4, Lcom/android/settings/GSensorSettings;->mAniCount:I

    invoke-virtual {v3, v4}, Lcom/android/settings/GSensorSettings$GSensorSettingsView;->setImage(I)V

    .line 290
    iget-object v3, p0, Lcom/android/settings/GSensorSettings$SettingsHandler;->this$0:Lcom/android/settings/GSensorSettings;

    #getter for: Lcom/android/settings/GSensorSettings;->mDrawView:Lcom/android/settings/GSensorSettings$GSensorSettingsView;
    invoke-static {v3}, Lcom/android/settings/GSensorSettings;->access$900(Lcom/android/settings/GSensorSettings;)Lcom/android/settings/GSensorSettings$GSensorSettingsView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settings/GSensorSettings$GSensorSettingsView;->invalidate()V

    .line 291
    invoke-virtual {p0, v5}, Lcom/android/settings/GSensorSettings$SettingsHandler;->removeMessages(I)V

    .line 292
    iput v5, v0, Landroid/os/Message;->what:I

    .line 293
    invoke-virtual {p0, v0, v7, v8}, Lcom/android/settings/GSensorSettings$SettingsHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_13

    .line 295
    :cond_89
    invoke-virtual {p0, v5}, Lcom/android/settings/GSensorSettings$SettingsHandler;->removeMessages(I)V

    .line 296
    const/4 v3, 0x3

    iput v3, v0, Landroid/os/Message;->what:I

    .line 297
    invoke-virtual {p0, v0, v7, v8}, Lcom/android/settings/GSensorSettings$SettingsHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 298
    const/16 v3, 0x32

    sput v3, Lcom/android/settings/GSensorSettings;->mAniCount:I

    goto/16 :goto_13

    .line 302
    :pswitch_98
    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Lcom/android/settings/GSensorSettings$SettingsHandler;->removeMessages(I)V

    .line 303
    iget-object v3, p0, Lcom/android/settings/GSensorSettings$SettingsHandler;->this$0:Lcom/android/settings/GSensorSettings;

    #getter for: Lcom/android/settings/GSensorSettings;->mSensorManager:Landroid/hardware/SensorManager;
    invoke-static {v3}, Lcom/android/settings/GSensorSettings;->access$1000(Lcom/android/settings/GSensorSettings;)Landroid/hardware/SensorManager;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/hardware/SensorManager;->runGyroCalibration(I)I

    move-result v2

    .line 307
    .local v2, result:I
    invoke-static {v10}, Lcom/android/settings/GSensorSettings;->access$1102(I)I

    .line 308
    iget-object v3, p0, Lcom/android/settings/GSensorSettings$SettingsHandler;->this$0:Lcom/android/settings/GSensorSettings;

    #getter for: Lcom/android/settings/GSensorSettings;->mDrawView:Lcom/android/settings/GSensorSettings$GSensorSettingsView;
    invoke-static {v3}, Lcom/android/settings/GSensorSettings;->access$900(Lcom/android/settings/GSensorSettings;)Lcom/android/settings/GSensorSettings$GSensorSettingsView;

    move-result-object v3

    #calls: Lcom/android/settings/GSensorSettings$GSensorSettingsView;->updateState(I)V
    invoke-static {v3, v6}, Lcom/android/settings/GSensorSettings$GSensorSettingsView;->access$200(Lcom/android/settings/GSensorSettings$GSensorSettingsView;I)V

    .line 309
    iget-object v3, p0, Lcom/android/settings/GSensorSettings$SettingsHandler;->this$0:Lcom/android/settings/GSensorSettings;

    #getter for: Lcom/android/settings/GSensorSettings;->mDrawView:Lcom/android/settings/GSensorSettings$GSensorSettingsView;
    invoke-static {v3}, Lcom/android/settings/GSensorSettings;->access$900(Lcom/android/settings/GSensorSettings;)Lcom/android/settings/GSensorSettings$GSensorSettingsView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settings/GSensorSettings$GSensorSettingsView;->invalidate()V

    .line 310
    iget-object v3, p0, Lcom/android/settings/GSensorSettings$SettingsHandler;->this$0:Lcom/android/settings/GSensorSettings;

    #getter for: Lcom/android/settings/GSensorSettings;->mText:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/android/settings/GSensorSettings;->access$800(Lcom/android/settings/GSensorSettings;)Landroid/widget/TextView;

    move-result-object v3

    const v4, 0x7f0706ed

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 311
    if-lez v2, :cond_d1

    .line 312
    iget-object v3, p0, Lcom/android/settings/GSensorSettings$SettingsHandler;->this$0:Lcom/android/settings/GSensorSettings;

    #calls: Lcom/android/settings/GSensorSettings;->diplayCompleted()V
    invoke-static {v3}, Lcom/android/settings/GSensorSettings;->access$1200(Lcom/android/settings/GSensorSettings;)V

    goto/16 :goto_13

    .line 314
    :cond_d1
    iget-object v3, p0, Lcom/android/settings/GSensorSettings$SettingsHandler;->this$0:Lcom/android/settings/GSensorSettings;

    #calls: Lcom/android/settings/GSensorSettings;->diplayError()V
    invoke-static {v3}, Lcom/android/settings/GSensorSettings;->access$1300(Lcom/android/settings/GSensorSettings;)V

    goto/16 :goto_13

    .line 273
    :pswitch_data_d8
    .packed-switch 0x1
        :pswitch_14
        :pswitch_64
        :pswitch_98
    .end packed-switch
.end method
