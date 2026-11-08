.class public LO1/w;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:Landroidx/recyclerview/widget/RecyclerView;

.field public c:LO1/L;

.field public d:Z

.field public e:Z

.field public f:Landroid/view/View;

.field public final g:LO1/W;

.field public h:Z

.field public final i:Landroid/view/animation/LinearInterpolator;

.field public final j:Landroid/view/animation/DecelerateInterpolator;

.field public k:Landroid/graphics/PointF;

.field public final l:Landroid/util/DisplayMetrics;

.field public m:Z

.field public n:F

.field public o:I

.field public p:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, LO1/w;->a:I

    .line 6
    .line 7
    new-instance v1, LO1/W;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    iput v0, v1, LO1/W;->d:I

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    iput-boolean v0, v1, LO1/W;->f:Z

    .line 16
    .line 17
    iput v0, v1, LO1/W;->g:I

    .line 18
    .line 19
    iput v0, v1, LO1/W;->a:I

    .line 20
    .line 21
    iput v0, v1, LO1/W;->b:I

    .line 22
    .line 23
    const/high16 v2, -0x80000000

    .line 24
    .line 25
    iput v2, v1, LO1/W;->c:I

    .line 26
    .line 27
    const/4 v2, 0x0

    .line 28
    iput-object v2, v1, LO1/W;->e:Landroid/view/animation/Interpolator;

    .line 29
    .line 30
    iput-object v1, p0, LO1/w;->g:LO1/W;

    .line 31
    .line 32
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    .line 33
    .line 34
    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object v1, p0, LO1/w;->i:Landroid/view/animation/LinearInterpolator;

    .line 38
    .line 39
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    .line 40
    .line 41
    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 42
    .line 43
    .line 44
    iput-object v1, p0, LO1/w;->j:Landroid/view/animation/DecelerateInterpolator;

    .line 45
    .line 46
    iput-boolean v0, p0, LO1/w;->m:Z

    .line 47
    .line 48
    iput v0, p0, LO1/w;->o:I

    .line 49
    .line 50
    iput v0, p0, LO1/w;->p:I

    .line 51
    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    iput-object p1, p0, LO1/w;->l:Landroid/util/DisplayMetrics;

    .line 61
    .line 62
    return-void
.end method

.method public static a(IIIII)I
    .locals 1

    .line 1
    const/4 v0, -0x1

    .line 2
    if-eq p4, v0, :cond_4

    .line 3
    .line 4
    if-eqz p4, :cond_1

    .line 5
    .line 6
    const/4 p0, 0x1

    .line 7
    if-ne p4, p0, :cond_0

    .line 8
    .line 9
    sub-int/2addr p3, p1

    .line 10
    return p3

    .line 11
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 12
    .line 13
    const-string p1, "snap preference should be one of the constants defined in SmoothScroller, starting with SNAP_"

    .line 14
    .line 15
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    throw p0

    .line 19
    :cond_1
    sub-int/2addr p2, p0

    .line 20
    if-lez p2, :cond_2

    .line 21
    .line 22
    return p2

    .line 23
    :cond_2
    sub-int/2addr p3, p1

    .line 24
    if-gez p3, :cond_3

    .line 25
    .line 26
    return p3

    .line 27
    :cond_3
    const/4 p0, 0x0

    .line 28
    return p0

    .line 29
    :cond_4
    sub-int/2addr p2, p0

    .line 30
    return p2
.end method


# virtual methods
.method public b(Landroid/util/DisplayMetrics;)F
    .locals 1

    .line 1
    iget p1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 2
    .line 3
    int-to-float p1, p1

    .line 4
    const/high16 v0, 0x41c80000    # 25.0f

    .line 5
    .line 6
    div-float/2addr v0, p1

    .line 7
    return v0
.end method

