.class public final Lb1/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LW0/s;


# instance fields
.field public final a:[B

.field public final b:Lp0/E;

.field public final c:Z

.field public final d:LW0/w;

.field public e:LW0/u;

.field public f:LW0/L;

.field public g:I

.field public h:Lm0/N;

.field public i:Landroidx/media3/extractor/FlacStreamMetadata;

.field public j:I

.field public k:I

.field public l:Lb1/a;

.field public m:I

.field public n:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x2a

    .line 5
    .line 6
    new-array v0, v0, [B

    .line 7
    .line 8
    iput-object v0, p0, Lb1/b;->a:[B

    .line 9
    .line 10
    new-instance v0, Lp0/E;

    .line 11
    .line 12
    const v1, 0x8000

    .line 13
    .line 14
    .line 15
    new-array v1, v1, [B

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    invoke-direct {v0, v1, v2}, Lp0/E;-><init>([BI)V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lb1/b;->b:Lp0/E;

    .line 22
    .line 23
    iput-boolean v2, p0, Lb1/b;->c:Z

    .line 24
    .line 25
    new-instance v0, LW0/w;

    .line 26
    .line 27
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lb1/b;->d:LW0/w;

    .line 31
    .line 32
    iput v2, p0, Lb1/b;->g:I

    .line 33
    .line 34
    return-void
.end method


# virtual methods
.method public final b()LW0/s;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final d(LW0/u;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lb1/b;->e:LW0/u;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const/4 v1, 0x1

    .line 5
    invoke-interface {p1, v0, v1}, LW0/u;->t(II)LW0/L;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lb1/b;->f:LW0/L;

    .line 10
    .line 11
    invoke-interface {p1}, LW0/u;->j()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final g(LW0/t;)Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {p1, v0}, LZ3/C;->g(LW0/t;Z)Lm0/N;

    .line 3
    .line 4
    .line 5
    new-instance v1, Lp0/E;

    .line 6
    .line 7
    const/4 v2, 0x4

    .line 8
    invoke-direct {v1, v2}, Lp0/E;-><init>(I)V

    .line 9
    .line 10
    .line 11
    iget-object v3, v1, Lp0/E;->a:[B

    .line 12
    .line 13
    invoke-interface {p1, v0, v3, v2}, LW0/t;->c(I[BI)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Lp0/E;->B()J

    .line 17
    .line 18
    .line 19
    move-result-wide v1

    .line 20
    const-wide/32 v3, 0x664c6143

    .line 21
    .line 22
    .line 23
    cmp-long p1, v1, v3

    .line 24
    .line 25
    if-nez p1, :cond_0

    .line 26
    .line 27
    const/4 v0, 0x1

    .line 28
    :cond_0
    return v0
.end method

.method public final h(LW0/t;LW0/w;)I
    .locals 30

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget v2, v0, Lb1/b;->g:I

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    const/4 v4, 0x1

    .line 9
    if-eqz v2, :cond_24

    .line 10
    .line 11
    const/4 v5, 0x2

    .line 12
    iget-object v6, v0, Lb1/b;->a:[B

    .line 13
    .line 14
    if-eq v2, v4, :cond_23

    .line 15
    .line 16
    const/4 v7, 0x0

    .line 17
    const/4 v8, 0x4

    .line 18
    const/4 v9, 0x3

    .line 19
    if-eq v2, v5, :cond_21

    .line 20
    .line 21
    const/4 v10, 0x7

    .line 22
    const/4 v11, 0x6

    .line 23
    if-eq v2, v9, :cond_1a

    .line 24
    .line 25
    const-wide/16 v12, 0x0

    .line 26
    .line 27
    const-wide/16 v14, -0x1

    .line 28
    .line 29
    const/4 v6, 0x5

    .line 30
    if-eq v2, v8, :cond_16

    .line 31
    .line 32
    if-ne v2, v6, :cond_15

    .line 33
    .line 34
    iget-object v2, v0, Lb1/b;->f:LW0/L;

    .line 35
    .line 36
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    iget-object v2, v0, Lb1/b;->i:Landroidx/media3/extractor/FlacStreamMetadata;

    .line 40
    .line 41
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    iget-object v2, v0, Lb1/b;->l:Lb1/a;

    .line 45
    .line 46
    if-eqz v2, :cond_0

    .line 47
    .line 48
    iget-object v6, v2, LW0/k;->d:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast v6, LW0/g;

    .line 51
    .line 52
    if-eqz v6, :cond_0

    .line 53
    .line 54
    move-object/from16 v6, p2

    .line 55
    .line 56
    invoke-virtual {v2, v1, v6}, LW0/k;->a(LW0/t;LW0/w;)I

    .line 57
    .line 58
    .line 59
    move-result v3

    .line 60
    goto/16 :goto_e

    .line 61
    .line 62
    :cond_0
    iget-wide v8, v0, Lb1/b;->n:J

    .line 63
    .line 64
    const/4 v2, -0x1

    .line 65
    cmp-long v6, v8, v14

    .line 66
    .line 67
    if-nez v6, :cond_7

    .line 68
    .line 69
    iget-object v6, v0, Lb1/b;->i:Landroidx/media3/extractor/FlacStreamMetadata;

    .line 70
    .line 71
    invoke-interface/range {p1 .. p1}, LW0/t;->m()V

    .line 72
    .line 73
    .line 74
    invoke-interface {v1, v4}, LW0/t;->g(I)V

    .line 75
    .line 76
    .line 77
    new-array v8, v4, [B

    .line 78
    .line 79
    invoke-interface {v1, v3, v8, v4}, LW0/t;->c(I[BI)V

    .line 80
    .line 81
    .line 82
    aget-byte v8, v8, v3

    .line 83
    .line 84
    and-int/2addr v8, v4

    .line 85
    if-ne v8, v4, :cond_1

    .line 86
    .line 87
    const/4 v8, 0x1

    .line 88
    goto :goto_0

    .line 89
    :cond_1
    const/4 v8, 0x0

    .line 90
    :goto_0
    invoke-interface {v1, v5}, LW0/t;->g(I)V

    .line 91
    .line 92
    .line 93
    if-eqz v8, :cond_2

    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_2
    const/4 v10, 0x6

    .line 97
    :goto_1
    new-instance v5, Lp0/E;

    .line 98
    .line 99
    invoke-direct {v5, v10}, Lp0/E;-><init>(I)V

    .line 100
    .line 101
    .line 102
    iget-object v9, v5, Lp0/E;->a:[B

    .line 103
    .line 104
    const/4 v11, 0x0

    .line 105
    :goto_2
    if-ge v11, v10, :cond_4

    .line 106
    .line 107
    sub-int v14, v10, v11

    .line 108
    .line 109
    invoke-interface {v1, v11, v9, v14}, LW0/t;->h(I[BI)I

    .line 110
    .line 111
    .line 112
    move-result v14

    .line 113
    if-ne v14, v2, :cond_3

    .line 114
    .line 115
    goto :goto_3

    .line 116
    :cond_3
    add-int/2addr v11, v14

    .line 117
    goto :goto_2

    .line 118
    :cond_4
    :goto_3
    invoke-virtual {v5, v11}, Lp0/E;->K(I)V

    .line 119
    .line 120
    .line 121
    invoke-interface/range {p1 .. p1}, LW0/t;->m()V

    .line 122
    .line 123
    .line 124
    :try_start_0
    invoke-virtual {v5}, Lp0/E;->G()J

    .line 125
    .line 126
    .line 127
    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    if-eqz v8, :cond_5

    .line 129
    .line 130
    :goto_4
    move-wide v12, v1

    .line 131
    goto :goto_5

    .line 132
    :cond_5
    iget v5, v6, Landroidx/media3/extractor/FlacStreamMetadata;->maxBlockSizeSamples:I

    .line 133
    .line 134
    int-to-long v5, v5

    .line 135
    mul-long v1, v1, v5

    .line 136
    .line 137
    goto :goto_4

    .line 138
    :catch_0
    nop

    .line 139
    const/4 v4, 0x0

    .line 140
    :goto_5
    if-eqz v4, :cond_6

    .line 141
    .line 142
    iput-wide v12, v0, Lb1/b;->n:J

    .line 143
    .line 144
    goto/16 :goto_e

    .line 145
    .line 146
    :cond_6
    invoke-static {v7, v7}, Lm0/P;->a(Ljava/lang/String;Ljava/lang/RuntimeException;)Lm0/P;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    throw v1

    .line 151
    :cond_7
    iget-object v5, v0, Lb1/b;->b:Lp0/E;

    .line 152
    .line 153
    iget v6, v5, Lp0/E;->c:I

    .line 154
    .line 155
    const-wide/32 v7, 0xf4240

    .line 156
    .line 157
    .line 158
    const v9, 0x8000

    .line 159
    .line 160
    .line 161
    if-ge v6, v9, :cond_a

    .line 162
    .line 163
    iget-object v10, v5, Lp0/E;->a:[B

    .line 164
    .line 165
    sub-int/2addr v9, v6

    .line 166
    invoke-interface {v1, v10, v6, v9}, Lm0/j;->q([BII)I

    .line 167
    .line 168
    .line 169
    move-result v1

    .line 170
    if-ne v1, v2, :cond_8

    .line 171
    .line 172
    goto :goto_6

    .line 173
    :cond_8
    const/4 v4, 0x0

    .line 174
    :goto_6
    if-nez v4, :cond_9

    .line 175
    .line 176
    add-int/2addr v6, v1

    .line 177
    invoke-virtual {v5, v6}, Lp0/E;->K(I)V

    .line 178
    .line 179
    .line 180
    goto :goto_7

    .line 181
    :cond_9
    invoke-virtual {v5}, Lp0/E;->a()I

    .line 182
    .line 183
    .line 184
    move-result v1

    .line 185
    if-nez v1, :cond_b

    .line 186
    .line 187
    iget-wide v3, v0, Lb1/b;->n:J

    .line 188
    .line 189
    mul-long v3, v3, v7

    .line 190
    .line 191
    iget-object v1, v0, Lb1/b;->i:Landroidx/media3/extractor/FlacStreamMetadata;

    .line 192
    .line 193
    sget-object v5, Lp0/M;->a:Ljava/lang/String;

    .line 194
    .line 195
    iget v1, v1, Landroidx/media3/extractor/FlacStreamMetadata;->sampleRate:I

    .line 196
    .line 197
    int-to-long v5, v1

    .line 198
    div-long v8, v3, v5

    .line 199
    .line 200
    iget-object v7, v0, Lb1/b;->f:LW0/L;

    .line 201
    .line 202
    iget v11, v0, Lb1/b;->m:I

    .line 203
    .line 204
    const/4 v13, 0x0

    .line 205
    const/4 v10, 0x1

    .line 206
    const/4 v12, 0x0

    .line 207
    invoke-interface/range {v7 .. v13}, LW0/L;->d(JIIILW0/K;)V

    .line 208
    .line 209
    .line 210
    const/4 v3, -0x1

    .line 211
    goto/16 :goto_e

    .line 212
    .line 213
    :cond_a
    const/4 v4, 0x0

    .line 214
    :cond_b
    :goto_7
    iget v1, v5, Lp0/E;->b:I

    .line 215
    .line 216
    iget v2, v0, Lb1/b;->m:I

    .line 217
    .line 218
    iget v6, v0, Lb1/b;->j:I

    .line 219
    .line 220
    if-ge v2, v6, :cond_c

    .line 221
    .line 222
    sub-int/2addr v6, v2

    .line 223
    invoke-virtual {v5}, Lp0/E;->a()I

    .line 224
    .line 225
    .line 226
    move-result v2

    .line 227
    invoke-static {v6, v2}, Ljava/lang/Math;->min(II)I

    .line 228
    .line 229
    .line 230
    move-result v2

    .line 231
    invoke-virtual {v5, v2}, Lp0/E;->M(I)V

    .line 232
    .line 233
    .line 234
    :cond_c
    iget-object v2, v0, Lb1/b;->i:Landroidx/media3/extractor/FlacStreamMetadata;

    .line 235
    .line 236
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 237
    .line 238
    .line 239
    iget v2, v5, Lp0/E;->b:I

    .line 240
    .line 241
    :goto_8
    iget v6, v5, Lp0/E;->c:I

    .line 242
    .line 243
    const/16 v9, 0x10

    .line 244
    .line 245
    sub-int/2addr v6, v9

    .line 246
    iget-object v10, v0, Lb1/b;->d:LW0/w;

    .line 247
    .line 248
    if-gt v2, v6, :cond_e

    .line 249
    .line 250
    invoke-virtual {v5, v2}, Lp0/E;->L(I)V

    .line 251
    .line 252
    .line 253
    iget-object v6, v0, Lb1/b;->i:Landroidx/media3/extractor/FlacStreamMetadata;

    .line 254
    .line 255
    iget v11, v0, Lb1/b;->k:I

    .line 256
    .line 257
    invoke-static {v5, v6, v11, v10}, LQ3/b;->b(Lp0/E;Landroidx/media3/extractor/FlacStreamMetadata;ILW0/w;)Z

    .line 258
    .line 259
    .line 260
    move-result v6

    .line 261
    if-eqz v6, :cond_d

    .line 262
    .line 263
    invoke-virtual {v5, v2}, Lp0/E;->L(I)V

    .line 264
    .line 265
    .line 266
    iget-wide v10, v10, LW0/w;->a:J

    .line 267
    .line 268
    goto :goto_d

    .line 269
    :cond_d
    add-int/lit8 v2, v2, 0x1

    .line 270
    .line 271
    goto :goto_8

    .line 272
    :cond_e
    if-eqz v4, :cond_12

    .line 273
    .line 274
    :goto_9
    iget v4, v5, Lp0/E;->c:I

    .line 275
    .line 276
    iget v6, v0, Lb1/b;->j:I

    .line 277
    .line 278
    sub-int v6, v4, v6

    .line 279
    .line 280
    if-gt v2, v6, :cond_11

    .line 281
    .line 282
    invoke-virtual {v5, v2}, Lp0/E;->L(I)V

    .line 283
    .line 284
    .line 285
    :try_start_1
    iget-object v4, v0, Lb1/b;->i:Landroidx/media3/extractor/FlacStreamMetadata;

    .line 286
    .line 287
    iget v6, v0, Lb1/b;->k:I

    .line 288
    .line 289
    invoke-static {v5, v4, v6, v10}, LQ3/b;->b(Lp0/E;Landroidx/media3/extractor/FlacStreamMetadata;ILW0/w;)Z

    .line 290
    .line 291
    .line 292
    move-result v4
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    .line 293
    goto :goto_a

    .line 294
    :catch_1
    const/4 v4, 0x0

    .line 295
    :goto_a
    iget v6, v5, Lp0/E;->b:I

    .line 296
    .line 297
    iget v11, v5, Lp0/E;->c:I

    .line 298
    .line 299
    if-le v6, v11, :cond_f

    .line 300
    .line 301
    goto :goto_b

    .line 302
    :cond_f
    if-eqz v4, :cond_10

    .line 303
    .line 304
    invoke-virtual {v5, v2}, Lp0/E;->L(I)V

    .line 305
    .line 306
    .line 307
    iget-wide v10, v10, LW0/w;->a:J

    .line 308
    .line 309
    goto :goto_d

    .line 310
    :cond_10
    :goto_b
    add-int/lit8 v2, v2, 0x1

    .line 311
    .line 312
    goto :goto_9

    .line 313
    :cond_11
    invoke-virtual {v5, v4}, Lp0/E;->L(I)V

    .line 314
    .line 315
    .line 316
    goto :goto_c

    .line 317
    :cond_12
    invoke-virtual {v5, v2}, Lp0/E;->L(I)V

    .line 318
    .line 319
    .line 320
    :goto_c
    move-wide v10, v14

    .line 321
    :goto_d
    iget v2, v5, Lp0/E;->b:I

    .line 322
    .line 323
    sub-int/2addr v2, v1

    .line 324
    invoke-virtual {v5, v1}, Lp0/E;->L(I)V

    .line 325
    .line 326
    .line 327
    iget-object v1, v0, Lb1/b;->f:LW0/L;

    .line 328
    .line 329
    invoke-interface {v1, v2, v5}, LW0/L;->e(ILp0/E;)V

    .line 330
    .line 331
    .line 332
    iget v1, v0, Lb1/b;->m:I

    .line 333
    .line 334
    add-int/2addr v1, v2

    .line 335
    iput v1, v0, Lb1/b;->m:I

    .line 336
    .line 337
    cmp-long v2, v10, v14

    .line 338
    .line 339
    if-eqz v2, :cond_13

    .line 340
    .line 341
    iget-wide v12, v0, Lb1/b;->n:J

    .line 342
    .line 343
    mul-long v12, v12, v7

    .line 344
    .line 345
    iget-object v2, v0, Lb1/b;->i:Landroidx/media3/extractor/FlacStreamMetadata;

    .line 346
    .line 347
    sget-object v4, Lp0/M;->a:Ljava/lang/String;

    .line 348
    .line 349
    iget v2, v2, Landroidx/media3/extractor/FlacStreamMetadata;->sampleRate:I

    .line 350
    .line 351
    int-to-long v6, v2

    .line 352
    div-long v17, v12, v6

    .line 353
    .line 354
    iget-object v2, v0, Lb1/b;->f:LW0/L;

    .line 355
    .line 356
    const/16 v22, 0x0

    .line 357
    .line 358
    const/16 v19, 0x1

    .line 359
    .line 360
    const/16 v21, 0x0

    .line 361
    .line 362
    move-object/from16 v16, v2

    .line 363
    .line 364
    move/from16 v20, v1

    .line 365
    .line 366
    invoke-interface/range {v16 .. v22}, LW0/L;->d(JIIILW0/K;)V

    .line 367
    .line 368
    .line 369
    iput v3, v0, Lb1/b;->m:I

    .line 370
    .line 371
    iput-wide v10, v0, Lb1/b;->n:J

    .line 372
    .line 373
    :cond_13
    iget-object v1, v5, Lp0/E;->a:[B

    .line 374
    .line 375
    array-length v1, v1

    .line 376
    iget v2, v5, Lp0/E;->c:I

    .line 377
    .line 378
    sub-int/2addr v1, v2

    .line 379
    invoke-virtual {v5}, Lp0/E;->a()I

    .line 380
    .line 381
    .line 382
    move-result v2

    .line 383
    if-ge v2, v9, :cond_14

    .line 384
    .line 385
    if-ge v1, v9, :cond_14

    .line 386
    .line 387
    invoke-virtual {v5}, Lp0/E;->a()I

    .line 388
    .line 389
    .line 390
    move-result v1

    .line 391
    iget-object v2, v5, Lp0/E;->a:[B

    .line 392
    .line 393
    iget v4, v5, Lp0/E;->b:I

    .line 394
    .line 395
    invoke-static {v2, v4, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 396
    .line 397
    .line 398
    invoke-virtual {v5, v3}, Lp0/E;->L(I)V

    .line 399
    .line 400
    .line 401
    invoke-virtual {v5, v1}, Lp0/E;->K(I)V

    .line 402
    .line 403
    .line 404
    :cond_14
    :goto_e
    return v3

    .line 405
    :cond_15
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 406
    .line 407
    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 408
    .line 409
    .line 410
    throw v1

    .line 411
    :cond_16
    invoke-interface/range {p1 .. p1}, LW0/t;->m()V

    .line 412
    .line 413
    .line 414
    new-instance v2, Lp0/E;

    .line 415
    .line 416
    invoke-direct {v2, v5}, Lp0/E;-><init>(I)V

    .line 417
    .line 418
    .line 419
    iget-object v8, v2, Lp0/E;->a:[B

    .line 420
    .line 421
    invoke-interface {v1, v3, v8, v5}, LW0/t;->c(I[BI)V

    .line 422
    .line 423
    .line 424
    invoke-virtual {v2}, Lp0/E;->F()I

    .line 425
    .line 426
    .line 427
    move-result v2

    .line 428
    shr-int/lit8 v5, v2, 0x2

    .line 429
    .line 430
    const/16 v8, 0x3ffe

    .line 431
    .line 432
    if-ne v5, v8, :cond_19

    .line 433
    .line 434
    invoke-interface/range {p1 .. p1}, LW0/t;->m()V

    .line 435
    .line 436
    .line 437
    iput v2, v0, Lb1/b;->k:I

    .line 438
    .line 439
    iget-object v2, v0, Lb1/b;->e:LW0/u;

    .line 440
    .line 441
    sget-object v5, Lp0/M;->a:Ljava/lang/String;

    .line 442
    .line 443
    invoke-interface/range {p1 .. p1}, LW0/t;->r()J

    .line 444
    .line 445
    .line 446
    move-result-wide v7

    .line 447
    invoke-interface/range {p1 .. p1}, LW0/t;->j()J

    .line 448
    .line 449
    .line 450
    move-result-wide v25

    .line 451
    iget-object v1, v0, Lb1/b;->i:Landroidx/media3/extractor/FlacStreamMetadata;

    .line 452
    .line 453
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 454
    .line 455
    .line 456
    iget-object v1, v0, Lb1/b;->i:Landroidx/media3/extractor/FlacStreamMetadata;

    .line 457
    .line 458
    iget-object v5, v1, Landroidx/media3/extractor/FlacStreamMetadata;->seekTable:LW0/y;

    .line 459
    .line 460
    if-eqz v5, :cond_17

    .line 461
    .line 462
    iget-object v5, v5, LW0/y;->a:[J

    .line 463
    .line 464
    array-length v5, v5

    .line 465
    if-lez v5, :cond_17

    .line 466
    .line 467
    new-instance v4, LW0/x;

    .line 468
    .line 469
    invoke-direct {v4, v1, v3, v7, v8}, LW0/x;-><init>(Ljava/lang/Object;IJ)V

    .line 470
    .line 471
    .line 472
    goto :goto_f

    .line 473
    :cond_17
    cmp-long v5, v25, v14

    .line 474
    .line 475
    if-eqz v5, :cond_18

    .line 476
    .line 477
    iget-wide v9, v1, Landroidx/media3/extractor/FlacStreamMetadata;->totalSamples:J

    .line 478
    .line 479
    cmp-long v5, v9, v12

    .line 480
    .line 481
    if-lez v5, :cond_18

    .line 482
    .line 483
    new-instance v5, Lb1/a;

    .line 484
    .line 485
    iget v9, v0, Lb1/b;->k:I

    .line 486
    .line 487
    new-instance v10, Landroidx/media3/decoder/flac/a;

    .line 488
    .line 489
    invoke-direct {v10, v4, v1}, Landroidx/media3/decoder/flac/a;-><init>(ILandroidx/media3/extractor/FlacStreamMetadata;)V

    .line 490
    .line 491
    .line 492
    new-instance v4, LF/d;

    .line 493
    .line 494
    invoke-direct {v4, v1, v9}, LF/d;-><init>(Landroidx/media3/extractor/FlacStreamMetadata;I)V

    .line 495
    .line 496
    .line 497
    invoke-virtual {v1}, Landroidx/media3/extractor/FlacStreamMetadata;->getDurationUs()J

    .line 498
    .line 499
    .line 500
    move-result-wide v19

    .line 501
    iget-wide v12, v1, Landroidx/media3/extractor/FlacStreamMetadata;->totalSamples:J

    .line 502
    .line 503
    invoke-virtual {v1}, Landroidx/media3/extractor/FlacStreamMetadata;->getApproxBytesPerFrame()J

    .line 504
    .line 505
    .line 506
    move-result-wide v27

    .line 507
    iget v1, v1, Landroidx/media3/extractor/FlacStreamMetadata;->minFrameSize:I

    .line 508
    .line 509
    invoke-static {v11, v1}, Ljava/lang/Math;->max(II)I

    .line 510
    .line 511
    .line 512
    move-result v29

    .line 513
    move-object/from16 v16, v5

    .line 514
    .line 515
    move-object/from16 v17, v10

    .line 516
    .line 517
    move-object/from16 v18, v4

    .line 518
    .line 519
    move-wide/from16 v21, v12

    .line 520
    .line 521
    move-wide/from16 v23, v7

    .line 522
    .line 523
    invoke-direct/range {v16 .. v29}, LW0/k;-><init>(LW0/h;LW0/j;JJJJJI)V

    .line 524
    .line 525
    .line 526
    iput-object v5, v0, Lb1/b;->l:Lb1/a;

    .line 527
    .line 528
    iget-object v1, v5, LW0/k;->b:Ljava/lang/Object;

    .line 529
    .line 530
    move-object v4, v1

    .line 531
    check-cast v4, LW0/f;

    .line 532
    .line 533
    goto :goto_f

    .line 534
    :cond_18
    new-instance v4, LW0/x;

    .line 535
    .line 536
    invoke-virtual {v1}, Landroidx/media3/extractor/FlacStreamMetadata;->getDurationUs()J

    .line 537
    .line 538
    .line 539
    move-result-wide v7

    .line 540
    invoke-direct {v4, v7, v8}, LW0/x;-><init>(J)V

    .line 541
    .line 542
    .line 543
    :goto_f
    invoke-interface {v2, v4}, LW0/u;->r(LW0/F;)V

    .line 544
    .line 545
    .line 546
    iput v6, v0, Lb1/b;->g:I

    .line 547
    .line 548
    return v3

    .line 549
    :cond_19
    invoke-interface/range {p1 .. p1}, LW0/t;->m()V

    .line 550
    .line 551
    .line 552
    const-string v1, "First frame does not start with sync code."

    .line 553
    .line 554
    invoke-static {v1, v7}, Lm0/P;->a(Ljava/lang/String;Ljava/lang/RuntimeException;)Lm0/P;

    .line 555
    .line 556
    .line 557
    move-result-object v1

    .line 558
    throw v1

    .line 559
    :cond_1a
    iget-object v2, v0, Lb1/b;->i:Landroidx/media3/extractor/FlacStreamMetadata;

    .line 560
    .line 561
    :goto_10
    invoke-interface/range {p1 .. p1}, LW0/t;->m()V

    .line 562
    .line 563
    .line 564
    new-instance v4, Lp0/D;

    .line 565
    .line 566
    new-array v5, v8, [B

    .line 567
    .line 568
    invoke-direct {v4, v5, v3, v7}, Lp0/D;-><init>([BILjava/lang/Object;)V

    .line 569
    .line 570
    .line 571
    iget-object v5, v4, Lp0/D;->b:[B

    .line 572
    .line 573
    invoke-interface {v1, v3, v5, v8}, LW0/t;->c(I[BI)V

    .line 574
    .line 575
    .line 576
    invoke-virtual {v4}, Lp0/D;->h()Z

    .line 577
    .line 578
    .line 579
    move-result v5

    .line 580
    invoke-virtual {v4, v10}, Lp0/D;->i(I)I

    .line 581
    .line 582
    .line 583
    move-result v12

    .line 584
    const/16 v13, 0x18

    .line 585
    .line 586
    invoke-virtual {v4, v13}, Lp0/D;->i(I)I

    .line 587
    .line 588
    .line 589
    move-result v4

    .line 590
    add-int/2addr v4, v8

    .line 591
    if-nez v12, :cond_1b

    .line 592
    .line 593
    const/16 v2, 0x26

    .line 594
    .line 595
    new-array v4, v2, [B

    .line 596
    .line 597
    invoke-interface {v1, v4, v3, v2}, LW0/t;->readFully([BII)V

    .line 598
    .line 599
    .line 600
    new-instance v2, Landroidx/media3/extractor/FlacStreamMetadata;

    .line 601
    .line 602
    invoke-direct {v2, v4, v8}, Landroidx/media3/extractor/FlacStreamMetadata;-><init>([BI)V

    .line 603
    .line 604
    .line 605
    goto :goto_11

    .line 606
    :cond_1b
    if-eqz v2, :cond_20

    .line 607
    .line 608
    if-ne v12, v9, :cond_1c

    .line 609
    .line 610
    new-instance v12, Lp0/E;

    .line 611
    .line 612
    invoke-direct {v12, v4}, Lp0/E;-><init>(I)V

    .line 613
    .line 614
    .line 615
    iget-object v13, v12, Lp0/E;->a:[B

    .line 616
    .line 617
    invoke-interface {v1, v13, v3, v4}, LW0/t;->readFully([BII)V

    .line 618
    .line 619
    .line 620
    invoke-static {v12}, LZ3/C;->i(Lp0/E;)LW0/y;

    .line 621
    .line 622
    .line 623
    move-result-object v4

    .line 624
    invoke-virtual {v2, v4}, Landroidx/media3/extractor/FlacStreamMetadata;->copyWithSeekTable(LW0/y;)Landroidx/media3/extractor/FlacStreamMetadata;

    .line 625
    .line 626
    .line 627
    move-result-object v2

    .line 628
    goto :goto_11

    .line 629
    :cond_1c
    if-ne v12, v8, :cond_1d

    .line 630
    .line 631
    new-instance v12, Lp0/E;

    .line 632
    .line 633
    invoke-direct {v12, v4}, Lp0/E;-><init>(I)V

    .line 634
    .line 635
    .line 636
    iget-object v13, v12, Lp0/E;->a:[B

    .line 637
    .line 638
    invoke-interface {v1, v13, v3, v4}, LW0/t;->readFully([BII)V

    .line 639
    .line 640
    .line 641
    invoke-virtual {v12, v8}, Lp0/E;->M(I)V

    .line 642
    .line 643
    .line 644
    invoke-static {v12, v3, v3}, Lcom/google/android/gms/internal/measurement/H1;->u(Lp0/E;ZZ)LF/d;

    .line 645
    .line 646
    .line 647
    move-result-object v4

    .line 648
    iget-object v4, v4, LF/d;->J:Ljava/lang/Object;

    .line 649
    .line 650
    check-cast v4, [Ljava/lang/String;

    .line 651
    .line 652
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 653
    .line 654
    .line 655
    move-result-object v4

    .line 656
    invoke-virtual {v2, v4}, Landroidx/media3/extractor/FlacStreamMetadata;->copyWithVorbisComments(Ljava/util/List;)Landroidx/media3/extractor/FlacStreamMetadata;

    .line 657
    .line 658
    .line 659
    move-result-object v2

    .line 660
    goto :goto_11

    .line 661
    :cond_1d
    if-ne v12, v11, :cond_1e

    .line 662
    .line 663
    new-instance v12, Lp0/E;

    .line 664
    .line 665
    invoke-direct {v12, v4}, Lp0/E;-><init>(I)V

    .line 666
    .line 667
    .line 668
    iget-object v13, v12, Lp0/E;->a:[B

    .line 669
    .line 670
    invoke-interface {v1, v13, v3, v4}, LW0/t;->readFully([BII)V

    .line 671
    .line 672
    .line 673
    invoke-virtual {v12, v8}, Lp0/E;->M(I)V

    .line 674
    .line 675
    .line 676
    invoke-static {v12}, Landroidx/media3/extractor/metadata/flac/PictureFrame;->fromPictureBlock(Lp0/E;)Landroidx/media3/extractor/metadata/flac/PictureFrame;

    .line 677
    .line 678
    .line 679
    move-result-object v4

    .line 680
    invoke-static {v4}, Lz4/H;->x(Ljava/lang/Object;)Lz4/d0;

    .line 681
    .line 682
    .line 683
    move-result-object v4

    .line 684
    invoke-virtual {v2, v4}, Landroidx/media3/extractor/FlacStreamMetadata;->copyWithPictureFrames(Ljava/util/List;)Landroidx/media3/extractor/FlacStreamMetadata;

    .line 685
    .line 686
    .line 687
    move-result-object v2

    .line 688
    goto :goto_11

    .line 689
    :cond_1e
    invoke-interface {v1, v4}, LW0/t;->n(I)V

    .line 690
    .line 691
    .line 692
    :goto_11
    sget-object v4, Lp0/M;->a:Ljava/lang/String;

    .line 693
    .line 694
    iput-object v2, v0, Lb1/b;->i:Landroidx/media3/extractor/FlacStreamMetadata;

    .line 695
    .line 696
    if-nez v5, :cond_1f

    .line 697
    .line 698
    goto/16 :goto_10

    .line 699
    .line 700
    :cond_1f
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 701
    .line 702
    .line 703
    iget-object v1, v0, Lb1/b;->i:Landroidx/media3/extractor/FlacStreamMetadata;

    .line 704
    .line 705
    iget v1, v1, Landroidx/media3/extractor/FlacStreamMetadata;->minFrameSize:I

    .line 706
    .line 707
    invoke-static {v1, v11}, Ljava/lang/Math;->max(II)I

    .line 708
    .line 709
    .line 710
    move-result v1

    .line 711
    iput v1, v0, Lb1/b;->j:I

    .line 712
    .line 713
    iget-object v1, v0, Lb1/b;->i:Landroidx/media3/extractor/FlacStreamMetadata;

    .line 714
    .line 715
    iget-object v2, v0, Lb1/b;->h:Lm0/N;

    .line 716
    .line 717
    invoke-virtual {v1, v6, v2}, Landroidx/media3/extractor/FlacStreamMetadata;->getFormat([BLm0/N;)Lm0/t;

    .line 718
    .line 719
    .line 720
    move-result-object v1

    .line 721
    iget-object v2, v0, Lb1/b;->f:LW0/L;

    .line 722
    .line 723
    invoke-virtual {v1}, Lm0/t;->a()Lm0/s;

    .line 724
    .line 725
    .line 726
    move-result-object v1

    .line 727
    const-string v4, "audio/flac"

    .line 728
    .line 729
    invoke-static {v4}, Lm0/O;->p(Ljava/lang/String;)Ljava/lang/String;

    .line 730
    .line 731
    .line 732
    move-result-object v4

    .line 733
    iput-object v4, v1, Lm0/s;->m:Ljava/lang/String;

    .line 734
    .line 735
    new-instance v4, Lm0/t;

    .line 736
    .line 737
    invoke-direct {v4, v1}, Lm0/t;-><init>(Lm0/s;)V

    .line 738
    .line 739
    .line 740
    invoke-interface {v2, v4}, LW0/L;->b(Lm0/t;)V

    .line 741
    .line 742
    .line 743
    iget-object v1, v0, Lb1/b;->f:LW0/L;

    .line 744
    .line 745
    iget-object v2, v0, Lb1/b;->i:Landroidx/media3/extractor/FlacStreamMetadata;

    .line 746
    .line 747
    invoke-virtual {v2}, Landroidx/media3/extractor/FlacStreamMetadata;->getDurationUs()J

    .line 748
    .line 749
    .line 750
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 751
    .line 752
    .line 753
    iput v8, v0, Lb1/b;->g:I

    .line 754
    .line 755
    return v3

    .line 756
    :cond_20
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 757
    .line 758
    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 759
    .line 760
    .line 761
    throw v1

    .line 762
    :cond_21
    new-instance v2, Lp0/E;

    .line 763
    .line 764
    invoke-direct {v2, v8}, Lp0/E;-><init>(I)V

    .line 765
    .line 766
    .line 767
    iget-object v4, v2, Lp0/E;->a:[B

    .line 768
    .line 769
    invoke-interface {v1, v4, v3, v8}, LW0/t;->readFully([BII)V

    .line 770
    .line 771
    .line 772
    invoke-virtual {v2}, Lp0/E;->B()J

    .line 773
    .line 774
    .line 775
    move-result-wide v1

    .line 776
    const-wide/32 v4, 0x664c6143

    .line 777
    .line 778
    .line 779
    cmp-long v6, v1, v4

    .line 780
    .line 781
    if-nez v6, :cond_22

    .line 782
    .line 783
    iput v9, v0, Lb1/b;->g:I

    .line 784
    .line 785
    return v3

    .line 786
    :cond_22
    const-string v1, "Failed to read FLAC stream marker."

    .line 787
    .line 788
    invoke-static {v1, v7}, Lm0/P;->a(Ljava/lang/String;Ljava/lang/RuntimeException;)Lm0/P;

    .line 789
    .line 790
    .line 791
    move-result-object v1

    .line 792
    throw v1

    .line 793
    :cond_23
    array-length v2, v6

    .line 794
    invoke-interface {v1, v3, v6, v2}, LW0/t;->c(I[BI)V

    .line 795
    .line 796
    .line 797
    invoke-interface/range {p1 .. p1}, LW0/t;->m()V

    .line 798
    .line 799
    .line 800
    iput v5, v0, Lb1/b;->g:I

    .line 801
    .line 802
    return v3

    .line 803
    :cond_24
    iget-boolean v2, v0, Lb1/b;->c:Z

    .line 804
    .line 805
    xor-int/2addr v2, v4

    .line 806
    invoke-interface/range {p1 .. p1}, LW0/t;->m()V

    .line 807
    .line 808
    .line 809
    invoke-interface/range {p1 .. p1}, LW0/t;->f()J

    .line 810
    .line 811
    .line 812
    move-result-wide v5

    .line 813
    invoke-static {v1, v2}, LZ3/C;->g(LW0/t;Z)Lm0/N;

    .line 814
    .line 815
    .line 816
    move-result-object v2

    .line 817
    invoke-interface/range {p1 .. p1}, LW0/t;->f()J

    .line 818
    .line 819
    .line 820
    move-result-wide v7

    .line 821
    sub-long/2addr v7, v5

    .line 822
    long-to-int v5, v7

    .line 823
    invoke-interface {v1, v5}, LW0/t;->n(I)V

    .line 824
    .line 825
    .line 826
    iput-object v2, v0, Lb1/b;->h:Lm0/N;

    .line 827
    .line 828
    iput v4, v0, Lb1/b;->g:I

    .line 829
    .line 830
    return v3
.end method

.method public final i(JJ)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const-wide/16 v1, 0x0

    .line 3
    .line 4
    cmp-long v3, p1, v1

    .line 5
    .line 6
    if-nez v3, :cond_0

    .line 7
    .line 8
    iput v0, p0, Lb1/b;->g:I

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-object p1, p0, Lb1/b;->l:Lb1/a;

    .line 12
    .line 13
    if-eqz p1, :cond_1

    .line 14
    .line 15
    invoke-virtual {p1, p3, p4}, LW0/k;->d(J)V

    .line 16
    .line 17
    .line 18
    :cond_1
    :goto_0
    cmp-long p1, p3, v1

    .line 19
    .line 20
    if-nez p1, :cond_2

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_2
    const-wide/16 v1, -0x1

    .line 24
    .line 25
    :goto_1
    iput-wide v1, p0, Lb1/b;->n:J

    .line 26
    .line 27
    iput v0, p0, Lb1/b;->m:I

    .line 28
    .line 29
    iget-object p1, p0, Lb1/b;->b:Lp0/E;

    .line 30
    .line 31
    invoke-virtual {p1, v0}, Lp0/E;->I(I)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public final j()Ljava/util/List;
    .locals 1

    .line 1
    sget-object v0, Lz4/H;->H:Lz4/F;

    .line 2
    .line 3
    sget-object v0, Lz4/d0;->K:Lz4/d0;

    .line 4
    .line 5
    return-object v0
.end method

.method public final release()V
    .locals 0

    .line 1
    return-void
.end method
