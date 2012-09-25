.class Lcom/android/settings/bluetooth/Utf8ByteLengthFilter;
.super Ljava/lang/Object;
.source "Utf8ByteLengthFilter.java"

# interfaces
.implements Landroid/text/InputFilter;


# instance fields
.field private final mMaxBytes:I


# direct methods
.method constructor <init>(I)V
    .registers 2
    .parameter "maxBytes"

    .prologue
    .line 43
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput p1, p0, Lcom/android/settings/bluetooth/Utf8ByteLengthFilter;->mMaxBytes:I

    .line 45
    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .registers 14
    .parameter "source"
    .parameter "start"
    .parameter "end"
    .parameter "dest"
    .parameter "dstart"
    .parameter "dend"

    .prologue
    .line 49
    const/4 v5, 0x0

    .line 51
    .local v5, srcByteCount:I
    move v3, p2

    .local v3, i:I
    :goto_2
    if-ge v3, p3, :cond_19

    .line 52
    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 53
    .local v0, c:C
    const/16 v6, 0x80

    if-ge v0, v6, :cond_11

    const/4 v6, 0x1

    :goto_d
    add-int/2addr v5, v6

    .line 51
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 53
    :cond_11
    const/16 v6, 0x800

    if-ge v0, v6, :cond_17

    const/4 v6, 0x2

    goto :goto_d

    :cond_17
    const/4 v6, 0x3

    goto :goto_d

    .line 55
    .end local v0           #c:C
    :cond_19
    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result v2

    .line 56
    .local v2, destLen:I
    const/4 v1, 0x0

    .line 58
    .local v1, destByteCount:I
    const/4 v3, 0x0

    :goto_1f
    if-ge v3, v2, :cond_3a

    .line 59
    if-lt v3, p5, :cond_25

    if-lt v3, p6, :cond_2f

    .line 60
    :cond_25
    invoke-interface {p4, v3}, Landroid/text/Spanned;->charAt(I)C

    move-result v0

    .line 61
    .restart local v0       #c:C
    const/16 v6, 0x80

    if-ge v0, v6, :cond_32

    const/4 v6, 0x1

    :goto_2e
    add-int/2addr v1, v6

    .line 58
    .end local v0           #c:C
    :cond_2f
    add-int/lit8 v3, v3, 0x1

    goto :goto_1f

    .line 61
    .restart local v0       #c:C
    :cond_32
    const/16 v6, 0x800

    if-ge v0, v6, :cond_38

    const/4 v6, 0x2

    goto :goto_2e

    :cond_38
    const/4 v6, 0x3

    goto :goto_2e

    .line 64
    .end local v0           #c:C
    :cond_3a
    iget v6, p0, Lcom/android/settings/bluetooth/Utf8ByteLengthFilter;->mMaxBytes:I

    sub-int v4, v6, v1

    .line 65
    .local v4, keepBytes:I
    if-gtz v4, :cond_43

    .line 66
    const-string v6, ""

    .line 81
    :goto_42
    return-object v6

    .line 67
    :cond_43
    if-lt v4, v5, :cond_47

    .line 68
    const/4 v6, 0x0

    goto :goto_42

    .line 71
    :cond_47
    move v3, p2

    :goto_48
    if-ge v3, p3, :cond_66

    .line 72
    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 73
    .restart local v0       #c:C
    const/16 v6, 0x80

    if-ge v0, v6, :cond_5b

    const/4 v6, 0x1

    :goto_53
    sub-int/2addr v4, v6

    .line 74
    if-gez v4, :cond_63

    .line 75
    invoke-interface {p1, p2, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    goto :goto_42

    .line 73
    :cond_5b
    const/16 v6, 0x800

    if-ge v0, v6, :cond_61

    const/4 v6, 0x2

    goto :goto_53

    :cond_61
    const/4 v6, 0x3

    goto :goto_53

    .line 71
    :cond_63
    add-int/lit8 v3, v3, 0x1

    goto :goto_48

    .line 81
    .end local v0           #c:C
    :cond_66
    const/4 v6, 0x0

    goto :goto_42
.end method
