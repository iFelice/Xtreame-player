.class public final LA1/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LA1/j;


# instance fields
.field public final a:Lp0/D;

.field public final b:Lp0/E;

.field public final c:Ljava/lang/String;

.field public final d:I

.field public final e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:LW0/L;

.field public h:I

.field public i:I

.field public j:Z

.field public k:J

.field public l:Lm0/t;

.field public m:I

.field public n:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2
    invoke-direct {p0, v0, v1, p1}, LA1/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 4

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lp0/D;

    const/16 v1, 0x80

    new-array v1, v1, [B

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lp0/D;-><init>([BILjava/lang/Object;)V

    iput-object v0, p0, LA1/b;->a:Lp0/D;

    .line 5
    new-instance v1, Lp0/E;

    iget-object v0, v0, Lp0/D;->b:[B

    invoke-direct {v1, v0}, Lp0/E;-><init>([B)V

    iput-object v1, p0, LA1/b;->b:Lp0/E;

    .line 6
    iput v3, p0, LA1/b;->h:I

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 7
    iput-wide v0, p0, LA1/b;->n:J

    .line 8
    iput-object p1, p0, LA1/b;->c:Ljava/lang/String;

    .line 9
    iput p2, p0, LA1/b;->d:I

    .line 10
    iput-object p3, p0, LA1/b;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, LA1/b;->h:I

    .line 3
    .line 4
    iput v0, p0, LA1/b;->i:I

    .line 5
    .line 6
    iput-boolean v0, p0, LA1/b;->j:Z

    .line 7
    .line 8
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    iput-wide v0, p0, LA1/b;->n:J

    .line 14
    .line 15
    return-void
.end method

.method public final b(Lp0/E;)V
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, LA1/b;->g:LW0/L;

    .line 6
    .line 7
    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/H1;->j(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lp0/E;->a()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-lez v2, :cond_3e

    .line 15
    .line 16
    iget v2, v0, LA1/b;->h:I

    .line 17
    .line 18
    const/4 v3, 0x2

    .line 19
    const/4 v4, 0x1

    .line 20
    const/16 v5, 0xb

    .line 21
    .line 22
    iget-object v6, v0, LA1/b;->b:Lp0/E;

    .line 23
    .line 24
    const/4 v7, 0x0

    .line 25
    if-eqz v2, :cond_39

    .line 26
    .line 27
    if-eq v2, v4, :cond_3

    .line 28
    .line 29
    if-eq v2, v3, :cond_1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lp0/E;->a()I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    iget v3, v0, LA1/b;->m:I

    .line 37
    .line 38
    iget v5, v0, LA1/b;->i:I

    .line 39
    .line 40
    sub-int/2addr v3, v5

    .line 41
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    iget-object v3, v0, LA1/b;->g:LW0/L;

    .line 46
    .line 47
    invoke-interface {v3, v2, v1}, LW0/L;->e(ILp0/E;)V

    .line 48
    .line 49
    .line 50
    iget v3, v0, LA1/b;->i:I

    .line 51
    .line 52
    add-int/2addr v3, v2

    .line 53
    iput v3, v0, LA1/b;->i:I

    .line 54
    .line 55
    iget v2, v0, LA1/b;->m:I

    .line 56
    .line 57
    if-ne v3, v2, :cond_0

    .line 58
    .line 59
    iget-wide v2, v0, LA1/b;->n:J

    .line 60
    .line 61
    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    cmp-long v8, v2, v5

    .line 67
    .line 68
    if-eqz v8, :cond_2

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_2
    const/4 v4, 0x0

    .line 72
    :goto_1
    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/H1;->i(Z)V

    .line 73
    .line 74
    .line 75
    iget-object v8, v0, LA1/b;->g:LW0/L;

    .line 76
    .line 77
    iget-wide v9, v0, LA1/b;->n:J

    .line 78
    .line 79
    iget v12, v0, LA1/b;->m:I

    .line 80
    .line 81
    const/4 v14, 0x0

    .line 82
    const/4 v11, 0x1

    .line 83
    const/4 v13, 0x0

    .line 84
    invoke-interface/range {v8 .. v14}, LW0/L;->d(JIIILW0/K;)V

    .line 85
    .line 86
    .line 87
    iget-wide v2, v0, LA1/b;->n:J

    .line 88
    .line 89
    iget-wide v4, v0, LA1/b;->k:J

    .line 90
    .line 91
    add-long/2addr v2, v4

    .line 92
    iput-wide v2, v0, LA1/b;->n:J

    .line 93
    .line 94
    iput v7, v0, LA1/b;->h:I

    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_3
    iget-object v2, v6, Lp0/E;->a:[B

    .line 98
    .line 99
    invoke-virtual/range {p1 .. p1}, Lp0/E;->a()I

    .line 100
    .line 101
    .line 102
    move-result v8

    .line 103
    iget v9, v0, LA1/b;->i:I

    .line 104
    .line 105
    const/16 v10, 0x80

    .line 106
    .line 107
    rsub-int v9, v9, 0x80

    .line 108
    .line 109
    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    .line 110
    .line 111
    .line 112
    move-result v8

    .line 113
    iget v9, v0, LA1/b;->i:I

    .line 114
    .line 115
    invoke-virtual {v1, v9, v2, v8}, Lp0/E;->j(I[BI)V

    .line 116
    .line 117
    .line 118
    iget v2, v0, LA1/b;->i:I

    .line 119
    .line 120
    add-int/2addr v2, v8

    .line 121
    iput v2, v0, LA1/b;->i:I

    .line 122
    .line 123
    if-ne v2, v10, :cond_0

    .line 124
    .line 125
    iget-object v2, v0, LA1/b;->a:Lp0/D;

    .line 126
    .line 127
    invoke-virtual {v2, v7}, Lp0/D;->r(I)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v2}, Lp0/D;->g()I

    .line 131
    .line 132
    .line 133
    move-result v8

    .line 134
    const/16 v9, 0x28

    .line 135
    .line 136
    invoke-virtual {v2, v9}, Lp0/D;->u(I)V

    .line 137
    .line 138
    .line 139
    const/4 v9, 0x5

    .line 140
    invoke-virtual {v2, v9}, Lp0/D;->i(I)I

    .line 141
    .line 142
    .line 143
    move-result v11

    .line 144
    const/16 v12, 0xa

    .line 145
    .line 146
    if-le v11, v12, :cond_4

    .line 147
    .line 148
    const/4 v11, 0x1

    .line 149
    goto :goto_2

    .line 150
    :cond_4
    const/4 v11, 0x0

    .line 151
    :goto_2
    invoke-virtual {v2, v8}, Lp0/D;->r(I)V

    .line 152
    .line 153
    .line 154
    sget-object v8, LW0/a;->f:[I

    .line 155
    .line 156
    sget-object v13, LW0/a;->d:[I

    .line 157
    .line 158
    const-string v14, "audio/ac3"

    .line 159
    .line 160
    const/16 v15, 0x8

    .line 161
    .line 162
    const/4 v7, 0x3

    .line 163
    if-eqz v11, :cond_30

    .line 164
    .line 165
    const/16 v11, 0x10

    .line 166
    .line 167
    invoke-virtual {v2, v11}, Lp0/D;->u(I)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v2, v3}, Lp0/D;->i(I)I

    .line 171
    .line 172
    .line 173
    move-result v10

    .line 174
    if-eqz v10, :cond_7

    .line 175
    .line 176
    if-eq v10, v4, :cond_6

    .line 177
    .line 178
    if-eq v10, v3, :cond_5

    .line 179
    .line 180
    const/4 v10, -0x1

    .line 181
    goto :goto_3

    .line 182
    :cond_5
    const/4 v10, 0x2

    .line 183
    goto :goto_3

    .line 184
    :cond_6
    const/4 v10, 0x1

    .line 185
    goto :goto_3

    .line 186
    :cond_7
    const/4 v10, 0x0

    .line 187
    :goto_3
    invoke-virtual {v2, v7}, Lp0/D;->u(I)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {v2, v5}, Lp0/D;->i(I)I

    .line 191
    .line 192
    .line 193
    move-result v5

    .line 194
    add-int/2addr v5, v4

    .line 195
    mul-int/lit8 v5, v5, 0x2

    .line 196
    .line 197
    invoke-virtual {v2, v3}, Lp0/D;->i(I)I

    .line 198
    .line 199
    .line 200
    move-result v11

    .line 201
    if-ne v11, v7, :cond_8

    .line 202
    .line 203
    sget-object v13, LW0/a;->e:[I

    .line 204
    .line 205
    invoke-virtual {v2, v3}, Lp0/D;->i(I)I

    .line 206
    .line 207
    .line 208
    move-result v16

    .line 209
    aget v13, v13, v16

    .line 210
    .line 211
    const/4 v3, 0x6

    .line 212
    const/16 v19, 0x3

    .line 213
    .line 214
    goto :goto_4

    .line 215
    :cond_8
    invoke-virtual {v2, v3}, Lp0/D;->i(I)I

    .line 216
    .line 217
    .line 218
    move-result v16

    .line 219
    sget-object v18, LW0/a;->c:[I

    .line 220
    .line 221
    aget v18, v18, v16

    .line 222
    .line 223
    aget v13, v13, v11

    .line 224
    .line 225
    move/from16 v19, v16

    .line 226
    .line 227
    move/from16 v3, v18

    .line 228
    .line 229
    :goto_4
    mul-int/lit16 v4, v3, 0x100

    .line 230
    .line 231
    mul-int v16, v5, v13

    .line 232
    .line 233
    mul-int/lit8 v20, v3, 0x20

    .line 234
    .line 235
    div-int v16, v16, v20

    .line 236
    .line 237
    invoke-virtual {v2, v7}, Lp0/D;->i(I)I

    .line 238
    .line 239
    .line 240
    move-result v9

    .line 241
    invoke-virtual {v2}, Lp0/D;->h()Z

    .line 242
    .line 243
    .line 244
    move-result v21

    .line 245
    aget v8, v8, v9

    .line 246
    .line 247
    add-int v8, v8, v21

    .line 248
    .line 249
    invoke-virtual {v2, v12}, Lp0/D;->u(I)V

    .line 250
    .line 251
    .line 252
    invoke-virtual {v2}, Lp0/D;->h()Z

    .line 253
    .line 254
    .line 255
    move-result v12

    .line 256
    if-eqz v12, :cond_9

    .line 257
    .line 258
    invoke-virtual {v2, v15}, Lp0/D;->u(I)V

    .line 259
    .line 260
    .line 261
    :cond_9
    if-nez v9, :cond_a

    .line 262
    .line 263
    const/4 v12, 0x5

    .line 264
    invoke-virtual {v2, v12}, Lp0/D;->u(I)V

    .line 265
    .line 266
    .line 267
    invoke-virtual {v2}, Lp0/D;->h()Z

    .line 268
    .line 269
    .line 270
    move-result v12

    .line 271
    if-eqz v12, :cond_a

    .line 272
    .line 273
    invoke-virtual {v2, v15}, Lp0/D;->u(I)V

    .line 274
    .line 275
    .line 276
    :cond_a
    const/4 v12, 0x1

    .line 277
    if-ne v10, v12, :cond_b

    .line 278
    .line 279
    invoke-virtual {v2}, Lp0/D;->h()Z

    .line 280
    .line 281
    .line 282
    move-result v12

    .line 283
    if-eqz v12, :cond_b

    .line 284
    .line 285
    const/16 v12, 0x10

    .line 286
    .line 287
    invoke-virtual {v2, v12}, Lp0/D;->u(I)V

    .line 288
    .line 289
    .line 290
    :cond_b
    invoke-virtual {v2}, Lp0/D;->h()Z

    .line 291
    .line 292
    .line 293
    move-result v12

    .line 294
    if-eqz v12, :cond_24

    .line 295
    .line 296
    const/4 v12, 0x2

    .line 297
    if-le v9, v12, :cond_c

    .line 298
    .line 299
    invoke-virtual {v2, v12}, Lp0/D;->u(I)V

    .line 300
    .line 301
    .line 302
    :cond_c
    and-int/lit8 v18, v9, 0x1

    .line 303
    .line 304
    if-eqz v18, :cond_d

    .line 305
    .line 306
    if-le v9, v12, :cond_d

    .line 307
    .line 308
    const/4 v12, 0x6

    .line 309
    invoke-virtual {v2, v12}, Lp0/D;->u(I)V

    .line 310
    .line 311
    .line 312
    goto :goto_5

    .line 313
    :cond_d
    const/4 v12, 0x6

    .line 314
    :goto_5
    and-int/lit8 v17, v9, 0x4

    .line 315
    .line 316
    if-eqz v17, :cond_e

    .line 317
    .line 318
    invoke-virtual {v2, v12}, Lp0/D;->u(I)V

    .line 319
    .line 320
    .line 321
    :cond_e
    if-eqz v21, :cond_f

    .line 322
    .line 323
    invoke-virtual {v2}, Lp0/D;->h()Z

    .line 324
    .line 325
    .line 326
    move-result v12

    .line 327
    if-eqz v12, :cond_f

    .line 328
    .line 329
    const/4 v12, 0x5

    .line 330
    invoke-virtual {v2, v12}, Lp0/D;->u(I)V

    .line 331
    .line 332
    .line 333
    :cond_f
    if-nez v10, :cond_24

    .line 334
    .line 335
    invoke-virtual {v2}, Lp0/D;->h()Z

    .line 336
    .line 337
    .line 338
    move-result v12

    .line 339
    if-eqz v12, :cond_10

    .line 340
    .line 341
    const/4 v12, 0x6

    .line 342
    invoke-virtual {v2, v12}, Lp0/D;->u(I)V

    .line 343
    .line 344
    .line 345
    goto :goto_6

    .line 346
    :cond_10
    const/4 v12, 0x6

    .line 347
    :goto_6
    if-nez v9, :cond_11

    .line 348
    .line 349
    invoke-virtual {v2}, Lp0/D;->h()Z

    .line 350
    .line 351
    .line 352
    move-result v17

    .line 353
    if-eqz v17, :cond_11

    .line 354
    .line 355
    invoke-virtual {v2, v12}, Lp0/D;->u(I)V

    .line 356
    .line 357
    .line 358
    :cond_11
    invoke-virtual {v2}, Lp0/D;->h()Z

    .line 359
    .line 360
    .line 361
    move-result v17

    .line 362
    if-eqz v17, :cond_12

    .line 363
    .line 364
    invoke-virtual {v2, v12}, Lp0/D;->u(I)V

    .line 365
    .line 366
    .line 367
    :cond_12
    const/4 v12, 0x2

    .line 368
    invoke-virtual {v2, v12}, Lp0/D;->i(I)I

    .line 369
    .line 370
    .line 371
    move-result v15

    .line 372
    const/4 v7, 0x1

    .line 373
    if-ne v15, v7, :cond_14

    .line 374
    .line 375
    const/4 v7, 0x5

    .line 376
    invoke-virtual {v2, v7}, Lp0/D;->u(I)V

    .line 377
    .line 378
    .line 379
    :cond_13
    :goto_7
    const/4 v15, 0x2

    .line 380
    goto/16 :goto_b

    .line 381
    .line 382
    :cond_14
    const/4 v7, 0x5

    .line 383
    if-ne v15, v12, :cond_15

    .line 384
    .line 385
    const/16 v12, 0xc

    .line 386
    .line 387
    invoke-virtual {v2, v12}, Lp0/D;->u(I)V

    .line 388
    .line 389
    .line 390
    goto :goto_7

    .line 391
    :cond_15
    const/4 v12, 0x3

    .line 392
    if-ne v15, v12, :cond_13

    .line 393
    .line 394
    invoke-virtual {v2, v7}, Lp0/D;->i(I)I

    .line 395
    .line 396
    .line 397
    move-result v12

    .line 398
    invoke-virtual {v2}, Lp0/D;->h()Z

    .line 399
    .line 400
    .line 401
    move-result v15

    .line 402
    if-eqz v15, :cond_1e

    .line 403
    .line 404
    invoke-virtual {v2, v7}, Lp0/D;->u(I)V

    .line 405
    .line 406
    .line 407
    invoke-virtual {v2}, Lp0/D;->h()Z

    .line 408
    .line 409
    .line 410
    move-result v7

    .line 411
    if-eqz v7, :cond_16

    .line 412
    .line 413
    const/4 v7, 0x4

    .line 414
    invoke-virtual {v2, v7}, Lp0/D;->u(I)V

    .line 415
    .line 416
    .line 417
    goto :goto_8

    .line 418
    :cond_16
    const/4 v7, 0x4

    .line 419
    :goto_8
    invoke-virtual {v2}, Lp0/D;->h()Z

    .line 420
    .line 421
    .line 422
    move-result v15

    .line 423
    if-eqz v15, :cond_17

    .line 424
    .line 425
    invoke-virtual {v2, v7}, Lp0/D;->u(I)V

    .line 426
    .line 427
    .line 428
    :cond_17
    invoke-virtual {v2}, Lp0/D;->h()Z

    .line 429
    .line 430
    .line 431
    move-result v15

    .line 432
    if-eqz v15, :cond_18

    .line 433
    .line 434
    invoke-virtual {v2, v7}, Lp0/D;->u(I)V

    .line 435
    .line 436
    .line 437
    :cond_18
    invoke-virtual {v2}, Lp0/D;->h()Z

    .line 438
    .line 439
    .line 440
    move-result v15

    .line 441
    if-eqz v15, :cond_19

    .line 442
    .line 443
    invoke-virtual {v2, v7}, Lp0/D;->u(I)V

    .line 444
    .line 445
    .line 446
    :cond_19
    invoke-virtual {v2}, Lp0/D;->h()Z

    .line 447
    .line 448
    .line 449
    move-result v15

    .line 450
    if-eqz v15, :cond_1a

    .line 451
    .line 452
    invoke-virtual {v2, v7}, Lp0/D;->u(I)V

    .line 453
    .line 454
    .line 455
    :cond_1a
    invoke-virtual {v2}, Lp0/D;->h()Z

    .line 456
    .line 457
    .line 458
    move-result v15

    .line 459
    if-eqz v15, :cond_1b

    .line 460
    .line 461
    invoke-virtual {v2, v7}, Lp0/D;->u(I)V

    .line 462
    .line 463
    .line 464
    :cond_1b
    invoke-virtual {v2}, Lp0/D;->h()Z

    .line 465
    .line 466
    .line 467
    move-result v15

    .line 468
    if-eqz v15, :cond_1c

    .line 469
    .line 470
    invoke-virtual {v2, v7}, Lp0/D;->u(I)V

    .line 471
    .line 472
    .line 473
    :cond_1c
    invoke-virtual {v2}, Lp0/D;->h()Z

    .line 474
    .line 475
    .line 476
    move-result v15

    .line 477
    if-eqz v15, :cond_1e

    .line 478
    .line 479
    invoke-virtual {v2}, Lp0/D;->h()Z

    .line 480
    .line 481
    .line 482
    move-result v15

    .line 483
    if-eqz v15, :cond_1d

    .line 484
    .line 485
    invoke-virtual {v2, v7}, Lp0/D;->u(I)V

    .line 486
    .line 487
    .line 488
    :cond_1d
    invoke-virtual {v2}, Lp0/D;->h()Z

    .line 489
    .line 490
    .line 491
    move-result v15

    .line 492
    if-eqz v15, :cond_1e

    .line 493
    .line 494
    invoke-virtual {v2, v7}, Lp0/D;->u(I)V

    .line 495
    .line 496
    .line 497
    :cond_1e
    invoke-virtual {v2}, Lp0/D;->h()Z

    .line 498
    .line 499
    .line 500
    move-result v7

    .line 501
    if-eqz v7, :cond_1f

    .line 502
    .line 503
    const/4 v7, 0x5

    .line 504
    invoke-virtual {v2, v7}, Lp0/D;->u(I)V

    .line 505
    .line 506
    .line 507
    invoke-virtual {v2}, Lp0/D;->h()Z

    .line 508
    .line 509
    .line 510
    move-result v7

    .line 511
    if-eqz v7, :cond_1f

    .line 512
    .line 513
    const/4 v7, 0x7

    .line 514
    invoke-virtual {v2, v7}, Lp0/D;->u(I)V

    .line 515
    .line 516
    .line 517
    invoke-virtual {v2}, Lp0/D;->h()Z

    .line 518
    .line 519
    .line 520
    move-result v7

    .line 521
    if-eqz v7, :cond_1f

    .line 522
    .line 523
    const/16 v7, 0x8

    .line 524
    .line 525
    invoke-virtual {v2, v7}, Lp0/D;->u(I)V

    .line 526
    .line 527
    .line 528
    :goto_9
    const/4 v15, 0x2

    .line 529
    goto :goto_a

    .line 530
    :cond_1f
    const/16 v7, 0x8

    .line 531
    .line 532
    goto :goto_9

    .line 533
    :goto_a
    add-int/2addr v12, v15

    .line 534
    mul-int/lit8 v12, v12, 0x8

    .line 535
    .line 536
    invoke-virtual {v2, v12}, Lp0/D;->u(I)V

    .line 537
    .line 538
    .line 539
    invoke-virtual {v2}, Lp0/D;->c()V

    .line 540
    .line 541
    .line 542
    :goto_b
    if-ge v9, v15, :cond_21

    .line 543
    .line 544
    invoke-virtual {v2}, Lp0/D;->h()Z

    .line 545
    .line 546
    .line 547
    move-result v7

    .line 548
    const/16 v12, 0xe

    .line 549
    .line 550
    if-eqz v7, :cond_20

    .line 551
    .line 552
    invoke-virtual {v2, v12}, Lp0/D;->u(I)V

    .line 553
    .line 554
    .line 555
    :cond_20
    if-nez v9, :cond_21

    .line 556
    .line 557
    invoke-virtual {v2}, Lp0/D;->h()Z

    .line 558
    .line 559
    .line 560
    move-result v7

    .line 561
    if-eqz v7, :cond_21

    .line 562
    .line 563
    invoke-virtual {v2, v12}, Lp0/D;->u(I)V

    .line 564
    .line 565
    .line 566
    :cond_21
    invoke-virtual {v2}, Lp0/D;->h()Z

    .line 567
    .line 568
    .line 569
    move-result v7

    .line 570
    if-eqz v7, :cond_24

    .line 571
    .line 572
    move/from16 v7, v19

    .line 573
    .line 574
    if-nez v7, :cond_22

    .line 575
    .line 576
    const/4 v12, 0x5

    .line 577
    invoke-virtual {v2, v12}, Lp0/D;->u(I)V

    .line 578
    .line 579
    .line 580
    goto :goto_d

    .line 581
    :cond_22
    const/4 v12, 0x5

    .line 582
    const/4 v15, 0x0

    .line 583
    :goto_c
    if-ge v15, v3, :cond_25

    .line 584
    .line 585
    invoke-virtual {v2}, Lp0/D;->h()Z

    .line 586
    .line 587
    .line 588
    move-result v19

    .line 589
    if-eqz v19, :cond_23

    .line 590
    .line 591
    invoke-virtual {v2, v12}, Lp0/D;->u(I)V

    .line 592
    .line 593
    .line 594
    :cond_23
    add-int/lit8 v15, v15, 0x1

    .line 595
    .line 596
    const/4 v12, 0x5

    .line 597
    goto :goto_c

    .line 598
    :cond_24
    move/from16 v7, v19

    .line 599
    .line 600
    :cond_25
    :goto_d
    invoke-virtual {v2}, Lp0/D;->h()Z

    .line 601
    .line 602
    .line 603
    move-result v3

    .line 604
    if-eqz v3, :cond_2a

    .line 605
    .line 606
    const/4 v3, 0x5

    .line 607
    invoke-virtual {v2, v3}, Lp0/D;->u(I)V

    .line 608
    .line 609
    .line 610
    const/4 v3, 0x2

    .line 611
    if-ne v9, v3, :cond_26

    .line 612
    .line 613
    const/4 v12, 0x4

    .line 614
    invoke-virtual {v2, v12}, Lp0/D;->u(I)V

    .line 615
    .line 616
    .line 617
    :cond_26
    const/4 v12, 0x6

    .line 618
    if-lt v9, v12, :cond_27

    .line 619
    .line 620
    invoke-virtual {v2, v3}, Lp0/D;->u(I)V

    .line 621
    .line 622
    .line 623
    :cond_27
    invoke-virtual {v2}, Lp0/D;->h()Z

    .line 624
    .line 625
    .line 626
    move-result v3

    .line 627
    if-eqz v3, :cond_28

    .line 628
    .line 629
    const/16 v3, 0x8

    .line 630
    .line 631
    invoke-virtual {v2, v3}, Lp0/D;->u(I)V

    .line 632
    .line 633
    .line 634
    goto :goto_e

    .line 635
    :cond_28
    const/16 v3, 0x8

    .line 636
    .line 637
    :goto_e
    if-nez v9, :cond_29

    .line 638
    .line 639
    invoke-virtual {v2}, Lp0/D;->h()Z

    .line 640
    .line 641
    .line 642
    move-result v9

    .line 643
    if-eqz v9, :cond_29

    .line 644
    .line 645
    invoke-virtual {v2, v3}, Lp0/D;->u(I)V

    .line 646
    .line 647
    .line 648
    :cond_29
    const/4 v3, 0x3

    .line 649
    if-ge v11, v3, :cond_2b

    .line 650
    .line 651
    invoke-virtual {v2}, Lp0/D;->t()V

    .line 652
    .line 653
    .line 654
    goto :goto_f

    .line 655
    :cond_2a
    const/4 v3, 0x3

    .line 656
    :cond_2b
    :goto_f
    if-nez v10, :cond_2c

    .line 657
    .line 658
    if-eq v7, v3, :cond_2c

    .line 659
    .line 660
    invoke-virtual {v2}, Lp0/D;->t()V

    .line 661
    .line 662
    .line 663
    :cond_2c
    const/4 v9, 0x2

    .line 664
    if-ne v10, v9, :cond_2e

    .line 665
    .line 666
    if-eq v7, v3, :cond_2d

    .line 667
    .line 668
    invoke-virtual {v2}, Lp0/D;->h()Z

    .line 669
    .line 670
    .line 671
    move-result v3

    .line 672
    if-eqz v3, :cond_2e

    .line 673
    .line 674
    :cond_2d
    const/4 v3, 0x6

    .line 675
    goto :goto_10

    .line 676
    :cond_2e
    const/4 v3, 0x6

    .line 677
    goto :goto_11

    .line 678
    :goto_10
    invoke-virtual {v2, v3}, Lp0/D;->u(I)V

    .line 679
    .line 680
    .line 681
    :goto_11
    invoke-virtual {v2}, Lp0/D;->h()Z

    .line 682
    .line 683
    .line 684
    move-result v7

    .line 685
    if-eqz v7, :cond_2f

    .line 686
    .line 687
    invoke-virtual {v2, v3}, Lp0/D;->i(I)I

    .line 688
    .line 689
    .line 690
    move-result v3

    .line 691
    const/4 v7, 0x1

    .line 692
    if-ne v3, v7, :cond_2f

    .line 693
    .line 694
    const/16 v3, 0x8

    .line 695
    .line 696
    invoke-virtual {v2, v3}, Lp0/D;->i(I)I

    .line 697
    .line 698
    .line 699
    move-result v2

    .line 700
    if-ne v2, v7, :cond_2f

    .line 701
    .line 702
    const-string v2, "audio/eac3-joc"

    .line 703
    .line 704
    goto :goto_12

    .line 705
    :cond_2f
    const-string v2, "audio/eac3"

    .line 706
    .line 707
    :goto_12
    move/from16 v7, v16

    .line 708
    .line 709
    goto :goto_17

    .line 710
    :cond_30
    const/16 v3, 0x20

    .line 711
    .line 712
    invoke-virtual {v2, v3}, Lp0/D;->u(I)V

    .line 713
    .line 714
    .line 715
    const/4 v3, 0x2

    .line 716
    invoke-virtual {v2, v3}, Lp0/D;->i(I)I

    .line 717
    .line 718
    .line 719
    move-result v4

    .line 720
    const/4 v3, 0x3

    .line 721
    if-ne v4, v3, :cond_31

    .line 722
    .line 723
    const/4 v3, 0x0

    .line 724
    :goto_13
    const/4 v5, 0x6

    .line 725
    goto :goto_14

    .line 726
    :cond_31
    move-object v3, v14

    .line 727
    goto :goto_13

    .line 728
    :goto_14
    invoke-virtual {v2, v5}, Lp0/D;->i(I)I

    .line 729
    .line 730
    .line 731
    move-result v5

    .line 732
    sget-object v7, LW0/a;->g:[I

    .line 733
    .line 734
    div-int/lit8 v9, v5, 0x2

    .line 735
    .line 736
    aget v7, v7, v9

    .line 737
    .line 738
    mul-int/lit16 v7, v7, 0x3e8

    .line 739
    .line 740
    invoke-static {v4, v5}, LW0/a;->a(II)I

    .line 741
    .line 742
    .line 743
    move-result v5

    .line 744
    const/16 v9, 0x8

    .line 745
    .line 746
    invoke-virtual {v2, v9}, Lp0/D;->u(I)V

    .line 747
    .line 748
    .line 749
    const/4 v9, 0x3

    .line 750
    invoke-virtual {v2, v9}, Lp0/D;->i(I)I

    .line 751
    .line 752
    .line 753
    move-result v10

    .line 754
    and-int/lit8 v9, v10, 0x1

    .line 755
    .line 756
    if-eqz v9, :cond_32

    .line 757
    .line 758
    const/4 v9, 0x1

    .line 759
    if-eq v10, v9, :cond_32

    .line 760
    .line 761
    const/4 v9, 0x2

    .line 762
    invoke-virtual {v2, v9}, Lp0/D;->u(I)V

    .line 763
    .line 764
    .line 765
    goto :goto_15

    .line 766
    :cond_32
    const/4 v9, 0x2

    .line 767
    :goto_15
    and-int/lit8 v11, v10, 0x4

    .line 768
    .line 769
    if-eqz v11, :cond_33

    .line 770
    .line 771
    invoke-virtual {v2, v9}, Lp0/D;->u(I)V

    .line 772
    .line 773
    .line 774
    :cond_33
    if-ne v10, v9, :cond_34

    .line 775
    .line 776
    invoke-virtual {v2, v9}, Lp0/D;->u(I)V

    .line 777
    .line 778
    .line 779
    :cond_34
    const/4 v9, 0x3

    .line 780
    if-ge v4, v9, :cond_35

    .line 781
    .line 782
    aget v15, v13, v4

    .line 783
    .line 784
    goto :goto_16

    .line 785
    :cond_35
    const/4 v15, -0x1

    .line 786
    :goto_16
    invoke-virtual {v2}, Lp0/D;->h()Z

    .line 787
    .line 788
    .line 789
    move-result v2

    .line 790
    aget v4, v8, v10

    .line 791
    .line 792
    add-int v8, v4, v2

    .line 793
    .line 794
    const/16 v4, 0x600

    .line 795
    .line 796
    move-object v2, v3

    .line 797
    move v13, v15

    .line 798
    :goto_17
    iget-object v3, v0, LA1/b;->l:Lm0/t;

    .line 799
    .line 800
    if-eqz v3, :cond_36

    .line 801
    .line 802
    iget v9, v3, Lm0/t;->G:I

    .line 803
    .line 804
    if-ne v8, v9, :cond_36

    .line 805
    .line 806
    iget v9, v3, Lm0/t;->H:I

    .line 807
    .line 808
    if-ne v13, v9, :cond_36

    .line 809
    .line 810
    iget-object v3, v3, Lm0/t;->o:Ljava/lang/String;

    .line 811
    .line 812
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 813
    .line 814
    .line 815
    move-result v3

    .line 816
    if-nez v3, :cond_38

    .line 817
    .line 818
    :cond_36
    new-instance v3, Lm0/s;

    .line 819
    .line 820
    invoke-direct {v3}, Lm0/s;-><init>()V

    .line 821
    .line 822
    .line 823
    iget-object v9, v0, LA1/b;->f:Ljava/lang/String;

    .line 824
    .line 825
    iput-object v9, v3, Lm0/s;->a:Ljava/lang/String;

    .line 826
    .line 827
    iget-object v9, v0, LA1/b;->e:Ljava/lang/String;

    .line 828
    .line 829
    invoke-static {v9}, Lm0/O;->p(Ljava/lang/String;)Ljava/lang/String;

    .line 830
    .line 831
    .line 832
    move-result-object v9

    .line 833
    iput-object v9, v3, Lm0/s;->m:Ljava/lang/String;

    .line 834
    .line 835
    invoke-static {v2}, Lm0/O;->p(Ljava/lang/String;)Ljava/lang/String;

    .line 836
    .line 837
    .line 838
    move-result-object v9

    .line 839
    iput-object v9, v3, Lm0/s;->n:Ljava/lang/String;

    .line 840
    .line 841
    iput v8, v3, Lm0/s;->F:I

    .line 842
    .line 843
    iput v13, v3, Lm0/s;->G:I

    .line 844
    .line 845
    iget-object v8, v0, LA1/b;->c:Ljava/lang/String;

    .line 846
    .line 847
    iput-object v8, v3, Lm0/s;->d:Ljava/lang/String;

    .line 848
    .line 849
    iget v8, v0, LA1/b;->d:I

    .line 850
    .line 851
    iput v8, v3, Lm0/s;->f:I

    .line 852
    .line 853
    iput v7, v3, Lm0/s;->i:I

    .line 854
    .line 855
    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 856
    .line 857
    .line 858
    move-result v2

    .line 859
    if-eqz v2, :cond_37

    .line 860
    .line 861
    iput v7, v3, Lm0/s;->h:I

    .line 862
    .line 863
    :cond_37
    new-instance v2, Lm0/t;

    .line 864
    .line 865
    invoke-direct {v2, v3}, Lm0/t;-><init>(Lm0/s;)V

    .line 866
    .line 867
    .line 868
    iput-object v2, v0, LA1/b;->l:Lm0/t;

    .line 869
    .line 870
    iget-object v3, v0, LA1/b;->g:LW0/L;

    .line 871
    .line 872
    invoke-interface {v3, v2}, LW0/L;->b(Lm0/t;)V

    .line 873
    .line 874
    .line 875
    :cond_38
    iput v5, v0, LA1/b;->m:I

    .line 876
    .line 877
    const-wide/32 v2, 0xf4240

    .line 878
    .line 879
    .line 880
    int-to-long v4, v4

    .line 881
    mul-long v4, v4, v2

    .line 882
    .line 883
    iget-object v2, v0, LA1/b;->l:Lm0/t;

    .line 884
    .line 885
    iget v2, v2, Lm0/t;->H:I

    .line 886
    .line 887
    int-to-long v2, v2

    .line 888
    div-long/2addr v4, v2

    .line 889
    iput-wide v4, v0, LA1/b;->k:J

    .line 890
    .line 891
    const/4 v2, 0x0

    .line 892
    invoke-virtual {v6, v2}, Lp0/E;->L(I)V

    .line 893
    .line 894
    .line 895
    iget-object v2, v0, LA1/b;->g:LW0/L;

    .line 896
    .line 897
    const/16 v3, 0x80

    .line 898
    .line 899
    invoke-interface {v2, v3, v6}, LW0/L;->e(ILp0/E;)V

    .line 900
    .line 901
    .line 902
    const/4 v2, 0x2

    .line 903
    iput v2, v0, LA1/b;->h:I

    .line 904
    .line 905
    goto/16 :goto_0

    .line 906
    .line 907
    :cond_39
    :goto_18
    invoke-virtual/range {p1 .. p1}, Lp0/E;->a()I

    .line 908
    .line 909
    .line 910
    move-result v2

    .line 911
    if-lez v2, :cond_0

    .line 912
    .line 913
    iget-boolean v2, v0, LA1/b;->j:Z

    .line 914
    .line 915
    if-nez v2, :cond_3b

    .line 916
    .line 917
    invoke-virtual/range {p1 .. p1}, Lp0/E;->z()I

    .line 918
    .line 919
    .line 920
    move-result v2

    .line 921
    if-ne v2, v5, :cond_3a

    .line 922
    .line 923
    const/4 v12, 0x1

    .line 924
    goto :goto_19

    .line 925
    :cond_3a
    const/4 v12, 0x0

    .line 926
    :goto_19
    iput-boolean v12, v0, LA1/b;->j:Z

    .line 927
    .line 928
    goto :goto_18

    .line 929
    :cond_3b
    invoke-virtual/range {p1 .. p1}, Lp0/E;->z()I

    .line 930
    .line 931
    .line 932
    move-result v2

    .line 933
    const/16 v3, 0x77

    .line 934
    .line 935
    if-ne v2, v3, :cond_3c

    .line 936
    .line 937
    const/4 v12, 0x0

    .line 938
    iput-boolean v12, v0, LA1/b;->j:Z

    .line 939
    .line 940
    const/4 v4, 0x1

    .line 941
    iput v4, v0, LA1/b;->h:I

    .line 942
    .line 943
    iget-object v2, v6, Lp0/E;->a:[B

    .line 944
    .line 945
    aput-byte v5, v2, v12

    .line 946
    .line 947
    aput-byte v3, v2, v4

    .line 948
    .line 949
    const/4 v3, 0x2

    .line 950
    iput v3, v0, LA1/b;->i:I

    .line 951
    .line 952
    goto/16 :goto_0

    .line 953
    .line 954
    :cond_3c
    const/4 v3, 0x2

    .line 955
    const/4 v4, 0x1

    .line 956
    const/4 v12, 0x0

    .line 957
    if-ne v2, v5, :cond_3d

    .line 958
    .line 959
    const/4 v2, 0x1

    .line 960
    goto :goto_1a

    .line 961
    :cond_3d
    const/4 v2, 0x0

    .line 962
    :goto_1a
    iput-boolean v2, v0, LA1/b;->j:Z

    .line 963
    .line 964
    goto :goto_18

    .line 965
    :cond_3e
    return-void
.end method

.method public final c(LW0/u;LA1/I;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, LA1/I;->a()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, LA1/I;->b()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p2, LA1/I;->e:Ljava/lang/String;

    .line 8
    .line 9
    iput-object v0, p0, LA1/b;->f:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {p2}, LA1/I;->b()V

    .line 12
    .line 13
    .line 14
    iget p2, p2, LA1/I;->d:I

    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    invoke-interface {p1, p2, v0}, LW0/u;->t(II)LW0/L;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iput-object p1, p0, LA1/b;->g:LW0/L;

    .line 22
    .line 23
    return-void
.end method

.method public final d(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public final e(IJ)V
    .locals 0

    .line 1
    iput-wide p2, p0, LA1/b;->n:J

    .line 2
    .line 3
    return-void
.end method
