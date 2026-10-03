.class public final Ll/b1;
.super Landroid/util/Property;
.source "SourceFile"


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Class;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput p1, p0, Ll/b1;->a:I

    .line 2
    .line 3
    invoke-direct {p0, p2, p3}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Landroidx/leanback/widget/A;)Ljava/lang/Float;
    .locals 1

    .line 1
    iget v0, p0, Ll/b1;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget p1, p1, Landroidx/leanback/widget/A;->c:F

    .line 7
    .line 8
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    return-object p1

    .line 13
    :pswitch_0
    iget p1, p1, Landroidx/leanback/widget/A;->e:F

    .line 14
    .line 15
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    return-object p1

    .line 20
    :pswitch_1
    iget p1, p1, Landroidx/leanback/widget/A;->a:F

    .line 21
    .line 22
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    return-object p1

    .line 27
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final b(LX1/e;Landroid/graphics/PointF;)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    iget v1, p0, Ll/b1;->a:I

    .line 3
    .line 4
    packed-switch v1, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    iget v1, p2, Landroid/graphics/PointF;->x:F

    .line 11
    .line 12
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    iput v1, p1, LX1/e;->c:I

    .line 17
    .line 18
    iget p2, p2, Landroid/graphics/PointF;->y:F

    .line 19
    .line 20
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    .line 21
    .line 22
    .line 23
    move-result p2

    .line 24
    iput p2, p1, LX1/e;->d:I

    .line 25
    .line 26
    iget v1, p1, LX1/e;->g:I

    .line 27
    .line 28
    add-int/lit8 v1, v1, 0x1

    .line 29
    .line 30
    iput v1, p1, LX1/e;->g:I

    .line 31
    .line 32
    iget v2, p1, LX1/e;->f:I

    .line 33
    .line 34
    if-ne v2, v1, :cond_0

    .line 35
    .line 36
    iget v1, p1, LX1/e;->a:I

    .line 37
    .line 38
    iget v2, p1, LX1/e;->b:I

    .line 39
    .line 40
    iget v3, p1, LX1/e;->c:I

    .line 41
    .line 42
    iget-object v4, p1, LX1/e;->e:Landroid/view/View;

    .line 43
    .line 44
    invoke-static {v4, v1, v2, v3, p2}, LX1/z;->a(Landroid/view/View;IIII)V

    .line 45
    .line 46
    .line 47
    iput v0, p1, LX1/e;->f:I

    .line 48
    .line 49
    iput v0, p1, LX1/e;->g:I

    .line 50
    .line 51
    :cond_0
    return-void

    .line 52
    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    .line 54
    .line 55
    iget v1, p2, Landroid/graphics/PointF;->x:F

    .line 56
    .line 57
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    iput v1, p1, LX1/e;->a:I

    .line 62
    .line 63
    iget p2, p2, Landroid/graphics/PointF;->y:F

    .line 64
    .line 65
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    .line 66
    .line 67
    .line 68
    move-result p2

    .line 69
    iput p2, p1, LX1/e;->b:I

    .line 70
    .line 71
    iget v1, p1, LX1/e;->f:I

    .line 72
    .line 73
    add-int/lit8 v1, v1, 0x1

    .line 74
    .line 75
    iput v1, p1, LX1/e;->f:I

    .line 76
    .line 77
    iget v2, p1, LX1/e;->g:I

    .line 78
    .line 79
    if-ne v1, v2, :cond_1

    .line 80
    .line 81
    iget v1, p1, LX1/e;->a:I

    .line 82
    .line 83
    iget v2, p1, LX1/e;->c:I

    .line 84
    .line 85
    iget v3, p1, LX1/e;->d:I

    .line 86
    .line 87
    iget-object v4, p1, LX1/e;->e:Landroid/view/View;

    .line 88
    .line 89
    invoke-static {v4, v1, p2, v2, v3}, LX1/z;->a(Landroid/view/View;IIII)V

    .line 90
    .line 91
    .line 92
    iput v0, p1, LX1/e;->f:I

    .line 93
    .line 94
    iput v0, p1, LX1/e;->g:I

    .line 95
    .line 96
    :cond_1
    return-void

    .line 97
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method public final c(Landroid/view/View;Landroid/graphics/PointF;)V
    .locals 3

    .line 1
    iget v0, p0, Ll/b1;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget v0, p2, Landroid/graphics/PointF;->x:F

    .line 7
    .line 8
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    iget p2, p2, Landroid/graphics/PointF;->y:F

    .line 13
    .line 14
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    .line 15
    .line 16
    .line 17
    move-result p2

    .line 18
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    add-int/2addr v1, v0

    .line 23
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    add-int/2addr v2, p2

    .line 28
    invoke-static {p1, v0, p2, v1, v2}, LX1/z;->a(Landroid/view/View;IIII)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :pswitch_0
    iget v0, p2, Landroid/graphics/PointF;->x:F

    .line 33
    .line 34
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    iget p2, p2, Landroid/graphics/PointF;->y:F

    .line 39
    .line 40
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    .line 41
    .line 42
    .line 43
    move-result p2

    .line 44
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    invoke-static {p1, v0, p2, v1, v2}, LX1/z;->a(Landroid/view/View;IIII)V

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    iget v2, p2, Landroid/graphics/PointF;->x:F

    .line 65
    .line 66
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    iget p2, p2, Landroid/graphics/PointF;->y:F

    .line 71
    .line 72
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    .line 73
    .line 74
    .line 75
    move-result p2

    .line 76
    invoke-static {p1, v0, v1, v2, p2}, LX1/z;->a(Landroid/view/View;IIII)V

    .line 77
    .line 78
    .line 79
    return-void

    .line 80
    nop

    .line 81
    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final d(Landroidx/leanback/widget/A;Ljava/lang/Float;)V
    .locals 2

    .line 1
    iget v0, p0, Ll/b1;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    .line 7
    .line 8
    .line 9
    move-result p2

    .line 10
    iget v0, p1, Landroidx/leanback/widget/A;->h:F

    .line 11
    .line 12
    mul-float p2, p2, v0

    .line 13
    .line 14
    iget v0, p1, Landroidx/leanback/widget/A;->i:F

    .line 15
    .line 16
    mul-float p2, p2, v0

    .line 17
    .line 18
    iput p2, p1, Landroidx/leanback/widget/A;->c:F

    .line 19
    .line 20
    iget-object p1, p1, Landroidx/leanback/widget/A;->j:Landroidx/leanback/widget/PagingIndicator;

    .line 21
    .line 22
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :pswitch_0
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    .line 27
    .line 28
    .line 29
    move-result p2

    .line 30
    iput p2, p1, Landroidx/leanback/widget/A;->e:F

    .line 31
    .line 32
    const/high16 v0, 0x40000000    # 2.0f

    .line 33
    .line 34
    div-float/2addr p2, v0

    .line 35
    iput p2, p1, Landroidx/leanback/widget/A;->f:F

    .line 36
    .line 37
    iget-object v0, p1, Landroidx/leanback/widget/A;->j:Landroidx/leanback/widget/PagingIndicator;

    .line 38
    .line 39
    iget v1, v0, Landroidx/leanback/widget/PagingIndicator;->e0:F

    .line 40
    .line 41
    mul-float p2, p2, v1

    .line 42
    .line 43
    iput p2, p1, Landroidx/leanback/widget/A;->g:F

    .line 44
    .line 45
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :pswitch_1
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    .line 50
    .line 51
    .line 52
    move-result p2

    .line 53
    iput p2, p1, Landroidx/leanback/widget/A;->a:F

    .line 54
    .line 55
    invoke-virtual {p1}, Landroidx/leanback/widget/A;->a()V

    .line 56
    .line 57
    .line 58
    iget-object p1, p1, Landroidx/leanback/widget/A;->j:Landroidx/leanback/widget/PagingIndicator;

    .line 59
    .line 60
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 61
    .line 62
    .line 63
    return-void

    .line 64
    nop

    .line 65
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Ll/b1;->a:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    check-cast p1, Landroid/view/View;

    .line 8
    .line 9
    sget-object v0, LN/N;->a:Ljava/util/WeakHashMap;

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/view/View;->getClipBounds()Landroid/graphics/Rect;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1

    .line 16
    :pswitch_0
    check-cast p1, Landroid/view/View;

    .line 17
    .line 18
    sget-object v0, LX1/z;->a:LX1/B;

    .line 19
    .line 20
    invoke-virtual {v0, p1}, LX1/A;->g(Landroid/view/View;)F

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    return-object p1

    .line 29
    :pswitch_1
    check-cast p1, Landroid/view/View;

    .line 30
    .line 31
    return-object v1

    .line 32
    :pswitch_2
    check-cast p1, Landroid/view/View;

    .line 33
    .line 34
    return-object v1

    .line 35
    :pswitch_3
    check-cast p1, Landroid/view/View;

    .line 36
    .line 37
    return-object v1

    .line 38
    :pswitch_4
    check-cast p1, LX1/e;

    .line 39
    .line 40
    return-object v1

    .line 41
    :pswitch_5
    check-cast p1, LX1/e;

    .line 42
    .line 43
    return-object v1

    .line 44
    :pswitch_6
    check-cast p1, Landroidx/leanback/widget/V;

    .line 45
    .line 46
    invoke-virtual {p1}, Landroidx/leanback/widget/V;->getStreamPosition()I

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    return-object p1

    .line 55
    :pswitch_7
    check-cast p1, Landroidx/leanback/widget/A;

    .line 56
    .line 57
    invoke-virtual {p0, p1}, Ll/b1;->a(Landroidx/leanback/widget/A;)Ljava/lang/Float;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    return-object p1

    .line 62
    :pswitch_8
    check-cast p1, Landroidx/leanback/widget/A;

    .line 63
    .line 64
    invoke-virtual {p0, p1}, Ll/b1;->a(Landroidx/leanback/widget/A;)Ljava/lang/Float;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    return-object p1

    .line 69
    :pswitch_9
    check-cast p1, Landroidx/leanback/widget/A;

    .line 70
    .line 71
    invoke-virtual {p0, p1}, Ll/b1;->a(Landroidx/leanback/widget/A;)Ljava/lang/Float;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    return-object p1

    .line 76
    :pswitch_a
    check-cast p1, Landroidx/appcompat/widget/SwitchCompat;

    .line 77
    .line 78
    iget p1, p1, Landroidx/appcompat/widget/SwitchCompat;->i0:F

    .line 79
    .line 80
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    return-object p1

    .line 85
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget v0, p0, Ll/b1;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Landroid/view/View;

    .line 7
    .line 8
    check-cast p2, Landroid/graphics/Rect;

    .line 9
    .line 10
    sget-object v0, LN/N;->a:Ljava/util/WeakHashMap;

    .line 11
    .line 12
    invoke-virtual {p1, p2}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :pswitch_0
    check-cast p1, Landroid/view/View;

    .line 17
    .line 18
    check-cast p2, Ljava/lang/Float;

    .line 19
    .line 20
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    .line 21
    .line 22
    .line 23
    move-result p2

    .line 24
    sget-object v0, LX1/z;->a:LX1/B;

    .line 25
    .line 26
    invoke-virtual {v0, p1, p2}, LX1/A;->j(Landroid/view/View;F)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :pswitch_1
    check-cast p1, Landroid/view/View;

    .line 31
    .line 32
    check-cast p2, Landroid/graphics/PointF;

    .line 33
    .line 34
    invoke-virtual {p0, p1, p2}, Ll/b1;->c(Landroid/view/View;Landroid/graphics/PointF;)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :pswitch_2
    check-cast p1, Landroid/view/View;

    .line 39
    .line 40
    check-cast p2, Landroid/graphics/PointF;

    .line 41
    .line 42
    invoke-virtual {p0, p1, p2}, Ll/b1;->c(Landroid/view/View;Landroid/graphics/PointF;)V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :pswitch_3
    check-cast p1, Landroid/view/View;

    .line 47
    .line 48
    check-cast p2, Landroid/graphics/PointF;

    .line 49
    .line 50
    invoke-virtual {p0, p1, p2}, Ll/b1;->c(Landroid/view/View;Landroid/graphics/PointF;)V

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :pswitch_4
    check-cast p1, LX1/e;

    .line 55
    .line 56
    check-cast p2, Landroid/graphics/PointF;

    .line 57
    .line 58
    invoke-virtual {p0, p1, p2}, Ll/b1;->b(LX1/e;Landroid/graphics/PointF;)V

    .line 59
    .line 60
    .line 61
    return-void

    .line 62
    :pswitch_5
    check-cast p1, LX1/e;

    .line 63
    .line 64
    check-cast p2, Landroid/graphics/PointF;

    .line 65
    .line 66
    invoke-virtual {p0, p1, p2}, Ll/b1;->b(LX1/e;Landroid/graphics/PointF;)V

    .line 67
    .line 68
    .line 69
    return-void

    .line 70
    :pswitch_6
    check-cast p1, Landroidx/leanback/widget/V;

    .line 71
    .line 72
    check-cast p2, Ljava/lang/Integer;

    .line 73
    .line 74
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 75
    .line 76
    .line 77
    move-result p2

    .line 78
    invoke-virtual {p1, p2}, Landroidx/leanback/widget/V;->setStreamPosition(I)V

    .line 79
    .line 80
    .line 81
    return-void

    .line 82
    :pswitch_7
    check-cast p1, Landroidx/leanback/widget/A;

    .line 83
    .line 84
    check-cast p2, Ljava/lang/Float;

    .line 85
    .line 86
    invoke-virtual {p0, p1, p2}, Ll/b1;->d(Landroidx/leanback/widget/A;Ljava/lang/Float;)V

    .line 87
    .line 88
    .line 89
    return-void

    .line 90
    :pswitch_8
    check-cast p1, Landroidx/leanback/widget/A;

    .line 91
    .line 92
    check-cast p2, Ljava/lang/Float;

    .line 93
    .line 94
    invoke-virtual {p0, p1, p2}, Ll/b1;->d(Landroidx/leanback/widget/A;Ljava/lang/Float;)V

    .line 95
    .line 96
    .line 97
    return-void

    .line 98
    :pswitch_9
    check-cast p1, Landroidx/leanback/widget/A;

    .line 99
    .line 100
    check-cast p2, Ljava/lang/Float;

    .line 101
    .line 102
    invoke-virtual {p0, p1, p2}, Ll/b1;->d(Landroidx/leanback/widget/A;Ljava/lang/Float;)V

    .line 103
    .line 104
    .line 105
    return-void

    .line 106
    :pswitch_a
    check-cast p1, Landroidx/appcompat/widget/SwitchCompat;

    .line 107
    .line 108
    check-cast p2, Ljava/lang/Float;

    .line 109
    .line 110
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    .line 111
    .line 112
    .line 113
    move-result p2

    .line 114
    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/SwitchCompat;->setThumbPosition(F)V

    .line 115
    .line 116
    .line 117
    return-void

    .line 118
    nop

    .line 119
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
