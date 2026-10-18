.class public final LJ0/g;
.super LB0/h;
.source "SourceFile"


# instance fields
.field public final G:LF/d;

.field public final H:Lw0/g;

.field public final I:Ljava/util/ArrayDeque;

.field public J:Z

.field public K:Z

.field public L:LJ0/e;

.field public M:J

.field public N:J

.field public O:I

.field public P:I

.field public Q:Lm0/t;

.field public R:LJ0/b;

.field public S:Lw0/g;

.field public T:Landroidx/media3/exoplayer/image/ImageOutput;

.field public U:Landroid/graphics/Bitmap;

.field public V:Z

.field public W:LJ0/f;

.field public X:LJ0/f;

.field public Y:I

.field public Z:Z


# direct methods
.method public constructor <init>(LF/d;)V
    .locals 3

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-direct {p0, v0}, LB0/h;-><init>(I)V

    .line 3
    .line 4
    .line 5
    iput-object p1, p0, LJ0/g;->G:LF/d;

    .line 6
    .line 7
    sget-object p1, Landroidx/media3/exoplayer/image/ImageOutput;->a:LJ0/d;

    .line 8
    .line 9
    iput-object p1, p0, LJ0/g;->T:Landroidx/media3/exoplayer/image/ImageOutput;

    .line 10
    .line 11
    new-instance p1, Lw0/g;

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    invoke-direct {p1, v0, v0}, Lw0/g;-><init>(II)V

    .line 15
    .line 16
    .line 17
    iput-object p1, p0, LJ0/g;->H:Lw0/g;

    .line 18
    .line 19
    sget-object p1, LJ0/e;->c:LJ0/e;

    .line 20
    .line 21
    iput-object p1, p0, LJ0/g;->L:LJ0/e;

    .line 22
    .line 23
    new-instance p1, Ljava/util/ArrayDeque;

    .line 24
    .line 25
    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    .line 26
    .line 27
    .line 28
    iput-object p1, p0, LJ0/g;->I:Ljava/util/ArrayDeque;

    .line 29
    .line 30
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    iput-wide v1, p0, LJ0/g;->N:J

    .line 36
    .line 37
    iput-wide v1, p0, LJ0/g;->M:J

    .line 38
    .line 39
    iput v0, p0, LJ0/g;->O:I

    .line 40
    .line 41
    const/4 p1, 0x1

    .line 42
    iput p1, p0, LJ0/g;->P:I

    .line 43
    .line 44
    return-void
.end method


