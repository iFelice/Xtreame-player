.class public final LA1/E;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LA1/B;


# instance fields
.field public final G:Lp0/D;

.field public final H:Landroid/util/SparseArray;

.field public final I:Landroid/util/SparseIntArray;

.field public final J:I

.field public final synthetic K:LA1/F;


# direct methods
.method public constructor <init>(LA1/F;I)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LA1/E;->K:LA1/F;

    .line 5
    .line 6
    new-instance p1, Lp0/D;

    .line 7
    .line 8
    const/4 v0, 0x5

    .line 9
    new-array v0, v0, [B

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-direct {p1, v0, v1, v2}, Lp0/D;-><init>([BILjava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, LA1/E;->G:Lp0/D;

    .line 17
    .line 18
    new-instance p1, Landroid/util/SparseArray;

    .line 19
    .line 20
    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, LA1/E;->H:Landroid/util/SparseArray;

    .line 24
    .line 25
    new-instance p1, Landroid/util/SparseIntArray;

    .line 26
    .line 27
    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object p1, p0, LA1/E;->I:Landroid/util/SparseIntArray;

    .line 31
    .line 32
    iput p2, p0, LA1/E;->J:I

    .line 33
    .line 34
    return-void
.end method


# virtual methods
.method public final b(Lp0/E;)V
    .locals 35

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-virtual/range {p1 .. p1}, Lp0/E;->z()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    const/4 v3, 0x2

    .line 10
    if-eq v2, v3, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object v2, v0, LA1/E;->K:LA1/F;

    .line 14
    .line 15
    iget v4, v2, LA1/F;->a:I

    .line 16
    .line 17
    const/4 v5, 0x1

    .line 18
    const/4 v6, 0x0

    .line 19
    iget-object v7, v2, LA1/F;->c:Ljava/util/List;

    .line 20
    .line 21
    if-eq v4, v5, :cond_2

    .line 22
    .line 23
    if-eq v4, v3, :cond_2

    .line 24
    .line 25
    iget v4, v2, LA1/F;->n:I

    .line 26
    .line 27
    if-ne v4, v5, :cond_1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    new-instance v4, Lp0/J;

    .line 31
    .line 32
    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v8

    .line 36
    check-cast v8, Lp0/J;

    .line 37
    .line 38
    invoke-virtual {v8}, Lp0/J;->d()J

    .line 39
    .line 40
    .line 41
    move-result-wide v8

    .line 42
    invoke-direct {v4, v8, v9}, Lp0/J;-><init>(J)V

    .line 43
    .line 44
    .line 45
    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_2
    :goto_0
    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    check-cast v4, Lp0/J;

    .line 54
    .line 55
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lp0/E;->z()I

    .line 56
    .line 57
    .line 58
    move-result v7

    .line 59
    and-int/lit16 v7, v7, 0x80

    .line 60
    .line 61
    if-nez v7, :cond_3

    .line 62
    .line 63
    return-void

    .line 64
    :cond_3
    invoke-virtual {v1, v5}, Lp0/E;->M(I)V

    .line 65
    .line 66
    .line 67
    invoke-virtual/range {p1 .. p1}, Lp0/E;->F()I

    .line 68
    .line 69
    .line 70
    move-result v7

    .line 71
    const/4 v8, 0x3

    .line 72
    invoke-virtual {v1, v8}, Lp0/E;->M(I)V

    .line 73
    .line 74
    .line 75
    iget-object v9, v0, LA1/E;->G:Lp0/D;

    .line 76
    .line 77
    iget-object v10, v9, Lp0/D;->b:[B

    .line 78
    .line 79
    invoke-virtual {v1, v6, v10, v3}, Lp0/E;->j(I[BI)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v9, v6}, Lp0/D;->r(I)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v9, v8}, Lp0/D;->u(I)V

    .line 86
    .line 87
    .line 88
    const/16 v10, 0xd

    .line 89
    .line 90
    invoke-virtual {v9, v10}, Lp0/D;->i(I)I

    .line 91
    .line 92
    .line 93
    move-result v11

    .line 94
    iput v11, v2, LA1/F;->t:I

    .line 95
    .line 96
    iget-object v11, v9, Lp0/D;->b:[B

    .line 97
    .line 98
    invoke-virtual {v1, v6, v11, v3}, Lp0/E;->j(I[BI)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v9, v6}, Lp0/D;->r(I)V

    .line 102
    .line 103
    .line 104
    const/4 v11, 0x4

    .line 105
    invoke-virtual {v9, v11}, Lp0/D;->u(I)V

    .line 106
    .line 107
    .line 108
    const/16 v12, 0xc

    .line 109
    .line 110
    invoke-virtual {v9, v12}, Lp0/D;->i(I)I

    .line 111
    .line 112
    .line 113
    move-result v13

    .line 114
    invoke-virtual {v1, v13}, Lp0/E;->M(I)V

    .line 115
    .line 116
    .line 117
    iget-object v13, v2, LA1/F;->f:LA1/g;

    .line 118
    .line 119
    iget v14, v2, LA1/F;->a:I

    .line 120
    .line 121
    const/16 v15, 0x2000

    .line 122
    .line 123
    const/16 v5, 0x15

    .line 124
    .line 125
    if-ne v14, v3, :cond_4

    .line 126
    .line 127
    iget-object v3, v2, LA1/F;->r:LA1/J;

    .line 128
    .line 129
    if-nez v3, :cond_4

    .line 130
    .line 131
    new-instance v3, LA1/H;

    .line 132
    .line 133
    sget-object v21, Lp0/M;->b:[B

    .line 134
    .line 135
    const/16 v18, 0x0

    .line 136
    .line 137
    const/16 v19, 0x0

    .line 138
    .line 139
    const/16 v17, 0x15

    .line 140
    .line 141
    const/16 v20, 0x0

    .line 142
    .line 143
    move-object/from16 v16, v3

    .line 144
    .line 145
    invoke-direct/range {v16 .. v21}, LA1/H;-><init>(ILjava/lang/String;ILjava/util/ArrayList;[B)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v13, v5, v3}, LA1/g;->b(ILA1/H;)LA1/J;

    .line 149
    .line 150
    .line 151
    move-result-object v3

    .line 152
    iput-object v3, v2, LA1/F;->r:LA1/J;

    .line 153
    .line 154
    if-eqz v3, :cond_4

    .line 155
    .line 156
    iget-object v12, v2, LA1/F;->m:LW0/u;

    .line 157
    .line 158
    new-instance v11, LA1/I;

    .line 159
    .line 160
    invoke-direct {v11, v7, v5, v15, v6}, LA1/I;-><init>(IIII)V

    .line 161
    .line 162
    .line 163
    invoke-interface {v3, v4, v12, v11}, LA1/J;->d(Lp0/J;LW0/u;LA1/I;)V

    .line 164
    .line 165
    .line 166
    :cond_4
    iget-object v3, v0, LA1/E;->H:Landroid/util/SparseArray;

    .line 167
    .line 168
    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V

    .line 169
    .line 170
    .line 171
    iget-object v11, v0, LA1/E;->I:Landroid/util/SparseIntArray;

    .line 172
    .line 173
    invoke-virtual {v11}, Landroid/util/SparseIntArray;->clear()V

    .line 174
    .line 175
    .line 176
    invoke-virtual/range {p1 .. p1}, Lp0/E;->a()I

    .line 177
    .line 178
    .line 179
    move-result v12

    .line 180
    :goto_2
    iget-object v15, v2, LA1/F;->i:Landroid/util/SparseBooleanArray;

    .line 181
    .line 182
    if-lez v12, :cond_1d

    .line 183
    .line 184
    iget-object v5, v9, Lp0/D;->b:[B

    .line 185
    .line 186
    const/4 v10, 0x5

    .line 187
    invoke-virtual {v1, v6, v5, v10}, Lp0/E;->j(I[BI)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {v9, v6}, Lp0/D;->r(I)V

    .line 191
    .line 192
    .line 193
    const/16 v5, 0x8

    .line 194
    .line 195
    invoke-virtual {v9, v5}, Lp0/D;->i(I)I

    .line 196
    .line 197
    .line 198
    move-result v5

    .line 199
    invoke-virtual {v9, v8}, Lp0/D;->u(I)V

    .line 200
    .line 201
    .line 202
    const/16 v6, 0xd

    .line 203
    .line 204
    invoke-virtual {v9, v6}, Lp0/D;->i(I)I

    .line 205
    .line 206
    .line 207
    move-result v8

    .line 208
    const/4 v6, 0x4

    .line 209
    invoke-virtual {v9, v6}, Lp0/D;->u(I)V

    .line 210
    .line 211
    .line 212
    const/16 v6, 0xc

    .line 213
    .line 214
    invoke-virtual {v9, v6}, Lp0/D;->i(I)I

    .line 215
    .line 216
    .line 217
    move-result v16

    .line 218
    iget v6, v1, Lp0/E;->b:I

    .line 219
    .line 220
    add-int v10, v6, v16

    .line 221
    .line 222
    const/16 v22, 0x0

    .line 223
    .line 224
    const/16 v23, -0x1

    .line 225
    .line 226
    move-object/from16 v26, v22

    .line 227
    .line 228
    move-object/from16 v28, v26

    .line 229
    .line 230
    const/16 v27, 0x0

    .line 231
    .line 232
    move-object/from16 v22, v9

    .line 233
    .line 234
    :goto_3
    iget v9, v1, Lp0/E;->b:I

    .line 235
    .line 236
    if-ge v9, v10, :cond_5

    .line 237
    .line 238
    invoke-virtual/range {p1 .. p1}, Lp0/E;->z()I

    .line 239
    .line 240
    .line 241
    move-result v9

    .line 242
    invoke-virtual/range {p1 .. p1}, Lp0/E;->z()I

    .line 243
    .line 244
    .line 245
    move-result v24

    .line 246
    iget v0, v1, Lp0/E;->b:I

    .line 247
    .line 248
    add-int v0, v0, v24

    .line 249
    .line 250
    if-le v0, v10, :cond_6

    .line 251
    .line 252
    :cond_5
    move-object/from16 v17, v3

    .line 253
    .line 254
    move-object/from16 v30, v4

    .line 255
    .line 256
    move/from16 v31, v7

    .line 257
    .line 258
    move/from16 v32, v8

    .line 259
    .line 260
    const/4 v7, 0x4

    .line 261
    goto/16 :goto_9

    .line 262
    .line 263
    :cond_6
    const/16 v24, 0xac

    .line 264
    .line 265
    const/16 v25, 0x87

    .line 266
    .line 267
    const/16 v29, 0x81

    .line 268
    .line 269
    move-object/from16 v30, v4

    .line 270
    .line 271
    const/4 v4, 0x5

    .line 272
    if-ne v9, v4, :cond_b

    .line 273
    .line 274
    invoke-virtual/range {p1 .. p1}, Lp0/E;->B()J

    .line 275
    .line 276
    .line 277
    move-result-wide v31

    .line 278
    const-wide/32 v33, 0x41432d33

    .line 279
    .line 280
    .line 281
    cmp-long v4, v31, v33

    .line 282
    .line 283
    if-nez v4, :cond_7

    .line 284
    .line 285
    const/16 v23, 0x81

    .line 286
    .line 287
    goto :goto_5

    .line 288
    :cond_7
    const-wide/32 v33, 0x45414333

    .line 289
    .line 290
    .line 291
    cmp-long v4, v31, v33

    .line 292
    .line 293
    if-nez v4, :cond_8

    .line 294
    .line 295
    const/16 v23, 0x87

    .line 296
    .line 297
    goto :goto_5

    .line 298
    :cond_8
    const-wide/32 v33, 0x41432d34

    .line 299
    .line 300
    .line 301
    cmp-long v4, v31, v33

    .line 302
    .line 303
    if-nez v4, :cond_9

    .line 304
    .line 305
    :goto_4
    const/16 v23, 0xac

    .line 306
    .line 307
    goto :goto_5

    .line 308
    :cond_9
    const-wide/32 v24, 0x48455643

    .line 309
    .line 310
    .line 311
    cmp-long v4, v31, v24

    .line 312
    .line 313
    if-nez v4, :cond_a

    .line 314
    .line 315
    const/16 v23, 0x24

    .line 316
    .line 317
    :cond_a
    :goto_5
    move-object/from16 v17, v3

    .line 318
    .line 319
    move/from16 v31, v7

    .line 320
    .line 321
    move/from16 v32, v8

    .line 322
    .line 323
    :goto_6
    const/4 v7, 0x4

    .line 324
    goto/16 :goto_8

    .line 325
    .line 326
    :cond_b
    const/16 v4, 0x6a

    .line 327
    .line 328
    if-ne v9, v4, :cond_c

    .line 329
    .line 330
    move-object/from16 v17, v3

    .line 331
    .line 332
    move/from16 v31, v7

    .line 333
    .line 334
    move/from16 v32, v8

    .line 335
    .line 336
    const/4 v7, 0x4

    .line 337
    const/16 v23, 0x81

    .line 338
    .line 339
    goto/16 :goto_8

    .line 340
    .line 341
    :cond_c
    const/16 v4, 0x7a

    .line 342
    .line 343
    if-ne v9, v4, :cond_d

    .line 344
    .line 345
    move-object/from16 v17, v3

    .line 346
    .line 347
    move/from16 v31, v7

    .line 348
    .line 349
    move/from16 v32, v8

    .line 350
    .line 351
    const/4 v7, 0x4

    .line 352
    const/16 v23, 0x87

    .line 353
    .line 354
    goto/16 :goto_8

    .line 355
    .line 356
    :cond_d
    const/16 v4, 0x7f

    .line 357
    .line 358
    if-ne v9, v4, :cond_10

    .line 359
    .line 360
    invoke-virtual/range {p1 .. p1}, Lp0/E;->z()I

    .line 361
    .line 362
    .line 363
    move-result v4

    .line 364
    const/16 v9, 0x15

    .line 365
    .line 366
    if-ne v4, v9, :cond_e

    .line 367
    .line 368
    goto :goto_4

    .line 369
    :cond_e
    const/16 v9, 0xe

    .line 370
    .line 371
    if-ne v4, v9, :cond_f

    .line 372
    .line 373
    const/16 v23, 0x88

    .line 374
    .line 375
    goto :goto_5

    .line 376
    :cond_f
    const/16 v9, 0x21

    .line 377
    .line 378
    if-ne v4, v9, :cond_a

    .line 379
    .line 380
    const/16 v23, 0x8b

    .line 381
    .line 382
    goto :goto_5

    .line 383
    :cond_10
    const/16 v4, 0x7b

    .line 384
    .line 385
    if-ne v9, v4, :cond_11

    .line 386
    .line 387
    const/16 v4, 0x8a

    .line 388
    .line 389
    move-object/from16 v17, v3

    .line 390
    .line 391
    move/from16 v31, v7

    .line 392
    .line 393
    move/from16 v32, v8

    .line 394
    .line 395
    const/4 v7, 0x4

    .line 396
    const/16 v23, 0x8a

    .line 397
    .line 398
    goto/16 :goto_8

    .line 399
    .line 400
    :cond_11
    const/16 v4, 0xa

    .line 401
    .line 402
    if-ne v9, v4, :cond_12

    .line 403
    .line 404
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 405
    .line 406
    const/4 v9, 0x3

    .line 407
    invoke-virtual {v1, v9, v4}, Lp0/E;->x(ILjava/nio/charset/Charset;)Ljava/lang/String;

    .line 408
    .line 409
    .line 410
    move-result-object v4

    .line 411
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 412
    .line 413
    .line 414
    move-result-object v4

    .line 415
    invoke-virtual/range {p1 .. p1}, Lp0/E;->z()I

    .line 416
    .line 417
    .line 418
    move-result v9

    .line 419
    move-object/from16 v17, v3

    .line 420
    .line 421
    move-object/from16 v26, v4

    .line 422
    .line 423
    move/from16 v31, v7

    .line 424
    .line 425
    move/from16 v32, v8

    .line 426
    .line 427
    move/from16 v27, v9

    .line 428
    .line 429
    goto :goto_6

    .line 430
    :cond_12
    const/16 v4, 0x59

    .line 431
    .line 432
    if-ne v9, v4, :cond_14

    .line 433
    .line 434
    new-instance v9, Ljava/util/ArrayList;

    .line 435
    .line 436
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 437
    .line 438
    .line 439
    :goto_7
    iget v4, v1, Lp0/E;->b:I

    .line 440
    .line 441
    if-ge v4, v0, :cond_13

    .line 442
    .line 443
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 444
    .line 445
    move/from16 v31, v7

    .line 446
    .line 447
    const/4 v7, 0x3

    .line 448
    invoke-virtual {v1, v7, v4}, Lp0/E;->x(ILjava/nio/charset/Charset;)Ljava/lang/String;

    .line 449
    .line 450
    .line 451
    move-result-object v4

    .line 452
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 453
    .line 454
    .line 455
    move-result-object v4

    .line 456
    invoke-virtual/range {p1 .. p1}, Lp0/E;->z()I

    .line 457
    .line 458
    .line 459
    move-object/from16 v17, v3

    .line 460
    .line 461
    const/4 v7, 0x4

    .line 462
    new-array v3, v7, [B

    .line 463
    .line 464
    move/from16 v32, v8

    .line 465
    .line 466
    const/4 v8, 0x0

    .line 467
    invoke-virtual {v1, v8, v3, v7}, Lp0/E;->j(I[BI)V

    .line 468
    .line 469
    .line 470
    new-instance v8, LA1/G;

    .line 471
    .line 472
    invoke-direct {v8, v4, v3}, LA1/G;-><init>(Ljava/lang/String;[B)V

    .line 473
    .line 474
    .line 475
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 476
    .line 477
    .line 478
    move-object/from16 v3, v17

    .line 479
    .line 480
    move/from16 v7, v31

    .line 481
    .line 482
    move/from16 v8, v32

    .line 483
    .line 484
    goto :goto_7

    .line 485
    :cond_13
    move-object/from16 v17, v3

    .line 486
    .line 487
    move/from16 v31, v7

    .line 488
    .line 489
    move/from16 v32, v8

    .line 490
    .line 491
    const/4 v7, 0x4

    .line 492
    move-object/from16 v28, v9

    .line 493
    .line 494
    const/16 v23, 0x59

    .line 495
    .line 496
    goto :goto_8

    .line 497
    :cond_14
    move-object/from16 v17, v3

    .line 498
    .line 499
    move/from16 v31, v7

    .line 500
    .line 501
    move/from16 v32, v8

    .line 502
    .line 503
    const/4 v7, 0x4

    .line 504
    const/16 v3, 0x6f

    .line 505
    .line 506
    if-ne v9, v3, :cond_15

    .line 507
    .line 508
    const/16 v3, 0x101

    .line 509
    .line 510
    const/16 v23, 0x101

    .line 511
    .line 512
    :cond_15
    :goto_8
    iget v3, v1, Lp0/E;->b:I

    .line 513
    .line 514
    sub-int/2addr v0, v3

    .line 515
    invoke-virtual {v1, v0}, Lp0/E;->M(I)V

    .line 516
    .line 517
    .line 518
    move-object/from16 v0, p0

    .line 519
    .line 520
    move-object/from16 v3, v17

    .line 521
    .line 522
    move-object/from16 v4, v30

    .line 523
    .line 524
    move/from16 v7, v31

    .line 525
    .line 526
    move/from16 v8, v32

    .line 527
    .line 528
    goto/16 :goto_3

    .line 529
    .line 530
    :goto_9
    invoke-virtual {v1, v10}, Lp0/E;->L(I)V

    .line 531
    .line 532
    .line 533
    new-instance v0, LA1/H;

    .line 534
    .line 535
    iget-object v3, v1, Lp0/E;->a:[B

    .line 536
    .line 537
    invoke-static {v3, v6, v10}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 538
    .line 539
    .line 540
    move-result-object v29

    .line 541
    move-object/from16 v24, v0

    .line 542
    .line 543
    move/from16 v25, v23

    .line 544
    .line 545
    invoke-direct/range {v24 .. v29}, LA1/H;-><init>(ILjava/lang/String;ILjava/util/ArrayList;[B)V

    .line 546
    .line 547
    .line 548
    const/4 v3, 0x6

    .line 549
    if-eq v5, v3, :cond_16

    .line 550
    .line 551
    const/4 v3, 0x5

    .line 552
    if-ne v5, v3, :cond_17

    .line 553
    .line 554
    :cond_16
    move/from16 v5, v23

    .line 555
    .line 556
    :cond_17
    add-int/lit8 v16, v16, 0x5

    .line 557
    .line 558
    sub-int v12, v12, v16

    .line 559
    .line 560
    const/4 v3, 0x2

    .line 561
    if-ne v14, v3, :cond_18

    .line 562
    .line 563
    move v4, v5

    .line 564
    goto :goto_a

    .line 565
    :cond_18
    move/from16 v4, v32

    .line 566
    .line 567
    :goto_a
    invoke-virtual {v15, v4}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 568
    .line 569
    .line 570
    move-result v6

    .line 571
    if-eqz v6, :cond_19

    .line 572
    .line 573
    move-object/from16 v3, v17

    .line 574
    .line 575
    const/16 v6, 0x15

    .line 576
    .line 577
    goto :goto_d

    .line 578
    :cond_19
    const/16 v6, 0x15

    .line 579
    .line 580
    if-ne v14, v3, :cond_1a

    .line 581
    .line 582
    if-ne v5, v6, :cond_1a

    .line 583
    .line 584
    iget-object v0, v2, LA1/F;->r:LA1/J;

    .line 585
    .line 586
    goto :goto_b

    .line 587
    :cond_1a
    invoke-virtual {v13, v5, v0}, LA1/g;->b(ILA1/H;)LA1/J;

    .line 588
    .line 589
    .line 590
    move-result-object v0

    .line 591
    :goto_b
    if-ne v14, v3, :cond_1c

    .line 592
    .line 593
    const/16 v3, 0x2000

    .line 594
    .line 595
    invoke-virtual {v11, v4, v3}, Landroid/util/SparseIntArray;->get(II)I

    .line 596
    .line 597
    .line 598
    move-result v5

    .line 599
    move/from16 v3, v32

    .line 600
    .line 601
    if-ge v3, v5, :cond_1b

    .line 602
    .line 603
    goto :goto_c

    .line 604
    :cond_1b
    move-object/from16 v3, v17

    .line 605
    .line 606
    goto :goto_d

    .line 607
    :cond_1c
    move/from16 v3, v32

    .line 608
    .line 609
    :goto_c
    invoke-virtual {v11, v4, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 610
    .line 611
    .line 612
    move-object/from16 v3, v17

    .line 613
    .line 614
    invoke-virtual {v3, v4, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 615
    .line 616
    .line 617
    :goto_d
    move-object/from16 v0, p0

    .line 618
    .line 619
    move-object/from16 v9, v22

    .line 620
    .line 621
    move-object/from16 v4, v30

    .line 622
    .line 623
    move/from16 v7, v31

    .line 624
    .line 625
    const/16 v5, 0x15

    .line 626
    .line 627
    const/4 v6, 0x0

    .line 628
    const/4 v8, 0x3

    .line 629
    const/16 v10, 0xd

    .line 630
    .line 631
    goto/16 :goto_2

    .line 632
    .line 633
    :cond_1d
    move-object/from16 v30, v4

    .line 634
    .line 635
    move/from16 v31, v7

    .line 636
    .line 637
    invoke-virtual {v11}, Landroid/util/SparseIntArray;->size()I

    .line 638
    .line 639
    .line 640
    move-result v0

    .line 641
    const/4 v8, 0x0

    .line 642
    :goto_e
    iget-object v1, v2, LA1/F;->h:Landroid/util/SparseArray;

    .line 643
    .line 644
    if-ge v8, v0, :cond_20

    .line 645
    .line 646
    invoke-virtual {v11, v8}, Landroid/util/SparseIntArray;->keyAt(I)I

    .line 647
    .line 648
    .line 649
    move-result v4

    .line 650
    invoke-virtual {v11, v8}, Landroid/util/SparseIntArray;->valueAt(I)I

    .line 651
    .line 652
    .line 653
    move-result v5

    .line 654
    const/4 v6, 0x1

    .line 655
    invoke-virtual {v15, v4, v6}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 656
    .line 657
    .line 658
    iget-object v7, v2, LA1/F;->j:Landroid/util/SparseBooleanArray;

    .line 659
    .line 660
    invoke-virtual {v7, v5, v6}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 661
    .line 662
    .line 663
    invoke-virtual {v3, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 664
    .line 665
    .line 666
    move-result-object v6

    .line 667
    check-cast v6, LA1/J;

    .line 668
    .line 669
    if-eqz v6, :cond_1f

    .line 670
    .line 671
    iget-object v7, v2, LA1/F;->r:LA1/J;

    .line 672
    .line 673
    if-eq v6, v7, :cond_1e

    .line 674
    .line 675
    iget-object v7, v2, LA1/F;->m:LW0/u;

    .line 676
    .line 677
    new-instance v9, LA1/I;

    .line 678
    .line 679
    move/from16 v12, v31

    .line 680
    .line 681
    const/4 v10, 0x0

    .line 682
    const/16 v13, 0x2000

    .line 683
    .line 684
    invoke-direct {v9, v12, v4, v13, v10}, LA1/I;-><init>(IIII)V

    .line 685
    .line 686
    .line 687
    move-object/from16 v4, v30

    .line 688
    .line 689
    invoke-interface {v6, v4, v7, v9}, LA1/J;->d(Lp0/J;LW0/u;LA1/I;)V

    .line 690
    .line 691
    .line 692
    goto :goto_f

    .line 693
    :cond_1e
    move-object/from16 v4, v30

    .line 694
    .line 695
    move/from16 v12, v31

    .line 696
    .line 697
    const/16 v13, 0x2000

    .line 698
    .line 699
    :goto_f
    invoke-virtual {v1, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 700
    .line 701
    .line 702
    goto :goto_10

    .line 703
    :cond_1f
    move-object/from16 v4, v30

    .line 704
    .line 705
    move/from16 v12, v31

    .line 706
    .line 707
    const/16 v13, 0x2000

    .line 708
    .line 709
    :goto_10
    add-int/lit8 v8, v8, 0x1

    .line 710
    .line 711
    move-object/from16 v30, v4

    .line 712
    .line 713
    move/from16 v31, v12

    .line 714
    .line 715
    goto :goto_e

    .line 716
    :cond_20
    const/4 v5, 0x2

    .line 717
    if-ne v14, v5, :cond_22

    .line 718
    .line 719
    iget-boolean v0, v2, LA1/F;->o:Z

    .line 720
    .line 721
    if-nez v0, :cond_21

    .line 722
    .line 723
    iget-object v0, v2, LA1/F;->m:LW0/u;

    .line 724
    .line 725
    invoke-interface {v0}, LW0/u;->j()V

    .line 726
    .line 727
    .line 728
    const/4 v0, 0x0

    .line 729
    iput v0, v2, LA1/F;->n:I

    .line 730
    .line 731
    const/4 v3, 0x1

    .line 732
    iput-boolean v3, v2, LA1/F;->o:Z

    .line 733
    .line 734
    :cond_21
    move-object/from16 v4, p0

    .line 735
    .line 736
    goto :goto_12

    .line 737
    :cond_22
    move-object/from16 v4, p0

    .line 738
    .line 739
    const/4 v0, 0x0

    .line 740
    const/4 v3, 0x1

    .line 741
    iget v5, v4, LA1/E;->J:I

    .line 742
    .line 743
    invoke-virtual {v1, v5}, Landroid/util/SparseArray;->remove(I)V

    .line 744
    .line 745
    .line 746
    if-ne v14, v3, :cond_23

    .line 747
    .line 748
    const/4 v6, 0x0

    .line 749
    goto :goto_11

    .line 750
    :cond_23
    iget v0, v2, LA1/F;->n:I

    .line 751
    .line 752
    add-int/lit8 v6, v0, -0x1

    .line 753
    .line 754
    :goto_11
    iput v6, v2, LA1/F;->n:I

    .line 755
    .line 756
    if-nez v6, :cond_24

    .line 757
    .line 758
    iget-object v0, v2, LA1/F;->m:LW0/u;

    .line 759
    .line 760
    invoke-interface {v0}, LW0/u;->j()V

    .line 761
    .line 762
    .line 763
    iput-boolean v3, v2, LA1/F;->o:Z

    .line 764
    .line 765
    :cond_24
    :goto_12
    return-void
.end method

.method public final d(Lp0/J;LW0/u;LA1/I;)V
    .locals 0

    .line 1
    return-void
.end method
