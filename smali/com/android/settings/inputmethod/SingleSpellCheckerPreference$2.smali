.class Lcom/android/settings/inputmethod/SingleSpellCheckerPreference$2;
.super Ljava/lang/Object;
.source "SingleSpellCheckerPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->onBindView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;)V
    .registers 2
    .parameter

    .prologue
    .line 93
    iput-object p1, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference$2;->this$0:Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "arg0"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference$2;->this$0:Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;

    #calls: Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->onSubtypeButtonClicked(Landroid/view/View;)V
    invoke-static {v0, p1}, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->access$100(Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;Landroid/view/View;)V

    .line 97
    return-void
.end method
