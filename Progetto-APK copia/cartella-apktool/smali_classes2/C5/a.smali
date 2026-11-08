.class public final LC5/a;
.super LC5/j;
.source "SourceFile"


# static fields
.field public static final d:[C

.field public static final e:[I

.field public static final f:[C


# instance fields
.field public final a:Ljava/lang/StringBuilder;

.field public b:[I

.field public c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "0123456789-$:/.+ABCD"

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, LC5/a;->d:[C

    .line 8
    .line 9
    const/16 v0, 0x14

    .line 10
    .line 11
    new-array v0, v0, [I

    .line 12
    .line 13
    fill-array-data v0, :array_0

    .line 14
    .line 15
    .line 16
    sput-object v0, LC5/a;->e:[I

    .line 17
    .line 18
    const/4 v0, 0x4

    .line 19
    new-array v0, v0, [C

    .line 20
    .line 21
    fill-array-data v0, :array_1

    .line 22
    .line 23
    .line 24
    sput-object v0, LC5/a;->f:[C

    .line 25
    .line 26
    return-void

    .line 27
    :array_0
    .array-data 4
        0x3
        0x6
        0x9
        0x60
        0x12
        0x42
        0x21
        0x24
        0x30
        0x48
        0xc
        0x18
        0x45
        0x51
        0x54
        0x15
        0x1a
        0x29
        0xb
        0xe
    .end array-data

    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    :array_1
    .array-data 2
        0x41s
        0x42s
        0x43s
        0x44s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    const/16 v1, 0x14

    .line 7
    .line 8
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, LC5/a;->a:Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const/16 v0, 0x50

    .line 14
    .line 15
    new-array v0, v0, [I

    .line 16
    .line 17
    iput-object v0, p0, LC5/a;->b:[I

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    iput v0, p0, LC5/a;->c:I

    .line 21
    .line 22
    return-void
.end method

.method public static i(C[C)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_1

    .line 3
    .line 4
    array-length v1, p1

    .line 5
    const/4 v2, 0x0

    .line 6
    :goto_0
    if-ge v2, v1, :cond_1

    .line 7
    .line 8
    aget-char v3, p1, v2

    .line 9
    .line 10
    if-ne v3, p0, :cond_0

    .line 11
    .line 12
    const/4 p0, 0x1

    .line 13
    return p0

    .line 14
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    return v0
.end method


# virtual methods
.method public final d(ILw5/a;Ljava/util/Map;)Lq5/m;
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    const/4 v3, -0x1

    .line 8
    const/4 v4, 0x2

    .line 9
    const/4 v5, 0x1

    .line 10
    iget-object v6, v0, LC5/a;->b:[I

    .line 11
    .line 12
    const/4 v7, 0x0

    .line 13
    invoke-static {v6, v7}, Ljava/util/Arrays;->fill([II)V

    .line 14
    .line 15
    .line 16
    iput v7, v0, LC5/a;->c:I

    .line 17
    .line 18
    invoke-virtual {v1, v7}, Lw5/a;->f(I)I

    .line 19
    .line 20
    .line 21
    move-result v6

    .line 22
    iget v8, v1, Lw5/a;->H:I

    .line 23
    .line 24
    if-ge v6, v8, :cond_1e

    .line 25
    .line 26
    const/4 v9, 0x0

    .line 27
    const/4 v10, 0x1

    .line 28
    :goto_0
    if-ge v6, v8, :cond_2

    .line 29
    .line 30
    invoke-virtual {v1, v6}, Lw5/a;->d(I)Z

    .line 31
    .line 32
    .line 33
    move-result v11

    .line 34
    if-eq v11, v10, :cond_0

    .line 35
    .line 36
    add-int/2addr v9, v5

    .line 37
    goto :goto_1

    .line 38
    :cond_0
    iget-object v11, v0, LC5/a;->b:[I

    .line 39
    .line 40
    iget v12, v0, LC5/a;->c:I

    .line 41
    .line 42
    aput v9, v11, v12

    .line 43
    .line 44
    add-int/2addr v12, v5

    .line 45
    iput v12, v0, LC5/a;->c:I

    .line 46
    .line 47
    array-length v9, v11

    .line 48
    if-lt v12, v9, :cond_1

    .line 49
    .line 50
    shl-int/lit8 v9, v12, 0x1

    .line 51
    .line 52
    new-array v9, v9, [I

    .line 53
    .line 54
    invoke-static {v11, v7, v9, v7, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 55
    .line 56
    .line 57
    iput-object v9, v0, LC5/a;->b:[I

    .line 58
    .line 59
    :cond_1
    xor-int/2addr v10, v5

    .line 60
    const/4 v9, 0x1

    .line 61
    :goto_1
    add-int/2addr v6, v5

    .line 62
    goto :goto_0

    .line 63
    :cond_2
    iget-object v1, v0, LC5/a;->b:[I

    .line 64
    .line 65
    iget v6, v0, LC5/a;->c:I

    .line 66
    .line 67
    aput v9, v1, v6

    .line 68
    .line 69
    add-int/2addr v6, v5

    .line 70
    iput v6, v0, LC5/a;->c:I

    .line 71
    .line 72
    array-length v8, v1

    .line 73
    if-lt v6, v8, :cond_3

    .line 74
    .line 75
    shl-int/lit8 v8, v6, 0x1

    .line 76
    .line 77
    new-array v8, v8, [I

    .line 78
    .line 79
    invoke-static {v1, v7, v8, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 80
    .line 81
    .line 82
    iput-object v8, v0, LC5/a;->b:[I

    .line 83
    .line 84
    :cond_3
    const/4 v1, 0x1

    .line 85
    :goto_2
    iget v6, v0, LC5/a;->c:I

    .line 86
    .line 87
    if-ge v1, v6, :cond_1d

    .line 88
    .line 89
    invoke-virtual {v0, v1}, LC5/a;->j(I)I

    .line 90
    .line 91
    .line 92
    move-result v6

    .line 93
    if-eq v6, v3, :cond_1c

    .line 94
    .line 95
    sget-object v8, LC5/a;->d:[C

    .line 96
    .line 97
    aget-char v6, v8, v6

    .line 98
    .line 99
    sget-object v9, LC5/a;->f:[C

    .line 100
    .line 101
    invoke-static {v6, v9}, LC5/a;->i(C[C)Z

    .line 102
    .line 103
    .line 104
    move-result v6

    .line 105
    if-eqz v6, :cond_1c

    .line 106
    .line 107
    move v6, v1

    .line 108
    const/4 v10, 0x0

    .line 109
    :goto_3
    add-int/lit8 v11, v1, 0x7

    .line 110
    .line 111
    if-ge v6, v11, :cond_4

    .line 112
    .line 113
    iget-object v11, v0, LC5/a;->b:[I

    .line 114
    .line 115
    aget v11, v11, v6

    .line 116
    .line 117
    add-int/2addr v10, v11

    .line 118
    add-int/2addr v6, v5

    .line 119
    goto :goto_3

    .line 120
    :cond_4
    if-eq v1, v5, :cond_6

    .line 121
    .line 122
    iget-object v6, v0, LC5/a;->b:[I

    .line 123
    .line 124
    add-int/lit8 v11, v1, -0x1

    .line 125
    .line 126
    aget v6, v6, v11

    .line 127
    .line 128
    div-int/2addr v10, v4

    .line 129
    if-lt v6, v10, :cond_5

    .line 130
    .line 131
    goto :goto_4

    .line 132
    :cond_5
    move/from16 v7, p1

    .line 133
    .line 134
    const/4 v3, 0x2

    .line 135
    const/4 v10, 0x0

    .line 136
    const/4 v15, -0x1

    .line 137
    goto/16 :goto_12

    .line 138
    .line 139
    :cond_6
    :goto_4
    iget-object v6, v0, LC5/a;->a:Ljava/lang/StringBuilder;

    .line 140
    .line 141
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 142
    .line 143
    .line 144
    move v10, v1

    .line 145
    :goto_5
    invoke-virtual {v0, v10}, LC5/a;->j(I)I

    .line 146
    .line 147
    .line 148
    move-result v11

    .line 149
    if-eq v11, v3, :cond_1b

    .line 150
    .line 151
    int-to-char v12, v11

    .line 152
    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    add-int/lit8 v12, v10, 0x8

    .line 156
    .line 157
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    .line 158
    .line 159
    .line 160
    move-result v13

    .line 161
    if-le v13, v5, :cond_7

    .line 162
    .line 163
    aget-char v11, v8, v11

    .line 164
    .line 165
    invoke-static {v11, v9}, LC5/a;->i(C[C)Z

    .line 166
    .line 167
    .line 168
    move-result v11

    .line 169
    if-nez v11, :cond_8

    .line 170
    .line 171
    :cond_7
    iget v11, v0, LC5/a;->c:I

    .line 172
    .line 173
    if-lt v12, v11, :cond_1a

    .line 174
    .line 175
    :cond_8
    iget-object v11, v0, LC5/a;->b:[I

    .line 176
    .line 177
    add-int/lit8 v10, v10, 0x7

    .line 178
    .line 179
    aget v11, v11, v10

    .line 180
    .line 181
    const/4 v13, -0x8

    .line 182
    const/4 v14, 0x0

    .line 183
    :goto_6
    if-ge v13, v3, :cond_9

    .line 184
    .line 185
    iget-object v15, v0, LC5/a;->b:[I

    .line 186
    .line 187
    add-int v16, v12, v13

    .line 188
    .line 189
    aget v15, v15, v16

    .line 190
    .line 191
    add-int/2addr v14, v15

    .line 192
    add-int/2addr v13, v5

    .line 193
    goto :goto_6

    .line 194
    :cond_9
    iget v13, v0, LC5/a;->c:I

    .line 195
    .line 196
    if-ge v12, v13, :cond_b

    .line 197
    .line 198
    div-int/2addr v14, v4

    .line 199
    if-lt v11, v14, :cond_a

    .line 200
    .line 201
    goto :goto_7

    .line 202
    :cond_a
    sget-object v1, Lq5/i;->I:Lq5/i;

    .line 203
    .line 204
    throw v1

    .line 205
    :cond_b
    :goto_7
    filled-new-array {v7, v7, v7, v7}, [I

    .line 206
    .line 207
    .line 208
    move-result-object v11

    .line 209
    filled-new-array {v7, v7, v7, v7}, [I

    .line 210
    .line 211
    .line 212
    move-result-object v12

    .line 213
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    .line 214
    .line 215
    .line 216
    move-result v13

    .line 217
    sub-int/2addr v13, v5

    .line 218
    move v15, v1

    .line 219
    const/4 v14, 0x0

    .line 220
    :goto_8
    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->charAt(I)C

    .line 221
    .line 222
    .line 223
    move-result v16

    .line 224
    sget-object v17, LC5/a;->e:[I

    .line 225
    .line 226
    aget v16, v17, v16

    .line 227
    .line 228
    const/16 v18, 0x6

    .line 229
    .line 230
    const/16 v19, 0x6

    .line 231
    .line 232
    :goto_9
    if-ltz v19, :cond_c

    .line 233
    .line 234
    and-int/lit8 v20, v19, 0x1

    .line 235
    .line 236
    and-int/lit8 v21, v16, 0x1

    .line 237
    .line 238
    shl-int/lit8 v21, v21, 0x1

    .line 239
    .line 240
    add-int v20, v20, v21

    .line 241
    .line 242
    aget v21, v11, v20

    .line 243
    .line 244
    iget-object v7, v0, LC5/a;->b:[I

    .line 245
    .line 246
    add-int v22, v15, v19

    .line 247
    .line 248
    aget v7, v7, v22

    .line 249
    .line 250
    add-int v21, v21, v7

    .line 251
    .line 252
    aput v21, v11, v20

    .line 253
    .line 254
    aget v7, v12, v20

    .line 255
    .line 256
    add-int/2addr v7, v5

    .line 257
    aput v7, v12, v20

    .line 258
    .line 259
    shr-int/lit8 v16, v16, 0x1

    .line 260
    .line 261
    add-int/lit8 v19, v19, -0x1

    .line 262
    .line 263
    const/4 v7, 0x0

    .line 264
    goto :goto_9

    .line 265
    :cond_c
    if-ge v14, v13, :cond_d

    .line 266
    .line 267
    add-int/lit8 v15, v15, 0x8

    .line 268
    .line 269
    add-int/2addr v14, v5

    .line 270
    const/4 v7, 0x0

    .line 271
    goto :goto_8

    .line 272
    :cond_d
    const/4 v7, 0x4

    .line 273
    new-array v14, v7, [F

    .line 274
    .line 275
    new-array v7, v7, [F

    .line 276
    .line 277
    const/4 v15, 0x0

    .line 278
    :goto_a
    if-ge v15, v4, :cond_e

    .line 279
    .line 280
    const/16 v16, 0x0

    .line 281
    .line 282
    aput v16, v7, v15

    .line 283
    .line 284
    add-int/lit8 v16, v15, 0x2

    .line 285
    .line 286
    aget v4, v11, v15

    .line 287
    .line 288
    int-to-float v4, v4

    .line 289
    aget v3, v12, v15

    .line 290
    .line 291
    int-to-float v3, v3

    .line 292
    div-float/2addr v4, v3

    .line 293
    aget v3, v11, v16

    .line 294
    .line 295
    int-to-float v3, v3

    .line 296
    aget v5, v12, v16

    .line 297
    .line 298
    int-to-float v5, v5

    .line 299
    div-float v22, v3, v5

    .line 300
    .line 301
    add-float v22, v22, v4

    .line 302
    .line 303
    const/high16 v4, 0x40000000    # 2.0f

    .line 304
    .line 305
    div-float v22, v22, v4

    .line 306
    .line 307
    aput v22, v7, v16

    .line 308
    .line 309
    aput v22, v14, v15

    .line 310
    .line 311
    mul-float v3, v3, v4

    .line 312
    .line 313
    const/high16 v4, 0x3fc00000    # 1.5f

    .line 314
    .line 315
    add-float/2addr v3, v4

    .line 316
    div-float/2addr v3, v5

    .line 317
    aput v3, v14, v16

    .line 318
    .line 319
    const/4 v3, 0x1

    .line 320
    add-int/2addr v15, v3

    .line 321
    const/4 v3, -0x1

    .line 322
    const/4 v4, 0x2

    .line 323
    const/4 v5, 0x1

    .line 324
    goto :goto_a

    .line 325
    :cond_e
    const/4 v3, 0x1

    .line 326
    move v5, v1

    .line 327
    const/4 v4, 0x0

    .line 328
    :goto_b
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    .line 329
    .line 330
    .line 331
    move-result v11

    .line 332
    aget v11, v17, v11

    .line 333
    .line 334
    const/4 v12, 0x6

    .line 335
    :goto_c
    if-ltz v12, :cond_10

    .line 336
    .line 337
    and-int/lit8 v15, v12, 0x1

    .line 338
    .line 339
    and-int/lit8 v16, v11, 0x1

    .line 340
    .line 341
    shl-int/lit8 v16, v16, 0x1

    .line 342
    .line 343
    add-int v15, v15, v16

    .line 344
    .line 345
    iget-object v3, v0, LC5/a;->b:[I

    .line 346
    .line 347
    add-int v16, v5, v12

    .line 348
    .line 349
    aget v3, v3, v16

    .line 350
    .line 351
    int-to-float v3, v3

    .line 352
    aget v16, v7, v15

    .line 353
    .line 354
    cmpg-float v16, v3, v16

    .line 355
    .line 356
    if-ltz v16, :cond_f

    .line 357
    .line 358
    aget v15, v14, v15

    .line 359
    .line 360
    cmpl-float v3, v3, v15

    .line 361
    .line 362
    if-gtz v3, :cond_f

    .line 363
    .line 364
    const/4 v3, 0x1

    .line 365
    shr-int/2addr v11, v3

    .line 366
    const/4 v15, -0x1

    .line 367
    add-int/2addr v12, v15

    .line 368
    goto :goto_c

    .line 369
    :cond_f
    sget-object v1, Lq5/i;->I:Lq5/i;

    .line 370
    .line 371
    throw v1

    .line 372
    :cond_10
    const/4 v15, -0x1

    .line 373
    if-ge v4, v13, :cond_11

    .line 374
    .line 375
    add-int/lit8 v5, v5, 0x8

    .line 376
    .line 377
    add-int/2addr v4, v3

    .line 378
    goto :goto_b

    .line 379
    :cond_11
    const/4 v4, 0x0

    .line 380
    :goto_d
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    .line 381
    .line 382
    .line 383
    move-result v5

    .line 384
    if-ge v4, v5, :cond_12

    .line 385
    .line 386
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    .line 387
    .line 388
    .line 389
    move-result v5

    .line 390
    aget-char v5, v8, v5

    .line 391
    .line 392
    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 393
    .line 394
    .line 395
    add-int/2addr v4, v3

    .line 396
    goto :goto_d

    .line 397
    :cond_12
    const/4 v4, 0x0

    .line 398
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    .line 399
    .line 400
    .line 401
    move-result v5

    .line 402
    invoke-static {v5, v9}, LC5/a;->i(C[C)Z

    .line 403
    .line 404
    .line 405
    move-result v4

    .line 406
    if-eqz v4, :cond_19

    .line 407
    .line 408
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    .line 409
    .line 410
    .line 411
    move-result v4

    .line 412
    sub-int/2addr v4, v3

    .line 413
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    .line 414
    .line 415
    .line 416
    move-result v3

    .line 417
    invoke-static {v3, v9}, LC5/a;->i(C[C)Z

    .line 418
    .line 419
    .line 420
    move-result v3

    .line 421
    if-eqz v3, :cond_18

    .line 422
    .line 423
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    .line 424
    .line 425
    .line 426
    move-result v3

    .line 427
    const/4 v4, 0x3

    .line 428
    if-le v3, v4, :cond_17

    .line 429
    .line 430
    if-eqz v2, :cond_14

    .line 431
    .line 432
    sget-object v3, Lq5/c;->O:Lq5/c;

    .line 433
    .line 434
    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 435
    .line 436
    .line 437
    move-result v2

    .line 438
    if-nez v2, :cond_13

    .line 439
    .line 440
    goto :goto_e

    .line 441
    :cond_13
    const/4 v3, 0x1

    .line 442
    goto :goto_f

    .line 443
    :cond_14
    :goto_e
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    .line 444
    .line 445
    .line 446
    move-result v2

    .line 447
    const/4 v3, 0x1

    .line 448
    sub-int/2addr v2, v3

    .line 449
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 450
    .line 451
    .line 452
    const/4 v2, 0x0

    .line 453
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 454
    .line 455
    .line 456
    :goto_f
    const/4 v2, 0x0

    .line 457
    const/4 v4, 0x0

    .line 458
    :goto_10
    if-ge v4, v1, :cond_15

    .line 459
    .line 460
    iget-object v5, v0, LC5/a;->b:[I

    .line 461
    .line 462
    aget v5, v5, v4

    .line 463
    .line 464
    add-int/2addr v2, v5

    .line 465
    add-int/2addr v4, v3

    .line 466
    goto :goto_10

    .line 467
    :cond_15
    int-to-float v4, v2

    .line 468
    :goto_11
    if-ge v1, v10, :cond_16

    .line 469
    .line 470
    iget-object v5, v0, LC5/a;->b:[I

    .line 471
    .line 472
    aget v5, v5, v1

    .line 473
    .line 474
    add-int/2addr v2, v5

    .line 475
    add-int/2addr v1, v3

    .line 476
    goto :goto_11

    .line 477
    :cond_16
    int-to-float v1, v2

    .line 478
    new-instance v2, Lq5/m;

    .line 479
    .line 480
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 481
    .line 482
    .line 483
    move-result-object v3

    .line 484
    new-instance v5, Lq5/o;

    .line 485
    .line 486
    move/from16 v7, p1

    .line 487
    .line 488
    int-to-float v6, v7

    .line 489
    invoke-direct {v5, v4, v6}, Lq5/o;-><init>(FF)V

    .line 490
    .line 491
    .line 492
    new-instance v4, Lq5/o;

    .line 493
    .line 494
    invoke-direct {v4, v1, v6}, Lq5/o;-><init>(FF)V

    .line 495
    .line 496
    .line 497
    const/4 v1, 0x2

    .line 498
    new-array v1, v1, [Lq5/o;

    .line 499
    .line 500
    const/4 v10, 0x0

    .line 501
    aput-object v5, v1, v10

    .line 502
    .line 503
    const/4 v5, 0x1

    .line 504
    aput-object v4, v1, v5

    .line 505
    .line 506
    sget-object v4, Lq5/a;->H:Lq5/a;

    .line 507
    .line 508
    const/4 v5, 0x0

    .line 509
    invoke-direct {v2, v3, v5, v1, v4}, Lq5/m;-><init>(Ljava/lang/String;[B[Lq5/o;Lq5/a;)V

    .line 510
    .line 511
    .line 512
    return-object v2

    .line 513
    :cond_17
    sget-object v1, Lq5/i;->I:Lq5/i;

    .line 514
    .line 515
    throw v1

    .line 516
    :cond_18
    sget-object v1, Lq5/i;->I:Lq5/i;

    .line 517
    .line 518
    throw v1

    .line 519
    :cond_19
    sget-object v1, Lq5/i;->I:Lq5/i;

    .line 520
    .line 521
    throw v1

    .line 522
    :cond_1a
    move/from16 v7, p1

    .line 523
    .line 524
    const/4 v10, 0x0

    .line 525
    move v10, v12

    .line 526
    const/4 v7, 0x0

    .line 527
    goto/16 :goto_5

    .line 528
    .line 529
    :cond_1b
    sget-object v1, Lq5/i;->I:Lq5/i;

    .line 530
    .line 531
    throw v1

    .line 532
    :cond_1c
    move/from16 v7, p1

    .line 533
    .line 534
    const/4 v10, 0x0

    .line 535
    const/4 v15, -0x1

    .line 536
    const/4 v3, 0x2

    .line 537
    :goto_12
    add-int/2addr v1, v3

    .line 538
    const/4 v3, -0x1

    .line 539
    const/4 v4, 0x2

    .line 540
    const/4 v7, 0x0

    .line 541
    goto/16 :goto_2

    .line 542
    .line 543
    :cond_1d
    sget-object v1, Lq5/i;->I:Lq5/i;

    .line 544
    .line 545
    throw v1

    .line 546
    :cond_1e
    sget-object v1, Lq5/i;->I:Lq5/i;

    .line 547
    .line 548
    throw v1
.end method

.method public final j(I)I
    .locals 10

    .line 1
    add-int/lit8 v0, p1, 0x7

    .line 2
    .line 3
    iget v1, p0, LC5/a;->c:I

    .line 4
    .line 5
    const/4 v2, -0x1

    .line 6
    if-lt v0, v1, :cond_0

    .line 7
    .line 8
    return v2

    .line 9
    :cond_0
    iget-object v1, p0, LC5/a;->b:[I

    .line 10
    .line 11
    const v3, 0x7fffffff

    .line 12
    .line 13
    .line 14
    const/4 v4, 0x0

    .line 15
    move v5, p1

    .line 16
    const v6, 0x7fffffff

    .line 17
    .line 18
    .line 19
    const/4 v7, 0x0

    .line 20
    :goto_0
    if-ge v5, v0, :cond_3

    .line 21
    .line 22
    aget v8, v1, v5

    .line 23
    .line 24
    if-ge v8, v6, :cond_1

    .line 25
    .line 26
    move v6, v8

    .line 27
    :cond_1
    if-le v8, v7, :cond_2

    .line 28
    .line 29
    move v7, v8

    .line 30
    :cond_2
    add-int/lit8 v5, v5, 0x2

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_3
    add-int/2addr v6, v7

    .line 34
    div-int/lit8 v6, v6, 0x2

    .line 35
    .line 36
    add-int/lit8 v5, p1, 0x1

    .line 37
    .line 38
    const/4 v7, 0x0

    .line 39
    :goto_1
    if-ge v5, v0, :cond_6

    .line 40
    .line 41
    aget v8, v1, v5

    .line 42
    .line 43
    if-ge v8, v3, :cond_4

    .line 44
    .line 45
    move v3, v8

    .line 46
    :cond_4
    if-le v8, v7, :cond_5

    .line 47
    .line 48
    move v7, v8

    .line 49
    :cond_5
    add-int/lit8 v5, v5, 0x2

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_6
    add-int/2addr v3, v7

    .line 53
    div-int/lit8 v3, v3, 0x2

    .line 54
    .line 55
    const/16 v0, 0x80

    .line 56
    .line 57
    const/4 v5, 0x0

    .line 58
    const/4 v7, 0x0

    .line 59
    :goto_2
    const/4 v8, 0x7

    .line 60
    if-ge v5, v8, :cond_9

    .line 61
    .line 62
    and-int/lit8 v8, v5, 0x1

    .line 63
    .line 64
    if-nez v8, :cond_7

    .line 65
    .line 66
    move v8, v6

    .line 67
    goto :goto_3

    .line 68
    :cond_7
    move v8, v3

    .line 69
    :goto_3
    shr-int/lit8 v0, v0, 0x1

    .line 70
    .line 71
    add-int v9, p1, v5

    .line 72
    .line 73
    aget v9, v1, v9

    .line 74
    .line 75
    if-le v9, v8, :cond_8

    .line 76
    .line 77
    or-int/2addr v7, v0

    .line 78
    :cond_8
    add-int/lit8 v5, v5, 0x1

    .line 79
    .line 80
    goto :goto_2

    .line 81
    :cond_9
    :goto_4
    sget-object p1, LC5/a;->e:[I

    .line 82
    .line 83
    array-length v0, p1

    .line 84
    if-ge v4, v0, :cond_b

    .line 85
    .line 86
    aget p1, p1, v4

    .line 87
    .line 88
    if-ne p1, v7, :cond_a

    .line 89
    .line 90
    return v4

    .line 91
    :cond_a
    add-int/lit8 v4, v4, 0x1

    .line 92
    .line 93
    goto :goto_4

    .line 94
    :cond_b
    return v2
.end method
