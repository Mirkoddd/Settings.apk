.class Lcom/android/settings/UserDictionarySettings$MyAdapter;
.super Landroid/widget/SimpleCursorAdapter;
.source "UserDictionarySettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/SectionIndexer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/UserDictionarySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyAdapter"
.end annotation


# instance fields
.field private mIndexer:Landroid/widget/AlphabetIndexer;

.field private mSettings:Lcom/android/settings/UserDictionarySettings;

.field private mViewBinder:Landroid/widget/SimpleCursorAdapter$ViewBinder;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[ILcom/android/settings/UserDictionarySettings;)V
    .registers 10
    .parameter "context"
    .parameter "layout"
    .parameter "c"
    .parameter "from"
    .parameter "to"
    .parameter "settings"

    .prologue
    .line 333
    invoke-direct/range {p0 .. p5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    .line 318
    new-instance v2, Lcom/android/settings/UserDictionarySettings$MyAdapter$1;

    invoke-direct {v2, p0}, Lcom/android/settings/UserDictionarySettings$MyAdapter$1;-><init>(Lcom/android/settings/UserDictionarySettings$MyAdapter;)V

    iput-object v2, p0, Lcom/android/settings/UserDictionarySettings$MyAdapter;->mViewBinder:Landroid/widget/SimpleCursorAdapter$ViewBinder;

    .line 335
    iput-object p6, p0, Lcom/android/settings/UserDictionarySettings$MyAdapter;->mSettings:Lcom/android/settings/UserDictionarySettings;

    .line 336
    if-eqz p3, :cond_22

    .line 337
    const v2, 0x10404fd

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 339
    .local v0, alphabet:Ljava/lang/String;
    const-string v2, "word"

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 340
    .local v1, wordColIndex:I
    new-instance v2, Landroid/widget/AlphabetIndexer;

    invoke-direct {v2, p3, v1, v0}, Landroid/widget/AlphabetIndexer;-><init>(Landroid/database/Cursor;ILjava/lang/CharSequence;)V

    iput-object v2, p0, Lcom/android/settings/UserDictionarySettings$MyAdapter;->mIndexer:Landroid/widget/AlphabetIndexer;

    .line 342
    .end local v0           #alphabet:Ljava/lang/String;
    .end local v1           #wordColIndex:I
    :cond_22
    iget-object v2, p0, Lcom/android/settings/UserDictionarySettings$MyAdapter;->mViewBinder:Landroid/widget/SimpleCursorAdapter$ViewBinder;

    invoke-virtual {p0, v2}, Lcom/android/settings/UserDictionarySettings$MyAdapter;->setViewBinder(Landroid/widget/SimpleCursorAdapter$ViewBinder;)V

    .line 343
    return-void
.end method


# virtual methods
.method public getPositionForSection(I)I
    .registers 3
    .parameter "section"

    .prologue
    .line 346
    iget-object v0, p0, Lcom/android/settings/UserDictionarySettings$MyAdapter;->mIndexer:Landroid/widget/AlphabetIndexer;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/android/settings/UserDictionarySettings$MyAdapter;->mIndexer:Landroid/widget/AlphabetIndexer;

    invoke-virtual {v0, p1}, Landroid/widget/AlphabetIndexer;->getPositionForSection(I)I

    move-result v0

    goto :goto_5
.end method

.method public getSectionForPosition(I)I
    .registers 3
    .parameter "position"

    .prologue
    .line 350
    iget-object v0, p0, Lcom/android/settings/UserDictionarySettings$MyAdapter;->mIndexer:Landroid/widget/AlphabetIndexer;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/android/settings/UserDictionarySettings$MyAdapter;->mIndexer:Landroid/widget/AlphabetIndexer;

    invoke-virtual {v0, p1}, Landroid/widget/AlphabetIndexer;->getSectionForPosition(I)I

    move-result v0

    goto :goto_5
.end method

.method public getSections()[Ljava/lang/Object;
    .registers 2

    .prologue
    .line 354
    iget-object v0, p0, Lcom/android/settings/UserDictionarySettings$MyAdapter;->mIndexer:Landroid/widget/AlphabetIndexer;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/android/settings/UserDictionarySettings$MyAdapter;->mIndexer:Landroid/widget/AlphabetIndexer;

    invoke-virtual {v0}, Landroid/widget/AlphabetIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v0

    goto :goto_5
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 358
    iget-object v1, p0, Lcom/android/settings/UserDictionarySettings$MyAdapter;->mSettings:Lcom/android/settings/UserDictionarySettings;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    #calls: Lcom/android/settings/UserDictionarySettings;->deleteWord(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/android/settings/UserDictionarySettings;->access$200(Lcom/android/settings/UserDictionarySettings;Ljava/lang/String;)V

    .line 359
    return-void
.end method
