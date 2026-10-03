.class public final LV0/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LU0/B;
.implements LV0/a;


# instance fields
.field public final G:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final H:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final I:LV0/g;

.field public final J:LB0/c;

.field public final K:Lc/g;

.field public final L:Lc/g;

.field public final M:[F

.field public final N:[F

.field public O:I

.field public P:Landroid/graphics/SurfaceTexture;

.field public volatile Q:I

.field public R:I

.field public S:[B


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, LV0/i;->G:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 10
    .line 11
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, LV0/i;->H:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 18
    .line 19
    new-instance v0, LV0/g;

    .line 20
    .line 21
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, LV0/i;->I:LV0/g;

    .line 25
    .line 26
    new-instance v0, LB0/c;

    .line 27
    .line 28
    invoke-direct {v0}, LB0/c;-><init>()V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, LV0/i;->J:LB0/c;

    .line 32
    .line 33
    new-instance v0, Lc/g;

    .line 34
    .line 35
    invoke-direct {v0}, Lc/g;-><init>()V

    .line 36
    .line 37
    .line 38
    iput-object v0, p0, LV0/i;->K:Lc/g;

    .line 39
    .line 40
    new-instance v0, Lc/g;

    .line 41
    .line 42
    invoke-direct {v0}, Lc/g;-><init>()V

    .line 43
    .line 44
    .line 45
    iput-object v0, p0, LV0/i;->L:Lc/g;

    .line 46
    .line 47
    const/16 v0, 0x10

    .line 48
    .line 49
    new-array v1, v0, [F

    .line 50
    .line 51
    iput-object v1, p0, LV0/i;->M:[F

    .line 52
    .line 53
    new-array v0, v0, [F

    .line 54
    .line 55
    iput-object v0, p0, LV0/i;->N:[F

    .line 56
    .line 57
    const/4 v0, 0x0

    .line 58
    iput v0, p0, LV0/i;->Q:I

    .line 59
    .line 60
    const/4 v0, -0x1

    .line 61
    iput v0, p0, LV0/i;->R:I

    .line 62
    .line 63
    return-void
.end method


# virtual methods
.method public final a(J[F)V
    .locals 1

    .line 1
    iget-object v0, p0, LV0/i;->J:LB0/c;

    .line 2
    .line 3
    iget-object v0, v0, LB0/c;->J:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Lc/g;

    .line 6
    .line 7
    invoke-virtual {v0, p3, p1, p2}, Lc/g;->b(Ljava/lang/Object;J)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final b(JJLm0/t;Landroid/media/MediaFormat;)V
    .locals 31

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-wide/from16 v1, p3

    .line 4
    .line 5
    move-object/from16 v3, p5

    .line 6
    .line 7
    const/4 v5, 0x4

    .line 8
    const/4 v6, 0x0

    .line 9
    const/4 v7, 0x2

    .line 10
    const/4 v8, 0x1

    .line 11
    iget-object v9, v0, LV0/i;->K:Lc/g;

    .line 12
    .line 13
    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 14
    .line 15
    .line 16
    move-result-object v10

    .line 17
    invoke-virtual {v9, v10, v1, v2}, Lc/g;->b(Ljava/lang/Object;J)V

    .line 18
    .line 19
    .line 20
    iget-object v9, v3, Lm0/t;->C:[B

    .line 21
    .line 22
    iget v3, v3, Lm0/t;->D:I

    .line 23
    .line 24
    iget-object v10, v0, LV0/i;->S:[B

    .line 25
    .line 26
    iget v11, v0, LV0/i;->R:I

    .line 27
    .line 28
    iput-object v9, v0, LV0/i;->S:[B

    .line 29
    .line 30
    const/4 v9, -0x1

    .line 31
    if-ne v3, v9, :cond_0

    .line 32
    .line 33
    iget v3, v0, LV0/i;->Q:I

    .line 34
    .line 35
    :cond_0
    iput v3, v0, LV0/i;->R:I

    .line 36
    .line 37
    if-ne v11, v3, :cond_1

    .line 38
    .line 39
    iget-object v3, v0, LV0/i;->S:[B

    .line 40
    .line 41
    invoke-static {v10, v3}, Ljava/util/Arrays;->equals([B[B)Z

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    if-eqz v3, :cond_1

    .line 46
    .line 47
    goto/16 :goto_d

    .line 48
    .line 49
    :cond_1
    iget-object v3, v0, LV0/i;->S:[B

    .line 50
    .line 51
    const/4 v9, 0x0

    .line 52
    if-eqz v3, :cond_a

    .line 53
    .line 54
    iget v10, v0, LV0/i;->R:I

    .line 55
    .line 56
    new-instance v11, Lp0/E;

    .line 57
    .line 58
    invoke-direct {v11, v3}, Lp0/E;-><init>([B)V

    .line 59
    .line 60
    .line 61
    :try_start_0
    invoke-virtual {v11, v5}, Lp0/E;->M(I)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v11}, Lp0/E;->l()I

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    invoke-virtual {v11, v6}, Lp0/E;->L(I)V

    .line 69
    .line 70
    .line 71
    const v12, 0x70726f6a

    .line 72
    .line 73
    .line 74
    if-ne v3, v12, :cond_5

    .line 75
    .line 76
    const/16 v3, 0x8

    .line 77
    .line 78
    invoke-virtual {v11, v3}, Lp0/E;->M(I)V

    .line 79
    .line 80
    .line 81
    iget v3, v11, Lp0/E;->b:I

    .line 82
    .line 83
    iget v12, v11, Lp0/E;->c:I

    .line 84
    .line 85
    :goto_0
    if-ge v3, v12, :cond_6

    .line 86
    .line 87
    invoke-virtual {v11}, Lp0/E;->l()I

    .line 88
    .line 89
    .line 90
    move-result v13

    .line 91
    add-int/2addr v13, v3

    .line 92
    if-le v13, v3, :cond_6

    .line 93
    .line 94
    if-le v13, v12, :cond_2

    .line 95
    .line 96
    goto :goto_2

    .line 97
    :cond_2
    invoke-virtual {v11}, Lp0/E;->l()I

    .line 98
    .line 99
    .line 100
    move-result v3

    .line 101
    const v14, 0x79746d70

    .line 102
    .line 103
    .line 104
    if-eq v3, v14, :cond_4

    .line 105
    .line 106
    const v14, 0x6d736870

    .line 107
    .line 108
    .line 109
    if-ne v3, v14, :cond_3

    .line 110
    .line 111
    goto :goto_1

    .line 112
    :cond_3
    invoke-virtual {v11, v13}, Lp0/E;->L(I)V

    .line 113
    .line 114
    .line 115
    move v3, v13

    .line 116
    goto :goto_0

    .line 117
    :cond_4
    :goto_1
    invoke-virtual {v11, v13}, Lp0/E;->K(I)V

    .line 118
    .line 119
    .line 120
    invoke-static {v11}, LE3/f;->v(Lp0/E;)Ljava/util/ArrayList;

    .line 121
    .line 122
    .line 123
    move-result-object v3

    .line 124
    goto :goto_3

    .line 125
    :cond_5
    invoke-static {v11}, LE3/f;->v(Lp0/E;)Ljava/util/ArrayList;

    .line 126
    .line 127
    .line 128
    move-result-object v3
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    goto :goto_3

    .line 130
    :catch_0
    nop

    .line 131
    :cond_6
    :goto_2
    move-object v3, v9

    .line 132
    :goto_3
    if-nez v3, :cond_7

    .line 133
    .line 134
    goto :goto_4

    .line 135
    :cond_7
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 136
    .line 137
    .line 138
    move-result v11

    .line 139
    if-eq v11, v8, :cond_9

    .line 140
    .line 141
    if-eq v11, v7, :cond_8

    .line 142
    .line 143
    goto :goto_4

    .line 144
    :cond_8
    new-instance v9, LV0/f;

    .line 145
    .line 146
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object v11

    .line 150
    check-cast v11, LV0/e;

    .line 151
    .line 152
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object v3

    .line 156
    check-cast v3, LV0/e;

    .line 157
    .line 158
    invoke-direct {v9, v11, v3, v10}, LV0/f;-><init>(LV0/e;LV0/e;I)V

    .line 159
    .line 160
    .line 161
    goto :goto_4

    .line 162
    :cond_9
    new-instance v9, LV0/f;

    .line 163
    .line 164
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object v3

    .line 168
    check-cast v3, LV0/e;

    .line 169
    .line 170
    invoke-direct {v9, v3, v3, v10}, LV0/f;-><init>(LV0/e;LV0/e;I)V

    .line 171
    .line 172
    .line 173
    :cond_a
    :goto_4
    if-eqz v9, :cond_b

    .line 174
    .line 175
    invoke-static {v9}, LV0/g;->b(LV0/f;)Z

    .line 176
    .line 177
    .line 178
    move-result v3

    .line 179
    if-eqz v3, :cond_b

    .line 180
    .line 181
    goto/16 :goto_c

    .line 182
    .line 183
    :cond_b
    iget v3, v0, LV0/i;->R:I

    .line 184
    .line 185
    const/high16 v9, 0x43340000    # 180.0f

    .line 186
    .line 187
    float-to-double v9, v9

    .line 188
    invoke-static {v9, v10}, Ljava/lang/Math;->toRadians(D)D

    .line 189
    .line 190
    .line 191
    move-result-wide v9

    .line 192
    double-to-float v9, v9

    .line 193
    const/high16 v10, 0x43b40000    # 360.0f

    .line 194
    .line 195
    float-to-double v10, v10

    .line 196
    invoke-static {v10, v11}, Ljava/lang/Math;->toRadians(D)D

    .line 197
    .line 198
    .line 199
    move-result-wide v10

    .line 200
    double-to-float v10, v10

    .line 201
    const/16 v11, 0x24

    .line 202
    .line 203
    int-to-float v12, v11

    .line 204
    div-float v12, v9, v12

    .line 205
    .line 206
    const/16 v13, 0x48

    .line 207
    .line 208
    int-to-float v14, v13

    .line 209
    div-float v14, v10, v14

    .line 210
    .line 211
    const/16 v15, 0x3e70

    .line 212
    .line 213
    new-array v15, v15, [F

    .line 214
    .line 215
    const/16 v6, 0x29a0

    .line 216
    .line 217
    new-array v6, v6, [F

    .line 218
    .line 219
    const/4 v5, 0x0

    .line 220
    const/16 v16, 0x0

    .line 221
    .line 222
    const/16 v17, 0x0

    .line 223
    .line 224
    :goto_5
    if-ge v5, v11, :cond_12

    .line 225
    .line 226
    int-to-float v11, v5

    .line 227
    mul-float v11, v11, v12

    .line 228
    .line 229
    const/high16 v18, 0x40000000    # 2.0f

    .line 230
    .line 231
    div-float v19, v9, v18

    .line 232
    .line 233
    sub-float v11, v11, v19

    .line 234
    .line 235
    add-int/lit8 v13, v5, 0x1

    .line 236
    .line 237
    int-to-float v4, v13

    .line 238
    mul-float v4, v4, v12

    .line 239
    .line 240
    sub-float v4, v4, v19

    .line 241
    .line 242
    const/4 v8, 0x0

    .line 243
    :goto_6
    const/16 v7, 0x49

    .line 244
    .line 245
    if-ge v8, v7, :cond_11

    .line 246
    .line 247
    move/from16 p5, v4

    .line 248
    .line 249
    move/from16 v20, v11

    .line 250
    .line 251
    move/from16 v21, v13

    .line 252
    .line 253
    move/from16 v7, v16

    .line 254
    .line 255
    move/from16 v4, v17

    .line 256
    .line 257
    const/4 v11, 0x0

    .line 258
    const/4 v13, 0x2

    .line 259
    :goto_7
    if-ge v11, v13, :cond_10

    .line 260
    .line 261
    if-nez v11, :cond_c

    .line 262
    .line 263
    move/from16 v13, v20

    .line 264
    .line 265
    goto :goto_8

    .line 266
    :cond_c
    move/from16 v13, p5

    .line 267
    .line 268
    :goto_8
    int-to-float v1, v8

    .line 269
    mul-float v1, v1, v14

    .line 270
    .line 271
    const v2, 0x40490fdb    # (float)Math.PI

    .line 272
    .line 273
    .line 274
    add-float/2addr v2, v1

    .line 275
    div-float v16, v10, v18

    .line 276
    .line 277
    sub-float v2, v2, v16

    .line 278
    .line 279
    const/16 v16, 0x1

    .line 280
    .line 281
    add-int/lit8 v17, v7, 0x1

    .line 282
    .line 283
    move/from16 v22, v14

    .line 284
    .line 285
    const/high16 v14, 0x42480000    # 50.0f

    .line 286
    .line 287
    move/from16 v24, v8

    .line 288
    .line 289
    move/from16 v23, v9

    .line 290
    .line 291
    float-to-double v8, v14

    .line 292
    move v14, v3

    .line 293
    float-to-double v2, v2

    .line 294
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    .line 295
    .line 296
    .line 297
    move-result-wide v25

    .line 298
    mul-double v25, v25, v8

    .line 299
    .line 300
    move/from16 v27, v14

    .line 301
    .line 302
    float-to-double v13, v13

    .line 303
    invoke-static {v13, v14}, Ljava/lang/Math;->cos(D)D

    .line 304
    .line 305
    .line 306
    move-result-wide v28

    .line 307
    move/from16 v16, v11

    .line 308
    .line 309
    move/from16 v30, v12

    .line 310
    .line 311
    mul-double v11, v28, v25

    .line 312
    .line 313
    double-to-float v11, v11

    .line 314
    neg-float v11, v11

    .line 315
    aput v11, v15, v7

    .line 316
    .line 317
    const/4 v11, 0x2

    .line 318
    add-int/lit8 v12, v7, 0x2

    .line 319
    .line 320
    invoke-static {v13, v14}, Ljava/lang/Math;->sin(D)D

    .line 321
    .line 322
    .line 323
    move-result-wide v25

    .line 324
    move/from16 v28, v5

    .line 325
    .line 326
    move-object v11, v6

    .line 327
    mul-double v5, v25, v8

    .line 328
    .line 329
    double-to-float v5, v5

    .line 330
    aput v5, v15, v17

    .line 331
    .line 332
    const/4 v5, 0x3

    .line 333
    add-int/lit8 v6, v7, 0x3

    .line 334
    .line 335
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    .line 336
    .line 337
    .line 338
    move-result-wide v2

    .line 339
    mul-double v2, v2, v8

    .line 340
    .line 341
    invoke-static {v13, v14}, Ljava/lang/Math;->cos(D)D

    .line 342
    .line 343
    .line 344
    move-result-wide v8

    .line 345
    mul-double v8, v8, v2

    .line 346
    .line 347
    double-to-float v2, v8

    .line 348
    aput v2, v15, v12

    .line 349
    .line 350
    const/4 v2, 0x1

    .line 351
    add-int/lit8 v8, v4, 0x1

    .line 352
    .line 353
    div-float/2addr v1, v10

    .line 354
    aput v1, v11, v4

    .line 355
    .line 356
    const/4 v1, 0x2

    .line 357
    add-int/lit8 v2, v4, 0x2

    .line 358
    .line 359
    add-int v5, v28, v16

    .line 360
    .line 361
    int-to-float v1, v5

    .line 362
    mul-float v1, v1, v30

    .line 363
    .line 364
    div-float v1, v1, v23

    .line 365
    .line 366
    aput v1, v11, v8

    .line 367
    .line 368
    if-nez v24, :cond_d

    .line 369
    .line 370
    if-eqz v16, :cond_e

    .line 371
    .line 372
    :cond_d
    move/from16 v3, v24

    .line 373
    .line 374
    const/16 v1, 0x48

    .line 375
    .line 376
    goto :goto_9

    .line 377
    :cond_e
    move/from16 v5, v16

    .line 378
    .line 379
    move/from16 v3, v24

    .line 380
    .line 381
    const/16 v1, 0x48

    .line 382
    .line 383
    const/4 v8, 0x1

    .line 384
    const/4 v9, 0x3

    .line 385
    goto :goto_a

    .line 386
    :goto_9
    move/from16 v5, v16

    .line 387
    .line 388
    const/4 v8, 0x1

    .line 389
    const/4 v9, 0x3

    .line 390
    if-ne v3, v1, :cond_f

    .line 391
    .line 392
    if-ne v5, v8, :cond_f

    .line 393
    .line 394
    :goto_a
    invoke-static {v15, v7, v15, v6, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 395
    .line 396
    .line 397
    add-int/lit8 v7, v7, 0x6

    .line 398
    .line 399
    const/4 v12, 0x2

    .line 400
    invoke-static {v11, v4, v11, v2, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 401
    .line 402
    .line 403
    const/4 v13, 0x4

    .line 404
    add-int/2addr v4, v13

    .line 405
    goto :goto_b

    .line 406
    :cond_f
    const/4 v12, 0x2

    .line 407
    const/4 v13, 0x4

    .line 408
    move v4, v2

    .line 409
    move v7, v6

    .line 410
    :goto_b
    add-int/lit8 v2, v5, 0x1

    .line 411
    .line 412
    move v8, v3

    .line 413
    move-object v6, v11

    .line 414
    move/from16 v14, v22

    .line 415
    .line 416
    move/from16 v9, v23

    .line 417
    .line 418
    move/from16 v3, v27

    .line 419
    .line 420
    move/from16 v5, v28

    .line 421
    .line 422
    move/from16 v12, v30

    .line 423
    .line 424
    const/4 v13, 0x2

    .line 425
    move v11, v2

    .line 426
    move-wide/from16 v1, p3

    .line 427
    .line 428
    goto/16 :goto_7

    .line 429
    .line 430
    :cond_10
    move/from16 v27, v3

    .line 431
    .line 432
    move/from16 v28, v5

    .line 433
    .line 434
    move-object v11, v6

    .line 435
    move v3, v8

    .line 436
    move/from16 v23, v9

    .line 437
    .line 438
    move/from16 v30, v12

    .line 439
    .line 440
    move/from16 v22, v14

    .line 441
    .line 442
    const/16 v1, 0x48

    .line 443
    .line 444
    const/4 v8, 0x1

    .line 445
    const/4 v9, 0x3

    .line 446
    const/4 v12, 0x2

    .line 447
    const/4 v13, 0x4

    .line 448
    add-int/lit8 v2, v3, 0x1

    .line 449
    .line 450
    move v8, v2

    .line 451
    move/from16 v17, v4

    .line 452
    .line 453
    move/from16 v16, v7

    .line 454
    .line 455
    move/from16 v11, v20

    .line 456
    .line 457
    move/from16 v13, v21

    .line 458
    .line 459
    move/from16 v9, v23

    .line 460
    .line 461
    move/from16 v3, v27

    .line 462
    .line 463
    move/from16 v12, v30

    .line 464
    .line 465
    move-wide/from16 v1, p3

    .line 466
    .line 467
    move/from16 v4, p5

    .line 468
    .line 469
    goto/16 :goto_6

    .line 470
    .line 471
    :cond_11
    move/from16 v21, v13

    .line 472
    .line 473
    move-wide/from16 v1, p3

    .line 474
    .line 475
    move/from16 v5, v21

    .line 476
    .line 477
    const/4 v7, 0x2

    .line 478
    const/4 v8, 0x1

    .line 479
    const/16 v11, 0x24

    .line 480
    .line 481
    const/16 v13, 0x48

    .line 482
    .line 483
    goto/16 :goto_5

    .line 484
    .line 485
    :cond_12
    move/from16 v27, v3

    .line 486
    .line 487
    move-object v11, v6

    .line 488
    new-instance v1, Lc/g;

    .line 489
    .line 490
    const/4 v2, 0x0

    .line 491
    invoke-direct {v1, v2, v15, v11, v8}, Lc/g;-><init>(I[F[FI)V

    .line 492
    .line 493
    .line 494
    new-instance v9, LV0/f;

    .line 495
    .line 496
    new-instance v3, LV0/e;

    .line 497
    .line 498
    new-array v4, v8, [Lc/g;

    .line 499
    .line 500
    aput-object v1, v4, v2

    .line 501
    .line 502
    invoke-direct {v3, v4}, LV0/e;-><init>([Lc/g;)V

    .line 503
    .line 504
    .line 505
    move/from16 v1, v27

    .line 506
    .line 507
    invoke-direct {v9, v3, v3, v1}, LV0/f;-><init>(LV0/e;LV0/e;I)V

    .line 508
    .line 509
    .line 510
    :goto_c
    iget-object v1, v0, LV0/i;->L:Lc/g;

    .line 511
    .line 512
    move-wide/from16 v2, p3

    .line 513
    .line 514
    invoke-virtual {v1, v9, v2, v3}, Lc/g;->b(Ljava/lang/Object;J)V

    .line 515
    .line 516
    .line 517
    :goto_d
    return-void
.end method

.method public final c()V
    .locals 2

    .line 1
    iget-object v0, p0, LV0/i;->K:Lc/g;

    .line 2
    .line 3
    invoke-virtual {v0}, Lc/g;->f()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, LV0/i;->J:LB0/c;

    .line 7
    .line 8
    iget-object v1, v0, LB0/c;->J:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v1, Lc/g;

    .line 11
    .line 12
    invoke-virtual {v1}, Lc/g;->f()V

    .line 13
    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    iput-boolean v1, v0, LB0/c;->G:Z

    .line 17
    .line 18
    iget-object v0, p0, LV0/i;->H:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 19
    .line 20
    const/4 v1, 0x1

    .line 21
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final d([F)V
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const/16 v0, 0x4000

    .line 4
    .line 5
    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 6
    .line 7
    .line 8
    :try_start_0
    invoke-static {}, Lp0/b;->e()V
    :try_end_0
    .catch Lp0/p; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :catch_0
    move-exception v0

    .line 13
    move-object v2, v0

    .line 14
    const-string v0, "SceneRenderer"

    .line 15
    .line 16
    const-string v3, "Failed to draw a frame"

    .line 17
    .line 18
    invoke-static {v0, v3, v2}, Lp0/x;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 19
    .line 20
    .line 21
    :goto_0
    iget-object v0, v1, LV0/i;->G:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 22
    .line 23
    const/4 v2, 0x1

    .line 24
    const/4 v3, 0x0

    .line 25
    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    const/4 v4, 0x2

    .line 30
    if-eqz v0, :cond_7

    .line 31
    .line 32
    iget-object v0, v1, LV0/i;->P:Landroid/graphics/SurfaceTexture;

    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 38
    .line 39
    .line 40
    :try_start_1
    invoke-static {}, Lp0/b;->e()V
    :try_end_1
    .catch Lp0/p; {:try_start_1 .. :try_end_1} :catch_1

    .line 41
    .line 42
    .line 43
    goto :goto_1

    .line 44
    :catch_1
    move-exception v0

    .line 45
    move-object v5, v0

    .line 46
    const-string v0, "SceneRenderer"

    .line 47
    .line 48
    const-string v6, "Failed to draw a frame"

    .line 49
    .line 50
    invoke-static {v0, v6, v5}, Lp0/x;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 51
    .line 52
    .line 53
    :goto_1
    iget-object v0, v1, LV0/i;->H:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 54
    .line 55
    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-eqz v0, :cond_0

    .line 60
    .line 61
    iget-object v0, v1, LV0/i;->M:[F

    .line 62
    .line 63
    invoke-static {v0, v3}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 64
    .line 65
    .line 66
    :cond_0
    iget-object v0, v1, LV0/i;->P:Landroid/graphics/SurfaceTexture;

    .line 67
    .line 68
    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->getTimestamp()J

    .line 69
    .line 70
    .line 71
    move-result-wide v5

    .line 72
    iget-object v7, v1, LV0/i;->K:Lc/g;

    .line 73
    .line 74
    monitor-enter v7

    .line 75
    :try_start_2
    invoke-virtual {v7, v5, v6, v3}, Lc/g;->i(JZ)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 79
    monitor-exit v7

    .line 80
    check-cast v0, Ljava/lang/Long;

    .line 81
    .line 82
    if-eqz v0, :cond_4

    .line 83
    .line 84
    iget-object v7, v1, LV0/i;->J:LB0/c;

    .line 85
    .line 86
    iget-object v8, v1, LV0/i;->M:[F

    .line 87
    .line 88
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 89
    .line 90
    .line 91
    move-result-wide v9

    .line 92
    iget-object v0, v7, LB0/c;->J:Ljava/lang/Object;

    .line 93
    .line 94
    check-cast v0, Lc/g;

    .line 95
    .line 96
    invoke-virtual {v0, v9, v10}, Lc/g;->k(J)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    check-cast v0, [F

    .line 101
    .line 102
    if-nez v0, :cond_1

    .line 103
    .line 104
    goto :goto_3

    .line 105
    :cond_1
    iget-object v9, v7, LB0/c;->I:Ljava/lang/Object;

    .line 106
    .line 107
    move-object v10, v9

    .line 108
    check-cast v10, [F

    .line 109
    .line 110
    aget v9, v0, v3

    .line 111
    .line 112
    aget v11, v0, v2

    .line 113
    .line 114
    neg-float v11, v11

    .line 115
    aget v0, v0, v4

    .line 116
    .line 117
    neg-float v0, v0

    .line 118
    invoke-static {v9, v11, v0}, Landroid/opengl/Matrix;->length(FFF)F

    .line 119
    .line 120
    .line 121
    move-result v12

    .line 122
    const/4 v13, 0x0

    .line 123
    cmpl-float v13, v12, v13

    .line 124
    .line 125
    if-eqz v13, :cond_2

    .line 126
    .line 127
    float-to-double v13, v12

    .line 128
    invoke-static {v13, v14}, Ljava/lang/Math;->toDegrees(D)D

    .line 129
    .line 130
    .line 131
    move-result-wide v13

    .line 132
    double-to-float v13, v13

    .line 133
    div-float/2addr v9, v12

    .line 134
    div-float v14, v11, v12

    .line 135
    .line 136
    div-float v15, v0, v12

    .line 137
    .line 138
    const/4 v11, 0x0

    .line 139
    move v12, v13

    .line 140
    move v13, v9

    .line 141
    invoke-static/range {v10 .. v15}, Landroid/opengl/Matrix;->setRotateM([FIFFFF)V

    .line 142
    .line 143
    .line 144
    goto :goto_2

    .line 145
    :cond_2
    invoke-static {v10, v3}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 146
    .line 147
    .line 148
    :goto_2
    iget-boolean v0, v7, LB0/c;->G:Z

    .line 149
    .line 150
    iget-object v9, v7, LB0/c;->H:Ljava/lang/Object;

    .line 151
    .line 152
    if-nez v0, :cond_3

    .line 153
    .line 154
    move-object v0, v9

    .line 155
    check-cast v0, [F

    .line 156
    .line 157
    iget-object v10, v7, LB0/c;->I:Ljava/lang/Object;

    .line 158
    .line 159
    check-cast v10, [F

    .line 160
    .line 161
    invoke-static {v0, v10}, LB0/c;->d([F[F)V

    .line 162
    .line 163
    .line 164
    iput-boolean v2, v7, LB0/c;->G:Z

    .line 165
    .line 166
    :cond_3
    move-object v10, v9

    .line 167
    check-cast v10, [F

    .line 168
    .line 169
    iget-object v0, v7, LB0/c;->I:Ljava/lang/Object;

    .line 170
    .line 171
    move-object v12, v0

    .line 172
    check-cast v12, [F

    .line 173
    .line 174
    const/4 v11, 0x0

    .line 175
    const/4 v13, 0x0

    .line 176
    const/4 v9, 0x0

    .line 177
    invoke-static/range {v8 .. v13}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 178
    .line 179
    .line 180
    :cond_4
    :goto_3
    iget-object v0, v1, LV0/i;->L:Lc/g;

    .line 181
    .line 182
    invoke-virtual {v0, v5, v6}, Lc/g;->k(J)Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    move-result-object v0

    .line 186
    check-cast v0, LV0/f;

    .line 187
    .line 188
    if-eqz v0, :cond_7

    .line 189
    .line 190
    iget-object v5, v1, LV0/i;->I:LV0/g;

    .line 191
    .line 192
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 193
    .line 194
    .line 195
    invoke-static {v0}, LV0/g;->b(LV0/f;)Z

    .line 196
    .line 197
    .line 198
    move-result v6

    .line 199
    if-nez v6, :cond_5

    .line 200
    .line 201
    goto :goto_5

    .line 202
    :cond_5
    iget v6, v0, LV0/f;->c:I

    .line 203
    .line 204
    iput v6, v5, LV0/g;->a:I

    .line 205
    .line 206
    new-instance v6, Lc/g;

    .line 207
    .line 208
    iget-object v7, v0, LV0/f;->a:LV0/e;

    .line 209
    .line 210
    iget-object v7, v7, LV0/e;->a:[Lc/g;

    .line 211
    .line 212
    aget-object v7, v7, v3

    .line 213
    .line 214
    invoke-direct {v6, v7}, Lc/g;-><init>(Lc/g;)V

    .line 215
    .line 216
    .line 217
    iput-object v6, v5, LV0/g;->b:Lc/g;

    .line 218
    .line 219
    iget-boolean v6, v0, LV0/f;->d:Z

    .line 220
    .line 221
    if-eqz v6, :cond_6

    .line 222
    .line 223
    goto :goto_4

    .line 224
    :cond_6
    new-instance v6, Lc/g;

    .line 225
    .line 226
    iget-object v0, v0, LV0/f;->b:LV0/e;

    .line 227
    .line 228
    iget-object v0, v0, LV0/e;->a:[Lc/g;

    .line 229
    .line 230
    aget-object v0, v0, v3

    .line 231
    .line 232
    invoke-direct {v6, v0}, Lc/g;-><init>(Lc/g;)V

    .line 233
    .line 234
    .line 235
    :goto_4
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 236
    .line 237
    .line 238
    goto :goto_5

    .line 239
    :catchall_0
    move-exception v0

    .line 240
    move-object v2, v0

    .line 241
    monitor-exit v7

    .line 242
    throw v2

    .line 243
    :cond_7
    :goto_5
    iget-object v8, v1, LV0/i;->N:[F

    .line 244
    .line 245
    iget-object v12, v1, LV0/i;->M:[F

    .line 246
    .line 247
    const/4 v9, 0x0

    .line 248
    const/4 v11, 0x0

    .line 249
    const/4 v13, 0x0

    .line 250
    move-object/from16 v10, p1

    .line 251
    .line 252
    invoke-static/range {v8 .. v13}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 253
    .line 254
    .line 255
    iget-object v5, v1, LV0/i;->I:LV0/g;

    .line 256
    .line 257
    iget v0, v1, LV0/i;->O:I

    .line 258
    .line 259
    iget-object v6, v1, LV0/i;->N:[F

    .line 260
    .line 261
    const-string v7, "ProjectionRenderer"

    .line 262
    .line 263
    iget-object v8, v5, LV0/g;->b:Lc/g;

    .line 264
    .line 265
    if-nez v8, :cond_8

    .line 266
    .line 267
    goto/16 :goto_a

    .line 268
    .line 269
    :cond_8
    iget v9, v5, LV0/g;->a:I

    .line 270
    .line 271
    if-ne v9, v2, :cond_9

    .line 272
    .line 273
    sget-object v4, LV0/g;->j:[F

    .line 274
    .line 275
    goto :goto_6

    .line 276
    :cond_9
    if-ne v9, v4, :cond_a

    .line 277
    .line 278
    sget-object v4, LV0/g;->k:[F

    .line 279
    .line 280
    goto :goto_6

    .line 281
    :cond_a
    sget-object v4, LV0/g;->i:[F

    .line 282
    .line 283
    :goto_6
    iget v9, v5, LV0/g;->e:I

    .line 284
    .line 285
    invoke-static {v9, v2, v3, v4, v3}, Landroid/opengl/GLES20;->glUniformMatrix3fv(IIZ[FI)V

    .line 286
    .line 287
    .line 288
    iget v4, v5, LV0/g;->d:I

    .line 289
    .line 290
    invoke-static {v4, v2, v3, v6, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 291
    .line 292
    .line 293
    const v2, 0x84c0

    .line 294
    .line 295
    .line 296
    invoke-static {v2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 297
    .line 298
    .line 299
    const v2, 0x8d65

    .line 300
    .line 301
    .line 302
    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 303
    .line 304
    .line 305
    iget v0, v5, LV0/g;->h:I

    .line 306
    .line 307
    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 308
    .line 309
    .line 310
    :try_start_3
    invoke-static {}, Lp0/b;->e()V
    :try_end_3
    .catch Lp0/p; {:try_start_3 .. :try_end_3} :catch_2

    .line 311
    .line 312
    .line 313
    goto :goto_7

    .line 314
    :catch_2
    move-exception v0

    .line 315
    move-object v2, v0

    .line 316
    const-string v0, "Failed to bind uniforms"

    .line 317
    .line 318
    invoke-static {v7, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 319
    .line 320
    .line 321
    :goto_7
    iget v9, v5, LV0/g;->f:I

    .line 322
    .line 323
    iget-object v0, v8, Lc/g;->J:Ljava/lang/Object;

    .line 324
    .line 325
    move-object v14, v0

    .line 326
    check-cast v14, Ljava/nio/FloatBuffer;

    .line 327
    .line 328
    const/4 v10, 0x3

    .line 329
    const/16 v11, 0x1406

    .line 330
    .line 331
    const/4 v12, 0x0

    .line 332
    const/16 v13, 0xc

    .line 333
    .line 334
    invoke-static/range {v9 .. v14}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 335
    .line 336
    .line 337
    :try_start_4
    invoke-static {}, Lp0/b;->e()V
    :try_end_4
    .catch Lp0/p; {:try_start_4 .. :try_end_4} :catch_3

    .line 338
    .line 339
    .line 340
    goto :goto_8

    .line 341
    :catch_3
    move-exception v0

    .line 342
    move-object v2, v0

    .line 343
    const-string v0, "Failed to load position data"

    .line 344
    .line 345
    invoke-static {v7, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 346
    .line 347
    .line 348
    :goto_8
    iget v9, v5, LV0/g;->g:I

    .line 349
    .line 350
    iget-object v0, v8, Lc/g;->K:Ljava/lang/Object;

    .line 351
    .line 352
    move-object v14, v0

    .line 353
    check-cast v14, Ljava/nio/FloatBuffer;

    .line 354
    .line 355
    const/4 v10, 0x2

    .line 356
    const/16 v11, 0x1406

    .line 357
    .line 358
    const/4 v12, 0x0

    .line 359
    const/16 v13, 0x8

    .line 360
    .line 361
    invoke-static/range {v9 .. v14}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 362
    .line 363
    .line 364
    :try_start_5
    invoke-static {}, Lp0/b;->e()V
    :try_end_5
    .catch Lp0/p; {:try_start_5 .. :try_end_5} :catch_4

    .line 365
    .line 366
    .line 367
    goto :goto_9

    .line 368
    :catch_4
    move-exception v0

    .line 369
    move-object v2, v0

    .line 370
    const-string v0, "Failed to load texture data"

    .line 371
    .line 372
    invoke-static {v7, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 373
    .line 374
    .line 375
    :goto_9
    iget v0, v8, Lc/g;->I:I

    .line 376
    .line 377
    iget v2, v8, Lc/g;->H:I

    .line 378
    .line 379
    invoke-static {v0, v3, v2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 380
    .line 381
    .line 382
    :try_start_6
    invoke-static {}, Lp0/b;->e()V
    :try_end_6
    .catch Lp0/p; {:try_start_6 .. :try_end_6} :catch_5

    .line 383
    .line 384
    .line 385
    goto :goto_a

    .line 386
    :catch_5
    move-exception v0

    .line 387
    move-object v2, v0

    .line 388
    const-string v0, "Failed to render"

    .line 389
    .line 390
    invoke-static {v7, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 391
    .line 392
    .line 393
    :goto_a
    return-void
.end method

.method public final e()Landroid/graphics/SurfaceTexture;
    .locals 3

    .line 1
    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    .line 3
    const/high16 v1, 0x3f000000    # 0.5f

    .line 4
    .line 5
    :try_start_0
    invoke-static {v1, v1, v1, v0}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lp0/b;->e()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, LV0/i;->I:LV0/g;

    .line 12
    .line 13
    invoke-virtual {v0}, LV0/g;->a()V

    .line 14
    .line 15
    .line 16
    invoke-static {}, Lp0/b;->e()V

    .line 17
    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    new-array v1, v0, [I

    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 24
    .line 25
    .line 26
    invoke-static {}, Lp0/b;->e()V

    .line 27
    .line 28
    .line 29
    aget v0, v1, v2

    .line 30
    .line 31
    const v1, 0x8d65

    .line 32
    .line 33
    .line 34
    const/16 v2, 0x2601

    .line 35
    .line 36
    invoke-static {v1, v0, v2}, Lp0/b;->c(III)V

    .line 37
    .line 38
    .line 39
    iput v0, p0, LV0/i;->O:I
    :try_end_0
    .catch Lp0/p; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :catch_0
    move-exception v0

    .line 43
    const-string v1, "SceneRenderer"

    .line 44
    .line 45
    const-string v2, "Failed to initialize the renderer"

    .line 46
    .line 47
    invoke-static {v1, v2, v0}, Lp0/x;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 48
    .line 49
    .line 50
    :goto_0
    new-instance v0, Landroid/graphics/SurfaceTexture;

    .line 51
    .line 52
    iget v1, p0, LV0/i;->O:I

    .line 53
    .line 54
    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    .line 55
    .line 56
    .line 57
    iput-object v0, p0, LV0/i;->P:Landroid/graphics/SurfaceTexture;

    .line 58
    .line 59
    new-instance v1, LV0/h;

    .line 60
    .line 61
    invoke-direct {v1, p0}, LV0/h;-><init>(LV0/i;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 65
    .line 66
    .line 67
    iget-object v0, p0, LV0/i;->P:Landroid/graphics/SurfaceTexture;

    .line 68
    .line 69
    return-object v0
.end method
