.class Lcom/android/settings/motion/TiltSensitivityPreference$1;
.super Ljava/lang/Object;
.source "TiltSensitivityPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/motion/TiltSensitivityPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/motion/TiltSensitivityPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/motion/TiltSensitivityPreference;)V
    .registers 2
    .parameter

    .prologue
    .line 45
    iput-object p1, p0, Lcom/android/settings/motion/TiltSensitivityPreference$1;->this$0:Lcom/android/settings/motion/TiltSensitivityPreference;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "witch"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/settings/motion/TiltSensitivityPreference$1;->this$0:Lcom/android/settings/motion/TiltSensitivityPreference;

    const/4 v1, -0x3

    #setter for: Lcom/android/settings/motion/TiltSensitivityPreference;->mWhichButtonClicked:I
    invoke-static {v0, v1}, Lcom/android/settings/motion/TiltSensitivityPreference;->access$002(Lcom/android/settings/motion/TiltSensitivityPreference;I)I

    .line 50
    invoke-static {}, Lcom/android/settings/motion/TiltSettings;->getReference()Lcom/android/settings/motion/TiltSettings;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/motion/TiltSensitivityPreference$1;->this$0:Lcom/android/settings/motion/TiltSensitivityPreference;

    #getter for: Lcom/android/settings/motion/TiltSensitivityPreference;->mSeekBar:Landroid/widget/SeekBar;
    invoke-static {v1}, Lcom/android/settings/motion/TiltSensitivityPreference;->access$100(Lcom/android/settings/motion/TiltSensitivityPreference;)Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/motion/TiltSettings;->startSensitivityTest(I)V

    .line 52
    return-void
.end method