# virtual methods
.method public final a(J)Z
    .locals 12

    .line 1
    iget-object v0, p0, LJ0/g;->U:Landroid/graphics/Bitmap;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, LJ0/g;->W:LJ0/f;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return v1

    .line 11
    :cond_0
    iget v0, p0, LJ0/g;->P:I

    .line 12
    .line 13
    const/4 v2, 0x2

    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    invoke-virtual {p0}, LB0/h;->getState()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eq v0, v2, :cond_1

    .line 21
    .line 22
    return v1

    .line 23
    :cond_1
    iget-object v0, p0, LJ0/g;->U:Landroid/graphics/Bitmap;

    .line 24
    .line 25
    iget-object v3, p0, LJ0/g;->I:Ljava/util/ArrayDeque;

    .line 26
    .line 27
    const/4 v4, 0x3

    .line 28
    const/4 v5, 0x1

    .line 29
    if-nez v0, :cond_6

    .line 30
    .line 31
    iget-object v0, p0, LJ0/g;->R:LJ0/b;

    .line 32
    .line 33
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/H1;->j(Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, LJ0/g;->R:LJ0/b;

    .line 37
    .line 38
    invoke-virtual {v0}, Lw0/k;->dequeueOutputBuffer()Lw0/i;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    check-cast v0, LJ0/a;

    .line 43
    .line 44
    if-nez v0, :cond_2

    .line 45
    .line 46
    return v1

    .line 47
    :cond_2
    invoke-virtual {v0}, Lw0/a;->isEndOfStream()Z

    .line 48
    .line 49
    .line 50
    move-result v6

    .line 51
    if-eqz v6, :cond_5

    .line 52
    .line 53
    iget p1, p0, LJ0/g;->O:I

    .line 54
    .line 55
    if-ne p1, v4, :cond_3

    .line 56
    .line 57
    invoke-virtual {p0}, LJ0/g;->d()V

    .line 58
    .line 59
    .line 60
    iget-object p1, p0, LJ0/g;->Q:Lm0/t;

    .line 61
    .line 62
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/H1;->j(Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0}, LJ0/g;->c()V

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_3
    invoke-virtual {v0}, LJ0/a;->release()V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v3}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    if-eqz p1, :cond_4

    .line 77
    .line 78
    iput-boolean v5, p0, LJ0/g;->K:Z

    .line 79
    .line 80
    :cond_4
    :goto_0
    return v1

    .line 81
    :cond_5
    iget-object v6, v0, LJ0/a;->G:Landroid/graphics/Bitmap;

    .line 82
    .line 83
    const-string v7, "Non-EOS buffer came back from the decoder without bitmap."

    .line 84
    .line 85
    invoke-static {v6, v7}, Lcom/google/android/gms/internal/measurement/H1;->k(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    iget-object v6, v0, LJ0/a;->G:Landroid/graphics/Bitmap;

    .line 89
    .line 90
    iput-object v6, p0, LJ0/g;->U:Landroid/graphics/Bitmap;

    .line 91
    .line 92
    invoke-virtual {v0}, LJ0/a;->release()V

    .line 93
    .line 94
    .line 95
    :cond_6
    iget-boolean v0, p0, LJ0/g;->V:Z

    .line 96
    .line 97
    if-eqz v0, :cond_13

    .line 98
    .line 99
    iget-object v0, p0, LJ0/g;->U:Landroid/graphics/Bitmap;

    .line 100
    .line 101
    if-eqz v0, :cond_13

    .line 102
    .line 103
    iget-object v0, p0, LJ0/g;->W:LJ0/f;

    .line 104
    .line 105
    if-eqz v0, :cond_13

    .line 106
    .line 107
    iget-object v0, p0, LJ0/g;->Q:Lm0/t;

    .line 108
    .line 109
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/H1;->j(Ljava/lang/Object;)V

    .line 110
    .line 111
    .line 112
    iget-object v0, p0, LJ0/g;->Q:Lm0/t;

    .line 113
    .line 114
    iget v6, v0, Lm0/t;->N:I

    .line 115
    .line 116
    iget v0, v0, Lm0/t;->O:I

    .line 117
    .line 118
    if-ne v6, v5, :cond_7

    .line 119
    .line 120
    if-eq v0, v5, :cond_8

    .line 121
    .line 122
    :cond_7
    const/4 v7, -0x1

    .line 123
    if-eq v6, v7, :cond_8

    .line 124
    .line 125
    if-eq v0, v7, :cond_8

    .line 126
    .line 127
    const/4 v0, 0x1

    .line 128
    goto :goto_1

    .line 129
    :cond_8
    const/4 v0, 0x0

    .line 130
    :goto_1
    iget-object v6, p0, LJ0/g;->W:LJ0/f;

    .line 131
    .line 132
    iget-object v7, v6, LJ0/f;->c:Landroid/graphics/Bitmap;

    .line 133
    .line 134
    if-eqz v7, :cond_9

    .line 135
    .line 136
    goto :goto_3

    .line 137
    :cond_9
    if-eqz v0, :cond_a

    .line 138
    .line 139
    iget-object v7, p0, LJ0/g;->U:Landroid/graphics/Bitmap;

    .line 140
    .line 141
    invoke-static {v7}, Lcom/google/android/gms/internal/measurement/H1;->j(Ljava/lang/Object;)V

    .line 142
    .line 143
    .line 144
    iget-object v7, p0, LJ0/g;->U:Landroid/graphics/Bitmap;

    .line 145
    .line 146
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    .line 147
    .line 148
    .line 149
    move-result v7

    .line 150
    iget-object v8, p0, LJ0/g;->Q:Lm0/t;

    .line 151
    .line 152
    invoke-static {v8}, Lcom/google/android/gms/internal/measurement/H1;->j(Ljava/lang/Object;)V

    .line 153
    .line 154
    .line 155
    iget v8, v8, Lm0/t;->N:I

    .line 156
    .line 157
    div-int/2addr v7, v8

    .line 158
    iget-object v8, p0, LJ0/g;->U:Landroid/graphics/Bitmap;

    .line 159
    .line 160
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    .line 161
    .line 162
    .line 163
    move-result v8

    .line 164
    iget-object v9, p0, LJ0/g;->Q:Lm0/t;

    .line 165
    .line 166
    invoke-static {v9}, Lcom/google/android/gms/internal/measurement/H1;->j(Ljava/lang/Object;)V

    .line 167
    .line 168
    .line 169
    iget v9, v9, Lm0/t;->O:I

    .line 170
    .line 171
    div-int/2addr v8, v9

    .line 172
    iget-object v9, p0, LJ0/g;->Q:Lm0/t;

    .line 173
    .line 174
    iget v9, v9, Lm0/t;->N:I

    .line 175
    .line 176
    iget v10, v6, LJ0/f;->a:I

    .line 177
    .line 178
    rem-int v11, v10, v9

    .line 179
    .line 180
    mul-int v11, v11, v7

    .line 181
    .line 182
    div-int/2addr v10, v9

    .line 183
    mul-int v10, v10, v8

    .line 184
    .line 185
    iget-object v9, p0, LJ0/g;->U:Landroid/graphics/Bitmap;

    .line 186
    .line 187
    invoke-static {v9, v11, v10, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    .line 188
    .line 189
    .line 190
    move-result-object v7

    .line 191
    goto :goto_2

    .line 192
    :cond_a
    iget-object v7, p0, LJ0/g;->U:Landroid/graphics/Bitmap;

    .line 193
    .line 194
    invoke-static {v7}, Lcom/google/android/gms/internal/measurement/H1;->j(Ljava/lang/Object;)V

    .line 195
    .line 196
    .line 197
    :goto_2
    iput-object v7, v6, LJ0/f;->c:Landroid/graphics/Bitmap;

    .line 198
    .line 199
    :goto_3
    iget-object v6, p0, LJ0/g;->W:LJ0/f;

    .line 200
    .line 201
    iget-object v6, v6, LJ0/f;->c:Landroid/graphics/Bitmap;

    .line 202
    .line 203
    invoke-static {v6}, Lcom/google/android/gms/internal/measurement/H1;->j(Ljava/lang/Object;)V

    .line 204
    .line 205
    .line 206
    iget-object v7, p0, LJ0/g;->W:LJ0/f;

    .line 207
    .line 208
    iget-wide v7, v7, LJ0/f;->b:J

    .line 209
    .line 210
    sub-long p1, v7, p1

    .line 211
    .line 212
    invoke-virtual {p0}, LB0/h;->getState()I

    .line 213
    .line 214
    .line 215
    move-result v9

    .line 216
    if-ne v9, v2, :cond_b

    .line 217
    .line 218
    const/4 v2, 0x1

    .line 219
    goto :goto_4

    .line 220
    :cond_b
    const/4 v2, 0x0

    .line 221
    :goto_4
    iget v9, p0, LJ0/g;->P:I

    .line 222
    .line 223
    if-eqz v9, :cond_d

    .line 224
    .line 225
    if-eq v9, v5, :cond_f

    .line 226
    .line 227
    if-ne v9, v4, :cond_c

    .line 228
    .line 229
    goto :goto_5

    .line 230
    :cond_c
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 231
    .line 232
    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 233
    .line 234
    .line 235
    throw p1

    .line 236
    :cond_d
    if-nez v2, :cond_f

    .line 237
    .line 238
    :goto_5
    const-wide/16 v9, 0x7530

    .line 239
    .line 240
    cmp-long v2, p1, v9

    .line 241
    .line 242
    if-gez v2, :cond_e

    .line 243
    .line 244
    goto :goto_6

    .line 245
    :cond_e
    return v1

    .line 246
    :cond_f
    :goto_6
    iget-object p1, p0, LJ0/g;->T:Landroidx/media3/exoplayer/image/ImageOutput;

    .line 247
    .line 248
    iget-object p2, p0, LJ0/g;->L:LJ0/e;

    .line 249
    .line 250
    iget-wide v1, p2, LJ0/e;->b:J

    .line 251
    .line 252
    sub-long/2addr v7, v1

    .line 253
    invoke-interface {p1, v7, v8, v6}, Landroidx/media3/exoplayer/image/ImageOutput;->onImageAvailable(JLandroid/graphics/Bitmap;)V

    .line 254
    .line 255
    .line 256
    iget-object p1, p0, LJ0/g;->W:LJ0/f;

    .line 257
    .line 258
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/H1;->j(Ljava/lang/Object;)V

    .line 259
    .line 260
    .line 261
    iget-wide p1, p1, LJ0/f;->b:J

    .line 262
    .line 263
    iput-wide p1, p0, LJ0/g;->M:J

    .line 264
    .line 265
    :goto_7
    invoke-virtual {v3}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 266
    .line 267
    .line 268
    move-result v1

    .line 269
    if-nez v1, :cond_10

    .line 270
    .line 271
    invoke-virtual {v3}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    .line 272
    .line 273
    .line 274
    move-result-object v1

    .line 275
    check-cast v1, LJ0/e;

    .line 276
    .line 277
    iget-wide v1, v1, LJ0/e;->a:J

    .line 278
    .line 279
    cmp-long v6, p1, v1

    .line 280
    .line 281
    if-ltz v6, :cond_10

    .line 282
    .line 283
    invoke-virtual {v3}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    .line 284
    .line 285
    .line 286
    move-result-object v1

    .line 287
    check-cast v1, LJ0/e;

    .line 288
    .line 289
    iput-object v1, p0, LJ0/g;->L:LJ0/e;

    .line 290
    .line 291
    goto :goto_7

    .line 292
    :cond_10
    iput v4, p0, LJ0/g;->P:I

    .line 293
    .line 294
    const/4 p1, 0x0

    .line 295
    if-eqz v0, :cond_11

    .line 296
    .line 297
    iget-object p2, p0, LJ0/g;->W:LJ0/f;

    .line 298
    .line 299
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/H1;->j(Ljava/lang/Object;)V

    .line 300
    .line 301
    .line 302
    iget-object v0, p0, LJ0/g;->Q:Lm0/t;

    .line 303
    .line 304
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/H1;->j(Ljava/lang/Object;)V

    .line 305
    .line 306
    .line 307
    iget-object v1, p0, LJ0/g;->Q:Lm0/t;

    .line 308
    .line 309
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/H1;->j(Ljava/lang/Object;)V

    .line 310
    .line 311
    .line 312
    iget v1, v1, Lm0/t;->N:I

    .line 313
    .line 314
    iget v0, v0, Lm0/t;->O:I

    .line 315
    .line 316
    mul-int v0, v0, v1

    .line 317
    .line 318
    sub-int/2addr v0, v5

    .line 319
    iget p2, p2, LJ0/f;->a:I

    .line 320
    .line 321
    if-ne p2, v0, :cond_12

    .line 322
    .line 323
    :cond_11
    iput-object p1, p0, LJ0/g;->U:Landroid/graphics/Bitmap;

    .line 324
    .line 325
    :cond_12
    iget-object p2, p0, LJ0/g;->X:LJ0/f;

    .line 326
    .line 327
    iput-object p2, p0, LJ0/g;->W:LJ0/f;

    .line 328
    .line 329
    iput-object p1, p0, LJ0/g;->X:LJ0/f;

    .line 330
    .line 331
    return v5

    .line 332
    :cond_13
    return v1
.end method

.method public final b(J)Z
    .locals 12

    .line 1
    iget-boolean v0, p0, LJ0/g;->V:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, LJ0/g;->W:LJ0/f;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    return v1

    .line 11
    :cond_0
    invoke-virtual {p0}, LB0/h;->getFormatHolder()LB0/Z;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v2, p0, LJ0/g;->R:LJ0/b;

    .line 16
    .line 17
    if-eqz v2, :cond_15

    .line 18
    .line 19
    iget v3, p0, LJ0/g;->O:I

    .line 20
    .line 21
    const/4 v4, 0x3

    .line 22
    if-eq v3, v4, :cond_15

    .line 23
    .line 24
    iget-boolean v3, p0, LJ0/g;->J:Z

    .line 25
    .line 26
    if-eqz v3, :cond_1

    .line 27
    .line 28
    goto/16 :goto_9

    .line 29
    .line 30
    :cond_1
    iget-object v3, p0, LJ0/g;->S:Lw0/g;

    .line 31
    .line 32
    if-nez v3, :cond_2

    .line 33
    .line 34
    invoke-virtual {v2}, Lw0/k;->dequeueInputBuffer()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    check-cast v2, Lw0/g;

    .line 39
    .line 40
    iput-object v2, p0, LJ0/g;->S:Lw0/g;

    .line 41
    .line 42
    if-nez v2, :cond_2

    .line 43
    .line 44
    return v1

    .line 45
    :cond_2
    iget v2, p0, LJ0/g;->O:I

    .line 46
    .line 47
    const/4 v3, 0x2

    .line 48
    const/4 v5, 0x0

    .line 49
    if-ne v2, v3, :cond_3

    .line 50
    .line 51
    iget-object p1, p0, LJ0/g;->S:Lw0/g;

    .line 52
    .line 53
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/H1;->j(Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    iget-object p1, p0, LJ0/g;->S:Lw0/g;

    .line 57
    .line 58
    const/4 p2, 0x4

    .line 59
    invoke-virtual {p1, p2}, Lw0/a;->setFlags(I)V

    .line 60
    .line 61
    .line 62
    iget-object p1, p0, LJ0/g;->R:LJ0/b;

    .line 63
    .line 64
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/H1;->j(Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    iget-object p2, p0, LJ0/g;->S:Lw0/g;

    .line 68
    .line 69
    invoke-virtual {p1, p2}, Lw0/k;->queueInputBuffer(Lw0/g;)V

    .line 70
    .line 71
    .line 72
    iput-object v5, p0, LJ0/g;->S:Lw0/g;

    .line 73
    .line 74
    iput v4, p0, LJ0/g;->O:I

    .line 75
    .line 76
    return v1

    .line 77
    :cond_3
    iget-object v2, p0, LJ0/g;->S:Lw0/g;

    .line 78
    .line 79
    invoke-virtual {p0, v0, v2, v1}, LB0/h;->readSource(LB0/Z;Lw0/g;I)I

    .line 80
    .line 81
    .line 82
    move-result v2

    .line 83
    const/4 v4, -0x5

    .line 84
    const/4 v6, 0x1

    .line 85
    if-eq v2, v4, :cond_14

    .line 86
    .line 87
    const/4 v0, -0x4

    .line 88
    if-eq v2, v0, :cond_5

    .line 89
    .line 90
    const/4 p1, -0x3

    .line 91
    if-ne v2, p1, :cond_4

    .line 92
    .line 93
    return v1

    .line 94
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 95
    .line 96
    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 97
    .line 98
    .line 99
    throw p1

    .line 100
    :cond_5
    iget-object v0, p0, LJ0/g;->S:Lw0/g;

    .line 101
    .line 102
    invoke-virtual {v0}, Lw0/g;->g()V

    .line 103
    .line 104
    .line 105
    iget-object v0, p0, LJ0/g;->S:Lw0/g;

    .line 106
    .line 107
    iget-object v0, v0, Lw0/g;->I:Ljava/nio/ByteBuffer;

    .line 108
    .line 109
    if-eqz v0, :cond_6

    .line 110
    .line 111
    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    .line 112
    .line 113
    .line 114
    move-result v0

    .line 115
    if-gtz v0, :cond_7

    .line 116
    .line 117
    :cond_6
    iget-object v0, p0, LJ0/g;->S:Lw0/g;

    .line 118
    .line 119
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/H1;->j(Ljava/lang/Object;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v0}, Lw0/a;->isEndOfStream()Z

    .line 123
    .line 124
    .line 125
    move-result v0

    .line 126
    if-eqz v0, :cond_8

    .line 127
    .line 128
    :cond_7
    const/4 v0, 0x1

    .line 129
    goto :goto_0

    .line 130
    :cond_8
    const/4 v0, 0x0

    .line 131
    :goto_0
    if-eqz v0, :cond_9

    .line 132
    .line 133
    iget-object v2, p0, LJ0/g;->S:Lw0/g;

    .line 134
    .line 135
    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/H1;->j(Ljava/lang/Object;)V

    .line 136
    .line 137
    .line 138
    iget-object v3, p0, LJ0/g;->Q:Lm0/t;

    .line 139
    .line 140
    iput-object v3, v2, Lw0/g;->G:Lm0/t;

    .line 141
    .line 142
    iget-object v2, p0, LJ0/g;->R:LJ0/b;

    .line 143
    .line 144
    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/H1;->j(Ljava/lang/Object;)V

    .line 145
    .line 146
    .line 147
    iget-object v3, p0, LJ0/g;->S:Lw0/g;

    .line 148
    .line 149
    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/H1;->j(Ljava/lang/Object;)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v2, v3}, Lw0/k;->queueInputBuffer(Lw0/g;)V

    .line 153
    .line 154
    .line 155
    iput v1, p0, LJ0/g;->Y:I

    .line 156
    .line 157
    :cond_9
    iget-object v2, p0, LJ0/g;->S:Lw0/g;

    .line 158
    .line 159
    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/H1;->j(Ljava/lang/Object;)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {v2}, Lw0/a;->isEndOfStream()Z

    .line 163
    .line 164
    .line 165
    move-result v3

    .line 166
    if-eqz v3, :cond_a

    .line 167
    .line 168
    iput-boolean v6, p0, LJ0/g;->V:Z

    .line 169
    .line 170
    goto/16 :goto_7

    .line 171
    .line 172
    :cond_a
    new-instance v3, LJ0/f;

    .line 173
    .line 174
    iget v4, p0, LJ0/g;->Y:I

    .line 175
    .line 176
    iget-wide v7, v2, Lw0/g;->K:J

    .line 177
    .line 178
    invoke-direct {v3, v4, v7, v8}, LJ0/f;-><init>(IJ)V

    .line 179
    .line 180
    .line 181
    iput-object v3, p0, LJ0/g;->X:LJ0/f;

    .line 182
    .line 183
    add-int/lit8 v2, v4, 0x1

    .line 184
    .line 185
    iput v2, p0, LJ0/g;->Y:I

    .line 186
    .line 187
    iget-boolean v2, p0, LJ0/g;->V:Z

    .line 188
    .line 189
    if-nez v2, :cond_11

    .line 190
    .line 191
    const-wide/16 v2, 0x7530

    .line 192
    .line 193
    sub-long v9, v7, v2

    .line 194
    .line 195
    cmp-long v11, v9, p1

    .line 196
    .line 197
    if-gtz v11, :cond_b

    .line 198
    .line 199
    add-long/2addr v2, v7

    .line 200
    cmp-long v9, p1, v2

    .line 201
    .line 202
    if-gtz v9, :cond_b

    .line 203
    .line 204
    const/4 v2, 0x1

    .line 205
    goto :goto_1

    .line 206
    :cond_b
    const/4 v2, 0x0

    .line 207
    :goto_1
    iget-object v3, p0, LJ0/g;->W:LJ0/f;

    .line 208
    .line 209
    if-eqz v3, :cond_c

    .line 210
    .line 211
    iget-wide v9, v3, LJ0/f;->b:J

    .line 212
    .line 213
    cmp-long v3, v9, p1

    .line 214
    .line 215
    if-gtz v3, :cond_c

    .line 216
    .line 217
    cmp-long v3, p1, v7

    .line 218
    .line 219
    if-gez v3, :cond_c

    .line 220
    .line 221
    const/4 p1, 0x1

    .line 222
    goto :goto_2

    .line 223
    :cond_c
    const/4 p1, 0x0

    .line 224
    :goto_2
    iget-object p2, p0, LJ0/g;->Q:Lm0/t;

    .line 225
    .line 226
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/H1;->j(Ljava/lang/Object;)V

    .line 227
    .line 228
    .line 229
    iget p2, p2, Lm0/t;->N:I

    .line 230
    .line 231
    const/4 v3, -0x1

    .line 232
    if-eq p2, v3, :cond_e

    .line 233
    .line 234
    iget-object p2, p0, LJ0/g;->Q:Lm0/t;

    .line 235
    .line 236
    iget v7, p2, Lm0/t;->O:I

    .line 237
    .line 238
    if-eq v7, v3, :cond_e

    .line 239
    .line 240
    iget p2, p2, Lm0/t;->N:I

    .line 241
    .line 242
    mul-int v7, v7, p2

    .line 243
    .line 244
    sub-int/2addr v7, v6

    .line 245
    if-ne v4, v7, :cond_d

    .line 246
    .line 247
    goto :goto_3

    .line 248
    :cond_d
    const/4 p2, 0x0

    .line 249
    goto :goto_4

    .line 250
    :cond_e
    :goto_3
    const/4 p2, 0x1

    .line 251
    :goto_4
    if-nez v2, :cond_10

    .line 252
    .line 253
    if-nez p1, :cond_10

    .line 254
    .line 255
    if-eqz p2, :cond_f

    .line 256
    .line 257
    goto :goto_5

    .line 258
    :cond_f
    const/4 p2, 0x0

    .line 259
    goto :goto_6

    .line 260
    :cond_10
    :goto_5
    const/4 p2, 0x1

    .line 261
    :goto_6
    iput-boolean p2, p0, LJ0/g;->V:Z

    .line 262
    .line 263
    if-eqz p1, :cond_11

    .line 264
    .line 265
    if-nez v2, :cond_11

    .line 266
    .line 267
    goto :goto_7

    .line 268
    :cond_11
    iget-object p1, p0, LJ0/g;->X:LJ0/f;

    .line 269
    .line 270
    iput-object p1, p0, LJ0/g;->W:LJ0/f;

    .line 271
    .line 272
    iput-object v5, p0, LJ0/g;->X:LJ0/f;

    .line 273
    .line 274
    :goto_7
    iget-object p1, p0, LJ0/g;->S:Lw0/g;

    .line 275
    .line 276
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/H1;->j(Ljava/lang/Object;)V

    .line 277
    .line 278
    .line 279
    invoke-virtual {p1}, Lw0/a;->isEndOfStream()Z

    .line 280
    .line 281
    .line 282
    move-result p1

    .line 283
    if-eqz p1, :cond_12

    .line 284
    .line 285
    iput-boolean v6, p0, LJ0/g;->J:Z

    .line 286
    .line 287
    iput-object v5, p0, LJ0/g;->S:Lw0/g;

    .line 288
    .line 289
    return v1

    .line 290
    :cond_12
    iget-wide p1, p0, LJ0/g;->N:J

    .line 291
    .line 292
    iget-object v1, p0, LJ0/g;->S:Lw0/g;

    .line 293
    .line 294
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/H1;->j(Ljava/lang/Object;)V

    .line 295
    .line 296
    .line 297
    iget-wide v1, v1, Lw0/g;->K:J

    .line 298
    .line 299
    invoke-static {p1, p2, v1, v2}, Ljava/lang/Math;->max(JJ)J

    .line 300
    .line 301
    .line 302
    move-result-wide p1

    .line 303
    iput-wide p1, p0, LJ0/g;->N:J

    .line 304
    .line 305
    if-eqz v0, :cond_13

    .line 306
    .line 307
    iput-object v5, p0, LJ0/g;->S:Lw0/g;

    .line 308
    .line 309
    goto :goto_8

    .line 310
    :cond_13
    iget-object p1, p0, LJ0/g;->S:Lw0/g;

    .line 311
    .line 312
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/H1;->j(Ljava/lang/Object;)V

    .line 313
    .line 314
    .line 315
    invoke-virtual {p1}, Lw0/g;->clear()V

    .line 316
    .line 317
    .line 318
    :goto_8
    iget-boolean p1, p0, LJ0/g;->V:Z

    .line 319
    .line 320
    xor-int/2addr p1, v6

    .line 321
    return p1

    .line 322
    :cond_14
    iget-object p1, v0, LB0/Z;->b:Lm0/t;

    .line 323
    .line 324
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/H1;->j(Ljava/lang/Object;)V

    .line 325
    .line 326
    .line 327
    iput-object p1, p0, LJ0/g;->Q:Lm0/t;

    .line 328
    .line 329
    iput-boolean v6, p0, LJ0/g;->Z:Z

    .line 330
    .line 331
    iput v3, p0, LJ0/g;->O:I

    .line 332
    .line 333
    return v6

    .line 334
    :cond_15
    :goto_9
    return v1
.end method

.method public final c()V
    .locals 5

    .line 1
    iget-boolean v0, p0, LJ0/g;->Z:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, LJ0/g;->Q:Lm0/t;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, LJ0/g;->G:LF/d;

    .line 12
    .line 13
    invoke-virtual {v1, v0}, LF/d;->j(Lm0/t;)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/4 v2, 0x4

    .line 18
    const/4 v3, 0x0

    .line 19
    invoke-static {v2, v3, v3, v3}, LA0/O;->o(IIII)I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eq v0, v2, :cond_2

    .line 24
    .line 25
    const/4 v2, 0x3

    .line 26
    invoke-static {v2, v3, v3, v3}, LA0/O;->o(IIII)I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-ne v0, v2, :cond_1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    new-instance v0, LJ0/c;

    .line 34
    .line 35
    const-string v1, "Provided decoder factory can\'t create decoder for format."

    .line 36
    .line 37
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    iget-object v1, p0, LJ0/g;->Q:Lm0/t;

    .line 41
    .line 42
    const/16 v2, 0xfa5

    .line 43
    .line 44
    invoke-virtual {p0, v0, v1, v2}, LB0/h;->createRendererException(Ljava/lang/Throwable;Lm0/t;I)LB0/w;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    throw v0

    .line 49
    :cond_2
    :goto_0
    iget-object v0, p0, LJ0/g;->R:LJ0/b;

    .line 50
    .line 51
    if-eqz v0, :cond_3

    .line 52
    .line 53
    invoke-virtual {v0}, Lw0/k;->release()V

    .line 54
    .line 55
    .line 56
    :cond_3
    new-instance v0, LJ0/b;

    .line 57
    .line 58
    iget-object v2, v1, LF/d;->I:Ljava/lang/Object;

    .line 59
    .line 60
    check-cast v2, Landroid/content/Context;

    .line 61
    .line 62
    iget-object v4, v1, LF/d;->J:Ljava/lang/Object;

    .line 63
    .line 64
    invoke-static {v4}, LA0/O;->I(Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    iget v1, v1, LF/d;->H:I

    .line 68
    .line 69
    invoke-direct {v0, v2, v1}, LJ0/b;-><init>(Landroid/content/Context;I)V

    .line 70
    .line 71
    .line 72
    iput-object v0, p0, LJ0/g;->R:LJ0/b;

    .line 73
    .line 74
    iput-boolean v3, p0, LJ0/g;->Z:Z

    .line 75
    .line 76
    return-void
.end method

.method public final d()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, LJ0/g;->S:Lw0/g;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    iput v1, p0, LJ0/g;->O:I

    .line 6
    .line 7
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    iput-wide v1, p0, LJ0/g;->N:J

    .line 13
    .line 14
    iget-object v1, p0, LJ0/g;->R:LJ0/b;

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    invoke-virtual {v1}, Lw0/k;->release()V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, LJ0/g;->R:LJ0/b;

    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "ImageRenderer"

    .line 2
    .line 3
    return-object v0
.end method

.method public final handleMessage(ILjava/lang/Object;)V
    .locals 1

    .line 1
    const/16 v0, 0xf

    .line 2
    .line 3
    if-eq p1, v0, :cond_0

    .line 4
    .line 5
    goto :goto_1

    .line 6
    :cond_0
    instance-of p1, p2, Landroidx/media3/exoplayer/image/ImageOutput;

    .line 7
    .line 8
    if-eqz p1, :cond_1

    .line 9
    .line 10
    check-cast p2, Landroidx/media3/exoplayer/image/ImageOutput;

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_1
    const/4 p2, 0x0

    .line 14
    :goto_0
    if-nez p2, :cond_2

    .line 15
    .line 16
    sget-object p2, Landroidx/media3/exoplayer/image/ImageOutput;->a:LJ0/d;

    .line 17
    .line 18
    :cond_2
    iput-object p2, p0, LJ0/g;->T:Landroidx/media3/exoplayer/image/ImageOutput;

    .line 19
    .line 20
    :goto_1
    return-void
.end method

.method public final isEnded()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, LJ0/g;->K:Z

    .line 2
    .line 3
    return v0
.end method

.method public final isReady()Z
    .locals 2

    .line 1
    iget v0, p0, LJ0/g;->P:I

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    if-eq v0, v1, :cond_1

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    iget-boolean v0, p0, LJ0/g;->V:Z

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    goto :goto_1

    .line 15
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 16
    :goto_1
    return v0
.end method

.method public final onDisabled()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, LJ0/g;->Q:Lm0/t;

    .line 3
    .line 4
    sget-object v0, LJ0/e;->c:LJ0/e;

    .line 5
    .line 6
    iput-object v0, p0, LJ0/g;->L:LJ0/e;

    .line 7
    .line 8
    iget-object v0, p0, LJ0/g;->I:Ljava/util/ArrayDeque;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, LJ0/g;->d()V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, LJ0/g;->T:Landroidx/media3/exoplayer/image/ImageOutput;

    .line 17
    .line 18
    invoke-interface {v0}, Landroidx/media3/exoplayer/image/ImageOutput;->a()V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final onEnabled(ZZ)V
    .locals 0

    .line 1
    iput p2, p0, LJ0/g;->P:I

    .line 2
    .line 3
    return-void
.end method

.method public final onPositionReset(JZ)V
    .locals 0

    .line 1
    const/4 p1, 0x1

    .line 2
    iget p2, p0, LJ0/g;->P:I

    .line 3
    .line 4
    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    iput p1, p0, LJ0/g;->P:I

    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    iput-boolean p1, p0, LJ0/g;->K:Z

    .line 12
    .line 13
    iput-boolean p1, p0, LJ0/g;->J:Z

    .line 14
    .line 15
    const/4 p2, 0x0

    .line 16
    iput-object p2, p0, LJ0/g;->U:Landroid/graphics/Bitmap;

    .line 17
    .line 18
    iput-object p2, p0, LJ0/g;->W:LJ0/f;

    .line 19
    .line 20
    iput-object p2, p0, LJ0/g;->X:LJ0/f;

    .line 21
    .line 22
    iput-boolean p1, p0, LJ0/g;->V:Z

    .line 23
    .line 24
    iput-object p2, p0, LJ0/g;->S:Lw0/g;

    .line 25
    .line 26
    iget-object p1, p0, LJ0/g;->R:LJ0/b;

    .line 27
    .line 28
    if-eqz p1, :cond_0

    .line 29
    .line 30
    invoke-virtual {p1}, Lw0/k;->flush()V

    .line 31
    .line 32
    .line 33
    :cond_0
    iget-object p1, p0, LJ0/g;->I:Ljava/util/ArrayDeque;

    .line 34
    .line 35
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->clear()V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public final onRelease()V
    .locals 0

    .line 1
    invoke-virtual {p0}, LJ0/g;->d()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final onReset()V
    .locals 2

    .line 1
    invoke-virtual {p0}, LJ0/g;->d()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iget v1, p0, LJ0/g;->P:I

    .line 6
    .line 7
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iput v0, p0, LJ0/g;->P:I

    .line 12
    .line 13
    return-void
.end method

.method public final onStreamChanged([Lm0/t;JJLO0/y;)V
    .locals 4

    .line 1
    iget-object p1, p0, LJ0/g;->L:LJ0/e;

    .line 2
    .line 3
    iget-wide p1, p1, LJ0/e;->b:J

    .line 4
    .line 5
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    cmp-long p3, p1, v0

    .line 11
    .line 12
    if-eqz p3, :cond_1

    .line 13
    .line 14
    iget-object p1, p0, LJ0/g;->I:Ljava/util/ArrayDeque;

    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 17
    .line 18
    .line 19
    move-result p2

    .line 20
    if-eqz p2, :cond_0

    .line 21
    .line 22
    iget-wide p2, p0, LJ0/g;->N:J

    .line 23
    .line 24
    cmp-long p6, p2, v0

    .line 25
    .line 26
    if-eqz p6, :cond_1

    .line 27
    .line 28
    iget-wide v2, p0, LJ0/g;->M:J

    .line 29
    .line 30
    cmp-long p6, v2, v0

    .line 31
    .line 32
    if-eqz p6, :cond_0

    .line 33
    .line 34
    cmp-long p6, v2, p2

    .line 35
    .line 36
    if-ltz p6, :cond_0

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    new-instance p2, LJ0/e;

    .line 40
    .line 41
    iget-wide v0, p0, LJ0/g;->N:J

    .line 42
    .line 43
    invoke-direct {p2, v0, v1, p4, p5}, LJ0/e;-><init>(JJ)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, p2}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_1
    :goto_0
    new-instance p1, LJ0/e;

    .line 51
    .line 52
    invoke-direct {p1, v0, v1, p4, p5}, LJ0/e;-><init>(JJ)V

    .line 53
    .line 54
    .line 55
    iput-object p1, p0, LJ0/g;->L:LJ0/e;

    .line 56
    .line 57
    :goto_1
    return-void
.end method

.method public final render(JJ)V
    .locals 3

    .line 1
    iget-boolean p3, p0, LJ0/g;->K:Z

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object p3, p0, LJ0/g;->Q:Lm0/t;

    .line 7
    .line 8
    if-nez p3, :cond_3

    .line 9
    .line 10
    invoke-virtual {p0}, LB0/h;->getFormatHolder()LB0/Z;

    .line 11
    .line 12
    .line 13
    move-result-object p3

    .line 14
    iget-object p4, p0, LJ0/g;->H:Lw0/g;

    .line 15
    .line 16
    invoke-virtual {p4}, Lw0/g;->clear()V

    .line 17
    .line 18
    .line 19
    const/4 v0, 0x2

    .line 20
    invoke-virtual {p0, p3, p4, v0}, LB0/h;->readSource(LB0/Z;Lw0/g;I)I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    const/4 v1, -0x5

    .line 25
    const/4 v2, 0x1

    .line 26
    if-ne v0, v1, :cond_1

    .line 27
    .line 28
    iget-object p3, p3, LB0/Z;->b:Lm0/t;

    .line 29
    .line 30
    invoke-static {p3}, Lcom/google/android/gms/internal/measurement/H1;->j(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    iput-object p3, p0, LJ0/g;->Q:Lm0/t;

    .line 34
    .line 35
    iput-boolean v2, p0, LJ0/g;->Z:Z

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    const/4 p1, -0x4

    .line 39
    if-ne v0, p1, :cond_2

    .line 40
    .line 41
    invoke-virtual {p4}, Lw0/a;->isEndOfStream()Z

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/H1;->i(Z)V

    .line 46
    .line 47
    .line 48
    iput-boolean v2, p0, LJ0/g;->J:Z

    .line 49
    .line 50
    iput-boolean v2, p0, LJ0/g;->K:Z

    .line 51
    .line 52
    :cond_2
    return-void

    .line 53
    :cond_3
    :goto_0
    iget-object p3, p0, LJ0/g;->R:LJ0/b;

    .line 54
    .line 55
    if-nez p3, :cond_4

    .line 56
    .line 57
    invoke-virtual {p0}, LJ0/g;->c()V

    .line 58
    .line 59
    .line 60
    :cond_4
    :try_start_0
    const-string p3, "drainAndFeedDecoder"

    .line 61
    .line 62
    invoke-static {p3}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    :goto_1
    invoke-virtual {p0, p1, p2}, LJ0/g;->a(J)Z

    .line 66
    .line 67
    .line 68
    move-result p3

    .line 69
    if-eqz p3, :cond_5

    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_5
    :goto_2
    invoke-virtual {p0, p1, p2}, LJ0/g;->b(J)Z

    .line 73
    .line 74
    .line 75
    move-result p3

    .line 76
    if-eqz p3, :cond_6

    .line 77
    .line 78
    goto :goto_2

    .line 79
    :cond_6
    invoke-static {}, Landroid/os/Trace;->endSection()V
    :try_end_0
    .catch LJ0/c; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    .line 81
    .line 82
    return-void

    .line 83
    :catch_0
    move-exception p1

    .line 84
    const/4 p2, 0x0

    .line 85
    const/16 p3, 0xfa3

    .line 86
    .line 87
    invoke-virtual {p0, p1, p2, p3}, LB0/h;->createRendererException(Ljava/lang/Throwable;Lm0/t;I)LB0/w;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    throw p1
.end method

.method public final supportsFormat(Lm0/t;)I
    .locals 1

    .line 1
    iget-object v0, p0, LJ0/g;->G:LF/d;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, LF/d;->j(Lm0/t;)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method
