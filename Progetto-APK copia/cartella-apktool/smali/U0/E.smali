.class public final LU0/E;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:LU0/D;

.field public final b:LU0/I;

.field public final c:J

.field public d:Z

.field public e:I

.field public f:J

.field public g:J

.field public h:J

.field public i:J

.field public j:Z

.field public k:F

.field public l:Lp0/f;

.field public m:Z

.field public n:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;LU0/D;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, LU0/E;->a:LU0/D;

    .line 5
    .line 6
    iput-wide p3, p0, LU0/E;->c:J

    .line 7
    .line 8
    new-instance p2, LU0/I;

    .line 9
    .line 10
    const/4 p3, 0x0

    .line 11
    invoke-direct {p2, p1, p3}, LU0/I;-><init>(Landroid/content/Context;I)V

    .line 12
    .line 13
    .line 14
    iput-object p2, p0, LU0/E;->b:LU0/I;

    .line 15
    .line 16
    iput p3, p0, LU0/E;->e:I

    .line 17
    .line 18
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    iput-wide p1, p0, LU0/E;->f:J

    .line 24
    .line 25
    iput-wide p1, p0, LU0/E;->h:J

    .line 26
    .line 27
    iput-wide p1, p0, LU0/E;->i:J

    .line 28
    .line 29
    const/high16 p1, 0x3f800000    # 1.0f

    .line 30
    .line 31
    iput p1, p0, LU0/E;->k:F

    .line 32
    .line 33
    sget-object p1, Lp0/f;->a:Lp0/G;

    .line 34
    .line 35
    iput-object p1, p0, LU0/E;->l:Lp0/f;

    .line 36
    .line 37
    return-void
.end method


