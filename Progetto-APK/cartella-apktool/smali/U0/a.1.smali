.class public abstract LU0/a;
.super LB0/h;
.source "SourceFile"


# instance fields
.field public final G:J

.field public final H:I

.field public final I:Lcom/google/android/gms/internal/atv_ads_framework/x0;

.field public final J:Lc/g;

.field public final K:Lw0/g;

.field public L:Lm0/t;

.field public M:Lm0/t;

.field public N:Lw0/d;

.field public O:Lw0/g;

.field public P:Landroidx/media3/decoder/VideoDecoderOutputBuffer;

.field public Q:I

.field public R:Ljava/lang/Object;

.field public S:Landroid/view/Surface;

.field public T:LU0/A;

.field public U:LU0/B;

.field public V:LG0/l;

.field public W:LG0/l;

.field public X:I

.field public Y:Z

.field public Z:I

.field public a0:J

.field public b0:J

.field public c0:Z

.field public d0:Z

.field public e0:Z

.field public f0:Lm0/w0;

.field public g0:J

.field public h0:I

.field public i0:I

.field public j0:I

.field public k0:J

.field public l0:LB0/i;


# direct methods
.method public constructor <init>(JLandroid/os/Handler;LU0/N;I)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-direct {p0, v0}, LB0/h;-><init>(I)V

    .line 3
    .line 4
    .line 5
    iput-wide p1, p0, LU0/a;->G:J

    .line 6
    .line 7
    iput p5, p0, LU0/a;->H:I

    .line 8
    .line 9
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    iput-wide p1, p0, LU0/a;->b0:J

    .line 15
    .line 16
    new-instance p1, Lc/g;

    .line 17
    .line 18
    invoke-direct {p1}, Lc/g;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object p1, p0, LU0/a;->J:Lc/g;

    .line 22
    .line 23
    new-instance p1, Lw0/g;

    .line 24
    .line 25
    const/4 p2, 0x0

    .line 26
    invoke-direct {p1, p2, p2}, Lw0/g;-><init>(II)V

    .line 27
    .line 28
    .line 29
    iput-object p1, p0, LU0/a;->K:Lw0/g;

    .line 30
    .line 31
    new-instance p1, Lcom/google/android/gms/internal/atv_ads_framework/x0;

    .line 32
    .line 33
    invoke-direct {p1, p3, p4}, Lcom/google/android/gms/internal/atv_ads_framework/x0;-><init>(Landroid/os/Handler;LU0/N;)V

    .line 34
    .line 35
    .line 36
    iput-object p1, p0, LU0/a;->I:Lcom/google/android/gms/internal/atv_ads_framework/x0;

    .line 37
    .line 38
    iput p2, p0, LU0/a;->X:I

    .line 39
    .line 40
    const/4 p1, -0x1

    .line 41
    iput p1, p0, LU0/a;->Q:I

    .line 42
    .line 43
    iput p2, p0, LU0/a;->Z:I

    .line 44
    .line 45
    new-instance p1, LB0/i;

    .line 46
    .line 47
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 48
    .line 49
    .line 50
    iput-object p1, p0, LU0/a;->l0:LB0/i;

    .line 51
    .line 52
    return-void
.end method


