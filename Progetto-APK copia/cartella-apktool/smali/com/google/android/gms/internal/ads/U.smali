.class public final Lcom/google/android/gms/internal/ads/U;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/List;

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:I

.field public final g:I

.field public final h:I

.field public final i:F

.field public final j:I

.field public final k:Ljava/lang/String;

.field public final l:Lcom/google/android/gms/internal/ads/Ex;


# direct methods
.method public constructor <init>(Ljava/util/List;IIIIIIIFILjava/lang/String;Lcom/google/android/gms/internal/ads/Ex;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/U;->a:Ljava/util/List;

    .line 5
    .line 6
    iput p2, p0, Lcom/google/android/gms/internal/ads/U;->b:I

    .line 7
    .line 8
    iput p3, p0, Lcom/google/android/gms/internal/ads/U;->c:I

    .line 9
    .line 10
    iput p4, p0, Lcom/google/android/gms/internal/ads/U;->d:I

    .line 11
    .line 12
    iput p5, p0, Lcom/google/android/gms/internal/ads/U;->e:I

    .line 13
    .line 14
    iput p6, p0, Lcom/google/android/gms/internal/ads/U;->f:I

    .line 15
    .line 16
    iput p7, p0, Lcom/google/android/gms/internal/ads/U;->g:I

    .line 17
    .line 18
    iput p8, p0, Lcom/google/android/gms/internal/ads/U;->h:I

    .line 19
    .line 20
    iput p9, p0, Lcom/google/android/gms/internal/ads/U;->i:F

    .line 21
    .line 22
    iput p10, p0, Lcom/google/android/gms/internal/ads/U;->j:I

    .line 23
    .line 24
    iput-object p11, p0, Lcom/google/android/gms/internal/ads/U;->k:Ljava/lang/String;

    .line 25
    .line 26
    iput-object p12, p0, Lcom/google/android/gms/internal/ads/U;->l:Lcom/google/android/gms/internal/ads/Ex;

    .line 27
    .line 28
    return-void
.end method

.method public static a(Lcom/google/android/gms/internal/ads/jr;ZLcom/google/android/gms/internal/ads/Ex;)Lcom/google/android/gms/internal/ads/U;
    .locals 35

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    const/4 v2, 0x4

    .line 6
    const/4 v3, 0x1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    :try_start_0
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/jr;->k(I)V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catch_0
    move-exception v0

    .line 14
    const/4 v2, 0x1

    .line 15
    goto/16 :goto_16

    .line 16
    .line 17
    :cond_0
    const/16 v4, 0x15

    .line 18
    .line 19
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/jr;->k(I)V

    .line 20
    .line 21
    .line 22
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/jr;->w()I

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    and-int/lit8 v4, v4, 0x3

    .line 27
    .line 28
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/jr;->w()I

    .line 29
    .line 30
    .line 31
    move-result v5

    .line 32
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/jr;->p()I

    .line 33
    .line 34
    .line 35
    move-result v6

    .line 36
    const/4 v7, 0x0

    .line 37
    const/4 v8, 0x0

    .line 38
    const/4 v9, 0x0

    .line 39
    :goto_1
    if-ge v8, v5, :cond_2

    .line 40
    .line 41
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/jr;->k(I)V

    .line 42
    .line 43
    .line 44
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/jr;->A()I

    .line 45
    .line 46
    .line 47
    move-result v10

    .line 48
    const/4 v11, 0x0

    .line 49
    :goto_2
    if-ge v11, v10, :cond_1

    .line 50
    .line 51
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/jr;->A()I

    .line 52
    .line 53
    .line 54
    move-result v12

    .line 55
    add-int/lit8 v13, v12, 0x4

    .line 56
    .line 57
    add-int/2addr v9, v13

    .line 58
    invoke-virtual {v0, v12}, Lcom/google/android/gms/internal/ads/jr;->k(I)V

    .line 59
    .line 60
    .line 61
    add-int/lit8 v11, v11, 0x1

    .line 62
    .line 63
    goto :goto_2

    .line 64
    :cond_1
    add-int/lit8 v8, v8, 0x1

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_2
    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/ads/jr;->j(I)V

    .line 68
    .line 69
    .line 70
    new-array v6, v9, [B

    .line 71
    .line 72
    const/high16 v11, 0x3f800000    # 1.0f

    .line 73
    .line 74
    move-object/from16 v24, p2

    .line 75
    .line 76
    const/4 v11, 0x0

    .line 77
    const/4 v12, 0x0

    .line 78
    const/4 v15, -0x1

    .line 79
    const/16 v16, -0x1

    .line 80
    .line 81
    const/16 v17, -0x1

    .line 82
    .line 83
    const/16 v18, -0x1

    .line 84
    .line 85
    const/16 v19, -0x1

    .line 86
    .line 87
    const/16 v20, -0x1

    .line 88
    .line 89
    const/high16 v21, 0x3f800000    # 1.0f

    .line 90
    .line 91
    const/16 v22, -0x1

    .line 92
    .line 93
    const/16 v23, 0x0

    .line 94
    .line 95
    :goto_3
    if-ge v11, v5, :cond_1c

    .line 96
    .line 97
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/jr;->w()I

    .line 98
    .line 99
    .line 100
    move-result v13

    .line 101
    const/16 v14, 0x3f

    .line 102
    .line 103
    and-int/2addr v13, v14

    .line 104
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/jr;->A()I

    .line 105
    .line 106
    .line 107
    move-result v3

    .line 108
    move-object/from16 v10, v24

    .line 109
    .line 110
    const/4 v14, 0x0

    .line 111
    :goto_4
    if-ge v14, v3, :cond_1b

    .line 112
    .line 113
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/jr;->A()I

    .line 114
    .line 115
    .line 116
    move-result v8

    .line 117
    move/from16 v25, v3

    .line 118
    .line 119
    sget-object v3, Lcom/google/android/gms/internal/ads/sy;->a:[B

    .line 120
    .line 121
    invoke-static {v3, v7, v6, v12, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 122
    .line 123
    .line 124
    add-int/lit8 v3, v12, 0x4

    .line 125
    .line 126
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/jr;->l()[B

    .line 127
    .line 128
    .line 129
    move-result-object v2

    .line 130
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/jr;->p()I

    .line 131
    .line 132
    .line 133
    move-result v7

    .line 134
    invoke-static {v2, v7, v6, v3, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 135
    .line 136
    .line 137
    const/16 v2, 0x20

    .line 138
    .line 139
    if-ne v13, v2, :cond_3

    .line 140
    .line 141
    if-nez v14, :cond_4

    .line 142
    .line 143
    add-int v2, v3, v8

    .line 144
    .line 145
    invoke-static {v3, v6, v2}, Lcom/google/android/gms/internal/ads/sy;->d(I[BI)Lcom/google/android/gms/internal/ads/Ex;

    .line 146
    .line 147
    .line 148
    move-result-object v10

    .line 149
    move/from16 v26, v5

    .line 150
    .line 151
    move/from16 v33, v13

    .line 152
    .line 153
    const/16 v2, 0x3f

    .line 154
    .line 155
    const/4 v13, 0x0

    .line 156
    const/4 v14, 0x0

    .line 157
    const/16 v24, 0x0

    .line 158
    .line 159
    goto/16 :goto_13

    .line 160
    .line 161
    :cond_3
    move v2, v13

    .line 162
    :cond_4
    const/16 v7, 0x21

    .line 163
    .line 164
    move/from16 v26, v5

    .line 165
    .line 166
    const/16 v5, 0x8

    .line 167
    .line 168
    if-ne v2, v7, :cond_8

    .line 169
    .line 170
    if-nez v14, :cond_6

    .line 171
    .line 172
    add-int v2, v3, v8

    .line 173
    .line 174
    invoke-static {v6, v3, v2, v10}, Lcom/google/android/gms/internal/ads/sy;->c([BIILcom/google/android/gms/internal/ads/Ex;)Lcom/google/android/gms/internal/ads/Sw;

    .line 175
    .line 176
    .line 177
    move-result-object v2

    .line 178
    iget v7, v2, Lcom/google/android/gms/internal/ads/Sw;->b:I

    .line 179
    .line 180
    add-int/2addr v7, v5

    .line 181
    iget v12, v2, Lcom/google/android/gms/internal/ads/Sw;->c:I

    .line 182
    .line 183
    add-int/2addr v12, v5

    .line 184
    iget v5, v2, Lcom/google/android/gms/internal/ads/Sw;->h:I

    .line 185
    .line 186
    iget v15, v2, Lcom/google/android/gms/internal/ads/Sw;->i:I

    .line 187
    .line 188
    move/from16 v16, v5

    .line 189
    .line 190
    iget v5, v2, Lcom/google/android/gms/internal/ads/Sw;->j:I

    .line 191
    .line 192
    move/from16 v17, v5

    .line 193
    .line 194
    iget v5, v2, Lcom/google/android/gms/internal/ads/Sw;->f:F

    .line 195
    .line 196
    move/from16 v18, v5

    .line 197
    .line 198
    iget v5, v2, Lcom/google/android/gms/internal/ads/Sw;->g:I

    .line 199
    .line 200
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/Sw;->a:Lcom/google/android/gms/internal/ads/Wv;

    .line 201
    .line 202
    if-eqz v2, :cond_5

    .line 203
    .line 204
    move/from16 v19, v5

    .line 205
    .line 206
    iget v5, v2, Lcom/google/android/gms/internal/ads/Wv;->a:I

    .line 207
    .line 208
    move/from16 v21, v7

    .line 209
    .line 210
    iget-boolean v7, v2, Lcom/google/android/gms/internal/ads/Wv;->b:Z

    .line 211
    .line 212
    move/from16 v22, v12

    .line 213
    .line 214
    iget v12, v2, Lcom/google/android/gms/internal/ads/Wv;->c:I

    .line 215
    .line 216
    move/from16 v33, v13

    .line 217
    .line 218
    iget v13, v2, Lcom/google/android/gms/internal/ads/Wv;->d:I

    .line 219
    .line 220
    move/from16 v24, v15

    .line 221
    .line 222
    iget-object v15, v2, Lcom/google/android/gms/internal/ads/Wv;->e:[I

    .line 223
    .line 224
    iget v2, v2, Lcom/google/android/gms/internal/ads/Wv;->f:I

    .line 225
    .line 226
    move/from16 v27, v5

    .line 227
    .line 228
    move/from16 v28, v7

    .line 229
    .line 230
    move/from16 v29, v12

    .line 231
    .line 232
    move/from16 v30, v13

    .line 233
    .line 234
    move-object/from16 v31, v15

    .line 235
    .line 236
    move/from16 v32, v2

    .line 237
    .line 238
    invoke-static/range {v27 .. v32}, Lcom/google/android/gms/internal/ads/el;->a(IZII[II)Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v2

    .line 242
    move-object/from16 v23, v2

    .line 243
    .line 244
    :goto_5
    move/from16 v15, v21

    .line 245
    .line 246
    const/16 v2, 0x3f

    .line 247
    .line 248
    const/4 v13, 0x0

    .line 249
    move/from16 v21, v18

    .line 250
    .line 251
    move/from16 v18, v24

    .line 252
    .line 253
    move/from16 v24, v14

    .line 254
    .line 255
    const/4 v14, 0x0

    .line 256
    move/from16 v34, v17

    .line 257
    .line 258
    move/from16 v17, v16

    .line 259
    .line 260
    move/from16 v16, v22

    .line 261
    .line 262
    move/from16 v22, v19

    .line 263
    .line 264
    move/from16 v19, v34

    .line 265
    .line 266
    goto/16 :goto_13

    .line 267
    .line 268
    :cond_5
    move/from16 v19, v5

    .line 269
    .line 270
    move/from16 v21, v7

    .line 271
    .line 272
    move/from16 v22, v12

    .line 273
    .line 274
    move/from16 v33, v13

    .line 275
    .line 276
    move/from16 v24, v15

    .line 277
    .line 278
    goto :goto_5

    .line 279
    :cond_6
    move/from16 v33, v13

    .line 280
    .line 281
    :cond_7
    move/from16 v24, v14

    .line 282
    .line 283
    move/from16 v27, v15

    .line 284
    .line 285
    const/16 v2, 0x3f

    .line 286
    .line 287
    const/4 v13, 0x0

    .line 288
    const/4 v14, 0x0

    .line 289
    goto/16 :goto_12

    .line 290
    .line 291
    :cond_8
    move/from16 v33, v13

    .line 292
    .line 293
    const/16 v7, 0x27

    .line 294
    .line 295
    if-ne v2, v7, :cond_7

    .line 296
    .line 297
    if-nez v14, :cond_7

    .line 298
    .line 299
    add-int v2, v3, v8

    .line 300
    .line 301
    add-int/lit8 v12, v12, 0x6

    .line 302
    .line 303
    const/4 v7, -0x1

    .line 304
    add-int/2addr v2, v7

    .line 305
    :goto_6
    aget-byte v13, v6, v2

    .line 306
    .line 307
    if-nez v13, :cond_a

    .line 308
    .line 309
    if-le v2, v12, :cond_9

    .line 310
    .line 311
    add-int/lit8 v2, v2, -0x1

    .line 312
    .line 313
    goto :goto_6

    .line 314
    :cond_9
    :goto_7
    move/from16 v24, v14

    .line 315
    .line 316
    move/from16 v27, v15

    .line 317
    .line 318
    :goto_8
    const/16 v2, 0x3f

    .line 319
    .line 320
    const/4 v5, 0x0

    .line 321
    const/4 v14, 0x0

    .line 322
    goto/16 :goto_11

    .line 323
    .line 324
    :cond_a
    if-eqz v13, :cond_18

    .line 325
    .line 326
    if-gt v2, v12, :cond_b

    .line 327
    .line 328
    goto :goto_7

    .line 329
    :cond_b
    new-instance v13, Lcom/google/android/gms/internal/ads/f0;

    .line 330
    .line 331
    add-int/lit8 v2, v2, 0x1

    .line 332
    .line 333
    invoke-direct {v13, v6, v12, v2}, Lcom/google/android/gms/internal/ads/f0;-><init>([BII)V

    .line 334
    .line 335
    .line 336
    :goto_9
    const/16 v2, 0x10

    .line 337
    .line 338
    invoke-virtual {v13, v2}, Lcom/google/android/gms/internal/ads/f0;->n(I)Z

    .line 339
    .line 340
    .line 341
    move-result v2

    .line 342
    if-eqz v2, :cond_18

    .line 343
    .line 344
    invoke-virtual {v13, v5}, Lcom/google/android/gms/internal/ads/f0;->b(I)I

    .line 345
    .line 346
    .line 347
    move-result v2

    .line 348
    const/4 v12, 0x0

    .line 349
    :goto_a
    const/16 v7, 0xff

    .line 350
    .line 351
    if-ne v2, v7, :cond_c

    .line 352
    .line 353
    add-int/lit16 v12, v12, 0xff

    .line 354
    .line 355
    invoke-virtual {v13, v5}, Lcom/google/android/gms/internal/ads/f0;->b(I)I

    .line 356
    .line 357
    .line 358
    move-result v2

    .line 359
    goto :goto_a

    .line 360
    :cond_c
    add-int/2addr v12, v2

    .line 361
    invoke-virtual {v13, v5}, Lcom/google/android/gms/internal/ads/f0;->b(I)I

    .line 362
    .line 363
    .line 364
    move-result v2

    .line 365
    const/4 v5, 0x0

    .line 366
    :goto_b
    if-ne v2, v7, :cond_d

    .line 367
    .line 368
    add-int/lit16 v5, v5, 0xff

    .line 369
    .line 370
    const/16 v2, 0x8

    .line 371
    .line 372
    invoke-virtual {v13, v2}, Lcom/google/android/gms/internal/ads/f0;->b(I)I

    .line 373
    .line 374
    .line 375
    move-result v24

    .line 376
    move/from16 v2, v24

    .line 377
    .line 378
    goto :goto_b

    .line 379
    :cond_d
    const/16 v7, 0x8

    .line 380
    .line 381
    add-int/2addr v5, v2

    .line 382
    if-eqz v5, :cond_18

    .line 383
    .line 384
    invoke-virtual {v13, v5}, Lcom/google/android/gms/internal/ads/f0;->n(I)Z

    .line 385
    .line 386
    .line 387
    move-result v2

    .line 388
    if-nez v2, :cond_e

    .line 389
    .line 390
    goto :goto_7

    .line 391
    :cond_e
    const/16 v2, 0xb0

    .line 392
    .line 393
    if-ne v12, v2, :cond_17

    .line 394
    .line 395
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/f0;->e()I

    .line 396
    .line 397
    .line 398
    move-result v2

    .line 399
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/f0;->p()Z

    .line 400
    .line 401
    .line 402
    move-result v5

    .line 403
    if-eqz v5, :cond_f

    .line 404
    .line 405
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/f0;->e()I

    .line 406
    .line 407
    .line 408
    move-result v7

    .line 409
    goto :goto_c

    .line 410
    :cond_f
    const/4 v7, 0x0

    .line 411
    :goto_c
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/f0;->e()I

    .line 412
    .line 413
    .line 414
    move-result v12

    .line 415
    move/from16 v24, v14

    .line 416
    .line 417
    move/from16 v27, v15

    .line 418
    .line 419
    const/4 v14, 0x0

    .line 420
    const/4 v15, -0x1

    .line 421
    :goto_d
    if-gt v14, v12, :cond_16

    .line 422
    .line 423
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/f0;->e()I

    .line 424
    .line 425
    .line 426
    move-result v15

    .line 427
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/f0;->e()I

    .line 428
    .line 429
    .line 430
    move/from16 v28, v12

    .line 431
    .line 432
    const/4 v12, 0x6

    .line 433
    move/from16 v29, v15

    .line 434
    .line 435
    invoke-virtual {v13, v12}, Lcom/google/android/gms/internal/ads/f0;->b(I)I

    .line 436
    .line 437
    .line 438
    move-result v15

    .line 439
    const/16 v12, 0x3f

    .line 440
    .line 441
    if-ne v15, v12, :cond_10

    .line 442
    .line 443
    :goto_e
    goto :goto_8

    .line 444
    :cond_10
    if-nez v15, :cond_11

    .line 445
    .line 446
    add-int/lit8 v12, v2, -0x1e

    .line 447
    .line 448
    const/4 v15, 0x0

    .line 449
    invoke-static {v15, v12}, Ljava/lang/Math;->max(II)I

    .line 450
    .line 451
    .line 452
    move-result v12

    .line 453
    goto :goto_f

    .line 454
    :cond_11
    const/4 v12, 0x0

    .line 455
    add-int/2addr v15, v2

    .line 456
    add-int/lit8 v15, v15, -0x1f

    .line 457
    .line 458
    invoke-static {v12, v15}, Ljava/lang/Math;->max(II)I

    .line 459
    .line 460
    .line 461
    move-result v15

    .line 462
    move v12, v15

    .line 463
    :goto_f
    invoke-virtual {v13, v12}, Lcom/google/android/gms/internal/ads/f0;->b(I)I

    .line 464
    .line 465
    .line 466
    if-eqz v5, :cond_14

    .line 467
    .line 468
    const/4 v12, 0x6

    .line 469
    invoke-virtual {v13, v12}, Lcom/google/android/gms/internal/ads/f0;->b(I)I

    .line 470
    .line 471
    .line 472
    move-result v12

    .line 473
    const/16 v15, 0x3f

    .line 474
    .line 475
    if-ne v12, v15, :cond_12

    .line 476
    .line 477
    goto :goto_e

    .line 478
    :cond_12
    if-nez v12, :cond_13

    .line 479
    .line 480
    add-int/lit8 v12, v7, -0x1e

    .line 481
    .line 482
    const/4 v15, 0x0

    .line 483
    invoke-static {v15, v12}, Ljava/lang/Math;->max(II)I

    .line 484
    .line 485
    .line 486
    move-result v12

    .line 487
    goto :goto_10

    .line 488
    :cond_13
    const/4 v15, 0x0

    .line 489
    add-int/2addr v12, v7

    .line 490
    add-int/lit8 v12, v12, -0x1f

    .line 491
    .line 492
    invoke-static {v15, v12}, Ljava/lang/Math;->max(II)I

    .line 493
    .line 494
    .line 495
    move-result v12

    .line 496
    :goto_10
    invoke-virtual {v13, v12}, Lcom/google/android/gms/internal/ads/f0;->b(I)I

    .line 497
    .line 498
    .line 499
    :cond_14
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/f0;->p()Z

    .line 500
    .line 501
    .line 502
    move-result v12

    .line 503
    if-eqz v12, :cond_15

    .line 504
    .line 505
    const/16 v12, 0xa

    .line 506
    .line 507
    invoke-virtual {v13, v12}, Lcom/google/android/gms/internal/ads/f0;->m(I)V

    .line 508
    .line 509
    .line 510
    :cond_15
    add-int/lit8 v14, v14, 0x1

    .line 511
    .line 512
    move/from16 v12, v28

    .line 513
    .line 514
    move/from16 v15, v29

    .line 515
    .line 516
    goto :goto_d

    .line 517
    :cond_16
    const/16 v2, 0x3f

    .line 518
    .line 519
    new-instance v5, Landroidx/leanback/widget/j;

    .line 520
    .line 521
    const/4 v14, 0x0

    .line 522
    invoke-direct {v5, v15, v14}, Landroidx/leanback/widget/j;-><init>(ILjava/lang/Object;)V

    .line 523
    .line 524
    .line 525
    goto :goto_11

    .line 526
    :cond_17
    const/16 v5, 0x8

    .line 527
    .line 528
    const/4 v7, -0x1

    .line 529
    goto/16 :goto_9

    .line 530
    .line 531
    :cond_18
    move/from16 v24, v14

    .line 532
    .line 533
    move/from16 v27, v15

    .line 534
    .line 535
    const/16 v2, 0x3f

    .line 536
    .line 537
    const/4 v14, 0x0

    .line 538
    move-object v5, v14

    .line 539
    :goto_11
    if-eqz v5, :cond_1a

    .line 540
    .line 541
    if-eqz v10, :cond_1a

    .line 542
    .line 543
    iget v5, v5, Landroidx/leanback/widget/j;->H:I

    .line 544
    .line 545
    iget-object v7, v10, Lcom/google/android/gms/internal/ads/Ex;->a:Lcom/google/android/gms/internal/ads/uA;

    .line 546
    .line 547
    const/4 v13, 0x0

    .line 548
    invoke-interface {v7, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 549
    .line 550
    .line 551
    move-result-object v7

    .line 552
    check-cast v7, Lcom/google/android/gms/internal/ads/Fv;

    .line 553
    .line 554
    iget v7, v7, Lcom/google/android/gms/internal/ads/Fv;->b:I

    .line 555
    .line 556
    if-ne v5, v7, :cond_19

    .line 557
    .line 558
    move/from16 v15, v27

    .line 559
    .line 560
    const/16 v20, 0x4

    .line 561
    .line 562
    goto :goto_13

    .line 563
    :cond_19
    const/4 v5, 0x5

    .line 564
    move/from16 v15, v27

    .line 565
    .line 566
    const/16 v20, 0x5

    .line 567
    .line 568
    goto :goto_13

    .line 569
    :cond_1a
    const/4 v13, 0x0

    .line 570
    :goto_12
    move/from16 v15, v27

    .line 571
    .line 572
    :goto_13
    add-int v12, v3, v8

    .line 573
    .line 574
    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/jr;->k(I)V

    .line 575
    .line 576
    .line 577
    const/4 v3, 0x1

    .line 578
    add-int/lit8 v5, v24, 0x1

    .line 579
    .line 580
    move v14, v5

    .line 581
    move/from16 v3, v25

    .line 582
    .line 583
    move/from16 v5, v26

    .line 584
    .line 585
    move/from16 v13, v33

    .line 586
    .line 587
    const/4 v2, 0x4

    .line 588
    const/4 v7, 0x0

    .line 589
    goto/16 :goto_4

    .line 590
    .line 591
    :cond_1b
    move/from16 v26, v5

    .line 592
    .line 593
    move/from16 v27, v15

    .line 594
    .line 595
    const/4 v13, 0x0

    .line 596
    const/4 v14, 0x0

    .line 597
    add-int/lit8 v11, v11, 0x1

    .line 598
    .line 599
    move-object/from16 v24, v10

    .line 600
    .line 601
    const/4 v2, 0x4

    .line 602
    const/4 v3, 0x1

    .line 603
    const/4 v7, 0x0

    .line 604
    goto/16 :goto_3

    .line 605
    .line 606
    :cond_1c
    if-nez v9, :cond_1d

    .line 607
    .line 608
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 609
    .line 610
    .line 611
    move-result-object v0

    .line 612
    :goto_14
    move-object v13, v0

    .line 613
    goto :goto_15

    .line 614
    :cond_1d
    invoke-static {v6}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 615
    .line 616
    .line 617
    move-result-object v0

    .line 618
    goto :goto_14

    .line 619
    :goto_15
    new-instance v0, Lcom/google/android/gms/internal/ads/U;

    .line 620
    .line 621
    const/4 v2, 0x1

    .line 622
    add-int/lit8 v14, v4, 0x1

    .line 623
    .line 624
    move-object v12, v0

    .line 625
    invoke-direct/range {v12 .. v24}, Lcom/google/android/gms/internal/ads/U;-><init>(Ljava/util/List;IIIIIIIFILjava/lang/String;Lcom/google/android/gms/internal/ads/Ex;)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 626
    .line 627
    .line 628
    return-object v0

    .line 629
    :goto_16
    if-eq v2, v1, :cond_1e

    .line 630
    .line 631
    const-string v1, "HEVC config"

    .line 632
    .line 633
    goto :goto_17

    .line 634
    :cond_1e
    const-string v1, "L-HEVC config"

    .line 635
    .line 636
    :goto_17
    const-string v2, "Error parsing"

    .line 637
    .line 638
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 639
    .line 640
    .line 641
    move-result-object v1

    .line 642
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/Ka;->a(Ljava/lang/String;Ljava/lang/RuntimeException;)Lcom/google/android/gms/internal/ads/Ka;

    .line 643
    .line 644
    .line 645
    move-result-object v0

    .line 646
    throw v0
.end method
