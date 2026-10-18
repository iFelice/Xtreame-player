.class public final LO1/b0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public G:I

.field public H:I

.field public I:Landroid/widget/OverScroller;

.field public J:Landroid/view/animation/Interpolator;

.field public K:Z

.field public L:Z

.field public final synthetic M:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LO1/b0;->M:Landroidx/recyclerview/widget/RecyclerView;

    .line 5
    .line 6
    sget-object v0, Landroidx/recyclerview/widget/RecyclerView;->p1:LT/a;

    .line 7
    .line 8
    iput-object v0, p0, LO1/b0;->J:Landroid/view/animation/Interpolator;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    iput-boolean v1, p0, LO1/b0;->K:Z

    .line 12
    .line 13
    iput-boolean v1, p0, LO1/b0;->L:Z

    .line 14
    .line 15
    new-instance v1, Landroid/widget/OverScroller;

    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-direct {v1, p1, v0}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    .line 22
    .line 23
    .line 24
    iput-object v1, p0, LO1/b0;->I:Landroid/widget/OverScroller;

    .line 25
    .line 26
    return-void
.end method


# virtual methods
.method public final a(II)V
    .locals 12

    .line 1
    iget-object v0, p0, LO1/b0;->M:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    .line 5
    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    iput v1, p0, LO1/b0;->H:I

    .line 9
    .line 10
    iput v1, p0, LO1/b0;->G:I

    .line 11
    .line 12
    iget-object v1, p0, LO1/b0;->J:Landroid/view/animation/Interpolator;

    .line 13
    .line 14
    sget-object v2, Landroidx/recyclerview/widget/RecyclerView;->p1:LT/a;

    .line 15
    .line 16
    if-eq v1, v2, :cond_0

    .line 17
    .line 18
    iput-object v2, p0, LO1/b0;->J:Landroid/view/animation/Interpolator;

    .line 19
    .line 20
    new-instance v1, Landroid/widget/OverScroller;

    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-direct {v1, v0, v2}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    .line 27
    .line 28
    .line 29
    iput-object v1, p0, LO1/b0;->I:Landroid/widget/OverScroller;

    .line 30
    .line 31
    :cond_0
    iget-object v3, p0, LO1/b0;->I:Landroid/widget/OverScroller;

    .line 32
    .line 33
    const/high16 v8, -0x80000000

    .line 34
    .line 35
    const v9, 0x7fffffff

    .line 36
    .line 37
    .line 38
    const/4 v4, 0x0

    .line 39
    const/4 v5, 0x0

    .line 40
    const/high16 v10, -0x80000000

    .line 41
    .line 42
    const v11, 0x7fffffff

    .line 43
    .line 44
    .line 45
    move v6, p1

    .line 46
    move v7, p2

    .line 47
    invoke-virtual/range {v3 .. v11}, Landroid/widget/OverScroller;->fling(IIIIIIII)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0}, LO1/b0;->b()V

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method public final b()V
    .locals 2

    .line 1
    iget-boolean v0, p0, LO1/b0;->K:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, LO1/b0;->L:Z

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, p0, LO1/b0;->M:Landroidx/recyclerview/widget/RecyclerView;

    .line 10
    .line 11
    invoke-virtual {v0, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 12
    .line 13
    .line 14
    sget-object v1, LN/N;->a:Ljava/util/WeakHashMap;

    .line 15
    .line 16
    invoke-virtual {v0, p0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 17
    .line 18
    .line 19
    :goto_0
    return-void
.end method

.method public final c(IIILandroid/view/animation/Interpolator;)V
    .locals 9

    .line 1
    const/high16 v0, -0x80000000

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget-object v2, p0, LO1/b0;->M:Landroidx/recyclerview/widget/RecyclerView;

    .line 5
    .line 6
    if-ne p3, v0, :cond_3

    .line 7
    .line 8
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    .line 9
    .line 10
    .line 11
    move-result p3

    .line 12
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-le p3, v0, :cond_0

    .line 17
    .line 18
    const/4 v3, 0x1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v3, 0x0

    .line 21
    :goto_0
    if-eqz v3, :cond_1

    .line 22
    .line 23
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    :goto_1
    if-eqz v3, :cond_2

    .line 33
    .line 34
    goto :goto_2

    .line 35
    :cond_2
    move p3, v0

    .line 36
    :goto_2
    int-to-float p3, p3

    .line 37
    int-to-float v0, v4

    .line 38
    div-float/2addr p3, v0

    .line 39
    const/high16 v0, 0x3f800000    # 1.0f

    .line 40
    .line 41
    add-float/2addr p3, v0

    .line 42
    const/high16 v0, 0x43960000    # 300.0f

    .line 43
    .line 44
    mul-float p3, p3, v0

    .line 45
    .line 46
    float-to-int p3, p3

    .line 47
    const/16 v0, 0x7d0

    .line 48
    .line 49
    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    .line 50
    .line 51
    .line 52
    move-result p3

    .line 53
    :cond_3
    move v8, p3

    .line 54
    if-nez p4, :cond_4

    .line 55
    .line 56
    sget-object p4, Landroidx/recyclerview/widget/RecyclerView;->p1:LT/a;

    .line 57
    .line 58
    :cond_4
    iget-object p3, p0, LO1/b0;->J:Landroid/view/animation/Interpolator;

    .line 59
    .line 60
    if-eq p3, p4, :cond_5

    .line 61
    .line 62
    iput-object p4, p0, LO1/b0;->J:Landroid/view/animation/Interpolator;

    .line 63
    .line 64
    new-instance p3, Landroid/widget/OverScroller;

    .line 65
    .line 66
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-direct {p3, v0, p4}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    .line 71
    .line 72
    .line 73
    iput-object p3, p0, LO1/b0;->I:Landroid/widget/OverScroller;

    .line 74
    .line 75
    :cond_5
    iput v1, p0, LO1/b0;->H:I

    .line 76
    .line 77
    iput v1, p0, LO1/b0;->G:I

    .line 78
    .line 79
    const/4 p3, 0x2

    .line 80
    invoke-virtual {v2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    .line 81
    .line 82
    .line 83
    iget-object v3, p0, LO1/b0;->I:Landroid/widget/OverScroller;

    .line 84
    .line 85
    const/4 v4, 0x0

    .line 86
    const/4 v5, 0x0

    .line 87
    move v6, p1

    .line 88
    move v7, p2

    .line 89
    invoke-virtual/range {v3 .. v8}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    .line 90
    .line 91
    .line 92
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 93
    .line 94
    const/16 p2, 0x17

    .line 95
    .line 96
    if-ge p1, p2, :cond_6

    .line 97
    .line 98
    iget-object p1, p0, LO1/b0;->I:Landroid/widget/OverScroller;

    .line 99
    .line 100
    invoke-virtual {p1}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    .line 101
    .line 102
    .line 103
    :cond_6
    invoke-virtual {p0}, LO1/b0;->b()V

    .line 104
    .line 105
    .line 106
    return-void
.end method

.method public final run()V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v9, v0, LO1/b0;->M:Landroidx/recyclerview/widget/RecyclerView;

    .line 4
    .line 5
    iget-object v1, v9, Landroidx/recyclerview/widget/RecyclerView;->T:LO1/L;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v9, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 10
    .line 11
    .line 12
    iget-object v1, v0, LO1/b0;->I:Landroid/widget/OverScroller;

    .line 13
    .line 14
    invoke-virtual {v1}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    const/4 v10, 0x0

    .line 19
    iput-boolean v10, v0, LO1/b0;->L:Z

    .line 20
    .line 21
    const/4 v11, 0x1

    .line 22
    iput-boolean v11, v0, LO1/b0;->K:Z

    .line 23
    .line 24
    invoke-virtual {v9}, Landroidx/recyclerview/widget/RecyclerView;->p()V

    .line 25
    .line 26
    .line 27
    iget-object v12, v0, LO1/b0;->I:Landroid/widget/OverScroller;

    .line 28
    .line 29
    invoke-virtual {v12}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_1e

    .line 34
    .line 35
    invoke-virtual {v12}, Landroid/widget/OverScroller;->getCurrX()I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    invoke-virtual {v12}, Landroid/widget/OverScroller;->getCurrY()I

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    iget v3, v0, LO1/b0;->G:I

    .line 44
    .line 45
    sub-int v3, v1, v3

    .line 46
    .line 47
    iget v4, v0, LO1/b0;->H:I

    .line 48
    .line 49
    sub-int v4, v2, v4

    .line 50
    .line 51
    iput v1, v0, LO1/b0;->G:I

    .line 52
    .line 53
    iput v2, v0, LO1/b0;->H:I

    .line 54
    .line 55
    iget-object v1, v9, Landroidx/recyclerview/widget/RecyclerView;->r0:Landroid/widget/EdgeEffect;

    .line 56
    .line 57
    iget-object v2, v9, Landroidx/recyclerview/widget/RecyclerView;->t0:Landroid/widget/EdgeEffect;

    .line 58
    .line 59
    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    .line 60
    .line 61
    .line 62
    move-result v5

    .line 63
    invoke-static {v3, v1, v2, v5}, Landroidx/recyclerview/widget/RecyclerView;->o(ILandroid/widget/EdgeEffect;Landroid/widget/EdgeEffect;I)I

    .line 64
    .line 65
    .line 66
    move-result v7

    .line 67
    iget-object v1, v9, Landroidx/recyclerview/widget/RecyclerView;->s0:Landroid/widget/EdgeEffect;

    .line 68
    .line 69
    iget-object v2, v9, Landroidx/recyclerview/widget/RecyclerView;->u0:Landroid/widget/EdgeEffect;

    .line 70
    .line 71
    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    .line 72
    .line 73
    .line 74
    move-result v3

    .line 75
    invoke-static {v4, v1, v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->o(ILandroid/widget/EdgeEffect;Landroid/widget/EdgeEffect;I)I

    .line 76
    .line 77
    .line 78
    move-result v8

    .line 79
    iget-object v5, v9, Landroidx/recyclerview/widget/RecyclerView;->Z0:[I

    .line 80
    .line 81
    aput v10, v5, v10

    .line 82
    .line 83
    aput v10, v5, v11

    .line 84
    .line 85
    const/4 v6, 0x0

    .line 86
    const/4 v4, 0x1

    .line 87
    move-object v1, v9

    .line 88
    move v2, v7

    .line 89
    move v3, v8

    .line 90
    invoke-virtual/range {v1 .. v6}, Landroidx/recyclerview/widget/RecyclerView;->u(III[I[I)Z

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    iget-object v13, v9, Landroidx/recyclerview/widget/RecyclerView;->Z0:[I

    .line 95
    .line 96
    if-eqz v1, :cond_1

    .line 97
    .line 98
    aget v1, v13, v10

    .line 99
    .line 100
    sub-int/2addr v7, v1

    .line 101
    aget v1, v13, v11

    .line 102
    .line 103
    sub-int/2addr v8, v1

    .line 104
    :cond_1
    invoke-virtual {v9}, Landroid/view/View;->getOverScrollMode()I

    .line 105
    .line 106
    .line 107
    move-result v1

    .line 108
    const/4 v14, 0x2

    .line 109
    if-eq v1, v14, :cond_2

    .line 110
    .line 111
    invoke-virtual {v9, v7, v8}, Landroidx/recyclerview/widget/RecyclerView;->n(II)V

    .line 112
    .line 113
    .line 114
    :cond_2
    iget-object v1, v9, Landroidx/recyclerview/widget/RecyclerView;->S:LO1/C;

    .line 115
    .line 116
    if-eqz v1, :cond_6

    .line 117
    .line 118
    aput v10, v13, v10

    .line 119
    .line 120
    aput v10, v13, v11

    .line 121
    .line 122
    invoke-virtual {v9, v7, v8, v13}, Landroidx/recyclerview/widget/RecyclerView;->g0(II[I)V

    .line 123
    .line 124
    .line 125
    aget v1, v13, v10

    .line 126
    .line 127
    aget v2, v13, v11

    .line 128
    .line 129
    sub-int/2addr v7, v1

    .line 130
    sub-int/2addr v8, v2

    .line 131
    iget-object v3, v9, Landroidx/recyclerview/widget/RecyclerView;->T:LO1/L;

    .line 132
    .line 133
    iget-object v3, v3, LO1/L;->e:LO1/w;

    .line 134
    .line 135
    if-eqz v3, :cond_5

    .line 136
    .line 137
    iget-boolean v4, v3, LO1/w;->d:Z

    .line 138
    .line 139
    if-nez v4, :cond_5

    .line 140
    .line 141
    iget-boolean v4, v3, LO1/w;->e:Z

    .line 142
    .line 143
    if-eqz v4, :cond_5

    .line 144
    .line 145
    iget-object v4, v9, Landroidx/recyclerview/widget/RecyclerView;->N0:LO1/Y;

    .line 146
    .line 147
    invoke-virtual {v4}, LO1/Y;->b()I

    .line 148
    .line 149
    .line 150
    move-result v4

    .line 151
    if-nez v4, :cond_3

    .line 152
    .line 153
    invoke-virtual {v3}, LO1/w;->h()V

    .line 154
    .line 155
    .line 156
    goto :goto_0

    .line 157
    :cond_3
    iget v5, v3, LO1/w;->a:I

    .line 158
    .line 159
    if-lt v5, v4, :cond_4

    .line 160
    .line 161
    sub-int/2addr v4, v11

    .line 162
    iput v4, v3, LO1/w;->a:I

    .line 163
    .line 164
    invoke-virtual {v3, v1, v2}, LO1/w;->e(II)V

    .line 165
    .line 166
    .line 167
    goto :goto_0

    .line 168
    :cond_4
    invoke-virtual {v3, v1, v2}, LO1/w;->e(II)V

    .line 169
    .line 170
    .line 171
    :cond_5
    :goto_0
    move v15, v1

    .line 172
    move/from16 v16, v7

    .line 173
    .line 174
    move/from16 v17, v8

    .line 175
    .line 176
    move v8, v2

    .line 177
    goto :goto_1

    .line 178
    :cond_6
    move/from16 v16, v7

    .line 179
    .line 180
    move/from16 v17, v8

    .line 181
    .line 182
    const/4 v8, 0x0

    .line 183
    const/4 v15, 0x0

    .line 184
    :goto_1
    iget-object v1, v9, Landroidx/recyclerview/widget/RecyclerView;->W:Ljava/util/ArrayList;

    .line 185
    .line 186
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 187
    .line 188
    .line 189
    move-result v1

    .line 190
    if-nez v1, :cond_7

    .line 191
    .line 192
    invoke-virtual {v9}, Landroid/view/View;->invalidate()V

    .line 193
    .line 194
    .line 195
    :cond_7
    iget-object v7, v9, Landroidx/recyclerview/widget/RecyclerView;->Z0:[I

    .line 196
    .line 197
    aput v10, v7, v10

    .line 198
    .line 199
    aput v10, v7, v11

    .line 200
    .line 201
    const/4 v6, 0x0

    .line 202
    const/16 v18, 0x1

    .line 203
    .line 204
    move-object v1, v9

    .line 205
    move v2, v15

    .line 206
    move v3, v8

    .line 207
    move/from16 v4, v16

    .line 208
    .line 209
    move/from16 v5, v17

    .line 210
    .line 211
    move-object/from16 v19, v7

    .line 212
    .line 213
    move/from16 v7, v18

    .line 214
    .line 215
    move v14, v8

    .line 216
    move-object/from16 v8, v19

    .line 217
    .line 218
    invoke-virtual/range {v1 .. v8}, Landroidx/recyclerview/widget/RecyclerView;->v(IIII[II[I)V

    .line 219
    .line 220
    .line 221
    aget v1, v13, v10

    .line 222
    .line 223
    sub-int v16, v16, v1

    .line 224
    .line 225
    aget v1, v13, v11

    .line 226
    .line 227
    sub-int v17, v17, v1

    .line 228
    .line 229
    if-nez v15, :cond_8

    .line 230
    .line 231
    if-eqz v14, :cond_9

    .line 232
    .line 233
    :cond_8
    invoke-virtual {v9, v15, v14}, Landroidx/recyclerview/widget/RecyclerView;->w(II)V

    .line 234
    .line 235
    .line 236
    :cond_9
    invoke-static {v9}, Landroidx/recyclerview/widget/RecyclerView;->d(Landroidx/recyclerview/widget/RecyclerView;)Z

    .line 237
    .line 238
    .line 239
    move-result v1

    .line 240
    if-nez v1, :cond_a

    .line 241
    .line 242
    invoke-virtual {v9}, Landroid/view/View;->invalidate()V

    .line 243
    .line 244
    .line 245
    :cond_a
    invoke-virtual {v12}, Landroid/widget/OverScroller;->getCurrX()I

    .line 246
    .line 247
    .line 248
    move-result v1

    .line 249
    invoke-virtual {v12}, Landroid/widget/OverScroller;->getFinalX()I

    .line 250
    .line 251
    .line 252
    move-result v2

    .line 253
    if-ne v1, v2, :cond_b

    .line 254
    .line 255
    const/4 v1, 0x1

    .line 256
    goto :goto_2

    .line 257
    :cond_b
    const/4 v1, 0x0

    .line 258
    :goto_2
    invoke-virtual {v12}, Landroid/widget/OverScroller;->getCurrY()I

    .line 259
    .line 260
    .line 261
    move-result v2

    .line 262
    invoke-virtual {v12}, Landroid/widget/OverScroller;->getFinalY()I

    .line 263
    .line 264
    .line 265
    move-result v3

    .line 266
    if-ne v2, v3, :cond_c

    .line 267
    .line 268
    const/4 v2, 0x1

    .line 269
    goto :goto_3

    .line 270
    :cond_c
    const/4 v2, 0x0

    .line 271
    :goto_3
    invoke-virtual {v12}, Landroid/widget/OverScroller;->isFinished()Z

    .line 272
    .line 273
    .line 274
    move-result v3

    .line 275
    if-nez v3, :cond_f

    .line 276
    .line 277
    if-nez v1, :cond_d

    .line 278
    .line 279
    if-eqz v16, :cond_e

    .line 280
    .line 281
    :cond_d
    if-nez v2, :cond_f

    .line 282
    .line 283
    if-eqz v17, :cond_e

    .line 284
    .line 285
    goto :goto_4

    .line 286
    :cond_e
    const/4 v1, 0x0

    .line 287
    goto :goto_5

    .line 288
    :cond_f
    :goto_4
    const/4 v1, 0x1

    .line 289
    :goto_5
    iget-object v2, v9, Landroidx/recyclerview/widget/RecyclerView;->T:LO1/L;

    .line 290
    .line 291
    iget-object v2, v2, LO1/L;->e:LO1/w;

    .line 292
    .line 293
    if-eqz v2, :cond_10

    .line 294
    .line 295
    iget-boolean v2, v2, LO1/w;->d:Z

    .line 296
    .line 297
    if-eqz v2, :cond_10

    .line 298
    .line 299
    goto/16 :goto_a

    .line 300
    .line 301
    :cond_10
    if-eqz v1, :cond_1c

    .line 302
    .line 303
    invoke-virtual {v9}, Landroid/view/View;->getOverScrollMode()I

    .line 304
    .line 305
    .line 306
    move-result v1

    .line 307
    const/4 v2, 0x2

    .line 308
    if-eq v1, v2, :cond_1a

    .line 309
    .line 310
    invoke-virtual {v12}, Landroid/widget/OverScroller;->getCurrVelocity()F

    .line 311
    .line 312
    .line 313
    move-result v1

    .line 314
    float-to-int v1, v1

    .line 315
    if-gez v16, :cond_11

    .line 316
    .line 317
    neg-int v2, v1

    .line 318
    goto :goto_6

    .line 319
    :cond_11
    if-lez v16, :cond_12

    .line 320
    .line 321
    move v2, v1

    .line 322
    goto :goto_6

    .line 323
    :cond_12
    const/4 v2, 0x0

    .line 324
    :goto_6
    if-gez v17, :cond_13

    .line 325
    .line 326
    neg-int v1, v1

    .line 327
    goto :goto_7

    .line 328
    :cond_13
    if-lez v17, :cond_14

    .line 329
    .line 330
    goto :goto_7

    .line 331
    :cond_14
    const/4 v1, 0x0

    .line 332
    :goto_7
    if-gez v2, :cond_15

    .line 333
    .line 334
    invoke-virtual {v9}, Landroidx/recyclerview/widget/RecyclerView;->y()V

    .line 335
    .line 336
    .line 337
    iget-object v3, v9, Landroidx/recyclerview/widget/RecyclerView;->r0:Landroid/widget/EdgeEffect;

    .line 338
    .line 339
    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 340
    .line 341
    .line 342
    move-result v3

    .line 343
    if-eqz v3, :cond_16

    .line 344
    .line 345
    iget-object v3, v9, Landroidx/recyclerview/widget/RecyclerView;->r0:Landroid/widget/EdgeEffect;

    .line 346
    .line 347
    neg-int v4, v2

    .line 348
    invoke-virtual {v3, v4}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    .line 349
    .line 350
    .line 351
    goto :goto_8

    .line 352
    :cond_15
    if-lez v2, :cond_16

    .line 353
    .line 354
    invoke-virtual {v9}, Landroidx/recyclerview/widget/RecyclerView;->z()V

    .line 355
    .line 356
    .line 357
    iget-object v3, v9, Landroidx/recyclerview/widget/RecyclerView;->t0:Landroid/widget/EdgeEffect;

    .line 358
    .line 359
    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 360
    .line 361
    .line 362
    move-result v3

    .line 363
    if-eqz v3, :cond_16

    .line 364
    .line 365
    iget-object v3, v9, Landroidx/recyclerview/widget/RecyclerView;->t0:Landroid/widget/EdgeEffect;

    .line 366
    .line 367
    invoke-virtual {v3, v2}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    .line 368
    .line 369
    .line 370
    :cond_16
    :goto_8
    if-gez v1, :cond_17

    .line 371
    .line 372
    invoke-virtual {v9}, Landroidx/recyclerview/widget/RecyclerView;->A()V

    .line 373
    .line 374
    .line 375
    iget-object v3, v9, Landroidx/recyclerview/widget/RecyclerView;->s0:Landroid/widget/EdgeEffect;

    .line 376
    .line 377
    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 378
    .line 379
    .line 380
    move-result v3

    .line 381
    if-eqz v3, :cond_18

    .line 382
    .line 383
    iget-object v3, v9, Landroidx/recyclerview/widget/RecyclerView;->s0:Landroid/widget/EdgeEffect;

    .line 384
    .line 385
    neg-int v4, v1

    .line 386
    invoke-virtual {v3, v4}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    .line 387
    .line 388
    .line 389
    goto :goto_9

    .line 390
    :cond_17
    if-lez v1, :cond_18

    .line 391
    .line 392
    invoke-virtual {v9}, Landroidx/recyclerview/widget/RecyclerView;->x()V

    .line 393
    .line 394
    .line 395
    iget-object v3, v9, Landroidx/recyclerview/widget/RecyclerView;->u0:Landroid/widget/EdgeEffect;

    .line 396
    .line 397
    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 398
    .line 399
    .line 400
    move-result v3

    .line 401
    if-eqz v3, :cond_18

    .line 402
    .line 403
    iget-object v3, v9, Landroidx/recyclerview/widget/RecyclerView;->u0:Landroid/widget/EdgeEffect;

    .line 404
    .line 405
    invoke-virtual {v3, v1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    .line 406
    .line 407
    .line 408
    :cond_18
    :goto_9
    if-nez v2, :cond_19

    .line 409
    .line 410
    if-eqz v1, :cond_1a

    .line 411
    .line 412
    :cond_19
    invoke-virtual {v9}, Landroid/view/View;->postInvalidateOnAnimation()V

    .line 413
    .line 414
    .line 415
    :cond_1a
    sget-boolean v1, Landroidx/recyclerview/widget/RecyclerView;->n1:Z

    .line 416
    .line 417
    if-eqz v1, :cond_1d

    .line 418
    .line 419
    iget-object v1, v9, Landroidx/recyclerview/widget/RecyclerView;->M0:Lr/h;

    .line 420
    .line 421
    iget-object v2, v1, Lr/h;->d:[I

    .line 422
    .line 423
    if-eqz v2, :cond_1b

    .line 424
    .line 425
    const/4 v3, -0x1

    .line 426
    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([II)V

    .line 427
    .line 428
    .line 429
    :cond_1b
    iput v10, v1, Lr/h;->e:I

    .line 430
    .line 431
    goto :goto_b

    .line 432
    :cond_1c
    :goto_a
    invoke-virtual/range {p0 .. p0}, LO1/b0;->b()V

    .line 433
    .line 434
    .line 435
    iget-object v1, v9, Landroidx/recyclerview/widget/RecyclerView;->L0:LO1/r;

    .line 436
    .line 437
    if-eqz v1, :cond_1d

    .line 438
    .line 439
    invoke-virtual {v1, v9, v15, v14}, LO1/r;->a(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 440
    .line 441
    .line 442
    :cond_1d
    :goto_b
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 443
    .line 444
    const/16 v2, 0x23

    .line 445
    .line 446
    if-lt v1, v2, :cond_1e

    .line 447
    .line 448
    invoke-virtual {v12}, Landroid/widget/OverScroller;->getCurrVelocity()F

    .line 449
    .line 450
    .line 451
    move-result v1

    .line 452
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 453
    .line 454
    .line 455
    move-result v1

    .line 456
    invoke-static {v9, v1}, LO1/E;->a(Landroid/view/View;F)V

    .line 457
    .line 458
    .line 459
    :cond_1e
    iget-object v1, v9, Landroidx/recyclerview/widget/RecyclerView;->T:LO1/L;

    .line 460
    .line 461
    iget-object v1, v1, LO1/L;->e:LO1/w;

    .line 462
    .line 463
    if-eqz v1, :cond_1f

    .line 464
    .line 465
    iget-boolean v2, v1, LO1/w;->d:Z

    .line 466
    .line 467
    if-eqz v2, :cond_1f

    .line 468
    .line 469
    invoke-virtual {v1, v10, v10}, LO1/w;->e(II)V

    .line 470
    .line 471
    .line 472
    :cond_1f
    iput-boolean v10, v0, LO1/b0;->K:Z

    .line 473
    .line 474
    iget-boolean v1, v0, LO1/b0;->L:Z

    .line 475
    .line 476
    if-eqz v1, :cond_20

    .line 477
    .line 478
    invoke-virtual {v9, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 479
    .line 480
    .line 481
    sget-object v1, LN/N;->a:Ljava/util/WeakHashMap;

    .line 482
    .line 483
    invoke-virtual {v9, v0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 484
    .line 485
    .line 486
    goto :goto_c

    .line 487
    :cond_20
    invoke-virtual {v9, v10}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    .line 488
    .line 489
    .line 490
    invoke-virtual {v9, v11}, Landroidx/recyclerview/widget/RecyclerView;->o0(I)V

    .line 491
    .line 492
    .line 493
    :goto_c
    return-void
.end method
