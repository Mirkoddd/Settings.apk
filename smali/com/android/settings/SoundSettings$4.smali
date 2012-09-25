.class Lcom/android/settings/SoundSettings$4;
.super Ljava/lang/Object;
.source "SoundSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/SoundSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SoundSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/SoundSettings;)V
    .registers 2
    .parameter

    .prologue
    .line 291
    iput-object p1, p0, Lcom/android/settings/SoundSettings$4;->this$0:Lcom/android/settings/SoundSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 293
    iget-object v0, p0, Lcom/android/settings/SoundSettings$4;->this$0:Lcom/android/settings/SoundSettings;

    #getter for: Lcom/android/settings/SoundSettings;->mEnableLog:Z
    invoke-static {v0}, Lcom/android/settings/SoundSettings;->access$600(Lcom/android/settings/SoundSettings;)Z

    move-result v0

    if-eqz v0, :cond_f

    const-string v0, "SoundSettings"

    const-string v1, "SoundSettings loadSoundEffect() call"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    :cond_f
    iget-object v0, p0, Lcom/android/settings/SoundSettings$4;->this$0:Lcom/android/settings/SoundSettings;

    #getter for: Lcom/android/settings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/android/settings/SoundSettings;->access$700(Lcom/android/settings/SoundSettings;)Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioManager;->loadSoundEffects()V

    .line 295
    return-void
.end method
