.class public final LA1/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LA1/j;


# instance fields
.field public final a:Lp0/E;

.field public final b:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final c:Ljava/lang/String;

.field public final d:I

.field public final e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:LW0/L;

.field public h:I

.field public i:I

.field public j:I

.field public k:J

.field public l:Lm0/t;

.field public m:I

.field public n:I

.field public o:I

.field public p:I

.field public q:J


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lp0/E;

    .line 5
    .line 6
    new-array p2, p2, [B

    .line 7
    .line 8
    invoke-direct {v0, p2}, Lp0/E;-><init>([B)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, LA1/h;->a:Lp0/E;

    .line 12
    .line 13
    const/4 p2, 0x0

    .line 14
    iput p2, p0, LA1/h;->h:I

    .line 15
    .line 16
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    iput-wide v0, p0, LA1/h;->q:J

    .line 22
    .line 23
    new-instance p2, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 24
    .line 25
    invoke-direct {p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 26
    .line 27
    .line 28
    iput-object p2, p0, LA1/h;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 29
    .line 30
    const/4 p2, -0x1

    .line 31
    iput p2, p0, LA1/h;->o:I

    .line 32
    .line 33
    iput p2, p0, LA1/h;->p:I

    .line 34
    .line 35
    iput-object p3, p0, LA1/h;->c:Ljava/lang/String;

    .line 36
    .line 37
    iput p1, p0, LA1/h;->d:I

    .line 38
    .line 39
    const-string p1, "video/mp2t"

    .line 40
    .line 41
    iput-object p1, p0, LA1/h;->e:Ljava/lang/String;

    .line 42
    .line 43
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, LA1/h;->h:I

    .line 3
    .line 4
    iput v0, p0, LA1/h;->i:I

    .line 5
    .line 6
    iput v0, p0, LA1/h;->j:I

    .line 7
    .line 8
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    iput-wide v1, p0, LA1/h;->q:J

    .line 14
    .line 15
    iget-object v1, p0, LA1/h;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 16
    .line 17
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final b(Lp0/E;)V
    .locals 34

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, LA1/h;->g:LW0/L;

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
    if-lez v2, :cond_3c

    .line 15
    .line 16
    iget v2, v0, LA1/h;->h:I

    .line 17
    .line 18
    const/16 v8, 0x8

    .line 19
    .line 20
    const/4 v10, 0x4

    .line 21
    const v16, 0xbb80

    .line 22
    .line 23
    .line 24
    const v6, 0x40411bf2

    .line 25
    .line 26
    .line 27
    const/4 v7, 0x5

    .line 28
    const/16 v15, 0x20

    .line 29
    .line 30
    const-wide v18, -0x7fffffffffffffffL    # -4.9E-324

    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    const/4 v3, 0x2

    .line 36
    const/4 v11, 0x0

    .line 37
    iget-object v5, v0, LA1/h;->a:Lp0/E;

    .line 38
    .line 39
    packed-switch v2, :pswitch_data_0

    .line 40
    .line 41
    .line 42
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 43
    .line 44
    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 45
    .line 46
    .line 47
    throw v1

    .line 48
    :pswitch_0
    invoke-virtual/range {p1 .. p1}, Lp0/E;->a()I

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    iget v3, v0, LA1/h;->m:I

    .line 53
    .line 54
    iget v4, v0, LA1/h;->i:I

    .line 55
    .line 56
    sub-int/2addr v3, v4

    .line 57
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    iget-object v3, v0, LA1/h;->g:LW0/L;

    .line 62
    .line 63
    invoke-interface {v3, v2, v1}, LW0/L;->e(ILp0/E;)V

    .line 64
    .line 65
    .line 66
    iget v3, v0, LA1/h;->i:I

    .line 67
    .line 68
    add-int/2addr v3, v2

    .line 69
    iput v3, v0, LA1/h;->i:I

    .line 70
    .line 71
    iget v2, v0, LA1/h;->m:I

    .line 72
    .line 73
    if-ne v3, v2, :cond_0

    .line 74
    .line 75
    iget-wide v2, v0, LA1/h;->q:J

    .line 76
    .line 77
    cmp-long v4, v2, v18

    .line 78
    .line 79
    if-eqz v4, :cond_1

    .line 80
    .line 81
    const/4 v2, 0x1

    .line 82
    goto :goto_1

    .line 83
    :cond_1
    const/4 v2, 0x0

    .line 84
    :goto_1
    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/H1;->i(Z)V

    .line 85
    .line 86
    .line 87
    iget-object v3, v0, LA1/h;->g:LW0/L;

    .line 88
    .line 89
    iget-wide v4, v0, LA1/h;->q:J

    .line 90
    .line 91
    iget v2, v0, LA1/h;->n:I

    .line 92
    .line 93
    if-ne v2, v10, :cond_2

    .line 94
    .line 95
    const/4 v6, 0x0

    .line 96
    goto :goto_2

    .line 97
    :cond_2
    const/4 v6, 0x1

    .line 98
    :goto_2
    iget v7, v0, LA1/h;->m:I

    .line 99
    .line 100
    const/4 v8, 0x0

    .line 101
    const/4 v9, 0x0

    .line 102
    invoke-interface/range {v3 .. v9}, LW0/L;->d(JIIILW0/K;)V

    .line 103
    .line 104
    .line 105
    iget-wide v2, v0, LA1/h;->q:J

    .line 106
    .line 107
    iget-wide v4, v0, LA1/h;->k:J

    .line 108
    .line 109
    add-long/2addr v2, v4

    .line 110
    iput-wide v2, v0, LA1/h;->q:J

    .line 111
    .line 112
    iput v11, v0, LA1/h;->h:I

    .line 113
    .line 114
    goto :goto_0

    .line 115
    :pswitch_1
    iget-object v2, v5, Lp0/E;->a:[B

    .line 116
    .line 117
    iget v7, v0, LA1/h;->p:I

    .line 118
    .line 119
    invoke-virtual {v0, v7, v1, v2}, LA1/h;->f(ILp0/E;[B)Z

    .line 120
    .line 121
    .line 122
    move-result v2

    .line 123
    if-eqz v2, :cond_0

    .line 124
    .line 125
    iget-object v2, v5, Lp0/E;->a:[B

    .line 126
    .line 127
    iget-object v7, v0, LA1/h;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 128
    .line 129
    invoke-static {v2}, LW0/a;->d([B)Lp0/D;

    .line 130
    .line 131
    .line 132
    move-result-object v9

    .line 133
    invoke-virtual {v9, v15}, Lp0/D;->i(I)I

    .line 134
    .line 135
    .line 136
    move-result v15

    .line 137
    if-ne v15, v6, :cond_3

    .line 138
    .line 139
    const/4 v6, 0x1

    .line 140
    goto :goto_3

    .line 141
    :cond_3
    const/4 v6, 0x0

    .line 142
    :goto_3
    sget-object v15, LW0/a;->n:[I

    .line 143
    .line 144
    invoke-static {v9, v15}, LW0/a;->j(Lp0/D;[I)I

    .line 145
    .line 146
    .line 147
    move-result v15

    .line 148
    add-int/lit8 v20, v15, 0x1

    .line 149
    .line 150
    if-eqz v6, :cond_e

    .line 151
    .line 152
    invoke-virtual {v9}, Lp0/D;->h()Z

    .line 153
    .line 154
    .line 155
    move-result v17

    .line 156
    if-eqz v17, :cond_d

    .line 157
    .line 158
    add-int/lit8 v11, v15, -0x1

    .line 159
    .line 160
    aget-byte v17, v2, v11

    .line 161
    .line 162
    shl-int/lit8 v8, v17, 0x8

    .line 163
    .line 164
    const v17, 0xffff

    .line 165
    .line 166
    .line 167
    and-int v8, v8, v17

    .line 168
    .line 169
    aget-byte v15, v2, v15

    .line 170
    .line 171
    and-int/lit16 v15, v15, 0xff

    .line 172
    .line 173
    or-int/2addr v8, v15

    .line 174
    sget-object v15, Lp0/M;->a:Ljava/lang/String;

    .line 175
    .line 176
    const v13, 0xffff

    .line 177
    .line 178
    .line 179
    const/4 v15, 0x0

    .line 180
    :goto_4
    if-ge v15, v11, :cond_4

    .line 181
    .line 182
    aget-byte v4, v2, v15

    .line 183
    .line 184
    and-int/lit16 v14, v4, 0xff

    .line 185
    .line 186
    shr-int/2addr v14, v10

    .line 187
    shr-int/lit8 v12, v13, 0xc

    .line 188
    .line 189
    and-int/lit16 v12, v12, 0xff

    .line 190
    .line 191
    xor-int/2addr v12, v14

    .line 192
    and-int/lit16 v12, v12, 0xff

    .line 193
    .line 194
    shl-int/lit8 v13, v13, 0x4

    .line 195
    .line 196
    and-int v13, v13, v17

    .line 197
    .line 198
    sget-object v14, Lp0/M;->l:[I

    .line 199
    .line 200
    aget v12, v14, v12

    .line 201
    .line 202
    xor-int/2addr v12, v13

    .line 203
    and-int v12, v12, v17

    .line 204
    .line 205
    and-int/lit8 v4, v4, 0xf

    .line 206
    .line 207
    shr-int/lit8 v13, v12, 0xc

    .line 208
    .line 209
    and-int/lit16 v13, v13, 0xff

    .line 210
    .line 211
    xor-int/2addr v4, v13

    .line 212
    and-int/lit16 v4, v4, 0xff

    .line 213
    .line 214
    shl-int/2addr v12, v10

    .line 215
    and-int v12, v12, v17

    .line 216
    .line 217
    aget v4, v14, v4

    .line 218
    .line 219
    xor-int/2addr v4, v12

    .line 220
    and-int v13, v4, v17

    .line 221
    .line 222
    add-int/lit8 v15, v15, 0x1

    .line 223
    .line 224
    goto :goto_4

    .line 225
    :cond_4
    if-ne v8, v13, :cond_c

    .line 226
    .line 227
    invoke-virtual {v9, v3}, Lp0/D;->i(I)I

    .line 228
    .line 229
    .line 230
    move-result v2

    .line 231
    if-eqz v2, :cond_7

    .line 232
    .line 233
    const/4 v4, 0x1

    .line 234
    if-eq v2, v4, :cond_6

    .line 235
    .line 236
    if-ne v2, v3, :cond_5

    .line 237
    .line 238
    const/16 v2, 0x180

    .line 239
    .line 240
    :goto_5
    const/4 v4, 0x3

    .line 241
    goto :goto_6

    .line 242
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 243
    .line 244
    const-string v3, "Unsupported base duration index in DTS UHD header: "

    .line 245
    .line 246
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 247
    .line 248
    .line 249
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 250
    .line 251
    .line 252
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object v1

    .line 256
    const/4 v2, 0x0

    .line 257
    invoke-static {v1, v2}, Lm0/P;->a(Ljava/lang/String;Ljava/lang/RuntimeException;)Lm0/P;

    .line 258
    .line 259
    .line 260
    move-result-object v1

    .line 261
    throw v1

    .line 262
    :cond_6
    const/16 v2, 0x1e0

    .line 263
    .line 264
    goto :goto_5

    .line 265
    :cond_7
    const/16 v2, 0x200

    .line 266
    .line 267
    goto :goto_5

    .line 268
    :goto_6
    invoke-virtual {v9, v4}, Lp0/D;->i(I)I

    .line 269
    .line 270
    .line 271
    move-result v8

    .line 272
    const/4 v4, 0x1

    .line 273
    add-int/2addr v8, v4

    .line 274
    mul-int v8, v8, v2

    .line 275
    .line 276
    invoke-virtual {v9, v3}, Lp0/D;->i(I)I

    .line 277
    .line 278
    .line 279
    move-result v2

    .line 280
    if-eqz v2, :cond_a

    .line 281
    .line 282
    if-eq v2, v4, :cond_9

    .line 283
    .line 284
    if-ne v2, v3, :cond_8

    .line 285
    .line 286
    const v14, 0xbb80

    .line 287
    .line 288
    .line 289
    goto :goto_7

    .line 290
    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 291
    .line 292
    const-string v3, "Unsupported clock rate index in DTS UHD header: "

    .line 293
    .line 294
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 295
    .line 296
    .line 297
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 298
    .line 299
    .line 300
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 301
    .line 302
    .line 303
    move-result-object v1

    .line 304
    const/4 v2, 0x0

    .line 305
    invoke-static {v1, v2}, Lm0/P;->a(Ljava/lang/String;Ljava/lang/RuntimeException;)Lm0/P;

    .line 306
    .line 307
    .line 308
    move-result-object v1

    .line 309
    throw v1

    .line 310
    :cond_9
    const v14, 0xac44

    .line 311
    .line 312
    .line 313
    goto :goto_7

    .line 314
    :cond_a
    const/16 v14, 0x7d00

    .line 315
    .line 316
    :goto_7
    invoke-virtual {v9}, Lp0/D;->h()Z

    .line 317
    .line 318
    .line 319
    move-result v2

    .line 320
    if-eqz v2, :cond_b

    .line 321
    .line 322
    const/16 v2, 0x24

    .line 323
    .line 324
    invoke-virtual {v9, v2}, Lp0/D;->u(I)V

    .line 325
    .line 326
    .line 327
    :cond_b
    invoke-virtual {v9, v3}, Lp0/D;->i(I)I

    .line 328
    .line 329
    .line 330
    move-result v2

    .line 331
    const/4 v3, 0x1

    .line 332
    shl-int v2, v3, v2

    .line 333
    .line 334
    mul-int v2, v2, v14

    .line 335
    .line 336
    int-to-long v3, v8

    .line 337
    int-to-long v10, v14

    .line 338
    sget-object v28, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    .line 339
    .line 340
    const-wide/32 v24, 0xf4240

    .line 341
    .line 342
    .line 343
    move-wide/from16 v22, v3

    .line 344
    .line 345
    move-wide/from16 v26, v10

    .line 346
    .line 347
    invoke-static/range {v22 .. v28}, Lp0/M;->Z(JJJLjava/math/RoundingMode;)J

    .line 348
    .line 349
    .line 350
    move-result-wide v3

    .line 351
    goto :goto_8

    .line 352
    :cond_c
    const-string v1, "CRC check failed"

    .line 353
    .line 354
    const/4 v2, 0x0

    .line 355
    invoke-static {v1, v2}, Lm0/P;->a(Ljava/lang/String;Ljava/lang/RuntimeException;)Lm0/P;

    .line 356
    .line 357
    .line 358
    move-result-object v1

    .line 359
    throw v1

    .line 360
    :cond_d
    const-string v1, "Only supports full channel mask-based audio presentation"

    .line 361
    .line 362
    invoke-static {v1}, Lm0/P;->c(Ljava/lang/String;)Lm0/P;

    .line 363
    .line 364
    .line 365
    move-result-object v1

    .line 366
    throw v1

    .line 367
    :cond_e
    move-wide/from16 v3, v18

    .line 368
    .line 369
    const v2, -0x7fffffff

    .line 370
    .line 371
    .line 372
    :goto_8
    const/4 v8, 0x0

    .line 373
    const/4 v10, 0x0

    .line 374
    :goto_9
    if-ge v8, v6, :cond_f

    .line 375
    .line 376
    sget-object v11, LW0/a;->o:[I

    .line 377
    .line 378
    invoke-static {v9, v11}, LW0/a;->j(Lp0/D;[I)I

    .line 379
    .line 380
    .line 381
    move-result v11

    .line 382
    add-int/2addr v10, v11

    .line 383
    add-int/lit8 v8, v8, 0x1

    .line 384
    .line 385
    goto :goto_9

    .line 386
    :cond_f
    if-eqz v6, :cond_10

    .line 387
    .line 388
    sget-object v6, LW0/a;->p:[I

    .line 389
    .line 390
    invoke-static {v9, v6}, LW0/a;->j(Lp0/D;[I)I

    .line 391
    .line 392
    .line 393
    move-result v6

    .line 394
    invoke-virtual {v7, v6}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 395
    .line 396
    .line 397
    :cond_10
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 398
    .line 399
    .line 400
    move-result v6

    .line 401
    if-eqz v6, :cond_11

    .line 402
    .line 403
    sget-object v6, LW0/a;->q:[I

    .line 404
    .line 405
    invoke-static {v9, v6}, LW0/a;->j(Lp0/D;[I)I

    .line 406
    .line 407
    .line 408
    move-result v6

    .line 409
    goto :goto_a

    .line 410
    :cond_11
    const/4 v6, 0x0

    .line 411
    :goto_a
    add-int/2addr v10, v6

    .line 412
    add-int v13, v10, v20

    .line 413
    .line 414
    new-instance v14, LW0/r;

    .line 415
    .line 416
    const-string v7, "audio/vnd.dts.uhd;profile=p2"

    .line 417
    .line 418
    const/4 v8, 0x2

    .line 419
    move-object v6, v14

    .line 420
    move v9, v2

    .line 421
    move v10, v13

    .line 422
    move-wide v11, v3

    .line 423
    invoke-direct/range {v6 .. v12}, LW0/r;-><init>(Ljava/lang/String;IIIJ)V

    .line 424
    .line 425
    .line 426
    iget v2, v0, LA1/h;->n:I

    .line 427
    .line 428
    const/4 v6, 0x3

    .line 429
    if-ne v2, v6, :cond_12

    .line 430
    .line 431
    invoke-virtual {v0, v14}, LA1/h;->g(LW0/r;)V

    .line 432
    .line 433
    .line 434
    :cond_12
    iput v13, v0, LA1/h;->m:I

    .line 435
    .line 436
    cmp-long v2, v3, v18

    .line 437
    .line 438
    if-nez v2, :cond_13

    .line 439
    .line 440
    const-wide/16 v3, 0x0

    .line 441
    .line 442
    :cond_13
    iput-wide v3, v0, LA1/h;->k:J

    .line 443
    .line 444
    const/4 v2, 0x0

    .line 445
    invoke-virtual {v5, v2}, Lp0/E;->L(I)V

    .line 446
    .line 447
    .line 448
    iget-object v2, v0, LA1/h;->g:LW0/L;

    .line 449
    .line 450
    iget v3, v0, LA1/h;->p:I

    .line 451
    .line 452
    invoke-interface {v2, v3, v5}, LW0/L;->e(ILp0/E;)V

    .line 453
    .line 454
    .line 455
    const/4 v2, 0x6

    .line 456
    iput v2, v0, LA1/h;->h:I

    .line 457
    .line 458
    goto/16 :goto_0

    .line 459
    .line 460
    :pswitch_2
    const/4 v2, 0x6

    .line 461
    iget-object v3, v5, Lp0/E;->a:[B

    .line 462
    .line 463
    invoke-virtual {v0, v2, v1, v3}, LA1/h;->f(ILp0/E;[B)Z

    .line 464
    .line 465
    .line 466
    move-result v2

    .line 467
    if-eqz v2, :cond_0

    .line 468
    .line 469
    iget-object v2, v5, Lp0/E;->a:[B

    .line 470
    .line 471
    invoke-static {v2}, LW0/a;->d([B)Lp0/D;

    .line 472
    .line 473
    .line 474
    move-result-object v2

    .line 475
    invoke-virtual {v2, v15}, Lp0/D;->u(I)V

    .line 476
    .line 477
    .line 478
    sget-object v3, LW0/a;->r:[I

    .line 479
    .line 480
    invoke-static {v2, v3}, LW0/a;->j(Lp0/D;[I)I

    .line 481
    .line 482
    .line 483
    move-result v2

    .line 484
    const/4 v3, 0x1

    .line 485
    add-int/2addr v2, v3

    .line 486
    iput v2, v0, LA1/h;->p:I

    .line 487
    .line 488
    iget v3, v0, LA1/h;->i:I

    .line 489
    .line 490
    if-le v3, v2, :cond_14

    .line 491
    .line 492
    sub-int v2, v3, v2

    .line 493
    .line 494
    sub-int/2addr v3, v2

    .line 495
    iput v3, v0, LA1/h;->i:I

    .line 496
    .line 497
    iget v3, v1, Lp0/E;->b:I

    .line 498
    .line 499
    sub-int/2addr v3, v2

    .line 500
    invoke-virtual {v1, v3}, Lp0/E;->L(I)V

    .line 501
    .line 502
    .line 503
    :cond_14
    iput v7, v0, LA1/h;->h:I

    .line 504
    .line 505
    goto/16 :goto_0

    .line 506
    .line 507
    :pswitch_3
    iget-object v2, v5, Lp0/E;->a:[B

    .line 508
    .line 509
    iget v4, v0, LA1/h;->o:I

    .line 510
    .line 511
    invoke-virtual {v0, v4, v1, v2}, LA1/h;->f(ILp0/E;[B)Z

    .line 512
    .line 513
    .line 514
    move-result v2

    .line 515
    if-eqz v2, :cond_0

    .line 516
    .line 517
    iget-object v2, v5, Lp0/E;->a:[B

    .line 518
    .line 519
    invoke-static {v2}, LW0/a;->d([B)Lp0/D;

    .line 520
    .line 521
    .line 522
    move-result-object v2

    .line 523
    const/16 v4, 0x28

    .line 524
    .line 525
    invoke-virtual {v2, v4}, Lp0/D;->u(I)V

    .line 526
    .line 527
    .line 528
    invoke-virtual {v2, v3}, Lp0/D;->i(I)I

    .line 529
    .line 530
    .line 531
    move-result v4

    .line 532
    invoke-virtual {v2}, Lp0/D;->h()Z

    .line 533
    .line 534
    .line 535
    move-result v6

    .line 536
    if-nez v6, :cond_15

    .line 537
    .line 538
    const/16 v6, 0x10

    .line 539
    .line 540
    const/16 v9, 0x8

    .line 541
    .line 542
    goto :goto_b

    .line 543
    :cond_15
    const/16 v6, 0x14

    .line 544
    .line 545
    const/16 v9, 0xc

    .line 546
    .line 547
    :goto_b
    invoke-virtual {v2, v9}, Lp0/D;->u(I)V

    .line 548
    .line 549
    .line 550
    invoke-virtual {v2, v6}, Lp0/D;->i(I)I

    .line 551
    .line 552
    .line 553
    move-result v9

    .line 554
    const/4 v11, 0x1

    .line 555
    add-int/2addr v9, v11

    .line 556
    invoke-virtual {v2}, Lp0/D;->h()Z

    .line 557
    .line 558
    .line 559
    move-result v12

    .line 560
    if-eqz v12, :cond_1a

    .line 561
    .line 562
    invoke-virtual {v2, v3}, Lp0/D;->i(I)I

    .line 563
    .line 564
    .line 565
    move-result v13

    .line 566
    const/4 v14, 0x3

    .line 567
    invoke-virtual {v2, v14}, Lp0/D;->i(I)I

    .line 568
    .line 569
    .line 570
    move-result v15

    .line 571
    add-int/2addr v15, v11

    .line 572
    const/16 v7, 0x200

    .line 573
    .line 574
    mul-int/lit16 v7, v15, 0x200

    .line 575
    .line 576
    invoke-virtual {v2}, Lp0/D;->h()Z

    .line 577
    .line 578
    .line 579
    move-result v15

    .line 580
    if-eqz v15, :cond_16

    .line 581
    .line 582
    const/16 v15, 0x24

    .line 583
    .line 584
    invoke-virtual {v2, v15}, Lp0/D;->u(I)V

    .line 585
    .line 586
    .line 587
    :cond_16
    invoke-virtual {v2, v14}, Lp0/D;->i(I)I

    .line 588
    .line 589
    .line 590
    move-result v15

    .line 591
    add-int/2addr v15, v11

    .line 592
    invoke-virtual {v2, v14}, Lp0/D;->i(I)I

    .line 593
    .line 594
    .line 595
    move-result v14

    .line 596
    add-int/2addr v14, v11

    .line 597
    if-ne v15, v11, :cond_19

    .line 598
    .line 599
    if-ne v14, v11, :cond_19

    .line 600
    .line 601
    add-int/2addr v4, v11

    .line 602
    invoke-virtual {v2, v4}, Lp0/D;->i(I)I

    .line 603
    .line 604
    .line 605
    move-result v14

    .line 606
    const/4 v15, 0x0

    .line 607
    :goto_c
    if-ge v15, v4, :cond_18

    .line 608
    .line 609
    shr-int v21, v14, v15

    .line 610
    .line 611
    and-int/lit8 v10, v21, 0x1

    .line 612
    .line 613
    if-ne v10, v11, :cond_17

    .line 614
    .line 615
    invoke-virtual {v2, v8}, Lp0/D;->u(I)V

    .line 616
    .line 617
    .line 618
    :cond_17
    add-int/lit8 v15, v15, 0x1

    .line 619
    .line 620
    const/4 v10, 0x4

    .line 621
    goto :goto_c

    .line 622
    :cond_18
    invoke-virtual {v2}, Lp0/D;->h()Z

    .line 623
    .line 624
    .line 625
    move-result v4

    .line 626
    if-eqz v4, :cond_1b

    .line 627
    .line 628
    invoke-virtual {v2, v3}, Lp0/D;->u(I)V

    .line 629
    .line 630
    .line 631
    invoke-virtual {v2, v3}, Lp0/D;->i(I)I

    .line 632
    .line 633
    .line 634
    move-result v4

    .line 635
    add-int/2addr v4, v11

    .line 636
    shl-int/2addr v4, v3

    .line 637
    invoke-virtual {v2, v3}, Lp0/D;->i(I)I

    .line 638
    .line 639
    .line 640
    move-result v10

    .line 641
    add-int/2addr v10, v11

    .line 642
    const/4 v11, 0x0

    .line 643
    :goto_d
    if-ge v11, v10, :cond_1b

    .line 644
    .line 645
    invoke-virtual {v2, v4}, Lp0/D;->u(I)V

    .line 646
    .line 647
    .line 648
    add-int/lit8 v11, v11, 0x1

    .line 649
    .line 650
    goto :goto_d

    .line 651
    :cond_19
    const-string v1, "Multiple audio presentations or assets not supported"

    .line 652
    .line 653
    invoke-static {v1}, Lm0/P;->c(Ljava/lang/String;)Lm0/P;

    .line 654
    .line 655
    .line 656
    move-result-object v1

    .line 657
    throw v1

    .line 658
    :cond_1a
    const/4 v7, 0x0

    .line 659
    const/4 v13, -0x1

    .line 660
    :cond_1b
    invoke-virtual {v2, v6}, Lp0/D;->u(I)V

    .line 661
    .line 662
    .line 663
    const/16 v4, 0xc

    .line 664
    .line 665
    invoke-virtual {v2, v4}, Lp0/D;->u(I)V

    .line 666
    .line 667
    .line 668
    if-eqz v12, :cond_1f

    .line 669
    .line 670
    invoke-virtual {v2}, Lp0/D;->h()Z

    .line 671
    .line 672
    .line 673
    move-result v4

    .line 674
    if-eqz v4, :cond_1c

    .line 675
    .line 676
    const/4 v4, 0x4

    .line 677
    invoke-virtual {v2, v4}, Lp0/D;->u(I)V

    .line 678
    .line 679
    .line 680
    :cond_1c
    invoke-virtual {v2}, Lp0/D;->h()Z

    .line 681
    .line 682
    .line 683
    move-result v4

    .line 684
    if-eqz v4, :cond_1d

    .line 685
    .line 686
    const/16 v4, 0x18

    .line 687
    .line 688
    invoke-virtual {v2, v4}, Lp0/D;->u(I)V

    .line 689
    .line 690
    .line 691
    :cond_1d
    invoke-virtual {v2}, Lp0/D;->h()Z

    .line 692
    .line 693
    .line 694
    move-result v4

    .line 695
    if-eqz v4, :cond_1e

    .line 696
    .line 697
    const/16 v4, 0xa

    .line 698
    .line 699
    invoke-virtual {v2, v4}, Lp0/D;->i(I)I

    .line 700
    .line 701
    .line 702
    move-result v4

    .line 703
    const/4 v6, 0x1

    .line 704
    add-int/2addr v4, v6

    .line 705
    invoke-virtual {v2, v4}, Lp0/D;->v(I)V

    .line 706
    .line 707
    .line 708
    :goto_e
    const/4 v4, 0x5

    .line 709
    goto :goto_f

    .line 710
    :cond_1e
    const/4 v6, 0x1

    .line 711
    goto :goto_e

    .line 712
    :goto_f
    invoke-virtual {v2, v4}, Lp0/D;->u(I)V

    .line 713
    .line 714
    .line 715
    sget-object v4, LW0/a;->m:[I

    .line 716
    .line 717
    const/4 v10, 0x4

    .line 718
    invoke-virtual {v2, v10}, Lp0/D;->i(I)I

    .line 719
    .line 720
    .line 721
    move-result v10

    .line 722
    aget v4, v4, v10

    .line 723
    .line 724
    invoke-virtual {v2, v8}, Lp0/D;->i(I)I

    .line 725
    .line 726
    .line 727
    move-result v2

    .line 728
    add-int/2addr v2, v6

    .line 729
    move/from16 v25, v2

    .line 730
    .line 731
    move/from16 v26, v4

    .line 732
    .line 733
    goto :goto_10

    .line 734
    :cond_1f
    const/4 v6, 0x1

    .line 735
    const/16 v25, -0x1

    .line 736
    .line 737
    const v26, -0x7fffffff

    .line 738
    .line 739
    .line 740
    :goto_10
    if-eqz v12, :cond_23

    .line 741
    .line 742
    if-eqz v13, :cond_22

    .line 743
    .line 744
    if-eq v13, v6, :cond_21

    .line 745
    .line 746
    if-ne v13, v3, :cond_20

    .line 747
    .line 748
    const v14, 0xbb80

    .line 749
    .line 750
    .line 751
    goto :goto_11

    .line 752
    :cond_20
    new-instance v1, Ljava/lang/StringBuilder;

    .line 753
    .line 754
    const-string v2, "Unsupported reference clock code in DTS HD header: "

    .line 755
    .line 756
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 757
    .line 758
    .line 759
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 760
    .line 761
    .line 762
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 763
    .line 764
    .line 765
    move-result-object v1

    .line 766
    const/4 v2, 0x0

    .line 767
    invoke-static {v1, v2}, Lm0/P;->a(Ljava/lang/String;Ljava/lang/RuntimeException;)Lm0/P;

    .line 768
    .line 769
    .line 770
    move-result-object v1

    .line 771
    throw v1

    .line 772
    :cond_21
    const v14, 0xac44

    .line 773
    .line 774
    .line 775
    goto :goto_11

    .line 776
    :cond_22
    const/16 v14, 0x7d00

    .line 777
    .line 778
    :goto_11
    int-to-long v2, v7

    .line 779
    int-to-long v6, v14

    .line 780
    sget-object v4, Lp0/M;->a:Ljava/lang/String;

    .line 781
    .line 782
    sget-object v33, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    .line 783
    .line 784
    const-wide/32 v29, 0xf4240

    .line 785
    .line 786
    .line 787
    move-wide/from16 v27, v2

    .line 788
    .line 789
    move-wide/from16 v31, v6

    .line 790
    .line 791
    invoke-static/range {v27 .. v33}, Lp0/M;->Z(JJJLjava/math/RoundingMode;)J

    .line 792
    .line 793
    .line 794
    move-result-wide v2

    .line 795
    goto :goto_12

    .line 796
    :cond_23
    move-wide/from16 v2, v18

    .line 797
    .line 798
    :goto_12
    new-instance v4, LW0/r;

    .line 799
    .line 800
    const-string v24, "audio/vnd.dts.hd;profile=lbr"

    .line 801
    .line 802
    move-object/from16 v23, v4

    .line 803
    .line 804
    move/from16 v27, v9

    .line 805
    .line 806
    move-wide/from16 v28, v2

    .line 807
    .line 808
    invoke-direct/range {v23 .. v29}, LW0/r;-><init>(Ljava/lang/String;IIIJ)V

    .line 809
    .line 810
    .line 811
    invoke-virtual {v0, v4}, LA1/h;->g(LW0/r;)V

    .line 812
    .line 813
    .line 814
    iput v9, v0, LA1/h;->m:I

    .line 815
    .line 816
    cmp-long v4, v2, v18

    .line 817
    .line 818
    if-nez v4, :cond_24

    .line 819
    .line 820
    const-wide/16 v2, 0x0

    .line 821
    .line 822
    :cond_24
    iput-wide v2, v0, LA1/h;->k:J

    .line 823
    .line 824
    const/4 v2, 0x0

    .line 825
    invoke-virtual {v5, v2}, Lp0/E;->L(I)V

    .line 826
    .line 827
    .line 828
    iget-object v2, v0, LA1/h;->g:LW0/L;

    .line 829
    .line 830
    iget v3, v0, LA1/h;->o:I

    .line 831
    .line 832
    invoke-interface {v2, v3, v5}, LW0/L;->e(ILp0/E;)V

    .line 833
    .line 834
    .line 835
    const/4 v2, 0x6

    .line 836
    iput v2, v0, LA1/h;->h:I

    .line 837
    .line 838
    goto/16 :goto_0

    .line 839
    .line 840
    :pswitch_4
    iget-object v2, v5, Lp0/E;->a:[B

    .line 841
    .line 842
    const/4 v3, 0x7

    .line 843
    invoke-virtual {v0, v3, v1, v2}, LA1/h;->f(ILp0/E;[B)Z

    .line 844
    .line 845
    .line 846
    move-result v2

    .line 847
    if-eqz v2, :cond_0

    .line 848
    .line 849
    iget-object v2, v5, Lp0/E;->a:[B

    .line 850
    .line 851
    invoke-static {v2}, LW0/a;->d([B)Lp0/D;

    .line 852
    .line 853
    .line 854
    move-result-object v2

    .line 855
    const/16 v3, 0x2a

    .line 856
    .line 857
    invoke-virtual {v2, v3}, Lp0/D;->u(I)V

    .line 858
    .line 859
    .line 860
    invoke-virtual {v2}, Lp0/D;->h()Z

    .line 861
    .line 862
    .line 863
    move-result v3

    .line 864
    if-eqz v3, :cond_25

    .line 865
    .line 866
    const/16 v8, 0xc

    .line 867
    .line 868
    :cond_25
    invoke-virtual {v2, v8}, Lp0/D;->i(I)I

    .line 869
    .line 870
    .line 871
    move-result v2

    .line 872
    const/4 v3, 0x1

    .line 873
    add-int/2addr v2, v3

    .line 874
    iput v2, v0, LA1/h;->o:I

    .line 875
    .line 876
    const/4 v2, 0x3

    .line 877
    iput v2, v0, LA1/h;->h:I

    .line 878
    .line 879
    goto/16 :goto_0

    .line 880
    .line 881
    :pswitch_5
    iget-object v2, v5, Lp0/E;->a:[B

    .line 882
    .line 883
    const/16 v4, 0x12

    .line 884
    .line 885
    invoke-virtual {v0, v4, v1, v2}, LA1/h;->f(ILp0/E;[B)Z

    .line 886
    .line 887
    .line 888
    move-result v2

    .line 889
    if-eqz v2, :cond_0

    .line 890
    .line 891
    iget-object v2, v5, Lp0/E;->a:[B

    .line 892
    .line 893
    iget-object v6, v0, LA1/h;->l:Lm0/t;

    .line 894
    .line 895
    const/16 v7, 0x3c

    .line 896
    .line 897
    if-nez v6, :cond_28

    .line 898
    .line 899
    iget-object v6, v0, LA1/h;->f:Ljava/lang/String;

    .line 900
    .line 901
    invoke-static {v2}, LW0/a;->d([B)Lp0/D;

    .line 902
    .line 903
    .line 904
    move-result-object v9

    .line 905
    invoke-virtual {v9, v7}, Lp0/D;->u(I)V

    .line 906
    .line 907
    .line 908
    const/4 v10, 0x6

    .line 909
    invoke-virtual {v9, v10}, Lp0/D;->i(I)I

    .line 910
    .line 911
    .line 912
    move-result v11

    .line 913
    sget-object v10, LW0/a;->j:[I

    .line 914
    .line 915
    aget v10, v10, v11

    .line 916
    .line 917
    const/4 v11, 0x4

    .line 918
    invoke-virtual {v9, v11}, Lp0/D;->i(I)I

    .line 919
    .line 920
    .line 921
    move-result v12

    .line 922
    sget-object v11, LW0/a;->k:[I

    .line 923
    .line 924
    aget v11, v11, v12

    .line 925
    .line 926
    const/4 v12, 0x5

    .line 927
    invoke-virtual {v9, v12}, Lp0/D;->i(I)I

    .line 928
    .line 929
    .line 930
    move-result v13

    .line 931
    const/16 v12, 0x1d

    .line 932
    .line 933
    if-lt v13, v12, :cond_26

    .line 934
    .line 935
    const/4 v12, -0x1

    .line 936
    :goto_13
    const/16 v13, 0xa

    .line 937
    .line 938
    goto :goto_14

    .line 939
    :cond_26
    sget-object v12, LW0/a;->l:[I

    .line 940
    .line 941
    aget v12, v12, v13

    .line 942
    .line 943
    mul-int/lit16 v12, v12, 0x3e8

    .line 944
    .line 945
    div-int/2addr v12, v3

    .line 946
    goto :goto_13

    .line 947
    :goto_14
    invoke-virtual {v9, v13}, Lp0/D;->u(I)V

    .line 948
    .line 949
    .line 950
    invoke-virtual {v9, v3}, Lp0/D;->i(I)I

    .line 951
    .line 952
    .line 953
    move-result v9

    .line 954
    if-lez v9, :cond_27

    .line 955
    .line 956
    const/4 v9, 0x1

    .line 957
    goto :goto_15

    .line 958
    :cond_27
    const/4 v9, 0x0

    .line 959
    :goto_15
    add-int/2addr v10, v9

    .line 960
    new-instance v9, Lm0/s;

    .line 961
    .line 962
    invoke-direct {v9}, Lm0/s;-><init>()V

    .line 963
    .line 964
    .line 965
    iput-object v6, v9, Lm0/s;->a:Ljava/lang/String;

    .line 966
    .line 967
    iget-object v6, v0, LA1/h;->e:Ljava/lang/String;

    .line 968
    .line 969
    invoke-static {v6}, Lm0/O;->p(Ljava/lang/String;)Ljava/lang/String;

    .line 970
    .line 971
    .line 972
    move-result-object v6

    .line 973
    iput-object v6, v9, Lm0/s;->m:Ljava/lang/String;

    .line 974
    .line 975
    const-string v6, "audio/vnd.dts"

    .line 976
    .line 977
    invoke-static {v6}, Lm0/O;->p(Ljava/lang/String;)Ljava/lang/String;

    .line 978
    .line 979
    .line 980
    move-result-object v6

    .line 981
    iput-object v6, v9, Lm0/s;->n:Ljava/lang/String;

    .line 982
    .line 983
    iput v12, v9, Lm0/s;->h:I

    .line 984
    .line 985
    iput v10, v9, Lm0/s;->F:I

    .line 986
    .line 987
    iput v11, v9, Lm0/s;->G:I

    .line 988
    .line 989
    const/4 v6, 0x0

    .line 990
    iput-object v6, v9, Lm0/s;->r:Lm0/n;

    .line 991
    .line 992
    iget-object v6, v0, LA1/h;->c:Ljava/lang/String;

    .line 993
    .line 994
    iput-object v6, v9, Lm0/s;->d:Ljava/lang/String;

    .line 995
    .line 996
    iget v6, v0, LA1/h;->d:I

    .line 997
    .line 998
    iput v6, v9, Lm0/s;->f:I

    .line 999
    .line 1000
    new-instance v6, Lm0/t;

    .line 1001
    .line 1002
    invoke-direct {v6, v9}, Lm0/t;-><init>(Lm0/s;)V

    .line 1003
    .line 1004
    .line 1005
    iput-object v6, v0, LA1/h;->l:Lm0/t;

    .line 1006
    .line 1007
    iget-object v9, v0, LA1/h;->g:LW0/L;

    .line 1008
    .line 1009
    invoke-interface {v9, v6}, LW0/L;->b(Lm0/t;)V

    .line 1010
    .line 1011
    .line 1012
    :cond_28
    const/4 v6, 0x0

    .line 1013
    aget-byte v9, v2, v6

    .line 1014
    .line 1015
    const/16 v6, 0x1f

    .line 1016
    .line 1017
    const/4 v10, -0x2

    .line 1018
    if-eq v9, v10, :cond_2b

    .line 1019
    .line 1020
    const/4 v11, -0x1

    .line 1021
    if-eq v9, v11, :cond_2a

    .line 1022
    .line 1023
    if-eq v9, v6, :cond_29

    .line 1024
    .line 1025
    const/4 v11, 0x5

    .line 1026
    aget-byte v8, v2, v11

    .line 1027
    .line 1028
    const/4 v11, 0x3

    .line 1029
    and-int/2addr v8, v11

    .line 1030
    const/16 v11, 0xc

    .line 1031
    .line 1032
    shl-int/2addr v8, v11

    .line 1033
    const/4 v11, 0x6

    .line 1034
    aget-byte v12, v2, v11

    .line 1035
    .line 1036
    and-int/lit16 v12, v12, 0xff

    .line 1037
    .line 1038
    const/4 v13, 0x4

    .line 1039
    shl-int/2addr v12, v13

    .line 1040
    or-int/2addr v8, v12

    .line 1041
    const/4 v12, 0x7

    .line 1042
    aget-byte v14, v2, v12

    .line 1043
    .line 1044
    and-int/lit16 v14, v14, 0xf0

    .line 1045
    .line 1046
    shr-int/2addr v14, v13

    .line 1047
    or-int/2addr v8, v14

    .line 1048
    const/4 v14, 0x1

    .line 1049
    add-int/2addr v8, v14

    .line 1050
    :goto_16
    const/4 v11, 0x0

    .line 1051
    goto :goto_18

    .line 1052
    :cond_29
    const/4 v11, 0x6

    .line 1053
    const/4 v12, 0x7

    .line 1054
    const/4 v13, 0x4

    .line 1055
    aget-byte v14, v2, v11

    .line 1056
    .line 1057
    const/4 v11, 0x3

    .line 1058
    and-int/2addr v11, v14

    .line 1059
    const/16 v14, 0xc

    .line 1060
    .line 1061
    shl-int/2addr v11, v14

    .line 1062
    aget-byte v14, v2, v12

    .line 1063
    .line 1064
    and-int/lit16 v14, v14, 0xff

    .line 1065
    .line 1066
    shl-int/2addr v14, v13

    .line 1067
    or-int/2addr v11, v14

    .line 1068
    aget-byte v8, v2, v8

    .line 1069
    .line 1070
    and-int/2addr v8, v7

    .line 1071
    shr-int/2addr v8, v3

    .line 1072
    or-int/2addr v8, v11

    .line 1073
    :goto_17
    const/4 v11, 0x1

    .line 1074
    add-int/2addr v8, v11

    .line 1075
    const/4 v11, 0x1

    .line 1076
    goto :goto_18

    .line 1077
    :cond_2a
    const/4 v12, 0x7

    .line 1078
    aget-byte v8, v2, v12

    .line 1079
    .line 1080
    const/4 v11, 0x3

    .line 1081
    and-int/2addr v8, v11

    .line 1082
    const/16 v11, 0xc

    .line 1083
    .line 1084
    shl-int/2addr v8, v11

    .line 1085
    const/4 v11, 0x6

    .line 1086
    aget-byte v12, v2, v11

    .line 1087
    .line 1088
    and-int/lit16 v11, v12, 0xff

    .line 1089
    .line 1090
    const/4 v12, 0x4

    .line 1091
    shl-int/2addr v11, v12

    .line 1092
    or-int/2addr v8, v11

    .line 1093
    const/16 v11, 0x9

    .line 1094
    .line 1095
    aget-byte v11, v2, v11

    .line 1096
    .line 1097
    and-int/2addr v11, v7

    .line 1098
    shr-int/2addr v11, v3

    .line 1099
    or-int/2addr v8, v11

    .line 1100
    goto :goto_17

    .line 1101
    :cond_2b
    const/4 v12, 0x4

    .line 1102
    aget-byte v8, v2, v12

    .line 1103
    .line 1104
    const/4 v11, 0x3

    .line 1105
    and-int/2addr v8, v11

    .line 1106
    const/16 v11, 0xc

    .line 1107
    .line 1108
    shl-int/2addr v8, v11

    .line 1109
    const/4 v11, 0x7

    .line 1110
    aget-byte v13, v2, v11

    .line 1111
    .line 1112
    and-int/lit16 v11, v13, 0xff

    .line 1113
    .line 1114
    shl-int/2addr v11, v12

    .line 1115
    or-int/2addr v8, v11

    .line 1116
    const/4 v11, 0x6

    .line 1117
    aget-byte v13, v2, v11

    .line 1118
    .line 1119
    and-int/lit16 v11, v13, 0xf0

    .line 1120
    .line 1121
    shr-int/2addr v11, v12

    .line 1122
    or-int/2addr v8, v11

    .line 1123
    const/4 v11, 0x1

    .line 1124
    add-int/2addr v8, v11

    .line 1125
    goto :goto_16

    .line 1126
    :goto_18
    if-eqz v11, :cond_2c

    .line 1127
    .line 1128
    mul-int/lit8 v8, v8, 0x10

    .line 1129
    .line 1130
    div-int/lit8 v8, v8, 0xe

    .line 1131
    .line 1132
    :cond_2c
    iput v8, v0, LA1/h;->m:I

    .line 1133
    .line 1134
    if-eq v9, v10, :cond_2f

    .line 1135
    .line 1136
    const/4 v8, -0x1

    .line 1137
    if-eq v9, v8, :cond_2e

    .line 1138
    .line 1139
    if-eq v9, v6, :cond_2d

    .line 1140
    .line 1141
    const/4 v6, 0x4

    .line 1142
    aget-byte v6, v2, v6

    .line 1143
    .line 1144
    const/4 v7, 0x1

    .line 1145
    and-int/2addr v6, v7

    .line 1146
    const/4 v8, 0x6

    .line 1147
    shl-int/2addr v6, v8

    .line 1148
    const/4 v9, 0x5

    .line 1149
    aget-byte v2, v2, v9

    .line 1150
    .line 1151
    and-int/lit16 v2, v2, 0xfc

    .line 1152
    .line 1153
    :goto_19
    shr-int/2addr v2, v3

    .line 1154
    or-int/2addr v2, v6

    .line 1155
    const/4 v8, 0x1

    .line 1156
    goto :goto_1b

    .line 1157
    :cond_2d
    const/4 v6, 0x4

    .line 1158
    const/4 v8, 0x6

    .line 1159
    const/4 v9, 0x5

    .line 1160
    aget-byte v9, v2, v9

    .line 1161
    .line 1162
    const/4 v10, 0x7

    .line 1163
    and-int/2addr v9, v10

    .line 1164
    shl-int/lit8 v6, v9, 0x4

    .line 1165
    .line 1166
    aget-byte v2, v2, v8

    .line 1167
    .line 1168
    :goto_1a
    and-int/2addr v2, v7

    .line 1169
    goto :goto_19

    .line 1170
    :cond_2e
    const/4 v6, 0x4

    .line 1171
    const/4 v10, 0x7

    .line 1172
    aget-byte v8, v2, v6

    .line 1173
    .line 1174
    and-int/2addr v8, v10

    .line 1175
    shl-int/lit8 v6, v8, 0x4

    .line 1176
    .line 1177
    aget-byte v2, v2, v10

    .line 1178
    .line 1179
    goto :goto_1a

    .line 1180
    :cond_2f
    const/4 v6, 0x4

    .line 1181
    const/4 v7, 0x5

    .line 1182
    aget-byte v7, v2, v7

    .line 1183
    .line 1184
    const/4 v8, 0x1

    .line 1185
    and-int/2addr v7, v8

    .line 1186
    const/4 v9, 0x6

    .line 1187
    shl-int/2addr v7, v9

    .line 1188
    aget-byte v2, v2, v6

    .line 1189
    .line 1190
    and-int/lit16 v2, v2, 0xfc

    .line 1191
    .line 1192
    shr-int/2addr v2, v3

    .line 1193
    or-int/2addr v2, v7

    .line 1194
    :goto_1b
    add-int/2addr v2, v8

    .line 1195
    mul-int/lit8 v2, v2, 0x20

    .line 1196
    .line 1197
    int-to-long v2, v2

    .line 1198
    iget-object v6, v0, LA1/h;->l:Lm0/t;

    .line 1199
    .line 1200
    iget v6, v6, Lm0/t;->H:I

    .line 1201
    .line 1202
    invoke-static {v6, v2, v3}, Lp0/M;->X(IJ)J

    .line 1203
    .line 1204
    .line 1205
    move-result-wide v2

    .line 1206
    invoke-static {v2, v3}, Ly4/k;->y(J)I

    .line 1207
    .line 1208
    .line 1209
    move-result v2

    .line 1210
    int-to-long v2, v2

    .line 1211
    iput-wide v2, v0, LA1/h;->k:J

    .line 1212
    .line 1213
    const/4 v2, 0x0

    .line 1214
    invoke-virtual {v5, v2}, Lp0/E;->L(I)V

    .line 1215
    .line 1216
    .line 1217
    iget-object v2, v0, LA1/h;->g:LW0/L;

    .line 1218
    .line 1219
    invoke-interface {v2, v4, v5}, LW0/L;->e(ILp0/E;)V

    .line 1220
    .line 1221
    .line 1222
    const/4 v2, 0x6

    .line 1223
    iput v2, v0, LA1/h;->h:I

    .line 1224
    .line 1225
    goto/16 :goto_0

    .line 1226
    .line 1227
    :cond_30
    :pswitch_6
    invoke-virtual/range {p1 .. p1}, Lp0/E;->a()I

    .line 1228
    .line 1229
    .line 1230
    move-result v2

    .line 1231
    if-lez v2, :cond_0

    .line 1232
    .line 1233
    iget v2, v0, LA1/h;->j:I

    .line 1234
    .line 1235
    shl-int/2addr v2, v8

    .line 1236
    iput v2, v0, LA1/h;->j:I

    .line 1237
    .line 1238
    invoke-virtual/range {p1 .. p1}, Lp0/E;->z()I

    .line 1239
    .line 1240
    .line 1241
    move-result v4

    .line 1242
    or-int/2addr v2, v4

    .line 1243
    iput v2, v0, LA1/h;->j:I

    .line 1244
    .line 1245
    const v4, 0x7ffe8001

    .line 1246
    .line 1247
    .line 1248
    if-eq v2, v4, :cond_38

    .line 1249
    .line 1250
    const v4, -0x180fe80

    .line 1251
    .line 1252
    .line 1253
    if-eq v2, v4, :cond_38

    .line 1254
    .line 1255
    const v4, 0x1fffe800

    .line 1256
    .line 1257
    .line 1258
    if-eq v2, v4, :cond_38

    .line 1259
    .line 1260
    const v4, -0xe0ff18

    .line 1261
    .line 1262
    .line 1263
    if-ne v2, v4, :cond_31

    .line 1264
    .line 1265
    goto :goto_1f

    .line 1266
    :cond_31
    const v4, 0x64582025

    .line 1267
    .line 1268
    .line 1269
    if-eq v2, v4, :cond_37

    .line 1270
    .line 1271
    const v4, 0x25205864

    .line 1272
    .line 1273
    .line 1274
    if-ne v2, v4, :cond_32

    .line 1275
    .line 1276
    goto :goto_1e

    .line 1277
    :cond_32
    if-eq v2, v6, :cond_36

    .line 1278
    .line 1279
    const v4, -0xde4bec0

    .line 1280
    .line 1281
    .line 1282
    if-ne v2, v4, :cond_33

    .line 1283
    .line 1284
    goto :goto_1d

    .line 1285
    :cond_33
    const v4, 0x71c442e8

    .line 1286
    .line 1287
    .line 1288
    if-eq v2, v4, :cond_35

    .line 1289
    .line 1290
    const v4, -0x17bd3b8f

    .line 1291
    .line 1292
    .line 1293
    if-ne v2, v4, :cond_34

    .line 1294
    .line 1295
    goto :goto_1c

    .line 1296
    :cond_34
    const/4 v4, 0x0

    .line 1297
    goto :goto_20

    .line 1298
    :cond_35
    :goto_1c
    const/4 v4, 0x4

    .line 1299
    goto :goto_20

    .line 1300
    :cond_36
    :goto_1d
    const/4 v4, 0x3

    .line 1301
    goto :goto_20

    .line 1302
    :cond_37
    :goto_1e
    const/4 v4, 0x2

    .line 1303
    goto :goto_20

    .line 1304
    :cond_38
    :goto_1f
    const/4 v4, 0x1

    .line 1305
    :goto_20
    iput v4, v0, LA1/h;->n:I

    .line 1306
    .line 1307
    if-eqz v4, :cond_30

    .line 1308
    .line 1309
    iget-object v5, v5, Lp0/E;->a:[B

    .line 1310
    .line 1311
    shr-int/lit8 v6, v2, 0x18

    .line 1312
    .line 1313
    and-int/lit16 v6, v6, 0xff

    .line 1314
    .line 1315
    int-to-byte v6, v6

    .line 1316
    const/4 v7, 0x0

    .line 1317
    aput-byte v6, v5, v7

    .line 1318
    .line 1319
    shr-int/lit8 v6, v2, 0x10

    .line 1320
    .line 1321
    and-int/lit16 v6, v6, 0xff

    .line 1322
    .line 1323
    int-to-byte v6, v6

    .line 1324
    const/4 v7, 0x1

    .line 1325
    aput-byte v6, v5, v7

    .line 1326
    .line 1327
    shr-int/lit8 v6, v2, 0x8

    .line 1328
    .line 1329
    and-int/lit16 v6, v6, 0xff

    .line 1330
    .line 1331
    int-to-byte v6, v6

    .line 1332
    aput-byte v6, v5, v3

    .line 1333
    .line 1334
    and-int/lit16 v2, v2, 0xff

    .line 1335
    .line 1336
    int-to-byte v2, v2

    .line 1337
    const/4 v7, 0x3

    .line 1338
    aput-byte v2, v5, v7

    .line 1339
    .line 1340
    const/4 v2, 0x4

    .line 1341
    iput v2, v0, LA1/h;->i:I

    .line 1342
    .line 1343
    const/4 v9, 0x0

    .line 1344
    iput v9, v0, LA1/h;->j:I

    .line 1345
    .line 1346
    if-eq v4, v7, :cond_3b

    .line 1347
    .line 1348
    if-ne v4, v2, :cond_39

    .line 1349
    .line 1350
    goto :goto_21

    .line 1351
    :cond_39
    const/4 v10, 0x1

    .line 1352
    if-ne v4, v10, :cond_3a

    .line 1353
    .line 1354
    iput v10, v0, LA1/h;->h:I

    .line 1355
    .line 1356
    goto/16 :goto_0

    .line 1357
    .line 1358
    :cond_3a
    iput v3, v0, LA1/h;->h:I

    .line 1359
    .line 1360
    goto/16 :goto_0

    .line 1361
    .line 1362
    :cond_3b
    :goto_21
    iput v2, v0, LA1/h;->h:I

    .line 1363
    .line 1364
    goto/16 :goto_0

    .line 1365
    .line 1366
    :cond_3c
    return-void

    .line 1367
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
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
    iput-object v0, p0, LA1/h;->f:Ljava/lang/String;

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
    iput-object p1, p0, LA1/h;->g:LW0/L;

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
    iput-wide p2, p0, LA1/h;->q:J

    .line 2
    .line 3
    return-void
.end method

.method public final f(ILp0/E;[B)Z
    .locals 2

    .line 1
    invoke-virtual {p2}, Lp0/E;->a()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget v1, p0, LA1/h;->i:I

    .line 6
    .line 7
    sub-int v1, p1, v1

    .line 8
    .line 9
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    iget v1, p0, LA1/h;->i:I

    .line 14
    .line 15
    invoke-virtual {p2, v1, p3, v0}, Lp0/E;->j(I[BI)V

    .line 16
    .line 17
    .line 18
    iget p2, p0, LA1/h;->i:I

    .line 19
    .line 20
    add-int/2addr p2, v0

    .line 21
    iput p2, p0, LA1/h;->i:I

    .line 22
    .line 23
    if-ne p2, p1, :cond_0

    .line 24
    .line 25
    const/4 p1, 0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 p1, 0x0

    .line 28
    :goto_0
    return p1
.end method

.method public final g(LW0/r;)V
    .locals 4

    .line 1
    const v0, -0x7fffffff

    .line 2
    .line 3
    .line 4
    iget v1, p1, LW0/r;->b:I

    .line 5
    .line 6
    if-eq v1, v0, :cond_3

    .line 7
    .line 8
    const/4 v0, -0x1

    .line 9
    iget v2, p1, LW0/r;->c:I

    .line 10
    .line 11
    if-ne v2, v0, :cond_0

    .line 12
    .line 13
    goto :goto_1

    .line 14
    :cond_0
    iget-object v0, p0, LA1/h;->l:Lm0/t;

    .line 15
    .line 16
    iget-object p1, p1, LW0/r;->a:Ljava/lang/String;

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    iget v3, v0, Lm0/t;->G:I

    .line 21
    .line 22
    if-ne v2, v3, :cond_1

    .line 23
    .line 24
    iget v3, v0, Lm0/t;->H:I

    .line 25
    .line 26
    if-ne v1, v3, :cond_1

    .line 27
    .line 28
    iget-object v0, v0, Lm0/t;->o:Ljava/lang/String;

    .line 29
    .line 30
    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-nez v0, :cond_3

    .line 35
    .line 36
    :cond_1
    iget-object v0, p0, LA1/h;->l:Lm0/t;

    .line 37
    .line 38
    if-nez v0, :cond_2

    .line 39
    .line 40
    new-instance v0, Lm0/s;

    .line 41
    .line 42
    invoke-direct {v0}, Lm0/s;-><init>()V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    invoke-virtual {v0}, Lm0/t;->a()Lm0/s;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    :goto_0
    iget-object v3, p0, LA1/h;->f:Ljava/lang/String;

    .line 51
    .line 52
    iput-object v3, v0, Lm0/s;->a:Ljava/lang/String;

    .line 53
    .line 54
    iget-object v3, p0, LA1/h;->e:Ljava/lang/String;

    .line 55
    .line 56
    invoke-static {v3}, Lm0/O;->p(Ljava/lang/String;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    iput-object v3, v0, Lm0/s;->m:Ljava/lang/String;

    .line 61
    .line 62
    invoke-static {p1}, Lm0/O;->p(Ljava/lang/String;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    iput-object p1, v0, Lm0/s;->n:Ljava/lang/String;

    .line 67
    .line 68
    iput v2, v0, Lm0/s;->F:I

    .line 69
    .line 70
    iput v1, v0, Lm0/s;->G:I

    .line 71
    .line 72
    iget-object p1, p0, LA1/h;->c:Ljava/lang/String;

    .line 73
    .line 74
    iput-object p1, v0, Lm0/s;->d:Ljava/lang/String;

    .line 75
    .line 76
    iget p1, p0, LA1/h;->d:I

    .line 77
    .line 78
    iput p1, v0, Lm0/s;->f:I

    .line 79
    .line 80
    new-instance p1, Lm0/t;

    .line 81
    .line 82
    invoke-direct {p1, v0}, Lm0/t;-><init>(Lm0/s;)V

    .line 83
    .line 84
    .line 85
    iput-object p1, p0, LA1/h;->l:Lm0/t;

    .line 86
    .line 87
    iget-object v0, p0, LA1/h;->g:LW0/L;

    .line 88
    .line 89
    invoke-interface {v0, p1}, LW0/L;->b(Lm0/t;)V

    .line 90
    .line 91
    .line 92
    :cond_3
    :goto_1
    return-void
.end method