# virtual methods
.method public final a(J)Z
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-wide/from16 v1, p1

    .line 4
    .line 5
    iget-object v3, v0, LU0/a;->P:Landroidx/media3/decoder/VideoDecoderOutputBuffer;

    .line 6
    .line 7
    const/4 v4, 0x0

    .line 8
    if-nez v3, :cond_1

    .line 9
    .line 10
    iget-object v3, v0, LU0/a;->N:Lw0/d;

    .line 11
    .line 12
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    invoke-interface {v3}, Lw0/d;->dequeueOutputBuffer()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    check-cast v3, Landroidx/media3/decoder/VideoDecoderOutputBuffer;

    .line 20
    .line 21
    iput-object v3, v0, LU0/a;->P:Landroidx/media3/decoder/VideoDecoderOutputBuffer;

    .line 22
    .line 23
    if-nez v3, :cond_0

    .line 24
    .line 25
    return v4

    .line 26
    :cond_0
    iget-object v5, v0, LU0/a;->l0:LB0/i;

    .line 27
    .line 28
    iget v6, v5, LB0/i;->f:I

    .line 29
    .line 30
    iget v3, v3, Lw0/i;->skippedOutputBufferCount:I

    .line 31
    .line 32
    add-int/2addr v6, v3

    .line 33
    iput v6, v5, LB0/i;->f:I

    .line 34
    .line 35
    iget v5, v0, LU0/a;->j0:I

    .line 36
    .line 37
    sub-int/2addr v5, v3

    .line 38
    iput v5, v0, LU0/a;->j0:I

    .line 39
    .line 40
    :cond_1
    iget-object v3, v0, LU0/a;->P:Landroidx/media3/decoder/VideoDecoderOutputBuffer;

    .line 41
    .line 42
    invoke-virtual {v3}, Lw0/a;->isEndOfStream()Z

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    const/4 v5, 0x1

    .line 47
    const/4 v6, 0x0

    .line 48
    const/4 v7, 0x2

    .line 49
    if-eqz v3, :cond_3

    .line 50
    .line 51
    iget v1, v0, LU0/a;->X:I

    .line 52
    .line 53
    if-ne v1, v7, :cond_2

    .line 54
    .line 55
    invoke-virtual/range {p0 .. p0}, LU0/a;->f()V

    .line 56
    .line 57
    .line 58
    invoke-virtual/range {p0 .. p0}, LU0/a;->d()V

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_2
    iget-object v1, v0, LU0/a;->P:Landroidx/media3/decoder/VideoDecoderOutputBuffer;

    .line 63
    .line 64
    invoke-virtual {v1}, Landroidx/media3/decoder/VideoDecoderOutputBuffer;->release()V

    .line 65
    .line 66
    .line 67
    iput-object v6, v0, LU0/a;->P:Landroidx/media3/decoder/VideoDecoderOutputBuffer;

    .line 68
    .line 69
    iput-boolean v5, v0, LU0/a;->e0:Z

    .line 70
    .line 71
    :goto_0
    return v4

    .line 72
    :cond_3
    iget-wide v8, v0, LU0/a;->a0:J

    .line 73
    .line 74
    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    cmp-long v3, v8, v10

    .line 80
    .line 81
    if-nez v3, :cond_4

    .line 82
    .line 83
    iput-wide v1, v0, LU0/a;->a0:J

    .line 84
    .line 85
    :cond_4
    iget-object v3, v0, LU0/a;->P:Landroidx/media3/decoder/VideoDecoderOutputBuffer;

    .line 86
    .line 87
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 88
    .line 89
    .line 90
    iget-wide v8, v3, Lw0/i;->timeUs:J

    .line 91
    .line 92
    sub-long v10, v8, v1

    .line 93
    .line 94
    iget v12, v0, LU0/a;->Q:I

    .line 95
    .line 96
    const/4 v13, -0x1

    .line 97
    const-wide/16 v14, -0x7530

    .line 98
    .line 99
    if-eq v12, v13, :cond_12

    .line 100
    .line 101
    iget-object v12, v0, LU0/a;->J:Lc/g;

    .line 102
    .line 103
    invoke-virtual {v12, v8, v9}, Lc/g;->k(J)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v13

    .line 107
    check-cast v13, Lm0/t;

    .line 108
    .line 109
    if-eqz v13, :cond_5

    .line 110
    .line 111
    iput-object v13, v0, LU0/a;->M:Lm0/t;

    .line 112
    .line 113
    goto :goto_1

    .line 114
    :cond_5
    iget-object v13, v0, LU0/a;->M:Lm0/t;

    .line 115
    .line 116
    if-nez v13, :cond_6

    .line 117
    .line 118
    invoke-virtual {v12}, Lc/g;->j()Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v12

    .line 122
    check-cast v12, Lm0/t;

    .line 123
    .line 124
    iput-object v12, v0, LU0/a;->M:Lm0/t;

    .line 125
    .line 126
    :cond_6
    :goto_1
    invoke-virtual/range {p0 .. p0}, LB0/h;->getStreamOffsetUs()J

    .line 127
    .line 128
    .line 129
    move-result-wide v12

    .line 130
    sub-long/2addr v8, v12

    .line 131
    invoke-virtual/range {p0 .. p0}, LB0/h;->getState()I

    .line 132
    .line 133
    .line 134
    move-result v12

    .line 135
    if-ne v12, v7, :cond_7

    .line 136
    .line 137
    const/4 v12, 0x1

    .line 138
    goto :goto_2

    .line 139
    :cond_7
    const/4 v12, 0x0

    .line 140
    :goto_2
    iget v13, v0, LU0/a;->Z:I

    .line 141
    .line 142
    if-eqz v13, :cond_9

    .line 143
    .line 144
    if-eq v13, v5, :cond_a

    .line 145
    .line 146
    const/4 v6, 0x3

    .line 147
    if-ne v13, v6, :cond_8

    .line 148
    .line 149
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 150
    .line 151
    .line 152
    move-result-wide v16

    .line 153
    invoke-static/range {v16 .. v17}, Lp0/M;->R(J)J

    .line 154
    .line 155
    .line 156
    move-result-wide v16

    .line 157
    iget-wide v4, v0, LU0/a;->k0:J

    .line 158
    .line 159
    sub-long v16, v16, v4

    .line 160
    .line 161
    if-eqz v12, :cond_b

    .line 162
    .line 163
    cmp-long v4, v10, v14

    .line 164
    .line 165
    if-gez v4, :cond_b

    .line 166
    .line 167
    const-wide/32 v4, 0x186a0

    .line 168
    .line 169
    .line 170
    cmp-long v12, v16, v4

    .line 171
    .line 172
    if-lez v12, :cond_b

    .line 173
    .line 174
    goto :goto_3

    .line 175
    :cond_8
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 176
    .line 177
    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 178
    .line 179
    .line 180
    throw v1

    .line 181
    :cond_9
    if-eqz v12, :cond_b

    .line 182
    .line 183
    :cond_a
    :goto_3
    iget-object v1, v0, LU0/a;->M:Lm0/t;

    .line 184
    .line 185
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 186
    .line 187
    .line 188
    invoke-virtual {v0, v3, v8, v9, v1}, LU0/a;->g(Landroidx/media3/decoder/VideoDecoderOutputBuffer;JLm0/t;)V

    .line 189
    .line 190
    .line 191
    :goto_4
    const/4 v4, 0x1

    .line 192
    goto :goto_7

    .line 193
    :cond_b
    invoke-virtual/range {p0 .. p0}, LB0/h;->getState()I

    .line 194
    .line 195
    .line 196
    move-result v4

    .line 197
    if-ne v4, v7, :cond_c

    .line 198
    .line 199
    iget-wide v4, v0, LU0/a;->a0:J

    .line 200
    .line 201
    cmp-long v7, v1, v4

    .line 202
    .line 203
    if-nez v7, :cond_d

    .line 204
    .line 205
    :cond_c
    const/4 v1, 0x0

    .line 206
    goto :goto_5

    .line 207
    :cond_d
    const-wide/32 v4, -0x7a120

    .line 208
    .line 209
    .line 210
    cmp-long v7, v10, v4

    .line 211
    .line 212
    if-gez v7, :cond_e

    .line 213
    .line 214
    invoke-virtual/range {p0 .. p2}, LB0/h;->skipSource(J)I

    .line 215
    .line 216
    .line 217
    move-result v1

    .line 218
    if-nez v1, :cond_f

    .line 219
    .line 220
    :cond_e
    const/4 v4, 0x1

    .line 221
    goto :goto_6

    .line 222
    :cond_f
    iget-object v2, v0, LU0/a;->l0:LB0/i;

    .line 223
    .line 224
    iget v3, v2, LB0/i;->j:I

    .line 225
    .line 226
    const/4 v4, 0x1

    .line 227
    add-int/2addr v3, v4

    .line 228
    iput v3, v2, LB0/i;->j:I

    .line 229
    .line 230
    iget v2, v0, LU0/a;->j0:I

    .line 231
    .line 232
    invoke-virtual {v0, v1, v2}, LU0/a;->j(II)V

    .line 233
    .line 234
    .line 235
    invoke-virtual/range {p0 .. p0}, LU0/a;->c()V

    .line 236
    .line 237
    .line 238
    :cond_10
    :goto_5
    const/4 v4, 0x0

    .line 239
    goto :goto_7

    .line 240
    :goto_6
    cmp-long v1, v10, v14

    .line 241
    .line 242
    if-gez v1, :cond_11

    .line 243
    .line 244
    const/4 v1, 0x0

    .line 245
    invoke-virtual {v0, v1, v4}, LU0/a;->j(II)V

    .line 246
    .line 247
    .line 248
    invoke-virtual {v3}, Landroidx/media3/decoder/VideoDecoderOutputBuffer;->release()V

    .line 249
    .line 250
    .line 251
    goto :goto_4

    .line 252
    :cond_11
    const/4 v1, 0x0

    .line 253
    const-wide/16 v4, 0x7530

    .line 254
    .line 255
    cmp-long v2, v10, v4

    .line 256
    .line 257
    if-gez v2, :cond_10

    .line 258
    .line 259
    iget-object v1, v0, LU0/a;->M:Lm0/t;

    .line 260
    .line 261
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 262
    .line 263
    .line 264
    invoke-virtual {v0, v3, v8, v9, v1}, LU0/a;->g(Landroidx/media3/decoder/VideoDecoderOutputBuffer;JLm0/t;)V

    .line 265
    .line 266
    .line 267
    goto :goto_4

    .line 268
    :cond_12
    const/4 v1, 0x0

    .line 269
    cmp-long v2, v10, v14

    .line 270
    .line 271
    if-gez v2, :cond_10

    .line 272
    .line 273
    iget-object v1, v0, LU0/a;->l0:LB0/i;

    .line 274
    .line 275
    iget v2, v1, LB0/i;->f:I

    .line 276
    .line 277
    const/4 v4, 0x1

    .line 278
    add-int/2addr v2, v4

    .line 279
    iput v2, v1, LB0/i;->f:I

    .line 280
    .line 281
    invoke-virtual {v3}, Landroidx/media3/decoder/VideoDecoderOutputBuffer;->release()V

    .line 282
    .line 283
    .line 284
    goto :goto_4

    .line 285
    :goto_7
    if-eqz v4, :cond_13

    .line 286
    .line 287
    iget-object v1, v0, LU0/a;->P:Landroidx/media3/decoder/VideoDecoderOutputBuffer;

    .line 288
    .line 289
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 290
    .line 291
    .line 292
    iget v1, v0, LU0/a;->j0:I

    .line 293
    .line 294
    const/4 v2, 0x1

    .line 295
    sub-int/2addr v1, v2

    .line 296
    iput v1, v0, LU0/a;->j0:I

    .line 297
    .line 298
    const/4 v1, 0x0

    .line 299
    iput-object v1, v0, LU0/a;->P:Landroidx/media3/decoder/VideoDecoderOutputBuffer;

    .line 300
    .line 301
    :cond_13
    return v4
