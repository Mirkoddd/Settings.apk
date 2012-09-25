.class public Lcom/android/settings/DataUsageSummary$DataUsageAdapter;
.super Landroid/widget/BaseAdapter;
.source "DataUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataUsageAdapter"
.end annotation


# instance fields
.field private final mInsetSide:I

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/DataUsageSummary$AppUsageItem;",
            ">;"
        }
    .end annotation
.end field

.field private mLargest:J

.field private final mProvider:Lcom/android/settings/net/UidDetailProvider;


# direct methods
.method public constructor <init>(Lcom/android/settings/net/UidDetailProvider;I)V
    .registers 4
    .parameter "provider"
    .parameter "insetSide"

    .prologue
    .line 1510
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 1507
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary$DataUsageAdapter;->mItems:Ljava/util/ArrayList;

    .line 1511
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/net/UidDetailProvider;

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary$DataUsageAdapter;->mProvider:Lcom/android/settings/net/UidDetailProvider;

    .line 1512
    iput p2, p0, Lcom/android/settings/DataUsageSummary$DataUsageAdapter;->mInsetSide:I

    .line 1513
    return-void
.end method


# virtual methods
.method public bindStats(Landroid/net/NetworkStats;)V
    .registers 16
    .parameter "stats"

    .prologue
    .line 1519
    iget-object v8, p0, Lcom/android/settings/DataUsageSummary$DataUsageAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 1521
    new-instance v6, Lcom/android/settings/DataUsageSummary$AppUsageItem;

    const/16 v8, 0x3e8

    invoke-direct {v6, v8}, Lcom/android/settings/DataUsageSummary$AppUsageItem;-><init>(I)V

    .line 1522
    .local v6, systemItem:Lcom/android/settings/DataUsageSummary$AppUsageItem;
    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    .line 1524
    .local v4, knownUids:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Lcom/android/settings/DataUsageSummary$AppUsageItem;>;"
    const/4 v0, 0x0

    .line 1525
    .local v0, entry:Landroid/net/NetworkStats$Entry;
    if-eqz p1, :cond_55

    invoke-virtual {p1}, Landroid/net/NetworkStats;->size()I

    move-result v5

    .line 1526
    .local v5, size:I
    :goto_18
    const/4 v1, 0x0

    .local v1, i:I
    :goto_19
    if-ge v1, v5, :cond_67

    .line 1527
    invoke-virtual {p1, v1, v0}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v0

    .line 1529
    iget v7, v0, Landroid/net/NetworkStats$Entry;->uid:I

    .line 1530
    .local v7, uid:I
    const/16 v8, 0x2710

    if-lt v7, v8, :cond_57

    const v8, 0x1869f

    if-gt v7, v8, :cond_57

    const/4 v2, 0x1

    .line 1532
    .local v2, isApp:Z
    :goto_2b
    if-nez v2, :cond_33

    const/4 v8, -0x4

    if-eq v7, v8, :cond_33

    const/4 v8, -0x5

    if-ne v7, v8, :cond_59

    .line 1533
    :cond_33
    invoke-virtual {v4, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/DataUsageSummary$AppUsageItem;

    .line 1534
    .local v3, item:Lcom/android/settings/DataUsageSummary$AppUsageItem;
    if-nez v3, :cond_48

    .line 1535
    new-instance v3, Lcom/android/settings/DataUsageSummary$AppUsageItem;

    .end local v3           #item:Lcom/android/settings/DataUsageSummary$AppUsageItem;
    invoke-direct {v3, v7}, Lcom/android/settings/DataUsageSummary$AppUsageItem;-><init>(I)V

    .line 1536
    .restart local v3       #item:Lcom/android/settings/DataUsageSummary$AppUsageItem;
    invoke-virtual {v4, v7, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1537
    iget-object v8, p0, Lcom/android/settings/DataUsageSummary$DataUsageAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1540
    :cond_48
    iget-wide v8, v3, Lcom/android/settings/DataUsageSummary$AppUsageItem;->total:J

    iget-wide v10, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    iget-wide v12, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    add-long/2addr v10, v12

    add-long/2addr v8, v10

    iput-wide v8, v3, Lcom/android/settings/DataUsageSummary$AppUsageItem;->total:J

    .line 1526
    .end local v3           #item:Lcom/android/settings/DataUsageSummary$AppUsageItem;
    :goto_52
    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    .line 1525
    .end local v1           #i:I
    .end local v2           #isApp:Z
    .end local v5           #size:I
    .end local v7           #uid:I
    :cond_55
    const/4 v5, 0x0

    goto :goto_18

    .line 1530
    .restart local v1       #i:I
    .restart local v5       #size:I
    .restart local v7       #uid:I
    :cond_57
    const/4 v2, 0x0

    goto :goto_2b

    .line 1542
    .restart local v2       #isApp:Z
    :cond_59
    iget-wide v8, v6, Lcom/android/settings/DataUsageSummary$AppUsageItem;->total:J

    iget-wide v10, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    iget-wide v12, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    add-long/2addr v10, v12

    add-long/2addr v8, v10

    iput-wide v8, v6, Lcom/android/settings/DataUsageSummary$AppUsageItem;->total:J

    .line 1543
    invoke-virtual {v6, v7}, Lcom/android/settings/DataUsageSummary$AppUsageItem;->addUid(I)V

    goto :goto_52

    .line 1547
    .end local v2           #isApp:Z
    .end local v7           #uid:I
    :cond_67
    iget-wide v8, v6, Lcom/android/settings/DataUsageSummary$AppUsageItem;->total:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-lez v8, :cond_74

    .line 1548
    iget-object v8, p0, Lcom/android/settings/DataUsageSummary$DataUsageAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1551
    :cond_74
    iget-object v8, p0, Lcom/android/settings/DataUsageSummary$DataUsageAdapter;->mItems:Ljava/util/ArrayList;

    invoke-static {v8}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 1552
    iget-object v8, p0, Lcom/android/settings/DataUsageSummary$DataUsageAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_92

    iget-object v8, p0, Lcom/android/settings/DataUsageSummary$DataUsageAdapter;->mItems:Ljava/util/ArrayList;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/settings/DataUsageSummary$AppUsageItem;

    iget-wide v8, v8, Lcom/android/settings/DataUsageSummary$AppUsageItem;->total:J

    :goto_8c
    iput-wide v8, p0, Lcom/android/settings/DataUsageSummary$DataUsageAdapter;->mLargest:J

    .line 1553
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary$DataUsageAdapter;->notifyDataSetChanged()V

    .line 1554
    return-void

    .line 1552
    :cond_92
    const-wide/16 v8, 0x0

    goto :goto_8c
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 1558
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary$DataUsageAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter "position"

    .prologue
    .line 1563
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary$DataUsageAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .parameter "position"

    .prologue
    .line 1568
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary$DataUsageAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/DataUsageSummary$AppUsageItem;

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary$AppUsageItem;->uids:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    int-to-long v0, v0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 13
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v2, 0x0

    .line 1573
    if-nez p2, :cond_1d

    .line 1574
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f04003e

    invoke-virtual {v5, v6, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 1577
    iget v5, p0, Lcom/android/settings/DataUsageSummary$DataUsageAdapter;->mInsetSide:I

    if-lez v5, :cond_1d

    .line 1578
    iget v5, p0, Lcom/android/settings/DataUsageSummary$DataUsageAdapter;->mInsetSide:I

    iget v6, p0, Lcom/android/settings/DataUsageSummary$DataUsageAdapter;->mInsetSide:I

    invoke-virtual {p2, v5, v2, v6, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 1582
    :cond_1d
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1584
    .local v0, context:Landroid/content/Context;
    const v5, 0x1020014

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 1585
    .local v4, text1:Landroid/widget/TextView;
    const v5, 0x102000d

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    .line 1589
    .local v3, progress:Landroid/widget/ProgressBar;
    iget-object v5, p0, Lcom/android/settings/DataUsageSummary$DataUsageAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/DataUsageSummary$AppUsageItem;

    .line 1590
    .local v1, item:Lcom/android/settings/DataUsageSummary$AppUsageItem;
    iget-object v5, p0, Lcom/android/settings/DataUsageSummary$DataUsageAdapter;->mProvider:Lcom/android/settings/net/UidDetailProvider;

    invoke-static {v5, v1, p2}, Lcom/android/settings/DataUsageSummary$UidDetailTask;->bindView(Lcom/android/settings/net/UidDetailProvider;Lcom/android/settings/DataUsageSummary$AppUsageItem;Landroid/view/View;)V

    .line 1592
    iget-wide v5, v1, Lcom/android/settings/DataUsageSummary$AppUsageItem;->total:J

    invoke-static {v0, v5, v6}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1594
    iget-wide v5, p0, Lcom/android/settings/DataUsageSummary$DataUsageAdapter;->mLargest:J

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_5a

    iget-wide v5, v1, Lcom/android/settings/DataUsageSummary$AppUsageItem;->total:J

    const-wide/16 v7, 0x64

    mul-long/2addr v5, v7

    iget-wide v7, p0, Lcom/android/settings/DataUsageSummary$DataUsageAdapter;->mLargest:J

    div-long/2addr v5, v7

    long-to-int v2, v5

    .line 1595
    .local v2, percentTotal:I
    :cond_5a
    invoke-virtual {v3, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 1597
    return-object p2
.end method
