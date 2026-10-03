.class public final LB1/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LW0/s;


# instance fields
.field public a:LW0/u;

.field public b:LW0/L;

.field public c:I

.field public d:J

.field public e:LB1/b;

.field public f:I

.field public g:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, LB1/d;->c:I

    .line 6
    .line 7
    const-wide/16 v0, -0x1

    .line 8
    .line 9
    iput-wide v0, p0, LB1/d;->d:J

    .line 10
    .line 11
    const/4 v2, -0x1

    .line 12
    iput v2, p0, LB1/d;->f:I

    .line 13
    .line 14
    iput-wide v0, p0, LB1/d;->g:J

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final b()LW0/s;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final d(LW0/u;)V
    .locals 2

    .line 1
    iput-object p1, p0, LB1/d;->a:LW0/u;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const/4 v1, 0x1

    .line 5
    invoke-interface {p1, v0, v1}, LW0/u;->t(II)LW0/L;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, LB1/d;->b:LW0/L;

    .line 10
    .line 11
    invoke-interface {p1}, LW0/u;->j()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final g(LW0/t;)Z
    .locals 0

    .line 1
    invoke-static {p1}, LB1/f;->a(LW0/t;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public final h(LW0/t;LW0/w;)I
    .locals 28

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, LB1/d;->b:LW0/L;

    .line 6
    .line 7
    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/H1;->j(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    sget-object v2, Lp0/M;->a:Ljava/lang/String;

    .line 11
    .line 12
    iget v2, v0, LB1/d;->c:I

    .line 13
    .line 14
    const/4 v3, -0x1

    .line 15
    const/4 v4, 0x4

    .line 16
    const/4 v5, 0x1

    .line 17
    const/4 v6, 0x0

    .line 18
    if-eqz v2, :cond_1a

    .line 19
    .line 20
    const/16 v7, 0x8

    .line 21
    .line 22
    const/4 v8, 0x2

    .line 23
    const-wide/16 v9, -0x1

    .line 24
    .line 25
    if-eq v2, v5, :cond_18

    .line 26
    .line 27
    const/4 v11, 0x3

    .line 28
    if-eq v2, v8, :cond_6

    .line 29
    .line 30
    if-eq v2, v11, :cond_3

    .line 31
    .line 32
    if-ne v2, v4, :cond_2

    .line 33
    .line 34
    iget-wide v7, v0, LB1/d;->g:J

    .line 35
    .line 36
    cmp-long v2, v7, v9

    .line 37
    .line 38
    if-eqz v2, :cond_0

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    const/4 v5, 0x0

    .line 42
    :goto_0
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/H1;->i(Z)V

    .line 43
    .line 44
    .line 45
    iget-wide v4, v0, LB1/d;->g:J

    .line 46
    .line 47
    invoke-interface/range {p1 .. p1}, LW0/t;->r()J

    .line 48
    .line 49
    .line 50
    move-result-wide v7

    .line 51
    sub-long/2addr v4, v7

    .line 52
    iget-object v2, v0, LB1/d;->e:LB1/b;

    .line 53
    .line 54
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    .line 56
    .line 57
    invoke-interface {v2, v1, v4, v5}, LB1/b;->b(LW0/t;J)Z

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-eqz v1, :cond_1

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_1
    const/4 v3, 0x0

    .line 65
    :goto_1
    return v3

    .line 66
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 67
    .line 68
    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 69
    .line 70
    .line 71
    throw v1

    .line 72
    :cond_3
    invoke-interface/range {p1 .. p1}, LW0/t;->m()V

    .line 73
    .line 74
    .line 75
    new-instance v2, Lp0/E;

    .line 76
    .line 77
    invoke-direct {v2, v7}, Lp0/E;-><init>(I)V

    .line 78
    .line 79
    .line 80
    const v3, 0x64617461

    .line 81
    .line 82
    .line 83
    invoke-static {v3, v1, v2}, LB1/f;->b(ILW0/t;Lp0/E;)LS0/g;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    invoke-interface {v1, v7}, LW0/t;->n(I)V

    .line 88
    .line 89
    .line 90
    invoke-interface/range {p1 .. p1}, LW0/t;->r()J

    .line 91
    .line 92
    .line 93
    move-result-wide v7

    .line 94
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 95
    .line 96
    .line 97
    move-result-object v3

    .line 98
    iget-wide v7, v2, LS0/g;->b:J

    .line 99
    .line 100
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    invoke-static {v3, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 109
    .line 110
    check-cast v3, Ljava/lang/Long;

    .line 111
    .line 112
    invoke-virtual {v3}, Ljava/lang/Long;->intValue()I

    .line 113
    .line 114
    .line 115
    move-result v3

    .line 116
    iput v3, v0, LB1/d;->f:I

    .line 117
    .line 118
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 119
    .line 120
    check-cast v2, Ljava/lang/Long;

    .line 121
    .line 122
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 123
    .line 124
    .line 125
    move-result-wide v2

    .line 126
    iget-wide v7, v0, LB1/d;->d:J

    .line 127
    .line 128
    cmp-long v5, v7, v9

    .line 129
    .line 130
    if-eqz v5, :cond_4

    .line 131
    .line 132
    const-wide v11, 0xffffffffL

    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    cmp-long v5, v2, v11

    .line 138
    .line 139
    if-nez v5, :cond_4

    .line 140
    .line 141
    move-wide v2, v7

    .line 142
    :cond_4
    iget v5, v0, LB1/d;->f:I

    .line 143
    .line 144
    int-to-long v7, v5

    .line 145
    add-long/2addr v7, v2

    .line 146
    iput-wide v7, v0, LB1/d;->g:J

    .line 147
    .line 148
    invoke-interface/range {p1 .. p1}, LW0/t;->j()J

    .line 149
    .line 150
    .line 151
    move-result-wide v1

    .line 152
    cmp-long v3, v1, v9

    .line 153
    .line 154
    if-eqz v3, :cond_5

    .line 155
    .line 156
    iget-wide v7, v0, LB1/d;->g:J

    .line 157
    .line 158
    cmp-long v3, v7, v1

    .line 159
    .line 160
    if-lez v3, :cond_5

    .line 161
    .line 162
    new-instance v3, Ljava/lang/StringBuilder;

    .line 163
    .line 164
    const-string v5, "Data exceeds input length: "

    .line 165
    .line 166
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    iget-wide v7, v0, LB1/d;->g:J

    .line 170
    .line 171
    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    const-string v5, ", "

    .line 175
    .line 176
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v3

    .line 186
    const-string v5, "WavExtractor"

    .line 187
    .line 188
    invoke-static {v5, v3}, Lp0/x;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    iput-wide v1, v0, LB1/d;->g:J

    .line 192
    .line 193
    :cond_5
    iget-object v1, v0, LB1/d;->e:LB1/b;

    .line 194
    .line 195
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 196
    .line 197
    .line 198
    iget v2, v0, LB1/d;->f:I

    .line 199
    .line 200
    iget-wide v7, v0, LB1/d;->g:J

    .line 201
    .line 202
    invoke-interface {v1, v2, v7, v8}, LB1/b;->c(IJ)V

    .line 203
    .line 204
    .line 205
    iput v4, v0, LB1/d;->c:I

    .line 206
    .line 207
    return v6

    .line 208
    :cond_6
    new-instance v2, Lp0/E;

    .line 209
    .line 210
    const/16 v3, 0x10

    .line 211
    .line 212
    invoke-direct {v2, v3}, Lp0/E;-><init>(I)V

    .line 213
    .line 214
    .line 215
    const v7, 0x666d7420

    .line 216
    .line 217
    .line 218
    invoke-static {v7, v1, v2}, LB1/f;->b(ILW0/t;Lp0/E;)LS0/g;

    .line 219
    .line 220
    .line 221
    move-result-object v7

    .line 222
    const-wide/16 v8, 0x10

    .line 223
    .line 224
    iget-wide v12, v7, LS0/g;->b:J

    .line 225
    .line 226
    cmp-long v7, v12, v8

    .line 227
    .line 228
    if-ltz v7, :cond_7

    .line 229
    .line 230
    const/4 v7, 0x1

    .line 231
    goto :goto_2

    .line 232
    :cond_7
    const/4 v7, 0x0

    .line 233
    :goto_2
    invoke-static {v7}, Lcom/google/android/gms/internal/measurement/H1;->i(Z)V

    .line 234
    .line 235
    .line 236
    iget-object v7, v2, Lp0/E;->a:[B

    .line 237
    .line 238
    invoke-interface {v1, v6, v7, v3}, LW0/t;->c(I[BI)V

    .line 239
    .line 240
    .line 241
    invoke-virtual {v2, v6}, Lp0/E;->L(I)V

    .line 242
    .line 243
    .line 244
    invoke-virtual {v2}, Lp0/E;->s()I

    .line 245
    .line 246
    .line 247
    move-result v7

    .line 248
    invoke-virtual {v2}, Lp0/E;->s()I

    .line 249
    .line 250
    .line 251
    move-result v8

    .line 252
    invoke-virtual {v2}, Lp0/E;->r()I

    .line 253
    .line 254
    .line 255
    move-result v17

    .line 256
    invoke-virtual {v2}, Lp0/E;->r()I

    .line 257
    .line 258
    .line 259
    move-result v18

    .line 260
    invoke-virtual {v2}, Lp0/E;->s()I

    .line 261
    .line 262
    .line 263
    move-result v19

    .line 264
    invoke-virtual {v2}, Lp0/E;->s()I

    .line 265
    .line 266
    .line 267
    move-result v2

    .line 268
    long-to-int v9, v12

    .line 269
    sub-int/2addr v9, v3

    .line 270
    const v3, 0xfffe

    .line 271
    .line 272
    .line 273
    if-lez v9, :cond_10

    .line 274
    .line 275
    new-array v10, v9, [B

    .line 276
    .line 277
    invoke-interface {v1, v6, v10, v9}, LW0/t;->c(I[BI)V

    .line 278
    .line 279
    .line 280
    if-ne v7, v3, :cond_e

    .line 281
    .line 282
    const/16 v12, 0x18

    .line 283
    .line 284
    if-ne v9, v12, :cond_e

    .line 285
    .line 286
    new-instance v7, Lp0/E;

    .line 287
    .line 288
    invoke-direct {v7, v10}, Lp0/E;-><init>([B)V

    .line 289
    .line 290
    .line 291
    invoke-virtual {v7}, Lp0/E;->s()I

    .line 292
    .line 293
    .line 294
    invoke-virtual {v7}, Lp0/E;->s()I

    .line 295
    .line 296
    .line 297
    move-result v9

    .line 298
    if-eqz v9, :cond_9

    .line 299
    .line 300
    if-ne v9, v2, :cond_8

    .line 301
    .line 302
    goto :goto_3

    .line 303
    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 304
    .line 305
    const-string v3, "validBits ( "

    .line 306
    .line 307
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 308
    .line 309
    .line 310
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 311
    .line 312
    .line 313
    const-string v3, ")  != bitsPerSample( "

    .line 314
    .line 315
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    .line 317
    .line 318
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 319
    .line 320
    .line 321
    const-string v2, ") are not supported"

    .line 322
    .line 323
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    .line 325
    .line 326
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 327
    .line 328
    .line 329
    move-result-object v1

    .line 330
    invoke-static {v1}, Lm0/P;->c(Ljava/lang/String;)Lm0/P;

    .line 331
    .line 332
    .line 333
    move-result-object v1

    .line 334
    throw v1

    .line 335
    :cond_9
    :goto_3
    invoke-virtual {v7}, Lp0/E;->r()I

    .line 336
    .line 337
    .line 338
    move-result v9

    .line 339
    shr-int/lit8 v12, v9, 0x12

    .line 340
    .line 341
    if-nez v12, :cond_f

    .line 342
    .line 343
    if-eqz v9, :cond_b

    .line 344
    .line 345
    invoke-static {v9}, Ljava/lang/Integer;->bitCount(I)I

    .line 346
    .line 347
    .line 348
    move-result v12

    .line 349
    if-ne v12, v8, :cond_a

    .line 350
    .line 351
    goto :goto_4

    .line 352
    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    .line 353
    .line 354
    const-string v2, "invalid number of channels ("

    .line 355
    .line 356
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 357
    .line 358
    .line 359
    invoke-static {v9}, Ljava/lang/Integer;->bitCount(I)I

    .line 360
    .line 361
    .line 362
    move-result v2

    .line 363
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 364
    .line 365
    .line 366
    const-string v2, ") in channel mask "

    .line 367
    .line 368
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    .line 370
    .line 371
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 372
    .line 373
    .line 374
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 375
    .line 376
    .line 377
    move-result-object v1

    .line 378
    invoke-static {v1}, Lm0/P;->c(Ljava/lang/String;)Lm0/P;

    .line 379
    .line 380
    .line 381
    move-result-object v1

    .line 382
    throw v1

    .line 383
    :cond_b
    :goto_4
    invoke-virtual {v7}, Lp0/E;->s()I

    .line 384
    .line 385
    .line 386
    move-result v9

    .line 387
    const/16 v12, 0xe

    .line 388
    .line 389
    new-array v13, v12, [B

    .line 390
    .line 391
    invoke-virtual {v7, v6, v13, v12}, Lp0/E;->j(I[BI)V

    .line 392
    .line 393
    .line 394
    sget-object v7, LB1/f;->a:[B

    .line 395
    .line 396
    invoke-static {v13, v7}, Ljava/util/Arrays;->equals([B[B)Z

    .line 397
    .line 398
    .line 399
    move-result v7

    .line 400
    if-nez v7, :cond_d

    .line 401
    .line 402
    sget-object v7, LB1/f;->b:[B

    .line 403
    .line 404
    invoke-static {v13, v7}, Ljava/util/Arrays;->equals([B[B)Z

    .line 405
    .line 406
    .line 407
    move-result v7

    .line 408
    if-eqz v7, :cond_c

    .line 409
    .line 410
    goto :goto_5

    .line 411
    :cond_c
    const-string v1, "invalid wav format extension guid"

    .line 412
    .line 413
    invoke-static {v1}, Lm0/P;->c(Ljava/lang/String;)Lm0/P;

    .line 414
    .line 415
    .line 416
    move-result-object v1

    .line 417
    throw v1

    .line 418
    :cond_d
    :goto_5
    move v7, v9

    .line 419
    :cond_e
    move-object/from16 v21, v10

    .line 420
    .line 421
    goto :goto_6

    .line 422
    :cond_f
    new-instance v1, Ljava/lang/StringBuilder;

    .line 423
    .line 424
    const-string v2, "invalid channel mask "

    .line 425
    .line 426
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 427
    .line 428
    .line 429
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 430
    .line 431
    .line 432
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 433
    .line 434
    .line 435
    move-result-object v1

    .line 436
    invoke-static {v1}, Lm0/P;->c(Ljava/lang/String;)Lm0/P;

    .line 437
    .line 438
    .line 439
    move-result-object v1

    .line 440
    throw v1

    .line 441
    :cond_10
    sget-object v9, Lp0/M;->b:[B

    .line 442
    .line 443
    move-object/from16 v21, v9

    .line 444
    .line 445
    :goto_6
    invoke-interface/range {p1 .. p1}, LW0/t;->f()J

    .line 446
    .line 447
    .line 448
    move-result-wide v9

    .line 449
    invoke-interface/range {p1 .. p1}, LW0/t;->r()J

    .line 450
    .line 451
    .line 452
    move-result-wide v12

    .line 453
    sub-long/2addr v9, v12

    .line 454
    long-to-int v10, v9

    .line 455
    invoke-interface {v1, v10}, LW0/t;->n(I)V

    .line 456
    .line 457
    .line 458
    new-instance v1, LB1/e;

    .line 459
    .line 460
    move-object v14, v1

    .line 461
    move v15, v7

    .line 462
    move/from16 v16, v8

    .line 463
    .line 464
    move/from16 v20, v2

    .line 465
    .line 466
    invoke-direct/range {v14 .. v21}, LB1/e;-><init>(IIIIII[B)V

    .line 467
    .line 468
    .line 469
    const/16 v8, 0x11

    .line 470
    .line 471
    if-ne v7, v8, :cond_11

    .line 472
    .line 473
    new-instance v2, LB1/a;

    .line 474
    .line 475
    iget-object v3, v0, LB1/d;->a:LW0/u;

    .line 476
    .line 477
    iget-object v4, v0, LB1/d;->b:LW0/L;

    .line 478
    .line 479
    invoke-direct {v2, v3, v4, v1}, LB1/a;-><init>(LW0/u;LW0/L;LB1/e;)V

    .line 480
    .line 481
    .line 482
    iput-object v2, v0, LB1/d;->e:LB1/b;

    .line 483
    .line 484
    goto/16 :goto_9

    .line 485
    .line 486
    :cond_11
    const/4 v8, 0x6

    .line 487
    if-ne v7, v8, :cond_12

    .line 488
    .line 489
    new-instance v2, LB1/c;

    .line 490
    .line 491
    iget-object v3, v0, LB1/d;->a:LW0/u;

    .line 492
    .line 493
    iget-object v4, v0, LB1/d;->b:LW0/L;

    .line 494
    .line 495
    const-string v26, "audio/g711-alaw"

    .line 496
    .line 497
    const/16 v27, -0x1

    .line 498
    .line 499
    move-object/from16 v22, v2

    .line 500
    .line 501
    move-object/from16 v23, v3

    .line 502
    .line 503
    move-object/from16 v24, v4

    .line 504
    .line 505
    move-object/from16 v25, v1

    .line 506
    .line 507
    invoke-direct/range {v22 .. v27}, LB1/c;-><init>(LW0/u;LW0/L;LB1/e;Ljava/lang/String;I)V

    .line 508
    .line 509
    .line 510
    iput-object v2, v0, LB1/d;->e:LB1/b;

    .line 511
    .line 512
    goto :goto_9

    .line 513
    :cond_12
    const/4 v8, 0x7

    .line 514
    if-ne v7, v8, :cond_13

    .line 515
    .line 516
    new-instance v2, LB1/c;

    .line 517
    .line 518
    iget-object v3, v0, LB1/d;->a:LW0/u;

    .line 519
    .line 520
    iget-object v4, v0, LB1/d;->b:LW0/L;

    .line 521
    .line 522
    const-string v26, "audio/g711-mlaw"

    .line 523
    .line 524
    const/16 v27, -0x1

    .line 525
    .line 526
    move-object/from16 v22, v2

    .line 527
    .line 528
    move-object/from16 v23, v3

    .line 529
    .line 530
    move-object/from16 v24, v4

    .line 531
    .line 532
    move-object/from16 v25, v1

    .line 533
    .line 534
    invoke-direct/range {v22 .. v27}, LB1/c;-><init>(LW0/u;LW0/L;LB1/e;Ljava/lang/String;I)V

    .line 535
    .line 536
    .line 537
    iput-object v2, v0, LB1/d;->e:LB1/b;

    .line 538
    .line 539
    goto :goto_9

    .line 540
    :cond_13
    if-eq v7, v5, :cond_16

    .line 541
    .line 542
    if-eq v7, v11, :cond_14

    .line 543
    .line 544
    if-eq v7, v3, :cond_16

    .line 545
    .line 546
    const/16 v27, 0x0

    .line 547
    .line 548
    goto :goto_8

    .line 549
    :cond_14
    const/16 v3, 0x20

    .line 550
    .line 551
    if-ne v2, v3, :cond_15

    .line 552
    .line 553
    goto :goto_7

    .line 554
    :cond_15
    const/4 v4, 0x0

    .line 555
    :goto_7
    move/from16 v27, v4

    .line 556
    .line 557
    goto :goto_8

    .line 558
    :cond_16
    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 559
    .line 560
    invoke-static {v2, v3}, Lp0/M;->A(ILjava/nio/ByteOrder;)I

    .line 561
    .line 562
    .line 563
    move-result v2

    .line 564
    move/from16 v27, v2

    .line 565
    .line 566
    :goto_8
    if-eqz v27, :cond_17

    .line 567
    .line 568
    new-instance v2, LB1/c;

    .line 569
    .line 570
    iget-object v3, v0, LB1/d;->a:LW0/u;

    .line 571
    .line 572
    iget-object v4, v0, LB1/d;->b:LW0/L;

    .line 573
    .line 574
    const-string v26, "audio/raw"

    .line 575
    .line 576
    move-object/from16 v22, v2

    .line 577
    .line 578
    move-object/from16 v23, v3

    .line 579
    .line 580
    move-object/from16 v24, v4

    .line 581
    .line 582
    move-object/from16 v25, v1

    .line 583
    .line 584
    invoke-direct/range {v22 .. v27}, LB1/c;-><init>(LW0/u;LW0/L;LB1/e;Ljava/lang/String;I)V

    .line 585
    .line 586
    .line 587
    iput-object v2, v0, LB1/d;->e:LB1/b;

    .line 588
    .line 589
    :goto_9
    iput v11, v0, LB1/d;->c:I

    .line 590
    .line 591
    return v6

    .line 592
    :cond_17
    new-instance v1, Ljava/lang/StringBuilder;

    .line 593
    .line 594
    const-string v2, "Unsupported WAV format type: "

    .line 595
    .line 596
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 597
    .line 598
    .line 599
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 600
    .line 601
    .line 602
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 603
    .line 604
    .line 605
    move-result-object v1

    .line 606
    invoke-static {v1}, Lm0/P;->c(Ljava/lang/String;)Lm0/P;

    .line 607
    .line 608
    .line 609
    move-result-object v1

    .line 610
    throw v1

    .line 611
    :cond_18
    new-instance v2, Lp0/E;

    .line 612
    .line 613
    invoke-direct {v2, v7}, Lp0/E;-><init>(I)V

    .line 614
    .line 615
    .line 616
    invoke-static {v1, v2}, LS0/g;->b(LW0/t;Lp0/E;)LS0/g;

    .line 617
    .line 618
    .line 619
    move-result-object v3

    .line 620
    iget v4, v3, LS0/g;->a:I

    .line 621
    .line 622
    const v5, 0x64733634

    .line 623
    .line 624
    .line 625
    if-eq v4, v5, :cond_19

    .line 626
    .line 627
    invoke-interface/range {p1 .. p1}, LW0/t;->m()V

    .line 628
    .line 629
    .line 630
    goto :goto_a

    .line 631
    :cond_19
    invoke-interface {v1, v7}, LW0/t;->g(I)V

    .line 632
    .line 633
    .line 634
    invoke-virtual {v2, v6}, Lp0/E;->L(I)V

    .line 635
    .line 636
    .line 637
    iget-object v4, v2, Lp0/E;->a:[B

    .line 638
    .line 639
    invoke-interface {v1, v6, v4, v7}, LW0/t;->c(I[BI)V

    .line 640
    .line 641
    .line 642
    invoke-virtual {v2}, Lp0/E;->o()J

    .line 643
    .line 644
    .line 645
    move-result-wide v9

    .line 646
    iget-wide v2, v3, LS0/g;->b:J

    .line 647
    .line 648
    long-to-int v3, v2

    .line 649
    add-int/2addr v3, v7

    .line 650
    invoke-interface {v1, v3}, LW0/t;->n(I)V

    .line 651
    .line 652
    .line 653
    :goto_a
    iput-wide v9, v0, LB1/d;->d:J

    .line 654
    .line 655
    iput v8, v0, LB1/d;->c:I

    .line 656
    .line 657
    return v6

    .line 658
    :cond_1a
    invoke-interface/range {p1 .. p1}, LW0/t;->r()J

    .line 659
    .line 660
    .line 661
    move-result-wide v7

    .line 662
    const-wide/16 v9, 0x0

    .line 663
    .line 664
    cmp-long v2, v7, v9

    .line 665
    .line 666
    if-nez v2, :cond_1b

    .line 667
    .line 668
    const/4 v2, 0x1

    .line 669
    goto :goto_b

    .line 670
    :cond_1b
    const/4 v2, 0x0

    .line 671
    :goto_b
    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/H1;->i(Z)V

    .line 672
    .line 673
    .line 674
    iget v2, v0, LB1/d;->f:I

    .line 675
    .line 676
    if-eq v2, v3, :cond_1c

    .line 677
    .line 678
    invoke-interface {v1, v2}, LW0/t;->n(I)V

    .line 679
    .line 680
    .line 681
    iput v4, v0, LB1/d;->c:I

    .line 682
    .line 683
    goto :goto_c

    .line 684
    :cond_1c
    invoke-static/range {p1 .. p1}, LB1/f;->a(LW0/t;)Z

    .line 685
    .line 686
    .line 687
    move-result v2

    .line 688
    if-eqz v2, :cond_1d

    .line 689
    .line 690
    invoke-interface/range {p1 .. p1}, LW0/t;->f()J

    .line 691
    .line 692
    .line 693
    move-result-wide v2

    .line 694
    invoke-interface/range {p1 .. p1}, LW0/t;->r()J

    .line 695
    .line 696
    .line 697
    move-result-wide v7

    .line 698
    sub-long/2addr v2, v7

    .line 699
    long-to-int v3, v2

    .line 700
    invoke-interface {v1, v3}, LW0/t;->n(I)V

    .line 701
    .line 702
    .line 703
    iput v5, v0, LB1/d;->c:I

    .line 704
    .line 705
    :goto_c
    return v6

    .line 706
    :cond_1d
    const-string v1, "Unsupported or unrecognized wav file type."

    .line 707
    .line 708
    const/4 v2, 0x0

    .line 709
    invoke-static {v1, v2}, Lm0/P;->a(Ljava/lang/String;Ljava/lang/RuntimeException;)Lm0/P;

    .line 710
    .line 711
    .line 712
    move-result-object v1

    .line 713
    throw v1
.end method

.method public final i(JJ)V
    .locals 3

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v2, p1, v0

    .line 4
    .line 5
    if-nez v2, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p1, 0x4

    .line 10
    :goto_0
    iput p1, p0, LB1/d;->c:I

    .line 11
    .line 12
    iget-object p1, p0, LB1/d;->e:LB1/b;

    .line 13
    .line 14
    if-eqz p1, :cond_1

    .line 15
    .line 16
    invoke-interface {p1, p3, p4}, LB1/b;->a(J)V

    .line 17
    .line 18
    .line 19
    :cond_1
    return-void
.end method

.method public final j()Ljava/util/List;
    .locals 1

    .line 1
    sget-object v0, Lz4/H;->H:Lz4/F;

    .line 2
    .line 3
    sget-object v0, Lz4/d0;->K:Lz4/d0;

    .line 4
    .line 5
    return-object v0
.end method

.method public final release()V
    .locals 0

    .line 1
    return-void
.end method