.end method

.method public final b()Z
    .locals 8

    .line 1
    iget-object v0, p0, LU0/a;->N:Lw0/d;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_8

    .line 5
    .line 6
    iget v2, p0, LU0/a;->X:I

    .line 7
    .line 8
    const/4 v3, 0x2

    .line 9
    if-eq v2, v3, :cond_8

    .line 10
    .line 11
    iget-boolean v2, p0, LU0/a;->d0:Z

    .line 12
    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    goto/16 :goto_0

    .line 16
    .line 17
    :cond_0
    iget-object v2, p0, LU0/a;->O:Lw0/g;

    .line 18
    .line 19
    if-nez v2, :cond_1

    .line 20
    .line 21
    invoke-interface {v0}, Lw0/d;->dequeueInputBuffer()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Lw0/g;

    .line 26
    .line 27
    iput-object v0, p0, LU0/a;->O:Lw0/g;

    .line 28
    .line 29
    if-nez v0, :cond_1

    .line 30
    .line 31
    return v1

    .line 32
    :cond_1
    iget-object v0, p0, LU0/a;->O:Lw0/g;

    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    iget v2, p0, LU0/a;->X:I

    .line 38
    .line 39
    const/4 v4, 0x0

    .line 40
    const/4 v5, 0x1

    .line 41
    if-ne v2, v5, :cond_2

    .line 42
    .line 43
    const/4 v2, 0x4

    .line 44
    invoke-virtual {v0, v2}, Lw0/a;->setFlags(I)V

    .line 45
    .line 46
    .line 47
    iget-object v2, p0, LU0/a;->N:Lw0/d;

    .line 48
    .line 49
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    invoke-interface {v2, v0}, Lw0/d;->queueInputBuffer(Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    iput-object v4, p0, LU0/a;->O:Lw0/g;

    .line 56
    .line 57
    iput v3, p0, LU0/a;->X:I

    .line 58
    .line 59
    return v1

    .line 60
    :cond_2
    invoke-virtual {p0}, LB0/h;->getFormatHolder()LB0/Z;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    invoke-virtual {p0, v2, v0, v1}, LB0/h;->readSource(LB0/Z;Lw0/g;I)I

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    const/4 v6, -0x5

    .line 69
    if-eq v3, v6, :cond_7

    .line 70
    .line 71
    const/4 v2, -0x4

    .line 72
    if-eq v3, v2, :cond_4

    .line 73
    .line 74
    const/4 v0, -0x3

    .line 75
    if-ne v3, v0, :cond_3

    .line 76
    .line 77
    return v1

    .line 78
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 79
    .line 80
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 81
    .line 82
    .line 83
    throw v0

    .line 84
    :cond_4
    invoke-virtual {v0}, Lw0/a;->isEndOfStream()Z

    .line 85
    .line 86
    .line 87
    move-result v2

    .line 88
    if-eqz v2, :cond_5

    .line 89
    .line 90
    iput-boolean v5, p0, LU0/a;->d0:Z

    .line 91
    .line 92
    iget-object v2, p0, LU0/a;->N:Lw0/d;

    .line 93
    .line 94
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 95
    .line 96
    .line 97
    invoke-interface {v2, v0}, Lw0/d;->queueInputBuffer(Ljava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    iput-object v4, p0, LU0/a;->O:Lw0/g;

    .line 101
    .line 102
    return v1

    .line 103
    :cond_5
    iget-boolean v2, p0, LU0/a;->c0:Z

    .line 104
    .line 105
    if-eqz v2, :cond_6

    .line 106
    .line 107
    iget-wide v2, v0, Lw0/g;->K:J

    .line 108
    .line 109
    iget-object v6, p0, LU0/a;->L:Lm0/t;

    .line 110
    .line 111
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 112
    .line 113
    .line 114
    iget-object v7, p0, LU0/a;->J:Lc/g;

    .line 115
    .line 116
    invoke-virtual {v7, v6, v2, v3}, Lc/g;->b(Ljava/lang/Object;J)V

    .line 117
    .line 118
    .line 119
    iput-boolean v1, p0, LU0/a;->c0:Z

    .line 120
    .line 121
    :cond_6
    invoke-virtual {v0}, Lw0/g;->g()V

    .line 122
    .line 123
    .line 124
    iget-object v1, p0, LU0/a;->L:Lm0/t;

    .line 125
    .line 126
    iput-object v1, v0, Lw0/g;->G:Lm0/t;

    .line 127
    .line 128
    iget-object v1, p0, LU0/a;->N:Lw0/d;

    .line 129
    .line 130
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 131
    .line 132
    .line 133
    invoke-interface {v1, v0}, Lw0/d;->queueInputBuffer(Ljava/lang/Object;)V

    .line 134
    .line 135
    .line 136
    iget v0, p0, LU0/a;->j0:I

    .line 137
    .line 138
    add-int/2addr v0, v5

    .line 139
    iput v0, p0, LU0/a;->j0:I

    .line 140
    .line 141
    iput-boolean v5, p0, LU0/a;->Y:Z

    .line 142
    .line 143
    iget-object v0, p0, LU0/a;->l0:LB0/i;

    .line 144
    .line 145
    iget v1, v0, LB0/i;->c:I

    .line 146
    .line 147
    add-int/2addr v1, v5

    .line 148
    iput v1, v0, LB0/i;->c:I

    .line 149
    .line 150
    iput-object v4, p0, LU0/a;->O:Lw0/g;

    .line 151
    .line 152
    return v5

    .line 153
    :cond_7
    invoke-virtual {p0, v2}, LU0/a;->e(LB0/Z;)V

    .line 154
    .line 155
    .line 156
    return v5

    .line 157
    :cond_8
    :goto_0
    return v1
.end method

.method public final c()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, LU0/a;->j0:I

    .line 3
    .line 4
    iget v1, p0, LU0/a;->X:I

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, LU0/a;->f()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, LU0/a;->d()V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v1, 0x0

    .line 16
    iput-object v1, p0, LU0/a;->O:Lw0/g;

    .line 17
    .line 18
    iget-object v2, p0, LU0/a;->P:Landroidx/media3/decoder/VideoDecoderOutputBuffer;

    .line 19
    .line 20
    if-eqz v2, :cond_1

    .line 21
    .line 22
    invoke-virtual {v2}, Landroidx/media3/decoder/VideoDecoderOutputBuffer;->release()V

    .line 23
    .line 24
    .line 25
    iput-object v1, p0, LU0/a;->P:Landroidx/media3/decoder/VideoDecoderOutputBuffer;

    .line 26
    .line 27
    :cond_1
    iget-object v1, p0, LU0/a;->N:Lw0/d;

    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    invoke-interface {v1}, Lw0/d;->flush()V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, LB0/h;->getLastResetPositionUs()J

    .line 36
    .line 37
    .line 38
    move-result-wide v2

    .line 39
    invoke-interface {v1, v2, v3}, Lw0/d;->setOutputStartTimeUs(J)V

    .line 40
    .line 41
    .line 42
    iput-boolean v0, p0, LU0/a;->Y:Z

    .line 43
    .line 44
    :goto_0
    return-void
.end method

.method public abstract canReuseDecoder(Ljava/lang/String;Lm0/t;Lm0/t;)LB0/j;
.end method

.method public abstract createDecoder(Lm0/t;Landroidx/media3/decoder/CryptoConfig;)Lw0/d;
.end method

.method public final d()V
    .locals 13

    .line 1
    iget-object v8, p0, LU0/a;->I:Lcom/google/android/gms/internal/atv_ads_framework/x0;

    .line 2
    .line 3
    iget-object v0, p0, LU0/a;->N:Lw0/d;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, LU0/a;->W:LG0/l;

    .line 9
    .line 10
    iget-object v1, p0, LU0/a;->V:LG0/l;

    .line 11
    .line 12
    invoke-static {v1, v0}, LA0/O;->M(LG0/l;LG0/l;)V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, LU0/a;->V:LG0/l;

    .line 16
    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    invoke-interface {v0}, LG0/l;->f()Landroidx/media3/decoder/CryptoConfig;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    if-nez v0, :cond_3

    .line 24
    .line 25
    iget-object v1, p0, LU0/a;->V:LG0/l;

    .line 26
    .line 27
    invoke-interface {v1}, LG0/l;->getError()LG0/k;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    if-eqz v1, :cond_1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    return-void

    .line 35
    :cond_2
    const/4 v0, 0x0

    .line 36
    :cond_3
    :goto_0
    const/16 v9, 0xfa1

    .line 37
    .line 38
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 39
    .line 40
    .line 41
    move-result-wide v1

    .line 42
    iget-object v3, p0, LU0/a;->L:Lm0/t;

    .line 43
    .line 44
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0, v3, v0}, LU0/a;->createDecoder(Lm0/t;Landroidx/media3/decoder/CryptoConfig;)Lw0/d;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    iput-object v0, p0, LU0/a;->N:Lw0/d;

    .line 52
    .line 53
    invoke-virtual {p0}, LB0/h;->getLastResetPositionUs()J

    .line 54
    .line 55
    .line 56
    move-result-wide v3

    .line 57
    invoke-interface {v0, v3, v4}, Lw0/d;->setOutputStartTimeUs(J)V

    .line 58
    .line 59
    .line 60
    iget v0, p0, LU0/a;->Q:I

    .line 61
    .line 62
    invoke-virtual {p0, v0}, LU0/a;->i(I)V

    .line 63
    .line 64
    .line 65
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 66
    .line 67
    .line 68
    move-result-wide v3

    .line 69
    iget-object v0, p0, LU0/a;->N:Lw0/d;

    .line 70
    .line 71
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 72
    .line 73
    .line 74
    invoke-interface {v0}, Lw0/d;->getName()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v5

    .line 78
    sub-long v6, v3, v1

    .line 79
    .line 80
    iget-object v0, v8, Lcom/google/android/gms/internal/atv_ads_framework/x0;->H:Ljava/lang/Object;

    .line 81
    .line 82
    move-object v1, v0

    .line 83
    check-cast v1, Landroid/os/Handler;

    .line 84
    .line 85
    if-eqz v1, :cond_4

    .line 86
    .line 87
    move-object v10, v0

    .line 88
    check-cast v10, Landroid/os/Handler;

    .line 89
    .line 90
    new-instance v11, LD0/k;

    .line 91
    .line 92
    const/4 v12, 0x1

    .line 93
    move-object v0, v11

    .line 94
    move-object v1, v8

    .line 95
    move-object v2, v5

    .line 96
    move-wide v5, v6

    .line 97
    move v7, v12

    .line 98
    invoke-direct/range {v0 .. v7}, LD0/k;-><init>(Ljava/lang/Object;Ljava/lang/String;JJI)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v10, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 102
    .line 103
    .line 104
    :cond_4
    iget-object v0, p0, LU0/a;->l0:LB0/i;

    .line 105
    .line 106
    iget v1, v0, LB0/i;->a:I

    .line 107
    .line 108
    add-int/lit8 v1, v1, 0x1

    .line 109
    .line 110
    iput v1, v0, LB0/i;->a:I
    :try_end_0
    .catch Lw0/e; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    .line 112
    return-void

    .line 113
    :catch_0
    move-exception v0

    .line 114
    goto :goto_1

    .line 115
    :catch_1
    move-exception v0

    .line 116
    goto :goto_2

    .line 117
    :goto_1
    iget-object v1, p0, LU0/a;->L:Lm0/t;

    .line 118
    .line 119
    invoke-virtual {p0, v0, v1, v9}, LB0/h;->createRendererException(Ljava/lang/Throwable;Lm0/t;I)LB0/w;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    throw v0

    .line 124
    :goto_2
    const-string v1, "DecoderVideoRenderer"

    .line 125
    .line 126
    const-string v2, "Video codec error"

    .line 127
    .line 128
    invoke-static {v1, v2, v0}, Lp0/x;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v8, v0}, Lcom/google/android/gms/internal/atv_ads_framework/x0;->z(Ljava/lang/Exception;)V

    .line 132
    .line 133
    .line 134
    iget-object v1, p0, LU0/a;->L:Lm0/t;

    .line 135
    .line 136
    invoke-virtual {p0, v0, v1, v9}, LB0/h;->createRendererException(Ljava/lang/Throwable;Lm0/t;I)LB0/w;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    throw v0