.method public c(I)I
    .locals 2

    .line 1
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    int-to-float p1, p1

    .line 6
    iget-boolean v0, p0, LO1/w;->m:Z

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, LO1/w;->l:Landroid/util/DisplayMetrics;

    .line 11
    .line 12
    invoke-virtual {p0, v0}, LO1/w;->b(Landroid/util/DisplayMetrics;)F

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iput v0, p0, LO1/w;->n:F

    .line 17
    .line 18
    const/4 v0, 0x1

    .line 19
    iput-boolean v0, p0, LO1/w;->m:Z

    .line 20
    .line 21
    :cond_0
    iget v0, p0, LO1/w;->n:F

    .line 22
    .line 23
    mul-float p1, p1, v0

    .line 24
    .line 25
    float-to-double v0, p1

    .line 26
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    .line 27
    .line 28
    .line 29
    move-result-wide v0

    .line 30
    double-to-int p1, v0

    .line 31
    return p1
.end method

.method public d(I)Landroid/graphics/PointF;
    .locals 2

    .line 1
    iget-object v0, p0, LO1/w;->c:LO1/L;

    .line 2
    .line 3
    instance-of v1, v0, LO1/X;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, LO1/X;

    .line 8
    .line 9
    invoke-interface {v0, p1}, LO1/X;->a(I)Landroid/graphics/PointF;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string v0, "You should override computeScrollVectorForPosition when the LayoutManager does not implement "

    .line 17
    .line 18
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-class v0, LO1/X;

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    const-string v0, "RecyclerView"

    .line 35
    .line 36
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    const/4 p1, 0x0

    .line 40
    :goto_0
    return-object p1
.end method

