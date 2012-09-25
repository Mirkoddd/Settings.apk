.class public Lcom/android/settings/deviceinfo/StorageMeasurement;
.super Ljava/lang/Object;
.source "StorageMeasurement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/deviceinfo/StorageMeasurement$1;,
        Lcom/android/settings/deviceinfo/StorageMeasurement$FileInfo;,
        Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;,
        Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementReceiver;
    }
.end annotation


# static fields
.field private static final DEFAULT_CONTAINER_COMPONENT:Landroid/content/ComponentName;

.field static final LOGV:Z

.field private static sInstances:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/os/storage/StorageVolume;",
            "Lcom/android/settings/deviceinfo/StorageMeasurement;",
            ">;"
        }
    .end annotation
.end field

.field private static sInternalInstance:Lcom/android/settings/deviceinfo/StorageMeasurement;


# instance fields
.field private mAppsSize:J

.field private mAvailSize:J

.field private mDownloadsSize:J

.field mFileInfoForMisc:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/deviceinfo/StorageMeasurement$FileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;

.field private final mIsInternal:Z

.field private final mIsPrimary:Z

.field private mMediaSizes:[J

.field private mMiscSize:J

.field private volatile mReceiver:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementReceiver;",
            ">;"
        }
    .end annotation
.end field

.field private final mStorageVolume:Landroid/os/storage/StorageVolume;