.end method

.method public final e(LB0/Z;)V
    .locals 8

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, LU0/a;->c0:Z

    .line 3
    .line 4
    iget-object v4, p1, LB0/Z;->b:Lm0/t;

    .line 5
    .line 6
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    iget-object p1, p1, LB0/Z;->a:LG0/l;

    .line 10
    .line 11
    iget-object v1, p0, LU0/a;->W:LG0/l;

    .line 12
    .line 13
    invoke-static {v1, p1}, LA0/O;->M(LG0/l;LG0/l;)V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, LU0/a;->W:LG0/l;

    .line 17
    .line 18
    iget-object v3, p0, LU0/a;->L:Lm0/t;

    .line 19
    .line 20
    iput-object v4, p0, LU0/a;->L:Lm0/t;

    .line 21
    .line 22
    iget-object v1, p0, LU0/a;->N:Lw0/d;

    .line 23
    .line 24
    iget-object v7, p0, LU0/a;->I:Lcom/google/android/gms/internal/atv_ads_framework/x0;

    .line 25
    .line 26
    if-nez v1, :cond_0

    .line 27
    .line 28
    invoke-virtual {p0}, LU0/a;->d()V

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, LU0/a;->L:Lm0/t;

    .line 32
    .line 33
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    const/4 v0, 0x0

    .line 37
    invoke-virtual {v7, p1, v0}, Lcom/google/android/gms/internal/atv_ads_framework/x0;->q(Lm0/t;LB0/j;)V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :cond_0
    iget-object v2, p0, LU0/a;->V:LG0/l;

    .line 42
    .line 43
    if-eq p1, v2, :cond_1

    .line 44
    .line 45
    new-instance p1, LB0/j;

    .line 46
    .line 47
    invoke-interface {v1}, Lw0/d;->getName()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    .line 53
    .line 54
    const/4 v5, 0x0

    .line 55
    const/16 v6, 0x80

    .line 56
    .line 57
    move-object v1, p1

    .line 58
    invoke-direct/range {v1 .. v6}, LB0/j;-><init>(Ljava/lang/String;Lm0/t;Lm0/t;II)V

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_1
    invoke-interface {v1}, Lw0/d;->getName()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0, p1, v3, v4}, LU0/a;->canReuseDecoder(Ljava/lang/String;Lm0/t;Lm0/t;)LB0/j;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    :goto_0
    iget v1, p1, LB0/j;->d:I

    .line 74
    .line 75
    if-nez v1, :cond_3

    .line 76
    .line 77
    iget-boolean v1, p0, LU0/a;->Y:Z

    .line 78
    .line 79
    if-eqz v1, :cond_2

    .line 80
    .line 81
    iput v0, p0, LU0/a;->X:I

    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_2
    invoke-virtual {p0}, LU0/a;->f()V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0}, LU0/a;->d()V

    .line 88
    .line 89
    .line 90
    :cond_3
    :goto_1
    iget-object v0, p0, LU0/a;->L:Lm0/t;

    .line 91
    .line 92
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v7, v0, p1}, Lcom/google/android/gms/internal/atv_ads_framework/x0;->q(Lm0/t;LB0/j;)V

    .line 96
    .line 97
    .line 98
    return-void
