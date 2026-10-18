.class public final Ls4/e;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field public G:I

.field public final H:Landroid/graphics/Paint;

.field public final I:Landroid/graphics/drawable/GradientDrawable;

.field public J:I

.field public K:F

.field public L:I

.field public M:I

.field public N:I

.field public O:Landroid/animation/ValueAnimator;

.field public final synthetic P:Lcom/google/android/material/tabs/TabLayout;


# direct methods
.method public constructor <init>(Lcom/google/android/material/tabs/TabLayout;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ls4/e;->P:Lcom/google/android/material/tabs/TabLayout;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    const/4 p1, -0x1

    .line 7
    iput p1, p0, Ls4/e;->J:I

    .line 8
    .line 9
    iput p1, p0, Ls4/e;->L:I

    .line 10
    .line 11
    iput p1, p0, Ls4/e;->M:I

    .line 12
    .line 13
    iput p1, p0, Ls4/e;->N:I

    .line 14
    .line 15
    const/4 p1, 0x0

    .line 16
    invoke-virtual {p0, p1}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 17
    .line 18
    .line 19
    new-instance p1, Landroid/graphics/Paint;

    .line 20
    .line 21
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object p1, p0, Ls4/e;->H:Landroid/graphics/Paint;

    .line 25
    .line 26
    new-instance p1, Landroid/graphics/drawable/GradientDrawable;

    .line 27
    .line 28
    invoke-direct {p1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 29
    .line 30
    .line 31
    iput-object p1, p0, Ls4/e;->I:Landroid/graphics/drawable/GradientDrawable;

    .line 32
    .line 33
    return-void
.end method


# virtual methods
.method public final a(II)V
    .locals 9

    .line 1
    iget-object v0, p0, Ls4/e;->O:Landroid/animation/ValueAnimator;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Ls4/e;->O:Landroid/animation/ValueAnimator;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    invoke-virtual {p0}, Ls4/e;->c()V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    iget-object v3, p0, Ls4/e;->P:Lcom/google/android/material/tabs/TabLayout;

    .line 35
    .line 36
    iget-boolean v4, v3, Lcom/google/android/material/tabs/TabLayout;->k0:Z

    .line 37
    .line 38
    if-nez v4, :cond_2

    .line 39
    .line 40
    instance-of v4, v0, Ls4/h;

    .line 41
    .line 42
    if-eqz v4, :cond_2

    .line 43
    .line 44
    check-cast v0, Ls4/h;

    .line 45
    .line 46
    iget-object v1, v3, Lcom/google/android/material/tabs/TabLayout;->I:Landroid/graphics/RectF;

    .line 47
    .line 48
    invoke-virtual {p0, v0, v1}, Ls4/e;->b(Ls4/h;Landroid/graphics/RectF;)V

    .line 49
    .line 50
    .line 51
    iget v0, v1, Landroid/graphics/RectF;->left:F

    .line 52
    .line 53
    float-to-int v0, v0

    .line 54
    iget v1, v1, Landroid/graphics/RectF;->right:F

    .line 55
    .line 56
    float-to-int v2, v1

    .line 57
    move v6, v0

    .line 58
    :goto_0
    move v8, v2

    .line 59
    goto :goto_1

    .line 60
    :cond_2
    move v6, v1

    .line 61
    goto :goto_0

    .line 62
    :goto_1
    iget v5, p0, Ls4/e;->M:I

    .line 63
    .line 64
    iget v7, p0, Ls4/e;->N:I

    .line 65
    .line 66
    if-ne v5, v6, :cond_3

    .line 67
    .line 68
    if-eq v7, v8, :cond_4

    .line 69
    .line 70
    :cond_3
    new-instance v0, Landroid/animation/ValueAnimator;

    .line 71
    .line 72
    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    .line 73
    .line 74
    .line 75
    iput-object v0, p0, Ls4/e;->O:Landroid/animation/ValueAnimator;

    .line 76
    .line 77
    sget-object v1, Li4/a;->a:La0/b;

    .line 78
    .line 79
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 80
    .line 81
    .line 82
    int-to-long v1, p2

    .line 83
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 84
    .line 85
    .line 86
    const/4 p2, 0x2

    .line 87
    new-array p2, p2, [F

    .line 88
    .line 89
    fill-array-data p2, :array_0

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0, p2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 93
    .line 94
    .line 95
    new-instance p2, Ls4/c;

    .line 96
    .line 97
    move-object v3, p2

    .line 98
    move-object v4, p0

    .line 99
    invoke-direct/range {v3 .. v8}, Ls4/c;-><init>(Ls4/e;IIII)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 103
    .line 104
    .line 105
    new-instance p2, Ls4/d;

    .line 106
    .line 107
    invoke-direct {p2, p0, p1}, Ls4/d;-><init>(Ls4/e;I)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 114
    .line 115
    .line 116
    :cond_4
    return-void

    .line 117
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final b(Ls4/h;Landroid/graphics/RectF;)V
    .locals 10

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x3

    .line 4
    const/4 v3, 0x1

    .line 5
    iget-object v4, p1, Ls4/h;->H:Landroid/widget/TextView;

    .line 6
    .line 7
    iget-object v5, p1, Ls4/h;->I:Landroid/widget/ImageView;

    .line 8
    .line 9
    iget-object v6, p1, Ls4/h;->J:Landroid/view/View;

    .line 10
    .line 11
    new-array v7, v2, [Landroid/view/View;

    .line 12
    .line 13
    aput-object v4, v7, v1

    .line 14
    .line 15
    aput-object v5, v7, v3

    .line 16
    .line 17
    aput-object v6, v7, v0

    .line 18
    .line 19
    const/4 v4, 0x0

    .line 20
    const/4 v5, 0x0

    .line 21
    const/4 v6, 0x0

    .line 22
    :goto_0
    if-ge v1, v2, :cond_3

    .line 23
    .line 24
    aget-object v8, v7, v1

    .line 25
    .line 26
    if-eqz v8, :cond_2

    .line 27
    .line 28
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    .line 29
    .line 30
    .line 31
    move-result v9

    .line 32
    if-nez v9, :cond_2

    .line 33
    .line 34
    if-eqz v6, :cond_0

    .line 35
    .line 36
    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    .line 37
    .line 38
    .line 39
    move-result v9

    .line 40
    invoke-static {v5, v9}, Ljava/lang/Math;->min(II)I

    .line 41
    .line 42
    .line 43
    move-result v5

    .line 44
    goto :goto_1

    .line 45
    :cond_0
    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    .line 46
    .line 47
    .line 48
    move-result v5

    .line 49
    :goto_1
    if-eqz v6, :cond_1

    .line 50
    .line 51
    invoke-virtual {v8}, Landroid/view/View;->getRight()I

    .line 52
    .line 53
    .line 54
    move-result v6

    .line 55
    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    .line 56
    .line 57
    .line 58
    move-result v4

    .line 59
    goto :goto_2

    .line 60
    :cond_1
    invoke-virtual {v8}, Landroid/view/View;->getRight()I

    .line 61
    .line 62
    .line 63
    move-result v4

    .line 64
    :goto_2
    const/4 v6, 0x1

    .line 65
    :cond_2
    add-int/2addr v1, v3

    .line 66
    goto :goto_0

    .line 67
    :cond_3
    sub-int/2addr v4, v5

    .line 68
    iget-object v1, p0, Ls4/e;->P:Lcom/google/android/material/tabs/TabLayout;

    .line 69
    .line 70
    const/16 v2, 0x18

    .line 71
    .line 72
    invoke-virtual {v1, v2}, Lcom/google/android/material/tabs/TabLayout;->d(I)I

    .line 73
    .line 74
    .line 75
    move-result v3

    .line 76
    if-ge v4, v3, :cond_4

    .line 77
    .line 78
    invoke-virtual {v1, v2}, Lcom/google/android/material/tabs/TabLayout;->d(I)I

    .line 79
    .line 80
    .line 81
    move-result v4

    .line 82
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    .line 87
    .line 88
    .line 89
    move-result p1

    .line 90
    add-int/2addr p1, v1

    .line 91
    div-int/2addr p1, v0

    .line 92
    div-int/2addr v4, v0

    .line 93
    sub-int v0, p1, v4

    .line 94
    .line 95
    add-int/2addr p1, v4

    .line 96
    int-to-float v0, v0

    .line 97
    int-to-float p1, p1

    .line 98
    const/4 v1, 0x0

    .line 99
    invoke-virtual {p2, v0, v1, p1, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 100
    .line 101
    .line 102
    return-void
.end method

.method public final c()V
    .locals 7

    .line 1
    iget v0, p0, Ls4/e;->J:I

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-lez v1, :cond_2

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    iget-object v3, p0, Ls4/e;->P:Lcom/google/android/material/tabs/TabLayout;

    .line 24
    .line 25
    iget-boolean v4, v3, Lcom/google/android/material/tabs/TabLayout;->k0:Z

    .line 26
    .line 27
    iget-object v5, v3, Lcom/google/android/material/tabs/TabLayout;->I:Landroid/graphics/RectF;

    .line 28
    .line 29
    if-nez v4, :cond_0

    .line 30
    .line 31
    instance-of v4, v0, Ls4/h;

    .line 32
    .line 33
    if-eqz v4, :cond_0

    .line 34
    .line 35
    check-cast v0, Ls4/h;

    .line 36
    .line 37
    invoke-virtual {p0, v0, v5}, Ls4/e;->b(Ls4/h;Landroid/graphics/RectF;)V

    .line 38
    .line 39
    .line 40
    iget v0, v5, Landroid/graphics/RectF;->left:F

    .line 41
    .line 42
    float-to-int v1, v0

    .line 43
    iget v0, v5, Landroid/graphics/RectF;->right:F

    .line 44
    .line 45
    float-to-int v2, v0

    .line 46
    :cond_0
    iget v0, p0, Ls4/e;->K:F

    .line 47
    .line 48
    const/4 v4, 0x0

    .line 49
    cmpl-float v0, v0, v4

    .line 50
    .line 51
    if-lez v0, :cond_3

    .line 52
    .line 53
    iget v0, p0, Ls4/e;->J:I

    .line 54
    .line 55
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 56
    .line 57
    .line 58
    move-result v4

    .line 59
    add-int/lit8 v4, v4, -0x1

    .line 60
    .line 61
    if-ge v0, v4, :cond_3

    .line 62
    .line 63
    iget v0, p0, Ls4/e;->J:I

    .line 64
    .line 65
    add-int/lit8 v0, v0, 0x1

    .line 66
    .line 67
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    .line 72
    .line 73
    .line 74
    move-result v4

    .line 75
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    .line 76
    .line 77
    .line 78
    move-result v6

    .line 79
    iget-boolean v3, v3, Lcom/google/android/material/tabs/TabLayout;->k0:Z

    .line 80
    .line 81
    if-nez v3, :cond_1

    .line 82
    .line 83
    instance-of v3, v0, Ls4/h;

    .line 84
    .line 85
    if-eqz v3, :cond_1

    .line 86
    .line 87
    check-cast v0, Ls4/h;

    .line 88
    .line 89
    invoke-virtual {p0, v0, v5}, Ls4/e;->b(Ls4/h;Landroid/graphics/RectF;)V

    .line 90
    .line 91
    .line 92
    iget v0, v5, Landroid/graphics/RectF;->left:F

    .line 93
    .line 94
    float-to-int v4, v0

    .line 95
    iget v0, v5, Landroid/graphics/RectF;->right:F

    .line 96
    .line 97
    float-to-int v6, v0

    .line 98
    :cond_1
    iget v0, p0, Ls4/e;->K:F

    .line 99
    .line 100
    int-to-float v3, v4

    .line 101
    mul-float v3, v3, v0

    .line 102
    .line 103
    const/high16 v4, 0x3f800000    # 1.0f

    .line 104
    .line 105
    sub-float/2addr v4, v0

    .line 106
    int-to-float v1, v1

    .line 107
    mul-float v1, v1, v4

    .line 108
    .line 109
    add-float/2addr v1, v3

    .line 110
    float-to-int v1, v1

    .line 111
    int-to-float v3, v6

    .line 112
    mul-float v0, v0, v3

    .line 113
    .line 114
    int-to-float v2, v2

    .line 115
    mul-float v4, v4, v2

    .line 116
    .line 117
    add-float/2addr v4, v0

    .line 118
    float-to-int v2, v4

    .line 119
    goto :goto_0

    .line 120
    :cond_2
    const/4 v1, -0x1

    .line 121
    const/4 v2, -0x1

    .line 122
    :cond_3
    :goto_0
    iget v0, p0, Ls4/e;->M:I

    .line 123
    .line 124
    if-ne v1, v0, :cond_4

    .line 125
    .line 126
    iget v0, p0, Ls4/e;->N:I

    .line 127
    .line 128
    if-eq v2, v0, :cond_5

    .line 129
    .line 130
    :cond_4
    iput v1, p0, Ls4/e;->M:I

    .line 131
    .line 132
    iput v2, p0, Ls4/e;->N:I

    .line 133
    .line 134
    sget-object v0, LN/N;->a:Ljava/util/WeakHashMap;

    .line 135
    .line 136
    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    .line 137
    .line 138
    .line 139
    :cond_5
    return-void
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 1
    iget-object v0, p0, Ls4/e;->P:Lcom/google/android/material/tabs/TabLayout;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/google/android/material/tabs/TabLayout;->S:Landroid/graphics/drawable/Drawable;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v1, 0x0

    .line 14
    :goto_0
    iget v3, p0, Ls4/e;->G:I

    .line 15
    .line 16
    if-ltz v3, :cond_1

    .line 17
    .line 18
    move v1, v3

    .line 19
    :cond_1
    iget v3, v0, Lcom/google/android/material/tabs/TabLayout;->h0:I

    .line 20
    .line 21
    if-eqz v3, :cond_4

    .line 22
    .line 23
    const/4 v4, 0x1

    .line 24
    const/4 v5, 0x2

    .line 25
    if-eq v3, v4, :cond_3

    .line 26
    .line 27
    if-eq v3, v5, :cond_5

    .line 28
    .line 29
    const/4 v1, 0x3

    .line 30
    if-eq v3, v1, :cond_2

    .line 31
    .line 32
    const/4 v1, 0x0

    .line 33
    goto :goto_1

    .line 34
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    goto :goto_1

    .line 39
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    sub-int/2addr v2, v1

    .line 44
    div-int/2addr v2, v5

    .line 45
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    add-int/2addr v3, v1

    .line 50
    div-int/lit8 v1, v3, 0x2

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    sub-int/2addr v2, v1

    .line 58
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    :cond_5
    :goto_1
    iget v3, p0, Ls4/e;->M:I

    .line 63
    .line 64
    if-ltz v3, :cond_9

    .line 65
    .line 66
    iget v4, p0, Ls4/e;->N:I

    .line 67
    .line 68
    if-le v4, v3, :cond_9

    .line 69
    .line 70
    iget-object v0, v0, Lcom/google/android/material/tabs/TabLayout;->S:Landroid/graphics/drawable/Drawable;

    .line 71
    .line 72
    if-eqz v0, :cond_6

    .line 73
    .line 74
    goto :goto_2

    .line 75
    :cond_6
    iget-object v0, p0, Ls4/e;->I:Landroid/graphics/drawable/GradientDrawable;

    .line 76
    .line 77
    :goto_2
    invoke-static {v0}, Ln0/c;->q(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    iget v3, p0, Ls4/e;->M:I

    .line 82
    .line 83
    iget v4, p0, Ls4/e;->N:I

    .line 84
    .line 85
    invoke-virtual {v0, v3, v2, v4, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 86
    .line 87
    .line 88
    iget-object v1, p0, Ls4/e;->H:Landroid/graphics/Paint;

    .line 89
    .line 90
    if-eqz v1, :cond_8

    .line 91
    .line 92
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 93
    .line 94
    const/16 v3, 0x15

    .line 95
    .line 96
    if-ne v2, v3, :cond_7

    .line 97
    .line 98
    invoke-virtual {v1}, Landroid/graphics/Paint;->getColor()I

    .line 99
    .line 100
    .line 101
    move-result v1

    .line 102
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 103
    .line 104
    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 105
    .line 106
    .line 107
    goto :goto_3

    .line 108
    :cond_7
    invoke-virtual {v1}, Landroid/graphics/Paint;->getColor()I

    .line 109
    .line 110
    .line 111
    move-result v1

    .line 112
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 113
    .line 114
    .line 115
    :cond_8
    :goto_3
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 116
    .line 117
    .line 118
    :cond_9
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->draw(Landroid/graphics/Canvas;)V

    .line 119
    .line 120
    .line 121
    return-void
.end method

.method public final onLayout(ZIIII)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Ls4/e;->O:Landroid/animation/ValueAnimator;

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    iget-object p1, p0, Ls4/e;->O:Landroid/animation/ValueAnimator;

    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 17
    .line 18
    .line 19
    iget-object p1, p0, Ls4/e;->O:Landroid/animation/ValueAnimator;

    .line 20
    .line 21
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getDuration()J

    .line 22
    .line 23
    .line 24
    move-result-wide p1

    .line 25
    iget p3, p0, Ls4/e;->J:I

    .line 26
    .line 27
    iget-object p4, p0, Ls4/e;->O:Landroid/animation/ValueAnimator;

    .line 28
    .line 29
    invoke-virtual {p4}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    .line 30
    .line 31
    .line 32
    move-result p4

    .line 33
    const/high16 p5, 0x3f800000    # 1.0f

    .line 34
    .line 35
    sub-float/2addr p5, p4

    .line 36
    long-to-float p1, p1

    .line 37
    mul-float p5, p5, p1

    .line 38
    .line 39
    invoke-static {p5}, Ljava/lang/Math;->round(F)I

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    invoke-virtual {p0, p3, p1}, Ls4/e;->a(II)V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    invoke-virtual {p0}, Ls4/e;->c()V

    .line 48
    .line 49
    .line 50
    :goto_0
    return-void
.end method

.method public final onMeasure(II)V
    .locals 8

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/high16 v1, 0x40000000    # 2.0f

    .line 9
    .line 10
    if-eq v0, v1, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object v0, p0, Ls4/e;->P:Lcom/google/android/material/tabs/TabLayout;

    .line 14
    .line 15
    iget v1, v0, Lcom/google/android/material/tabs/TabLayout;->i0:I

    .line 16
    .line 17
    const/4 v2, 0x1

    .line 18
    if-ne v1, v2, :cond_8

    .line 19
    .line 20
    iget v1, v0, Lcom/google/android/material/tabs/TabLayout;->f0:I

    .line 21
    .line 22
    if-ne v1, v2, :cond_8

    .line 23
    .line 24
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    const/4 v3, 0x0

    .line 29
    const/4 v4, 0x0

    .line 30
    const/4 v5, 0x0

    .line 31
    :goto_0
    if-ge v4, v1, :cond_2

    .line 32
    .line 33
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 34
    .line 35
    .line 36
    move-result-object v6

    .line 37
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    .line 38
    .line 39
    .line 40
    move-result v7

    .line 41
    if-nez v7, :cond_1

    .line 42
    .line 43
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    .line 44
    .line 45
    .line 46
    move-result v6

    .line 47
    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    .line 48
    .line 49
    .line 50
    move-result v5

    .line 51
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_2
    if-gtz v5, :cond_3

    .line 55
    .line 56
    return-void

    .line 57
    :cond_3
    const/16 v4, 0x10

    .line 58
    .line 59
    invoke-virtual {v0, v4}, Lcom/google/android/material/tabs/TabLayout;->d(I)I

    .line 60
    .line 61
    .line 62
    move-result v4

    .line 63
    mul-int v6, v5, v1

    .line 64
    .line 65
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 66
    .line 67
    .line 68
    move-result v7

    .line 69
    mul-int/lit8 v4, v4, 0x2

    .line 70
    .line 71
    sub-int/2addr v7, v4

    .line 72
    if-gt v6, v7, :cond_7

    .line 73
    .line 74
    const/4 v0, 0x0

    .line 75
    :goto_1
    if-ge v3, v1, :cond_6

    .line 76
    .line 77
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 78
    .line 79
    .line 80
    move-result-object v4

    .line 81
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 82
    .line 83
    .line 84
    move-result-object v4

    .line 85
    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 86
    .line 87
    iget v6, v4, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 88
    .line 89
    const/4 v7, 0x0

    .line 90
    if-ne v6, v5, :cond_4

    .line 91
    .line 92
    iget v6, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 93
    .line 94
    cmpl-float v6, v6, v7

    .line 95
    .line 96
    if-eqz v6, :cond_5

    .line 97
    .line 98
    :cond_4
    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 99
    .line 100
    iput v7, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 101
    .line 102
    const/4 v0, 0x1

    .line 103
    :cond_5
    add-int/lit8 v3, v3, 0x1

    .line 104
    .line 105
    goto :goto_1

    .line 106
    :cond_6
    if-eqz v0, :cond_8

    .line 107
    .line 108
    goto :goto_2

    .line 109
    :cond_7
    iput v3, v0, Lcom/google/android/material/tabs/TabLayout;->f0:I

    .line 110
    .line 111
    invoke-virtual {v0, v3}, Lcom/google/android/material/tabs/TabLayout;->k(Z)V

    .line 112
    .line 113
    .line 114
    :goto_2
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 115
    .line 116
    .line 117
    :cond_8
    return-void
.end method

.method public final onRtlPropertiesChanged(I)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onRtlPropertiesChanged(I)V

    .line 2
    .line 3
    .line 4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 5
    .line 6
    const/16 v1, 0x17

    .line 7
    .line 8
    if-ge v0, v1, :cond_0

    .line 9
    .line 10
    iget v0, p0, Ls4/e;->L:I

    .line 11
    .line 12
    if-eq v0, p1, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 15
    .line 16
    .line 17
    iput p1, p0, Ls4/e;->L:I

    .line 18
    .line 19
    :cond_0
    return-void
.end method
