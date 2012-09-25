.class public Lcom/android/settings/GoogleLocationSettingHelper;
.super Ljava/lang/Object;
.source "GoogleLocationSettingHelper.java"


# static fields
.field private static final GOOGLE_SETTINGS_CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 55
    const-string v0, "content://com.google.settings/partner"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/GoogleLocationSettingHelper;->GOOGLE_SETTINGS_CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 35
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getSetUseLocationIntent()Landroid/content/Intent;
    .registers 2

    .prologue
    .line 76
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.gsf.action.SET_USE_LOCATION_FOR_SERVICES"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 77
    .local v0, i:Landroid/content/Intent;
    return-object v0
.end method

.method public static getUseLocationForServices(Landroid/content/Context;)I
    .registers 13
    .parameter "context"

    .prologue
    .line 86
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 87
    .local v0, resolver:Landroid/content/ContentResolver;
    const/4 v6, 0x0

    .line 88
    .local v6, c:Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 90
    .local v9, stringValue:Ljava/lang/String;
    :try_start_6
    sget-object v1, Lcom/android/settings/GoogleLocationSettingHelper;->GOOGLE_SETTINGS_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "value"

    aput-object v4, v2, v3

    const-string v3, "name=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v11, "use_location_for_services"

    aput-object v11, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 92
    if-eqz v6, :cond_2c

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 93
    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_2b
    .catchall {:try_start_6 .. :try_end_2b} :catchall_43
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_2b} :catch_35

    move-result-object v9

    .line 98
    :cond_2c
    if-eqz v6, :cond_31

    .line 99
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 102
    :cond_31
    :goto_31
    if-nez v9, :cond_4a

    .line 103
    const/4 v10, 0x2

    .line 111
    :goto_34
    return v10

    .line 95
    :catch_35
    move-exception v7

    .line 96
    .local v7, e:Ljava/lang/RuntimeException;
    :try_start_36
    const-string v1, "GoogleLocationSettingHelper"

    const-string v2, "Failed to get \'Use My Location\' setting"

    invoke-static {v1, v2, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3d
    .catchall {:try_start_36 .. :try_end_3d} :catchall_43

    .line 98
    if-eqz v6, :cond_31

    .line 99
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_31

    .line 98
    .end local v7           #e:Ljava/lang/RuntimeException;
    :catchall_43
    move-exception v1

    if-eqz v6, :cond_49

    .line 99
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_49
    throw v1

    .line 107
    :cond_4a
    :try_start_4a
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_4d
    .catch Ljava/lang/NumberFormatException; {:try_start_4a .. :try_end_4d} :catch_4f

    move-result v10

    .local v10, value:I
    goto :goto_34

    .line 108
    .end local v10           #value:I
    :catch_4f
    move-exception v8

    .line 109
    .local v8, nfe:Ljava/lang/NumberFormatException;
    const/4 v10, 0x2

    .restart local v10       #value:I
    goto :goto_34
.end method

.method public static isAvailable(Landroid/content/Context;)Z
    .registers 5
    .parameter "context"

    .prologue
    .line 70
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {}, Lcom/android/settings/GoogleLocationSettingHelper;->getSetUseLocationIntent()Landroid/content/Intent;

    move-result-object v2

    const/high16 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 72
    .local v0, ri:Landroid/content/pm/ResolveInfo;
    if-eqz v0, :cond_12

    const/4 v1, 0x1

    :goto_11
    return v1

    :cond_12
    const/4 v1, 0x0

    goto :goto_11
.end method

.method public static setUseLocationForServices(Landroid/content/Context;Z)V
    .registers 6
    .parameter "context"
    .parameter "use"

    .prologue
    .line 119
    invoke-static {}, Lcom/android/settings/GoogleLocationSettingHelper;->getSetUseLocationIntent()Landroid/content/Intent;

    move-result-object v1

    .line 120
    .local v1, i:Landroid/content/Intent;
    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 121
    const-string v3, "disable"

    if-nez p1, :cond_15

    const/4 v2, 0x1

    :goto_e
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 123
    :try_start_11
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_14
    .catch Landroid/content/ActivityNotFoundException; {:try_start_11 .. :try_end_14} :catch_17

    .line 127
    :goto_14
    return-void

    .line 121
    :cond_15
    const/4 v2, 0x0

    goto :goto_e

    .line 124
    :catch_17
    move-exception v0

    .line 125
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v2, "GoogleLocationSettingHelper"

    const-string v3, "Problem while starting GSF location activity"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14
.end method