# virtual methods
.method public final a(JJJJZZLU0/C;)I
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-wide/from16 v1, p1

    .line 4
    .line 5
    move-wide/from16 v4, p3

    .line 6
    .line 7
    move-object/from16 v8, p11

    .line 8
    .line 9
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    iput-wide v6, v8, LU0/C;->a:J

    .line 15
    .line 16
    iput-wide v6, v8, LU0/C;->b:J

    .line 17
    .line 18
    iget-boolean v3, v0, LU0/E;->d:Z

    .line 19
    .line 20
    if-eqz v3, :cond_0

    .line 21
    .line 22
    iget-wide v9, v0, LU0/E;->f:J

    .line 23
    .line 24
    cmp-long v3, v9, v6

    .line 25
    .line 26
    if-nez v3, :cond_0

    .line 27
    .line 28
    iput-wide v4, v0, LU0/E;->f:J

    .line 29
    .line 30
    :cond_0
    iget-wide v9, v0, LU0/E;->h:J

    .line 31
    .line 32
    const-wide/16 v11, -0x1

    .line 33
    .line 34
    const/4 v3, 0x0

    .line 35
    const-wide/16 v15, 0x3e8

    .line 36
    .line 37
    cmp-long v14, v9, v1

    .line 38
    .line 39
    if-eqz v14, :cond_9

    .line 40
    .line 41
    iget-object v9, v0, LU0/E;->b:LU0/I;

    .line 42
    .line 43
    iget-wide v13, v9, LU0/I;->k:J

    .line 44
    .line 45
    cmp-long v19, v13, v11

    .line 46
    .line 47
    if-eqz v19, :cond_1

    .line 48
    .line 49
    iput-wide v13, v9, LU0/I;->m:J

    .line 50
    .line 51
    iget-wide v13, v9, LU0/I;->l:J

    .line 52
    .line 53
    iput-wide v13, v9, LU0/I;->n:J

    .line 54
    .line 55
    :cond_1
    iget-wide v13, v9, LU0/I;->j:J

    .line 56
    .line 57
    const-wide/16 v19, 0x1

    .line 58
    .line 59
    add-long v13, v13, v19

    .line 60
    .line 61
    iput-wide v13, v9, LU0/I;->j:J

    .line 62
    .line 63
    iget-object v13, v9, LU0/I;->o:Ljava/lang/Object;

    .line 64
    .line 65
    check-cast v13, LU0/f;

    .line 66
    .line 67
    mul-long v10, v1, v15

    .line 68
    .line 69
    iget-object v14, v13, LU0/f;->a:LU0/e;

    .line 70
    .line 71
    invoke-virtual {v14, v10, v11}, LU0/e;->b(J)V

    .line 72
    .line 73
    .line 74
    iget-object v14, v13, LU0/f;->a:LU0/e;

    .line 75
    .line 76
    invoke-virtual {v14}, LU0/e;->a()Z

    .line 77
    .line 78
    .line 79
    move-result v14

    .line 80
    if-eqz v14, :cond_2

    .line 81
    .line 82
    iput-boolean v3, v13, LU0/f;->c:Z

    .line 83
    .line 84
    goto :goto_3

    .line 85
    :cond_2
    iget-wide v3, v13, LU0/f;->d:J

    .line 86
    .line 87
    cmp-long v14, v3, v6

    .line 88
    .line 89
    if-eqz v14, :cond_6

    .line 90
    .line 91
    iget-boolean v3, v13, LU0/f;->c:Z

    .line 92
    .line 93
    if-eqz v3, :cond_5

    .line 94
    .line 95
    iget-object v3, v13, LU0/f;->b:LU0/e;

    .line 96
    .line 97
    iget-wide v5, v3, LU0/e;->d:J

    .line 98
    .line 99
    const-wide/16 v17, 0x0

    .line 100
    .line 101
    cmp-long v7, v5, v17

    .line 102
    .line 103
    if-nez v7, :cond_3

    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_3
    sub-long v5, v5, v19

    .line 107
    .line 108
    const-wide/16 v19, 0xf

    .line 109
    .line 110
    rem-long v5, v5, v19

    .line 111
    .line 112
    long-to-int v6, v5

    .line 113
    iget-object v3, v3, LU0/e;->g:[Z

    .line 114
    .line 115
    aget-boolean v3, v3, v6

    .line 116
    .line 117
    if-eqz v3, :cond_4

    .line 118
    .line 119
    goto :goto_1

    .line 120
    :cond_4
    :goto_0
    const/4 v3, 0x1

    .line 121
    goto :goto_2

    .line 122
    :cond_5
    :goto_1
    iget-object v3, v13, LU0/f;->b:LU0/e;

    .line 123
    .line 124
    invoke-virtual {v3}, LU0/e;->c()V

    .line 125
    .line 126
    .line 127
    iget-object v3, v13, LU0/f;->b:LU0/e;

    .line 128
    .line 129
    iget-wide v5, v13, LU0/f;->d:J

    .line 130
    .line 131
    invoke-virtual {v3, v5, v6}, LU0/e;->b(J)V

    .line 132
    .line 133
    .line 134
    goto :goto_0

    .line 135
    :goto_2
    iput-boolean v3, v13, LU0/f;->c:Z

    .line 136
    .line 137
    iget-object v5, v13, LU0/f;->b:LU0/e;

    .line 138
    .line 139
    invoke-virtual {v5, v10, v11}, LU0/e;->b(J)V

    .line 140
    .line 141
    .line 142
    :cond_6
    :goto_3
    iget-boolean v5, v13, LU0/f;->c:Z

    .line 143
    .line 144
    if-eqz v5, :cond_7

    .line 145
    .line 146
    iget-object v5, v13, LU0/f;->b:LU0/e;

    .line 147
    .line 148
    invoke-virtual {v5}, LU0/e;->a()Z

    .line 149
    .line 150
    .line 151
    move-result v5

    .line 152
    if-eqz v5, :cond_7

    .line 153
    .line 154
    iget-object v5, v13, LU0/f;->a:LU0/e;

    .line 155
    .line 156
    iget-object v6, v13, LU0/f;->b:LU0/e;

    .line 157
    .line 158
    iput-object v6, v13, LU0/f;->a:LU0/e;

    .line 159
    .line 160
    iput-object v5, v13, LU0/f;->b:LU0/e;

    .line 161
    .line 162
    const/4 v4, 0x0

    .line 163
    iput-boolean v4, v13, LU0/f;->c:Z

    .line 164
    .line 165
    :cond_7
    iput-wide v10, v13, LU0/f;->d:J

    .line 166
    .line 167
    iget-object v4, v13, LU0/f;->a:LU0/e;

    .line 168
    .line 169
    invoke-virtual {v4}, LU0/e;->a()Z

    .line 170
    .line 171
    .line 172
    move-result v4

    .line 173
    if-eqz v4, :cond_8

    .line 174
    .line 175
    const/4 v4, 0x0

    .line 176
    goto :goto_4

    .line 177
    :cond_8
    iget v4, v13, LU0/f;->e:I

    .line 178
    .line 179
    const/4 v3, 0x1

    .line 180
    add-int/2addr v4, v3

    .line 181
    :goto_4
    iput v4, v13, LU0/f;->e:I

    .line 182
    .line 183
    invoke-virtual {v9}, LU0/I;->c()V

    .line 184
    .line 185
    .line 186
    iput-wide v1, v0, LU0/E;->h:J

    .line 187
    .line 188
    :cond_9
    sub-long v1, v1, p3

    .line 189
    .line 190
    long-to-double v1, v1

    .line 191
    iget v3, v0, LU0/E;->k:F

    .line 192
    .line 193
    float-to-double v3, v3

    .line 194
    div-double/2addr v1, v3

    .line 195
    double-to-long v1, v1

    .line 196
    iget-boolean v3, v0, LU0/E;->d:Z

    .line 197
    .line 198
    if-eqz v3, :cond_a

    .line 199
    .line 200
    iget-object v3, v0, LU0/E;->l:Lp0/f;

    .line 201
    .line 202
    check-cast v3, Lp0/G;

    .line 203
    .line 204
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 205
    .line 206
    .line 207
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 208
    .line 209
    .line 210
    move-result-wide v3

    .line 211
    invoke-static {v3, v4}, Lp0/M;->R(J)J

    .line 212
    .line 213
    .line 214
    move-result-wide v3

    .line 215
    sub-long v3, v3, p5

    .line 216
    .line 217
    sub-long/2addr v1, v3

    .line 218
    :cond_a
    move-wide v2, v1

    .line 219
    iput-wide v2, v8, LU0/C;->a:J

    .line 220
    .line 221
    const/4 v9, 0x3

    .line 222
    if-eqz p9, :cond_b

    .line 223
    .line 224
    if-nez p10, :cond_b

    .line 225
    .line 226
    return v9

    .line 227
    :cond_b
    iget-boolean v1, v0, LU0/E;->m:Z

    .line 228
    .line 229
    const/4 v11, 0x4

    .line 230
    if-nez v1, :cond_e

    .line 231
    .line 232
    const/4 v1, 0x1

    .line 233
    iput-boolean v1, v0, LU0/E;->n:Z

    .line 234
    .line 235
    iget-object v1, v0, LU0/E;->a:LU0/D;

    .line 236
    .line 237
    const/4 v7, 0x1

    .line 238
    check-cast v1, LU0/k;

    .line 239
    .line 240
    move-wide/from16 v4, p3

    .line 241
    .line 242
    move/from16 v6, p10

    .line 243
    .line 244
    invoke-virtual/range {v1 .. v7}, LU0/k;->k0(JJZZ)Z

    .line 245
    .line 246
    .line 247
    move-result v1

    .line 248
    if-eqz v1, :cond_c

    .line 249
    .line 250
    return v11

    .line 251
    :cond_c
    iget-boolean v1, v0, LU0/E;->d:Z

    .line 252
    .line 253
    if-eqz v1, :cond_d

    .line 254
    .line 255
    iget-wide v1, v8, LU0/C;->a:J

    .line 256
    .line 257
    const-wide/16 v3, 0x7530

    .line 258
    .line 259
    cmp-long v5, v1, v3

    .line 260
    .line 261
    if-gez v5, :cond_d

    .line 262
    .line 263
    goto :goto_5

    .line 264
    :cond_d
    const/4 v9, 0x5

    .line 265
    :goto_5
    return v9

    .line 266
    :cond_e
    iget-wide v6, v0, LU0/E;->i:J

    .line 267
    .line 268
    const-wide/16 v13, -0x7530

    .line 269
    .line 270
    const/4 v4, 0x2

    .line 271
    const-wide v19, -0x7fffffffffffffffL    # -4.9E-324

    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    cmp-long v1, v6, v19

    .line 277
    .line 278
    if-eqz v1, :cond_10

    .line 279
    .line 280
    iget-boolean v1, v0, LU0/E;->j:Z

    .line 281
    .line 282
    if-nez v1, :cond_10

    .line 283
    .line 284
    :cond_f
    const/4 v1, 0x0

    .line 285
    goto :goto_8

    .line 286
    :cond_10
    iget v1, v0, LU0/E;->e:I

    .line 287
    .line 288
    if-eqz v1, :cond_14

    .line 289
    .line 290
    const/4 v6, 0x1

    .line 291
    if-eq v1, v6, :cond_11

    .line 292
    .line 293
    if-eq v1, v4, :cond_13

    .line 294
    .line 295
    if-ne v1, v9, :cond_12

    .line 296
    .line 297
    iget-object v1, v0, LU0/E;->l:Lp0/f;

    .line 298
    .line 299
    check-cast v1, Lp0/G;

    .line 300
    .line 301
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 302
    .line 303
    .line 304
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 305
    .line 306
    .line 307
    move-result-wide v6

    .line 308
    invoke-static {v6, v7}, Lp0/M;->R(J)J

    .line 309
    .line 310
    .line 311
    move-result-wide v6

    .line 312
    iget-wide v4, v0, LU0/E;->g:J

    .line 313
    .line 314
    sub-long/2addr v6, v4

    .line 315
    iget-boolean v4, v0, LU0/E;->d:Z

    .line 316
    .line 317
    if-eqz v4, :cond_f

    .line 318
    .line 319
    iget-wide v4, v0, LU0/E;->f:J

    .line 320
    .line 321
    const-wide v19, -0x7fffffffffffffffL    # -4.9E-324

    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    cmp-long v21, v4, v19

    .line 327
    .line 328
    if-eqz v21, :cond_f

    .line 329
    .line 330
    cmp-long v19, v4, p3

    .line 331
    .line 332
    if-eqz v19, :cond_f

    .line 333
    .line 334
    iget-object v4, v0, LU0/E;->a:LU0/D;

    .line 335
    .line 336
    check-cast v4, LU0/k;

    .line 337
    .line 338
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 339
    .line 340
    .line 341
    cmp-long v4, v2, v13

    .line 342
    .line 343
    if-gez v4, :cond_f

    .line 344
    .line 345
    const-wide/32 v2, 0x186a0

    .line 346
    .line 347
    .line 348
    cmp-long v4, v6, v2

    .line 349
    .line 350
    if-lez v4, :cond_f

    .line 351
    .line 352
    :cond_11
    :goto_6
    const/4 v1, 0x0

    .line 353
    goto :goto_7

    .line 354
    :cond_12
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 355
    .line 356
    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 357
    .line 358
    .line 359
    throw v1

    .line 360
    :cond_13
    cmp-long v2, p3, p7

    .line 361
    .line 362
    if-ltz v2, :cond_f

    .line 363
    .line 364
    goto :goto_6

    .line 365
    :cond_14
    iget-boolean v2, v0, LU0/E;->d:Z

    .line 366
    .line 367
    if-eqz v2, :cond_f

    .line 368
    .line 369
    goto :goto_6

    .line 370
    :goto_7
    return v1

    .line 371
    :goto_8
    iget-boolean v2, v0, LU0/E;->d:Z

    .line 372
    .line 373
    if-eqz v2, :cond_15

    .line 374
    .line 375
    iget-wide v2, v0, LU0/E;->f:J

    .line 376
    .line 377
    cmp-long v4, p3, v2

    .line 378
    .line 379
    if-nez v4, :cond_16

    .line 380
    .line 381
    :cond_15
    const/4 v1, 0x5

    .line 382
    goto/16 :goto_10

    .line 383
    .line 384
    :cond_16
    iget-object v2, v0, LU0/E;->l:Lp0/f;

    .line 385
    .line 386
    check-cast v2, Lp0/G;

    .line 387
    .line 388
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 389
    .line 390
    .line 391
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 392
    .line 393
    .line 394
    move-result-wide v2

    .line 395
    iget-object v4, v0, LU0/E;->b:LU0/I;

    .line 396
    .line 397
    iget-wide v5, v8, LU0/C;->a:J

    .line 398
    .line 399
    invoke-static {v5, v6}, Ljava/lang/Long;->signum(J)I

    .line 400
    .line 401
    .line 402
    mul-long v5, v5, v15

    .line 403
    .line 404
    add-long/2addr v5, v2

    .line 405
    iget-wide v9, v4, LU0/I;->m:J

    .line 406
    .line 407
    const-wide/16 v19, -0x1

    .line 408
    .line 409
    cmp-long v7, v9, v19

    .line 410
    .line 411
    if-eqz v7, :cond_1a

    .line 412
    .line 413
    iget-object v7, v4, LU0/I;->o:Ljava/lang/Object;

    .line 414
    .line 415
    check-cast v7, LU0/f;

    .line 416
    .line 417
    iget-object v7, v7, LU0/f;->a:LU0/e;

    .line 418
    .line 419
    invoke-virtual {v7}, LU0/e;->a()Z

    .line 420
    .line 421
    .line 422
    move-result v7

    .line 423
    if-eqz v7, :cond_1a

    .line 424
    .line 425
    iget-object v7, v4, LU0/I;->o:Ljava/lang/Object;

    .line 426
    .line 427
    check-cast v7, LU0/f;

    .line 428
    .line 429
    iget-object v9, v7, LU0/f;->a:LU0/e;

    .line 430
    .line 431
    invoke-virtual {v9}, LU0/e;->a()Z

    .line 432
    .line 433
    .line 434
    move-result v9

    .line 435
    if-eqz v9, :cond_18

    .line 436
    .line 437
    iget-object v7, v7, LU0/f;->a:LU0/e;

    .line 438
    .line 439
    iget-wide v9, v7, LU0/e;->e:J

    .line 440
    .line 441
    const-wide/16 v17, 0x0

    .line 442
    .line 443
    cmp-long v19, v9, v17

    .line 444
    .line 445
    if-nez v19, :cond_17

    .line 446
    .line 447
    const-wide/16 v12, 0x0

    .line 448
    .line 449
    goto :goto_9

    .line 450
    :cond_17
    iget-wide v12, v7, LU0/e;->f:J

    .line 451
    .line 452
    div-long/2addr v12, v9

    .line 453
    goto :goto_9

    .line 454
    :cond_18
    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    .line 455
    .line 456
    .line 457
    .line 458
    .line 459
    :goto_9
    iget-wide v9, v4, LU0/I;->n:J

    .line 460
    .line 461
    move-wide/from16 p8, v2

    .line 462
    .line 463
    iget-wide v1, v4, LU0/I;->j:J

    .line 464
    .line 465
    iget-wide v14, v4, LU0/I;->m:J

    .line 466
    .line 467
    sub-long/2addr v1, v14

    .line 468
    mul-long v1, v1, v12

    .line 469
    .line 470
    long-to-float v1, v1

    .line 471
    iget v2, v4, LU0/I;->f:F

    .line 472
    .line 473
    div-float/2addr v1, v2

    .line 474
    float-to-long v1, v1

    .line 475
    add-long/2addr v9, v1

    .line 476
    sub-long v1, v5, v9

    .line 477
    .line 478
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    .line 479
    .line 480
    .line 481
    move-result-wide v1

    .line 482
    const-wide/32 v12, 0x1312d00

    .line 483
    .line 484
    .line 485
    cmp-long v3, v1, v12

    .line 486
    .line 487
    if-gtz v3, :cond_19

    .line 488
    .line 489
    move-wide v5, v9

    .line 490
    goto :goto_a

    .line 491
    :cond_19
    const-wide/16 v1, 0x0

    .line 492
    .line 493
    iput-wide v1, v4, LU0/I;->j:J

    .line 494
    .line 495
    const-wide/16 v1, -0x1

    .line 496
    .line 497
    iput-wide v1, v4, LU0/I;->m:J

    .line 498
    .line 499
    iput-wide v1, v4, LU0/I;->k:J

    .line 500
    .line 501
    goto :goto_a

    .line 502
    :cond_1a
    move-wide/from16 p8, v2

    .line 503
    .line 504
    :goto_a
    iget-wide v1, v4, LU0/I;->j:J

    .line 505
    .line 506
    iput-wide v1, v4, LU0/I;->k:J

    .line 507
    .line 508
    iput-wide v5, v4, LU0/I;->l:J

    .line 509
    .line 510
    iget-object v1, v4, LU0/I;->q:Ljava/lang/Object;

    .line 511
    .line 512
    check-cast v1, LU0/H;

    .line 513
    .line 514
    if-eqz v1, :cond_1f

    .line 515
    .line 516
    iget-wide v2, v4, LU0/I;->h:J

    .line 517
    .line 518
    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    .line 519
    .line 520
    .line 521
    .line 522
    .line 523
    cmp-long v7, v2, v9

    .line 524
    .line 525
    if-nez v7, :cond_1b

    .line 526
    .line 527
    goto :goto_d

    .line 528
    :cond_1b
    iget-wide v1, v1, LU0/H;->G:J

    .line 529
    .line 530
    cmp-long v3, v1, v9

    .line 531
    .line 532
    if-nez v3, :cond_1c

    .line 533
    .line 534
    goto :goto_d

    .line 535
    :cond_1c
    iget-wide v9, v4, LU0/I;->h:J

    .line 536
    .line 537
    sub-long v12, v5, v1

    .line 538
    .line 539
    div-long/2addr v12, v9

    .line 540
    mul-long v12, v12, v9

    .line 541
    .line 542
    add-long/2addr v12, v1

    .line 543
    cmp-long v1, v5, v12

    .line 544
    .line 545
    if-gtz v1, :cond_1d

    .line 546
    .line 547
    sub-long v1, v12, v9

    .line 548
    .line 549
    goto :goto_b

    .line 550
    :cond_1d
    add-long/2addr v9, v12

    .line 551
    move-wide v1, v12

    .line 552
    move-wide v12, v9

    .line 553
    :goto_b
    sub-long v9, v12, v5

    .line 554
    .line 555
    sub-long/2addr v5, v1

    .line 556
    cmp-long v3, v9, v5

    .line 557
    .line 558
    if-gez v3, :cond_1e

    .line 559
    .line 560
    goto :goto_c

    .line 561
    :cond_1e
    move-wide v12, v1

    .line 562
    :goto_c
    iget-wide v1, v4, LU0/I;->i:J

    .line 563
    .line 564
    sub-long v5, v12, v1

    .line 565
    .line 566
    :cond_1f
    :goto_d
    iput-wide v5, v8, LU0/C;->b:J

    .line 567
    .line 568
    move-wide/from16 v1, p8

    .line 569
    .line 570
    sub-long/2addr v5, v1

    .line 571
    const-wide/16 v1, 0x3e8

    .line 572
    .line 573
    div-long v2, v5, v1

    .line 574
    .line 575
    iput-wide v2, v8, LU0/C;->a:J

    .line 576
    .line 577
    iget-wide v4, v0, LU0/E;->i:J

    .line 578
    .line 579
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    .line 580
    .line 581
    .line 582
    .line 583
    .line 584
    cmp-long v1, v4, v6

    .line 585
    .line 586
    if-eqz v1, :cond_20

    .line 587
    .line 588
    iget-boolean v1, v0, LU0/E;->j:Z

    .line 589
    .line 590
    if-nez v1, :cond_20

    .line 591
    .line 592
    const/4 v9, 0x1

    .line 593
    goto :goto_e

    .line 594
    :cond_20
    const/4 v9, 0x0

    .line 595
    :goto_e
    iget-object v1, v0, LU0/E;->a:LU0/D;

    .line 596
    .line 597
    check-cast v1, LU0/k;

    .line 598
    .line 599
    const/4 v10, 0x2

    .line 600
    move-wide/from16 v4, p3

    .line 601
    .line 602
    move/from16 v6, p10

    .line 603
    .line 604
    move v7, v9

    .line 605
    invoke-virtual/range {v1 .. v7}, LU0/k;->k0(JJZZ)Z

    .line 606
    .line 607
    .line 608
    move-result v1

    .line 609
    if-eqz v1, :cond_21

    .line 610
    .line 611
    return v11

    .line 612
    :cond_21
    iget-object v1, v0, LU0/E;->a:LU0/D;

    .line 613
    .line 614
    iget-wide v2, v8, LU0/C;->a:J

    .line 615
    .line 616
    check-cast v1, LU0/k;

    .line 617
    .line 618
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 619
    .line 620
    .line 621
    const-wide/16 v4, -0x7530

    .line 622
    .line 623
    cmp-long v1, v2, v4

    .line 624
    .line 625
    if-gez v1, :cond_23

    .line 626
    .line 627
    if-nez p10, :cond_23

    .line 628
    .line 629
    if-eqz v9, :cond_22

    .line 630
    .line 631
    const/4 v9, 0x3

    .line 632
    goto :goto_f

    .line 633
    :cond_22
    const/4 v9, 0x2

    .line 634
    :goto_f
    return v9

    .line 635
    :cond_23
    iget-wide v1, v8, LU0/C;->a:J

    .line 636
    .line 637
    const-wide/32 v3, 0xc350

    .line 638
    .line 639
    .line 640
    cmp-long v5, v1, v3

    .line 641
    .line 642
    if-lez v5, :cond_24

    .line 643
    .line 644
    const/4 v1, 0x5

    .line 645
    return v1

    .line 646
    :cond_24
    const/4 v1, 0x1

    .line 647
    :goto_10
    return v1
.end method

.method public final b(Z)Z
    .locals 8

    .line 1
    const/4 v0, 0x1

    .line 2
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 3
    .line 4
    .line 5
    .line 6
    .line 7
    if-eqz p1, :cond_1

    .line 8
    .line 9
    iget p1, p0, LU0/E;->e:I

    .line 10
    .line 11
    const/4 v3, 0x3

    .line 12
    if-eq p1, v3, :cond_0

    .line 13
    .line 14
    iget-boolean p1, p0, LU0/E;->m:Z

    .line 15
    .line 16
    if-nez p1, :cond_1

    .line 17
    .line 18
    iget-boolean p1, p0, LU0/E;->n:Z

    .line 19
    .line 20
    if-eqz p1, :cond_1

    .line 21
    .line 22
    :cond_0
    iput-wide v1, p0, LU0/E;->i:J

    .line 23
    .line 24
    return v0

    .line 25
    :cond_1
    iget-wide v3, p0, LU0/E;->i:J

    .line 26
    .line 27
    const/4 p1, 0x0

    .line 28
    cmp-long v5, v3, v1

    .line 29
    .line 30
    if-nez v5, :cond_2

    .line 31
    .line 32
    return p1

    .line 33
    :cond_2
    iget-object v3, p0, LU0/E;->l:Lp0/f;

    .line 34
    .line 35
    check-cast v3, Lp0/G;

    .line 36
    .line 37
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 41
    .line 42
    .line 43
    move-result-wide v3

    .line 44
    iget-wide v5, p0, LU0/E;->i:J

    .line 45
    .line 46
    cmp-long v7, v3, v5

    .line 47
    .line 48
    if-gez v7, :cond_3

    .line 49
    .line 50
    return v0

    .line 51
    :cond_3
    iput-wide v1, p0, LU0/E;->i:J

    .line 52
    .line 53
    return p1
.end method

.method public final c(Z)V
    .locals 4

    .line 1
    iput-boolean p1, p0, LU0/E;->j:Z

    .line 2
    .line 3
    const-wide/16 v0, 0x0

    .line 4
    .line 5
    iget-wide v2, p0, LU0/E;->c:J

    .line 6
    .line 7
    cmp-long p1, v2, v0

    .line 8
    .line 9
    if-lez p1, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, LU0/E;->l:Lp0/f;

    .line 12
    .line 13
    check-cast p1, Lp0/G;

    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 19
    .line 20
    .line 21
    move-result-wide v0

    .line 22
    add-long/2addr v0, v2

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    :goto_0
    iput-wide v0, p0, LU0/E;->i:J

    .line 30
    .line 31
    return-void
.end method

.method public final d()V
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, LU0/E;->d:Z

    .line 3
    .line 4
    iget-object v1, p0, LU0/E;->l:Lp0/f;

    .line 5
    .line 6
    check-cast v1, Lp0/G;

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 12
    .line 13
    .line 14
    move-result-wide v1

    .line 15
    invoke-static {v1, v2}, Lp0/M;->R(J)J

    .line 16
    .line 17
    .line 18
    move-result-wide v1

    .line 19
    iput-wide v1, p0, LU0/E;->g:J

    .line 20
    .line 21
    iget-object v1, p0, LU0/E;->b:LU0/I;

    .line 22
    .line 23
    iput-boolean v0, v1, LU0/I;->a:Z

    .line 24
    .line 25
    const-wide/16 v2, 0x0

    .line 26
    .line 27
    iput-wide v2, v1, LU0/I;->j:J

    .line 28
    .line 29
    const-wide/16 v2, -0x1

    .line 30
    .line 31
    iput-wide v2, v1, LU0/I;->m:J

    .line 32
    .line 33
    iput-wide v2, v1, LU0/I;->k:J

    .line 34
    .line 35
    iget-object v0, v1, LU0/I;->p:Landroid/hardware/display/DisplayManager$DisplayListener;

    .line 36
    .line 37
    check-cast v0, LU0/G;

    .line 38
    .line 39
    const/4 v2, 0x0

    .line 40
    if-eqz v0, :cond_0

    .line 41
    .line 42
    iget-object v3, v1, LU0/I;->q:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast v3, LU0/H;

    .line 45
    .line 46
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    iget-object v3, v3, LU0/H;->H:Landroid/os/Handler;

    .line 50
    .line 51
    const/4 v4, 0x2

    .line 52
    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 53
    .line 54
    .line 55
    const/4 v3, 0x0

    .line 56
    invoke-static {v3}, Lp0/M;->n(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    iget-object v4, v0, LU0/G;->a:Landroid/hardware/display/DisplayManager;

    .line 61
    .line 62
    invoke-virtual {v4, v0, v3}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v4, v2}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    iget-object v0, v0, LU0/G;->b:LU0/I;

    .line 70
    .line 71
    invoke-static {v0, v3}, LU0/I;->a(LU0/I;Landroid/view/Display;)V

    .line 72
    .line 73
    .line 74
    :cond_0
    invoke-virtual {v1, v2}, LU0/I;->d(Z)V

    .line 75
    .line 76
    .line 77
    return-void
.end method

.method public final e()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, LU0/E;->d:Z

    .line 3
    .line 4
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    iput-wide v1, p0, LU0/E;->i:J

    .line 10
    .line 11
    iget-object v1, p0, LU0/E;->b:LU0/I;

    .line 12
    .line 13
    iput-boolean v0, v1, LU0/I;->a:Z

    .line 14
    .line 15
    iget-object v0, v1, LU0/I;->p:Landroid/hardware/display/DisplayManager$DisplayListener;

    .line 16
    .line 17
    check-cast v0, LU0/G;

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    iget-object v2, v0, LU0/G;->a:Landroid/hardware/display/DisplayManager;

    .line 22
    .line 23
    invoke-virtual {v2, v0}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    .line 24
    .line 25
    .line 26
    iget-object v0, v1, LU0/I;->q:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v0, LU0/H;

    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    iget-object v0, v0, LU0/H;->H:Landroid/os/Handler;

    .line 34
    .line 35
    const/4 v2, 0x3

    .line 36
    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 37
    .line 38
    .line 39
    :cond_0
    invoke-virtual {v1}, LU0/I;->b()V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public final f(I)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eqz p1, :cond_2

    .line 3
    .line 4
    if-eq p1, v0, :cond_1

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    if-ne p1, v0, :cond_0

    .line 8
    .line 9
    iget p1, p0, LU0/E;->e:I

    .line 10
    .line 11
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    iput p1, p0, LU0/E;->e:I

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 19
    .line 20
    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 21
    .line 22
    .line 23
    throw p1

    .line 24
    :cond_1
    const/4 p1, 0x0

    .line 25
    iput p1, p0, LU0/E;->e:I

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_2
    iput v0, p0, LU0/E;->e:I

    .line 29
    .line 30
    :goto_0
    return-void
.end method

.method public final g(F)V
    .locals 4

    .line 1
    iget-object v0, p0, LU0/E;->b:LU0/I;

    .line 2
    .line 3
    iput p1, v0, LU0/I;->c:F

    .line 4
    .line 5
    iget-object p1, v0, LU0/I;->o:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p1, LU0/f;

    .line 8
    .line 9
    iget-object v1, p1, LU0/f;->a:LU0/e;

    .line 10
    .line 11
    invoke-virtual {v1}, LU0/e;->c()V

    .line 12
    .line 13
    .line 14
    iget-object v1, p1, LU0/f;->b:LU0/e;

    .line 15
    .line 16
    invoke-virtual {v1}, LU0/e;->c()V

    .line 17
    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    iput-boolean v1, p1, LU0/f;->c:Z

    .line 21
    .line 22
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    iput-wide v2, p1, LU0/f;->d:J

    .line 28
    .line 29
    iput v1, p1, LU0/f;->e:I

    .line 30
    .line 31
    invoke-virtual {v0}, LU0/I;->c()V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public final h(Landroid/view/Surface;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v2, 0x0

    .line 8
    :goto_0
    iput-boolean v2, p0, LU0/E;->m:Z

    .line 9
    .line 10
    iput-boolean v0, p0, LU0/E;->n:Z

    .line 11
    .line 12
    iget-object v0, p0, LU0/E;->b:LU0/I;

    .line 13
    .line 14
    iget-object v2, v0, LU0/I;->b:Landroid/view/Surface;

    .line 15
    .line 16
    if-ne v2, p1, :cond_1

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_1
    invoke-virtual {v0}, LU0/I;->b()V

    .line 20
    .line 21
    .line 22
    iput-object p1, v0, LU0/I;->b:Landroid/view/Surface;

    .line 23
    .line 24
    invoke-virtual {v0, v1}, LU0/I;->d(Z)V

    .line 25
    .line 26
    .line 27
    :goto_1
    iget p1, p0, LU0/E;->e:I

    .line 28
    .line 29
    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    iput p1, p0, LU0/E;->e:I

    .line 34
    .line 35
    return-void
.end method

.method public final i(F)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    cmpl-float v0, p1, v0

    .line 4
    .line 5
    if-lez v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/H1;->d(Z)V

    .line 11
    .line 12
    .line 13
    iget v0, p0, LU0/E;->k:F

    .line 14
    .line 15
    cmpl-float v0, p1, v0

    .line 16
    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    return-void

    .line 20
    :cond_1
    iput p1, p0, LU0/E;->k:F

    .line 21
    .line 22
    iget-object v0, p0, LU0/E;->b:LU0/I;

    .line 23
    .line 24
    iput p1, v0, LU0/I;->f:F

    .line 25
    .line 26
    const-wide/16 v2, 0x0

    .line 27
    .line 28
    iput-wide v2, v0, LU0/I;->j:J

    .line 29
    .line 30
    const-wide/16 v2, -0x1

    .line 31
    .line 32
    iput-wide v2, v0, LU0/I;->m:J

    .line 33
    .line 34
    iput-wide v2, v0, LU0/I;->k:J

    .line 35
    .line 36
    invoke-virtual {v0, v1}, LU0/I;->d(Z)V

    .line 37
    .line 38
    .line 39
    return-void
.end method
