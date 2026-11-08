.class public abstract Lj4/b;
.super Lj4/c;
.source "SourceFile"


# instance fields
.field public c:Z

.field public d:I

.field public e:I

.field public f:I

.field public g:Landroid/view/VelocityTracker;


# virtual methods
.method public final e(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    iget v0, p0, Lj4/b;->f:I

    .line 2
    .line 3
    if-gez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    iput v0, p0, Lj4/b;->f:I

    .line 18
    .line 19
    :cond_0
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    const/4 v1, 0x2

    .line 24
    const/4 v2, 0x1

    .line 25
    if-ne v0, v1, :cond_1

    .line 26
    .line 27
    iget-boolean v0, p0, Lj4/b;->c:Z

    .line 28
    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    return v2

    .line 32
    :cond_1
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    const/4 v3, 0x0

    .line 37
    if-eqz v0, :cond_6

    .line 38
    .line 39
    const/4 p1, -0x1

    .line 40
    if-eq v0, v2, :cond_5

    .line 41
    .line 42
    if-eq v0, v1, :cond_2

    .line 43
    .line 44
    const/4 p2, 0x3

    .line 45
    if-eq v0, p2, :cond_5

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_2
    iget p2, p0, Lj4/b;->d:I

    .line 49
    .line 50
    if-ne p2, p1, :cond_3

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_3
    invoke-virtual {p3, p2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 54
    .line 55
    .line 56
    move-result p2

    .line 57
    if-ne p2, p1, :cond_4

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_4
    invoke-virtual {p3, p2}, Landroid/view/MotionEvent;->getY(I)F

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    float-to-int p1, p1

    .line 65
    iget p2, p0, Lj4/b;->e:I

    .line 66
    .line 67
    sub-int p2, p1, p2

    .line 68
    .line 69
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    .line 70
    .line 71
    .line 72
    move-result p2

    .line 73
    iget v0, p0, Lj4/b;->f:I

    .line 74
    .line 75
    if-le p2, v0, :cond_7

    .line 76
    .line 77
    iput-boolean v2, p0, Lj4/b;->c:Z

    .line 78
    .line 79
    iput p1, p0, Lj4/b;->e:I

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_5
    iput-boolean v3, p0, Lj4/b;->c:Z

    .line 83
    .line 84
    iput p1, p0, Lj4/b;->d:I

    .line 85
    .line 86
    iget-object p1, p0, Lj4/b;->g:Landroid/view/VelocityTracker;

    .line 87
    .line 88
    if-eqz p1, :cond_7

    .line 89
    .line 90
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    .line 91
    .line 92
    .line 93
    const/4 p1, 0x0

    .line 94
    iput-object p1, p0, Lj4/b;->g:Landroid/view/VelocityTracker;

    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_6
    iput-boolean v3, p0, Lj4/b;->c:Z

    .line 98
    .line 99
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    float-to-int v0, v0

    .line 104
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    .line 105
    .line 106
    .line 107
    move-result v1

    .line 108
    float-to-int v1, v1

    .line 109
    invoke-virtual {p0, p2}, Lj4/b;->t(Landroid/view/View;)Z

    .line 110
    .line 111
    .line 112
    move-result v2

    .line 113
    if-eqz v2, :cond_7

    .line 114
    .line 115
    invoke-virtual {p1, p2, v0, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->o(Landroid/view/View;II)Z

    .line 116
    .line 117
    .line 118
    move-result p1

    .line 119
    if-eqz p1, :cond_7

    .line 120
    .line 121
    iput v1, p0, Lj4/b;->e:I

    .line 122
    .line 123
    invoke-virtual {p3, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 124
    .line 125
    .line 126
    move-result p1

    .line 127
    iput p1, p0, Lj4/b;->d:I

    .line 128
    .line 129
    iget-object p1, p0, Lj4/b;->g:Landroid/view/VelocityTracker;

    .line 130
    .line 131
    if-nez p1, :cond_7

    .line 132
    .line 133
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    iput-object p1, p0, Lj4/b;->g:Landroid/view/VelocityTracker;

    .line 138
    .line 139
    :cond_7
    :goto_0
    iget-object p1, p0, Lj4/b;->g:Landroid/view/VelocityTracker;

    .line 140
    .line 141
    if-eqz p1, :cond_8

    .line 142
    .line 143
    invoke-virtual {p1, p3}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 144
    .line 145
    .line 146
    :cond_8
    iget-boolean p1, p0, Lj4/b;->c:Z

    .line 147
    .line 148
    return p1
.end method

.method public final r(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1
    iget v0, p0, Lj4/b;->f:I

    .line 2
    .line 3
    if-gez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    iput v0, p0, Lj4/b;->f:I

    .line 18
    .line 19
    :cond_0
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    const/4 v1, 0x1

    .line 24
    const/4 v2, 0x0

    .line 25
    if-eqz v0, :cond_8

    .line 26
    .line 27
    const/4 p1, -0x1

    .line 28
    const/4 v3, 0x0

    .line 29
    if-eq v0, v1, :cond_5

    .line 30
    .line 31
    const/4 v4, 0x2

    .line 32
    if-eq v0, v4, :cond_1

    .line 33
    .line 34
    const/4 p2, 0x3

    .line 35
    if-eq v0, p2, :cond_6

    .line 36
    .line 37
    goto/16 :goto_0

    .line 38
    .line 39
    :cond_1
    iget v0, p0, Lj4/b;->d:I

    .line 40
    .line 41
    invoke-virtual {p3, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-ne v0, p1, :cond_2

    .line 46
    .line 47
    return v2

    .line 48
    :cond_2
    invoke-virtual {p3, v0}, Landroid/view/MotionEvent;->getY(I)F

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    float-to-int p1, p1

    .line 53
    iget v0, p0, Lj4/b;->e:I

    .line 54
    .line 55
    sub-int/2addr v0, p1

    .line 56
    iget-boolean v2, p0, Lj4/b;->c:Z

    .line 57
    .line 58
    if-nez v2, :cond_3

    .line 59
    .line 60
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    iget v2, p0, Lj4/b;->f:I

    .line 65
    .line 66
    if-le v0, v2, :cond_3

    .line 67
    .line 68
    iput-boolean v1, p0, Lj4/b;->c:Z

    .line 69
    .line 70
    :cond_3
    iget-boolean v0, p0, Lj4/b;->c:Z

    .line 71
    .line 72
    if-nez v0, :cond_4

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_4
    iput p1, p0, Lj4/b;->e:I

    .line 76
    .line 77
    invoke-static {p2}, LA0/O;->I(Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    throw v3

    .line 81
    :cond_5
    iget-object v0, p0, Lj4/b;->g:Landroid/view/VelocityTracker;

    .line 82
    .line 83
    if-nez v0, :cond_7

    .line 84
    .line 85
    :cond_6
    iput-boolean v2, p0, Lj4/b;->c:Z

    .line 86
    .line 87
    iput p1, p0, Lj4/b;->d:I

    .line 88
    .line 89
    iget-object p1, p0, Lj4/b;->g:Landroid/view/VelocityTracker;

    .line 90
    .line 91
    if-eqz p1, :cond_9

    .line 92
    .line 93
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    .line 94
    .line 95
    .line 96
    iput-object v3, p0, Lj4/b;->g:Landroid/view/VelocityTracker;

    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_7
    invoke-virtual {v0, p3}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 100
    .line 101
    .line 102
    iget-object p1, p0, Lj4/b;->g:Landroid/view/VelocityTracker;

    .line 103
    .line 104
    const/16 p3, 0x3e8

    .line 105
    .line 106
    invoke-virtual {p1, p3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 107
    .line 108
    .line 109
    iget-object p1, p0, Lj4/b;->g:Landroid/view/VelocityTracker;

    .line 110
    .line 111
    iget p3, p0, Lj4/b;->d:I

    .line 112
    .line 113
    invoke-virtual {p1, p3}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    .line 114
    .line 115
    .line 116
    invoke-static {p2}, LA0/O;->I(Ljava/lang/Object;)V

    .line 117
    .line 118
    .line 119
    throw v3

    .line 120
    :cond_8
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    .line 121
    .line 122
    .line 123
    move-result v0

    .line 124
    float-to-int v0, v0

    .line 125
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    .line 126
    .line 127
    .line 128
    move-result v3

    .line 129
    float-to-int v3, v3

    .line 130
    invoke-virtual {p1, p2, v0, v3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->o(Landroid/view/View;II)Z

    .line 131
    .line 132
    .line 133
    move-result p1

    .line 134
    if-eqz p1, :cond_b

    .line 135
    .line 136
    invoke-virtual {p0, p2}, Lj4/b;->t(Landroid/view/View;)Z

    .line 137
    .line 138
    .line 139
    move-result p1

    .line 140
    if-eqz p1, :cond_b

    .line 141
    .line 142
    iput v3, p0, Lj4/b;->e:I

    .line 143
    .line 144
    invoke-virtual {p3, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 145
    .line 146
    .line 147
    move-result p1

    .line 148
    iput p1, p0, Lj4/b;->d:I

    .line 149
    .line 150
    iget-object p1, p0, Lj4/b;->g:Landroid/view/VelocityTracker;

    .line 151
    .line 152
    if-nez p1, :cond_9

    .line 153
    .line 154
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    iput-object p1, p0, Lj4/b;->g:Landroid/view/VelocityTracker;

    .line 159
    .line 160
    :cond_9
    :goto_0
    iget-object p1, p0, Lj4/b;->g:Landroid/view/VelocityTracker;

    .line 161
    .line 162
    if-eqz p1, :cond_a

    .line 163
    .line 164
    invoke-virtual {p1, p3}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 165
    .line 166
    .line 167
    :cond_a
    return v1

    .line 168
    :cond_b
    return v2
.end method

.method public abstract t(Landroid/view/View;)Z
.end method
