.class Lcom/android/settings/deviceinfo/Status$2;
.super Landroid/telephony/PhoneStateListener;
.source "Status.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/deviceinfo/Status;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/deviceinfo/Status;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/Status;)V
    .registers 2
    .parameter

    .prologue
    .line 195
    iput-object p1, p0, Lcom/android/settings/deviceinfo/Status$2;->this$0:Lcom/android/settings/deviceinfo/Status;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataConnectionStateChanged(I)V
    .registers 3
    .parameter "state"

    .prologue
    .line 198
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status$2;->this$0:Lcom/android/settings/deviceinfo/Status;

    #calls: Lcom/android/settings/deviceinfo/Status;->updateDataState()V
    invoke-static {v0}, Lcom/android/settings/deviceinfo/Status;->access$500(Lcom/android/settings/deviceinfo/Status;)V

    .line 199
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status$2;->this$0:Lcom/android/settings/deviceinfo/Status;

    #calls: Lcom/android/settings/deviceinfo/Status;->updateNetworkType()V
    invoke-static {v0}, Lcom/android/settings/deviceinfo/Status;->access$600(Lcom/android/settings/deviceinfo/Status;)V

    .line 200
    return-void
.end method
