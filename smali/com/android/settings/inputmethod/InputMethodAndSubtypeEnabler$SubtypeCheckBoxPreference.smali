.class Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler$SubtypeCheckBoxPreference;
.super Landroid/preference/CheckBoxPreference;
.source "InputMethodAndSubtypeEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SubtypeCheckBoxPreference"
.end annotation


# instance fields
.field private final mIsSystemLanguage:Z

.field private final mIsSystemLocale:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "context"
    .parameter "subtypeLocale"
    .parameter "systemLocale"

    .prologue
    const/4 v0, 0x0

    .line 386
    invoke-direct {p0, p1}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 387
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 388
    iput-boolean v0, p0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler$SubtypeCheckBoxPreference;->mIsSystemLocale:Z

    .line 389
    iput-boolean v0, p0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler$SubtypeCheckBoxPreference;->mIsSystemLanguage:Z

    .line 395
    :goto_e
    return-void

    .line 391
    :cond_f
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler$SubtypeCheckBoxPreference;->mIsSystemLocale:Z

    .line 392
    iget-boolean v1, p0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler$SubtypeCheckBoxPreference;->mIsSystemLocale:Z

    if-nez v1, :cond_24

    const/4 v1, 0x2

    invoke-virtual {p3, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_25

    :cond_24
    const/4 v0, 0x1

    :cond_25
    iput-boolean v0, p0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler$SubtypeCheckBoxPreference;->mIsSystemLanguage:Z

    goto :goto_e
.end method


# virtual methods
.method public compareTo(Landroid/preference/Preference;)I
    .registers 8
    .parameter "p"

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 399
    instance-of v5, p1, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler$SubtypeCheckBoxPreference;

    if-eqz v5, :cond_48

    move-object v0, p1

    .line 400
    check-cast v0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler$SubtypeCheckBoxPreference;

    .line 401
    .local v0, pref:Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler$SubtypeCheckBoxPreference;
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler$SubtypeCheckBoxPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    .line 402
    .local v1, t0:Ljava/lang/CharSequence;
    invoke-virtual {v0}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler$SubtypeCheckBoxPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    .line 403
    .local v2, t1:Ljava/lang/CharSequence;
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_19

    .line 404
    const/4 v3, 0x0

    .line 427
    .end local v0           #pref:Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler$SubtypeCheckBoxPreference;
    .end local v1           #t0:Ljava/lang/CharSequence;
    .end local v2           #t1:Ljava/lang/CharSequence;
    :cond_18
    :goto_18
    return v3

    .line 406
    .restart local v0       #pref:Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler$SubtypeCheckBoxPreference;
    .restart local v1       #t0:Ljava/lang/CharSequence;
    .restart local v2       #t1:Ljava/lang/CharSequence;
    :cond_19
    iget-boolean v5, p0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler$SubtypeCheckBoxPreference;->mIsSystemLocale:Z

    if-nez v5, :cond_18

    .line 409
    iget-boolean v5, v0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler$SubtypeCheckBoxPreference;->mIsSystemLocale:Z

    if-eqz v5, :cond_23

    move v3, v4

    .line 410
    goto :goto_18

    .line 412
    :cond_23
    iget-boolean v5, p0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler$SubtypeCheckBoxPreference;->mIsSystemLanguage:Z

    if-nez v5, :cond_18

    .line 415
    iget-boolean v5, v0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler$SubtypeCheckBoxPreference;->mIsSystemLanguage:Z

    if-eqz v5, :cond_2d

    move v3, v4

    .line 416
    goto :goto_18

    .line 418
    :cond_2d
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_35

    move v3, v4

    .line 419
    goto :goto_18

    .line 421
    :cond_35
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_18

    .line 424
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    goto :goto_18

    .line 426
    .end local v0           #pref:Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler$SubtypeCheckBoxPreference;
    .end local v1           #t0:Ljava/lang/CharSequence;
    .end local v2           #t1:Ljava/lang/CharSequence;
    :cond_48
    invoke-static {}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->access$100()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Illegal preference type."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 380
    check-cast p1, Landroid/preference/Preference;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler$SubtypeCheckBoxPreference;->compareTo(Landroid/preference/Preference;)I

    move-result v0

    return v0
.end method
