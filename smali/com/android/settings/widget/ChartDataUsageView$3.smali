.class Lcom/android/settings/widget/ChartDataUsageView$3;
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
    .line 335
    iput-object p1, p0, Lcom/android/settings/widget/ChartDataUsageView$3;->this$0:Lcom/android/settings/widget/ChartDataUsageView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSweep(Lcom/android/settings/widget/ChartSweepView;Z)V
    .registers 5
    .parameter "sweep"
    .parameter "sweepDone"

    .prologue
    .line 338
    if-eqz p2, :cond_40

    .line 339
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView$3;->this$0:Lcom/android/settings/widget/ChartDataUsageView;

    #calls: Lcom/android/settings/widget/ChartDataUsageView;->clearUpdateAxisDelayed(Lcom/android/settings/widget/ChartSweepView;)V
    invoke-static {v0, p1}, Lcom/android/settings/widget/ChartDataUsageView;->access$500(Lcom/android/settings/widget/ChartDataUsageView;Lcom/android/settings/widget/ChartSweepView;)V

    .line 340
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView$3;->this$0:Lcom/android/settings/widget/ChartDataUsageView;

    #calls: Lcom/android/settings/widget/ChartDataUsageView;->updateEstimateVisible()V
    invoke-static {v0}, Lcom/android/settings/widget/ChartDataUsageView;->access$100(Lcom/android/settings/widget/ChartDataUsageView;)V

    .line 342
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView$3;->this$0:Lcom/android/settings/widget/ChartDataUsageView;

    #getter for: Lcom/android/settings/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/settings/widget/ChartSweepView;
    invoke-static {v0}, Lcom/android/settings/widget/ChartDataUsageView;->access$600(Lcom/android/settings/widget/ChartDataUsageView;)Lcom/android/settings/widget/ChartSweepView;

    move-result-object v0

    if-ne p1, v0, :cond_26

    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView$3;->this$0:Lcom/android/settings/widget/ChartDataUsageView;

    #getter for: Lcom/android/settings/widget/ChartDataUsageView;->mListener:Lcom/android/settings/widget/ChartDataUsageView$DataUsageChartListener;
    invoke-static {v0}, Lcom/android/settings/widget/ChartDataUsageView;->access$400(Lcom/android/settings/widget/ChartDataUsageView;)Lcom/android/settings/widget/ChartDataUsageView$DataUsageChartListener;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 343
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView$3;->this$0:Lcom/android/settings/widget/ChartDataUsageView;

    #getter for: Lcom/android/settings/widget/ChartDataUsageView;->mListener:Lcom/android/settings/widget/ChartDataUsageView$DataUsageChartListener;
    invoke-static {v0}, Lcom/android/settings/widget/ChartDataUsageView;->access$400(Lcom/android/settings/widget/ChartDataUsageView;)Lcom/android/settings/widget/ChartDataUsageView$DataUsageChartListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/settings/widget/ChartDataUsageView$DataUsageChartListener;->onWarningChanged()V

    .line 351
    :cond_25
    :goto_25
    return-void

    .line 344
    :cond_26
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView$3;->this$0:Lcom/android/settings/widget/ChartDataUsageView;

    #getter for: Lcom/android/settings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/settings/widget/ChartSweepView;
    invoke-static {v0}, Lcom/android/settings/widget/ChartDataUsageView;->access$700(Lcom/android/settings/widget/ChartDataUsageView;)Lcom/android/settings/widget/ChartSweepView;

    move-result-object v0

    if-ne p1, v0, :cond_25

    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView$3;->this$0:Lcom/android/settings/widget/ChartDataUsageView;

    #getter for: Lcom/android/settings/widget/ChartDataUsageView;->mListener:Lcom/android/settings/widget/ChartDataUsageView$DataUsageChartListener;
    invoke-static {v0}, Lcom/android/settings/widget/ChartDataUsageView;->access$400(Lcom/android/settings/widget/ChartDataUsageView;)Lcom/android/settings/widget/ChartDataUsageView$DataUsageChartListener;

    move-result-object v0

    if-eqz v0, :cond_25

    .line 345
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView$3;->this$0:Lcom/android/settings/widget/ChartDataUsageView;

    #getter for: Lcom/android/settings/widget/ChartDataUsageView;->mListener:Lcom/android/settings/widget/ChartDataUsageView$DataUsageChartListener;
    invoke-static {v0}, Lcom/android/settings/widget/ChartDataUsageView;->access$400(Lcom/android/settings/widget/ChartDataUsageView;)Lcom/android/settings/widget/ChartDataUsageView$DataUsageChartListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/settings/widget/ChartDataUsageView$DataUsageChartListener;->onLimitChanged()V

    goto :goto_25

    .line 349
    :cond_40
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView$3;->this$0:Lcom/android/settings/widget/ChartDataUsageView;

    const/4 v1, 0x0

    #calls: Lcom/android/settings/widget/ChartDataUsageView;->sendUpdateAxisDelayed(Lcom/android/settings/widget/ChartSweepView;Z)V
    invoke-static {v0, p1, v1}, Lcom/android/settings/widget/ChartDataUsageView;->access$200(Lcom/android/settings/widget/ChartDataUsageView;Lcom/android/settings/widget/ChartSweepView;Z)V

    goto :goto_25
