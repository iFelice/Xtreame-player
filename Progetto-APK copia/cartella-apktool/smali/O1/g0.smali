.class public final LO1/g0;
.super LO1/w;
.source "SourceFile"


# instance fields
.field public final synthetic q:I

.field public final synthetic r:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Landroid/content/Context;I)V
    .locals 0

    .line 1
    iput p3, p0, LO1/g0;->q:I

    .line 2
    .line 3
    iput-object p1, p0, LO1/g0;->r:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0, p2}, LO1/w;-><init>(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final b(Landroid/util/DisplayMetrics;)F
    .locals 1

    .line 1
    iget v0, p0, LO1/g0;->q:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget p1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 7
    .line 8
    int-to-float p1, p1

    .line 9
    const/high16 v0, 0x40000000    # 2.0f

    .line 10
    .line 11
    div-float/2addr v0, p1

    .line 12
    return v0

    .line 13
    :pswitch_0
    iget p1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 14
    .line 15
    int-to-float p1, p1

    .line 16
    const/high16 v0, 0x42c80000    # 100.0f

    .line 17
    .line 18
    div-float/2addr v0, p1

    .line 19
    return v0

    .line 20
    nop

    .line 21
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final d(I)Landroid/graphics/PointF;
    .locals 1

    .line 1
    iget v0, p0, LO1/g0;->q:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, LO1/w;->d(I)Landroid/graphics/PointF;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    return-object p1

    .line 11
    :pswitch_0
    invoke-super {p0, p1}, LO1/w;->d(I)Landroid/graphics/PointF;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1

    .line 16
    nop

    .line 17
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final g(Landroid/view/View;LO1/Y;LO1/W;)V
    .locals 5

    .line 1
    iget v0, p0, LO1/g0;->q:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2, p3}, LO1/w;->g(Landroid/view/View;LO1/Y;LO1/W;)V

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :pswitch_0
    iget-object p2, p0, LO1/g0;->r:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast p2, LO1/x;

    .line 13
    .line 14
    iget-object v0, p2, LO1/x;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()LO1/L;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {p2, v0, p1}, LO1/x;->a(LO1/L;Landroid/view/View;)[I

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    const/4 p2, 0x0

    .line 28
    aget p2, p1, p2

    .line 29
    .line 30
    const/4 v0, 0x1

    .line 31
    aget p1, p1, v0

    .line 32
    .line 33
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    invoke-virtual {p0, v1}, LO1/w;->c(I)I

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    int-to-double v1, v1

    .line 50
    const-wide v3, 0x3fd57a786c22680aL    # 0.3356

    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    div-double/2addr v1, v3

    .line 56
    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    .line 57
    .line 58
    .line 59
    move-result-wide v1

    .line 60
    double-to-int v1, v1

    .line 61
    if-lez v1, :cond_1

    .line 62
    .line 63
    iget-object v2, p0, LO1/w;->j:Landroid/view/animation/DecelerateInterpolator;

    .line 64
    .line 65
    iput p2, p3, LO1/W;->a:I

    .line 66
    .line 67
    iput p1, p3, LO1/W;->b:I

    .line 68
    .line 69
    iput v1, p3, LO1/W;->c:I

    .line 70
    .line 71
    iput-object v2, p3, LO1/W;->e:Landroid/view/animation/Interpolator;

    .line 72
    .line 73
    iput-boolean v0, p3, LO1/W;->f:Z

    .line 74
    .line 75
    :cond_1
    :goto_0
    return-void

    .line 76
    nop

    .line 77
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