.field private mTotalSize:J


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 69
    const-string v0, "StorageMeasurement"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/deviceinfo/StorageMeasurement;->LOGV:Z

    .line 85
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.defcontainer"

    const-string v2, "com.android.defcontainer.DefaultContainerService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings/deviceinfo/StorageMeasurement;->DEFAULT_CONTAINER_COMPONENT:Landroid/content/ComponentName;

    .line 92
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/android/settings/deviceinfo/StorageMeasurement;->sInstances:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/os/storage/StorageVolume;Z)V
    .registers 8
    .parameter "context"
    .parameter "storageVolume"
    .parameter "isPrimary"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 116
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 103
    sget-object v1, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->sMediaCategories:[Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$MediaCategory;

    array-length v1, v1

    new-array v1, v1, [J

    iput-object v1, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mMediaSizes:[J

    .line 117
    iput-object p2, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mStorageVolume:Landroid/os/storage/StorageVolume;

    .line 118
    if-nez p2, :cond_31

    move v1, v2

    :goto_11
    iput-boolean v1, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mIsInternal:Z

    .line 119
    iget-boolean v1, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mIsInternal:Z

    if-nez v1, :cond_33

    if-eqz p3, :cond_33

    :goto_19
    iput-boolean v2, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mIsPrimary:Z

    .line 122
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "MemoryMeasurement"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 123
    .local v0, handlerThread:Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 124
    new-instance v1, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, p1, v2}, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;-><init>(Lcom/android/settings/deviceinfo/StorageMeasurement;Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mHandler:Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;

    .line 125
    return-void

    .end local v0           #handlerThread:Landroid/os/HandlerThread;
    :cond_31
    move v1, v3

    .line 118
    goto :goto_11

    :cond_33
    move v2, v3

    .line 119
    goto :goto_19
.end method

.method static synthetic access$1002(Lcom/android/settings/deviceinfo/StorageMeasurement;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput-wide p1, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mAvailSize:J

    return-wide p1
.end method

.method static synthetic access$1100(Lcom/android/settings/deviceinfo/StorageMeasurement;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/StorageMeasurement;->sendInternalApproximateUpdate()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/settings/deviceinfo/StorageMeasurement;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mIsPrimary:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/android/settings/deviceinfo/StorageMeasurement;)[J
    .registers 2
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mMediaSizes:[J

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/settings/deviceinfo/StorageMeasurement;Lcom/android/internal/app/IMediaContainerService;Ljava/lang/String;)J
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Lcom/android/settings/deviceinfo/StorageMeasurement;->getDirectorySize(Lcom/android/internal/app/IMediaContainerService;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$1502(Lcom/android/settings/deviceinfo/StorageMeasurement;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput-wide p1, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mDownloadsSize:J

    return-wide p1
.end method

.method static synthetic access$1602(Lcom/android/settings/deviceinfo/StorageMeasurement;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput-wide p1, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mMiscSize:J

    return-wide p1
.end method

.method static synthetic access$1700(Lcom/android/settings/deviceinfo/StorageMeasurement;Lcom/android/internal/app/IMediaContainerService;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/StorageMeasurement;->measureSizesOfMisc(Lcom/android/internal/app/IMediaContainerService;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/deviceinfo/StorageMeasurement;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/StorageMeasurement;->sendExactUpdate()V

    return-void
.end method

.method static synthetic access$300()Landroid/content/ComponentName;
    .registers 1

    .prologue
    .line 65
    sget-object v0, Lcom/android/settings/deviceinfo/StorageMeasurement;->DEFAULT_CONTAINER_COMPONENT:Landroid/content/ComponentName;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/deviceinfo/StorageMeasurement;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mIsInternal:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/settings/deviceinfo/StorageMeasurement;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput-wide p1, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mAppsSize:J

    return-wide p1
.end method

.method static synthetic access$800(Lcom/android/settings/deviceinfo/StorageMeasurement;)Landroid/os/storage/StorageVolume;
    .registers 2
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mStorageVolume:Landroid/os/storage/StorageVolume;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/settings/deviceinfo/StorageMeasurement;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput-wide p1, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mTotalSize:J

    return-wide p1
.end method

.method private getDirectorySize(Lcom/android/internal/app/IMediaContainerService;Ljava/lang/String;)J
    .registers 7
    .parameter "imcs"
    .parameter "dir"

    .prologue
    .line 496
    :try_start_0
    invoke-interface {p1, p2}, Lcom/android/internal/app/IMediaContainerService;->calculateDirectorySize(Ljava/lang/String;)J
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_5

    move-result-wide v1

    .line 499
    :goto_4
    return-wide v1

    .line 497
    :catch_5
    move-exception v0

    .line 498
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "StorageMeasurement"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not read memory from default container service for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 499
    const-wide/16 v1, 0x0

    goto :goto_4
.end method

.method public static getInstance(Landroid/content/Context;Landroid/os/storage/StorageVolume;Z)Lcom/android/settings/deviceinfo/StorageMeasurement;
    .registers 6
    .parameter "context"
    .parameter "storageVolume"
    .parameter "isPrimary"

    .prologue
    .line 135
    if-nez p1, :cond_14

    .line 136
    sget-object v1, Lcom/android/settings/deviceinfo/StorageMeasurement;->sInternalInstance:Lcom/android/settings/deviceinfo/StorageMeasurement;

    if-nez v1, :cond_11

    .line 137
    new-instance v1, Lcom/android/settings/deviceinfo/StorageMeasurement;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p1, p2}, Lcom/android/settings/deviceinfo/StorageMeasurement;-><init>(Landroid/content/Context;Landroid/os/storage/StorageVolume;Z)V

    sput-object v1, Lcom/android/settings/deviceinfo/StorageMeasurement;->sInternalInstance:Lcom/android/settings/deviceinfo/StorageMeasurement;

    .line 140
    :cond_11
    sget-object v1, Lcom/android/settings/deviceinfo/StorageMeasurement;->sInternalInstance:Lcom/android/settings/deviceinfo/StorageMeasurement;

    .line 148
    :goto_13
    return-object v1

    .line 142
    :cond_14
    sget-object v1, Lcom/android/settings/deviceinfo/StorageMeasurement;->sInstances:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 143
    sget-object v1, Lcom/android/settings/deviceinfo/StorageMeasurement;->sInstances:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/deviceinfo/StorageMeasurement;

    goto :goto_13

    .line 145
    :cond_25
    new-instance v0, Lcom/android/settings/deviceinfo/StorageMeasurement;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lcom/android/settings/deviceinfo/StorageMeasurement;-><init>(Landroid/content/Context;Landroid/os/storage/StorageVolume;Z)V

    .line 147
    .local v0, storageMeasurement:Lcom/android/settings/deviceinfo/StorageMeasurement;
    sget-object v1, Lcom/android/settings/deviceinfo/StorageMeasurement;->sInstances:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 148
    goto :goto_13
.end method

.method private measureSizesOfMisc(Lcom/android/internal/app/IMediaContainerService;)V
    .registers 22
    .parameter "imcs"

    .prologue
    .line 508
    new-instance v19, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mStorageVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 509
    .local v19, top:Ljava/io/File;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mFileInfoForMisc:Ljava/util/List;

    .line 510
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v16

    .line 511
    .local v16, files:[Ljava/io/File;
    if-nez v16, :cond_1f

    .line 539
    :goto_1e
    return-void

    .line 512
    :cond_1f
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v18, v0

    .line 514
    .local v18, len:I
    const-wide/16 v6, 0x0

    .line 515
    .local v6, counter:J
    const/16 v17, 0x0

    .local v17, i:I
    :goto_28
    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_95

    .line 516
    aget-object v2, v16, v17

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 517
    .local v3, path:Ljava/lang/String;
    sget-object v2, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->sPathsExcludedForMisc:Ljava/util/Set;

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 515
    :cond_3c
    :goto_3c
    add-int/lit8 v17, v17, 0x1

    goto :goto_28

    .line 525
    :cond_3f
    aget-object v2, v16, v17

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_68

    .line 526
    aget-object v2, v16, v17

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v4

    .line 527
    .local v4, fileSize:J
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mFileInfoForMisc:Ljava/util/List;

    new-instance v2, Lcom/android/settings/deviceinfo/StorageMeasurement$FileInfo;

    const-wide/16 v12, 0x1

    add-long v14, v6, v12

    .end local v6           #counter:J
    .local v14, counter:J
    invoke-direct/range {v2 .. v7}, Lcom/android/settings/deviceinfo/StorageMeasurement$FileInfo;-><init>(Ljava/lang/String;JJ)V

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 528
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mMiscSize:J

    add-long/2addr v8, v4

    move-object/from16 v0, p0

    iput-wide v8, v0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mMiscSize:J

    move-wide v6, v14

    .line 529
    .end local v14           #counter:J
    .restart local v6       #counter:J
    goto :goto_3c

    .end local v4           #fileSize:J
    :cond_68
    aget-object v2, v16, v17

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 530
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3}, Lcom/android/settings/deviceinfo/StorageMeasurement;->getDirectorySize(Lcom/android/internal/app/IMediaContainerService;Ljava/lang/String;)J

    move-result-wide v10

    .line 531
    .local v10, dirSize:J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mFileInfoForMisc:Ljava/util/List;

    new-instance v8, Lcom/android/settings/deviceinfo/StorageMeasurement$FileInfo;

    const-wide/16 v12, 0x1

    add-long v14, v6, v12

    .end local v6           #counter:J
    .restart local v14       #counter:J
    move-object v9, v3

    move-wide v12, v6

    invoke-direct/range {v8 .. v13}, Lcom/android/settings/deviceinfo/StorageMeasurement$FileInfo;-><init>(Ljava/lang/String;JJ)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 532
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mMiscSize:J

    add-long/2addr v8, v10

    move-object/from16 v0, p0

    iput-wide v8, v0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mMiscSize:J

    move-wide v6, v14

    .end local v14           #counter:J
    .restart local v6       #counter:J
    goto :goto_3c

    .line 538
    .end local v3           #path:Ljava/lang/String;
    .end local v10           #dirSize:J
    :cond_95
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mFileInfoForMisc:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    goto :goto_1e
.end method

.method private sendExactUpdate()V
    .registers 6

    .prologue
    .line 188
    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mReceiver:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_1b

    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mReceiver:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementReceiver;

    move-object v1, v2

    .line 189
    .local v1, receiver:Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementReceiver;
    :goto_d
    if-nez v1, :cond_1d

    .line 190
    sget-boolean v2, Lcom/android/settings/deviceinfo/StorageMeasurement;->LOGV:Z

    if-eqz v2, :cond_1a

    .line 191
    const-string v2, "StorageMeasurement"

    const-string v3, "measurements dropped because receiver is null! wasted effort"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    :cond_1a
    :goto_1a
    return-void

    .line 188
    .end local v1           #receiver:Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementReceiver;
    :cond_1b
    const/4 v1, 0x0

    goto :goto_d

    .line 196
    .restart local v1       #receiver:Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementReceiver;
    :cond_1d
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 197
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "total_size"

    iget-wide v3, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mTotalSize:J

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 198
    const-string v2, "avail_size"

    iget-wide v3, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mAvailSize:J

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 199
    const-string v2, "apps_used"

    iget-wide v3, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mAppsSize:J

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 200
    const-string v2, "downloads_size"

    iget-wide v3, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mDownloadsSize:J

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 201
    const-string v2, "misc_size"

    iget-wide v3, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mMiscSize:J

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 202
    const-string v2, "media_sizes"

    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mMediaSizes:[J

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 204
    invoke-interface {v1, v0}, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementReceiver;->updateExact(Landroid/os/Bundle;)V

    goto :goto_1a
.end method

.method private sendInternalApproximateUpdate()V
    .registers 6

    .prologue
    .line 175
    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mReceiver:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_10

    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mReceiver:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementReceiver;

    move-object v1, v2

    .line 176
    .local v1, receiver:Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementReceiver;
    :goto_d
    if-nez v1, :cond_12

    .line 185
    :goto_f
    return-void

    .line 175
    .end local v1           #receiver:Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementReceiver;
    :cond_10
    const/4 v1, 0x0

    goto :goto_d

    .line 180
    .restart local v1       #receiver:Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementReceiver;
    :cond_12
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 181
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "total_size"

    iget-wide v3, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mTotalSize:J

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 182
    const-string v2, "avail_size"

    iget-wide v3, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mAvailSize:J

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 184
    invoke-interface {v1, v0}, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementReceiver;->updateApproximate(Landroid/os/Bundle;)V

    goto :goto_f
.end method


# virtual methods
.method public cleanUp()V
    .registers 3

    .prologue
    .line 165
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mReceiver:Ljava/lang/ref/WeakReference;

    .line 166
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mHandler:Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->removeMessages(I)V

    .line 167
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mHandler:Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->sendEmptyMessage(I)Z

    .line 168
    return-void
.end method

.method getMiscSize()J
    .registers 3

    .prologue
    .line 504
    iget-wide v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mMiscSize:J

    return-wide v0
.end method

.method public invalidate()V
    .registers 3

    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mHandler:Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->sendEmptyMessage(I)Z

    .line 172
    return-void
.end method

.method isExternalSDCard()Z
    .registers 2

    .prologue
    .line 568
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mIsPrimary:Z

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mIsInternal:Z

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public measure()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 159
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mHandler:Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_e

    .line 160
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mHandler:Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->sendEmptyMessage(I)Z

    .line 162
    :cond_e
    return-void
.end method

.method public setReceiver(Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementReceiver;)V
    .registers 3
    .parameter "receiver"

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mReceiver:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mReceiver:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_13

    .line 154
    :cond_c
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mReceiver:Ljava/lang/ref/WeakReference;

    .line 156
    :cond_13
    return-void
.end method
