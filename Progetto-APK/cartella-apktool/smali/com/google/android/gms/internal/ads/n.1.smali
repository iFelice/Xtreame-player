.class public final Lcom/google/android/gms/internal/ads/n;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/m;

.field public final b:LU0/I;

.field public c:Z

.field public d:I

.field public e:J

.field public f:J

.field public g:J

.field public h:J

.field public i:Z

.field public j:F

.field public k:Lcom/google/android/gms/internal/ads/pl;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/m;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/n;->a:Lcom/google/android/gms/internal/ads/m;

    .line 5
    .line 6
    new-instance p2, LU0/I;

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    invoke-direct {p2, p1, v0}, LU0/I;-><init>(Landroid/content/Context;I)V

    .line 10
    .line 11
    .line 12
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/n;->b:LU0/I;

    .line 13
    .line 14
    const/4 p1, 0x0

    .line 15
    iput p1, p0, Lcom/google/android/gms/internal/ads/n;->d:I

    .line 16
    .line 17
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/n;->e:J

    .line 23
    .line 24
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/n;->g:J

    .line 25
    .line 26
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/n;->h:J

    .line 27
    .line 28
    const/high16 p1, 0x3f800000    # 1.0f

    .line 29
    .line 30
    iput p1, p0, Lcom/google/android/gms/internal/ads/n;->j:F

    .line 31
    .line 32
    sget-object p1, Lcom/google/android/gms/internal/ads/pl;->a:Lcom/google/android/gms/internal/ads/Nr;

    .line 33
    .line 34
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/n;->k:Lcom/google/android/gms/internal/ads/pl;

    .line 35
    .line 36
    return-void
.end method


