.class public abstract Lcom/google/android/gms/internal/atv_ads_framework/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Map;
.implements Ljava/io/Serializable;


# instance fields
.field public final synthetic G:I

.field public transient H:Ljava/util/AbstractCollection;

.field public transient I:Ljava/util/AbstractCollection;

.field public transient J:Ljava/util/AbstractCollection;


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/atv_ads_framework/q;->G:I

    return-void
.end method

.method public static d(Ljava/util/Set;)V
    .locals 16

    .line 1
    const/4 v0, -0x1

    .line 2
    const/4 v1, 0x3

    .line 3
    const/4 v3, 0x0

    .line 4
    const/4 v4, 0x1

    .line 5
    move-object/from16 v5, p0

    .line 6
    .line 7
    instance-of v6, v5, Ljava/util/Collection;

    .line 8
    .line 9
    if-eqz v6, :cond_0

    .line 10
    .line 11
    invoke-interface/range {p0 .. p0}, Ljava/util/Collection;->size()I

    .line 12
    .line 13
    .line 14
    move-result v7

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v7, 0x4

    .line 17
    :goto_0
    add-int/2addr v7, v7

    .line 18
    new-array v8, v7, [Ljava/lang/Object;

    .line 19
    .line 20
    if-eqz v6, :cond_1

    .line 21
    .line 22
    invoke-interface/range {p0 .. p0}, Ljava/util/Collection;->size()I

    .line 23
    .line 24
    .line 25
    move-result v6

    .line 26
    add-int/2addr v6, v6

    .line 27
    if-le v6, v7, :cond_1

    .line 28
    .line 29
    invoke-static {v7, v6}, Lcom/google/android/gms/internal/ads/oA;->a(II)I

    .line 30
    .line 31
    .line 32
    move-result v6

    .line 33
    invoke-static {v8, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v8

    .line 37
    :cond_1
    invoke-interface/range {p0 .. p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 38
    .line 39
    .line 40
    move-result-object v5

    .line 41
    const/4 v6, 0x0

    .line 42
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 43
    .line 44
    .line 45
    move-result v7

    .line 46
    if-eqz v7, :cond_5

    .line 47
    .line 48
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v7

    .line 52
    check-cast v7, Ljava/util/Map$Entry;

    .line 53
    .line 54
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v9

    .line 58
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v7

    .line 62
    add-int/lit8 v10, v6, 0x1

    .line 63
    .line 64
    array-length v11, v8

    .line 65
    add-int v12, v10, v10

    .line 66
    .line 67
    if-le v12, v11, :cond_2

    .line 68
    .line 69
    invoke-static {v11, v12}, Lcom/google/android/gms/internal/ads/oA;->a(II)I

    .line 70
    .line 71
    .line 72
    move-result v11

    .line 73
    invoke-static {v8, v11}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v8

    .line 77
    :cond_2
    if-eqz v9, :cond_4

    .line 78
    .line 79
    if-eqz v7, :cond_3

    .line 80
    .line 81
    add-int/2addr v6, v6

    .line 82
    aput-object v9, v8, v6

    .line 83
    .line 84
    add-int/2addr v6, v4

    .line 85
    aput-object v7, v8, v6

    .line 86
    .line 87
    move v6, v10

    .line 88
    goto :goto_1

    .line 89
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    .line 90
    .line 91
    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    const-string v2, "null value in entry: "

    .line 96
    .line 97
    const-string v3, "=null"

    .line 98
    .line 99
    invoke-static {v2, v1, v3}, La/r;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    throw v0

    .line 107
    :cond_4
    new-instance v0, Ljava/lang/NullPointerException;

    .line 108
    .line 109
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    const-string v2, "null key in entry: null="

    .line 114
    .line 115
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    throw v0

    .line 123
    :cond_5
    if-nez v6, :cond_7

    .line 124
    .line 125
    :cond_6
    :goto_2
    const/4 v5, 0x0

    .line 126
    goto/16 :goto_f

    .line 127
    .line 128
    :cond_7
    if-ne v6, v4, :cond_8

    .line 129
    .line 130
    aget-object v0, v8, v3

    .line 131
    .line 132
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 133
    .line 134
    .line 135
    aget-object v0, v8, v4

    .line 136
    .line 137
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 138
    .line 139
    .line 140
    goto :goto_2

    .line 141
    :cond_8
    array-length v7, v8

    .line 142
    shr-int/2addr v7, v4

    .line 143
    invoke-static {v6, v7}, Lcom/google/android/gms/internal/ads/Cw;->I0(II)V

    .line 144
    .line 145
    .line 146
    invoke-static {v6}, Lcom/google/android/gms/internal/cast/I;->n(I)I

    .line 147
    .line 148
    .line 149
    move-result v7

    .line 150
    if-ne v6, v4, :cond_9

    .line 151
    .line 152
    aget-object v0, v8, v3

    .line 153
    .line 154
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 155
    .line 156
    .line 157
    aget-object v0, v8, v4

    .line 158
    .line 159
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 160
    .line 161
    .line 162
    const/4 v0, 0x2

    .line 163
    const/4 v7, 0x0

    .line 164
    goto/16 :goto_e

    .line 165
    .line 166
    :cond_9
    add-int/lit8 v9, v7, -0x1

    .line 167
    .line 168
    const/16 v10, 0x80

    .line 169
    .line 170
    if-gt v7, v10, :cond_f

    .line 171
    .line 172
    new-array v7, v7, [B

    .line 173
    .line 174
    invoke-static {v7, v0}, Ljava/util/Arrays;->fill([BB)V

    .line 175
    .line 176
    .line 177
    const/4 v0, 0x0

    .line 178
    const/4 v10, 0x0

    .line 179
    const/4 v11, 0x0

    .line 180
    :goto_3
    if-ge v0, v6, :cond_d

    .line 181
    .line 182
    add-int v12, v10, v10

    .line 183
    .line 184
    add-int v13, v0, v0

    .line 185
    .line 186
    aget-object v14, v8, v13

    .line 187
    .line 188
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 189
    .line 190
    .line 191
    xor-int/2addr v13, v4

    .line 192
    aget-object v13, v8, v13

    .line 193
    .line 194
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 195
    .line 196
    .line 197
    invoke-virtual {v14}, Ljava/lang/Object;->hashCode()I

    .line 198
    .line 199
    .line 200
    move-result v15

    .line 201
    invoke-static {v15}, Lcom/google/android/gms/internal/ads/Cw;->s(I)I

    .line 202
    .line 203
    .line 204
    move-result v15

    .line 205
    :goto_4
    and-int/2addr v15, v9

    .line 206
    aget-byte v5, v7, v15

    .line 207
    .line 208
    const/16 v2, 0xff

    .line 209
    .line 210
    and-int/2addr v5, v2

    .line 211
    if-ne v5, v2, :cond_b

    .line 212
    .line 213
    int-to-byte v2, v12

    .line 214
    aput-byte v2, v7, v15

    .line 215
    .line 216
    if-ge v10, v0, :cond_a

    .line 217
    .line 218
    aput-object v14, v8, v12

    .line 219
    .line 220
    xor-int/lit8 v2, v12, 0x1

    .line 221
    .line 222
    aput-object v13, v8, v2

    .line 223
    .line 224
    :cond_a
    add-int/2addr v10, v4

    .line 225
    goto :goto_5

    .line 226
    :cond_b
    aget-object v2, v8, v5

    .line 227
    .line 228
    invoke-virtual {v14, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 229
    .line 230
    .line 231
    move-result v2

    .line 232
    if-eqz v2, :cond_c

    .line 233
    .line 234
    xor-int/lit8 v2, v5, 0x1

    .line 235
    .line 236
    new-instance v11, Lcom/google/android/gms/internal/cast/H;

    .line 237
    .line 238
    aget-object v5, v8, v2

    .line 239
    .line 240
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 241
    .line 242
    .line 243
    invoke-direct {v11, v14, v13, v5}, Lcom/google/android/gms/internal/cast/H;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 244
    .line 245
    .line 246
    aput-object v13, v8, v2

    .line 247
    .line 248
    :goto_5
    add-int/2addr v0, v4

    .line 249
    goto :goto_3

    .line 250
    :cond_c
    add-int/2addr v15, v4

    .line 251
    goto :goto_4

    .line 252
    :cond_d
    if-ne v10, v6, :cond_e

    .line 253
    .line 254
    :goto_6
    const/4 v0, 0x2

    .line 255
    goto/16 :goto_e

    .line 256
    .line 257
    :cond_e
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 258
    .line 259
    .line 260
    move-result-object v0

    .line 261
    new-array v1, v1, [Ljava/lang/Object;

    .line 262
    .line 263
    aput-object v7, v1, v3

    .line 264
    .line 265
    aput-object v0, v1, v4

    .line 266
    .line 267
    const/4 v0, 0x2

    .line 268
    aput-object v11, v1, v0

    .line 269
    .line 270
    :goto_7
    move-object v7, v1

    .line 271
    goto/16 :goto_e

    .line 272
    .line 273
    :cond_f
    const v2, 0x8000

    .line 274
    .line 275
    .line 276
    if-gt v7, v2, :cond_15

    .line 277
    .line 278
    new-array v7, v7, [S

    .line 279
    .line 280
    invoke-static {v7, v0}, Ljava/util/Arrays;->fill([SS)V

    .line 281
    .line 282
    .line 283
    const/4 v0, 0x0

    .line 284
    const/4 v2, 0x0

    .line 285
    const/4 v5, 0x0

    .line 286
    :goto_8
    if-ge v0, v6, :cond_13

    .line 287
    .line 288
    add-int v10, v2, v2

    .line 289
    .line 290
    add-int v11, v0, v0

    .line 291
    .line 292
    aget-object v12, v8, v11

    .line 293
    .line 294
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 295
    .line 296
    .line 297
    xor-int/2addr v11, v4

    .line 298
    aget-object v11, v8, v11

    .line 299
    .line 300
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 301
    .line 302
    .line 303
    invoke-virtual {v12}, Ljava/lang/Object;->hashCode()I

    .line 304
    .line 305
    .line 306
    move-result v13

    .line 307
    invoke-static {v13}, Lcom/google/android/gms/internal/ads/Cw;->s(I)I

    .line 308
    .line 309
    .line 310
    move-result v13

    .line 311
    :goto_9
    and-int/2addr v13, v9

    .line 312
    aget-short v14, v7, v13

    .line 313
    .line 314
    int-to-char v14, v14

    .line 315
    const v15, 0xffff

    .line 316
    .line 317
    .line 318
    if-ne v14, v15, :cond_11

    .line 319
    .line 320
    int-to-short v14, v10

    .line 321
    aput-short v14, v7, v13

    .line 322
    .line 323
    if-ge v2, v0, :cond_10

    .line 324
    .line 325
    aput-object v12, v8, v10

    .line 326
    .line 327
    xor-int/2addr v10, v4

    .line 328
    aput-object v11, v8, v10

    .line 329
    .line 330
    :cond_10
    add-int/2addr v2, v4

    .line 331
    goto :goto_a

    .line 332
    :cond_11
    aget-object v15, v8, v14

    .line 333
    .line 334
    invoke-virtual {v12, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 335
    .line 336
    .line 337
    move-result v15

    .line 338
    if-eqz v15, :cond_12

    .line 339
    .line 340
    xor-int/lit8 v5, v14, 0x1

    .line 341
    .line 342
    new-instance v10, Lcom/google/android/gms/internal/cast/H;

    .line 343
    .line 344
    aget-object v13, v8, v5

    .line 345
    .line 346
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 347
    .line 348
    .line 349
    invoke-direct {v10, v12, v11, v13}, Lcom/google/android/gms/internal/cast/H;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 350
    .line 351
    .line 352
    aput-object v11, v8, v5

    .line 353
    .line 354
    move-object v5, v10

    .line 355
    :goto_a
    add-int/2addr v0, v4

    .line 356
    goto :goto_8

    .line 357
    :cond_12
    add-int/2addr v13, v4

    .line 358
    goto :goto_9

    .line 359
    :cond_13
    if-ne v2, v6, :cond_14

    .line 360
    .line 361
    goto :goto_6

    .line 362
    :cond_14
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 363
    .line 364
    .line 365
    move-result-object v0

    .line 366
    new-array v1, v1, [Ljava/lang/Object;

    .line 367
    .line 368
    aput-object v7, v1, v3

    .line 369
    .line 370
    aput-object v0, v1, v4

    .line 371
    .line 372
    const/4 v0, 0x2

    .line 373
    aput-object v5, v1, v0

    .line 374
    .line 375
    goto :goto_7

    .line 376
    :cond_15
    new-array v7, v7, [I

    .line 377
    .line 378
    invoke-static {v7, v0}, Ljava/util/Arrays;->fill([II)V

    .line 379
    .line 380
    .line 381
    const/4 v2, 0x0

    .line 382
    const/4 v5, 0x0

    .line 383
    const/4 v10, 0x0

    .line 384
    :goto_b
    if-ge v2, v6, :cond_19

    .line 385
    .line 386
    add-int v11, v5, v5

    .line 387
    .line 388
    add-int v12, v2, v2

    .line 389
    .line 390
    aget-object v13, v8, v12

    .line 391
    .line 392
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 393
    .line 394
    .line 395
    xor-int/2addr v12, v4

    .line 396
    aget-object v12, v8, v12

    .line 397
    .line 398
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 399
    .line 400
    .line 401
    invoke-virtual {v13}, Ljava/lang/Object;->hashCode()I

    .line 402
    .line 403
    .line 404
    move-result v14

    .line 405
    invoke-static {v14}, Lcom/google/android/gms/internal/ads/Cw;->s(I)I

    .line 406
    .line 407
    .line 408
    move-result v14

    .line 409
    :goto_c
    and-int/2addr v14, v9

    .line 410
    aget v15, v7, v14

    .line 411
    .line 412
    if-ne v15, v0, :cond_17

    .line 413
    .line 414
    aput v11, v7, v14

    .line 415
    .line 416
    if-ge v5, v2, :cond_16

    .line 417
    .line 418
    aput-object v13, v8, v11

    .line 419
    .line 420
    xor-int/2addr v11, v4

    .line 421
    aput-object v12, v8, v11

    .line 422
    .line 423
    :cond_16
    add-int/2addr v5, v4

    .line 424
    goto :goto_d

    .line 425
    :cond_17
    aget-object v0, v8, v15

    .line 426
    .line 427
    invoke-virtual {v13, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 428
    .line 429
    .line 430
    move-result v0

    .line 431
    if-eqz v0, :cond_18

    .line 432
    .line 433
    xor-int/lit8 v0, v15, 0x1

    .line 434
    .line 435
    new-instance v10, Lcom/google/android/gms/internal/cast/H;

    .line 436
    .line 437
    aget-object v11, v8, v0

    .line 438
    .line 439
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 440
    .line 441
    .line 442
    invoke-direct {v10, v13, v12, v11}, Lcom/google/android/gms/internal/cast/H;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 443
    .line 444
    .line 445
    aput-object v12, v8, v0

    .line 446
    .line 447
    :goto_d
    add-int/2addr v2, v4

    .line 448
    const/4 v0, -0x1

    .line 449
    goto :goto_b

    .line 450
    :cond_18
    add-int/2addr v14, v4

    .line 451
    const/4 v0, -0x1

    .line 452
    goto :goto_c

    .line 453
    :cond_19
    if-ne v5, v6, :cond_1a

    .line 454
    .line 455
    goto/16 :goto_6

    .line 456
    .line 457
    :cond_1a
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 458
    .line 459
    .line 460
    move-result-object v0

    .line 461
    new-array v1, v1, [Ljava/lang/Object;

    .line 462
    .line 463
    aput-object v7, v1, v3

    .line 464
    .line 465
    aput-object v0, v1, v4

    .line 466
    .line 467
    const/4 v0, 0x2

    .line 468
    aput-object v10, v1, v0

    .line 469
    .line 470
    goto/16 :goto_7

    .line 471
    .line 472
    :goto_e
    instance-of v1, v7, [Ljava/lang/Object;

    .line 473
    .line 474
    if-eqz v1, :cond_6

    .line 475
    .line 476
    check-cast v7, [Ljava/lang/Object;

    .line 477
    .line 478
    aget-object v0, v7, v0

    .line 479
    .line 480
    move-object v5, v0

    .line 481
    check-cast v5, Lcom/google/android/gms/internal/cast/H;

    .line 482
    .line 483
    aget-object v0, v7, v3

    .line 484
    .line 485
    aget-object v0, v7, v4

    .line 486
    .line 487
    check-cast v0, Ljava/lang/Integer;

    .line 488
    .line 489
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 490
    .line 491
    .line 492
    move-result v0

    .line 493
    add-int/2addr v0, v0

    .line 494
    invoke-static {v8, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 495
    .line 496
    .line 497
    :goto_f
    if-nez v5, :cond_1b

    .line 498
    .line 499
    return-void

    .line 500
    :cond_1b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 501
    .line 502
    iget-object v1, v5, Lcom/google/android/gms/internal/cast/H;->a:Ljava/lang/Object;

    .line 503
    .line 504
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 505
    .line 506
    .line 507
    move-result-object v2

    .line 508
    iget-object v3, v5, Lcom/google/android/gms/internal/cast/H;->b:Ljava/lang/Object;

    .line 509
    .line 510
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 511
    .line 512
    .line 513
    move-result-object v3

    .line 514
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 515
    .line 516
    .line 517
    move-result-object v1

    .line 518
    iget-object v4, v5, Lcom/google/android/gms/internal/cast/H;->c:Ljava/lang/Object;

    .line 519
    .line 520
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 521
    .line 522
    .line 523
    move-result-object v4

    .line 524
    const-string v5, "Multiple entries with same key: "

    .line 525
    .line 526
    const-string v6, "="

    .line 527
    .line 528
    const-string v7, " and "

    .line 529
    .line 530
    invoke-static {v5, v2, v6, v3, v7}, Lcom/google/protobuf/U2;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 531
    .line 532
    .line 533
    move-result-object v2

    .line 534
    invoke-static {v2, v1, v6, v4}, Lcom/google/protobuf/U2;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 535
    .line 536
    .line 537
    move-result-object v1

    .line 538
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 539
    .line 540
    .line 541
    throw v0
.end method


# virtual methods
.method public abstract a()Lcom/google/android/gms/internal/atv_ads_framework/x;
.end method

.method public abstract b()Lcom/google/android/gms/internal/cast/P;
.end method

.method public abstract c()Lcom/google/android/gms/internal/atv_ads_framework/v;
.end method

.method public final clear()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/atv_ads_framework/q;->G:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 9
    .line 10
    .line 11
    throw v0

    .line 12
    :pswitch_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 13
    .line 14
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 15
    .line 16
    .line 17
    throw v0

    .line 18
    nop

    .line 19
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final containsKey(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/atv_ads_framework/q;->G:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/atv_ads_framework/q;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    :cond_0
    return v1

    .line 16
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/atv_ads_framework/q;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    if-eqz p1, :cond_1

    .line 21
    .line 22
    const/4 v1, 0x1

    .line 23
    :cond_1
    return v1

    .line 24
    nop

    .line 25
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final containsValue(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/atv_ads_framework/q;->G:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/atv_ads_framework/q;->J:Ljava/util/AbstractCollection;

    .line 7
    .line 8
    check-cast v0, Lcom/google/android/gms/internal/cast/D;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/google/android/gms/internal/atv_ads_framework/q;->b()Lcom/google/android/gms/internal/cast/P;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Lcom/google/android/gms/internal/atv_ads_framework/q;->J:Ljava/util/AbstractCollection;

    .line 17
    .line 18
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/cast/D;->contains(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    return p1

    .line 23
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/gms/internal/atv_ads_framework/q;->J:Ljava/util/AbstractCollection;

    .line 24
    .line 25
    check-cast v0, Lcom/google/android/gms/internal/atv_ads_framework/l;

    .line 26
    .line 27
    if-nez v0, :cond_1

    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/google/android/gms/internal/atv_ads_framework/q;->a()Lcom/google/android/gms/internal/atv_ads_framework/x;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iput-object v0, p0, Lcom/google/android/gms/internal/atv_ads_framework/q;->J:Ljava/util/AbstractCollection;

    .line 34
    .line 35
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/atv_ads_framework/l;->contains(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    return p1

    .line 40
    nop

    .line 41
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public abstract e()Lcom/google/android/gms/internal/atv_ads_framework/w;
.end method

.method public final entrySet()Ljava/util/Set;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/atv_ads_framework/q;->G:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/atv_ads_framework/q;->H:Ljava/util/AbstractCollection;

    .line 7
    .line 8
    check-cast v0, Lcom/google/android/gms/internal/cast/I;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/google/android/gms/internal/atv_ads_framework/q;->f()Lcom/google/android/gms/internal/cast/M;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Lcom/google/android/gms/internal/atv_ads_framework/q;->H:Ljava/util/AbstractCollection;

    .line 17
    .line 18
    :cond_0
    return-object v0

    .line 19
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/gms/internal/atv_ads_framework/q;->H:Ljava/util/AbstractCollection;

    .line 20
    .line 21
    check-cast v0, Lcom/google/android/gms/internal/atv_ads_framework/r;

    .line 22
    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/google/android/gms/internal/atv_ads_framework/q;->c()Lcom/google/android/gms/internal/atv_ads_framework/v;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iput-object v0, p0, Lcom/google/android/gms/internal/atv_ads_framework/q;->H:Ljava/util/AbstractCollection;

    .line 30
    .line 31
    :cond_1
    return-object v0

    .line 32
    nop

    .line 33
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/atv_ads_framework/q;->G:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    if-ne p0, p1, :cond_0

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    instance-of v0, p1, Ljava/util/Map;

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    check-cast p1, Ljava/util/Map;

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/google/android/gms/internal/atv_ads_framework/q;->entrySet()Ljava/util/Set;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    :goto_0
    return v1

    .line 32
    :pswitch_0
    if-ne p0, p1, :cond_2

    .line 33
    .line 34
    const/4 v1, 0x1

    .line 35
    goto :goto_1

    .line 36
    :cond_2
    instance-of v0, p1, Ljava/util/Map;

    .line 37
    .line 38
    if-nez v0, :cond_3

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_3
    check-cast p1, Ljava/util/Map;

    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/google/android/gms/internal/atv_ads_framework/q;->entrySet()Ljava/util/Set;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    :goto_1
    return v1

    .line 56
    nop

    .line 57
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public abstract f()Lcom/google/android/gms/internal/cast/M;
.end method

.method public abstract g()Lcom/google/android/gms/internal/cast/O;
.end method

.method public abstract get(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public final getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/atv_ads_framework/q;->G:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/atv_ads_framework/q;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    move-object p2, p1

    .line 13
    :cond_0
    return-object p2

    .line 14
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/atv_ads_framework/q;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    if-eqz p1, :cond_1

    .line 19
    .line 20
    move-object p2, p1

    .line 21
    :cond_1
    return-object p2

    .line 22
    nop

    .line 23
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final hashCode()I
    .locals 4

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/atv_ads_framework/q;->G:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/atv_ads_framework/q;->H:Ljava/util/AbstractCollection;

    .line 8
    .line 9
    check-cast v0, Lcom/google/android/gms/internal/cast/I;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/google/android/gms/internal/atv_ads_framework/q;->f()Lcom/google/android/gms/internal/cast/M;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Lcom/google/android/gms/internal/atv_ads_framework/q;->H:Ljava/util/AbstractCollection;

    .line 18
    .line 19
    :cond_0
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const/4 v2, 0x0

    .line 24
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    if-eqz v3, :cond_2

    .line 29
    .line 30
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    if-eqz v3, :cond_1

    .line 35
    .line 36
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    goto :goto_1

    .line 41
    :cond_1
    const/4 v3, 0x0

    .line 42
    :goto_1
    add-int/2addr v2, v3

    .line 43
    goto :goto_0

    .line 44
    :cond_2
    return v2

    .line 45
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/gms/internal/atv_ads_framework/q;->H:Ljava/util/AbstractCollection;

    .line 46
    .line 47
    check-cast v0, Lcom/google/android/gms/internal/atv_ads_framework/r;

    .line 48
    .line 49
    if-nez v0, :cond_3

    .line 50
    .line 51
    invoke-virtual {p0}, Lcom/google/android/gms/internal/atv_ads_framework/q;->c()Lcom/google/android/gms/internal/atv_ads_framework/v;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    iput-object v0, p0, Lcom/google/android/gms/internal/atv_ads_framework/q;->H:Ljava/util/AbstractCollection;

    .line 56
    .line 57
    :cond_3
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    const/4 v2, 0x0

    .line 62
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    if-eqz v3, :cond_5

    .line 67
    .line 68
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    if-eqz v3, :cond_4

    .line 73
    .line 74
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    .line 75
    .line 76
    .line 77
    move-result v3

    .line 78
    goto :goto_3

    .line 79
    :cond_4
    const/4 v3, 0x0

    .line 80
    :goto_3
    add-int/2addr v2, v3

    .line 81
    goto :goto_2

    .line 82
    :cond_5
    return v2

    .line 83
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final isEmpty()Z
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/atv_ads_framework/q;->G:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    invoke-interface {p0}, Ljava/util/Map;->size()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    :cond_0
    return v1

    .line 16
    :pswitch_0
    invoke-interface {p0}, Ljava/util/Map;->size()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    const/4 v1, 0x1

    .line 23
    :cond_1
    return v1

    .line 24
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final bridge synthetic keySet()Ljava/util/Set;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/atv_ads_framework/q;->G:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/atv_ads_framework/q;->I:Ljava/util/AbstractCollection;

    .line 7
    .line 8
    check-cast v0, Lcom/google/android/gms/internal/cast/I;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/google/android/gms/internal/atv_ads_framework/q;->g()Lcom/google/android/gms/internal/cast/O;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Lcom/google/android/gms/internal/atv_ads_framework/q;->I:Ljava/util/AbstractCollection;

    .line 17
    .line 18
    :cond_0
    return-object v0

    .line 19
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/gms/internal/atv_ads_framework/q;->I:Ljava/util/AbstractCollection;

    .line 20
    .line 21
    check-cast v0, Lcom/google/android/gms/internal/atv_ads_framework/r;

    .line 22
    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/google/android/gms/internal/atv_ads_framework/q;->e()Lcom/google/android/gms/internal/atv_ads_framework/w;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iput-object v0, p0, Lcom/google/android/gms/internal/atv_ads_framework/q;->I:Ljava/util/AbstractCollection;

    .line 30
    .line 31
    :cond_1
    return-object v0

    .line 32
    nop

    .line 33
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget p1, p0, Lcom/google/android/gms/internal/atv_ads_framework/q;->G:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 7
    .line 8
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 9
    .line 10
    .line 11
    throw p1

    .line 12
    :pswitch_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 13
    .line 14
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 15
    .line 16
    .line 17
    throw p1

    .line 18
    nop

    .line 19
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final putAll(Ljava/util/Map;)V
    .locals 0

    .line 1
    iget p1, p0, Lcom/google/android/gms/internal/atv_ads_framework/q;->G:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 7
    .line 8
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 9
    .line 10
    .line 11
    throw p1

    .line 12
    :pswitch_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 13
    .line 14
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 15
    .line 16
    .line 17
    throw p1

    .line 18
    nop

    .line 19
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget p1, p0, Lcom/google/android/gms/internal/atv_ads_framework/q;->G:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 7
    .line 8
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 9
    .line 10
    .line 11
    throw p1

    .line 12
    :pswitch_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 13
    .line 14
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 15
    .line 16
    .line 17
    throw p1

    .line 18
    nop

    .line 19
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final toString()Ljava/lang/String;
    .locals 12

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/atv_ads_framework/q;->G:I

    .line 2
    .line 3
    const-string v1, "size cannot be negative but was: "

    .line 4
    .line 5
    const/16 v2, 0x7d

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    const/16 v4, 0x3d

    .line 9
    .line 10
    const-string v5, ", "

    .line 11
    .line 12
    const/4 v6, 0x1

    .line 13
    const/16 v7, 0x7b

    .line 14
    .line 15
    const-wide/32 v8, 0x40000000

    .line 16
    .line 17
    .line 18
    const-wide/16 v10, 0x8

    .line 19
    .line 20
    packed-switch v0, :pswitch_data_0

    .line 21
    .line 22
    .line 23
    invoke-interface {p0}, Ljava/util/Map;->size()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-ltz v0, :cond_2

    .line 28
    .line 29
    int-to-long v0, v0

    .line 30
    mul-long v0, v0, v10

    .line 31
    .line 32
    new-instance v10, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    invoke-static {v0, v1, v8, v9}, Ljava/lang/Math;->min(JJ)J

    .line 35
    .line 36
    .line 37
    move-result-wide v0

    .line 38
    long-to-int v1, v0

    .line 39
    invoke-direct {v10, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Lcom/google/android/gms/internal/atv_ads_framework/q;->entrySet()Ljava/util/Set;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    if-eqz v1, :cond_1

    .line 58
    .line 59
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    check-cast v1, Ljava/util/Map$Entry;

    .line 64
    .line 65
    if-nez v6, :cond_0

    .line 66
    .line 67
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    :cond_0
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v6

    .line 74
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    const/4 v6, 0x0

    .line 88
    goto :goto_0

    .line 89
    :cond_1
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    return-object v0

    .line 97
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 98
    .line 99
    invoke-static {v1, v0}, La/r;->f(Ljava/lang/String;I)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    throw v2

    .line 107
    :pswitch_0
    invoke-interface {p0}, Ljava/util/Map;->size()I

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    if-ltz v0, :cond_5

    .line 112
    .line 113
    int-to-long v0, v0

    .line 114
    mul-long v0, v0, v10

    .line 115
    .line 116
    new-instance v10, Ljava/lang/StringBuilder;

    .line 117
    .line 118
    invoke-static {v0, v1, v8, v9}, Ljava/lang/Math;->min(JJ)J

    .line 119
    .line 120
    .line 121
    move-result-wide v0

    .line 122
    long-to-int v1, v0

    .line 123
    invoke-direct {v10, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {p0}, Lcom/google/android/gms/internal/atv_ads_framework/q;->entrySet()Ljava/util/Set;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 138
    .line 139
    .line 140
    move-result v1

    .line 141
    if-eqz v1, :cond_4

    .line 142
    .line 143
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object v1

    .line 147
    check-cast v1, Ljava/util/Map$Entry;

    .line 148
    .line 149
    if-nez v6, :cond_3

    .line 150
    .line 151
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    :cond_3
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object v6

    .line 158
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object v1

    .line 168
    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    const/4 v6, 0x0

    .line 172
    goto :goto_1

    .line 173
    :cond_4
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    return-object v0

    .line 181
    :cond_5
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 182
    .line 183
    invoke-static {v1, v0}, La/r;->f(Ljava/lang/String;I)Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    throw v2

    .line 191
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final values()Ljava/util/Collection;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/atv_ads_framework/q;->G:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/atv_ads_framework/q;->J:Ljava/util/AbstractCollection;

    .line 7
    .line 8
    check-cast v0, Lcom/google/android/gms/internal/cast/D;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/google/android/gms/internal/atv_ads_framework/q;->b()Lcom/google/android/gms/internal/cast/P;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Lcom/google/android/gms/internal/atv_ads_framework/q;->J:Ljava/util/AbstractCollection;

    .line 17
    .line 18
    :cond_0
    return-object v0

    .line 19
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/gms/internal/atv_ads_framework/q;->J:Ljava/util/AbstractCollection;

    .line 20
    .line 21
    check-cast v0, Lcom/google/android/gms/internal/atv_ads_framework/l;

    .line 22
    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/google/android/gms/internal/atv_ads_framework/q;->a()Lcom/google/android/gms/internal/atv_ads_framework/x;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iput-object v0, p0, Lcom/google/android/gms/internal/atv_ads_framework/q;->J:Ljava/util/AbstractCollection;

    .line 30
    .line 31
    :cond_1
    return-object v0

    .line 32
    nop

    .line 33
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
