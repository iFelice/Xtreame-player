.class public final LK5/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq5/k;


# static fields
.field public static final b:[Lq5/o;


# instance fields
.field public final a:Lz5/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Lq5/o;

    .line 3
    .line 4
    sput-object v0, LK5/a;->b:[Lq5/o;

    .line 5
    .line 6
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lz5/c;

    .line 5
    .line 6
    const/4 v1, 0x2

    .line 7
    invoke-direct {v0, v1}, Lz5/c;-><init>(I)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, LK5/a;->a:Lz5/c;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .line 1
    return-void
.end method

.method public final b(Lm2/l;)Lq5/m;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, LK5/a;->c(Lm2/l;Ljava/util/Map;)Lq5/m;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    return-object p1
.end method

.method public final c(Lm2/l;Ljava/util/Map;)Lq5/m;
    .locals 40

    .line 1
    move-object/from16 v0, p2

    .line 2
    .line 3
    move-object/from16 v3, p0

    .line 4
    .line 5
    iget-object v4, v3, LK5/a;->a:Lz5/c;

    .line 6
    .line 7
    const/4 v6, 0x5

    .line 8
    const/4 v7, 0x0

    .line 9
    const/4 v9, 0x1

    .line 10
    if-eqz v0, :cond_10

    .line 11
    .line 12
    sget-object v10, Lq5/c;->H:Lq5/c;

    .line 13
    .line 14
    invoke-interface {v0, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v10

    .line 18
    if-eqz v10, :cond_10

    .line 19
    .line 20
    invoke-virtual/range {p1 .. p1}, Lm2/l;->i()Lw5/b;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v1}, Lw5/b;->e()[I

    .line 25
    .line 26
    .line 27
    move-result-object v10

    .line 28
    invoke-virtual {v1}, Lw5/b;->c()[I

    .line 29
    .line 30
    .line 31
    move-result-object v11

    .line 32
    if-eqz v10, :cond_f

    .line 33
    .line 34
    if-eqz v11, :cond_f

    .line 35
    .line 36
    aget v12, v10, v7

    .line 37
    .line 38
    aget v13, v10, v9

    .line 39
    .line 40
    const/4 v14, 0x1

    .line 41
    const/4 v15, 0x0

    .line 42
    :goto_0
    iget v2, v1, Lw5/b;->G:I

    .line 43
    .line 44
    iget v8, v1, Lw5/b;->H:I

    .line 45
    .line 46
    if-ge v12, v2, :cond_1

    .line 47
    .line 48
    if-ge v13, v8, :cond_1

    .line 49
    .line 50
    invoke-virtual {v1, v12, v13}, Lw5/b;->b(II)Z

    .line 51
    .line 52
    .line 53
    move-result v5

    .line 54
    if-eq v14, v5, :cond_0

    .line 55
    .line 56
    add-int/2addr v15, v9

    .line 57
    if-eq v15, v6, :cond_1

    .line 58
    .line 59
    xor-int/2addr v14, v9

    .line 60
    :cond_0
    add-int/2addr v12, v9

    .line 61
    add-int/2addr v13, v9

    .line 62
    goto :goto_0

    .line 63
    :cond_1
    if-eq v12, v2, :cond_e

    .line 64
    .line 65
    if-eq v13, v8, :cond_e

    .line 66
    .line 67
    aget v5, v10, v7

    .line 68
    .line 69
    sub-int/2addr v12, v5

    .line 70
    int-to-float v6, v12

    .line 71
    const/high16 v8, 0x40e00000    # 7.0f

    .line 72
    .line 73
    div-float/2addr v6, v8

    .line 74
    aget v8, v10, v9

    .line 75
    .line 76
    aget v10, v11, v9

    .line 77
    .line 78
    aget v11, v11, v7

    .line 79
    .line 80
    if-ge v5, v11, :cond_d

    .line 81
    .line 82
    if-ge v8, v10, :cond_d

    .line 83
    .line 84
    sub-int v12, v10, v8

    .line 85
    .line 86
    sub-int v13, v11, v5

    .line 87
    .line 88
    if-eq v12, v13, :cond_3

    .line 89
    .line 90
    add-int v11, v5, v12

    .line 91
    .line 92
    if-ge v11, v2, :cond_2

    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_2
    sget-object v0, Lq5/i;->I:Lq5/i;

    .line 96
    .line 97
    throw v0

    .line 98
    :cond_3
    :goto_1
    sub-int v2, v11, v5

    .line 99
    .line 100
    add-int/2addr v2, v9

    .line 101
    int-to-float v2, v2

    .line 102
    div-float/2addr v2, v6

    .line 103
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    .line 104
    .line 105
    .line 106
    move-result v2

    .line 107
    add-int/2addr v12, v9

    .line 108
    int-to-float v12, v12

    .line 109
    div-float/2addr v12, v6

    .line 110
    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    .line 111
    .line 112
    .line 113
    move-result v12

    .line 114
    if-lez v2, :cond_c

    .line 115
    .line 116
    if-lez v12, :cond_c

    .line 117
    .line 118
    if-ne v12, v2, :cond_b

    .line 119
    .line 120
    const/high16 v13, 0x40000000    # 2.0f

    .line 121
    .line 122
    div-float v13, v6, v13

    .line 123
    .line 124
    float-to-int v13, v13

    .line 125
    add-int/2addr v8, v13

    .line 126
    add-int/2addr v5, v13

    .line 127
    add-int/lit8 v14, v2, -0x1

    .line 128
    .line 129
    int-to-float v14, v14

    .line 130
    mul-float v14, v14, v6

    .line 131
    .line 132
    float-to-int v14, v14

    .line 133
    add-int/2addr v14, v5

    .line 134
    sub-int/2addr v14, v11

    .line 135
    if-lez v14, :cond_5

    .line 136
    .line 137
    if-gt v14, v13, :cond_4

    .line 138
    .line 139
    sub-int/2addr v5, v14

    .line 140
    goto :goto_2

    .line 141
    :cond_4
    sget-object v0, Lq5/i;->I:Lq5/i;

    .line 142
    .line 143
    throw v0

    .line 144
    :cond_5
    :goto_2
    add-int/lit8 v11, v12, -0x1

    .line 145
    .line 146
    int-to-float v11, v11

    .line 147
    mul-float v11, v11, v6

    .line 148
    .line 149
    float-to-int v11, v11

    .line 150
    add-int/2addr v11, v8

    .line 151
    sub-int/2addr v11, v10

    .line 152
    if-lez v11, :cond_7

    .line 153
    .line 154
    if-gt v11, v13, :cond_6

    .line 155
    .line 156
    sub-int/2addr v8, v11

    .line 157
    goto :goto_3

    .line 158
    :cond_6
    sget-object v0, Lq5/i;->I:Lq5/i;

    .line 159
    .line 160
    throw v0

    .line 161
    :cond_7
    :goto_3
    new-instance v10, Lw5/b;

    .line 162
    .line 163
    invoke-direct {v10, v2, v12}, Lw5/b;-><init>(II)V

    .line 164
    .line 165
    .line 166
    const/4 v11, 0x0

    .line 167
    :goto_4
    if-ge v11, v12, :cond_a

    .line 168
    .line 169
    int-to-float v13, v11

    .line 170
    mul-float v13, v13, v6

    .line 171
    .line 172
    float-to-int v13, v13

    .line 173
    add-int/2addr v13, v8

    .line 174
    const/4 v14, 0x0

    .line 175
    :goto_5
    if-ge v14, v2, :cond_9

    .line 176
    .line 177
    int-to-float v15, v14

    .line 178
    mul-float v15, v15, v6

    .line 179
    .line 180
    float-to-int v15, v15

    .line 181
    add-int/2addr v15, v5

    .line 182
    invoke-virtual {v1, v15, v13}, Lw5/b;->b(II)Z

    .line 183
    .line 184
    .line 185
    move-result v15

    .line 186
    if-eqz v15, :cond_8

    .line 187
    .line 188
    invoke-virtual {v10, v14, v11}, Lw5/b;->f(II)V

    .line 189
    .line 190
    .line 191
    :cond_8
    add-int/2addr v14, v9

    .line 192
    goto :goto_5

    .line 193
    :cond_9
    add-int/2addr v11, v9

    .line 194
    goto :goto_4

    .line 195
    :cond_a
    invoke-virtual {v4, v10, v0}, Lz5/c;->e(Lw5/b;Ljava/util/Map;)Lw5/d;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    sget-object v1, LK5/a;->b:[Lq5/o;

    .line 200
    .line 201
    goto/16 :goto_1f

    .line 202
    .line 203
    :cond_b
    sget-object v0, Lq5/i;->I:Lq5/i;

    .line 204
    .line 205
    throw v0

    .line 206
    :cond_c
    sget-object v0, Lq5/i;->I:Lq5/i;

    .line 207
    .line 208
    throw v0

    .line 209
    :cond_d
    sget-object v0, Lq5/i;->I:Lq5/i;

    .line 210
    .line 211
    throw v0

    .line 212
    :cond_e
    sget-object v0, Lq5/i;->I:Lq5/i;

    .line 213
    .line 214
    throw v0

    .line 215
    :cond_f
    sget-object v0, Lq5/i;->I:Lq5/i;

    .line 216
    .line 217
    throw v0

    .line 218
    :cond_10
    new-instance v2, Lm2/e;

    .line 219
    .line 220
    invoke-virtual/range {p1 .. p1}, Lm2/l;->i()Lw5/b;

    .line 221
    .line 222
    .line 223
    move-result-object v5

    .line 224
    const/16 v8, 0x19

    .line 225
    .line 226
    invoke-direct {v2, v5, v8}, Lm2/e;-><init>(Ljava/lang/Object;I)V

    .line 227
    .line 228
    .line 229
    if-nez v0, :cond_11

    .line 230
    .line 231
    const/4 v8, 0x0

    .line 232
    goto :goto_6

    .line 233
    :cond_11
    sget-object v8, Lq5/c;->P:Lq5/c;

    .line 234
    .line 235
    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    .line 237
    .line 238
    move-result-object v8

    .line 239
    check-cast v8, Lq5/p;

    .line 240
    .line 241
    :goto_6
    iput-object v8, v2, Lm2/e;->I:Ljava/lang/Object;

    .line 242
    .line 243
    new-instance v10, LM5/e;

    .line 244
    .line 245
    iget-object v11, v2, Lm2/e;->H:Ljava/lang/Object;

    .line 246
    .line 247
    check-cast v11, Lw5/b;

    .line 248
    .line 249
    invoke-direct {v10, v11, v8}, LM5/e;-><init>(Lw5/b;Lq5/p;)V

    .line 250
    .line 251
    .line 252
    if-eqz v0, :cond_12

    .line 253
    .line 254
    sget-object v8, Lq5/c;->J:Lq5/c;

    .line 255
    .line 256
    invoke-interface {v0, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 257
    .line 258
    .line 259
    move-result v8

    .line 260
    if-eqz v8, :cond_12

    .line 261
    .line 262
    const/4 v8, 0x1

    .line 263
    goto :goto_7

    .line 264
    :cond_12
    const/4 v8, 0x0

    .line 265
    :goto_7
    iget v12, v11, Lw5/b;->H:I

    .line 266
    .line 267
    const/4 v13, 0x3

    .line 268
    mul-int/lit8 v14, v12, 0x3

    .line 269
    .line 270
    div-int/lit16 v14, v14, 0x184

    .line 271
    .line 272
    if-lt v14, v13, :cond_13

    .line 273
    .line 274
    if-eqz v8, :cond_14

    .line 275
    .line 276
    :cond_13
    const/4 v14, 0x3

    .line 277
    :cond_14
    new-array v6, v6, [I

    .line 278
    .line 279
    add-int/lit8 v8, v14, -0x1

    .line 280
    .line 281
    const/4 v13, 0x0

    .line 282
    :goto_8
    iget-object v15, v10, LM5/e;->b:Ljava/util/ArrayList;

    .line 283
    .line 284
    if-ge v8, v12, :cond_24

    .line 285
    .line 286
    if-nez v13, :cond_24

    .line 287
    .line 288
    invoke-static {v6, v7}, Ljava/util/Arrays;->fill([II)V

    .line 289
    .line 290
    .line 291
    const/4 v5, 0x0

    .line 292
    :goto_9
    iget v1, v11, Lw5/b;->G:I

    .line 293
    .line 294
    if-ge v7, v1, :cond_21

    .line 295
    .line 296
    invoke-virtual {v11, v7, v8}, Lw5/b;->b(II)Z

    .line 297
    .line 298
    .line 299
    move-result v20

    .line 300
    if-eqz v20, :cond_16

    .line 301
    .line 302
    and-int/lit8 v1, v5, 0x1

    .line 303
    .line 304
    if-ne v1, v9, :cond_15

    .line 305
    .line 306
    add-int/2addr v5, v9

    .line 307
    :cond_15
    aget v1, v6, v5

    .line 308
    .line 309
    add-int/2addr v1, v9

    .line 310
    aput v1, v6, v5

    .line 311
    .line 312
    const/4 v3, 0x1

    .line 313
    goto/16 :goto_10

    .line 314
    .line 315
    :cond_16
    and-int/lit8 v20, v5, 0x1

    .line 316
    .line 317
    if-nez v20, :cond_20

    .line 318
    .line 319
    const/4 v9, 0x4

    .line 320
    if-ne v5, v9, :cond_1f

    .line 321
    .line 322
    invoke-static {v6}, LM5/e;->b([I)Z

    .line 323
    .line 324
    .line 325
    move-result v5

    .line 326
    if-eqz v5, :cond_1e

    .line 327
    .line 328
    invoke-virtual {v10, v8, v7, v6}, LM5/e;->c(II[I)Z

    .line 329
    .line 330
    .line 331
    move-result v5

    .line 332
    if-eqz v5, :cond_1d

    .line 333
    .line 334
    iget-boolean v5, v10, LM5/e;->c:Z

    .line 335
    .line 336
    if-eqz v5, :cond_17

    .line 337
    .line 338
    invoke-virtual {v10}, LM5/e;->d()Z

    .line 339
    .line 340
    .line 341
    move-result v13

    .line 342
    const/4 v1, 0x0

    .line 343
    const/4 v3, 0x1

    .line 344
    const/16 v16, 0x2

    .line 345
    .line 346
    goto :goto_e

    .line 347
    :cond_17
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    .line 348
    .line 349
    .line 350
    move-result v5

    .line 351
    const/4 v9, 0x1

    .line 352
    if-gt v5, v9, :cond_18

    .line 353
    .line 354
    const/4 v3, 0x0

    .line 355
    const/16 v16, 0x2

    .line 356
    .line 357
    goto :goto_c

    .line 358
    :cond_18
    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 359
    .line 360
    .line 361
    move-result-object v5

    .line 362
    const/4 v9, 0x0

    .line 363
    :goto_a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 364
    .line 365
    .line 366
    move-result v14

    .line 367
    if-eqz v14, :cond_1b

    .line 368
    .line 369
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 370
    .line 371
    .line 372
    move-result-object v14

    .line 373
    check-cast v14, LM5/c;

    .line 374
    .line 375
    iget v3, v14, LM5/c;->d:I

    .line 376
    .line 377
    move-object/from16 v21, v5

    .line 378
    .line 379
    const/4 v5, 0x2

    .line 380
    if-lt v3, v5, :cond_1a

    .line 381
    .line 382
    if-nez v9, :cond_19

    .line 383
    .line 384
    move-object/from16 v3, p0

    .line 385
    .line 386
    move-object v9, v14

    .line 387
    :goto_b
    move-object/from16 v5, v21

    .line 388
    .line 389
    goto :goto_a

    .line 390
    :cond_19
    const/4 v3, 0x1

    .line 391
    iput-boolean v3, v10, LM5/e;->c:Z

    .line 392
    .line 393
    iget v3, v9, Lq5/o;->a:F

    .line 394
    .line 395
    iget v5, v14, Lq5/o;->a:F

    .line 396
    .line 397
    sub-float/2addr v3, v5

    .line 398
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    .line 399
    .line 400
    .line 401
    move-result v3

    .line 402
    iget v5, v9, Lq5/o;->b:F

    .line 403
    .line 404
    iget v9, v14, Lq5/o;->b:F

    .line 405
    .line 406
    sub-float/2addr v5, v9

    .line 407
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    .line 408
    .line 409
    .line 410
    move-result v5

    .line 411
    sub-float/2addr v3, v5

    .line 412
    float-to-int v3, v3

    .line 413
    const/16 v16, 0x2

    .line 414
    .line 415
    div-int/lit8 v3, v3, 0x2

    .line 416
    .line 417
    goto :goto_c

    .line 418
    :cond_1a
    move-object/from16 v3, p0

    .line 419
    .line 420
    goto :goto_b

    .line 421
    :cond_1b
    const/16 v16, 0x2

    .line 422
    .line 423
    const/4 v3, 0x0

    .line 424
    :goto_c
    aget v5, v6, v16

    .line 425
    .line 426
    if-le v3, v5, :cond_1c

    .line 427
    .line 428
    sub-int/2addr v3, v5

    .line 429
    add-int/lit8 v3, v3, -0x2

    .line 430
    .line 431
    add-int/2addr v8, v3

    .line 432
    const/4 v3, 0x1

    .line 433
    add-int/lit8 v7, v1, -0x1

    .line 434
    .line 435
    goto :goto_d

    .line 436
    :cond_1c
    const/4 v3, 0x1

    .line 437
    :goto_d
    const/4 v1, 0x0

    .line 438
    :goto_e
    invoke-static {v6, v1}, Ljava/util/Arrays;->fill([II)V

    .line 439
    .line 440
    .line 441
    const/4 v5, 0x0

    .line 442
    const/4 v14, 0x2

    .line 443
    goto :goto_10

    .line 444
    :cond_1d
    const/4 v1, 0x0

    .line 445
    const/4 v3, 0x1

    .line 446
    const/16 v16, 0x2

    .line 447
    .line 448
    aget v5, v6, v16

    .line 449
    .line 450
    aput v5, v6, v1

    .line 451
    .line 452
    const/16 v17, 0x3

    .line 453
    .line 454
    aget v5, v6, v17

    .line 455
    .line 456
    aput v5, v6, v3

    .line 457
    .line 458
    const/4 v5, 0x4

    .line 459
    aget v9, v6, v5

    .line 460
    .line 461
    aput v9, v6, v16

    .line 462
    .line 463
    aput v3, v6, v17

    .line 464
    .line 465
    aput v1, v6, v5

    .line 466
    .line 467
    :goto_f
    const/4 v5, 0x3

    .line 468
    goto :goto_10

    .line 469
    :cond_1e
    const/4 v1, 0x0

    .line 470
    const/4 v3, 0x1

    .line 471
    const/4 v5, 0x4

    .line 472
    const/16 v16, 0x2

    .line 473
    .line 474
    const/16 v17, 0x3

    .line 475
    .line 476
    aget v9, v6, v16

    .line 477
    .line 478
    aput v9, v6, v1

    .line 479
    .line 480
    aget v9, v6, v17

    .line 481
    .line 482
    aput v9, v6, v3

    .line 483
    .line 484
    aget v9, v6, v5

    .line 485
    .line 486
    aput v9, v6, v16

    .line 487
    .line 488
    aput v3, v6, v17

    .line 489
    .line 490
    aput v1, v6, v5

    .line 491
    .line 492
    goto :goto_f

    .line 493
    :cond_1f
    const/4 v3, 0x1

    .line 494
    add-int/lit8 v1, v5, 0x1

    .line 495
    .line 496
    aget v5, v6, v1

    .line 497
    .line 498
    add-int/2addr v5, v3

    .line 499
    aput v5, v6, v1

    .line 500
    .line 501
    move v5, v1

    .line 502
    goto :goto_10

    .line 503
    :cond_20
    const/4 v3, 0x1

    .line 504
    aget v1, v6, v5

    .line 505
    .line 506
    add-int/2addr v1, v3

    .line 507
    aput v1, v6, v5

    .line 508
    .line 509
    :goto_10
    add-int/2addr v7, v3

    .line 510
    move-object/from16 v3, p0

    .line 511
    .line 512
    const/4 v9, 0x1

    .line 513
    goto/16 :goto_9

    .line 514
    .line 515
    :cond_21
    invoke-static {v6}, LM5/e;->b([I)Z

    .line 516
    .line 517
    .line 518
    move-result v3

    .line 519
    if-eqz v3, :cond_23

    .line 520
    .line 521
    invoke-virtual {v10, v8, v1, v6}, LM5/e;->c(II[I)Z

    .line 522
    .line 523
    .line 524
    move-result v1

    .line 525
    if-eqz v1, :cond_23

    .line 526
    .line 527
    const/4 v1, 0x0

    .line 528
    aget v3, v6, v1

    .line 529
    .line 530
    iget-boolean v1, v10, LM5/e;->c:Z

    .line 531
    .line 532
    if-eqz v1, :cond_22

    .line 533
    .line 534
    invoke-virtual {v10}, LM5/e;->d()Z

    .line 535
    .line 536
    .line 537
    move-result v1

    .line 538
    move v13, v1

    .line 539
    :cond_22
    move v14, v3

    .line 540
    :cond_23
    add-int/2addr v8, v14

    .line 541
    move-object/from16 v3, p0

    .line 542
    .line 543
    const/4 v7, 0x0

    .line 544
    const/4 v9, 0x1

    .line 545
    goto/16 :goto_8

    .line 546
    .line 547
    :cond_24
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    .line 548
    .line 549
    .line 550
    move-result v1

    .line 551
    const/4 v3, 0x3

    .line 552
    if-lt v1, v3, :cond_40

    .line 553
    .line 554
    invoke-static {v15}, LD0/y;->y(Ljava/util/ArrayList;)V

    .line 555
    .line 556
    .line 557
    new-array v1, v3, [LM5/c;

    .line 558
    .line 559
    const/4 v3, 0x0

    .line 560
    const-wide v7, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 561
    .line 562
    .line 563
    .line 564
    .line 565
    :cond_25
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    .line 566
    .line 567
    .line 568
    move-result v9

    .line 569
    const/4 v10, 0x2

    .line 570
    sub-int/2addr v9, v10

    .line 571
    if-ge v3, v9, :cond_2d

    .line 572
    .line 573
    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 574
    .line 575
    .line 576
    move-result-object v9

    .line 577
    check-cast v9, LM5/c;

    .line 578
    .line 579
    iget v10, v9, LM5/c;->c:F

    .line 580
    .line 581
    const/4 v11, 0x1

    .line 582
    add-int/2addr v3, v11

    .line 583
    move v12, v3

    .line 584
    :goto_11
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    .line 585
    .line 586
    .line 587
    move-result v13

    .line 588
    sub-int/2addr v13, v11

    .line 589
    if-ge v12, v13, :cond_25

    .line 590
    .line 591
    invoke-virtual {v15, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 592
    .line 593
    .line 594
    move-result-object v13

    .line 595
    check-cast v13, LM5/c;

    .line 596
    .line 597
    invoke-static {v9, v13}, LM5/e;->e(LM5/c;LM5/c;)D

    .line 598
    .line 599
    .line 600
    move-result-wide v21

    .line 601
    add-int/2addr v12, v11

    .line 602
    move v11, v12

    .line 603
    :goto_12
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    .line 604
    .line 605
    .line 606
    move-result v14

    .line 607
    if-ge v11, v14, :cond_2c

    .line 608
    .line 609
    invoke-virtual {v15, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 610
    .line 611
    .line 612
    move-result-object v14

    .line 613
    check-cast v14, LM5/c;

    .line 614
    .line 615
    iget v5, v14, LM5/c;->c:F

    .line 616
    .line 617
    const v6, 0x3fb33333    # 1.4f

    .line 618
    .line 619
    .line 620
    mul-float v6, v6, v10

    .line 621
    .line 622
    cmpl-float v5, v5, v6

    .line 623
    .line 624
    if-gtz v5, :cond_2b

    .line 625
    .line 626
    invoke-static {v13, v14}, LM5/e;->e(LM5/c;LM5/c;)D

    .line 627
    .line 628
    .line 629
    move-result-wide v5

    .line 630
    invoke-static {v9, v14}, LM5/e;->e(LM5/c;LM5/c;)D

    .line 631
    .line 632
    .line 633
    move-result-wide v25

    .line 634
    cmpg-double v27, v21, v5

    .line 635
    .line 636
    if-gez v27, :cond_28

    .line 637
    .line 638
    cmpl-double v27, v5, v25

    .line 639
    .line 640
    if-lez v27, :cond_27

    .line 641
    .line 642
    cmpg-double v27, v21, v25

    .line 643
    .line 644
    if-gez v27, :cond_26

    .line 645
    .line 646
    move-wide/from16 v27, v21

    .line 647
    .line 648
    goto :goto_15

    .line 649
    :cond_26
    move-wide/from16 v27, v25

    .line 650
    .line 651
    :goto_13
    move-wide/from16 v25, v21

    .line 652
    .line 653
    goto :goto_15

    .line 654
    :cond_27
    move-wide/from16 v27, v21

    .line 655
    .line 656
    move-wide/from16 v38, v5

    .line 657
    .line 658
    move-wide/from16 v5, v25

    .line 659
    .line 660
    move-wide/from16 v25, v38

    .line 661
    .line 662
    goto :goto_15

    .line 663
    :cond_28
    cmpg-double v27, v5, v25

    .line 664
    .line 665
    if-gez v27, :cond_2a

    .line 666
    .line 667
    cmpg-double v27, v21, v25

    .line 668
    .line 669
    if-gez v27, :cond_29

    .line 670
    .line 671
    move-wide/from16 v27, v5

    .line 672
    .line 673
    move-wide/from16 v5, v25

    .line 674
    .line 675
    goto :goto_13

    .line 676
    :cond_29
    move-wide/from16 v27, v5

    .line 677
    .line 678
    :goto_14
    move-wide/from16 v5, v21

    .line 679
    .line 680
    goto :goto_15

    .line 681
    :cond_2a
    move-wide/from16 v27, v25

    .line 682
    .line 683
    move-wide/from16 v25, v5

    .line 684
    .line 685
    goto :goto_14

    .line 686
    :goto_15
    const-wide/high16 v29, 0x4000000000000000L    # 2.0

    .line 687
    .line 688
    mul-double v25, v25, v29

    .line 689
    .line 690
    sub-double v25, v5, v25

    .line 691
    .line 692
    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->abs(D)D

    .line 693
    .line 694
    .line 695
    move-result-wide v25

    .line 696
    mul-double v27, v27, v29

    .line 697
    .line 698
    sub-double v5, v5, v27

    .line 699
    .line 700
    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    .line 701
    .line 702
    .line 703
    move-result-wide v5

    .line 704
    add-double v5, v5, v25

    .line 705
    .line 706
    cmpg-double v25, v5, v7

    .line 707
    .line 708
    if-gez v25, :cond_2b

    .line 709
    .line 710
    const/16 v19, 0x0

    .line 711
    .line 712
    aput-object v9, v1, v19

    .line 713
    .line 714
    const/16 v20, 0x1

    .line 715
    .line 716
    aput-object v13, v1, v20

    .line 717
    .line 718
    const/4 v7, 0x2

    .line 719
    aput-object v14, v1, v7

    .line 720
    .line 721
    move-wide v7, v5

    .line 722
    goto :goto_16

    .line 723
    :cond_2b
    const/16 v20, 0x1

    .line 724
    .line 725
    :goto_16
    add-int/lit8 v11, v11, 0x1

    .line 726
    .line 727
    goto :goto_12

    .line 728
    :cond_2c
    const/16 v20, 0x1

    .line 729
    .line 730
    const/4 v11, 0x1

    .line 731
    goto/16 :goto_11

    .line 732
    .line 733
    :cond_2d
    const-wide v5, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 734
    .line 735
    .line 736
    .line 737
    .line 738
    const/16 v20, 0x1

    .line 739
    .line 740
    cmpl-double v3, v7, v5

    .line 741
    .line 742
    if-eqz v3, :cond_3f

    .line 743
    .line 744
    const/4 v3, 0x0

    .line 745
    aget-object v5, v1, v3

    .line 746
    .line 747
    aget-object v6, v1, v20

    .line 748
    .line 749
    invoke-static {v5, v6}, Lq5/o;->a(Lq5/o;Lq5/o;)F

    .line 750
    .line 751
    .line 752
    move-result v5

    .line 753
    aget-object v6, v1, v20

    .line 754
    .line 755
    const/4 v7, 0x2

    .line 756
    aget-object v8, v1, v7

    .line 757
    .line 758
    invoke-static {v6, v8}, Lq5/o;->a(Lq5/o;Lq5/o;)F

    .line 759
    .line 760
    .line 761
    move-result v6

    .line 762
    aget-object v8, v1, v3

    .line 763
    .line 764
    aget-object v9, v1, v7

    .line 765
    .line 766
    invoke-static {v8, v9}, Lq5/o;->a(Lq5/o;Lq5/o;)F

    .line 767
    .line 768
    .line 769
    move-result v8

    .line 770
    cmpl-float v9, v6, v5

    .line 771
    .line 772
    if-ltz v9, :cond_2e

    .line 773
    .line 774
    cmpl-float v9, v6, v8

    .line 775
    .line 776
    if-ltz v9, :cond_2e

    .line 777
    .line 778
    aget-object v5, v1, v3

    .line 779
    .line 780
    aget-object v6, v1, v20

    .line 781
    .line 782
    aget-object v8, v1, v7

    .line 783
    .line 784
    goto :goto_17

    .line 785
    :cond_2e
    cmpl-float v6, v8, v6

    .line 786
    .line 787
    if-ltz v6, :cond_2f

    .line 788
    .line 789
    cmpl-float v5, v8, v5

    .line 790
    .line 791
    if-ltz v5, :cond_2f

    .line 792
    .line 793
    aget-object v5, v1, v20

    .line 794
    .line 795
    aget-object v6, v1, v3

    .line 796
    .line 797
    aget-object v8, v1, v7

    .line 798
    .line 799
    goto :goto_17

    .line 800
    :cond_2f
    aget-object v5, v1, v7

    .line 801
    .line 802
    aget-object v6, v1, v3

    .line 803
    .line 804
    aget-object v8, v1, v20

    .line 805
    .line 806
    :goto_17
    iget v3, v5, Lq5/o;->a:F

    .line 807
    .line 808
    iget v7, v8, Lq5/o;->a:F

    .line 809
    .line 810
    sub-float/2addr v7, v3

    .line 811
    iget v9, v6, Lq5/o;->b:F

    .line 812
    .line 813
    iget v10, v5, Lq5/o;->b:F

    .line 814
    .line 815
    sub-float/2addr v9, v10

    .line 816
    mul-float v9, v9, v7

    .line 817
    .line 818
    iget v7, v8, Lq5/o;->b:F

    .line 819
    .line 820
    sub-float/2addr v7, v10

    .line 821
    iget v11, v6, Lq5/o;->a:F

    .line 822
    .line 823
    sub-float/2addr v11, v3

    .line 824
    mul-float v11, v11, v7

    .line 825
    .line 826
    sub-float/2addr v9, v11

    .line 827
    const/4 v3, 0x0

    .line 828
    cmpg-float v3, v9, v3

    .line 829
    .line 830
    if-gez v3, :cond_30

    .line 831
    .line 832
    const/4 v3, 0x0

    .line 833
    move-object/from16 v38, v8

    .line 834
    .line 835
    move-object v8, v6

    .line 836
    move-object/from16 v6, v38

    .line 837
    .line 838
    goto :goto_18

    .line 839
    :cond_30
    const/4 v3, 0x0

    .line 840
    :goto_18
    aput-object v6, v1, v3

    .line 841
    .line 842
    const/4 v3, 0x1

    .line 843
    aput-object v5, v1, v3

    .line 844
    .line 845
    const/4 v3, 0x2

    .line 846
    aput-object v8, v1, v3

    .line 847
    .line 848
    invoke-virtual {v2, v5, v8}, Lm2/e;->h(LM5/c;LM5/c;)F

    .line 849
    .line 850
    .line 851
    move-result v1

    .line 852
    invoke-virtual {v2, v5, v6}, Lm2/e;->h(LM5/c;LM5/c;)F

    .line 853
    .line 854
    .line 855
    move-result v3

    .line 856
    add-float/2addr v3, v1

    .line 857
    const/high16 v1, 0x40000000    # 2.0f

    .line 858
    .line 859
    div-float/2addr v3, v1

    .line 860
    const/high16 v1, 0x3f800000    # 1.0f

    .line 861
    .line 862
    cmpg-float v7, v3, v1

    .line 863
    .line 864
    if-ltz v7, :cond_3e

    .line 865
    .line 866
    invoke-static {v5, v8}, Lq5/o;->a(Lq5/o;Lq5/o;)F

    .line 867
    .line 868
    .line 869
    move-result v7

    .line 870
    div-float/2addr v7, v3

    .line 871
    invoke-static {v7}, Ld2/v;->s(F)I

    .line 872
    .line 873
    .line 874
    move-result v7

    .line 875
    invoke-static {v5, v6}, Lq5/o;->a(Lq5/o;Lq5/o;)F

    .line 876
    .line 877
    .line 878
    move-result v9

    .line 879
    div-float/2addr v9, v3

    .line 880
    invoke-static {v9}, Ld2/v;->s(F)I

    .line 881
    .line 882
    .line 883
    move-result v9

    .line 884
    add-int/2addr v9, v7

    .line 885
    const/4 v7, 0x2

    .line 886
    div-int/2addr v9, v7

    .line 887
    add-int/lit8 v11, v9, 0x7

    .line 888
    .line 889
    const/4 v12, 0x3

    .line 890
    and-int/lit8 v13, v11, 0x3

    .line 891
    .line 892
    if-eqz v13, :cond_33

    .line 893
    .line 894
    if-eq v13, v7, :cond_32

    .line 895
    .line 896
    if-eq v13, v12, :cond_31

    .line 897
    .line 898
    goto :goto_19

    .line 899
    :cond_31
    sget-object v0, Lq5/i;->I:Lq5/i;

    .line 900
    .line 901
    throw v0

    .line 902
    :cond_32
    add-int/lit8 v11, v9, 0x6

    .line 903
    .line 904
    goto :goto_19

    .line 905
    :cond_33
    add-int/lit8 v11, v9, 0x8

    .line 906
    .line 907
    :goto_19
    sget-object v7, LL5/f;->e:[I

    .line 908
    .line 909
    const/4 v7, 0x4

    .line 910
    rem-int/lit8 v9, v11, 0x4

    .line 911
    .line 912
    const/4 v12, 0x1

    .line 913
    if-ne v9, v12, :cond_3d

    .line 914
    .line 915
    add-int/lit8 v9, v11, -0x11

    .line 916
    .line 917
    :try_start_0
    div-int/2addr v9, v7

    .line 918
    invoke-static {v9}, LL5/f;->c(I)LL5/f;

    .line 919
    .line 920
    .line 921
    move-result-object v9
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 922
    iget v12, v9, LL5/f;->a:I

    .line 923
    .line 924
    mul-int/lit8 v12, v12, 0x4

    .line 925
    .line 926
    add-int/lit8 v12, v12, 0xa

    .line 927
    .line 928
    iget-object v7, v9, LL5/f;->b:[I

    .line 929
    .line 930
    array-length v7, v7

    .line 931
    iget v13, v5, Lq5/o;->a:F

    .line 932
    .line 933
    iget v14, v8, Lq5/o;->b:F

    .line 934
    .line 935
    iget v15, v8, Lq5/o;->a:F

    .line 936
    .line 937
    iget v1, v6, Lq5/o;->b:F

    .line 938
    .line 939
    iget v9, v6, Lq5/o;->a:F

    .line 940
    .line 941
    if-lez v7, :cond_34

    .line 942
    .line 943
    sub-float v7, v15, v13

    .line 944
    .line 945
    add-float/2addr v7, v9

    .line 946
    sub-float v22, v14, v10

    .line 947
    .line 948
    add-float v22, v22, v1

    .line 949
    .line 950
    int-to-float v12, v12

    .line 951
    const/high16 v21, 0x40400000    # 3.0f

    .line 952
    .line 953
    div-float v12, v21, v12

    .line 954
    .line 955
    const/high16 v18, 0x3f800000    # 1.0f

    .line 956
    .line 957
    sub-float v12, v18, v12

    .line 958
    .line 959
    sub-float/2addr v7, v13

    .line 960
    mul-float v7, v7, v12

    .line 961
    .line 962
    add-float/2addr v7, v13

    .line 963
    float-to-int v7, v7

    .line 964
    sub-float v22, v22, v10

    .line 965
    .line 966
    mul-float v22, v22, v12

    .line 967
    .line 968
    add-float v12, v22, v10

    .line 969
    .line 970
    float-to-int v12, v12

    .line 971
    move-object/from16 v18, v4

    .line 972
    .line 973
    const/4 v0, 0x4

    .line 974
    :goto_1a
    const/16 v4, 0x10

    .line 975
    .line 976
    if-gt v0, v4, :cond_35

    .line 977
    .line 978
    int-to-float v4, v0

    .line 979
    :try_start_1
    invoke-virtual {v2, v3, v4, v7, v12}, Lm2/e;->y(FFII)LM5/a;

    .line 980
    .line 981
    .line 982
    move-result-object v0
    :try_end_1
    .catch Lq5/i; {:try_start_1 .. :try_end_1} :catch_0

    .line 983
    goto :goto_1b

    .line 984
    :catch_0
    const/4 v4, 0x1

    .line 985
    shl-int/2addr v0, v4

    .line 986
    goto :goto_1a

    .line 987
    :cond_34
    move-object/from16 v18, v4

    .line 988
    .line 989
    :cond_35
    const/4 v0, 0x0

    .line 990
    :goto_1b
    int-to-float v3, v11

    .line 991
    const/high16 v4, 0x40600000    # 3.5f

    .line 992
    .line 993
    sub-float v29, v3, v4

    .line 994
    .line 995
    if-eqz v0, :cond_36

    .line 996
    .line 997
    const/high16 v3, 0x40400000    # 3.0f

    .line 998
    .line 999
    sub-float v1, v29, v3

    .line 1000
    .line 1001
    iget v3, v0, Lq5/o;->a:F

    .line 1002
    .line 1003
    iget v4, v0, Lq5/o;->b:F

    .line 1004
    .line 1005
    move/from16 v27, v1

    .line 1006
    .line 1007
    move/from16 v34, v3

    .line 1008
    .line 1009
    move/from16 v35, v4

    .line 1010
    .line 1011
    goto :goto_1c

    .line 1012
    :cond_36
    sub-float/2addr v15, v13

    .line 1013
    add-float/2addr v15, v9

    .line 1014
    sub-float/2addr v14, v10

    .line 1015
    add-float/2addr v14, v1

    .line 1016
    move/from16 v35, v14

    .line 1017
    .line 1018
    move/from16 v34, v15

    .line 1019
    .line 1020
    move/from16 v27, v29

    .line 1021
    .line 1022
    :goto_1c
    iget v1, v8, Lq5/o;->a:F

    .line 1023
    .line 1024
    iget v3, v6, Lq5/o;->a:F

    .line 1025
    .line 1026
    const/high16 v22, 0x40600000    # 3.5f

    .line 1027
    .line 1028
    const/high16 v23, 0x40600000    # 3.5f

    .line 1029
    .line 1030
    const/high16 v25, 0x40600000    # 3.5f

    .line 1031
    .line 1032
    const/high16 v28, 0x40600000    # 3.5f

    .line 1033
    .line 1034
    iget v4, v5, Lq5/o;->a:F

    .line 1035
    .line 1036
    iget v7, v5, Lq5/o;->b:F

    .line 1037
    .line 1038
    iget v9, v8, Lq5/o;->b:F

    .line 1039
    .line 1040
    iget v10, v6, Lq5/o;->b:F

    .line 1041
    .line 1042
    move/from16 v24, v29

    .line 1043
    .line 1044
    move/from16 v26, v27

    .line 1045
    .line 1046
    move/from16 v30, v4

    .line 1047
    .line 1048
    move/from16 v31, v7

    .line 1049
    .line 1050
    move/from16 v32, v1

    .line 1051
    .line 1052
    move/from16 v33, v9

    .line 1053
    .line 1054
    move/from16 v36, v3

    .line 1055
    .line 1056
    move/from16 v37, v10

    .line 1057
    .line 1058
    invoke-static/range {v22 .. v37}, LF/a;->c(FFFFFFFFFFFFFFFF)LF/a;

    .line 1059
    .line 1060
    .line 1061
    move-result-object v1

    .line 1062
    iget-object v2, v2, Lm2/e;->H:Ljava/lang/Object;

    .line 1063
    .line 1064
    check-cast v2, Lw5/b;

    .line 1065
    .line 1066
    invoke-static {v2, v11, v11, v1}, Ln0/c;->k(Lw5/b;IILF/a;)Lw5/b;

    .line 1067
    .line 1068
    .line 1069
    move-result-object v1

    .line 1070
    if-nez v0, :cond_37

    .line 1071
    .line 1072
    const/4 v2, 0x3

    .line 1073
    new-array v0, v2, [Lq5/o;

    .line 1074
    .line 1075
    const/4 v3, 0x0

    .line 1076
    aput-object v6, v0, v3

    .line 1077
    .line 1078
    const/4 v4, 0x1

    .line 1079
    aput-object v5, v0, v4

    .line 1080
    .line 1081
    const/4 v7, 0x2

    .line 1082
    aput-object v8, v0, v7

    .line 1083
    .line 1084
    move-object/from16 v2, p2

    .line 1085
    .line 1086
    :goto_1d
    move-object/from16 v3, v18

    .line 1087
    .line 1088
    goto :goto_1e

    .line 1089
    :cond_37
    const/4 v2, 0x3

    .line 1090
    const/4 v3, 0x0

    .line 1091
    const/4 v4, 0x1

    .line 1092
    const/4 v7, 0x2

    .line 1093
    const/4 v9, 0x4

    .line 1094
    new-array v9, v9, [Lq5/o;

    .line 1095
    .line 1096
    aput-object v6, v9, v3

    .line 1097
    .line 1098
    aput-object v5, v9, v4

    .line 1099
    .line 1100
    aput-object v8, v9, v7

    .line 1101
    .line 1102
    aput-object v0, v9, v2

    .line 1103
    .line 1104
    move-object/from16 v2, p2

    .line 1105
    .line 1106
    move-object v0, v9

    .line 1107
    goto :goto_1d

    .line 1108
    :goto_1e
    invoke-virtual {v3, v1, v2}, Lz5/c;->e(Lw5/b;Ljava/util/Map;)Lw5/d;

    .line 1109
    .line 1110
    .line 1111
    move-result-object v1

    .line 1112
    move-object/from16 v38, v1

    .line 1113
    .line 1114
    move-object v1, v0

    .line 1115
    move-object/from16 v0, v38

    .line 1116
    .line 1117
    :goto_1f
    iget-object v2, v0, Lw5/d;->e:Ljava/lang/Object;

    .line 1118
    .line 1119
    instance-of v3, v2, LL5/e;

    .line 1120
    .line 1121
    if-eqz v3, :cond_39

    .line 1122
    .line 1123
    check-cast v2, LL5/e;

    .line 1124
    .line 1125
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1126
    .line 1127
    .line 1128
    array-length v2, v1

    .line 1129
    const/4 v3, 0x3

    .line 1130
    if-ge v2, v3, :cond_38

    .line 1131
    .line 1132
    goto :goto_20

    .line 1133
    :cond_38
    const/4 v2, 0x0

    .line 1134
    aget-object v3, v1, v2

    .line 1135
    .line 1136
    const/4 v4, 0x2

    .line 1137
    aget-object v5, v1, v4

    .line 1138
    .line 1139
    aput-object v5, v1, v2

    .line 1140
    .line 1141
    aput-object v3, v1, v4

    .line 1142
    .line 1143
    :cond_39
    :goto_20
    new-instance v2, Lq5/m;

    .line 1144
    .line 1145
    sget-object v3, Lq5/a;->R:Lq5/a;

    .line 1146
    .line 1147
    iget-object v4, v0, Lw5/d;->b:Ljava/lang/String;

    .line 1148
    .line 1149
    iget-object v5, v0, Lw5/d;->a:[B

    .line 1150
    .line 1151
    invoke-direct {v2, v4, v5, v1, v3}, Lq5/m;-><init>(Ljava/lang/String;[B[Lq5/o;Lq5/a;)V

    .line 1152
    .line 1153
    .line 1154
    iget-object v1, v0, Lw5/d;->c:Ljava/util/List;

    .line 1155
    .line 1156
    if-eqz v1, :cond_3a

    .line 1157
    .line 1158
    sget-object v3, Lq5/n;->H:Lq5/n;

    .line 1159
    .line 1160
    invoke-virtual {v2, v3, v1}, Lq5/m;->b(Lq5/n;Ljava/lang/Object;)V

    .line 1161
    .line 1162
    .line 1163
    :cond_3a
    iget-object v1, v0, Lw5/d;->d:Ljava/lang/String;

    .line 1164
    .line 1165
    if-eqz v1, :cond_3b

    .line 1166
    .line 1167
    sget-object v3, Lq5/n;->I:Lq5/n;

    .line 1168
    .line 1169
    invoke-virtual {v2, v3, v1}, Lq5/m;->b(Lq5/n;Ljava/lang/Object;)V

    .line 1170
    .line 1171
    .line 1172
    :cond_3b
    iget v1, v0, Lw5/d;->f:I

    .line 1173
    .line 1174
    if-ltz v1, :cond_3c

    .line 1175
    .line 1176
    iget v0, v0, Lw5/d;->g:I

    .line 1177
    .line 1178
    if-ltz v0, :cond_3c

    .line 1179
    .line 1180
    sget-object v3, Lq5/n;->O:Lq5/n;

    .line 1181
    .line 1182
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1183
    .line 1184
    .line 1185
    move-result-object v0

    .line 1186
    invoke-virtual {v2, v3, v0}, Lq5/m;->b(Lq5/n;Ljava/lang/Object;)V

    .line 1187
    .line 1188
    .line 1189
    sget-object v0, Lq5/n;->P:Lq5/n;

    .line 1190
    .line 1191
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1192
    .line 1193
    .line 1194
    move-result-object v1

    .line 1195
    invoke-virtual {v2, v0, v1}, Lq5/m;->b(Lq5/n;Ljava/lang/Object;)V

    .line 1196
    .line 1197
    .line 1198
    :cond_3c
    return-object v2

    .line 1199
    :catch_1
    invoke-static {}, Lq5/e;->a()Lq5/e;

    .line 1200
    .line 1201
    .line 1202
    move-result-object v0

    .line 1203
    throw v0

    .line 1204
    :cond_3d
    invoke-static {}, Lq5/e;->a()Lq5/e;

    .line 1205
    .line 1206
    .line 1207
    move-result-object v0

    .line 1208
    throw v0

    .line 1209
    :cond_3e
    sget-object v0, Lq5/i;->I:Lq5/i;

    .line 1210
    .line 1211
    throw v0

    .line 1212
    :cond_3f
    sget-object v0, Lq5/i;->I:Lq5/i;

    .line 1213
    .line 1214
    throw v0

    .line 1215
    :cond_40
    sget-object v0, Lq5/i;->I:Lq5/i;

    .line 1216
    .line 1217
    throw v0
.end method
