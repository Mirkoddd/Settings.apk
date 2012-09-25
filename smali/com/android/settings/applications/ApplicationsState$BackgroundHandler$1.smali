.class Lcom/android/settings/applications/ApplicationsState$BackgroundHandler$1;
.super Landroid/content/pm/IPackageStatsObserver$Stub;
.source "ApplicationsState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;)V
    .registers 2
    .parameter

    .prologue
    .line 714
    iput-object p1, p0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler$1;->this$1:Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;

    invoke-direct {p0}, Landroid/content/pm/IPackageStatsObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetStatsCompleted(Landroid/content/pm/PackageStats;Z)V
    .registers 19
    .parameter "stats"
    .parameter "succeeded"

    .prologue
    .line 716
    const/4 v9, 0x0

    .line 717
    .local v9, sizeChanged:Z
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler$1;->this$1:Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;

    iget-object v10, v10, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings/applications/ApplicationsState;

    iget-object v11, v10, Lcom/android/settings/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    monitor-enter v11

    .line 719
    :try_start_a
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler$1;->this$1:Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;

    iget-object v10, v10, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings/applications/ApplicationsState;

    iget-object v10, v10, Lcom/android/settings/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/content/pm/PackageStats;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/ApplicationsState$AppEntry;

    .line 720
    .local v1, entry:Lcom/android/settings/applications/ApplicationsState$AppEntry;
    if-eqz v1, :cond_fd

    .line 721
    monitor-enter v1
    :try_end_1f
    .catchall {:try_start_a .. :try_end_1f} :catchall_12f

    .line 722
    const/4 v10, 0x0

    :try_start_20
    iput-boolean v10, v1, Lcom/android/settings/applications/ApplicationsState$AppEntry;->sizeStale:Z

    .line 723
    const-wide/16 v12, 0x0

    iput-wide v12, v1, Lcom/android/settings/applications/ApplicationsState$AppEntry;->sizeLoadStart:J

    .line 724
    move-object/from16 v0, p1

    iget-wide v12, v0, Landroid/content/pm/PackageStats;->externalCodeSize:J

    move-object/from16 v0, p1

    iget-wide v14, v0, Landroid/content/pm/PackageStats;->externalObbSize:J

    add-long v2, v12, v14

    .line 726
    .local v2, externalCodeSize:J
    move-object/from16 v0, p1

    iget-wide v12, v0, Landroid/content/pm/PackageStats;->externalDataSize:J

    move-object/from16 v0, p1

    iget-wide v14, v0, Landroid/content/pm/PackageStats;->externalMediaSize:J

    add-long/2addr v12, v14

    move-object/from16 v0, p1

    iget-wide v14, v0, Landroid/content/pm/PackageStats;->externalCacheSize:J

    add-long v4, v12, v14

    .line 728
    .local v4, externalDataSize:J
    add-long v12, v2, v4

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler$1;->this$1:Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;

    iget-object v10, v10, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings/applications/ApplicationsState;

    move-object/from16 v0, p1

    #calls: Lcom/android/settings/applications/ApplicationsState;->getTotalInternalSize(Landroid/content/pm/PackageStats;)J
    invoke-static {v10, v0}, Lcom/android/settings/applications/ApplicationsState;->access$100(Lcom/android/settings/applications/ApplicationsState;Landroid/content/pm/PackageStats;)J

    move-result-wide v14

    add-long v7, v12, v14

    .line 730
    .local v7, newSize:J
    iget-wide v12, v1, Lcom/android/settings/applications/ApplicationsState$AppEntry;->size:J

    cmp-long v10, v12, v7

    if-nez v10, :cond_7f

    iget-wide v12, v1, Lcom/android/settings/applications/ApplicationsState$SizeInfo;->cacheSize:J

    move-object/from16 v0, p1

    iget-wide v14, v0, Landroid/content/pm/PackageStats;->cacheSize:J

    cmp-long v10, v12, v14

    if-nez v10, :cond_7f

    iget-wide v12, v1, Lcom/android/settings/applications/ApplicationsState$SizeInfo;->codeSize:J

    move-object/from16 v0, p1

    iget-wide v14, v0, Landroid/content/pm/PackageStats;->codeSize:J

    cmp-long v10, v12, v14

    if-nez v10, :cond_7f

    iget-wide v12, v1, Lcom/android/settings/applications/ApplicationsState$SizeInfo;->dataSize:J

    move-object/from16 v0, p1

    iget-wide v14, v0, Landroid/content/pm/PackageStats;->dataSize:J

    cmp-long v10, v12, v14

    if-nez v10, :cond_7f

    iget-wide v12, v1, Lcom/android/settings/applications/ApplicationsState$SizeInfo;->externalCodeSize:J

    cmp-long v10, v12, v2

    if-nez v10, :cond_7f

    iget-wide v12, v1, Lcom/android/settings/applications/ApplicationsState$SizeInfo;->externalDataSize:J

    cmp-long v10, v12, v4

    if-eqz v10, :cond_de

    .line 736
    :cond_7f
    iput-wide v7, v1, Lcom/android/settings/applications/ApplicationsState$AppEntry;->size:J

    .line 737
    move-object/from16 v0, p1

    iget-wide v12, v0, Landroid/content/pm/PackageStats;->cacheSize:J

    iput-wide v12, v1, Lcom/android/settings/applications/ApplicationsState$SizeInfo;->cacheSize:J

    .line 738
    move-object/from16 v0, p1

    iget-wide v12, v0, Landroid/content/pm/PackageStats;->codeSize:J

    iput-wide v12, v1, Lcom/android/settings/applications/ApplicationsState$SizeInfo;->codeSize:J

    .line 739
    move-object/from16 v0, p1

    iget-wide v12, v0, Landroid/content/pm/PackageStats;->dataSize:J

    iput-wide v12, v1, Lcom/android/settings/applications/ApplicationsState$SizeInfo;->dataSize:J

    .line 740
    iput-wide v2, v1, Lcom/android/settings/applications/ApplicationsState$SizeInfo;->externalCodeSize:J

    .line 741
    iput-wide v4, v1, Lcom/android/settings/applications/ApplicationsState$SizeInfo;->externalDataSize:J

    .line 742
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler$1;->this$1:Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;

    iget-object v10, v10, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings/applications/ApplicationsState;

    iget-wide v12, v1, Lcom/android/settings/applications/ApplicationsState$AppEntry;->size:J

    #calls: Lcom/android/settings/applications/ApplicationsState;->getSizeStr(J)Ljava/lang/String;
    invoke-static {v10, v12, v13}, Lcom/android/settings/applications/ApplicationsState;->access$200(Lcom/android/settings/applications/ApplicationsState;J)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v1, Lcom/android/settings/applications/ApplicationsState$AppEntry;->sizeStr:Ljava/lang/String;

    .line 743
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler$1;->this$1:Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;

    iget-object v10, v10, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings/applications/ApplicationsState;

    move-object/from16 v0, p1

    #calls: Lcom/android/settings/applications/ApplicationsState;->getTotalInternalSize(Landroid/content/pm/PackageStats;)J
    invoke-static {v10, v0}, Lcom/android/settings/applications/ApplicationsState;->access$100(Lcom/android/settings/applications/ApplicationsState;Landroid/content/pm/PackageStats;)J

    move-result-wide v12

    iput-wide v12, v1, Lcom/android/settings/applications/ApplicationsState$AppEntry;->internalSize:J

    .line 744
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler$1;->this$1:Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;

    iget-object v10, v10, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings/applications/ApplicationsState;

    iget-wide v12, v1, Lcom/android/settings/applications/ApplicationsState$AppEntry;->internalSize:J

    #calls: Lcom/android/settings/applications/ApplicationsState;->getSizeStr(J)Ljava/lang/String;
    invoke-static {v10, v12, v13}, Lcom/android/settings/applications/ApplicationsState;->access$200(Lcom/android/settings/applications/ApplicationsState;J)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v1, Lcom/android/settings/applications/ApplicationsState$AppEntry;->internalSizeStr:Ljava/lang/String;

    .line 745
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler$1;->this$1:Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;

    iget-object v10, v10, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings/applications/ApplicationsState;

    move-object/from16 v0, p1

    #calls: Lcom/android/settings/applications/ApplicationsState;->getTotalExternalSize(Landroid/content/pm/PackageStats;)J
    invoke-static {v10, v0}, Lcom/android/settings/applications/ApplicationsState;->access$300(Lcom/android/settings/applications/ApplicationsState;Landroid/content/pm/PackageStats;)J

    move-result-wide v12

    iput-wide v12, v1, Lcom/android/settings/applications/ApplicationsState$AppEntry;->externalSize:J

    .line 746
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler$1;->this$1:Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;

    iget-object v10, v10, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings/applications/ApplicationsState;

    iget-wide v12, v1, Lcom/android/settings/applications/ApplicationsState$AppEntry;->externalSize:J

    #calls: Lcom/android/settings/applications/ApplicationsState;->getSizeStr(J)Ljava/lang/String;
    invoke-static {v10, v12, v13}, Lcom/android/settings/applications/ApplicationsState;->access$200(Lcom/android/settings/applications/ApplicationsState;J)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v1, Lcom/android/settings/applications/ApplicationsState$AppEntry;->externalSizeStr:Ljava/lang/String;

    .line 749
    const/4 v9, 0x1

    .line 751
    :cond_de
    monitor-exit v1
    :try_end_df
    .catchall {:try_start_20 .. :try_end_df} :catchall_12c

    .line 752
    if-eqz v9, :cond_fd

    .line 753
    :try_start_e1
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler$1;->this$1:Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;

    iget-object v10, v10, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings/applications/ApplicationsState;

    iget-object v10, v10, Lcom/android/settings/applications/ApplicationsState;->mMainHandler:Lcom/android/settings/applications/ApplicationsState$MainHandler;

    const/4 v12, 0x4

    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/content/pm/PackageStats;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v12, v13}, Lcom/android/settings/applications/ApplicationsState$MainHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    .line 755
    .local v6, msg:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler$1;->this$1:Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;

    iget-object v10, v10, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings/applications/ApplicationsState;

    iget-object v10, v10, Lcom/android/settings/applications/ApplicationsState;->mMainHandler:Lcom/android/settings/applications/ApplicationsState$MainHandler;

    invoke-virtual {v10, v6}, Lcom/android/settings/applications/ApplicationsState$MainHandler;->sendMessage(Landroid/os/Message;)Z

    .line 758
    .end local v2           #externalCodeSize:J
    .end local v4           #externalDataSize:J
    .end local v6           #msg:Landroid/os/Message;
    .end local v7           #newSize:J
    :cond_fd
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler$1;->this$1:Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;

    iget-object v10, v10, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings/applications/ApplicationsState;

    iget-object v10, v10, Lcom/android/settings/applications/ApplicationsState;->mCurComputingSizePkg:Ljava/lang/String;

    if-eqz v10, :cond_119

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler$1;->this$1:Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;

    iget-object v10, v10, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings/applications/ApplicationsState;

    iget-object v10, v10, Lcom/android/settings/applications/ApplicationsState;->mCurComputingSizePkg:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/content/pm/PackageStats;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_12a

    .line 760
    :cond_119
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler$1;->this$1:Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;

    iget-object v10, v10, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings/applications/ApplicationsState;

    const/4 v12, 0x0

    iput-object v12, v10, Lcom/android/settings/applications/ApplicationsState;->mCurComputingSizePkg:Ljava/lang/String;

    .line 761
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler$1;->this$1:Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;

    const/4 v12, 0x4

    invoke-virtual {v10, v12}, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->sendEmptyMessage(I)Z

    .line 764
    :cond_12a
    monitor-exit v11
    :try_end_12b
    .catchall {:try_start_e1 .. :try_end_12b} :catchall_12f

    .line 765
    return-void

    .line 751
    :catchall_12c
    move-exception v10

    :try_start_12d
    monitor-exit v1
    :try_end_12e
    .catchall {:try_start_12d .. :try_end_12e} :catchall_12c

    :try_start_12e
    throw v10

    .line 764
    .end local v1           #entry:Lcom/android/settings/applications/ApplicationsState$AppEntry;
    :catchall_12f
    move-exception v10

    monitor-exit v11
    :try_end_131
    .catchall {:try_start_12e .. :try_end_131} :catchall_12f

    throw v10
.end method
