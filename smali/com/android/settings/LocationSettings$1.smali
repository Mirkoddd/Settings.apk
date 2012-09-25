.class Lcom/android/settings/LocationSettings$1;
.super Ljava/lang/Object;
.source "LocationSettings.java"

# interfaces
.implements Ljava/util/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/LocationSettings;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/LocationSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/LocationSettings;)V
    .registers 2
    .parameter

    .prologue
    .line 187
    iput-object p1, p0, Lcom/android/settings/LocationSettings$1;->this$0:Lcom/android/settings/LocationSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .registers 4
    .parameter "o"
    .parameter "arg"

    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/settings/LocationSettings$1;->this$0:Lcom/android/settings/LocationSettings;

    #calls: Lcom/android/settings/LocationSettings;->updateLocationToggles()V
    invoke-static {v0}, Lcom/android/settings/LocationSettings;->access$000(Lcom/android/settings/LocationSettings;)V

    .line 190
    return-void
.end method
