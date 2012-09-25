.class public Lcom/android/settings/LocalePicker;
.super Lcom/android/internal/app/LocalePicker;
.source "LocalePicker.java"

# interfaces
.implements Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/android/internal/app/LocalePicker;-><init>()V

    .line 34
    invoke-virtual {p0, p0}, Lcom/android/settings/LocalePicker;->setLocaleSelectionListener(Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;)V

    .line 35
    return-void
.end method


# virtual methods
.method public onLocaleSelected(Ljava/util/Locale;)V
    .registers 3
    .parameter "locale"

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/android/settings/LocalePicker;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 48
    invoke-static {p1}, Lcom/android/settings/LocalePicker;->updateLocale(Ljava/util/Locale;)V

    .line 49
    return-void
.end method

.method public onResume()V
    .registers 1

    .prologue
    .line 39
    invoke-super {p0}, Lcom/android/internal/app/LocalePicker;->onResume()V

    .line 43
    return-void
.end method