.end method

.method public final enableMayRenderStartOfStream()V
    .locals 1

    .line 1
    iget v0, p0, LU0/a;->Z:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput v0, p0, LU0/a;->Z:I

    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final f()V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, LU0/a;->O:Lw0/g;

    .line 3
    .line 4
    iput-object v0, p0, LU0/a;->P:Landroidx/media3/decoder/VideoDecoderOutputBuffer;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    iput v1, p0, LU0/a;->X:I

    .line 8
    .line 9
    iput-boolean v1, p0, LU0/a;->Y:Z

    .line 10
    .line 11
    iput v1, p0, LU0/a;->j0:I

    .line 12
    .line 13
    iget-object v1, p0, LU0/a;->N:Lw0/d;

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    iget-object v2, p0, LU0/a;->l0:LB0/i;

    .line 18
    .line 19
    iget v3, v2, LB0/i;->b:I

    .line 20
    .line 21
    add-int/lit8 v3, v3, 0x1

    .line 22
    .line 23
    iput v3, v2, LB0/i;->b:I

    .line 24
    .line 25
    invoke-interface {v1}, Lw0/d;->release()V

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, LU0/a;->I:Lcom/google/android/gms/internal/atv_ads_framework/x0;

    .line 29
    .line 30
    iget-object v2, p0, LU0/a;->N:Lw0/d;

    .line 31
    .line 32
    invoke-interface {v2}, Lw0/d;->getName()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    iget-object v3, v1, Lcom/google/android/gms/internal/atv_ads_framework/x0;->H:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast v3, Landroid/os/Handler;

    .line 39
    .line 40
    if-eqz v3, :cond_0

    .line 41
    .line 42
    new-instance v4, LU0/r;

    .line 43
    .line 44
    const/4 v5, 0x3

    .line 45
    invoke-direct {v4, v5, v1, v2}, LU0/r;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 49
    .line 50
    .line 51
    :cond_0
    iput-object v0, p0, LU0/a;->N:Lw0/d;

    .line 52
    .line 53
    :cond_1
    iget-object v1, p0, LU0/a;->V:LG0/l;

    .line 54
    .line 55
    invoke-static {v1, v0}, LA0/O;->M(LG0/l;LG0/l;)V

    .line 56
    .line 57
    .line 58
    iput-object v0, p0, LU0/a;->V:LG0/l;

    .line 59
    .line 60
    return-void
.end method

.method public final g(Landroidx/media3/decoder/VideoDecoderOutputBuffer;JLm0/t;)V
    .locals 7

    .line 1
    iget-object v0, p0, LU0/a;->U:LU0/B;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, LB0/h;->getClock()Lp0/f;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    check-cast v1, Lp0/G;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 15
    .line 16
    .line 17
    move-result-wide v3

    .line 18
    const/4 v6, 0x0

    .line 19
    move-wide v1, p2

    .line 20
    move-object v5, p4

    .line 21
    invoke-interface/range {v0 .. v6}, LU0/B;->b(JJLm0/t;Landroid/media/MediaFormat;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 25
    .line 26
    .line 27
    move-result-wide p2

    .line 28
    invoke-static {p2, p3}, Lp0/M;->R(J)J

    .line 29
    .line 30
    .line 31
    move-result-wide p2

    .line 32
    iput-wide p2, p0, LU0/a;->k0:J

    .line 33
    .line 34
    iget p2, p1, Landroidx/media3/decoder/VideoDecoderOutputBuffer;->mode:I

    .line 35
    .line 36
    const/4 p3, 0x1

    .line 37
    const/4 p4, 0x0

    .line 38
    if-ne p2, p3, :cond_1

    .line 39
    .line 40
    iget-object v0, p0, LU0/a;->S:Landroid/view/Surface;

    .line 41
    .line 42
    if-eqz v0, :cond_1

    .line 43
    .line 44
    const/4 v0, 0x1

    .line 45
    goto :goto_0

    .line 46
    :cond_1
    const/4 v0, 0x0

    .line 47
    :goto_0
    if-nez p2, :cond_2

    .line 48
    .line 49
    iget-object p2, p0, LU0/a;->T:LU0/A;

    .line 50
    .line 51
    if-eqz p2, :cond_2

    .line 52
    .line 53
    const/4 p2, 0x1

    .line 54
    goto :goto_1

    .line 55
    :cond_2
    const/4 p2, 0x0

    .line 56
    :goto_1
    if-nez p2, :cond_3

    .line 57
    .line 58
    if-nez v0, :cond_3

    .line 59
    .line 60
    invoke-virtual {p0, p4, p3}, LU0/a;->j(II)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1}, Landroidx/media3/decoder/VideoDecoderOutputBuffer;->release()V

    .line 64
    .line 65
    .line 66
    goto :goto_3

    .line 67
    :cond_3
    iget v0, p1, Landroidx/media3/decoder/VideoDecoderOutputBuffer;->width:I

    .line 68
    .line 69
    iget v1, p1, Landroidx/media3/decoder/VideoDecoderOutputBuffer;->height:I

    .line 70
    .line 71
    iget-object v2, p0, LU0/a;->f0:Lm0/w0;

    .line 72
    .line 73
    iget-object v3, p0, LU0/a;->I:Lcom/google/android/gms/internal/atv_ads_framework/x0;

    .line 74
    .line 75
    if-eqz v2, :cond_4

    .line 76
    .line 77
    iget v4, v2, Lm0/w0;->a:I

    .line 78
    .line 79
    if-ne v4, v0, :cond_4

    .line 80
    .line 81
    iget v2, v2, Lm0/w0;->b:I

    .line 82
    .line 83
    if-eq v2, v1, :cond_5

    .line 84
    .line 85
    :cond_4
    new-instance v2, Lm0/w0;

    .line 86
    .line 87
    invoke-direct {v2, v0, v1}, Lm0/w0;-><init>(II)V

    .line 88
    .line 89
    .line 90
    iput-object v2, p0, LU0/a;->f0:Lm0/w0;

    .line 91
    .line 92
    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/atv_ads_framework/x0;->A(Lm0/w0;)V

    .line 93
    .line 94
    .line 95
    :cond_5
    if-eqz p2, :cond_6

    .line 96
    .line 97
    iget-object p2, p0, LU0/a;->T:LU0/A;

    .line 98
    .line 99
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 100
    .line 101
    .line 102
    invoke-interface {p2, p1}, LU0/A;->setOutputBuffer(Landroidx/media3/decoder/VideoDecoderOutputBuffer;)V

    .line 103
    .line 104
    .line 105
    goto :goto_2

    .line 106
    :cond_6
    iget-object p2, p0, LU0/a;->S:Landroid/view/Surface;

    .line 107
    .line 108
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 109
    .line 110
    .line 111
    invoke-virtual {p0, p1, p2}, LU0/a;->h(Landroidx/media3/decoder/VideoDecoderOutputBuffer;Landroid/view/Surface;)V

    .line 112
    .line 113
    .line 114
    :goto_2
    iput p4, p0, LU0/a;->i0:I

    .line 115
    .line 116
    iget-object p1, p0, LU0/a;->l0:LB0/i;

    .line 117
    .line 118
    iget p2, p1, LB0/i;->e:I

    .line 119
    .line 120
    add-int/2addr p2, p3

    .line 121
    iput p2, p1, LB0/i;->e:I

    .line 122
    .line 123
    iget p1, p0, LU0/a;->Z:I

    .line 124
    .line 125
    const/4 p2, 0x3

    .line 126
    if-eq p1, p2, :cond_7

    .line 127
    .line 128
    iput p2, p0, LU0/a;->Z:I

    .line 129
    .line 130
    iget-object p1, p0, LU0/a;->R:Ljava/lang/Object;

    .line 131
    .line 132
    if-eqz p1, :cond_7

    .line 133
    .line 134
    invoke-virtual {v3, p1}, Lcom/google/android/gms/internal/atv_ads_framework/x0;->v(Ljava/lang/Object;)V

    .line 135
    .line 136
    .line 137
    :cond_7
    :goto_3
    return-void
