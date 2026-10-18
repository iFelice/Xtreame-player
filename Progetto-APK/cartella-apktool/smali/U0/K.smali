.class public final LU0/K;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:LU0/J;

.field public final b:LU0/E;

.field public final c:LU0/C;

.field public final d:Lc/g;

.field public final e:Lc/g;

.field public final f:Lp0/z;

.field public g:J

.field public h:J

.field public i:J

.field public j:Lm0/w0;

.field public k:J


# direct methods
.method public constructor <init>(Lm2/l;LU0/E;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LU0/K;->a:LU0/J;

    .line 5
    .line 6
    iput-object p2, p0, LU0/K;->b:LU0/E;

    .line 7
    .line 8
    new-instance p1, LU0/C;

    .line 9
    .line 10
    invoke-direct {p1}, LU0/C;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, LU0/K;->c:LU0/C;

    .line 14
    .line 15
    new-instance p1, Lc/g;

    .line 16
    .line 17
    invoke-direct {p1}, Lc/g;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object p1, p0, LU0/K;->d:Lc/g;

    .line 21
    .line 22
    new-instance p1, Lc/g;

    .line 23
    .line 24
    invoke-direct {p1}, Lc/g;-><init>()V

    .line 25
    .line 26
    .line 27
    iput-object p1, p0, LU0/K;->e:Lc/g;

    .line 28
    .line 29
    new-instance p1, Lp0/z;

    .line 30
    .line 31
    const/16 p2, 0x10

    .line 32
    .line 33
    invoke-direct {p1, p2}, Lp0/z;-><init>(I)V

    .line 34
    .line 35
    .line 36
    iput-object p1, p0, LU0/K;->f:Lp0/z;

    .line 37
    .line 38
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    iput-wide p1, p0, LU0/K;->g:J

    .line 44
    .line 45
    sget-object v0, Lm0/w0;->d:Lm0/w0;

    .line 46
    .line 47
    iput-object v0, p0, LU0/K;->j:Lm0/w0;

    .line 48
    .line 49
    iput-wide p1, p0, LU0/K;->h:J

    .line 50
    .line 51
    iput-wide p1, p0, LU0/K;->i:J

    .line 52
    .line 53
    return-void
.end method


# virtual methods
.method public final a(JJ)V
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    :goto_0
    iget-object v1, v0, LU0/K;->f:Lp0/z;

    .line 4
    .line 5
    iget v2, v1, Lp0/z;->c:I

    .line 6
    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    if-eqz v2, :cond_c

    .line 11
    .line 12
    iget-object v2, v1, Lp0/z;->e:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v2, [J

    .line 15
    .line 16
    iget v3, v1, Lp0/z;->a:I

    .line 17
    .line 18
    aget-wide v14, v2, v3

    .line 19
    .line 20
    iget-object v2, v0, LU0/K;->e:Lc/g;

    .line 21
    .line 22
    invoke-virtual {v2, v14, v15}, Lc/g;->k(J)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    check-cast v2, Ljava/lang/Long;

    .line 27
    .line 28
    const/4 v3, 0x2

    .line 29
    iget-object v13, v0, LU0/K;->b:LU0/E;

    .line 30
    .line 31
    if-eqz v2, :cond_1

    .line 32
    .line 33
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 34
    .line 35
    .line 36
    move-result-wide v4

    .line 37
    iget-wide v6, v0, LU0/K;->k:J

    .line 38
    .line 39
    cmp-long v8, v4, v6

    .line 40
    .line 41
    if-eqz v8, :cond_1

    .line 42
    .line 43
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 44
    .line 45
    .line 46
    move-result-wide v4

    .line 47
    iput-wide v4, v0, LU0/K;->k:J

    .line 48
    .line 49
    invoke-virtual {v13, v3}, LU0/E;->f(I)V

    .line 50
    .line 51
    .line 52
    :cond_1
    iget-wide v11, v0, LU0/K;->k:J

    .line 53
    .line 54
    iget-object v4, v0, LU0/K;->b:LU0/E;

    .line 55
    .line 56
    const/4 v2, 0x0

    .line 57
    const/16 v16, 0x0

    .line 58
    .line 59
    iget-object v9, v0, LU0/K;->c:LU0/C;

    .line 60
    .line 61
    move-wide v5, v14

    .line 62
    move-wide/from16 v7, p1

    .line 63
    .line 64
    move-object/from16 v17, v9

    .line 65
    .line 66
    move-wide/from16 v9, p3

    .line 67
    .line 68
    move-object/from16 v18, v13

    .line 69
    .line 70
    move v13, v2

    .line 71
    move-wide/from16 v19, v14

    .line 72
    .line 73
    move/from16 v14, v16

    .line 74
    .line 75
    move-object/from16 v15, v17

    .line 76
    .line 77
    invoke-virtual/range {v4 .. v15}, LU0/E;->a(JJJJZZLU0/C;)I

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    const/4 v4, 0x3

    .line 82
    const/4 v5, 0x1

    .line 83
    iget-object v6, v0, LU0/K;->a:LU0/J;

    .line 84
    .line 85
    if-eqz v2, :cond_5

    .line 86
    .line 87
    if-eq v2, v5, :cond_5

    .line 88
    .line 89
    if-eq v2, v3, :cond_4

    .line 90
    .line 91
    if-eq v2, v4, :cond_4

    .line 92
    .line 93
    const/4 v1, 0x4

    .line 94
    if-eq v2, v1, :cond_3

    .line 95
    .line 96
    const/4 v1, 0x5

    .line 97
    if-ne v2, v1, :cond_2

    .line 98
    .line 99
    return-void

    .line 100
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 101
    .line 102
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    throw v1

    .line 110
    :cond_3
    move-wide/from16 v7, v19

    .line 111
    .line 112
    iput-wide v7, v0, LU0/K;->h:J

    .line 113
    .line 114
    goto :goto_0

    .line 115
    :cond_4
    move-wide/from16 v7, v19

    .line 116
    .line 117
    iput-wide v7, v0, LU0/K;->h:J

    .line 118
    .line 119
    invoke-virtual {v1}, Lp0/z;->e()J

    .line 120
    .line 121
    .line 122
    check-cast v6, Lm2/l;

    .line 123
    .line 124
    iget-object v1, v6, Lm2/l;->I:Ljava/lang/Object;

    .line 125
    .line 126
    check-cast v1, LU0/d;

    .line 127
    .line 128
    iget-object v1, v1, LU0/d;->N:Ljava/util/concurrent/Executor;

    .line 129
    .line 130
    new-instance v2, LU0/c;

    .line 131
    .line 132
    invoke-direct {v2, v6, v5}, LU0/c;-><init>(Lm2/l;I)V

    .line 133
    .line 134
    .line 135
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 136
    .line 137
    .line 138
    iget-object v1, v6, Lm2/l;->I:Ljava/lang/Object;

    .line 139
    .line 140
    check-cast v1, LU0/d;

    .line 141
    .line 142
    iget-object v1, v1, LU0/d;->I:Ljava/util/ArrayDeque;

    .line 143
    .line 144
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    check-cast v1, LU0/P;

    .line 149
    .line 150
    invoke-interface {v1}, LU0/P;->skip()V

    .line 151
    .line 152
    .line 153
    goto/16 :goto_0

    .line 154
    .line 155
    :cond_5
    move-wide/from16 v7, v19

    .line 156
    .line 157
    iput-wide v7, v0, LU0/K;->h:J

    .line 158
    .line 159
    const/4 v3, 0x0

    .line 160
    if-nez v2, :cond_6

    .line 161
    .line 162
    const/4 v2, 0x1

    .line 163
    goto :goto_1

    .line 164
    :cond_6
    const/4 v2, 0x0

    .line 165
    :goto_1
    invoke-virtual {v1}, Lp0/z;->e()J

    .line 166
    .line 167
    .line 168
    move-result-wide v8

    .line 169
    iget-object v1, v0, LU0/K;->d:Lc/g;

    .line 170
    .line 171
    invoke-virtual {v1, v8, v9}, Lc/g;->k(J)Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object v1

    .line 175
    check-cast v1, Lm0/w0;

    .line 176
    .line 177
    if-eqz v1, :cond_7

    .line 178
    .line 179
    sget-object v7, Lm0/w0;->d:Lm0/w0;

    .line 180
    .line 181
    invoke-virtual {v1, v7}, Lm0/w0;->equals(Ljava/lang/Object;)Z

    .line 182
    .line 183
    .line 184
    move-result v7

    .line 185
    if-nez v7, :cond_7

    .line 186
    .line 187
    iget-object v7, v0, LU0/K;->j:Lm0/w0;

    .line 188
    .line 189
    invoke-virtual {v1, v7}, Lm0/w0;->equals(Ljava/lang/Object;)Z

    .line 190
    .line 191
    .line 192
    move-result v7

    .line 193
    if-nez v7, :cond_7

    .line 194
    .line 195
    iput-object v1, v0, LU0/K;->j:Lm0/w0;

    .line 196
    .line 197
    move-object v7, v6

    .line 198
    check-cast v7, Lm2/l;

    .line 199
    .line 200
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 201
    .line 202
    .line 203
    new-instance v10, Lm0/s;

    .line 204
    .line 205
    invoke-direct {v10}, Lm0/s;-><init>()V

    .line 206
    .line 207
    .line 208
    iget v11, v1, Lm0/w0;->a:I

    .line 209
    .line 210
    iput v11, v10, Lm0/s;->u:I

    .line 211
    .line 212
    iget v11, v1, Lm0/w0;->b:I

    .line 213
    .line 214
    iput v11, v10, Lm0/s;->v:I

    .line 215
    .line 216
    const-string v11, "video/raw"

    .line 217
    .line 218
    invoke-static {v11}, Lm0/O;->p(Ljava/lang/String;)Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v11

    .line 222
    iput-object v11, v10, Lm0/s;->n:Ljava/lang/String;

    .line 223
    .line 224
    new-instance v11, Lm0/t;

    .line 225
    .line 226
    invoke-direct {v11, v10}, Lm0/t;-><init>(Lm0/s;)V

    .line 227
    .line 228
    .line 229
    iput-object v11, v7, Lm2/l;->H:Ljava/lang/Object;

    .line 230
    .line 231
    iget-object v10, v7, Lm2/l;->I:Ljava/lang/Object;

    .line 232
    .line 233
    check-cast v10, LU0/d;

    .line 234
    .line 235
    iget-object v10, v10, LU0/d;->N:Ljava/util/concurrent/Executor;

    .line 236
    .line 237
    new-instance v11, Lf/t;

    .line 238
    .line 239
    const/16 v12, 0x1d

    .line 240
    .line 241
    invoke-direct {v11, v12, v7, v1}, Lf/t;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 242
    .line 243
    .line 244
    invoke-interface {v10, v11}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 245
    .line 246
    .line 247
    :cond_7
    if-eqz v2, :cond_8

    .line 248
    .line 249
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 250
    .line 251
    .line 252
    move-result-wide v1

    .line 253
    :goto_2
    move-object/from16 v7, v18

    .line 254
    .line 255
    goto :goto_3

    .line 256
    :cond_8
    iget-object v1, v0, LU0/K;->c:LU0/C;

    .line 257
    .line 258
    iget-wide v1, v1, LU0/C;->b:J

    .line 259
    .line 260
    goto :goto_2

    .line 261
    :goto_3
    iget v10, v7, LU0/E;->e:I

    .line 262
    .line 263
    if-eq v10, v4, :cond_9

    .line 264
    .line 265
    goto :goto_4

    .line 266
    :cond_9
    const/4 v5, 0x0

    .line 267
    :goto_4
    iput v4, v7, LU0/E;->e:I

    .line 268
    .line 269
    iget-object v4, v7, LU0/E;->l:Lp0/f;

    .line 270
    .line 271
    check-cast v4, Lp0/G;

    .line 272
    .line 273
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 274
    .line 275
    .line 276
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 277
    .line 278
    .line 279
    move-result-wide v10

    .line 280
    invoke-static {v10, v11}, Lp0/M;->R(J)J

    .line 281
    .line 282
    .line 283
    move-result-wide v10

    .line 284
    iput-wide v10, v7, LU0/E;->g:J

    .line 285
    .line 286
    check-cast v6, Lm2/l;

    .line 287
    .line 288
    if-eqz v5, :cond_a

    .line 289
    .line 290
    iget-object v4, v6, Lm2/l;->I:Ljava/lang/Object;

    .line 291
    .line 292
    check-cast v4, LU0/d;

    .line 293
    .line 294
    iget-object v5, v4, LU0/d;->J:Landroid/view/Surface;

    .line 295
    .line 296
    if-eqz v5, :cond_a

    .line 297
    .line 298
    iget-object v4, v4, LU0/d;->N:Ljava/util/concurrent/Executor;

    .line 299
    .line 300
    new-instance v5, LU0/c;

    .line 301
    .line 302
    invoke-direct {v5, v6, v3}, LU0/c;-><init>(Lm2/l;I)V

    .line 303
    .line 304
    .line 305
    invoke-interface {v4, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 306
    .line 307
    .line 308
    :cond_a
    iget-object v3, v6, Lm2/l;->H:Ljava/lang/Object;

    .line 309
    .line 310
    check-cast v3, Lm0/t;

    .line 311
    .line 312
    if-nez v3, :cond_b

    .line 313
    .line 314
    new-instance v3, Lm0/s;

    .line 315
    .line 316
    invoke-direct {v3}, Lm0/s;-><init>()V

    .line 317
    .line 318
    .line 319
    new-instance v4, Lm0/t;

    .line 320
    .line 321
    invoke-direct {v4, v3}, Lm0/t;-><init>(Lm0/s;)V

    .line 322
    .line 323
    .line 324
    move-object v12, v4

    .line 325
    goto :goto_5

    .line 326
    :cond_b
    move-object v12, v3

    .line 327
    :goto_5
    iget-object v3, v6, Lm2/l;->I:Ljava/lang/Object;

    .line 328
    .line 329
    check-cast v3, LU0/d;

    .line 330
    .line 331
    iget-object v7, v3, LU0/d;->O:LU0/B;

    .line 332
    .line 333
    const/4 v13, 0x0

    .line 334
    move-wide v10, v1

    .line 335
    invoke-interface/range {v7 .. v13}, LU0/B;->b(JJLm0/t;Landroid/media/MediaFormat;)V

    .line 336
    .line 337
    .line 338
    iget-object v3, v6, Lm2/l;->I:Ljava/lang/Object;

    .line 339
    .line 340
    check-cast v3, LU0/d;

    .line 341
    .line 342
    iget-object v3, v3, LU0/d;->I:Ljava/util/ArrayDeque;

    .line 343
    .line 344
    invoke-virtual {v3}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    .line 345
    .line 346
    .line 347
    move-result-object v3

    .line 348
    check-cast v3, LU0/P;

    .line 349
    .line 350
    invoke-interface {v3, v1, v2}, LU0/P;->a(J)V

    .line 351
    .line 352
    .line 353
    goto/16 :goto_0

    .line 354
    .line 355
    :cond_c
    new-instance v1, Ljava/util/NoSuchElementException;

    .line 356
    .line 357
    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    .line 358
    .line 359
    .line 360
    throw v1
.end method
