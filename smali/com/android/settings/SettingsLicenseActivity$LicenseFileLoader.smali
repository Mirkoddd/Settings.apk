.class Lcom/android/settings/SettingsLicenseActivity$LicenseFileLoader;
.super Ljava/lang/Object;
.source "SettingsLicenseActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SettingsLicenseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LicenseFileLoader"
.end annotation


# instance fields
.field private mFileName:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/android/settings/SettingsLicenseActivity;


# direct methods
.method public constructor <init>(Lcom/android/settings/SettingsLicenseActivity;Ljava/lang/String;Landroid/os/Handler;)V
    .registers 4
    .parameter
    .parameter "fileName"
    .parameter "handler"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/settings/SettingsLicenseActivity$LicenseFileLoader;->this$0:Lcom/android/settings/SettingsLicenseActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p2, p0, Lcom/android/settings/SettingsLicenseActivity$LicenseFileLoader;->mFileName:Ljava/lang/String;

    .line 73
    iput-object p3, p0, Lcom/android/settings/SettingsLicenseActivity$LicenseFileLoader;->mHandler:Landroid/os/Handler;

    .line 74
    return-void
.end method


# virtual methods
.method public run()V
    .registers 12

    .prologue
    const/16 v8, 0x800

    .line 78
    const/4 v6, 0x0

    .line 80
    .local v6, status:I
    const/4 v2, 0x0

    .line 81
    .local v2, inputReader:Ljava/io/InputStreamReader;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 83
    .local v0, data:Ljava/lang/StringBuilder;
    const/16 v8, 0x800

    :try_start_b
    new-array v7, v8, [C

    .line 85
    .local v7, tmp:[C
    iget-object v8, p0, Lcom/android/settings/SettingsLicenseActivity$LicenseFileLoader;->mFileName:Ljava/lang/String;

    const-string v9, ".gz"

    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_93

    .line 86
    new-instance v3, Ljava/io/InputStreamReader;

    new-instance v8, Ljava/util/zip/GZIPInputStream;

    new-instance v9, Ljava/io/FileInputStream;

    iget-object v10, p0, Lcom/android/settings/SettingsLicenseActivity$LicenseFileLoader;->mFileName:Ljava/lang/String;

    invoke-direct {v9, v10}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v8, v9}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .end local v2           #inputReader:Ljava/io/InputStreamReader;
    .local v3, inputReader:Ljava/io/InputStreamReader;
    move-object v2, v3

    .line 92
    .end local v3           #inputReader:Ljava/io/InputStreamReader;
    .restart local v2       #inputReader:Ljava/io/InputStreamReader;
    :goto_29
    invoke-virtual {v2, v7}, Ljava/io/InputStreamReader;->read([C)I

    move-result v5

    .local v5, numRead:I
    if-ltz v5, :cond_9c

    .line 93
    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8, v5}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_33
    .catchall {:try_start_b .. :try_end_33} :catchall_c8
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_33} :catch_34
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_33} :catch_a4

    goto :goto_29

    .line 95
    .end local v5           #numRead:I
    .end local v7           #tmp:[C
    :catch_34
    move-exception v1

    .line 96
    .local v1, e:Ljava/io/FileNotFoundException;
    :try_start_35
    const-string v8, "SettingsLicenseActivity.LicenseFileLoader"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "License HTML file not found at "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/SettingsLicenseActivity$LicenseFileLoader;->mFileName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4f
    .catchall {:try_start_35 .. :try_end_4f} :catchall_c8

    .line 97
    const/4 v6, 0x1

    .line 103
    if-eqz v2, :cond_55

    .line 104
    :try_start_52
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_55
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_55} :catch_cf

    .line 110
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :cond_55
    :goto_55
    if-nez v6, :cond_7e

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_7e

    .line 111
    const-string v8, "SettingsLicenseActivity.LicenseFileLoader"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "License HTML is empty (from "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/SettingsLicenseActivity$LicenseFileLoader;->mFileName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    const/4 v6, 0x3

    .line 116
    :cond_7e
    iget-object v8, p0, Lcom/android/settings/SettingsLicenseActivity$LicenseFileLoader;->mHandler:Landroid/os/Handler;

    const/4 v9, 0x0

    invoke-virtual {v8, v6, v9}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 117
    .local v4, msg:Landroid/os/Message;
    if-nez v6, :cond_8d

    .line 118
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 120
    :cond_8d
    iget-object v8, p0, Lcom/android/settings/SettingsLicenseActivity$LicenseFileLoader;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 121
    return-void

    .line 89
    .end local v4           #msg:Landroid/os/Message;
    .restart local v7       #tmp:[C
    :cond_93
    :try_start_93
    new-instance v3, Ljava/io/FileReader;

    iget-object v8, p0, Lcom/android/settings/SettingsLicenseActivity$LicenseFileLoader;->mFileName:Ljava/lang/String;

    invoke-direct {v3, v8}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_9a
    .catchall {:try_start_93 .. :try_end_9a} :catchall_c8
    .catch Ljava/io/FileNotFoundException; {:try_start_93 .. :try_end_9a} :catch_34
    .catch Ljava/io/IOException; {:try_start_93 .. :try_end_9a} :catch_a4

    .end local v2           #inputReader:Ljava/io/InputStreamReader;
    .restart local v3       #inputReader:Ljava/io/InputStreamReader;
    move-object v2, v3

    .end local v3           #inputReader:Ljava/io/InputStreamReader;
    .restart local v2       #inputReader:Ljava/io/InputStreamReader;
    goto :goto_29

    .line 103
    .restart local v5       #numRead:I
    :cond_9c
    if-eqz v2, :cond_55

    .line 104
    :try_start_9e
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_a1
    .catch Ljava/io/IOException; {:try_start_9e .. :try_end_a1} :catch_a2

    goto :goto_55

    .line 106
    :catch_a2
    move-exception v8

    goto :goto_55

    .line 98
    .end local v5           #numRead:I
    .end local v7           #tmp:[C
    :catch_a4
    move-exception v1

    .line 99
    .local v1, e:Ljava/io/IOException;
    :try_start_a5
    const-string v8, "SettingsLicenseActivity.LicenseFileLoader"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error reading license HTML file at "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/SettingsLicenseActivity$LicenseFileLoader;->mFileName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_bf
    .catchall {:try_start_a5 .. :try_end_bf} :catchall_c8

    .line 100
    const/4 v6, 0x2

    .line 103
    if-eqz v2, :cond_55

    .line 104
    :try_start_c2
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_c5
    .catch Ljava/io/IOException; {:try_start_c2 .. :try_end_c5} :catch_c6

    goto :goto_55

    .line 106
    :catch_c6
    move-exception v8

    goto :goto_55

    .line 102
    .end local v1           #e:Ljava/io/IOException;
    :catchall_c8
    move-exception v8

    .line 103
    if-eqz v2, :cond_ce

    .line 104
    :try_start_cb
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_ce
    .catch Ljava/io/IOException; {:try_start_cb .. :try_end_ce} :catch_d1

    .line 107
    :cond_ce
    :goto_ce
    throw v8

    .line 106
    .local v1, e:Ljava/io/FileNotFoundException;
    :catch_cf
    move-exception v8

    goto :goto_55

    .end local v1           #e:Ljava/io/FileNotFoundException;
    :catch_d1
    move-exception v9

    goto :goto_ce
.end method
