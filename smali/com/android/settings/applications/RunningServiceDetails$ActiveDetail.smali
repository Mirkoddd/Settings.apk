.class Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;
.super Ljava/lang/Object;
.source "RunningServiceDetails.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/RunningServiceDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ActiveDetail"
.end annotation


# instance fields
.field mActiveItem:Lcom/android/settings/applications/RunningProcessesView$ActiveItem;

.field mInstaller:Landroid/content/ComponentName;

.field mManageIntent:Landroid/app/PendingIntent;

.field mReportButton:Landroid/widget/Button;

.field mRootView:Landroid/view/View;

.field mServiceItem:Lcom/android/settings/applications/RunningState$ServiceItem;

.field mStopButton:Landroid/widget/Button;

.field mViewHolder:Lcom/android/settings/applications/RunningProcessesView$ViewHolder;

.field final synthetic this$0:Lcom/android/settings/applications/RunningServiceDetails;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/RunningServiceDetails;)V
    .registers 2
    .parameter

    .prologue
    .line 78
    iput-object p1, p0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->this$0:Lcom/android/settings/applications/RunningServiceDetails;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 21
    .parameter "v"

    .prologue
    .line 112
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->mReportButton:Landroid/widget/Button;

    move-object/from16 v0, p1

    if-ne v0, v2, :cond_18d

    .line 113
    new-instance v17, Landroid/app/ApplicationErrorReport;

    invoke-direct/range {v17 .. v17}, Landroid/app/ApplicationErrorReport;-><init>()V

    .line 114
    .local v17, report:Landroid/app/ApplicationErrorReport;
    const/4 v2, 0x5

    move-object/from16 v0, v17

    iput v2, v0, Landroid/app/ApplicationErrorReport;->type:I

    .line 115
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->mServiceItem:Lcom/android/settings/applications/RunningState$ServiceItem;

    iget-object v2, v2, Lcom/android/settings/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v17

    iput-object v2, v0, Landroid/app/ApplicationErrorReport;->packageName:Ljava/lang/String;

    .line 116
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->mInstaller:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    iput-object v2, v0, Landroid/app/ApplicationErrorReport;->installerPackageName:Ljava/lang/String;

    .line 117
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->mServiceItem:Lcom/android/settings/applications/RunningState$ServiceItem;

    iget-object v2, v2, Lcom/android/settings/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningServiceInfo;->process:Ljava/lang/String;

    move-object/from16 v0, v17

    iput-object v2, v0, Landroid/app/ApplicationErrorReport;->processName:Ljava/lang/String;

    .line 118
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object/from16 v0, v17

    iput-wide v2, v0, Landroid/app/ApplicationErrorReport;->time:J

    .line 119
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->mServiceItem:Lcom/android/settings/applications/RunningState$ServiceItem;

    iget-object v2, v2, Lcom/android/settings/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_128

    const/4 v2, 0x1

    :goto_4d
    move-object/from16 v0, v17

    iput-boolean v2, v0, Landroid/app/ApplicationErrorReport;->systemApp:Z

    .line 121
    new-instance v12, Landroid/app/ApplicationErrorReport$RunningServiceInfo;

    invoke-direct {v12}, Landroid/app/ApplicationErrorReport$RunningServiceInfo;-><init>()V

    .line 123
    .local v12, info:Landroid/app/ApplicationErrorReport$RunningServiceInfo;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->mActiveItem:Lcom/android/settings/applications/RunningProcessesView$ActiveItem;

    iget-wide v2, v2, Lcom/android/settings/applications/RunningProcessesView$ActiveItem;->mFirstRunTime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_12b

    .line 124
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->mActiveItem:Lcom/android/settings/applications/RunningProcessesView$ActiveItem;

    iget-wide v4, v4, Lcom/android/settings/applications/RunningProcessesView$ActiveItem;->mFirstRunTime:J

    sub-long/2addr v2, v4

    iput-wide v2, v12, Landroid/app/ApplicationErrorReport$RunningServiceInfo;->durationMillis:J

    .line 128
    :goto_6f
    new-instance v9, Landroid/content/ComponentName;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->mServiceItem:Lcom/android/settings/applications/RunningState$ServiceItem;

    iget-object v2, v2, Lcom/android/settings/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->mServiceItem:Lcom/android/settings/applications/RunningState$ServiceItem;

    iget-object v3, v3, Lcom/android/settings/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v9, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    .local v9, comp:Landroid/content/ComponentName;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->this$0:Lcom/android/settings/applications/RunningServiceDetails;

    invoke-virtual {v2}, Lcom/android/settings/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "service_dump.txt"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v11

    .line 131
    .local v11, filename:Ljava/io/File;
    const/4 v15, 0x0

    .line 133
    .local v15, output:Ljava/io/FileOutputStream;
    :try_start_93
    new-instance v16, Ljava/io/FileOutputStream;

    move-object/from16 v0, v16

    invoke-direct {v0, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_9a
    .catchall {:try_start_93 .. :try_end_9a} :catchall_158
    .catch Ljava/io/IOException; {:try_start_93 .. :try_end_9a} :catch_135

    .line 134
    .end local v15           #output:Ljava/io/FileOutputStream;
    .local v16, output:Ljava/io/FileOutputStream;
    :try_start_9a
    const-string v2, "activity"

    invoke-virtual/range {v16 .. v16}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v3

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "-a"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "service"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-virtual {v9}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Landroid/os/Debug;->dumpService(Ljava/lang/String;Ljava/io/FileDescriptor;[Ljava/lang/String;)Z
    :try_end_b7
    .catchall {:try_start_9a .. :try_end_b7} :catchall_224
    .catch Ljava/io/IOException; {:try_start_9a .. :try_end_b7} :catch_229

    .line 139
    if-eqz v16, :cond_231

    :try_start_b9
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileOutputStream;->close()V
    :try_end_bc
    .catch Ljava/io/IOException; {:try_start_b9 .. :try_end_bc} :catch_131

    move-object/from16 v15, v16

    .line 141
    .end local v16           #output:Ljava/io/FileOutputStream;
    .restart local v15       #output:Ljava/io/FileOutputStream;
    :cond_be
    :goto_be
    const/4 v13, 0x0

    .line 143
    .local v13, input:Ljava/io/FileInputStream;
    :try_start_bf
    new-instance v14, Ljava/io/FileInputStream;

    invoke-direct {v14, v11}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_c4
    .catchall {:try_start_bf .. :try_end_c4} :catchall_186
    .catch Ljava/io/IOException; {:try_start_bf .. :try_end_c4} :catch_163

    .line 144
    .end local v13           #input:Ljava/io/FileInputStream;
    .local v14, input:Ljava/io/FileInputStream;
    :try_start_c4
    invoke-virtual {v11}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-int v2, v2

    new-array v8, v2, [B

    .line 145
    .local v8, buffer:[B
    invoke-virtual {v14, v8}, Ljava/io/FileInputStream;->read([B)I

    .line 146
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v8}, Ljava/lang/String;-><init>([B)V

    iput-object v2, v12, Landroid/app/ApplicationErrorReport$RunningServiceInfo;->serviceDetails:Ljava/lang/String;
    :try_end_d5
    .catchall {:try_start_c4 .. :try_end_d5} :catchall_21c
    .catch Ljava/io/IOException; {:try_start_c4 .. :try_end_d5} :catch_220

    .line 150
    if-eqz v14, :cond_22e

    :try_start_d7
    invoke-virtual {v14}, Ljava/io/FileInputStream;->close()V
    :try_end_da
    .catch Ljava/io/IOException; {:try_start_d7 .. :try_end_da} :catch_15f

    move-object v13, v14

    .line 152
    .end local v8           #buffer:[B
    .end local v14           #input:Ljava/io/FileInputStream;
    .restart local v13       #input:Ljava/io/FileInputStream;
    :cond_db
    :goto_db
    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    .line 153
    const-string v2, "RunningServicesDetails"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Details: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v12, Landroid/app/ApplicationErrorReport$RunningServiceInfo;->serviceDetails:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    move-object/from16 v0, v17

    iput-object v12, v0, Landroid/app/ApplicationErrorReport;->runningServiceInfo:Landroid/app/ApplicationErrorReport$RunningServiceInfo;

    .line 155
    new-instance v18, Landroid/content/Intent;

    const-string v2, "android.intent.action.APP_ERROR"

    move-object/from16 v0, v18

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 156
    .local v18, result:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->mInstaller:Landroid/content/ComponentName;

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 157
    const-string v2, "android.intent.extra.BUG_REPORT"

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 158
    const/high16 v2, 0x1000

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 159
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->this$0:Lcom/android/settings/applications/RunningServiceDetails;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/android/settings/applications/RunningServiceDetails;->startActivity(Landroid/content/Intent;)V

    .line 187
    .end local v9           #comp:Landroid/content/ComponentName;
    .end local v11           #filename:Ljava/io/File;
    .end local v12           #info:Landroid/app/ApplicationErrorReport$RunningServiceInfo;
    .end local v13           #input:Ljava/io/FileInputStream;
    .end local v15           #output:Ljava/io/FileOutputStream;
    .end local v17           #report:Landroid/app/ApplicationErrorReport;
    .end local v18           #result:Landroid/content/Intent;
    :goto_127
    return-void

    .line 119
    .restart local v17       #report:Landroid/app/ApplicationErrorReport;
    :cond_128
    const/4 v2, 0x0

    goto/16 :goto_4d

    .line 126
    .restart local v12       #info:Landroid/app/ApplicationErrorReport$RunningServiceInfo;
    :cond_12b
    const-wide/16 v2, -0x1

    iput-wide v2, v12, Landroid/app/ApplicationErrorReport$RunningServiceInfo;->durationMillis:J

    goto/16 :goto_6f

    .line 139
    .restart local v9       #comp:Landroid/content/ComponentName;
    .restart local v11       #filename:Ljava/io/File;
    .restart local v16       #output:Ljava/io/FileOutputStream;
    :catch_131
    move-exception v2

    move-object/from16 v15, v16

    .end local v16           #output:Ljava/io/FileOutputStream;
    .restart local v15       #output:Ljava/io/FileOutputStream;
    goto :goto_be

    .line 136
    :catch_135
    move-exception v10

    .line 137
    .local v10, e:Ljava/io/IOException;
    :goto_136
    :try_start_136
    const-string v2, "RunningServicesDetails"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t dump service: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_14e
    .catchall {:try_start_136 .. :try_end_14e} :catchall_158

    .line 139
    if-eqz v15, :cond_be

    :try_start_150
    invoke-virtual {v15}, Ljava/io/FileOutputStream;->close()V
    :try_end_153
    .catch Ljava/io/IOException; {:try_start_150 .. :try_end_153} :catch_155

    goto/16 :goto_be

    :catch_155
    move-exception v2

    goto/16 :goto_be

    .end local v10           #e:Ljava/io/IOException;
    :catchall_158
    move-exception v2

    :goto_159
    if-eqz v15, :cond_15e

    :try_start_15b
    invoke-virtual {v15}, Ljava/io/FileOutputStream;->close()V
    :try_end_15e
    .catch Ljava/io/IOException; {:try_start_15b .. :try_end_15e} :catch_216

    :cond_15e
    :goto_15e
    throw v2

    .line 150
    .restart local v8       #buffer:[B
    .restart local v14       #input:Ljava/io/FileInputStream;
    :catch_15f
    move-exception v2

    move-object v13, v14

    .end local v14           #input:Ljava/io/FileInputStream;
    .restart local v13       #input:Ljava/io/FileInputStream;
    goto/16 :goto_db

    .line 147
    .end local v8           #buffer:[B
    :catch_163
    move-exception v10

    .line 148
    .restart local v10       #e:Ljava/io/IOException;
    :goto_164
    :try_start_164
    const-string v2, "RunningServicesDetails"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t read service dump: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_17c
    .catchall {:try_start_164 .. :try_end_17c} :catchall_186

    .line 150
    if-eqz v13, :cond_db

    :try_start_17e
    invoke-virtual {v13}, Ljava/io/FileInputStream;->close()V
    :try_end_181
    .catch Ljava/io/IOException; {:try_start_17e .. :try_end_181} :catch_183

    goto/16 :goto_db

    :catch_183
    move-exception v2

    goto/16 :goto_db

    .end local v10           #e:Ljava/io/IOException;
    :catchall_186
    move-exception v2

    :goto_187
    if-eqz v13, :cond_18c

    :try_start_189
    invoke-virtual {v13}, Ljava/io/FileInputStream;->close()V
    :try_end_18c
    .catch Ljava/io/IOException; {:try_start_189 .. :try_end_18c} :catch_219

    :cond_18c
    :goto_18c
    throw v2

    .line 163
    .end local v9           #comp:Landroid/content/ComponentName;
    .end local v11           #filename:Ljava/io/File;
    .end local v12           #info:Landroid/app/ApplicationErrorReport$RunningServiceInfo;
    .end local v13           #input:Ljava/io/FileInputStream;
    .end local v15           #output:Ljava/io/FileOutputStream;
    .end local v17           #report:Landroid/app/ApplicationErrorReport;
    :cond_18d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->mManageIntent:Landroid/app/PendingIntent;

    if-eqz v2, :cond_1c6

    .line 165
    :try_start_193
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->this$0:Lcom/android/settings/applications/RunningServiceDetails;

    invoke-virtual {v2}, Lcom/android/settings/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->mManageIntent:Landroid/app/PendingIntent;

    invoke-virtual {v3}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v3

    const/4 v4, 0x0

    const/high16 v5, 0x1008

    const/high16 v6, 0x8

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/app/Activity;->startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;III)V
    :try_end_1ac
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_193 .. :try_end_1ac} :catch_1ae
    .catch Ljava/lang/IllegalArgumentException; {:try_start_193 .. :try_end_1ac} :catch_1b6
    .catch Landroid/content/ActivityNotFoundException; {:try_start_193 .. :try_end_1ac} :catch_1be

    goto/16 :goto_127

    .line 169
    :catch_1ae
    move-exception v10

    .line 170
    .local v10, e:Landroid/content/IntentSender$SendIntentException;
    const-string v2, "RunningServicesDetails"

    invoke-static {v2, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_127

    .line 171
    .end local v10           #e:Landroid/content/IntentSender$SendIntentException;
    :catch_1b6
    move-exception v10

    .line 172
    .local v10, e:Ljava/lang/IllegalArgumentException;
    const-string v2, "RunningServicesDetails"

    invoke-static {v2, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_127

    .line 173
    .end local v10           #e:Ljava/lang/IllegalArgumentException;
    :catch_1be
    move-exception v10

    .line 174
    .local v10, e:Landroid/content/ActivityNotFoundException;
    const-string v2, "RunningServicesDetails"

    invoke-static {v2, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_127

    .line 176
    .end local v10           #e:Landroid/content/ActivityNotFoundException;
    :cond_1c6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->mServiceItem:Lcom/android/settings/applications/RunningState$ServiceItem;

    if-eqz v2, :cond_1d4

    .line 177
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->stopActiveService(Z)V

    goto/16 :goto_127

    .line 178
    :cond_1d4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->mActiveItem:Lcom/android/settings/applications/RunningProcessesView$ActiveItem;

    iget-object v2, v2, Lcom/android/settings/applications/RunningProcessesView$ActiveItem;->mItem:Lcom/android/settings/applications/RunningState$BaseItem;

    iget-boolean v2, v2, Lcom/android/settings/applications/RunningState$BaseItem;->mBackground:Z

    if-eqz v2, :cond_1fa

    .line 180
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->this$0:Lcom/android/settings/applications/RunningServiceDetails;

    iget-object v2, v2, Lcom/android/settings/applications/RunningServiceDetails;->mAm:Landroid/app/ActivityManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->mActiveItem:Lcom/android/settings/applications/RunningProcessesView$ActiveItem;

    iget-object v3, v3, Lcom/android/settings/applications/RunningProcessesView$ActiveItem;->mItem:Lcom/android/settings/applications/RunningState$BaseItem;

    iget-object v3, v3, Lcom/android/settings/applications/RunningState$BaseItem;->mPackageInfo:Landroid/content/pm/PackageItemInfo;

    iget-object v3, v3, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/app/ActivityManager;->killBackgroundProcesses(Ljava/lang/String;)V

    .line 181
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->this$0:Lcom/android/settings/applications/RunningServiceDetails;

    #calls: Lcom/android/settings/applications/RunningServiceDetails;->finish()V
    invoke-static {v2}, Lcom/android/settings/applications/RunningServiceDetails;->access$100(Lcom/android/settings/applications/RunningServiceDetails;)V

    goto/16 :goto_127

    .line 184
    :cond_1fa
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->this$0:Lcom/android/settings/applications/RunningServiceDetails;

    iget-object v2, v2, Lcom/android/settings/applications/RunningServiceDetails;->mAm:Landroid/app/ActivityManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->mActiveItem:Lcom/android/settings/applications/RunningProcessesView$ActiveItem;

    iget-object v3, v3, Lcom/android/settings/applications/RunningProcessesView$ActiveItem;->mItem:Lcom/android/settings/applications/RunningState$BaseItem;

    iget-object v3, v3, Lcom/android/settings/applications/RunningState$BaseItem;->mPackageInfo:Landroid/content/pm/PackageItemInfo;

    iget-object v3, v3, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    .line 185
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->this$0:Lcom/android/settings/applications/RunningServiceDetails;

    #calls: Lcom/android/settings/applications/RunningServiceDetails;->finish()V
    invoke-static {v2}, Lcom/android/settings/applications/RunningServiceDetails;->access$100(Lcom/android/settings/applications/RunningServiceDetails;)V

    goto/16 :goto_127

    .line 139
    .restart local v9       #comp:Landroid/content/ComponentName;
    .restart local v11       #filename:Ljava/io/File;
    .restart local v12       #info:Landroid/app/ApplicationErrorReport$RunningServiceInfo;
    .restart local v15       #output:Ljava/io/FileOutputStream;
    .restart local v17       #report:Landroid/app/ApplicationErrorReport;
    :catch_216
    move-exception v3

    goto/16 :goto_15e

    .line 150
    .restart local v13       #input:Ljava/io/FileInputStream;
    :catch_219
    move-exception v3

    goto/16 :goto_18c

    .end local v13           #input:Ljava/io/FileInputStream;
    .restart local v14       #input:Ljava/io/FileInputStream;
    :catchall_21c
    move-exception v2

    move-object v13, v14

    .end local v14           #input:Ljava/io/FileInputStream;
    .restart local v13       #input:Ljava/io/FileInputStream;
    goto/16 :goto_187

    .line 147
    .end local v13           #input:Ljava/io/FileInputStream;
    .restart local v14       #input:Ljava/io/FileInputStream;
    :catch_220
    move-exception v10

    move-object v13, v14

    .end local v14           #input:Ljava/io/FileInputStream;
    .restart local v13       #input:Ljava/io/FileInputStream;
    goto/16 :goto_164

    .line 139
    .end local v13           #input:Ljava/io/FileInputStream;
    .end local v15           #output:Ljava/io/FileOutputStream;
    .restart local v16       #output:Ljava/io/FileOutputStream;
    :catchall_224
    move-exception v2

    move-object/from16 v15, v16

    .end local v16           #output:Ljava/io/FileOutputStream;
    .restart local v15       #output:Ljava/io/FileOutputStream;
    goto/16 :goto_159

    .line 136
    .end local v15           #output:Ljava/io/FileOutputStream;
    .restart local v16       #output:Ljava/io/FileOutputStream;
    :catch_229
    move-exception v10

    move-object/from16 v15, v16

    .end local v16           #output:Ljava/io/FileOutputStream;
    .restart local v15       #output:Ljava/io/FileOutputStream;
    goto/16 :goto_136

    .restart local v8       #buffer:[B
    .restart local v14       #input:Ljava/io/FileInputStream;
    :cond_22e
    move-object v13, v14

    .end local v14           #input:Ljava/io/FileInputStream;
    .restart local v13       #input:Ljava/io/FileInputStream;
    goto/16 :goto_db

    .end local v8           #buffer:[B
    .end local v13           #input:Ljava/io/FileInputStream;
    .end local v15           #output:Ljava/io/FileOutputStream;
    .restart local v16       #output:Ljava/io/FileOutputStream;
    :cond_231
    move-object/from16 v15, v16

    .end local v16           #output:Ljava/io/FileOutputStream;
    .restart local v15       #output:Ljava/io/FileOutputStream;
    goto/16 :goto_be
.end method

.method stopActiveService(Z)V
    .registers 6
    .parameter "confirmed"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->mServiceItem:Lcom/android/settings/applications/RunningState$ServiceItem;

    .line 90
    .local v0, si:Lcom/android/settings/applications/RunningState$ServiceItem;
    if-nez p1, :cond_18

    .line 91
    iget-object v1, v0, Lcom/android/settings/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_18

    .line 92
    iget-object v1, p0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->this$0:Lcom/android/settings/applications/RunningServiceDetails;

    iget-object v2, v0, Lcom/android/settings/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    #calls: Lcom/android/settings/applications/RunningServiceDetails;->showConfirmStopDialog(Landroid/content/ComponentName;)V
    invoke-static {v1, v2}, Lcom/android/settings/applications/RunningServiceDetails;->access$000(Lcom/android/settings/applications/RunningServiceDetails;Landroid/content/ComponentName;)V

    .line 109
    :goto_17
    return-void

    .line 96
    :cond_18
    iget-object v1, p0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->this$0:Lcom/android/settings/applications/RunningServiceDetails;

    invoke-virtual {v1}, Lcom/android/settings/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    iget-object v3, v0, Lcom/android/settings/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->stopService(Landroid/content/Intent;)Z

    .line 97
    iget-object v1, p0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->this$0:Lcom/android/settings/applications/RunningServiceDetails;

    iget-object v1, v1, Lcom/android/settings/applications/RunningServiceDetails;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    if-nez v1, :cond_41

    .line 99
    iget-object v1, p0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->this$0:Lcom/android/settings/applications/RunningServiceDetails;

    iget-object v1, v1, Lcom/android/settings/applications/RunningServiceDetails;->mState:Lcom/android/settings/applications/RunningState;

    invoke-virtual {v1}, Lcom/android/settings/applications/RunningState;->updateNow()V

    .line 100
    iget-object v1, p0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->this$0:Lcom/android/settings/applications/RunningServiceDetails;

    #calls: Lcom/android/settings/applications/RunningServiceDetails;->finish()V
    invoke-static {v1}, Lcom/android/settings/applications/RunningServiceDetails;->access$100(Lcom/android/settings/applications/RunningServiceDetails;)V

    goto :goto_17

    .line 101
    :cond_41
    iget-object v1, p0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->this$0:Lcom/android/settings/applications/RunningServiceDetails;

    iget-boolean v1, v1, Lcom/android/settings/applications/RunningServiceDetails;->mShowBackground:Z

    if-nez v1, :cond_61

    iget-object v1, p0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->this$0:Lcom/android/settings/applications/RunningServiceDetails;

    iget-object v1, v1, Lcom/android/settings/applications/RunningServiceDetails;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    iget-object v1, v1, Lcom/android/settings/applications/RunningState$MergedItem;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_61

    .line 104
    iget-object v1, p0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->this$0:Lcom/android/settings/applications/RunningServiceDetails;

    iget-object v1, v1, Lcom/android/settings/applications/RunningServiceDetails;->mState:Lcom/android/settings/applications/RunningState;

    invoke-virtual {v1}, Lcom/android/settings/applications/RunningState;->updateNow()V

    .line 105
    iget-object v1, p0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->this$0:Lcom/android/settings/applications/RunningServiceDetails;

    #calls: Lcom/android/settings/applications/RunningServiceDetails;->finish()V
    invoke-static {v1}, Lcom/android/settings/applications/RunningServiceDetails;->access$100(Lcom/android/settings/applications/RunningServiceDetails;)V

    goto :goto_17

    .line 107
    :cond_61
    iget-object v1, p0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->this$0:Lcom/android/settings/applications/RunningServiceDetails;

    iget-object v1, v1, Lcom/android/settings/applications/RunningServiceDetails;->mState:Lcom/android/settings/applications/RunningState;

    invoke-virtual {v1}, Lcom/android/settings/applications/RunningState;->updateNow()V

    goto :goto_17
.end method
