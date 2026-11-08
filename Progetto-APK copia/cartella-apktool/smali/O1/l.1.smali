.class public final LO1/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic G:I

.field public final synthetic H:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, LO1/l;->G:I

    .line 5
    .line 6
    iput-object p1, p0, LO1/l;->H:Ljava/lang/Object;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x1

    .line 3
    iget v2, p0, LO1/l;->G:I

    .line 4
    .line 5
    iget-object v3, p0, LO1/l;->H:Ljava/lang/Object;

    .line 6
    .line 7
    packed-switch v2, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    check-cast v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 11
    .line 12
    invoke-virtual {v3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->U0()Z

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :pswitch_0
    check-cast v3, LO1/p;

    .line 17
    .line 18
    iget v2, v3, LO1/p;->A:I

    .line 19
    .line 20
    iget-object v4, v3, LO1/p;->z:Landroid/animation/ValueAnimator;

    .line 21
    .line 22
    if-eq v2, v1, :cond_0

    .line 23
    .line 24
    if-eq v2, v0, :cond_1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->cancel()V

    .line 28
    .line 29
    .line 30
    :cond_1
    const/4 v2, 0x3

    .line 31
    iput v2, v3, LO1/p;->A:I

    .line 32
    .line 33
    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    check-cast v2, Ljava/lang/Float;

    .line 38
    .line 39
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    new-array v0, v0, [F

    .line 44
    .line 45
    const/4 v3, 0x0

    .line 46
    aput v2, v0, v3

    .line 47
    .line 48
    const/4 v2, 0x0

    .line 49
    aput v2, v0, v1

    .line 50
    .line 51
    invoke-virtual {v4, v0}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 52
    .line 53
    .line 54
    const/16 v0, 0x1f4

    .line 55
    .line 56
    int-to-long v0, v0

    .line 57
    invoke-virtual {v4, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->start()V

    .line 61
    .line 62
    .line 63
    :goto_0
    return-void

    .line 64
    nop

    .line 65
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
