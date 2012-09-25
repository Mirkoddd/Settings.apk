.class public Lcom/android/settings/LockScreenWallpaper$WallpaperAdapter;
.super Landroid/widget/BaseAdapter;
.source "LockScreenWallpaper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/LockScreenWallpaper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WallpaperAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/LockScreenWallpaper;


# direct methods
.method public constructor <init>(Lcom/android/settings/LockScreenWallpaper;)V
    .registers 2
    .parameter

    .prologue
    .line 117
    iput-object p1, p0, Lcom/android/settings/LockScreenWallpaper$WallpaperAdapter;->this$0:Lcom/android/settings/LockScreenWallpaper;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 3

    .prologue
    .line 121
    const-string v0, "GT-N7000"

    const-string v1, "GT-I9100"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x3

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x2

    goto :goto_b
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter "arg0"

    .prologue
    .line 126
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .parameter "position"

    .prologue
    .line 131
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 11
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/16 v6, 0x8

    .line 143
    if-nez p2, :cond_f6

    .line 144
    iget-object v3, p0, Lcom/android/settings/LockScreenWallpaper$WallpaperAdapter;->this$0:Lcom/android/settings/LockScreenWallpaper;

    #getter for: Lcom/android/settings/LockScreenWallpaper;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v3}, Lcom/android/settings/LockScreenWallpaper;->access$000(Lcom/android/settings/LockScreenWallpaper;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x109008c

    const/4 v5, 0x0

    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 148
    new-instance v1, Lcom/android/settings/LockScreenWallpaper$ViewHolder;

    invoke-direct {v1}, Lcom/android/settings/LockScreenWallpaper$ViewHolder;-><init>()V

    .line 149
    .local v1, holder:Lcom/android/settings/LockScreenWallpaper$ViewHolder;
    const v3, 0x1020014

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/android/settings/LockScreenWallpaper$ViewHolder;->text:Landroid/widget/TextView;

    .line 150
    const v3, 0x1020015

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/android/settings/LockScreenWallpaper$ViewHolder;->text2:Landroid/widget/TextView;

    .line 151
    const v3, 0x1020006

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v1, Lcom/android/settings/LockScreenWallpaper$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 153
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 161
    :goto_3b
    move v0, p1

    .line 162
    .local v0, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_3d
    iget-object v3, p0, Lcom/android/settings/LockScreenWallpaper$WallpaperAdapter;->this$0:Lcom/android/settings/LockScreenWallpaper;

    #getter for: Lcom/android/settings/LockScreenWallpaper;->rList:Ljava/util/List;
    invoke-static {v3}, Lcom/android/settings/LockScreenWallpaper;->access$100(Lcom/android/settings/LockScreenWallpaper;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_21c

    .line 163
    const-string v3, "GT-N7000"

    const-string v4, "GT-I9100"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_fe

    .line 164
    const-string v4, "com.cooliris.media"

    iget-object v3, p0, Lcom/android/settings/LockScreenWallpaper$WallpaperAdapter;->this$0:Lcom/android/settings/LockScreenWallpaper;

    #getter for: Lcom/android/settings/LockScreenWallpaper;->rList:Ljava/util/List;
    invoke-static {v3}, Lcom/android/settings/LockScreenWallpaper;->access$100(Lcom/android/settings/LockScreenWallpaper;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9b

    const-string v4, "com.sec.android.app.twwallpaperchooser"

    iget-object v3, p0, Lcom/android/settings/LockScreenWallpaper$WallpaperAdapter;->this$0:Lcom/android/settings/LockScreenWallpaper;

    #getter for: Lcom/android/settings/LockScreenWallpaper;->rList:Ljava/util/List;
    invoke-static {v3}, Lcom/android/settings/LockScreenWallpaper;->access$100(Lcom/android/settings/LockScreenWallpaper;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9b

    const-string v4, "com.android.wallpaper.livepicker"

    iget-object v3, p0, Lcom/android/settings/LockScreenWallpaper$WallpaperAdapter;->this$0:Lcom/android/settings/LockScreenWallpaper;

    #getter for: Lcom/android/settings/LockScreenWallpaper;->rList:Ljava/util/List;
    invoke-static {v3}, Lcom/android/settings/LockScreenWallpaper;->access$100(Lcom/android/settings/LockScreenWallpaper;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f2

    .line 167
    :cond_9b
    if-nez v0, :cond_f0

    .line 168
    iget-object v4, v1, Lcom/android/settings/LockScreenWallpaper$ViewHolder;->text:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings/LockScreenWallpaper$WallpaperAdapter;->this$0:Lcom/android/settings/LockScreenWallpaper;

    #getter for: Lcom/android/settings/LockScreenWallpaper;->rList:Ljava/util/List;
    invoke-static {v3}, Lcom/android/settings/LockScreenWallpaper;->access$100(Lcom/android/settings/LockScreenWallpaper;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v5, p0, Lcom/android/settings/LockScreenWallpaper$WallpaperAdapter;->this$0:Lcom/android/settings/LockScreenWallpaper;

    #getter for: Lcom/android/settings/LockScreenWallpaper;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v5}, Lcom/android/settings/LockScreenWallpaper;->access$200(Lcom/android/settings/LockScreenWallpaper;)Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    iget-object v3, v1, Lcom/android/settings/LockScreenWallpaper$ViewHolder;->text2:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 170
    iget-object v4, v1, Lcom/android/settings/LockScreenWallpaper$ViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/settings/LockScreenWallpaper$WallpaperAdapter;->this$0:Lcom/android/settings/LockScreenWallpaper;

    #getter for: Lcom/android/settings/LockScreenWallpaper;->rList:Ljava/util/List;
    invoke-static {v3}, Lcom/android/settings/LockScreenWallpaper;->access$100(Lcom/android/settings/LockScreenWallpaper;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v5, p0, Lcom/android/settings/LockScreenWallpaper$WallpaperAdapter;->this$0:Lcom/android/settings/LockScreenWallpaper;

    #getter for: Lcom/android/settings/LockScreenWallpaper;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v5}, Lcom/android/settings/LockScreenWallpaper;->access$200(Lcom/android/settings/LockScreenWallpaper;)Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 171
    iget-object v3, p0, Lcom/android/settings/LockScreenWallpaper$WallpaperAdapter;->this$0:Lcom/android/settings/LockScreenWallpaper;

    #getter for: Lcom/android/settings/LockScreenWallpaper;->ItemName:[Ljava/lang/String;
    invoke-static {v3}, Lcom/android/settings/LockScreenWallpaper;->access$300(Lcom/android/settings/LockScreenWallpaper;)[Ljava/lang/String;

    move-result-object v4

    iget-object v3, p0, Lcom/android/settings/LockScreenWallpaper$WallpaperAdapter;->this$0:Lcom/android/settings/LockScreenWallpaper;

    #getter for: Lcom/android/settings/LockScreenWallpaper;->rList:Ljava/util/List;
    invoke-static {v3}, Lcom/android/settings/LockScreenWallpaper;->access$100(Lcom/android/settings/LockScreenWallpaper;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    aput-object v3, v4, p1

    .line 173
    :cond_f0
    add-int/lit8 v0, v0, -0x1

    .line 162
    :cond_f2
    :goto_f2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_3d

    .line 157
    .end local v0           #count:I
    .end local v1           #holder:Lcom/android/settings/LockScreenWallpaper$ViewHolder;
    .end local v2           #i:I
    :cond_f6
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/LockScreenWallpaper$ViewHolder;

    .restart local v1       #holder:Lcom/android/settings/LockScreenWallpaper$ViewHolder;
    goto/16 :goto_3b

    .line 175
    .restart local v0       #count:I
    .restart local v2       #i:I
    :cond_fe
    iget-object v3, p0, Lcom/android/settings/LockScreenWallpaper$WallpaperAdapter;->this$0:Lcom/android/settings/LockScreenWallpaper;

    invoke-virtual {v3}, Lcom/android/settings/LockScreenWallpaper;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_193

    .line 176
    const-string v4, "com.android.sec.gallery3d"

    iget-object v3, p0, Lcom/android/settings/LockScreenWallpaper$WallpaperAdapter;->this$0:Lcom/android/settings/LockScreenWallpaper;

    #getter for: Lcom/android/settings/LockScreenWallpaper;->rList:Ljava/util/List;
    invoke-static {v3}, Lcom/android/settings/LockScreenWallpaper;->access$100(Lcom/android/settings/LockScreenWallpaper;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_13a

    const-string v4, "com.sec.android.app.wallpaperchooser"

    iget-object v3, p0, Lcom/android/settings/LockScreenWallpaper$WallpaperAdapter;->this$0:Lcom/android/settings/LockScreenWallpaper;

    #getter for: Lcom/android/settings/LockScreenWallpaper;->rList:Ljava/util/List;
    invoke-static {v3}, Lcom/android/settings/LockScreenWallpaper;->access$100(Lcom/android/settings/LockScreenWallpaper;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f2

    .line 178
    :cond_13a
    if-nez v0, :cond_18f

    .line 179
    iget-object v4, v1, Lcom/android/settings/LockScreenWallpaper$ViewHolder;->text:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings/LockScreenWallpaper$WallpaperAdapter;->this$0:Lcom/android/settings/LockScreenWallpaper;

    #getter for: Lcom/android/settings/LockScreenWallpaper;->rList:Ljava/util/List;
    invoke-static {v3}, Lcom/android/settings/LockScreenWallpaper;->access$100(Lcom/android/settings/LockScreenWallpaper;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v5, p0, Lcom/android/settings/LockScreenWallpaper$WallpaperAdapter;->this$0:Lcom/android/settings/LockScreenWallpaper;

    #getter for: Lcom/android/settings/LockScreenWallpaper;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v5}, Lcom/android/settings/LockScreenWallpaper;->access$200(Lcom/android/settings/LockScreenWallpaper;)Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    iget-object v3, v1, Lcom/android/settings/LockScreenWallpaper$ViewHolder;->text2:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 181
    iget-object v4, v1, Lcom/android/settings/LockScreenWallpaper$ViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/settings/LockScreenWallpaper$WallpaperAdapter;->this$0:Lcom/android/settings/LockScreenWallpaper;

    #getter for: Lcom/android/settings/LockScreenWallpaper;->rList:Ljava/util/List;
    invoke-static {v3}, Lcom/android/settings/LockScreenWallpaper;->access$100(Lcom/android/settings/LockScreenWallpaper;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v5, p0, Lcom/android/settings/LockScreenWallpaper$WallpaperAdapter;->this$0:Lcom/android/settings/LockScreenWallpaper;

    #getter for: Lcom/android/settings/LockScreenWallpaper;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v5}, Lcom/android/settings/LockScreenWallpaper;->access$200(Lcom/android/settings/LockScreenWallpaper;)Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 182
    iget-object v3, p0, Lcom/android/settings/LockScreenWallpaper$WallpaperAdapter;->this$0:Lcom/android/settings/LockScreenWallpaper;

    #getter for: Lcom/android/settings/LockScreenWallpaper;->ItemName:[Ljava/lang/String;
    invoke-static {v3}, Lcom/android/settings/LockScreenWallpaper;->access$300(Lcom/android/settings/LockScreenWallpaper;)[Ljava/lang/String;

    move-result-object v4

    iget-object v3, p0, Lcom/android/settings/LockScreenWallpaper$WallpaperAdapter;->this$0:Lcom/android/settings/LockScreenWallpaper;

    #getter for: Lcom/android/settings/LockScreenWallpaper;->rList:Ljava/util/List;
    invoke-static {v3}, Lcom/android/settings/LockScreenWallpaper;->access$100(Lcom/android/settings/LockScreenWallpaper;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    aput-object v3, v4, p1

    .line 184
    :cond_18f
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_f2

    .line 188
    :cond_193
    const-string v4, "com.cooliris.media"

    iget-object v3, p0, Lcom/android/settings/LockScreenWallpaper$WallpaperAdapter;->this$0:Lcom/android/settings/LockScreenWallpaper;

    #getter for: Lcom/android/settings/LockScreenWallpaper;->rList:Ljava/util/List;
    invoke-static {v3}, Lcom/android/settings/LockScreenWallpaper;->access$100(Lcom/android/settings/LockScreenWallpaper;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1c3

    const-string v4, "com.sec.android.app.twwallpaperchooser"

    iget-object v3, p0, Lcom/android/settings/LockScreenWallpaper$WallpaperAdapter;->this$0:Lcom/android/settings/LockScreenWallpaper;

    #getter for: Lcom/android/settings/LockScreenWallpaper;->rList:Ljava/util/List;
    invoke-static {v3}, Lcom/android/settings/LockScreenWallpaper;->access$100(Lcom/android/settings/LockScreenWallpaper;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f2

    .line 190
    :cond_1c3
    if-nez v0, :cond_218

    .line 191
    iget-object v4, v1, Lcom/android/settings/LockScreenWallpaper$ViewHolder;->text:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings/LockScreenWallpaper$WallpaperAdapter;->this$0:Lcom/android/settings/LockScreenWallpaper;

    #getter for: Lcom/android/settings/LockScreenWallpaper;->rList:Ljava/util/List;
    invoke-static {v3}, Lcom/android/settings/LockScreenWallpaper;->access$100(Lcom/android/settings/LockScreenWallpaper;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v5, p0, Lcom/android/settings/LockScreenWallpaper$WallpaperAdapter;->this$0:Lcom/android/settings/LockScreenWallpaper;

    #getter for: Lcom/android/settings/LockScreenWallpaper;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v5}, Lcom/android/settings/LockScreenWallpaper;->access$200(Lcom/android/settings/LockScreenWallpaper;)Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    iget-object v3, v1, Lcom/android/settings/LockScreenWallpaper$ViewHolder;->text2:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 193
    iget-object v4, v1, Lcom/android/settings/LockScreenWallpaper$ViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/settings/LockScreenWallpaper$WallpaperAdapter;->this$0:Lcom/android/settings/LockScreenWallpaper;

    #getter for: Lcom/android/settings/LockScreenWallpaper;->rList:Ljava/util/List;
    invoke-static {v3}, Lcom/android/settings/LockScreenWallpaper;->access$100(Lcom/android/settings/LockScreenWallpaper;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v5, p0, Lcom/android/settings/LockScreenWallpaper$WallpaperAdapter;->this$0:Lcom/android/settings/LockScreenWallpaper;

    #getter for: Lcom/android/settings/LockScreenWallpaper;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v5}, Lcom/android/settings/LockScreenWallpaper;->access$200(Lcom/android/settings/LockScreenWallpaper;)Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 194
    iget-object v3, p0, Lcom/android/settings/LockScreenWallpaper$WallpaperAdapter;->this$0:Lcom/android/settings/LockScreenWallpaper;

    #getter for: Lcom/android/settings/LockScreenWallpaper;->ItemName:[Ljava/lang/String;
    invoke-static {v3}, Lcom/android/settings/LockScreenWallpaper;->access$300(Lcom/android/settings/LockScreenWallpaper;)[Ljava/lang/String;

    move-result-object v4

    iget-object v3, p0, Lcom/android/settings/LockScreenWallpaper$WallpaperAdapter;->this$0:Lcom/android/settings/LockScreenWallpaper;

    #getter for: Lcom/android/settings/LockScreenWallpaper;->rList:Ljava/util/List;
    invoke-static {v3}, Lcom/android/settings/LockScreenWallpaper;->access$100(Lcom/android/settings/LockScreenWallpaper;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    aput-object v3, v4, p1

    .line 196
    :cond_218
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_f2

    .line 201
    :cond_21c
    return-object p2
.end method
