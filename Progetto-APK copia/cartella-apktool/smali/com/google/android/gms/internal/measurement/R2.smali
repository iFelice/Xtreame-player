.class public final Lcom/google/android/gms/internal/measurement/R2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/Y2;


# static fields
.field public static final j:[I

.field public static final k:Lsun/misc/Unsafe;


# instance fields
.field public final a:[I

.field public final b:[Ljava/lang/Object;

.field public final c:I

.field public final d:I

.field public final e:Lcom/google/android/gms/internal/measurement/P2;

.field public final f:[I

.field public final g:I

.field public final h:I

.field public final i:Lcom/google/android/gms/internal/measurement/q2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [I

    .line 3
    .line 4
    sput-object v0, Lcom/google/android/gms/internal/measurement/R2;->j:[I

    .line 5
    .line 6
    invoke-static {}, Lcom/google/android/gms/internal/measurement/g3;->j()Lsun/misc/Unsafe;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sput-object v0, Lcom/google/android/gms/internal/measurement/R2;->k:Lsun/misc/Unsafe;

    .line 11
    .line 12
    return-void
.end method

.method public constructor <init>([I[Ljava/lang/Object;IILcom/google/android/gms/internal/measurement/P2;[IIILcom/google/android/gms/internal/measurement/q2;LS3/g;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/R2;->a:[I

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/R2;->b:[Ljava/lang/Object;

    .line 7
    .line 8
    iput p3, p0, Lcom/google/android/gms/internal/measurement/R2;->c:I

    .line 9
    .line 10
    iput p4, p0, Lcom/google/android/gms/internal/measurement/R2;->d:I

    .line 11
    .line 12
    iput-object p6, p0, Lcom/google/android/gms/internal/measurement/R2;->f:[I

    .line 13
    .line 14
    iput p7, p0, Lcom/google/android/gms/internal/measurement/R2;->g:I

    .line 15
    .line 16
    iput p8, p0, Lcom/google/android/gms/internal/measurement/R2;->h:I

    .line 17
    .line 18
    iput-object p9, p0, Lcom/google/android/gms/internal/measurement/R2;->i:Lcom/google/android/gms/internal/measurement/q2;

    .line 19
    .line 20
    iput-object p5, p0, Lcom/google/android/gms/internal/measurement/R2;->e:Lcom/google/android/gms/internal/measurement/P2;

    .line 21
    .line 22
    return-void
.end method

.method public static m(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return p0

    .line 5
    :cond_0
    instance-of v0, p0, Lcom/google/android/gms/internal/measurement/s2;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    check-cast p0, Lcom/google/android/gms/internal/measurement/s2;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/s2;->n()Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    return p0

    .line 16
    :cond_1
    const/4 p0, 0x1

    .line 17
    return p0
.end method

.method public static p(Lcom/google/android/gms/internal/measurement/N2;Lcom/google/android/gms/internal/measurement/q2;LS3/g;)Lcom/google/android/gms/internal/measurement/R2;
    .locals 33

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    instance-of v1, v0, Lcom/google/android/gms/internal/measurement/X2;

    .line 4
    .line 5
    if-eqz v1, :cond_37

    .line 6
    .line 7
    check-cast v0, Lcom/google/android/gms/internal/measurement/X2;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/X2;->c()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    const/4 v3, 0x0

    .line 18
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    const v6, 0xd800

    .line 23
    .line 24
    .line 25
    if-lt v4, v6, :cond_0

    .line 26
    .line 27
    const/4 v4, 0x1

    .line 28
    :goto_0
    add-int/lit8 v7, v4, 0x1

    .line 29
    .line 30
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    if-lt v4, v6, :cond_1

    .line 35
    .line 36
    move v4, v7

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    const/4 v7, 0x1

    .line 39
    :cond_1
    add-int/lit8 v4, v7, 0x1

    .line 40
    .line 41
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    .line 42
    .line 43
    .line 44
    move-result v7

    .line 45
    if-lt v7, v6, :cond_3

    .line 46
    .line 47
    and-int/lit16 v7, v7, 0x1fff

    .line 48
    .line 49
    const/16 v9, 0xd

    .line 50
    .line 51
    :goto_1
    add-int/lit8 v10, v4, 0x1

    .line 52
    .line 53
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    .line 54
    .line 55
    .line 56
    move-result v4

    .line 57
    if-lt v4, v6, :cond_2

    .line 58
    .line 59
    and-int/lit16 v4, v4, 0x1fff

    .line 60
    .line 61
    shl-int/2addr v4, v9

    .line 62
    or-int/2addr v7, v4

    .line 63
    add-int/lit8 v9, v9, 0xd

    .line 64
    .line 65
    move v4, v10

    .line 66
    goto :goto_1

    .line 67
    :cond_2
    shl-int/2addr v4, v9

    .line 68
    or-int/2addr v7, v4

    .line 69
    move v4, v10

    .line 70
    :cond_3
    if-nez v7, :cond_4

    .line 71
    .line 72
    sget-object v7, Lcom/google/android/gms/internal/measurement/R2;->j:[I

    .line 73
    .line 74
    move-object v15, v7

    .line 75
    const/4 v7, 0x0

    .line 76
    const/4 v9, 0x0

    .line 77
    const/4 v11, 0x0

    .line 78
    const/4 v12, 0x0

    .line 79
    const/4 v13, 0x0

    .line 80
    const/4 v14, 0x0

    .line 81
    const/16 v16, 0x0

    .line 82
    .line 83
    goto/16 :goto_a

    .line 84
    .line 85
    :cond_4
    add-int/lit8 v7, v4, 0x1

    .line 86
    .line 87
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    .line 88
    .line 89
    .line 90
    move-result v4

    .line 91
    if-lt v4, v6, :cond_6

    .line 92
    .line 93
    and-int/lit16 v4, v4, 0x1fff

    .line 94
    .line 95
    const/16 v9, 0xd

    .line 96
    .line 97
    :goto_2
    add-int/lit8 v10, v7, 0x1

    .line 98
    .line 99
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    .line 100
    .line 101
    .line 102
    move-result v7

    .line 103
    if-lt v7, v6, :cond_5

    .line 104
    .line 105
    and-int/lit16 v7, v7, 0x1fff

    .line 106
    .line 107
    shl-int/2addr v7, v9

    .line 108
    or-int/2addr v4, v7

    .line 109
    add-int/lit8 v9, v9, 0xd

    .line 110
    .line 111
    move v7, v10

    .line 112
    goto :goto_2

    .line 113
    :cond_5
    shl-int/2addr v7, v9

    .line 114
    or-int/2addr v4, v7

    .line 115
    move v7, v10

    .line 116
    :cond_6
    add-int/lit8 v9, v7, 0x1

    .line 117
    .line 118
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    .line 119
    .line 120
    .line 121
    move-result v7

    .line 122
    if-lt v7, v6, :cond_8

    .line 123
    .line 124
    and-int/lit16 v7, v7, 0x1fff

    .line 125
    .line 126
    const/16 v10, 0xd

    .line 127
    .line 128
    :goto_3
    add-int/lit8 v11, v9, 0x1

    .line 129
    .line 130
    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    .line 131
    .line 132
    .line 133
    move-result v9

    .line 134
    if-lt v9, v6, :cond_7

    .line 135
    .line 136
    and-int/lit16 v9, v9, 0x1fff

    .line 137
    .line 138
    shl-int/2addr v9, v10

    .line 139
    or-int/2addr v7, v9

    .line 140
    add-int/lit8 v10, v10, 0xd

    .line 141
    .line 142
    move v9, v11

    .line 143
    goto :goto_3

    .line 144
    :cond_7
    shl-int/2addr v9, v10

    .line 145
    or-int/2addr v7, v9

    .line 146
    move v9, v11

    .line 147
    :cond_8
    add-int/lit8 v10, v9, 0x1

    .line 148
    .line 149
    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    .line 150
    .line 151
    .line 152
    move-result v9

    .line 153
    if-lt v9, v6, :cond_a

    .line 154
    .line 155
    and-int/lit16 v9, v9, 0x1fff

    .line 156
    .line 157
    const/16 v11, 0xd

    .line 158
    .line 159
    :goto_4
    add-int/lit8 v12, v10, 0x1

    .line 160
    .line 161
    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    .line 162
    .line 163
    .line 164
    move-result v10

    .line 165
    if-lt v10, v6, :cond_9

    .line 166
    .line 167
    and-int/lit16 v10, v10, 0x1fff

    .line 168
    .line 169
    shl-int/2addr v10, v11

    .line 170
    or-int/2addr v9, v10

    .line 171
    add-int/lit8 v11, v11, 0xd

    .line 172
    .line 173
    move v10, v12

    .line 174
    goto :goto_4

    .line 175
    :cond_9
    shl-int/2addr v10, v11

    .line 176
    or-int/2addr v9, v10

    .line 177
    move v10, v12

    .line 178
    :cond_a
    add-int/lit8 v11, v10, 0x1

    .line 179
    .line 180
    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    .line 181
    .line 182
    .line 183
    move-result v10

    .line 184
    if-lt v10, v6, :cond_c

    .line 185
    .line 186
    and-int/lit16 v10, v10, 0x1fff

    .line 187
    .line 188
    const/16 v12, 0xd

    .line 189
    .line 190
    :goto_5
    add-int/lit8 v13, v11, 0x1

    .line 191
    .line 192
    invoke-virtual {v1, v11}, Ljava/lang/String;->charAt(I)C

    .line 193
    .line 194
    .line 195
    move-result v11

    .line 196
    if-lt v11, v6, :cond_b

    .line 197
    .line 198
    and-int/lit16 v11, v11, 0x1fff

    .line 199
    .line 200
    shl-int/2addr v11, v12

    .line 201
    or-int/2addr v10, v11

    .line 202
    add-int/lit8 v12, v12, 0xd

    .line 203
    .line 204
    move v11, v13

    .line 205
    goto :goto_5

    .line 206
    :cond_b
    shl-int/2addr v11, v12

    .line 207
    or-int/2addr v10, v11

    .line 208
    move v11, v13

    .line 209
    :cond_c
    add-int/lit8 v12, v11, 0x1

    .line 210
    .line 211
    invoke-virtual {v1, v11}, Ljava/lang/String;->charAt(I)C

    .line 212
    .line 213
    .line 214
    move-result v11

    .line 215
    if-lt v11, v6, :cond_e

    .line 216
    .line 217
    and-int/lit16 v11, v11, 0x1fff

    .line 218
    .line 219
    const/16 v13, 0xd

    .line 220
    .line 221
    :goto_6
    add-int/lit8 v14, v12, 0x1

    .line 222
    .line 223
    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    .line 224
    .line 225
    .line 226
    move-result v12

    .line 227
    if-lt v12, v6, :cond_d

    .line 228
    .line 229
    and-int/lit16 v12, v12, 0x1fff

    .line 230
    .line 231
    shl-int/2addr v12, v13

    .line 232
    or-int/2addr v11, v12

    .line 233
    add-int/lit8 v13, v13, 0xd

    .line 234
    .line 235
    move v12, v14

    .line 236
    goto :goto_6

    .line 237
    :cond_d
    shl-int/2addr v12, v13

    .line 238
    or-int/2addr v11, v12

    .line 239
    move v12, v14

    .line 240
    :cond_e
    add-int/lit8 v13, v12, 0x1

    .line 241
    .line 242
    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    .line 243
    .line 244
    .line 245
    move-result v12

    .line 246
    if-lt v12, v6, :cond_10

    .line 247
    .line 248
    and-int/lit16 v12, v12, 0x1fff

    .line 249
    .line 250
    const/16 v14, 0xd

    .line 251
    .line 252
    :goto_7
    add-int/lit8 v15, v13, 0x1

    .line 253
    .line 254
    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    .line 255
    .line 256
    .line 257
    move-result v13

    .line 258
    if-lt v13, v6, :cond_f

    .line 259
    .line 260
    and-int/lit16 v13, v13, 0x1fff

    .line 261
    .line 262
    shl-int/2addr v13, v14

    .line 263
    or-int/2addr v12, v13

    .line 264
    add-int/lit8 v14, v14, 0xd

    .line 265
    .line 266
    move v13, v15

    .line 267
    goto :goto_7

    .line 268
    :cond_f
    shl-int/2addr v13, v14

    .line 269
    or-int/2addr v12, v13

    .line 270
    move v13, v15

    .line 271
    :cond_10
    add-int/lit8 v14, v13, 0x1

    .line 272
    .line 273
    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    .line 274
    .line 275
    .line 276
    move-result v13

    .line 277
    if-lt v13, v6, :cond_12

    .line 278
    .line 279
    and-int/lit16 v13, v13, 0x1fff

    .line 280
    .line 281
    const/16 v15, 0xd

    .line 282
    .line 283
    :goto_8
    add-int/lit8 v16, v14, 0x1

    .line 284
    .line 285
    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    .line 286
    .line 287
    .line 288
    move-result v14

    .line 289
    if-lt v14, v6, :cond_11

    .line 290
    .line 291
    and-int/lit16 v14, v14, 0x1fff

    .line 292
    .line 293
    shl-int/2addr v14, v15

    .line 294
    or-int/2addr v13, v14

    .line 295
    add-int/lit8 v15, v15, 0xd

    .line 296
    .line 297
    move/from16 v14, v16

    .line 298
    .line 299
    goto :goto_8

    .line 300
    :cond_11
    shl-int/2addr v14, v15

    .line 301
    or-int/2addr v13, v14

    .line 302
    move/from16 v14, v16

    .line 303
    .line 304
    :cond_12
    add-int/lit8 v15, v14, 0x1

    .line 305
    .line 306
    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    .line 307
    .line 308
    .line 309
    move-result v14

    .line 310
    if-lt v14, v6, :cond_14

    .line 311
    .line 312
    and-int/lit16 v14, v14, 0x1fff

    .line 313
    .line 314
    const/16 v16, 0xd

    .line 315
    .line 316
    :goto_9
    add-int/lit8 v17, v15, 0x1

    .line 317
    .line 318
    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    .line 319
    .line 320
    .line 321
    move-result v15

    .line 322
    if-lt v15, v6, :cond_13

    .line 323
    .line 324
    and-int/lit16 v15, v15, 0x1fff

    .line 325
    .line 326
    shl-int v15, v15, v16

    .line 327
    .line 328
    or-int/2addr v14, v15

    .line 329
    add-int/lit8 v16, v16, 0xd

    .line 330
    .line 331
    move/from16 v15, v17

    .line 332
    .line 333
    goto :goto_9

    .line 334
    :cond_13
    shl-int v15, v15, v16

    .line 335
    .line 336
    or-int/2addr v14, v15

    .line 337
    move/from16 v15, v17

    .line 338
    .line 339
    :cond_14
    add-int v16, v14, v12

    .line 340
    .line 341
    add-int v13, v16, v13

    .line 342
    .line 343
    add-int v16, v4, v4

    .line 344
    .line 345
    add-int v16, v16, v7

    .line 346
    .line 347
    new-array v7, v13, [I

    .line 348
    .line 349
    move v13, v9

    .line 350
    move/from16 v9, v16

    .line 351
    .line 352
    move/from16 v16, v14

    .line 353
    .line 354
    move v14, v10

    .line 355
    move-object/from16 v32, v7

    .line 356
    .line 357
    move v7, v4

    .line 358
    move v4, v15

    .line 359
    move-object/from16 v15, v32

    .line 360
    .line 361
    :goto_a
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/X2;->d()[Ljava/lang/Object;

    .line 362
    .line 363
    .line 364
    move-result-object v10

    .line 365
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/X2;->a()Lcom/google/android/gms/internal/measurement/P2;

    .line 366
    .line 367
    .line 368
    move-result-object v17

    .line 369
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 370
    .line 371
    .line 372
    move-result-object v3

    .line 373
    add-int v17, v16, v12

    .line 374
    .line 375
    add-int v12, v11, v11

    .line 376
    .line 377
    mul-int/lit8 v11, v11, 0x3

    .line 378
    .line 379
    new-array v11, v11, [I

    .line 380
    .line 381
    new-array v12, v12, [Ljava/lang/Object;

    .line 382
    .line 383
    move/from16 v20, v16

    .line 384
    .line 385
    move/from16 v21, v17

    .line 386
    .line 387
    const/4 v8, 0x0

    .line 388
    const/16 v18, 0x0

    .line 389
    .line 390
    :goto_b
    if-ge v4, v2, :cond_36

    .line 391
    .line 392
    add-int/lit8 v22, v4, 0x1

    .line 393
    .line 394
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    .line 395
    .line 396
    .line 397
    move-result v4

    .line 398
    if-lt v4, v6, :cond_16

    .line 399
    .line 400
    and-int/lit16 v4, v4, 0x1fff

    .line 401
    .line 402
    move/from16 v5, v22

    .line 403
    .line 404
    const/16 v22, 0xd

    .line 405
    .line 406
    :goto_c
    add-int/lit8 v24, v5, 0x1

    .line 407
    .line 408
    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    .line 409
    .line 410
    .line 411
    move-result v5

    .line 412
    if-lt v5, v6, :cond_15

    .line 413
    .line 414
    and-int/lit16 v5, v5, 0x1fff

    .line 415
    .line 416
    shl-int v5, v5, v22

    .line 417
    .line 418
    or-int/2addr v4, v5

    .line 419
    add-int/lit8 v22, v22, 0xd

    .line 420
    .line 421
    move/from16 v5, v24

    .line 422
    .line 423
    goto :goto_c

    .line 424
    :cond_15
    shl-int v5, v5, v22

    .line 425
    .line 426
    or-int/2addr v4, v5

    .line 427
    move/from16 v5, v24

    .line 428
    .line 429
    goto :goto_d

    .line 430
    :cond_16
    move/from16 v5, v22

    .line 431
    .line 432
    :goto_d
    add-int/lit8 v22, v5, 0x1

    .line 433
    .line 434
    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    .line 435
    .line 436
    .line 437
    move-result v5

    .line 438
    if-lt v5, v6, :cond_18

    .line 439
    .line 440
    and-int/lit16 v5, v5, 0x1fff

    .line 441
    .line 442
    move/from16 v6, v22

    .line 443
    .line 444
    const/16 v22, 0xd

    .line 445
    .line 446
    :goto_e
    add-int/lit8 v25, v6, 0x1

    .line 447
    .line 448
    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    .line 449
    .line 450
    .line 451
    move-result v6

    .line 452
    move/from16 v26, v2

    .line 453
    .line 454
    const v2, 0xd800

    .line 455
    .line 456
    .line 457
    if-lt v6, v2, :cond_17

    .line 458
    .line 459
    and-int/lit16 v2, v6, 0x1fff

    .line 460
    .line 461
    shl-int v2, v2, v22

    .line 462
    .line 463
    or-int/2addr v5, v2

    .line 464
    add-int/lit8 v22, v22, 0xd

    .line 465
    .line 466
    move/from16 v6, v25

    .line 467
    .line 468
    move/from16 v2, v26

    .line 469
    .line 470
    goto :goto_e

    .line 471
    :cond_17
    shl-int v2, v6, v22

    .line 472
    .line 473
    or-int/2addr v5, v2

    .line 474
    move/from16 v2, v25

    .line 475
    .line 476
    goto :goto_f

    .line 477
    :cond_18
    move/from16 v26, v2

    .line 478
    .line 479
    move/from16 v2, v22

    .line 480
    .line 481
    :goto_f
    and-int/lit16 v6, v5, 0x400

    .line 482
    .line 483
    if-eqz v6, :cond_19

    .line 484
    .line 485
    add-int/lit8 v6, v18, 0x1

    .line 486
    .line 487
    aput v8, v15, v18

    .line 488
    .line 489
    move/from16 v18, v6

    .line 490
    .line 491
    :cond_19
    and-int/lit16 v6, v5, 0xff

    .line 492
    .line 493
    move/from16 v22, v14

    .line 494
    .line 495
    and-int/lit16 v14, v5, 0x800

    .line 496
    .line 497
    move/from16 v25, v13

    .line 498
    .line 499
    sget-object v13, Lcom/google/android/gms/internal/measurement/R2;->k:Lsun/misc/Unsafe;

    .line 500
    .line 501
    move/from16 v29, v4

    .line 502
    .line 503
    const/16 v4, 0x33

    .line 504
    .line 505
    if-lt v6, v4, :cond_23

    .line 506
    .line 507
    add-int/lit8 v4, v2, 0x1

    .line 508
    .line 509
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    .line 510
    .line 511
    .line 512
    move-result v2

    .line 513
    move/from16 v27, v4

    .line 514
    .line 515
    const v4, 0xd800

    .line 516
    .line 517
    .line 518
    if-lt v2, v4, :cond_1b

    .line 519
    .line 520
    and-int/lit16 v2, v2, 0x1fff

    .line 521
    .line 522
    move/from16 v4, v27

    .line 523
    .line 524
    const/16 v27, 0xd

    .line 525
    .line 526
    :goto_10
    add-int/lit8 v30, v4, 0x1

    .line 527
    .line 528
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    .line 529
    .line 530
    .line 531
    move-result v4

    .line 532
    move-object/from16 v31, v11

    .line 533
    .line 534
    const v11, 0xd800

    .line 535
    .line 536
    .line 537
    if-lt v4, v11, :cond_1a

    .line 538
    .line 539
    and-int/lit16 v4, v4, 0x1fff

    .line 540
    .line 541
    shl-int v4, v4, v27

    .line 542
    .line 543
    or-int/2addr v2, v4

    .line 544
    add-int/lit8 v27, v27, 0xd

    .line 545
    .line 546
    move/from16 v4, v30

    .line 547
    .line 548
    move-object/from16 v11, v31

    .line 549
    .line 550
    goto :goto_10

    .line 551
    :cond_1a
    shl-int v4, v4, v27

    .line 552
    .line 553
    or-int/2addr v2, v4

    .line 554
    move/from16 v4, v30

    .line 555
    .line 556
    goto :goto_11

    .line 557
    :cond_1b
    move-object/from16 v31, v11

    .line 558
    .line 559
    move/from16 v4, v27

    .line 560
    .line 561
    :goto_11
    add-int/lit8 v11, v6, -0x33

    .line 562
    .line 563
    move/from16 v27, v4

    .line 564
    .line 565
    const/16 v4, 0x9

    .line 566
    .line 567
    if-eq v11, v4, :cond_1c

    .line 568
    .line 569
    const/16 v4, 0x11

    .line 570
    .line 571
    if-ne v11, v4, :cond_1d

    .line 572
    .line 573
    :cond_1c
    const/4 v11, 0x1

    .line 574
    goto :goto_13

    .line 575
    :cond_1d
    const/16 v4, 0xc

    .line 576
    .line 577
    if-ne v11, v4, :cond_20

    .line 578
    .line 579
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/X2;->b()I

    .line 580
    .line 581
    .line 582
    move-result v4

    .line 583
    const/4 v11, 0x1

    .line 584
    if-eq v4, v11, :cond_1f

    .line 585
    .line 586
    if-eqz v14, :cond_1e

    .line 587
    .line 588
    goto :goto_12

    .line 589
    :cond_1e
    const/4 v14, 0x0

    .line 590
    goto :goto_14

    .line 591
    :cond_1f
    :goto_12
    add-int/lit8 v4, v9, 0x1

    .line 592
    .line 593
    move/from16 v23, v4

    .line 594
    .line 595
    const/4 v4, 0x3

    .line 596
    invoke-static {v8, v4, v11}, La/r;->t(III)I

    .line 597
    .line 598
    .line 599
    move-result v4

    .line 600
    aget-object v9, v10, v9

    .line 601
    .line 602
    aput-object v9, v12, v4

    .line 603
    .line 604
    move/from16 v9, v23

    .line 605
    .line 606
    goto :goto_14

    .line 607
    :goto_13
    add-int/lit8 v4, v9, 0x1

    .line 608
    .line 609
    move/from16 v28, v4

    .line 610
    .line 611
    const/4 v4, 0x3

    .line 612
    invoke-static {v8, v4, v11}, La/r;->t(III)I

    .line 613
    .line 614
    .line 615
    move-result v4

    .line 616
    aget-object v9, v10, v9

    .line 617
    .line 618
    aput-object v9, v12, v4

    .line 619
    .line 620
    move/from16 v9, v28

    .line 621
    .line 622
    :cond_20
    :goto_14
    add-int/2addr v2, v2

    .line 623
    aget-object v4, v10, v2

    .line 624
    .line 625
    instance-of v11, v4, Ljava/lang/reflect/Field;

    .line 626
    .line 627
    if-eqz v11, :cond_21

    .line 628
    .line 629
    check-cast v4, Ljava/lang/reflect/Field;

    .line 630
    .line 631
    :goto_15
    move v11, v5

    .line 632
    goto :goto_16

    .line 633
    :cond_21
    check-cast v4, Ljava/lang/String;

    .line 634
    .line 635
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/measurement/R2;->z(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 636
    .line 637
    .line 638
    move-result-object v4

    .line 639
    aput-object v4, v10, v2

    .line 640
    .line 641
    goto :goto_15

    .line 642
    :goto_16
    invoke-virtual {v13, v4}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    .line 643
    .line 644
    .line 645
    move-result-wide v4

    .line 646
    long-to-int v5, v4

    .line 647
    add-int/lit8 v2, v2, 0x1

    .line 648
    .line 649
    aget-object v4, v10, v2

    .line 650
    .line 651
    move/from16 v28, v5

    .line 652
    .line 653
    instance-of v5, v4, Ljava/lang/reflect/Field;

    .line 654
    .line 655
    if-eqz v5, :cond_22

    .line 656
    .line 657
    check-cast v4, Ljava/lang/reflect/Field;

    .line 658
    .line 659
    goto :goto_17

    .line 660
    :cond_22
    check-cast v4, Ljava/lang/String;

    .line 661
    .line 662
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/measurement/R2;->z(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 663
    .line 664
    .line 665
    move-result-object v4

    .line 666
    aput-object v4, v10, v2

    .line 667
    .line 668
    :goto_17
    invoke-virtual {v13, v4}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    .line 669
    .line 670
    .line 671
    move-result-wide v4

    .line 672
    long-to-int v2, v4

    .line 673
    move-object/from16 v24, v1

    .line 674
    .line 675
    move/from16 v4, v27

    .line 676
    .line 677
    move/from16 v5, v28

    .line 678
    .line 679
    const/4 v1, 0x0

    .line 680
    move-object/from16 v28, v0

    .line 681
    .line 682
    move v0, v9

    .line 683
    move-object v9, v3

    .line 684
    goto/16 :goto_23

    .line 685
    .line 686
    :cond_23
    move-object/from16 v31, v11

    .line 687
    .line 688
    move v11, v5

    .line 689
    add-int/lit8 v4, v9, 0x1

    .line 690
    .line 691
    aget-object v5, v10, v9

    .line 692
    .line 693
    check-cast v5, Ljava/lang/String;

    .line 694
    .line 695
    invoke-static {v3, v5}, Lcom/google/android/gms/internal/measurement/R2;->z(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 696
    .line 697
    .line 698
    move-result-object v5

    .line 699
    move-object/from16 v27, v3

    .line 700
    .line 701
    const/16 v3, 0x9

    .line 702
    .line 703
    if-eq v6, v3, :cond_24

    .line 704
    .line 705
    const/16 v3, 0x11

    .line 706
    .line 707
    if-ne v6, v3, :cond_25

    .line 708
    .line 709
    :cond_24
    move-object/from16 v28, v0

    .line 710
    .line 711
    const/4 v0, 0x1

    .line 712
    goto/16 :goto_1d

    .line 713
    .line 714
    :cond_25
    const/16 v3, 0x1b

    .line 715
    .line 716
    if-eq v6, v3, :cond_2d

    .line 717
    .line 718
    const/16 v3, 0x31

    .line 719
    .line 720
    if-ne v6, v3, :cond_26

    .line 721
    .line 722
    add-int/lit8 v9, v9, 0x2

    .line 723
    .line 724
    move-object/from16 v28, v0

    .line 725
    .line 726
    const/4 v0, 0x1

    .line 727
    goto/16 :goto_1c

    .line 728
    .line 729
    :cond_26
    const/16 v3, 0xc

    .line 730
    .line 731
    if-eq v6, v3, :cond_2a

    .line 732
    .line 733
    const/16 v3, 0x1e

    .line 734
    .line 735
    if-eq v6, v3, :cond_2a

    .line 736
    .line 737
    const/16 v3, 0x2c

    .line 738
    .line 739
    if-ne v6, v3, :cond_27

    .line 740
    .line 741
    goto :goto_19

    .line 742
    :cond_27
    const/16 v3, 0x32

    .line 743
    .line 744
    if-ne v6, v3, :cond_29

    .line 745
    .line 746
    add-int/lit8 v3, v9, 0x2

    .line 747
    .line 748
    add-int/lit8 v28, v20, 0x1

    .line 749
    .line 750
    aput v8, v15, v20

    .line 751
    .line 752
    div-int/lit8 v20, v8, 0x3

    .line 753
    .line 754
    aget-object v4, v10, v4

    .line 755
    .line 756
    add-int v20, v20, v20

    .line 757
    .line 758
    aput-object v4, v12, v20

    .line 759
    .line 760
    if-eqz v14, :cond_28

    .line 761
    .line 762
    add-int/lit8 v20, v20, 0x1

    .line 763
    .line 764
    add-int/lit8 v4, v9, 0x3

    .line 765
    .line 766
    aget-object v3, v10, v3

    .line 767
    .line 768
    aput-object v3, v12, v20

    .line 769
    .line 770
    move-object v3, v1

    .line 771
    move/from16 v20, v28

    .line 772
    .line 773
    move-object/from16 v28, v0

    .line 774
    .line 775
    goto :goto_1e

    .line 776
    :cond_28
    move v4, v3

    .line 777
    move/from16 v20, v28

    .line 778
    .line 779
    const/4 v14, 0x0

    .line 780
    move-object/from16 v28, v0

    .line 781
    .line 782
    :goto_18
    move-object v3, v1

    .line 783
    goto :goto_1e

    .line 784
    :cond_29
    move-object/from16 v28, v0

    .line 785
    .line 786
    const/4 v0, 0x1

    .line 787
    goto :goto_18

    .line 788
    :cond_2a
    :goto_19
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/X2;->b()I

    .line 789
    .line 790
    .line 791
    move-result v3

    .line 792
    move-object/from16 v28, v0

    .line 793
    .line 794
    const/4 v0, 0x1

    .line 795
    if-eq v3, v0, :cond_2c

    .line 796
    .line 797
    if-eqz v14, :cond_2b

    .line 798
    .line 799
    goto :goto_1a

    .line 800
    :cond_2b
    move-object v3, v1

    .line 801
    const/4 v14, 0x0

    .line 802
    goto :goto_1e

    .line 803
    :cond_2c
    :goto_1a
    add-int/lit8 v9, v9, 0x2

    .line 804
    .line 805
    const/4 v3, 0x3

    .line 806
    invoke-static {v8, v3, v0}, La/r;->t(III)I

    .line 807
    .line 808
    .line 809
    move-result v3

    .line 810
    aget-object v4, v10, v4

    .line 811
    .line 812
    aput-object v4, v12, v3

    .line 813
    .line 814
    :goto_1b
    move-object v3, v1

    .line 815
    move v4, v9

    .line 816
    goto :goto_1e

    .line 817
    :cond_2d
    move-object/from16 v28, v0

    .line 818
    .line 819
    const/4 v0, 0x1

    .line 820
    add-int/lit8 v9, v9, 0x2

    .line 821
    .line 822
    :goto_1c
    const/4 v3, 0x3

    .line 823
    invoke-static {v8, v3, v0}, La/r;->t(III)I

    .line 824
    .line 825
    .line 826
    move-result v3

    .line 827
    aget-object v4, v10, v4

    .line 828
    .line 829
    aput-object v4, v12, v3

    .line 830
    .line 831
    goto :goto_1b

    .line 832
    :goto_1d
    const/4 v3, 0x3

    .line 833
    invoke-static {v8, v3, v0}, La/r;->t(III)I

    .line 834
    .line 835
    .line 836
    move-result v3

    .line 837
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    .line 838
    .line 839
    .line 840
    move-result-object v9

    .line 841
    aput-object v9, v12, v3

    .line 842
    .line 843
    goto :goto_18

    .line 844
    :goto_1e
    invoke-virtual {v13, v5}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    .line 845
    .line 846
    .line 847
    move-result-wide v0

    .line 848
    long-to-int v5, v0

    .line 849
    and-int/lit16 v0, v11, 0x1000

    .line 850
    .line 851
    const v1, 0xfffff

    .line 852
    .line 853
    .line 854
    if-eqz v0, :cond_31

    .line 855
    .line 856
    const/16 v0, 0x11

    .line 857
    .line 858
    if-gt v6, v0, :cond_31

    .line 859
    .line 860
    add-int/lit8 v0, v2, 0x1

    .line 861
    .line 862
    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    .line 863
    .line 864
    .line 865
    move-result v1

    .line 866
    const v9, 0xd800

    .line 867
    .line 868
    .line 869
    if-lt v1, v9, :cond_2f

    .line 870
    .line 871
    and-int/lit16 v1, v1, 0x1fff

    .line 872
    .line 873
    const/16 v2, 0xd

    .line 874
    .line 875
    :goto_1f
    add-int/lit8 v24, v0, 0x1

    .line 876
    .line 877
    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    .line 878
    .line 879
    .line 880
    move-result v0

    .line 881
    if-lt v0, v9, :cond_2e

    .line 882
    .line 883
    and-int/lit16 v0, v0, 0x1fff

    .line 884
    .line 885
    shl-int/2addr v0, v2

    .line 886
    or-int/2addr v1, v0

    .line 887
    add-int/lit8 v2, v2, 0xd

    .line 888
    .line 889
    move/from16 v0, v24

    .line 890
    .line 891
    goto :goto_1f

    .line 892
    :cond_2e
    shl-int/2addr v0, v2

    .line 893
    or-int/2addr v1, v0

    .line 894
    move/from16 v2, v24

    .line 895
    .line 896
    goto :goto_20

    .line 897
    :cond_2f
    move v2, v0

    .line 898
    :goto_20
    add-int v0, v7, v7

    .line 899
    .line 900
    div-int/lit8 v24, v1, 0x20

    .line 901
    .line 902
    add-int v24, v24, v0

    .line 903
    .line 904
    aget-object v0, v10, v24

    .line 905
    .line 906
    instance-of v9, v0, Ljava/lang/reflect/Field;

    .line 907
    .line 908
    if-eqz v9, :cond_30

    .line 909
    .line 910
    check-cast v0, Ljava/lang/reflect/Field;

    .line 911
    .line 912
    move-object/from16 v24, v3

    .line 913
    .line 914
    move-object/from16 v9, v27

    .line 915
    .line 916
    move/from16 v27, v2

    .line 917
    .line 918
    goto :goto_21

    .line 919
    :cond_30
    check-cast v0, Ljava/lang/String;

    .line 920
    .line 921
    move-object/from16 v9, v27

    .line 922
    .line 923
    invoke-static {v9, v0}, Lcom/google/android/gms/internal/measurement/R2;->z(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 924
    .line 925
    .line 926
    move-result-object v0

    .line 927
    aput-object v0, v10, v24

    .line 928
    .line 929
    move/from16 v27, v2

    .line 930
    .line 931
    move-object/from16 v24, v3

    .line 932
    .line 933
    :goto_21
    invoke-virtual {v13, v0}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    .line 934
    .line 935
    .line 936
    move-result-wide v2

    .line 937
    long-to-int v0, v2

    .line 938
    rem-int/lit8 v1, v1, 0x20

    .line 939
    .line 940
    move v2, v0

    .line 941
    goto :goto_22

    .line 942
    :cond_31
    move-object/from16 v24, v3

    .line 943
    .line 944
    move-object/from16 v9, v27

    .line 945
    .line 946
    move/from16 v27, v2

    .line 947
    .line 948
    const/4 v1, 0x0

    .line 949
    const v2, 0xfffff

    .line 950
    .line 951
    .line 952
    :goto_22
    const/16 v0, 0x12

    .line 953
    .line 954
    if-lt v6, v0, :cond_32

    .line 955
    .line 956
    const/16 v0, 0x31

    .line 957
    .line 958
    if-gt v6, v0, :cond_32

    .line 959
    .line 960
    add-int/lit8 v0, v21, 0x1

    .line 961
    .line 962
    aput v5, v15, v21

    .line 963
    .line 964
    move/from16 v21, v0

    .line 965
    .line 966
    :cond_32
    move v0, v4

    .line 967
    move/from16 v4, v27

    .line 968
    .line 969
    :goto_23
    add-int/lit8 v3, v8, 0x1

    .line 970
    .line 971
    aput v29, v31, v8

    .line 972
    .line 973
    add-int/lit8 v13, v8, 0x2

    .line 974
    .line 975
    move/from16 v27, v0

    .line 976
    .line 977
    and-int/lit16 v0, v11, 0x200

    .line 978
    .line 979
    if-eqz v0, :cond_33

    .line 980
    .line 981
    const/high16 v0, 0x20000000

    .line 982
    .line 983
    goto :goto_24

    .line 984
    :cond_33
    const/4 v0, 0x0

    .line 985
    :goto_24
    and-int/lit16 v11, v11, 0x100

    .line 986
    .line 987
    if-eqz v11, :cond_34

    .line 988
    .line 989
    const/high16 v11, 0x10000000

    .line 990
    .line 991
    goto :goto_25

    .line 992
    :cond_34
    const/4 v11, 0x0

    .line 993
    :goto_25
    if-eqz v14, :cond_35

    .line 994
    .line 995
    const/high16 v14, -0x80000000

    .line 996
    .line 997
    goto :goto_26

    .line 998
    :cond_35
    const/4 v14, 0x0

    .line 999
    :goto_26
    shl-int/lit8 v6, v6, 0x14

    .line 1000
    .line 1001
    or-int/2addr v0, v11

    .line 1002
    or-int/2addr v0, v14

    .line 1003
    or-int/2addr v0, v6

    .line 1004
    or-int/2addr v0, v5

    .line 1005
    aput v0, v31, v3

    .line 1006
    .line 1007
    add-int/lit8 v8, v8, 0x3

    .line 1008
    .line 1009
    shl-int/lit8 v0, v1, 0x14

    .line 1010
    .line 1011
    or-int/2addr v0, v2

    .line 1012
    aput v0, v31, v13

    .line 1013
    .line 1014
    move-object v3, v9

    .line 1015
    move/from16 v14, v22

    .line 1016
    .line 1017
    move-object/from16 v1, v24

    .line 1018
    .line 1019
    move/from16 v13, v25

    .line 1020
    .line 1021
    move/from16 v2, v26

    .line 1022
    .line 1023
    move/from16 v9, v27

    .line 1024
    .line 1025
    move-object/from16 v0, v28

    .line 1026
    .line 1027
    move-object/from16 v11, v31

    .line 1028
    .line 1029
    const v6, 0xd800

    .line 1030
    .line 1031
    .line 1032
    goto/16 :goto_b

    .line 1033
    .line 1034
    :cond_36
    move-object/from16 v28, v0

    .line 1035
    .line 1036
    move-object/from16 v31, v11

    .line 1037
    .line 1038
    move/from16 v25, v13

    .line 1039
    .line 1040
    move/from16 v22, v14

    .line 1041
    .line 1042
    new-instance v0, Lcom/google/android/gms/internal/measurement/R2;

    .line 1043
    .line 1044
    invoke-virtual/range {v28 .. v28}, Lcom/google/android/gms/internal/measurement/X2;->a()Lcom/google/android/gms/internal/measurement/P2;

    .line 1045
    .line 1046
    .line 1047
    move-result-object v14

    .line 1048
    move-object v9, v0

    .line 1049
    move-object/from16 v10, v31

    .line 1050
    .line 1051
    move-object v11, v12

    .line 1052
    move/from16 v12, v25

    .line 1053
    .line 1054
    move/from16 v13, v22

    .line 1055
    .line 1056
    move-object/from16 v18, p1

    .line 1057
    .line 1058
    move-object/from16 v19, p2

    .line 1059
    .line 1060
    invoke-direct/range {v9 .. v19}, Lcom/google/android/gms/internal/measurement/R2;-><init>([I[Ljava/lang/Object;IILcom/google/android/gms/internal/measurement/P2;[IIILcom/google/android/gms/internal/measurement/q2;LS3/g;)V

    .line 1061
    .line 1062
    .line 1063
    return-object v0

    .line 1064
    :cond_37
    invoke-static/range {p0 .. p0}, LA0/O;->I(Ljava/lang/Object;)V

    .line 1065
    .line 1066
    .line 1067
    const/4 v0, 0x0

    .line 1068
    throw v0
.end method

.method public static q(Ljava/lang/Object;J)I
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/g3;->i(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Ljava/lang/Integer;

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public static s(I)I
    .locals 0

    .line 1
    ushr-int/lit8 p0, p0, 0x14

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method public static u(Ljava/lang/Object;J)J
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/g3;->i(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Ljava/lang/Long;

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    .line 8
    .line 9
    .line 10
    move-result-wide p0

    .line 11
    return-wide p0
.end method

.method public static z(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 5

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 2
    .line 3
    .line 4
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    return-object p0

    .line 6
    :catch_0
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    array-length v1, v0

    .line 11
    const/4 v2, 0x0

    .line 12
    :goto_0
    if-ge v2, v1, :cond_1

    .line 13
    .line 14
    aget-object v3, v0, v2

    .line 15
    .line 16
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    if-eqz v4, :cond_0

    .line 25
    .line 26
    return-object v3

    .line 27
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    .line 31
    .line 32
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    const-string v2, "Field "

    .line 41
    .line 42
    const-string v3, " for "

    .line 43
    .line 44
    const-string v4, " not found. Known fields are "

    .line 45
    .line 46
    invoke-static {v2, p1, v3, p0, v4}, Lcom/google/protobuf/U2;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    invoke-direct {v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    throw v1
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Z
    .locals 17

    .line 1
    move-object/from16 v6, p0

    .line 2
    .line 3
    move-object/from16 v7, p1

    .line 4
    .line 5
    const/4 v8, 0x0

    .line 6
    const v9, 0xfffff

    .line 7
    .line 8
    .line 9
    const v0, 0xfffff

    .line 10
    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    const/4 v10, 0x0

    .line 14
    :goto_0
    iget v2, v6, Lcom/google/android/gms/internal/measurement/R2;->g:I

    .line 15
    .line 16
    const/4 v3, 0x1

    .line 17
    if-ge v10, v2, :cond_b

    .line 18
    .line 19
    iget-object v2, v6, Lcom/google/android/gms/internal/measurement/R2;->f:[I

    .line 20
    .line 21
    aget v11, v2, v10

    .line 22
    .line 23
    iget-object v2, v6, Lcom/google/android/gms/internal/measurement/R2;->a:[I

    .line 24
    .line 25
    aget v12, v2, v11

    .line 26
    .line 27
    invoke-virtual {v6, v11}, Lcom/google/android/gms/internal/measurement/R2;->t(I)I

    .line 28
    .line 29
    .line 30
    move-result v13

    .line 31
    add-int/lit8 v4, v11, 0x2

    .line 32
    .line 33
    aget v2, v2, v4

    .line 34
    .line 35
    and-int v4, v2, v9

    .line 36
    .line 37
    ushr-int/lit8 v2, v2, 0x14

    .line 38
    .line 39
    shl-int v14, v3, v2

    .line 40
    .line 41
    if-eq v4, v0, :cond_1

    .line 42
    .line 43
    if-eq v4, v9, :cond_0

    .line 44
    .line 45
    int-to-long v0, v4

    .line 46
    sget-object v2, Lcom/google/android/gms/internal/measurement/R2;->k:Lsun/misc/Unsafe;

    .line 47
    .line 48
    invoke-virtual {v2, v7, v0, v1}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    :cond_0
    move/from16 v16, v1

    .line 53
    .line 54
    move v15, v4

    .line 55
    goto :goto_1

    .line 56
    :cond_1
    move v15, v0

    .line 57
    move/from16 v16, v1

    .line 58
    .line 59
    :goto_1
    const/high16 v0, 0x10000000

    .line 60
    .line 61
    and-int/2addr v0, v13

    .line 62
    if-eqz v0, :cond_3

    .line 63
    .line 64
    move-object/from16 v0, p0

    .line 65
    .line 66
    move-object/from16 v1, p1

    .line 67
    .line 68
    move v2, v11

    .line 69
    move v3, v15

    .line 70
    move/from16 v4, v16

    .line 71
    .line 72
    move v5, v14

    .line 73
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/R2;->l(Ljava/lang/Object;IIII)Z

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    if-eqz v0, :cond_2

    .line 78
    .line 79
    goto :goto_2

    .line 80
    :cond_2
    return v8

    .line 81
    :cond_3
    :goto_2
    invoke-static {v13}, Lcom/google/android/gms/internal/measurement/R2;->s(I)I

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    const/16 v1, 0x9

    .line 86
    .line 87
    if-eq v0, v1, :cond_9

    .line 88
    .line 89
    const/16 v1, 0x11

    .line 90
    .line 91
    if-eq v0, v1, :cond_9

    .line 92
    .line 93
    const/16 v1, 0x1b

    .line 94
    .line 95
    if-eq v0, v1, :cond_7

    .line 96
    .line 97
    const/16 v1, 0x3c

    .line 98
    .line 99
    if-eq v0, v1, :cond_6

    .line 100
    .line 101
    const/16 v1, 0x44

    .line 102
    .line 103
    if-eq v0, v1, :cond_6

    .line 104
    .line 105
    const/16 v1, 0x31

    .line 106
    .line 107
    if-eq v0, v1, :cond_7

    .line 108
    .line 109
    const/16 v1, 0x32

    .line 110
    .line 111
    if-eq v0, v1, :cond_4

    .line 112
    .line 113
    goto/16 :goto_4

    .line 114
    .line 115
    :cond_4
    and-int v0, v13, v9

    .line 116
    .line 117
    int-to-long v0, v0

    .line 118
    invoke-static {v7, v0, v1}, Lcom/google/android/gms/internal/measurement/g3;->i(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    check-cast v0, Lcom/google/android/gms/internal/measurement/L2;

    .line 123
    .line 124
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    .line 125
    .line 126
    .line 127
    move-result v0

    .line 128
    if-eqz v0, :cond_5

    .line 129
    .line 130
    goto/16 :goto_4

    .line 131
    .line 132
    :cond_5
    div-int/lit8 v11, v11, 0x3

    .line 133
    .line 134
    iget-object v0, v6, Lcom/google/android/gms/internal/measurement/R2;->b:[Ljava/lang/Object;

    .line 135
    .line 136
    add-int/2addr v11, v11

    .line 137
    aget-object v0, v0, v11

    .line 138
    .line 139
    invoke-static {v0}, LA0/O;->I(Ljava/lang/Object;)V

    .line 140
    .line 141
    .line 142
    const/4 v0, 0x0

    .line 143
    throw v0

    .line 144
    :cond_6
    invoke-virtual {v6, v12, v7, v11}, Lcom/google/android/gms/internal/measurement/R2;->n(ILjava/lang/Object;I)Z

    .line 145
    .line 146
    .line 147
    move-result v0

    .line 148
    if-eqz v0, :cond_a

    .line 149
    .line 150
    invoke-virtual {v6, v11}, Lcom/google/android/gms/internal/measurement/R2;->w(I)Lcom/google/android/gms/internal/measurement/Y2;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    and-int v1, v13, v9

    .line 155
    .line 156
    int-to-long v1, v1

    .line 157
    invoke-static {v7, v1, v2}, Lcom/google/android/gms/internal/measurement/g3;->i(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object v1

    .line 161
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/measurement/Y2;->a(Ljava/lang/Object;)Z

    .line 162
    .line 163
    .line 164
    move-result v0

    .line 165
    if-nez v0, :cond_a

    .line 166
    .line 167
    return v8

    .line 168
    :cond_7
    and-int v0, v13, v9

    .line 169
    .line 170
    int-to-long v0, v0

    .line 171
    invoke-static {v7, v0, v1}, Lcom/google/android/gms/internal/measurement/g3;->i(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    check-cast v0, Ljava/util/List;

    .line 176
    .line 177
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 178
    .line 179
    .line 180
    move-result v1

    .line 181
    if-nez v1, :cond_a

    .line 182
    .line 183
    invoke-virtual {v6, v11}, Lcom/google/android/gms/internal/measurement/R2;->w(I)Lcom/google/android/gms/internal/measurement/Y2;

    .line 184
    .line 185
    .line 186
    move-result-object v1

    .line 187
    const/4 v2, 0x0

    .line 188
    :goto_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 189
    .line 190
    .line 191
    move-result v3

    .line 192
    if-ge v2, v3, :cond_a

    .line 193
    .line 194
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    move-result-object v3

    .line 198
    invoke-interface {v1, v3}, Lcom/google/android/gms/internal/measurement/Y2;->a(Ljava/lang/Object;)Z

    .line 199
    .line 200
    .line 201
    move-result v3

    .line 202
    if-nez v3, :cond_8

    .line 203
    .line 204
    return v8

    .line 205
    :cond_8
    add-int/lit8 v2, v2, 0x1

    .line 206
    .line 207
    goto :goto_3

    .line 208
    :cond_9
    move-object/from16 v0, p0

    .line 209
    .line 210
    move-object/from16 v1, p1

    .line 211
    .line 212
    move v2, v11

    .line 213
    move v3, v15

    .line 214
    move/from16 v4, v16

    .line 215
    .line 216
    move v5, v14

    .line 217
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/R2;->l(Ljava/lang/Object;IIII)Z

    .line 218
    .line 219
    .line 220
    move-result v0

    .line 221
    if-eqz v0, :cond_a

    .line 222
    .line 223
    invoke-virtual {v6, v11}, Lcom/google/android/gms/internal/measurement/R2;->w(I)Lcom/google/android/gms/internal/measurement/Y2;

    .line 224
    .line 225
    .line 226
    move-result-object v0

    .line 227
    and-int v1, v13, v9

    .line 228
    .line 229
    int-to-long v1, v1

    .line 230
    invoke-static {v7, v1, v2}, Lcom/google/android/gms/internal/measurement/g3;->i(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 231
    .line 232
    .line 233
    move-result-object v1

    .line 234
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/measurement/Y2;->a(Ljava/lang/Object;)Z

    .line 235
    .line 236
    .line 237
    move-result v0

    .line 238
    if-nez v0, :cond_a

    .line 239
    .line 240
    return v8

    .line 241
    :cond_a
    :goto_4
    add-int/lit8 v10, v10, 0x1

    .line 242
    .line 243
    move v0, v15

    .line 244
    move/from16 v1, v16

    .line 245
    .line 246
    goto/16 :goto_0

    .line 247
    .line 248
    :cond_b
    return v3
.end method

.method public final b(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/l2;)V
    .locals 17

    .line 1
    move-object/from16 v6, p0

    .line 2
    .line 3
    move-object/from16 v7, p1

    .line 4
    .line 5
    move-object/from16 v8, p2

    .line 6
    .line 7
    const v9, 0xfffff

    .line 8
    .line 9
    .line 10
    const/4 v10, 0x0

    .line 11
    const v0, 0xfffff

    .line 12
    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    const/4 v11, 0x0

    .line 16
    :goto_0
    iget-object v2, v6, Lcom/google/android/gms/internal/measurement/R2;->a:[I

    .line 17
    .line 18
    array-length v3, v2

    .line 19
    if-ge v11, v3, :cond_7

    .line 20
    .line 21
    invoke-virtual {v6, v11}, Lcom/google/android/gms/internal/measurement/R2;->t(I)I

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/R2;->s(I)I

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    aget v12, v2, v11

    .line 30
    .line 31
    const/4 v5, 0x1

    .line 32
    const/16 v13, 0x11

    .line 33
    .line 34
    sget-object v14, Lcom/google/android/gms/internal/measurement/R2;->k:Lsun/misc/Unsafe;

    .line 35
    .line 36
    if-gt v4, v13, :cond_2

    .line 37
    .line 38
    add-int/lit8 v13, v11, 0x2

    .line 39
    .line 40
    aget v13, v2, v13

    .line 41
    .line 42
    and-int v15, v13, v9

    .line 43
    .line 44
    if-eq v15, v0, :cond_1

    .line 45
    .line 46
    if-ne v15, v9, :cond_0

    .line 47
    .line 48
    const/4 v1, 0x0

    .line 49
    goto :goto_1

    .line 50
    :cond_0
    int-to-long v0, v15

    .line 51
    invoke-virtual {v14, v7, v0, v1}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    move v1, v0

    .line 56
    :goto_1
    move v0, v15

    .line 57
    :cond_1
    ushr-int/lit8 v13, v13, 0x14

    .line 58
    .line 59
    shl-int v13, v5, v13

    .line 60
    .line 61
    move v15, v1

    .line 62
    move/from16 v16, v13

    .line 63
    .line 64
    move v13, v0

    .line 65
    goto :goto_2

    .line 66
    :cond_2
    move v13, v0

    .line 67
    move v15, v1

    .line 68
    const/16 v16, 0x0

    .line 69
    .line 70
    :goto_2
    and-int v0, v3, v9

    .line 71
    .line 72
    int-to-long v0, v0

    .line 73
    packed-switch v4, :pswitch_data_0

    .line 74
    .line 75
    .line 76
    goto/16 :goto_5

    .line 77
    .line 78
    :pswitch_0
    invoke-virtual {v6, v12, v7, v11}, Lcom/google/android/gms/internal/measurement/R2;->n(ILjava/lang/Object;I)Z

    .line 79
    .line 80
    .line 81
    move-result v2

    .line 82
    if-eqz v2, :cond_6

    .line 83
    .line 84
    invoke-virtual {v14, v7, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-virtual {v6, v11}, Lcom/google/android/gms/internal/measurement/R2;->w(I)Lcom/google/android/gms/internal/measurement/Y2;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    invoke-virtual {v8, v12, v1, v0}, Lcom/google/android/gms/internal/measurement/l2;->n(ILcom/google/android/gms/internal/measurement/Y2;Ljava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    goto/16 :goto_5

    .line 96
    .line 97
    :pswitch_1
    invoke-virtual {v6, v12, v7, v11}, Lcom/google/android/gms/internal/measurement/R2;->n(ILjava/lang/Object;I)Z

    .line 98
    .line 99
    .line 100
    move-result v2

    .line 101
    if-eqz v2, :cond_6

    .line 102
    .line 103
    invoke-static {v7, v0, v1}, Lcom/google/android/gms/internal/measurement/R2;->u(Ljava/lang/Object;J)J

    .line 104
    .line 105
    .line 106
    move-result-wide v0

    .line 107
    invoke-virtual {v8, v12, v0, v1}, Lcom/google/android/gms/internal/measurement/l2;->b(IJ)V

    .line 108
    .line 109
    .line 110
    goto/16 :goto_5

    .line 111
    .line 112
    :pswitch_2
    invoke-virtual {v6, v12, v7, v11}, Lcom/google/android/gms/internal/measurement/R2;->n(ILjava/lang/Object;I)Z

    .line 113
    .line 114
    .line 115
    move-result v2

    .line 116
    if-eqz v2, :cond_6

    .line 117
    .line 118
    invoke-static {v7, v0, v1}, Lcom/google/android/gms/internal/measurement/R2;->q(Ljava/lang/Object;J)I

    .line 119
    .line 120
    .line 121
    move-result v0

    .line 122
    invoke-virtual {v8, v12, v0}, Lcom/google/android/gms/internal/measurement/l2;->a(II)V

    .line 123
    .line 124
    .line 125
    goto/16 :goto_5

    .line 126
    .line 127
    :pswitch_3
    invoke-virtual {v6, v12, v7, v11}, Lcom/google/android/gms/internal/measurement/R2;->n(ILjava/lang/Object;I)Z

    .line 128
    .line 129
    .line 130
    move-result v2

    .line 131
    if-eqz v2, :cond_6

    .line 132
    .line 133
    invoke-static {v7, v0, v1}, Lcom/google/android/gms/internal/measurement/R2;->u(Ljava/lang/Object;J)J

    .line 134
    .line 135
    .line 136
    move-result-wide v0

    .line 137
    invoke-virtual {v8, v12, v0, v1}, Lcom/google/android/gms/internal/measurement/l2;->s(IJ)V

    .line 138
    .line 139
    .line 140
    goto/16 :goto_5

    .line 141
    .line 142
    :pswitch_4
    invoke-virtual {v6, v12, v7, v11}, Lcom/google/android/gms/internal/measurement/R2;->n(ILjava/lang/Object;I)Z

    .line 143
    .line 144
    .line 145
    move-result v2

    .line 146
    if-eqz v2, :cond_6

    .line 147
    .line 148
    invoke-static {v7, v0, v1}, Lcom/google/android/gms/internal/measurement/R2;->q(Ljava/lang/Object;J)I

    .line 149
    .line 150
    .line 151
    move-result v0

    .line 152
    invoke-virtual {v8, v12, v0}, Lcom/google/android/gms/internal/measurement/l2;->r(II)V

    .line 153
    .line 154
    .line 155
    goto/16 :goto_5

    .line 156
    .line 157
    :pswitch_5
    invoke-virtual {v6, v12, v7, v11}, Lcom/google/android/gms/internal/measurement/R2;->n(ILjava/lang/Object;I)Z

    .line 158
    .line 159
    .line 160
    move-result v2

    .line 161
    if-eqz v2, :cond_6

    .line 162
    .line 163
    invoke-static {v7, v0, v1}, Lcom/google/android/gms/internal/measurement/R2;->q(Ljava/lang/Object;J)I

    .line 164
    .line 165
    .line 166
    move-result v0

    .line 167
    invoke-virtual {v8, v12, v0}, Lcom/google/android/gms/internal/measurement/l2;->j(II)V

    .line 168
    .line 169
    .line 170
    goto/16 :goto_5

    .line 171
    .line 172
    :pswitch_6
    invoke-virtual {v6, v12, v7, v11}, Lcom/google/android/gms/internal/measurement/R2;->n(ILjava/lang/Object;I)Z

    .line 173
    .line 174
    .line 175
    move-result v2

    .line 176
    if-eqz v2, :cond_6

    .line 177
    .line 178
    invoke-static {v7, v0, v1}, Lcom/google/android/gms/internal/measurement/R2;->q(Ljava/lang/Object;J)I

    .line 179
    .line 180
    .line 181
    move-result v0

    .line 182
    invoke-virtual {v8, v12, v0}, Lcom/google/android/gms/internal/measurement/l2;->d(II)V

    .line 183
    .line 184
    .line 185
    goto/16 :goto_5

    .line 186
    .line 187
    :pswitch_7
    invoke-virtual {v6, v12, v7, v11}, Lcom/google/android/gms/internal/measurement/R2;->n(ILjava/lang/Object;I)Z

    .line 188
    .line 189
    .line 190
    move-result v2

    .line 191
    if-eqz v2, :cond_6

    .line 192
    .line 193
    invoke-virtual {v14, v7, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    check-cast v0, Lcom/google/android/gms/internal/measurement/i2;

    .line 198
    .line 199
    invoke-virtual {v8, v12, v0}, Lcom/google/android/gms/internal/measurement/l2;->g(ILcom/google/android/gms/internal/measurement/i2;)V

    .line 200
    .line 201
    .line 202
    goto/16 :goto_5

    .line 203
    .line 204
    :pswitch_8
    invoke-virtual {v6, v12, v7, v11}, Lcom/google/android/gms/internal/measurement/R2;->n(ILjava/lang/Object;I)Z

    .line 205
    .line 206
    .line 207
    move-result v2

    .line 208
    if-eqz v2, :cond_6

    .line 209
    .line 210
    invoke-virtual {v14, v7, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 211
    .line 212
    .line 213
    move-result-object v0

    .line 214
    invoke-virtual {v6, v11}, Lcom/google/android/gms/internal/measurement/R2;->w(I)Lcom/google/android/gms/internal/measurement/Y2;

    .line 215
    .line 216
    .line 217
    move-result-object v1

    .line 218
    invoke-virtual {v8, v12, v1, v0}, Lcom/google/android/gms/internal/measurement/l2;->q(ILcom/google/android/gms/internal/measurement/Y2;Ljava/lang/Object;)V

    .line 219
    .line 220
    .line 221
    goto/16 :goto_5

    .line 222
    .line 223
    :pswitch_9
    invoke-virtual {v6, v12, v7, v11}, Lcom/google/android/gms/internal/measurement/R2;->n(ILjava/lang/Object;I)Z

    .line 224
    .line 225
    .line 226
    move-result v2

    .line 227
    if-eqz v2, :cond_6

    .line 228
    .line 229
    invoke-virtual {v14, v7, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 230
    .line 231
    .line 232
    move-result-object v0

    .line 233
    instance-of v1, v0, Ljava/lang/String;

    .line 234
    .line 235
    if-eqz v1, :cond_3

    .line 236
    .line 237
    check-cast v0, Ljava/lang/String;

    .line 238
    .line 239
    iget-object v1, v8, Lcom/google/android/gms/internal/measurement/l2;->a:Lcom/google/android/gms/internal/measurement/k2;

    .line 240
    .line 241
    invoke-virtual {v1, v12, v0}, Lcom/google/android/gms/internal/measurement/k2;->x(ILjava/lang/String;)V

    .line 242
    .line 243
    .line 244
    goto/16 :goto_5

    .line 245
    .line 246
    :cond_3
    check-cast v0, Lcom/google/android/gms/internal/measurement/i2;

    .line 247
    .line 248
    invoke-virtual {v8, v12, v0}, Lcom/google/android/gms/internal/measurement/l2;->g(ILcom/google/android/gms/internal/measurement/i2;)V

    .line 249
    .line 250
    .line 251
    goto/16 :goto_5

    .line 252
    .line 253
    :pswitch_a
    invoke-virtual {v6, v12, v7, v11}, Lcom/google/android/gms/internal/measurement/R2;->n(ILjava/lang/Object;I)Z

    .line 254
    .line 255
    .line 256
    move-result v2

    .line 257
    if-eqz v2, :cond_6

    .line 258
    .line 259
    invoke-static {v7, v0, v1}, Lcom/google/android/gms/internal/measurement/g3;->i(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 260
    .line 261
    .line 262
    move-result-object v0

    .line 263
    check-cast v0, Ljava/lang/Boolean;

    .line 264
    .line 265
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 266
    .line 267
    .line 268
    move-result v0

    .line 269
    invoke-virtual {v8, v12, v0}, Lcom/google/android/gms/internal/measurement/l2;->f(IZ)V

    .line 270
    .line 271
    .line 272
    goto/16 :goto_5

    .line 273
    .line 274
    :pswitch_b
    invoke-virtual {v6, v12, v7, v11}, Lcom/google/android/gms/internal/measurement/R2;->n(ILjava/lang/Object;I)Z

    .line 275
    .line 276
    .line 277
    move-result v2

    .line 278
    if-eqz v2, :cond_6

    .line 279
    .line 280
    invoke-static {v7, v0, v1}, Lcom/google/android/gms/internal/measurement/R2;->q(Ljava/lang/Object;J)I

    .line 281
    .line 282
    .line 283
    move-result v0

    .line 284
    invoke-virtual {v8, v12, v0}, Lcom/google/android/gms/internal/measurement/l2;->k(II)V

    .line 285
    .line 286
    .line 287
    goto/16 :goto_5

    .line 288
    .line 289
    :pswitch_c
    invoke-virtual {v6, v12, v7, v11}, Lcom/google/android/gms/internal/measurement/R2;->n(ILjava/lang/Object;I)Z

    .line 290
    .line 291
    .line 292
    move-result v2

    .line 293
    if-eqz v2, :cond_6

    .line 294
    .line 295
    invoke-static {v7, v0, v1}, Lcom/google/android/gms/internal/measurement/R2;->u(Ljava/lang/Object;J)J

    .line 296
    .line 297
    .line 298
    move-result-wide v0

    .line 299
    invoke-virtual {v8, v12, v0, v1}, Lcom/google/android/gms/internal/measurement/l2;->l(IJ)V

    .line 300
    .line 301
    .line 302
    goto/16 :goto_5

    .line 303
    .line 304
    :pswitch_d
    invoke-virtual {v6, v12, v7, v11}, Lcom/google/android/gms/internal/measurement/R2;->n(ILjava/lang/Object;I)Z

    .line 305
    .line 306
    .line 307
    move-result v2

    .line 308
    if-eqz v2, :cond_6

    .line 309
    .line 310
    invoke-static {v7, v0, v1}, Lcom/google/android/gms/internal/measurement/R2;->q(Ljava/lang/Object;J)I

    .line 311
    .line 312
    .line 313
    move-result v0

    .line 314
    invoke-virtual {v8, v12, v0}, Lcom/google/android/gms/internal/measurement/l2;->o(II)V

    .line 315
    .line 316
    .line 317
    goto/16 :goto_5

    .line 318
    .line 319
    :pswitch_e
    invoke-virtual {v6, v12, v7, v11}, Lcom/google/android/gms/internal/measurement/R2;->n(ILjava/lang/Object;I)Z

    .line 320
    .line 321
    .line 322
    move-result v2

    .line 323
    if-eqz v2, :cond_6

    .line 324
    .line 325
    invoke-static {v7, v0, v1}, Lcom/google/android/gms/internal/measurement/R2;->u(Ljava/lang/Object;J)J

    .line 326
    .line 327
    .line 328
    move-result-wide v0

    .line 329
    invoke-virtual {v8, v12, v0, v1}, Lcom/google/android/gms/internal/measurement/l2;->e(IJ)V

    .line 330
    .line 331
    .line 332
    goto/16 :goto_5

    .line 333
    .line 334
    :pswitch_f
    invoke-virtual {v6, v12, v7, v11}, Lcom/google/android/gms/internal/measurement/R2;->n(ILjava/lang/Object;I)Z

    .line 335
    .line 336
    .line 337
    move-result v2

    .line 338
    if-eqz v2, :cond_6

    .line 339
    .line 340
    invoke-static {v7, v0, v1}, Lcom/google/android/gms/internal/measurement/R2;->u(Ljava/lang/Object;J)J

    .line 341
    .line 342
    .line 343
    move-result-wide v0

    .line 344
    invoke-virtual {v8, v12, v0, v1}, Lcom/google/android/gms/internal/measurement/l2;->p(IJ)V

    .line 345
    .line 346
    .line 347
    goto/16 :goto_5

    .line 348
    .line 349
    :pswitch_10
    invoke-virtual {v6, v12, v7, v11}, Lcom/google/android/gms/internal/measurement/R2;->n(ILjava/lang/Object;I)Z

    .line 350
    .line 351
    .line 352
    move-result v2

    .line 353
    if-eqz v2, :cond_6

    .line 354
    .line 355
    invoke-static {v7, v0, v1}, Lcom/google/android/gms/internal/measurement/g3;->i(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 356
    .line 357
    .line 358
    move-result-object v0

    .line 359
    check-cast v0, Ljava/lang/Float;

    .line 360
    .line 361
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 362
    .line 363
    .line 364
    move-result v0

    .line 365
    invoke-virtual {v8, v12, v0}, Lcom/google/android/gms/internal/measurement/l2;->m(IF)V

    .line 366
    .line 367
    .line 368
    goto/16 :goto_5

    .line 369
    .line 370
    :pswitch_11
    invoke-virtual {v6, v12, v7, v11}, Lcom/google/android/gms/internal/measurement/R2;->n(ILjava/lang/Object;I)Z

    .line 371
    .line 372
    .line 373
    move-result v2

    .line 374
    if-eqz v2, :cond_6

    .line 375
    .line 376
    invoke-static {v7, v0, v1}, Lcom/google/android/gms/internal/measurement/g3;->i(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 377
    .line 378
    .line 379
    move-result-object v0

    .line 380
    check-cast v0, Ljava/lang/Double;

    .line 381
    .line 382
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    .line 383
    .line 384
    .line 385
    move-result-wide v0

    .line 386
    invoke-virtual {v8, v12, v0, v1}, Lcom/google/android/gms/internal/measurement/l2;->i(ID)V

    .line 387
    .line 388
    .line 389
    goto/16 :goto_5

    .line 390
    .line 391
    :pswitch_12
    invoke-virtual {v14, v7, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 392
    .line 393
    .line 394
    move-result-object v0

    .line 395
    if-nez v0, :cond_4

    .line 396
    .line 397
    goto/16 :goto_5

    .line 398
    .line 399
    :cond_4
    div-int/lit8 v11, v11, 0x3

    .line 400
    .line 401
    iget-object v0, v6, Lcom/google/android/gms/internal/measurement/R2;->b:[Ljava/lang/Object;

    .line 402
    .line 403
    add-int/2addr v11, v11

    .line 404
    aget-object v0, v0, v11

    .line 405
    .line 406
    invoke-static {v0}, LA0/O;->I(Ljava/lang/Object;)V

    .line 407
    .line 408
    .line 409
    const/4 v0, 0x0

    .line 410
    throw v0

    .line 411
    :pswitch_13
    aget v2, v2, v11

    .line 412
    .line 413
    invoke-virtual {v14, v7, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 414
    .line 415
    .line 416
    move-result-object v0

    .line 417
    check-cast v0, Ljava/util/List;

    .line 418
    .line 419
    invoke-virtual {v6, v11}, Lcom/google/android/gms/internal/measurement/R2;->w(I)Lcom/google/android/gms/internal/measurement/Y2;

    .line 420
    .line 421
    .line 422
    move-result-object v1

    .line 423
    sget-object v3, Lcom/google/android/gms/internal/measurement/Z2;->a:Lcom/google/android/gms/internal/measurement/q2;

    .line 424
    .line 425
    if-eqz v0, :cond_6

    .line 426
    .line 427
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 428
    .line 429
    .line 430
    move-result v3

    .line 431
    if-nez v3, :cond_6

    .line 432
    .line 433
    const/4 v3, 0x0

    .line 434
    :goto_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 435
    .line 436
    .line 437
    move-result v4

    .line 438
    if-ge v3, v4, :cond_6

    .line 439
    .line 440
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 441
    .line 442
    .line 443
    move-result-object v4

    .line 444
    invoke-virtual {v8, v2, v1, v4}, Lcom/google/android/gms/internal/measurement/l2;->n(ILcom/google/android/gms/internal/measurement/Y2;Ljava/lang/Object;)V

    .line 445
    .line 446
    .line 447
    add-int/lit8 v3, v3, 0x1

    .line 448
    .line 449
    goto :goto_3

    .line 450
    :pswitch_14
    aget v2, v2, v11

    .line 451
    .line 452
    invoke-virtual {v14, v7, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 453
    .line 454
    .line 455
    move-result-object v0

    .line 456
    check-cast v0, Ljava/util/List;

    .line 457
    .line 458
    invoke-static {v2, v0, v8, v5}, Lcom/google/android/gms/internal/measurement/Z2;->b(ILjava/util/List;Lcom/google/android/gms/internal/measurement/l2;Z)V

    .line 459
    .line 460
    .line 461
    goto/16 :goto_5

    .line 462
    .line 463
    :pswitch_15
    aget v2, v2, v11

    .line 464
    .line 465
    invoke-virtual {v14, v7, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 466
    .line 467
    .line 468
    move-result-object v0

    .line 469
    check-cast v0, Ljava/util/List;

    .line 470
    .line 471
    invoke-static {v2, v0, v8, v5}, Lcom/google/android/gms/internal/measurement/Z2;->a(ILjava/util/List;Lcom/google/android/gms/internal/measurement/l2;Z)V

    .line 472
    .line 473
    .line 474
    goto/16 :goto_5

    .line 475
    .line 476
    :pswitch_16
    aget v2, v2, v11

    .line 477
    .line 478
    invoke-virtual {v14, v7, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 479
    .line 480
    .line 481
    move-result-object v0

    .line 482
    check-cast v0, Ljava/util/List;

    .line 483
    .line 484
    invoke-static {v2, v0, v8, v5}, Lcom/google/android/gms/internal/measurement/Z2;->C(ILjava/util/List;Lcom/google/android/gms/internal/measurement/l2;Z)V

    .line 485
    .line 486
    .line 487
    goto/16 :goto_5

    .line 488
    .line 489
    :pswitch_17
    aget v2, v2, v11

    .line 490
    .line 491
    invoke-virtual {v14, v7, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 492
    .line 493
    .line 494
    move-result-object v0

    .line 495
    check-cast v0, Ljava/util/List;

    .line 496
    .line 497
    invoke-static {v2, v0, v8, v5}, Lcom/google/android/gms/internal/measurement/Z2;->B(ILjava/util/List;Lcom/google/android/gms/internal/measurement/l2;Z)V

    .line 498
    .line 499
    .line 500
    goto/16 :goto_5

    .line 501
    .line 502
    :pswitch_18
    aget v2, v2, v11

    .line 503
    .line 504
    invoke-virtual {v14, v7, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 505
    .line 506
    .line 507
    move-result-object v0

    .line 508
    check-cast v0, Ljava/util/List;

    .line 509
    .line 510
    invoke-static {v2, v0, v8, v5}, Lcom/google/android/gms/internal/measurement/Z2;->v(ILjava/util/List;Lcom/google/android/gms/internal/measurement/l2;Z)V

    .line 511
    .line 512
    .line 513
    goto/16 :goto_5

    .line 514
    .line 515
    :pswitch_19
    aget v2, v2, v11

    .line 516
    .line 517
    invoke-virtual {v14, v7, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 518
    .line 519
    .line 520
    move-result-object v0

    .line 521
    check-cast v0, Ljava/util/List;

    .line 522
    .line 523
    invoke-static {v2, v0, v8, v5}, Lcom/google/android/gms/internal/measurement/Z2;->c(ILjava/util/List;Lcom/google/android/gms/internal/measurement/l2;Z)V

    .line 524
    .line 525
    .line 526
    goto/16 :goto_5

    .line 527
    .line 528
    :pswitch_1a
    aget v2, v2, v11

    .line 529
    .line 530
    invoke-virtual {v14, v7, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 531
    .line 532
    .line 533
    move-result-object v0

    .line 534
    check-cast v0, Ljava/util/List;

    .line 535
    .line 536
    invoke-static {v2, v0, v8, v5}, Lcom/google/android/gms/internal/measurement/Z2;->t(ILjava/util/List;Lcom/google/android/gms/internal/measurement/l2;Z)V

    .line 537
    .line 538
    .line 539
    goto/16 :goto_5

    .line 540
    .line 541
    :pswitch_1b
    aget v2, v2, v11

    .line 542
    .line 543
    invoke-virtual {v14, v7, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 544
    .line 545
    .line 546
    move-result-object v0

    .line 547
    check-cast v0, Ljava/util/List;

    .line 548
    .line 549
    invoke-static {v2, v0, v8, v5}, Lcom/google/android/gms/internal/measurement/Z2;->w(ILjava/util/List;Lcom/google/android/gms/internal/measurement/l2;Z)V

    .line 550
    .line 551
    .line 552
    goto/16 :goto_5

    .line 553
    .line 554
    :pswitch_1c
    aget v2, v2, v11

    .line 555
    .line 556
    invoke-virtual {v14, v7, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 557
    .line 558
    .line 559
    move-result-object v0

    .line 560
    check-cast v0, Ljava/util/List;

    .line 561
    .line 562
    invoke-static {v2, v0, v8, v5}, Lcom/google/android/gms/internal/measurement/Z2;->x(ILjava/util/List;Lcom/google/android/gms/internal/measurement/l2;Z)V

    .line 563
    .line 564
    .line 565
    goto/16 :goto_5

    .line 566
    .line 567
    :pswitch_1d
    aget v2, v2, v11

    .line 568
    .line 569
    invoke-virtual {v14, v7, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 570
    .line 571
    .line 572
    move-result-object v0

    .line 573
    check-cast v0, Ljava/util/List;

    .line 574
    .line 575
    invoke-static {v2, v0, v8, v5}, Lcom/google/android/gms/internal/measurement/Z2;->z(ILjava/util/List;Lcom/google/android/gms/internal/measurement/l2;Z)V

    .line 576
    .line 577
    .line 578
    goto/16 :goto_5

    .line 579
    .line 580
    :pswitch_1e
    aget v2, v2, v11

    .line 581
    .line 582
    invoke-virtual {v14, v7, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 583
    .line 584
    .line 585
    move-result-object v0

    .line 586
    check-cast v0, Ljava/util/List;

    .line 587
    .line 588
    invoke-static {v2, v0, v8, v5}, Lcom/google/android/gms/internal/measurement/Z2;->d(ILjava/util/List;Lcom/google/android/gms/internal/measurement/l2;Z)V

    .line 589
    .line 590
    .line 591
    goto/16 :goto_5

    .line 592
    .line 593
    :pswitch_1f
    aget v2, v2, v11

    .line 594
    .line 595
    invoke-virtual {v14, v7, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 596
    .line 597
    .line 598
    move-result-object v0

    .line 599
    check-cast v0, Ljava/util/List;

    .line 600
    .line 601
    invoke-static {v2, v0, v8, v5}, Lcom/google/android/gms/internal/measurement/Z2;->A(ILjava/util/List;Lcom/google/android/gms/internal/measurement/l2;Z)V

    .line 602
    .line 603
    .line 604
    goto/16 :goto_5

    .line 605
    .line 606
    :pswitch_20
    aget v2, v2, v11

    .line 607
    .line 608
    invoke-virtual {v14, v7, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 609
    .line 610
    .line 611
    move-result-object v0

    .line 612
    check-cast v0, Ljava/util/List;

    .line 613
    .line 614
    invoke-static {v2, v0, v8, v5}, Lcom/google/android/gms/internal/measurement/Z2;->y(ILjava/util/List;Lcom/google/android/gms/internal/measurement/l2;Z)V

    .line 615
    .line 616
    .line 617
    goto/16 :goto_5

    .line 618
    .line 619
    :pswitch_21
    aget v2, v2, v11

    .line 620
    .line 621
    invoke-virtual {v14, v7, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 622
    .line 623
    .line 624
    move-result-object v0

    .line 625
    check-cast v0, Ljava/util/List;

    .line 626
    .line 627
    invoke-static {v2, v0, v8, v5}, Lcom/google/android/gms/internal/measurement/Z2;->u(ILjava/util/List;Lcom/google/android/gms/internal/measurement/l2;Z)V

    .line 628
    .line 629
    .line 630
    goto/16 :goto_5

    .line 631
    .line 632
    :pswitch_22
    aget v2, v2, v11

    .line 633
    .line 634
    invoke-virtual {v14, v7, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 635
    .line 636
    .line 637
    move-result-object v0

    .line 638
    check-cast v0, Ljava/util/List;

    .line 639
    .line 640
    invoke-static {v2, v0, v8, v10}, Lcom/google/android/gms/internal/measurement/Z2;->b(ILjava/util/List;Lcom/google/android/gms/internal/measurement/l2;Z)V

    .line 641
    .line 642
    .line 643
    goto/16 :goto_5

    .line 644
    .line 645
    :pswitch_23
    aget v2, v2, v11

    .line 646
    .line 647
    invoke-virtual {v14, v7, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 648
    .line 649
    .line 650
    move-result-object v0

    .line 651
    check-cast v0, Ljava/util/List;

    .line 652
    .line 653
    invoke-static {v2, v0, v8, v10}, Lcom/google/android/gms/internal/measurement/Z2;->a(ILjava/util/List;Lcom/google/android/gms/internal/measurement/l2;Z)V

    .line 654
    .line 655
    .line 656
    goto/16 :goto_5

    .line 657
    .line 658
    :pswitch_24
    aget v2, v2, v11

    .line 659
    .line 660
    invoke-virtual {v14, v7, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 661
    .line 662
    .line 663
    move-result-object v0

    .line 664
    check-cast v0, Ljava/util/List;

    .line 665
    .line 666
    invoke-static {v2, v0, v8, v10}, Lcom/google/android/gms/internal/measurement/Z2;->C(ILjava/util/List;Lcom/google/android/gms/internal/measurement/l2;Z)V

    .line 667
    .line 668
    .line 669
    goto/16 :goto_5

    .line 670
    .line 671
    :pswitch_25
    aget v2, v2, v11

    .line 672
    .line 673
    invoke-virtual {v14, v7, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 674
    .line 675
    .line 676
    move-result-object v0

    .line 677
    check-cast v0, Ljava/util/List;

    .line 678
    .line 679
    invoke-static {v2, v0, v8, v10}, Lcom/google/android/gms/internal/measurement/Z2;->B(ILjava/util/List;Lcom/google/android/gms/internal/measurement/l2;Z)V

    .line 680
    .line 681
    .line 682
    goto/16 :goto_5

    .line 683
    .line 684
    :pswitch_26
    aget v2, v2, v11

    .line 685
    .line 686
    invoke-virtual {v14, v7, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 687
    .line 688
    .line 689
    move-result-object v0

    .line 690
    check-cast v0, Ljava/util/List;

    .line 691
    .line 692
    invoke-static {v2, v0, v8, v10}, Lcom/google/android/gms/internal/measurement/Z2;->v(ILjava/util/List;Lcom/google/android/gms/internal/measurement/l2;Z)V

    .line 693
    .line 694
    .line 695
    goto/16 :goto_5

    .line 696
    .line 697
    :pswitch_27
    aget v2, v2, v11

    .line 698
    .line 699
    invoke-virtual {v14, v7, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 700
    .line 701
    .line 702
    move-result-object v0

    .line 703
    check-cast v0, Ljava/util/List;

    .line 704
    .line 705
    invoke-static {v2, v0, v8, v10}, Lcom/google/android/gms/internal/measurement/Z2;->c(ILjava/util/List;Lcom/google/android/gms/internal/measurement/l2;Z)V

    .line 706
    .line 707
    .line 708
    goto/16 :goto_5

    .line 709
    .line 710
    :pswitch_28
    aget v2, v2, v11

    .line 711
    .line 712
    invoke-virtual {v14, v7, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 713
    .line 714
    .line 715
    move-result-object v0

    .line 716
    check-cast v0, Ljava/util/List;

    .line 717
    .line 718
    sget-object v1, Lcom/google/android/gms/internal/measurement/Z2;->a:Lcom/google/android/gms/internal/measurement/q2;

    .line 719
    .line 720
    if-eqz v0, :cond_6

    .line 721
    .line 722
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 723
    .line 724
    .line 725
    move-result v1

    .line 726
    if-nez v1, :cond_6

    .line 727
    .line 728
    invoke-virtual {v8, v2, v0}, Lcom/google/android/gms/internal/measurement/l2;->h(ILjava/util/List;)V

    .line 729
    .line 730
    .line 731
    goto/16 :goto_5

    .line 732
    .line 733
    :pswitch_29
    aget v2, v2, v11

    .line 734
    .line 735
    invoke-virtual {v14, v7, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 736
    .line 737
    .line 738
    move-result-object v0

    .line 739
    check-cast v0, Ljava/util/List;

    .line 740
    .line 741
    invoke-virtual {v6, v11}, Lcom/google/android/gms/internal/measurement/R2;->w(I)Lcom/google/android/gms/internal/measurement/Y2;

    .line 742
    .line 743
    .line 744
    move-result-object v1

    .line 745
    sget-object v3, Lcom/google/android/gms/internal/measurement/Z2;->a:Lcom/google/android/gms/internal/measurement/q2;

    .line 746
    .line 747
    if-eqz v0, :cond_6

    .line 748
    .line 749
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 750
    .line 751
    .line 752
    move-result v3

    .line 753
    if-nez v3, :cond_6

    .line 754
    .line 755
    const/4 v3, 0x0

    .line 756
    :goto_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 757
    .line 758
    .line 759
    move-result v4

    .line 760
    if-ge v3, v4, :cond_6

    .line 761
    .line 762
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 763
    .line 764
    .line 765
    move-result-object v4

    .line 766
    invoke-virtual {v8, v2, v1, v4}, Lcom/google/android/gms/internal/measurement/l2;->q(ILcom/google/android/gms/internal/measurement/Y2;Ljava/lang/Object;)V

    .line 767
    .line 768
    .line 769
    add-int/lit8 v3, v3, 0x1

    .line 770
    .line 771
    goto :goto_4

    .line 772
    :pswitch_2a
    aget v2, v2, v11

    .line 773
    .line 774
    invoke-virtual {v14, v7, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 775
    .line 776
    .line 777
    move-result-object v0

    .line 778
    check-cast v0, Ljava/util/List;

    .line 779
    .line 780
    sget-object v1, Lcom/google/android/gms/internal/measurement/Z2;->a:Lcom/google/android/gms/internal/measurement/q2;

    .line 781
    .line 782
    if-eqz v0, :cond_6

    .line 783
    .line 784
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 785
    .line 786
    .line 787
    move-result v1

    .line 788
    if-nez v1, :cond_6

    .line 789
    .line 790
    invoke-virtual {v8, v2, v0}, Lcom/google/android/gms/internal/measurement/l2;->c(ILjava/util/List;)V

    .line 791
    .line 792
    .line 793
    goto/16 :goto_5

    .line 794
    .line 795
    :pswitch_2b
    aget v2, v2, v11

    .line 796
    .line 797
    invoke-virtual {v14, v7, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 798
    .line 799
    .line 800
    move-result-object v0

    .line 801
    check-cast v0, Ljava/util/List;

    .line 802
    .line 803
    invoke-static {v2, v0, v8, v10}, Lcom/google/android/gms/internal/measurement/Z2;->t(ILjava/util/List;Lcom/google/android/gms/internal/measurement/l2;Z)V

    .line 804
    .line 805
    .line 806
    goto/16 :goto_5

    .line 807
    .line 808
    :pswitch_2c
    aget v2, v2, v11

    .line 809
    .line 810
    invoke-virtual {v14, v7, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 811
    .line 812
    .line 813
    move-result-object v0

    .line 814
    check-cast v0, Ljava/util/List;

    .line 815
    .line 816
    invoke-static {v2, v0, v8, v10}, Lcom/google/android/gms/internal/measurement/Z2;->w(ILjava/util/List;Lcom/google/android/gms/internal/measurement/l2;Z)V

    .line 817
    .line 818
    .line 819
    goto/16 :goto_5

    .line 820
    .line 821
    :pswitch_2d
    aget v2, v2, v11

    .line 822
    .line 823
    invoke-virtual {v14, v7, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 824
    .line 825
    .line 826
    move-result-object v0

    .line 827
    check-cast v0, Ljava/util/List;

    .line 828
    .line 829
    invoke-static {v2, v0, v8, v10}, Lcom/google/android/gms/internal/measurement/Z2;->x(ILjava/util/List;Lcom/google/android/gms/internal/measurement/l2;Z)V

    .line 830
    .line 831
    .line 832
    goto/16 :goto_5

    .line 833
    .line 834
    :pswitch_2e
    aget v2, v2, v11

    .line 835
    .line 836
    invoke-virtual {v14, v7, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 837
    .line 838
    .line 839
    move-result-object v0

    .line 840
    check-cast v0, Ljava/util/List;

    .line 841
    .line 842
    invoke-static {v2, v0, v8, v10}, Lcom/google/android/gms/internal/measurement/Z2;->z(ILjava/util/List;Lcom/google/android/gms/internal/measurement/l2;Z)V

    .line 843
    .line 844
    .line 845
    goto/16 :goto_5

    .line 846
    .line 847
    :pswitch_2f
    aget v2, v2, v11

    .line 848
    .line 849
    invoke-virtual {v14, v7, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 850
    .line 851
    .line 852
    move-result-object v0

    .line 853
    check-cast v0, Ljava/util/List;

    .line 854
    .line 855
    invoke-static {v2, v0, v8, v10}, Lcom/google/android/gms/internal/measurement/Z2;->d(ILjava/util/List;Lcom/google/android/gms/internal/measurement/l2;Z)V

    .line 856
    .line 857
    .line 858
    goto/16 :goto_5

    .line 859
    .line 860
    :pswitch_30
    aget v2, v2, v11

    .line 861
    .line 862
    invoke-virtual {v14, v7, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 863
    .line 864
    .line 865
    move-result-object v0

    .line 866
    check-cast v0, Ljava/util/List;

    .line 867
    .line 868
    invoke-static {v2, v0, v8, v10}, Lcom/google/android/gms/internal/measurement/Z2;->A(ILjava/util/List;Lcom/google/android/gms/internal/measurement/l2;Z)V

    .line 869
    .line 870
    .line 871
    goto/16 :goto_5

    .line 872
    .line 873
    :pswitch_31
    aget v2, v2, v11

    .line 874
    .line 875
    invoke-virtual {v14, v7, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 876
    .line 877
    .line 878
    move-result-object v0

    .line 879
    check-cast v0, Ljava/util/List;

    .line 880
    .line 881
    invoke-static {v2, v0, v8, v10}, Lcom/google/android/gms/internal/measurement/Z2;->y(ILjava/util/List;Lcom/google/android/gms/internal/measurement/l2;Z)V

    .line 882
    .line 883
    .line 884
    goto/16 :goto_5

    .line 885
    .line 886
    :pswitch_32
    aget v2, v2, v11

    .line 887
    .line 888
    invoke-virtual {v14, v7, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 889
    .line 890
    .line 891
    move-result-object v0

    .line 892
    check-cast v0, Ljava/util/List;

    .line 893
    .line 894
    invoke-static {v2, v0, v8, v10}, Lcom/google/android/gms/internal/measurement/Z2;->u(ILjava/util/List;Lcom/google/android/gms/internal/measurement/l2;Z)V

    .line 895
    .line 896
    .line 897
    goto/16 :goto_5

    .line 898
    .line 899
    :pswitch_33
    move-wide v4, v0

    .line 900
    move-object/from16 v0, p0

    .line 901
    .line 902
    move-object/from16 v1, p1

    .line 903
    .line 904
    move v2, v11

    .line 905
    move v3, v13

    .line 906
    move-wide v9, v4

    .line 907
    move v4, v15

    .line 908
    move/from16 v5, v16

    .line 909
    .line 910
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/R2;->l(Ljava/lang/Object;IIII)Z

    .line 911
    .line 912
    .line 913
    move-result v0

    .line 914
    if-eqz v0, :cond_6

    .line 915
    .line 916
    invoke-virtual {v14, v7, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 917
    .line 918
    .line 919
    move-result-object v0

    .line 920
    invoke-virtual {v6, v11}, Lcom/google/android/gms/internal/measurement/R2;->w(I)Lcom/google/android/gms/internal/measurement/Y2;

    .line 921
    .line 922
    .line 923
    move-result-object v1

    .line 924
    invoke-virtual {v8, v12, v1, v0}, Lcom/google/android/gms/internal/measurement/l2;->n(ILcom/google/android/gms/internal/measurement/Y2;Ljava/lang/Object;)V

    .line 925
    .line 926
    .line 927
    goto/16 :goto_5

    .line 928
    .line 929
    :pswitch_34
    move-wide v9, v0

    .line 930
    move-object/from16 v0, p0

    .line 931
    .line 932
    move-object/from16 v1, p1

    .line 933
    .line 934
    move v2, v11

    .line 935
    move v3, v13

    .line 936
    move v4, v15

    .line 937
    move/from16 v5, v16

    .line 938
    .line 939
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/R2;->l(Ljava/lang/Object;IIII)Z

    .line 940
    .line 941
    .line 942
    move-result v0

    .line 943
    if-eqz v0, :cond_6

    .line 944
    .line 945
    invoke-virtual {v14, v7, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 946
    .line 947
    .line 948
    move-result-wide v0

    .line 949
    invoke-virtual {v8, v12, v0, v1}, Lcom/google/android/gms/internal/measurement/l2;->b(IJ)V

    .line 950
    .line 951
    .line 952
    goto/16 :goto_5

    .line 953
    .line 954
    :pswitch_35
    move-wide v9, v0

    .line 955
    move-object/from16 v0, p0

    .line 956
    .line 957
    move-object/from16 v1, p1

    .line 958
    .line 959
    move v2, v11

    .line 960
    move v3, v13

    .line 961
    move v4, v15

    .line 962
    move/from16 v5, v16

    .line 963
    .line 964
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/R2;->l(Ljava/lang/Object;IIII)Z

    .line 965
    .line 966
    .line 967
    move-result v0

    .line 968
    if-eqz v0, :cond_6

    .line 969
    .line 970
    invoke-virtual {v14, v7, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 971
    .line 972
    .line 973
    move-result v0

    .line 974
    invoke-virtual {v8, v12, v0}, Lcom/google/android/gms/internal/measurement/l2;->a(II)V

    .line 975
    .line 976
    .line 977
    goto/16 :goto_5

    .line 978
    .line 979
    :pswitch_36
    move-wide v9, v0

    .line 980
    move-object/from16 v0, p0

    .line 981
    .line 982
    move-object/from16 v1, p1

    .line 983
    .line 984
    move v2, v11

    .line 985
    move v3, v13

    .line 986
    move v4, v15

    .line 987
    move/from16 v5, v16

    .line 988
    .line 989
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/R2;->l(Ljava/lang/Object;IIII)Z

    .line 990
    .line 991
    .line 992
    move-result v0

    .line 993
    if-eqz v0, :cond_6

    .line 994
    .line 995
    invoke-virtual {v14, v7, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 996
    .line 997
    .line 998
    move-result-wide v0

    .line 999
    invoke-virtual {v8, v12, v0, v1}, Lcom/google/android/gms/internal/measurement/l2;->s(IJ)V

    .line 1000
    .line 1001
    .line 1002
    goto/16 :goto_5

    .line 1003
    .line 1004
    :pswitch_37
    move-wide v9, v0

    .line 1005
    move-object/from16 v0, p0

    .line 1006
    .line 1007
    move-object/from16 v1, p1

    .line 1008
    .line 1009
    move v2, v11

    .line 1010
    move v3, v13

    .line 1011
    move v4, v15

    .line 1012
    move/from16 v5, v16

    .line 1013
    .line 1014
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/R2;->l(Ljava/lang/Object;IIII)Z

    .line 1015
    .line 1016
    .line 1017
    move-result v0

    .line 1018
    if-eqz v0, :cond_6

    .line 1019
    .line 1020
    invoke-virtual {v14, v7, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 1021
    .line 1022
    .line 1023
    move-result v0

    .line 1024
    invoke-virtual {v8, v12, v0}, Lcom/google/android/gms/internal/measurement/l2;->r(II)V

    .line 1025
    .line 1026
    .line 1027
    goto/16 :goto_5

    .line 1028
    .line 1029
    :pswitch_38
    move-wide v9, v0

    .line 1030
    move-object/from16 v0, p0

    .line 1031
    .line 1032
    move-object/from16 v1, p1

    .line 1033
    .line 1034
    move v2, v11

    .line 1035
    move v3, v13

    .line 1036
    move v4, v15

    .line 1037
    move/from16 v5, v16

    .line 1038
    .line 1039
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/R2;->l(Ljava/lang/Object;IIII)Z

    .line 1040
    .line 1041
    .line 1042
    move-result v0

    .line 1043
    if-eqz v0, :cond_6

    .line 1044
    .line 1045
    invoke-virtual {v14, v7, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 1046
    .line 1047
    .line 1048
    move-result v0

    .line 1049
    invoke-virtual {v8, v12, v0}, Lcom/google/android/gms/internal/measurement/l2;->j(II)V

    .line 1050
    .line 1051
    .line 1052
    goto/16 :goto_5

    .line 1053
    .line 1054
    :pswitch_39
    move-wide v9, v0

    .line 1055
    move-object/from16 v0, p0

    .line 1056
    .line 1057
    move-object/from16 v1, p1

    .line 1058
    .line 1059
    move v2, v11

    .line 1060
    move v3, v13

    .line 1061
    move v4, v15

    .line 1062
    move/from16 v5, v16

    .line 1063
    .line 1064
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/R2;->l(Ljava/lang/Object;IIII)Z

    .line 1065
    .line 1066
    .line 1067
    move-result v0

    .line 1068
    if-eqz v0, :cond_6

    .line 1069
    .line 1070
    invoke-virtual {v14, v7, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 1071
    .line 1072
    .line 1073
    move-result v0

    .line 1074
    invoke-virtual {v8, v12, v0}, Lcom/google/android/gms/internal/measurement/l2;->d(II)V

    .line 1075
    .line 1076
    .line 1077
    goto/16 :goto_5

    .line 1078
    .line 1079
    :pswitch_3a
    move-wide v9, v0

    .line 1080
    move-object/from16 v0, p0

    .line 1081
    .line 1082
    move-object/from16 v1, p1

    .line 1083
    .line 1084
    move v2, v11

    .line 1085
    move v3, v13

    .line 1086
    move v4, v15

    .line 1087
    move/from16 v5, v16

    .line 1088
    .line 1089
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/R2;->l(Ljava/lang/Object;IIII)Z

    .line 1090
    .line 1091
    .line 1092
    move-result v0

    .line 1093
    if-eqz v0, :cond_6

    .line 1094
    .line 1095
    invoke-virtual {v14, v7, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1096
    .line 1097
    .line 1098
    move-result-object v0

    .line 1099
    check-cast v0, Lcom/google/android/gms/internal/measurement/i2;

    .line 1100
    .line 1101
    invoke-virtual {v8, v12, v0}, Lcom/google/android/gms/internal/measurement/l2;->g(ILcom/google/android/gms/internal/measurement/i2;)V

    .line 1102
    .line 1103
    .line 1104
    goto/16 :goto_5

    .line 1105
    .line 1106
    :pswitch_3b
    move-wide v9, v0

    .line 1107
    move-object/from16 v0, p0

    .line 1108
    .line 1109
    move-object/from16 v1, p1

    .line 1110
    .line 1111
    move v2, v11

    .line 1112
    move v3, v13

    .line 1113
    move v4, v15

    .line 1114
    move/from16 v5, v16

    .line 1115
    .line 1116
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/R2;->l(Ljava/lang/Object;IIII)Z

    .line 1117
    .line 1118
    .line 1119
    move-result v0

    .line 1120
    if-eqz v0, :cond_6

    .line 1121
    .line 1122
    invoke-virtual {v14, v7, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1123
    .line 1124
    .line 1125
    move-result-object v0

    .line 1126
    invoke-virtual {v6, v11}, Lcom/google/android/gms/internal/measurement/R2;->w(I)Lcom/google/android/gms/internal/measurement/Y2;

    .line 1127
    .line 1128
    .line 1129
    move-result-object v1

    .line 1130
    invoke-virtual {v8, v12, v1, v0}, Lcom/google/android/gms/internal/measurement/l2;->q(ILcom/google/android/gms/internal/measurement/Y2;Ljava/lang/Object;)V

    .line 1131
    .line 1132
    .line 1133
    goto/16 :goto_5

    .line 1134
    .line 1135
    :pswitch_3c
    move-wide v9, v0

    .line 1136
    move-object/from16 v0, p0

    .line 1137
    .line 1138
    move-object/from16 v1, p1

    .line 1139
    .line 1140
    move v2, v11

    .line 1141
    move v3, v13

    .line 1142
    move v4, v15

    .line 1143
    move/from16 v5, v16

    .line 1144
    .line 1145
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/R2;->l(Ljava/lang/Object;IIII)Z

    .line 1146
    .line 1147
    .line 1148
    move-result v0

    .line 1149
    if-eqz v0, :cond_6

    .line 1150
    .line 1151
    invoke-virtual {v14, v7, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1152
    .line 1153
    .line 1154
    move-result-object v0

    .line 1155
    instance-of v1, v0, Ljava/lang/String;

    .line 1156
    .line 1157
    if-eqz v1, :cond_5

    .line 1158
    .line 1159
    check-cast v0, Ljava/lang/String;

    .line 1160
    .line 1161
    iget-object v1, v8, Lcom/google/android/gms/internal/measurement/l2;->a:Lcom/google/android/gms/internal/measurement/k2;

    .line 1162
    .line 1163
    invoke-virtual {v1, v12, v0}, Lcom/google/android/gms/internal/measurement/k2;->x(ILjava/lang/String;)V

    .line 1164
    .line 1165
    .line 1166
    goto/16 :goto_5

    .line 1167
    .line 1168
    :cond_5
    check-cast v0, Lcom/google/android/gms/internal/measurement/i2;

    .line 1169
    .line 1170
    invoke-virtual {v8, v12, v0}, Lcom/google/android/gms/internal/measurement/l2;->g(ILcom/google/android/gms/internal/measurement/i2;)V

    .line 1171
    .line 1172
    .line 1173
    goto/16 :goto_5

    .line 1174
    .line 1175
    :pswitch_3d
    move-wide v9, v0

    .line 1176
    move-object/from16 v0, p0

    .line 1177
    .line 1178
    move-object/from16 v1, p1

    .line 1179
    .line 1180
    move v2, v11

    .line 1181
    move v3, v13

    .line 1182
    move v4, v15

    .line 1183
    move/from16 v5, v16

    .line 1184
    .line 1185
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/R2;->l(Ljava/lang/Object;IIII)Z

    .line 1186
    .line 1187
    .line 1188
    move-result v0

    .line 1189
    if-eqz v0, :cond_6

    .line 1190
    .line 1191
    invoke-static {v7, v9, v10}, Lcom/google/android/gms/internal/measurement/g3;->t(Ljava/lang/Object;J)Z

    .line 1192
    .line 1193
    .line 1194
    move-result v0

    .line 1195
    invoke-virtual {v8, v12, v0}, Lcom/google/android/gms/internal/measurement/l2;->f(IZ)V

    .line 1196
    .line 1197
    .line 1198
    goto/16 :goto_5

    .line 1199
    .line 1200
    :pswitch_3e
    move-wide v9, v0

    .line 1201
    move-object/from16 v0, p0

    .line 1202
    .line 1203
    move-object/from16 v1, p1

    .line 1204
    .line 1205
    move v2, v11

    .line 1206
    move v3, v13

    .line 1207
    move v4, v15

    .line 1208
    move/from16 v5, v16

    .line 1209
    .line 1210
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/R2;->l(Ljava/lang/Object;IIII)Z

    .line 1211
    .line 1212
    .line 1213
    move-result v0

    .line 1214
    if-eqz v0, :cond_6

    .line 1215
    .line 1216
    invoke-virtual {v14, v7, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 1217
    .line 1218
    .line 1219
    move-result v0

    .line 1220
    invoke-virtual {v8, v12, v0}, Lcom/google/android/gms/internal/measurement/l2;->k(II)V

    .line 1221
    .line 1222
    .line 1223
    goto/16 :goto_5

    .line 1224
    .line 1225
    :pswitch_3f
    move-wide v9, v0

    .line 1226
    move-object/from16 v0, p0

    .line 1227
    .line 1228
    move-object/from16 v1, p1

    .line 1229
    .line 1230
    move v2, v11

    .line 1231
    move v3, v13

    .line 1232
    move v4, v15

    .line 1233
    move/from16 v5, v16

    .line 1234
    .line 1235
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/R2;->l(Ljava/lang/Object;IIII)Z

    .line 1236
    .line 1237
    .line 1238
    move-result v0

    .line 1239
    if-eqz v0, :cond_6

    .line 1240
    .line 1241
    invoke-virtual {v14, v7, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 1242
    .line 1243
    .line 1244
    move-result-wide v0

    .line 1245
    invoke-virtual {v8, v12, v0, v1}, Lcom/google/android/gms/internal/measurement/l2;->l(IJ)V

    .line 1246
    .line 1247
    .line 1248
    goto/16 :goto_5

    .line 1249
    .line 1250
    :pswitch_40
    move-wide v9, v0

    .line 1251
    move-object/from16 v0, p0

    .line 1252
    .line 1253
    move-object/from16 v1, p1

    .line 1254
    .line 1255
    move v2, v11

    .line 1256
    move v3, v13

    .line 1257
    move v4, v15

    .line 1258
    move/from16 v5, v16

    .line 1259
    .line 1260
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/R2;->l(Ljava/lang/Object;IIII)Z

    .line 1261
    .line 1262
    .line 1263
    move-result v0

    .line 1264
    if-eqz v0, :cond_6

    .line 1265
    .line 1266
    invoke-virtual {v14, v7, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 1267
    .line 1268
    .line 1269
    move-result v0

    .line 1270
    invoke-virtual {v8, v12, v0}, Lcom/google/android/gms/internal/measurement/l2;->o(II)V

    .line 1271
    .line 1272
    .line 1273
    goto/16 :goto_5

    .line 1274
    .line 1275
    :pswitch_41
    move-wide v9, v0

    .line 1276
    move-object/from16 v0, p0

    .line 1277
    .line 1278
    move-object/from16 v1, p1

    .line 1279
    .line 1280
    move v2, v11

    .line 1281
    move v3, v13

    .line 1282
    move v4, v15

    .line 1283
    move/from16 v5, v16

    .line 1284
    .line 1285
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/R2;->l(Ljava/lang/Object;IIII)Z

    .line 1286
    .line 1287
    .line 1288
    move-result v0

    .line 1289
    if-eqz v0, :cond_6

    .line 1290
    .line 1291
    invoke-virtual {v14, v7, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 1292
    .line 1293
    .line 1294
    move-result-wide v0

    .line 1295
    invoke-virtual {v8, v12, v0, v1}, Lcom/google/android/gms/internal/measurement/l2;->e(IJ)V

    .line 1296
    .line 1297
    .line 1298
    goto :goto_5

    .line 1299
    :pswitch_42
    move-wide v9, v0

    .line 1300
    move-object/from16 v0, p0

    .line 1301
    .line 1302
    move-object/from16 v1, p1

    .line 1303
    .line 1304
    move v2, v11

    .line 1305
    move v3, v13

    .line 1306
    move v4, v15

    .line 1307
    move/from16 v5, v16

    .line 1308
    .line 1309
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/R2;->l(Ljava/lang/Object;IIII)Z

    .line 1310
    .line 1311
    .line 1312
    move-result v0

    .line 1313
    if-eqz v0, :cond_6

    .line 1314
    .line 1315
    invoke-virtual {v14, v7, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 1316
    .line 1317
    .line 1318
    move-result-wide v0

    .line 1319
    invoke-virtual {v8, v12, v0, v1}, Lcom/google/android/gms/internal/measurement/l2;->p(IJ)V

    .line 1320
    .line 1321
    .line 1322
    goto :goto_5

    .line 1323
    :pswitch_43
    move-wide v9, v0

    .line 1324
    move-object/from16 v0, p0

    .line 1325
    .line 1326
    move-object/from16 v1, p1

    .line 1327
    .line 1328
    move v2, v11

    .line 1329
    move v3, v13

    .line 1330
    move v4, v15

    .line 1331
    move/from16 v5, v16

    .line 1332
    .line 1333
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/R2;->l(Ljava/lang/Object;IIII)Z

    .line 1334
    .line 1335
    .line 1336
    move-result v0

    .line 1337
    if-eqz v0, :cond_6

    .line 1338
    .line 1339
    invoke-static {v7, v9, v10}, Lcom/google/android/gms/internal/measurement/g3;->e(Ljava/lang/Object;J)F

    .line 1340
    .line 1341
    .line 1342
    move-result v0

    .line 1343
    invoke-virtual {v8, v12, v0}, Lcom/google/android/gms/internal/measurement/l2;->m(IF)V

    .line 1344
    .line 1345
    .line 1346
    goto :goto_5

    .line 1347
    :pswitch_44
    move-wide v9, v0

    .line 1348
    move-object/from16 v0, p0

    .line 1349
    .line 1350
    move-object/from16 v1, p1

    .line 1351
    .line 1352
    move v2, v11

    .line 1353
    move v3, v13

    .line 1354
    move v4, v15

    .line 1355
    move/from16 v5, v16

    .line 1356
    .line 1357
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/R2;->l(Ljava/lang/Object;IIII)Z

    .line 1358
    .line 1359
    .line 1360
    move-result v0

    .line 1361
    if-eqz v0, :cond_6

    .line 1362
    .line 1363
    invoke-static {v7, v9, v10}, Lcom/google/android/gms/internal/measurement/g3;->d(Ljava/lang/Object;J)D

    .line 1364
    .line 1365
    .line 1366
    move-result-wide v0

    .line 1367
    invoke-virtual {v8, v12, v0, v1}, Lcom/google/android/gms/internal/measurement/l2;->i(ID)V

    .line 1368
    .line 1369
    .line 1370
    :cond_6
    :goto_5
    add-int/lit8 v11, v11, 0x3

    .line 1371
    .line 1372
    move v0, v13

    .line 1373
    move v1, v15

    .line 1374
    const v9, 0xfffff

    .line 1375
    .line 1376
    .line 1377
    const/4 v10, 0x0

    .line 1378
    goto/16 :goto_0

    .line 1379
    .line 1380
    :cond_7
    move-object v0, v7

    .line 1381
    check-cast v0, Lcom/google/android/gms/internal/measurement/s2;

    .line 1382
    .line 1383
    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/s2;->zzc:Lcom/google/android/gms/internal/measurement/b3;

    .line 1384
    .line 1385
    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/measurement/b3;->d(Lcom/google/android/gms/internal/measurement/l2;)V

    .line 1386
    .line 1387
    .line 1388
    return-void

    .line 1389
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final c(Ljava/lang/Object;[BIILcom/google/android/gms/internal/ads/SG;)V
    .locals 7

    .line 1
    const/4 v5, 0x0

    .line 2
    move-object v0, p0

    .line 3
    move-object v1, p1

    .line 4
    move-object v2, p2

    .line 5
    move v3, p3

    .line 6
    move v4, p4

    .line 7
    move-object v6, p5

    .line 8
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/measurement/R2;->o(Ljava/lang/Object;[BIIILcom/google/android/gms/internal/ads/SG;)I

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final d(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/R2;->a:[I

    .line 4
    .line 5
    array-length v3, v2

    .line 6
    if-ge v1, v3, :cond_2

    .line 7
    .line 8
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/measurement/R2;->t(I)I

    .line 9
    .line 10
    .line 11
    move-result v3

    .line 12
    const v4, 0xfffff

    .line 13
    .line 14
    .line 15
    and-int v5, v3, v4

    .line 16
    .line 17
    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/R2;->s(I)I

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    int-to-long v5, v5

    .line 22
    packed-switch v3, :pswitch_data_0

    .line 23
    .line 24
    .line 25
    goto/16 :goto_2

    .line 26
    .line 27
    :pswitch_0
    add-int/lit8 v3, v1, 0x2

    .line 28
    .line 29
    aget v2, v2, v3

    .line 30
    .line 31
    and-int/2addr v2, v4

    .line 32
    int-to-long v2, v2

    .line 33
    invoke-static {p1, v2, v3}, Lcom/google/android/gms/internal/measurement/g3;->f(Ljava/lang/Object;J)I

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/measurement/g3;->f(Ljava/lang/Object;J)I

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    if-ne v4, v2, :cond_1

    .line 42
    .line 43
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/g3;->i(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/measurement/g3;->i(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/measurement/Z2;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    if-nez v2, :cond_0

    .line 56
    .line 57
    goto/16 :goto_3

    .line 58
    .line 59
    :pswitch_1
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/g3;->i(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/measurement/g3;->i(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/measurement/Z2;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    goto :goto_1

    .line 72
    :pswitch_2
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/g3;->i(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/measurement/g3;->i(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/measurement/Z2;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v2

    .line 84
    :goto_1
    if-nez v2, :cond_0

    .line 85
    .line 86
    goto/16 :goto_3

    .line 87
    .line 88
    :pswitch_3
    invoke-virtual {p0, v1, p1, p2}, Lcom/google/android/gms/internal/measurement/R2;->j(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    move-result v2

    .line 92
    if-eqz v2, :cond_1

    .line 93
    .line 94
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/g3;->i(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/measurement/g3;->i(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v3

    .line 102
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/measurement/Z2;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result v2

    .line 106
    if-eqz v2, :cond_1

    .line 107
    .line 108
    goto/16 :goto_2

    .line 109
    .line 110
    :pswitch_4
    invoke-virtual {p0, v1, p1, p2}, Lcom/google/android/gms/internal/measurement/R2;->j(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    move-result v2

    .line 114
    if-eqz v2, :cond_1

    .line 115
    .line 116
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/g3;->g(Ljava/lang/Object;J)J

    .line 117
    .line 118
    .line 119
    move-result-wide v2

    .line 120
    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/measurement/g3;->g(Ljava/lang/Object;J)J

    .line 121
    .line 122
    .line 123
    move-result-wide v4

    .line 124
    cmp-long v6, v2, v4

    .line 125
    .line 126
    if-nez v6, :cond_1

    .line 127
    .line 128
    goto/16 :goto_2

    .line 129
    .line 130
    :pswitch_5
    invoke-virtual {p0, v1, p1, p2}, Lcom/google/android/gms/internal/measurement/R2;->j(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    move-result v2

    .line 134
    if-eqz v2, :cond_1

    .line 135
    .line 136
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/g3;->f(Ljava/lang/Object;J)I

    .line 137
    .line 138
    .line 139
    move-result v2

    .line 140
    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/measurement/g3;->f(Ljava/lang/Object;J)I

    .line 141
    .line 142
    .line 143
    move-result v3

    .line 144
    if-ne v2, v3, :cond_1

    .line 145
    .line 146
    goto/16 :goto_2

    .line 147
    .line 148
    :pswitch_6
    invoke-virtual {p0, v1, p1, p2}, Lcom/google/android/gms/internal/measurement/R2;->j(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 149
    .line 150
    .line 151
    move-result v2

    .line 152
    if-eqz v2, :cond_1

    .line 153
    .line 154
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/g3;->g(Ljava/lang/Object;J)J

    .line 155
    .line 156
    .line 157
    move-result-wide v2

    .line 158
    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/measurement/g3;->g(Ljava/lang/Object;J)J

    .line 159
    .line 160
    .line 161
    move-result-wide v4

    .line 162
    cmp-long v6, v2, v4

    .line 163
    .line 164
    if-nez v6, :cond_1

    .line 165
    .line 166
    goto/16 :goto_2

    .line 167
    .line 168
    :pswitch_7
    invoke-virtual {p0, v1, p1, p2}, Lcom/google/android/gms/internal/measurement/R2;->j(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 169
    .line 170
    .line 171
    move-result v2

    .line 172
    if-eqz v2, :cond_1

    .line 173
    .line 174
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/g3;->f(Ljava/lang/Object;J)I

    .line 175
    .line 176
    .line 177
    move-result v2

    .line 178
    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/measurement/g3;->f(Ljava/lang/Object;J)I

    .line 179
    .line 180
    .line 181
    move-result v3

    .line 182
    if-ne v2, v3, :cond_1

    .line 183
    .line 184
    goto/16 :goto_2

    .line 185
    .line 186
    :pswitch_8
    invoke-virtual {p0, v1, p1, p2}, Lcom/google/android/gms/internal/measurement/R2;->j(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 187
    .line 188
    .line 189
    move-result v2

    .line 190
    if-eqz v2, :cond_1

    .line 191
    .line 192
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/g3;->f(Ljava/lang/Object;J)I

    .line 193
    .line 194
    .line 195
    move-result v2

    .line 196
    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/measurement/g3;->f(Ljava/lang/Object;J)I

    .line 197
    .line 198
    .line 199
    move-result v3

    .line 200
    if-ne v2, v3, :cond_1

    .line 201
    .line 202
    goto/16 :goto_2

    .line 203
    .line 204
    :pswitch_9
    invoke-virtual {p0, v1, p1, p2}, Lcom/google/android/gms/internal/measurement/R2;->j(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 205
    .line 206
    .line 207
    move-result v2

    .line 208
    if-eqz v2, :cond_1

    .line 209
    .line 210
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/g3;->f(Ljava/lang/Object;J)I

    .line 211
    .line 212
    .line 213
    move-result v2

    .line 214
    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/measurement/g3;->f(Ljava/lang/Object;J)I

    .line 215
    .line 216
    .line 217
    move-result v3

    .line 218
    if-ne v2, v3, :cond_1

    .line 219
    .line 220
    goto/16 :goto_2

    .line 221
    .line 222
    :pswitch_a
    invoke-virtual {p0, v1, p1, p2}, Lcom/google/android/gms/internal/measurement/R2;->j(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 223
    .line 224
    .line 225
    move-result v2

    .line 226
    if-eqz v2, :cond_1

    .line 227
    .line 228
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/g3;->i(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 229
    .line 230
    .line 231
    move-result-object v2

    .line 232
    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/measurement/g3;->i(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 233
    .line 234
    .line 235
    move-result-object v3

    .line 236
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/measurement/Z2;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 237
    .line 238
    .line 239
    move-result v2

    .line 240
    if-eqz v2, :cond_1

    .line 241
    .line 242
    goto/16 :goto_2

    .line 243
    .line 244
    :pswitch_b
    invoke-virtual {p0, v1, p1, p2}, Lcom/google/android/gms/internal/measurement/R2;->j(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 245
    .line 246
    .line 247
    move-result v2

    .line 248
    if-eqz v2, :cond_1

    .line 249
    .line 250
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/g3;->i(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 251
    .line 252
    .line 253
    move-result-object v2

    .line 254
    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/measurement/g3;->i(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 255
    .line 256
    .line 257
    move-result-object v3

    .line 258
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/measurement/Z2;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 259
    .line 260
    .line 261
    move-result v2

    .line 262
    if-eqz v2, :cond_1

    .line 263
    .line 264
    goto/16 :goto_2

    .line 265
    .line 266
    :pswitch_c
    invoke-virtual {p0, v1, p1, p2}, Lcom/google/android/gms/internal/measurement/R2;->j(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 267
    .line 268
    .line 269
    move-result v2

    .line 270
    if-eqz v2, :cond_1

    .line 271
    .line 272
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/g3;->i(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 273
    .line 274
    .line 275
    move-result-object v2

    .line 276
    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/measurement/g3;->i(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 277
    .line 278
    .line 279
    move-result-object v3

    .line 280
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/measurement/Z2;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 281
    .line 282
    .line 283
    move-result v2

    .line 284
    if-eqz v2, :cond_1

    .line 285
    .line 286
    goto/16 :goto_2

    .line 287
    .line 288
    :pswitch_d
    invoke-virtual {p0, v1, p1, p2}, Lcom/google/android/gms/internal/measurement/R2;->j(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 289
    .line 290
    .line 291
    move-result v2

    .line 292
    if-eqz v2, :cond_1

    .line 293
    .line 294
    sget-object v2, Lcom/google/android/gms/internal/measurement/g3;->c:Lcom/google/android/gms/internal/measurement/f3;

    .line 295
    .line 296
    invoke-virtual {v2, p1, v5, v6}, Lcom/google/android/gms/internal/measurement/f3;->g(Ljava/lang/Object;J)Z

    .line 297
    .line 298
    .line 299
    move-result v3

    .line 300
    invoke-virtual {v2, p2, v5, v6}, Lcom/google/android/gms/internal/measurement/f3;->g(Ljava/lang/Object;J)Z

    .line 301
    .line 302
    .line 303
    move-result v2

    .line 304
    if-ne v3, v2, :cond_1

    .line 305
    .line 306
    goto/16 :goto_2

    .line 307
    .line 308
    :pswitch_e
    invoke-virtual {p0, v1, p1, p2}, Lcom/google/android/gms/internal/measurement/R2;->j(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 309
    .line 310
    .line 311
    move-result v2

    .line 312
    if-eqz v2, :cond_1

    .line 313
    .line 314
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/g3;->f(Ljava/lang/Object;J)I

    .line 315
    .line 316
    .line 317
    move-result v2

    .line 318
    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/measurement/g3;->f(Ljava/lang/Object;J)I

    .line 319
    .line 320
    .line 321
    move-result v3

    .line 322
    if-ne v2, v3, :cond_1

    .line 323
    .line 324
    goto/16 :goto_2

    .line 325
    .line 326
    :pswitch_f
    invoke-virtual {p0, v1, p1, p2}, Lcom/google/android/gms/internal/measurement/R2;->j(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 327
    .line 328
    .line 329
    move-result v2

    .line 330
    if-eqz v2, :cond_1

    .line 331
    .line 332
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/g3;->g(Ljava/lang/Object;J)J

    .line 333
    .line 334
    .line 335
    move-result-wide v2

    .line 336
    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/measurement/g3;->g(Ljava/lang/Object;J)J

    .line 337
    .line 338
    .line 339
    move-result-wide v4

    .line 340
    cmp-long v6, v2, v4

    .line 341
    .line 342
    if-nez v6, :cond_1

    .line 343
    .line 344
    goto/16 :goto_2

    .line 345
    .line 346
    :pswitch_10
    invoke-virtual {p0, v1, p1, p2}, Lcom/google/android/gms/internal/measurement/R2;->j(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 347
    .line 348
    .line 349
    move-result v2

    .line 350
    if-eqz v2, :cond_1

    .line 351
    .line 352
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/g3;->f(Ljava/lang/Object;J)I

    .line 353
    .line 354
    .line 355
    move-result v2

    .line 356
    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/measurement/g3;->f(Ljava/lang/Object;J)I

    .line 357
    .line 358
    .line 359
    move-result v3

    .line 360
    if-ne v2, v3, :cond_1

    .line 361
    .line 362
    goto :goto_2

    .line 363
    :pswitch_11
    invoke-virtual {p0, v1, p1, p2}, Lcom/google/android/gms/internal/measurement/R2;->j(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 364
    .line 365
    .line 366
    move-result v2

    .line 367
    if-eqz v2, :cond_1

    .line 368
    .line 369
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/g3;->g(Ljava/lang/Object;J)J

    .line 370
    .line 371
    .line 372
    move-result-wide v2

    .line 373
    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/measurement/g3;->g(Ljava/lang/Object;J)J

    .line 374
    .line 375
    .line 376
    move-result-wide v4

    .line 377
    cmp-long v6, v2, v4

    .line 378
    .line 379
    if-nez v6, :cond_1

    .line 380
    .line 381
    goto :goto_2

    .line 382
    :pswitch_12
    invoke-virtual {p0, v1, p1, p2}, Lcom/google/android/gms/internal/measurement/R2;->j(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 383
    .line 384
    .line 385
    move-result v2

    .line 386
    if-eqz v2, :cond_1

    .line 387
    .line 388
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/g3;->g(Ljava/lang/Object;J)J

    .line 389
    .line 390
    .line 391
    move-result-wide v2

    .line 392
    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/measurement/g3;->g(Ljava/lang/Object;J)J

    .line 393
    .line 394
    .line 395
    move-result-wide v4

    .line 396
    cmp-long v6, v2, v4

    .line 397
    .line 398
    if-nez v6, :cond_1

    .line 399
    .line 400
    goto :goto_2

    .line 401
    :pswitch_13
    invoke-virtual {p0, v1, p1, p2}, Lcom/google/android/gms/internal/measurement/R2;->j(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 402
    .line 403
    .line 404
    move-result v2

    .line 405
    if-eqz v2, :cond_1

    .line 406
    .line 407
    sget-object v2, Lcom/google/android/gms/internal/measurement/g3;->c:Lcom/google/android/gms/internal/measurement/f3;

    .line 408
    .line 409
    invoke-virtual {v2, p1, v5, v6}, Lcom/google/android/gms/internal/measurement/f3;->b(Ljava/lang/Object;J)F

    .line 410
    .line 411
    .line 412
    move-result v3

    .line 413
    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 414
    .line 415
    .line 416
    move-result v3

    .line 417
    invoke-virtual {v2, p2, v5, v6}, Lcom/google/android/gms/internal/measurement/f3;->b(Ljava/lang/Object;J)F

    .line 418
    .line 419
    .line 420
    move-result v2

    .line 421
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 422
    .line 423
    .line 424
    move-result v2

    .line 425
    if-ne v3, v2, :cond_1

    .line 426
    .line 427
    goto :goto_2

    .line 428
    :pswitch_14
    invoke-virtual {p0, v1, p1, p2}, Lcom/google/android/gms/internal/measurement/R2;->j(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 429
    .line 430
    .line 431
    move-result v2

    .line 432
    if-eqz v2, :cond_1

    .line 433
    .line 434
    sget-object v2, Lcom/google/android/gms/internal/measurement/g3;->c:Lcom/google/android/gms/internal/measurement/f3;

    .line 435
    .line 436
    invoke-virtual {v2, p1, v5, v6}, Lcom/google/android/gms/internal/measurement/f3;->a(Ljava/lang/Object;J)D

    .line 437
    .line 438
    .line 439
    move-result-wide v3

    .line 440
    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    .line 441
    .line 442
    .line 443
    move-result-wide v3

    .line 444
    invoke-virtual {v2, p2, v5, v6}, Lcom/google/android/gms/internal/measurement/f3;->a(Ljava/lang/Object;J)D

    .line 445
    .line 446
    .line 447
    move-result-wide v5

    .line 448
    invoke-static {v5, v6}, Ljava/lang/Double;->doubleToLongBits(D)J

    .line 449
    .line 450
    .line 451
    move-result-wide v5

    .line 452
    cmp-long v2, v3, v5

    .line 453
    .line 454
    if-nez v2, :cond_1

    .line 455
    .line 456
    :cond_0
    :goto_2
    add-int/lit8 v1, v1, 0x3

    .line 457
    .line 458
    goto/16 :goto_0

    .line 459
    .line 460
    :cond_1
    :goto_3
    return v0

    .line 461
    :cond_2
    check-cast p1, Lcom/google/android/gms/internal/measurement/s2;

    .line 462
    .line 463
    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/s2;->zzc:Lcom/google/android/gms/internal/measurement/b3;

    .line 464
    .line 465
    check-cast p2, Lcom/google/android/gms/internal/measurement/s2;

    .line 466
    .line 467
    iget-object p2, p2, Lcom/google/android/gms/internal/measurement/s2;->zzc:Lcom/google/android/gms/internal/measurement/b3;

    .line 468
    .line 469
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/measurement/b3;->equals(Ljava/lang/Object;)Z

    .line 470
    .line 471
    .line 472
    move-result p1

    .line 473
    if-nez p1, :cond_3

    .line 474
    .line 475
    return v0

    .line 476
    :cond_3
    const/4 p1, 0x1

    .line 477
    return p1

    .line 478
    nop

    .line 479
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final e(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 5

    .line 1
    invoke-virtual {p0, p1, p3}, Lcom/google/android/gms/internal/measurement/R2;->k(ILjava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/R2;->t(I)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const v1, 0xfffff

    .line 13
    .line 14
    .line 15
    and-int/2addr v0, v1

    .line 16
    int-to-long v0, v0

    .line 17
    sget-object v2, Lcom/google/android/gms/internal/measurement/R2;->k:Lsun/misc/Unsafe;

    .line 18
    .line 19
    invoke-virtual {v2, p3, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    if-eqz v3, :cond_4

    .line 24
    .line 25
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/R2;->w(I)Lcom/google/android/gms/internal/measurement/Y2;

    .line 26
    .line 27
    .line 28
    move-result-object p3

    .line 29
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/R2;->k(ILjava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    if-nez v4, :cond_2

    .line 34
    .line 35
    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/R2;->m(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    if-nez v4, :cond_1

    .line 40
    .line 41
    invoke-virtual {v2, p2, v0, v1, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    invoke-interface {p3}, Lcom/google/android/gms/internal/measurement/Y2;->zze()Lcom/google/android/gms/internal/measurement/s2;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    invoke-interface {p3, v4, v3}, Lcom/google/android/gms/internal/measurement/Y2;->zzg(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v2, p2, v0, v1, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/R2;->g(ILjava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :cond_2
    invoke-virtual {v2, p2, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/R2;->m(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v4

    .line 67
    if-nez v4, :cond_3

    .line 68
    .line 69
    invoke-interface {p3}, Lcom/google/android/gms/internal/measurement/Y2;->zze()Lcom/google/android/gms/internal/measurement/s2;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    invoke-interface {p3, v4, p1}, Lcom/google/android/gms/internal/measurement/Y2;->zzg(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v2, p2, v0, v1, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    move-object p1, v4

    .line 80
    :cond_3
    invoke-interface {p3, p1, v3}, Lcom/google/android/gms/internal/measurement/Y2;->zzg(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    return-void

    .line 84
    :cond_4
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 85
    .line 86
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/R2;->a:[I

    .line 87
    .line 88
    aget p1, v0, p1

    .line 89
    .line 90
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p3

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    .line 95
    .line 96
    const-string v1, "Source subfield "

    .line 97
    .line 98
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    const-string p1, " is present but null: "

    .line 105
    .line 106
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    throw p2
.end method

.method public final f(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/R2;->a:[I

    .line 2
    .line 3
    aget v1, v0, p1

    .line 4
    .line 5
    invoke-virtual {p0, v1, p3, p1}, Lcom/google/android/gms/internal/measurement/R2;->n(ILjava/lang/Object;I)Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-nez v2, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/R2;->t(I)I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    const v3, 0xfffff

    .line 17
    .line 18
    .line 19
    and-int/2addr v2, v3

    .line 20
    int-to-long v4, v2

    .line 21
    sget-object v2, Lcom/google/android/gms/internal/measurement/R2;->k:Lsun/misc/Unsafe;

    .line 22
    .line 23
    invoke-virtual {v2, p3, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v6

    .line 27
    if-eqz v6, :cond_4

    .line 28
    .line 29
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/R2;->w(I)Lcom/google/android/gms/internal/measurement/Y2;

    .line 30
    .line 31
    .line 32
    move-result-object p3

    .line 33
    invoke-virtual {p0, v1, p2, p1}, Lcom/google/android/gms/internal/measurement/R2;->n(ILjava/lang/Object;I)Z

    .line 34
    .line 35
    .line 36
    move-result v7

    .line 37
    if-nez v7, :cond_2

    .line 38
    .line 39
    invoke-static {v6}, Lcom/google/android/gms/internal/measurement/R2;->m(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v7

    .line 43
    if-nez v7, :cond_1

    .line 44
    .line 45
    invoke-virtual {v2, p2, v4, v5, v6}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    invoke-interface {p3}, Lcom/google/android/gms/internal/measurement/Y2;->zze()Lcom/google/android/gms/internal/measurement/s2;

    .line 50
    .line 51
    .line 52
    move-result-object v7

    .line 53
    invoke-interface {p3, v7, v6}, Lcom/google/android/gms/internal/measurement/Y2;->zzg(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v2, p2, v4, v5, v7}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    :goto_0
    add-int/lit8 p1, p1, 0x2

    .line 60
    .line 61
    aget p1, v0, p1

    .line 62
    .line 63
    and-int/2addr p1, v3

    .line 64
    int-to-long v2, p1

    .line 65
    invoke-static {p2, v2, v3, v1}, Lcom/google/android/gms/internal/measurement/g3;->n(Ljava/lang/Object;JI)V

    .line 66
    .line 67
    .line 68
    return-void

    .line 69
    :cond_2
    invoke-virtual {v2, p2, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/R2;->m(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    if-nez v0, :cond_3

    .line 78
    .line 79
    invoke-interface {p3}, Lcom/google/android/gms/internal/measurement/Y2;->zze()Lcom/google/android/gms/internal/measurement/s2;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-interface {p3, v0, p1}, Lcom/google/android/gms/internal/measurement/Y2;->zzg(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v2, p2, v4, v5, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    move-object p1, v0

    .line 90
    :cond_3
    invoke-interface {p3, p1, v6}, Lcom/google/android/gms/internal/measurement/Y2;->zzg(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 91
    .line 92
    .line 93
    return-void

    .line 94
    :cond_4
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 95
    .line 96
    aget p1, v0, p1

    .line 97
    .line 98
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p3

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    .line 103
    .line 104
    const-string v1, "Source subfield "

    .line 105
    .line 106
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    const-string p1, " is present but null: "

    .line 113
    .line 114
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    throw p2
.end method

.method public final g(ILjava/lang/Object;)V
    .locals 5

    .line 1
    add-int/lit8 p1, p1, 0x2

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/R2;->a:[I

    .line 4
    .line 5
    aget p1, v0, p1

    .line 6
    .line 7
    const v0, 0xfffff

    .line 8
    .line 9
    .line 10
    and-int/2addr v0, p1

    .line 11
    int-to-long v0, v0

    .line 12
    const-wide/32 v2, 0xfffff

    .line 13
    .line 14
    .line 15
    cmp-long v4, v0, v2

    .line 16
    .line 17
    if-nez v4, :cond_0

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    ushr-int/lit8 p1, p1, 0x14

    .line 21
    .line 22
    invoke-static {p2, v0, v1}, Lcom/google/android/gms/internal/measurement/g3;->f(Ljava/lang/Object;J)I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    const/4 v3, 0x1

    .line 27
    shl-int p1, v3, p1

    .line 28
    .line 29
    or-int/2addr p1, v2

    .line 30
    invoke-static {p2, v0, v1, p1}, Lcom/google/android/gms/internal/measurement/g3;->n(Ljava/lang/Object;JI)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public final h(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/R2;->t(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const v1, 0xfffff

    .line 6
    .line 7
    .line 8
    and-int/2addr v0, v1

    .line 9
    int-to-long v0, v0

    .line 10
    sget-object v2, Lcom/google/android/gms/internal/measurement/R2;->k:Lsun/misc/Unsafe;

    .line 11
    .line 12
    invoke-virtual {v2, p2, v0, v1, p3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/R2;->g(ILjava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final i(Ljava/lang/Object;IILjava/lang/Object;)V
    .locals 4

    .line 1
    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/measurement/R2;->t(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const v1, 0xfffff

    .line 6
    .line 7
    .line 8
    and-int/2addr v0, v1

    .line 9
    int-to-long v2, v0

    .line 10
    sget-object v0, Lcom/google/android/gms/internal/measurement/R2;->k:Lsun/misc/Unsafe;

    .line 11
    .line 12
    invoke-virtual {v0, p1, v2, v3, p4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    add-int/lit8 p3, p3, 0x2

    .line 16
    .line 17
    iget-object p4, p0, Lcom/google/android/gms/internal/measurement/R2;->a:[I

    .line 18
    .line 19
    aget p3, p4, p3

    .line 20
    .line 21
    and-int/2addr p3, v1

    .line 22
    int-to-long p3, p3

    .line 23
    invoke-static {p1, p3, p4, p2}, Lcom/google/android/gms/internal/measurement/g3;->n(Ljava/lang/Object;JI)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public final j(ILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/R2;->k(ILjava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    invoke-virtual {p0, p1, p3}, Lcom/google/android/gms/internal/measurement/R2;->k(ILjava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-ne p2, p1, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    return p1

    .line 13
    :cond_0
    const/4 p1, 0x0

    .line 14
    return p1
.end method

.method public final k(ILjava/lang/Object;)Z
    .locals 9

    .line 1
    add-int/lit8 v0, p1, 0x2

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/R2;->a:[I

    .line 4
    .line 5
    aget v0, v1, v0

    .line 6
    .line 7
    const v1, 0xfffff

    .line 8
    .line 9
    .line 10
    and-int v2, v0, v1

    .line 11
    .line 12
    int-to-long v2, v2

    .line 13
    const-wide/32 v4, 0xfffff

    .line 14
    .line 15
    .line 16
    const/4 v6, 0x0

    .line 17
    const/4 v7, 0x1

    .line 18
    cmp-long v8, v2, v4

    .line 19
    .line 20
    if-nez v8, :cond_14

    .line 21
    .line 22
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/R2;->t(I)I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    and-int v0, p1, v1

    .line 27
    .line 28
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/R2;->s(I)I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    int-to-long v0, v0

    .line 33
    const-wide/16 v2, 0x0

    .line 34
    .line 35
    packed-switch p1, :pswitch_data_0

    .line 36
    .line 37
    .line 38
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 39
    .line 40
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 41
    .line 42
    .line 43
    throw p1

    .line 44
    :pswitch_0
    invoke-static {p2, v0, v1}, Lcom/google/android/gms/internal/measurement/g3;->i(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    if-eqz p1, :cond_0

    .line 49
    .line 50
    return v7

    .line 51
    :cond_0
    return v6

    .line 52
    :pswitch_1
    invoke-static {p2, v0, v1}, Lcom/google/android/gms/internal/measurement/g3;->g(Ljava/lang/Object;J)J

    .line 53
    .line 54
    .line 55
    move-result-wide p1

    .line 56
    cmp-long v0, p1, v2

    .line 57
    .line 58
    if-eqz v0, :cond_1

    .line 59
    .line 60
    return v7

    .line 61
    :cond_1
    return v6

    .line 62
    :pswitch_2
    invoke-static {p2, v0, v1}, Lcom/google/android/gms/internal/measurement/g3;->f(Ljava/lang/Object;J)I

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    if-eqz p1, :cond_2

    .line 67
    .line 68
    return v7

    .line 69
    :cond_2
    return v6

    .line 70
    :pswitch_3
    invoke-static {p2, v0, v1}, Lcom/google/android/gms/internal/measurement/g3;->g(Ljava/lang/Object;J)J

    .line 71
    .line 72
    .line 73
    move-result-wide p1

    .line 74
    cmp-long v0, p1, v2

    .line 75
    .line 76
    if-eqz v0, :cond_3

    .line 77
    .line 78
    return v7

    .line 79
    :cond_3
    return v6

    .line 80
    :pswitch_4
    invoke-static {p2, v0, v1}, Lcom/google/android/gms/internal/measurement/g3;->f(Ljava/lang/Object;J)I

    .line 81
    .line 82
    .line 83
    move-result p1

    .line 84
    if-eqz p1, :cond_4

    .line 85
    .line 86
    return v7

    .line 87
    :cond_4
    return v6

    .line 88
    :pswitch_5
    invoke-static {p2, v0, v1}, Lcom/google/android/gms/internal/measurement/g3;->f(Ljava/lang/Object;J)I

    .line 89
    .line 90
    .line 91
    move-result p1

    .line 92
    if-eqz p1, :cond_5

    .line 93
    .line 94
    return v7

    .line 95
    :cond_5
    return v6

    .line 96
    :pswitch_6
    invoke-static {p2, v0, v1}, Lcom/google/android/gms/internal/measurement/g3;->f(Ljava/lang/Object;J)I

    .line 97
    .line 98
    .line 99
    move-result p1

    .line 100
    if-eqz p1, :cond_6

    .line 101
    .line 102
    return v7

    .line 103
    :cond_6
    return v6

    .line 104
    :pswitch_7
    sget-object p1, Lcom/google/android/gms/internal/measurement/i2;->H:Lcom/google/android/gms/internal/measurement/j2;

    .line 105
    .line 106
    invoke-static {p2, v0, v1}, Lcom/google/android/gms/internal/measurement/g3;->i(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object p2

    .line 110
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/measurement/j2;->equals(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    move-result p1

    .line 114
    if-nez p1, :cond_7

    .line 115
    .line 116
    return v7

    .line 117
    :cond_7
    return v6

    .line 118
    :pswitch_8
    invoke-static {p2, v0, v1}, Lcom/google/android/gms/internal/measurement/g3;->i(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    if-eqz p1, :cond_8

    .line 123
    .line 124
    return v7

    .line 125
    :cond_8
    return v6

    .line 126
    :pswitch_9
    invoke-static {p2, v0, v1}, Lcom/google/android/gms/internal/measurement/g3;->i(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    instance-of p2, p1, Ljava/lang/String;

    .line 131
    .line 132
    if-eqz p2, :cond_a

    .line 133
    .line 134
    check-cast p1, Ljava/lang/String;

    .line 135
    .line 136
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 137
    .line 138
    .line 139
    move-result p1

    .line 140
    if-nez p1, :cond_9

    .line 141
    .line 142
    return v7

    .line 143
    :cond_9
    return v6

    .line 144
    :cond_a
    instance-of p2, p1, Lcom/google/android/gms/internal/measurement/i2;

    .line 145
    .line 146
    if-eqz p2, :cond_c

    .line 147
    .line 148
    sget-object p2, Lcom/google/android/gms/internal/measurement/i2;->H:Lcom/google/android/gms/internal/measurement/j2;

    .line 149
    .line 150
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/measurement/j2;->equals(Ljava/lang/Object;)Z

    .line 151
    .line 152
    .line 153
    move-result p1

    .line 154
    if-nez p1, :cond_b

    .line 155
    .line 156
    return v7

    .line 157
    :cond_b
    return v6

    .line 158
    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 159
    .line 160
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 161
    .line 162
    .line 163
    throw p1

    .line 164
    :pswitch_a
    sget-object p1, Lcom/google/android/gms/internal/measurement/g3;->c:Lcom/google/android/gms/internal/measurement/f3;

    .line 165
    .line 166
    invoke-virtual {p1, p2, v0, v1}, Lcom/google/android/gms/internal/measurement/f3;->g(Ljava/lang/Object;J)Z

    .line 167
    .line 168
    .line 169
    move-result p1

    .line 170
    return p1

    .line 171
    :pswitch_b
    invoke-static {p2, v0, v1}, Lcom/google/android/gms/internal/measurement/g3;->f(Ljava/lang/Object;J)I

    .line 172
    .line 173
    .line 174
    move-result p1

    .line 175
    if-eqz p1, :cond_d

    .line 176
    .line 177
    return v7

    .line 178
    :cond_d
    return v6

    .line 179
    :pswitch_c
    invoke-static {p2, v0, v1}, Lcom/google/android/gms/internal/measurement/g3;->g(Ljava/lang/Object;J)J

    .line 180
    .line 181
    .line 182
    move-result-wide p1

    .line 183
    cmp-long v0, p1, v2

    .line 184
    .line 185
    if-eqz v0, :cond_e

    .line 186
    .line 187
    return v7

    .line 188
    :cond_e
    return v6

    .line 189
    :pswitch_d
    invoke-static {p2, v0, v1}, Lcom/google/android/gms/internal/measurement/g3;->f(Ljava/lang/Object;J)I

    .line 190
    .line 191
    .line 192
    move-result p1

    .line 193
    if-eqz p1, :cond_f

    .line 194
    .line 195
    return v7

    .line 196
    :cond_f
    return v6

    .line 197
    :pswitch_e
    invoke-static {p2, v0, v1}, Lcom/google/android/gms/internal/measurement/g3;->g(Ljava/lang/Object;J)J

    .line 198
    .line 199
    .line 200
    move-result-wide p1

    .line 201
    cmp-long v0, p1, v2

    .line 202
    .line 203
    if-eqz v0, :cond_10

    .line 204
    .line 205
    return v7

    .line 206
    :cond_10
    return v6

    .line 207
    :pswitch_f
    invoke-static {p2, v0, v1}, Lcom/google/android/gms/internal/measurement/g3;->g(Ljava/lang/Object;J)J

    .line 208
    .line 209
    .line 210
    move-result-wide p1

    .line 211
    cmp-long v0, p1, v2

    .line 212
    .line 213
    if-eqz v0, :cond_11

    .line 214
    .line 215
    return v7

    .line 216
    :cond_11
    return v6

    .line 217
    :pswitch_10
    sget-object p1, Lcom/google/android/gms/internal/measurement/g3;->c:Lcom/google/android/gms/internal/measurement/f3;

    .line 218
    .line 219
    invoke-virtual {p1, p2, v0, v1}, Lcom/google/android/gms/internal/measurement/f3;->b(Ljava/lang/Object;J)F

    .line 220
    .line 221
    .line 222
    move-result p1

    .line 223
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 224
    .line 225
    .line 226
    move-result p1

    .line 227
    if-eqz p1, :cond_12

    .line 228
    .line 229
    return v7

    .line 230
    :cond_12
    return v6

    .line 231
    :pswitch_11
    sget-object p1, Lcom/google/android/gms/internal/measurement/g3;->c:Lcom/google/android/gms/internal/measurement/f3;

    .line 232
    .line 233
    invoke-virtual {p1, p2, v0, v1}, Lcom/google/android/gms/internal/measurement/f3;->a(Ljava/lang/Object;J)D

    .line 234
    .line 235
    .line 236
    move-result-wide p1

    .line 237
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    .line 238
    .line 239
    .line 240
    move-result-wide p1

    .line 241
    cmp-long v0, p1, v2

    .line 242
    .line 243
    if-eqz v0, :cond_13

    .line 244
    .line 245
    return v7

    .line 246
    :cond_13
    return v6

    .line 247
    :cond_14
    ushr-int/lit8 p1, v0, 0x14

    .line 248
    .line 249
    shl-int p1, v7, p1

    .line 250
    .line 251
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/measurement/g3;->f(Ljava/lang/Object;J)I

    .line 252
    .line 253
    .line 254
    move-result p2

    .line 255
    and-int/2addr p1, p2

    .line 256
    if-eqz p1, :cond_15

    .line 257
    .line 258
    return v7

    .line 259
    :cond_15
    return v6

    .line 260
    nop

    .line 261
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final l(Ljava/lang/Object;IIII)Z
    .locals 1

    .line 1
    const v0, 0xfffff

    .line 2
    .line 3
    .line 4
    if-ne p3, v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0, p2, p1}, Lcom/google/android/gms/internal/measurement/R2;->k(ILjava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    return p1

    .line 11
    :cond_0
    and-int p1, p4, p5

    .line 12
    .line 13
    if-eqz p1, :cond_1

    .line 14
    .line 15
    const/4 p1, 0x1

    .line 16
    return p1

    .line 17
    :cond_1
    const/4 p1, 0x0

    .line 18
    return p1
.end method

.method public final n(ILjava/lang/Object;I)Z
    .locals 2

    .line 1
    add-int/lit8 p3, p3, 0x2

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/R2;->a:[I

    .line 4
    .line 5
    aget p3, v0, p3

    .line 6
    .line 7
    const v0, 0xfffff

    .line 8
    .line 9
    .line 10
    and-int/2addr p3, v0

    .line 11
    int-to-long v0, p3

    .line 12
    invoke-static {p2, v0, v1}, Lcom/google/android/gms/internal/measurement/g3;->f(Ljava/lang/Object;J)I

    .line 13
    .line 14
    .line 15
    move-result p2

    .line 16
    if-ne p2, p1, :cond_0

    .line 17
    .line 18
    const/4 p1, 0x1

    .line 19
    return p1

    .line 20
    :cond_0
    const/4 p1, 0x0

    .line 21
    return p1
.end method

.method public final o(Ljava/lang/Object;[BIIILcom/google/android/gms/internal/ads/SG;)I
    .locals 39

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move-object/from16 v15, p2

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v3, p6

    const/4 v1, 0x3

    const/4 v13, 0x1

    .line 1
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/R2;->m(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_86

    move/from16 v8, p3

    const/4 v9, -0x1

    const/4 v10, 0x0

    const v11, 0xfffff

    const/16 v16, 0x0

    const/16 v17, 0x0

    .line 2
    :goto_0
    iget-object v14, v0, Lcom/google/android/gms/internal/measurement/R2;->b:[Ljava/lang/Object;

    iget-object v12, v0, Lcom/google/android/gms/internal/measurement/R2;->a:[I

    const/16 v20, 0x0

    sget-object v2, Lcom/google/android/gms/internal/measurement/R2;->k:Lsun/misc/Unsafe;

    if-ge v8, v5, :cond_7e

    add-int/lit8 v4, v8, 0x1

    .line 3
    aget-byte v8, v15, v8

    if-gez v8, :cond_0

    .line 4
    invoke-static {v8, v15, v4, v3}, Ly4/k;->t0(I[BILcom/google/android/gms/internal/ads/SG;)I

    move-result v4

    iget v8, v3, Lcom/google/android/gms/internal/ads/SG;->a:I

    :cond_0
    ushr-int/lit8 v13, v8, 0x3

    iget v1, v0, Lcom/google/android/gms/internal/measurement/R2;->d:I

    iget v5, v0, Lcom/google/android/gms/internal/measurement/R2;->c:I

    if-le v13, v9, :cond_2

    const/4 v9, 0x3

    div-int/2addr v10, v9

    if-lt v13, v5, :cond_1

    if-gt v13, v1, :cond_1

    .line 5
    invoke-virtual {v0, v13, v10}, Lcom/google/android/gms/internal/measurement/R2;->r(II)I

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, -0x1

    :goto_1
    const/4 v5, 0x0

    goto :goto_2

    :cond_2
    if-lt v13, v5, :cond_3

    if-gt v13, v1, :cond_3

    const/4 v5, 0x0

    .line 6
    invoke-virtual {v0, v13, v5}, Lcom/google/android/gms/internal/measurement/R2;->r(II)I

    move-result v1

    goto :goto_2

    :cond_3
    const/4 v5, 0x0

    const/4 v1, -0x1

    .line 7
    :goto_2
    sget-object v10, Lcom/google/android/gms/internal/measurement/b3;->f:Lcom/google/android/gms/internal/measurement/b3;

    const/4 v9, -0x1

    if-ne v1, v9, :cond_4

    move v0, v6

    move/from16 v31, v11

    move-object/from16 v18, v12

    move-object/from16 v19, v14

    const/4 v14, 0x0

    const/16 v24, -0x1

    const/16 v29, 0x0

    move-object v11, v2

    move-object v2, v10

    move-object v10, v3

    move v3, v4

    move v4, v13

    move-object v13, v15

    goto/16 :goto_53

    :cond_4
    and-int/lit8 v5, v8, 0x7

    const/16 v17, 0x1

    add-int/lit8 v21, v1, 0x1

    .line 8
    aget v9, v12, v21

    invoke-static {v9}, Lcom/google/android/gms/internal/measurement/R2;->s(I)I

    move-result v6

    move/from16 p3, v8

    const v19, 0xfffff

    and-int v8, v9, v19

    move/from16 v21, v9

    int-to-long v8, v8

    move-object/from16 v25, v14

    const/high16 v26, 0x20000000

    const-wide/16 v27, 0x0

    const-string v14, "Protocol message had invalid UTF-8."

    move-object/from16 v31, v14

    const-string v14, ""

    move-object/from16 v32, v14

    const-string v14, "CodedInputStream encountered an embedded string or message which claimed to have negative size."

    move-object/from16 v33, v14

    const/16 v14, 0x11

    if-gt v6, v14, :cond_23

    const/4 v14, 0x2

    add-int/lit8 v18, v1, 0x2

    .line 9
    aget v18, v12, v18

    ushr-int/lit8 v29, v18, 0x14

    const/16 v23, 0x1

    shl-int v29, v23, v29

    move-object/from16 v19, v12

    const v14, 0xfffff

    and-int v12, v18, v14

    if-eq v12, v11, :cond_7

    if-eq v11, v14, :cond_5

    int-to-long v14, v11

    move/from16 v11, v16

    .line 10
    invoke-virtual {v2, v7, v14, v15, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    const v14, 0xfffff

    :cond_5
    if-ne v12, v14, :cond_6

    const/4 v11, 0x0

    goto :goto_3

    :cond_6
    int-to-long v14, v12

    .line 11
    invoke-virtual {v2, v7, v14, v15}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v11

    :goto_3
    move/from16 v16, v11

    move v15, v12

    goto :goto_4

    :cond_7
    move/from16 v15, v16

    move v15, v11

    :goto_4
    packed-switch v6, :pswitch_data_0

    const/4 v6, 0x3

    if-ne v5, v6, :cond_8

    or-int v16, v16, v29

    .line 12
    invoke-virtual {v0, v1, v7}, Lcom/google/android/gms/internal/measurement/R2;->x(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    shl-int/lit8 v5, v13, 0x3

    or-int/lit8 v5, v5, 0x4

    .line 13
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/R2;->w(I)Lcom/google/android/gms/internal/measurement/Y2;

    move-result-object v9

    move/from16 v14, p3

    move-object v8, v2

    const/16 v17, -0x1

    move-object/from16 v10, p2

    move v11, v4

    const v4, 0xfffff

    move/from16 v12, p4

    move/from16 v18, v13

    move/from16 p3, v15

    const/4 v15, 0x1

    move v13, v5

    move v5, v14

    const/4 v15, 0x2

    move-object/from16 v14, p6

    .line 14
    invoke-static/range {v8 .. v14}, Ly4/k;->w0(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/Y2;[BIIILcom/google/android/gms/internal/ads/SG;)I

    move-result v8

    .line 15
    invoke-virtual {v0, v1, v7, v2}, Lcom/google/android/gms/internal/measurement/R2;->h(ILjava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v15, p2

    move/from16 v11, p3

    move/from16 v6, p5

    move v10, v1

    move/from16 v17, v5

    move/from16 v9, v18

    const/4 v1, 0x3

    const/4 v13, 0x1

    move/from16 v5, p4

    goto/16 :goto_0

    :cond_8
    move/from16 v5, p3

    move/from16 v18, v13

    move/from16 p3, v15

    const v14, 0xfffff

    const/16 v17, -0x1

    move-object/from16 v12, p2

    move/from16 v31, v1

    move-object v15, v3

    move v13, v5

    const/4 v11, 0x0

    const/4 v14, 0x3

    const/16 v24, -0x1

    :cond_9
    :goto_5
    move/from16 v1, p4

    goto/16 :goto_19

    :pswitch_0
    move/from16 v18, v13

    const/4 v6, 0x3

    const v14, 0xfffff

    const/16 v17, -0x1

    move/from16 v13, p3

    move/from16 p3, v15

    const/4 v15, 0x2

    if-nez v5, :cond_a

    or-int v16, v16, v29

    move-object/from16 v12, p2

    .line 16
    invoke-static {v12, v4, v3}, Ly4/k;->v0([BILcom/google/android/gms/internal/ads/SG;)I

    move-result v10

    iget-wide v4, v3, Lcom/google/android/gms/internal/ads/SG;->b:J

    .line 17
    invoke-static {v4, v5}, LE3/f;->H(J)J

    move-result-wide v19

    move v11, v1

    const/4 v5, 0x3

    move-object v1, v2

    const/16 v24, -0x1

    move-object/from16 v2, p1

    move-object v15, v3

    const/4 v6, 0x0

    move-wide v3, v8

    move/from16 v8, p4

    move/from16 v9, p5

    const/4 v14, 0x3

    move-wide/from16 v5, v19

    .line 18
    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    move v5, v8

    move v6, v9

    move v8, v10

    :goto_6
    move v10, v11

    move/from16 v17, v13

    move-object v3, v15

    move/from16 v9, v18

    const/4 v1, 0x3

    const/4 v13, 0x1

    move/from16 v11, p3

    :goto_7
    move-object v15, v12

    goto/16 :goto_0

    :cond_a
    move-object/from16 v12, p2

    move/from16 v9, p5

    move-object v15, v3

    const/16 v24, -0x1

    move/from16 v31, v1

    const/4 v11, 0x0

    const/4 v14, 0x3

    goto :goto_5

    :pswitch_1
    move-object/from16 v12, p2

    move/from16 v6, p4

    move v11, v1

    move/from16 v18, v13

    const/4 v14, 0x3

    const/16 v24, -0x1

    move/from16 v13, p3

    move/from16 p3, v15

    move-object v15, v3

    move/from16 v3, p5

    if-nez v5, :cond_b

    or-int v16, v16, v29

    .line 19
    invoke-static {v12, v4, v15}, Ly4/k;->s0([BILcom/google/android/gms/internal/ads/SG;)I

    move-result v1

    iget v4, v15, Lcom/google/android/gms/internal/ads/SG;->a:I

    .line 20
    invoke-static {v4}, LE3/f;->G(I)I

    move-result v4

    .line 21
    invoke-virtual {v2, v7, v8, v9, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :goto_8
    move v8, v1

    :goto_9
    move v5, v6

    move v10, v11

    move/from16 v17, v13

    move/from16 v9, v18

    const/4 v1, 0x3

    const/4 v13, 0x1

    move/from16 v11, p3

    move v6, v3

    move-object v3, v15

    goto :goto_7

    :cond_b
    :goto_a
    move v1, v6

    move/from16 v31, v11

    const/4 v11, 0x0

    goto/16 :goto_19

    :pswitch_2
    move-object/from16 v12, p2

    move/from16 v6, p4

    move v11, v1

    move/from16 v18, v13

    const/4 v14, 0x3

    const/16 v24, -0x1

    move/from16 v13, p3

    move/from16 p3, v15

    move-object v15, v3

    move/from16 v3, p5

    if-nez v5, :cond_b

    .line 22
    invoke-static {v12, v4, v15}, Ly4/k;->s0([BILcom/google/android/gms/internal/ads/SG;)I

    move-result v1

    iget v4, v15, Lcom/google/android/gms/internal/ads/SG;->a:I

    .line 23
    invoke-virtual {v0, v11}, Lcom/google/android/gms/internal/measurement/R2;->v(I)Lcom/google/android/gms/internal/measurement/v2;

    move-result-object v5

    const/high16 v19, -0x80000000

    and-int v19, v21, v19

    if-eqz v19, :cond_e

    if-eqz v5, :cond_e

    invoke-interface {v5, v4}, Lcom/google/android/gms/internal/measurement/v2;->zza(I)Z

    move-result v5

    if-eqz v5, :cond_c

    goto :goto_b

    .line 24
    :cond_c
    move-object v2, v7

    check-cast v2, Lcom/google/android/gms/internal/measurement/s2;

    iget-object v5, v2, Lcom/google/android/gms/internal/measurement/s2;->zzc:Lcom/google/android/gms/internal/measurement/b3;

    if-ne v5, v10, :cond_d

    invoke-static {}, Lcom/google/android/gms/internal/measurement/b3;->b()Lcom/google/android/gms/internal/measurement/b3;

    move-result-object v5

    .line 25
    iput-object v5, v2, Lcom/google/android/gms/internal/measurement/s2;->zzc:Lcom/google/android/gms/internal/measurement/b3;

    :cond_d
    int-to-long v8, v4

    .line 26
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v5, v13, v2}, Lcom/google/android/gms/internal/measurement/b3;->c(ILjava/lang/Object;)V

    goto :goto_8

    :cond_e
    :goto_b
    or-int v16, v16, v29

    .line 27
    invoke-virtual {v2, v7, v8, v9, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_8

    :pswitch_3
    move-object/from16 v12, p2

    move/from16 v6, p4

    move v11, v1

    move/from16 v18, v13

    const/4 v1, 0x2

    const/4 v14, 0x3

    const/16 v24, -0x1

    move/from16 v13, p3

    move/from16 p3, v15

    move-object v15, v3

    move/from16 v3, p5

    if-ne v5, v1, :cond_b

    or-int v16, v16, v29

    .line 28
    invoke-static {v12, v4, v15}, Ly4/k;->m0([BILcom/google/android/gms/internal/ads/SG;)I

    move-result v4

    iget-object v5, v15, Lcom/google/android/gms/internal/ads/SG;->c:Ljava/lang/Object;

    .line 29
    invoke-virtual {v2, v7, v8, v9, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move v8, v4

    goto :goto_9

    :pswitch_4
    move-object/from16 v12, p2

    move/from16 v6, p4

    move v11, v1

    move/from16 v18, v13

    const/4 v1, 0x2

    const/4 v14, 0x3

    const/16 v24, -0x1

    move/from16 v13, p3

    move/from16 p3, v15

    move-object v15, v3

    move/from16 v3, p5

    if-ne v5, v1, :cond_f

    or-int v16, v16, v29

    .line 30
    invoke-virtual {v0, v11, v7}, Lcom/google/android/gms/internal/measurement/R2;->x(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 31
    invoke-virtual {v0, v11}, Lcom/google/android/gms/internal/measurement/R2;->w(I)Lcom/google/android/gms/internal/measurement/Y2;

    move-result-object v2

    move-object v1, v8

    move v9, v3

    move-object/from16 v3, p2

    move/from16 v5, p4

    move v10, v6

    move-object/from16 v6, p6

    .line 32
    invoke-static/range {v1 .. v6}, Ly4/k;->x0(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/Y2;[BIILcom/google/android/gms/internal/ads/SG;)I

    move-result v1

    .line 33
    invoke-virtual {v0, v11, v7, v8}, Lcom/google/android/gms/internal/measurement/R2;->h(ILjava/lang/Object;Ljava/lang/Object;)V

    move v8, v1

    move v6, v9

    move v5, v10

    goto/16 :goto_6

    :cond_f
    move v9, v3

    goto/16 :goto_a

    :pswitch_5
    move-object/from16 v12, p2

    move/from16 v6, p4

    move v11, v1

    move/from16 v18, v13

    const/4 v1, 0x2

    const/4 v14, 0x3

    const/16 v24, -0x1

    move/from16 v13, p3

    move/from16 p3, v15

    move-object v15, v3

    move/from16 v3, p5

    if-ne v5, v1, :cond_1f

    and-int v1, v21, v26

    if-eqz v1, :cond_1c

    .line 34
    invoke-static {v12, v4, v15}, Ly4/k;->s0([BILcom/google/android/gms/internal/ads/SG;)I

    move-result v1

    iget v4, v15, Lcom/google/android/gms/internal/ads/SG;->a:I

    if-ltz v4, :cond_1b

    or-int v5, v16, v29

    if-nez v4, :cond_10

    move-object/from16 v10, v32

    .line 35
    iput-object v10, v15, Lcom/google/android/gms/internal/ads/SG;->c:Ljava/lang/Object;

    move/from16 v16, v5

    move/from16 v31, v11

    const/4 v11, 0x0

    goto/16 :goto_11

    .line 36
    :cond_10
    sget v10, Lcom/google/android/gms/internal/measurement/i3;->a:I

    .line 37
    array-length v10, v12

    sub-int v16, v10, v1

    or-int v19, v1, v4

    sub-int v16, v16, v4

    or-int v16, v19, v16

    if-ltz v16, :cond_1a

    add-int v10, v1, v4

    .line 38
    new-array v4, v4, [C

    const/16 v16, 0x0

    :goto_c
    if-ge v1, v10, :cond_11

    .line 39
    aget-byte v14, v12, v1

    invoke-static {v14}, Lcom/google/android/gms/internal/ads/Cw;->s1(B)Z

    move-result v19

    if-eqz v19, :cond_11

    const/16 v19, 0x1

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v20, v16, 0x1

    int-to-char v14, v14

    .line 40
    aput-char v14, v4, v16

    move/from16 v16, v20

    const/4 v14, 0x3

    goto :goto_c

    :cond_11
    const/16 v19, 0x1

    move/from16 v14, v16

    :goto_d
    if-ge v1, v10, :cond_19

    add-int/lit8 v3, v1, 0x1

    move/from16 v16, v5

    .line 41
    aget-byte v5, v12, v1

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/Cw;->s1(B)Z

    move-result v20

    if-eqz v20, :cond_13

    add-int/lit8 v1, v14, 0x1

    int-to-char v5, v5

    .line 42
    aput-char v5, v4, v14

    move v14, v1

    move v1, v3

    :goto_e
    if-ge v1, v10, :cond_12

    .line 43
    aget-byte v3, v12, v1

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/Cw;->s1(B)Z

    move-result v5

    if-eqz v5, :cond_12

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v5, v14, 0x1

    int-to-char v3, v3

    .line 44
    aput-char v3, v4, v14

    move v14, v5

    goto :goto_e

    :cond_12
    move/from16 v3, p5

    move/from16 v5, v16

    goto :goto_d

    :cond_13
    const/16 v6, -0x20

    if-ge v5, v6, :cond_15

    if-ge v3, v10, :cond_14

    add-int/lit8 v6, v14, 0x1

    const/16 v19, 0x2

    add-int/lit8 v1, v1, 0x2

    .line 45
    aget-byte v3, v12, v3

    invoke-static {v5, v3, v4, v14}, Lcom/google/android/gms/internal/ads/Cw;->j1(BB[CI)V

    move/from16 v3, p5

    move v14, v6

    move/from16 v5, v16

    const/16 v19, 0x1

    :goto_f
    move/from16 v6, p4

    goto :goto_d

    .line 46
    :cond_14
    new-instance v1, Lcom/google/android/gms/internal/measurement/B2;

    move-object/from16 v6, v31

    .line 47
    invoke-direct {v1, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 48
    throw v1

    :cond_15
    move-object/from16 v6, v31

    move/from16 v31, v11

    const/16 v11, -0x10

    if-ge v5, v11, :cond_17

    add-int/lit8 v11, v10, -0x1

    if-ge v3, v11, :cond_16

    const/4 v11, 0x1

    add-int/lit8 v19, v14, 0x1

    const/4 v11, 0x2

    add-int/lit8 v20, v1, 0x2

    .line 49
    aget-byte v3, v12, v3

    const/4 v11, 0x3

    add-int/2addr v1, v11

    aget-byte v11, v12, v20

    invoke-static {v5, v3, v11, v4, v14}, Lcom/google/android/gms/internal/ads/Cw;->S0(BBB[CI)V

    move/from16 v3, p5

    move/from16 v5, v16

    move/from16 v14, v19

    :goto_10
    move/from16 v11, v31

    const/16 v19, 0x1

    move-object/from16 v31, v6

    goto :goto_f

    .line 50
    :cond_16
    new-instance v1, Lcom/google/android/gms/internal/measurement/B2;

    .line 51
    invoke-direct {v1, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 52
    throw v1

    :cond_17
    add-int/lit8 v11, v10, -0x2

    if-ge v3, v11, :cond_18

    const/4 v11, 0x2

    add-int/lit8 v19, v1, 0x2

    .line 53
    aget-byte v26, v12, v3

    const/4 v3, 0x3

    add-int/lit8 v11, v1, 0x3

    aget-byte v27, v12, v19

    add-int/lit8 v1, v1, 0x4

    aget-byte v28, v12, v11

    move/from16 v25, v5

    move-object/from16 v29, v4

    move/from16 v30, v14

    invoke-static/range {v25 .. v30}, Lcom/google/android/gms/internal/ads/Cw;->p0(BBBB[CI)V

    const/4 v3, 0x2

    add-int/2addr v14, v3

    move/from16 v3, p5

    move/from16 v5, v16

    goto :goto_10

    .line 54
    :cond_18
    new-instance v1, Lcom/google/android/gms/internal/measurement/B2;

    .line 55
    invoke-direct {v1, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 56
    throw v1

    :cond_19
    move/from16 v16, v5

    move/from16 v31, v11

    .line 57
    new-instance v1, Ljava/lang/String;

    const/4 v11, 0x0

    invoke-direct {v1, v4, v11, v14}, Ljava/lang/String;-><init>([CII)V

    iput-object v1, v15, Lcom/google/android/gms/internal/ads/SG;->c:Ljava/lang/Object;

    move v1, v10

    :goto_11
    const/4 v14, 0x3

    goto :goto_13

    :cond_1a
    const/4 v11, 0x0

    .line 58
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 59
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v14, 0x3

    new-array v5, v14, [Ljava/lang/Object;

    aput-object v3, v5, v11

    const/4 v3, 0x1

    aput-object v1, v5, v3

    const/4 v1, 0x2

    aput-object v4, v5, v1

    const-string v1, "buffer length=%d, index=%d, size=%d"

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 60
    :cond_1b
    new-instance v1, Lcom/google/android/gms/internal/measurement/B2;

    move-object/from16 v3, v33

    .line 61
    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 62
    throw v1

    :cond_1c
    move/from16 v31, v11

    move-object/from16 v10, v32

    move-object/from16 v3, v33

    const/4 v11, 0x0

    .line 63
    invoke-static {v12, v4, v15}, Ly4/k;->s0([BILcom/google/android/gms/internal/ads/SG;)I

    move-result v1

    iget v4, v15, Lcom/google/android/gms/internal/ads/SG;->a:I

    if-ltz v4, :cond_1e

    or-int v3, v16, v29

    if-nez v4, :cond_1d

    .line 64
    iput-object v10, v15, Lcom/google/android/gms/internal/ads/SG;->c:Ljava/lang/Object;

    :goto_12
    move/from16 v16, v3

    goto :goto_13

    :cond_1d
    new-instance v5, Ljava/lang/String;

    .line 65
    sget-object v6, Lcom/google/android/gms/internal/measurement/z2;->a:Ljava/nio/charset/Charset;

    invoke-direct {v5, v12, v1, v4, v6}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iput-object v5, v15, Lcom/google/android/gms/internal/ads/SG;->c:Ljava/lang/Object;

    add-int/2addr v1, v4

    goto :goto_12

    .line 66
    :goto_13
    iget-object v3, v15, Lcom/google/android/gms/internal/ads/SG;->c:Ljava/lang/Object;

    .line 67
    invoke-virtual {v2, v7, v8, v9, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_14
    move/from16 v11, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move v8, v1

    :goto_15
    move/from16 v17, v13

    move-object v3, v15

    move/from16 v9, v18

    move/from16 v10, v31

    const/4 v1, 0x3

    const/4 v13, 0x1

    goto/16 :goto_7

    .line 68
    :cond_1e
    new-instance v1, Lcom/google/android/gms/internal/measurement/B2;

    .line 69
    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 70
    throw v1

    :cond_1f
    move/from16 v31, v11

    const/4 v11, 0x0

    goto/16 :goto_5

    :pswitch_6
    move-object/from16 v12, p2

    move/from16 v31, v1

    move/from16 v18, v13

    const/4 v11, 0x0

    const/4 v14, 0x3

    const/16 v24, -0x1

    move/from16 v13, p3

    move/from16 p3, v15

    move-object v15, v3

    if-nez v5, :cond_9

    or-int v16, v16, v29

    .line 71
    invoke-static {v12, v4, v15}, Ly4/k;->v0([BILcom/google/android/gms/internal/ads/SG;)I

    move-result v1

    iget-wide v2, v15, Lcom/google/android/gms/internal/ads/SG;->b:J

    cmp-long v4, v2, v27

    if-eqz v4, :cond_20

    const/4 v4, 0x1

    goto :goto_16

    :cond_20
    const/4 v4, 0x0

    .line 72
    :goto_16
    invoke-static {v7, v8, v9, v4}, Lcom/google/android/gms/internal/measurement/g3;->k(Ljava/lang/Object;JZ)V

    goto :goto_14

    :pswitch_7
    move-object/from16 v12, p2

    move/from16 v31, v1

    move/from16 v18, v13

    const/4 v1, 0x5

    const/4 v11, 0x0

    const/4 v14, 0x3

    const/16 v24, -0x1

    move/from16 v13, p3

    move/from16 p3, v15

    move-object v15, v3

    if-ne v5, v1, :cond_9

    add-int/lit8 v1, v4, 0x4

    or-int v16, v16, v29

    .line 73
    invoke-static {v12, v4}, Ly4/k;->n0([BI)I

    move-result v3

    invoke-virtual {v2, v7, v8, v9, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_14

    :pswitch_8
    move-object/from16 v12, p2

    move/from16 v31, v1

    move/from16 v18, v13

    const/4 v1, 0x1

    const/4 v11, 0x0

    const/4 v14, 0x3

    const/16 v24, -0x1

    move/from16 v13, p3

    move/from16 p3, v15

    move-object v15, v3

    if-ne v5, v1, :cond_9

    add-int/lit8 v10, v4, 0x8

    or-int v16, v16, v29

    .line 74
    invoke-static {v12, v4}, Ly4/k;->y0([BI)J

    move-result-wide v5

    move-object v1, v2

    move-object/from16 v2, p1

    move-wide v3, v8

    move/from16 v8, p4

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    :goto_17
    move/from16 v11, p3

    move/from16 v6, p5

    move v5, v8

    move v8, v10

    goto/16 :goto_15

    :pswitch_9
    move-object/from16 v12, p2

    move/from16 v6, p4

    move/from16 v31, v1

    move/from16 v18, v13

    const/4 v11, 0x0

    const/4 v14, 0x3

    const/16 v24, -0x1

    move/from16 v13, p3

    move/from16 p3, v15

    move-object v15, v3

    if-nez v5, :cond_21

    or-int v16, v16, v29

    .line 75
    invoke-static {v12, v4, v15}, Ly4/k;->s0([BILcom/google/android/gms/internal/ads/SG;)I

    move-result v1

    iget v3, v15, Lcom/google/android/gms/internal/ads/SG;->a:I

    .line 76
    invoke-virtual {v2, v7, v8, v9, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    move/from16 v11, p3

    move v8, v1

    move v5, v6

    move/from16 v17, v13

    move-object v3, v15

    move/from16 v9, v18

    move/from16 v10, v31

    const/4 v1, 0x3

    const/4 v13, 0x1

    move/from16 v6, p5

    goto/16 :goto_7

    :cond_21
    move v1, v6

    goto/16 :goto_19

    :pswitch_a
    move-object/from16 v12, p2

    move/from16 v6, p4

    move/from16 v31, v1

    move/from16 v18, v13

    const/4 v11, 0x0

    const/4 v14, 0x3

    const/16 v24, -0x1

    move/from16 v13, p3

    move/from16 p3, v15

    move-object v15, v3

    if-nez v5, :cond_21

    or-int v16, v16, v29

    .line 77
    invoke-static {v12, v4, v15}, Ly4/k;->v0([BILcom/google/android/gms/internal/ads/SG;)I

    move-result v10

    iget-wide v3, v15, Lcom/google/android/gms/internal/ads/SG;->b:J

    move-object v1, v2

    move-object/from16 v2, p1

    move-wide/from16 v19, v3

    move-wide v3, v8

    move v8, v6

    move-wide/from16 v5, v19

    .line 78
    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    goto :goto_17

    :pswitch_b
    move-object/from16 v12, p2

    move/from16 v31, v1

    move/from16 v18, v13

    const/4 v11, 0x0

    const/4 v14, 0x3

    const/16 v24, -0x1

    move/from16 v13, p3

    move/from16 v1, p4

    move/from16 p3, v15

    move-object v15, v3

    const/4 v3, 0x5

    if-ne v5, v3, :cond_22

    add-int/lit8 v2, v4, 0x4

    or-int v16, v16, v29

    .line 79
    invoke-static {v12, v4}, Ly4/k;->n0([BI)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    .line 80
    invoke-static {v7, v8, v9, v3}, Lcom/google/android/gms/internal/measurement/g3;->m(Ljava/lang/Object;JF)V

    :goto_18
    move/from16 v11, p3

    move/from16 v6, p5

    move v5, v1

    move v8, v2

    goto/16 :goto_15

    :pswitch_c
    move-object/from16 v12, p2

    move/from16 v31, v1

    move/from16 v18, v13

    const/4 v11, 0x0

    const/4 v14, 0x3

    const/16 v24, -0x1

    move/from16 v13, p3

    move/from16 v1, p4

    move/from16 p3, v15

    move-object v15, v3

    const/4 v3, 0x1

    if-ne v5, v3, :cond_22

    add-int/lit8 v2, v4, 0x8

    or-int v16, v16, v29

    .line 81
    invoke-static {v12, v4}, Ly4/k;->y0([BI)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v3

    .line 82
    invoke-static {v7, v8, v9, v3, v4}, Lcom/google/android/gms/internal/measurement/g3;->l(Ljava/lang/Object;JD)V

    goto :goto_18

    :cond_22
    :goto_19
    move/from16 v0, p5

    move-object v11, v2

    move v3, v4

    move-object v2, v10

    move v8, v13

    move-object v10, v15

    move/from16 v4, v18

    move-object/from16 v18, v19

    move-object/from16 v19, v25

    move/from16 v14, v31

    const/16 v29, 0x0

    move/from16 v31, p3

    move-object v13, v12

    goto/16 :goto_53

    :cond_23
    move-object/from16 v19, v12

    move/from16 v18, v13

    move-object v12, v15

    move-object/from16 v14, v31

    move-object/from16 v3, v33

    const/16 v24, -0x1

    const/16 v29, 0x0

    move/from16 v13, p3

    move v15, v1

    move-object/from16 p3, v10

    move-object/from16 v1, v32

    const/16 v10, 0x1b

    if-ne v6, v10, :cond_27

    const/4 v10, 0x2

    if-ne v5, v10, :cond_26

    .line 83
    invoke-virtual {v2, v7, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/y2;

    .line 84
    check-cast v1, Lcom/google/android/gms/internal/measurement/d2;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/d2;->zzc()Z

    move-result v3

    if-nez v3, :cond_25

    .line 85
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_24

    const/16 v3, 0xa

    goto :goto_1a

    :cond_24
    add-int/2addr v3, v3

    .line 86
    :goto_1a
    invoke-interface {v1, v3}, Lcom/google/android/gms/internal/measurement/y2;->zzd(I)Lcom/google/android/gms/internal/measurement/y2;

    move-result-object v1

    .line 87
    invoke-virtual {v2, v7, v8, v9, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 88
    :cond_25
    invoke-virtual {v0, v15}, Lcom/google/android/gms/internal/measurement/R2;->w(I)Lcom/google/android/gms/internal/measurement/Y2;

    move-result-object v8

    move v9, v13

    move-object/from16 v10, p2

    move/from16 v31, v11

    move v11, v4

    move-object v3, v12

    move/from16 v12, p4

    move v5, v13

    move-object v13, v1

    const v1, 0xfffff

    const/4 v6, 0x3

    move-object/from16 v14, p6

    .line 89
    invoke-static/range {v8 .. v14}, Ly4/k;->p0(Lcom/google/android/gms/internal/measurement/Y2;I[BIILcom/google/android/gms/internal/measurement/y2;Lcom/google/android/gms/internal/ads/SG;)I

    move-result v8

    move/from16 v6, p5

    move/from16 v17, v5

    move v10, v15

    move/from16 v9, v18

    move/from16 v11, v31

    const/4 v1, 0x3

    const/4 v13, 0x1

    move/from16 v5, p4

    move-object v15, v3

    move-object/from16 v3, p6

    goto/16 :goto_0

    :cond_26
    move/from16 v31, v11

    move-object/from16 v14, p3

    move/from16 v1, p4

    move-object/from16 v10, p6

    move-object v11, v2

    move v0, v13

    move v13, v15

    move/from16 v2, v18

    move-object/from16 v18, v19

    move-object/from16 v19, v25

    move v15, v4

    move-object v4, v12

    goto/16 :goto_41

    :cond_27
    move/from16 v31, v11

    move v11, v13

    const/4 v10, 0x3

    move-object v13, v12

    const/16 v12, 0x31

    if-gt v6, v12, :cond_6a

    move/from16 v12, v21

    move/from16 v21, v11

    int-to-long v10, v12

    .line 90
    invoke-virtual {v2, v7, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/gms/internal/measurement/y2;

    .line 91
    check-cast v12, Lcom/google/android/gms/internal/measurement/d2;

    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/d2;->zzc()Z

    move-result v26

    if-nez v26, :cond_28

    .line 92
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v26

    move-object/from16 v32, v14

    add-int v14, v26, v26

    .line 93
    invoke-interface {v12, v14}, Lcom/google/android/gms/internal/measurement/y2;->zzd(I)Lcom/google/android/gms/internal/measurement/y2;

    move-result-object v12

    .line 94
    invoke-virtual {v2, v7, v8, v9, v12}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_1b
    move-object v14, v12

    goto :goto_1c

    :cond_28
    move-object/from16 v32, v14

    goto :goto_1b

    :goto_1c
    const-string v8, "While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length."

    packed-switch v6, :pswitch_data_1

    const/4 v12, 0x3

    if-ne v5, v12, :cond_2c

    and-int/lit8 v1, v21, -0x8

    or-int/lit8 v8, v1, 0x4

    .line 95
    invoke-virtual {v0, v15}, Lcom/google/android/gms/internal/measurement/R2;->w(I)Lcom/google/android/gms/internal/measurement/Y2;

    move-result-object v9

    move/from16 v11, p4

    move-object v1, v9

    move-object v10, v2

    move-object/from16 v2, p2

    move v3, v4

    move v6, v4

    move/from16 v4, p4

    move v5, v8

    move/from16 v22, v15

    move v15, v6

    move-object/from16 v6, p6

    .line 96
    invoke-static/range {v1 .. v6}, Ly4/k;->o0(Lcom/google/android/gms/internal/measurement/Y2;[BIIILcom/google/android/gms/internal/ads/SG;)I

    move-result v1

    move/from16 v5, v22

    iget-object v2, v6, Lcom/google/android/gms/internal/ads/SG;->c:Ljava/lang/Object;

    .line 97
    invoke-interface {v14, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1d
    if-ge v1, v11, :cond_2a

    .line 98
    invoke-static {v13, v1, v6}, Ly4/k;->s0([BILcom/google/android/gms/internal/ads/SG;)I

    move-result v3

    iget v2, v6, Lcom/google/android/gms/internal/ads/SG;->a:I

    move/from16 v4, v21

    if-ne v4, v2, :cond_29

    move-object v1, v9

    move-object/from16 v2, p2

    move v12, v4

    move/from16 v4, p4

    move-object/from16 v21, v10

    move v10, v5

    move v5, v8

    move-object/from16 v26, v9

    move-object v9, v6

    move-object/from16 v6, p6

    .line 99
    invoke-static/range {v1 .. v6}, Ly4/k;->o0(Lcom/google/android/gms/internal/measurement/Y2;[BIIILcom/google/android/gms/internal/ads/SG;)I

    move-result v1

    iget-object v2, v9, Lcom/google/android/gms/internal/ads/SG;->c:Ljava/lang/Object;

    .line 100
    invoke-interface {v14, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v6, v9

    move v5, v10

    move-object/from16 v10, v21

    move-object/from16 v9, v26

    move/from16 v21, v12

    const/4 v12, 0x3

    goto :goto_1d

    :cond_29
    move v12, v4

    move-object v9, v6

    :goto_1e
    move-object/from16 v21, v10

    move v10, v5

    goto :goto_1f

    :cond_2a
    move-object v9, v6

    move/from16 v12, v21

    goto :goto_1e

    :cond_2b
    :goto_1f
    move-object/from16 v8, p3

    move v7, v11

    move v0, v12

    move/from16 v12, v18

    move-object/from16 v18, v19

    move-object/from16 v11, v21

    move-object/from16 v19, v25

    :goto_20
    move/from16 v37, v10

    move-object v10, v9

    move-object v9, v13

    move/from16 v13, v37

    goto/16 :goto_40

    :cond_2c
    move v10, v15

    move/from16 v12, v21

    move v15, v4

    move-object/from16 v8, p3

    move/from16 v7, p4

    move-object v11, v2

    move v0, v12

    move-object v9, v13

    move/from16 v12, v18

    move-object/from16 v18, v19

    move-object/from16 v19, v25

    move v13, v10

    move-object/from16 v10, p6

    goto/16 :goto_3f

    :pswitch_d
    move/from16 v11, p4

    move-object/from16 v9, p6

    move v10, v15

    move/from16 v12, v21

    const/4 v1, 0x2

    move-object/from16 v21, v2

    move v15, v4

    if-ne v5, v1, :cond_2f

    .line 101
    check-cast v14, Lcom/google/android/gms/internal/measurement/G2;

    .line 102
    invoke-static {v13, v15, v9}, Ly4/k;->s0([BILcom/google/android/gms/internal/ads/SG;)I

    move-result v1

    iget v2, v9, Lcom/google/android/gms/internal/ads/SG;->a:I

    add-int/2addr v2, v1

    :goto_21
    if-ge v1, v2, :cond_2d

    .line 103
    invoke-static {v13, v1, v9}, Ly4/k;->v0([BILcom/google/android/gms/internal/ads/SG;)I

    move-result v1

    iget-wide v3, v9, Lcom/google/android/gms/internal/ads/SG;->b:J

    .line 104
    invoke-static {v3, v4}, LE3/f;->H(J)J

    move-result-wide v3

    invoke-virtual {v14, v3, v4}, Lcom/google/android/gms/internal/measurement/G2;->l(J)V

    goto :goto_21

    :cond_2d
    if-ne v1, v2, :cond_2e

    goto :goto_1f

    .line 105
    :cond_2e
    new-instance v1, Lcom/google/android/gms/internal/measurement/B2;

    .line 106
    invoke-direct {v1, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 107
    throw v1

    :cond_2f
    if-nez v5, :cond_30

    .line 108
    check-cast v14, Lcom/google/android/gms/internal/measurement/G2;

    .line 109
    invoke-static {v13, v15, v9}, Ly4/k;->v0([BILcom/google/android/gms/internal/ads/SG;)I

    move-result v1

    iget-wide v2, v9, Lcom/google/android/gms/internal/ads/SG;->b:J

    .line 110
    invoke-static {v2, v3}, LE3/f;->H(J)J

    move-result-wide v2

    invoke-virtual {v14, v2, v3}, Lcom/google/android/gms/internal/measurement/G2;->l(J)V

    :goto_22
    if-ge v1, v11, :cond_2b

    .line 111
    invoke-static {v13, v1, v9}, Ly4/k;->s0([BILcom/google/android/gms/internal/ads/SG;)I

    move-result v2

    iget v3, v9, Lcom/google/android/gms/internal/ads/SG;->a:I

    if-ne v12, v3, :cond_2b

    .line 112
    invoke-static {v13, v2, v9}, Ly4/k;->v0([BILcom/google/android/gms/internal/ads/SG;)I

    move-result v1

    iget-wide v2, v9, Lcom/google/android/gms/internal/ads/SG;->b:J

    invoke-static {v2, v3}, LE3/f;->H(J)J

    move-result-wide v2

    .line 113
    invoke-virtual {v14, v2, v3}, Lcom/google/android/gms/internal/measurement/G2;->l(J)V

    goto :goto_22

    :cond_30
    move-object/from16 v8, p3

    move v7, v11

    move v0, v12

    move/from16 v12, v18

    move-object/from16 v18, v19

    move-object/from16 v11, v21

    move-object/from16 v19, v25

    :goto_23
    move/from16 v37, v10

    move-object v10, v9

    move-object v9, v13

    move/from16 v13, v37

    goto/16 :goto_3f

    :pswitch_e
    move/from16 v11, p4

    move-object/from16 v9, p6

    move v10, v15

    move/from16 v12, v21

    const/4 v1, 0x2

    move-object/from16 v21, v2

    move v15, v4

    if-ne v5, v1, :cond_33

    .line 114
    check-cast v14, Lcom/google/android/gms/internal/measurement/t2;

    .line 115
    invoke-static {v13, v15, v9}, Ly4/k;->s0([BILcom/google/android/gms/internal/ads/SG;)I

    move-result v1

    iget v2, v9, Lcom/google/android/gms/internal/ads/SG;->a:I

    add-int/2addr v2, v1

    :goto_24
    if-ge v1, v2, :cond_31

    .line 116
    invoke-static {v13, v1, v9}, Ly4/k;->s0([BILcom/google/android/gms/internal/ads/SG;)I

    move-result v1

    iget v3, v9, Lcom/google/android/gms/internal/ads/SG;->a:I

    .line 117
    invoke-static {v3}, LE3/f;->G(I)I

    move-result v3

    invoke-virtual {v14, v3}, Lcom/google/android/gms/internal/measurement/t2;->l(I)V

    goto :goto_24

    :cond_31
    if-ne v1, v2, :cond_32

    goto/16 :goto_1f

    .line 118
    :cond_32
    new-instance v1, Lcom/google/android/gms/internal/measurement/B2;

    .line 119
    invoke-direct {v1, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 120
    throw v1

    :cond_33
    if-nez v5, :cond_30

    .line 121
    check-cast v14, Lcom/google/android/gms/internal/measurement/t2;

    .line 122
    invoke-static {v13, v15, v9}, Ly4/k;->s0([BILcom/google/android/gms/internal/ads/SG;)I

    move-result v1

    iget v2, v9, Lcom/google/android/gms/internal/ads/SG;->a:I

    .line 123
    invoke-static {v2}, LE3/f;->G(I)I

    move-result v2

    invoke-virtual {v14, v2}, Lcom/google/android/gms/internal/measurement/t2;->l(I)V

    :goto_25
    if-ge v1, v11, :cond_2b

    .line 124
    invoke-static {v13, v1, v9}, Ly4/k;->s0([BILcom/google/android/gms/internal/ads/SG;)I

    move-result v2

    iget v3, v9, Lcom/google/android/gms/internal/ads/SG;->a:I

    if-ne v12, v3, :cond_2b

    .line 125
    invoke-static {v13, v2, v9}, Ly4/k;->s0([BILcom/google/android/gms/internal/ads/SG;)I

    move-result v1

    iget v2, v9, Lcom/google/android/gms/internal/ads/SG;->a:I

    invoke-static {v2}, LE3/f;->G(I)I

    move-result v2

    .line 126
    invoke-virtual {v14, v2}, Lcom/google/android/gms/internal/measurement/t2;->l(I)V

    goto :goto_25

    :pswitch_f
    move/from16 v11, p4

    move-object/from16 v9, p6

    move v10, v15

    move/from16 v12, v21

    const/4 v1, 0x2

    move-object/from16 v21, v2

    move v15, v4

    if-ne v5, v1, :cond_34

    .line 127
    invoke-static {v13, v15, v14, v9}, Ly4/k;->q0([BILcom/google/android/gms/internal/measurement/y2;Lcom/google/android/gms/internal/ads/SG;)I

    move-result v1

    goto :goto_26

    :cond_34
    if-nez v5, :cond_30

    move v1, v12

    move-object/from16 v2, p2

    move v3, v15

    move/from16 v4, p4

    move-object v5, v14

    move-object/from16 v6, p6

    .line 128
    invoke-static/range {v1 .. v6}, Ly4/k;->u0(I[BIILcom/google/android/gms/internal/measurement/y2;Lcom/google/android/gms/internal/ads/SG;)I

    move-result v1

    .line 129
    :goto_26
    invoke-virtual {v0, v10}, Lcom/google/android/gms/internal/measurement/R2;->v(I)Lcom/google/android/gms/internal/measurement/v2;

    move-result-object v2

    .line 130
    sget-object v3, Lcom/google/android/gms/internal/measurement/Z2;->a:Lcom/google/android/gms/internal/measurement/q2;

    if-eqz v2, :cond_38

    .line 131
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v3

    move-object/from16 v6, v20

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_27
    if-ge v4, v3, :cond_37

    .line 132
    invoke-interface {v14, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    move/from16 v26, v1

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v2, v1}, Lcom/google/android/gms/internal/measurement/v2;->zza(I)Z

    move-result v27

    if-eqz v27, :cond_36

    if-eq v4, v5, :cond_35

    .line 133
    invoke-interface {v14, v5, v8}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_35
    const/4 v8, 0x1

    add-int/2addr v5, v8

    move/from16 v8, v18

    :goto_28
    const/4 v1, 0x1

    goto :goto_29

    :cond_36
    move/from16 v8, v18

    .line 134
    invoke-static {v7, v8, v1, v6}, Lcom/google/android/gms/internal/measurement/Z2;->r(Ljava/lang/Object;IILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    goto :goto_28

    :goto_29
    add-int/2addr v4, v1

    move/from16 v18, v8

    move/from16 v1, v26

    goto :goto_27

    :cond_37
    move/from16 v26, v1

    move/from16 v8, v18

    if-eq v5, v3, :cond_39

    .line 135
    invoke-interface {v14, v5, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    goto :goto_2a

    :cond_38
    move/from16 v26, v1

    move/from16 v8, v18

    :cond_39
    :goto_2a
    move v7, v11

    move v0, v12

    move-object/from16 v18, v19

    move-object/from16 v11, v21

    move-object/from16 v19, v25

    move/from16 v1, v26

    :goto_2b
    move v12, v8

    move-object/from16 v8, p3

    goto/16 :goto_20

    :pswitch_10
    move/from16 v11, p4

    move-object/from16 v9, p6

    move-object v1, v8

    move v10, v15

    move/from16 v8, v18

    move/from16 v12, v21

    move-object/from16 v21, v2

    move v15, v4

    const/4 v2, 0x2

    if-ne v5, v2, :cond_41

    .line 136
    invoke-static {v13, v15, v9}, Ly4/k;->s0([BILcom/google/android/gms/internal/ads/SG;)I

    move-result v2

    iget v4, v9, Lcom/google/android/gms/internal/ads/SG;->a:I

    if-ltz v4, :cond_40

    .line 137
    array-length v5, v13

    sub-int/2addr v5, v2

    if-gt v4, v5, :cond_3f

    if-nez v4, :cond_3a

    .line 138
    sget-object v4, Lcom/google/android/gms/internal/measurement/i2;->H:Lcom/google/android/gms/internal/measurement/j2;

    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2d

    .line 139
    :cond_3a
    invoke-static {v2, v13, v4}, Lcom/google/android/gms/internal/measurement/i2;->p(I[BI)Lcom/google/android/gms/internal/measurement/j2;

    move-result-object v5

    invoke-interface {v14, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2c
    add-int/2addr v2, v4

    :goto_2d
    if-ge v2, v11, :cond_3e

    .line 140
    invoke-static {v13, v2, v9}, Ly4/k;->s0([BILcom/google/android/gms/internal/ads/SG;)I

    move-result v4

    iget v5, v9, Lcom/google/android/gms/internal/ads/SG;->a:I

    if-ne v12, v5, :cond_3e

    .line 141
    invoke-static {v13, v4, v9}, Ly4/k;->s0([BILcom/google/android/gms/internal/ads/SG;)I

    move-result v2

    iget v4, v9, Lcom/google/android/gms/internal/ads/SG;->a:I

    if-ltz v4, :cond_3d

    .line 142
    array-length v5, v13

    sub-int/2addr v5, v2

    if-gt v4, v5, :cond_3c

    if-nez v4, :cond_3b

    .line 143
    sget-object v4, Lcom/google/android/gms/internal/measurement/i2;->H:Lcom/google/android/gms/internal/measurement/j2;

    .line 144
    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2d

    .line 145
    :cond_3b
    invoke-static {v2, v13, v4}, Lcom/google/android/gms/internal/measurement/i2;->p(I[BI)Lcom/google/android/gms/internal/measurement/j2;

    move-result-object v5

    invoke-interface {v14, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2c

    .line 146
    :cond_3c
    new-instance v2, Lcom/google/android/gms/internal/measurement/B2;

    .line 147
    invoke-direct {v2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 148
    throw v2

    .line 149
    :cond_3d
    new-instance v1, Lcom/google/android/gms/internal/measurement/B2;

    .line 150
    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 151
    throw v1

    :cond_3e
    move v1, v2

    move v7, v11

    move v0, v12

    move-object/from16 v18, v19

    move-object/from16 v11, v21

    move-object/from16 v19, v25

    goto :goto_2b

    .line 152
    :cond_3f
    new-instance v2, Lcom/google/android/gms/internal/measurement/B2;

    .line 153
    invoke-direct {v2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 154
    throw v2

    .line 155
    :cond_40
    new-instance v1, Lcom/google/android/gms/internal/measurement/B2;

    .line 156
    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 157
    throw v1

    :cond_41
    move v7, v11

    move v0, v12

    move-object/from16 v18, v19

    move-object/from16 v11, v21

    move-object/from16 v19, v25

    move v12, v8

    :goto_2e
    move-object/from16 v8, p3

    goto/16 :goto_23

    :pswitch_11
    move/from16 v11, p4

    move-object/from16 v9, p6

    move v10, v15

    move/from16 v8, v18

    move/from16 v12, v21

    const/4 v1, 0x2

    move-object/from16 v21, v2

    move v15, v4

    if-ne v5, v1, :cond_42

    .line 158
    invoke-virtual {v0, v10}, Lcom/google/android/gms/internal/measurement/R2;->w(I)Lcom/google/android/gms/internal/measurement/Y2;

    move-result-object v1

    move v6, v8

    move-object v8, v1

    move-object v4, v9

    move v9, v12

    move-object/from16 v3, p3

    move v1, v10

    move-object/from16 v2, v21

    const/4 v5, 0x3

    move-object/from16 v10, p2

    move v0, v12

    move v12, v11

    move v11, v15

    move v7, v12

    move-object/from16 v18, v19

    move/from16 v12, p4

    move/from16 p3, v6

    move-object v6, v13

    move-object v13, v14

    move-object/from16 v19, v25

    move-object/from16 v14, p6

    .line 159
    invoke-static/range {v8 .. v14}, Ly4/k;->p0(Lcom/google/android/gms/internal/measurement/Y2;I[BIILcom/google/android/gms/internal/measurement/y2;Lcom/google/android/gms/internal/ads/SG;)I

    move-result v8

    move/from16 v12, p3

    move v13, v1

    move-object v11, v2

    move-object v10, v4

    move-object v9, v6

    move v1, v8

    move-object v8, v3

    goto/16 :goto_40

    :cond_42
    move v7, v11

    move v0, v12

    move-object/from16 v18, v19

    move-object/from16 v19, v25

    move v12, v8

    move-object/from16 v11, v21

    goto :goto_2e

    :pswitch_12
    move-object/from16 v8, p3

    move/from16 v7, p4

    move-object v6, v13

    move v13, v15

    move/from16 p3, v18

    move-object/from16 v18, v19

    move/from16 v0, v21

    move-object/from16 v19, v25

    const/4 v9, 0x2

    const/4 v12, 0x3

    move v15, v4

    move-object/from16 v4, p6

    if-ne v5, v9, :cond_4f

    const-wide/32 v21, 0x20000000

    and-long v9, v10, v21

    cmp-long v5, v9, v27

    if-nez v5, :cond_48

    .line 160
    invoke-static {v6, v15, v4}, Ly4/k;->s0([BILcom/google/android/gms/internal/ads/SG;)I

    move-result v5

    iget v9, v4, Lcom/google/android/gms/internal/ads/SG;->a:I

    if-ltz v9, :cond_47

    if-nez v9, :cond_43

    .line 161
    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_30

    .line 162
    :cond_43
    new-instance v10, Ljava/lang/String;

    .line 163
    sget-object v11, Lcom/google/android/gms/internal/measurement/z2;->a:Ljava/nio/charset/Charset;

    invoke-direct {v10, v6, v5, v9, v11}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 164
    invoke-interface {v14, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2f
    add-int/2addr v5, v9

    :goto_30
    if-ge v5, v7, :cond_46

    .line 165
    invoke-static {v6, v5, v4}, Ly4/k;->s0([BILcom/google/android/gms/internal/ads/SG;)I

    move-result v9

    iget v10, v4, Lcom/google/android/gms/internal/ads/SG;->a:I

    if-ne v0, v10, :cond_46

    .line 166
    invoke-static {v6, v9, v4}, Ly4/k;->s0([BILcom/google/android/gms/internal/ads/SG;)I

    move-result v5

    iget v9, v4, Lcom/google/android/gms/internal/ads/SG;->a:I

    if-ltz v9, :cond_45

    if-nez v9, :cond_44

    .line 167
    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_30

    :cond_44
    new-instance v10, Ljava/lang/String;

    .line 168
    sget-object v11, Lcom/google/android/gms/internal/measurement/z2;->a:Ljava/nio/charset/Charset;

    invoke-direct {v10, v6, v5, v9, v11}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 169
    invoke-interface {v14, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2f

    .line 170
    :cond_45
    new-instance v0, Lcom/google/android/gms/internal/measurement/B2;

    .line 171
    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 172
    throw v0

    :cond_46
    move/from16 v12, p3

    move-object v11, v2

    move-object v10, v4

    move v1, v5

    :goto_31
    move-object v9, v6

    goto/16 :goto_40

    .line 173
    :cond_47
    new-instance v0, Lcom/google/android/gms/internal/measurement/B2;

    .line 174
    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 175
    throw v0

    .line 176
    :cond_48
    invoke-static {v6, v15, v4}, Ly4/k;->s0([BILcom/google/android/gms/internal/ads/SG;)I

    move-result v5

    iget v9, v4, Lcom/google/android/gms/internal/ads/SG;->a:I

    if-ltz v9, :cond_4e

    if-nez v9, :cond_49

    .line 177
    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_33

    :cond_49
    add-int v10, v5, v9

    .line 178
    invoke-static {v5, v6, v10}, Lcom/google/android/gms/internal/measurement/i3;->d(I[BI)Z

    move-result v11

    if-eqz v11, :cond_4d

    .line 179
    new-instance v11, Ljava/lang/String;

    .line 180
    sget-object v12, Lcom/google/android/gms/internal/measurement/z2;->a:Ljava/nio/charset/Charset;

    invoke-direct {v11, v6, v5, v9, v12}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 181
    invoke-interface {v14, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_32
    move v5, v10

    :goto_33
    if-ge v5, v7, :cond_46

    .line 182
    invoke-static {v6, v5, v4}, Ly4/k;->s0([BILcom/google/android/gms/internal/ads/SG;)I

    move-result v9

    iget v10, v4, Lcom/google/android/gms/internal/ads/SG;->a:I

    if-ne v0, v10, :cond_46

    .line 183
    invoke-static {v6, v9, v4}, Ly4/k;->s0([BILcom/google/android/gms/internal/ads/SG;)I

    move-result v5

    iget v9, v4, Lcom/google/android/gms/internal/ads/SG;->a:I

    if-ltz v9, :cond_4c

    if-nez v9, :cond_4a

    .line 184
    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_33

    :cond_4a
    add-int v10, v5, v9

    .line 185
    invoke-static {v5, v6, v10}, Lcom/google/android/gms/internal/measurement/i3;->d(I[BI)Z

    move-result v11

    if-eqz v11, :cond_4b

    .line 186
    new-instance v11, Ljava/lang/String;

    .line 187
    sget-object v12, Lcom/google/android/gms/internal/measurement/z2;->a:Ljava/nio/charset/Charset;

    invoke-direct {v11, v6, v5, v9, v12}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 188
    invoke-interface {v14, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_32

    .line 189
    :cond_4b
    new-instance v0, Lcom/google/android/gms/internal/measurement/B2;

    move-object/from16 v3, v32

    .line 190
    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 191
    throw v0

    .line 192
    :cond_4c
    new-instance v0, Lcom/google/android/gms/internal/measurement/B2;

    .line 193
    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 194
    throw v0

    :cond_4d
    move-object/from16 v3, v32

    .line 195
    new-instance v0, Lcom/google/android/gms/internal/measurement/B2;

    .line 196
    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 197
    throw v0

    .line 198
    :cond_4e
    new-instance v0, Lcom/google/android/gms/internal/measurement/B2;

    .line 199
    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 200
    throw v0

    :cond_4f
    :goto_34
    move/from16 v12, p3

    move-object v11, v2

    move-object v10, v4

    move-object v9, v6

    goto/16 :goto_3f

    :pswitch_13
    move/from16 v7, p4

    move-object v1, v8

    move-object v6, v13

    move v13, v15

    move/from16 v0, v21

    const/4 v3, 0x2

    move-object/from16 v8, p3

    move v15, v4

    move/from16 p3, v18

    move-object/from16 v18, v19

    move-object/from16 v19, v25

    move-object/from16 v4, p6

    if-ne v5, v3, :cond_52

    .line 201
    invoke-static {v14}, Lcom/google/android/gms/internal/ads/uc;->u(Lcom/google/android/gms/internal/measurement/y2;)V

    .line 202
    invoke-static {v6, v15, v4}, Ly4/k;->s0([BILcom/google/android/gms/internal/ads/SG;)I

    move-result v3

    iget v5, v4, Lcom/google/android/gms/internal/ads/SG;->a:I

    add-int/2addr v5, v3

    if-lt v3, v5, :cond_51

    if-ne v3, v5, :cond_50

    :goto_35
    move/from16 v12, p3

    move-object v11, v2

    move v1, v3

    :goto_36
    move-object v10, v4

    goto/16 :goto_31

    .line 203
    :cond_50
    new-instance v0, Lcom/google/android/gms/internal/measurement/B2;

    .line 204
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 205
    throw v0

    .line 206
    :cond_51
    invoke-static {v6, v3, v4}, Ly4/k;->v0([BILcom/google/android/gms/internal/ads/SG;)I

    .line 207
    throw v20

    :cond_52
    if-eqz v5, :cond_53

    goto :goto_34

    .line 208
    :cond_53
    invoke-static {v14}, Lcom/google/android/gms/internal/ads/uc;->u(Lcom/google/android/gms/internal/measurement/y2;)V

    .line 209
    invoke-static {v6, v15, v4}, Ly4/k;->v0([BILcom/google/android/gms/internal/ads/SG;)I

    .line 210
    throw v20

    :pswitch_14
    move/from16 v7, p4

    move-object v1, v8

    move-object v6, v13

    move v13, v15

    move/from16 v0, v21

    const/4 v3, 0x2

    move-object/from16 v8, p3

    move v15, v4

    move/from16 p3, v18

    move-object/from16 v18, v19

    move-object/from16 v19, v25

    move-object/from16 v4, p6

    if-ne v5, v3, :cond_57

    .line 211
    check-cast v14, Lcom/google/android/gms/internal/measurement/t2;

    .line 212
    invoke-static {v6, v15, v4}, Ly4/k;->s0([BILcom/google/android/gms/internal/ads/SG;)I

    move-result v3

    iget v5, v4, Lcom/google/android/gms/internal/ads/SG;->a:I

    add-int v9, v3, v5

    .line 213
    array-length v10, v6

    if-gt v9, v10, :cond_56

    .line 214
    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/t2;->size()I

    move-result v10

    div-int/lit8 v5, v5, 0x4

    add-int/2addr v5, v10

    invoke-virtual {v14, v5}, Lcom/google/android/gms/internal/measurement/t2;->n(I)V

    :goto_37
    if-ge v3, v9, :cond_54

    .line 215
    invoke-static {v6, v3}, Ly4/k;->n0([BI)I

    move-result v5

    invoke-virtual {v14, v5}, Lcom/google/android/gms/internal/measurement/t2;->l(I)V

    add-int/lit8 v3, v3, 0x4

    goto :goto_37

    :cond_54
    if-ne v3, v9, :cond_55

    :goto_38
    goto :goto_35

    .line 216
    :cond_55
    new-instance v0, Lcom/google/android/gms/internal/measurement/B2;

    .line 217
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 218
    throw v0

    .line 219
    :cond_56
    new-instance v0, Lcom/google/android/gms/internal/measurement/B2;

    .line 220
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 221
    throw v0

    :cond_57
    const/4 v1, 0x5

    if-ne v5, v1, :cond_4f

    add-int/lit8 v1, v15, 0x4

    .line 222
    check-cast v14, Lcom/google/android/gms/internal/measurement/t2;

    .line 223
    invoke-static {v6, v15}, Ly4/k;->n0([BI)I

    move-result v3

    invoke-virtual {v14, v3}, Lcom/google/android/gms/internal/measurement/t2;->l(I)V

    :goto_39
    if-ge v1, v7, :cond_58

    .line 224
    invoke-static {v6, v1, v4}, Ly4/k;->s0([BILcom/google/android/gms/internal/ads/SG;)I

    move-result v3

    iget v5, v4, Lcom/google/android/gms/internal/ads/SG;->a:I

    if-ne v0, v5, :cond_58

    .line 225
    invoke-static {v6, v3}, Ly4/k;->n0([BI)I

    move-result v1

    invoke-virtual {v14, v1}, Lcom/google/android/gms/internal/measurement/t2;->l(I)V

    add-int/lit8 v1, v3, 0x4

    goto :goto_39

    :cond_58
    :goto_3a
    move/from16 v12, p3

    move-object v11, v2

    goto/16 :goto_36

    :pswitch_15
    move/from16 v7, p4

    move-object v1, v8

    move-object v6, v13

    move v13, v15

    move/from16 v0, v21

    const/4 v3, 0x2

    move-object/from16 v8, p3

    move v15, v4

    move/from16 p3, v18

    move-object/from16 v18, v19

    move-object/from16 v19, v25

    move-object/from16 v4, p6

    if-ne v5, v3, :cond_5c

    .line 226
    check-cast v14, Lcom/google/android/gms/internal/measurement/G2;

    .line 227
    invoke-static {v6, v15, v4}, Ly4/k;->s0([BILcom/google/android/gms/internal/ads/SG;)I

    move-result v3

    iget v5, v4, Lcom/google/android/gms/internal/ads/SG;->a:I

    add-int v9, v3, v5

    .line 228
    array-length v10, v6

    if-gt v9, v10, :cond_5b

    .line 229
    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/G2;->size()I

    move-result v10

    div-int/lit8 v5, v5, 0x8

    add-int/2addr v5, v10

    invoke-virtual {v14, v5}, Lcom/google/android/gms/internal/measurement/G2;->n(I)V

    :goto_3b
    if-ge v3, v9, :cond_59

    .line 230
    invoke-static {v6, v3}, Ly4/k;->y0([BI)J

    move-result-wide v10

    invoke-virtual {v14, v10, v11}, Lcom/google/android/gms/internal/measurement/G2;->l(J)V

    add-int/lit8 v3, v3, 0x8

    goto :goto_3b

    :cond_59
    if-ne v3, v9, :cond_5a

    goto :goto_38

    .line 231
    :cond_5a
    new-instance v0, Lcom/google/android/gms/internal/measurement/B2;

    .line 232
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 233
    throw v0

    .line 234
    :cond_5b
    new-instance v0, Lcom/google/android/gms/internal/measurement/B2;

    .line 235
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 236
    throw v0

    :cond_5c
    const/4 v1, 0x1

    if-ne v5, v1, :cond_4f

    add-int/lit8 v1, v15, 0x8

    .line 237
    check-cast v14, Lcom/google/android/gms/internal/measurement/G2;

    .line 238
    invoke-static {v6, v15}, Ly4/k;->y0([BI)J

    move-result-wide v9

    invoke-virtual {v14, v9, v10}, Lcom/google/android/gms/internal/measurement/G2;->l(J)V

    :goto_3c
    if-ge v1, v7, :cond_58

    .line 239
    invoke-static {v6, v1, v4}, Ly4/k;->s0([BILcom/google/android/gms/internal/ads/SG;)I

    move-result v3

    iget v5, v4, Lcom/google/android/gms/internal/ads/SG;->a:I

    if-ne v0, v5, :cond_58

    .line 240
    invoke-static {v6, v3}, Ly4/k;->y0([BI)J

    move-result-wide v9

    invoke-virtual {v14, v9, v10}, Lcom/google/android/gms/internal/measurement/G2;->l(J)V

    add-int/lit8 v1, v3, 0x8

    goto :goto_3c

    :pswitch_16
    move-object/from16 v8, p3

    move/from16 v7, p4

    move-object v6, v13

    move v13, v15

    move/from16 p3, v18

    move-object/from16 v18, v19

    move/from16 v0, v21

    move-object/from16 v19, v25

    const/4 v1, 0x2

    move v15, v4

    move-object/from16 v4, p6

    if-ne v5, v1, :cond_5d

    .line 241
    invoke-static {v6, v15, v14, v4}, Ly4/k;->q0([BILcom/google/android/gms/internal/measurement/y2;Lcom/google/android/gms/internal/ads/SG;)I

    move-result v1

    goto/16 :goto_3a

    :cond_5d
    if-nez v5, :cond_4f

    move v1, v0

    move-object v11, v2

    move-object/from16 v2, p2

    move v3, v15

    move-object v10, v4

    move/from16 v4, p4

    move-object v5, v14

    move/from16 v12, p3

    move-object v9, v6

    move-object/from16 v6, p6

    .line 242
    invoke-static/range {v1 .. v6}, Ly4/k;->u0(I[BIILcom/google/android/gms/internal/measurement/y2;Lcom/google/android/gms/internal/ads/SG;)I

    move-result v1

    goto/16 :goto_40

    :pswitch_17
    move/from16 v7, p4

    move-object/from16 v10, p6

    move-object v11, v2

    move-object v1, v8

    move-object v9, v13

    move v13, v15

    move/from16 v12, v18

    move-object/from16 v18, v19

    move/from16 v0, v21

    move-object/from16 v19, v25

    const/4 v2, 0x2

    move-object/from16 v8, p3

    move v15, v4

    if-ne v5, v2, :cond_60

    .line 243
    check-cast v14, Lcom/google/android/gms/internal/measurement/G2;

    .line 244
    invoke-static {v9, v15, v10}, Ly4/k;->s0([BILcom/google/android/gms/internal/ads/SG;)I

    move-result v2

    iget v3, v10, Lcom/google/android/gms/internal/ads/SG;->a:I

    add-int/2addr v3, v2

    :goto_3d
    if-ge v2, v3, :cond_5e

    .line 245
    invoke-static {v9, v2, v10}, Ly4/k;->v0([BILcom/google/android/gms/internal/ads/SG;)I

    move-result v2

    iget-wide v4, v10, Lcom/google/android/gms/internal/ads/SG;->b:J

    .line 246
    invoke-virtual {v14, v4, v5}, Lcom/google/android/gms/internal/measurement/G2;->l(J)V

    goto :goto_3d

    :cond_5e
    if-ne v2, v3, :cond_5f

    move v1, v2

    goto/16 :goto_40

    .line 247
    :cond_5f
    new-instance v0, Lcom/google/android/gms/internal/measurement/B2;

    .line 248
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 249
    throw v0

    :cond_60
    if-nez v5, :cond_66

    .line 250
    check-cast v14, Lcom/google/android/gms/internal/measurement/G2;

    .line 251
    invoke-static {v9, v15, v10}, Ly4/k;->v0([BILcom/google/android/gms/internal/ads/SG;)I

    move-result v1

    iget-wide v2, v10, Lcom/google/android/gms/internal/ads/SG;->b:J

    .line 252
    invoke-virtual {v14, v2, v3}, Lcom/google/android/gms/internal/measurement/G2;->l(J)V

    :goto_3e
    if-ge v1, v7, :cond_67

    .line 253
    invoke-static {v9, v1, v10}, Ly4/k;->s0([BILcom/google/android/gms/internal/ads/SG;)I

    move-result v2

    iget v3, v10, Lcom/google/android/gms/internal/ads/SG;->a:I

    if-ne v0, v3, :cond_67

    .line 254
    invoke-static {v9, v2, v10}, Ly4/k;->v0([BILcom/google/android/gms/internal/ads/SG;)I

    move-result v1

    iget-wide v2, v10, Lcom/google/android/gms/internal/ads/SG;->b:J

    .line 255
    invoke-virtual {v14, v2, v3}, Lcom/google/android/gms/internal/measurement/G2;->l(J)V

    goto :goto_3e

    :pswitch_18
    move/from16 v7, p4

    move-object/from16 v10, p6

    move-object v11, v2

    move-object v1, v8

    move-object v9, v13

    move v13, v15

    move/from16 v12, v18

    move-object/from16 v18, v19

    move/from16 v0, v21

    move-object/from16 v19, v25

    const/4 v2, 0x2

    move-object/from16 v8, p3

    move v15, v4

    if-ne v5, v2, :cond_62

    .line 256
    invoke-static {v14}, Lcom/google/android/gms/internal/ads/uc;->u(Lcom/google/android/gms/internal/measurement/y2;)V

    .line 257
    invoke-static {v9, v15, v10}, Ly4/k;->s0([BILcom/google/android/gms/internal/ads/SG;)I

    move-result v0

    iget v2, v10, Lcom/google/android/gms/internal/ads/SG;->a:I

    add-int/2addr v0, v2

    .line 258
    array-length v2, v9

    if-le v0, v2, :cond_61

    new-instance v0, Lcom/google/android/gms/internal/measurement/B2;

    .line 259
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 260
    throw v0

    .line 261
    :cond_61
    throw v20

    :cond_62
    const/4 v1, 0x5

    if-eq v5, v1, :cond_63

    goto :goto_3f

    .line 262
    :cond_63
    invoke-static {v14}, Lcom/google/android/gms/internal/ads/uc;->u(Lcom/google/android/gms/internal/measurement/y2;)V

    .line 263
    invoke-static {v9, v15}, Ly4/k;->n0([BI)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 264
    throw v20

    :pswitch_19
    move/from16 v7, p4

    move-object/from16 v10, p6

    move-object v11, v2

    move-object v1, v8

    move-object v9, v13

    move v13, v15

    move/from16 v12, v18

    move-object/from16 v18, v19

    move/from16 v0, v21

    move-object/from16 v19, v25

    const/4 v2, 0x2

    move-object/from16 v8, p3

    move v15, v4

    if-ne v5, v2, :cond_65

    .line 265
    invoke-static {v14}, Lcom/google/android/gms/internal/ads/uc;->u(Lcom/google/android/gms/internal/measurement/y2;)V

    .line 266
    invoke-static {v9, v15, v10}, Ly4/k;->s0([BILcom/google/android/gms/internal/ads/SG;)I

    move-result v0

    iget v2, v10, Lcom/google/android/gms/internal/ads/SG;->a:I

    add-int/2addr v0, v2

    .line 267
    array-length v2, v9

    if-le v0, v2, :cond_64

    new-instance v0, Lcom/google/android/gms/internal/measurement/B2;

    .line 268
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 269
    throw v0

    .line 270
    :cond_64
    throw v20

    :cond_65
    const/4 v1, 0x1

    if-eq v5, v1, :cond_69

    :cond_66
    :goto_3f
    move v1, v15

    :cond_67
    :goto_40
    if-eq v1, v15, :cond_68

    move/from16 v6, p5

    move/from16 v17, v0

    move v8, v1

    move v5, v7

    move-object v15, v9

    move-object v3, v10

    move v9, v12

    move v10, v13

    move/from16 v11, v31

    const/4 v1, 0x3

    const/4 v13, 0x1

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    goto/16 :goto_0

    :cond_68
    move-object/from16 v7, p1

    move v3, v1

    move-object v2, v8

    move v4, v12

    move v14, v13

    move v8, v0

    move-object v13, v9

    move/from16 v0, p5

    goto/16 :goto_53

    .line 271
    :cond_69
    invoke-static {v14}, Lcom/google/android/gms/internal/ads/uc;->u(Lcom/google/android/gms/internal/measurement/y2;)V

    .line 272
    invoke-static {v9, v15}, Ly4/k;->y0([BI)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    .line 273
    throw v20

    :cond_6a
    move-object/from16 v10, p6

    move v0, v11

    move-object v3, v14

    move/from16 v12, v21

    move-object/from16 v14, p3

    move-object v11, v2

    move/from16 v2, v18

    move-object/from16 v18, v19

    move-object/from16 v19, v25

    move/from16 v37, v15

    move v15, v4

    move-object v4, v13

    move/from16 v13, v37

    const/16 v7, 0x32

    if-ne v6, v7, :cond_6d

    const/4 v7, 0x2

    if-ne v5, v7, :cond_6c

    const/4 v1, 0x3

    .line 274
    div-int/lit8 v1, v13, 0x3

    add-int/2addr v1, v1

    aget-object v0, v19, v1

    move-object/from16 v7, p1

    .line 275
    invoke-virtual {v11, v7, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    .line 276
    move-object v2, v1

    check-cast v2, Lcom/google/android/gms/internal/measurement/L2;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/L2;->d()Z

    move-result v2

    if-nez v2, :cond_6b

    invoke-static {}, Lcom/google/android/gms/internal/measurement/L2;->a()Lcom/google/android/gms/internal/measurement/L2;

    move-result-object v2

    .line 277
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/L2;->b()Lcom/google/android/gms/internal/measurement/L2;

    move-result-object v2

    .line 278
    invoke-static {v2, v1}, LS3/g;->c(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/L2;

    .line 279
    invoke-virtual {v11, v7, v8, v9, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 280
    :cond_6b
    invoke-static {v0}, LA0/O;->I(Ljava/lang/Object;)V

    .line 281
    throw v20

    :cond_6c
    move-object/from16 v7, p1

    move/from16 v1, p4

    :goto_41
    move v8, v0

    move v3, v15

    move/from16 v0, p5

    move-object/from16 v37, v4

    move v4, v2

    move-object v2, v14

    move v14, v13

    move-object/from16 v13, v37

    goto/16 :goto_53

    :cond_6d
    move-object/from16 v7, p1

    const/16 v17, 0x2

    add-int/lit8 v21, v13, 0x2

    .line 282
    aget v17, v18, v21

    move-object/from16 v32, v3

    const v3, 0xfffff

    and-int v10, v17, v3

    int-to-long v3, v10

    packed-switch v6, :pswitch_data_2

    move-object/from16 v10, p6

    move/from16 v34, v0

    move v4, v2

    :goto_42
    move-object v2, v14

    move v14, v13

    move-object/from16 v13, p2

    goto/16 :goto_51

    :pswitch_1a
    const/4 v1, 0x3

    if-ne v5, v1, :cond_6e

    and-int/lit8 v1, v0, -0x8

    or-int/lit8 v1, v1, 0x4

    move v6, v0

    move-object/from16 v0, p0

    .line 283
    invoke-virtual {v0, v2, v7, v13}, Lcom/google/android/gms/internal/measurement/R2;->y(ILjava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    .line 284
    invoke-virtual {v0, v13}, Lcom/google/android/gms/internal/measurement/R2;->w(I)Lcom/google/android/gms/internal/measurement/Y2;

    move-result-object v9

    move-object v8, v3

    move-object/from16 v4, p6

    move-object/from16 v10, p2

    move-object v5, v11

    move v11, v15

    move/from16 v12, p4

    move v4, v13

    move v13, v1

    move-object v1, v14

    move-object/from16 v14, p6

    .line 285
    invoke-static/range {v8 .. v14}, Ly4/k;->w0(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/Y2;[BIIILcom/google/android/gms/internal/ads/SG;)I

    move-result v8

    .line 286
    invoke-virtual {v0, v7, v2, v4, v3}, Lcom/google/android/gms/internal/measurement/R2;->i(Ljava/lang/Object;IILjava/lang/Object;)V

    move-object/from16 v13, p2

    move-object/from16 v10, p6

    move v14, v4

    move-object v11, v5

    move/from16 v34, v6

    :goto_43
    move v4, v2

    move-object v2, v1

    goto/16 :goto_52

    :cond_6e
    move v6, v0

    move-object/from16 v0, p0

    move-object/from16 v10, p6

    move v4, v2

    move/from16 v34, v6

    goto :goto_42

    :pswitch_1b
    move-object/from16 v10, p6

    move v6, v0

    move-object v1, v14

    move-object/from16 v0, p0

    move-wide/from16 v37, v3

    move v4, v13

    move-wide/from16 v12, v37

    if-nez v5, :cond_6f

    move-wide v13, v12

    move-object/from16 v12, p2

    .line 287
    invoke-static {v12, v15, v10}, Ly4/k;->v0([BILcom/google/android/gms/internal/ads/SG;)I

    move-result v3

    move/from16 p3, v6

    iget-wide v5, v10, Lcom/google/android/gms/internal/ads/SG;->b:J

    .line 288
    invoke-static {v5, v6}, LE3/f;->H(J)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v11, v7, v8, v9, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 289
    invoke-virtual {v11, v7, v13, v14, v2}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :goto_44
    move/from16 v34, p3

    move v8, v3

    move v14, v4

    :goto_45
    move-object v13, v12

    goto :goto_43

    :cond_6f
    move-object/from16 v13, p2

    move v14, v4

    move/from16 v34, v6

    :goto_46
    move v4, v2

    :goto_47
    move-object v2, v1

    goto/16 :goto_51

    :pswitch_1c
    move-object/from16 v12, p2

    move-object/from16 v10, p6

    move/from16 p3, v0

    move-object v1, v14

    move-object/from16 v0, p0

    move-wide/from16 v37, v3

    move v4, v13

    move-wide/from16 v13, v37

    if-nez v5, :cond_70

    .line 290
    invoke-static {v12, v15, v10}, Ly4/k;->s0([BILcom/google/android/gms/internal/ads/SG;)I

    move-result v3

    iget v5, v10, Lcom/google/android/gms/internal/ads/SG;->a:I

    .line 291
    invoke-static {v5}, LE3/f;->G(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v11, v7, v8, v9, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 292
    invoke-virtual {v11, v7, v13, v14, v2}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_44

    :cond_70
    move/from16 v34, p3

    move v14, v4

    :goto_48
    move-object v13, v12

    goto :goto_46

    :pswitch_1d
    move-object/from16 v12, p2

    move-object/from16 v10, p6

    move/from16 p3, v0

    move-object v1, v14

    move-object/from16 v0, p0

    move-wide/from16 v37, v3

    move v4, v13

    move-wide/from16 v13, v37

    if-nez v5, :cond_70

    .line 293
    invoke-static {v12, v15, v10}, Ly4/k;->s0([BILcom/google/android/gms/internal/ads/SG;)I

    move-result v3

    iget v5, v10, Lcom/google/android/gms/internal/ads/SG;->a:I

    .line 294
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/measurement/R2;->v(I)Lcom/google/android/gms/internal/measurement/v2;

    move-result-object v6

    if-eqz v6, :cond_71

    invoke-interface {v6, v5}, Lcom/google/android/gms/internal/measurement/v2;->zza(I)Z

    move-result v6

    if-eqz v6, :cond_72

    :cond_71
    move/from16 v6, p3

    goto :goto_49

    .line 295
    :cond_72
    move-object v6, v7

    check-cast v6, Lcom/google/android/gms/internal/measurement/s2;

    iget-object v8, v6, Lcom/google/android/gms/internal/measurement/s2;->zzc:Lcom/google/android/gms/internal/measurement/b3;

    if-ne v8, v1, :cond_73

    invoke-static {}, Lcom/google/android/gms/internal/measurement/b3;->b()Lcom/google/android/gms/internal/measurement/b3;

    move-result-object v8

    .line 296
    iput-object v8, v6, Lcom/google/android/gms/internal/measurement/s2;->zzc:Lcom/google/android/gms/internal/measurement/b3;

    :cond_73
    int-to-long v5, v5

    .line 297
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move/from16 v6, p3

    invoke-virtual {v8, v6, v5}, Lcom/google/android/gms/internal/measurement/b3;->c(ILjava/lang/Object;)V

    goto :goto_4a

    .line 298
    :goto_49
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v11, v7, v8, v9, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 299
    invoke-virtual {v11, v7, v13, v14, v2}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :goto_4a
    move v8, v3

    move v14, v4

    :goto_4b
    move/from16 v34, v6

    goto/16 :goto_45

    :pswitch_1e
    move-object/from16 v12, p2

    move-object/from16 v10, p6

    move v6, v0

    move-object v1, v14

    move-object/from16 v0, p0

    move-wide/from16 v37, v3

    move v4, v13

    move-wide/from16 v13, v37

    const/4 v3, 0x2

    if-ne v5, v3, :cond_74

    .line 300
    invoke-static {v12, v15, v10}, Ly4/k;->m0([BILcom/google/android/gms/internal/ads/SG;)I

    move-result v5

    iget-object v3, v10, Lcom/google/android/gms/internal/ads/SG;->c:Ljava/lang/Object;

    .line 301
    invoke-virtual {v11, v7, v8, v9, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 302
    invoke-virtual {v11, v7, v13, v14, v2}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    move v14, v4

    move v8, v5

    goto :goto_4b

    :cond_74
    move v14, v4

    move/from16 v34, v6

    goto :goto_48

    :pswitch_1f
    move-object/from16 v12, p2

    move-object/from16 v10, p6

    move v6, v0

    move v4, v13

    move-object v1, v14

    const/4 v3, 0x2

    move-object/from16 v0, p0

    if-ne v5, v3, :cond_75

    .line 303
    invoke-virtual {v0, v2, v7, v4}, Lcom/google/android/gms/internal/measurement/R2;->y(ILjava/lang/Object;I)Ljava/lang/Object;

    move-result-object v8

    .line 304
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/measurement/R2;->w(I)Lcom/google/android/gms/internal/measurement/Y2;

    move-result-object v3

    move-object v9, v1

    move-object v1, v8

    move v13, v2

    move-object v2, v3

    const v14, 0xfffff

    move-object/from16 v3, p2

    move v5, v4

    move v4, v15

    move v14, v5

    move/from16 v5, p4

    move/from16 v34, v6

    move-object/from16 v6, p6

    .line 305
    invoke-static/range {v1 .. v6}, Ly4/k;->x0(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/Y2;[BIILcom/google/android/gms/internal/ads/SG;)I

    move-result v1

    .line 306
    invoke-virtual {v0, v7, v13, v14, v8}, Lcom/google/android/gms/internal/measurement/R2;->i(Ljava/lang/Object;IILjava/lang/Object;)V

    move v8, v1

    move-object v2, v9

    move v4, v13

    move-object v13, v12

    goto/16 :goto_52

    :cond_75
    move v14, v4

    move/from16 v34, v6

    move v4, v2

    move-object v13, v12

    goto/16 :goto_47

    :pswitch_20
    move-object/from16 v10, p6

    move/from16 v34, v0

    move-wide/from16 v35, v3

    const/4 v3, 0x2

    const v6, 0xfffff

    move-object/from16 v0, p0

    move v4, v2

    move-object v2, v14

    move v14, v13

    move-object/from16 v13, p2

    if-ne v5, v3, :cond_7a

    .line 307
    invoke-static {v13, v15, v10}, Ly4/k;->s0([BILcom/google/android/gms/internal/ads/SG;)I

    move-result v5

    iget v3, v10, Lcom/google/android/gms/internal/ads/SG;->a:I

    if-nez v3, :cond_76

    .line 308
    invoke-virtual {v11, v7, v8, v9, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_4c
    move-wide/from16 v8, v35

    goto :goto_4e

    :cond_76
    and-int v1, v12, v26

    add-int v12, v5, v3

    if-eqz v1, :cond_78

    .line 309
    invoke-static {v5, v13, v12}, Lcom/google/android/gms/internal/measurement/i3;->d(I[BI)Z

    move-result v1

    if-eqz v1, :cond_77

    goto :goto_4d

    .line 310
    :cond_77
    new-instance v1, Lcom/google/android/gms/internal/measurement/B2;

    move-object/from16 v2, v32

    .line 311
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 312
    throw v1

    .line 313
    :cond_78
    :goto_4d
    new-instance v1, Ljava/lang/String;

    .line 314
    sget-object v6, Lcom/google/android/gms/internal/measurement/z2;->a:Ljava/nio/charset/Charset;

    invoke-direct {v1, v13, v5, v3, v6}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 315
    invoke-virtual {v11, v7, v8, v9, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move v5, v12

    goto :goto_4c

    .line 316
    :goto_4e
    invoke-virtual {v11, v7, v8, v9, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    move v8, v5

    goto/16 :goto_52

    :pswitch_21
    move-object/from16 v10, p6

    move/from16 v34, v0

    move-wide v0, v3

    move v4, v2

    move-object v2, v14

    move v14, v13

    move-object/from16 v13, p2

    if-nez v5, :cond_7a

    .line 317
    invoke-static {v13, v15, v10}, Ly4/k;->v0([BILcom/google/android/gms/internal/ads/SG;)I

    move-result v3

    iget-wide v5, v10, Lcom/google/android/gms/internal/ads/SG;->b:J

    cmp-long v12, v5, v27

    if-eqz v12, :cond_79

    const/4 v5, 0x1

    goto :goto_4f

    :cond_79
    const/4 v5, 0x0

    .line 318
    :goto_4f
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v11, v7, v8, v9, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 319
    invoke-virtual {v11, v7, v0, v1, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :goto_50
    move v8, v3

    goto/16 :goto_52

    :pswitch_22
    move-object/from16 v10, p6

    move/from16 v34, v0

    move-wide v0, v3

    const/4 v3, 0x5

    move v4, v2

    move-object v2, v14

    move v14, v13

    move-object/from16 v13, p2

    if-ne v5, v3, :cond_7a

    add-int/lit8 v3, v15, 0x4

    .line 320
    invoke-static {v13, v15}, Ly4/k;->n0([BI)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v11, v7, v8, v9, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 321
    invoke-virtual {v11, v7, v0, v1, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_50

    :pswitch_23
    move-object/from16 v10, p6

    move/from16 v34, v0

    move-wide v0, v3

    const/4 v3, 0x1

    move v4, v2

    move-object v2, v14

    move v14, v13

    move-object/from16 v13, p2

    if-ne v5, v3, :cond_7a

    add-int/lit8 v3, v15, 0x8

    .line 322
    invoke-static {v13, v15}, Ly4/k;->y0([BI)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v11, v7, v8, v9, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 323
    invoke-virtual {v11, v7, v0, v1, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_50

    :pswitch_24
    move-object/from16 v10, p6

    move/from16 v34, v0

    move-wide v0, v3

    move v4, v2

    move-object v2, v14

    move v14, v13

    move-object/from16 v13, p2

    if-nez v5, :cond_7a

    .line 324
    invoke-static {v13, v15, v10}, Ly4/k;->s0([BILcom/google/android/gms/internal/ads/SG;)I

    move-result v3

    iget v5, v10, Lcom/google/android/gms/internal/ads/SG;->a:I

    .line 325
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v11, v7, v8, v9, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 326
    invoke-virtual {v11, v7, v0, v1, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_50

    :pswitch_25
    move-object/from16 v10, p6

    move/from16 v34, v0

    move-wide v0, v3

    move v4, v2

    move-object v2, v14

    move v14, v13

    move-object/from16 v13, p2

    if-nez v5, :cond_7a

    .line 327
    invoke-static {v13, v15, v10}, Ly4/k;->v0([BILcom/google/android/gms/internal/ads/SG;)I

    move-result v3

    iget-wide v5, v10, Lcom/google/android/gms/internal/ads/SG;->b:J

    .line 328
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v11, v7, v8, v9, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 329
    invoke-virtual {v11, v7, v0, v1, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_50

    :pswitch_26
    move-object/from16 v10, p6

    move/from16 v34, v0

    move-wide v0, v3

    const/4 v3, 0x5

    move v4, v2

    move-object v2, v14

    move v14, v13

    move-object/from16 v13, p2

    if-ne v5, v3, :cond_7a

    add-int/lit8 v3, v15, 0x4

    .line 330
    invoke-static {v13, v15}, Ly4/k;->n0([BI)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v5

    .line 331
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v11, v7, v8, v9, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 332
    invoke-virtual {v11, v7, v0, v1, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_50

    :pswitch_27
    move-object/from16 v10, p6

    move/from16 v34, v0

    move-wide v0, v3

    const/4 v3, 0x1

    move v4, v2

    move-object v2, v14

    move v14, v13

    move-object/from16 v13, p2

    if-ne v5, v3, :cond_7a

    add-int/lit8 v3, v15, 0x8

    .line 333
    invoke-static {v13, v15}, Ly4/k;->y0([BI)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v5

    .line 334
    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v11, v7, v8, v9, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 335
    invoke-virtual {v11, v7, v0, v1, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_50

    :cond_7a
    :goto_51
    move v8, v15

    :goto_52
    if-eq v8, v15, :cond_7b

    move-object/from16 v0, p0

    move/from16 v5, p4

    move/from16 v6, p5

    move v9, v4

    move-object v3, v10

    move-object v15, v13

    move v10, v14

    move/from16 v11, v31

    move/from16 v17, v34

    const/4 v1, 0x3

    const/4 v13, 0x1

    goto/16 :goto_0

    :cond_7b
    move/from16 v0, p5

    move v3, v8

    move/from16 v8, v34

    :goto_53
    if-ne v8, v0, :cond_7c

    if-eqz v0, :cond_7c

    move/from16 v2, v16

    move/from16 v1, v31

    const v12, 0xfffff

    move/from16 v37, v8

    move v8, v3

    move/from16 v3, v37

    goto :goto_54

    .line 336
    :cond_7c
    move-object v1, v7

    check-cast v1, Lcom/google/android/gms/internal/measurement/s2;

    iget-object v5, v1, Lcom/google/android/gms/internal/measurement/s2;->zzc:Lcom/google/android/gms/internal/measurement/b3;

    if-ne v5, v2, :cond_7d

    invoke-static {}, Lcom/google/android/gms/internal/measurement/b3;->b()Lcom/google/android/gms/internal/measurement/b3;

    move-result-object v2

    .line 337
    iput-object v2, v1, Lcom/google/android/gms/internal/measurement/s2;->zzc:Lcom/google/android/gms/internal/measurement/b3;

    move-object v5, v2

    :cond_7d
    move v1, v8

    move-object/from16 v2, p2

    const/4 v9, 0x2

    move v11, v4

    move/from16 v4, p4

    const v12, 0xfffff

    move-object/from16 v6, p6

    .line 338
    invoke-static/range {v1 .. v6}, Ly4/k;->r0(I[BIILcom/google/android/gms/internal/measurement/b3;Lcom/google/android/gms/internal/ads/SG;)I

    move-result v1

    move/from16 v5, p4

    move v6, v0

    move/from16 v17, v8

    move-object v3, v10

    move v9, v11

    move-object v15, v13

    move v10, v14

    move/from16 v11, v31

    const/4 v13, 0x1

    move-object/from16 v0, p0

    move v8, v1

    const/4 v1, 0x3

    goto/16 :goto_0

    :cond_7e
    move v0, v6

    move/from16 v31, v11

    move-object/from16 v18, v12

    move-object/from16 v19, v14

    const v12, 0xfffff

    move-object v11, v2

    move/from16 v2, v16

    move/from16 v3, v17

    move/from16 v1, v31

    :goto_54
    if-eq v1, v12, :cond_7f

    int-to-long v4, v1

    .line 339
    invoke-virtual {v11, v7, v4, v5, v2}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_7f
    move-object/from16 v1, p0

    iget v2, v1, Lcom/google/android/gms/internal/measurement/R2;->g:I

    :goto_55
    iget v4, v1, Lcom/google/android/gms/internal/measurement/R2;->h:I

    if-ge v2, v4, :cond_82

    iget-object v4, v1, Lcom/google/android/gms/internal/measurement/R2;->f:[I

    .line 340
    aget v4, v4, v2

    .line 341
    aget v5, v18, v4

    .line 342
    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/measurement/R2;->t(I)I

    move-result v5

    and-int/2addr v5, v12

    int-to-long v5, v5

    .line 343
    invoke-static {v7, v5, v6}, Lcom/google/android/gms/internal/measurement/g3;->i(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_80

    :goto_56
    const/4 v6, 0x1

    goto :goto_57

    .line 344
    :cond_80
    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/measurement/R2;->v(I)Lcom/google/android/gms/internal/measurement/v2;

    move-result-object v6

    if-nez v6, :cond_81

    goto :goto_56

    :goto_57
    add-int/2addr v2, v6

    goto :goto_55

    .line 345
    :cond_81
    check-cast v5, Lcom/google/android/gms/internal/measurement/L2;

    const/4 v0, 0x3

    .line 346
    div-int/2addr v4, v0

    add-int/2addr v4, v4

    aget-object v0, v19, v4

    .line 347
    invoke-static {v0}, LA0/O;->I(Ljava/lang/Object;)V

    .line 348
    throw v20

    .line 349
    :cond_82
    const-string v2, "Failed to parse the message."

    if-nez v0, :cond_84

    move/from16 v4, p4

    if-ne v8, v4, :cond_83

    goto :goto_58

    :cond_83
    new-instance v0, Lcom/google/android/gms/internal/measurement/B2;

    .line 350
    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 351
    throw v0

    :cond_84
    move/from16 v4, p4

    if-gt v8, v4, :cond_85

    if-ne v3, v0, :cond_85

    :goto_58
    return v8

    :cond_85
    new-instance v0, Lcom/google/android/gms/internal/measurement/B2;

    .line 352
    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 353
    throw v0

    :cond_86
    move-object v1, v0

    .line 354
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 355
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Mutating immutable message: "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_9
        :pswitch_2
        :pswitch_7
        :pswitch_8
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x12
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_16
        :pswitch_f
        :pswitch_14
        :pswitch_15
        :pswitch_e
        :pswitch_d
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_16
        :pswitch_f
        :pswitch_14
        :pswitch_15
        :pswitch_e
        :pswitch_d
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x33
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_24
        :pswitch_1d
        :pswitch_22
        :pswitch_23
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
    .end packed-switch
.end method

.method public final r(II)I
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/R2;->a:[I

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    div-int/lit8 v1, v1, 0x3

    .line 5
    .line 6
    const/4 v2, -0x1

    .line 7
    add-int/2addr v1, v2

    .line 8
    :goto_0
    if-gt p2, v1, :cond_2

    .line 9
    .line 10
    add-int v3, v1, p2

    .line 11
    .line 12
    ushr-int/lit8 v3, v3, 0x1

    .line 13
    .line 14
    mul-int/lit8 v4, v3, 0x3

    .line 15
    .line 16
    aget v5, v0, v4

    .line 17
    .line 18
    if-ne p1, v5, :cond_0

    .line 19
    .line 20
    return v4

    .line 21
    :cond_0
    if-ge p1, v5, :cond_1

    .line 22
    .line 23
    add-int/lit8 v1, v3, -0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    add-int/lit8 p2, v3, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_2
    return v2
.end method

.method public final t(I)I
    .locals 1

    .line 1
    add-int/lit8 p1, p1, 0x1

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/R2;->a:[I

    .line 4
    .line 5
    aget p1, v0, p1

    .line 6
    .line 7
    return p1
.end method

.method public final v(I)Lcom/google/android/gms/internal/measurement/v2;
    .locals 1

    .line 1
    div-int/lit8 p1, p1, 0x3

    .line 2
    .line 3
    add-int/2addr p1, p1

    .line 4
    add-int/lit8 p1, p1, 0x1

    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/R2;->b:[Ljava/lang/Object;

    .line 7
    .line 8
    aget-object p1, v0, p1

    .line 9
    .line 10
    check-cast p1, Lcom/google/android/gms/internal/measurement/v2;

    .line 11
    .line 12
    return-object p1
.end method

.method public final w(I)Lcom/google/android/gms/internal/measurement/Y2;
    .locals 3

    .line 1
    div-int/lit8 p1, p1, 0x3

    .line 2
    .line 3
    add-int/2addr p1, p1

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/R2;->b:[Ljava/lang/Object;

    .line 5
    .line 6
    aget-object v1, v0, p1

    .line 7
    .line 8
    check-cast v1, Lcom/google/android/gms/internal/measurement/Y2;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    return-object v1

    .line 13
    :cond_0
    add-int/lit8 v1, p1, 0x1

    .line 14
    .line 15
    sget-object v2, Lcom/google/android/gms/internal/measurement/V2;->c:Lcom/google/android/gms/internal/measurement/V2;

    .line 16
    .line 17
    aget-object v1, v0, v1

    .line 18
    .line 19
    check-cast v1, Ljava/lang/Class;

    .line 20
    .line 21
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/measurement/V2;->a(Ljava/lang/Class;)Lcom/google/android/gms/internal/measurement/Y2;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    aput-object v1, v0, p1

    .line 26
    .line 27
    return-object v1
.end method

.method public final x(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/R2;->w(I)Lcom/google/android/gms/internal/measurement/Y2;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/R2;->t(I)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const v2, 0xfffff

    .line 10
    .line 11
    .line 12
    and-int/2addr v1, v2

    .line 13
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/R2;->k(ILjava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/Y2;->zze()Lcom/google/android/gms/internal/measurement/s2;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    return-object p1

    .line 24
    :cond_0
    int-to-long v1, v1

    .line 25
    sget-object p1, Lcom/google/android/gms/internal/measurement/R2;->k:Lsun/misc/Unsafe;

    .line 26
    .line 27
    invoke-virtual {p1, p2, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/R2;->m(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result p2

    .line 35
    if-eqz p2, :cond_1

    .line 36
    .line 37
    return-object p1

    .line 38
    :cond_1
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/Y2;->zze()Lcom/google/android/gms/internal/measurement/s2;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    if-eqz p1, :cond_2

    .line 43
    .line 44
    invoke-interface {v0, p2, p1}, Lcom/google/android/gms/internal/measurement/Y2;->zzg(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    :cond_2
    return-object p2
.end method

.method public final y(ILjava/lang/Object;I)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/measurement/R2;->w(I)Lcom/google/android/gms/internal/measurement/Y2;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/R2;->n(ILjava/lang/Object;I)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/Y2;->zze()Lcom/google/android/gms/internal/measurement/s2;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1

    .line 16
    :cond_0
    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/measurement/R2;->t(I)I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    const p3, 0xfffff

    .line 21
    .line 22
    .line 23
    and-int/2addr p1, p3

    .line 24
    int-to-long v1, p1

    .line 25
    sget-object p1, Lcom/google/android/gms/internal/measurement/R2;->k:Lsun/misc/Unsafe;

    .line 26
    .line 27
    invoke-virtual {p1, p2, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/R2;->m(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result p2

    .line 35
    if-eqz p2, :cond_1

    .line 36
    .line 37
    return-object p1

    .line 38
    :cond_1
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/Y2;->zze()Lcom/google/android/gms/internal/measurement/s2;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    if-eqz p1, :cond_2

    .line 43
    .line 44
    invoke-interface {v0, p2, p1}, Lcom/google/android/gms/internal/measurement/Y2;->zzg(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    :cond_2
    return-object p2
.end method

.method public final zza(Ljava/lang/Object;)I
    .locals 18

    .line 1
    move-object/from16 v6, p0

    .line 2
    .line 3
    move-object/from16 v7, p1

    .line 4
    .line 5
    const v9, 0xfffff

    .line 6
    .line 7
    .line 8
    const v0, 0xfffff

    .line 9
    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    const/4 v10, 0x0

    .line 13
    const/4 v11, 0x0

    .line 14
    :goto_0
    iget-object v2, v6, Lcom/google/android/gms/internal/measurement/R2;->a:[I

    .line 15
    .line 16
    array-length v3, v2

    .line 17
    if-ge v10, v3, :cond_18

    .line 18
    .line 19
    invoke-virtual {v6, v10}, Lcom/google/android/gms/internal/measurement/R2;->t(I)I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/R2;->s(I)I

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    aget v12, v2, v10

    .line 28
    .line 29
    add-int/lit8 v5, v10, 0x2

    .line 30
    .line 31
    aget v2, v2, v5

    .line 32
    .line 33
    and-int v5, v2, v9

    .line 34
    .line 35
    const/4 v13, 0x1

    .line 36
    const/16 v14, 0x11

    .line 37
    .line 38
    sget-object v15, Lcom/google/android/gms/internal/measurement/R2;->k:Lsun/misc/Unsafe;

    .line 39
    .line 40
    if-gt v4, v14, :cond_2

    .line 41
    .line 42
    if-eq v5, v0, :cond_1

    .line 43
    .line 44
    if-ne v5, v9, :cond_0

    .line 45
    .line 46
    const/4 v1, 0x0

    .line 47
    goto :goto_1

    .line 48
    :cond_0
    int-to-long v0, v5

    .line 49
    invoke-virtual {v15, v7, v0, v1}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    move v1, v0

    .line 54
    :goto_1
    move v0, v5

    .line 55
    :cond_1
    ushr-int/lit8 v2, v2, 0x14

    .line 56
    .line 57
    shl-int v2, v13, v2

    .line 58
    .line 59
    move v14, v0

    .line 60
    move/from16 v16, v1

    .line 61
    .line 62
    move v5, v2

    .line 63
    goto :goto_2

    .line 64
    :cond_2
    move v14, v0

    .line 65
    move/from16 v16, v1

    .line 66
    .line 67
    const/4 v5, 0x0

    .line 68
    :goto_2
    and-int v0, v3, v9

    .line 69
    .line 70
    sget-object v1, Lcom/google/android/gms/internal/measurement/o2;->H:Lcom/google/android/gms/internal/measurement/o2;

    .line 71
    .line 72
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/o2;->zza()I

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    if-lt v4, v1, :cond_3

    .line 77
    .line 78
    sget-object v1, Lcom/google/android/gms/internal/measurement/o2;->I:Lcom/google/android/gms/internal/measurement/o2;

    .line 79
    .line 80
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 81
    .line 82
    .line 83
    :cond_3
    int-to-long v2, v0

    .line 84
    const/16 v17, 0x3f

    .line 85
    .line 86
    const/4 v1, 0x4

    .line 87
    const/16 v0, 0x8

    .line 88
    .line 89
    packed-switch v4, :pswitch_data_0

    .line 90
    .line 91
    .line 92
    goto/16 :goto_12

    .line 93
    .line 94
    :pswitch_0
    invoke-virtual {v6, v12, v7, v10}, Lcom/google/android/gms/internal/measurement/R2;->n(ILjava/lang/Object;I)Z

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    if-eqz v0, :cond_17

    .line 99
    .line 100
    invoke-virtual {v15, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    check-cast v0, Lcom/google/android/gms/internal/measurement/P2;

    .line 105
    .line 106
    invoke-virtual {v6, v10}, Lcom/google/android/gms/internal/measurement/R2;->w(I)Lcom/google/android/gms/internal/measurement/Y2;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    invoke-static {v12, v0, v1}, Lcom/google/android/gms/internal/measurement/k2;->D(ILcom/google/android/gms/internal/measurement/P2;Lcom/google/android/gms/internal/measurement/Y2;)I

    .line 111
    .line 112
    .line 113
    move-result v0

    .line 114
    :goto_3
    add-int/2addr v11, v0

    .line 115
    goto/16 :goto_12

    .line 116
    .line 117
    :pswitch_1
    invoke-virtual {v6, v12, v7, v10}, Lcom/google/android/gms/internal/measurement/R2;->n(ILjava/lang/Object;I)Z

    .line 118
    .line 119
    .line 120
    move-result v0

    .line 121
    if-eqz v0, :cond_17

    .line 122
    .line 123
    shl-int/lit8 v0, v12, 0x3

    .line 124
    .line 125
    invoke-static {v7, v2, v3}, Lcom/google/android/gms/internal/measurement/R2;->u(Ljava/lang/Object;J)J

    .line 126
    .line 127
    .line 128
    move-result-wide v1

    .line 129
    add-long v3, v1, v1

    .line 130
    .line 131
    shr-long v1, v1, v17

    .line 132
    .line 133
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/k2;->G(I)I

    .line 134
    .line 135
    .line 136
    move-result v0

    .line 137
    xor-long/2addr v1, v3

    .line 138
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/measurement/k2;->o(J)I

    .line 139
    .line 140
    .line 141
    move-result v1

    .line 142
    :goto_4
    add-int/2addr v1, v0

    .line 143
    add-int/2addr v11, v1

    .line 144
    goto/16 :goto_12

    .line 145
    .line 146
    :pswitch_2
    invoke-virtual {v6, v12, v7, v10}, Lcom/google/android/gms/internal/measurement/R2;->n(ILjava/lang/Object;I)Z

    .line 147
    .line 148
    .line 149
    move-result v0

    .line 150
    if-eqz v0, :cond_17

    .line 151
    .line 152
    shl-int/lit8 v0, v12, 0x3

    .line 153
    .line 154
    invoke-static {v7, v2, v3}, Lcom/google/android/gms/internal/measurement/R2;->q(Ljava/lang/Object;J)I

    .line 155
    .line 156
    .line 157
    move-result v1

    .line 158
    add-int v2, v1, v1

    .line 159
    .line 160
    shr-int/lit8 v1, v1, 0x1f

    .line 161
    .line 162
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/k2;->G(I)I

    .line 163
    .line 164
    .line 165
    move-result v0

    .line 166
    xor-int/2addr v1, v2

    .line 167
    invoke-static {v1, v0, v11}, Lcom/google/android/gms/internal/ads/uc;->z(III)I

    .line 168
    .line 169
    .line 170
    move-result v11

    .line 171
    goto/16 :goto_12

    .line 172
    .line 173
    :pswitch_3
    invoke-virtual {v6, v12, v7, v10}, Lcom/google/android/gms/internal/measurement/R2;->n(ILjava/lang/Object;I)Z

    .line 174
    .line 175
    .line 176
    move-result v1

    .line 177
    if-eqz v1, :cond_17

    .line 178
    .line 179
    shl-int/lit8 v1, v12, 0x3

    .line 180
    .line 181
    invoke-static {v1, v0, v11}, Lcom/google/android/gms/internal/ads/uc;->z(III)I

    .line 182
    .line 183
    .line 184
    move-result v11

    .line 185
    goto/16 :goto_12

    .line 186
    .line 187
    :pswitch_4
    invoke-virtual {v6, v12, v7, v10}, Lcom/google/android/gms/internal/measurement/R2;->n(ILjava/lang/Object;I)Z

    .line 188
    .line 189
    .line 190
    move-result v0

    .line 191
    if-eqz v0, :cond_17

    .line 192
    .line 193
    shl-int/lit8 v0, v12, 0x3

    .line 194
    .line 195
    invoke-static {v0, v1, v11}, Lcom/google/android/gms/internal/ads/uc;->z(III)I

    .line 196
    .line 197
    .line 198
    move-result v11

    .line 199
    goto/16 :goto_12

    .line 200
    .line 201
    :pswitch_5
    invoke-virtual {v6, v12, v7, v10}, Lcom/google/android/gms/internal/measurement/R2;->n(ILjava/lang/Object;I)Z

    .line 202
    .line 203
    .line 204
    move-result v0

    .line 205
    if-eqz v0, :cond_17

    .line 206
    .line 207
    shl-int/lit8 v0, v12, 0x3

    .line 208
    .line 209
    invoke-static {v7, v2, v3}, Lcom/google/android/gms/internal/measurement/R2;->q(Ljava/lang/Object;J)I

    .line 210
    .line 211
    .line 212
    move-result v1

    .line 213
    int-to-long v1, v1

    .line 214
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/k2;->G(I)I

    .line 215
    .line 216
    .line 217
    move-result v0

    .line 218
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/measurement/k2;->o(J)I

    .line 219
    .line 220
    .line 221
    move-result v1

    .line 222
    goto :goto_4

    .line 223
    :pswitch_6
    invoke-virtual {v6, v12, v7, v10}, Lcom/google/android/gms/internal/measurement/R2;->n(ILjava/lang/Object;I)Z

    .line 224
    .line 225
    .line 226
    move-result v0

    .line 227
    if-eqz v0, :cond_17

    .line 228
    .line 229
    shl-int/lit8 v0, v12, 0x3

    .line 230
    .line 231
    invoke-static {v7, v2, v3}, Lcom/google/android/gms/internal/measurement/R2;->q(Ljava/lang/Object;J)I

    .line 232
    .line 233
    .line 234
    move-result v1

    .line 235
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/k2;->G(I)I

    .line 236
    .line 237
    .line 238
    move-result v0

    .line 239
    invoke-static {v1, v0, v11}, Lcom/google/android/gms/internal/ads/uc;->z(III)I

    .line 240
    .line 241
    .line 242
    move-result v11

    .line 243
    goto/16 :goto_12

    .line 244
    .line 245
    :pswitch_7
    invoke-virtual {v6, v12, v7, v10}, Lcom/google/android/gms/internal/measurement/R2;->n(ILjava/lang/Object;I)Z

    .line 246
    .line 247
    .line 248
    move-result v0

    .line 249
    if-eqz v0, :cond_17

    .line 250
    .line 251
    shl-int/lit8 v0, v12, 0x3

    .line 252
    .line 253
    invoke-virtual {v15, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 254
    .line 255
    .line 256
    move-result-object v1

    .line 257
    check-cast v1, Lcom/google/android/gms/internal/measurement/i2;

    .line 258
    .line 259
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/k2;->G(I)I

    .line 260
    .line 261
    .line 262
    move-result v0

    .line 263
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/i2;->n()I

    .line 264
    .line 265
    .line 266
    move-result v1

    .line 267
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/k2;->G(I)I

    .line 268
    .line 269
    .line 270
    move-result v2

    .line 271
    :goto_5
    add-int/2addr v2, v1

    .line 272
    add-int/2addr v2, v0

    .line 273
    add-int/2addr v11, v2

    .line 274
    goto/16 :goto_12

    .line 275
    .line 276
    :pswitch_8
    invoke-virtual {v6, v12, v7, v10}, Lcom/google/android/gms/internal/measurement/R2;->n(ILjava/lang/Object;I)Z

    .line 277
    .line 278
    .line 279
    move-result v0

    .line 280
    if-eqz v0, :cond_17

    .line 281
    .line 282
    invoke-virtual {v15, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 283
    .line 284
    .line 285
    move-result-object v0

    .line 286
    invoke-virtual {v6, v10}, Lcom/google/android/gms/internal/measurement/R2;->w(I)Lcom/google/android/gms/internal/measurement/Y2;

    .line 287
    .line 288
    .line 289
    move-result-object v1

    .line 290
    invoke-static {v12, v1, v0}, Lcom/google/android/gms/internal/measurement/Z2;->m(ILcom/google/android/gms/internal/measurement/Y2;Ljava/lang/Object;)I

    .line 291
    .line 292
    .line 293
    move-result v0

    .line 294
    goto/16 :goto_3

    .line 295
    .line 296
    :pswitch_9
    invoke-virtual {v6, v12, v7, v10}, Lcom/google/android/gms/internal/measurement/R2;->n(ILjava/lang/Object;I)Z

    .line 297
    .line 298
    .line 299
    move-result v0

    .line 300
    if-eqz v0, :cond_17

    .line 301
    .line 302
    shl-int/lit8 v0, v12, 0x3

    .line 303
    .line 304
    invoke-virtual {v15, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 305
    .line 306
    .line 307
    move-result-object v1

    .line 308
    instance-of v2, v1, Lcom/google/android/gms/internal/measurement/i2;

    .line 309
    .line 310
    if-eqz v2, :cond_4

    .line 311
    .line 312
    check-cast v1, Lcom/google/android/gms/internal/measurement/i2;

    .line 313
    .line 314
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/k2;->G(I)I

    .line 315
    .line 316
    .line 317
    move-result v0

    .line 318
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/i2;->n()I

    .line 319
    .line 320
    .line 321
    move-result v1

    .line 322
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/k2;->G(I)I

    .line 323
    .line 324
    .line 325
    move-result v2

    .line 326
    goto :goto_5

    .line 327
    :cond_4
    check-cast v1, Ljava/lang/String;

    .line 328
    .line 329
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/k2;->G(I)I

    .line 330
    .line 331
    .line 332
    move-result v0

    .line 333
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/k2;->F(Ljava/lang/String;)I

    .line 334
    .line 335
    .line 336
    move-result v1

    .line 337
    goto/16 :goto_4

    .line 338
    .line 339
    :pswitch_a
    invoke-virtual {v6, v12, v7, v10}, Lcom/google/android/gms/internal/measurement/R2;->n(ILjava/lang/Object;I)Z

    .line 340
    .line 341
    .line 342
    move-result v0

    .line 343
    if-eqz v0, :cond_17

    .line 344
    .line 345
    shl-int/lit8 v0, v12, 0x3

    .line 346
    .line 347
    invoke-static {v0, v13, v11}, Lcom/google/android/gms/internal/ads/uc;->z(III)I

    .line 348
    .line 349
    .line 350
    move-result v11

    .line 351
    goto/16 :goto_12

    .line 352
    .line 353
    :pswitch_b
    invoke-virtual {v6, v12, v7, v10}, Lcom/google/android/gms/internal/measurement/R2;->n(ILjava/lang/Object;I)Z

    .line 354
    .line 355
    .line 356
    move-result v0

    .line 357
    if-eqz v0, :cond_17

    .line 358
    .line 359
    shl-int/lit8 v0, v12, 0x3

    .line 360
    .line 361
    invoke-static {v0, v1, v11}, Lcom/google/android/gms/internal/ads/uc;->z(III)I

    .line 362
    .line 363
    .line 364
    move-result v11

    .line 365
    goto/16 :goto_12

    .line 366
    .line 367
    :pswitch_c
    invoke-virtual {v6, v12, v7, v10}, Lcom/google/android/gms/internal/measurement/R2;->n(ILjava/lang/Object;I)Z

    .line 368
    .line 369
    .line 370
    move-result v1

    .line 371
    if-eqz v1, :cond_17

    .line 372
    .line 373
    shl-int/lit8 v1, v12, 0x3

    .line 374
    .line 375
    invoke-static {v1, v0, v11}, Lcom/google/android/gms/internal/ads/uc;->z(III)I

    .line 376
    .line 377
    .line 378
    move-result v11

    .line 379
    goto/16 :goto_12

    .line 380
    .line 381
    :pswitch_d
    invoke-virtual {v6, v12, v7, v10}, Lcom/google/android/gms/internal/measurement/R2;->n(ILjava/lang/Object;I)Z

    .line 382
    .line 383
    .line 384
    move-result v0

    .line 385
    if-eqz v0, :cond_17

    .line 386
    .line 387
    shl-int/lit8 v0, v12, 0x3

    .line 388
    .line 389
    invoke-static {v7, v2, v3}, Lcom/google/android/gms/internal/measurement/R2;->q(Ljava/lang/Object;J)I

    .line 390
    .line 391
    .line 392
    move-result v1

    .line 393
    int-to-long v1, v1

    .line 394
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/k2;->G(I)I

    .line 395
    .line 396
    .line 397
    move-result v0

    .line 398
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/measurement/k2;->o(J)I

    .line 399
    .line 400
    .line 401
    move-result v1

    .line 402
    goto/16 :goto_4

    .line 403
    .line 404
    :pswitch_e
    invoke-virtual {v6, v12, v7, v10}, Lcom/google/android/gms/internal/measurement/R2;->n(ILjava/lang/Object;I)Z

    .line 405
    .line 406
    .line 407
    move-result v0

    .line 408
    if-eqz v0, :cond_17

    .line 409
    .line 410
    shl-int/lit8 v0, v12, 0x3

    .line 411
    .line 412
    invoke-static {v7, v2, v3}, Lcom/google/android/gms/internal/measurement/R2;->u(Ljava/lang/Object;J)J

    .line 413
    .line 414
    .line 415
    move-result-wide v1

    .line 416
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/k2;->G(I)I

    .line 417
    .line 418
    .line 419
    move-result v0

    .line 420
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/measurement/k2;->o(J)I

    .line 421
    .line 422
    .line 423
    move-result v1

    .line 424
    goto/16 :goto_4

    .line 425
    .line 426
    :pswitch_f
    invoke-virtual {v6, v12, v7, v10}, Lcom/google/android/gms/internal/measurement/R2;->n(ILjava/lang/Object;I)Z

    .line 427
    .line 428
    .line 429
    move-result v0

    .line 430
    if-eqz v0, :cond_17

    .line 431
    .line 432
    shl-int/lit8 v0, v12, 0x3

    .line 433
    .line 434
    invoke-static {v7, v2, v3}, Lcom/google/android/gms/internal/measurement/R2;->u(Ljava/lang/Object;J)J

    .line 435
    .line 436
    .line 437
    move-result-wide v1

    .line 438
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/k2;->G(I)I

    .line 439
    .line 440
    .line 441
    move-result v0

    .line 442
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/measurement/k2;->o(J)I

    .line 443
    .line 444
    .line 445
    move-result v1

    .line 446
    goto/16 :goto_4

    .line 447
    .line 448
    :pswitch_10
    invoke-virtual {v6, v12, v7, v10}, Lcom/google/android/gms/internal/measurement/R2;->n(ILjava/lang/Object;I)Z

    .line 449
    .line 450
    .line 451
    move-result v0

    .line 452
    if-eqz v0, :cond_17

    .line 453
    .line 454
    shl-int/lit8 v0, v12, 0x3

    .line 455
    .line 456
    invoke-static {v0, v1, v11}, Lcom/google/android/gms/internal/ads/uc;->z(III)I

    .line 457
    .line 458
    .line 459
    move-result v11

    .line 460
    goto/16 :goto_12

    .line 461
    .line 462
    :pswitch_11
    invoke-virtual {v6, v12, v7, v10}, Lcom/google/android/gms/internal/measurement/R2;->n(ILjava/lang/Object;I)Z

    .line 463
    .line 464
    .line 465
    move-result v1

    .line 466
    if-eqz v1, :cond_17

    .line 467
    .line 468
    shl-int/lit8 v1, v12, 0x3

    .line 469
    .line 470
    invoke-static {v1, v0, v11}, Lcom/google/android/gms/internal/ads/uc;->z(III)I

    .line 471
    .line 472
    .line 473
    move-result v11

    .line 474
    goto/16 :goto_12

    .line 475
    .line 476
    :pswitch_12
    invoke-virtual {v15, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 477
    .line 478
    .line 479
    move-result-object v0

    .line 480
    div-int/lit8 v1, v10, 0x3

    .line 481
    .line 482
    iget-object v2, v6, Lcom/google/android/gms/internal/measurement/R2;->b:[Ljava/lang/Object;

    .line 483
    .line 484
    add-int/2addr v1, v1

    .line 485
    aget-object v1, v2, v1

    .line 486
    .line 487
    check-cast v0, Lcom/google/android/gms/internal/measurement/L2;

    .line 488
    .line 489
    invoke-static {v1}, LA0/O;->I(Ljava/lang/Object;)V

    .line 490
    .line 491
    .line 492
    invoke-virtual {v0}, Ljava/util/AbstractMap;->isEmpty()Z

    .line 493
    .line 494
    .line 495
    move-result v1

    .line 496
    if-nez v1, :cond_17

    .line 497
    .line 498
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/L2;->entrySet()Ljava/util/Set;

    .line 499
    .line 500
    .line 501
    move-result-object v0

    .line 502
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 503
    .line 504
    .line 505
    move-result-object v0

    .line 506
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 507
    .line 508
    .line 509
    move-result v1

    .line 510
    if-nez v1, :cond_5

    .line 511
    .line 512
    goto/16 :goto_12

    .line 513
    .line 514
    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 515
    .line 516
    .line 517
    move-result-object v0

    .line 518
    check-cast v0, Ljava/util/Map$Entry;

    .line 519
    .line 520
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 521
    .line 522
    .line 523
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 524
    .line 525
    .line 526
    const/4 v0, 0x0

    .line 527
    throw v0

    .line 528
    :pswitch_13
    invoke-virtual {v15, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 529
    .line 530
    .line 531
    move-result-object v0

    .line 532
    check-cast v0, Ljava/util/List;

    .line 533
    .line 534
    invoke-virtual {v6, v10}, Lcom/google/android/gms/internal/measurement/R2;->w(I)Lcom/google/android/gms/internal/measurement/Y2;

    .line 535
    .line 536
    .line 537
    move-result-object v1

    .line 538
    sget-object v2, Lcom/google/android/gms/internal/measurement/Z2;->a:Lcom/google/android/gms/internal/measurement/q2;

    .line 539
    .line 540
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 541
    .line 542
    .line 543
    move-result v2

    .line 544
    if-nez v2, :cond_6

    .line 545
    .line 546
    const/4 v4, 0x0

    .line 547
    goto :goto_7

    .line 548
    :cond_6
    const/4 v3, 0x0

    .line 549
    const/4 v4, 0x0

    .line 550
    :goto_6
    if-ge v3, v2, :cond_7

    .line 551
    .line 552
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 553
    .line 554
    .line 555
    move-result-object v5

    .line 556
    check-cast v5, Lcom/google/android/gms/internal/measurement/P2;

    .line 557
    .line 558
    invoke-static {v12, v5, v1}, Lcom/google/android/gms/internal/measurement/k2;->D(ILcom/google/android/gms/internal/measurement/P2;Lcom/google/android/gms/internal/measurement/Y2;)I

    .line 559
    .line 560
    .line 561
    move-result v5

    .line 562
    add-int/2addr v4, v5

    .line 563
    add-int/lit8 v3, v3, 0x1

    .line 564
    .line 565
    goto :goto_6

    .line 566
    :cond_7
    :goto_7
    add-int/2addr v11, v4

    .line 567
    goto/16 :goto_12

    .line 568
    .line 569
    :pswitch_14
    invoke-virtual {v15, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 570
    .line 571
    .line 572
    move-result-object v0

    .line 573
    check-cast v0, Ljava/util/List;

    .line 574
    .line 575
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/Z2;->o(Ljava/util/List;)I

    .line 576
    .line 577
    .line 578
    move-result v0

    .line 579
    if-lez v0, :cond_17

    .line 580
    .line 581
    shl-int/lit8 v1, v12, 0x3

    .line 582
    .line 583
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/k2;->G(I)I

    .line 584
    .line 585
    .line 586
    move-result v1

    .line 587
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/k2;->G(I)I

    .line 588
    .line 589
    .line 590
    move-result v2

    .line 591
    goto/16 :goto_5

    .line 592
    .line 593
    :pswitch_15
    invoke-virtual {v15, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 594
    .line 595
    .line 596
    move-result-object v0

    .line 597
    check-cast v0, Ljava/util/List;

    .line 598
    .line 599
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/Z2;->n(Ljava/util/List;)I

    .line 600
    .line 601
    .line 602
    move-result v0

    .line 603
    if-lez v0, :cond_17

    .line 604
    .line 605
    shl-int/lit8 v1, v12, 0x3

    .line 606
    .line 607
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/k2;->G(I)I

    .line 608
    .line 609
    .line 610
    move-result v1

    .line 611
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/k2;->G(I)I

    .line 612
    .line 613
    .line 614
    move-result v2

    .line 615
    goto/16 :goto_5

    .line 616
    .line 617
    :pswitch_16
    invoke-virtual {v15, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 618
    .line 619
    .line 620
    move-result-object v0

    .line 621
    check-cast v0, Ljava/util/List;

    .line 622
    .line 623
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/Z2;->j(Ljava/util/List;)I

    .line 624
    .line 625
    .line 626
    move-result v0

    .line 627
    if-lez v0, :cond_17

    .line 628
    .line 629
    shl-int/lit8 v1, v12, 0x3

    .line 630
    .line 631
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/k2;->G(I)I

    .line 632
    .line 633
    .line 634
    move-result v1

    .line 635
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/k2;->G(I)I

    .line 636
    .line 637
    .line 638
    move-result v2

    .line 639
    goto/16 :goto_5

    .line 640
    .line 641
    :pswitch_17
    invoke-virtual {v15, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 642
    .line 643
    .line 644
    move-result-object v0

    .line 645
    check-cast v0, Ljava/util/List;

    .line 646
    .line 647
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/Z2;->h(Ljava/util/List;)I

    .line 648
    .line 649
    .line 650
    move-result v0

    .line 651
    if-lez v0, :cond_17

    .line 652
    .line 653
    shl-int/lit8 v1, v12, 0x3

    .line 654
    .line 655
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/k2;->G(I)I

    .line 656
    .line 657
    .line 658
    move-result v1

    .line 659
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/k2;->G(I)I

    .line 660
    .line 661
    .line 662
    move-result v2

    .line 663
    goto/16 :goto_5

    .line 664
    .line 665
    :pswitch_18
    invoke-virtual {v15, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 666
    .line 667
    .line 668
    move-result-object v0

    .line 669
    check-cast v0, Ljava/util/List;

    .line 670
    .line 671
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/Z2;->f(Ljava/util/List;)I

    .line 672
    .line 673
    .line 674
    move-result v0

    .line 675
    if-lez v0, :cond_17

    .line 676
    .line 677
    shl-int/lit8 v1, v12, 0x3

    .line 678
    .line 679
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/k2;->G(I)I

    .line 680
    .line 681
    .line 682
    move-result v1

    .line 683
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/k2;->G(I)I

    .line 684
    .line 685
    .line 686
    move-result v2

    .line 687
    goto/16 :goto_5

    .line 688
    .line 689
    :pswitch_19
    invoke-virtual {v15, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 690
    .line 691
    .line 692
    move-result-object v0

    .line 693
    check-cast v0, Ljava/util/List;

    .line 694
    .line 695
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/Z2;->p(Ljava/util/List;)I

    .line 696
    .line 697
    .line 698
    move-result v0

    .line 699
    if-lez v0, :cond_17

    .line 700
    .line 701
    shl-int/lit8 v1, v12, 0x3

    .line 702
    .line 703
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/k2;->G(I)I

    .line 704
    .line 705
    .line 706
    move-result v1

    .line 707
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/k2;->G(I)I

    .line 708
    .line 709
    .line 710
    move-result v2

    .line 711
    goto/16 :goto_5

    .line 712
    .line 713
    :pswitch_1a
    invoke-virtual {v15, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 714
    .line 715
    .line 716
    move-result-object v0

    .line 717
    check-cast v0, Ljava/util/List;

    .line 718
    .line 719
    sget-object v1, Lcom/google/android/gms/internal/measurement/Z2;->a:Lcom/google/android/gms/internal/measurement/q2;

    .line 720
    .line 721
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 722
    .line 723
    .line 724
    move-result v0

    .line 725
    if-lez v0, :cond_17

    .line 726
    .line 727
    shl-int/lit8 v1, v12, 0x3

    .line 728
    .line 729
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/k2;->G(I)I

    .line 730
    .line 731
    .line 732
    move-result v1

    .line 733
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/k2;->G(I)I

    .line 734
    .line 735
    .line 736
    move-result v2

    .line 737
    goto/16 :goto_5

    .line 738
    .line 739
    :pswitch_1b
    invoke-virtual {v15, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 740
    .line 741
    .line 742
    move-result-object v0

    .line 743
    check-cast v0, Ljava/util/List;

    .line 744
    .line 745
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/Z2;->h(Ljava/util/List;)I

    .line 746
    .line 747
    .line 748
    move-result v0

    .line 749
    if-lez v0, :cond_17

    .line 750
    .line 751
    shl-int/lit8 v1, v12, 0x3

    .line 752
    .line 753
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/k2;->G(I)I

    .line 754
    .line 755
    .line 756
    move-result v1

    .line 757
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/k2;->G(I)I

    .line 758
    .line 759
    .line 760
    move-result v2

    .line 761
    goto/16 :goto_5

    .line 762
    .line 763
    :pswitch_1c
    invoke-virtual {v15, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 764
    .line 765
    .line 766
    move-result-object v0

    .line 767
    check-cast v0, Ljava/util/List;

    .line 768
    .line 769
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/Z2;->j(Ljava/util/List;)I

    .line 770
    .line 771
    .line 772
    move-result v0

    .line 773
    if-lez v0, :cond_17

    .line 774
    .line 775
    shl-int/lit8 v1, v12, 0x3

    .line 776
    .line 777
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/k2;->G(I)I

    .line 778
    .line 779
    .line 780
    move-result v1

    .line 781
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/k2;->G(I)I

    .line 782
    .line 783
    .line 784
    move-result v2

    .line 785
    goto/16 :goto_5

    .line 786
    .line 787
    :pswitch_1d
    invoke-virtual {v15, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 788
    .line 789
    .line 790
    move-result-object v0

    .line 791
    check-cast v0, Ljava/util/List;

    .line 792
    .line 793
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/Z2;->k(Ljava/util/List;)I

    .line 794
    .line 795
    .line 796
    move-result v0

    .line 797
    if-lez v0, :cond_17

    .line 798
    .line 799
    shl-int/lit8 v1, v12, 0x3

    .line 800
    .line 801
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/k2;->G(I)I

    .line 802
    .line 803
    .line 804
    move-result v1

    .line 805
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/k2;->G(I)I

    .line 806
    .line 807
    .line 808
    move-result v2

    .line 809
    goto/16 :goto_5

    .line 810
    .line 811
    :pswitch_1e
    invoke-virtual {v15, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 812
    .line 813
    .line 814
    move-result-object v0

    .line 815
    check-cast v0, Ljava/util/List;

    .line 816
    .line 817
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/Z2;->q(Ljava/util/List;)I

    .line 818
    .line 819
    .line 820
    move-result v0

    .line 821
    if-lez v0, :cond_17

    .line 822
    .line 823
    shl-int/lit8 v1, v12, 0x3

    .line 824
    .line 825
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/k2;->G(I)I

    .line 826
    .line 827
    .line 828
    move-result v1

    .line 829
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/k2;->G(I)I

    .line 830
    .line 831
    .line 832
    move-result v2

    .line 833
    goto/16 :goto_5

    .line 834
    .line 835
    :pswitch_1f
    invoke-virtual {v15, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 836
    .line 837
    .line 838
    move-result-object v0

    .line 839
    check-cast v0, Ljava/util/List;

    .line 840
    .line 841
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/Z2;->l(Ljava/util/List;)I

    .line 842
    .line 843
    .line 844
    move-result v0

    .line 845
    if-lez v0, :cond_17

    .line 846
    .line 847
    shl-int/lit8 v1, v12, 0x3

    .line 848
    .line 849
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/k2;->G(I)I

    .line 850
    .line 851
    .line 852
    move-result v1

    .line 853
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/k2;->G(I)I

    .line 854
    .line 855
    .line 856
    move-result v2

    .line 857
    goto/16 :goto_5

    .line 858
    .line 859
    :pswitch_20
    invoke-virtual {v15, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 860
    .line 861
    .line 862
    move-result-object v0

    .line 863
    check-cast v0, Ljava/util/List;

    .line 864
    .line 865
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/Z2;->h(Ljava/util/List;)I

    .line 866
    .line 867
    .line 868
    move-result v0

    .line 869
    if-lez v0, :cond_17

    .line 870
    .line 871
    shl-int/lit8 v1, v12, 0x3

    .line 872
    .line 873
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/k2;->G(I)I

    .line 874
    .line 875
    .line 876
    move-result v1

    .line 877
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/k2;->G(I)I

    .line 878
    .line 879
    .line 880
    move-result v2

    .line 881
    goto/16 :goto_5

    .line 882
    .line 883
    :pswitch_21
    invoke-virtual {v15, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 884
    .line 885
    .line 886
    move-result-object v0

    .line 887
    check-cast v0, Ljava/util/List;

    .line 888
    .line 889
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/Z2;->j(Ljava/util/List;)I

    .line 890
    .line 891
    .line 892
    move-result v0

    .line 893
    if-lez v0, :cond_17

    .line 894
    .line 895
    shl-int/lit8 v1, v12, 0x3

    .line 896
    .line 897
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/k2;->G(I)I

    .line 898
    .line 899
    .line 900
    move-result v1

    .line 901
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/k2;->G(I)I

    .line 902
    .line 903
    .line 904
    move-result v2

    .line 905
    goto/16 :goto_5

    .line 906
    .line 907
    :pswitch_22
    invoke-virtual {v15, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 908
    .line 909
    .line 910
    move-result-object v0

    .line 911
    check-cast v0, Ljava/util/List;

    .line 912
    .line 913
    sget-object v1, Lcom/google/android/gms/internal/measurement/Z2;->a:Lcom/google/android/gms/internal/measurement/q2;

    .line 914
    .line 915
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 916
    .line 917
    .line 918
    move-result v1

    .line 919
    if-nez v1, :cond_8

    .line 920
    .line 921
    :goto_8
    const/4 v2, 0x0

    .line 922
    goto :goto_a

    .line 923
    :cond_8
    shl-int/lit8 v2, v12, 0x3

    .line 924
    .line 925
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/Z2;->o(Ljava/util/List;)I

    .line 926
    .line 927
    .line 928
    move-result v0

    .line 929
    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/k2;->G(I)I

    .line 930
    .line 931
    .line 932
    move-result v2

    .line 933
    :goto_9
    mul-int v2, v2, v1

    .line 934
    .line 935
    add-int/2addr v2, v0

    .line 936
    :cond_9
    :goto_a
    add-int/2addr v11, v2

    .line 937
    goto/16 :goto_12

    .line 938
    .line 939
    :pswitch_23
    invoke-virtual {v15, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 940
    .line 941
    .line 942
    move-result-object v0

    .line 943
    check-cast v0, Ljava/util/List;

    .line 944
    .line 945
    sget-object v1, Lcom/google/android/gms/internal/measurement/Z2;->a:Lcom/google/android/gms/internal/measurement/q2;

    .line 946
    .line 947
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 948
    .line 949
    .line 950
    move-result v1

    .line 951
    if-nez v1, :cond_a

    .line 952
    .line 953
    goto :goto_8

    .line 954
    :cond_a
    shl-int/lit8 v2, v12, 0x3

    .line 955
    .line 956
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/Z2;->n(Ljava/util/List;)I

    .line 957
    .line 958
    .line 959
    move-result v0

    .line 960
    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/k2;->G(I)I

    .line 961
    .line 962
    .line 963
    move-result v2

    .line 964
    goto :goto_9

    .line 965
    :pswitch_24
    invoke-virtual {v15, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 966
    .line 967
    .line 968
    move-result-object v0

    .line 969
    check-cast v0, Ljava/util/List;

    .line 970
    .line 971
    invoke-static {v12, v0}, Lcom/google/android/gms/internal/measurement/Z2;->i(ILjava/util/List;)I

    .line 972
    .line 973
    .line 974
    move-result v0

    .line 975
    goto/16 :goto_3

    .line 976
    .line 977
    :pswitch_25
    invoke-virtual {v15, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 978
    .line 979
    .line 980
    move-result-object v0

    .line 981
    check-cast v0, Ljava/util/List;

    .line 982
    .line 983
    invoke-static {v12, v0}, Lcom/google/android/gms/internal/measurement/Z2;->g(ILjava/util/List;)I

    .line 984
    .line 985
    .line 986
    move-result v0

    .line 987
    goto/16 :goto_3

    .line 988
    .line 989
    :pswitch_26
    invoke-virtual {v15, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 990
    .line 991
    .line 992
    move-result-object v0

    .line 993
    check-cast v0, Ljava/util/List;

    .line 994
    .line 995
    sget-object v1, Lcom/google/android/gms/internal/measurement/Z2;->a:Lcom/google/android/gms/internal/measurement/q2;

    .line 996
    .line 997
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 998
    .line 999
    .line 1000
    move-result v1

    .line 1001
    if-nez v1, :cond_b

    .line 1002
    .line 1003
    goto :goto_8

    .line 1004
    :cond_b
    shl-int/lit8 v2, v12, 0x3

    .line 1005
    .line 1006
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/Z2;->f(Ljava/util/List;)I

    .line 1007
    .line 1008
    .line 1009
    move-result v0

    .line 1010
    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/k2;->G(I)I

    .line 1011
    .line 1012
    .line 1013
    move-result v2

    .line 1014
    goto :goto_9

    .line 1015
    :pswitch_27
    invoke-virtual {v15, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1016
    .line 1017
    .line 1018
    move-result-object v0

    .line 1019
    check-cast v0, Ljava/util/List;

    .line 1020
    .line 1021
    sget-object v1, Lcom/google/android/gms/internal/measurement/Z2;->a:Lcom/google/android/gms/internal/measurement/q2;

    .line 1022
    .line 1023
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 1024
    .line 1025
    .line 1026
    move-result v1

    .line 1027
    if-nez v1, :cond_c

    .line 1028
    .line 1029
    goto :goto_8

    .line 1030
    :cond_c
    shl-int/lit8 v2, v12, 0x3

    .line 1031
    .line 1032
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/Z2;->p(Ljava/util/List;)I

    .line 1033
    .line 1034
    .line 1035
    move-result v0

    .line 1036
    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/k2;->G(I)I

    .line 1037
    .line 1038
    .line 1039
    move-result v2

    .line 1040
    goto :goto_9

    .line 1041
    :pswitch_28
    invoke-virtual {v15, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1042
    .line 1043
    .line 1044
    move-result-object v0

    .line 1045
    check-cast v0, Ljava/util/List;

    .line 1046
    .line 1047
    sget-object v1, Lcom/google/android/gms/internal/measurement/Z2;->a:Lcom/google/android/gms/internal/measurement/q2;

    .line 1048
    .line 1049
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 1050
    .line 1051
    .line 1052
    move-result v1

    .line 1053
    if-nez v1, :cond_d

    .line 1054
    .line 1055
    goto/16 :goto_8

    .line 1056
    .line 1057
    :cond_d
    shl-int/lit8 v2, v12, 0x3

    .line 1058
    .line 1059
    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/k2;->G(I)I

    .line 1060
    .line 1061
    .line 1062
    move-result v2

    .line 1063
    mul-int v2, v2, v1

    .line 1064
    .line 1065
    const/4 v1, 0x0

    .line 1066
    :goto_b
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 1067
    .line 1068
    .line 1069
    move-result v3

    .line 1070
    if-ge v1, v3, :cond_9

    .line 1071
    .line 1072
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1073
    .line 1074
    .line 1075
    move-result-object v3

    .line 1076
    check-cast v3, Lcom/google/android/gms/internal/measurement/i2;

    .line 1077
    .line 1078
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/i2;->n()I

    .line 1079
    .line 1080
    .line 1081
    move-result v3

    .line 1082
    invoke-static {v3, v3, v2}, Lcom/google/android/gms/internal/ads/uc;->z(III)I

    .line 1083
    .line 1084
    .line 1085
    move-result v2

    .line 1086
    add-int/lit8 v1, v1, 0x1

    .line 1087
    .line 1088
    goto :goto_b

    .line 1089
    :pswitch_29
    invoke-virtual {v15, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1090
    .line 1091
    .line 1092
    move-result-object v0

    .line 1093
    check-cast v0, Ljava/util/List;

    .line 1094
    .line 1095
    invoke-virtual {v6, v10}, Lcom/google/android/gms/internal/measurement/R2;->w(I)Lcom/google/android/gms/internal/measurement/Y2;

    .line 1096
    .line 1097
    .line 1098
    move-result-object v1

    .line 1099
    sget-object v2, Lcom/google/android/gms/internal/measurement/Z2;->a:Lcom/google/android/gms/internal/measurement/q2;

    .line 1100
    .line 1101
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 1102
    .line 1103
    .line 1104
    move-result v2

    .line 1105
    if-nez v2, :cond_e

    .line 1106
    .line 1107
    const/4 v3, 0x0

    .line 1108
    goto :goto_d

    .line 1109
    :cond_e
    shl-int/lit8 v3, v12, 0x3

    .line 1110
    .line 1111
    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/k2;->G(I)I

    .line 1112
    .line 1113
    .line 1114
    move-result v3

    .line 1115
    mul-int v3, v3, v2

    .line 1116
    .line 1117
    const/4 v4, 0x0

    .line 1118
    :goto_c
    if-ge v4, v2, :cond_f

    .line 1119
    .line 1120
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1121
    .line 1122
    .line 1123
    move-result-object v5

    .line 1124
    check-cast v5, Lcom/google/android/gms/internal/measurement/P2;

    .line 1125
    .line 1126
    invoke-static {v5, v1}, Lcom/google/android/gms/internal/measurement/k2;->E(Lcom/google/android/gms/internal/measurement/P2;Lcom/google/android/gms/internal/measurement/Y2;)I

    .line 1127
    .line 1128
    .line 1129
    move-result v5

    .line 1130
    add-int/2addr v3, v5

    .line 1131
    add-int/lit8 v4, v4, 0x1

    .line 1132
    .line 1133
    goto :goto_c

    .line 1134
    :cond_f
    :goto_d
    add-int/2addr v11, v3

    .line 1135
    goto/16 :goto_12

    .line 1136
    .line 1137
    :pswitch_2a
    invoke-virtual {v15, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1138
    .line 1139
    .line 1140
    move-result-object v0

    .line 1141
    check-cast v0, Ljava/util/List;

    .line 1142
    .line 1143
    sget-object v1, Lcom/google/android/gms/internal/measurement/Z2;->a:Lcom/google/android/gms/internal/measurement/q2;

    .line 1144
    .line 1145
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 1146
    .line 1147
    .line 1148
    move-result v1

    .line 1149
    if-nez v1, :cond_10

    .line 1150
    .line 1151
    goto/16 :goto_8

    .line 1152
    .line 1153
    :cond_10
    shl-int/lit8 v2, v12, 0x3

    .line 1154
    .line 1155
    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/k2;->G(I)I

    .line 1156
    .line 1157
    .line 1158
    move-result v2

    .line 1159
    mul-int v2, v2, v1

    .line 1160
    .line 1161
    const/4 v3, 0x0

    .line 1162
    :goto_e
    if-ge v3, v1, :cond_9

    .line 1163
    .line 1164
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1165
    .line 1166
    .line 1167
    move-result-object v4

    .line 1168
    instance-of v5, v4, Lcom/google/android/gms/internal/measurement/i2;

    .line 1169
    .line 1170
    if-eqz v5, :cond_11

    .line 1171
    .line 1172
    check-cast v4, Lcom/google/android/gms/internal/measurement/i2;

    .line 1173
    .line 1174
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/i2;->n()I

    .line 1175
    .line 1176
    .line 1177
    move-result v4

    .line 1178
    invoke-static {v4, v4, v2}, Lcom/google/android/gms/internal/ads/uc;->z(III)I

    .line 1179
    .line 1180
    .line 1181
    move-result v2

    .line 1182
    goto :goto_f

    .line 1183
    :cond_11
    check-cast v4, Ljava/lang/String;

    .line 1184
    .line 1185
    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/k2;->F(Ljava/lang/String;)I

    .line 1186
    .line 1187
    .line 1188
    move-result v4

    .line 1189
    add-int/2addr v4, v2

    .line 1190
    move v2, v4

    .line 1191
    :goto_f
    add-int/lit8 v3, v3, 0x1

    .line 1192
    .line 1193
    goto :goto_e

    .line 1194
    :pswitch_2b
    invoke-virtual {v15, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1195
    .line 1196
    .line 1197
    move-result-object v0

    .line 1198
    check-cast v0, Ljava/util/List;

    .line 1199
    .line 1200
    sget-object v1, Lcom/google/android/gms/internal/measurement/Z2;->a:Lcom/google/android/gms/internal/measurement/q2;

    .line 1201
    .line 1202
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 1203
    .line 1204
    .line 1205
    move-result v0

    .line 1206
    if-nez v0, :cond_12

    .line 1207
    .line 1208
    :goto_10
    const/4 v1, 0x0

    .line 1209
    goto :goto_11

    .line 1210
    :cond_12
    shl-int/lit8 v1, v12, 0x3

    .line 1211
    .line 1212
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/k2;->G(I)I

    .line 1213
    .line 1214
    .line 1215
    move-result v1

    .line 1216
    add-int/2addr v1, v13

    .line 1217
    mul-int v1, v1, v0

    .line 1218
    .line 1219
    :goto_11
    add-int/2addr v11, v1

    .line 1220
    goto/16 :goto_12

    .line 1221
    .line 1222
    :pswitch_2c
    invoke-virtual {v15, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1223
    .line 1224
    .line 1225
    move-result-object v0

    .line 1226
    check-cast v0, Ljava/util/List;

    .line 1227
    .line 1228
    invoke-static {v12, v0}, Lcom/google/android/gms/internal/measurement/Z2;->g(ILjava/util/List;)I

    .line 1229
    .line 1230
    .line 1231
    move-result v0

    .line 1232
    goto/16 :goto_3

    .line 1233
    .line 1234
    :pswitch_2d
    invoke-virtual {v15, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1235
    .line 1236
    .line 1237
    move-result-object v0

    .line 1238
    check-cast v0, Ljava/util/List;

    .line 1239
    .line 1240
    invoke-static {v12, v0}, Lcom/google/android/gms/internal/measurement/Z2;->i(ILjava/util/List;)I

    .line 1241
    .line 1242
    .line 1243
    move-result v0

    .line 1244
    goto/16 :goto_3

    .line 1245
    .line 1246
    :pswitch_2e
    invoke-virtual {v15, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1247
    .line 1248
    .line 1249
    move-result-object v0

    .line 1250
    check-cast v0, Ljava/util/List;

    .line 1251
    .line 1252
    sget-object v1, Lcom/google/android/gms/internal/measurement/Z2;->a:Lcom/google/android/gms/internal/measurement/q2;

    .line 1253
    .line 1254
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 1255
    .line 1256
    .line 1257
    move-result v1

    .line 1258
    if-nez v1, :cond_13

    .line 1259
    .line 1260
    goto/16 :goto_8

    .line 1261
    .line 1262
    :cond_13
    shl-int/lit8 v2, v12, 0x3

    .line 1263
    .line 1264
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/Z2;->k(Ljava/util/List;)I

    .line 1265
    .line 1266
    .line 1267
    move-result v0

    .line 1268
    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/k2;->G(I)I

    .line 1269
    .line 1270
    .line 1271
    move-result v2

    .line 1272
    goto/16 :goto_9

    .line 1273
    .line 1274
    :pswitch_2f
    invoke-virtual {v15, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1275
    .line 1276
    .line 1277
    move-result-object v0

    .line 1278
    check-cast v0, Ljava/util/List;

    .line 1279
    .line 1280
    sget-object v1, Lcom/google/android/gms/internal/measurement/Z2;->a:Lcom/google/android/gms/internal/measurement/q2;

    .line 1281
    .line 1282
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 1283
    .line 1284
    .line 1285
    move-result v1

    .line 1286
    if-nez v1, :cond_14

    .line 1287
    .line 1288
    goto/16 :goto_8

    .line 1289
    .line 1290
    :cond_14
    shl-int/lit8 v2, v12, 0x3

    .line 1291
    .line 1292
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/Z2;->q(Ljava/util/List;)I

    .line 1293
    .line 1294
    .line 1295
    move-result v0

    .line 1296
    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/k2;->G(I)I

    .line 1297
    .line 1298
    .line 1299
    move-result v2

    .line 1300
    goto/16 :goto_9

    .line 1301
    .line 1302
    :pswitch_30
    invoke-virtual {v15, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1303
    .line 1304
    .line 1305
    move-result-object v0

    .line 1306
    check-cast v0, Ljava/util/List;

    .line 1307
    .line 1308
    sget-object v1, Lcom/google/android/gms/internal/measurement/Z2;->a:Lcom/google/android/gms/internal/measurement/q2;

    .line 1309
    .line 1310
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 1311
    .line 1312
    .line 1313
    move-result v1

    .line 1314
    if-nez v1, :cond_15

    .line 1315
    .line 1316
    goto :goto_10

    .line 1317
    :cond_15
    shl-int/lit8 v1, v12, 0x3

    .line 1318
    .line 1319
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/Z2;->l(Ljava/util/List;)I

    .line 1320
    .line 1321
    .line 1322
    move-result v2

    .line 1323
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 1324
    .line 1325
    .line 1326
    move-result v0

    .line 1327
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/k2;->G(I)I

    .line 1328
    .line 1329
    .line 1330
    move-result v1

    .line 1331
    mul-int v1, v1, v0

    .line 1332
    .line 1333
    add-int/2addr v1, v2

    .line 1334
    goto :goto_11

    .line 1335
    :pswitch_31
    invoke-virtual {v15, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1336
    .line 1337
    .line 1338
    move-result-object v0

    .line 1339
    check-cast v0, Ljava/util/List;

    .line 1340
    .line 1341
    invoke-static {v12, v0}, Lcom/google/android/gms/internal/measurement/Z2;->g(ILjava/util/List;)I

    .line 1342
    .line 1343
    .line 1344
    move-result v0

    .line 1345
    goto/16 :goto_3

    .line 1346
    .line 1347
    :pswitch_32
    invoke-virtual {v15, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1348
    .line 1349
    .line 1350
    move-result-object v0

    .line 1351
    check-cast v0, Ljava/util/List;

    .line 1352
    .line 1353
    invoke-static {v12, v0}, Lcom/google/android/gms/internal/measurement/Z2;->i(ILjava/util/List;)I

    .line 1354
    .line 1355
    .line 1356
    move-result v0

    .line 1357
    goto/16 :goto_3

    .line 1358
    .line 1359
    :pswitch_33
    move-object/from16 v0, p0

    .line 1360
    .line 1361
    move-object/from16 v1, p1

    .line 1362
    .line 1363
    move-wide v3, v2

    .line 1364
    move v2, v10

    .line 1365
    move-wide v8, v3

    .line 1366
    move v3, v14

    .line 1367
    move/from16 v4, v16

    .line 1368
    .line 1369
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/R2;->l(Ljava/lang/Object;IIII)Z

    .line 1370
    .line 1371
    .line 1372
    move-result v0

    .line 1373
    if-eqz v0, :cond_17

    .line 1374
    .line 1375
    invoke-virtual {v15, v7, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1376
    .line 1377
    .line 1378
    move-result-object v0

    .line 1379
    check-cast v0, Lcom/google/android/gms/internal/measurement/P2;

    .line 1380
    .line 1381
    invoke-virtual {v6, v10}, Lcom/google/android/gms/internal/measurement/R2;->w(I)Lcom/google/android/gms/internal/measurement/Y2;

    .line 1382
    .line 1383
    .line 1384
    move-result-object v1

    .line 1385
    invoke-static {v12, v0, v1}, Lcom/google/android/gms/internal/measurement/k2;->D(ILcom/google/android/gms/internal/measurement/P2;Lcom/google/android/gms/internal/measurement/Y2;)I

    .line 1386
    .line 1387
    .line 1388
    move-result v0

    .line 1389
    goto/16 :goto_3

    .line 1390
    .line 1391
    :pswitch_34
    move-wide v8, v2

    .line 1392
    move-object/from16 v0, p0

    .line 1393
    .line 1394
    move-object/from16 v1, p1

    .line 1395
    .line 1396
    move v2, v10

    .line 1397
    move v3, v14

    .line 1398
    move/from16 v4, v16

    .line 1399
    .line 1400
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/R2;->l(Ljava/lang/Object;IIII)Z

    .line 1401
    .line 1402
    .line 1403
    move-result v0

    .line 1404
    if-eqz v0, :cond_17

    .line 1405
    .line 1406
    shl-int/lit8 v0, v12, 0x3

    .line 1407
    .line 1408
    invoke-virtual {v15, v7, v8, v9}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 1409
    .line 1410
    .line 1411
    move-result-wide v1

    .line 1412
    add-long v3, v1, v1

    .line 1413
    .line 1414
    shr-long v1, v1, v17

    .line 1415
    .line 1416
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/k2;->G(I)I

    .line 1417
    .line 1418
    .line 1419
    move-result v0

    .line 1420
    xor-long/2addr v1, v3

    .line 1421
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/measurement/k2;->o(J)I

    .line 1422
    .line 1423
    .line 1424
    move-result v1

    .line 1425
    goto/16 :goto_4

    .line 1426
    .line 1427
    :pswitch_35
    move-wide v8, v2

    .line 1428
    move-object/from16 v0, p0

    .line 1429
    .line 1430
    move-object/from16 v1, p1

    .line 1431
    .line 1432
    move v2, v10

    .line 1433
    move v3, v14

    .line 1434
    move/from16 v4, v16

    .line 1435
    .line 1436
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/R2;->l(Ljava/lang/Object;IIII)Z

    .line 1437
    .line 1438
    .line 1439
    move-result v0

    .line 1440
    if-eqz v0, :cond_17

    .line 1441
    .line 1442
    shl-int/lit8 v0, v12, 0x3

    .line 1443
    .line 1444
    invoke-virtual {v15, v7, v8, v9}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 1445
    .line 1446
    .line 1447
    move-result v1

    .line 1448
    add-int v2, v1, v1

    .line 1449
    .line 1450
    shr-int/lit8 v1, v1, 0x1f

    .line 1451
    .line 1452
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/k2;->G(I)I

    .line 1453
    .line 1454
    .line 1455
    move-result v0

    .line 1456
    xor-int/2addr v1, v2

    .line 1457
    invoke-static {v1, v0, v11}, Lcom/google/android/gms/internal/ads/uc;->z(III)I

    .line 1458
    .line 1459
    .line 1460
    move-result v11

    .line 1461
    goto/16 :goto_12

    .line 1462
    .line 1463
    :pswitch_36
    const/16 v8, 0x8

    .line 1464
    .line 1465
    move-object/from16 v0, p0

    .line 1466
    .line 1467
    move-object/from16 v1, p1

    .line 1468
    .line 1469
    move v2, v10

    .line 1470
    move v3, v14

    .line 1471
    move/from16 v4, v16

    .line 1472
    .line 1473
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/R2;->l(Ljava/lang/Object;IIII)Z

    .line 1474
    .line 1475
    .line 1476
    move-result v0

    .line 1477
    if-eqz v0, :cond_17

    .line 1478
    .line 1479
    shl-int/lit8 v0, v12, 0x3

    .line 1480
    .line 1481
    invoke-static {v0, v8, v11}, Lcom/google/android/gms/internal/ads/uc;->z(III)I

    .line 1482
    .line 1483
    .line 1484
    move-result v11

    .line 1485
    goto/16 :goto_12

    .line 1486
    .line 1487
    :pswitch_37
    move-object/from16 v0, p0

    .line 1488
    .line 1489
    const/4 v8, 0x4

    .line 1490
    move-object/from16 v1, p1

    .line 1491
    .line 1492
    move v2, v10

    .line 1493
    move v3, v14

    .line 1494
    move/from16 v4, v16

    .line 1495
    .line 1496
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/R2;->l(Ljava/lang/Object;IIII)Z

    .line 1497
    .line 1498
    .line 1499
    move-result v0

    .line 1500
    if-eqz v0, :cond_17

    .line 1501
    .line 1502
    shl-int/lit8 v0, v12, 0x3

    .line 1503
    .line 1504
    invoke-static {v0, v8, v11}, Lcom/google/android/gms/internal/ads/uc;->z(III)I

    .line 1505
    .line 1506
    .line 1507
    move-result v11

    .line 1508
    goto/16 :goto_12

    .line 1509
    .line 1510
    :pswitch_38
    move-wide v8, v2

    .line 1511
    move-object/from16 v0, p0

    .line 1512
    .line 1513
    move-object/from16 v1, p1

    .line 1514
    .line 1515
    move v2, v10

    .line 1516
    move v3, v14

    .line 1517
    move/from16 v4, v16

    .line 1518
    .line 1519
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/R2;->l(Ljava/lang/Object;IIII)Z

    .line 1520
    .line 1521
    .line 1522
    move-result v0

    .line 1523
    if-eqz v0, :cond_17

    .line 1524
    .line 1525
    shl-int/lit8 v0, v12, 0x3

    .line 1526
    .line 1527
    invoke-virtual {v15, v7, v8, v9}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 1528
    .line 1529
    .line 1530
    move-result v1

    .line 1531
    int-to-long v1, v1

    .line 1532
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/k2;->G(I)I

    .line 1533
    .line 1534
    .line 1535
    move-result v0

    .line 1536
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/measurement/k2;->o(J)I

    .line 1537
    .line 1538
    .line 1539
    move-result v1

    .line 1540
    goto/16 :goto_4

    .line 1541
    .line 1542
    :pswitch_39
    move-wide v8, v2

    .line 1543
    move-object/from16 v0, p0

    .line 1544
    .line 1545
    move-object/from16 v1, p1

    .line 1546
    .line 1547
    move v2, v10

    .line 1548
    move v3, v14

    .line 1549
    move/from16 v4, v16

    .line 1550
    .line 1551
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/R2;->l(Ljava/lang/Object;IIII)Z

    .line 1552
    .line 1553
    .line 1554
    move-result v0

    .line 1555
    if-eqz v0, :cond_17

    .line 1556
    .line 1557
    shl-int/lit8 v0, v12, 0x3

    .line 1558
    .line 1559
    invoke-virtual {v15, v7, v8, v9}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 1560
    .line 1561
    .line 1562
    move-result v1

    .line 1563
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/k2;->G(I)I

    .line 1564
    .line 1565
    .line 1566
    move-result v0

    .line 1567
    invoke-static {v1, v0, v11}, Lcom/google/android/gms/internal/ads/uc;->z(III)I

    .line 1568
    .line 1569
    .line 1570
    move-result v11

    .line 1571
    goto/16 :goto_12

    .line 1572
    .line 1573
    :pswitch_3a
    move-wide v8, v2

    .line 1574
    move-object/from16 v0, p0

    .line 1575
    .line 1576
    move-object/from16 v1, p1

    .line 1577
    .line 1578
    move v2, v10

    .line 1579
    move v3, v14

    .line 1580
    move/from16 v4, v16

    .line 1581
    .line 1582
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/R2;->l(Ljava/lang/Object;IIII)Z

    .line 1583
    .line 1584
    .line 1585
    move-result v0

    .line 1586
    if-eqz v0, :cond_17

    .line 1587
    .line 1588
    shl-int/lit8 v0, v12, 0x3

    .line 1589
    .line 1590
    invoke-virtual {v15, v7, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1591
    .line 1592
    .line 1593
    move-result-object v1

    .line 1594
    check-cast v1, Lcom/google/android/gms/internal/measurement/i2;

    .line 1595
    .line 1596
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/k2;->G(I)I

    .line 1597
    .line 1598
    .line 1599
    move-result v0

    .line 1600
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/i2;->n()I

    .line 1601
    .line 1602
    .line 1603
    move-result v1

    .line 1604
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/k2;->G(I)I

    .line 1605
    .line 1606
    .line 1607
    move-result v2

    .line 1608
    goto/16 :goto_5

    .line 1609
    .line 1610
    :pswitch_3b
    move-wide v8, v2

    .line 1611
    move-object/from16 v0, p0

    .line 1612
    .line 1613
    move-object/from16 v1, p1

    .line 1614
    .line 1615
    move v2, v10

    .line 1616
    move v3, v14

    .line 1617
    move/from16 v4, v16

    .line 1618
    .line 1619
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/R2;->l(Ljava/lang/Object;IIII)Z

    .line 1620
    .line 1621
    .line 1622
    move-result v0

    .line 1623
    if-eqz v0, :cond_17

    .line 1624
    .line 1625
    invoke-virtual {v15, v7, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1626
    .line 1627
    .line 1628
    move-result-object v0

    .line 1629
    invoke-virtual {v6, v10}, Lcom/google/android/gms/internal/measurement/R2;->w(I)Lcom/google/android/gms/internal/measurement/Y2;

    .line 1630
    .line 1631
    .line 1632
    move-result-object v1

    .line 1633
    invoke-static {v12, v1, v0}, Lcom/google/android/gms/internal/measurement/Z2;->m(ILcom/google/android/gms/internal/measurement/Y2;Ljava/lang/Object;)I

    .line 1634
    .line 1635
    .line 1636
    move-result v0

    .line 1637
    goto/16 :goto_3

    .line 1638
    .line 1639
    :pswitch_3c
    move-wide v8, v2

    .line 1640
    move-object/from16 v0, p0

    .line 1641
    .line 1642
    move-object/from16 v1, p1

    .line 1643
    .line 1644
    move v2, v10

    .line 1645
    move v3, v14

    .line 1646
    move/from16 v4, v16

    .line 1647
    .line 1648
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/R2;->l(Ljava/lang/Object;IIII)Z

    .line 1649
    .line 1650
    .line 1651
    move-result v0

    .line 1652
    if-eqz v0, :cond_17

    .line 1653
    .line 1654
    shl-int/lit8 v0, v12, 0x3

    .line 1655
    .line 1656
    invoke-virtual {v15, v7, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1657
    .line 1658
    .line 1659
    move-result-object v1

    .line 1660
    instance-of v2, v1, Lcom/google/android/gms/internal/measurement/i2;

    .line 1661
    .line 1662
    if-eqz v2, :cond_16

    .line 1663
    .line 1664
    check-cast v1, Lcom/google/android/gms/internal/measurement/i2;

    .line 1665
    .line 1666
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/k2;->G(I)I

    .line 1667
    .line 1668
    .line 1669
    move-result v0

    .line 1670
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/i2;->n()I

    .line 1671
    .line 1672
    .line 1673
    move-result v1

    .line 1674
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/k2;->G(I)I

    .line 1675
    .line 1676
    .line 1677
    move-result v2

    .line 1678
    goto/16 :goto_5

    .line 1679
    .line 1680
    :cond_16
    check-cast v1, Ljava/lang/String;

    .line 1681
    .line 1682
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/k2;->G(I)I

    .line 1683
    .line 1684
    .line 1685
    move-result v0

    .line 1686
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/k2;->F(Ljava/lang/String;)I

    .line 1687
    .line 1688
    .line 1689
    move-result v1

    .line 1690
    goto/16 :goto_4

    .line 1691
    .line 1692
    :pswitch_3d
    move-object/from16 v0, p0

    .line 1693
    .line 1694
    move-object/from16 v1, p1

    .line 1695
    .line 1696
    move v2, v10

    .line 1697
    move v3, v14

    .line 1698
    move/from16 v4, v16

    .line 1699
    .line 1700
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/R2;->l(Ljava/lang/Object;IIII)Z

    .line 1701
    .line 1702
    .line 1703
    move-result v0

    .line 1704
    if-eqz v0, :cond_17

    .line 1705
    .line 1706
    shl-int/lit8 v0, v12, 0x3

    .line 1707
    .line 1708
    invoke-static {v0, v13, v11}, Lcom/google/android/gms/internal/ads/uc;->z(III)I

    .line 1709
    .line 1710
    .line 1711
    move-result v11

    .line 1712
    goto/16 :goto_12

    .line 1713
    .line 1714
    :pswitch_3e
    const/4 v8, 0x4

    .line 1715
    move-object/from16 v0, p0

    .line 1716
    .line 1717
    move-object/from16 v1, p1

    .line 1718
    .line 1719
    move v2, v10

    .line 1720
    move v3, v14

    .line 1721
    move/from16 v4, v16

    .line 1722
    .line 1723
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/R2;->l(Ljava/lang/Object;IIII)Z

    .line 1724
    .line 1725
    .line 1726
    move-result v0

    .line 1727
    if-eqz v0, :cond_17

    .line 1728
    .line 1729
    shl-int/lit8 v0, v12, 0x3

    .line 1730
    .line 1731
    invoke-static {v0, v8, v11}, Lcom/google/android/gms/internal/ads/uc;->z(III)I

    .line 1732
    .line 1733
    .line 1734
    move-result v11

    .line 1735
    goto/16 :goto_12

    .line 1736
    .line 1737
    :pswitch_3f
    const/16 v8, 0x8

    .line 1738
    .line 1739
    move-object/from16 v0, p0

    .line 1740
    .line 1741
    move-object/from16 v1, p1

    .line 1742
    .line 1743
    move v2, v10

    .line 1744
    move v3, v14

    .line 1745
    move/from16 v4, v16

    .line 1746
    .line 1747
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/R2;->l(Ljava/lang/Object;IIII)Z

    .line 1748
    .line 1749
    .line 1750
    move-result v0

    .line 1751
    if-eqz v0, :cond_17

    .line 1752
    .line 1753
    shl-int/lit8 v0, v12, 0x3

    .line 1754
    .line 1755
    invoke-static {v0, v8, v11}, Lcom/google/android/gms/internal/ads/uc;->z(III)I

    .line 1756
    .line 1757
    .line 1758
    move-result v11

    .line 1759
    goto/16 :goto_12

    .line 1760
    .line 1761
    :pswitch_40
    move-wide v8, v2

    .line 1762
    move-object/from16 v0, p0

    .line 1763
    .line 1764
    move-object/from16 v1, p1

    .line 1765
    .line 1766
    move v2, v10

    .line 1767
    move v3, v14

    .line 1768
    move/from16 v4, v16

    .line 1769
    .line 1770
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/R2;->l(Ljava/lang/Object;IIII)Z

    .line 1771
    .line 1772
    .line 1773
    move-result v0

    .line 1774
    if-eqz v0, :cond_17

    .line 1775
    .line 1776
    shl-int/lit8 v0, v12, 0x3

    .line 1777
    .line 1778
    invoke-virtual {v15, v7, v8, v9}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 1779
    .line 1780
    .line 1781
    move-result v1

    .line 1782
    int-to-long v1, v1

    .line 1783
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/k2;->G(I)I

    .line 1784
    .line 1785
    .line 1786
    move-result v0

    .line 1787
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/measurement/k2;->o(J)I

    .line 1788
    .line 1789
    .line 1790
    move-result v1

    .line 1791
    goto/16 :goto_4

    .line 1792
    .line 1793
    :pswitch_41
    move-wide v8, v2

    .line 1794
    move-object/from16 v0, p0

    .line 1795
    .line 1796
    move-object/from16 v1, p1

    .line 1797
    .line 1798
    move v2, v10

    .line 1799
    move v3, v14

    .line 1800
    move/from16 v4, v16

    .line 1801
    .line 1802
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/R2;->l(Ljava/lang/Object;IIII)Z

    .line 1803
    .line 1804
    .line 1805
    move-result v0

    .line 1806
    if-eqz v0, :cond_17

    .line 1807
    .line 1808
    shl-int/lit8 v0, v12, 0x3

    .line 1809
    .line 1810
    invoke-virtual {v15, v7, v8, v9}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 1811
    .line 1812
    .line 1813
    move-result-wide v1

    .line 1814
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/k2;->G(I)I

    .line 1815
    .line 1816
    .line 1817
    move-result v0

    .line 1818
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/measurement/k2;->o(J)I

    .line 1819
    .line 1820
    .line 1821
    move-result v1

    .line 1822
    goto/16 :goto_4

    .line 1823
    .line 1824
    :pswitch_42
    move-wide v8, v2

    .line 1825
    move-object/from16 v0, p0

    .line 1826
    .line 1827
    move-object/from16 v1, p1

    .line 1828
    .line 1829
    move v2, v10

    .line 1830
    move v3, v14

    .line 1831
    move/from16 v4, v16

    .line 1832
    .line 1833
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/R2;->l(Ljava/lang/Object;IIII)Z

    .line 1834
    .line 1835
    .line 1836
    move-result v0

    .line 1837
    if-eqz v0, :cond_17

    .line 1838
    .line 1839
    shl-int/lit8 v0, v12, 0x3

    .line 1840
    .line 1841
    invoke-virtual {v15, v7, v8, v9}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 1842
    .line 1843
    .line 1844
    move-result-wide v1

    .line 1845
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/k2;->G(I)I

    .line 1846
    .line 1847
    .line 1848
    move-result v0

    .line 1849
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/measurement/k2;->o(J)I

    .line 1850
    .line 1851
    .line 1852
    move-result v1

    .line 1853
    goto/16 :goto_4

    .line 1854
    .line 1855
    :pswitch_43
    const/4 v8, 0x4

    .line 1856
    move-object/from16 v0, p0

    .line 1857
    .line 1858
    move-object/from16 v1, p1

    .line 1859
    .line 1860
    move v2, v10

    .line 1861
    move v3, v14

    .line 1862
    move/from16 v4, v16

    .line 1863
    .line 1864
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/R2;->l(Ljava/lang/Object;IIII)Z

    .line 1865
    .line 1866
    .line 1867
    move-result v0

    .line 1868
    if-eqz v0, :cond_17

    .line 1869
    .line 1870
    shl-int/lit8 v0, v12, 0x3

    .line 1871
    .line 1872
    invoke-static {v0, v8, v11}, Lcom/google/android/gms/internal/ads/uc;->z(III)I

    .line 1873
    .line 1874
    .line 1875
    move-result v11

    .line 1876
    goto :goto_12

    .line 1877
    :pswitch_44
    const/16 v8, 0x8

    .line 1878
    .line 1879
    move-object/from16 v0, p0

    .line 1880
    .line 1881
    move-object/from16 v1, p1

    .line 1882
    .line 1883
    move v2, v10

    .line 1884
    move v3, v14

    .line 1885
    move/from16 v4, v16

    .line 1886
    .line 1887
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/R2;->l(Ljava/lang/Object;IIII)Z

    .line 1888
    .line 1889
    .line 1890
    move-result v0

    .line 1891
    if-eqz v0, :cond_17

    .line 1892
    .line 1893
    shl-int/lit8 v0, v12, 0x3

    .line 1894
    .line 1895
    invoke-static {v0, v8, v11}, Lcom/google/android/gms/internal/ads/uc;->z(III)I

    .line 1896
    .line 1897
    .line 1898
    move-result v11

    .line 1899
    :cond_17
    :goto_12
    add-int/lit8 v10, v10, 0x3

    .line 1900
    .line 1901
    move v0, v14

    .line 1902
    move/from16 v1, v16

    .line 1903
    .line 1904
    const v9, 0xfffff

    .line 1905
    .line 1906
    .line 1907
    goto/16 :goto_0

    .line 1908
    .line 1909
    :cond_18
    move-object v0, v7

    .line 1910
    check-cast v0, Lcom/google/android/gms/internal/measurement/s2;

    .line 1911
    .line 1912
    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/s2;->zzc:Lcom/google/android/gms/internal/measurement/b3;

    .line 1913
    .line 1914
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/b3;->a()I

    .line 1915
    .line 1916
    .line 1917
    move-result v0

    .line 1918
    add-int/2addr v0, v11

    .line 1919
    return v0

    .line 1920
    nop

    .line 1921
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final zzb(Ljava/lang/Object;)I
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/R2;->a:[I

    .line 4
    .line 5
    array-length v3, v2

    .line 6
    if-ge v0, v3, :cond_3

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/R2;->t(I)I

    .line 9
    .line 10
    .line 11
    move-result v3

    .line 12
    const v4, 0xfffff

    .line 13
    .line 14
    .line 15
    and-int/2addr v4, v3

    .line 16
    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/R2;->s(I)I

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    aget v2, v2, v0

    .line 21
    .line 22
    int-to-long v4, v4

    .line 23
    const/16 v6, 0x4d5

    .line 24
    .line 25
    const/16 v7, 0x4cf

    .line 26
    .line 27
    const/16 v8, 0x25

    .line 28
    .line 29
    const/16 v9, 0x20

    .line 30
    .line 31
    packed-switch v3, :pswitch_data_0

    .line 32
    .line 33
    .line 34
    goto/16 :goto_5

    .line 35
    .line 36
    :pswitch_0
    invoke-virtual {p0, v2, p1, v0}, Lcom/google/android/gms/internal/measurement/R2;->n(ILjava/lang/Object;I)Z

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    if-eqz v2, :cond_2

    .line 41
    .line 42
    mul-int/lit8 v1, v1, 0x35

    .line 43
    .line 44
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/g3;->i(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    :goto_1
    add-int/2addr v2, v1

    .line 53
    move v1, v2

    .line 54
    goto/16 :goto_5

    .line 55
    .line 56
    :pswitch_1
    invoke-virtual {p0, v2, p1, v0}, Lcom/google/android/gms/internal/measurement/R2;->n(ILjava/lang/Object;I)Z

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    if-eqz v2, :cond_2

    .line 61
    .line 62
    mul-int/lit8 v1, v1, 0x35

    .line 63
    .line 64
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/R2;->u(Ljava/lang/Object;J)J

    .line 65
    .line 66
    .line 67
    move-result-wide v2

    .line 68
    sget-object v4, Lcom/google/android/gms/internal/measurement/z2;->a:Ljava/nio/charset/Charset;

    .line 69
    .line 70
    :goto_2
    ushr-long v4, v2, v9

    .line 71
    .line 72
    xor-long/2addr v2, v4

    .line 73
    long-to-int v3, v2

    .line 74
    add-int/2addr v1, v3

    .line 75
    goto/16 :goto_5

    .line 76
    .line 77
    :pswitch_2
    invoke-virtual {p0, v2, p1, v0}, Lcom/google/android/gms/internal/measurement/R2;->n(ILjava/lang/Object;I)Z

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    if-eqz v2, :cond_2

    .line 82
    .line 83
    mul-int/lit8 v1, v1, 0x35

    .line 84
    .line 85
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/R2;->q(Ljava/lang/Object;J)I

    .line 86
    .line 87
    .line 88
    move-result v2

    .line 89
    goto :goto_1

    .line 90
    :pswitch_3
    invoke-virtual {p0, v2, p1, v0}, Lcom/google/android/gms/internal/measurement/R2;->n(ILjava/lang/Object;I)Z

    .line 91
    .line 92
    .line 93
    move-result v2

    .line 94
    if-eqz v2, :cond_2

    .line 95
    .line 96
    mul-int/lit8 v1, v1, 0x35

    .line 97
    .line 98
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/R2;->u(Ljava/lang/Object;J)J

    .line 99
    .line 100
    .line 101
    move-result-wide v2

    .line 102
    sget-object v4, Lcom/google/android/gms/internal/measurement/z2;->a:Ljava/nio/charset/Charset;

    .line 103
    .line 104
    goto :goto_2

    .line 105
    :pswitch_4
    invoke-virtual {p0, v2, p1, v0}, Lcom/google/android/gms/internal/measurement/R2;->n(ILjava/lang/Object;I)Z

    .line 106
    .line 107
    .line 108
    move-result v2

    .line 109
    if-eqz v2, :cond_2

    .line 110
    .line 111
    mul-int/lit8 v1, v1, 0x35

    .line 112
    .line 113
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/R2;->q(Ljava/lang/Object;J)I

    .line 114
    .line 115
    .line 116
    move-result v2

    .line 117
    goto :goto_1

    .line 118
    :pswitch_5
    invoke-virtual {p0, v2, p1, v0}, Lcom/google/android/gms/internal/measurement/R2;->n(ILjava/lang/Object;I)Z

    .line 119
    .line 120
    .line 121
    move-result v2

    .line 122
    if-eqz v2, :cond_2

    .line 123
    .line 124
    mul-int/lit8 v1, v1, 0x35

    .line 125
    .line 126
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/R2;->q(Ljava/lang/Object;J)I

    .line 127
    .line 128
    .line 129
    move-result v2

    .line 130
    goto :goto_1

    .line 131
    :pswitch_6
    invoke-virtual {p0, v2, p1, v0}, Lcom/google/android/gms/internal/measurement/R2;->n(ILjava/lang/Object;I)Z

    .line 132
    .line 133
    .line 134
    move-result v2

    .line 135
    if-eqz v2, :cond_2

    .line 136
    .line 137
    mul-int/lit8 v1, v1, 0x35

    .line 138
    .line 139
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/R2;->q(Ljava/lang/Object;J)I

    .line 140
    .line 141
    .line 142
    move-result v2

    .line 143
    goto :goto_1

    .line 144
    :pswitch_7
    invoke-virtual {p0, v2, p1, v0}, Lcom/google/android/gms/internal/measurement/R2;->n(ILjava/lang/Object;I)Z

    .line 145
    .line 146
    .line 147
    move-result v2

    .line 148
    if-eqz v2, :cond_2

    .line 149
    .line 150
    mul-int/lit8 v1, v1, 0x35

    .line 151
    .line 152
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/g3;->i(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object v2

    .line 156
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 157
    .line 158
    .line 159
    move-result v2

    .line 160
    goto :goto_1

    .line 161
    :pswitch_8
    invoke-virtual {p0, v2, p1, v0}, Lcom/google/android/gms/internal/measurement/R2;->n(ILjava/lang/Object;I)Z

    .line 162
    .line 163
    .line 164
    move-result v2

    .line 165
    if-eqz v2, :cond_2

    .line 166
    .line 167
    mul-int/lit8 v1, v1, 0x35

    .line 168
    .line 169
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/g3;->i(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object v2

    .line 173
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 174
    .line 175
    .line 176
    move-result v2

    .line 177
    goto :goto_1

    .line 178
    :pswitch_9
    invoke-virtual {p0, v2, p1, v0}, Lcom/google/android/gms/internal/measurement/R2;->n(ILjava/lang/Object;I)Z

    .line 179
    .line 180
    .line 181
    move-result v2

    .line 182
    if-eqz v2, :cond_2

    .line 183
    .line 184
    mul-int/lit8 v1, v1, 0x35

    .line 185
    .line 186
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/g3;->i(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    move-result-object v2

    .line 190
    check-cast v2, Ljava/lang/String;

    .line 191
    .line 192
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 193
    .line 194
    .line 195
    move-result v2

    .line 196
    goto/16 :goto_1

    .line 197
    .line 198
    :pswitch_a
    invoke-virtual {p0, v2, p1, v0}, Lcom/google/android/gms/internal/measurement/R2;->n(ILjava/lang/Object;I)Z

    .line 199
    .line 200
    .line 201
    move-result v2

    .line 202
    if-eqz v2, :cond_2

    .line 203
    .line 204
    mul-int/lit8 v1, v1, 0x35

    .line 205
    .line 206
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/g3;->i(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 207
    .line 208
    .line 209
    move-result-object v2

    .line 210
    check-cast v2, Ljava/lang/Boolean;

    .line 211
    .line 212
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 213
    .line 214
    .line 215
    move-result v2

    .line 216
    sget-object v3, Lcom/google/android/gms/internal/measurement/z2;->a:Ljava/nio/charset/Charset;

    .line 217
    .line 218
    if-eqz v2, :cond_0

    .line 219
    .line 220
    :goto_3
    const/16 v6, 0x4cf

    .line 221
    .line 222
    :cond_0
    add-int/2addr v6, v1

    .line 223
    move v1, v6

    .line 224
    goto/16 :goto_5

    .line 225
    .line 226
    :pswitch_b
    invoke-virtual {p0, v2, p1, v0}, Lcom/google/android/gms/internal/measurement/R2;->n(ILjava/lang/Object;I)Z

    .line 227
    .line 228
    .line 229
    move-result v2

    .line 230
    if-eqz v2, :cond_2

    .line 231
    .line 232
    mul-int/lit8 v1, v1, 0x35

    .line 233
    .line 234
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/R2;->q(Ljava/lang/Object;J)I

    .line 235
    .line 236
    .line 237
    move-result v2

    .line 238
    goto/16 :goto_1

    .line 239
    .line 240
    :pswitch_c
    invoke-virtual {p0, v2, p1, v0}, Lcom/google/android/gms/internal/measurement/R2;->n(ILjava/lang/Object;I)Z

    .line 241
    .line 242
    .line 243
    move-result v2

    .line 244
    if-eqz v2, :cond_2

    .line 245
    .line 246
    mul-int/lit8 v1, v1, 0x35

    .line 247
    .line 248
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/R2;->u(Ljava/lang/Object;J)J

    .line 249
    .line 250
    .line 251
    move-result-wide v2

    .line 252
    sget-object v4, Lcom/google/android/gms/internal/measurement/z2;->a:Ljava/nio/charset/Charset;

    .line 253
    .line 254
    goto/16 :goto_2

    .line 255
    .line 256
    :pswitch_d
    invoke-virtual {p0, v2, p1, v0}, Lcom/google/android/gms/internal/measurement/R2;->n(ILjava/lang/Object;I)Z

    .line 257
    .line 258
    .line 259
    move-result v2

    .line 260
    if-eqz v2, :cond_2

    .line 261
    .line 262
    mul-int/lit8 v1, v1, 0x35

    .line 263
    .line 264
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/R2;->q(Ljava/lang/Object;J)I

    .line 265
    .line 266
    .line 267
    move-result v2

    .line 268
    goto/16 :goto_1

    .line 269
    .line 270
    :pswitch_e
    invoke-virtual {p0, v2, p1, v0}, Lcom/google/android/gms/internal/measurement/R2;->n(ILjava/lang/Object;I)Z

    .line 271
    .line 272
    .line 273
    move-result v2

    .line 274
    if-eqz v2, :cond_2

    .line 275
    .line 276
    mul-int/lit8 v1, v1, 0x35

    .line 277
    .line 278
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/R2;->u(Ljava/lang/Object;J)J

    .line 279
    .line 280
    .line 281
    move-result-wide v2

    .line 282
    sget-object v4, Lcom/google/android/gms/internal/measurement/z2;->a:Ljava/nio/charset/Charset;

    .line 283
    .line 284
    goto/16 :goto_2

    .line 285
    .line 286
    :pswitch_f
    invoke-virtual {p0, v2, p1, v0}, Lcom/google/android/gms/internal/measurement/R2;->n(ILjava/lang/Object;I)Z

    .line 287
    .line 288
    .line 289
    move-result v2

    .line 290
    if-eqz v2, :cond_2

    .line 291
    .line 292
    mul-int/lit8 v1, v1, 0x35

    .line 293
    .line 294
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/R2;->u(Ljava/lang/Object;J)J

    .line 295
    .line 296
    .line 297
    move-result-wide v2

    .line 298
    sget-object v4, Lcom/google/android/gms/internal/measurement/z2;->a:Ljava/nio/charset/Charset;

    .line 299
    .line 300
    goto/16 :goto_2

    .line 301
    .line 302
    :pswitch_10
    invoke-virtual {p0, v2, p1, v0}, Lcom/google/android/gms/internal/measurement/R2;->n(ILjava/lang/Object;I)Z

    .line 303
    .line 304
    .line 305
    move-result v2

    .line 306
    if-eqz v2, :cond_2

    .line 307
    .line 308
    mul-int/lit8 v1, v1, 0x35

    .line 309
    .line 310
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/g3;->i(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 311
    .line 312
    .line 313
    move-result-object v2

    .line 314
    check-cast v2, Ljava/lang/Float;

    .line 315
    .line 316
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 317
    .line 318
    .line 319
    move-result v2

    .line 320
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 321
    .line 322
    .line 323
    move-result v2

    .line 324
    goto/16 :goto_1

    .line 325
    .line 326
    :pswitch_11
    invoke-virtual {p0, v2, p1, v0}, Lcom/google/android/gms/internal/measurement/R2;->n(ILjava/lang/Object;I)Z

    .line 327
    .line 328
    .line 329
    move-result v2

    .line 330
    if-eqz v2, :cond_2

    .line 331
    .line 332
    mul-int/lit8 v1, v1, 0x35

    .line 333
    .line 334
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/g3;->i(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 335
    .line 336
    .line 337
    move-result-object v2

    .line 338
    check-cast v2, Ljava/lang/Double;

    .line 339
    .line 340
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    .line 341
    .line 342
    .line 343
    move-result-wide v2

    .line 344
    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    .line 345
    .line 346
    .line 347
    move-result-wide v2

    .line 348
    sget-object v4, Lcom/google/android/gms/internal/measurement/z2;->a:Ljava/nio/charset/Charset;

    .line 349
    .line 350
    goto/16 :goto_2

    .line 351
    .line 352
    :pswitch_12
    mul-int/lit8 v1, v1, 0x35

    .line 353
    .line 354
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/g3;->i(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 355
    .line 356
    .line 357
    move-result-object v2

    .line 358
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 359
    .line 360
    .line 361
    move-result v2

    .line 362
    goto/16 :goto_1

    .line 363
    .line 364
    :pswitch_13
    mul-int/lit8 v1, v1, 0x35

    .line 365
    .line 366
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/g3;->i(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 367
    .line 368
    .line 369
    move-result-object v2

    .line 370
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 371
    .line 372
    .line 373
    move-result v2

    .line 374
    goto/16 :goto_1

    .line 375
    .line 376
    :pswitch_14
    mul-int/lit8 v1, v1, 0x35

    .line 377
    .line 378
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/g3;->i(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 379
    .line 380
    .line 381
    move-result-object v2

    .line 382
    if-eqz v2, :cond_1

    .line 383
    .line 384
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 385
    .line 386
    .line 387
    move-result v8

    .line 388
    :cond_1
    :goto_4
    add-int/2addr v1, v8

    .line 389
    goto/16 :goto_5

    .line 390
    .line 391
    :pswitch_15
    mul-int/lit8 v1, v1, 0x35

    .line 392
    .line 393
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/g3;->g(Ljava/lang/Object;J)J

    .line 394
    .line 395
    .line 396
    move-result-wide v2

    .line 397
    sget-object v4, Lcom/google/android/gms/internal/measurement/z2;->a:Ljava/nio/charset/Charset;

    .line 398
    .line 399
    goto/16 :goto_2

    .line 400
    .line 401
    :pswitch_16
    mul-int/lit8 v1, v1, 0x35

    .line 402
    .line 403
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/g3;->f(Ljava/lang/Object;J)I

    .line 404
    .line 405
    .line 406
    move-result v2

    .line 407
    goto/16 :goto_1

    .line 408
    .line 409
    :pswitch_17
    mul-int/lit8 v1, v1, 0x35

    .line 410
    .line 411
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/g3;->g(Ljava/lang/Object;J)J

    .line 412
    .line 413
    .line 414
    move-result-wide v2

    .line 415
    sget-object v4, Lcom/google/android/gms/internal/measurement/z2;->a:Ljava/nio/charset/Charset;

    .line 416
    .line 417
    goto/16 :goto_2

    .line 418
    .line 419
    :pswitch_18
    mul-int/lit8 v1, v1, 0x35

    .line 420
    .line 421
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/g3;->f(Ljava/lang/Object;J)I

    .line 422
    .line 423
    .line 424
    move-result v2

    .line 425
    goto/16 :goto_1

    .line 426
    .line 427
    :pswitch_19
    mul-int/lit8 v1, v1, 0x35

    .line 428
    .line 429
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/g3;->f(Ljava/lang/Object;J)I

    .line 430
    .line 431
    .line 432
    move-result v2

    .line 433
    goto/16 :goto_1

    .line 434
    .line 435
    :pswitch_1a
    mul-int/lit8 v1, v1, 0x35

    .line 436
    .line 437
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/g3;->f(Ljava/lang/Object;J)I

    .line 438
    .line 439
    .line 440
    move-result v2

    .line 441
    goto/16 :goto_1

    .line 442
    .line 443
    :pswitch_1b
    mul-int/lit8 v1, v1, 0x35

    .line 444
    .line 445
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/g3;->i(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 446
    .line 447
    .line 448
    move-result-object v2

    .line 449
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 450
    .line 451
    .line 452
    move-result v2

    .line 453
    goto/16 :goto_1

    .line 454
    .line 455
    :pswitch_1c
    mul-int/lit8 v1, v1, 0x35

    .line 456
    .line 457
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/g3;->i(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 458
    .line 459
    .line 460
    move-result-object v2

    .line 461
    if-eqz v2, :cond_1

    .line 462
    .line 463
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 464
    .line 465
    .line 466
    move-result v8

    .line 467
    goto :goto_4

    .line 468
    :pswitch_1d
    mul-int/lit8 v1, v1, 0x35

    .line 469
    .line 470
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/g3;->i(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 471
    .line 472
    .line 473
    move-result-object v2

    .line 474
    check-cast v2, Ljava/lang/String;

    .line 475
    .line 476
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 477
    .line 478
    .line 479
    move-result v2

    .line 480
    goto/16 :goto_1

    .line 481
    .line 482
    :pswitch_1e
    mul-int/lit8 v1, v1, 0x35

    .line 483
    .line 484
    sget-object v2, Lcom/google/android/gms/internal/measurement/g3;->c:Lcom/google/android/gms/internal/measurement/f3;

    .line 485
    .line 486
    invoke-virtual {v2, p1, v4, v5}, Lcom/google/android/gms/internal/measurement/f3;->g(Ljava/lang/Object;J)Z

    .line 487
    .line 488
    .line 489
    move-result v2

    .line 490
    sget-object v3, Lcom/google/android/gms/internal/measurement/z2;->a:Ljava/nio/charset/Charset;

    .line 491
    .line 492
    if-eqz v2, :cond_0

    .line 493
    .line 494
    goto/16 :goto_3

    .line 495
    .line 496
    :pswitch_1f
    mul-int/lit8 v1, v1, 0x35

    .line 497
    .line 498
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/g3;->f(Ljava/lang/Object;J)I

    .line 499
    .line 500
    .line 501
    move-result v2

    .line 502
    goto/16 :goto_1

    .line 503
    .line 504
    :pswitch_20
    mul-int/lit8 v1, v1, 0x35

    .line 505
    .line 506
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/g3;->g(Ljava/lang/Object;J)J

    .line 507
    .line 508
    .line 509
    move-result-wide v2

    .line 510
    sget-object v4, Lcom/google/android/gms/internal/measurement/z2;->a:Ljava/nio/charset/Charset;

    .line 511
    .line 512
    goto/16 :goto_2

    .line 513
    .line 514
    :pswitch_21
    mul-int/lit8 v1, v1, 0x35

    .line 515
    .line 516
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/g3;->f(Ljava/lang/Object;J)I

    .line 517
    .line 518
    .line 519
    move-result v2

    .line 520
    goto/16 :goto_1

    .line 521
    .line 522
    :pswitch_22
    mul-int/lit8 v1, v1, 0x35

    .line 523
    .line 524
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/g3;->g(Ljava/lang/Object;J)J

    .line 525
    .line 526
    .line 527
    move-result-wide v2

    .line 528
    sget-object v4, Lcom/google/android/gms/internal/measurement/z2;->a:Ljava/nio/charset/Charset;

    .line 529
    .line 530
    goto/16 :goto_2

    .line 531
    .line 532
    :pswitch_23
    mul-int/lit8 v1, v1, 0x35

    .line 533
    .line 534
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/g3;->g(Ljava/lang/Object;J)J

    .line 535
    .line 536
    .line 537
    move-result-wide v2

    .line 538
    sget-object v4, Lcom/google/android/gms/internal/measurement/z2;->a:Ljava/nio/charset/Charset;

    .line 539
    .line 540
    goto/16 :goto_2

    .line 541
    .line 542
    :pswitch_24
    mul-int/lit8 v1, v1, 0x35

    .line 543
    .line 544
    sget-object v2, Lcom/google/android/gms/internal/measurement/g3;->c:Lcom/google/android/gms/internal/measurement/f3;

    .line 545
    .line 546
    invoke-virtual {v2, p1, v4, v5}, Lcom/google/android/gms/internal/measurement/f3;->b(Ljava/lang/Object;J)F

    .line 547
    .line 548
    .line 549
    move-result v2

    .line 550
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 551
    .line 552
    .line 553
    move-result v2

    .line 554
    goto/16 :goto_1

    .line 555
    .line 556
    :pswitch_25
    mul-int/lit8 v1, v1, 0x35

    .line 557
    .line 558
    sget-object v2, Lcom/google/android/gms/internal/measurement/g3;->c:Lcom/google/android/gms/internal/measurement/f3;

    .line 559
    .line 560
    invoke-virtual {v2, p1, v4, v5}, Lcom/google/android/gms/internal/measurement/f3;->a(Ljava/lang/Object;J)D

    .line 561
    .line 562
    .line 563
    move-result-wide v2

    .line 564
    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    .line 565
    .line 566
    .line 567
    move-result-wide v2

    .line 568
    sget-object v4, Lcom/google/android/gms/internal/measurement/z2;->a:Ljava/nio/charset/Charset;

    .line 569
    .line 570
    goto/16 :goto_2

    .line 571
    .line 572
    :cond_2
    :goto_5
    add-int/lit8 v0, v0, 0x3

    .line 573
    .line 574
    goto/16 :goto_0

    .line 575
    .line 576
    :cond_3
    mul-int/lit8 v1, v1, 0x35

    .line 577
    .line 578
    check-cast p1, Lcom/google/android/gms/internal/measurement/s2;

    .line 579
    .line 580
    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/s2;->zzc:Lcom/google/android/gms/internal/measurement/b3;

    .line 581
    .line 582
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/b3;->hashCode()I

    .line 583
    .line 584
    .line 585
    move-result p1

    .line 586
    add-int/2addr p1, v1

    .line 587
    return p1

    .line 588
    nop

    .line 589
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final zze()Lcom/google/android/gms/internal/measurement/s2;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/R2;->e:Lcom/google/android/gms/internal/measurement/P2;

    .line 2
    .line 3
    check-cast v0, Lcom/google/android/gms/internal/measurement/s2;

    .line 4
    .line 5
    const/4 v1, 0x4

    .line 6
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/s2;->p(I)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lcom/google/android/gms/internal/measurement/s2;

    .line 11
    .line 12
    return-object v0
.end method

.method public final zzf(Ljava/lang/Object;)V
    .locals 7

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/R2;->m(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto/16 :goto_2

    .line 8
    .line 9
    :cond_0
    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/s2;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    move-object v0, p1

    .line 15
    check-cast v0, Lcom/google/android/gms/internal/measurement/s2;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/s2;->m()V

    .line 18
    .line 19
    .line 20
    iput v1, v0, Lcom/google/android/gms/internal/measurement/c2;->zza:I

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/s2;->k()V

    .line 23
    .line 24
    .line 25
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/R2;->a:[I

    .line 26
    .line 27
    array-length v2, v0

    .line 28
    if-ge v1, v2, :cond_5

    .line 29
    .line 30
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/measurement/R2;->t(I)I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    const v3, 0xfffff

    .line 35
    .line 36
    .line 37
    and-int/2addr v3, v2

    .line 38
    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/R2;->s(I)I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    int-to-long v3, v3

    .line 43
    const/16 v5, 0x9

    .line 44
    .line 45
    sget-object v6, Lcom/google/android/gms/internal/measurement/R2;->k:Lsun/misc/Unsafe;

    .line 46
    .line 47
    if-eq v2, v5, :cond_3

    .line 48
    .line 49
    const/16 v5, 0x3c

    .line 50
    .line 51
    if-eq v2, v5, :cond_2

    .line 52
    .line 53
    const/16 v5, 0x44

    .line 54
    .line 55
    if-eq v2, v5, :cond_2

    .line 56
    .line 57
    packed-switch v2, :pswitch_data_0

    .line 58
    .line 59
    .line 60
    goto :goto_1

    .line 61
    :pswitch_0
    invoke-virtual {v6, p1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    if-eqz v0, :cond_4

    .line 66
    .line 67
    move-object v2, v0

    .line 68
    check-cast v2, Lcom/google/android/gms/internal/measurement/L2;

    .line 69
    .line 70
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/L2;->c()V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v6, p1, v3, v4, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    goto :goto_1

    .line 77
    :pswitch_1
    invoke-static {p1, v3, v4}, Lcom/google/android/gms/internal/measurement/g3;->i(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    check-cast v0, Lcom/google/android/gms/internal/measurement/y2;

    .line 82
    .line 83
    check-cast v0, Lcom/google/android/gms/internal/measurement/d2;

    .line 84
    .line 85
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/d2;->zzb()V

    .line 86
    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_2
    aget v0, v0, v1

    .line 90
    .line 91
    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/gms/internal/measurement/R2;->n(ILjava/lang/Object;I)Z

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    if-eqz v0, :cond_4

    .line 96
    .line 97
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/measurement/R2;->w(I)Lcom/google/android/gms/internal/measurement/Y2;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    invoke-virtual {v6, p1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/measurement/Y2;->zzf(Ljava/lang/Object;)V

    .line 106
    .line 107
    .line 108
    goto :goto_1

    .line 109
    :cond_3
    :pswitch_2
    invoke-virtual {p0, v1, p1}, Lcom/google/android/gms/internal/measurement/R2;->k(ILjava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    move-result v0

    .line 113
    if-eqz v0, :cond_4

    .line 114
    .line 115
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/measurement/R2;->w(I)Lcom/google/android/gms/internal/measurement/Y2;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    invoke-virtual {v6, p1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/measurement/Y2;->zzf(Ljava/lang/Object;)V

    .line 124
    .line 125
    .line 126
    :cond_4
    :goto_1
    add-int/lit8 v1, v1, 0x3

    .line 127
    .line 128
    goto :goto_0

    .line 129
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/R2;->i:Lcom/google/android/gms/internal/measurement/q2;

    .line 130
    .line 131
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 132
    .line 133
    .line 134
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/q2;->a(Ljava/lang/Object;)V

    .line 135
    .line 136
    .line 137
    :goto_2
    return-void

    .line 138
    nop

    .line 139
    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final zzg(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/R2;->m(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_5

    .line 6
    .line 7
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/R2;->a:[I

    .line 12
    .line 13
    array-length v2, v1

    .line 14
    if-ge v0, v2, :cond_4

    .line 15
    .line 16
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/R2;->t(I)I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    const v3, 0xfffff

    .line 21
    .line 22
    .line 23
    and-int v4, v2, v3

    .line 24
    .line 25
    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/R2;->s(I)I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    aget v5, v1, v0

    .line 30
    .line 31
    int-to-long v6, v4

    .line 32
    packed-switch v2, :pswitch_data_0

    .line 33
    .line 34
    .line 35
    goto/16 :goto_2

    .line 36
    .line 37
    :pswitch_0
    invoke-virtual {p0, v0, p1, p2}, Lcom/google/android/gms/internal/measurement/R2;->f(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    goto/16 :goto_2

    .line 41
    .line 42
    :pswitch_1
    invoke-virtual {p0, v5, p2, v0}, Lcom/google/android/gms/internal/measurement/R2;->n(ILjava/lang/Object;I)Z

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    if-eqz v2, :cond_3

    .line 47
    .line 48
    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/measurement/g3;->i(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-static {p1, v6, v7, v2}, Lcom/google/android/gms/internal/measurement/g3;->p(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    add-int/lit8 v2, v0, 0x2

    .line 56
    .line 57
    aget v1, v1, v2

    .line 58
    .line 59
    and-int/2addr v1, v3

    .line 60
    int-to-long v1, v1

    .line 61
    invoke-static {p1, v1, v2, v5}, Lcom/google/android/gms/internal/measurement/g3;->n(Ljava/lang/Object;JI)V

    .line 62
    .line 63
    .line 64
    goto/16 :goto_2

    .line 65
    .line 66
    :pswitch_2
    invoke-virtual {p0, v0, p1, p2}, Lcom/google/android/gms/internal/measurement/R2;->f(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    goto/16 :goto_2

    .line 70
    .line 71
    :pswitch_3
    invoke-virtual {p0, v5, p2, v0}, Lcom/google/android/gms/internal/measurement/R2;->n(ILjava/lang/Object;I)Z

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    if-eqz v2, :cond_3

    .line 76
    .line 77
    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/measurement/g3;->i(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    invoke-static {p1, v6, v7, v2}, Lcom/google/android/gms/internal/measurement/g3;->p(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    add-int/lit8 v2, v0, 0x2

    .line 85
    .line 86
    aget v1, v1, v2

    .line 87
    .line 88
    and-int/2addr v1, v3

    .line 89
    int-to-long v1, v1

    .line 90
    invoke-static {p1, v1, v2, v5}, Lcom/google/android/gms/internal/measurement/g3;->n(Ljava/lang/Object;JI)V

    .line 91
    .line 92
    .line 93
    goto/16 :goto_2

    .line 94
    .line 95
    :pswitch_4
    sget-object v1, Lcom/google/android/gms/internal/measurement/Z2;->a:Lcom/google/android/gms/internal/measurement/q2;

    .line 96
    .line 97
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/measurement/g3;->i(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/measurement/g3;->i(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    invoke-static {v1, v2}, LS3/g;->c(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/L2;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    invoke-static {p1, v6, v7, v1}, Lcom/google/android/gms/internal/measurement/g3;->p(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 110
    .line 111
    .line 112
    goto/16 :goto_2

    .line 113
    .line 114
    :pswitch_5
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/measurement/g3;->i(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    check-cast v1, Lcom/google/android/gms/internal/measurement/y2;

    .line 119
    .line 120
    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/measurement/g3;->i(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    check-cast v2, Lcom/google/android/gms/internal/measurement/y2;

    .line 125
    .line 126
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 127
    .line 128
    .line 129
    move-result v3

    .line 130
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 131
    .line 132
    .line 133
    move-result v4

    .line 134
    if-lez v3, :cond_1

    .line 135
    .line 136
    if-lez v4, :cond_1

    .line 137
    .line 138
    move-object v5, v1

    .line 139
    check-cast v5, Lcom/google/android/gms/internal/measurement/d2;

    .line 140
    .line 141
    iget-boolean v5, v5, Lcom/google/android/gms/internal/measurement/d2;->G:Z

    .line 142
    .line 143
    if-nez v5, :cond_0

    .line 144
    .line 145
    add-int/2addr v4, v3

    .line 146
    invoke-interface {v1, v4}, Lcom/google/android/gms/internal/measurement/y2;->zzd(I)Lcom/google/android/gms/internal/measurement/y2;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    :cond_0
    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 151
    .line 152
    .line 153
    :cond_1
    if-gtz v3, :cond_2

    .line 154
    .line 155
    goto :goto_1

    .line 156
    :cond_2
    move-object v2, v1

    .line 157
    :goto_1
    invoke-static {p1, v6, v7, v2}, Lcom/google/android/gms/internal/measurement/g3;->p(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 158
    .line 159
    .line 160
    goto/16 :goto_2

    .line 161
    .line 162
    :pswitch_6
    invoke-virtual {p0, v0, p1, p2}, Lcom/google/android/gms/internal/measurement/R2;->e(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 163
    .line 164
    .line 165
    goto/16 :goto_2

    .line 166
    .line 167
    :pswitch_7
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/measurement/R2;->k(ILjava/lang/Object;)Z

    .line 168
    .line 169
    .line 170
    move-result v1

    .line 171
    if-eqz v1, :cond_3

    .line 172
    .line 173
    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/measurement/g3;->g(Ljava/lang/Object;J)J

    .line 174
    .line 175
    .line 176
    move-result-wide v1

    .line 177
    invoke-static {p1, v6, v7, v1, v2}, Lcom/google/android/gms/internal/measurement/g3;->o(Ljava/lang/Object;JJ)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/measurement/R2;->g(ILjava/lang/Object;)V

    .line 181
    .line 182
    .line 183
    goto/16 :goto_2

    .line 184
    .line 185
    :pswitch_8
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/measurement/R2;->k(ILjava/lang/Object;)Z

    .line 186
    .line 187
    .line 188
    move-result v1

    .line 189
    if-eqz v1, :cond_3

    .line 190
    .line 191
    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/measurement/g3;->f(Ljava/lang/Object;J)I

    .line 192
    .line 193
    .line 194
    move-result v1

    .line 195
    invoke-static {p1, v6, v7, v1}, Lcom/google/android/gms/internal/measurement/g3;->n(Ljava/lang/Object;JI)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/measurement/R2;->g(ILjava/lang/Object;)V

    .line 199
    .line 200
    .line 201
    goto/16 :goto_2

    .line 202
    .line 203
    :pswitch_9
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/measurement/R2;->k(ILjava/lang/Object;)Z

    .line 204
    .line 205
    .line 206
    move-result v1

    .line 207
    if-eqz v1, :cond_3

    .line 208
    .line 209
    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/measurement/g3;->g(Ljava/lang/Object;J)J

    .line 210
    .line 211
    .line 212
    move-result-wide v1

    .line 213
    invoke-static {p1, v6, v7, v1, v2}, Lcom/google/android/gms/internal/measurement/g3;->o(Ljava/lang/Object;JJ)V

    .line 214
    .line 215
    .line 216
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/measurement/R2;->g(ILjava/lang/Object;)V

    .line 217
    .line 218
    .line 219
    goto/16 :goto_2

    .line 220
    .line 221
    :pswitch_a
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/measurement/R2;->k(ILjava/lang/Object;)Z

    .line 222
    .line 223
    .line 224
    move-result v1

    .line 225
    if-eqz v1, :cond_3

    .line 226
    .line 227
    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/measurement/g3;->f(Ljava/lang/Object;J)I

    .line 228
    .line 229
    .line 230
    move-result v1

    .line 231
    invoke-static {p1, v6, v7, v1}, Lcom/google/android/gms/internal/measurement/g3;->n(Ljava/lang/Object;JI)V

    .line 232
    .line 233
    .line 234
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/measurement/R2;->g(ILjava/lang/Object;)V

    .line 235
    .line 236
    .line 237
    goto/16 :goto_2

    .line 238
    .line 239
    :pswitch_b
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/measurement/R2;->k(ILjava/lang/Object;)Z

    .line 240
    .line 241
    .line 242
    move-result v1

    .line 243
    if-eqz v1, :cond_3

    .line 244
    .line 245
    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/measurement/g3;->f(Ljava/lang/Object;J)I

    .line 246
    .line 247
    .line 248
    move-result v1

    .line 249
    invoke-static {p1, v6, v7, v1}, Lcom/google/android/gms/internal/measurement/g3;->n(Ljava/lang/Object;JI)V

    .line 250
    .line 251
    .line 252
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/measurement/R2;->g(ILjava/lang/Object;)V

    .line 253
    .line 254
    .line 255
    goto/16 :goto_2

    .line 256
    .line 257
    :pswitch_c
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/measurement/R2;->k(ILjava/lang/Object;)Z

    .line 258
    .line 259
    .line 260
    move-result v1

    .line 261
    if-eqz v1, :cond_3

    .line 262
    .line 263
    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/measurement/g3;->f(Ljava/lang/Object;J)I

    .line 264
    .line 265
    .line 266
    move-result v1

    .line 267
    invoke-static {p1, v6, v7, v1}, Lcom/google/android/gms/internal/measurement/g3;->n(Ljava/lang/Object;JI)V

    .line 268
    .line 269
    .line 270
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/measurement/R2;->g(ILjava/lang/Object;)V

    .line 271
    .line 272
    .line 273
    goto/16 :goto_2

    .line 274
    .line 275
    :pswitch_d
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/measurement/R2;->k(ILjava/lang/Object;)Z

    .line 276
    .line 277
    .line 278
    move-result v1

    .line 279
    if-eqz v1, :cond_3

    .line 280
    .line 281
    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/measurement/g3;->i(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 282
    .line 283
    .line 284
    move-result-object v1

    .line 285
    invoke-static {p1, v6, v7, v1}, Lcom/google/android/gms/internal/measurement/g3;->p(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 286
    .line 287
    .line 288
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/measurement/R2;->g(ILjava/lang/Object;)V

    .line 289
    .line 290
    .line 291
    goto/16 :goto_2

    .line 292
    .line 293
    :pswitch_e
    invoke-virtual {p0, v0, p1, p2}, Lcom/google/android/gms/internal/measurement/R2;->e(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 294
    .line 295
    .line 296
    goto/16 :goto_2

    .line 297
    .line 298
    :pswitch_f
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/measurement/R2;->k(ILjava/lang/Object;)Z

    .line 299
    .line 300
    .line 301
    move-result v1

    .line 302
    if-eqz v1, :cond_3

    .line 303
    .line 304
    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/measurement/g3;->i(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 305
    .line 306
    .line 307
    move-result-object v1

    .line 308
    invoke-static {p1, v6, v7, v1}, Lcom/google/android/gms/internal/measurement/g3;->p(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 309
    .line 310
    .line 311
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/measurement/R2;->g(ILjava/lang/Object;)V

    .line 312
    .line 313
    .line 314
    goto/16 :goto_2

    .line 315
    .line 316
    :pswitch_10
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/measurement/R2;->k(ILjava/lang/Object;)Z

    .line 317
    .line 318
    .line 319
    move-result v1

    .line 320
    if-eqz v1, :cond_3

    .line 321
    .line 322
    sget-object v1, Lcom/google/android/gms/internal/measurement/g3;->c:Lcom/google/android/gms/internal/measurement/f3;

    .line 323
    .line 324
    invoke-virtual {v1, p2, v6, v7}, Lcom/google/android/gms/internal/measurement/f3;->g(Ljava/lang/Object;J)Z

    .line 325
    .line 326
    .line 327
    move-result v1

    .line 328
    invoke-static {p1, v6, v7, v1}, Lcom/google/android/gms/internal/measurement/g3;->k(Ljava/lang/Object;JZ)V

    .line 329
    .line 330
    .line 331
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/measurement/R2;->g(ILjava/lang/Object;)V

    .line 332
    .line 333
    .line 334
    goto/16 :goto_2

    .line 335
    .line 336
    :pswitch_11
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/measurement/R2;->k(ILjava/lang/Object;)Z

    .line 337
    .line 338
    .line 339
    move-result v1

    .line 340
    if-eqz v1, :cond_3

    .line 341
    .line 342
    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/measurement/g3;->f(Ljava/lang/Object;J)I

    .line 343
    .line 344
    .line 345
    move-result v1

    .line 346
    invoke-static {p1, v6, v7, v1}, Lcom/google/android/gms/internal/measurement/g3;->n(Ljava/lang/Object;JI)V

    .line 347
    .line 348
    .line 349
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/measurement/R2;->g(ILjava/lang/Object;)V

    .line 350
    .line 351
    .line 352
    goto :goto_2

    .line 353
    :pswitch_12
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/measurement/R2;->k(ILjava/lang/Object;)Z

    .line 354
    .line 355
    .line 356
    move-result v1

    .line 357
    if-eqz v1, :cond_3

    .line 358
    .line 359
    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/measurement/g3;->g(Ljava/lang/Object;J)J

    .line 360
    .line 361
    .line 362
    move-result-wide v1

    .line 363
    invoke-static {p1, v6, v7, v1, v2}, Lcom/google/android/gms/internal/measurement/g3;->o(Ljava/lang/Object;JJ)V

    .line 364
    .line 365
    .line 366
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/measurement/R2;->g(ILjava/lang/Object;)V

    .line 367
    .line 368
    .line 369
    goto :goto_2

    .line 370
    :pswitch_13
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/measurement/R2;->k(ILjava/lang/Object;)Z

    .line 371
    .line 372
    .line 373
    move-result v1

    .line 374
    if-eqz v1, :cond_3

    .line 375
    .line 376
    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/measurement/g3;->f(Ljava/lang/Object;J)I

    .line 377
    .line 378
    .line 379
    move-result v1

    .line 380
    invoke-static {p1, v6, v7, v1}, Lcom/google/android/gms/internal/measurement/g3;->n(Ljava/lang/Object;JI)V

    .line 381
    .line 382
    .line 383
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/measurement/R2;->g(ILjava/lang/Object;)V

    .line 384
    .line 385
    .line 386
    goto :goto_2

    .line 387
    :pswitch_14
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/measurement/R2;->k(ILjava/lang/Object;)Z

    .line 388
    .line 389
    .line 390
    move-result v1

    .line 391
    if-eqz v1, :cond_3

    .line 392
    .line 393
    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/measurement/g3;->g(Ljava/lang/Object;J)J

    .line 394
    .line 395
    .line 396
    move-result-wide v1

    .line 397
    invoke-static {p1, v6, v7, v1, v2}, Lcom/google/android/gms/internal/measurement/g3;->o(Ljava/lang/Object;JJ)V

    .line 398
    .line 399
    .line 400
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/measurement/R2;->g(ILjava/lang/Object;)V

    .line 401
    .line 402
    .line 403
    goto :goto_2

    .line 404
    :pswitch_15
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/measurement/R2;->k(ILjava/lang/Object;)Z

    .line 405
    .line 406
    .line 407
    move-result v1

    .line 408
    if-eqz v1, :cond_3

    .line 409
    .line 410
    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/measurement/g3;->g(Ljava/lang/Object;J)J

    .line 411
    .line 412
    .line 413
    move-result-wide v1

    .line 414
    invoke-static {p1, v6, v7, v1, v2}, Lcom/google/android/gms/internal/measurement/g3;->o(Ljava/lang/Object;JJ)V

    .line 415
    .line 416
    .line 417
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/measurement/R2;->g(ILjava/lang/Object;)V

    .line 418
    .line 419
    .line 420
    goto :goto_2

    .line 421
    :pswitch_16
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/measurement/R2;->k(ILjava/lang/Object;)Z

    .line 422
    .line 423
    .line 424
    move-result v1

    .line 425
    if-eqz v1, :cond_3

    .line 426
    .line 427
    sget-object v1, Lcom/google/android/gms/internal/measurement/g3;->c:Lcom/google/android/gms/internal/measurement/f3;

    .line 428
    .line 429
    invoke-virtual {v1, p2, v6, v7}, Lcom/google/android/gms/internal/measurement/f3;->b(Ljava/lang/Object;J)F

    .line 430
    .line 431
    .line 432
    move-result v1

    .line 433
    invoke-static {p1, v6, v7, v1}, Lcom/google/android/gms/internal/measurement/g3;->m(Ljava/lang/Object;JF)V

    .line 434
    .line 435
    .line 436
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/measurement/R2;->g(ILjava/lang/Object;)V

    .line 437
    .line 438
    .line 439
    goto :goto_2

    .line 440
    :pswitch_17
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/measurement/R2;->k(ILjava/lang/Object;)Z

    .line 441
    .line 442
    .line 443
    move-result v1

    .line 444
    if-eqz v1, :cond_3

    .line 445
    .line 446
    sget-object v1, Lcom/google/android/gms/internal/measurement/g3;->c:Lcom/google/android/gms/internal/measurement/f3;

    .line 447
    .line 448
    invoke-virtual {v1, p2, v6, v7}, Lcom/google/android/gms/internal/measurement/f3;->a(Ljava/lang/Object;J)D

    .line 449
    .line 450
    .line 451
    move-result-wide v1

    .line 452
    invoke-static {p1, v6, v7, v1, v2}, Lcom/google/android/gms/internal/measurement/g3;->l(Ljava/lang/Object;JD)V

    .line 453
    .line 454
    .line 455
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/measurement/R2;->g(ILjava/lang/Object;)V

    .line 456
    .line 457
    .line 458
    :cond_3
    :goto_2
    add-int/lit8 v0, v0, 0x3

    .line 459
    .line 460
    goto/16 :goto_0

    .line 461
    .line 462
    :cond_4
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/measurement/Z2;->s(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 463
    .line 464
    .line 465
    return-void

    .line 466
    :cond_5
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 467
    .line 468
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 469
    .line 470
    .line 471
    move-result-object p1

    .line 472
    const-string v0, "Mutating immutable message: "

    .line 473
    .line 474
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 475
    .line 476
    .line 477
    move-result-object p1

    .line 478
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 479
    .line 480
    .line 481
    throw p2

    .line 482
    nop

    .line 483
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
