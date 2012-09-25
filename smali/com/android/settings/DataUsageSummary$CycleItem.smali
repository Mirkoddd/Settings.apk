.class public Lcom/android/settings/DataUsageSummary$CycleItem;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CycleItem"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/settings/DataUsageSummary$CycleItem;",
        ">;"
    }
.end annotation


# instance fields
.field public end:J

.field public label:Ljava/lang/CharSequence;

.field public start:J


# direct methods
.method public constructor <init>(Landroid/content/Context;JJ)V
    .registers 12
    .parameter "context"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 1379
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1380
    const/4 v5, 0x1

    move-object v0, p1

    move-wide v1, p2

    move-wide v3, p4

    invoke-static/range {v0 .. v5}, Lcom/android/settings/DataUsageSummary;->formatDateRange(Landroid/content/Context;JJZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary$CycleItem;->label:Ljava/lang/CharSequence;

    .line 1381
    iput-wide p2, p0, Lcom/android/settings/DataUsageSummary$CycleItem;->start:J

    .line 1382
    iput-wide p4, p0, Lcom/android/settings/DataUsageSummary$CycleItem;->end:J

    .line 1383
    return-void
.end method

.method constructor <init>(Ljava/lang/CharSequence;)V
    .registers 2
    .parameter "label"

    .prologue
    .line 1375
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1376
    iput-object p1, p0, Lcom/android/settings/DataUsageSummary$CycleItem;->label:Ljava/lang/CharSequence;

    .line 1377
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/android/settings/DataUsageSummary$CycleItem;)I
    .registers 6
    .parameter "another"

    .prologue
    .line 1401
    iget-wide v0, p0, Lcom/android/settings/DataUsageSummary$CycleItem;->start:J

    iget-wide v2, p1, Lcom/android/settings/DataUsageSummary$CycleItem;->start:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 1370
    check-cast p1, Lcom/android/settings/DataUsageSummary$CycleItem;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings/DataUsageSummary$CycleItem;->compareTo(Lcom/android/settings/DataUsageSummary$CycleItem;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8
    .parameter "o"

    .prologue
    const/4 v1, 0x0

    .line 1392
    instance-of v2, p1, Lcom/android/settings/DataUsageSummary$CycleItem;

    if-eqz v2, :cond_19

    move-object v0, p1

    .line 1393
    check-cast v0, Lcom/android/settings/DataUsageSummary$CycleItem;

    .line 1394
    .local v0, another:Lcom/android/settings/DataUsageSummary$CycleItem;
    iget-wide v2, p0, Lcom/android/settings/DataUsageSummary$CycleItem;->start:J

    iget-wide v4, v0, Lcom/android/settings/DataUsageSummary$CycleItem;->start:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_19

    iget-wide v2, p0, Lcom/android/settings/DataUsageSummary$CycleItem;->end:J

    iget-wide v4, v0, Lcom/android/settings/DataUsageSummary$CycleItem;->end:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_19

    const/4 v1, 0x1

    .line 1396
    .end local v0           #another:Lcom/android/settings/DataUsageSummary$CycleItem;
    :cond_19
    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1387
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary$CycleItem;->label:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