.method public final e(II)V
    .locals 7

    .line 1
    iget-object v0, p0, LO1/w;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    .line 3
    iget v1, p0, LO1/w;->a:I

    .line 4
    .line 5
    const/4 v2, -0x1

    .line 6
    if-eq v1, v2, :cond_0

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    :cond_0
    invoke-virtual {p0}, LO1/w;->h()V

    .line 11
    .line 12
    .line 13
    :cond_1
    iget-boolean v1, p0, LO1/w;->d:Z

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    if-eqz v1, :cond_3

    .line 17
    .line 18
    iget-object v1, p0, LO1/w;->f:Landroid/view/View;

    .line 19
    .line 20
    if-nez v1, :cond_3

    .line 21
    .line 22
    iget-object v1, p0, LO1/w;->c:LO1/L;

    .line 23
    .line 24
    if-eqz v1, :cond_3

    .line 25
    .line 26
    iget v1, p0, LO1/w;->a:I

    .line 27
    .line 28
    invoke-virtual {p0, v1}, LO1/w;->d(I)Landroid/graphics/PointF;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    if-eqz v1, :cond_3

    .line 33
    .line 34
    iget v4, v1, Landroid/graphics/PointF;->x:F

    .line 35
    .line 36
    const/4 v5, 0x0

    .line 37
    cmpl-float v6, v4, v5

    .line 38
    .line 39
    if-nez v6, :cond_2

    .line 40
    .line 41
    iget v6, v1, Landroid/graphics/PointF;->y:F

    .line 42
    .line 43
    cmpl-float v5, v6, v5

    .line 44
    .line 45
    if-eqz v5, :cond_3

    .line 46
    .line 47
    :cond_2
    invoke-static {v4}, Ljava/lang/Math;->signum(F)F

    .line 48
    .line 49
    .line 50
    move-result v4

    .line 51
    float-to-int v4, v4

    .line 52
    iget v1, v1, Landroid/graphics/PointF;->y:F

    .line 53
    .line 54
    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    float-to-int v1, v1

    .line 59
    invoke-virtual {v0, v4, v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->g0(II[I)V

    .line 60
    .line 61
    .line 62
    :cond_3
    const/4 v1, 0x0

    .line 63
    iput-boolean v1, p0, LO1/w;->d:Z

    .line 64
    .line 65
    iget-object v4, p0, LO1/w;->f:Landroid/view/View;

    .line 66
    .line 67
    iget-object v5, p0, LO1/w;->g:LO1/W;

    .line 68
    .line 69
    if-eqz v4, :cond_6

    .line 70
    .line 71
    iget-object v6, p0, LO1/w;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 72
    .line 73
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 74
    .line 75
    .line 76
    invoke-static {v4}, Landroidx/recyclerview/widget/RecyclerView;->L(Landroid/view/View;)LO1/c0;

    .line 77
    .line 78
    .line 79
    move-result-object v4

    .line 80
    if-eqz v4, :cond_4

    .line 81
    .line 82
    invoke-virtual {v4}, LO1/c0;->d()I

    .line 83
    .line 84
    .line 85
    move-result v2

    .line 86
    :cond_4
    iget v4, p0, LO1/w;->a:I

    .line 87
    .line 88
    if-ne v2, v4, :cond_5

    .line 89
    .line 90
    iget-object v2, p0, LO1/w;->f:Landroid/view/View;

    .line 91
    .line 92
    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView;->N0:LO1/Y;

    .line 93
    .line 94
    invoke-virtual {p0, v2, v3, v5}, LO1/w;->g(Landroid/view/View;LO1/Y;LO1/W;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v5, v0}, LO1/W;->a(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0}, LO1/w;->h()V

    .line 101
    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_5
    const-string v2, "RecyclerView"

    .line 105
    .line 106
    const-string v4, "Passed over target position while smooth scrolling."

    .line 107
    .line 108
    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    .line 110
    .line 111
    iput-object v3, p0, LO1/w;->f:Landroid/view/View;

    .line 112
    .line 113
    :cond_6
    :goto_0
    iget-boolean v2, p0, LO1/w;->e:Z

    .line 114
    .line 115
    if-eqz v2, :cond_c

    .line 116
    .line 117
    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView;->N0:LO1/Y;

    .line 118
    .line 119
    iget-object v2, p0, LO1/w;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 120
    .line 121
    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView;->T:LO1/L;

    .line 122
    .line 123
    invoke-virtual {v2}, LO1/L;->x()I

    .line 124
    .line 125
    .line 126
    move-result v2

    .line 127
    if-nez v2, :cond_7

    .line 128
    .line 129
    invoke-virtual {p0}, LO1/w;->h()V

    .line 130
    .line 131
    .line 132
    goto :goto_1

    .line 133
    :cond_7
    iget v2, p0, LO1/w;->o:I

    .line 134
    .line 135
    sub-int p1, v2, p1

    .line 136
    .line 137
    mul-int v2, v2, p1

    .line 138
    .line 139
    if-gtz v2, :cond_8

    .line 140
    .line 141
    const/4 p1, 0x0

    .line 142
    :cond_8
    iput p1, p0, LO1/w;->o:I

    .line 143
    .line 144
    iget v2, p0, LO1/w;->p:I

    .line 145
    .line 146
    sub-int p2, v2, p2

    .line 147
    .line 148
    mul-int v2, v2, p2

    .line 149
    .line 150
    if-gtz v2, :cond_9

    .line 151
    .line 152
    const/4 p2, 0x0

    .line 153
    :cond_9
    iput p2, p0, LO1/w;->p:I

    .line 154
    .line 155
    if-nez p1, :cond_a

    .line 156
    .line 157
    if-nez p2, :cond_a

    .line 158
    .line 159
    invoke-virtual {p0, v5}, LO1/w;->i(LO1/W;)V

    .line 160
    .line 161
    .line 162
    :cond_a
    :goto_1
    iget p1, v5, LO1/W;->d:I

    .line 163
    .line 164
    const/4 p2, 0x1

    .line 165
    if-ltz p1, :cond_b

    .line 166
    .line 167
    const/4 v1, 0x1

    .line 168
    :cond_b
    invoke-virtual {v5, v0}, LO1/W;->a(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 169
    .line 170
    .line 171
    if-eqz v1, :cond_c

    .line 172
    .line 173
    iget-boolean p1, p0, LO1/w;->e:Z

    .line 174
    .line 175
    if-eqz p1, :cond_c

    .line 176
    .line 177
    iput-boolean p2, p0, LO1/w;->d:Z

    .line 178
    .line 179
    iget-object p1, v0, Landroidx/recyclerview/widget/RecyclerView;->K0:LO1/b0;

    .line 180
    .line 181
    invoke-virtual {p1}, LO1/b0;->b()V

    .line 182
    .line 183
    .line 184
    :cond_c
    return-void
.end method

.method public f()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, LO1/w;->p:I

    .line 3
    .line 4
    iput v0, p0, LO1/w;->o:I

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, LO1/w;->k:Landroid/graphics/PointF;

    .line 8
    .line 9
    return-void
.end method

.method public g(Landroid/view/View;LO1/Y;LO1/W;)V
    .locals 9

    .line 1
    iget-object p2, p0, LO1/w;->k:Landroid/graphics/PointF;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    const/4 v1, -0x1

    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x0

    .line 7
    if-eqz p2, :cond_2

    .line 8
    .line 9
    iget p2, p2, Landroid/graphics/PointF;->x:F

    .line 10
    .line 11
    cmpl-float p2, p2, v2

    .line 12
    .line 13
    if-nez p2, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    if-lez p2, :cond_1

    .line 17
    .line 18
    const/4 p2, 0x1

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    const/4 p2, -0x1

    .line 21
    goto :goto_1

    .line 22
    :cond_2
    :goto_0
    const/4 p2, 0x0

    .line 23
    :goto_1
    iget-object v4, p0, LO1/w;->c:LO1/L;

    .line 24
    .line 25
    if-eqz v4, :cond_4

    .line 26
    .line 27
    invoke-virtual {v4}, LO1/L;->e()Z

    .line 28
    .line 29
    .line 30
    move-result v5

    .line 31
    if-nez v5, :cond_3

    .line 32
    .line 33
    goto :goto_2

    .line 34
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 35
    .line 36
    .line 37
    move-result-object v5

    .line 38
    check-cast v5, LO1/M;

    .line 39
    .line 40
    invoke-virtual {v4, p1}, LO1/L;->C(Landroid/view/View;)I

    .line 41
    .line 42
    .line 43
    move-result v6

    .line 44
    iget v7, v5, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 45
    .line 46
    sub-int/2addr v6, v7

    .line 47
    invoke-virtual {v4, p1}, LO1/L;->F(Landroid/view/View;)I

    .line 48
    .line 49
    .line 50
    move-result v7

    .line 51
    iget v5, v5, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 52
    .line 53
    add-int/2addr v7, v5

    .line 54
    invoke-virtual {v4}, LO1/L;->J()I

    .line 55
    .line 56
    .line 57
    move-result v5

    .line 58
    iget v8, v4, LO1/L;->n:I

    .line 59
    .line 60
    invoke-virtual {v4}, LO1/L;->K()I

    .line 61
    .line 62
    .line 63
    move-result v4

    .line 64
    sub-int/2addr v8, v4

    .line 65
    invoke-static {v6, v7, v5, v8, p2}, LO1/w;->a(IIIII)I

    .line 66
    .line 67
    .line 68
    move-result p2

    .line 69
    goto :goto_3

    .line 70
    :cond_4
    :goto_2
    const/4 p2, 0x0

    .line 71
    :goto_3
    iget-object v4, p0, LO1/w;->k:Landroid/graphics/PointF;

    .line 72
    .line 73
    if-eqz v4, :cond_6

    .line 74
    .line 75
    iget v4, v4, Landroid/graphics/PointF;->y:F

    .line 76
    .line 77
    cmpl-float v2, v4, v2

    .line 78
    .line 79
    if-nez v2, :cond_5

    .line 80
    .line 81
    goto :goto_4

    .line 82
    :cond_5
    if-lez v2, :cond_7

    .line 83
    .line 84
    const/4 v1, 0x1

    .line 85
    goto :goto_5

    .line 86
    :cond_6
    :goto_4
    const/4 v1, 0x0

    .line 87
    :cond_7
    :goto_5
    iget-object v2, p0, LO1/w;->c:LO1/L;

    .line 88
    .line 89
    if-eqz v2, :cond_9

    .line 90
    .line 91
    invoke-virtual {v2}, LO1/L;->f()Z

    .line 92
    .line 93
    .line 94
    move-result v4

    .line 95
    if-nez v4, :cond_8

    .line 96
    .line 97
    goto :goto_6

    .line 98
    :cond_8
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 99
    .line 100
    .line 101
    move-result-object v3

    .line 102
    check-cast v3, LO1/M;

    .line 103
    .line 104
    invoke-virtual {v2, p1}, LO1/L;->G(Landroid/view/View;)I

    .line 105
    .line 106
    .line 107
    move-result v4

    .line 108
    iget v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 109
    .line 110
    sub-int/2addr v4, v5

    .line 111
    invoke-virtual {v2, p1}, LO1/L;->A(Landroid/view/View;)I

    .line 112
    .line 113
    .line 114
    move-result p1

    .line 115
    iget v3, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 116
    .line 117
    add-int/2addr p1, v3

    .line 118
    invoke-virtual {v2}, LO1/L;->L()I

    .line 119
    .line 120
    .line 121
    move-result v3

    .line 122
    iget v5, v2, LO1/L;->o:I

    .line 123
    .line 124
    invoke-virtual {v2}, LO1/L;->I()I

    .line 125
    .line 126
    .line 127
    move-result v2

    .line 128
    sub-int/2addr v5, v2

    .line 129
    invoke-static {v4, p1, v3, v5, v1}, LO1/w;->a(IIIII)I

    .line 130
    .line 131
    .line 132
    move-result v3

    .line 133
    :cond_9
    :goto_6
    mul-int p1, p2, p2

    .line 134
    .line 135
    mul-int v1, v3, v3

    .line 136
    .line 137
    add-int/2addr v1, p1

    .line 138
    int-to-double v1, v1

    .line 139
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    .line 140
    .line 141
    .line 142
    move-result-wide v1

    .line 143
    double-to-int p1, v1

    .line 144
    invoke-virtual {p0, p1}, LO1/w;->c(I)I

    .line 145
    .line 146
    .line 147
    move-result p1

    .line 148
    int-to-double v1, p1

    .line 149
    const-wide v4, 0x3fd57a786c22680aL    # 0.3356

    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    div-double/2addr v1, v4

    .line 155
    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    .line 156
    .line 157
    .line 158
    move-result-wide v1

    .line 159
    double-to-int p1, v1

    .line 160
    if-lez p1, :cond_a

    .line 161
    .line 162
    neg-int p2, p2

    .line 163
    neg-int v1, v3

    .line 164
    iget-object v2, p0, LO1/w;->j:Landroid/view/animation/DecelerateInterpolator;

    .line 165
    .line 166
    iput p2, p3, LO1/W;->a:I

    .line 167
    .line 168
    iput v1, p3, LO1/W;->b:I

    .line 169
    .line 170
    iput p1, p3, LO1/W;->c:I

    .line 171
    .line 172
    iput-object v2, p3, LO1/W;->e:Landroid/view/animation/Interpolator;

    .line 173
    .line 174
    iput-boolean v0, p3, LO1/W;->f:Z

    .line 175
    .line 176
    :cond_a
    return-void
.end method

.method public final h()V
    .locals 3

    .line 1
    iget-boolean v0, p0, LO1/w;->e:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, LO1/w;->e:Z

    .line 8
    .line 9
    invoke-virtual {p0}, LO1/w;->f()V

    .line 10
    .line 11
    .line 12
    iget-object v1, p0, LO1/w;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 13
    .line 14
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->N0:LO1/Y;

    .line 15
    .line 16
    const/4 v2, -0x1

    .line 17
    iput v2, v1, LO1/Y;->a:I

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    iput-object v1, p0, LO1/w;->f:Landroid/view/View;

    .line 21
    .line 22
    iput v2, p0, LO1/w;->a:I

    .line 23
    .line 24
    iput-boolean v0, p0, LO1/w;->d:Z

    .line 25
    .line 26
    iget-object v0, p0, LO1/w;->c:LO1/L;

    .line 27
    .line 28
    iget-object v2, v0, LO1/L;->e:LO1/w;

    .line 29
    .line 30
    if-ne v2, p0, :cond_1

    .line 31
    .line 32
    iput-object v1, v0, LO1/L;->e:LO1/w;

    .line 33
    .line 34
    :cond_1
    iput-object v1, p0, LO1/w;->c:LO1/L;

    .line 35
    .line 36
    iput-object v1, p0, LO1/w;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 37
    .line 38
    :goto_0
    return-void
.end method

.method public i(LO1/W;)V
    .locals 4

    .line 1
    iget v0, p0, LO1/w;->a:I

    .line 2
    .line 3
    invoke-virtual {p0, v0}, LO1/w;->d(I)Landroid/graphics/PointF;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget v1, v0, Landroid/graphics/PointF;->x:F

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    cmpl-float v3, v1, v2

    .line 13
    .line 14
    if-nez v3, :cond_0

    .line 15
    .line 16
    iget v3, v0, Landroid/graphics/PointF;->y:F

    .line 17
    .line 18
    cmpl-float v2, v3, v2

    .line 19
    .line 20
    if-nez v2, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    mul-float v1, v1, v1

    .line 24
    .line 25
    iget v2, v0, Landroid/graphics/PointF;->y:F

    .line 26
    .line 27
    mul-float v2, v2, v2

    .line 28
    .line 29
    add-float/2addr v2, v1

    .line 30
    float-to-double v1, v2

    .line 31
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    .line 32
    .line 33
    .line 34
    move-result-wide v1

    .line 35
    double-to-float v1, v1

    .line 36
    iget v2, v0, Landroid/graphics/PointF;->x:F

    .line 37
    .line 38
    div-float/2addr v2, v1

    .line 39
    iput v2, v0, Landroid/graphics/PointF;->x:F

    .line 40
    .line 41
    iget v3, v0, Landroid/graphics/PointF;->y:F

    .line 42
    .line 43
    div-float/2addr v3, v1

    .line 44
    iput v3, v0, Landroid/graphics/PointF;->y:F

    .line 45
    .line 46
    iput-object v0, p0, LO1/w;->k:Landroid/graphics/PointF;

    .line 47
    .line 48
    const v0, 0x461c4000    # 10000.0f

    .line 49
    .line 50
    .line 51
    mul-float v2, v2, v0

    .line 52
    .line 53
    float-to-int v1, v2

    .line 54
    iput v1, p0, LO1/w;->o:I

    .line 55
    .line 56
    mul-float v3, v3, v0

    .line 57
    .line 58
    float-to-int v0, v3

    .line 59
    iput v0, p0, LO1/w;->p:I

    .line 60
    .line 61
    const/16 v0, 0x2710

    .line 62
    .line 63
    invoke-virtual {p0, v0}, LO1/w;->c(I)I

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    iget v1, p0, LO1/w;->o:I

    .line 68
    .line 69
    int-to-float v1, v1

    .line 70
    const v2, 0x3f99999a    # 1.2f

    .line 71
    .line 72
    .line 73
    mul-float v1, v1, v2

    .line 74
    .line 75
    float-to-int v1, v1

    .line 76
    iget v3, p0, LO1/w;->p:I

    .line 77
    .line 78
    int-to-float v3, v3

    .line 79
    mul-float v3, v3, v2

    .line 80
    .line 81
    float-to-int v3, v3

    .line 82
    int-to-float v0, v0

    .line 83
    mul-float v0, v0, v2

    .line 84
    .line 85
    float-to-int v0, v0

    .line 86
    iget-object v2, p0, LO1/w;->i:Landroid/view/animation/LinearInterpolator;

    .line 87
    .line 88
    iput v1, p1, LO1/W;->a:I

    .line 89
    .line 90
    iput v3, p1, LO1/W;->b:I

    .line 91
    .line 92
    iput v0, p1, LO1/W;->c:I

    .line 93
    .line 94
    iput-object v2, p1, LO1/W;->e:Landroid/view/animation/Interpolator;

    .line 95
    .line 96
    const/4 v0, 0x1

    .line 97
    iput-boolean v0, p1, LO1/W;->f:Z

    .line 98
    .line 99
    return-void

    .line 100
    :cond_1
    :goto_0
    iget v0, p0, LO1/w;->a:I

    .line 101
    .line 102
    iput v0, p1, LO1/W;->d:I

    .line 103
    .line 104
    invoke-virtual {p0}, LO1/w;->h()V

    .line 105
    .line 106
    .line 107
    return-void
.end method
