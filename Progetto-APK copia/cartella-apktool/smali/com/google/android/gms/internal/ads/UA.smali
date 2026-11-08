.class public final Lcom/google/android/gms/internal/ads/UA;
.super Lcom/google/android/gms/internal/ads/xA;
.source "SourceFile"


# static fields
.field public static final M:Lcom/google/android/gms/internal/ads/UA;


# instance fields
.field public final transient J:Ljava/lang/Object;

.field public final transient K:[Ljava/lang/Object;

.field public final transient L:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/ads/UA;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-direct {v0, v3, v2, v1}, Lcom/google/android/gms/internal/ads/UA;-><init>(Ljava/lang/Object;[Ljava/lang/Object;I)V

    sput-object v0, Lcom/google/android/gms/internal/ads/UA;->M:Lcom/google/android/gms/internal/ads/UA;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;[Ljava/lang/Object;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/UA;->J:Ljava/lang/Object;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/UA;->K:[Ljava/lang/Object;

    .line 7
    .line 8
    iput p3, p0, Lcom/google/android/gms/internal/ads/UA;->L:I

    .line 9
    .line 10
    return-void
.end method

.method public static c(I[Ljava/lang/Object;Lcom/google/android/gms/internal/ads/f8;)Lcom/google/android/gms/internal/ads/UA;
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
    const/4 v3, -0x1

    .line 8
    const/4 v4, 0x3

    .line 9
    const/4 v6, 0x0

    .line 10
    const/4 v7, 0x1

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    sget-object v0, Lcom/google/android/gms/internal/ads/UA;->M:Lcom/google/android/gms/internal/ads/UA;

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_0
    const/4 v8, 0x0

    .line 17
    if-ne v0, v7, :cond_1

    .line 18
    .line 19
    aget-object v0, v1, v6

    .line 20
    .line 21
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    aget-object v0, v1, v7

    .line 25
    .line 26
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    new-instance v0, Lcom/google/android/gms/internal/ads/UA;

    .line 30
    .line 31
    invoke-direct {v0, v8, v1, v7}, Lcom/google/android/gms/internal/ads/UA;-><init>(Ljava/lang/Object;[Ljava/lang/Object;I)V

    .line 32
    .line 33
    .line 34
    return-object v0

    .line 35
    :cond_1
    array-length v9, v1

    .line 36
    shr-int/2addr v9, v7

    .line 37
    invoke-static {v0, v9}, Lf/b;->o0(II)V

    .line 38
    .line 39
    .line 40
    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zA;->q(I)I

    .line 41
    .line 42
    .line 43
    move-result v9

    .line 44
    if-ne v0, v7, :cond_2

    .line 45
    .line 46
    aget-object v0, v1, v6

    .line 47
    .line 48
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    aget-object v0, v1, v7

    .line 52
    .line 53
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    const/4 v0, 0x1

    .line 57
    :goto_0
    const/4 v3, 0x2

    .line 58
    :goto_1
    const/4 v4, 0x0

    .line 59
    goto/16 :goto_d

    .line 60
    .line 61
    :cond_2
    add-int/lit8 v10, v9, -0x1

    .line 62
    .line 63
    const/16 v11, 0x80

    .line 64
    .line 65
    if-gt v9, v11, :cond_8

    .line 66
    .line 67
    new-array v9, v9, [B

    .line 68
    .line 69
    invoke-static {v9, v3}, Ljava/util/Arrays;->fill([BB)V

    .line 70
    .line 71
    .line 72
    const/4 v3, 0x0

    .line 73
    const/4 v11, 0x0

    .line 74
    :goto_2
    if-ge v3, v0, :cond_6

    .line 75
    .line 76
    add-int v12, v11, v11

    .line 77
    .line 78
    add-int v13, v3, v3

    .line 79
    .line 80
    aget-object v14, v1, v13

    .line 81
    .line 82
    invoke-static {v14}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    xor-int/2addr v13, v7

    .line 86
    aget-object v13, v1, v13

    .line 87
    .line 88
    invoke-static {v13}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v14}, Ljava/lang/Object;->hashCode()I

    .line 92
    .line 93
    .line 94
    move-result v15

    .line 95
    invoke-static {v15}, Lo3/r;->j(I)I

    .line 96
    .line 97
    .line 98
    move-result v15

    .line 99
    :goto_3
    and-int/2addr v15, v10

    .line 100
    aget-byte v5, v9, v15

    .line 101
    .line 102
    const/16 v6, 0xff

    .line 103
    .line 104
    and-int/2addr v5, v6

    .line 105
    if-ne v5, v6, :cond_4

    .line 106
    .line 107
    int-to-byte v5, v12

    .line 108
    aput-byte v5, v9, v15

    .line 109
    .line 110
    if-ge v11, v3, :cond_3

    .line 111
    .line 112
    aput-object v14, v1, v12

    .line 113
    .line 114
    xor-int/lit8 v5, v12, 0x1

    .line 115
    .line 116
    aput-object v13, v1, v5

    .line 117
    .line 118
    :cond_3
    add-int/2addr v11, v7

    .line 119
    goto :goto_4

    .line 120
    :cond_4
    aget-object v6, v1, v5

    .line 121
    .line 122
    invoke-virtual {v14, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    move-result v6

    .line 126
    if-eqz v6, :cond_5

    .line 127
    .line 128
    xor-int/2addr v5, v7

    .line 129
    new-instance v6, Lcom/google/android/gms/internal/ads/vA;

    .line 130
    .line 131
    aget-object v8, v1, v5

    .line 132
    .line 133
    invoke-static {v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    invoke-direct {v6, v14, v13, v8}, Lcom/google/android/gms/internal/ads/vA;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 137
    .line 138
    .line 139
    aput-object v13, v1, v5

    .line 140
    .line 141
    move-object v8, v6

    .line 142
    :goto_4
    add-int/2addr v3, v7

    .line 143
    const/4 v6, 0x0

    .line 144
    goto :goto_2

    .line 145
    :cond_5
    add-int/2addr v15, v7

    .line 146
    const/4 v6, 0x0

    .line 147
    goto :goto_3

    .line 148
    :cond_6
    if-ne v11, v0, :cond_7

    .line 149
    .line 150
    move-object v8, v9

    .line 151
    goto :goto_0

    .line 152
    :cond_7
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 153
    .line 154
    .line 155
    move-result-object v3

    .line 156
    new-array v4, v4, [Ljava/lang/Object;

    .line 157
    .line 158
    const/4 v5, 0x0

    .line 159
    aput-object v9, v4, v5

    .line 160
    .line 161
    aput-object v3, v4, v7

    .line 162
    .line 163
    const/4 v3, 0x2

    .line 164
    aput-object v8, v4, v3

    .line 165
    .line 166
    :goto_5
    move-object v8, v4

    .line 167
    goto :goto_1

    .line 168
    :cond_8
    const v5, 0x8000

    .line 169
    .line 170
    .line 171
    if-gt v9, v5, :cond_e

    .line 172
    .line 173
    new-array v5, v9, [S

    .line 174
    .line 175
    invoke-static {v5, v3}, Ljava/util/Arrays;->fill([SS)V

    .line 176
    .line 177
    .line 178
    const/4 v3, 0x0

    .line 179
    const/4 v6, 0x0

    .line 180
    :goto_6
    if-ge v3, v0, :cond_c

    .line 181
    .line 182
    add-int v9, v6, v6

    .line 183
    .line 184
    add-int v11, v3, v3

    .line 185
    .line 186
    aget-object v12, v1, v11

    .line 187
    .line 188
    invoke-static {v12}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    xor-int/2addr v11, v7

    .line 192
    aget-object v11, v1, v11

    .line 193
    .line 194
    invoke-static {v11}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    invoke-virtual {v12}, Ljava/lang/Object;->hashCode()I

    .line 198
    .line 199
    .line 200
    move-result v13

    .line 201
    invoke-static {v13}, Lo3/r;->j(I)I

    .line 202
    .line 203
    .line 204
    move-result v13

    .line 205
    :goto_7
    and-int/2addr v13, v10

    .line 206
    aget-short v14, v5, v13

    .line 207
    .line 208
    int-to-char v14, v14

    .line 209
    const v15, 0xffff

    .line 210
    .line 211
    .line 212
    if-ne v14, v15, :cond_a

    .line 213
    .line 214
    int-to-short v14, v9

    .line 215
    aput-short v14, v5, v13

    .line 216
    .line 217
    if-ge v6, v3, :cond_9

    .line 218
    .line 219
    aput-object v12, v1, v9

    .line 220
    .line 221
    xor-int/2addr v9, v7

    .line 222
    aput-object v11, v1, v9

    .line 223
    .line 224
    :cond_9
    add-int/2addr v6, v7

    .line 225
    goto :goto_8

    .line 226
    :cond_a
    aget-object v15, v1, v14

    .line 227
    .line 228
    invoke-virtual {v12, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 229
    .line 230
    .line 231
    move-result v15

    .line 232
    if-eqz v15, :cond_b

    .line 233
    .line 234
    xor-int/lit8 v8, v14, 0x1

    .line 235
    .line 236
    new-instance v9, Lcom/google/android/gms/internal/ads/vA;

    .line 237
    .line 238
    aget-object v13, v1, v8

    .line 239
    .line 240
    invoke-static {v13}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    .line 242
    .line 243
    invoke-direct {v9, v12, v11, v13}, Lcom/google/android/gms/internal/ads/vA;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 244
    .line 245
    .line 246
    aput-object v11, v1, v8

    .line 247
    .line 248
    move-object v8, v9

    .line 249
    :goto_8
    add-int/2addr v3, v7

    .line 250
    goto :goto_6

    .line 251
    :cond_b
    add-int/2addr v13, v7

    .line 252
    goto :goto_7

    .line 253
    :cond_c
    if-ne v6, v0, :cond_d

    .line 254
    .line 255
    :goto_9
    move-object v8, v5

    .line 256
    goto/16 :goto_0

    .line 257
    .line 258
    :cond_d
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 259
    .line 260
    .line 261
    move-result-object v3

    .line 262
    new-array v4, v4, [Ljava/lang/Object;

    .line 263
    .line 264
    const/4 v6, 0x0

    .line 265
    aput-object v5, v4, v6

    .line 266
    .line 267
    aput-object v3, v4, v7

    .line 268
    .line 269
    const/4 v3, 0x2

    .line 270
    aput-object v8, v4, v3

    .line 271
    .line 272
    goto :goto_5

    .line 273
    :cond_e
    new-array v5, v9, [I

    .line 274
    .line 275
    invoke-static {v5, v3}, Ljava/util/Arrays;->fill([II)V

    .line 276
    .line 277
    .line 278
    move-object v9, v8

    .line 279
    const/4 v6, 0x0

    .line 280
    const/4 v8, 0x0

    .line 281
    :goto_a
    if-ge v6, v0, :cond_12

    .line 282
    .line 283
    add-int v11, v8, v8

    .line 284
    .line 285
    add-int v12, v6, v6

    .line 286
    .line 287
    aget-object v13, v1, v12

    .line 288
    .line 289
    invoke-static {v13}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    .line 291
    .line 292
    xor-int/2addr v12, v7

    .line 293
    aget-object v12, v1, v12

    .line 294
    .line 295
    invoke-static {v12}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    .line 297
    .line 298
    invoke-virtual {v13}, Ljava/lang/Object;->hashCode()I

    .line 299
    .line 300
    .line 301
    move-result v14

    .line 302
    invoke-static {v14}, Lo3/r;->j(I)I

    .line 303
    .line 304
    .line 305
    move-result v14

    .line 306
    :goto_b
    and-int/2addr v14, v10

    .line 307
    aget v15, v5, v14

    .line 308
    .line 309
    if-ne v15, v3, :cond_10

    .line 310
    .line 311
    aput v11, v5, v14

    .line 312
    .line 313
    if-ge v8, v6, :cond_f

    .line 314
    .line 315
    aput-object v13, v1, v11

    .line 316
    .line 317
    xor-int/2addr v11, v7

    .line 318
    aput-object v12, v1, v11

    .line 319
    .line 320
    :cond_f
    add-int/2addr v8, v7

    .line 321
    goto :goto_c

    .line 322
    :cond_10
    aget-object v3, v1, v15

    .line 323
    .line 324
    invoke-virtual {v13, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 325
    .line 326
    .line 327
    move-result v3

    .line 328
    if-eqz v3, :cond_11

    .line 329
    .line 330
    xor-int/lit8 v3, v15, 0x1

    .line 331
    .line 332
    new-instance v9, Lcom/google/android/gms/internal/ads/vA;

    .line 333
    .line 334
    aget-object v11, v1, v3

    .line 335
    .line 336
    invoke-static {v11}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    .line 338
    .line 339
    invoke-direct {v9, v13, v12, v11}, Lcom/google/android/gms/internal/ads/vA;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 340
    .line 341
    .line 342
    aput-object v12, v1, v3

    .line 343
    .line 344
    :goto_c
    add-int/2addr v6, v7

    .line 345
    const/4 v3, -0x1

    .line 346
    goto :goto_a

    .line 347
    :cond_11
    add-int/2addr v14, v7

    .line 348
    const/4 v3, -0x1

    .line 349
    goto :goto_b

    .line 350
    :cond_12
    if-ne v8, v0, :cond_13

    .line 351
    .line 352
    goto :goto_9

    .line 353
    :cond_13
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 354
    .line 355
    .line 356
    move-result-object v3

    .line 357
    new-array v8, v4, [Ljava/lang/Object;

    .line 358
    .line 359
    const/4 v4, 0x0

    .line 360
    aput-object v5, v8, v4

    .line 361
    .line 362
    aput-object v3, v8, v7

    .line 363
    .line 364
    const/4 v3, 0x2

    .line 365
    aput-object v9, v8, v3

    .line 366
    .line 367
    :goto_d
    instance-of v5, v8, [Ljava/lang/Object;

    .line 368
    .line 369
    if-eqz v5, :cond_15

    .line 370
    .line 371
    check-cast v8, [Ljava/lang/Object;

    .line 372
    .line 373
    aget-object v0, v8, v3

    .line 374
    .line 375
    check-cast v0, Lcom/google/android/gms/internal/ads/vA;

    .line 376
    .line 377
    if-eqz v2, :cond_14

    .line 378
    .line 379
    iput-object v0, v2, Lcom/google/android/gms/internal/ads/f8;->J:Ljava/lang/Object;

    .line 380
    .line 381
    aget-object v0, v8, v4

    .line 382
    .line 383
    aget-object v2, v8, v7

    .line 384
    .line 385
    check-cast v2, Ljava/lang/Integer;

    .line 386
    .line 387
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 388
    .line 389
    .line 390
    move-result v2

    .line 391
    add-int v3, v2, v2

    .line 392
    .line 393
    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 394
    .line 395
    .line 396
    move-result-object v1

    .line 397
    move-object v8, v0

    .line 398
    move v0, v2

    .line 399
    goto :goto_e

    .line 400
    :cond_14
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/vA;->a()Ljava/lang/IllegalArgumentException;

    .line 401
    .line 402
    .line 403
    move-result-object v0

    .line 404
    throw v0

    .line 405
    :cond_15
    :goto_e
    new-instance v2, Lcom/google/android/gms/internal/ads/UA;

    .line 406
    .line 407
    invoke-direct {v2, v8, v1, v0}, Lcom/google/android/gms/internal/ads/UA;-><init>(Ljava/lang/Object;[Ljava/lang/Object;I)V

    .line 408
    .line 409
    .line 410
    return-object v2
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
    iget v2, p0, Lcom/google/android/gms/internal/ads/UA;->L:I

    .line 9
    .line 10
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/UA;->K:[Ljava/lang/Object;

    .line 11
    .line 12
    if-ne v2, v1, :cond_2

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    aget-object v2, v3, v2

    .line 16
    .line 17
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-eqz p1, :cond_0

    .line 25
    .line 26
    aget-object p1, v3, v1

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
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/UA;->J:Ljava/lang/Object;

    .line 34
    .line 35
    if-nez v2, :cond_3

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_3
    instance-of v4, v2, [B

    .line 39
    .line 40
    const/4 v5, -0x1

    .line 41
    if-eqz v4, :cond_6

    .line 42
    .line 43
    move-object v4, v2

    .line 44
    check-cast v4, [B

    .line 45
    .line 46
    array-length v2, v4

    .line 47
    add-int/lit8 v6, v2, -0x1

    .line 48
    .line 49
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    invoke-static {v2}, Lo3/r;->j(I)I

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    :goto_1
    and-int/2addr v2, v6

    .line 58
    aget-byte v5, v4, v2

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
    aget-object v7, v3, v5

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
    aget-object p1, v3, p1

    .line 77
    .line 78
    goto :goto_4

    .line 79
    :cond_5
    add-int/lit8 v2, v2, 0x1

    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_6
    instance-of v4, v2, [S

    .line 83
    .line 84
    if-eqz v4, :cond_9

    .line 85
    .line 86
    move-object v4, v2

    .line 87
    check-cast v4, [S

    .line 88
    .line 89
    array-length v2, v4

    .line 90
    add-int/lit8 v6, v2, -0x1

    .line 91
    .line 92
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    .line 93
    .line 94
    .line 95
    move-result v2

    .line 96
    invoke-static {v2}, Lo3/r;->j(I)I

    .line 97
    .line 98
    .line 99
    move-result v2

    .line 100
    :goto_2
    and-int/2addr v2, v6

    .line 101
    aget-short v5, v4, v2

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
    aget-object v7, v3, v5

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
    aget-object p1, v3, p1

    .line 121
    .line 122
    goto :goto_4

    .line 123
    :cond_8
    add-int/lit8 v2, v2, 0x1

    .line 124
    .line 125
    goto :goto_2

    .line 126
    :cond_9
    check-cast v2, [I

    .line 127
    .line 128
    array-length v4, v2

    .line 129
    add-int/2addr v4, v5

    .line 130
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    .line 131
    .line 132
    .line 133
    move-result v6

    .line 134
    invoke-static {v6}, Lo3/r;->j(I)I

    .line 135
    .line 136
    .line 137
    move-result v6

    .line 138
    :goto_3
    and-int/2addr v6, v4

    .line 139
    aget v7, v2, v6

    .line 140
    .line 141
    if-ne v7, v5, :cond_a

    .line 142
    .line 143
    goto/16 :goto_0

    .line 144
    .line 145
    :cond_a
    aget-object v8, v3, v7

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
    aget-object p1, v3, p1

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

    iget v0, p0, Lcom/google/android/gms/internal/ads/UA;->L:I

    return v0
.end method
