.class public final Ly5/a;
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
    sput-object v0, Ly5/a;->b:[Lq5/o;

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
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, v1}, Lz5/c;-><init>(I)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Ly5/a;->a:Lz5/c;

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
    invoke-virtual {p0, p1, v0}, Ly5/a;->c(Lm2/l;Ljava/util/Map;)Lq5/m;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    return-object p1
.end method

.method public final c(Lm2/l;Ljava/util/Map;)Lq5/m;
    .locals 33

    .line 1
    move-object/from16 v0, p2

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    const/4 v2, 0x4

    .line 5
    const/4 v3, 0x2

    .line 6
    move-object/from16 v4, p0

    .line 7
    .line 8
    iget-object v5, v4, Ly5/a;->a:Lz5/c;

    .line 9
    .line 10
    const/4 v6, 0x0

    .line 11
    const/4 v7, 0x1

    .line 12
    if-eqz v0, :cond_8

    .line 13
    .line 14
    sget-object v8, Lq5/c;->H:Lq5/c;

    .line 15
    .line 16
    invoke-interface {v0, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_8

    .line 21
    .line 22
    invoke-virtual/range {p1 .. p1}, Lm2/l;->i()Lw5/b;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0}, Lw5/b;->e()[I

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v0}, Lw5/b;->c()[I

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    if-eqz v1, :cond_7

    .line 35
    .line 36
    if-eqz v2, :cond_7

    .line 37
    .line 38
    aget v8, v1, v6

    .line 39
    .line 40
    aget v9, v1, v7

    .line 41
    .line 42
    :goto_0
    iget v10, v0, Lw5/b;->G:I

    .line 43
    .line 44
    if-ge v8, v10, :cond_0

    .line 45
    .line 46
    invoke-virtual {v0, v8, v9}, Lw5/b;->b(II)Z

    .line 47
    .line 48
    .line 49
    move-result v11

    .line 50
    if-eqz v11, :cond_0

    .line 51
    .line 52
    add-int/2addr v8, v7

    .line 53
    goto :goto_0

    .line 54
    :cond_0
    if-eq v8, v10, :cond_6

    .line 55
    .line 56
    aget v9, v1, v6

    .line 57
    .line 58
    sub-int/2addr v8, v9

    .line 59
    if-eqz v8, :cond_5

    .line 60
    .line 61
    aget v1, v1, v7

    .line 62
    .line 63
    aget v10, v2, v7

    .line 64
    .line 65
    aget v2, v2, v6

    .line 66
    .line 67
    sub-int/2addr v2, v9

    .line 68
    add-int/2addr v2, v7

    .line 69
    div-int/2addr v2, v8

    .line 70
    sub-int/2addr v10, v1

    .line 71
    add-int/2addr v10, v7

    .line 72
    div-int/2addr v10, v8

    .line 73
    if-lez v2, :cond_4

    .line 74
    .line 75
    if-lez v10, :cond_4

    .line 76
    .line 77
    div-int/lit8 v3, v8, 0x2

    .line 78
    .line 79
    add-int/2addr v1, v3

    .line 80
    add-int/2addr v9, v3

    .line 81
    new-instance v3, Lw5/b;

    .line 82
    .line 83
    invoke-direct {v3, v2, v10}, Lw5/b;-><init>(II)V

    .line 84
    .line 85
    .line 86
    const/4 v11, 0x0

    .line 87
    :goto_1
    if-ge v11, v10, :cond_3

    .line 88
    .line 89
    mul-int v12, v11, v8

    .line 90
    .line 91
    add-int/2addr v12, v1

    .line 92
    const/4 v13, 0x0

    .line 93
    :goto_2
    if-ge v13, v2, :cond_2

    .line 94
    .line 95
    mul-int v14, v13, v8

    .line 96
    .line 97
    add-int/2addr v14, v9

    .line 98
    invoke-virtual {v0, v14, v12}, Lw5/b;->b(II)Z

    .line 99
    .line 100
    .line 101
    move-result v14

    .line 102
    if-eqz v14, :cond_1

    .line 103
    .line 104
    invoke-virtual {v3, v13, v11}, Lw5/b;->f(II)V

    .line 105
    .line 106
    .line 107
    :cond_1
    add-int/2addr v13, v7

    .line 108
    goto :goto_2

    .line 109
    :cond_2
    add-int/2addr v11, v7

    .line 110
    goto :goto_1

    .line 111
    :cond_3
    invoke-virtual {v5, v3}, Lz5/c;->d(Lw5/b;)Lw5/d;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    sget-object v1, Ly5/a;->b:[Lq5/o;

    .line 116
    .line 117
    goto/16 :goto_8

    .line 118
    .line 119
    :cond_4
    sget-object v0, Lq5/i;->I:Lq5/i;

    .line 120
    .line 121
    throw v0

    .line 122
    :cond_5
    sget-object v0, Lq5/i;->I:Lq5/i;

    .line 123
    .line 124
    throw v0

    .line 125
    :cond_6
    sget-object v0, Lq5/i;->I:Lq5/i;

    .line 126
    .line 127
    throw v0

    .line 128
    :cond_7
    sget-object v0, Lq5/i;->I:Lq5/i;

    .line 129
    .line 130
    throw v0

    .line 131
    :cond_8
    new-instance v0, Lm2/c;

    .line 132
    .line 133
    invoke-virtual/range {p1 .. p1}, Lm2/l;->i()Lw5/b;

    .line 134
    .line 135
    .line 136
    move-result-object v8

    .line 137
    invoke-direct {v0, v8}, Lm2/c;-><init>(Lw5/b;)V

    .line 138
    .line 139
    .line 140
    iget-object v8, v0, Lm2/c;->I:Ljava/lang/Object;

    .line 141
    .line 142
    check-cast v8, Lx/n;

    .line 143
    .line 144
    invoke-virtual {v8}, Lx/n;->b()[Lq5/o;

    .line 145
    .line 146
    .line 147
    move-result-object v8

    .line 148
    aget-object v9, v8, v6

    .line 149
    .line 150
    aget-object v10, v8, v7

    .line 151
    .line 152
    aget-object v11, v8, v1

    .line 153
    .line 154
    aget-object v8, v8, v3

    .line 155
    .line 156
    invoke-virtual {v0, v9, v10}, Lm2/c;->A(Lq5/o;Lq5/o;)I

    .line 157
    .line 158
    .line 159
    move-result v12

    .line 160
    invoke-virtual {v0, v10, v11}, Lm2/c;->A(Lq5/o;Lq5/o;)I

    .line 161
    .line 162
    .line 163
    move-result v13

    .line 164
    invoke-virtual {v0, v11, v8}, Lm2/c;->A(Lq5/o;Lq5/o;)I

    .line 165
    .line 166
    .line 167
    move-result v14

    .line 168
    invoke-virtual {v0, v8, v9}, Lm2/c;->A(Lq5/o;Lq5/o;)I

    .line 169
    .line 170
    .line 171
    move-result v15

    .line 172
    new-array v1, v2, [Lq5/o;

    .line 173
    .line 174
    aput-object v8, v1, v6

    .line 175
    .line 176
    aput-object v9, v1, v7

    .line 177
    .line 178
    aput-object v10, v1, v3

    .line 179
    .line 180
    const/16 v16, 0x3

    .line 181
    .line 182
    aput-object v11, v1, v16

    .line 183
    .line 184
    if-le v12, v13, :cond_9

    .line 185
    .line 186
    aput-object v9, v1, v6

    .line 187
    .line 188
    aput-object v10, v1, v7

    .line 189
    .line 190
    aput-object v11, v1, v3

    .line 191
    .line 192
    aput-object v8, v1, v16

    .line 193
    .line 194
    move v12, v13

    .line 195
    :cond_9
    if-le v12, v14, :cond_a

    .line 196
    .line 197
    aput-object v10, v1, v6

    .line 198
    .line 199
    aput-object v11, v1, v7

    .line 200
    .line 201
    aput-object v8, v1, v3

    .line 202
    .line 203
    aput-object v9, v1, v16

    .line 204
    .line 205
    goto :goto_3

    .line 206
    :cond_a
    move v14, v12

    .line 207
    :goto_3
    if-le v14, v15, :cond_b

    .line 208
    .line 209
    aput-object v11, v1, v6

    .line 210
    .line 211
    aput-object v8, v1, v7

    .line 212
    .line 213
    aput-object v9, v1, v3

    .line 214
    .line 215
    aput-object v10, v1, v16

    .line 216
    .line 217
    :cond_b
    aget-object v8, v1, v6

    .line 218
    .line 219
    aget-object v9, v1, v7

    .line 220
    .line 221
    aget-object v10, v1, v3

    .line 222
    .line 223
    aget-object v11, v1, v16

    .line 224
    .line 225
    invoke-virtual {v0, v8, v11}, Lm2/c;->A(Lq5/o;Lq5/o;)I

    .line 226
    .line 227
    .line 228
    move-result v12

    .line 229
    add-int/2addr v12, v7

    .line 230
    shl-int/2addr v12, v3

    .line 231
    invoke-static {v9, v10, v12}, Lm2/c;->y(Lq5/o;Lq5/o;I)Lq5/o;

    .line 232
    .line 233
    .line 234
    move-result-object v13

    .line 235
    invoke-static {v10, v9, v12}, Lm2/c;->y(Lq5/o;Lq5/o;I)Lq5/o;

    .line 236
    .line 237
    .line 238
    move-result-object v12

    .line 239
    invoke-virtual {v0, v13, v8}, Lm2/c;->A(Lq5/o;Lq5/o;)I

    .line 240
    .line 241
    .line 242
    move-result v13

    .line 243
    invoke-virtual {v0, v12, v11}, Lm2/c;->A(Lq5/o;Lq5/o;)I

    .line 244
    .line 245
    .line 246
    move-result v12

    .line 247
    if-ge v13, v12, :cond_c

    .line 248
    .line 249
    aput-object v8, v1, v6

    .line 250
    .line 251
    aput-object v9, v1, v7

    .line 252
    .line 253
    aput-object v10, v1, v3

    .line 254
    .line 255
    const/4 v12, 0x3

    .line 256
    aput-object v11, v1, v12

    .line 257
    .line 258
    goto :goto_4

    .line 259
    :cond_c
    const/4 v12, 0x3

    .line 260
    aput-object v9, v1, v6

    .line 261
    .line 262
    aput-object v10, v1, v7

    .line 263
    .line 264
    aput-object v11, v1, v3

    .line 265
    .line 266
    aput-object v8, v1, v12

    .line 267
    .line 268
    :goto_4
    aget-object v8, v1, v6

    .line 269
    .line 270
    aget-object v9, v1, v7

    .line 271
    .line 272
    aget-object v10, v1, v3

    .line 273
    .line 274
    aget-object v11, v1, v12

    .line 275
    .line 276
    invoke-virtual {v0, v8, v11}, Lm2/c;->A(Lq5/o;Lq5/o;)I

    .line 277
    .line 278
    .line 279
    move-result v12

    .line 280
    invoke-virtual {v0, v9, v11}, Lm2/c;->A(Lq5/o;Lq5/o;)I

    .line 281
    .line 282
    .line 283
    move-result v13

    .line 284
    add-int/2addr v13, v7

    .line 285
    shl-int/2addr v13, v3

    .line 286
    invoke-static {v8, v9, v13}, Lm2/c;->y(Lq5/o;Lq5/o;I)Lq5/o;

    .line 287
    .line 288
    .line 289
    move-result-object v13

    .line 290
    add-int/2addr v12, v7

    .line 291
    shl-int/2addr v12, v3

    .line 292
    invoke-static {v10, v9, v12}, Lm2/c;->y(Lq5/o;Lq5/o;I)Lq5/o;

    .line 293
    .line 294
    .line 295
    move-result-object v12

    .line 296
    invoke-virtual {v0, v13, v11}, Lm2/c;->A(Lq5/o;Lq5/o;)I

    .line 297
    .line 298
    .line 299
    move-result v14

    .line 300
    invoke-virtual {v0, v12, v11}, Lm2/c;->A(Lq5/o;Lq5/o;)I

    .line 301
    .line 302
    .line 303
    move-result v15

    .line 304
    new-instance v2, Lq5/o;

    .line 305
    .line 306
    iget v3, v10, Lq5/o;->a:F

    .line 307
    .line 308
    iget v6, v9, Lq5/o;->a:F

    .line 309
    .line 310
    sub-float/2addr v3, v6

    .line 311
    add-int/2addr v14, v7

    .line 312
    int-to-float v14, v14

    .line 313
    div-float/2addr v3, v14

    .line 314
    iget v7, v11, Lq5/o;->a:F

    .line 315
    .line 316
    add-float/2addr v3, v7

    .line 317
    iget v10, v10, Lq5/o;->b:F

    .line 318
    .line 319
    iget v9, v9, Lq5/o;->b:F

    .line 320
    .line 321
    sub-float/2addr v10, v9

    .line 322
    div-float/2addr v10, v14

    .line 323
    iget v11, v11, Lq5/o;->b:F

    .line 324
    .line 325
    add-float/2addr v10, v11

    .line 326
    invoke-direct {v2, v3, v10}, Lq5/o;-><init>(FF)V

    .line 327
    .line 328
    .line 329
    new-instance v3, Lq5/o;

    .line 330
    .line 331
    iget v10, v8, Lq5/o;->a:F

    .line 332
    .line 333
    sub-float/2addr v10, v6

    .line 334
    const/4 v6, 0x1

    .line 335
    add-int/2addr v15, v6

    .line 336
    int-to-float v6, v15

    .line 337
    div-float/2addr v10, v6

    .line 338
    add-float/2addr v10, v7

    .line 339
    iget v7, v8, Lq5/o;->b:F

    .line 340
    .line 341
    sub-float/2addr v7, v9

    .line 342
    div-float/2addr v7, v6

    .line 343
    add-float/2addr v7, v11

    .line 344
    invoke-direct {v3, v10, v7}, Lq5/o;-><init>(FF)V

    .line 345
    .line 346
    .line 347
    invoke-virtual {v0, v2}, Lm2/c;->l(Lq5/o;)Z

    .line 348
    .line 349
    .line 350
    move-result v6

    .line 351
    if-nez v6, :cond_f

    .line 352
    .line 353
    invoke-virtual {v0, v3}, Lm2/c;->l(Lq5/o;)Z

    .line 354
    .line 355
    .line 356
    move-result v2

    .line 357
    if-eqz v2, :cond_e

    .line 358
    .line 359
    :cond_d
    move-object v2, v3

    .line 360
    :goto_5
    const/4 v3, 0x3

    .line 361
    goto :goto_7

    .line 362
    :cond_e
    const/4 v2, 0x0

    .line 363
    goto :goto_5

    .line 364
    :cond_f
    invoke-virtual {v0, v3}, Lm2/c;->l(Lq5/o;)Z

    .line 365
    .line 366
    .line 367
    move-result v6

    .line 368
    if-nez v6, :cond_10

    .line 369
    .line 370
    :goto_6
    goto :goto_5

    .line 371
    :cond_10
    invoke-virtual {v0, v13, v2}, Lm2/c;->A(Lq5/o;Lq5/o;)I

    .line 372
    .line 373
    .line 374
    move-result v6

    .line 375
    invoke-virtual {v0, v12, v2}, Lm2/c;->A(Lq5/o;Lq5/o;)I

    .line 376
    .line 377
    .line 378
    move-result v7

    .line 379
    add-int/2addr v7, v6

    .line 380
    invoke-virtual {v0, v13, v3}, Lm2/c;->A(Lq5/o;Lq5/o;)I

    .line 381
    .line 382
    .line 383
    move-result v6

    .line 384
    invoke-virtual {v0, v12, v3}, Lm2/c;->A(Lq5/o;Lq5/o;)I

    .line 385
    .line 386
    .line 387
    move-result v8

    .line 388
    add-int/2addr v8, v6

    .line 389
    if-le v7, v8, :cond_d

    .line 390
    .line 391
    goto :goto_6

    .line 392
    :goto_7
    aput-object v2, v1, v3

    .line 393
    .line 394
    if-eqz v2, :cond_18

    .line 395
    .line 396
    const/4 v3, 0x0

    .line 397
    aget-object v6, v1, v3

    .line 398
    .line 399
    const/4 v3, 0x1

    .line 400
    aget-object v7, v1, v3

    .line 401
    .line 402
    const/4 v8, 0x2

    .line 403
    aget-object v1, v1, v8

    .line 404
    .line 405
    invoke-virtual {v0, v6, v2}, Lm2/c;->A(Lq5/o;Lq5/o;)I

    .line 406
    .line 407
    .line 408
    move-result v9

    .line 409
    add-int/2addr v9, v3

    .line 410
    invoke-virtual {v0, v1, v2}, Lm2/c;->A(Lq5/o;Lq5/o;)I

    .line 411
    .line 412
    .line 413
    move-result v10

    .line 414
    add-int/2addr v10, v3

    .line 415
    shl-int/2addr v10, v8

    .line 416
    invoke-static {v6, v7, v10}, Lm2/c;->y(Lq5/o;Lq5/o;I)Lq5/o;

    .line 417
    .line 418
    .line 419
    move-result-object v10

    .line 420
    shl-int/2addr v9, v8

    .line 421
    invoke-static {v1, v7, v9}, Lm2/c;->y(Lq5/o;Lq5/o;I)Lq5/o;

    .line 422
    .line 423
    .line 424
    move-result-object v9

    .line 425
    invoke-virtual {v0, v10, v2}, Lm2/c;->A(Lq5/o;Lq5/o;)I

    .line 426
    .line 427
    .line 428
    move-result v10

    .line 429
    add-int/lit8 v11, v10, 0x1

    .line 430
    .line 431
    invoke-virtual {v0, v9, v2}, Lm2/c;->A(Lq5/o;Lq5/o;)I

    .line 432
    .line 433
    .line 434
    move-result v9

    .line 435
    add-int/lit8 v12, v9, 0x1

    .line 436
    .line 437
    and-int/lit8 v13, v11, 0x1

    .line 438
    .line 439
    if-ne v13, v3, :cond_11

    .line 440
    .line 441
    add-int/lit8 v11, v10, 0x2

    .line 442
    .line 443
    :cond_11
    and-int/lit8 v10, v12, 0x1

    .line 444
    .line 445
    if-ne v10, v3, :cond_12

    .line 446
    .line 447
    add-int/lit8 v12, v9, 0x2

    .line 448
    .line 449
    :cond_12
    iget v3, v6, Lq5/o;->a:F

    .line 450
    .line 451
    iget v8, v7, Lq5/o;->a:F

    .line 452
    .line 453
    add-float/2addr v3, v8

    .line 454
    iget v8, v1, Lq5/o;->a:F

    .line 455
    .line 456
    add-float/2addr v3, v8

    .line 457
    iget v8, v2, Lq5/o;->a:F

    .line 458
    .line 459
    add-float/2addr v3, v8

    .line 460
    const/high16 v8, 0x40800000    # 4.0f

    .line 461
    .line 462
    div-float/2addr v3, v8

    .line 463
    iget v9, v6, Lq5/o;->b:F

    .line 464
    .line 465
    iget v10, v7, Lq5/o;->b:F

    .line 466
    .line 467
    add-float/2addr v9, v10

    .line 468
    iget v10, v1, Lq5/o;->b:F

    .line 469
    .line 470
    add-float/2addr v9, v10

    .line 471
    iget v10, v2, Lq5/o;->b:F

    .line 472
    .line 473
    add-float/2addr v9, v10

    .line 474
    div-float/2addr v9, v8

    .line 475
    invoke-static {v6, v3, v9}, Lm2/c;->t(Lq5/o;FF)Lq5/o;

    .line 476
    .line 477
    .line 478
    move-result-object v6

    .line 479
    invoke-static {v7, v3, v9}, Lm2/c;->t(Lq5/o;FF)Lq5/o;

    .line 480
    .line 481
    .line 482
    move-result-object v7

    .line 483
    invoke-static {v1, v3, v9}, Lm2/c;->t(Lq5/o;FF)Lq5/o;

    .line 484
    .line 485
    .line 486
    move-result-object v1

    .line 487
    invoke-static {v2, v3, v9}, Lm2/c;->t(Lq5/o;FF)Lq5/o;

    .line 488
    .line 489
    .line 490
    move-result-object v2

    .line 491
    const/4 v3, 0x2

    .line 492
    shl-int/lit8 v8, v12, 0x2

    .line 493
    .line 494
    invoke-static {v6, v7, v8}, Lm2/c;->y(Lq5/o;Lq5/o;I)Lq5/o;

    .line 495
    .line 496
    .line 497
    move-result-object v9

    .line 498
    shl-int/lit8 v10, v11, 0x2

    .line 499
    .line 500
    invoke-static {v9, v2, v10}, Lm2/c;->y(Lq5/o;Lq5/o;I)Lq5/o;

    .line 501
    .line 502
    .line 503
    move-result-object v9

    .line 504
    invoke-static {v7, v6, v8}, Lm2/c;->y(Lq5/o;Lq5/o;I)Lq5/o;

    .line 505
    .line 506
    .line 507
    move-result-object v11

    .line 508
    invoke-static {v11, v1, v10}, Lm2/c;->y(Lq5/o;Lq5/o;I)Lq5/o;

    .line 509
    .line 510
    .line 511
    move-result-object v11

    .line 512
    invoke-static {v1, v2, v8}, Lm2/c;->y(Lq5/o;Lq5/o;I)Lq5/o;

    .line 513
    .line 514
    .line 515
    move-result-object v12

    .line 516
    invoke-static {v12, v7, v10}, Lm2/c;->y(Lq5/o;Lq5/o;I)Lq5/o;

    .line 517
    .line 518
    .line 519
    move-result-object v7

    .line 520
    invoke-static {v2, v1, v8}, Lm2/c;->y(Lq5/o;Lq5/o;I)Lq5/o;

    .line 521
    .line 522
    .line 523
    move-result-object v1

    .line 524
    invoke-static {v1, v6, v10}, Lm2/c;->y(Lq5/o;Lq5/o;I)Lq5/o;

    .line 525
    .line 526
    .line 527
    move-result-object v1

    .line 528
    const/4 v2, 0x4

    .line 529
    new-array v6, v2, [Lq5/o;

    .line 530
    .line 531
    const/4 v2, 0x0

    .line 532
    aput-object v9, v6, v2

    .line 533
    .line 534
    const/4 v8, 0x1

    .line 535
    aput-object v11, v6, v8

    .line 536
    .line 537
    aput-object v7, v6, v3

    .line 538
    .line 539
    const/4 v7, 0x3

    .line 540
    aput-object v1, v6, v7

    .line 541
    .line 542
    aget-object v1, v6, v2

    .line 543
    .line 544
    aget-object v2, v6, v8

    .line 545
    .line 546
    aget-object v9, v6, v3

    .line 547
    .line 548
    aget-object v6, v6, v7

    .line 549
    .line 550
    invoke-virtual {v0, v1, v6}, Lm2/c;->A(Lq5/o;Lq5/o;)I

    .line 551
    .line 552
    .line 553
    move-result v7

    .line 554
    add-int/lit8 v10, v7, 0x1

    .line 555
    .line 556
    invoke-virtual {v0, v9, v6}, Lm2/c;->A(Lq5/o;Lq5/o;)I

    .line 557
    .line 558
    .line 559
    move-result v11

    .line 560
    add-int/lit8 v12, v11, 0x1

    .line 561
    .line 562
    and-int/lit8 v13, v10, 0x1

    .line 563
    .line 564
    if-ne v13, v8, :cond_13

    .line 565
    .line 566
    add-int/lit8 v10, v7, 0x2

    .line 567
    .line 568
    :cond_13
    and-int/lit8 v7, v12, 0x1

    .line 569
    .line 570
    if-ne v7, v8, :cond_14

    .line 571
    .line 572
    add-int/lit8 v12, v11, 0x2

    .line 573
    .line 574
    :cond_14
    const/4 v3, 0x4

    .line 575
    mul-int/lit8 v7, v10, 0x4

    .line 576
    .line 577
    mul-int/lit8 v8, v12, 0x7

    .line 578
    .line 579
    if-ge v7, v8, :cond_15

    .line 580
    .line 581
    mul-int/lit8 v7, v12, 0x4

    .line 582
    .line 583
    mul-int/lit8 v3, v10, 0x7

    .line 584
    .line 585
    if-ge v7, v3, :cond_15

    .line 586
    .line 587
    invoke-static {v10, v12}, Ljava/lang/Math;->max(II)I

    .line 588
    .line 589
    .line 590
    move-result v10

    .line 591
    move v12, v10

    .line 592
    :cond_15
    iget-object v0, v0, Lm2/c;->H:Ljava/lang/Object;

    .line 593
    .line 594
    check-cast v0, Lw5/b;

    .line 595
    .line 596
    int-to-float v3, v10

    .line 597
    const/high16 v7, 0x3f000000    # 0.5f

    .line 598
    .line 599
    sub-float v21, v3, v7

    .line 600
    .line 601
    int-to-float v3, v12

    .line 602
    sub-float v24, v3, v7

    .line 603
    .line 604
    iget v3, v2, Lq5/o;->a:F

    .line 605
    .line 606
    const/high16 v17, 0x3f000000    # 0.5f

    .line 607
    .line 608
    const/high16 v18, 0x3f000000    # 0.5f

    .line 609
    .line 610
    const/high16 v20, 0x3f000000    # 0.5f

    .line 611
    .line 612
    const/high16 v23, 0x3f000000    # 0.5f

    .line 613
    .line 614
    iget v7, v1, Lq5/o;->a:F

    .line 615
    .line 616
    iget v8, v1, Lq5/o;->b:F

    .line 617
    .line 618
    iget v11, v6, Lq5/o;->a:F

    .line 619
    .line 620
    iget v13, v6, Lq5/o;->b:F

    .line 621
    .line 622
    iget v14, v9, Lq5/o;->a:F

    .line 623
    .line 624
    iget v15, v9, Lq5/o;->b:F

    .line 625
    .line 626
    iget v4, v2, Lq5/o;->b:F

    .line 627
    .line 628
    move/from16 v19, v21

    .line 629
    .line 630
    move/from16 v22, v24

    .line 631
    .line 632
    move/from16 v25, v7

    .line 633
    .line 634
    move/from16 v26, v8

    .line 635
    .line 636
    move/from16 v27, v11

    .line 637
    .line 638
    move/from16 v28, v13

    .line 639
    .line 640
    move/from16 v29, v14

    .line 641
    .line 642
    move/from16 v30, v15

    .line 643
    .line 644
    move/from16 v31, v3

    .line 645
    .line 646
    move/from16 v32, v4

    .line 647
    .line 648
    invoke-static/range {v17 .. v32}, LF/a;->c(FFFFFFFFFFFFFFFF)LF/a;

    .line 649
    .line 650
    .line 651
    move-result-object v3

    .line 652
    invoke-static {v0, v10, v12, v3}, Ln0/c;->k(Lw5/b;IILF/a;)Lw5/b;

    .line 653
    .line 654
    .line 655
    move-result-object v0

    .line 656
    const/4 v3, 0x4

    .line 657
    new-array v3, v3, [Lq5/o;

    .line 658
    .line 659
    const/4 v4, 0x0

    .line 660
    aput-object v1, v3, v4

    .line 661
    .line 662
    const/4 v1, 0x1

    .line 663
    aput-object v2, v3, v1

    .line 664
    .line 665
    const/4 v1, 0x2

    .line 666
    aput-object v9, v3, v1

    .line 667
    .line 668
    const/4 v1, 0x3

    .line 669
    aput-object v6, v3, v1

    .line 670
    .line 671
    invoke-virtual {v5, v0}, Lz5/c;->d(Lw5/b;)Lw5/d;

    .line 672
    .line 673
    .line 674
    move-result-object v0

    .line 675
    move-object v1, v3

    .line 676
    :goto_8
    new-instance v2, Lq5/m;

    .line 677
    .line 678
    sget-object v3, Lq5/a;->L:Lq5/a;

    .line 679
    .line 680
    iget-object v4, v0, Lw5/d;->b:Ljava/lang/String;

    .line 681
    .line 682
    iget-object v5, v0, Lw5/d;->a:[B

    .line 683
    .line 684
    invoke-direct {v2, v4, v5, v1, v3}, Lq5/m;-><init>(Ljava/lang/String;[B[Lq5/o;Lq5/a;)V

    .line 685
    .line 686
    .line 687
    iget-object v1, v0, Lw5/d;->c:Ljava/util/List;

    .line 688
    .line 689
    if-eqz v1, :cond_16

    .line 690
    .line 691
    sget-object v3, Lq5/n;->H:Lq5/n;

    .line 692
    .line 693
    invoke-virtual {v2, v3, v1}, Lq5/m;->b(Lq5/n;Ljava/lang/Object;)V

    .line 694
    .line 695
    .line 696
    :cond_16
    iget-object v0, v0, Lw5/d;->d:Ljava/lang/String;

    .line 697
    .line 698
    if-eqz v0, :cond_17

    .line 699
    .line 700
    sget-object v1, Lq5/n;->I:Lq5/n;

    .line 701
    .line 702
    invoke-virtual {v2, v1, v0}, Lq5/m;->b(Lq5/n;Ljava/lang/Object;)V

    .line 703
    .line 704
    .line 705
    :cond_17
    return-object v2

    .line 706
    :cond_18
    sget-object v0, Lq5/i;->I:Lq5/i;

    .line 707
    .line 708
    throw v0
.end method
