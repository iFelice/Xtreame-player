.class public final LS6/a;
.super Landroid/view/View;
.source "SourceFile"


# static fields
.field public static final a0:I


# instance fields
.field public G:LT6/a;

.field public H:LV6/b;

.field public I:Landroid/graphics/Rect;

.field public J:Landroid/os/Handler;

.field public K:Landroid/graphics/RectF;

.field public L:Landroid/graphics/Bitmap;

.field public M:Landroid/graphics/Bitmap;

.field public N:Landroid/graphics/Bitmap;

.field public O:I

.field public P:LW6/b;

.field public Q:LW6/b;

.field public R:LF5/g;

.field public S:Landroid/graphics/Paint;

.field public T:LS6/b;

.field public U:F

.field public V:F

.field public W:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const/16 v0, 0xaf

    .line 2
    .line 3
    const/16 v1, 0x96

    .line 4
    .line 5
    invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    sput v0, LS6/a;->a0:I

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    iget-object v0, p0, LS6/a;->J:Landroid/os/Handler;

    .line 2
    .line 3
    new-instance v1, Lcom/google/android/gms/internal/cast/X;

    .line 4
    .line 5
    const/16 v2, 0xc

    .line 6
    .line 7
    invoke-direct {v1, p0, v2}, Lcom/google/android/gms/internal/cast/X;-><init>(Ljava/lang/Object;I)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final b()V
    .locals 22

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const/4 v0, 0x4

    .line 4
    const/4 v2, 0x2

    .line 5
    const/4 v3, 0x3

    .line 6
    const/4 v4, 0x0

    .line 7
    const/4 v5, 0x1

    .line 8
    iget-object v6, v1, LS6/a;->R:LF5/g;

    .line 9
    .line 10
    if-eqz v6, :cond_7

    .line 11
    .line 12
    iget-object v7, v6, Lf/H;->a:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v7, LT6/a;

    .line 15
    .line 16
    instance-of v8, v7, LT6/e;

    .line 17
    .line 18
    if-eqz v8, :cond_6

    .line 19
    .line 20
    check-cast v7, LT6/e;

    .line 21
    .line 22
    iget-object v7, v7, LT6/e;->G:LU6/c;

    .line 23
    .line 24
    if-nez v7, :cond_0

    .line 25
    .line 26
    goto/16 :goto_3

    .line 27
    .line 28
    :cond_0
    iget-object v7, v6, Lf/H;->b:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v7, LV6/b;

    .line 31
    .line 32
    iget v8, v7, LV6/b;->t0:I

    .line 33
    .line 34
    iget-object v7, v7, LV6/b;->q0:Ljava/util/LinkedHashMap;

    .line 35
    .line 36
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 37
    .line 38
    .line 39
    move-result-object v9

    .line 40
    invoke-virtual {v7, v9}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v7

    .line 44
    if-eqz v7, :cond_2

    .line 45
    .line 46
    const/4 v0, 0x0

    .line 47
    :goto_0
    if-ge v0, v8, :cond_5

    .line 48
    .line 49
    iget-object v7, v6, Lf/H;->b:Ljava/lang/Object;

    .line 50
    .line 51
    check-cast v7, LV6/b;

    .line 52
    .line 53
    iget-object v7, v7, LV6/b;->q0:Ljava/util/LinkedHashMap;

    .line 54
    .line 55
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 56
    .line 57
    .line 58
    move-result-object v9

    .line 59
    invoke-virtual {v7, v9}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v7

    .line 63
    if-eqz v7, :cond_1

    .line 64
    .line 65
    iget-object v7, v6, Lf/H;->b:Ljava/lang/Object;

    .line 66
    .line 67
    check-cast v7, LV6/b;

    .line 68
    .line 69
    iget-object v9, v7, LV6/b;->q0:Ljava/util/LinkedHashMap;

    .line 70
    .line 71
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 72
    .line 73
    .line 74
    move-result-object v10

    .line 75
    invoke-virtual {v9, v10}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v9

    .line 79
    check-cast v9, [D

    .line 80
    .line 81
    aget-wide v10, v9, v4

    .line 82
    .line 83
    invoke-virtual {v7, v0, v10, v11}, LV6/b;->k(ID)V

    .line 84
    .line 85
    .line 86
    aget-wide v10, v9, v5

    .line 87
    .line 88
    invoke-virtual {v7, v0, v10, v11}, LV6/b;->j(ID)V

    .line 89
    .line 90
    .line 91
    aget-wide v10, v9, v2

    .line 92
    .line 93
    invoke-virtual {v7, v0, v10, v11}, LV6/b;->m(ID)V

    .line 94
    .line 95
    .line 96
    aget-wide v10, v9, v3

    .line 97
    .line 98
    invoke-virtual {v7, v0, v10, v11}, LV6/b;->l(ID)V

    .line 99
    .line 100
    .line 101
    :cond_1
    add-int/2addr v0, v5

    .line 102
    goto :goto_0

    .line 103
    :cond_2
    iget-object v7, v6, Lf/H;->a:Ljava/lang/Object;

    .line 104
    .line 105
    check-cast v7, LT6/a;

    .line 106
    .line 107
    check-cast v7, LT6/e;

    .line 108
    .line 109
    iget-object v7, v7, LT6/e;->G:LU6/c;

    .line 110
    .line 111
    monitor-enter v7

    .line 112
    :try_start_0
    iget-object v9, v7, LU6/c;->G:Ljava/util/ArrayList;

    .line 113
    .line 114
    new-array v10, v4, [LU6/d;

    .line 115
    .line 116
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v9

    .line 120
    check-cast v9, [LU6/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    .line 122
    monitor-exit v7

    .line 123
    array-length v7, v9

    .line 124
    if-lez v7, :cond_5

    .line 125
    .line 126
    const/4 v10, 0x0

    .line 127
    :goto_1
    if-ge v10, v8, :cond_5

    .line 128
    .line 129
    new-array v11, v0, [D

    .line 130
    .line 131
    fill-array-data v11, :array_0

    .line 132
    .line 133
    .line 134
    const/4 v12, 0x0

    .line 135
    :goto_2
    if-ge v12, v7, :cond_4

    .line 136
    .line 137
    aget-object v13, v9, v12

    .line 138
    .line 139
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 140
    .line 141
    .line 142
    if-nez v10, :cond_3

    .line 143
    .line 144
    aget-wide v14, v11, v4

    .line 145
    .line 146
    iget-wide v0, v13, LU6/d;->I:D

    .line 147
    .line 148
    invoke-static {v14, v15, v0, v1}, Ljava/lang/Math;->min(DD)D

    .line 149
    .line 150
    .line 151
    move-result-wide v0

    .line 152
    aput-wide v0, v11, v4

    .line 153
    .line 154
    aget-wide v0, v11, v5

    .line 155
    .line 156
    aget-object v13, v9, v12

    .line 157
    .line 158
    iget-wide v13, v13, LU6/d;->J:D

    .line 159
    .line 160
    invoke-static {v0, v1, v13, v14}, Ljava/lang/Math;->max(DD)D

    .line 161
    .line 162
    .line 163
    move-result-wide v0

    .line 164
    aput-wide v0, v11, v5

    .line 165
    .line 166
    aget-wide v0, v11, v2

    .line 167
    .line 168
    aget-object v13, v9, v12

    .line 169
    .line 170
    iget-wide v13, v13, LU6/d;->K:D

    .line 171
    .line 172
    invoke-static {v0, v1, v13, v14}, Ljava/lang/Math;->min(DD)D

    .line 173
    .line 174
    .line 175
    move-result-wide v0

    .line 176
    aput-wide v0, v11, v2

    .line 177
    .line 178
    aget-wide v0, v11, v3

    .line 179
    .line 180
    aget-object v13, v9, v12

    .line 181
    .line 182
    iget-wide v13, v13, LU6/d;->L:D

    .line 183
    .line 184
    invoke-static {v0, v1, v13, v14}, Ljava/lang/Math;->max(DD)D

    .line 185
    .line 186
    .line 187
    move-result-wide v0

    .line 188
    aput-wide v0, v11, v3

    .line 189
    .line 190
    :cond_3
    add-int/2addr v12, v5

    .line 191
    const/4 v0, 0x4

    .line 192
    move-object/from16 v1, p0

    .line 193
    .line 194
    goto :goto_2

    .line 195
    :cond_4
    aget-wide v0, v11, v5

    .line 196
    .line 197
    aget-wide v12, v11, v4

    .line 198
    .line 199
    sub-double/2addr v0, v12

    .line 200
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    .line 201
    .line 202
    .line 203
    move-result-wide v0

    .line 204
    const-wide/high16 v12, 0x4044000000000000L    # 40.0

    .line 205
    .line 206
    div-double/2addr v0, v12

    .line 207
    aget-wide v14, v11, v3

    .line 208
    .line 209
    aget-wide v16, v11, v2

    .line 210
    .line 211
    sub-double v14, v14, v16

    .line 212
    .line 213
    invoke-static {v14, v15}, Ljava/lang/Math;->abs(D)D

    .line 214
    .line 215
    .line 216
    move-result-wide v14

    .line 217
    div-double/2addr v14, v12

    .line 218
    iget-object v12, v6, Lf/H;->b:Ljava/lang/Object;

    .line 219
    .line 220
    check-cast v12, LV6/b;

    .line 221
    .line 222
    aget-wide v16, v11, v4

    .line 223
    .line 224
    sub-double v16, v16, v0

    .line 225
    .line 226
    aget-wide v18, v11, v5

    .line 227
    .line 228
    add-double v18, v18, v0

    .line 229
    .line 230
    aget-wide v0, v11, v2

    .line 231
    .line 232
    sub-double/2addr v0, v14

    .line 233
    aget-wide v20, v11, v3

    .line 234
    .line 235
    add-double v20, v20, v14

    .line 236
    .line 237
    const/4 v11, 0x4

    .line 238
    new-array v13, v11, [D

    .line 239
    .line 240
    aput-wide v16, v13, v4

    .line 241
    .line 242
    aput-wide v18, v13, v5

    .line 243
    .line 244
    aput-wide v0, v13, v2

    .line 245
    .line 246
    aput-wide v20, v13, v3

    .line 247
    .line 248
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 249
    .line 250
    .line 251
    aget-wide v0, v13, v4

    .line 252
    .line 253
    invoke-virtual {v12, v10, v0, v1}, LV6/b;->k(ID)V

    .line 254
    .line 255
    .line 256
    aget-wide v0, v13, v5

    .line 257
    .line 258
    invoke-virtual {v12, v10, v0, v1}, LV6/b;->j(ID)V

    .line 259
    .line 260
    .line 261
    aget-wide v0, v13, v2

    .line 262
    .line 263
    invoke-virtual {v12, v10, v0, v1}, LV6/b;->m(ID)V

    .line 264
    .line 265
    .line 266
    aget-wide v0, v13, v3

    .line 267
    .line 268
    invoke-virtual {v12, v10, v0, v1}, LV6/b;->l(ID)V

    .line 269
    .line 270
    .line 271
    add-int/2addr v10, v5

    .line 272
    const/4 v0, 0x4

    .line 273
    move-object/from16 v1, p0

    .line 274
    .line 275
    goto/16 :goto_1

    .line 276
    .line 277
    :cond_5
    move-object/from16 v1, p0

    .line 278
    .line 279
    :goto_3
    iget-object v0, v1, LS6/a;->P:LW6/b;

    .line 280
    .line 281
    invoke-virtual {v0}, LW6/b;->t()V

    .line 282
    .line 283
    .line 284
    invoke-virtual/range {p0 .. p0}, LS6/a;->a()V

    .line 285
    .line 286
    .line 287
    goto :goto_4

    .line 288
    :catchall_0
    move-exception v0

    .line 289
    monitor-exit v7

    .line 290
    throw v0

    .line 291
    :cond_6
    invoke-static {v7}, LA0/O;->G(LT6/a;)V

    .line 292
    .line 293
    .line 294
    const/4 v0, 0x0

    .line 295
    throw v0

    .line 296
    :cond_7
    :goto_4
    return-void

    .line 297
    :array_0
    .array-data 8
        0x7fefffffffffffffL    # Double.MAX_VALUE
        -0x10000000000001L
        0x7fefffffffffffffL    # Double.MAX_VALUE
        -0x10000000000001L
    .end array-data
.end method

.method public getChart()LT6/a;
    .locals 1

    .line 1
    iget-object v0, p0, LS6/a;->G:LT6/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCurrentSeriesAndPoint()LU6/b;
    .locals 6

    .line 1
    iget v0, p0, LS6/a;->U:F

    .line 2
    .line 3
    iget v1, p0, LS6/a;->V:F

    .line 4
    .line 5
    iget-object v2, p0, LS6/a;->G:LT6/a;

    .line 6
    .line 7
    check-cast v2, LT6/e;

    .line 8
    .line 9
    iget-object v3, v2, LT6/e;->O:Ljava/util/HashMap;

    .line 10
    .line 11
    if-eqz v3, :cond_2

    .line 12
    .line 13
    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    add-int/lit8 v3, v3, -0x1

    .line 18
    .line 19
    :goto_0
    if-ltz v3, :cond_2

    .line 20
    .line 21
    iget-object v4, v2, LT6/e;->O:Ljava/util/HashMap;

    .line 22
    .line 23
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    .line 25
    .line 26
    move-result-object v5

    .line 27
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    if-eqz v4, :cond_1

    .line 32
    .line 33
    iget-object v4, v2, LT6/e;->O:Ljava/util/HashMap;

    .line 34
    .line 35
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    .line 37
    .line 38
    move-result-object v5

    .line 39
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    check-cast v4, Ljava/util/List;

    .line 44
    .line 45
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 50
    .line 51
    .line 52
    move-result v5

    .line 53
    if-eqz v5, :cond_1

    .line 54
    .line 55
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v5

    .line 59
    check-cast v5, LT6/b;

    .line 60
    .line 61
    if-eqz v5, :cond_0

    .line 62
    .line 63
    iget-object v5, v5, LT6/b;->a:Landroid/graphics/RectF;

    .line 64
    .line 65
    if-eqz v5, :cond_0

    .line 66
    .line 67
    invoke-virtual {v5, v0, v1}, Landroid/graphics/RectF;->contains(FF)Z

    .line 68
    .line 69
    .line 70
    move-result v5

    .line 71
    if-eqz v5, :cond_0

    .line 72
    .line 73
    new-instance v0, LU6/b;

    .line 74
    .line 75
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 76
    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_1
    add-int/lit8 v3, v3, -0x1

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_2
    const/4 v0, 0x0

    .line 83
    :goto_1
    return-object v0
.end method

.method public getZoomRectangle()Landroid/graphics/RectF;
    .locals 1

    .line 1
    iget-object v0, p0, LS6/a;->K:Landroid/graphics/RectF;

    .line 2
    .line 3
    return-object v0
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 69

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 6
    .line 7
    .line 8
    iget-object v2, v1, LS6/a;->I:Landroid/graphics/Rect;

    .line 9
    .line 10
    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    .line 11
    .line 12
    .line 13
    iget-object v2, v1, LS6/a;->I:Landroid/graphics/Rect;

    .line 14
    .line 15
    iget v14, v2, Landroid/graphics/Rect;->top:I

    .line 16
    .line 17
    iget v15, v2, Landroid/graphics/Rect;->left:I

    .line 18
    .line 19
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    .line 20
    .line 21
    .line 22
    move-result v12

    .line 23
    iget-object v2, v1, LS6/a;->I:Landroid/graphics/Rect;

    .line 24
    .line 25
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    .line 26
    .line 27
    .line 28
    move-result v13

    .line 29
    iget-object v2, v1, LS6/a;->H:LV6/b;

    .line 30
    .line 31
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    iget-object v2, v1, LS6/a;->G:LT6/a;

    .line 35
    .line 36
    iget-object v11, v1, LS6/a;->S:Landroid/graphics/Paint;

    .line 37
    .line 38
    move-object v10, v2

    .line 39
    check-cast v10, LT6/e;

    .line 40
    .line 41
    iget-object v2, v10, LT6/e;->H:LV6/b;

    .line 42
    .line 43
    iget-boolean v2, v2, LV6/a;->U:Z

    .line 44
    .line 45
    invoke-virtual {v11, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 46
    .line 47
    .line 48
    iget-object v2, v10, LT6/e;->H:LV6/b;

    .line 49
    .line 50
    div-int/lit8 v3, v13, 0x5

    .line 51
    .line 52
    iget v4, v2, LV6/b;->c0:F

    .line 53
    .line 54
    iget-boolean v5, v2, LV6/a;->P:Z

    .line 55
    .line 56
    const/4 v9, 0x0

    .line 57
    if-eqz v5, :cond_0

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_0
    const/4 v3, 0x0

    .line 61
    :goto_0
    const/high16 v16, 0x40400000    # 3.0f

    .line 62
    .line 63
    const/high16 v17, 0x40800000    # 4.0f

    .line 64
    .line 65
    if-nez v5, :cond_1

    .line 66
    .line 67
    iget-boolean v5, v2, LV6/a;->K:Z

    .line 68
    .line 69
    if-eqz v5, :cond_1

    .line 70
    .line 71
    iget v3, v2, LV6/a;->O:F

    .line 72
    .line 73
    mul-float v3, v3, v17

    .line 74
    .line 75
    div-float v3, v3, v16

    .line 76
    .line 77
    add-float/2addr v3, v4

    .line 78
    float-to-int v3, v3

    .line 79
    :cond_1
    move/from16 v18, v3

    .line 80
    .line 81
    iget-object v8, v2, LV6/a;->V:[I

    .line 82
    .line 83
    const/4 v7, 0x1

    .line 84
    aget v2, v8, v7

    .line 85
    .line 86
    add-int v6, v15, v2

    .line 87
    .line 88
    aget v2, v8, v9

    .line 89
    .line 90
    add-int v5, v14, v2

    .line 91
    .line 92
    add-int v4, v15, v12

    .line 93
    .line 94
    const/16 v19, 0x3

    .line 95
    .line 96
    aget v2, v8, v19

    .line 97
    .line 98
    sub-int v3, v4, v2

    .line 99
    .line 100
    iget-object v2, v10, LT6/e;->G:LU6/c;

    .line 101
    .line 102
    invoke-virtual {v2}, LU6/c;->c()I

    .line 103
    .line 104
    .line 105
    move-result v2

    .line 106
    new-array v9, v2, [Ljava/lang/String;

    .line 107
    .line 108
    const/4 v7, 0x0

    .line 109
    :goto_1
    if-ge v7, v2, :cond_2

    .line 110
    .line 111
    move/from16 v22, v2

    .line 112
    .line 113
    iget-object v2, v10, LT6/e;->G:LU6/c;

    .line 114
    .line 115
    invoke-virtual {v2, v7}, LU6/c;->b(I)LU6/d;

    .line 116
    .line 117
    .line 118
    move-result-object v2

    .line 119
    iget-object v2, v2, LU6/d;->G:Ljava/lang/String;

    .line 120
    .line 121
    aput-object v2, v9, v7

    .line 122
    .line 123
    add-int/lit8 v7, v7, 0x1

    .line 124
    .line 125
    move/from16 v2, v22

    .line 126
    .line 127
    goto :goto_1

    .line 128
    :cond_2
    move/from16 v22, v2

    .line 129
    .line 130
    iget-object v2, v10, LT6/e;->H:LV6/b;

    .line 131
    .line 132
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 133
    .line 134
    .line 135
    add-int v7, v14, v13

    .line 136
    .line 137
    const/4 v2, 0x2

    .line 138
    aget v23, v8, v2

    .line 139
    .line 140
    sub-int v23, v7, v23

    .line 141
    .line 142
    move-object/from16 v24, v9

    .line 143
    .line 144
    sub-int v9, v23, v18

    .line 145
    .line 146
    iget-object v2, v10, LT6/e;->L:Landroid/graphics/Rect;

    .line 147
    .line 148
    if-nez v2, :cond_3

    .line 149
    .line 150
    new-instance v2, Landroid/graphics/Rect;

    .line 151
    .line 152
    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 153
    .line 154
    .line 155
    iput-object v2, v10, LT6/e;->L:Landroid/graphics/Rect;

    .line 156
    .line 157
    :cond_3
    iget-object v2, v10, LT6/e;->L:Landroid/graphics/Rect;

    .line 158
    .line 159
    invoke-virtual {v2, v6, v5, v3, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 160
    .line 161
    .line 162
    iget-object v2, v10, LT6/e;->H:LV6/b;

    .line 163
    .line 164
    const/16 v25, 0x0

    .line 165
    .line 166
    const/16 v26, 0x0

    .line 167
    .line 168
    move/from16 v27, v22

    .line 169
    .line 170
    move/from16 v22, v3

    .line 171
    .line 172
    move-object/from16 v3, p1

    .line 173
    .line 174
    move/from16 v29, v4

    .line 175
    .line 176
    move v4, v15

    .line 177
    move/from16 v30, v5

    .line 178
    .line 179
    move v5, v14

    .line 180
    move/from16 v31, v6

    .line 181
    .line 182
    move v6, v12

    .line 183
    move/from16 v33, v7

    .line 184
    .line 185
    move v7, v13

    .line 186
    move-object/from16 v21, v8

    .line 187
    .line 188
    move-object v8, v11

    .line 189
    move/from16 v20, v9

    .line 190
    .line 191
    move-object/from16 v23, v24

    .line 192
    .line 193
    const/4 v1, 0x0

    .line 194
    move/from16 v9, v25

    .line 195
    .line 196
    move-object v1, v10

    .line 197
    move/from16 v10, v26

    .line 198
    .line 199
    invoke-static/range {v2 .. v10}, LT6/a;->b(LV6/b;Landroid/graphics/Canvas;IIIILandroid/graphics/Paint;ZI)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {v11}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    .line 203
    .line 204
    .line 205
    move-result-object v2

    .line 206
    if-eqz v2, :cond_4

    .line 207
    .line 208
    iget-object v2, v1, LT6/e;->H:LV6/b;

    .line 209
    .line 210
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 211
    .line 212
    .line 213
    invoke-virtual {v11}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    .line 214
    .line 215
    .line 216
    move-result-object v2

    .line 217
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v2

    .line 221
    iget-object v3, v1, LT6/e;->H:LV6/b;

    .line 222
    .line 223
    iget-object v3, v3, LV6/a;->G:Ljava/lang/String;

    .line 224
    .line 225
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 226
    .line 227
    .line 228
    move-result v2

    .line 229
    if-eqz v2, :cond_4

    .line 230
    .line 231
    invoke-virtual {v11}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    .line 232
    .line 233
    .line 234
    move-result-object v2

    .line 235
    invoke-virtual {v2}, Landroid/graphics/Typeface;->getStyle()I

    .line 236
    .line 237
    .line 238
    move-result v2

    .line 239
    iget-object v3, v1, LT6/e;->H:LV6/b;

    .line 240
    .line 241
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 242
    .line 243
    .line 244
    if-eqz v2, :cond_5

    .line 245
    .line 246
    :cond_4
    iget-object v2, v1, LT6/e;->H:LV6/b;

    .line 247
    .line 248
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 249
    .line 250
    .line 251
    iget-object v2, v1, LT6/e;->H:LV6/b;

    .line 252
    .line 253
    iget-object v2, v2, LV6/a;->G:Ljava/lang/String;

    .line 254
    .line 255
    const/4 v3, 0x0

    .line 256
    invoke-static {v2, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    .line 257
    .line 258
    .line 259
    move-result-object v2

    .line 260
    invoke-virtual {v11, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 261
    .line 262
    .line 263
    :cond_5
    iget-object v2, v1, LT6/e;->H:LV6/b;

    .line 264
    .line 265
    iget v10, v2, LV6/b;->B0:I

    .line 266
    .line 267
    const/4 v9, 0x2

    .line 268
    if-ne v10, v9, :cond_6

    .line 269
    .line 270
    sub-int v3, v22, v18

    .line 271
    .line 272
    add-int/lit8 v2, v18, -0x14

    .line 273
    .line 274
    add-int v2, v2, v20

    .line 275
    .line 276
    move v7, v2

    .line 277
    move v8, v3

    .line 278
    goto :goto_2

    .line 279
    :cond_6
    move/from16 v7, v20

    .line 280
    .line 281
    move/from16 v8, v22

    .line 282
    .line 283
    :goto_2
    invoke-static {v10}, LA0/O;->s(I)I

    .line 284
    .line 285
    .line 286
    move-result v6

    .line 287
    const/16 v2, 0x5a

    .line 288
    .line 289
    if-ne v6, v2, :cond_7

    .line 290
    .line 291
    const/16 v20, 0x1

    .line 292
    .line 293
    goto :goto_3

    .line 294
    :cond_7
    const/16 v20, 0x0

    .line 295
    .line 296
    :goto_3
    int-to-float v2, v13

    .line 297
    int-to-float v3, v12

    .line 298
    div-float/2addr v2, v3

    .line 299
    iput v2, v1, LT6/e;->I:F

    .line 300
    .line 301
    sub-int v2, v12, v13

    .line 302
    .line 303
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    .line 304
    .line 305
    .line 306
    move-result v2

    .line 307
    div-int/2addr v2, v9

    .line 308
    int-to-float v2, v2

    .line 309
    iput v2, v1, LT6/e;->J:F

    .line 310
    .line 311
    iget v3, v1, LT6/e;->I:F

    .line 312
    .line 313
    const/high16 v4, 0x3f800000    # 1.0f

    .line 314
    .line 315
    cmpg-float v3, v3, v4

    .line 316
    .line 317
    if-gez v3, :cond_8

    .line 318
    .line 319
    const/high16 v3, -0x40800000    # -1.0f

    .line 320
    .line 321
    mul-float v2, v2, v3

    .line 322
    .line 323
    iput v2, v1, LT6/e;->J:F

    .line 324
    .line 325
    :cond_8
    new-instance v2, LU6/a;

    .line 326
    .line 327
    move/from16 v5, v29

    .line 328
    .line 329
    div-int/lit8 v4, v5, 0x2

    .line 330
    .line 331
    int-to-float v3, v4

    .line 332
    move/from16 v4, v33

    .line 333
    .line 334
    div-int/lit8 v9, v4, 0x2

    .line 335
    .line 336
    int-to-float v9, v9

    .line 337
    invoke-direct {v2, v3, v9}, LU6/a;-><init>(FF)V

    .line 338
    .line 339
    .line 340
    iput-object v2, v1, LT6/e;->K:LU6/a;

    .line 341
    .line 342
    if-eqz v20, :cond_9

    .line 343
    .line 344
    int-to-float v2, v6

    .line 345
    const/4 v3, 0x0

    .line 346
    invoke-virtual {v1, v0, v2, v3}, LT6/e;->w(Landroid/graphics/Canvas;FZ)V

    .line 347
    .line 348
    .line 349
    goto :goto_4

    .line 350
    :cond_9
    const/4 v3, 0x0

    .line 351
    :goto_4
    const v2, -0x7fffffff

    .line 352
    .line 353
    .line 354
    move/from16 v3, v27

    .line 355
    .line 356
    const/4 v9, 0x0

    .line 357
    :goto_5
    if-ge v9, v3, :cond_a

    .line 358
    .line 359
    move/from16 v33, v4

    .line 360
    .line 361
    iget-object v4, v1, LT6/e;->G:LU6/c;

    .line 362
    .line 363
    invoke-virtual {v4, v9}, LU6/c;->b(I)LU6/d;

    .line 364
    .line 365
    .line 366
    move-result-object v4

    .line 367
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 368
    .line 369
    .line 370
    const/4 v4, 0x0

    .line 371
    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    .line 372
    .line 373
    .line 374
    move-result v2

    .line 375
    add-int/lit8 v9, v9, 0x1

    .line 376
    .line 377
    move/from16 v4, v33

    .line 378
    .line 379
    goto :goto_5

    .line 380
    :cond_a
    move/from16 v33, v4

    .line 381
    .line 382
    const/4 v9, 0x1

    .line 383
    add-int/lit8 v4, v2, 0x1

    .line 384
    .line 385
    if-gez v4, :cond_b

    .line 386
    .line 387
    move-object/from16 v1, p0

    .line 388
    .line 389
    move-object v15, v0

    .line 390
    move/from16 v64, v5

    .line 391
    .line 392
    move/from16 v38, v12

    .line 393
    .line 394
    move/from16 v55, v13

    .line 395
    .line 396
    move/from16 v65, v33

    .line 397
    .line 398
    goto/16 :goto_31

    .line 399
    .line 400
    :cond_b
    new-array v9, v4, [D

    .line 401
    .line 402
    new-array v0, v4, [D

    .line 403
    .line 404
    move/from16 v22, v14

    .line 405
    .line 406
    new-array v14, v4, [D

    .line 407
    .line 408
    move/from16 v25, v15

    .line 409
    .line 410
    new-array v15, v4, [D

    .line 411
    .line 412
    new-array v2, v4, [Z

    .line 413
    .line 414
    move/from16 v29, v5

    .line 415
    .line 416
    new-array v5, v4, [Z

    .line 417
    .line 418
    move/from16 v27, v6

    .line 419
    .line 420
    new-array v6, v4, [Z

    .line 421
    .line 422
    move/from16 v34, v10

    .line 423
    .line 424
    new-array v10, v4, [Z

    .line 425
    .line 426
    move/from16 v35, v12

    .line 427
    .line 428
    const/4 v12, 0x0

    .line 429
    :goto_6
    if-ge v12, v4, :cond_d

    .line 430
    .line 431
    move/from16 v36, v13

    .line 432
    .line 433
    iget-object v13, v1, LT6/e;->H:LV6/b;

    .line 434
    .line 435
    move-object/from16 v37, v11

    .line 436
    .line 437
    iget-object v11, v13, LV6/b;->d0:[D

    .line 438
    .line 439
    aget-wide v38, v11, v12

    .line 440
    .line 441
    aput-wide v38, v9, v12

    .line 442
    .line 443
    iget-object v11, v13, LV6/b;->e0:[D

    .line 444
    .line 445
    aget-wide v38, v11, v12

    .line 446
    .line 447
    aput-wide v38, v0, v12

    .line 448
    .line 449
    iget-object v11, v13, LV6/b;->f0:[D

    .line 450
    .line 451
    aget-wide v38, v11, v12

    .line 452
    .line 453
    aput-wide v38, v14, v12

    .line 454
    .line 455
    iget-object v11, v13, LV6/b;->g0:[D

    .line 456
    .line 457
    aget-wide v38, v11, v12

    .line 458
    .line 459
    aput-wide v38, v15, v12

    .line 460
    .line 461
    invoke-virtual {v13, v12}, LV6/b;->f(I)Z

    .line 462
    .line 463
    .line 464
    move-result v11

    .line 465
    aput-boolean v11, v2, v12

    .line 466
    .line 467
    iget-object v11, v1, LT6/e;->H:LV6/b;

    .line 468
    .line 469
    invoke-virtual {v11, v12}, LV6/b;->d(I)Z

    .line 470
    .line 471
    .line 472
    move-result v11

    .line 473
    aput-boolean v11, v5, v12

    .line 474
    .line 475
    iget-object v11, v1, LT6/e;->H:LV6/b;

    .line 476
    .line 477
    invoke-virtual {v11, v12}, LV6/b;->g(I)Z

    .line 478
    .line 479
    .line 480
    move-result v11

    .line 481
    aput-boolean v11, v6, v12

    .line 482
    .line 483
    iget-object v11, v1, LT6/e;->H:LV6/b;

    .line 484
    .line 485
    invoke-virtual {v11, v12}, LV6/b;->e(I)Z

    .line 486
    .line 487
    .line 488
    move-result v11

    .line 489
    aput-boolean v11, v10, v12

    .line 490
    .line 491
    iget-object v11, v1, LT6/e;->M:Ljava/util/HashMap;

    .line 492
    .line 493
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 494
    .line 495
    .line 496
    move-result-object v13

    .line 497
    invoke-virtual {v11, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 498
    .line 499
    .line 500
    move-result-object v11

    .line 501
    if-nez v11, :cond_c

    .line 502
    .line 503
    iget-object v11, v1, LT6/e;->M:Ljava/util/HashMap;

    .line 504
    .line 505
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 506
    .line 507
    .line 508
    move-result-object v13

    .line 509
    move/from16 v38, v7

    .line 510
    .line 511
    const/4 v7, 0x4

    .line 512
    new-array v7, v7, [D

    .line 513
    .line 514
    invoke-virtual {v11, v13, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 515
    .line 516
    .line 517
    goto :goto_7

    .line 518
    :cond_c
    move/from16 v38, v7

    .line 519
    .line 520
    :goto_7
    add-int/lit8 v12, v12, 0x1

    .line 521
    .line 522
    move/from16 v13, v36

    .line 523
    .line 524
    move-object/from16 v11, v37

    .line 525
    .line 526
    move/from16 v7, v38

    .line 527
    .line 528
    goto :goto_6

    .line 529
    :cond_d
    move/from16 v38, v7

    .line 530
    .line 531
    move-object/from16 v37, v11

    .line 532
    .line 533
    move/from16 v36, v13

    .line 534
    .line 535
    new-array v12, v4, [D

    .line 536
    .line 537
    new-array v13, v4, [D

    .line 538
    .line 539
    const/4 v7, 0x0

    .line 540
    :goto_8
    if-ge v7, v3, :cond_13

    .line 541
    .line 542
    iget-object v11, v1, LT6/e;->G:LU6/c;

    .line 543
    .line 544
    invoke-virtual {v11, v7}, LU6/c;->b(I)LU6/d;

    .line 545
    .line 546
    .line 547
    move-result-object v11

    .line 548
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 549
    .line 550
    .line 551
    invoke-virtual {v11}, LU6/d;->b()I

    .line 552
    .line 553
    .line 554
    move-result v39

    .line 555
    if-nez v39, :cond_e

    .line 556
    .line 557
    move-object/from16 v40, v2

    .line 558
    .line 559
    move/from16 v39, v3

    .line 560
    .line 561
    move-object/from16 v41, v12

    .line 562
    .line 563
    move-object/from16 v42, v13

    .line 564
    .line 565
    const/16 v28, 0x2

    .line 566
    .line 567
    goto/16 :goto_b

    .line 568
    .line 569
    :cond_e
    const/16 v24, 0x0

    .line 570
    .line 571
    aget-boolean v39, v2, v24

    .line 572
    .line 573
    move-object/from16 v40, v2

    .line 574
    .line 575
    if-nez v39, :cond_f

    .line 576
    .line 577
    move/from16 v39, v3

    .line 578
    .line 579
    iget-wide v2, v11, LU6/d;->I:D

    .line 580
    .line 581
    move-object/from16 v41, v12

    .line 582
    .line 583
    move-object/from16 v42, v13

    .line 584
    .line 585
    aget-wide v12, v9, v24

    .line 586
    .line 587
    invoke-static {v12, v13, v2, v3}, Ljava/lang/Math;->min(DD)D

    .line 588
    .line 589
    .line 590
    move-result-wide v2

    .line 591
    aput-wide v2, v9, v24

    .line 592
    .line 593
    iget-object v2, v1, LT6/e;->M:Ljava/util/HashMap;

    .line 594
    .line 595
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 596
    .line 597
    .line 598
    move-result-object v3

    .line 599
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 600
    .line 601
    .line 602
    move-result-object v2

    .line 603
    check-cast v2, [D

    .line 604
    .line 605
    aget-wide v12, v9, v24

    .line 606
    .line 607
    aput-wide v12, v2, v24

    .line 608
    .line 609
    goto :goto_9

    .line 610
    :cond_f
    move/from16 v39, v3

    .line 611
    .line 612
    move-object/from16 v41, v12

    .line 613
    .line 614
    move-object/from16 v42, v13

    .line 615
    .line 616
    :goto_9
    aget-boolean v2, v5, v24

    .line 617
    .line 618
    if-nez v2, :cond_10

    .line 619
    .line 620
    iget-wide v2, v11, LU6/d;->J:D

    .line 621
    .line 622
    aget-wide v12, v0, v24

    .line 623
    .line 624
    invoke-static {v12, v13, v2, v3}, Ljava/lang/Math;->max(DD)D

    .line 625
    .line 626
    .line 627
    move-result-wide v2

    .line 628
    aput-wide v2, v0, v24

    .line 629
    .line 630
    iget-object v2, v1, LT6/e;->M:Ljava/util/HashMap;

    .line 631
    .line 632
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 633
    .line 634
    .line 635
    move-result-object v3

    .line 636
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 637
    .line 638
    .line 639
    move-result-object v2

    .line 640
    check-cast v2, [D

    .line 641
    .line 642
    aget-wide v12, v0, v24

    .line 643
    .line 644
    const/4 v3, 0x1

    .line 645
    aput-wide v12, v2, v3

    .line 646
    .line 647
    :cond_10
    aget-boolean v2, v6, v24

    .line 648
    .line 649
    if-nez v2, :cond_11

    .line 650
    .line 651
    iget-wide v2, v11, LU6/d;->K:D

    .line 652
    .line 653
    aget-wide v12, v14, v24

    .line 654
    .line 655
    double-to-float v2, v2

    .line 656
    float-to-double v2, v2

    .line 657
    invoke-static {v12, v13, v2, v3}, Ljava/lang/Math;->min(DD)D

    .line 658
    .line 659
    .line 660
    move-result-wide v2

    .line 661
    aput-wide v2, v14, v24

    .line 662
    .line 663
    iget-object v2, v1, LT6/e;->M:Ljava/util/HashMap;

    .line 664
    .line 665
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 666
    .line 667
    .line 668
    move-result-object v3

    .line 669
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 670
    .line 671
    .line 672
    move-result-object v2

    .line 673
    check-cast v2, [D

    .line 674
    .line 675
    aget-wide v12, v14, v24

    .line 676
    .line 677
    const/16 v28, 0x2

    .line 678
    .line 679
    aput-wide v12, v2, v28

    .line 680
    .line 681
    goto :goto_a

    .line 682
    :cond_11
    const/16 v28, 0x2

    .line 683
    .line 684
    :goto_a
    aget-boolean v2, v10, v24

    .line 685
    .line 686
    if-nez v2, :cond_12

    .line 687
    .line 688
    iget-wide v2, v11, LU6/d;->L:D

    .line 689
    .line 690
    aget-wide v11, v15, v24

    .line 691
    .line 692
    double-to-float v2, v2

    .line 693
    float-to-double v2, v2

    .line 694
    invoke-static {v11, v12, v2, v3}, Ljava/lang/Math;->max(DD)D

    .line 695
    .line 696
    .line 697
    move-result-wide v2

    .line 698
    aput-wide v2, v15, v24

    .line 699
    .line 700
    iget-object v2, v1, LT6/e;->M:Ljava/util/HashMap;

    .line 701
    .line 702
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 703
    .line 704
    .line 705
    move-result-object v3

    .line 706
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 707
    .line 708
    .line 709
    move-result-object v2

    .line 710
    check-cast v2, [D

    .line 711
    .line 712
    aget-wide v11, v15, v24

    .line 713
    .line 714
    aput-wide v11, v2, v19

    .line 715
    .line 716
    :cond_12
    :goto_b
    add-int/lit8 v7, v7, 0x1

    .line 717
    .line 718
    move/from16 v3, v39

    .line 719
    .line 720
    move-object/from16 v2, v40

    .line 721
    .line 722
    move-object/from16 v12, v41

    .line 723
    .line 724
    move-object/from16 v13, v42

    .line 725
    .line 726
    goto/16 :goto_8

    .line 727
    .line 728
    :cond_13
    move/from16 v39, v3

    .line 729
    .line 730
    move-object/from16 v41, v12

    .line 731
    .line 732
    move-object/from16 v42, v13

    .line 733
    .line 734
    const/16 v28, 0x2

    .line 735
    .line 736
    const/4 v2, 0x0

    .line 737
    :goto_c
    if-ge v2, v4, :cond_17

    .line 738
    .line 739
    aget-wide v5, v0, v2

    .line 740
    .line 741
    aget-wide v10, v9, v2

    .line 742
    .line 743
    sub-double/2addr v5, v10

    .line 744
    const-wide/16 v10, 0x0

    .line 745
    .line 746
    cmpl-double v3, v5, v10

    .line 747
    .line 748
    move/from16 v12, v31

    .line 749
    .line 750
    if-eqz v3, :cond_14

    .line 751
    .line 752
    sub-int v3, v8, v12

    .line 753
    .line 754
    int-to-double v10, v3

    .line 755
    div-double/2addr v10, v5

    .line 756
    aput-wide v10, v41, v2

    .line 757
    .line 758
    :cond_14
    aget-wide v5, v15, v2

    .line 759
    .line 760
    aget-wide v10, v14, v2

    .line 761
    .line 762
    sub-double/2addr v5, v10

    .line 763
    const-wide/16 v10, 0x0

    .line 764
    .line 765
    cmpl-double v3, v5, v10

    .line 766
    .line 767
    move/from16 v13, v30

    .line 768
    .line 769
    if-eqz v3, :cond_15

    .line 770
    .line 771
    sub-int v7, v38, v13

    .line 772
    .line 773
    int-to-double v10, v7

    .line 774
    div-double/2addr v10, v5

    .line 775
    double-to-float v3, v10

    .line 776
    float-to-double v5, v3

    .line 777
    aput-wide v5, v42, v2

    .line 778
    .line 779
    :cond_15
    if-lez v2, :cond_16

    .line 780
    .line 781
    const/4 v3, 0x0

    .line 782
    aget-wide v5, v41, v3

    .line 783
    .line 784
    aput-wide v5, v41, v2

    .line 785
    .line 786
    aget-wide v5, v9, v3

    .line 787
    .line 788
    aput-wide v5, v9, v2

    .line 789
    .line 790
    aget-wide v5, v0, v3

    .line 791
    .line 792
    aput-wide v5, v0, v2

    .line 793
    .line 794
    :cond_16
    add-int/lit8 v2, v2, 0x1

    .line 795
    .line 796
    move/from16 v31, v12

    .line 797
    .line 798
    move/from16 v30, v13

    .line 799
    .line 800
    goto :goto_c

    .line 801
    :cond_17
    move/from16 v13, v30

    .line 802
    .line 803
    move/from16 v12, v31

    .line 804
    .line 805
    move/from16 v5, v39

    .line 806
    .line 807
    const/4 v2, 0x0

    .line 808
    const/4 v3, 0x0

    .line 809
    :goto_d
    if-ge v2, v5, :cond_19

    .line 810
    .line 811
    iget-object v6, v1, LT6/e;->G:LU6/c;

    .line 812
    .line 813
    invoke-virtual {v6, v2}, LU6/c;->b(I)LU6/d;

    .line 814
    .line 815
    .line 816
    move-result-object v6

    .line 817
    invoke-virtual {v6}, LU6/d;->b()I

    .line 818
    .line 819
    .line 820
    move-result v6

    .line 821
    if-nez v6, :cond_18

    .line 822
    .line 823
    goto :goto_e

    .line 824
    :cond_18
    const/4 v3, 0x1

    .line 825
    :goto_e
    add-int/lit8 v2, v2, 0x1

    .line 826
    .line 827
    goto :goto_d

    .line 828
    :cond_19
    iget-object v2, v1, LT6/e;->H:LV6/b;

    .line 829
    .line 830
    iget-boolean v6, v2, LV6/a;->K:Z

    .line 831
    .line 832
    if-nez v6, :cond_1a

    .line 833
    .line 834
    iget-boolean v6, v2, LV6/a;->L:Z

    .line 835
    .line 836
    if-eqz v6, :cond_1b

    .line 837
    .line 838
    :cond_1a
    if-eqz v3, :cond_1b

    .line 839
    .line 840
    const/16 v30, 0x1

    .line 841
    .line 842
    goto :goto_f

    .line 843
    :cond_1b
    const/16 v30, 0x0

    .line 844
    .line 845
    :goto_f
    iget-boolean v10, v2, LV6/a;->R:Z

    .line 846
    .line 847
    iget-boolean v11, v2, LV6/a;->S:Z

    .line 848
    .line 849
    if-nez v10, :cond_1c

    .line 850
    .line 851
    if-eqz v11, :cond_1d

    .line 852
    .line 853
    :cond_1c
    const/4 v3, 0x0

    .line 854
    goto :goto_10

    .line 855
    :cond_1d
    move/from16 v26, v4

    .line 856
    .line 857
    move/from16 v39, v5

    .line 858
    .line 859
    move/from16 v32, v8

    .line 860
    .line 861
    move/from16 v52, v10

    .line 862
    .line 863
    move/from16 v53, v11

    .line 864
    .line 865
    move-object/from16 v56, v15

    .line 866
    .line 867
    move/from16 v51, v27

    .line 868
    .line 869
    move/from16 v50, v29

    .line 870
    .line 871
    move/from16 v49, v33

    .line 872
    .line 873
    move/from16 v31, v35

    .line 874
    .line 875
    move/from16 v55, v36

    .line 876
    .line 877
    move-object/from16 v28, v37

    .line 878
    .line 879
    move-object/from16 v36, v41

    .line 880
    .line 881
    move-object/from16 v37, v42

    .line 882
    .line 883
    move-object/from16 v29, v0

    .line 884
    .line 885
    move-object/from16 v27, v9

    .line 886
    .line 887
    move/from16 v33, v12

    .line 888
    .line 889
    move/from16 v35, v13

    .line 890
    .line 891
    move/from16 v41, v22

    .line 892
    .line 893
    move-object/from16 v22, v14

    .line 894
    .line 895
    goto/16 :goto_12

    .line 896
    .line 897
    :goto_10
    aget-wide v6, v9, v3

    .line 898
    .line 899
    move/from16 v31, v10

    .line 900
    .line 901
    move/from16 v39, v11

    .line 902
    .line 903
    aget-wide v10, v0, v3

    .line 904
    .line 905
    iget v2, v2, LV6/b;->h0:I

    .line 906
    .line 907
    invoke-static {v6, v7, v10, v11, v2}, LX6/b;->a(DDI)Ljava/util/ArrayList;

    .line 908
    .line 909
    .line 910
    move-result-object v2

    .line 911
    invoke-static {v2}, LT6/e;->s(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 912
    .line 913
    .line 914
    move-result-object v3

    .line 915
    invoke-virtual {v1, v14, v15, v4}, LT6/e;->t([D[DI)Ljava/util/HashMap;

    .line 916
    .line 917
    .line 918
    move-result-object v40

    .line 919
    iget-object v2, v1, LT6/e;->H:LV6/b;

    .line 920
    .line 921
    iget-boolean v10, v2, LV6/a;->K:Z

    .line 922
    .line 923
    iget-boolean v11, v2, LV6/a;->L:Z

    .line 924
    .line 925
    const/4 v6, 0x0

    .line 926
    iput-boolean v6, v2, LV6/a;->K:Z

    .line 927
    .line 928
    iput-boolean v6, v2, LV6/a;->L:Z

    .line 929
    .line 930
    iget-object v2, v1, LT6/e;->N:Landroid/graphics/Paint;

    .line 931
    .line 932
    if-nez v2, :cond_1e

    .line 933
    .line 934
    new-instance v2, Landroid/graphics/Paint;

    .line 935
    .line 936
    const/4 v7, 0x1

    .line 937
    invoke-direct {v2, v7}, Landroid/graphics/Paint;-><init>(I)V

    .line 938
    .line 939
    .line 940
    iput-object v2, v1, LT6/e;->N:Landroid/graphics/Paint;

    .line 941
    .line 942
    goto :goto_11

    .line 943
    :cond_1e
    const/4 v7, 0x1

    .line 944
    :goto_11
    iget-object v2, v1, LT6/e;->H:LV6/b;

    .line 945
    .line 946
    invoke-virtual {v2}, LV6/b;->a()[Ljava/lang/Double;

    .line 947
    .line 948
    .line 949
    move-result-object v32

    .line 950
    aget-wide v43, v41, v6

    .line 951
    .line 952
    aget-wide v45, v9, v6

    .line 953
    .line 954
    aget-wide v47, v0, v6

    .line 955
    .line 956
    const/4 v6, 0x0

    .line 957
    move-object v2, v1

    .line 958
    move/from16 v26, v4

    .line 959
    .line 960
    move/from16 v49, v33

    .line 961
    .line 962
    move-object/from16 v4, v32

    .line 963
    .line 964
    move/from16 v50, v29

    .line 965
    .line 966
    move-object/from16 v29, v0

    .line 967
    .line 968
    move v0, v5

    .line 969
    move-object/from16 v5, p1

    .line 970
    .line 971
    move/from16 v51, v27

    .line 972
    .line 973
    move-object/from16 v6, v37

    .line 974
    .line 975
    const/16 v27, 0x1

    .line 976
    .line 977
    move v7, v12

    .line 978
    move/from16 v32, v8

    .line 979
    .line 980
    move v8, v13

    .line 981
    move-object/from16 v27, v9

    .line 982
    .line 983
    move/from16 v9, v38

    .line 984
    .line 985
    move/from16 v54, v11

    .line 986
    .line 987
    move/from16 v52, v31

    .line 988
    .line 989
    move-object/from16 v28, v37

    .line 990
    .line 991
    move/from16 v53, v39

    .line 992
    .line 993
    move/from16 v39, v0

    .line 994
    .line 995
    move v0, v10

    .line 996
    move-wide/from16 v10, v43

    .line 997
    .line 998
    move/from16 v33, v12

    .line 999
    .line 1000
    move/from16 v31, v35

    .line 1001
    .line 1002
    move/from16 v55, v36

    .line 1003
    .line 1004
    move-object/from16 v36, v41

    .line 1005
    .line 1006
    move-object/from16 v37, v42

    .line 1007
    .line 1008
    move/from16 v35, v13

    .line 1009
    .line 1010
    move-wide/from16 v12, v45

    .line 1011
    .line 1012
    move-object/from16 v56, v15

    .line 1013
    .line 1014
    move/from16 v41, v22

    .line 1015
    .line 1016
    move-object/from16 v22, v14

    .line 1017
    .line 1018
    move-wide/from16 v14, v47

    .line 1019
    .line 1020
    invoke-virtual/range {v2 .. v15}, LT6/e;->o(Ljava/util/ArrayList;[Ljava/lang/Double;Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIDDD)V

    .line 1021
    .line 1022
    .line 1023
    move-object/from16 v3, v40

    .line 1024
    .line 1025
    move-object/from16 v4, p1

    .line 1026
    .line 1027
    move-object/from16 v5, v28

    .line 1028
    .line 1029
    move/from16 v6, v26

    .line 1030
    .line 1031
    move/from16 v7, v33

    .line 1032
    .line 1033
    move/from16 v8, v32

    .line 1034
    .line 1035
    move-object/from16 v10, v37

    .line 1036
    .line 1037
    move-object/from16 v11, v22

    .line 1038
    .line 1039
    invoke-virtual/range {v2 .. v11}, LT6/e;->p(Ljava/util/HashMap;Landroid/graphics/Canvas;Landroid/graphics/Paint;IIII[D[D)V

    .line 1040
    .line 1041
    .line 1042
    iget-object v2, v1, LT6/e;->H:LV6/b;

    .line 1043
    .line 1044
    iput-boolean v0, v2, LV6/a;->K:Z

    .line 1045
    .line 1046
    move/from16 v0, v54

    .line 1047
    .line 1048
    iput-boolean v0, v2, LV6/a;->L:Z

    .line 1049
    .line 1050
    :goto_12
    new-instance v0, Ljava/util/HashMap;

    .line 1051
    .line 1052
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1053
    .line 1054
    .line 1055
    iput-object v0, v1, LT6/e;->O:Ljava/util/HashMap;

    .line 1056
    .line 1057
    move/from16 v12, v39

    .line 1058
    .line 1059
    const/4 v0, 0x0

    .line 1060
    :goto_13
    if-ge v0, v12, :cond_2a

    .line 1061
    .line 1062
    iget-object v2, v1, LT6/e;->G:LU6/c;

    .line 1063
    .line 1064
    invoke-virtual {v2, v0}, LU6/c;->b(I)LU6/d;

    .line 1065
    .line 1066
    .line 1067
    move-result-object v13

    .line 1068
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1069
    .line 1070
    .line 1071
    invoke-virtual {v13}, LU6/d;->b()I

    .line 1072
    .line 1073
    .line 1074
    move-result v2

    .line 1075
    if-nez v2, :cond_1f

    .line 1076
    .line 1077
    move/from16 v45, v0

    .line 1078
    .line 1079
    move/from16 v40, v12

    .line 1080
    .line 1081
    move/from16 v14, v33

    .line 1082
    .line 1083
    move/from16 v60, v38

    .line 1084
    .line 1085
    move-object/from16 v33, v22

    .line 1086
    .line 1087
    move-object/from16 v22, v28

    .line 1088
    .line 1089
    move-object/from16 v28, v29

    .line 1090
    .line 1091
    goto/16 :goto_1e

    .line 1092
    .line 1093
    :cond_1f
    iget-object v2, v1, LT6/e;->H:LV6/b;

    .line 1094
    .line 1095
    iget-object v2, v2, LV6/a;->T:Ljava/util/ArrayList;

    .line 1096
    .line 1097
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1098
    .line 1099
    .line 1100
    move-result-object v2

    .line 1101
    move-object v14, v2

    .line 1102
    check-cast v14, LV6/d;

    .line 1103
    .line 1104
    new-instance v15, Ljava/util/ArrayList;

    .line 1105
    .line 1106
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 1107
    .line 1108
    .line 1109
    new-instance v11, Ljava/util/ArrayList;

    .line 1110
    .line 1111
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 1112
    .line 1113
    .line 1114
    move/from16 v10, v38

    .line 1115
    .line 1116
    int-to-float v2, v10

    .line 1117
    int-to-double v8, v10

    .line 1118
    const/4 v3, 0x0

    .line 1119
    aget-wide v4, v37, v3

    .line 1120
    .line 1121
    move-object/from16 v6, v22

    .line 1122
    .line 1123
    aget-wide v38, v6, v3

    .line 1124
    .line 1125
    mul-double v4, v4, v38

    .line 1126
    .line 1127
    add-double/2addr v4, v8

    .line 1128
    double-to-float v3, v4

    .line 1129
    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    .line 1130
    .line 1131
    .line 1132
    move-result v22

    .line 1133
    new-instance v2, Ljava/util/LinkedList;

    .line 1134
    .line 1135
    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 1136
    .line 1137
    .line 1138
    iget-object v3, v1, LT6/e;->O:Ljava/util/HashMap;

    .line 1139
    .line 1140
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1141
    .line 1142
    .line 1143
    move-result-object v4

    .line 1144
    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1145
    .line 1146
    .line 1147
    monitor-enter v13

    .line 1148
    const/4 v3, 0x0

    .line 1149
    :try_start_0
    aget-wide v4, v27, v3

    .line 1150
    .line 1151
    aget-wide v38, v29, v3

    .line 1152
    .line 1153
    iget-boolean v7, v14, LV6/d;->I:Z

    .line 1154
    .line 1155
    move-object v3, v13

    .line 1156
    move/from16 v42, v7

    .line 1157
    .line 1158
    move/from16 v40, v12

    .line 1159
    .line 1160
    move-object v12, v6

    .line 1161
    move-wide/from16 v6, v38

    .line 1162
    .line 1163
    move-wide/from16 v38, v8

    .line 1164
    .line 1165
    move/from16 v8, v42

    .line 1166
    .line 1167
    invoke-virtual/range {v3 .. v8}, LU6/d;->c(DDZ)Ljava/util/SortedMap;

    .line 1168
    .line 1169
    .line 1170
    move-result-object v3

    .line 1171
    invoke-interface {v3}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    .line 1172
    .line 1173
    .line 1174
    move-result-object v3

    .line 1175
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 1176
    .line 1177
    .line 1178
    move-result-object v42

    .line 1179
    const/16 v43, -0x1

    .line 1180
    .line 1181
    const/16 v44, -0x1

    .line 1182
    .line 1183
    :goto_14
    invoke-interface/range {v42 .. v42}, Ljava/util/Iterator;->hasNext()Z

    .line 1184
    .line 1185
    .line 1186
    move-result v3

    .line 1187
    if-eqz v3, :cond_25

    .line 1188
    .line 1189
    invoke-interface/range {v42 .. v42}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1190
    .line 1191
    .line 1192
    move-result-object v3

    .line 1193
    check-cast v3, Ljava/util/Map$Entry;

    .line 1194
    .line 1195
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 1196
    .line 1197
    .line 1198
    move-result-object v4

    .line 1199
    check-cast v4, Ljava/lang/Double;

    .line 1200
    .line 1201
    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    .line 1202
    .line 1203
    .line 1204
    move-result-wide v5

    .line 1205
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 1206
    .line 1207
    .line 1208
    move-result-object v7

    .line 1209
    check-cast v7, Ljava/lang/Double;

    .line 1210
    .line 1211
    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    .line 1212
    .line 1213
    .line 1214
    move-result-wide v7

    .line 1215
    const-wide v45, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 1216
    .line 1217
    .line 1218
    .line 1219
    .line 1220
    if-gez v44, :cond_20

    .line 1221
    .line 1222
    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    .line 1223
    .line 1224
    .line 1225
    move-result v9

    .line 1226
    if-nez v9, :cond_20

    .line 1227
    .line 1228
    invoke-static {v7, v8}, Ljava/lang/Double;->isInfinite(D)Z

    .line 1229
    .line 1230
    .line 1231
    move-result v9

    .line 1232
    if-nez v9, :cond_20

    .line 1233
    .line 1234
    cmpl-double v9, v7, v45

    .line 1235
    .line 1236
    if-nez v9, :cond_21

    .line 1237
    .line 1238
    :cond_20
    move/from16 v47, v10

    .line 1239
    .line 1240
    const/4 v10, 0x0

    .line 1241
    goto :goto_15

    .line 1242
    :cond_21
    iget-object v9, v13, LU6/d;->H:LX6/a;

    .line 1243
    .line 1244
    iget-object v9, v9, LX6/a;->G:Ljava/util/ArrayList;

    .line 1245
    .line 1246
    move/from16 v47, v10

    .line 1247
    .line 1248
    const/4 v10, 0x0

    .line 1249
    invoke-static {v9, v4, v10}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    .line 1250
    .line 1251
    .line 1252
    move-result v4

    .line 1253
    move/from16 v44, v4

    .line 1254
    .line 1255
    :goto_15
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 1256
    .line 1257
    .line 1258
    move-result-object v4

    .line 1259
    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1260
    .line 1261
    .line 1262
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 1263
    .line 1264
    .line 1265
    move-result-object v3

    .line 1266
    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1267
    .line 1268
    .line 1269
    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    .line 1270
    .line 1271
    .line 1272
    move-result v3

    .line 1273
    if-nez v3, :cond_22

    .line 1274
    .line 1275
    invoke-static {v7, v8}, Ljava/lang/Double;->isInfinite(D)Z

    .line 1276
    .line 1277
    .line 1278
    move-result v3

    .line 1279
    if-nez v3, :cond_22

    .line 1280
    .line 1281
    cmpl-double v3, v7, v45

    .line 1282
    .line 1283
    if-nez v3, :cond_23

    .line 1284
    .line 1285
    :cond_22
    move/from16 v9, v33

    .line 1286
    .line 1287
    goto :goto_16

    .line 1288
    :cond_23
    move/from16 v9, v33

    .line 1289
    .line 1290
    int-to-double v3, v9

    .line 1291
    const/16 v24, 0x0

    .line 1292
    .line 1293
    aget-wide v45, v36, v24

    .line 1294
    .line 1295
    aget-wide v57, v27, v24

    .line 1296
    .line 1297
    sub-double v5, v5, v57

    .line 1298
    .line 1299
    mul-double v5, v5, v45

    .line 1300
    .line 1301
    add-double/2addr v5, v3

    .line 1302
    double-to-float v3, v5

    .line 1303
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 1304
    .line 1305
    .line 1306
    move-result-object v3

    .line 1307
    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1308
    .line 1309
    .line 1310
    aget-wide v3, v37, v24

    .line 1311
    .line 1312
    aget-wide v5, v12, v24

    .line 1313
    .line 1314
    sub-double/2addr v7, v5

    .line 1315
    mul-double v7, v7, v3

    .line 1316
    .line 1317
    sub-double v3, v38, v7

    .line 1318
    .line 1319
    double-to-float v3, v3

    .line 1320
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 1321
    .line 1322
    .line 1323
    move-result-object v3

    .line 1324
    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1325
    .line 1326
    .line 1327
    move/from16 v45, v0

    .line 1328
    .line 1329
    move/from16 v59, v9

    .line 1330
    .line 1331
    move-object v0, v11

    .line 1332
    move-object/from16 v33, v12

    .line 1333
    .line 1334
    move/from16 v60, v47

    .line 1335
    .line 1336
    move-object v12, v2

    .line 1337
    goto :goto_18

    .line 1338
    :catchall_0
    move-exception v0

    .line 1339
    goto/16 :goto_1f

    .line 1340
    .line 1341
    :goto_16
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    .line 1342
    .line 1343
    .line 1344
    move-result v3

    .line 1345
    if-lez v3, :cond_24

    .line 1346
    .line 1347
    move-object v8, v2

    .line 1348
    move-object v2, v1

    .line 1349
    move-object v3, v13

    .line 1350
    move-object/from16 v4, p1

    .line 1351
    .line 1352
    move-object/from16 v5, v28

    .line 1353
    .line 1354
    move-object v6, v15

    .line 1355
    move-object v7, v14

    .line 1356
    move-object/from16 v33, v12

    .line 1357
    .line 1358
    move-object v12, v8

    .line 1359
    move/from16 v8, v22

    .line 1360
    .line 1361
    move/from16 v59, v9

    .line 1362
    .line 1363
    move v9, v0

    .line 1364
    move/from16 v45, v0

    .line 1365
    .line 1366
    move-object v0, v10

    .line 1367
    move/from16 v60, v47

    .line 1368
    .line 1369
    move/from16 v10, v34

    .line 1370
    .line 1371
    move-object v0, v11

    .line 1372
    move/from16 v11, v44

    .line 1373
    .line 1374
    invoke-virtual/range {v2 .. v11}, LT6/e;->l(LU6/d;Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/util/ArrayList;LV6/d;FIII)V

    .line 1375
    .line 1376
    .line 1377
    invoke-virtual {v1, v15, v0}, LT6/e;->k(Ljava/util/ArrayList;Ljava/util/ArrayList;)[LT6/b;

    .line 1378
    .line 1379
    .line 1380
    move-result-object v2

    .line 1381
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 1382
    .line 1383
    .line 1384
    move-result-object v2

    .line 1385
    invoke-virtual {v12, v2}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 1386
    .line 1387
    .line 1388
    invoke-virtual {v15}, Ljava/util/ArrayList;->clear()V

    .line 1389
    .line 1390
    .line 1391
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1392
    .line 1393
    .line 1394
    const/4 v2, 0x0

    .line 1395
    const/16 v44, -0x1

    .line 1396
    .line 1397
    goto :goto_17

    .line 1398
    :cond_24
    move/from16 v45, v0

    .line 1399
    .line 1400
    move/from16 v59, v9

    .line 1401
    .line 1402
    move-object v0, v11

    .line 1403
    move-object/from16 v33, v12

    .line 1404
    .line 1405
    move/from16 v60, v47

    .line 1406
    .line 1407
    move-object v12, v2

    .line 1408
    move-object v2, v10

    .line 1409
    :goto_17
    invoke-virtual {v12, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1410
    .line 1411
    .line 1412
    :goto_18
    move-object v11, v0

    .line 1413
    move-object v2, v12

    .line 1414
    move-object/from16 v12, v33

    .line 1415
    .line 1416
    move/from16 v0, v45

    .line 1417
    .line 1418
    move/from16 v33, v59

    .line 1419
    .line 1420
    move/from16 v10, v60

    .line 1421
    .line 1422
    goto/16 :goto_14

    .line 1423
    .line 1424
    :cond_25
    move/from16 v45, v0

    .line 1425
    .line 1426
    move/from16 v60, v10

    .line 1427
    .line 1428
    move-object v0, v11

    .line 1429
    move/from16 v59, v33

    .line 1430
    .line 1431
    move-object/from16 v33, v12

    .line 1432
    .line 1433
    move-object v12, v2

    .line 1434
    iget-object v2, v13, LU6/d;->M:Ljava/util/ArrayList;

    .line 1435
    .line 1436
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 1437
    .line 1438
    .line 1439
    move-result v2

    .line 1440
    if-lez v2, :cond_28

    .line 1441
    .line 1442
    iget v3, v14, LV6/d;->U:I

    .line 1443
    .line 1444
    move-object/from16 v11, v28

    .line 1445
    .line 1446
    invoke-virtual {v11, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 1447
    .line 1448
    .line 1449
    iget v3, v14, LV6/d;->S:F

    .line 1450
    .line 1451
    invoke-virtual {v11, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1452
    .line 1453
    .line 1454
    iget-object v3, v14, LV6/d;->T:Landroid/graphics/Paint$Align;

    .line 1455
    .line 1456
    invoke-virtual {v11, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1457
    .line 1458
    .line 1459
    new-instance v3, Landroid/graphics/Rect;

    .line 1460
    .line 1461
    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 1462
    .line 1463
    .line 1464
    const/4 v9, 0x0

    .line 1465
    :goto_19
    if-ge v9, v2, :cond_27

    .line 1466
    .line 1467
    move/from16 v10, v59

    .line 1468
    .line 1469
    int-to-double v4, v10

    .line 1470
    const/4 v6, 0x0

    .line 1471
    aget-wide v7, v36, v6

    .line 1472
    .line 1473
    iget-object v6, v13, LU6/d;->N:LX6/a;

    .line 1474
    .line 1475
    iget-object v6, v6, LX6/a;->G:Ljava/util/ArrayList;

    .line 1476
    .line 1477
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1478
    .line 1479
    .line 1480
    move-result-object v6

    .line 1481
    check-cast v6, Ljava/lang/Double;

    .line 1482
    .line 1483
    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    .line 1484
    .line 1485
    .line 1486
    move-result-wide v42

    .line 1487
    const/4 v6, 0x0

    .line 1488
    aget-wide v46, v27, v6

    .line 1489
    .line 1490
    sub-double v42, v42, v46

    .line 1491
    .line 1492
    mul-double v42, v42, v7

    .line 1493
    .line 1494
    add-double v4, v42, v4

    .line 1495
    .line 1496
    double-to-float v4, v4

    .line 1497
    aget-wide v7, v37, v6

    .line 1498
    .line 1499
    iget-object v5, v13, LU6/d;->N:LX6/a;

    .line 1500
    .line 1501
    iget-object v6, v5, LX6/a;->G:Ljava/util/ArrayList;

    .line 1502
    .line 1503
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1504
    .line 1505
    .line 1506
    move-result-object v6

    .line 1507
    invoke-virtual {v5, v6}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1508
    .line 1509
    .line 1510
    move-result-object v5

    .line 1511
    check-cast v5, Ljava/lang/Double;

    .line 1512
    .line 1513
    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    .line 1514
    .line 1515
    .line 1516
    move-result-wide v5

    .line 1517
    const/16 v24, 0x0

    .line 1518
    .line 1519
    aget-wide v42, v33, v24

    .line 1520
    .line 1521
    sub-double v5, v5, v42

    .line 1522
    .line 1523
    mul-double v5, v5, v7

    .line 1524
    .line 1525
    sub-double v5, v38, v5

    .line 1526
    .line 1527
    double-to-float v5, v5

    .line 1528
    iget-object v6, v13, LU6/d;->M:Ljava/util/ArrayList;

    .line 1529
    .line 1530
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1531
    .line 1532
    .line 1533
    move-result-object v6

    .line 1534
    check-cast v6, Ljava/lang/String;

    .line 1535
    .line 1536
    iget-object v7, v13, LU6/d;->M:Ljava/util/ArrayList;

    .line 1537
    .line 1538
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1539
    .line 1540
    .line 1541
    move-result-object v7

    .line 1542
    check-cast v7, Ljava/lang/String;

    .line 1543
    .line 1544
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    .line 1545
    .line 1546
    .line 1547
    move-result v7

    .line 1548
    const/4 v8, 0x0

    .line 1549
    invoke-virtual {v11, v6, v8, v7, v3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 1550
    .line 1551
    .line 1552
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    .line 1553
    .line 1554
    .line 1555
    move-result v6

    .line 1556
    int-to-float v6, v6

    .line 1557
    add-float/2addr v6, v4

    .line 1558
    cmpg-float v6, v4, v6

    .line 1559
    .line 1560
    if-gez v6, :cond_26

    .line 1561
    .line 1562
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    .line 1563
    .line 1564
    .line 1565
    move-result v6

    .line 1566
    int-to-float v6, v6

    .line 1567
    cmpg-float v6, v5, v6

    .line 1568
    .line 1569
    if-gez v6, :cond_26

    .line 1570
    .line 1571
    iget-object v6, v13, LU6/d;->M:Ljava/util/ArrayList;

    .line 1572
    .line 1573
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1574
    .line 1575
    .line 1576
    move-result-object v6

    .line 1577
    check-cast v6, Ljava/lang/String;

    .line 1578
    .line 1579
    move-object/from16 v8, p1

    .line 1580
    .line 1581
    move-object/from16 v28, v29

    .line 1582
    .line 1583
    invoke-static {v8, v6, v4, v5, v11}, LT6/a;->g(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1584
    .line 1585
    .line 1586
    goto :goto_1a

    .line 1587
    :cond_26
    move-object/from16 v8, p1

    .line 1588
    .line 1589
    move-object/from16 v28, v29

    .line 1590
    .line 1591
    :goto_1a
    add-int/lit8 v9, v9, 0x1

    .line 1592
    .line 1593
    move/from16 v59, v10

    .line 1594
    .line 1595
    move-object/from16 v29, v28

    .line 1596
    .line 1597
    goto/16 :goto_19

    .line 1598
    .line 1599
    :cond_27
    move-object/from16 v8, p1

    .line 1600
    .line 1601
    :goto_1b
    move-object/from16 v28, v29

    .line 1602
    .line 1603
    move/from16 v10, v59

    .line 1604
    .line 1605
    goto :goto_1c

    .line 1606
    :cond_28
    move-object/from16 v8, p1

    .line 1607
    .line 1608
    move-object/from16 v11, v28

    .line 1609
    .line 1610
    goto :goto_1b

    .line 1611
    :goto_1c
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    .line 1612
    .line 1613
    .line 1614
    move-result v2

    .line 1615
    if-lez v2, :cond_29

    .line 1616
    .line 1617
    move-object v2, v1

    .line 1618
    move-object v3, v13

    .line 1619
    move-object/from16 v4, p1

    .line 1620
    .line 1621
    move-object v5, v11

    .line 1622
    move-object v6, v15

    .line 1623
    move-object v7, v14

    .line 1624
    move-object v14, v8

    .line 1625
    move/from16 v8, v22

    .line 1626
    .line 1627
    move/from16 v9, v45

    .line 1628
    .line 1629
    move v14, v10

    .line 1630
    move/from16 v10, v34

    .line 1631
    .line 1632
    move-object/from16 v22, v11

    .line 1633
    .line 1634
    move/from16 v11, v44

    .line 1635
    .line 1636
    invoke-virtual/range {v2 .. v11}, LT6/e;->l(LU6/d;Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/util/ArrayList;LV6/d;FIII)V

    .line 1637
    .line 1638
    .line 1639
    invoke-virtual {v1, v15, v0}, LT6/e;->k(Ljava/util/ArrayList;Ljava/util/ArrayList;)[LT6/b;

    .line 1640
    .line 1641
    .line 1642
    move-result-object v0

    .line 1643
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 1644
    .line 1645
    .line 1646
    move-result-object v0

    .line 1647
    invoke-virtual {v12, v0}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 1648
    .line 1649
    .line 1650
    goto :goto_1d

    .line 1651
    :cond_29
    move v14, v10

    .line 1652
    move-object/from16 v22, v11

    .line 1653
    .line 1654
    :goto_1d
    monitor-exit v13

    .line 1655
    :goto_1e
    add-int/lit8 v0, v45, 0x1

    .line 1656
    .line 1657
    move-object/from16 v29, v28

    .line 1658
    .line 1659
    move/from16 v12, v40

    .line 1660
    .line 1661
    move/from16 v38, v60

    .line 1662
    .line 1663
    move-object/from16 v28, v22

    .line 1664
    .line 1665
    move-object/from16 v22, v33

    .line 1666
    .line 1667
    move/from16 v33, v14

    .line 1668
    .line 1669
    goto/16 :goto_13

    .line 1670
    .line 1671
    :goto_1f
    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1672
    throw v0

    .line 1673
    :cond_2a
    move/from16 v14, v33

    .line 1674
    .line 1675
    move/from16 v60, v38

    .line 1676
    .line 1677
    move-object/from16 v33, v22

    .line 1678
    .line 1679
    move-object/from16 v22, v28

    .line 1680
    .line 1681
    move-object/from16 v28, v29

    .line 1682
    .line 1683
    iget-object v2, v1, LT6/e;->H:LV6/b;

    .line 1684
    .line 1685
    move/from16 v0, v55

    .line 1686
    .line 1687
    move/from16 v15, v60

    .line 1688
    .line 1689
    sub-int v7, v0, v15

    .line 1690
    .line 1691
    iget v10, v2, LV6/b;->p0:I

    .line 1692
    .line 1693
    const/4 v9, 0x1

    .line 1694
    move-object/from16 v3, p1

    .line 1695
    .line 1696
    move/from16 v4, v25

    .line 1697
    .line 1698
    move v5, v15

    .line 1699
    move/from16 v6, v31

    .line 1700
    .line 1701
    move-object/from16 v8, v22

    .line 1702
    .line 1703
    invoke-static/range {v2 .. v10}, LT6/a;->b(LV6/b;Landroid/graphics/Canvas;IIIILandroid/graphics/Paint;ZI)V

    .line 1704
    .line 1705
    .line 1706
    iget-object v2, v1, LT6/e;->H:LV6/b;

    .line 1707
    .line 1708
    const/4 v3, 0x0

    .line 1709
    aget v7, v21, v3

    .line 1710
    .line 1711
    iget v10, v2, LV6/b;->p0:I

    .line 1712
    .line 1713
    const/4 v9, 0x1

    .line 1714
    move-object/from16 v3, p1

    .line 1715
    .line 1716
    move/from16 v4, v25

    .line 1717
    .line 1718
    move/from16 v5, v41

    .line 1719
    .line 1720
    move/from16 v6, v31

    .line 1721
    .line 1722
    move-object/from16 v8, v22

    .line 1723
    .line 1724
    invoke-static/range {v2 .. v10}, LT6/a;->b(LV6/b;Landroid/graphics/Canvas;IIIILandroid/graphics/Paint;ZI)V

    .line 1725
    .line 1726
    .line 1727
    move/from16 v13, v34

    .line 1728
    .line 1729
    const/4 v12, 0x1

    .line 1730
    if-ne v13, v12, :cond_2c

    .line 1731
    .line 1732
    iget-object v2, v1, LT6/e;->H:LV6/b;

    .line 1733
    .line 1734
    move/from16 v11, v25

    .line 1735
    .line 1736
    sub-int v6, v14, v11

    .line 1737
    .line 1738
    move/from16 v10, v41

    .line 1739
    .line 1740
    sub-int v25, v0, v10

    .line 1741
    .line 1742
    iget v9, v2, LV6/b;->p0:I

    .line 1743
    .line 1744
    const/16 v29, 0x1

    .line 1745
    .line 1746
    move-object/from16 v3, p1

    .line 1747
    .line 1748
    move v4, v11

    .line 1749
    move v5, v10

    .line 1750
    move/from16 v7, v25

    .line 1751
    .line 1752
    move-object/from16 v8, v22

    .line 1753
    .line 1754
    move/from16 v34, v9

    .line 1755
    .line 1756
    move/from16 v9, v29

    .line 1757
    .line 1758
    move/from16 v41, v10

    .line 1759
    .line 1760
    move/from16 v10, v34

    .line 1761
    .line 1762
    invoke-static/range {v2 .. v10}, LT6/a;->b(LV6/b;Landroid/graphics/Canvas;IIIILandroid/graphics/Paint;ZI)V

    .line 1763
    .line 1764
    .line 1765
    iget-object v2, v1, LT6/e;->H:LV6/b;

    .line 1766
    .line 1767
    aget v6, v21, v19

    .line 1768
    .line 1769
    iget v10, v2, LV6/b;->p0:I

    .line 1770
    .line 1771
    const/4 v9, 0x1

    .line 1772
    move-object/from16 v3, p1

    .line 1773
    .line 1774
    move/from16 v4, v32

    .line 1775
    .line 1776
    move/from16 v5, v41

    .line 1777
    .line 1778
    move/from16 v7, v25

    .line 1779
    .line 1780
    move-object/from16 v8, v22

    .line 1781
    .line 1782
    invoke-static/range {v2 .. v10}, LT6/a;->b(LV6/b;Landroid/graphics/Canvas;IIIILandroid/graphics/Paint;ZI)V

    .line 1783
    .line 1784
    .line 1785
    :cond_2b
    move/from16 v55, v0

    .line 1786
    .line 1787
    move/from16 v0, v31

    .line 1788
    .line 1789
    goto :goto_20

    .line 1790
    :cond_2c
    move/from16 v11, v25

    .line 1791
    .line 1792
    const/4 v10, 0x2

    .line 1793
    if-ne v13, v10, :cond_2b

    .line 1794
    .line 1795
    iget-object v2, v1, LT6/e;->H:LV6/b;

    .line 1796
    .line 1797
    move/from16 v9, v31

    .line 1798
    .line 1799
    move/from16 v8, v32

    .line 1800
    .line 1801
    sub-int v6, v9, v8

    .line 1802
    .line 1803
    move/from16 v7, v41

    .line 1804
    .line 1805
    sub-int v21, v0, v7

    .line 1806
    .line 1807
    iget v5, v2, LV6/b;->p0:I

    .line 1808
    .line 1809
    const/16 v25, 0x1

    .line 1810
    .line 1811
    move-object/from16 v3, p1

    .line 1812
    .line 1813
    move v4, v8

    .line 1814
    move/from16 v29, v5

    .line 1815
    .line 1816
    move v5, v7

    .line 1817
    move/from16 v41, v7

    .line 1818
    .line 1819
    move/from16 v7, v21

    .line 1820
    .line 1821
    move/from16 v32, v8

    .line 1822
    .line 1823
    move-object/from16 v8, v22

    .line 1824
    .line 1825
    move/from16 v55, v0

    .line 1826
    .line 1827
    move v0, v9

    .line 1828
    move/from16 v9, v25

    .line 1829
    .line 1830
    move/from16 v10, v29

    .line 1831
    .line 1832
    invoke-static/range {v2 .. v10}, LT6/a;->b(LV6/b;Landroid/graphics/Canvas;IIIILandroid/graphics/Paint;ZI)V

    .line 1833
    .line 1834
    .line 1835
    iget-object v2, v1, LT6/e;->H:LV6/b;

    .line 1836
    .line 1837
    sub-int v6, v14, v11

    .line 1838
    .line 1839
    iget v10, v2, LV6/b;->p0:I

    .line 1840
    .line 1841
    const/4 v9, 0x1

    .line 1842
    move-object/from16 v3, p1

    .line 1843
    .line 1844
    move v4, v11

    .line 1845
    move/from16 v5, v41

    .line 1846
    .line 1847
    move/from16 v7, v21

    .line 1848
    .line 1849
    move-object/from16 v8, v22

    .line 1850
    .line 1851
    invoke-static/range {v2 .. v10}, LT6/a;->b(LV6/b;Landroid/graphics/Canvas;IIIILandroid/graphics/Paint;ZI)V

    .line 1852
    .line 1853
    .line 1854
    :goto_20
    iget-object v2, v1, LT6/e;->H:LV6/b;

    .line 1855
    .line 1856
    iget-boolean v10, v2, LV6/a;->M:Z

    .line 1857
    .line 1858
    const/4 v9, 0x0

    .line 1859
    if-eqz v30, :cond_3c

    .line 1860
    .line 1861
    const/4 v3, 0x0

    .line 1862
    aget-wide v4, v27, v3

    .line 1863
    .line 1864
    aget-wide v6, v28, v3

    .line 1865
    .line 1866
    iget v2, v2, LV6/b;->h0:I

    .line 1867
    .line 1868
    invoke-static {v4, v5, v6, v7, v2}, LX6/b;->a(DDI)Ljava/util/ArrayList;

    .line 1869
    .line 1870
    .line 1871
    move-result-object v2

    .line 1872
    invoke-static {v2}, LT6/e;->s(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 1873
    .line 1874
    .line 1875
    move-result-object v3

    .line 1876
    move/from16 v8, v26

    .line 1877
    .line 1878
    move-object/from16 v7, v33

    .line 1879
    .line 1880
    move-object/from16 v6, v56

    .line 1881
    .line 1882
    invoke-virtual {v1, v7, v6, v8}, LT6/e;->t([D[DI)Ljava/util/HashMap;

    .line 1883
    .line 1884
    .line 1885
    move-result-object v21

    .line 1886
    if-eqz v30, :cond_2d

    .line 1887
    .line 1888
    iget-object v2, v1, LT6/e;->H:LV6/b;

    .line 1889
    .line 1890
    iget v2, v2, LV6/b;->y0:I

    .line 1891
    .line 1892
    move-object/from16 v5, v22

    .line 1893
    .line 1894
    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1895
    .line 1896
    .line 1897
    iget-object v2, v1, LT6/e;->H:LV6/b;

    .line 1898
    .line 1899
    iget v2, v2, LV6/a;->O:F

    .line 1900
    .line 1901
    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1902
    .line 1903
    .line 1904
    iget-object v2, v1, LT6/e;->H:LV6/b;

    .line 1905
    .line 1906
    iget-object v2, v2, LV6/b;->u0:Landroid/graphics/Paint$Align;

    .line 1907
    .line 1908
    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1909
    .line 1910
    .line 1911
    goto :goto_21

    .line 1912
    :cond_2d
    move-object/from16 v5, v22

    .line 1913
    .line 1914
    :goto_21
    iget-object v2, v1, LT6/e;->H:LV6/b;

    .line 1915
    .line 1916
    const/4 v4, 0x0

    .line 1917
    iput-boolean v4, v2, LV6/a;->R:Z

    .line 1918
    .line 1919
    iput-boolean v4, v2, LV6/a;->S:Z

    .line 1920
    .line 1921
    invoke-virtual {v2}, LV6/b;->a()[Ljava/lang/Double;

    .line 1922
    .line 1923
    .line 1924
    move-result-object v22

    .line 1925
    aget-wide v25, v36, v4

    .line 1926
    .line 1927
    aget-wide v33, v27, v4

    .line 1928
    .line 1929
    aget-wide v27, v28, v4

    .line 1930
    .line 1931
    move-object v2, v1

    .line 1932
    move-object/from16 v4, v22

    .line 1933
    .line 1934
    move-object/from16 v22, v5

    .line 1935
    .line 1936
    move-object/from16 v5, p1

    .line 1937
    .line 1938
    move-object/from16 v29, v6

    .line 1939
    .line 1940
    move-object/from16 v6, v22

    .line 1941
    .line 1942
    move-object/from16 v31, v7

    .line 1943
    .line 1944
    move v7, v14

    .line 1945
    move/from16 v36, v8

    .line 1946
    .line 1947
    move/from16 v8, v35

    .line 1948
    .line 1949
    move/from16 v38, v0

    .line 1950
    .line 1951
    const/4 v0, 0x0

    .line 1952
    move v9, v15

    .line 1953
    move/from16 v39, v10

    .line 1954
    .line 1955
    move/from16 v61, v11

    .line 1956
    .line 1957
    move-wide/from16 v10, v25

    .line 1958
    .line 1959
    move/from16 v62, v13

    .line 1960
    .line 1961
    move-object/from16 v26, v31

    .line 1962
    .line 1963
    const/4 v0, 0x1

    .line 1964
    move-wide/from16 v12, v33

    .line 1965
    .line 1966
    move/from16 v31, v14

    .line 1967
    .line 1968
    move/from16 v60, v15

    .line 1969
    .line 1970
    move-wide/from16 v14, v27

    .line 1971
    .line 1972
    invoke-virtual/range {v2 .. v15}, LT6/e;->o(Ljava/util/ArrayList;[Ljava/lang/Double;Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIDDD)V

    .line 1973
    .line 1974
    .line 1975
    move-object/from16 v3, v21

    .line 1976
    .line 1977
    move-object/from16 v4, p1

    .line 1978
    .line 1979
    move-object/from16 v5, v22

    .line 1980
    .line 1981
    move/from16 v6, v36

    .line 1982
    .line 1983
    move/from16 v7, v31

    .line 1984
    .line 1985
    move/from16 v8, v32

    .line 1986
    .line 1987
    move/from16 v9, v60

    .line 1988
    .line 1989
    move-object/from16 v10, v37

    .line 1990
    .line 1991
    move-object/from16 v11, v26

    .line 1992
    .line 1993
    invoke-virtual/range {v2 .. v11}, LT6/e;->p(Ljava/util/HashMap;Landroid/graphics/Canvas;Landroid/graphics/Paint;IIII[D[D)V

    .line 1994
    .line 1995
    .line 1996
    iget-object v2, v1, LT6/e;->H:LV6/b;

    .line 1997
    .line 1998
    move/from16 v3, v52

    .line 1999
    .line 2000
    iput-boolean v3, v2, LV6/a;->R:Z

    .line 2001
    .line 2002
    move/from16 v3, v53

    .line 2003
    .line 2004
    iput-boolean v3, v2, LV6/a;->S:Z

    .line 2005
    .line 2006
    if-eqz v30, :cond_36

    .line 2007
    .line 2008
    iget v2, v2, LV6/a;->N:I

    .line 2009
    .line 2010
    move-object/from16 v13, v22

    .line 2011
    .line 2012
    invoke-virtual {v13, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 2013
    .line 2014
    .line 2015
    move/from16 v14, v36

    .line 2016
    .line 2017
    const/4 v9, 0x0

    .line 2018
    :goto_22
    if-ge v9, v14, :cond_35

    .line 2019
    .line 2020
    iget-object v2, v1, LT6/e;->H:LV6/b;

    .line 2021
    .line 2022
    iget-object v3, v2, LV6/b;->x0:[Landroid/graphics/Paint$Align;

    .line 2023
    .line 2024
    aget-object v10, v3, v9

    .line 2025
    .line 2026
    invoke-virtual {v2, v9}, LV6/b;->c(I)[Ljava/lang/Double;

    .line 2027
    .line 2028
    .line 2029
    move-result-object v11

    .line 2030
    array-length v12, v11

    .line 2031
    const/4 v15, 0x0

    .line 2032
    :goto_23
    if-ge v15, v12, :cond_34

    .line 2033
    .line 2034
    aget-object v2, v11, v15

    .line 2035
    .line 2036
    aget-wide v3, v26, v9

    .line 2037
    .line 2038
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    .line 2039
    .line 2040
    .line 2041
    move-result-wide v5

    .line 2042
    cmpg-double v7, v3, v5

    .line 2043
    .line 2044
    if-gtz v7, :cond_33

    .line 2045
    .line 2046
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    .line 2047
    .line 2048
    .line 2049
    move-result-wide v3

    .line 2050
    aget-wide v5, v29, v9

    .line 2051
    .line 2052
    cmpg-double v7, v3, v5

    .line 2053
    .line 2054
    if-gtz v7, :cond_33

    .line 2055
    .line 2056
    move/from16 v8, v60

    .line 2057
    .line 2058
    int-to-double v3, v8

    .line 2059
    aget-wide v5, v37, v9

    .line 2060
    .line 2061
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    .line 2062
    .line 2063
    .line 2064
    move-result-wide v21

    .line 2065
    aget-wide v27, v26, v9

    .line 2066
    .line 2067
    sub-double v21, v21, v27

    .line 2068
    .line 2069
    mul-double v21, v21, v5

    .line 2070
    .line 2071
    sub-double v3, v3, v21

    .line 2072
    .line 2073
    double-to-float v7, v3

    .line 2074
    iget-object v3, v1, LT6/e;->H:LV6/b;

    .line 2075
    .line 2076
    invoke-virtual {v3, v9, v2}, LV6/b;->b(ILjava/lang/Double;)Ljava/lang/String;

    .line 2077
    .line 2078
    .line 2079
    move-result-object v21

    .line 2080
    iget-object v2, v1, LT6/e;->H:LV6/b;

    .line 2081
    .line 2082
    iget-object v2, v2, LV6/b;->z0:[I

    .line 2083
    .line 2084
    aget v2, v2, v9

    .line 2085
    .line 2086
    invoke-virtual {v13, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 2087
    .line 2088
    .line 2089
    iget-object v2, v1, LT6/e;->H:LV6/b;

    .line 2090
    .line 2091
    iget-object v2, v2, LV6/b;->v0:[Landroid/graphics/Paint$Align;

    .line 2092
    .line 2093
    aget-object v2, v2, v9

    .line 2094
    .line 2095
    invoke-virtual {v13, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 2096
    .line 2097
    .line 2098
    move/from16 v6, v62

    .line 2099
    .line 2100
    if-ne v6, v0, :cond_31

    .line 2101
    .line 2102
    sget-object v2, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    .line 2103
    .line 2104
    if-ne v10, v2, :cond_2f

    .line 2105
    .line 2106
    if-eqz v39, :cond_2e

    .line 2107
    .line 2108
    invoke-static {v10}, LT6/e;->q(Landroid/graphics/Paint$Align;)I

    .line 2109
    .line 2110
    .line 2111
    move-result v2

    .line 2112
    move/from16 v5, v31

    .line 2113
    .line 2114
    add-int/2addr v2, v5

    .line 2115
    int-to-float v3, v2

    .line 2116
    int-to-float v4, v5

    .line 2117
    move-object/from16 v2, p1

    .line 2118
    .line 2119
    move/from16 v22, v4

    .line 2120
    .line 2121
    move v4, v7

    .line 2122
    move v0, v5

    .line 2123
    move/from16 v5, v22

    .line 2124
    .line 2125
    move/from16 v63, v6

    .line 2126
    .line 2127
    move v6, v7

    .line 2128
    move/from16 v22, v7

    .line 2129
    .line 2130
    move-object v7, v13

    .line 2131
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 2132
    .line 2133
    .line 2134
    goto :goto_24

    .line 2135
    :cond_2e
    move/from16 v63, v6

    .line 2136
    .line 2137
    move/from16 v22, v7

    .line 2138
    .line 2139
    move/from16 v0, v31

    .line 2140
    .line 2141
    :goto_24
    int-to-float v2, v0

    .line 2142
    iget-object v3, v1, LT6/e;->H:LV6/b;

    .line 2143
    .line 2144
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2145
    .line 2146
    .line 2147
    const/4 v3, 0x0

    .line 2148
    sub-float v5, v2, v3

    .line 2149
    .line 2150
    iget-object v2, v1, LT6/e;->H:LV6/b;

    .line 2151
    .line 2152
    iget v2, v2, LV6/b;->w0:F

    .line 2153
    .line 2154
    sub-float v6, v22, v2

    .line 2155
    .line 2156
    const/16 v22, 0x0

    .line 2157
    .line 2158
    move-object v2, v1

    .line 2159
    move-object/from16 v3, p1

    .line 2160
    .line 2161
    move-object/from16 v4, v21

    .line 2162
    .line 2163
    move-object v7, v13

    .line 2164
    move/from16 v27, v12

    .line 2165
    .line 2166
    move v12, v8

    .line 2167
    move/from16 v8, v22

    .line 2168
    .line 2169
    invoke-virtual/range {v2 .. v8}, LT6/e;->n(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;F)V

    .line 2170
    .line 2171
    .line 2172
    move-object/from16 v28, v11

    .line 2173
    .line 2174
    move/from16 v11, v32

    .line 2175
    .line 2176
    goto/16 :goto_25

    .line 2177
    .line 2178
    :cond_2f
    move/from16 v63, v6

    .line 2179
    .line 2180
    move/from16 v22, v7

    .line 2181
    .line 2182
    move/from16 v27, v12

    .line 2183
    .line 2184
    move/from16 v0, v31

    .line 2185
    .line 2186
    move v12, v8

    .line 2187
    move/from16 v8, v32

    .line 2188
    .line 2189
    if-eqz v39, :cond_30

    .line 2190
    .line 2191
    int-to-float v3, v8

    .line 2192
    invoke-static {v10}, LT6/e;->q(Landroid/graphics/Paint$Align;)I

    .line 2193
    .line 2194
    .line 2195
    move-result v2

    .line 2196
    add-int/2addr v2, v8

    .line 2197
    int-to-float v5, v2

    .line 2198
    move-object/from16 v2, p1

    .line 2199
    .line 2200
    move/from16 v4, v22

    .line 2201
    .line 2202
    move/from16 v6, v22

    .line 2203
    .line 2204
    move-object v7, v13

    .line 2205
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 2206
    .line 2207
    .line 2208
    :cond_30
    int-to-float v2, v8

    .line 2209
    iget-object v3, v1, LT6/e;->H:LV6/b;

    .line 2210
    .line 2211
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2212
    .line 2213
    .line 2214
    const/4 v3, 0x0

    .line 2215
    sub-float v5, v2, v3

    .line 2216
    .line 2217
    iget-object v2, v1, LT6/e;->H:LV6/b;

    .line 2218
    .line 2219
    iget v2, v2, LV6/b;->w0:F

    .line 2220
    .line 2221
    sub-float v6, v22, v2

    .line 2222
    .line 2223
    const/16 v22, 0x0

    .line 2224
    .line 2225
    move-object v2, v1

    .line 2226
    move-object/from16 v3, p1

    .line 2227
    .line 2228
    move-object/from16 v4, v21

    .line 2229
    .line 2230
    move-object v7, v13

    .line 2231
    move-object/from16 v28, v11

    .line 2232
    .line 2233
    move v11, v8

    .line 2234
    move/from16 v8, v22

    .line 2235
    .line 2236
    invoke-virtual/range {v2 .. v8}, LT6/e;->n(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;F)V

    .line 2237
    .line 2238
    .line 2239
    goto :goto_25

    .line 2240
    :cond_31
    move/from16 v63, v6

    .line 2241
    .line 2242
    move/from16 v22, v7

    .line 2243
    .line 2244
    move-object/from16 v28, v11

    .line 2245
    .line 2246
    move/from16 v27, v12

    .line 2247
    .line 2248
    move/from16 v0, v31

    .line 2249
    .line 2250
    move/from16 v11, v32

    .line 2251
    .line 2252
    move v12, v8

    .line 2253
    if-eqz v39, :cond_32

    .line 2254
    .line 2255
    invoke-static {v10}, LT6/e;->q(Landroid/graphics/Paint$Align;)I

    .line 2256
    .line 2257
    .line 2258
    move-result v2

    .line 2259
    sub-int v8, v11, v2

    .line 2260
    .line 2261
    int-to-float v3, v8

    .line 2262
    int-to-float v5, v11

    .line 2263
    move-object/from16 v2, p1

    .line 2264
    .line 2265
    move/from16 v4, v22

    .line 2266
    .line 2267
    move/from16 v6, v22

    .line 2268
    .line 2269
    move-object v7, v13

    .line 2270
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 2271
    .line 2272
    .line 2273
    :cond_32
    add-int/lit8 v8, v11, 0xa

    .line 2274
    .line 2275
    int-to-float v5, v8

    .line 2276
    iget-object v2, v1, LT6/e;->H:LV6/b;

    .line 2277
    .line 2278
    iget v2, v2, LV6/b;->w0:F

    .line 2279
    .line 2280
    sub-float v6, v22, v2

    .line 2281
    .line 2282
    const/4 v8, 0x0

    .line 2283
    move-object v2, v1

    .line 2284
    move-object/from16 v3, p1

    .line 2285
    .line 2286
    move-object/from16 v4, v21

    .line 2287
    .line 2288
    move-object v7, v13

    .line 2289
    invoke-virtual/range {v2 .. v8}, LT6/e;->n(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;F)V

    .line 2290
    .line 2291
    .line 2292
    goto :goto_25

    .line 2293
    :cond_33
    move-object/from16 v28, v11

    .line 2294
    .line 2295
    move/from16 v27, v12

    .line 2296
    .line 2297
    move/from16 v0, v31

    .line 2298
    .line 2299
    move/from16 v11, v32

    .line 2300
    .line 2301
    move/from16 v12, v60

    .line 2302
    .line 2303
    move/from16 v63, v62

    .line 2304
    .line 2305
    :goto_25
    add-int/lit8 v15, v15, 0x1

    .line 2306
    .line 2307
    move/from16 v31, v0

    .line 2308
    .line 2309
    move/from16 v32, v11

    .line 2310
    .line 2311
    move/from16 v60, v12

    .line 2312
    .line 2313
    move/from16 v12, v27

    .line 2314
    .line 2315
    move-object/from16 v11, v28

    .line 2316
    .line 2317
    move/from16 v62, v63

    .line 2318
    .line 2319
    const/4 v0, 0x1

    .line 2320
    goto/16 :goto_23

    .line 2321
    .line 2322
    :cond_34
    move/from16 v0, v31

    .line 2323
    .line 2324
    move/from16 v11, v32

    .line 2325
    .line 2326
    move/from16 v12, v60

    .line 2327
    .line 2328
    move/from16 v63, v62

    .line 2329
    .line 2330
    add-int/lit8 v9, v9, 0x1

    .line 2331
    .line 2332
    const/4 v0, 0x1

    .line 2333
    goto/16 :goto_22

    .line 2334
    .line 2335
    :cond_35
    move/from16 v0, v31

    .line 2336
    .line 2337
    move/from16 v11, v32

    .line 2338
    .line 2339
    :goto_26
    move/from16 v12, v60

    .line 2340
    .line 2341
    move/from16 v63, v62

    .line 2342
    .line 2343
    goto :goto_27

    .line 2344
    :cond_36
    move-object/from16 v13, v22

    .line 2345
    .line 2346
    move/from16 v0, v31

    .line 2347
    .line 2348
    move/from16 v11, v32

    .line 2349
    .line 2350
    move/from16 v14, v36

    .line 2351
    .line 2352
    goto :goto_26

    .line 2353
    :goto_27
    if-eqz v30, :cond_3b

    .line 2354
    .line 2355
    iget-object v2, v1, LT6/e;->H:LV6/b;

    .line 2356
    .line 2357
    iget v2, v2, LV6/a;->N:I

    .line 2358
    .line 2359
    invoke-virtual {v13, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 2360
    .line 2361
    .line 2362
    iget-object v2, v1, LT6/e;->H:LV6/b;

    .line 2363
    .line 2364
    iget v9, v2, LV6/b;->c0:F

    .line 2365
    .line 2366
    invoke-virtual {v13, v9}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2367
    .line 2368
    .line 2369
    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    .line 2370
    .line 2371
    invoke-virtual {v13, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 2372
    .line 2373
    .line 2374
    move/from16 v15, v63

    .line 2375
    .line 2376
    const/4 v2, 0x1

    .line 2377
    if-ne v15, v2, :cond_39

    .line 2378
    .line 2379
    iget-object v2, v1, LT6/e;->H:LV6/b;

    .line 2380
    .line 2381
    iget-object v4, v2, LV6/b;->a0:Ljava/lang/String;

    .line 2382
    .line 2383
    div-int/lit8 v3, v38, 0x2

    .line 2384
    .line 2385
    move/from16 v8, v61

    .line 2386
    .line 2387
    add-int/2addr v3, v8

    .line 2388
    int-to-float v7, v3

    .line 2389
    int-to-float v3, v12

    .line 2390
    iget v2, v2, LV6/a;->O:F

    .line 2391
    .line 2392
    mul-float v2, v2, v17

    .line 2393
    .line 2394
    div-float v2, v2, v16

    .line 2395
    .line 2396
    add-float/2addr v2, v3

    .line 2397
    const/4 v3, 0x0

    .line 2398
    add-float/2addr v2, v3

    .line 2399
    add-float v6, v2, v9

    .line 2400
    .line 2401
    const/16 v16, 0x0

    .line 2402
    .line 2403
    move-object v2, v1

    .line 2404
    move-object/from16 v3, p1

    .line 2405
    .line 2406
    move v5, v7

    .line 2407
    move/from16 v17, v7

    .line 2408
    .line 2409
    move-object v7, v13

    .line 2410
    move v10, v8

    .line 2411
    move/from16 v8, v16

    .line 2412
    .line 2413
    invoke-virtual/range {v2 .. v8}, LT6/e;->n(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;F)V

    .line 2414
    .line 2415
    .line 2416
    const/4 v8, 0x0

    .line 2417
    :goto_28
    if-ge v8, v14, :cond_38

    .line 2418
    .line 2419
    iget-object v2, v1, LT6/e;->H:LV6/b;

    .line 2420
    .line 2421
    iget-object v3, v2, LV6/b;->x0:[Landroid/graphics/Paint$Align;

    .line 2422
    .line 2423
    aget-object v3, v3, v8

    .line 2424
    .line 2425
    sget-object v4, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    .line 2426
    .line 2427
    if-ne v3, v4, :cond_37

    .line 2428
    .line 2429
    iget-object v2, v2, LV6/b;->b0:[Ljava/lang/String;

    .line 2430
    .line 2431
    aget-object v4, v2, v8

    .line 2432
    .line 2433
    int-to-float v2, v10

    .line 2434
    add-float v5, v2, v9

    .line 2435
    .line 2436
    div-int/lit8 v2, v55, 0x2

    .line 2437
    .line 2438
    move/from16 v7, v41

    .line 2439
    .line 2440
    add-int/2addr v2, v7

    .line 2441
    int-to-float v6, v2

    .line 2442
    const/high16 v16, -0x3d4c0000    # -90.0f

    .line 2443
    .line 2444
    move-object v2, v1

    .line 2445
    move-object/from16 v3, p1

    .line 2446
    .line 2447
    move/from16 v60, v12

    .line 2448
    .line 2449
    move v12, v7

    .line 2450
    move-object v7, v13

    .line 2451
    move/from16 v22, v8

    .line 2452
    .line 2453
    move/from16 v8, v16

    .line 2454
    .line 2455
    invoke-virtual/range {v2 .. v8}, LT6/e;->n(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;F)V

    .line 2456
    .line 2457
    .line 2458
    move/from16 v64, v50

    .line 2459
    .line 2460
    goto :goto_29

    .line 2461
    :cond_37
    move/from16 v22, v8

    .line 2462
    .line 2463
    move/from16 v60, v12

    .line 2464
    .line 2465
    move/from16 v12, v41

    .line 2466
    .line 2467
    iget-object v2, v2, LV6/b;->b0:[Ljava/lang/String;

    .line 2468
    .line 2469
    aget-object v4, v2, v22

    .line 2470
    .line 2471
    move/from16 v8, v50

    .line 2472
    .line 2473
    int-to-float v5, v8

    .line 2474
    div-int/lit8 v2, v55, 0x2

    .line 2475
    .line 2476
    add-int/2addr v2, v12

    .line 2477
    int-to-float v6, v2

    .line 2478
    const/high16 v16, -0x3d4c0000    # -90.0f

    .line 2479
    .line 2480
    move-object v2, v1

    .line 2481
    move-object/from16 v3, p1

    .line 2482
    .line 2483
    move-object v7, v13

    .line 2484
    move/from16 v64, v8

    .line 2485
    .line 2486
    move/from16 v8, v16

    .line 2487
    .line 2488
    invoke-virtual/range {v2 .. v8}, LT6/e;->n(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;F)V

    .line 2489
    .line 2490
    .line 2491
    :goto_29
    add-int/lit8 v8, v22, 0x1

    .line 2492
    .line 2493
    move/from16 v41, v12

    .line 2494
    .line 2495
    move/from16 v12, v60

    .line 2496
    .line 2497
    move/from16 v50, v64

    .line 2498
    .line 2499
    goto :goto_28

    .line 2500
    :cond_38
    move/from16 v60, v12

    .line 2501
    .line 2502
    move/from16 v12, v41

    .line 2503
    .line 2504
    move/from16 v64, v50

    .line 2505
    .line 2506
    iget-object v2, v1, LT6/e;->H:LV6/b;

    .line 2507
    .line 2508
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2509
    .line 2510
    .line 2511
    const/high16 v2, 0x41700000    # 15.0f

    .line 2512
    .line 2513
    invoke-virtual {v13, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2514
    .line 2515
    .line 2516
    iget-object v3, v1, LT6/e;->H:LV6/b;

    .line 2517
    .line 2518
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2519
    .line 2520
    .line 2521
    const-string v4, ""

    .line 2522
    .line 2523
    int-to-float v3, v12

    .line 2524
    iget-object v5, v1, LT6/e;->H:LV6/b;

    .line 2525
    .line 2526
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2527
    .line 2528
    .line 2529
    add-float v6, v3, v2

    .line 2530
    .line 2531
    const/4 v8, 0x0

    .line 2532
    move-object v2, v1

    .line 2533
    move-object/from16 v3, p1

    .line 2534
    .line 2535
    move/from16 v5, v17

    .line 2536
    .line 2537
    move-object v7, v13

    .line 2538
    invoke-virtual/range {v2 .. v8}, LT6/e;->n(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;F)V

    .line 2539
    .line 2540
    .line 2541
    move/from16 v26, v14

    .line 2542
    .line 2543
    move/from16 v10, v35

    .line 2544
    .line 2545
    move/from16 v65, v49

    .line 2546
    .line 2547
    const/4 v2, 0x1

    .line 2548
    const/4 v14, 0x2

    .line 2549
    goto/16 :goto_2c

    .line 2550
    .line 2551
    :cond_39
    move/from16 v60, v12

    .line 2552
    .line 2553
    move/from16 v12, v41

    .line 2554
    .line 2555
    move/from16 v64, v50

    .line 2556
    .line 2557
    move/from16 v10, v61

    .line 2558
    .line 2559
    const/4 v8, 0x2

    .line 2560
    if-ne v15, v8, :cond_3a

    .line 2561
    .line 2562
    iget-object v2, v1, LT6/e;->H:LV6/b;

    .line 2563
    .line 2564
    iget-object v4, v2, LV6/b;->a0:Ljava/lang/String;

    .line 2565
    .line 2566
    div-int/lit8 v2, v38, 0x2

    .line 2567
    .line 2568
    add-int/2addr v2, v10

    .line 2569
    int-to-float v5, v2

    .line 2570
    move/from16 v7, v49

    .line 2571
    .line 2572
    int-to-float v2, v7

    .line 2573
    sub-float/2addr v2, v9

    .line 2574
    const/4 v3, 0x0

    .line 2575
    add-float v6, v2, v3

    .line 2576
    .line 2577
    const/high16 v16, -0x3d4c0000    # -90.0f

    .line 2578
    .line 2579
    move-object v2, v1

    .line 2580
    move-object/from16 v3, p1

    .line 2581
    .line 2582
    move/from16 v65, v7

    .line 2583
    .line 2584
    move-object v7, v13

    .line 2585
    move/from16 v26, v14

    .line 2586
    .line 2587
    const/4 v14, 0x2

    .line 2588
    move/from16 v8, v16

    .line 2589
    .line 2590
    invoke-virtual/range {v2 .. v8}, LT6/e;->n(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;F)V

    .line 2591
    .line 2592
    .line 2593
    iget-object v2, v1, LT6/e;->H:LV6/b;

    .line 2594
    .line 2595
    iget-object v2, v2, LV6/b;->b0:[Ljava/lang/String;

    .line 2596
    .line 2597
    const/4 v3, 0x0

    .line 2598
    aget-object v4, v2, v3

    .line 2599
    .line 2600
    add-int/lit8 v8, v11, 0x14

    .line 2601
    .line 2602
    int-to-float v5, v8

    .line 2603
    div-int/lit8 v16, v55, 0x2

    .line 2604
    .line 2605
    add-int v2, v12, v16

    .line 2606
    .line 2607
    int-to-float v6, v2

    .line 2608
    const/4 v8, 0x0

    .line 2609
    move-object v2, v1

    .line 2610
    move-object/from16 v3, p1

    .line 2611
    .line 2612
    move-object v7, v13

    .line 2613
    invoke-virtual/range {v2 .. v8}, LT6/e;->n(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;F)V

    .line 2614
    .line 2615
    .line 2616
    iget-object v2, v1, LT6/e;->H:LV6/b;

    .line 2617
    .line 2618
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2619
    .line 2620
    .line 2621
    const/high16 v2, 0x41700000    # 15.0f

    .line 2622
    .line 2623
    invoke-virtual {v13, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2624
    .line 2625
    .line 2626
    iget-object v2, v1, LT6/e;->H:LV6/b;

    .line 2627
    .line 2628
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2629
    .line 2630
    .line 2631
    const-string v4, ""

    .line 2632
    .line 2633
    int-to-float v2, v10

    .line 2634
    add-float v5, v2, v9

    .line 2635
    .line 2636
    move/from16 v10, v35

    .line 2637
    .line 2638
    add-int v2, v10, v16

    .line 2639
    .line 2640
    int-to-float v6, v2

    .line 2641
    move-object v2, v1

    .line 2642
    invoke-virtual/range {v2 .. v8}, LT6/e;->n(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;F)V

    .line 2643
    .line 2644
    .line 2645
    :goto_2a
    const/4 v2, 0x1

    .line 2646
    goto :goto_2c

    .line 2647
    :cond_3a
    move/from16 v26, v14

    .line 2648
    .line 2649
    move/from16 v10, v35

    .line 2650
    .line 2651
    move/from16 v65, v49

    .line 2652
    .line 2653
    :goto_2b
    const/4 v14, 0x2

    .line 2654
    goto :goto_2a

    .line 2655
    :cond_3b
    move/from16 v60, v12

    .line 2656
    .line 2657
    move/from16 v26, v14

    .line 2658
    .line 2659
    move/from16 v10, v35

    .line 2660
    .line 2661
    move/from16 v12, v41

    .line 2662
    .line 2663
    move/from16 v65, v49

    .line 2664
    .line 2665
    move/from16 v64, v50

    .line 2666
    .line 2667
    move/from16 v15, v63

    .line 2668
    .line 2669
    goto :goto_2b

    .line 2670
    :cond_3c
    move/from16 v38, v0

    .line 2671
    .line 2672
    move v0, v14

    .line 2673
    move/from16 v60, v15

    .line 2674
    .line 2675
    move/from16 v11, v32

    .line 2676
    .line 2677
    move/from16 v10, v35

    .line 2678
    .line 2679
    move/from16 v12, v41

    .line 2680
    .line 2681
    move/from16 v65, v49

    .line 2682
    .line 2683
    move/from16 v64, v50

    .line 2684
    .line 2685
    const/4 v14, 0x2

    .line 2686
    move v15, v13

    .line 2687
    move-object/from16 v13, v22

    .line 2688
    .line 2689
    goto :goto_2a

    .line 2690
    :goto_2c
    if-ne v15, v2, :cond_3e

    .line 2691
    .line 2692
    iget-object v4, v1, LT6/e;->H:LV6/b;

    .line 2693
    .line 2694
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2695
    .line 2696
    .line 2697
    const/4 v2, 0x0

    .line 2698
    float-to-int v2, v2

    .line 2699
    add-int v8, v12, v2

    .line 2700
    .line 2701
    move-object v2, v1

    .line 2702
    move-object/from16 v3, p1

    .line 2703
    .line 2704
    move-object/from16 v5, v23

    .line 2705
    .line 2706
    move v6, v0

    .line 2707
    move v7, v11

    .line 2708
    move/from16 v9, v38

    .line 2709
    .line 2710
    move v12, v10

    .line 2711
    move/from16 v10, v55

    .line 2712
    .line 2713
    move/from16 v32, v11

    .line 2714
    .line 2715
    move/from16 v11, v18

    .line 2716
    .line 2717
    move/from16 v66, v12

    .line 2718
    .line 2719
    move/from16 v67, v60

    .line 2720
    .line 2721
    move-object v12, v13

    .line 2722
    invoke-virtual/range {v2 .. v12}, LT6/a;->c(Landroid/graphics/Canvas;LV6/b;[Ljava/lang/String;IIIIIILandroid/graphics/Paint;)V

    .line 2723
    .line 2724
    .line 2725
    :cond_3d
    move/from16 v34, v15

    .line 2726
    .line 2727
    move/from16 v68, v51

    .line 2728
    .line 2729
    const/4 v8, 0x0

    .line 2730
    move-object/from16 v15, p1

    .line 2731
    .line 2732
    goto :goto_2d

    .line 2733
    :cond_3e
    move/from16 v66, v10

    .line 2734
    .line 2735
    move/from16 v32, v11

    .line 2736
    .line 2737
    move/from16 v67, v60

    .line 2738
    .line 2739
    if-ne v15, v14, :cond_3d

    .line 2740
    .line 2741
    move/from16 v11, v51

    .line 2742
    .line 2743
    int-to-float v10, v11

    .line 2744
    move-object/from16 v9, p1

    .line 2745
    .line 2746
    const/4 v2, 0x1

    .line 2747
    invoke-virtual {v1, v9, v10, v2}, LT6/e;->w(Landroid/graphics/Canvas;FZ)V

    .line 2748
    .line 2749
    .line 2750
    iget-object v4, v1, LT6/e;->H:LV6/b;

    .line 2751
    .line 2752
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2753
    .line 2754
    .line 2755
    const/4 v2, 0x0

    .line 2756
    float-to-int v2, v2

    .line 2757
    add-int v8, v12, v2

    .line 2758
    .line 2759
    move-object v2, v1

    .line 2760
    move-object/from16 v3, p1

    .line 2761
    .line 2762
    move-object/from16 v5, v23

    .line 2763
    .line 2764
    move v6, v0

    .line 2765
    move/from16 v7, v32

    .line 2766
    .line 2767
    move-object v12, v9

    .line 2768
    move/from16 v9, v38

    .line 2769
    .line 2770
    move v14, v10

    .line 2771
    move/from16 v10, v55

    .line 2772
    .line 2773
    move/from16 v68, v11

    .line 2774
    .line 2775
    move/from16 v11, v18

    .line 2776
    .line 2777
    move/from16 v34, v15

    .line 2778
    .line 2779
    move-object v15, v12

    .line 2780
    move-object v12, v13

    .line 2781
    invoke-virtual/range {v2 .. v12}, LT6/a;->c(Landroid/graphics/Canvas;LV6/b;[Ljava/lang/String;IIIIIILandroid/graphics/Paint;)V

    .line 2782
    .line 2783
    .line 2784
    const/4 v8, 0x0

    .line 2785
    invoke-virtual {v1, v15, v14, v8}, LT6/e;->w(Landroid/graphics/Canvas;FZ)V

    .line 2786
    .line 2787
    .line 2788
    :goto_2d
    iget-object v2, v1, LT6/e;->H:LV6/b;

    .line 2789
    .line 2790
    iget-boolean v3, v2, LV6/a;->H:Z

    .line 2791
    .line 2792
    if-eqz v3, :cond_42

    .line 2793
    .line 2794
    iget v2, v2, LV6/a;->J:I

    .line 2795
    .line 2796
    invoke-virtual {v13, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 2797
    .line 2798
    .line 2799
    int-to-float v0, v0

    .line 2800
    move/from16 v2, v67

    .line 2801
    .line 2802
    int-to-float v9, v2

    .line 2803
    move/from16 v3, v32

    .line 2804
    .line 2805
    int-to-float v10, v3

    .line 2806
    move-object/from16 v2, p1

    .line 2807
    .line 2808
    move v3, v0

    .line 2809
    move v4, v9

    .line 2810
    move v5, v10

    .line 2811
    move v6, v9

    .line 2812
    move-object v7, v13

    .line 2813
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 2814
    .line 2815
    .line 2816
    iget-object v2, v1, LT6/e;->H:LV6/b;

    .line 2817
    .line 2818
    iget v2, v2, LV6/a;->I:I

    .line 2819
    .line 2820
    invoke-virtual {v13, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 2821
    .line 2822
    .line 2823
    move/from16 v3, v26

    .line 2824
    .line 2825
    const/4 v2, 0x0

    .line 2826
    const/4 v11, 0x0

    .line 2827
    :goto_2e
    if-ge v2, v3, :cond_40

    .line 2828
    .line 2829
    if-nez v11, :cond_40

    .line 2830
    .line 2831
    iget-object v4, v1, LT6/e;->H:LV6/b;

    .line 2832
    .line 2833
    iget-object v4, v4, LV6/b;->x0:[Landroid/graphics/Paint$Align;

    .line 2834
    .line 2835
    aget-object v4, v4, v2

    .line 2836
    .line 2837
    sget-object v5, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    .line 2838
    .line 2839
    if-ne v4, v5, :cond_3f

    .line 2840
    .line 2841
    const/4 v11, 0x1

    .line 2842
    goto :goto_2f

    .line 2843
    :cond_3f
    const/4 v11, 0x0

    .line 2844
    :goto_2f
    add-int/lit8 v2, v2, 0x1

    .line 2845
    .line 2846
    goto :goto_2e

    .line 2847
    :cond_40
    move/from16 v3, v34

    .line 2848
    .line 2849
    const/4 v2, 0x1

    .line 2850
    if-ne v3, v2, :cond_41

    .line 2851
    .line 2852
    move/from16 v14, v66

    .line 2853
    .line 2854
    int-to-float v8, v14

    .line 2855
    move-object/from16 v2, p1

    .line 2856
    .line 2857
    move v3, v0

    .line 2858
    move v4, v8

    .line 2859
    move v5, v0

    .line 2860
    move v6, v9

    .line 2861
    move-object v7, v13

    .line 2862
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 2863
    .line 2864
    .line 2865
    if-eqz v11, :cond_42

    .line 2866
    .line 2867
    move-object/from16 v2, p1

    .line 2868
    .line 2869
    move v3, v10

    .line 2870
    move v4, v8

    .line 2871
    move v5, v10

    .line 2872
    move v6, v9

    .line 2873
    move-object v7, v13

    .line 2874
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 2875
    .line 2876
    .line 2877
    goto :goto_30

    .line 2878
    :cond_41
    move/from16 v14, v66

    .line 2879
    .line 2880
    const/4 v0, 0x2

    .line 2881
    if-ne v3, v0, :cond_42

    .line 2882
    .line 2883
    int-to-float v4, v14

    .line 2884
    move-object/from16 v2, p1

    .line 2885
    .line 2886
    move v3, v10

    .line 2887
    move v5, v10

    .line 2888
    move v6, v9

    .line 2889
    move-object v7, v13

    .line 2890
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 2891
    .line 2892
    .line 2893
    :cond_42
    :goto_30
    if-eqz v20, :cond_43

    .line 2894
    .line 2895
    move/from16 v0, v68

    .line 2896
    .line 2897
    int-to-float v0, v0

    .line 2898
    const/4 v2, 0x1

    .line 2899
    invoke-virtual {v1, v15, v0, v2}, LT6/e;->w(Landroid/graphics/Canvas;FZ)V

    .line 2900
    .line 2901
    .line 2902
    :cond_43
    move-object/from16 v1, p0

    .line 2903
    .line 2904
    :goto_31
    iget-object v0, v1, LS6/a;->H:LV6/b;

    .line 2905
    .line 2906
    if-eqz v0, :cond_44

    .line 2907
    .line 2908
    invoke-virtual {v0}, LV6/b;->i()Z

    .line 2909
    .line 2910
    .line 2911
    move-result v0

    .line 2912
    if-eqz v0, :cond_44

    .line 2913
    .line 2914
    iget-object v0, v1, LS6/a;->H:LV6/b;

    .line 2915
    .line 2916
    iget-boolean v0, v0, LV6/a;->W:Z

    .line 2917
    .line 2918
    if-eqz v0, :cond_44

    .line 2919
    .line 2920
    iget-object v0, v1, LS6/a;->S:Landroid/graphics/Paint;

    .line 2921
    .line 2922
    sget v2, LS6/a;->a0:I

    .line 2923
    .line 2924
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 2925
    .line 2926
    .line 2927
    iget v0, v1, LS6/a;->O:I

    .line 2928
    .line 2929
    move/from16 v2, v38

    .line 2930
    .line 2931
    move/from16 v3, v55

    .line 2932
    .line 2933
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    .line 2934
    .line 2935
    .line 2936
    move-result v2

    .line 2937
    div-int/lit8 v2, v2, 0x7

    .line 2938
    .line 2939
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    .line 2940
    .line 2941
    .line 2942
    move-result v0

    .line 2943
    iput v0, v1, LS6/a;->O:I

    .line 2944
    .line 2945
    iget-object v2, v1, LS6/a;->K:Landroid/graphics/RectF;

    .line 2946
    .line 2947
    mul-int/lit8 v3, v0, 0x3

    .line 2948
    .line 2949
    move/from16 v4, v64

    .line 2950
    .line 2951
    sub-int v3, v4, v3

    .line 2952
    .line 2953
    int-to-float v3, v3

    .line 2954
    move/from16 v14, v65

    .line 2955
    .line 2956
    int-to-float v5, v14

    .line 2957
    int-to-float v0, v0

    .line 2958
    const v6, 0x3f466666    # 0.775f

    .line 2959
    .line 2960
    .line 2961
    mul-float v0, v0, v6

    .line 2962
    .line 2963
    sub-float v0, v5, v0

    .line 2964
    .line 2965
    int-to-float v4, v4

    .line 2966
    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 2967
    .line 2968
    .line 2969
    iget-object v0, v1, LS6/a;->K:Landroid/graphics/RectF;

    .line 2970
    .line 2971
    iget v2, v1, LS6/a;->O:I

    .line 2972
    .line 2973
    div-int/lit8 v2, v2, 0x3

    .line 2974
    .line 2975
    int-to-float v2, v2

    .line 2976
    iget-object v3, v1, LS6/a;->S:Landroid/graphics/Paint;

    .line 2977
    .line 2978
    invoke-virtual {v15, v0, v2, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 2979
    .line 2980
    .line 2981
    iget v0, v1, LS6/a;->O:I

    .line 2982
    .line 2983
    int-to-float v0, v0

    .line 2984
    const/high16 v2, 0x3f200000    # 0.625f

    .line 2985
    .line 2986
    mul-float v2, v2, v0

    .line 2987
    .line 2988
    sub-float/2addr v5, v2

    .line 2989
    iget-object v2, v1, LS6/a;->L:Landroid/graphics/Bitmap;

    .line 2990
    .line 2991
    const/high16 v3, 0x40300000    # 2.75f

    .line 2992
    .line 2993
    mul-float v0, v0, v3

    .line 2994
    .line 2995
    sub-float v0, v4, v0

    .line 2996
    .line 2997
    const/4 v3, 0x0

    .line 2998
    invoke-virtual {v15, v2, v0, v5, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 2999
    .line 3000
    .line 3001
    iget-object v0, v1, LS6/a;->M:Landroid/graphics/Bitmap;

    .line 3002
    .line 3003
    iget v2, v1, LS6/a;->O:I

    .line 3004
    .line 3005
    int-to-float v2, v2

    .line 3006
    const/high16 v6, 0x3fe00000    # 1.75f

    .line 3007
    .line 3008
    mul-float v2, v2, v6

    .line 3009
    .line 3010
    sub-float v2, v4, v2

    .line 3011
    .line 3012
    invoke-virtual {v15, v0, v2, v5, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 3013
    .line 3014
    .line 3015
    iget-object v0, v1, LS6/a;->N:Landroid/graphics/Bitmap;

    .line 3016
    .line 3017
    iget v2, v1, LS6/a;->O:I

    .line 3018
    .line 3019
    int-to-float v2, v2

    .line 3020
    const/high16 v6, 0x3f400000    # 0.75f

    .line 3021
    .line 3022
    mul-float v2, v2, v6

    .line 3023
    .line 3024
    sub-float/2addr v4, v2

    .line 3025
    invoke-virtual {v15, v0, v4, v5, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 3026
    .line 3027
    .line 3028
    :cond_44
    const/4 v0, 0x1

    .line 3029
    iput-boolean v0, v1, LS6/a;->W:Z

    .line 3030
    .line 3031
    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iput v0, p0, LS6/a;->U:F

    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    iput v0, p0, LS6/a;->V:F

    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, LS6/a;->H:LV6/b;

    .line 20
    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    iget-boolean v1, p0, LS6/a;->W:Z

    .line 24
    .line 25
    if-eqz v1, :cond_2

    .line 26
    .line 27
    invoke-virtual {v0}, LV6/b;->h()Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-nez v1, :cond_1

    .line 32
    .line 33
    invoke-virtual {v0}, LV6/b;->i()Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_2

    .line 38
    .line 39
    :cond_1
    iget-object v0, p0, LS6/a;->T:LS6/b;

    .line 40
    .line 41
    invoke-interface {v0, p1}, LS6/b;->a(Landroid/view/MotionEvent;)V

    .line 42
    .line 43
    .line 44
    const/4 p1, 0x1

    .line 45
    return p1

    .line 46
    :cond_2
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    return p1
.end method

.method public setZoomRate(F)V
    .locals 2

    .line 1
    iget-object v0, p0, LS6/a;->P:LW6/b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, LS6/a;->Q:LW6/b;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    iput p1, v0, LW6/b;->d:F

    .line 10
    .line 11
    iput p1, v1, LW6/b;->d:F

    .line 12
    .line 13
    :cond_0
    return-void
.end method
