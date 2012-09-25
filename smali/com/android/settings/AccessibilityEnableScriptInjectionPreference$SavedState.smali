.class Lcom/android/settings/AccessibilityEnableScriptInjectionPreference$SavedState;
.super Landroid/preference/Preference$BaseSavedState;
.source "AccessibilityEnableScriptInjectionPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/AccessibilityEnableScriptInjectionPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/settings/AccessibilityEnableScriptInjectionPreference$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mInjectionAllowed:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 164
    new-instance v0, Lcom/android/settings/AccessibilityEnableScriptInjectionPreference$SavedState$1;

    invoke-direct {v0}, Lcom/android/settings/AccessibilityEnableScriptInjectionPreference$SavedState$1;-><init>()V

    sput-object v0, Lcom/android/settings/AccessibilityEnableScriptInjectionPreference$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 4
    .parameter "source"

    .prologue
    const/4 v0, 0x1

    .line 149
    invoke-direct {p0, p1}, Landroid/preference/Preference$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 150
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v0, :cond_d

    :goto_a
    iput-boolean v0, p0, Lcom/android/settings/AccessibilityEnableScriptInjectionPreference$SavedState;->mInjectionAllowed:Z

    .line 151
    return-void

    .line 150
    :cond_d
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .registers 2
    .parameter "superState"

    .prologue
    .line 160
    invoke-direct {p0, p1}, Landroid/preference/Preference$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 161
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/AccessibilityEnableScriptInjectionPreference$SavedState;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 145
    iget-boolean v0, p0, Lcom/android/settings/AccessibilityEnableScriptInjectionPreference$SavedState;->mInjectionAllowed:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/settings/AccessibilityEnableScriptInjectionPreference$SavedState;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 145
    iput-boolean p1, p0, Lcom/android/settings/AccessibilityEnableScriptInjectionPreference$SavedState;->mInjectionAllowed:Z

    return p1
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .parameter "parcel"
    .parameter "flags"

    .prologue
    .line 155
    invoke-super {p0, p1, p2}, Landroid/preference/Preference$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 156
    iget-boolean v0, p0, Lcom/android/settings/AccessibilityEnableScriptInjectionPreference$SavedState;->mInjectionAllowed:Z

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_8
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 157
    return-void

    .line 156
    :cond_c
    const/4 v0, 0x0

    goto :goto_8
.end method