.end method

.method public abstract h(Landroidx/media3/decoder/VideoDecoderOutputBuffer;Landroid/view/Surface;)V
.end method

.method public final handleMessage(ILjava/lang/Object;)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, v0, :cond_8

    .line 3
    .line 4
    instance-of p1, p2, Landroid/view/Surface;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    move-object p1, p2

    .line 10
    check-cast p1, Landroid/view/Surface;

    .line 11
    .line 12
    iput-object p1, p0, LU0/a;->S:Landroid/view/Surface;

    .line 13
    .line 14
    iput-object v1, p0, LU0/a;->T:LU0/A;

    .line 15
    .line 16
    iput v0, p0, LU0/a;->Q:I

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    instance-of p1, p2, LU0/A;

    .line 20
    .line 21
    if-eqz p1, :cond_1

    .line 22
    .line 23
    iput-object v1, p0, LU0/a;->S:Landroid/view/Surface;

    .line 24
    .line 25
    move-object p1, p2

    .line 26
    check-cast p1, LU0/A;

    .line 27
    .line 28
    iput-object p1, p0, LU0/a;->T:LU0/A;

    .line 29
    .line 30
    const/4 p1, 0x0

    .line 31
    iput p1, p0, LU0/a;->Q:I

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    iput-object v1, p0, LU0/a;->S:Landroid/view/Surface;

    .line 35
    .line 36
    iput-object v1, p0, LU0/a;->T:LU0/A;

    .line 37
    .line 38
    const/4 p1, -0x1

    .line 39
    iput p1, p0, LU0/a;->Q:I

    .line 40
    .line 41
    move-object p2, v1

    .line 42
    :goto_0
    iget-object p1, p0, LU0/a;->R:Ljava/lang/Object;

    .line 43
    .line 44
    iget-object v2, p0, LU0/a;->I:Lcom/google/android/gms/internal/atv_ads_framework/x0;

    .line 45
    .line 46
    if-eq p1, p2, :cond_6

    .line 47
    .line 48
    iput-object p2, p0, LU0/a;->R:Ljava/lang/Object;

    .line 49
    .line 50
    if-eqz p2, :cond_5

    .line 51
    .line 52
    iget-object p1, p0, LU0/a;->N:Lw0/d;

    .line 53
    .line 54
    if-eqz p1, :cond_2

    .line 55
    .line 56
    iget p1, p0, LU0/a;->Q:I

    .line 57
    .line 58
    invoke-virtual {p0, p1}, LU0/a;->i(I)V

    .line 59
    .line 60
    .line 61
    :cond_2
    iget-object p1, p0, LU0/a;->f0:Lm0/w0;

    .line 62
    .line 63
    if-eqz p1, :cond_3

    .line 64
    .line 65
    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/atv_ads_framework/x0;->A(Lm0/w0;)V

    .line 66
    .line 67
    .line 68
    :cond_3
    iget p1, p0, LU0/a;->Z:I

    .line 69
    .line 70
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    iput p1, p0, LU0/a;->Z:I

    .line 75
    .line 76
    invoke-virtual {p0}, LB0/h;->getState()I

    .line 77
    .line 78
    .line 79
    move-result p1

    .line 80
    const/4 p2, 0x2

    .line 81
    if-ne p1, p2, :cond_9

    .line 82
    .line 83
    const-wide/16 p1, 0x0

    .line 84
    .line 85
    iget-wide v0, p0, LU0/a;->G:J

    .line 86
    .line 87
    cmp-long v2, v0, p1

    .line 88
    .line 89
    if-lez v2, :cond_4

    .line 90
    .line 91
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 92
    .line 93
    .line 94
    move-result-wide p1

    .line 95
    add-long/2addr p1, v0

    .line 96
    goto :goto_1

    .line 97
    :cond_4
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    :goto_1
    iput-wide p1, p0, LU0/a;->b0:J

    .line 103
    .line 104
    goto :goto_2

    .line 105
    :cond_5
    iput-object v1, p0, LU0/a;->f0:Lm0/w0;

    .line 106
    .line 107
    iget p1, p0, LU0/a;->Z:I

    .line 108
    .line 109
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    .line 110
    .line 111
    .line 112
    move-result p1

    .line 113
    iput p1, p0, LU0/a;->Z:I

    .line 114
    .line 115
    goto :goto_2

    .line 116
    :cond_6
    if-eqz p2, :cond_9

    .line 117
    .line 118
    iget-object p1, p0, LU0/a;->f0:Lm0/w0;

    .line 119
    .line 120
    if-eqz p1, :cond_7

    .line 121
    .line 122
    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/atv_ads_framework/x0;->A(Lm0/w0;)V

    .line 123
    .line 124
    .line 125
    :cond_7
    iget p1, p0, LU0/a;->Z:I

    .line 126
    .line 127
    const/4 p2, 0x3

    .line 128
    if-ne p1, p2, :cond_9

    .line 129
    .line 130
    iget-object p1, p0, LU0/a;->R:Ljava/lang/Object;

    .line 131
    .line 132
    if-eqz p1, :cond_9

    .line 133
    .line 134
    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/atv_ads_framework/x0;->v(Ljava/lang/Object;)V

    .line 135
    .line 136
    .line 137
    goto :goto_2

    .line 138
    :cond_8
    const/4 v0, 0x7

    .line 139
    if-ne p1, v0, :cond_9

    .line 140
    .line 141
    check-cast p2, LU0/B;

    .line 142
    .line 143
    iput-object p2, p0, LU0/a;->U:LU0/B;

    .line 144
    .line 145
    :cond_9
    :goto_2
    return-void