# virtual methods
.method public final a(JJJJZLU0/C;)I
    .locals 26

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-wide/from16 v1, p1

    .line 4
    .line 5
    move-wide/from16 v3, p3

    .line 6
    .line 7
    move-object/from16 v5, p10

    .line 8
    .line 9
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    iput-wide v6, v5, LU0/C;->a:J

    .line 15
    .line 16
    iput-wide v6, v5, LU0/C;->b:J

    .line 17
    .line 18
    iget-wide v8, v0, Lcom/google/android/gms/internal/ads/n;->e:J

    .line 19
    .line 20
    cmp-long v10, v8, v6

    .line 21
    .line 22
    if-nez v10, :cond_0

    .line 23
    .line 24
    iput-wide v3, v0, Lcom/google/android/gms/internal/ads/n;->e:J

    .line 25
    .line 26
    :cond_0
    iget-wide v8, v0, Lcom/google/android/gms/internal/ads/n;->g:J

    .line 27
    .line 28
    const-wide/16 v10, -0x1

    .line 29
    .line 30
    const-wide/16 v14, 0x3e8

    .line 31
    .line 32
    const/4 v12, 0x0

    .line 33
    const/4 v13, 0x1

    .line 34
    cmp-long v18, v8, v1

    .line 35
    .line 36
    if-eqz v18, :cond_9

    .line 37
    .line 38
    iget-object v8, v0, Lcom/google/android/gms/internal/ads/n;->b:LU0/I;

    .line 39
    .line 40
    iget-wide v6, v8, LU0/I;->k:J

    .line 41
    .line 42
    cmp-long v9, v6, v10

    .line 43
    .line 44
    if-eqz v9, :cond_1

    .line 45
    .line 46
    iput-wide v6, v8, LU0/I;->m:J

    .line 47
    .line 48
    iget-wide v6, v8, LU0/I;->l:J

    .line 49
    .line 50
    iput-wide v6, v8, LU0/I;->n:J

    .line 51
    .line 52
    :cond_1
    iget-wide v6, v8, LU0/I;->j:J

    .line 53
    .line 54
    const-wide/16 v20, 0x1

    .line 55
    .line 56
    add-long v6, v6, v20

    .line 57
    .line 58
    iput-wide v6, v8, LU0/I;->j:J

    .line 59
    .line 60
    iget-object v6, v8, LU0/I;->o:Ljava/lang/Object;

    .line 61
    .line 62
    check-cast v6, LU0/f;

    .line 63
    .line 64
    mul-long v10, v1, v14

    .line 65
    .line 66
    iget-object v7, v6, LU0/f;->a:LU0/e;

    .line 67
    .line 68
    invoke-virtual {v7, v10, v11}, LU0/e;->d(J)V

    .line 69
    .line 70
    .line 71
    iget-object v7, v6, LU0/f;->a:LU0/e;

    .line 72
    .line 73
    invoke-virtual {v7}, LU0/e;->f()Z

    .line 74
    .line 75
    .line 76
    move-result v7

    .line 77
    if-eqz v7, :cond_2

    .line 78
    .line 79
    iput-boolean v12, v6, LU0/f;->c:Z

    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_2
    iget-wide v14, v6, LU0/f;->d:J

    .line 83
    .line 84
    const-wide v18, -0x7fffffffffffffffL    # -4.9E-324

    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    cmp-long v7, v14, v18

    .line 90
    .line 91
    if-eqz v7, :cond_6

    .line 92
    .line 93
    iget-boolean v7, v6, LU0/f;->c:Z

    .line 94
    .line 95
    if-eqz v7, :cond_4

    .line 96
    .line 97
    iget-object v7, v6, LU0/f;->b:LU0/e;

    .line 98
    .line 99
    iget-wide v14, v7, LU0/e;->d:J

    .line 100
    .line 101
    const-wide/16 v16, 0x0

    .line 102
    .line 103
    cmp-long v9, v14, v16

    .line 104
    .line 105
    if-nez v9, :cond_3

    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_3
    const-wide/16 v20, -0x1

    .line 109
    .line 110
    add-long v14, v14, v20

    .line 111
    .line 112
    const-wide/16 v24, 0xf

    .line 113
    .line 114
    rem-long v14, v14, v24

    .line 115
    .line 116
    long-to-int v9, v14

    .line 117
    iget-object v7, v7, LU0/e;->g:[Z

    .line 118
    .line 119
    aget-boolean v7, v7, v9

    .line 120
    .line 121
    if-eqz v7, :cond_5

    .line 122
    .line 123
    :cond_4
    iget-object v7, v6, LU0/f;->b:LU0/e;

    .line 124
    .line 125
    invoke-virtual {v7}, LU0/e;->e()V

    .line 126
    .line 127
    .line 128
    iget-object v7, v6, LU0/f;->b:LU0/e;

    .line 129
    .line 130
    iget-wide v14, v6, LU0/f;->d:J

    .line 131
    .line 132
    invoke-virtual {v7, v14, v15}, LU0/e;->d(J)V

    .line 133
    .line 134
    .line 135
    :cond_5
    :goto_0
    iput-boolean v13, v6, LU0/f;->c:Z

    .line 136
    .line 137
    iget-object v7, v6, LU0/f;->b:LU0/e;

    .line 138
    .line 139
    invoke-virtual {v7, v10, v11}, LU0/e;->d(J)V

    .line 140
    .line 141
    .line 142
    :cond_6
    :goto_1
    iget-boolean v7, v6, LU0/f;->c:Z

    .line 143
    .line 144
    if-eqz v7, :cond_7

    .line 145
    .line 146
    iget-object v7, v6, LU0/f;->b:LU0/e;

    .line 147
    .line 148
    invoke-virtual {v7}, LU0/e;->f()Z

    .line 149
    .line 150
    .line 151
    move-result v7

    .line 152
    if-eqz v7, :cond_7

    .line 153
    .line 154
    iget-object v7, v6, LU0/f;->a:LU0/e;

    .line 155
    .line 156
    iget-object v9, v6, LU0/f;->b:LU0/e;

    .line 157
    .line 158
    iput-object v9, v6, LU0/f;->a:LU0/e;

    .line 159
    .line 160
    iput-object v7, v6, LU0/f;->b:LU0/e;

    .line 161
    .line 162
    iput-boolean v12, v6, LU0/f;->c:Z

    .line 163
    .line 164
    :cond_7
    iput-wide v10, v6, LU0/f;->d:J

    .line 165
    .line 166
    iget-object v7, v6, LU0/f;->a:LU0/e;

    .line 167
    .line 168
    invoke-virtual {v7}, LU0/e;->f()Z

    .line 169
    .line 170
    .line 171
    move-result v7

    .line 172
    if-eqz v7, :cond_8

    .line 173
    .line 174
    const/4 v7, 0x0

    .line 175
    goto :goto_2

    .line 176
    :cond_8
    iget v7, v6, LU0/f;->e:I

    .line 177
    .line 178
    add-int/2addr v7, v13

    .line 179
    :goto_2
    iput v7, v6, LU0/f;->e:I

    .line 180
    .line 181
    invoke-virtual {v8}, LU0/I;->g()V

    .line 182
    .line 183
    .line 184
    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/n;->g:J

    .line 185
    .line 186
    :cond_9
    sub-long/2addr v1, v3

    .line 187
    iget v6, v0, Lcom/google/android/gms/internal/ads/n;->j:F

    .line 188
    .line 189
    float-to-double v6, v6

    .line 190
    iget-boolean v8, v0, Lcom/google/android/gms/internal/ads/n;->c:Z

    .line 191
    .line 192
    long-to-double v1, v1

    .line 193
    div-double/2addr v1, v6

    .line 194
    double-to-long v1, v1

    .line 195
    if-eqz v8, :cond_a

    .line 196
    .line 197
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/n;->k:Lcom/google/android/gms/internal/ads/pl;

    .line 198
    .line 199
    check-cast v6, Lcom/google/android/gms/internal/ads/Nr;

    .line 200
    .line 201
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 202
    .line 203
    .line 204
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 205
    .line 206
    .line 207
    move-result-wide v6

    .line 208
    invoke-static {v6, v7}, Lcom/google/android/gms/internal/ads/Et;->t(J)J

    .line 209
    .line 210
    .line 211
    move-result-wide v6

    .line 212
    sub-long v6, v6, p5

    .line 213
    .line 214
    sub-long/2addr v1, v6

    .line 215
    :cond_a
    iput-wide v1, v5, LU0/C;->a:J

    .line 216
    .line 217
    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/n;->h:J

    .line 218
    .line 219
    const-wide/16 v8, -0x7530

    .line 220
    .line 221
    const/4 v10, 0x3

    .line 222
    const/4 v11, 0x2

    .line 223
    const-wide v14, -0x7fffffffffffffffL    # -4.9E-324

    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    cmp-long v24, v6, v14

    .line 229
    .line 230
    if-eqz v24, :cond_b

    .line 231
    .line 232
    iget-boolean v6, v0, Lcom/google/android/gms/internal/ads/n;->i:Z

    .line 233
    .line 234
    if-nez v6, :cond_b

    .line 235
    .line 236
    goto :goto_4

    .line 237
    :cond_b
    iget v6, v0, Lcom/google/android/gms/internal/ads/n;->d:I

    .line 238
    .line 239
    if-eqz v6, :cond_e

    .line 240
    .line 241
    if-eq v6, v13, :cond_f

    .line 242
    .line 243
    if-eq v6, v11, :cond_d

    .line 244
    .line 245
    if-ne v6, v10, :cond_c

    .line 246
    .line 247
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/n;->k:Lcom/google/android/gms/internal/ads/pl;

    .line 248
    .line 249
    check-cast v6, Lcom/google/android/gms/internal/ads/Nr;

    .line 250
    .line 251
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 252
    .line 253
    .line 254
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 255
    .line 256
    .line 257
    move-result-wide v6

    .line 258
    invoke-static {v6, v7}, Lcom/google/android/gms/internal/ads/Et;->t(J)J

    .line 259
    .line 260
    .line 261
    move-result-wide v6

    .line 262
    iget-wide v14, v0, Lcom/google/android/gms/internal/ads/n;->f:J

    .line 263
    .line 264
    sub-long/2addr v6, v14

    .line 265
    iget-boolean v14, v0, Lcom/google/android/gms/internal/ads/n;->c:Z

    .line 266
    .line 267
    if-eqz v14, :cond_10

    .line 268
    .line 269
    cmp-long v14, v1, v8

    .line 270
    .line 271
    if-gez v14, :cond_10

    .line 272
    .line 273
    const-wide/32 v1, 0x186a0

    .line 274
    .line 275
    .line 276
    cmp-long v14, v6, v1

    .line 277
    .line 278
    if-lez v14, :cond_10

    .line 279
    .line 280
    goto :goto_3

    .line 281
    :cond_c
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 282
    .line 283
    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 284
    .line 285
    .line 286
    throw v1

    .line 287
    :cond_d
    cmp-long v1, v3, p7

    .line 288
    .line 289
    if-ltz v1, :cond_10

    .line 290
    .line 291
    goto :goto_3

    .line 292
    :cond_e
    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/n;->c:Z

    .line 293
    .line 294
    if-eqz v1, :cond_10

    .line 295
    .line 296
    :cond_f
    :goto_3
    return v12

    .line 297
    :cond_10
    :goto_4
    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/n;->c:Z

    .line 298
    .line 299
    if-eqz v1, :cond_11

    .line 300
    .line 301
    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/n;->e:J

    .line 302
    .line 303
    cmp-long v1, v3, v6

    .line 304
    .line 305
    if-nez v1, :cond_12

    .line 306
    .line 307
    :cond_11
    const/4 v1, 0x5

    .line 308
    goto/16 :goto_d

    .line 309
    .line 310
    :cond_12
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/n;->k:Lcom/google/android/gms/internal/ads/pl;

    .line 311
    .line 312
    check-cast v1, Lcom/google/android/gms/internal/ads/Nr;

    .line 313
    .line 314
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 315
    .line 316
    .line 317
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 318
    .line 319
    .line 320
    move-result-wide v6

    .line 321
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/n;->b:LU0/I;

    .line 322
    .line 323
    iget-wide v14, v5, LU0/C;->a:J

    .line 324
    .line 325
    invoke-static {v14, v15}, Ljava/lang/Long;->signum(J)I

    .line 326
    .line 327
    .line 328
    const-wide/16 v22, 0x3e8

    .line 329
    .line 330
    mul-long v14, v14, v22

    .line 331
    .line 332
    add-long/2addr v14, v6

    .line 333
    iget-wide v10, v1, LU0/I;->m:J

    .line 334
    .line 335
    const-wide/16 v20, -0x1

    .line 336
    .line 337
    cmp-long v24, v10, v20

    .line 338
    .line 339
    if-eqz v24, :cond_16

    .line 340
    .line 341
    iget-object v10, v1, LU0/I;->o:Ljava/lang/Object;

    .line 342
    .line 343
    check-cast v10, LU0/f;

    .line 344
    .line 345
    iget-object v10, v10, LU0/f;->a:LU0/e;

    .line 346
    .line 347
    invoke-virtual {v10}, LU0/e;->f()Z

    .line 348
    .line 349
    .line 350
    move-result v10

    .line 351
    if-eqz v10, :cond_16

    .line 352
    .line 353
    iget-object v10, v1, LU0/I;->o:Ljava/lang/Object;

    .line 354
    .line 355
    check-cast v10, LU0/f;

    .line 356
    .line 357
    iget-object v11, v10, LU0/f;->a:LU0/e;

    .line 358
    .line 359
    invoke-virtual {v11}, LU0/e;->f()Z

    .line 360
    .line 361
    .line 362
    move-result v11

    .line 363
    if-eqz v11, :cond_14

    .line 364
    .line 365
    iget-object v10, v10, LU0/f;->a:LU0/e;

    .line 366
    .line 367
    iget-wide v8, v10, LU0/e;->e:J

    .line 368
    .line 369
    const-wide/16 v16, 0x0

    .line 370
    .line 371
    cmp-long v11, v8, v16

    .line 372
    .line 373
    if-nez v11, :cond_13

    .line 374
    .line 375
    const-wide/16 v10, 0x0

    .line 376
    .line 377
    goto :goto_5

    .line 378
    :cond_13
    iget-wide v10, v10, LU0/e;->f:J

    .line 379
    .line 380
    div-long/2addr v10, v8

    .line 381
    goto :goto_5

    .line 382
    :cond_14
    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    :goto_5
    iget-wide v8, v1, LU0/I;->n:J

    .line 388
    .line 389
    iget-wide v12, v1, LU0/I;->j:J

    .line 390
    .line 391
    iget-wide v2, v1, LU0/I;->m:J

    .line 392
    .line 393
    sub-long/2addr v12, v2

    .line 394
    mul-long v12, v12, v10

    .line 395
    .line 396
    iget v2, v1, LU0/I;->f:F

    .line 397
    .line 398
    long-to-float v3, v12

    .line 399
    div-float/2addr v3, v2

    .line 400
    float-to-long v2, v3

    .line 401
    add-long/2addr v8, v2

    .line 402
    sub-long v2, v14, v8

    .line 403
    .line 404
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    .line 405
    .line 406
    .line 407
    move-result-wide v2

    .line 408
    const-wide/32 v10, 0x1312d00

    .line 409
    .line 410
    .line 411
    cmp-long v4, v2, v10

    .line 412
    .line 413
    if-lez v4, :cond_15

    .line 414
    .line 415
    const-wide/16 v2, 0x0

    .line 416
    .line 417
    iput-wide v2, v1, LU0/I;->j:J

    .line 418
    .line 419
    const-wide/16 v2, -0x1

    .line 420
    .line 421
    iput-wide v2, v1, LU0/I;->m:J

    .line 422
    .line 423
    iput-wide v2, v1, LU0/I;->k:J

    .line 424
    .line 425
    goto :goto_6

    .line 426
    :cond_15
    move-wide v14, v8

    .line 427
    :cond_16
    :goto_6
    iget-wide v2, v1, LU0/I;->j:J

    .line 428
    .line 429
    iput-wide v2, v1, LU0/I;->k:J

    .line 430
    .line 431
    iput-wide v14, v1, LU0/I;->l:J

    .line 432
    .line 433
    iget-object v2, v1, LU0/I;->q:Ljava/lang/Object;

    .line 434
    .line 435
    check-cast v2, Lcom/google/android/gms/internal/ads/r;

    .line 436
    .line 437
    if-eqz v2, :cond_1a

    .line 438
    .line 439
    iget-wide v3, v1, LU0/I;->h:J

    .line 440
    .line 441
    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    .line 442
    .line 443
    .line 444
    .line 445
    .line 446
    cmp-long v10, v3, v8

    .line 447
    .line 448
    if-nez v10, :cond_17

    .line 449
    .line 450
    goto :goto_9

    .line 451
    :cond_17
    iget-wide v2, v2, Lcom/google/android/gms/internal/ads/r;->G:J

    .line 452
    .line 453
    cmp-long v4, v2, v8

    .line 454
    .line 455
    if-eqz v4, :cond_1a

    .line 456
    .line 457
    iget-wide v8, v1, LU0/I;->h:J

    .line 458
    .line 459
    sub-long v10, v14, v2

    .line 460
    .line 461
    div-long/2addr v10, v8

    .line 462
    mul-long v10, v10, v8

    .line 463
    .line 464
    add-long/2addr v10, v2

    .line 465
    cmp-long v2, v14, v10

    .line 466
    .line 467
    if-gtz v2, :cond_18

    .line 468
    .line 469
    sub-long v2, v10, v8

    .line 470
    .line 471
    goto :goto_7

    .line 472
    :cond_18
    add-long/2addr v8, v10

    .line 473
    move-wide v2, v10

    .line 474
    move-wide v10, v8

    .line 475
    :goto_7
    iget-wide v8, v1, LU0/I;->i:J

    .line 476
    .line 477
    sub-long v12, v10, v14

    .line 478
    .line 479
    sub-long/2addr v14, v2

    .line 480
    cmp-long v1, v12, v14

    .line 481
    .line 482
    if-gez v1, :cond_19

    .line 483
    .line 484
    goto :goto_8

    .line 485
    :cond_19
    move-wide v10, v2

    .line 486
    :goto_8
    sub-long v14, v10, v8

    .line 487
    .line 488
    :cond_1a
    :goto_9
    iput-wide v14, v5, LU0/C;->b:J

    .line 489
    .line 490
    sub-long/2addr v14, v6

    .line 491
    const-wide/16 v1, 0x3e8

    .line 492
    .line 493
    div-long/2addr v14, v1

    .line 494
    iput-wide v14, v5, LU0/C;->a:J

    .line 495
    .line 496
    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/n;->h:J

    .line 497
    .line 498
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 499
    .line 500
    .line 501
    .line 502
    .line 503
    cmp-long v6, v1, v3

    .line 504
    .line 505
    if-eqz v6, :cond_1b

    .line 506
    .line 507
    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/n;->i:Z

    .line 508
    .line 509
    if-nez v1, :cond_1b

    .line 510
    .line 511
    const/4 v1, 0x1

    .line 512
    goto :goto_a

    .line 513
    :cond_1b
    const/4 v1, 0x0

    .line 514
    :goto_a
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/n;->a:Lcom/google/android/gms/internal/ads/m;

    .line 515
    .line 516
    const-wide/32 v3, -0x7a120

    .line 517
    .line 518
    .line 519
    cmp-long v6, v14, v3

    .line 520
    .line 521
    if-gez v6, :cond_20

    .line 522
    .line 523
    if-nez p9, :cond_20

    .line 524
    .line 525
    check-cast v2, Lcom/google/android/gms/internal/ads/k;

    .line 526
    .line 527
    iget-object v3, v2, Lcom/google/android/gms/internal/ads/aK;->i:Lcom/google/android/gms/internal/ads/UN;

    .line 528
    .line 529
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 530
    .line 531
    .line 532
    iget-wide v6, v2, Lcom/google/android/gms/internal/ads/aK;->k:J

    .line 533
    .line 534
    sub-long v6, p3, v6

    .line 535
    .line 536
    invoke-interface {v3, v6, v7}, Lcom/google/android/gms/internal/ads/UN;->a(J)I

    .line 537
    .line 538
    .line 539
    move-result v3

    .line 540
    if-nez v3, :cond_1c

    .line 541
    .line 542
    goto :goto_c

    .line 543
    :cond_1c
    if-eqz v1, :cond_1d

    .line 544
    .line 545
    iget-object v1, v2, Lcom/google/android/gms/internal/ads/VM;->q0:Lcom/google/android/gms/internal/ads/cK;

    .line 546
    .line 547
    iget v4, v1, Lcom/google/android/gms/internal/ads/cK;->d:I

    .line 548
    .line 549
    add-int/2addr v4, v3

    .line 550
    iput v4, v1, Lcom/google/android/gms/internal/ads/cK;->d:I

    .line 551
    .line 552
    iget v3, v1, Lcom/google/android/gms/internal/ads/cK;->f:I

    .line 553
    .line 554
    iget v4, v2, Lcom/google/android/gms/internal/ads/k;->S0:I

    .line 555
    .line 556
    add-int/2addr v3, v4

    .line 557
    iput v3, v1, Lcom/google/android/gms/internal/ads/cK;->f:I

    .line 558
    .line 559
    goto :goto_b

    .line 560
    :cond_1d
    iget-object v1, v2, Lcom/google/android/gms/internal/ads/VM;->q0:Lcom/google/android/gms/internal/ads/cK;

    .line 561
    .line 562
    iget v4, v1, Lcom/google/android/gms/internal/ads/cK;->j:I

    .line 563
    .line 564
    const/4 v5, 0x1

    .line 565
    add-int/2addr v4, v5

    .line 566
    iput v4, v1, Lcom/google/android/gms/internal/ads/cK;->j:I

    .line 567
    .line 568
    iget v1, v2, Lcom/google/android/gms/internal/ads/k;->S0:I

    .line 569
    .line 570
    invoke-virtual {v2, v3, v1}, Lcom/google/android/gms/internal/ads/k;->n0(II)V

    .line 571
    .line 572
    .line 573
    :goto_b
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/VM;->K()Z

    .line 574
    .line 575
    .line 576
    move-result v1

    .line 577
    if-eqz v1, :cond_1e

    .line 578
    .line 579
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/VM;->D()V

    .line 580
    .line 581
    .line 582
    :cond_1e
    iget-object v1, v2, Lcom/google/android/gms/internal/ads/k;->G0:Lcom/google/android/gms/internal/ads/f;

    .line 583
    .line 584
    if-eqz v1, :cond_1f

    .line 585
    .line 586
    const/4 v2, 0x0

    .line 587
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/f;->b(Z)V

    .line 588
    .line 589
    .line 590
    :cond_1f
    const/4 v1, 0x4

    .line 591
    return v1

    .line 592
    :cond_20
    :goto_c
    iget-wide v2, v5, LU0/C;->a:J

    .line 593
    .line 594
    const-wide/16 v4, -0x7530

    .line 595
    .line 596
    cmp-long v6, v2, v4

    .line 597
    .line 598
    if-gez v6, :cond_22

    .line 599
    .line 600
    if-nez p9, :cond_22

    .line 601
    .line 602
    if-eqz v1, :cond_21

    .line 603
    .line 604
    const/4 v1, 0x3

    .line 605
    return v1

    .line 606
    :cond_21
    const/4 v1, 0x2

    .line 607
    return v1

    .line 608
    :cond_22
    const-wide/32 v4, 0xc350

    .line 609
    .line 610
    .line 611
    cmp-long v1, v2, v4

    .line 612
    .line 613
    if-lez v1, :cond_23

    .line 614
    .line 615
    const/4 v1, 0x5

    .line 616
    return v1

    .line 617
    :cond_23
    const/4 v1, 0x1

    .line 618
    :goto_d
    return v1
.end method

.method public final b()V
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/n;->c:Z

    .line 3
    .line 4
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/n;->k:Lcom/google/android/gms/internal/ads/pl;

    .line 5
    .line 6
    check-cast v1, Lcom/google/android/gms/internal/ads/Nr;

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
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/Et;->t(J)J

    .line 16
    .line 17
    .line 18
    move-result-wide v1

    .line 19
    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/n;->f:J

    .line 20
    .line 21
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/n;->b:LU0/I;

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
    check-cast v0, Lcom/google/android/gms/internal/ads/q;

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
    check-cast v3, Lcom/google/android/gms/internal/ads/r;

    .line 45
    .line 46
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    iget-object v3, v3, Lcom/google/android/gms/internal/ads/r;->H:Landroid/os/Handler;

    .line 50
    .line 51
    const/4 v4, 0x2

    .line 52
    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 53
    .line 54
    .line 55
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    invoke-static {v3}, Lo3/r;->x(Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    new-instance v4, Landroid/os/Handler;

    .line 63
    .line 64
    const/4 v5, 0x0

    .line 65
    invoke-direct {v4, v3, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 66
    .line 67
    .line 68
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/q;->a:Landroid/hardware/display/DisplayManager;

    .line 69
    .line 70
    invoke-virtual {v3, v0, v4}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v3, v2}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/q;->b:LU0/I;

    .line 78
    .line 79
    invoke-static {v0, v3}, LU0/I;->e(LU0/I;Landroid/view/Display;)V

    .line 80
    .line 81
    .line 82
    :cond_0
    invoke-virtual {v1, v2}, LU0/I;->h(Z)V

    .line 83
    .line 84
    .line 85
    return-void
.end method

.method public final c()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/n;->c:Z

    .line 3
    .line 4
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/n;->h:J

    .line 10
    .line 11
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/n;->b:LU0/I;

    .line 12
    .line 13
    iput-boolean v0, v1, LU0/I;->a:Z

    .line 14
    .line 15
    iget-object v0, v1, LU0/I;->p:Landroid/hardware/display/DisplayManager$DisplayListener;

    .line 16
    .line 17
    check-cast v0, Lcom/google/android/gms/internal/ads/q;

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/q;->a:Landroid/hardware/display/DisplayManager;

    .line 22
    .line 23
    invoke-virtual {v2, v0}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    .line 24
    .line 25
    .line 26
    iget-object v0, v1, LU0/I;->q:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v0, Lcom/google/android/gms/internal/ads/r;

    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/r;->H:Landroid/os/Handler;

    .line 34
    .line 35
    const/4 v2, 0x3

    .line 36
    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 37
    .line 38
    .line 39
    :cond_0
    invoke-virtual {v1}, LU0/I;->f()V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public final d(F)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/n;->b:LU0/I;

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
    invoke-virtual {v1}, LU0/e;->e()V

    .line 12
    .line 13
    .line 14
    iget-object v1, p1, LU0/f;->b:LU0/e;

    .line 15
    .line 16
    invoke-virtual {v1}, LU0/e;->e()V

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
    invoke-virtual {v0}, LU0/I;->g()V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public final e(Z)Z
    .locals 8

    .line 1
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget p1, p0, Lcom/google/android/gms/internal/ads/n;->d:I

    .line 10
    .line 11
    const/4 v3, 0x3

    .line 12
    if-ne p1, v3, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/n;->h:J

    .line 16
    .line 17
    const/4 p1, 0x0

    .line 18
    cmp-long v5, v3, v0

    .line 19
    .line 20
    if-nez v5, :cond_1

    .line 21
    .line 22
    return p1

    .line 23
    :cond_1
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/n;->k:Lcom/google/android/gms/internal/ads/pl;

    .line 24
    .line 25
    check-cast v3, Lcom/google/android/gms/internal/ads/Nr;

    .line 26
    .line 27
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 31
    .line 32
    .line 33
    move-result-wide v3

    .line 34
    iget-wide v5, p0, Lcom/google/android/gms/internal/ads/n;->h:J

    .line 35
    .line 36
    cmp-long v7, v3, v5

    .line 37
    .line 38
    if-ltz v7, :cond_2

    .line 39
    .line 40
    const/4 v2, 0x0

    .line 41
    :goto_0
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/n;->h:J

    .line 42
    .line 43
    :cond_2
    return v2
.end method

.method public final f(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/n;->d:I

    .line 2
    .line 3
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    iput p1, p0, Lcom/google/android/gms/internal/ads/n;->d:I

    .line 8
    .line 9
    return-void
.end method
