.class public final Lk1/c;
.super Lcom/bumptech/glide/d;
.source "SourceFile"


# instance fields
.field public final e:Lp0/E;

.field public final f:Lp0/D;

.field public g:Lp0/J;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lp0/E;

    .line 5
    .line 6
    invoke-direct {v0}, Lp0/E;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lk1/c;->e:Lp0/E;

    .line 10
    .line 11
    new-instance v0, Lp0/D;

    .line 12
    .line 13
    invoke-direct {v0}, Lp0/D;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lk1/c;->f:Lp0/D;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final h(Le1/a;Ljava/nio/ByteBuffer;)Lm0/N;
    .locals 26

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const/16 v3, 0x20

    .line 6
    .line 7
    const/4 v4, 0x1

    .line 8
    iget-object v5, v0, Lk1/c;->g:Lp0/J;

    .line 9
    .line 10
    if-eqz v5, :cond_0

    .line 11
    .line 12
    iget-wide v6, v1, Le1/a;->O:J

    .line 13
    .line 14
    invoke-virtual {v5}, Lp0/J;->e()J

    .line 15
    .line 16
    .line 17
    move-result-wide v8

    .line 18
    cmp-long v5, v6, v8

    .line 19
    .line 20
    if-eqz v5, :cond_1

    .line 21
    .line 22
    :cond_0
    new-instance v5, Lp0/J;

    .line 23
    .line 24
    iget-wide v6, v1, Lw0/g;->K:J

    .line 25
    .line 26
    invoke-direct {v5, v6, v7}, Lp0/J;-><init>(J)V

    .line 27
    .line 28
    .line 29
    iput-object v5, v0, Lk1/c;->g:Lp0/J;

    .line 30
    .line 31
    iget-wide v6, v1, Lw0/g;->K:J

    .line 32
    .line 33
    iget-wide v8, v1, Le1/a;->O:J

    .line 34
    .line 35
    sub-long/2addr v6, v8

    .line 36
    invoke-virtual {v5, v6, v7}, Lp0/J;->a(J)J

    .line 37
    .line 38
    .line 39
    :cond_1
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->array()[B

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual/range {p2 .. p2}, Ljava/nio/Buffer;->limit()I

    .line 44
    .line 45
    .line 46
    move-result v5

    .line 47
    iget-object v6, v0, Lk1/c;->e:Lp0/E;

    .line 48
    .line 49
    invoke-virtual {v6, v5, v1}, Lp0/E;->J(I[B)V

    .line 50
    .line 51
    .line 52
    iget-object v7, v0, Lk1/c;->f:Lp0/D;

    .line 53
    .line 54
    invoke-virtual {v7, v5, v1}, Lp0/D;->p(I[B)V

    .line 55
    .line 56
    .line 57
    const/16 v1, 0x27

    .line 58
    .line 59
    invoke-virtual {v7, v1}, Lp0/D;->u(I)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v7, v4}, Lp0/D;->i(I)I

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    int-to-long v8, v1

    .line 67
    shl-long/2addr v8, v3

    .line 68
    invoke-virtual {v7, v3}, Lp0/D;->i(I)I

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    int-to-long v10, v1

    .line 73
    or-long/2addr v8, v10

    .line 74
    const/16 v1, 0x14

    .line 75
    .line 76
    invoke-virtual {v7, v1}, Lp0/D;->u(I)V

    .line 77
    .line 78
    .line 79
    const/16 v1, 0xc

    .line 80
    .line 81
    invoke-virtual {v7, v1}, Lp0/D;->i(I)I

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    const/16 v5, 0x8

    .line 86
    .line 87
    invoke-virtual {v7, v5}, Lp0/D;->i(I)I

    .line 88
    .line 89
    .line 90
    move-result v5

    .line 91
    const/16 v7, 0xe

    .line 92
    .line 93
    invoke-virtual {v6, v7}, Lp0/E;->M(I)V

    .line 94
    .line 95
    .line 96
    if-eqz v5, :cond_19

    .line 97
    .line 98
    const/16 v7, 0xff

    .line 99
    .line 100
    const/4 v10, 0x4

    .line 101
    if-eq v5, v7, :cond_18

    .line 102
    .line 103
    const/4 v1, 0x0

    .line 104
    if-eq v5, v10, :cond_e

    .line 105
    .line 106
    const/4 v7, 0x5

    .line 107
    if-eq v5, v7, :cond_3

    .line 108
    .line 109
    const/4 v3, 0x6

    .line 110
    if-eq v5, v3, :cond_2

    .line 111
    .line 112
    goto/16 :goto_e

    .line 113
    .line 114
    :cond_2
    iget-object v1, v0, Lk1/c;->g:Lp0/J;

    .line 115
    .line 116
    invoke-static {v8, v9, v6}, Lk1/h;->a(JLp0/E;)J

    .line 117
    .line 118
    .line 119
    move-result-wide v5

    .line 120
    invoke-virtual {v1, v5, v6}, Lp0/J;->b(J)J

    .line 121
    .line 122
    .line 123
    move-result-wide v7

    .line 124
    new-instance v1, Lk1/h;

    .line 125
    .line 126
    invoke-direct {v1, v5, v6, v7, v8}, Lk1/h;-><init>(JJ)V

    .line 127
    .line 128
    .line 129
    goto/16 :goto_e

    .line 130
    .line 131
    :cond_3
    iget-object v1, v0, Lk1/c;->g:Lp0/J;

    .line 132
    .line 133
    invoke-virtual {v6}, Lp0/E;->B()J

    .line 134
    .line 135
    .line 136
    invoke-virtual {v6}, Lp0/E;->z()I

    .line 137
    .line 138
    .line 139
    move-result v5

    .line 140
    and-int/lit16 v5, v5, 0x80

    .line 141
    .line 142
    if-eqz v5, :cond_4

    .line 143
    .line 144
    const/4 v5, 0x1

    .line 145
    goto :goto_0

    .line 146
    :cond_4
    const/4 v5, 0x0

    .line 147
    :goto_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 148
    .line 149
    .line 150
    move-result-object v7

    .line 151
    if-nez v5, :cond_d

    .line 152
    .line 153
    invoke-virtual {v6}, Lp0/E;->z()I

    .line 154
    .line 155
    .line 156
    move-result v5

    .line 157
    and-int/lit8 v12, v5, 0x40

    .line 158
    .line 159
    if-eqz v12, :cond_5

    .line 160
    .line 161
    const/4 v12, 0x1

    .line 162
    goto :goto_1

    .line 163
    :cond_5
    const/4 v12, 0x0

    .line 164
    :goto_1
    and-int/2addr v3, v5

    .line 165
    if-eqz v3, :cond_6

    .line 166
    .line 167
    const/4 v3, 0x1

    .line 168
    goto :goto_2

    .line 169
    :cond_6
    const/4 v3, 0x0

    .line 170
    :goto_2
    and-int/lit8 v5, v5, 0x10

    .line 171
    .line 172
    if-eqz v5, :cond_7

    .line 173
    .line 174
    const/4 v5, 0x1

    .line 175
    goto :goto_3

    .line 176
    :cond_7
    const/4 v5, 0x0

    .line 177
    :goto_3
    if-eqz v12, :cond_8

    .line 178
    .line 179
    if-nez v5, :cond_8

    .line 180
    .line 181
    invoke-static {v8, v9, v6}, Lk1/h;->a(JLp0/E;)J

    .line 182
    .line 183
    .line 184
    move-result-wide v13

    .line 185
    goto :goto_4

    .line 186
    :cond_8
    const-wide v13, -0x7fffffffffffffffL    # -4.9E-324

    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    :goto_4
    if-nez v12, :cond_b

    .line 192
    .line 193
    invoke-virtual {v6}, Lp0/E;->z()I

    .line 194
    .line 195
    .line 196
    move-result v7

    .line 197
    new-instance v12, Ljava/util/ArrayList;

    .line 198
    .line 199
    invoke-direct {v12, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 200
    .line 201
    .line 202
    const/4 v15, 0x0

    .line 203
    :goto_5
    if-ge v15, v7, :cond_a

    .line 204
    .line 205
    invoke-virtual {v6}, Lp0/E;->z()I

    .line 206
    .line 207
    .line 208
    move-result v10

    .line 209
    if-nez v5, :cond_9

    .line 210
    .line 211
    invoke-static {v8, v9, v6}, Lk1/h;->a(JLp0/E;)J

    .line 212
    .line 213
    .line 214
    move-result-wide v16

    .line 215
    move-wide/from16 v24, v16

    .line 216
    .line 217
    move/from16 v16, v3

    .line 218
    .line 219
    move-wide/from16 v2, v24

    .line 220
    .line 221
    goto :goto_6

    .line 222
    :cond_9
    move/from16 v16, v3

    .line 223
    .line 224
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    :goto_6
    new-instance v11, Lf/T;

    .line 230
    .line 231
    move/from16 v18, v5

    .line 232
    .line 233
    invoke-virtual {v1, v2, v3}, Lp0/J;->b(J)J

    .line 234
    .line 235
    .line 236
    move-result-wide v4

    .line 237
    invoke-direct {v11}, Ljava/lang/Object;-><init>()V

    .line 238
    .line 239
    .line 240
    iput v10, v11, Lf/T;->a:I

    .line 241
    .line 242
    iput-wide v2, v11, Lf/T;->b:J

    .line 243
    .line 244
    iput-wide v4, v11, Lf/T;->c:J

    .line 245
    .line 246
    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 247
    .line 248
    .line 249
    const/4 v2, 0x1

    .line 250
    add-int/2addr v15, v2

    .line 251
    move/from16 v3, v16

    .line 252
    .line 253
    move/from16 v5, v18

    .line 254
    .line 255
    const/4 v4, 0x1

    .line 256
    goto :goto_5

    .line 257
    :cond_a
    move/from16 v16, v3

    .line 258
    .line 259
    move-object v7, v12

    .line 260
    goto :goto_7

    .line 261
    :cond_b
    move/from16 v16, v3

    .line 262
    .line 263
    :goto_7
    if-eqz v16, :cond_c

    .line 264
    .line 265
    invoke-virtual {v6}, Lp0/E;->z()I

    .line 266
    .line 267
    .line 268
    invoke-virtual {v6}, Lp0/E;->B()J

    .line 269
    .line 270
    .line 271
    :cond_c
    invoke-virtual {v6}, Lp0/E;->F()I

    .line 272
    .line 273
    .line 274
    invoke-virtual {v6}, Lp0/E;->z()I

    .line 275
    .line 276
    .line 277
    invoke-virtual {v6}, Lp0/E;->z()I

    .line 278
    .line 279
    .line 280
    move-object/from16 v23, v7

    .line 281
    .line 282
    goto :goto_8

    .line 283
    :cond_d
    move-object/from16 v23, v7

    .line 284
    .line 285
    const-wide v13, -0x7fffffffffffffffL    # -4.9E-324

    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    :goto_8
    new-instance v2, Lk1/d;

    .line 291
    .line 292
    invoke-virtual {v1, v13, v14}, Lp0/J;->b(J)J

    .line 293
    .line 294
    .line 295
    move-result-wide v21

    .line 296
    move-object/from16 v18, v2

    .line 297
    .line 298
    move-wide/from16 v19, v13

    .line 299
    .line 300
    invoke-direct/range {v18 .. v23}, Lk1/d;-><init>(JJLjava/util/List;)V

    .line 301
    .line 302
    .line 303
    move-object v1, v2

    .line 304
    goto/16 :goto_e

    .line 305
    .line 306
    :cond_e
    invoke-virtual {v6}, Lp0/E;->z()I

    .line 307
    .line 308
    .line 309
    move-result v2

    .line 310
    new-instance v4, Ljava/util/ArrayList;

    .line 311
    .line 312
    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 313
    .line 314
    .line 315
    const/4 v11, 0x0

    .line 316
    :goto_9
    if-ge v11, v2, :cond_17

    .line 317
    .line 318
    invoke-virtual {v6}, Lp0/E;->B()J

    .line 319
    .line 320
    .line 321
    invoke-virtual {v6}, Lp0/E;->z()I

    .line 322
    .line 323
    .line 324
    move-result v5

    .line 325
    and-int/lit16 v5, v5, 0x80

    .line 326
    .line 327
    if-eqz v5, :cond_f

    .line 328
    .line 329
    const/4 v5, 0x1

    .line 330
    goto :goto_a

    .line 331
    :cond_f
    const/4 v5, 0x0

    .line 332
    :goto_a
    new-instance v7, Ljava/util/ArrayList;

    .line 333
    .line 334
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 335
    .line 336
    .line 337
    if-nez v5, :cond_16

    .line 338
    .line 339
    invoke-virtual {v6}, Lp0/E;->z()I

    .line 340
    .line 341
    .line 342
    move-result v5

    .line 343
    and-int/lit8 v8, v5, 0x40

    .line 344
    .line 345
    if-eqz v8, :cond_10

    .line 346
    .line 347
    const/4 v8, 0x1

    .line 348
    goto :goto_b

    .line 349
    :cond_10
    const/4 v8, 0x0

    .line 350
    :goto_b
    and-int/2addr v5, v3

    .line 351
    if-eqz v5, :cond_11

    .line 352
    .line 353
    const/4 v5, 0x1

    .line 354
    goto :goto_c

    .line 355
    :cond_11
    const/4 v5, 0x0

    .line 356
    :goto_c
    if-eqz v8, :cond_12

    .line 357
    .line 358
    invoke-virtual {v6}, Lp0/E;->B()J

    .line 359
    .line 360
    .line 361
    :cond_12
    if-nez v8, :cond_14

    .line 362
    .line 363
    invoke-virtual {v6}, Lp0/E;->z()I

    .line 364
    .line 365
    .line 366
    move-result v7

    .line 367
    new-instance v8, Ljava/util/ArrayList;

    .line 368
    .line 369
    invoke-direct {v8, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 370
    .line 371
    .line 372
    const/4 v9, 0x0

    .line 373
    :goto_d
    if-ge v9, v7, :cond_13

    .line 374
    .line 375
    invoke-virtual {v6}, Lp0/E;->z()I

    .line 376
    .line 377
    .line 378
    move-result v10

    .line 379
    invoke-virtual {v6}, Lp0/E;->B()J

    .line 380
    .line 381
    .line 382
    move-result-wide v12

    .line 383
    new-instance v14, LS0/g;

    .line 384
    .line 385
    invoke-direct {v14, v10, v12, v13, v1}, LS0/g;-><init>(IJLjava/lang/Object;)V

    .line 386
    .line 387
    .line 388
    invoke-virtual {v8, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 389
    .line 390
    .line 391
    const/4 v10, 0x1

    .line 392
    add-int/2addr v9, v10

    .line 393
    goto :goto_d

    .line 394
    :cond_13
    move-object v7, v8

    .line 395
    :cond_14
    if-eqz v5, :cond_15

    .line 396
    .line 397
    invoke-virtual {v6}, Lp0/E;->z()I

    .line 398
    .line 399
    .line 400
    invoke-virtual {v6}, Lp0/E;->B()J

    .line 401
    .line 402
    .line 403
    :cond_15
    invoke-virtual {v6}, Lp0/E;->F()I

    .line 404
    .line 405
    .line 406
    invoke-virtual {v6}, Lp0/E;->z()I

    .line 407
    .line 408
    .line 409
    invoke-virtual {v6}, Lp0/E;->z()I

    .line 410
    .line 411
    .line 412
    :cond_16
    new-instance v5, Lk1/f;

    .line 413
    .line 414
    invoke-direct {v5, v7}, Lk1/f;-><init>(Ljava/util/ArrayList;)V

    .line 415
    .line 416
    .line 417
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 418
    .line 419
    .line 420
    const/4 v5, 0x1

    .line 421
    add-int/2addr v11, v5

    .line 422
    goto :goto_9

    .line 423
    :cond_17
    new-instance v1, Lk1/g;

    .line 424
    .line 425
    invoke-direct {v1, v4}, Lk1/g;-><init>(Ljava/util/ArrayList;)V

    .line 426
    .line 427
    .line 428
    goto :goto_e

    .line 429
    :cond_18
    invoke-virtual {v6}, Lp0/E;->B()J

    .line 430
    .line 431
    .line 432
    move-result-wide v2

    .line 433
    sub-int/2addr v1, v10

    .line 434
    new-array v4, v1, [B

    .line 435
    .line 436
    const/4 v5, 0x0

    .line 437
    invoke-virtual {v6, v5, v4, v1}, Lp0/E;->j(I[BI)V

    .line 438
    .line 439
    .line 440
    new-instance v1, Lk1/a;

    .line 441
    .line 442
    invoke-direct {v1, v2, v3, v8, v9}, Lk1/a;-><init>(JJ)V

    .line 443
    .line 444
    .line 445
    goto :goto_e

    .line 446
    :cond_19
    new-instance v1, Lk1/e;

    .line 447
    .line 448
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 449
    .line 450
    .line 451
    :goto_e
    if-nez v1, :cond_1a

    .line 452
    .line 453
    new-instance v1, Lm0/N;

    .line 454
    .line 455
    const/4 v2, 0x0

    .line 456
    new-array v2, v2, [Lm0/M;

    .line 457
    .line 458
    invoke-direct {v1, v2}, Lm0/N;-><init>([Lm0/M;)V

    .line 459
    .line 460
    .line 461
    goto :goto_f

    .line 462
    :cond_1a
    const/4 v2, 0x0

    .line 463
    new-instance v3, Lm0/N;

    .line 464
    .line 465
    const/4 v4, 0x1

    .line 466
    new-array v4, v4, [Lm0/M;

    .line 467
    .line 468
    aput-object v1, v4, v2

    .line 469
    .line 470
    invoke-direct {v3, v4}, Lm0/N;-><init>([Lm0/M;)V

    .line 471
    .line 472
    .line 473
    move-object v1, v3

    .line 474
    :goto_f
    return-object v1
.end method
