.class Lcom/android/settings/tts/TextToSpeechSettings$1;
.super Ljava/lang/Object;
.source "TextToSpeechSettings.java"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnInitListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/tts/TextToSpeechSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/tts/TextToSpeechSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/tts/TextToSpeechSettings;)V
    .registers 2
    .parameter

    .prologue
    .line 106
    iput-object p1, p0, Lcom/android/settings/tts/TextToSpeechSettings$1;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInit(I)V
    .registers 3
    .parameter "status"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings$1;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-virtual {v0, p1}, Lcom/android/settings/tts/TextToSpeechSettings;->onInitEngine(I)V

    .line 110
    return-void
.end method
