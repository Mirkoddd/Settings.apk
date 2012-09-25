.class Lcom/android/settings/accounts/ChooseAccountActivity$1;
.super Ljava/lang/Object;
.source "ChooseAccountActivity.java"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accounts/ChooseAccountActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/accounts/AccountManagerCallback",
        "<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accounts/ChooseAccountActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/accounts/ChooseAccountActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 87
    iput-object p1, p0, Lcom/android/settings/accounts/ChooseAccountActivity$1;->this$0:Lcom/android/settings/accounts/ChooseAccountActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/accounts/AccountManagerFuture;)V
    .registers 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/AccountManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, future:Landroid/accounts/AccountManagerFuture;,"Landroid/accounts/AccountManagerFuture<Landroid/os/Bundle;>;"
    const/4 v5, 0x1

    .line 90
    :try_start_1
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 91
    .local v0, bundle:Landroid/os/Bundle;
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    .line 93
    iget-object v2, p0, Lcom/android/settings/accounts/ChooseAccountActivity$1;->this$0:Lcom/android/settings/accounts/ChooseAccountActivity;

    #getter for: Lcom/android/settings/accounts/ChooseAccountActivity;->mPendingIntent:Landroid/app/PendingIntent;
    invoke-static {v2}, Lcom/android/settings/accounts/ChooseAccountActivity;->access$000(Lcom/android/settings/accounts/ChooseAccountActivity;)Landroid/app/PendingIntent;

    move-result-object v2

    if-eqz v2, :cond_1b

    .line 94
    iget-object v2, p0, Lcom/android/settings/accounts/ChooseAccountActivity$1;->this$0:Lcom/android/settings/accounts/ChooseAccountActivity;

    #getter for: Lcom/android/settings/accounts/ChooseAccountActivity;->mPendingIntent:Landroid/app/PendingIntent;
    invoke-static {v2}, Lcom/android/settings/accounts/ChooseAccountActivity;->access$000(Lcom/android/settings/accounts/ChooseAccountActivity;)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/PendingIntent;->cancel()V

    .line 97
    :cond_1b
    const-string v2, "ChooseAccountActivity"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_3c

    const-string v2, "ChooseAccountActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "account added: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3c
    .catchall {:try_start_1 .. :try_end_3c} :catchall_124
    .catch Landroid/accounts/OperationCanceledException; {:try_start_1 .. :try_end_3c} :catch_60
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_3c} :catch_95
    .catch Landroid/accounts/AuthenticatorException; {:try_start_1 .. :try_end_3c} :catch_dc

    .line 106
    :cond_3c
    iget-object v2, p0, Lcom/android/settings/accounts/ChooseAccountActivity$1;->this$0:Lcom/android/settings/accounts/ChooseAccountActivity;

    invoke-virtual {v2}, Lcom/android/settings/accounts/ChooseAccountActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4e

    .line 107
    iget-object v2, p0, Lcom/android/settings/accounts/ChooseAccountActivity$1;->this$0:Lcom/android/settings/accounts/ChooseAccountActivity;

    invoke-virtual {v2}, Lcom/android/settings/accounts/ChooseAccountActivity;->finish()V

    .line 113
    .end local v0           #bundle:Landroid/os/Bundle;
    :cond_4d
    :goto_4d
    return-void

    .line 109
    .restart local v0       #bundle:Landroid/os/Bundle;
    :cond_4e
    iget-object v2, p0, Lcom/android/settings/accounts/ChooseAccountActivity$1;->this$0:Lcom/android/settings/accounts/ChooseAccountActivity;

    #getter for: Lcom/android/settings/accounts/ChooseAccountActivity;->mProviderList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/settings/accounts/ChooseAccountActivity;->access$100(Lcom/android/settings/accounts/ChooseAccountActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gt v2, v5, :cond_4d

    .line 110
    iget-object v2, p0, Lcom/android/settings/accounts/ChooseAccountActivity$1;->this$0:Lcom/android/settings/accounts/ChooseAccountActivity;

    invoke-virtual {v2}, Lcom/android/settings/accounts/ChooseAccountActivity;->finish()V

    goto :goto_4d

    .line 98
    .end local v0           #bundle:Landroid/os/Bundle;
    :catch_60
    move-exception v1

    .line 99
    .local v1, e:Landroid/accounts/OperationCanceledException;
    :try_start_61
    const-string v2, "ChooseAccountActivity"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_71

    const-string v2, "ChooseAccountActivity"

    const-string v3, "addAccount was canceled"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_71
    .catchall {:try_start_61 .. :try_end_71} :catchall_124

    .line 106
    :cond_71
    iget-object v2, p0, Lcom/android/settings/accounts/ChooseAccountActivity$1;->this$0:Lcom/android/settings/accounts/ChooseAccountActivity;

    invoke-virtual {v2}, Lcom/android/settings/accounts/ChooseAccountActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_83

    .line 107
    iget-object v2, p0, Lcom/android/settings/accounts/ChooseAccountActivity$1;->this$0:Lcom/android/settings/accounts/ChooseAccountActivity;

    invoke-virtual {v2}, Lcom/android/settings/accounts/ChooseAccountActivity;->finish()V

    goto :goto_4d

    .line 109
    :cond_83
    iget-object v2, p0, Lcom/android/settings/accounts/ChooseAccountActivity$1;->this$0:Lcom/android/settings/accounts/ChooseAccountActivity;

    #getter for: Lcom/android/settings/accounts/ChooseAccountActivity;->mProviderList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/settings/accounts/ChooseAccountActivity;->access$100(Lcom/android/settings/accounts/ChooseAccountActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gt v2, v5, :cond_4d

    .line 110
    iget-object v2, p0, Lcom/android/settings/accounts/ChooseAccountActivity$1;->this$0:Lcom/android/settings/accounts/ChooseAccountActivity;

    invoke-virtual {v2}, Lcom/android/settings/accounts/ChooseAccountActivity;->finish()V

    goto :goto_4d

    .line 100
    .end local v1           #e:Landroid/accounts/OperationCanceledException;
    :catch_95
    move-exception v1

    .line 101
    .local v1, e:Ljava/io/IOException;
    :try_start_96
    const-string v2, "ChooseAccountActivity"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_b7

    const-string v2, "ChooseAccountActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addAccount failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b7
    .catchall {:try_start_96 .. :try_end_b7} :catchall_124

    .line 106
    :cond_b7
    iget-object v2, p0, Lcom/android/settings/accounts/ChooseAccountActivity$1;->this$0:Lcom/android/settings/accounts/ChooseAccountActivity;

    invoke-virtual {v2}, Lcom/android/settings/accounts/ChooseAccountActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_c9

    .line 107
    iget-object v2, p0, Lcom/android/settings/accounts/ChooseAccountActivity$1;->this$0:Lcom/android/settings/accounts/ChooseAccountActivity;

    invoke-virtual {v2}, Lcom/android/settings/accounts/ChooseAccountActivity;->finish()V

    goto :goto_4d

    .line 109
    :cond_c9
    iget-object v2, p0, Lcom/android/settings/accounts/ChooseAccountActivity$1;->this$0:Lcom/android/settings/accounts/ChooseAccountActivity;

    #getter for: Lcom/android/settings/accounts/ChooseAccountActivity;->mProviderList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/settings/accounts/ChooseAccountActivity;->access$100(Lcom/android/settings/accounts/ChooseAccountActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gt v2, v5, :cond_4d

    .line 110
    iget-object v2, p0, Lcom/android/settings/accounts/ChooseAccountActivity$1;->this$0:Lcom/android/settings/accounts/ChooseAccountActivity;

    invoke-virtual {v2}, Lcom/android/settings/accounts/ChooseAccountActivity;->finish()V

    goto/16 :goto_4d

    .line 102
    .end local v1           #e:Ljava/io/IOException;
    :catch_dc
    move-exception v1

    .line 103
    .local v1, e:Landroid/accounts/AuthenticatorException;
    :try_start_dd
    const-string v2, "ChooseAccountActivity"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_fe

    const-string v2, "ChooseAccountActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addAccount failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_fe
    .catchall {:try_start_dd .. :try_end_fe} :catchall_124

    .line 106
    :cond_fe
    iget-object v2, p0, Lcom/android/settings/accounts/ChooseAccountActivity$1;->this$0:Lcom/android/settings/accounts/ChooseAccountActivity;

    invoke-virtual {v2}, Lcom/android/settings/accounts/ChooseAccountActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_111

    .line 107
    iget-object v2, p0, Lcom/android/settings/accounts/ChooseAccountActivity$1;->this$0:Lcom/android/settings/accounts/ChooseAccountActivity;

    invoke-virtual {v2}, Lcom/android/settings/accounts/ChooseAccountActivity;->finish()V

    goto/16 :goto_4d

    .line 109
    :cond_111
    iget-object v2, p0, Lcom/android/settings/accounts/ChooseAccountActivity$1;->this$0:Lcom/android/settings/accounts/ChooseAccountActivity;

    #getter for: Lcom/android/settings/accounts/ChooseAccountActivity;->mProviderList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/settings/accounts/ChooseAccountActivity;->access$100(Lcom/android/settings/accounts/ChooseAccountActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gt v2, v5, :cond_4d

    .line 110
    iget-object v2, p0, Lcom/android/settings/accounts/ChooseAccountActivity$1;->this$0:Lcom/android/settings/accounts/ChooseAccountActivity;

    invoke-virtual {v2}, Lcom/android/settings/accounts/ChooseAccountActivity;->finish()V

    goto/16 :goto_4d

    .line 106
    .end local v1           #e:Landroid/accounts/AuthenticatorException;
    :catchall_124
    move-exception v2

    iget-object v3, p0, Lcom/android/settings/accounts/ChooseAccountActivity$1;->this$0:Lcom/android/settings/accounts/ChooseAccountActivity;

    invoke-virtual {v3}, Lcom/android/settings/accounts/ChooseAccountActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_137

    .line 107
    iget-object v3, p0, Lcom/android/settings/accounts/ChooseAccountActivity$1;->this$0:Lcom/android/settings/accounts/ChooseAccountActivity;

    invoke-virtual {v3}, Lcom/android/settings/accounts/ChooseAccountActivity;->finish()V

    .line 110
    :cond_136
    :goto_136
    throw v2

    .line 109
    :cond_137
    iget-object v3, p0, Lcom/android/settings/accounts/ChooseAccountActivity$1;->this$0:Lcom/android/settings/accounts/ChooseAccountActivity;

    #getter for: Lcom/android/settings/accounts/ChooseAccountActivity;->mProviderList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/settings/accounts/ChooseAccountActivity;->access$100(Lcom/android/settings/accounts/ChooseAccountActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gt v3, v5, :cond_136

    .line 110
    iget-object v3, p0, Lcom/android/settings/accounts/ChooseAccountActivity$1;->this$0:Lcom/android/settings/accounts/ChooseAccountActivity;

    invoke-virtual {v3}, Lcom/android/settings/accounts/ChooseAccountActivity;->finish()V

    goto :goto_136
.end method
