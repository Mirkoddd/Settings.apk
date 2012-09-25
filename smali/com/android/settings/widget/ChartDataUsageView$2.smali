.class Lcom/android/settings/widget/ChartDataUsageView$2;
.super Ljava/lang/Object;
.source "ChartDataUsageView.java"

# interfaces
.implements Lcom/android/settings/widget/ChartSweepView$OnSweepListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/widget/ChartDataUsageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/widget/ChartDataUsageView;


# direct methods
.method constructor <init>(Lcom/android/settings/widget/ChartDataUsageView;)V
    .registers 2
    .parameter

    .prologue
    .line 307
    iput-object p1, p0, Lcom/android/settings/widget/ChartDataUsageView$2;->this$0:Lcom/android/settings/widget/ChartDataUsageView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSweep(Lcom/android/settings/widget/ChartSweepView;Z)V
    .registers 4
    .parameter "sweep"
    .parameter "sweepDone"

    .prologue
    .line 310
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView$2;->this$0:Lcom/android/settings/widget/ChartDataUsageView;

    #calls: Lcom/android/settings/widget/ChartDataUsageView;->updatePrimaryRange()V
    invoke-static {v0}, Lcom/android/settings/widget/ChartDataUsageView;->access$300(Lcom/android/settings/widget/ChartDataUsageView;)V

    .line 313
    if-eqz p2, :cond_18

    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView$2;->this$0:Lcom/android/settings/widget/ChartDataUsageView;

    #getter for: Lcom/android/settings/widget/ChartDataUsageView;->mListener:Lcom/android/settings/widget/ChartDataUsageView$DataUsageChartListener;
    invoke-static {v0}, Lcom/android/settings/widget/ChartDataUsageView;->access$400(Lcom/android/settings/widget/ChartDataUsageView;)Lcom/android/settings/widget/ChartDataUsageView$DataUsageChartListener;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 314
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView$2;->this$0:Lcom/android/settings/widget/ChartDataUsageView;

    #getter for: Lcom/android/settings/widget/ChartDataUsageView;->mListener:Lcom/android/settings/widget/ChartDataUsageView$DataUsageChartListener;
    invoke-static {v0}, Lcom/android/settings/widget/ChartDataUsageView;->access$400(Lcom/android/settings/widget/ChartDataUsageView;)Lcom/android/settings/widget/ChartDataUsageView$DataUsageChartListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/settings/widget/ChartDataUsageView$DataUsageChartListener;->onInspectRangeChanged()V

    .line 316
    :cond_18
    return-void
.end method

.method public requestEdit(Lcom/android/settings/widget/ChartSweepView;)V
    .registers 2
    .parameter "sweep"

    .prologue
    .line 321
    return-void
.end method
