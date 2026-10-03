.class public final Lb7/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lb7/i;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Lb7/i;->b:Ljava/lang/Object;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3

    .line 1
    iget p3, p0, Lb7/i;->a:I

    .line 2
    .line 3
    iget-object v0, p0, Lb7/i;->b:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch p3, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    const-string p1, "XCIPTV_TAG"

    .line 9
    .line 10
    const-string p2, "----onStopTrackingTouch-onProgressChanged"

    .line 11
    .line 12
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    check-cast v0, Lpe/hf/black20/CatchupPlayerActivity;

    .line 16
    .line 17
    iget-object p1, v0, Lpe/hf/black20/CatchupPlayerActivity;->o0:Lb7/j;

    .line 18
    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    iget-object p2, v0, Lpe/hf/black20/CatchupPlayerActivity;->m0:Landroid/os/Handler;

    .line 22
    .line 23
    invoke-virtual {p2, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    new-instance p1, Landroid/os/Handler;

    .line 27
    .line 28
    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 29
    .line 30
    .line 31
    iput-object p1, v0, Lpe/hf/black20/CatchupPlayerActivity;->m0:Landroid/os/Handler;

    .line 32
    .line 33
    new-instance p2, Lb7/j;

    .line 34
    .line 35
    const/4 p3, 0x0

    .line 36
    invoke-direct {p2, v0, p3}, Lb7/j;-><init>(Lpe/hf/black20/CatchupPlayerActivity;I)V

    .line 37
    .line 38
    .line 39
    iput-object p2, v0, Lpe/hf/black20/CatchupPlayerActivity;->o0:Lb7/j;

    .line 40
    .line 41
    const-wide/16 v0, 0xbb8

    .line 42
    .line 43
    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :pswitch_0
    check-cast v0, Lpe/hf/black20/CatchupPlayerActivity;

    .line 48
    .line 49
    iget p3, v0, Lpe/hf/black20/CatchupPlayerActivity;->g0:I

    .line 50
    .line 51
    iget v1, v0, Lpe/hf/black20/CatchupPlayerActivity;->e0:I

    .line 52
    .line 53
    mul-int v1, v1, p2

    .line 54
    .line 55
    add-int/2addr v1, p3

    .line 56
    int-to-double v1, v1

    .line 57
    double-to-int p3, v1

    .line 58
    iput p3, v0, Lpe/hf/black20/CatchupPlayerActivity;->h0:I

    .line 59
    .line 60
    iget-object v1, v0, Lpe/hf/black20/CatchupPlayerActivity;->U:Landroid/widget/TextView;

    .line 61
    .line 62
    invoke-static {p3}, Lpe/hf/black20/util/Methods;->a(I)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p3

    .line 66
    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    .line 68
    .line 69
    iget p3, v0, Lpe/hf/black20/CatchupPlayerActivity;->g0:I

    .line 70
    .line 71
    if-ge p2, p3, :cond_1

    .line 72
    .line 73
    invoke-virtual {p1, p3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 74
    .line 75
    .line 76
    :cond_1
    return-void

    .line 77
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    .line 1
    iget p1, p0, Lb7/i;->a:I

    .line 2
    .line 3
    return-void
.end method

.method public final onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    .line 1
    iget p1, p0, Lb7/i;->a:I

    .line 2
    .line 3
    iget-object v0, p0, Lb7/i;->b:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch p1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    const-string p1, "XCIPTV_TAG"

    .line 9
    .line 10
    const-string v1, "----onStopTrackingTouch"

    .line 11
    .line 12
    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    check-cast v0, Lpe/hf/black20/CatchupPlayerActivity;

    .line 16
    .line 17
    iget-object p1, v0, Lpe/hf/black20/CatchupPlayerActivity;->R:Landroid/widget/FrameLayout;

    .line 18
    .line 19
    const/16 v0, 0x8

    .line 20
    .line 21
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :pswitch_0
    check-cast v0, Lpe/hf/black20/CatchupPlayerActivity;

    .line 26
    .line 27
    iget-object p1, v0, Lpe/hf/black20/CatchupPlayerActivity;->L:Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {v0, p1}, Lpe/hf/black20/CatchupPlayerActivity;->d(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