.end method

.method public abstract i(I)V
.end method

.method public final isEnded()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, LU0/a;->e0:Z

    .line 2
    .line 3
    return v0
.end method

.method public final isReady()Z
    .locals 9

    .line 1
    iget-object v0, p0, LU0/a;->L:Lm0/t;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    if-eqz v0, :cond_2

    .line 10
    .line 11
    invoke-virtual {p0}, LB0/h;->isSourceReady()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, LU0/a;->P:Landroidx/media3/decoder/VideoDecoderOutputBuffer;

    .line 18
    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    :cond_0
    iget v0, p0, LU0/a;->Z:I

    .line 22
    .line 23
    const/4 v4, 0x3

    .line 24
    if-eq v0, v4, :cond_1

    .line 25
    .line 26
    iget v0, p0, LU0/a;->Q:I

    .line 27
    .line 28
    const/4 v4, -0x1

    .line 29
    if-eq v0, v4, :cond_1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    iput-wide v2, p0, LU0/a;->b0:J

    .line 33
    .line 34
    return v1

    .line 35
    :cond_2
    :goto_0
    iget-wide v4, p0, LU0/a;->b0:J

    .line 36
    .line 37
    const/4 v0, 0x0

    .line 38
    cmp-long v6, v4, v2

    .line 39
    .line 40
    if-nez v6, :cond_3

    .line 41
    .line 42
    return v0

    .line 43
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 44
    .line 45
    .line 46
    move-result-wide v4

    .line 47
    iget-wide v6, p0, LU0/a;->b0:J

    .line 48
    .line 49
    cmp-long v8, v4, v6

    .line 50
    .line 51
    if-gez v8, :cond_4

    .line 52
    .line 53
    return v1

    .line 54
    :cond_4
    iput-wide v2, p0, LU0/a;->b0:J

    .line 55
    .line 56
    return v0
.end method

.method public final j(II)V
    .locals 6

    .line 1
    iget-object v0, p0, LU0/a;->l0:LB0/i;

    .line 2
    .line 3
    iget v1, v0, LB0/i;->h:I

    .line 4
    .line 5
    add-int/2addr v1, p1

    .line 6
    iput v1, v0, LB0/i;->h:I

    .line 7
    .line 8
    add-int/2addr p1, p2

    .line 9
    iget p2, v0, LB0/i;->g:I

    .line 10
    .line 11
    add-int/2addr p2, p1

    .line 12
    iput p2, v0, LB0/i;->g:I

    .line 13
    .line 14
    iget p2, p0, LU0/a;->h0:I

    .line 15
    .line 16
    add-int/2addr p2, p1

    .line 17
    iput p2, p0, LU0/a;->h0:I

    .line 18
    .line 19
    iget p2, p0, LU0/a;->i0:I

    .line 20
    .line 21
    add-int/2addr p2, p1

    .line 22
    iput p2, p0, LU0/a;->i0:I

    .line 23
    .line 24
    iget p1, v0, LB0/i;->i:I

    .line 25
    .line 26
    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    iput p1, v0, LB0/i;->i:I

    .line 31
    .line 32
    iget p1, p0, LU0/a;->H:I

    .line 33
    .line 34
    if-lez p1, :cond_1

    .line 35
    .line 36
    iget p2, p0, LU0/a;->h0:I

    .line 37
    .line 38
    if-lt p2, p1, :cond_1

    .line 39
    .line 40
    if-lez p2, :cond_1

    .line 41
    .line 42
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 43
    .line 44
    .line 45
    move-result-wide p1

    .line 46
    iget-wide v0, p0, LU0/a;->g0:J

    .line 47
    .line 48
    sub-long v0, p1, v0

    .line 49
    .line 50
    iget-object v2, p0, LU0/a;->I:Lcom/google/android/gms/internal/atv_ads_framework/x0;

    .line 51
    .line 52
    iget v3, p0, LU0/a;->h0:I

    .line 53
    .line 54
    iget-object v4, v2, Lcom/google/android/gms/internal/atv_ads_framework/x0;->H:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast v4, Landroid/os/Handler;

    .line 57
    .line 58
    if-eqz v4, :cond_0

    .line 59
    .line 60
    new-instance v5, LU0/L;

    .line 61
    .line 62
    invoke-direct {v5, v2, v3, v0, v1}, LU0/L;-><init>(Lcom/google/android/gms/internal/atv_ads_framework/x0;IJ)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 66
    .line 67
    .line 68
    :cond_0
    const/4 v0, 0x0

    .line 69
    iput v0, p0, LU0/a;->h0:I

    .line 70
    .line 71
    iput-wide p1, p0, LU0/a;->g0:J

    .line 72
    .line 73
    :cond_1
    return-void
.end method

.method public final onDisabled()V
    .locals 4

    .line 1
    iget-object v0, p0, LU0/a;->I:Lcom/google/android/gms/internal/atv_ads_framework/x0;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, LU0/a;->L:Lm0/t;

    .line 5
    .line 6
    iput-object v1, p0, LU0/a;->f0:Lm0/w0;

    .line 7
    .line 8
    iget v2, p0, LU0/a;->Z:I

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    iput v2, p0, LU0/a;->Z:I

    .line 16
    .line 17
    :try_start_0
    iget-object v2, p0, LU0/a;->W:LG0/l;

    .line 18
    .line 19
    invoke-static {v2, v1}, LA0/O;->M(LG0/l;LG0/l;)V

    .line 20
    .line 21
    .line 22
    iput-object v1, p0, LU0/a;->W:LG0/l;

    .line 23
    .line 24
    invoke-virtual {p0}, LU0/a;->f()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    .line 26
    .line 27
    iget-object v1, p0, LU0/a;->l0:LB0/i;

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/atv_ads_framework/x0;->j(LB0/i;)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :catchall_0
    move-exception v1

    .line 34
    iget-object v2, p0, LU0/a;->l0:LB0/i;

    .line 35
    .line 36
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/atv_ads_framework/x0;->j(LB0/i;)V

    .line 37
    .line 38
    .line 39
    throw v1
.end method

.method public final onEnabled(ZZ)V
    .locals 4

    .line 1
    new-instance p1, LB0/i;

    .line 2
    .line 3
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, LU0/a;->l0:LB0/i;

    .line 7
    .line 8
    iget-object v0, p0, LU0/a;->I:Lcom/google/android/gms/internal/atv_ads_framework/x0;

    .line 9
    .line 10
    iget-object v1, v0, Lcom/google/android/gms/internal/atv_ads_framework/x0;->H:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v1, Landroid/os/Handler;

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    new-instance v2, LU0/M;

    .line 17
    .line 18
    const/4 v3, 0x0

    .line 19
    invoke-direct {v2, v0, p1, v3}, LU0/M;-><init>(Lcom/google/android/gms/internal/atv_ads_framework/x0;LB0/i;I)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 23
    .line 24
    .line 25
    :cond_0
    iput p2, p0, LU0/a;->Z:I

    .line 26
    .line 27
    return-void
.end method

