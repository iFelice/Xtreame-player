.class public final LS6/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LS6/b;


# instance fields
.field public a:LV6/b;

.field public b:F

.field public c:F

.field public d:Landroid/graphics/RectF;

.field public e:LW6/a;

.field public f:LS6/a;


# virtual methods
.method public final a(Landroid/view/MotionEvent;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, LS6/d;->a:LV6/b;

    .line 6
    .line 7
    iget-object v2, p0, LS6/d;->f:LS6/a;

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    if-eqz v1, :cond_2

    .line 11
    .line 12
    const/4 v4, 0x2

    .line 13
    if-ne v0, v4, :cond_2

    .line 14
    .line 15
    iget v0, p0, LS6/d;->b:F

    .line 16
    .line 17
    cmpl-float v0, v0, v3

    .line 18
    .line 19
    if-gez v0, :cond_0

    .line 20
    .line 21
    iget v0, p0, LS6/d;->c:F

    .line 22
    .line 23
    cmpl-float v0, v0, v3

    .line 24
    .line 25
    if-ltz v0, :cond_7

    .line 26
    .line 27
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    invoke-virtual {v1}, LV6/b;->h()Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-eqz v1, :cond_1

    .line 40
    .line 41
    iget v1, p0, LS6/d;->b:F

    .line 42
    .line 43
    iget v3, p0, LS6/d;->c:F

    .line 44
    .line 45
    iget-object v4, p0, LS6/d;->e:LW6/a;

    .line 46
    .line 47
    invoke-virtual {v4, v1, v3, v0, p1}, LW6/a;->s(FFFF)V

    .line 48
    .line 49
    .line 50
    :cond_1
    iput v0, p0, LS6/d;->b:F

    .line 51
    .line 52
    iput p1, p0, LS6/d;->c:F

    .line 53
    .line 54
    invoke-virtual {v2}, LS6/a;->a()V

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    :cond_2
    if-nez v0, :cond_6

    .line 59
    .line 60
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    iput v0, p0, LS6/d;->b:F

    .line 65
    .line 66
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    iput p1, p0, LS6/d;->c:F

    .line 71
    .line 72
    if-eqz v1, :cond_7

    .line 73
    .line 74
    invoke-virtual {v1}, LV6/b;->i()Z

    .line 75
    .line 76
    .line 77
    move-result p1

    .line 78
    if-eqz p1, :cond_7

    .line 79
    .line 80
    iget p1, p0, LS6/d;->b:F

    .line 81
    .line 82
    iget v0, p0, LS6/d;->c:F

    .line 83
    .line 84
    iget-object v3, p0, LS6/d;->d:Landroid/graphics/RectF;

    .line 85
    .line 86
    invoke-virtual {v3, p1, v0}, Landroid/graphics/RectF;->contains(FF)Z

    .line 87
    .line 88
    .line 89
    move-result p1

    .line 90
    if-eqz p1, :cond_7

    .line 91
    .line 92
    iget p1, p0, LS6/d;->b:F

    .line 93
    .line 94
    iget v0, v3, Landroid/graphics/RectF;->left:F

    .line 95
    .line 96
    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    .line 97
    .line 98
    .line 99
    move-result v1

    .line 100
    const/high16 v4, 0x40400000    # 3.0f

    .line 101
    .line 102
    div-float/2addr v1, v4

    .line 103
    add-float/2addr v1, v0

    .line 104
    const/4 v0, 0x0

    .line 105
    cmpg-float p1, p1, v1

    .line 106
    .line 107
    if-gez p1, :cond_3

    .line 108
    .line 109
    iget-object p1, v2, LS6/a;->P:LW6/b;

    .line 110
    .line 111
    if-eqz p1, :cond_5

    .line 112
    .line 113
    invoke-virtual {p1, v0}, LW6/b;->s(I)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v2}, LS6/a;->a()V

    .line 117
    .line 118
    .line 119
    goto :goto_0

    .line 120
    :cond_3
    iget p1, p0, LS6/d;->b:F

    .line 121
    .line 122
    iget v1, v3, Landroid/graphics/RectF;->left:F

    .line 123
    .line 124
    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    .line 125
    .line 126
    .line 127
    move-result v3

    .line 128
    const/high16 v5, 0x40000000    # 2.0f

    .line 129
    .line 130
    mul-float v3, v3, v5

    .line 131
    .line 132
    div-float/2addr v3, v4

    .line 133
    add-float/2addr v3, v1

    .line 134
    cmpg-float p1, p1, v3

    .line 135
    .line 136
    if-gez p1, :cond_4

    .line 137
    .line 138
    iget-object p1, v2, LS6/a;->Q:LW6/b;

    .line 139
    .line 140
    if-eqz p1, :cond_5

    .line 141
    .line 142
    invoke-virtual {p1, v0}, LW6/b;->s(I)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v2}, LS6/a;->a()V

    .line 146
    .line 147
    .line 148
    goto :goto_0

    .line 149
    :cond_4
    invoke-virtual {v2}, LS6/a;->b()V

    .line 150
    .line 151
    .line 152
    :cond_5
    :goto_0
    return-void

    .line 153
    :cond_6
    const/4 p1, 0x1

    .line 154
    if-ne v0, p1, :cond_7

    .line 155
    .line 156
    iput v3, p0, LS6/d;->b:F

    .line 157
    .line 158
    iput v3, p0, LS6/d;->c:F

    .line 159
    .line 160
    :cond_7
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 161
    .line 162
    .line 163
    return-void
.end method
