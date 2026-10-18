.class public final Lz4/i0;
.super Lz4/J;
.source "SourceFile"


# static fields
.field public static final M:Lz4/i0;


# instance fields
.field public final transient J:Ljava/lang/Object;

.field public final transient K:[Ljava/lang/Object;

.field public final transient L:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lz4/i0;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    new-array v2, v1, [Ljava/lang/Object;

    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    invoke-direct {v0, v3, v2, v1}, Lz4/i0;-><init>(Ljava/lang/Object;[Ljava/lang/Object;I)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lz4/i0;->M:Lz4/i0;

    .line 11
    .line 12
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;[Ljava/lang/Object;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lz4/i0;->J:Ljava/lang/Object;

    .line 5
    .line 6
    iput-object p2, p0, Lz4/i0;->K:[Ljava/lang/Object;

    .line 7
    .line 8
    iput p3, p0, Lz4/i0;->L:I

    .line 9
    .line 10
    return-void
.end method

.method public static e(I[Ljava/lang/Object;Lp0/C;)Lz4/i0;
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
    const/4 v4, 0x0

    .line 9
    const/4 v5, 0x2

    .line 10
    const/4 v6, 0x1

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    sget-object v0, Lz4/i0;->M:Lz4/i0;

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_0
    const/4 v7, 0x0

    .line 17
    if-ne v0, v6, :cond_1

    .line 18
    .line 19
    aget-object v0, v1, v4

    .line 20
    .line 21
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    aget-object v0, v1, v6

    .line 25
    .line 26
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    new-instance v0, Lz4/i0;

    .line 30
    .line 31
    invoke-direct {v0, v7, v1, v6}, Lz4/i0;-><init>(Ljava/lang/Object;[Ljava/lang/Object;I)V

    .line 32
    .line 33
    .line 34
    return-object v0

    .line 35
    :cond_1
    array-length v8, v1

    .line 36
    shr-int/2addr v8, v6

    .line 37
    invoke-static {v0, v8}, Ly4/k;->t(II)V

    .line 38
    .line 39
    .line 40
    invoke-static/range {p0 .. p0}, Lz4/L;->p(I)I

    .line 41
    .line 42
    .line 43
    move-result v8

    .line 44
    if-ne v0, v6, :cond_2

    .line 45
    .line 46
    aget-object v3, v1, v4

    .line 47
    .line 48
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    aget-object v3, v1, v6

    .line 52
    .line 53
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    :goto_0
    const/4 v4, 0x2

    .line 57
    goto/16 :goto_c

    .line 58
    .line 59
    :cond_2
    add-int/lit8 v9, v8, -0x1

    .line 60
    .line 61
    const/16 v10, 0x80

    .line 62
    .line 63
    const/4 v11, -0x1

    .line 64
    if-gt v8, v10, :cond_8

    .line 65
    .line 66
    new-array v8, v8, [B

    .line 67
    .line 68
    invoke-static {v8, v11}, Ljava/util/Arrays;->fill([BB)V

    .line 69
    .line 70
    .line 71
    const/4 v10, 0x0

    .line 72
    const/4 v11, 0x0

    .line 73
    :goto_1
    if-ge v10, v0, :cond_6

    .line 74
    .line 75
    mul-int/lit8 v12, v10, 0x2

    .line 76
    .line 77
    mul-int/lit8 v13, v11, 0x2

    .line 78
    .line 79
    aget-object v14, v1, v12

    .line 80
    .line 81
    invoke-static {v14}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    xor-int/2addr v12, v6

    .line 85
    aget-object v12, v1, v12

    .line 86
    .line 87
    invoke-static {v12}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v14}, Ljava/lang/Object;->hashCode()I

    .line 91
    .line 92
    .line 93
    move-result v15

    .line 94
    invoke-static {v15}, La7/b;->g(I)I

    .line 95
    .line 96
    .line 97
    move-result v15

    .line 98
    :goto_2
    and-int/2addr v15, v9

    .line 99
    aget-byte v5, v8, v15

    .line 100
    .line 101
    const/16 v4, 0xff

    .line 102
    .line 103
    and-int/2addr v5, v4

    .line 104
    if-ne v5, v4, :cond_4

    .line 105
    .line 106
    int-to-byte v4, v13

    .line 107
    aput-byte v4, v8, v15

    .line 108
    .line 109
    if-ge v11, v10, :cond_3

    .line 110
    .line 111
    aput-object v14, v1, v13

    .line 112
    .line 113
    xor-int/lit8 v4, v13, 0x1

    .line 114
    .line 115
    aput-object v12, v1, v4

    .line 116
    .line 117
    :cond_3
    add-int/2addr v11, v6

    .line 118
    goto :goto_3

    .line 119
    :cond_4
    aget-object v4, v1, v5

    .line 120
    .line 121
    invoke-virtual {v14, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    move-result v4

    .line 125
    if-eqz v4, :cond_5

    .line 126
    .line 127
    new-instance v4, Lz4/I;

    .line 128
    .line 129
    xor-int/2addr v5, v6

    .line 130
    aget-object v7, v1, v5

    .line 131
    .line 132
    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    invoke-direct {v4, v14, v12, v7}, Lz4/I;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 136
    .line 137
    .line 138
    aput-object v12, v1, v5

    .line 139
    .line 140
    move-object v7, v4

    .line 141
    :goto_3
    add-int/2addr v10, v6

    .line 142
    const/4 v4, 0x0

    .line 143
    const/4 v5, 0x2

    .line 144
    goto :goto_1

    .line 145
    :cond_5
    add-int/2addr v15, v6

    .line 146
    const/4 v4, 0x0

    .line 147
    const/4 v5, 0x2

    .line 148
    goto :goto_2

    .line 149
    :cond_6
    if-ne v11, v0, :cond_7

    .line 150
    .line 151
    move-object v7, v8

    .line 152
    goto :goto_0

    .line 153
    :cond_7
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 154
    .line 155
    .line 156
    move-result-object v4

    .line 157
    new-array v3, v3, [Ljava/lang/Object;

    .line 158
    .line 159
    const/4 v5, 0x0

    .line 160
    aput-object v8, v3, v5

    .line 161
    .line 162
    aput-object v4, v3, v6

    .line 163
    .line 164
    const/4 v4, 0x2

    .line 165
    aput-object v7, v3, v4

    .line 166
    .line 167
    :goto_4
    move-object v7, v3

    .line 168
    goto/16 :goto_c

    .line 169
    .line 170
    :cond_8
    const/4 v4, 0x2

    .line 171
    const v5, 0x8000

    .line 172
    .line 173
    .line 174
    if-gt v8, v5, :cond_e

    .line 175
    .line 176
    new-array v5, v8, [S

    .line 177
    .line 178
    invoke-static {v5, v11}, Ljava/util/Arrays;->fill([SS)V

    .line 179
    .line 180
    .line 181
    const/4 v8, 0x0

    .line 182
    const/4 v10, 0x0

    .line 183
    :goto_5
    if-ge v8, v0, :cond_c

    .line 184
    .line 185
    mul-int/lit8 v11, v8, 0x2

    .line 186
    .line 187
    mul-int/lit8 v12, v10, 0x2

    .line 188
    .line 189
    aget-object v4, v1, v11

    .line 190
    .line 191
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    .line 193
    .line 194
    xor-int/2addr v11, v6

    .line 195
    aget-object v11, v1, v11

    .line 196
    .line 197
    invoke-static {v11}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    .line 201
    .line 202
    .line 203
    move-result v13

    .line 204
    invoke-static {v13}, La7/b;->g(I)I

    .line 205
    .line 206
    .line 207
    move-result v13

    .line 208
    :goto_6
    and-int/2addr v13, v9

    .line 209
    aget-short v14, v5, v13

    .line 210
    .line 211
    const v15, 0xffff

    .line 212
    .line 213
    .line 214
    and-int/2addr v14, v15

    .line 215
    if-ne v14, v15, :cond_a

    .line 216
    .line 217
    int-to-short v14, v12

    .line 218
    aput-short v14, v5, v13

    .line 219
    .line 220
    if-ge v10, v8, :cond_9

    .line 221
    .line 222
    aput-object v4, v1, v12

    .line 223
    .line 224
    xor-int/lit8 v4, v12, 0x1

    .line 225
    .line 226
    aput-object v11, v1, v4

    .line 227
    .line 228
    :cond_9
    add-int/2addr v10, v6

    .line 229
    goto :goto_7

    .line 230
    :cond_a
    aget-object v15, v1, v14

    .line 231
    .line 232
    invoke-virtual {v4, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 233
    .line 234
    .line 235
    move-result v15

    .line 236
    if-eqz v15, :cond_b

    .line 237
    .line 238
    new-instance v7, Lz4/I;

    .line 239
    .line 240
    xor-int/lit8 v12, v14, 0x1

    .line 241
    .line 242
    aget-object v13, v1, v12

    .line 243
    .line 244
    invoke-static {v13}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    .line 246
    .line 247
    invoke-direct {v7, v4, v11, v13}, Lz4/I;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 248
    .line 249
    .line 250
    aput-object v11, v1, v12

    .line 251
    .line 252
    :goto_7
    add-int/2addr v8, v6

    .line 253
    const/4 v4, 0x2

    .line 254
    goto :goto_5

    .line 255
    :cond_b
    add-int/2addr v13, v6

    .line 256
    goto :goto_6

    .line 257
    :cond_c
    if-ne v10, v0, :cond_d

    .line 258
    .line 259
    :goto_8
    move-object v7, v5

    .line 260
    goto/16 :goto_0

    .line 261
    .line 262
    :cond_d
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 263
    .line 264
    .line 265
    move-result-object v4

    .line 266
    new-array v3, v3, [Ljava/lang/Object;

    .line 267
    .line 268
    const/4 v8, 0x0

    .line 269
    aput-object v5, v3, v8

    .line 270
    .line 271
    aput-object v4, v3, v6

    .line 272
    .line 273
    const/4 v4, 0x2

    .line 274
    aput-object v7, v3, v4

    .line 275
    .line 276
    goto :goto_4

    .line 277
    :cond_e
    new-array v5, v8, [I

    .line 278
    .line 279
    invoke-static {v5, v11}, Ljava/util/Arrays;->fill([II)V

    .line 280
    .line 281
    .line 282
    const/4 v8, 0x0

    .line 283
    const/4 v10, 0x0

    .line 284
    :goto_9
    if-ge v8, v0, :cond_12

    .line 285
    .line 286
    mul-int/lit8 v12, v8, 0x2

    .line 287
    .line 288
    mul-int/lit8 v13, v10, 0x2

    .line 289
    .line 290
    aget-object v4, v1, v12

    .line 291
    .line 292
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    .line 294
    .line 295
    xor-int/2addr v12, v6

    .line 296
    aget-object v12, v1, v12

    .line 297
    .line 298
    invoke-static {v12}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    .line 300
    .line 301
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    .line 302
    .line 303
    .line 304
    move-result v14

    .line 305
    invoke-static {v14}, La7/b;->g(I)I

    .line 306
    .line 307
    .line 308
    move-result v14

    .line 309
    :goto_a
    and-int/2addr v14, v9

    .line 310
    aget v15, v5, v14

    .line 311
    .line 312
    if-ne v15, v11, :cond_10

    .line 313
    .line 314
    aput v13, v5, v14

    .line 315
    .line 316
    if-ge v10, v8, :cond_f

    .line 317
    .line 318
    aput-object v4, v1, v13

    .line 319
    .line 320
    xor-int/lit8 v4, v13, 0x1

    .line 321
    .line 322
    aput-object v12, v1, v4

    .line 323
    .line 324
    :cond_f
    add-int/2addr v10, v6

    .line 325
    goto :goto_b

    .line 326
    :cond_10
    aget-object v11, v1, v15

    .line 327
    .line 328
    invoke-virtual {v4, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 329
    .line 330
    .line 331
    move-result v11

    .line 332
    if-eqz v11, :cond_11

    .line 333
    .line 334
    new-instance v7, Lz4/I;

    .line 335
    .line 336
    xor-int/lit8 v11, v15, 0x1

    .line 337
    .line 338
    aget-object v13, v1, v11

    .line 339
    .line 340
    invoke-static {v13}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    .line 342
    .line 343
    invoke-direct {v7, v4, v12, v13}, Lz4/I;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 344
    .line 345
    .line 346
    aput-object v12, v1, v11

    .line 347
    .line 348
    :goto_b
    add-int/2addr v8, v6

    .line 349
    const/4 v4, 0x2

    .line 350
    const/4 v11, -0x1

    .line 351
    goto :goto_9

    .line 352
    :cond_11
    add-int/2addr v14, v6

    .line 353
    const/4 v11, -0x1

    .line 354
    goto :goto_a

    .line 355
    :cond_12
    if-ne v10, v0, :cond_13

    .line 356
    .line 357
    goto :goto_8

    .line 358
    :cond_13
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 359
    .line 360
    .line 361
    move-result-object v4

    .line 362
    new-array v3, v3, [Ljava/lang/Object;

    .line 363
    .line 364
    const/4 v8, 0x0

    .line 365
    aput-object v5, v3, v8

    .line 366
    .line 367
    aput-object v4, v3, v6

    .line 368
    .line 369
    const/4 v4, 0x2

    .line 370
    aput-object v7, v3, v4

    .line 371
    .line 372
    goto/16 :goto_4

    .line 373
    .line 374
    :goto_c
    instance-of v3, v7, [Ljava/lang/Object;

    .line 375
    .line 376
    if-eqz v3, :cond_15

    .line 377
    .line 378
    check-cast v7, [Ljava/lang/Object;

    .line 379
    .line 380
    aget-object v0, v7, v4

    .line 381
    .line 382
    check-cast v0, Lz4/I;

    .line 383
    .line 384
    if-eqz v2, :cond_14

    .line 385
    .line 386
    iput-object v0, v2, Lp0/C;->K:Ljava/lang/Object;

    .line 387
    .line 388
    const/4 v0, 0x0

    .line 389
    aget-object v0, v7, v0

    .line 390
    .line 391
    aget-object v2, v7, v6

    .line 392
    .line 393
    check-cast v2, Ljava/lang/Integer;

    .line 394
    .line 395
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 396
    .line 397
    .line 398
    move-result v2

    .line 399
    mul-int/lit8 v5, v2, 0x2

    .line 400
    .line 401
    invoke-static {v1, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 402
    .line 403
    .line 404
    move-result-object v1

    .line 405
    move-object v7, v0

    .line 406
    move v0, v2

    .line 407
    goto :goto_d

    .line 408
    :cond_14
    invoke-virtual {v0}, Lz4/I;->a()Ljava/lang/IllegalArgumentException;

    .line 409
    .line 410
    .line 411
    move-result-object v0

    .line 412
    throw v0

    .line 413
    :cond_15
    :goto_d
    new-instance v2, Lz4/i0;

    .line 414
    .line 415
    invoke-direct {v2, v7, v1, v0}, Lz4/i0;-><init>(Ljava/lang/Object;[Ljava/lang/Object;I)V

    .line 416
    .line 417
    .line 418
    return-object v2
.end method


# virtual methods
.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

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
    iget-object v2, p0, Lz4/i0;->K:[Ljava/lang/Object;

    .line 9
    .line 10
    iget v3, p0, Lz4/i0;->L:I

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
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

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
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    goto/16 :goto_4

    .line 32
    .line 33
    :cond_2
    iget-object v3, p0, Lz4/i0;->J:Ljava/lang/Object;

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
    if-eqz v4, :cond_6

    .line 41
    .line 42
    move-object v4, v3

    .line 43
    check-cast v4, [B

    .line 44
    .line 45
    array-length v3, v4

    .line 46
    add-int/lit8 v5, v3, -0x1

    .line 47
    .line 48
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    invoke-static {v3}, La7/b;->g(I)I

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    :goto_1
    and-int/2addr v3, v5

    .line 57
    aget-byte v6, v4, v3

    .line 58
    .line 59
    const/16 v7, 0xff

    .line 60
    .line 61
    and-int/2addr v6, v7

    .line 62
    if-ne v6, v7, :cond_4

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_4
    aget-object v7, v2, v6

    .line 66
    .line 67
    invoke-virtual {p1, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v7

    .line 71
    if-eqz v7, :cond_5

    .line 72
    .line 73
    xor-int/lit8 p1, v6, 0x1

    .line 74
    .line 75
    aget-object p1, v2, p1

    .line 76
    .line 77
    goto :goto_4

    .line 78
    :cond_5
    add-int/lit8 v3, v3, 0x1

    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_6
    instance-of v4, v3, [S

    .line 82
    .line 83
    if-eqz v4, :cond_9

    .line 84
    .line 85
    move-object v4, v3

    .line 86
    check-cast v4, [S

    .line 87
    .line 88
    array-length v3, v4

    .line 89
    add-int/lit8 v5, v3, -0x1

    .line 90
    .line 91
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    .line 92
    .line 93
    .line 94
    move-result v3

    .line 95
    invoke-static {v3}, La7/b;->g(I)I

    .line 96
    .line 97
    .line 98
    move-result v3

    .line 99
    :goto_2
    and-int/2addr v3, v5

    .line 100
    aget-short v6, v4, v3

    .line 101
    .line 102
    const v7, 0xffff

    .line 103
    .line 104
    .line 105
    and-int/2addr v6, v7

    .line 106
    if-ne v6, v7, :cond_7

    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_7
    aget-object v7, v2, v6

    .line 110
    .line 111
    invoke-virtual {p1, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    move-result v7

    .line 115
    if-eqz v7, :cond_8

    .line 116
    .line 117
    xor-int/lit8 p1, v6, 0x1

    .line 118
    .line 119
    aget-object p1, v2, p1

    .line 120
    .line 121
    goto :goto_4

    .line 122
    :cond_8
    add-int/lit8 v3, v3, 0x1

    .line 123
    .line 124
    goto :goto_2

    .line 125
    :cond_9
    check-cast v3, [I

    .line 126
    .line 127
    array-length v4, v3

    .line 128
    sub-int/2addr v4, v1

    .line 129
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    .line 130
    .line 131
    .line 132
    move-result v5

    .line 133
    invoke-static {v5}, La7/b;->g(I)I

    .line 134
    .line 135
    .line 136
    move-result v5

    .line 137
    :goto_3
    and-int/2addr v5, v4

    .line 138
    aget v6, v3, v5

    .line 139
    .line 140
    const/4 v7, -0x1

    .line 141
    if-ne v6, v7, :cond_a

    .line 142
    .line 143
    goto/16 :goto_0

    .line 144
    .line 145
    :cond_a
    aget-object v7, v2, v6

    .line 146
    .line 147
    invoke-virtual {p1, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 148
    .line 149
    .line 150
    move-result v7

    .line 151
    if-eqz v7, :cond_c

    .line 152
    .line 153
    xor-int/lit8 p1, v6, 0x1

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
    add-int/lit8 v5, v5, 0x1

    .line 162
    .line 163
    goto :goto_3
.end method

.method public final size()I
    .locals 1

    .line 1
    iget v0, p0, Lz4/i0;->L:I

    .line 2
    .line 3
    return v0
.end method
