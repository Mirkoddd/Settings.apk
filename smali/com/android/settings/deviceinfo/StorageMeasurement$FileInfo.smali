.class Lcom/android/settings/deviceinfo/StorageMeasurement$FileInfo;
.super Ljava/lang/Object;
.source "StorageMeasurement.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/deviceinfo/StorageMeasurement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FileInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/settings/deviceinfo/StorageMeasurement$FileInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final mFileName:Ljava/lang/String;

.field final mId:J

.field final mSize:J


# direct methods
.method constructor <init>(Ljava/lang/String;JJ)V
    .registers 6
    .parameter "fileName"
    .parameter "size"
    .parameter "id"

    .prologue
    .line 546
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 547
    iput-object p1, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$FileInfo;->mFileName:Ljava/lang/String;

    .line 548
    iput-wide p2, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$FileInfo;->mSize:J

    .line 549
    iput-wide p4, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$FileInfo;->mId:J

    .line 550
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/android/settings/deviceinfo/StorageMeasurement$FileInfo;)I
    .registers 6
    .parameter "that"

    .prologue
    .line 554
    if-eq p0, p1, :cond_a

    iget-wide v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$FileInfo;->mSize:J

    iget-wide v2, p1, Lcom/android/settings/deviceinfo/StorageMeasurement$FileInfo;->mSize:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_c

    :cond_a
    const/4 v0, 0x0

    .line 555
    :goto_b
    return v0

    :cond_c
    iget-wide v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$FileInfo;->mSize:J

    iget-wide v2, p1, Lcom/android/settings/deviceinfo/StorageMeasurement$FileInfo;->mSize:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_16

    const/4 v0, 0x1

    goto :goto_b

    :cond_16
    const/4 v0, -0x1

    goto :goto_b
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 541
    check-cast p1, Lcom/android/settings/deviceinfo/StorageMeasurement$FileInfo;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/StorageMeasurement$FileInfo;->compareTo(Lcom/android/settings/deviceinfo/StorageMeasurement$FileInfo;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 560
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$FileInfo;->mFileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$FileInfo;->mSize:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$FileInfo;->mId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
