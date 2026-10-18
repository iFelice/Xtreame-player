.class public final Lw5/e;
.super Lc1/d;
.source "SourceFile"


# static fields
.field public static final K:[B


# instance fields
.field public H:[B

.field public final I:[I

.field public J:Lw5/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [B

    .line 3
    .line 4
    sput-object v0, Lw5/e;->K:[B

    .line 5
    .line 6
    return-void
.end method

.method public constructor <init>(Lq5/g;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lc1/d;-><init>(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    sget-object p1, Lw5/e;->K:[B

    .line 5
    .line 6
    iput-object p1, p0, Lw5/e;->H:[B

    .line 7
    .line 8
    const/16 p1, 0x20

    .line 9
    .line 10
    new-array p1, p1, [I

    .line 11
    .line 12
    iput-object p1, p0, Lw5/e;->I:[I

    .line 13
    .line 14
    return-void
.end method

.method public static n([I)I
    .locals 9

    .line 1
    array-length v0, p0

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x0

    .line 4
    const/4 v3, 0x0

    .line 5
    const/4 v4, 0x0

    .line 6
    const/4 v5, 0x0

    .line 7
    :goto_0
    if-ge v2, v0, :cond_2

    .line 8
    .line 9
    aget v6, p0, v2

    .line 10
    .line 11
    if-le v6, v3, :cond_0

    .line 12
    .line 13
    move v5, v2

    .line 14
    move v3, v6

    .line 15
    :cond_0
    if-le v6, v4, :cond_1

    .line 16
    .line 17
    move v4, v6

    .line 18
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_2
    const/4 v2, 0x0

    .line 22
    const/4 v3, 0x0

    .line 23
    :goto_1
    if-ge v1, v0, :cond_4

    .line 24
    .line 25
    sub-int v6, v1, v5

    .line 26
    .line 27
    aget v7, p0, v1

    .line 28
    .line 29
    mul-int v7, v7, v6

    .line 30
    .line 31
    mul-int v7, v7, v6

    .line 32
    .line 33
    if-le v7, v3, :cond_3

    .line 34
    .line 35
    move v2, v1

    .line 36
    move v3, v7

    .line 37
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_4
    if-le v5, v2, :cond_5

    .line 41
    .line 42
    goto :goto_2

    .line 43
    :cond_5
    move v8, v5

    .line 44
    move v5, v2

    .line 45
    move v2, v8

    .line 46
    :goto_2
    sub-int v1, v5, v2

    .line 47
    .line 48
    div-int/lit8 v0, v0, 0x10

    .line 49
    .line 50
    if-le v1, v0, :cond_8

    .line 51
    .line 52
    add-int/lit8 v0, v5, -0x1

    .line 53
    .line 54
    const/4 v1, -0x1

    .line 55
    move v1, v0

    .line 56
    const/4 v3, -0x1

    .line 57
    :goto_3
    if-le v0, v2, :cond_7

    .line 58
    .line 59
    sub-int v6, v0, v2

    .line 60
    .line 61
    mul-int v6, v6, v6

    .line 62
    .line 63
    sub-int v7, v5, v0

    .line 64
    .line 65
    mul-int v7, v7, v6

    .line 66
    .line 67
    aget v6, p0, v0

    .line 68
    .line 69
    sub-int v6, v4, v6

    .line 70
    .line 71
    mul-int v6, v6, v7

    .line 72
    .line 73
    if-le v6, v3, :cond_6

    .line 74
    .line 75
    move v1, v0

    .line 76
    move v3, v6

    .line 77
    :cond_6
    add-int/lit8 v0, v0, -0x1

    .line 78
    .line 79
    goto :goto_3

    .line 80
    :cond_7
    shl-int/lit8 p0, v1, 0x3

    .line 81
    .line 82
    return p0

    .line 83
    :cond_8
    sget-object p0, Lq5/i;->I:Lq5/i;

    .line 84
    .line 85
    throw p0
.end method


# virtual methods
.method public final f(Lq5/g;)Lw5/e;
    .locals 1

    .line 1
    new-instance v0, Lw5/e;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lw5/e;-><init>(Lq5/g;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public final g()Lw5/b;
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lw5/e;->J:Lw5/b;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    return-object v1

    .line 8
    :cond_0
    iget-object v1, v0, Lc1/d;->G:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v1, Lq5/g;

    .line 11
    .line 12
    iget v2, v1, Lq5/g;->a:I

    .line 13
    .line 14
    const/16 v5, 0x28

    .line 15
    .line 16
    if-lt v2, v5, :cond_18

    .line 17
    .line 18
    iget v7, v1, Lq5/g;->b:I

    .line 19
    .line 20
    if-lt v7, v5, :cond_18

    .line 21
    .line 22
    invoke-virtual {v1}, Lq5/g;->a()[B

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    shr-int/lit8 v5, v2, 0x3

    .line 27
    .line 28
    and-int/lit8 v8, v2, 0x7

    .line 29
    .line 30
    if-eqz v8, :cond_1

    .line 31
    .line 32
    add-int/lit8 v5, v5, 0x1

    .line 33
    .line 34
    :cond_1
    shr-int/lit8 v8, v7, 0x3

    .line 35
    .line 36
    and-int/lit8 v9, v7, 0x7

    .line 37
    .line 38
    if-eqz v9, :cond_2

    .line 39
    .line 40
    add-int/lit8 v8, v8, 0x1

    .line 41
    .line 42
    :cond_2
    add-int/lit8 v9, v7, -0x8

    .line 43
    .line 44
    add-int/lit8 v10, v2, -0x8

    .line 45
    .line 46
    filled-new-array {v8, v5}, [I

    .line 47
    .line 48
    .line 49
    move-result-object v11

    .line 50
    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 51
    .line 52
    invoke-static {v12, v11}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v11

    .line 56
    check-cast v11, [[I

    .line 57
    .line 58
    const/4 v12, 0x0

    .line 59
    :goto_0
    const/16 v13, 0x8

    .line 60
    .line 61
    if-ge v12, v8, :cond_d

    .line 62
    .line 63
    shl-int/lit8 v15, v12, 0x3

    .line 64
    .line 65
    if-le v15, v9, :cond_3

    .line 66
    .line 67
    move v15, v9

    .line 68
    :cond_3
    const/4 v3, 0x0

    .line 69
    :goto_1
    if-ge v3, v5, :cond_c

    .line 70
    .line 71
    shl-int/lit8 v14, v3, 0x3

    .line 72
    .line 73
    if-le v14, v10, :cond_4

    .line 74
    .line 75
    move v14, v10

    .line 76
    :cond_4
    mul-int v17, v15, v2

    .line 77
    .line 78
    add-int v17, v17, v14

    .line 79
    .line 80
    const/4 v14, 0x0

    .line 81
    const/16 v18, 0x0

    .line 82
    .line 83
    const/16 v19, 0x0

    .line 84
    .line 85
    const/16 v20, 0xff

    .line 86
    .line 87
    :goto_2
    if-ge v14, v13, :cond_a

    .line 88
    .line 89
    move/from16 v4, v19

    .line 90
    .line 91
    move/from16 v21, v20

    .line 92
    .line 93
    const/4 v6, 0x0

    .line 94
    :goto_3
    if-ge v6, v13, :cond_7

    .line 95
    .line 96
    add-int v19, v17, v6

    .line 97
    .line 98
    aget-byte v13, v1, v19

    .line 99
    .line 100
    move/from16 v22, v15

    .line 101
    .line 102
    const/16 v15, 0xff

    .line 103
    .line 104
    and-int/2addr v13, v15

    .line 105
    add-int v18, v18, v13

    .line 106
    .line 107
    move/from16 v15, v21

    .line 108
    .line 109
    if-ge v13, v15, :cond_5

    .line 110
    .line 111
    move/from16 v21, v13

    .line 112
    .line 113
    goto :goto_4

    .line 114
    :cond_5
    move/from16 v21, v15

    .line 115
    .line 116
    :goto_4
    if-le v13, v4, :cond_6

    .line 117
    .line 118
    move v4, v13

    .line 119
    :cond_6
    add-int/lit8 v6, v6, 0x1

    .line 120
    .line 121
    move/from16 v15, v22

    .line 122
    .line 123
    const/16 v13, 0x8

    .line 124
    .line 125
    goto :goto_3

    .line 126
    :cond_7
    move/from16 v22, v15

    .line 127
    .line 128
    move/from16 v15, v21

    .line 129
    .line 130
    sub-int v6, v4, v15

    .line 131
    .line 132
    const/16 v13, 0x18

    .line 133
    .line 134
    if-le v6, v13, :cond_9

    .line 135
    .line 136
    :goto_5
    add-int/lit8 v14, v14, 0x1

    .line 137
    .line 138
    add-int v17, v17, v2

    .line 139
    .line 140
    const/16 v6, 0x8

    .line 141
    .line 142
    if-ge v14, v6, :cond_9

    .line 143
    .line 144
    const/4 v13, 0x0

    .line 145
    :goto_6
    if-ge v13, v6, :cond_8

    .line 146
    .line 147
    add-int v6, v17, v13

    .line 148
    .line 149
    aget-byte v6, v1, v6

    .line 150
    .line 151
    move/from16 v19, v4

    .line 152
    .line 153
    const/16 v4, 0xff

    .line 154
    .line 155
    and-int/2addr v6, v4

    .line 156
    add-int v18, v18, v6

    .line 157
    .line 158
    add-int/lit8 v13, v13, 0x1

    .line 159
    .line 160
    move/from16 v4, v19

    .line 161
    .line 162
    const/16 v6, 0x8

    .line 163
    .line 164
    goto :goto_6

    .line 165
    :cond_8
    move/from16 v19, v4

    .line 166
    .line 167
    goto :goto_5

    .line 168
    :cond_9
    move/from16 v19, v4

    .line 169
    .line 170
    const/4 v4, 0x1

    .line 171
    add-int/2addr v14, v4

    .line 172
    add-int v17, v17, v2

    .line 173
    .line 174
    move/from16 v20, v15

    .line 175
    .line 176
    move/from16 v15, v22

    .line 177
    .line 178
    const/16 v13, 0x8

    .line 179
    .line 180
    goto :goto_2

    .line 181
    :cond_a
    move/from16 v22, v15

    .line 182
    .line 183
    shr-int/lit8 v4, v18, 0x6

    .line 184
    .line 185
    move/from16 v15, v20

    .line 186
    .line 187
    sub-int v6, v19, v15

    .line 188
    .line 189
    const/16 v13, 0x18

    .line 190
    .line 191
    if-gt v6, v13, :cond_b

    .line 192
    .line 193
    div-int/lit8 v4, v15, 0x2

    .line 194
    .line 195
    if-lez v12, :cond_b

    .line 196
    .line 197
    if-lez v3, :cond_b

    .line 198
    .line 199
    add-int/lit8 v6, v12, -0x1

    .line 200
    .line 201
    aget-object v6, v11, v6

    .line 202
    .line 203
    aget v13, v6, v3

    .line 204
    .line 205
    aget-object v14, v11, v12

    .line 206
    .line 207
    add-int/lit8 v17, v3, -0x1

    .line 208
    .line 209
    aget v14, v14, v17

    .line 210
    .line 211
    const/16 v16, 0x2

    .line 212
    .line 213
    mul-int/lit8 v14, v14, 0x2

    .line 214
    .line 215
    add-int/2addr v14, v13

    .line 216
    aget v6, v6, v17

    .line 217
    .line 218
    add-int/2addr v14, v6

    .line 219
    div-int/lit8 v6, v14, 0x4

    .line 220
    .line 221
    if-ge v15, v6, :cond_b

    .line 222
    .line 223
    move v4, v6

    .line 224
    :cond_b
    aget-object v6, v11, v12

    .line 225
    .line 226
    aput v4, v6, v3

    .line 227
    .line 228
    add-int/lit8 v3, v3, 0x1

    .line 229
    .line 230
    move/from16 v15, v22

    .line 231
    .line 232
    const/16 v13, 0x8

    .line 233
    .line 234
    goto/16 :goto_1

    .line 235
    .line 236
    :cond_c
    add-int/lit8 v12, v12, 0x1

    .line 237
    .line 238
    goto/16 :goto_0

    .line 239
    .line 240
    :cond_d
    new-instance v3, Lw5/b;

    .line 241
    .line 242
    invoke-direct {v3, v2, v7}, Lw5/b;-><init>(II)V

    .line 243
    .line 244
    .line 245
    const/4 v4, 0x0

    .line 246
    :goto_7
    if-ge v4, v8, :cond_17

    .line 247
    .line 248
    shl-int/lit8 v6, v4, 0x3

    .line 249
    .line 250
    if-le v6, v9, :cond_e

    .line 251
    .line 252
    move v6, v9

    .line 253
    :cond_e
    add-int/lit8 v7, v8, -0x3

    .line 254
    .line 255
    const/4 v12, 0x2

    .line 256
    if-ge v4, v12, :cond_f

    .line 257
    .line 258
    const/4 v7, 0x2

    .line 259
    goto :goto_8

    .line 260
    :cond_f
    invoke-static {v4, v7}, Ljava/lang/Math;->min(II)I

    .line 261
    .line 262
    .line 263
    move-result v7

    .line 264
    :goto_8
    const/4 v12, 0x0

    .line 265
    :goto_9
    if-ge v12, v5, :cond_16

    .line 266
    .line 267
    shl-int/lit8 v13, v12, 0x3

    .line 268
    .line 269
    if-le v13, v10, :cond_10

    .line 270
    .line 271
    move v13, v10

    .line 272
    :cond_10
    add-int/lit8 v14, v5, -0x3

    .line 273
    .line 274
    const/4 v15, 0x2

    .line 275
    if-ge v12, v15, :cond_11

    .line 276
    .line 277
    const/4 v14, 0x2

    .line 278
    goto :goto_a

    .line 279
    :cond_11
    invoke-static {v12, v14}, Ljava/lang/Math;->min(II)I

    .line 280
    .line 281
    .line 282
    move-result v16

    .line 283
    move/from16 v14, v16

    .line 284
    .line 285
    :goto_a
    const/16 v16, -0x2

    .line 286
    .line 287
    move/from16 v17, v5

    .line 288
    .line 289
    const/4 v5, -0x2

    .line 290
    const/16 v18, 0x0

    .line 291
    .line 292
    :goto_b
    if-gt v5, v15, :cond_12

    .line 293
    .line 294
    add-int v15, v7, v5

    .line 295
    .line 296
    aget-object v15, v11, v15

    .line 297
    .line 298
    add-int/lit8 v19, v14, -0x2

    .line 299
    .line 300
    aget v19, v15, v19

    .line 301
    .line 302
    add-int/lit8 v20, v14, -0x1

    .line 303
    .line 304
    aget v20, v15, v20

    .line 305
    .line 306
    add-int v19, v19, v20

    .line 307
    .line 308
    aget v20, v15, v14

    .line 309
    .line 310
    add-int v19, v19, v20

    .line 311
    .line 312
    add-int/lit8 v20, v14, 0x1

    .line 313
    .line 314
    aget v20, v15, v20

    .line 315
    .line 316
    add-int v19, v19, v20

    .line 317
    .line 318
    const/16 v16, 0x2

    .line 319
    .line 320
    add-int/lit8 v20, v14, 0x2

    .line 321
    .line 322
    aget v15, v15, v20

    .line 323
    .line 324
    add-int v19, v19, v15

    .line 325
    .line 326
    add-int v18, v19, v18

    .line 327
    .line 328
    add-int/lit8 v5, v5, 0x1

    .line 329
    .line 330
    const/4 v15, 0x2

    .line 331
    goto :goto_b

    .line 332
    :cond_12
    const/16 v16, 0x2

    .line 333
    .line 334
    div-int/lit8 v5, v18, 0x19

    .line 335
    .line 336
    mul-int v14, v6, v2

    .line 337
    .line 338
    add-int/2addr v14, v13

    .line 339
    move/from16 v18, v7

    .line 340
    .line 341
    const/4 v7, 0x0

    .line 342
    :goto_c
    const/16 v15, 0x8

    .line 343
    .line 344
    if-ge v7, v15, :cond_15

    .line 345
    .line 346
    move/from16 v19, v8

    .line 347
    .line 348
    const/4 v8, 0x0

    .line 349
    :goto_d
    if-ge v8, v15, :cond_14

    .line 350
    .line 351
    add-int v20, v14, v8

    .line 352
    .line 353
    aget-byte v15, v1, v20

    .line 354
    .line 355
    move-object/from16 v20, v1

    .line 356
    .line 357
    const/16 v1, 0xff

    .line 358
    .line 359
    and-int/2addr v15, v1

    .line 360
    if-gt v15, v5, :cond_13

    .line 361
    .line 362
    add-int v1, v13, v8

    .line 363
    .line 364
    add-int v15, v6, v7

    .line 365
    .line 366
    invoke-virtual {v3, v1, v15}, Lw5/b;->f(II)V

    .line 367
    .line 368
    .line 369
    :cond_13
    add-int/lit8 v8, v8, 0x1

    .line 370
    .line 371
    move-object/from16 v1, v20

    .line 372
    .line 373
    const/16 v15, 0x8

    .line 374
    .line 375
    goto :goto_d

    .line 376
    :cond_14
    move-object/from16 v20, v1

    .line 377
    .line 378
    add-int/lit8 v7, v7, 0x1

    .line 379
    .line 380
    add-int/2addr v14, v2

    .line 381
    move/from16 v8, v19

    .line 382
    .line 383
    goto :goto_c

    .line 384
    :cond_15
    move-object/from16 v20, v1

    .line 385
    .line 386
    move/from16 v19, v8

    .line 387
    .line 388
    add-int/lit8 v12, v12, 0x1

    .line 389
    .line 390
    move/from16 v5, v17

    .line 391
    .line 392
    move/from16 v7, v18

    .line 393
    .line 394
    goto/16 :goto_9

    .line 395
    .line 396
    :cond_16
    move-object/from16 v20, v1

    .line 397
    .line 398
    move/from16 v17, v5

    .line 399
    .line 400
    move/from16 v19, v8

    .line 401
    .line 402
    const/16 v16, 0x2

    .line 403
    .line 404
    add-int/lit8 v4, v4, 0x1

    .line 405
    .line 406
    goto/16 :goto_7

    .line 407
    .line 408
    :cond_17
    iput-object v3, v0, Lw5/e;->J:Lw5/b;

    .line 409
    .line 410
    goto/16 :goto_13

    .line 411
    .line 412
    :cond_18
    new-instance v3, Lw5/b;

    .line 413
    .line 414
    iget v4, v1, Lq5/g;->b:I

    .line 415
    .line 416
    invoke-direct {v3, v2, v4}, Lw5/b;-><init>(II)V

    .line 417
    .line 418
    .line 419
    iget-object v5, v0, Lw5/e;->H:[B

    .line 420
    .line 421
    array-length v5, v5

    .line 422
    if-ge v5, v2, :cond_19

    .line 423
    .line 424
    new-array v5, v2, [B

    .line 425
    .line 426
    iput-object v5, v0, Lw5/e;->H:[B

    .line 427
    .line 428
    :cond_19
    const/4 v5, 0x0

    .line 429
    :goto_e
    const/16 v6, 0x20

    .line 430
    .line 431
    iget-object v7, v0, Lw5/e;->I:[I

    .line 432
    .line 433
    if-ge v5, v6, :cond_1a

    .line 434
    .line 435
    const/4 v6, 0x0

    .line 436
    aput v6, v7, v5

    .line 437
    .line 438
    add-int/lit8 v5, v5, 0x1

    .line 439
    .line 440
    goto :goto_e

    .line 441
    :cond_1a
    const/4 v6, 0x0

    .line 442
    const/4 v5, 0x1

    .line 443
    :goto_f
    const/4 v8, 0x5

    .line 444
    if-ge v5, v8, :cond_1c

    .line 445
    .line 446
    mul-int v9, v4, v5

    .line 447
    .line 448
    div-int/2addr v9, v8

    .line 449
    iget-object v10, v0, Lw5/e;->H:[B

    .line 450
    .line 451
    invoke-virtual {v1, v9, v10}, Lq5/g;->b(I[B)[B

    .line 452
    .line 453
    .line 454
    move-result-object v9

    .line 455
    shl-int/lit8 v10, v2, 0x2

    .line 456
    .line 457
    div-int/2addr v10, v8

    .line 458
    div-int/lit8 v8, v2, 0x5

    .line 459
    .line 460
    :goto_10
    if-ge v8, v10, :cond_1b

    .line 461
    .line 462
    aget-byte v11, v9, v8

    .line 463
    .line 464
    const/16 v12, 0xff

    .line 465
    .line 466
    and-int/2addr v11, v12

    .line 467
    shr-int/lit8 v11, v11, 0x3

    .line 468
    .line 469
    aget v12, v7, v11

    .line 470
    .line 471
    const/4 v13, 0x1

    .line 472
    add-int/2addr v12, v13

    .line 473
    aput v12, v7, v11

    .line 474
    .line 475
    add-int/lit8 v8, v8, 0x1

    .line 476
    .line 477
    goto :goto_10

    .line 478
    :cond_1b
    const/4 v13, 0x1

    .line 479
    add-int/lit8 v5, v5, 0x1

    .line 480
    .line 481
    goto :goto_f

    .line 482
    :cond_1c
    invoke-static {v7}, Lw5/e;->n([I)I

    .line 483
    .line 484
    .line 485
    move-result v5

    .line 486
    invoke-virtual {v1}, Lq5/g;->a()[B

    .line 487
    .line 488
    .line 489
    move-result-object v1

    .line 490
    const/4 v7, 0x0

    .line 491
    :goto_11
    if-ge v7, v4, :cond_1f

    .line 492
    .line 493
    mul-int v8, v7, v2

    .line 494
    .line 495
    const/4 v9, 0x0

    .line 496
    :goto_12
    if-ge v9, v2, :cond_1e

    .line 497
    .line 498
    add-int v10, v8, v9

    .line 499
    .line 500
    aget-byte v10, v1, v10

    .line 501
    .line 502
    const/16 v11, 0xff

    .line 503
    .line 504
    and-int/2addr v10, v11

    .line 505
    if-ge v10, v5, :cond_1d

    .line 506
    .line 507
    invoke-virtual {v3, v9, v7}, Lw5/b;->f(II)V

    .line 508
    .line 509
    .line 510
    :cond_1d
    add-int/lit8 v9, v9, 0x1

    .line 511
    .line 512
    goto :goto_12

    .line 513
    :cond_1e
    const/16 v11, 0xff

    .line 514
    .line 515
    add-int/lit8 v7, v7, 0x1

    .line 516
    .line 517
    goto :goto_11

    .line 518
    :cond_1f
    iput-object v3, v0, Lw5/e;->J:Lw5/b;

    .line 519
    .line 520
    :goto_13
    iget-object v1, v0, Lw5/e;->J:Lw5/b;

    .line 521
    .line 522
    return-object v1
.end method

.method public final h(ILw5/a;)Lw5/a;
    .locals 10

    .line 1
    iget-object v0, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lq5/g;

    .line 4
    .line 5
    iget v1, v0, Lq5/g;->a:I

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz p2, :cond_1

    .line 9
    .line 10
    iget v3, p2, Lw5/a;->H:I

    .line 11
    .line 12
    if-ge v3, v1, :cond_0

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_0
    iget-object v3, p2, Lw5/a;->G:[I

    .line 16
    .line 17
    array-length v3, v3

    .line 18
    const/4 v4, 0x0

    .line 19
    :goto_0
    if-ge v4, v3, :cond_2

    .line 20
    .line 21
    iget-object v5, p2, Lw5/a;->G:[I

    .line 22
    .line 23
    aput v2, v5, v4

    .line 24
    .line 25
    add-int/lit8 v4, v4, 0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    :goto_1
    new-instance p2, Lw5/a;

    .line 29
    .line 30
    invoke-direct {p2, v1}, Lw5/a;-><init>(I)V

    .line 31
    .line 32
    .line 33
    :cond_2
    iget-object v3, p0, Lw5/e;->H:[B

    .line 34
    .line 35
    array-length v3, v3

    .line 36
    if-ge v3, v1, :cond_3

    .line 37
    .line 38
    new-array v3, v1, [B

    .line 39
    .line 40
    iput-object v3, p0, Lw5/e;->H:[B

    .line 41
    .line 42
    :cond_3
    const/4 v3, 0x0

    .line 43
    :goto_2
    const/16 v4, 0x20

    .line 44
    .line 45
    iget-object v5, p0, Lw5/e;->I:[I

    .line 46
    .line 47
    if-ge v3, v4, :cond_4

    .line 48
    .line 49
    aput v2, v5, v3

    .line 50
    .line 51
    add-int/lit8 v3, v3, 0x1

    .line 52
    .line 53
    goto :goto_2

    .line 54
    :cond_4
    iget-object v3, p0, Lw5/e;->H:[B

    .line 55
    .line 56
    invoke-virtual {v0, p1, v3}, Lq5/g;->b(I[B)[B

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    const/4 v0, 0x0

    .line 61
    :goto_3
    const/4 v3, 0x1

    .line 62
    const/4 v4, 0x3

    .line 63
    if-ge v0, v1, :cond_5

    .line 64
    .line 65
    aget-byte v6, p1, v0

    .line 66
    .line 67
    and-int/lit16 v6, v6, 0xff

    .line 68
    .line 69
    shr-int/lit8 v4, v6, 0x3

    .line 70
    .line 71
    aget v6, v5, v4

    .line 72
    .line 73
    add-int/2addr v6, v3

    .line 74
    aput v6, v5, v4

    .line 75
    .line 76
    add-int/lit8 v0, v0, 0x1

    .line 77
    .line 78
    goto :goto_3

    .line 79
    :cond_5
    invoke-static {v5}, Lw5/e;->n([I)I

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    if-ge v1, v4, :cond_7

    .line 84
    .line 85
    :goto_4
    if-ge v2, v1, :cond_9

    .line 86
    .line 87
    aget-byte v3, p1, v2

    .line 88
    .line 89
    and-int/lit16 v3, v3, 0xff

    .line 90
    .line 91
    if-ge v3, v0, :cond_6

    .line 92
    .line 93
    invoke-virtual {p2, v2}, Lw5/a;->j(I)V

    .line 94
    .line 95
    .line 96
    :cond_6
    add-int/lit8 v2, v2, 0x1

    .line 97
    .line 98
    goto :goto_4

    .line 99
    :cond_7
    aget-byte v2, p1, v2

    .line 100
    .line 101
    and-int/lit16 v2, v2, 0xff

    .line 102
    .line 103
    aget-byte v4, p1, v3

    .line 104
    .line 105
    and-int/lit16 v4, v4, 0xff

    .line 106
    .line 107
    const/4 v5, 0x1

    .line 108
    move v9, v4

    .line 109
    move v4, v2

    .line 110
    move v2, v9

    .line 111
    :goto_5
    add-int/lit8 v6, v1, -0x1

    .line 112
    .line 113
    if-ge v5, v6, :cond_9

    .line 114
    .line 115
    add-int/lit8 v6, v5, 0x1

    .line 116
    .line 117
    aget-byte v7, p1, v6

    .line 118
    .line 119
    and-int/lit16 v7, v7, 0xff

    .line 120
    .line 121
    shl-int/lit8 v8, v2, 0x2

    .line 122
    .line 123
    sub-int/2addr v8, v4

    .line 124
    sub-int/2addr v8, v7

    .line 125
    div-int/lit8 v8, v8, 0x2

    .line 126
    .line 127
    if-ge v8, v0, :cond_8

    .line 128
    .line 129
    invoke-virtual {p2, v5}, Lw5/a;->j(I)V

    .line 130
    .line 131
    .line 132
    :cond_8
    move v4, v2

    .line 133
    move v5, v6

    .line 134
    move v2, v7

    .line 135
    goto :goto_5

    .line 136
    :cond_9
    return-object p2
.end method
