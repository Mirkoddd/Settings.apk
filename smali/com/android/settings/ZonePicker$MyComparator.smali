.class Lcom/android/settings/ZonePicker$MyComparator;
.super Ljava/lang/Object;
.source "ZonePicker.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ZonePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/util/HashMap",
        "<**>;>;"
    }
.end annotation


# instance fields
.field private mSortingKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "sortingKey"

    .prologue
    .line 322
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 323
    iput-object p1, p0, Lcom/android/settings/ZonePicker$MyComparator;->mSortingKey:Ljava/lang/String;

    .line 324
    return-void
.end method

.method private isComparable(Ljava/lang/Object;)Z
    .registers 3
    .parameter "value"

    .prologue
    .line 348
    if-eqz p1, :cond_8

    instance-of v0, p1, Ljava/lang/Comparable;

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 319
    check-cast p1, Ljava/util/HashMap;

    .end local p1
    check-cast p2, Ljava/util/HashMap;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/ZonePicker$MyComparator;->compare(Ljava/util/HashMap;Ljava/util/HashMap;)I

    move-result v0

    return v0
.end method

.method public compare(Ljava/util/HashMap;Ljava/util/HashMap;)I
    .registers 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<**>;",
            "Ljava/util/HashMap",
            "<**>;)I"
        }
    .end annotation

    .prologue
    .line 331
    .local p1, map1:Ljava/util/HashMap;,"Ljava/util/HashMap<**>;"
    .local p2, map2:Ljava/util/HashMap;,"Ljava/util/HashMap<**>;"
    iget-object v2, p0, Lcom/android/settings/ZonePicker$MyComparator;->mSortingKey:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 332
    .local v0, value1:Ljava/lang/Object;
    iget-object v2, p0, Lcom/android/settings/ZonePicker$MyComparator;->mSortingKey:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 338
    .local v1, value2:Ljava/lang/Object;
    invoke-direct {p0, v0}, Lcom/android/settings/ZonePicker$MyComparator;->isComparable(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1c

    .line 339
    invoke-direct {p0, v1}, Lcom/android/settings/ZonePicker$MyComparator;->isComparable(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    const/4 v2, 0x1

    .line 344
    .end local v0           #value1:Ljava/lang/Object;
    :goto_19
    return v2

    .line 339
    .restart local v0       #value1:Ljava/lang/Object;
    :cond_1a
    const/4 v2, 0x0

    goto :goto_19

    .line 340
    :cond_1c
    invoke-direct {p0, v1}, Lcom/android/settings/ZonePicker$MyComparator;->isComparable(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_24

    .line 341
    const/4 v2, -0x1

    goto :goto_19

    .line 344
    :cond_24
    check-cast v0, Ljava/lang/Comparable;

    .end local v0           #value1:Ljava/lang/Object;
    invoke-interface {v0, v1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v2

    goto :goto_19
.end method