.method public final onPositionReset(JZ)V
    .locals 4

    .line 1
    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, LU0/a;->d0:Z

    .line 3
    .line 4
    iput-boolean p1, p0, LU0/a;->e0:Z

    .line 5
    .line 6
    iget p2, p0, LU0/a;->Z:I

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    .line 10
    .line 11
    .line 12
    move-result p2

    .line 13
    iput p2, p0, LU0/a;->Z:I

    .line 14
    .line 15
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    iput-wide v0, p0, LU0/a;->a0:J

    .line 21
    .line 22
    iput p1, p0, LU0/a;->i0:I

    .line 23
    .line 24
    iget-object p1, p0, LU0/a;->N:Lw0/d;

    .line 25
    .line 26
    if-eqz p1, :cond_0

    .line 27
    .line 28
    invoke-virtual {p0}, LU0/a;->c()V

    .line 29
    .line 30
    .line 31
    :cond_0
    if-eqz p3, :cond_2

    .line 32
    .line 33
    const-wide/16 p1, 0x0

    .line 34
    .line 35
    iget-wide v2, p0, LU0/a;->G:J

    .line 36
    .line 37
    cmp-long p3, v2, p1

    .line 38
    .line 39
    if-lez p3, :cond_1

    .line 40
    .line 41
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 42
    .line 43
    .line 44
    move-result-wide p1

    .line 45
    add-long v0, p1, v2

    .line 46
    .line 47
    :cond_1
    iput-wide v0, p0, LU0/a;->b0:J

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_2
    iput-wide v0, p0, LU0/a;->b0:J

    .line 51
    .line 52
    :goto_0
    iget-object p1, p0, LU0/a;->J:Lc/g;

    .line 53
    .line 54
    invoke-virtual {p1}, Lc/g;->f()V

    .line 55
    .line 56
    .line 57
    return-void
.end method

.method public final onStarted()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, LU0/a;->h0:I

    .line 3
    .line 4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 5
    .line 6
    .line 7
    move-result-wide v0

    .line 8
    iput-wide v0, p0, LU0/a;->g0:J

    .line 9
    .line 10
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    invoke-static {v0, v1}, Lp0/M;->R(J)J

    .line 15
    .line 16
    .line 17
    move-result-wide v0

    .line 18
    iput-wide v0, p0, LU0/a;->k0:J

    .line 19
    .line 20
    return-void
.end method

.method public final onStopped()V
    .locals 8

    .line 1
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    iput-wide v0, p0, LU0/a;->b0:J

    .line 7
    .line 8
    iget v0, p0, LU0/a;->h0:I

    .line 9
    .line 10
    if-lez v0, :cond_1

    .line 11
    .line 12
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 13
    .line 14
    .line 15
    move-result-wide v0

    .line 16
    iget-wide v2, p0, LU0/a;->g0:J

    .line 17
    .line 18
    sub-long v2, v0, v2

    .line 19
    .line 20
    iget-object v4, p0, LU0/a;->I:Lcom/google/android/gms/internal/atv_ads_framework/x0;

    .line 21
    .line 22
    iget v5, p0, LU0/a;->h0:I

    .line 23
    .line 24
    iget-object v6, v4, Lcom/google/android/gms/internal/atv_ads_framework/x0;->H:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v6, Landroid/os/Handler;

    .line 27
    .line 28
    if-eqz v6, :cond_0

    .line 29
    .line 30
    new-instance v7, LU0/L;

    .line 31
    .line 32
    invoke-direct {v7, v4, v5, v2, v3}, LU0/L;-><init>(Lcom/google/android/gms/internal/atv_ads_framework/x0;IJ)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 36
    .line 37
    .line 38
    :cond_0
    const/4 v2, 0x0

    .line 39
    iput v2, p0, LU0/a;->h0:I

    .line 40
    .line 41
    iput-wide v0, p0, LU0/a;->g0:J

    .line 42
    .line 43
    :cond_1
    return-void
.end method

.method public final onStreamChanged([Lm0/t;JJLO0/y;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final render(JJ)V
    .locals 1

    .line 1
    iget-boolean p3, p0, LU0/a;->e0:Z

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object p3, p0, LU0/a;->L:Lm0/t;

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
    iget-object p4, p0, LU0/a;->K:Lw0/g;

    .line 15
    .line 16
    invoke-virtual {p4}, Lw0/g;->clear()V

    .line 17
    .line 18
    .line 19
    iget-object p4, p0, LU0/a;->K:Lw0/g;

    .line 20
    .line 21
    const/4 v0, 0x2

    .line 22
    invoke-virtual {p0, p3, p4, v0}, LB0/h;->readSource(LB0/Z;Lw0/g;I)I

    .line 23
    .line 24
    .line 25
    move-result p4

    .line 26
    const/4 v0, -0x5

    .line 27
    if-ne p4, v0, :cond_1

    .line 28
    .line 29
    invoke-virtual {p0, p3}, LU0/a;->e(LB0/Z;)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    const/4 p1, -0x4

    .line 34
    if-ne p4, p1, :cond_2

    .line 35
    .line 36
    iget-object p1, p0, LU0/a;->K:Lw0/g;

    .line 37
    .line 38
    invoke-virtual {p1}, Lw0/a;->isEndOfStream()Z

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/H1;->i(Z)V

    .line 43
    .line 44
    .line 45
    const/4 p1, 0x1

    .line 46
    iput-boolean p1, p0, LU0/a;->d0:Z

    .line 47
    .line 48
    iput-boolean p1, p0, LU0/a;->e0:Z

    .line 49
    .line 50
    :cond_2
    return-void

    .line 51
    :cond_3
    :goto_0
    invoke-virtual {p0}, LU0/a;->d()V

    .line 52
    .line 53
    .line 54
    iget-object p3, p0, LU0/a;->N:Lw0/d;

    .line 55
    .line 56
    if-eqz p3, :cond_6

    .line 57
    .line 58
    :try_start_0
    const-string p3, "drainAndFeed"

    .line 59
    .line 60
    invoke-static {p3}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    :goto_1
    invoke-virtual {p0, p1, p2}, LU0/a;->a(J)Z

    .line 64
    .line 65
    .line 66
    move-result p3

    .line 67
    if-eqz p3, :cond_4

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_4
    :goto_2
    invoke-virtual {p0}, LU0/a;->b()Z

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    if-eqz p1, :cond_5

    .line 75
    .line 76
    goto :goto_2

    .line 77
    :cond_5
    invoke-static {}, Landroid/os/Trace;->endSection()V
    :try_end_0
    .catch Lw0/e; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    .line 79
    .line 80
    iget-object p1, p0, LU0/a;->l0:LB0/i;

    .line 81
    .line 82
    monitor-enter p1

    .line 83
    monitor-exit p1

    .line 84
    goto :goto_3

    .line 85
    :catch_0
    move-exception p1

    .line 86
    const-string p2, "DecoderVideoRenderer"

    .line 87
    .line 88
    const-string p3, "Video codec error"

    .line 89
    .line 90
    invoke-static {p2, p3, p1}, Lp0/x;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 91
    .line 92
    .line 93
    iget-object p2, p0, LU0/a;->I:Lcom/google/android/gms/internal/atv_ads_framework/x0;

    .line 94
    .line 95
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/atv_ads_framework/x0;->z(Ljava/lang/Exception;)V

    .line 96
    .line 97
    .line 98
    iget-object p2, p0, LU0/a;->L:Lm0/t;

    .line 99
    .line 100
    const/16 p3, 0xfa3

    .line 101
    .line 102
    invoke-virtual {p0, p1, p2, p3}, LB0/h;->createRendererException(Ljava/lang/Throwable;Lm0/t;I)LB0/w;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    throw p1

    .line 107
    :cond_6
    :goto_3
    return-void
.end method
