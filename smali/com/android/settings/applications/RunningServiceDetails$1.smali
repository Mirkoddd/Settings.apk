.class Lcom/android/settings/applications/RunningServiceDetails$1;
.super Ljava/lang/Object;
.source "RunningServiceDetails.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/applications/RunningServiceDetails;->finish()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/RunningServiceDetails;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/RunningServiceDetails;)V
    .registers 2
    .parameter

    .prologue
    .line 421
    iput-object p1, p0, Lcom/android/settings/applications/RunningServiceDetails$1;->this$0:Lcom/android/settings/applications/RunningServiceDetails;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 424
    iget-object v1, p0, Lcom/android/settings/applications/RunningServiceDetails$1;->this$0:Lcom/android/settings/applications/RunningServiceDetails;

    invoke-virtual {v1}, Lcom/android/settings/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 425
    .local v0, a:Landroid/app/Activity;
    if-eqz v0, :cond_b

    .line 426
    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 428
    :cond_b
    return-void
.end method
