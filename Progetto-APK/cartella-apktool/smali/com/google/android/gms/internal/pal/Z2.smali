.class public final Lcom/google/android/gms/internal/pal/Z2;
.super Lcom/google/android/gms/internal/pal/S2;
.source "SourceFile"


# static fields
.field public static final M:Lcom/google/android/gms/internal/pal/Z2;


# instance fields
.field public final transient J:Ljava/lang/Object;

.field public final transient K:[Ljava/lang/Object;

.field public final transient L:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/pal/Z2;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-direct {v0, v3, v2, v1}, Lcom/google/android/gms/internal/pal/Z2;-><init>(Ljava/lang/Object;[Ljava/lang/Object;I)V

    sput-object v0, Lcom/google/android/gms/internal/pal/Z2;->M:Lcom/google/android/gms/internal/pal/Z2;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;[Ljava/lang/Object;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/pal/Z2;->J:Ljava/lang/Object;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/pal/Z2;->K:[Ljava/lang/Object;

    .line 7
    .line 8
    iput p3, p0, Lcom/google/android/gms/internal/pal/Z2;->L:I

    .line 9
    .line 10
    return-void
.end method

.method public static b(I[Ljava/lang/Object;Lcom/google/android/gms/internal/pal/R2;)Lcom/google/android/gms/internal/pal/Z2;
    .locals 16

    .line 1
    move/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    const/4 v3, 0x3

    .line 8
    const/4 v4, -0x1

    .line 9
    const/4 v5, 0x2

    .line 10
    const/4 v6, 0x0

    .line 11
    const/4 v7, 0x1

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    sget-object v0, Lcom/google/android/gms/internal/pal/Z2;->M:Lcom/google/android/gms/internal/pal/Z2;

    .line 15
    .line 16
    return-object v0

    .line 17
    :cond_0
    const/4 v8, 0x0

    .line 18
    if-ne v0, v7, :cond_1

    .line 19
    .line 20
    aget-object v0, v1, v6

    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    aget-object v0, v1, v7

    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    new-instance v0, Lcom/google/android/gms/internal/pal/Z2;

    .line 31
    .line 32
    invoke-direct {v0, v8, v1, v7}, Lcom/google/android/gms/internal/pal/Z2;-><init>(Ljava/lang/Object;[Ljava/lang/Object;I)V

    .line 33
    .line 34
    .line 35
    return-object v0

    .line 36
    :cond_1
    array-length v9, v1

    .line 37
    shr-int/2addr v9, v7

    .line 38
    invoke-static {v0, v9}, Lcom/google/android/gms/internal/pal/y4;->J(II)V

    .line 39
    .line 40
    .line 41
    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    .line 42
    .line 43
    .line 44
    move-result v9

    .line 45
    const v10, 0x2ccccccc

    .line 46
    .line 47
    .line 48
    if-ge v9, v10, :cond_2

    .line 49
    .line 50
    add-int/lit8 v10, v9, -0x1

    .line 51
    .line 52
    invoke-static {v10}, Ljava/lang/Integer;->highestOneBit(I)I

    .line 53
    .line 54
    .line 55
    move-result v10

    .line 56
    :goto_0
    add-int/2addr v10, v10

    .line 57
    int-to-double v11, v10

    .line 58
    const-wide v13, 0x3fe6666666666666L    # 0.7

    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    mul-double v11, v11, v13

    .line 64
    .line 65
    int-to-double v13, v9

    .line 66
    cmpg-double v15, v11, v13

    .line 67
    .line 68
    if-gez v15, :cond_3

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_2
    const/high16 v10, 0x40000000    # 2.0f

    .line 72
    .line 73
    if-ge v9, v10, :cond_18

    .line 74
    .line 75
    :cond_3
    if-ne v0, v7, :cond_4

    .line 76
    .line 77
    aget-object v3, v1, v6

    .line 78
    .line 79
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 80
    .line 81
    .line 82
    aget-object v3, v1, v7

    .line 83
    .line 84
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 85
    .line 86
    .line 87
    :goto_1
    const/4 v3, 0x0

    .line 88
    const/4 v4, 0x2

    .line 89
    goto/16 :goto_d

    .line 90
    .line 91
    :cond_4
    add-int/lit8 v9, v10, -0x1

    .line 92
    .line 93
    const/16 v11, 0x80

    .line 94
    .line 95
    if-gt v10, v11, :cond_a

    .line 96
    .line 97
    new-array v10, v10, [B

    .line 98
    .line 99
    invoke-static {v10, v4}, Ljava/util/Arrays;->fill([BB)V

    .line 100
    .line 101
    .line 102
    const/4 v4, 0x0

    .line 103
    const/4 v11, 0x0

    .line 104
    :goto_2
    if-ge v4, v0, :cond_8

    .line 105
    .line 106
    add-int v12, v4, v4

    .line 107
    .line 108
    add-int v13, v11, v11

    .line 109
    .line 110
    aget-object v14, v1, v12

    .line 111
    .line 112
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 113
    .line 114
    .line 115
    xor-int/2addr v12, v7

    .line 116
    aget-object v12, v1, v12

    .line 117
    .line 118
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v14}, Ljava/lang/Object;->hashCode()I

    .line 122
    .line 123
    .line 124
    move-result v15

    .line 125
    invoke-static {v15}, Lcom/google/android/gms/internal/pal/y4;->b(I)I

    .line 126
    .line 127
    .line 128
    move-result v15

    .line 129
    :goto_3
    and-int/2addr v15, v9

    .line 130
    aget-byte v5, v10, v15

    .line 131
    .line 132
    const/16 v6, 0xff

    .line 133
    .line 134
    and-int/2addr v5, v6

    .line 135
    if-ne v5, v6, :cond_6

    .line 136
    .line 137
    int-to-byte v5, v13

    .line 138
    aput-byte v5, v10, v15

    .line 139
    .line 140
    if-ge v11, v4, :cond_5

    .line 141
    .line 142
    aput-object v14, v1, v13

    .line 143
    .line 144
    xor-int/lit8 v5, v13, 0x1

    .line 145
    .line 146
    aput-object v12, v1, v5

    .line 147
    .line 148
    :cond_5
    add-int/2addr v11, v7

    .line 149
    goto :goto_4

    .line 150
    :cond_6
    aget-object v6, v1, v5

    .line 151
    .line 152
    invoke-virtual {v14, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 153
    .line 154
    .line 155
    move-result v6

    .line 156
    if-eqz v6, :cond_7

    .line 157
    .line 158
    xor-int/2addr v5, v7

    .line 159
    new-instance v6, Lcom/google/android/gms/internal/pal/Q2;

    .line 160
    .line 161
    aget-object v8, v1, v5

    .line 162
    .line 163
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 164
    .line 165
    .line 166
    invoke-direct {v6, v14, v12, v8}, Lcom/google/android/gms/internal/pal/Q2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 167
    .line 168
    .line 169
    aput-object v12, v1, v5

    .line 170
    .line 171
    move-object v8, v6

    .line 172
    :goto_4
    add-int/2addr v4, v7

    .line 173
    const/4 v5, 0x2

    .line 174
    const/4 v6, 0x0

    .line 175
    goto :goto_2

    .line 176
    :cond_7
    add-int/2addr v15, v7

    .line 177
    const/4 v5, 0x2

    .line 178
    const/4 v6, 0x0

    .line 179
    goto :goto_3

    .line 180
    :cond_8
    if-ne v11, v0, :cond_9

    .line 181
    .line 182
    move-object v8, v10

    .line 183
    goto :goto_1

    .line 184
    :cond_9
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 185
    .line 186
    .line 187
    move-result-object v4

    .line 188
    new-array v3, v3, [Ljava/lang/Object;

    .line 189
    .line 190
    const/4 v5, 0x0

    .line 191
    aput-object v10, v3, v5

    .line 192
    .line 193
    aput-object v4, v3, v7

    .line 194
    .line 195
    const/4 v4, 0x2

    .line 196
    aput-object v8, v3, v4

    .line 197
    .line 198
    :goto_5
    move-object v8, v3

    .line 199
    const/4 v3, 0x0

    .line 200
    goto/16 :goto_d

    .line 201
    .line 202
    :cond_a
    const v5, 0x8000

    .line 203
    .line 204
    .line 205
    if-gt v10, v5, :cond_10

    .line 206
    .line 207
    new-array v5, v10, [S

    .line 208
    .line 209
    invoke-static {v5, v4}, Ljava/util/Arrays;->fill([SS)V

    .line 210
    .line 211
    .line 212
    const/4 v4, 0x0

    .line 213
    const/4 v6, 0x0

    .line 214
    :goto_6
    if-ge v4, v0, :cond_e

    .line 215
    .line 216
    add-int v10, v4, v4

    .line 217
    .line 218
    add-int v11, v6, v6

    .line 219
    .line 220
    aget-object v12, v1, v10

    .line 221
    .line 222
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 223
    .line 224
    .line 225
    xor-int/2addr v10, v7

    .line 226
    aget-object v10, v1, v10

    .line 227
    .line 228
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 229
    .line 230
    .line 231
    invoke-virtual {v12}, Ljava/lang/Object;->hashCode()I

    .line 232
    .line 233
    .line 234
    move-result v13

    .line 235
    invoke-static {v13}, Lcom/google/android/gms/internal/pal/y4;->b(I)I

    .line 236
    .line 237
    .line 238
    move-result v13

    .line 239
    :goto_7
    and-int/2addr v13, v9

    .line 240
    aget-short v14, v5, v13

    .line 241
    .line 242
    int-to-char v14, v14

    .line 243
    const v15, 0xffff

    .line 244
    .line 245
    .line 246
    if-ne v14, v15, :cond_c

    .line 247
    .line 248
    int-to-short v14, v11

    .line 249
    aput-short v14, v5, v13

    .line 250
    .line 251
    if-ge v6, v4, :cond_b

    .line 252
    .line 253
    aput-object v12, v1, v11

    .line 254
    .line 255
    xor-int/2addr v11, v7

    .line 256
    aput-object v10, v1, v11

    .line 257
    .line 258
    :cond_b
    add-int/2addr v6, v7

    .line 259
    goto :goto_8

    .line 260
    :cond_c
    aget-object v15, v1, v14

    .line 261
    .line 262
    invoke-virtual {v12, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 263
    .line 264
    .line 265
    move-result v15

    .line 266
    if-eqz v15, :cond_d

    .line 267
    .line 268
    xor-int/lit8 v8, v14, 0x1

    .line 269
    .line 270
    new-instance v11, Lcom/google/android/gms/internal/pal/Q2;

    .line 271
    .line 272
    aget-object v13, v1, v8

    .line 273
    .line 274
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 275
    .line 276
    .line 277
    invoke-direct {v11, v12, v10, v13}, Lcom/google/android/gms/internal/pal/Q2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 278
    .line 279
    .line 280
    aput-object v10, v1, v8

    .line 281
    .line 282
    move-object v8, v11

    .line 283
    :goto_8
    add-int/2addr v4, v7

    .line 284
    goto :goto_6

    .line 285
    :cond_d
    add-int/2addr v13, v7

    .line 286
    goto :goto_7

    .line 287
    :cond_e
    if-ne v6, v0, :cond_f

    .line 288
    .line 289
    :goto_9
    move-object v8, v5

    .line 290
    goto/16 :goto_1

    .line 291
    .line 292
    :cond_f
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 293
    .line 294
    .line 295
    move-result-object v4

    .line 296
    new-array v3, v3, [Ljava/lang/Object;

    .line 297
    .line 298
    const/4 v6, 0x0

    .line 299
    aput-object v5, v3, v6

    .line 300
    .line 301
    aput-object v4, v3, v7

    .line 302
    .line 303
    const/4 v4, 0x2

    .line 304
    aput-object v8, v3, v4

    .line 305
    .line 306
    goto :goto_5

    .line 307
    :cond_10
    new-array v5, v10, [I

    .line 308
    .line 309
    invoke-static {v5, v4}, Ljava/util/Arrays;->fill([II)V

    .line 310
    .line 311
    .line 312
    move-object v10, v8

    .line 313
    const/4 v6, 0x0

    .line 314
    const/4 v8, 0x0

    .line 315
    :goto_a
    if-ge v6, v0, :cond_14

    .line 316
    .line 317
    add-int v11, v6, v6

    .line 318
    .line 319
    add-int v12, v8, v8

    .line 320
    .line 321
    aget-object v13, v1, v11

    .line 322
    .line 323
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 324
    .line 325
    .line 326
    xor-int/2addr v11, v7

    .line 327
    aget-object v11, v1, v11

    .line 328
    .line 329
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 330
    .line 331
    .line 332
    invoke-virtual {v13}, Ljava/lang/Object;->hashCode()I

    .line 333
    .line 334
    .line 335
    move-result v14

    .line 336
    invoke-static {v14}, Lcom/google/android/gms/internal/pal/y4;->b(I)I

    .line 337
    .line 338
    .line 339
    move-result v14

    .line 340
    :goto_b
    and-int/2addr v14, v9

    .line 341
    aget v15, v5, v14

    .line 342
    .line 343
    if-ne v15, v4, :cond_12

    .line 344
    .line 345
    aput v12, v5, v14

    .line 346
    .line 347
    if-ge v8, v6, :cond_11

    .line 348
    .line 349
    aput-object v13, v1, v12

    .line 350
    .line 351
    xor-int/2addr v12, v7

    .line 352
    aput-object v11, v1, v12

    .line 353
    .line 354
    :cond_11
    add-int/2addr v8, v7

    .line 355
    goto :goto_c

    .line 356
    :cond_12
    aget-object v4, v1, v15

    .line 357
    .line 358
    invoke-virtual {v13, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 359
    .line 360
    .line 361
    move-result v4

    .line 362
    if-eqz v4, :cond_13

    .line 363
    .line 364
    xor-int/lit8 v4, v15, 0x1

    .line 365
    .line 366
    new-instance v10, Lcom/google/android/gms/internal/pal/Q2;

    .line 367
    .line 368
    aget-object v12, v1, v4

    .line 369
    .line 370
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 371
    .line 372
    .line 373
    invoke-direct {v10, v13, v11, v12}, Lcom/google/android/gms/internal/pal/Q2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 374
    .line 375
    .line 376
    aput-object v11, v1, v4

    .line 377
    .line 378
    :goto_c
    add-int/2addr v6, v7

    .line 379
    const/4 v4, -0x1

    .line 380
    goto :goto_a

    .line 381
    :cond_13
    add-int/2addr v14, v7

    .line 382
    const/4 v4, -0x1

    .line 383
    goto :goto_b

    .line 384
    :cond_14
    if-ne v8, v0, :cond_15

    .line 385
    .line 386
    goto :goto_9

    .line 387
    :cond_15
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 388
    .line 389
    .line 390
    move-result-object v4

    .line 391
    new-array v8, v3, [Ljava/lang/Object;

    .line 392
    .line 393
    const/4 v3, 0x0

    .line 394
    aput-object v5, v8, v3

    .line 395
    .line 396
    aput-object v4, v8, v7

    .line 397
    .line 398
    const/4 v4, 0x2

    .line 399
    aput-object v10, v8, v4

    .line 400
    .line 401
    :goto_d
    instance-of v5, v8, [Ljava/lang/Object;

    .line 402
    .line 403
    if-eqz v5, :cond_17

    .line 404
    .line 405
    check-cast v8, [Ljava/lang/Object;

    .line 406
    .line 407
    aget-object v0, v8, v4

    .line 408
    .line 409
    check-cast v0, Lcom/google/android/gms/internal/pal/Q2;

    .line 410
    .line 411
    if-eqz v2, :cond_16

    .line 412
    .line 413
    iput-object v0, v2, Lcom/google/android/gms/internal/pal/R2;->c:Lcom/google/android/gms/internal/pal/Q2;

    .line 414
    .line 415
    aget-object v0, v8, v3

    .line 416
    .line 417
    aget-object v2, v8, v7

    .line 418
    .line 419
    check-cast v2, Ljava/lang/Integer;

    .line 420
    .line 421
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 422
    .line 423
    .line 424
    move-result v2

    .line 425
    add-int v3, v2, v2

    .line 426
    .line 427
    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 428
    .line 429
    .line 430
    move-result-object v1

    .line 431
    move-object v8, v0

    .line 432
    move v0, v2

    .line 433
    goto :goto_e

    .line 434
    :cond_16
    invoke-virtual {v0}, Lcom/google/android/gms/internal/pal/Q2;->a()Ljava/lang/IllegalArgumentException;

    .line 435
    .line 436
    .line 437
    move-result-object v0

    .line 438
    throw v0

    .line 439
    :cond_17
    :goto_e
    new-instance v2, Lcom/google/android/gms/internal/pal/Z2;

    .line 440
    .line 441
    invoke-direct {v2, v8, v1, v0}, Lcom/google/android/gms/internal/pal/Z2;-><init>(Ljava/lang/Object;[Ljava/lang/Object;I)V

    .line 442
    .line 443
    .line 444
    return-object v2

    .line 445
    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 446
    .line 447
    const-string v1, "collection too large"

    .line 448
    .line 449
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 450
    .line 451
    .line 452
    throw v0
.end method


# virtual methods
.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_1

    .line 3
    .line 4
    :cond_0
    :goto_0
    move-object p1, v0

    .line 5
    goto/16 :goto_4

    .line 6
    .line 7
    :cond_1
    const/4 v1, 0x1

    .line 8
    iget-object v2, p0, Lcom/google/android/gms/internal/pal/Z2;->K:[Ljava/lang/Object;

    .line 9
    .line 10
    iget v3, p0, Lcom/google/android/gms/internal/pal/Z2;->L:I

    .line 11
    .line 12
    if-ne v3, v1, :cond_2

    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    aget-object v3, v2, v3

    .line 16
    .line 17
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-eqz p1, :cond_0

    .line 25
    .line 26
    aget-object p1, v2, v1

    .line 27
    .line 28
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    goto/16 :goto_4

    .line 32
    .line 33
    :cond_2
    iget-object v3, p0, Lcom/google/android/gms/internal/pal/Z2;->J:Ljava/lang/Object;

    .line 34
    .line 35
    if-nez v3, :cond_3

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_3
    instance-of v4, v3, [B

    .line 39
    .line 40
    const/4 v5, -0x1

    .line 41
    if-eqz v4, :cond_6

    .line 42
    .line 43
    move-object v4, v3

    .line 44
    check-cast v4, [B

    .line 45
    .line 46
    array-length v3, v4

    .line 47
    add-int/lit8 v6, v3, -0x1

    .line 48
    .line 49
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    invoke-static {v3}, Lcom/google/android/gms/internal/pal/y4;->b(I)I

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    :goto_1
    and-int/2addr v3, v6

    .line 58
    aget-byte v5, v4, v3

    .line 59
    .line 60
    const/16 v7, 0xff

    .line 61
    .line 62
    and-int/2addr v5, v7

    .line 63
    if-ne v5, v7, :cond_4

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_4
    aget-object v7, v2, v5

    .line 67
    .line 68
    invoke-virtual {p1, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v7

    .line 72
    if-eqz v7, :cond_5

    .line 73
    .line 74
    xor-int/lit8 p1, v5, 0x1

    .line 75
    .line 76
    aget-object p1, v2, p1

    .line 77
    .line 78
    goto :goto_4

    .line 79
    :cond_5
    add-int/lit8 v3, v3, 0x1

    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_6
    instance-of v4, v3, [S

    .line 83
    .line 84
    if-eqz v4, :cond_9

    .line 85
    .line 86
    move-object v4, v3

    .line 87
    check-cast v4, [S

    .line 88
    .line 89
    array-length v3, v4

    .line 90
    add-int/lit8 v6, v3, -0x1

    .line 91
    .line 92
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    .line 93
    .line 94
    .line 95
    move-result v3

    .line 96
    invoke-static {v3}, Lcom/google/android/gms/internal/pal/y4;->b(I)I

    .line 97
    .line 98
    .line 99
    move-result v3

    .line 100
    :goto_2
    and-int/2addr v3, v6

    .line 101
    aget-short v5, v4, v3

    .line 102
    .line 103
    int-to-char v5, v5

    .line 104
    const v7, 0xffff

    .line 105
    .line 106
    .line 107
    if-ne v5, v7, :cond_7

    .line 108
    .line 109
    goto :goto_0

    .line 110
    :cond_7
    aget-object v7, v2, v5

    .line 111
    .line 112
    invoke-virtual {p1, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    move-result v7

    .line 116
    if-eqz v7, :cond_8

    .line 117
    .line 118
    xor-int/lit8 p1, v5, 0x1

    .line 119
    .line 120
    aget-object p1, v2, p1

    .line 121
    .line 122
    goto :goto_4

    .line 123
    :cond_8
    add-int/lit8 v3, v3, 0x1

    .line 124
    .line 125
    goto :goto_2

    .line 126
    :cond_9
    check-cast v3, [I

    .line 127
    .line 128
    array-length v4, v3

    .line 129
    add-int/2addr v4, v5

    .line 130
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    .line 131
    .line 132
    .line 133
    move-result v6

    .line 134
    invoke-static {v6}, Lcom/google/android/gms/internal/pal/y4;->b(I)I

    .line 135
    .line 136
    .line 137
    move-result v6

    .line 138
    :goto_3
    and-int/2addr v6, v4

    .line 139
    aget v7, v3, v6

    .line 140
    .line 141
    if-ne v7, v5, :cond_a

    .line 142
    .line 143
    goto/16 :goto_0

    .line 144
    .line 145
    :cond_a
    aget-object v8, v2, v7

    .line 146
    .line 147
    invoke-virtual {p1, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 148
    .line 149
    .line 150
    move-result v8

    .line 151
    if-eqz v8, :cond_c

    .line 152
    .line 153
    xor-int/lit8 p1, v7, 0x1

    .line 154
    .line 155
    aget-object p1, v2, p1

    .line 156
    .line 157
    :goto_4
    if-nez p1, :cond_b

    .line 158
    .line 159
    return-object v0

    .line 160
    :cond_b
    return-object p1

    .line 161
    :cond_c
    add-int/lit8 v6, v6, 0x1

    .line 162
    .line 163
    goto :goto_3
.end method

.method public final size()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/pal/Z2;->L:I

    return v0
.end method
