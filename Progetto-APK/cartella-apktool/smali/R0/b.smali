.class public final LR0/b;
.super LR0/c;
.source "SourceFile"


# instance fields
.field public final g:LS0/c;

.field public final h:J

.field public final i:J

.field public final j:J

.field public final k:I

.field public final l:I

.field public final m:F

.field public final n:F

.field public final o:Lz4/H;

.field public final p:Lp0/f;

.field public q:F

.field public r:I

.field public s:I

.field public t:J

.field public u:LP0/p;


# direct methods
.method public constructor <init>(Lm0/g0;[IILS0/c;JJJIIFFLz4/H;Lp0/f;)V
    .locals 7

    .line 1
    move-object v0, p0

    .line 2
    invoke-direct {p0, p1, p2}, LR0/c;-><init>(Lm0/g0;[I)V

    .line 3
    .line 4
    .line 5
    cmp-long v1, p9, p5

    .line 6
    .line 7
    if-gez v1, :cond_0

    .line 8
    .line 9
    const-string v1, "AdaptiveTrackSelection"

    .line 10
    .line 11
    const-string v2, "Adjusting minDurationToRetainAfterDiscardMs to be at least minDurationForQualityIncreaseMs"

    .line 12
    .line 13
    invoke-static {v1, v2}, Lp0/x;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    move-object v3, p4

    .line 17
    move-wide v1, p5

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move-object v3, p4

    .line 20
    move-wide/from16 v1, p9

    .line 21
    .line 22
    :goto_0
    iput-object v3, v0, LR0/b;->g:LS0/c;

    .line 23
    .line 24
    const-wide/16 v3, 0x3e8

    .line 25
    .line 26
    mul-long v5, p5, v3

    .line 27
    .line 28
    iput-wide v5, v0, LR0/b;->h:J

    .line 29
    .line 30
    mul-long v5, p7, v3

    .line 31
    .line 32
    iput-wide v5, v0, LR0/b;->i:J

    .line 33
    .line 34
    mul-long v1, v1, v3

    .line 35
    .line 36
    iput-wide v1, v0, LR0/b;->j:J

    .line 37
    .line 38
    move/from16 v1, p11

    .line 39
    .line 40
    iput v1, v0, LR0/b;->k:I

    .line 41
    .line 42
    move/from16 v1, p12

    .line 43
    .line 44
    iput v1, v0, LR0/b;->l:I

    .line 45
    .line 46
    move/from16 v1, p13

    .line 47
    .line 48
    iput v1, v0, LR0/b;->m:F

    .line 49
    .line 50
    move/from16 v1, p14

    .line 51
    .line 52
    iput v1, v0, LR0/b;->n:F

    .line 53
    .line 54
    invoke-static/range {p15 .. p15}, Lz4/H;->s(Ljava/util/Collection;)Lz4/H;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    iput-object v1, v0, LR0/b;->o:Lz4/H;

    .line 59
    .line 60
    move-object/from16 v1, p16

    .line 61
    .line 62
    iput-object v1, v0, LR0/b;->p:Lp0/f;

    .line 63
    .line 64
    const/high16 v1, 0x3f800000    # 1.0f

    .line 65
    .line 66
    iput v1, v0, LR0/b;->q:F

    .line 67
    .line 68
    const/4 v1, 0x0

    .line 69
    iput v1, v0, LR0/b;->s:I

    .line 70
    .line 71
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    iput-wide v1, v0, LR0/b;->t:J

    .line 77
    .line 78
    return-void
.end method

.method public static r([LR0/r;)Lz4/d0;
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v1, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    const/4 v3, 0x0

    .line 10
    :goto_0
    array-length v4, v0

    .line 11
    const/4 v5, 0x1

    .line 12
    const-wide/16 v6, 0x0

    .line 13
    .line 14
    if-ge v3, v4, :cond_1

    .line 15
    .line 16
    aget-object v4, v0, v3

    .line 17
    .line 18
    if-eqz v4, :cond_0

    .line 19
    .line 20
    iget-object v4, v4, LR0/r;->b:[I

    .line 21
    .line 22
    array-length v4, v4

    .line 23
    if-le v4, v5, :cond_0

    .line 24
    .line 25
    invoke-static {}, Lz4/H;->q()Lz4/E;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    new-instance v5, LR0/a;

    .line 30
    .line 31
    invoke-direct {v5, v6, v7, v6, v7}, LR0/a;-><init>(JJ)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v4, v5}, Lz4/E;->i0(Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_0
    const/4 v4, 0x0

    .line 42
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    array-length v3, v0

    .line 49
    new-array v4, v3, [[J

    .line 50
    .line 51
    const/4 v8, 0x0

    .line 52
    :goto_2
    array-length v9, v0

    .line 53
    const-wide/16 v10, -0x1

    .line 54
    .line 55
    if-ge v8, v9, :cond_5

    .line 56
    .line 57
    aget-object v9, v0, v8

    .line 58
    .line 59
    if-nez v9, :cond_2

    .line 60
    .line 61
    new-array v9, v2, [J

    .line 62
    .line 63
    aput-object v9, v4, v8

    .line 64
    .line 65
    goto :goto_4

    .line 66
    :cond_2
    iget-object v12, v9, LR0/r;->b:[I

    .line 67
    .line 68
    array-length v13, v12

    .line 69
    new-array v13, v13, [J

    .line 70
    .line 71
    aput-object v13, v4, v8

    .line 72
    .line 73
    const/4 v13, 0x0

    .line 74
    :goto_3
    array-length v14, v12

    .line 75
    if-ge v13, v14, :cond_4

    .line 76
    .line 77
    aget v14, v12, v13

    .line 78
    .line 79
    iget-object v15, v9, LR0/r;->a:Lm0/g0;

    .line 80
    .line 81
    iget-object v15, v15, Lm0/g0;->d:[Lm0/t;

    .line 82
    .line 83
    aget-object v14, v15, v14

    .line 84
    .line 85
    iget v14, v14, Lm0/t;->j:I

    .line 86
    .line 87
    int-to-long v14, v14

    .line 88
    aget-object v16, v4, v8

    .line 89
    .line 90
    cmp-long v17, v14, v10

    .line 91
    .line 92
    if-nez v17, :cond_3

    .line 93
    .line 94
    move-wide v14, v6

    .line 95
    :cond_3
    aput-wide v14, v16, v13

    .line 96
    .line 97
    add-int/lit8 v13, v13, 0x1

    .line 98
    .line 99
    goto :goto_3

    .line 100
    :cond_4
    aget-object v9, v4, v8

    .line 101
    .line 102
    invoke-static {v9}, Ljava/util/Arrays;->sort([J)V

    .line 103
    .line 104
    .line 105
    :goto_4
    add-int/lit8 v8, v8, 0x1

    .line 106
    .line 107
    goto :goto_2

    .line 108
    :cond_5
    new-array v8, v3, [I

    .line 109
    .line 110
    new-array v9, v3, [J

    .line 111
    .line 112
    const/4 v12, 0x0

    .line 113
    :goto_5
    if-ge v12, v3, :cond_7

    .line 114
    .line 115
    aget-object v13, v4, v12

    .line 116
    .line 117
    array-length v14, v13

    .line 118
    if-nez v14, :cond_6

    .line 119
    .line 120
    move-wide v14, v6

    .line 121
    goto :goto_6

    .line 122
    :cond_6
    aget-wide v14, v13, v2

    .line 123
    .line 124
    :goto_6
    aput-wide v14, v9, v12

    .line 125
    .line 126
    add-int/lit8 v12, v12, 0x1

    .line 127
    .line 128
    goto :goto_5

    .line 129
    :cond_7
    invoke-static {v1, v9}, LR0/b;->s(Ljava/util/ArrayList;[J)V

    .line 130
    .line 131
    .line 132
    sget-object v6, Lz4/b0;->G:Lz4/b0;

    .line 133
    .line 134
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 135
    .line 136
    .line 137
    const-string v7, "expectedValuesPerKey"

    .line 138
    .line 139
    const/4 v12, 0x2

    .line 140
    invoke-static {v12, v7}, Lcom/google/android/gms/internal/ads/Cw;->g(ILjava/lang/String;)V

    .line 141
    .line 142
    .line 143
    new-instance v7, Ljava/util/TreeMap;

    .line 144
    .line 145
    invoke-direct {v7, v6}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 146
    .line 147
    .line 148
    new-instance v6, Lz4/Y;

    .line 149
    .line 150
    invoke-direct {v6, v12}, Lz4/Y;-><init>(I)V

    .line 151
    .line 152
    .line 153
    new-instance v12, Lz4/Z;

    .line 154
    .line 155
    invoke-direct {v12, v7}, Lz4/c;-><init>(Ljava/util/Map;)V

    .line 156
    .line 157
    .line 158
    iput-object v6, v12, Lz4/Z;->L:Ly4/t;

    .line 159
    .line 160
    const/4 v6, 0x0

    .line 161
    :goto_7
    if-ge v6, v3, :cond_10

    .line 162
    .line 163
    aget-object v7, v4, v6

    .line 164
    .line 165
    array-length v13, v7

    .line 166
    if-gt v13, v5, :cond_8

    .line 167
    .line 168
    move/from16 v19, v3

    .line 169
    .line 170
    goto/16 :goto_d

    .line 171
    .line 172
    :cond_8
    array-length v7, v7

    .line 173
    new-array v13, v7, [D

    .line 174
    .line 175
    const/4 v14, 0x0

    .line 176
    :goto_8
    aget-object v15, v4, v6

    .line 177
    .line 178
    array-length v5, v15

    .line 179
    const-wide/16 v17, 0x0

    .line 180
    .line 181
    if-ge v14, v5, :cond_a

    .line 182
    .line 183
    move/from16 v19, v3

    .line 184
    .line 185
    aget-wide v2, v15, v14

    .line 186
    .line 187
    cmp-long v15, v2, v10

    .line 188
    .line 189
    if-nez v15, :cond_9

    .line 190
    .line 191
    goto :goto_9

    .line 192
    :cond_9
    long-to-double v2, v2

    .line 193
    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    .line 194
    .line 195
    .line 196
    move-result-wide v17

    .line 197
    :goto_9
    aput-wide v17, v13, v14

    .line 198
    .line 199
    add-int/lit8 v14, v14, 0x1

    .line 200
    .line 201
    move/from16 v3, v19

    .line 202
    .line 203
    const/4 v2, 0x0

    .line 204
    const/4 v5, 0x1

    .line 205
    goto :goto_8

    .line 206
    :cond_a
    move/from16 v19, v3

    .line 207
    .line 208
    add-int/lit8 v7, v7, -0x1

    .line 209
    .line 210
    aget-wide v2, v13, v7

    .line 211
    .line 212
    const/4 v5, 0x0

    .line 213
    aget-wide v14, v13, v5

    .line 214
    .line 215
    sub-double/2addr v2, v14

    .line 216
    const/4 v14, 0x0

    .line 217
    :goto_a
    if-ge v14, v7, :cond_f

    .line 218
    .line 219
    aget-wide v20, v13, v14

    .line 220
    .line 221
    add-int/lit8 v14, v14, 0x1

    .line 222
    .line 223
    aget-wide v22, v13, v14

    .line 224
    .line 225
    add-double v20, v20, v22

    .line 226
    .line 227
    const-wide/high16 v22, 0x3fe0000000000000L    # 0.5

    .line 228
    .line 229
    mul-double v20, v20, v22

    .line 230
    .line 231
    cmpl-double v15, v2, v17

    .line 232
    .line 233
    if-nez v15, :cond_b

    .line 234
    .line 235
    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    .line 236
    .line 237
    goto :goto_b

    .line 238
    :cond_b
    const/4 v5, 0x0

    .line 239
    aget-wide v22, v13, v5

    .line 240
    .line 241
    sub-double v20, v20, v22

    .line 242
    .line 243
    div-double v20, v20, v2

    .line 244
    .line 245
    :goto_b
    invoke-static/range {v20 .. v21}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 246
    .line 247
    .line 248
    move-result-object v15

    .line 249
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 250
    .line 251
    .line 252
    move-result-object v5

    .line 253
    iget-object v10, v12, Lz4/c;->J:Ljava/util/Map;

    .line 254
    .line 255
    invoke-interface {v10, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    .line 257
    .line 258
    move-result-object v10

    .line 259
    check-cast v10, Ljava/util/Collection;

    .line 260
    .line 261
    if-nez v10, :cond_d

    .line 262
    .line 263
    invoke-virtual {v12}, Lz4/Z;->d()Ljava/util/Collection;

    .line 264
    .line 265
    .line 266
    move-result-object v10

    .line 267
    invoke-interface {v10, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 268
    .line 269
    .line 270
    move-result v5

    .line 271
    if-eqz v5, :cond_c

    .line 272
    .line 273
    iget v5, v12, Lz4/c;->K:I

    .line 274
    .line 275
    const/4 v11, 0x1

    .line 276
    add-int/2addr v5, v11

    .line 277
    iput v5, v12, Lz4/c;->K:I

    .line 278
    .line 279
    iget-object v5, v12, Lz4/c;->J:Ljava/util/Map;

    .line 280
    .line 281
    invoke-interface {v5, v15, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    .line 283
    .line 284
    goto :goto_c

    .line 285
    :cond_c
    new-instance v0, Ljava/lang/AssertionError;

    .line 286
    .line 287
    const-string v1, "New Collection violated the Collection spec"

    .line 288
    .line 289
    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 290
    .line 291
    .line 292
    throw v0

    .line 293
    :cond_d
    invoke-interface {v10, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 294
    .line 295
    .line 296
    move-result v5

    .line 297
    if-eqz v5, :cond_e

    .line 298
    .line 299
    iget v5, v12, Lz4/c;->K:I

    .line 300
    .line 301
    const/4 v10, 0x1

    .line 302
    add-int/2addr v5, v10

    .line 303
    iput v5, v12, Lz4/c;->K:I

    .line 304
    .line 305
    :cond_e
    :goto_c
    const-wide/16 v10, -0x1

    .line 306
    .line 307
    goto :goto_a

    .line 308
    :cond_f
    :goto_d
    add-int/lit8 v6, v6, 0x1

    .line 309
    .line 310
    move/from16 v3, v19

    .line 311
    .line 312
    const/4 v2, 0x0

    .line 313
    const/4 v5, 0x1

    .line 314
    const-wide/16 v10, -0x1

    .line 315
    .line 316
    goto/16 :goto_7

    .line 317
    .line 318
    :cond_10
    iget-object v2, v12, Lz4/p;->H:Lz4/o;

    .line 319
    .line 320
    if-nez v2, :cond_11

    .line 321
    .line 322
    new-instance v2, Lz4/o;

    .line 323
    .line 324
    const/4 v5, 0x0

    .line 325
    invoke-direct {v2, v12, v5}, Lz4/o;-><init>(Ljava/lang/Object;I)V

    .line 326
    .line 327
    .line 328
    iput-object v2, v12, Lz4/p;->H:Lz4/o;

    .line 329
    .line 330
    goto :goto_e

    .line 331
    :cond_11
    const/4 v5, 0x0

    .line 332
    :goto_e
    invoke-static {v2}, Lz4/H;->s(Ljava/util/Collection;)Lz4/H;

    .line 333
    .line 334
    .line 335
    move-result-object v2

    .line 336
    const/4 v3, 0x0

    .line 337
    :goto_f
    invoke-virtual {v2}, Ljava/util/AbstractCollection;->size()I

    .line 338
    .line 339
    .line 340
    move-result v6

    .line 341
    if-ge v3, v6, :cond_12

    .line 342
    .line 343
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 344
    .line 345
    .line 346
    move-result-object v6

    .line 347
    check-cast v6, Ljava/lang/Integer;

    .line 348
    .line 349
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 350
    .line 351
    .line 352
    move-result v6

    .line 353
    aget v7, v8, v6

    .line 354
    .line 355
    const/4 v10, 0x1

    .line 356
    add-int/2addr v7, v10

    .line 357
    aput v7, v8, v6

    .line 358
    .line 359
    aget-object v11, v4, v6

    .line 360
    .line 361
    aget-wide v12, v11, v7

    .line 362
    .line 363
    aput-wide v12, v9, v6

    .line 364
    .line 365
    invoke-static {v1, v9}, LR0/b;->s(Ljava/util/ArrayList;[J)V

    .line 366
    .line 367
    .line 368
    add-int/lit8 v3, v3, 0x1

    .line 369
    .line 370
    goto :goto_f

    .line 371
    :cond_12
    const/4 v2, 0x0

    .line 372
    :goto_10
    array-length v3, v0

    .line 373
    if-ge v2, v3, :cond_14

    .line 374
    .line 375
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 376
    .line 377
    .line 378
    move-result-object v3

    .line 379
    if-eqz v3, :cond_13

    .line 380
    .line 381
    aget-wide v3, v9, v2

    .line 382
    .line 383
    const-wide/16 v6, 0x2

    .line 384
    .line 385
    mul-long v3, v3, v6

    .line 386
    .line 387
    aput-wide v3, v9, v2

    .line 388
    .line 389
    :cond_13
    add-int/lit8 v2, v2, 0x1

    .line 390
    .line 391
    goto :goto_10

    .line 392
    :cond_14
    invoke-static {v1, v9}, LR0/b;->s(Ljava/util/ArrayList;[J)V

    .line 393
    .line 394
    .line 395
    invoke-static {}, Lz4/H;->q()Lz4/E;

    .line 396
    .line 397
    .line 398
    move-result-object v0

    .line 399
    const/4 v2, 0x0

    .line 400
    :goto_11
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 401
    .line 402
    .line 403
    move-result v3

    .line 404
    if-ge v2, v3, :cond_16

    .line 405
    .line 406
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 407
    .line 408
    .line 409
    move-result-object v3

    .line 410
    check-cast v3, Lz4/E;

    .line 411
    .line 412
    if-nez v3, :cond_15

    .line 413
    .line 414
    invoke-static {}, Lz4/H;->w()Lz4/d0;

    .line 415
    .line 416
    .line 417
    move-result-object v3

    .line 418
    goto :goto_12

    .line 419
    :cond_15
    invoke-virtual {v3}, Lz4/E;->m0()Lz4/d0;

    .line 420
    .line 421
    .line 422
    move-result-object v3

    .line 423
    :goto_12
    invoke-virtual {v0, v3}, Lz4/E;->i0(Ljava/lang/Object;)V

    .line 424
    .line 425
    .line 426
    add-int/lit8 v2, v2, 0x1

    .line 427
    .line 428
    goto :goto_11

    .line 429
    :cond_16
    invoke-virtual {v0}, Lz4/E;->m0()Lz4/d0;

    .line 430
    .line 431
    .line 432
    move-result-object v0

    .line 433
    return-object v0
.end method

.method public static s(Ljava/util/ArrayList;[J)V
    .locals 7

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    const/4 v2, 0x0

    .line 4
    const/4 v3, 0x0

    .line 5
    :goto_0
    array-length v4, p1

    .line 6
    if-ge v3, v4, :cond_0

    .line 7
    .line 8
    aget-wide v4, p1, v3

    .line 9
    .line 10
    add-long/2addr v0, v4

    .line 11
    add-int/lit8 v3, v3, 0x1

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    :goto_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    if-ge v2, v3, :cond_2

    .line 19
    .line 20
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    check-cast v3, Lz4/E;

    .line 25
    .line 26
    if-nez v3, :cond_1

    .line 27
    .line 28
    goto :goto_2

    .line 29
    :cond_1
    new-instance v4, LR0/a;

    .line 30
    .line 31
    aget-wide v5, p1, v2

    .line 32
    .line 33
    invoke-direct {v4, v0, v1, v5, v6}, LR0/a;-><init>(JJ)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v3, v4}, Lz4/B;->g0(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_2
    return-void
.end method

.method public static u(Ljava/util/List;)J
    .locals 7

    .line 1
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    return-wide v1

    .line 13
    :cond_0
    invoke-static {p0}, Ly4/k;->G(Ljava/lang/Iterable;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    check-cast p0, LP0/p;

    .line 18
    .line 19
    iget-wide v3, p0, LP0/f;->M:J

    .line 20
    .line 21
    cmp-long v0, v3, v1

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    iget-wide v5, p0, LP0/f;->N:J

    .line 26
    .line 27
    cmp-long p0, v5, v1

    .line 28
    .line 29
    if-eqz p0, :cond_1

    .line 30
    .line 31
    sub-long v1, v5, v3

    .line 32
    .line 33
    :cond_1
    return-wide v1
.end method


# virtual methods
.method public final a(JJLjava/util/List;[LP0/q;)V
    .locals 13

    .line 1
    move-object v0, p0

    .line 2
    move-object/from16 v1, p6

    .line 3
    .line 4
    iget-object v2, v0, LR0/b;->p:Lp0/f;

    .line 5
    .line 6
    check-cast v2, Lp0/G;

    .line 7
    .line 8
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 12
    .line 13
    .line 14
    move-result-wide v2

    .line 15
    iget v4, v0, LR0/b;->r:I

    .line 16
    .line 17
    array-length v5, v1

    .line 18
    if-ge v4, v5, :cond_0

    .line 19
    .line 20
    aget-object v4, v1, v4

    .line 21
    .line 22
    invoke-interface {v4}, LP0/q;->next()Z

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    if-eqz v4, :cond_0

    .line 27
    .line 28
    iget v4, v0, LR0/b;->r:I

    .line 29
    .line 30
    aget-object v1, v1, v4

    .line 31
    .line 32
    invoke-interface {v1}, LP0/q;->t()J

    .line 33
    .line 34
    .line 35
    move-result-wide v4

    .line 36
    invoke-interface {v1}, LP0/q;->q()J

    .line 37
    .line 38
    .line 39
    move-result-wide v6

    .line 40
    :goto_0
    sub-long/2addr v4, v6

    .line 41
    goto :goto_2

    .line 42
    :cond_0
    array-length v4, v1

    .line 43
    const/4 v5, 0x0

    .line 44
    :goto_1
    if-ge v5, v4, :cond_2

    .line 45
    .line 46
    aget-object v6, v1, v5

    .line 47
    .line 48
    invoke-interface {v6}, LP0/q;->next()Z

    .line 49
    .line 50
    .line 51
    move-result v7

    .line 52
    if-eqz v7, :cond_1

    .line 53
    .line 54
    invoke-interface {v6}, LP0/q;->t()J

    .line 55
    .line 56
    .line 57
    move-result-wide v4

    .line 58
    invoke-interface {v6}, LP0/q;->q()J

    .line 59
    .line 60
    .line 61
    move-result-wide v6

    .line 62
    goto :goto_0

    .line 63
    :cond_1
    add-int/lit8 v5, v5, 0x1

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_2
    invoke-static/range {p5 .. p5}, LR0/b;->u(Ljava/util/List;)J

    .line 67
    .line 68
    .line 69
    move-result-wide v4

    .line 70
    :goto_2
    iget v1, v0, LR0/b;->s:I

    .line 71
    .line 72
    if-nez v1, :cond_3

    .line 73
    .line 74
    const/4 v1, 0x1

    .line 75
    iput v1, v0, LR0/b;->s:I

    .line 76
    .line 77
    invoke-virtual {p0, v2, v3}, LR0/b;->t(J)I

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    iput v1, v0, LR0/b;->r:I

    .line 82
    .line 83
    return-void

    .line 84
    :cond_3
    iget v6, v0, LR0/b;->r:I

    .line 85
    .line 86
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->isEmpty()Z

    .line 87
    .line 88
    .line 89
    move-result v7

    .line 90
    const/4 v8, -0x1

    .line 91
    if-eqz v7, :cond_4

    .line 92
    .line 93
    const/4 v7, -0x1

    .line 94
    goto :goto_3

    .line 95
    :cond_4
    invoke-static/range {p5 .. p5}, Ly4/k;->G(Ljava/lang/Iterable;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v7

    .line 99
    check-cast v7, LP0/p;

    .line 100
    .line 101
    iget-object v7, v7, LP0/f;->J:Lm0/t;

    .line 102
    .line 103
    invoke-virtual {p0, v7}, LR0/c;->o(Lm0/t;)I

    .line 104
    .line 105
    .line 106
    move-result v7

    .line 107
    :goto_3
    if-eq v7, v8, :cond_5

    .line 108
    .line 109
    invoke-static/range {p5 .. p5}, Ly4/k;->G(Ljava/lang/Iterable;)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    check-cast v1, LP0/p;

    .line 114
    .line 115
    iget v1, v1, LP0/f;->K:I

    .line 116
    .line 117
    move v6, v7

    .line 118
    :cond_5
    invoke-virtual {p0, v2, v3}, LR0/b;->t(J)I

    .line 119
    .line 120
    .line 121
    move-result v7

    .line 122
    if-eq v7, v6, :cond_9

    .line 123
    .line 124
    invoke-virtual {p0, v6, v2, v3}, LR0/c;->p(IJ)Z

    .line 125
    .line 126
    .line 127
    move-result v2

    .line 128
    if-nez v2, :cond_9

    .line 129
    .line 130
    iget-object v2, v0, LR0/c;->d:[Lm0/t;

    .line 131
    .line 132
    aget-object v3, v2, v6

    .line 133
    .line 134
    aget-object v2, v2, v7

    .line 135
    .line 136
    iget-wide v8, v0, LR0/b;->h:J

    .line 137
    .line 138
    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    cmp-long v12, p3, v10

    .line 144
    .line 145
    if-nez v12, :cond_6

    .line 146
    .line 147
    goto :goto_5

    .line 148
    :cond_6
    cmp-long v12, v4, v10

    .line 149
    .line 150
    if-eqz v12, :cond_7

    .line 151
    .line 152
    sub-long v4, p3, v4

    .line 153
    .line 154
    goto :goto_4

    .line 155
    :cond_7
    move-wide/from16 v4, p3

    .line 156
    .line 157
    :goto_4
    long-to-float v4, v4

    .line 158
    iget v5, v0, LR0/b;->n:F

    .line 159
    .line 160
    mul-float v4, v4, v5

    .line 161
    .line 162
    float-to-long v4, v4

    .line 163
    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->min(JJ)J

    .line 164
    .line 165
    .line 166
    move-result-wide v8

    .line 167
    :goto_5
    iget v2, v2, Lm0/t;->j:I

    .line 168
    .line 169
    iget v3, v3, Lm0/t;->j:I

    .line 170
    .line 171
    if-le v2, v3, :cond_8

    .line 172
    .line 173
    cmp-long v4, p1, v8

    .line 174
    .line 175
    if-gez v4, :cond_8

    .line 176
    .line 177
    goto :goto_6

    .line 178
    :cond_8
    if-ge v2, v3, :cond_9

    .line 179
    .line 180
    iget-wide v2, v0, LR0/b;->i:J

    .line 181
    .line 182
    cmp-long v4, p1, v2

    .line 183
    .line 184
    if-ltz v4, :cond_9

    .line 185
    .line 186
    :goto_6
    move v7, v6

    .line 187
    :cond_9
    if-ne v7, v6, :cond_a

    .line 188
    .line 189
    goto :goto_7

    .line 190
    :cond_a
    const/4 v1, 0x3

    .line 191
    :goto_7
    iput v1, v0, LR0/b;->s:I

    .line 192
    .line 193
    iput v7, v0, LR0/b;->r:I

    .line 194
    .line 195
    return-void
.end method

.method public final b()I
    .locals 1

    .line 1
    iget v0, p0, LR0/b;->r:I

    .line 2
    .line 3
    return v0
.end method

.method public final c()V
    .locals 2

    .line 1
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    iput-wide v0, p0, LR0/b;->t:J

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, LR0/b;->u:LP0/p;

    .line 10
    .line 11
    return-void
.end method

.method public final d(JLjava/util/List;)I
    .locals 10

    .line 1
    iget-object v0, p0, LR0/b;->p:Lp0/f;

    .line 2
    .line 3
    check-cast v0, Lp0/G;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    iget-wide v2, p0, LR0/b;->t:J

    .line 13
    .line 14
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    cmp-long v6, v2, v4

    .line 20
    .line 21
    if-eqz v6, :cond_1

    .line 22
    .line 23
    sub-long v2, v0, v2

    .line 24
    .line 25
    const-wide/16 v4, 0x3e8

    .line 26
    .line 27
    cmp-long v6, v2, v4

    .line 28
    .line 29
    if-gez v6, :cond_1

    .line 30
    .line 31
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-nez v2, :cond_0

    .line 36
    .line 37
    invoke-static {p3}, Ly4/k;->G(Ljava/lang/Iterable;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    check-cast v2, LP0/p;

    .line 42
    .line 43
    iget-object v3, p0, LR0/b;->u:LP0/p;

    .line 44
    .line 45
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    if-nez v2, :cond_0

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    return p1

    .line 57
    :cond_1
    :goto_0
    iput-wide v0, p0, LR0/b;->t:J

    .line 58
    .line 59
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    if-eqz v2, :cond_2

    .line 64
    .line 65
    const/4 v2, 0x0

    .line 66
    goto :goto_1

    .line 67
    :cond_2
    invoke-static {p3}, Ly4/k;->G(Ljava/lang/Iterable;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    check-cast v2, LP0/p;

    .line 72
    .line 73
    :goto_1
    iput-object v2, p0, LR0/b;->u:LP0/p;

    .line 74
    .line 75
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    .line 76
    .line 77
    .line 78
    move-result v2

    .line 79
    const/4 v3, 0x0

    .line 80
    if-eqz v2, :cond_3

    .line 81
    .line 82
    return v3

    .line 83
    :cond_3
    invoke-interface {p3}, Ljava/util/List;->size()I

    .line 84
    .line 85
    .line 86
    move-result v2

    .line 87
    add-int/lit8 v4, v2, -0x1

    .line 88
    .line 89
    invoke-interface {p3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v4

    .line 93
    check-cast v4, LP0/p;

    .line 94
    .line 95
    iget-wide v4, v4, LP0/f;->M:J

    .line 96
    .line 97
    sub-long/2addr v4, p1

    .line 98
    iget v6, p0, LR0/b;->q:F

    .line 99
    .line 100
    invoke-static {v4, v5, v6}, Lp0/M;->C(JF)J

    .line 101
    .line 102
    .line 103
    move-result-wide v4

    .line 104
    iget-wide v6, p0, LR0/b;->j:J

    .line 105
    .line 106
    cmp-long v8, v4, v6

    .line 107
    .line 108
    if-gez v8, :cond_4

    .line 109
    .line 110
    return v2

    .line 111
    :cond_4
    invoke-static {p3}, LR0/b;->u(Ljava/util/List;)J

    .line 112
    .line 113
    .line 114
    invoke-virtual {p0, v0, v1}, LR0/b;->t(J)I

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    iget-object v1, p0, LR0/c;->d:[Lm0/t;

    .line 119
    .line 120
    aget-object v0, v1, v0

    .line 121
    .line 122
    :goto_2
    if-ge v3, v2, :cond_6

    .line 123
    .line 124
    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    check-cast v1, LP0/p;

    .line 129
    .line 130
    iget-object v4, v1, LP0/f;->J:Lm0/t;

    .line 131
    .line 132
    iget-wide v8, v1, LP0/f;->M:J

    .line 133
    .line 134
    sub-long/2addr v8, p1

    .line 135
    iget v1, p0, LR0/b;->q:F

    .line 136
    .line 137
    invoke-static {v8, v9, v1}, Lp0/M;->C(JF)J

    .line 138
    .line 139
    .line 140
    move-result-wide v8

    .line 141
    cmp-long v1, v8, v6

    .line 142
    .line 143
    if-ltz v1, :cond_5

    .line 144
    .line 145
    iget v1, v4, Lm0/t;->j:I

    .line 146
    .line 147
    iget v5, v0, Lm0/t;->j:I

    .line 148
    .line 149
    if-ge v1, v5, :cond_5

    .line 150
    .line 151
    const/4 v1, -0x1

    .line 152
    iget v5, v4, Lm0/t;->w:I

    .line 153
    .line 154
    if-eq v5, v1, :cond_5

    .line 155
    .line 156
    iget v8, p0, LR0/b;->l:I

    .line 157
    .line 158
    if-gt v5, v8, :cond_5

    .line 159
    .line 160
    iget v4, v4, Lm0/t;->v:I

    .line 161
    .line 162
    if-eq v4, v1, :cond_5

    .line 163
    .line 164
    iget v1, p0, LR0/b;->k:I

    .line 165
    .line 166
    if-gt v4, v1, :cond_5

    .line 167
    .line 168
    iget v1, v0, Lm0/t;->w:I

    .line 169
    .line 170
    if-ge v5, v1, :cond_5

    .line 171
    .line 172
    return v3

    .line 173
    :cond_5
    add-int/lit8 v3, v3, 0x1

    .line 174
    .line 175
    goto :goto_2

    .line 176
    :cond_6
    return v2
.end method

.method public final e()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, LR0/b;->u:LP0/p;

    .line 3
    .line 4
    return-void
.end method

.method public final f()I
    .locals 1

    .line 1
    iget v0, p0, LR0/b;->s:I

    .line 2
    .line 3
    return v0
.end method

.method public final g(F)V
    .locals 0

    .line 1
    iput p1, p0, LR0/b;->q:F

    .line 2
    .line 3
    return-void
.end method

.method public final h()Ljava/lang/Object;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public final t(J)I
    .locals 8

    .line 1
    iget-object v0, p0, LR0/b;->g:LS0/c;

    .line 2
    .line 3
    check-cast v0, LS0/f;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-wide v1, v0, LS0/f;->l:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    monitor-exit v0

    .line 9
    long-to-float v0, v1

    .line 10
    iget v1, p0, LR0/b;->m:F

    .line 11
    .line 12
    mul-float v0, v0, v1

    .line 13
    .line 14
    float-to-long v0, v0

    .line 15
    iget-object v2, p0, LR0/b;->g:LS0/c;

    .line 16
    .line 17
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    long-to-float v0, v0

    .line 21
    iget v1, p0, LR0/b;->q:F

    .line 22
    .line 23
    div-float/2addr v0, v1

    .line 24
    float-to-long v0, v0

    .line 25
    iget-object v2, p0, LR0/b;->o:Lz4/H;

    .line 26
    .line 27
    invoke-virtual {v2}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-eqz v2, :cond_0

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_0
    const/4 v2, 0x1

    .line 35
    const/4 v3, 0x1

    .line 36
    :goto_0
    iget-object v4, p0, LR0/b;->o:Lz4/H;

    .line 37
    .line 38
    invoke-virtual {v4}, Ljava/util/AbstractCollection;->size()I

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    sub-int/2addr v4, v2

    .line 43
    if-ge v3, v4, :cond_1

    .line 44
    .line 45
    iget-object v4, p0, LR0/b;->o:Lz4/H;

    .line 46
    .line 47
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    check-cast v4, LR0/a;

    .line 52
    .line 53
    iget-wide v4, v4, LR0/a;->a:J

    .line 54
    .line 55
    cmp-long v6, v4, v0

    .line 56
    .line 57
    if-gez v6, :cond_1

    .line 58
    .line 59
    add-int/lit8 v3, v3, 0x1

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_1
    iget-object v2, p0, LR0/b;->o:Lz4/H;

    .line 63
    .line 64
    add-int/lit8 v4, v3, -0x1

    .line 65
    .line 66
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    check-cast v2, LR0/a;

    .line 71
    .line 72
    iget-object v4, p0, LR0/b;->o:Lz4/H;

    .line 73
    .line 74
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    check-cast v3, LR0/a;

    .line 79
    .line 80
    iget-wide v4, v2, LR0/a;->a:J

    .line 81
    .line 82
    sub-long/2addr v0, v4

    .line 83
    long-to-float v0, v0

    .line 84
    iget-wide v6, v3, LR0/a;->a:J

    .line 85
    .line 86
    sub-long/2addr v6, v4

    .line 87
    long-to-float v1, v6

    .line 88
    div-float/2addr v0, v1

    .line 89
    iget-wide v1, v2, LR0/a;->b:J

    .line 90
    .line 91
    iget-wide v3, v3, LR0/a;->b:J

    .line 92
    .line 93
    sub-long/2addr v3, v1

    .line 94
    long-to-float v3, v3

    .line 95
    mul-float v0, v0, v3

    .line 96
    .line 97
    float-to-long v3, v0

    .line 98
    add-long v0, v1, v3

    .line 99
    .line 100
    :goto_1
    const/4 v2, 0x0

    .line 101
    const/4 v3, 0x0

    .line 102
    :goto_2
    iget v4, p0, LR0/c;->b:I

    .line 103
    .line 104
    if-ge v2, v4, :cond_5

    .line 105
    .line 106
    const-wide/high16 v4, -0x8000000000000000L

    .line 107
    .line 108
    cmp-long v6, p1, v4

    .line 109
    .line 110
    if-eqz v6, :cond_2

    .line 111
    .line 112
    invoke-virtual {p0, v2, p1, p2}, LR0/c;->p(IJ)Z

    .line 113
    .line 114
    .line 115
    move-result v4

    .line 116
    if-nez v4, :cond_4

    .line 117
    .line 118
    :cond_2
    invoke-virtual {p0, v2}, LR0/c;->j(I)Lm0/t;

    .line 119
    .line 120
    .line 121
    move-result-object v3

    .line 122
    iget v3, v3, Lm0/t;->j:I

    .line 123
    .line 124
    int-to-long v3, v3

    .line 125
    cmp-long v5, v3, v0

    .line 126
    .line 127
    if-gtz v5, :cond_3

    .line 128
    .line 129
    return v2

    .line 130
    :cond_3
    move v3, v2

    .line 131
    :cond_4
    add-int/lit8 v2, v2, 0x1

    .line 132
    .line 133
    goto :goto_2

    .line 134
    :cond_5
    return v3

    .line 135
    :catchall_0
    move-exception p1

    .line 136
    monitor-exit v0

    .line 137
    throw p1
.end method