.end method

.method public requestEdit(Lcom/android/settings/widget/ChartSweepView;)V
    .registers 3
    .parameter "sweep"

    .prologue
    .line 355
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView$3;->this$0:Lcom/android/settings/widget/ChartDataUsageView;

    #getter for: Lcom/android/settings/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/settings/widget/ChartSweepView;
    invoke-static {v0}, Lcom/android/settings/widget/ChartDataUsageView;->access$600(Lcom/android/settings/widget/ChartDataUsageView;)Lcom/android/settings/widget/ChartSweepView;

    move-result-object v0

    if-ne p1, v0, :cond_1a

    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView$3;->this$0:Lcom/android/settings/widget/ChartDataUsageView;

    #getter for: Lcom/android/settings/widget/ChartDataUsageView;->mListener:Lcom/android/settings/widget/ChartDataUsageView$DataUsageChartListener;
    invoke-static {v0}, Lcom/android/settings/widget/ChartDataUsageView;->access$400(Lcom/android/settings/widget/ChartDataUsageView;)Lcom/android/settings/widget/ChartDataUsageView$DataUsageChartListener;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 356
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView$3;->this$0:Lcom/android/settings/widget/ChartDataUsageView;

    #getter for: Lcom/android/settings/widget/ChartDataUsageView;->mListener:Lcom/android/settings/widget/ChartDataUsageView$DataUsageChartListener;
    invoke-static {v0}, Lcom/android/settings/widget/ChartDataUsageView;->access$400(Lcom/android/settings/widget/ChartDataUsageView;)Lcom/android/settings/widget/ChartDataUsageView$DataUsageChartListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/settings/widget/ChartDataUsageView$DataUsageChartListener;->requestWarningEdit()V

    .line 360
    :cond_19
    :goto_19
    return-void

    .line 357
    :cond_1a
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView$3;->this$0:Lcom/android/settings/widget/ChartDataUsageView;

    #getter for: Lcom/android/settings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/settings/widget/ChartSweepView;
    invoke-static {v0}, Lcom/android/settings/widget/ChartDataUsageView;->access$700(Lcom/android/settings/widget/ChartDataUsageView;)Lcom/android/settings/widget/ChartSweepView;

    move-result-object v0

    if-ne p1, v0, :cond_19

    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView$3;->this$0:Lcom/android/settings/widget/ChartDataUsageView;

    #getter for: Lcom/android/settings/widget/ChartDataUsageView;->mListener:Lcom/android/settings/widget/ChartDataUsageView$DataUsageChartListener;
    invoke-static {v0}, Lcom/android/settings/widget/ChartDataUsageView;->access$400(Lcom/android/settings/widget/ChartDataUsageView;)Lcom/android/settings/widget/ChartDataUsageView$DataUsageChartListener;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 358
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView$3;->this$0:Lcom/android/settings/widget/ChartDataUsageView;

    #getter for: Lcom/android/settings/widget/ChartDataUsageView;->mListener:Lcom/android/settings/widget/ChartDataUsageView$DataUsageChartListener;
    invoke-static {v0}, Lcom/android/settings/widget/ChartDataUsageView;->access$400(Lcom/android/settings/widget/ChartDataUsageView;)Lcom/android/settings/widget/ChartDataUsageView$DataUsageChartListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/settings/widget/ChartDataUsageView$DataUsageChartListener;->requestLimitEdit()V

    goto :goto_19
.end method
