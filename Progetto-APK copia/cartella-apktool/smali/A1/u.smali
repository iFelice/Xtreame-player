.class public final LA1/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LA1/j;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I

.field public final c:Lp0/E;

.field public final d:Lp0/D;

.field public e:LW0/L;

.field public f:Ljava/lang/String;

.field public g:Lm0/t;

.field public h:I

.field public i:I

.field public j:I

.field public k:I

.field public l:J

.field public m:Z

.field public n:I

.field public o:I

.field public p:I

.field public q:Z

.field public r:J

.field public s:I

.field public t:J

.field public u:I

.field public v:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LA1/u;->a:Ljava/lang/String;

    .line 5
    .line 6
    iput p2, p0, LA1/u;->b:I

    .line 7
    .line 8
    new-instance p1, Lp0/E;

    .line 9
    .line 10
    const/16 p2, 0x400

    .line 11
    .line 12
    invoke-direct {p1, p2}, Lp0/E;-><init>(I)V

    .line 13
    .line 14
    .line 15
    iput-object p1, p0, LA1/u;->c:Lp0/E;

    .line 16
    .line 17
    new-instance p2, Lp0/D;

    .line 18
    .line 19
    iget-object p1, p1, Lp0/E;->a:[B

    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    const/4 v1, 0x0

    .line 23
    invoke-direct {p2, p1, v0, v1}, Lp0/D;-><init>([BILjava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    iput-object p2, p0, LA1/u;->d:Lp0/D;

    .line 27
    .line 28
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    iput-wide p1, p0, LA1/u;->l:J

    .line 34
    .line 35
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, LA1/u;->h:I

    .line 3
    .line 4
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    iput-wide v1, p0, LA1/u;->l:J

    .line 10
    .line 11
    iput-boolean v0, p0, LA1/u;->m:Z

    .line 12
    .line 13
    return-void
.end method

.method public final b(Lp0/E;)V
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, LA1/u;->e:LW0/L;

    .line 4
    .line 5
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/H1;->j(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lp0/E;->a()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-lez v1, :cond_1e

    .line 13
    .line 14
    iget v1, v0, LA1/u;->h:I

    .line 15
    .line 16
    const/4 v2, 0x1

    .line 17
    const/16 v3, 0x56

    .line 18
    .line 19
    if-eqz v1, :cond_1d

    .line 20
    .line 21
    const/4 v4, 0x2

    .line 22
    const/4 v5, 0x0

    .line 23
    if-eq v1, v2, :cond_1b

    .line 24
    .line 25
    const/4 v3, 0x3

    .line 26
    const/16 v6, 0x8

    .line 27
    .line 28
    iget-object v7, v0, LA1/u;->c:Lp0/E;

    .line 29
    .line 30
    iget-object v8, v0, LA1/u;->d:Lp0/D;

    .line 31
    .line 32
    if-eq v1, v4, :cond_19

    .line 33
    .line 34
    if-ne v1, v3, :cond_18

    .line 35
    .line 36
    invoke-virtual/range {p1 .. p1}, Lp0/E;->a()I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    iget v9, v0, LA1/u;->j:I

    .line 41
    .line 42
    iget v10, v0, LA1/u;->i:I

    .line 43
    .line 44
    sub-int/2addr v9, v10

    .line 45
    invoke-static {v1, v9}, Ljava/lang/Math;->min(II)I

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    iget-object v9, v8, Lp0/D;->b:[B

    .line 50
    .line 51
    iget v10, v0, LA1/u;->i:I

    .line 52
    .line 53
    move-object/from16 v11, p1

    .line 54
    .line 55
    invoke-virtual {v11, v10, v9, v1}, Lp0/E;->j(I[BI)V

    .line 56
    .line 57
    .line 58
    iget v9, v0, LA1/u;->i:I

    .line 59
    .line 60
    add-int/2addr v9, v1

    .line 61
    iput v9, v0, LA1/u;->i:I

    .line 62
    .line 63
    iget v1, v0, LA1/u;->j:I

    .line 64
    .line 65
    if-ne v9, v1, :cond_0

    .line 66
    .line 67
    invoke-virtual {v8, v5}, Lp0/D;->r(I)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v8}, Lp0/D;->h()Z

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    const/4 v9, 0x0

    .line 75
    if-nez v1, :cond_f

    .line 76
    .line 77
    iput-boolean v2, v0, LA1/u;->m:Z

    .line 78
    .line 79
    invoke-virtual {v8, v2}, Lp0/D;->i(I)I

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    if-ne v1, v2, :cond_1

    .line 84
    .line 85
    invoke-virtual {v8, v2}, Lp0/D;->i(I)I

    .line 86
    .line 87
    .line 88
    move-result v10

    .line 89
    goto :goto_1

    .line 90
    :cond_1
    const/4 v10, 0x0

    .line 91
    :goto_1
    iput v10, v0, LA1/u;->n:I

    .line 92
    .line 93
    if-nez v10, :cond_e

    .line 94
    .line 95
    if-ne v1, v2, :cond_2

    .line 96
    .line 97
    invoke-virtual {v8, v4}, Lp0/D;->i(I)I

    .line 98
    .line 99
    .line 100
    move-result v10

    .line 101
    add-int/2addr v10, v2

    .line 102
    mul-int/lit8 v10, v10, 0x8

    .line 103
    .line 104
    invoke-virtual {v8, v10}, Lp0/D;->i(I)I

    .line 105
    .line 106
    .line 107
    :cond_2
    invoke-virtual {v8}, Lp0/D;->h()Z

    .line 108
    .line 109
    .line 110
    move-result v10

    .line 111
    if-eqz v10, :cond_d

    .line 112
    .line 113
    const/4 v10, 0x6

    .line 114
    invoke-virtual {v8, v10}, Lp0/D;->i(I)I

    .line 115
    .line 116
    .line 117
    move-result v12

    .line 118
    iput v12, v0, LA1/u;->o:I

    .line 119
    .line 120
    const/4 v12, 0x4

    .line 121
    invoke-virtual {v8, v12}, Lp0/D;->i(I)I

    .line 122
    .line 123
    .line 124
    move-result v13

    .line 125
    invoke-virtual {v8, v3}, Lp0/D;->i(I)I

    .line 126
    .line 127
    .line 128
    move-result v14

    .line 129
    if-nez v13, :cond_c

    .line 130
    .line 131
    if-nez v14, :cond_c

    .line 132
    .line 133
    if-nez v1, :cond_3

    .line 134
    .line 135
    invoke-virtual {v8}, Lp0/D;->g()I

    .line 136
    .line 137
    .line 138
    move-result v13

    .line 139
    invoke-virtual {v8}, Lp0/D;->b()I

    .line 140
    .line 141
    .line 142
    move-result v14

    .line 143
    invoke-static {v8, v2}, LW0/a;->g(Lp0/D;Z)LW0/r;

    .line 144
    .line 145
    .line 146
    move-result-object v15

    .line 147
    iget-object v5, v15, LW0/r;->a:Ljava/lang/String;

    .line 148
    .line 149
    iput-object v5, v0, LA1/u;->v:Ljava/lang/String;

    .line 150
    .line 151
    iget v5, v15, LW0/r;->b:I

    .line 152
    .line 153
    iput v5, v0, LA1/u;->s:I

    .line 154
    .line 155
    iget v5, v15, LW0/r;->c:I

    .line 156
    .line 157
    iput v5, v0, LA1/u;->u:I

    .line 158
    .line 159
    invoke-virtual {v8}, Lp0/D;->b()I

    .line 160
    .line 161
    .line 162
    move-result v5

    .line 163
    sub-int/2addr v14, v5

    .line 164
    invoke-virtual {v8, v13}, Lp0/D;->r(I)V

    .line 165
    .line 166
    .line 167
    add-int/lit8 v5, v14, 0x7

    .line 168
    .line 169
    div-int/2addr v5, v6

    .line 170
    new-array v5, v5, [B

    .line 171
    .line 172
    invoke-virtual {v8, v5, v14}, Lp0/D;->j([BI)V

    .line 173
    .line 174
    .line 175
    new-instance v13, Lm0/s;

    .line 176
    .line 177
    invoke-direct {v13}, Lm0/s;-><init>()V

    .line 178
    .line 179
    .line 180
    iget-object v14, v0, LA1/u;->f:Ljava/lang/String;

    .line 181
    .line 182
    iput-object v14, v13, Lm0/s;->a:Ljava/lang/String;

    .line 183
    .line 184
    const-string v14, "video/mp2t"

    .line 185
    .line 186
    invoke-static {v14}, Lm0/O;->p(Ljava/lang/String;)Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v14

    .line 190
    iput-object v14, v13, Lm0/s;->m:Ljava/lang/String;

    .line 191
    .line 192
    const-string v14, "audio/mp4a-latm"

    .line 193
    .line 194
    invoke-static {v14}, Lm0/O;->p(Ljava/lang/String;)Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v14

    .line 198
    iput-object v14, v13, Lm0/s;->n:Ljava/lang/String;

    .line 199
    .line 200
    iget-object v14, v0, LA1/u;->v:Ljava/lang/String;

    .line 201
    .line 202
    iput-object v14, v13, Lm0/s;->j:Ljava/lang/String;

    .line 203
    .line 204
    iget v14, v0, LA1/u;->u:I

    .line 205
    .line 206
    iput v14, v13, Lm0/s;->F:I

    .line 207
    .line 208
    iget v14, v0, LA1/u;->s:I

    .line 209
    .line 210
    iput v14, v13, Lm0/s;->G:I

    .line 211
    .line 212
    invoke-static {v5}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 213
    .line 214
    .line 215
    move-result-object v5

    .line 216
    iput-object v5, v13, Lm0/s;->q:Ljava/util/List;

    .line 217
    .line 218
    iget-object v5, v0, LA1/u;->a:Ljava/lang/String;

    .line 219
    .line 220
    iput-object v5, v13, Lm0/s;->d:Ljava/lang/String;

    .line 221
    .line 222
    iget v5, v0, LA1/u;->b:I

    .line 223
    .line 224
    iput v5, v13, Lm0/s;->f:I

    .line 225
    .line 226
    new-instance v5, Lm0/t;

    .line 227
    .line 228
    invoke-direct {v5, v13}, Lm0/t;-><init>(Lm0/s;)V

    .line 229
    .line 230
    .line 231
    iget-object v13, v0, LA1/u;->g:Lm0/t;

    .line 232
    .line 233
    invoke-virtual {v5, v13}, Lm0/t;->equals(Ljava/lang/Object;)Z

    .line 234
    .line 235
    .line 236
    move-result v13

    .line 237
    if-nez v13, :cond_4

    .line 238
    .line 239
    iput-object v5, v0, LA1/u;->g:Lm0/t;

    .line 240
    .line 241
    iget v13, v5, Lm0/t;->H:I

    .line 242
    .line 243
    int-to-long v13, v13

    .line 244
    const-wide/32 v16, 0x3d090000

    .line 245
    .line 246
    .line 247
    div-long v13, v16, v13

    .line 248
    .line 249
    iput-wide v13, v0, LA1/u;->t:J

    .line 250
    .line 251
    iget-object v13, v0, LA1/u;->e:LW0/L;

    .line 252
    .line 253
    invoke-interface {v13, v5}, LW0/L;->b(Lm0/t;)V

    .line 254
    .line 255
    .line 256
    goto :goto_2

    .line 257
    :cond_3
    invoke-virtual {v8, v4}, Lp0/D;->i(I)I

    .line 258
    .line 259
    .line 260
    move-result v5

    .line 261
    add-int/2addr v5, v2

    .line 262
    mul-int/lit8 v5, v5, 0x8

    .line 263
    .line 264
    invoke-virtual {v8, v5}, Lp0/D;->i(I)I

    .line 265
    .line 266
    .line 267
    move-result v5

    .line 268
    int-to-long v13, v5

    .line 269
    long-to-int v5, v13

    .line 270
    invoke-virtual {v8}, Lp0/D;->b()I

    .line 271
    .line 272
    .line 273
    move-result v13

    .line 274
    invoke-static {v8, v2}, LW0/a;->g(Lp0/D;Z)LW0/r;

    .line 275
    .line 276
    .line 277
    move-result-object v14

    .line 278
    iget-object v15, v14, LW0/r;->a:Ljava/lang/String;

    .line 279
    .line 280
    iput-object v15, v0, LA1/u;->v:Ljava/lang/String;

    .line 281
    .line 282
    iget v15, v14, LW0/r;->b:I

    .line 283
    .line 284
    iput v15, v0, LA1/u;->s:I

    .line 285
    .line 286
    iget v14, v14, LW0/r;->c:I

    .line 287
    .line 288
    iput v14, v0, LA1/u;->u:I

    .line 289
    .line 290
    invoke-virtual {v8}, Lp0/D;->b()I

    .line 291
    .line 292
    .line 293
    move-result v14

    .line 294
    sub-int/2addr v13, v14

    .line 295
    sub-int/2addr v5, v13

    .line 296
    invoke-virtual {v8, v5}, Lp0/D;->u(I)V

    .line 297
    .line 298
    .line 299
    :cond_4
    :goto_2
    invoke-virtual {v8, v3}, Lp0/D;->i(I)I

    .line 300
    .line 301
    .line 302
    move-result v5

    .line 303
    iput v5, v0, LA1/u;->p:I

    .line 304
    .line 305
    if-eqz v5, :cond_9

    .line 306
    .line 307
    if-eq v5, v2, :cond_8

    .line 308
    .line 309
    if-eq v5, v3, :cond_7

    .line 310
    .line 311
    if-eq v5, v12, :cond_7

    .line 312
    .line 313
    const/4 v3, 0x5

    .line 314
    if-eq v5, v3, :cond_7

    .line 315
    .line 316
    if-eq v5, v10, :cond_6

    .line 317
    .line 318
    const/4 v3, 0x7

    .line 319
    if-ne v5, v3, :cond_5

    .line 320
    .line 321
    goto :goto_3

    .line 322
    :cond_5
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 323
    .line 324
    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 325
    .line 326
    .line 327
    throw v1

    .line 328
    :cond_6
    :goto_3
    invoke-virtual {v8, v2}, Lp0/D;->u(I)V

    .line 329
    .line 330
    .line 331
    goto :goto_4

    .line 332
    :cond_7
    invoke-virtual {v8, v10}, Lp0/D;->u(I)V

    .line 333
    .line 334
    .line 335
    goto :goto_4

    .line 336
    :cond_8
    const/16 v3, 0x9

    .line 337
    .line 338
    invoke-virtual {v8, v3}, Lp0/D;->u(I)V

    .line 339
    .line 340
    .line 341
    goto :goto_4

    .line 342
    :cond_9
    invoke-virtual {v8, v6}, Lp0/D;->u(I)V

    .line 343
    .line 344
    .line 345
    :goto_4
    invoke-virtual {v8}, Lp0/D;->h()Z

    .line 346
    .line 347
    .line 348
    move-result v3

    .line 349
    iput-boolean v3, v0, LA1/u;->q:Z

    .line 350
    .line 351
    const-wide/16 v12, 0x0

    .line 352
    .line 353
    iput-wide v12, v0, LA1/u;->r:J

    .line 354
    .line 355
    if-eqz v3, :cond_b

    .line 356
    .line 357
    if-ne v1, v2, :cond_a

    .line 358
    .line 359
    invoke-virtual {v8, v4}, Lp0/D;->i(I)I

    .line 360
    .line 361
    .line 362
    move-result v1

    .line 363
    add-int/2addr v1, v2

    .line 364
    mul-int/lit8 v1, v1, 0x8

    .line 365
    .line 366
    invoke-virtual {v8, v1}, Lp0/D;->i(I)I

    .line 367
    .line 368
    .line 369
    move-result v1

    .line 370
    int-to-long v3, v1

    .line 371
    iput-wide v3, v0, LA1/u;->r:J

    .line 372
    .line 373
    goto :goto_5

    .line 374
    :cond_a
    invoke-virtual {v8}, Lp0/D;->h()Z

    .line 375
    .line 376
    .line 377
    move-result v1

    .line 378
    iget-wide v3, v0, LA1/u;->r:J

    .line 379
    .line 380
    shl-long/2addr v3, v6

    .line 381
    invoke-virtual {v8, v6}, Lp0/D;->i(I)I

    .line 382
    .line 383
    .line 384
    move-result v5

    .line 385
    int-to-long v12, v5

    .line 386
    add-long/2addr v3, v12

    .line 387
    iput-wide v3, v0, LA1/u;->r:J

    .line 388
    .line 389
    if-nez v1, :cond_a

    .line 390
    .line 391
    :cond_b
    :goto_5
    invoke-virtual {v8}, Lp0/D;->h()Z

    .line 392
    .line 393
    .line 394
    move-result v1

    .line 395
    if-eqz v1, :cond_11

    .line 396
    .line 397
    invoke-virtual {v8, v6}, Lp0/D;->u(I)V

    .line 398
    .line 399
    .line 400
    goto :goto_7

    .line 401
    :cond_c
    invoke-static {v9, v9}, Lm0/P;->a(Ljava/lang/String;Ljava/lang/RuntimeException;)Lm0/P;

    .line 402
    .line 403
    .line 404
    move-result-object v1

    .line 405
    throw v1

    .line 406
    :cond_d
    invoke-static {v9, v9}, Lm0/P;->a(Ljava/lang/String;Ljava/lang/RuntimeException;)Lm0/P;

    .line 407
    .line 408
    .line 409
    move-result-object v1

    .line 410
    throw v1

    .line 411
    :cond_e
    invoke-static {v9, v9}, Lm0/P;->a(Ljava/lang/String;Ljava/lang/RuntimeException;)Lm0/P;

    .line 412
    .line 413
    .line 414
    move-result-object v1

    .line 415
    throw v1

    .line 416
    :cond_f
    iget-boolean v1, v0, LA1/u;->m:Z

    .line 417
    .line 418
    if-nez v1, :cond_11

    .line 419
    .line 420
    :cond_10
    :goto_6
    const/4 v1, 0x0

    .line 421
    goto :goto_a

    .line 422
    :cond_11
    :goto_7
    iget v1, v0, LA1/u;->n:I

    .line 423
    .line 424
    if-nez v1, :cond_17

    .line 425
    .line 426
    iget v1, v0, LA1/u;->o:I

    .line 427
    .line 428
    if-nez v1, :cond_16

    .line 429
    .line 430
    iget v1, v0, LA1/u;->p:I

    .line 431
    .line 432
    if-nez v1, :cond_15

    .line 433
    .line 434
    const/4 v1, 0x0

    .line 435
    :cond_12
    invoke-virtual {v8, v6}, Lp0/D;->i(I)I

    .line 436
    .line 437
    .line 438
    move-result v3

    .line 439
    add-int/2addr v1, v3

    .line 440
    const/16 v4, 0xff

    .line 441
    .line 442
    if-eq v3, v4, :cond_12

    .line 443
    .line 444
    invoke-virtual {v8}, Lp0/D;->g()I

    .line 445
    .line 446
    .line 447
    move-result v3

    .line 448
    and-int/lit8 v4, v3, 0x7

    .line 449
    .line 450
    if-nez v4, :cond_13

    .line 451
    .line 452
    shr-int/lit8 v3, v3, 0x3

    .line 453
    .line 454
    invoke-virtual {v7, v3}, Lp0/E;->L(I)V

    .line 455
    .line 456
    .line 457
    goto :goto_8

    .line 458
    :cond_13
    iget-object v3, v7, Lp0/E;->a:[B

    .line 459
    .line 460
    mul-int/lit8 v4, v1, 0x8

    .line 461
    .line 462
    invoke-virtual {v8, v3, v4}, Lp0/D;->j([BI)V

    .line 463
    .line 464
    .line 465
    const/4 v3, 0x0

    .line 466
    invoke-virtual {v7, v3}, Lp0/E;->L(I)V

    .line 467
    .line 468
    .line 469
    :goto_8
    iget-object v3, v0, LA1/u;->e:LW0/L;

    .line 470
    .line 471
    invoke-interface {v3, v1, v7}, LW0/L;->e(ILp0/E;)V

    .line 472
    .line 473
    .line 474
    iget-wide v3, v0, LA1/u;->l:J

    .line 475
    .line 476
    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    .line 477
    .line 478
    .line 479
    .line 480
    .line 481
    cmp-long v7, v3, v5

    .line 482
    .line 483
    if-eqz v7, :cond_14

    .line 484
    .line 485
    goto :goto_9

    .line 486
    :cond_14
    const/4 v2, 0x0

    .line 487
    :goto_9
    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/H1;->i(Z)V

    .line 488
    .line 489
    .line 490
    iget-object v2, v0, LA1/u;->e:LW0/L;

    .line 491
    .line 492
    iget-wide v3, v0, LA1/u;->l:J

    .line 493
    .line 494
    const/16 v21, 0x0

    .line 495
    .line 496
    const/16 v22, 0x0

    .line 497
    .line 498
    const/16 v19, 0x1

    .line 499
    .line 500
    move-object/from16 v16, v2

    .line 501
    .line 502
    move-wide/from16 v17, v3

    .line 503
    .line 504
    move/from16 v20, v1

    .line 505
    .line 506
    invoke-interface/range {v16 .. v22}, LW0/L;->d(JIIILW0/K;)V

    .line 507
    .line 508
    .line 509
    iget-wide v1, v0, LA1/u;->l:J

    .line 510
    .line 511
    iget-wide v3, v0, LA1/u;->t:J

    .line 512
    .line 513
    add-long/2addr v1, v3

    .line 514
    iput-wide v1, v0, LA1/u;->l:J

    .line 515
    .line 516
    iget-boolean v1, v0, LA1/u;->q:Z

    .line 517
    .line 518
    if-eqz v1, :cond_10

    .line 519
    .line 520
    iget-wide v1, v0, LA1/u;->r:J

    .line 521
    .line 522
    long-to-int v2, v1

    .line 523
    invoke-virtual {v8, v2}, Lp0/D;->u(I)V

    .line 524
    .line 525
    .line 526
    goto :goto_6

    .line 527
    :goto_a
    iput v1, v0, LA1/u;->h:I

    .line 528
    .line 529
    goto/16 :goto_0

    .line 530
    .line 531
    :cond_15
    invoke-static {v9, v9}, Lm0/P;->a(Ljava/lang/String;Ljava/lang/RuntimeException;)Lm0/P;

    .line 532
    .line 533
    .line 534
    move-result-object v1

    .line 535
    throw v1

    .line 536
    :cond_16
    invoke-static {v9, v9}, Lm0/P;->a(Ljava/lang/String;Ljava/lang/RuntimeException;)Lm0/P;

    .line 537
    .line 538
    .line 539
    move-result-object v1

    .line 540
    throw v1

    .line 541
    :cond_17
    invoke-static {v9, v9}, Lm0/P;->a(Ljava/lang/String;Ljava/lang/RuntimeException;)Lm0/P;

    .line 542
    .line 543
    .line 544
    move-result-object v1

    .line 545
    throw v1

    .line 546
    :cond_18
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 547
    .line 548
    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 549
    .line 550
    .line 551
    throw v1

    .line 552
    :cond_19
    move-object/from16 v11, p1

    .line 553
    .line 554
    iget v1, v0, LA1/u;->k:I

    .line 555
    .line 556
    and-int/lit16 v1, v1, -0xe1

    .line 557
    .line 558
    shl-int/2addr v1, v6

    .line 559
    invoke-virtual/range {p1 .. p1}, Lp0/E;->z()I

    .line 560
    .line 561
    .line 562
    move-result v2

    .line 563
    or-int/2addr v1, v2

    .line 564
    iput v1, v0, LA1/u;->j:I

    .line 565
    .line 566
    iget-object v2, v7, Lp0/E;->a:[B

    .line 567
    .line 568
    array-length v2, v2

    .line 569
    if-le v1, v2, :cond_1a

    .line 570
    .line 571
    invoke-virtual {v7, v1}, Lp0/E;->I(I)V

    .line 572
    .line 573
    .line 574
    iget-object v1, v7, Lp0/E;->a:[B

    .line 575
    .line 576
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 577
    .line 578
    .line 579
    array-length v2, v1

    .line 580
    invoke-virtual {v8, v2, v1}, Lp0/D;->p(I[B)V

    .line 581
    .line 582
    .line 583
    :cond_1a
    const/4 v1, 0x0

    .line 584
    iput v1, v0, LA1/u;->i:I

    .line 585
    .line 586
    iput v3, v0, LA1/u;->h:I

    .line 587
    .line 588
    goto/16 :goto_0

    .line 589
    .line 590
    :cond_1b
    move-object/from16 v11, p1

    .line 591
    .line 592
    invoke-virtual/range {p1 .. p1}, Lp0/E;->z()I

    .line 593
    .line 594
    .line 595
    move-result v1

    .line 596
    and-int/lit16 v2, v1, 0xe0

    .line 597
    .line 598
    const/16 v5, 0xe0

    .line 599
    .line 600
    if-ne v2, v5, :cond_1c

    .line 601
    .line 602
    iput v1, v0, LA1/u;->k:I

    .line 603
    .line 604
    iput v4, v0, LA1/u;->h:I

    .line 605
    .line 606
    goto/16 :goto_0

    .line 607
    .line 608
    :cond_1c
    if-eq v1, v3, :cond_0

    .line 609
    .line 610
    const/4 v1, 0x0

    .line 611
    iput v1, v0, LA1/u;->h:I

    .line 612
    .line 613
    goto/16 :goto_0

    .line 614
    .line 615
    :cond_1d
    move-object/from16 v11, p1

    .line 616
    .line 617
    invoke-virtual/range {p1 .. p1}, Lp0/E;->z()I

    .line 618
    .line 619
    .line 620
    move-result v1

    .line 621
    if-ne v1, v3, :cond_0

    .line 622
    .line 623
    iput v2, v0, LA1/u;->h:I

    .line 624
    .line 625
    goto/16 :goto_0

    .line 626
    .line 627
    :cond_1e
    return-void
.end method

.method public final c(LW0/u;LA1/I;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, LA1/I;->a()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, LA1/I;->b()V

    .line 5
    .line 6
    .line 7
    iget v0, p2, LA1/I;->d:I

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    invoke-interface {p1, v0, v1}, LW0/u;->t(II)LW0/L;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iput-object p1, p0, LA1/u;->e:LW0/L;

    .line 15
    .line 16
    invoke-virtual {p2}, LA1/I;->b()V

    .line 17
    .line 18
    .line 19
    iget-object p1, p2, LA1/I;->e:Ljava/lang/String;

    .line 20
    .line 21
    iput-object p1, p0, LA1/u;->f:Ljava/lang/String;

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
    iput-wide p2, p0, LA1/u;->l:J

    .line 2
    .line 3
    return-void
.end method
