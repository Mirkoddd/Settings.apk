.class Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler$1;
.super Ljava/lang/Object;
.source "StorageMeasurement.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;)V
    .registers 2
    .parameter

    .prologue
    .line 230
    iput-object p1, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler$1;->this$1:Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 7
    .parameter "name"
    .parameter "service"

    .prologue
    .line 232
    invoke-static {p2}, Lcom/android/internal/app/IMediaContainerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v0

    .line 234
    .local v0, imcs:Lcom/android/internal/app/IMediaContainerService;
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler$1;->this$1:Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;

    #setter for: Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->mDefaultContainer:Lcom/android/internal/app/IMediaContainerService;
    invoke-static {v1, v0}, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->access$002(Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;Lcom/android/internal/app/IMediaContainerService;)Lcom/android/internal/app/IMediaContainerService;

    .line 235
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler$1;->this$1:Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;

    const/4 v2, 0x1

    #setter for: Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->mBound:Z
    invoke-static {v1, v2}, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->access$102(Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;Z)Z

    .line 236
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler$1;->this$1:Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler$1;->this$1:Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3, v0}, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->sendMessage(Landroid/os/Message;)Z

    .line 237
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4
    .parameter "name"

    .prologue
    .line 240
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler$1;->this$1:Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;

    const/4 v1, 0x0

    #setter for: Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->mBound:Z
    invoke-static {v0, v1}, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->access$102(Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;Z)Z

    .line 241
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler$1;->this$1:Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->removeMessages(I)V

    .line 242
    return-void
.end method
