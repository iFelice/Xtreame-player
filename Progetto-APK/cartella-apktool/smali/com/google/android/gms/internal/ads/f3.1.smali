.class public final Lcom/google/android/gms/internal/ads/f3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/L;


# instance fields
.field public a:Lcom/google/android/gms/internal/ads/N;

.field public b:Lcom/google/android/gms/internal/ads/e0;

.field public c:I

.field public d:J

.field public e:Lcom/google/android/gms/internal/ads/d3;

.field public f:I

.field public g:J


# virtual methods
.method public final c(Lcom/google/android/gms/internal/ads/M;LW0/w;)I
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/f3;->b:Lcom/google/android/gms/internal/ads/e0;

    .line 6
    .line 7
    invoke-static {v2}, Lo3/r;->x(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    sget v2, Lcom/google/android/gms/internal/ads/Et;->a:I

    .line 11
    .line 12
    iget v2, v0, Lcom/google/android/gms/internal/ads/f3;->c:I

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
    if-eqz v2, :cond_11

    .line 19
    .line 20
    const/4 v7, 0x2

    .line 21
    const-wide/16 v8, -0x1

    .line 22
    .line 23
    const/16 v10, 0x8

    .line 24
    .line 25
    if-eq v2, v5, :cond_f

    .line 26
    .line 27
    const/4 v11, 0x3

    .line 28
    if-eq v2, v7, :cond_5

    .line 29
    .line 30
    if-eq v2, v11, :cond_2

    .line 31
    .line 32
    iget-wide v10, v0, Lcom/google/android/gms/internal/ads/f3;->g:J

    .line 33
    .line 34
    cmp-long v2, v10, v8

    .line 35
    .line 36
    if-eqz v2, :cond_0

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    const/4 v5, 0x0

    .line 40
    :goto_0
    invoke-static {v5}, Lo3/r;->M(Z)V

    .line 41
    .line 42
    .line 43
    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/f3;->g:J

    .line 44
    .line 45
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/M;->zzf()J

    .line 46
    .line 47
    .line 48
    move-result-wide v7

    .line 49
    sub-long/2addr v4, v7

    .line 50
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/f3;->e:Lcom/google/android/gms/internal/ads/d3;

    .line 51
    .line 52
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    .line 54
    .line 55
    invoke-interface {v2, v1, v4, v5}, Lcom/google/android/gms/internal/ads/d3;->b(Lcom/google/android/gms/internal/ads/M;J)Z

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    if-eqz v1, :cond_1

    .line 60
    .line 61
    return v3

    .line 62
    :cond_1
    return v6

    .line 63
    :cond_2
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/M;->zzj()V

    .line 64
    .line 65
    .line 66
    new-instance v2, Lcom/google/android/gms/internal/ads/jr;

    .line 67
    .line 68
    invoke-direct {v2, v10}, Lcom/google/android/gms/internal/ads/jr;-><init>(I)V

    .line 69
    .line 70
    .line 71
    const v3, 0x64617461

    .line 72
    .line 73
    .line 74
    invoke-static {v3, v1, v2}, Lo3/r;->G(ILcom/google/android/gms/internal/ads/M;Lcom/google/android/gms/internal/ads/jr;)LS0/g;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    invoke-interface {v1, v10}, Lcom/google/android/gms/internal/ads/M;->q(I)V

    .line 79
    .line 80
    .line 81
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/M;->zzf()J

    .line 82
    .line 83
    .line 84
    move-result-wide v10

    .line 85
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    iget-wide v10, v2, LS0/g;->b:J

    .line 90
    .line 91
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    invoke-static {v3, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 100
    .line 101
    check-cast v3, Ljava/lang/Long;

    .line 102
    .line 103
    invoke-virtual {v3}, Ljava/lang/Long;->intValue()I

    .line 104
    .line 105
    .line 106
    move-result v3

    .line 107
    iput v3, v0, Lcom/google/android/gms/internal/ads/f3;->f:I

    .line 108
    .line 109
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 110
    .line 111
    check-cast v2, Ljava/lang/Long;

    .line 112
    .line 113
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 114
    .line 115
    .line 116
    move-result-wide v2

    .line 117
    iget-wide v10, v0, Lcom/google/android/gms/internal/ads/f3;->d:J

    .line 118
    .line 119
    cmp-long v5, v10, v8

    .line 120
    .line 121
    if-eqz v5, :cond_3

    .line 122
    .line 123
    const-wide v12, 0xffffffffL

    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    cmp-long v5, v2, v12

    .line 129
    .line 130
    if-nez v5, :cond_3

    .line 131
    .line 132
    move-wide v2, v10

    .line 133
    :cond_3
    iget v5, v0, Lcom/google/android/gms/internal/ads/f3;->f:I

    .line 134
    .line 135
    int-to-long v10, v5

    .line 136
    add-long/2addr v10, v2

    .line 137
    iput-wide v10, v0, Lcom/google/android/gms/internal/ads/f3;->g:J

    .line 138
    .line 139
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/M;->zzd()J

    .line 140
    .line 141
    .line 142
    move-result-wide v1

    .line 143
    cmp-long v3, v1, v8

    .line 144
    .line 145
    if-eqz v3, :cond_4

    .line 146
    .line 147
    cmp-long v3, v10, v1

    .line 148
    .line 149
    if-lez v3, :cond_4

    .line 150
    .line 151
    const-string v3, "Data exceeds input length: "

    .line 152
    .line 153
    const-string v5, ", "

    .line 154
    .line 155
    invoke-static {v3, v10, v11, v5}, Lt/a;->d(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    move-result-object v3

    .line 159
    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v3

    .line 166
    const-string v5, "WavExtractor"

    .line 167
    .line 168
    invoke-static {v5, v3}, Lcom/google/android/gms/internal/ads/Zo;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/f3;->g:J

    .line 172
    .line 173
    move-wide v10, v1

    .line 174
    :cond_4
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/f3;->e:Lcom/google/android/gms/internal/ads/d3;

    .line 175
    .line 176
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 177
    .line 178
    .line 179
    iget v2, v0, Lcom/google/android/gms/internal/ads/f3;->f:I

    .line 180
    .line 181
    invoke-interface {v1, v2, v10, v11}, Lcom/google/android/gms/internal/ads/d3;->zza(IJ)V

    .line 182
    .line 183
    .line 184
    iput v4, v0, Lcom/google/android/gms/internal/ads/f3;->c:I

    .line 185
    .line 186
    return v6

    .line 187
    :cond_5
    new-instance v2, Lcom/google/android/gms/internal/ads/jr;

    .line 188
    .line 189
    const/16 v3, 0x10

    .line 190
    .line 191
    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/jr;-><init>(I)V

    .line 192
    .line 193
    .line 194
    const v7, 0x666d7420

    .line 195
    .line 196
    .line 197
    invoke-static {v7, v1, v2}, Lo3/r;->G(ILcom/google/android/gms/internal/ads/M;Lcom/google/android/gms/internal/ads/jr;)LS0/g;

    .line 198
    .line 199
    .line 200
    move-result-object v7

    .line 201
    const-wide/16 v8, 0x10

    .line 202
    .line 203
    iget-wide v12, v7, LS0/g;->b:J

    .line 204
    .line 205
    cmp-long v7, v12, v8

    .line 206
    .line 207
    if-ltz v7, :cond_6

    .line 208
    .line 209
    const/4 v7, 0x1

    .line 210
    goto :goto_1

    .line 211
    :cond_6
    const/4 v7, 0x0

    .line 212
    :goto_1
    invoke-static {v7}, Lo3/r;->M(Z)V

    .line 213
    .line 214
    .line 215
    iget-object v7, v2, Lcom/google/android/gms/internal/ads/jr;->a:[B

    .line 216
    .line 217
    invoke-interface {v1, v6, v7, v3}, Lcom/google/android/gms/internal/ads/M;->g(I[BI)V

    .line 218
    .line 219
    .line 220
    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/ads/jr;->j(I)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/jr;->u()I

    .line 224
    .line 225
    .line 226
    move-result v3

    .line 227
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/jr;->u()I

    .line 228
    .line 229
    .line 230
    move-result v7

    .line 231
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/jr;->t()I

    .line 232
    .line 233
    .line 234
    move-result v8

    .line 235
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/jr;->t()I

    .line 236
    .line 237
    .line 238
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/jr;->u()I

    .line 239
    .line 240
    .line 241
    move-result v9

    .line 242
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/jr;->u()I

    .line 243
    .line 244
    .line 245
    move-result v2

    .line 246
    long-to-int v10, v12

    .line 247
    add-int/lit8 v10, v10, -0x10

    .line 248
    .line 249
    if-lez v10, :cond_7

    .line 250
    .line 251
    new-array v12, v10, [B

    .line 252
    .line 253
    invoke-interface {v1, v6, v12, v10}, Lcom/google/android/gms/internal/ads/M;->g(I[BI)V

    .line 254
    .line 255
    .line 256
    goto :goto_2

    .line 257
    :cond_7
    sget-object v12, Lcom/google/android/gms/internal/ads/Et;->f:[B

    .line 258
    .line 259
    :goto_2
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/M;->zze()J

    .line 260
    .line 261
    .line 262
    move-result-wide v13

    .line 263
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/M;->zzf()J

    .line 264
    .line 265
    .line 266
    move-result-wide v15

    .line 267
    sub-long/2addr v13, v15

    .line 268
    long-to-int v10, v13

    .line 269
    invoke-interface {v1, v10}, Lcom/google/android/gms/internal/ads/M;->q(I)V

    .line 270
    .line 271
    .line 272
    new-instance v1, Lm0/h;

    .line 273
    .line 274
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 275
    .line 276
    .line 277
    iput v3, v1, Lm0/h;->a:I

    .line 278
    .line 279
    iput v7, v1, Lm0/h;->b:I

    .line 280
    .line 281
    iput v8, v1, Lm0/h;->c:I

    .line 282
    .line 283
    iput v9, v1, Lm0/h;->d:I

    .line 284
    .line 285
    iput v2, v1, Lm0/h;->e:I

    .line 286
    .line 287
    iput-object v12, v1, Lm0/h;->f:[B

    .line 288
    .line 289
    const/16 v7, 0x11

    .line 290
    .line 291
    if-ne v3, v7, :cond_8

    .line 292
    .line 293
    new-instance v2, Lcom/google/android/gms/internal/ads/c3;

    .line 294
    .line 295
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/f3;->a:Lcom/google/android/gms/internal/ads/N;

    .line 296
    .line 297
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/f3;->b:Lcom/google/android/gms/internal/ads/e0;

    .line 298
    .line 299
    invoke-direct {v2, v3, v4, v1}, Lcom/google/android/gms/internal/ads/c3;-><init>(Lcom/google/android/gms/internal/ads/N;Lcom/google/android/gms/internal/ads/e0;Lm0/h;)V

    .line 300
    .line 301
    .line 302
    iput-object v2, v0, Lcom/google/android/gms/internal/ads/f3;->e:Lcom/google/android/gms/internal/ads/d3;

    .line 303
    .line 304
    goto :goto_4

    .line 305
    :cond_8
    const/4 v7, 0x6

    .line 306
    if-ne v3, v7, :cond_9

    .line 307
    .line 308
    new-instance v2, Lcom/google/android/gms/internal/ads/e3;

    .line 309
    .line 310
    iget-object v14, v0, Lcom/google/android/gms/internal/ads/f3;->a:Lcom/google/android/gms/internal/ads/N;

    .line 311
    .line 312
    iget-object v15, v0, Lcom/google/android/gms/internal/ads/f3;->b:Lcom/google/android/gms/internal/ads/e0;

    .line 313
    .line 314
    const-string v17, "audio/g711-alaw"

    .line 315
    .line 316
    const/16 v18, -0x1

    .line 317
    .line 318
    move-object v13, v2

    .line 319
    move-object/from16 v16, v1

    .line 320
    .line 321
    invoke-direct/range {v13 .. v18}, Lcom/google/android/gms/internal/ads/e3;-><init>(Lcom/google/android/gms/internal/ads/N;Lcom/google/android/gms/internal/ads/e0;Lm0/h;Ljava/lang/String;I)V

    .line 322
    .line 323
    .line 324
    iput-object v2, v0, Lcom/google/android/gms/internal/ads/f3;->e:Lcom/google/android/gms/internal/ads/d3;

    .line 325
    .line 326
    goto :goto_4

    .line 327
    :cond_9
    const/4 v7, 0x7

    .line 328
    if-ne v3, v7, :cond_a

    .line 329
    .line 330
    new-instance v2, Lcom/google/android/gms/internal/ads/e3;

    .line 331
    .line 332
    iget-object v14, v0, Lcom/google/android/gms/internal/ads/f3;->a:Lcom/google/android/gms/internal/ads/N;

    .line 333
    .line 334
    iget-object v15, v0, Lcom/google/android/gms/internal/ads/f3;->b:Lcom/google/android/gms/internal/ads/e0;

    .line 335
    .line 336
    const-string v17, "audio/g711-mlaw"

    .line 337
    .line 338
    const/16 v18, -0x1

    .line 339
    .line 340
    move-object v13, v2

    .line 341
    move-object/from16 v16, v1

    .line 342
    .line 343
    invoke-direct/range {v13 .. v18}, Lcom/google/android/gms/internal/ads/e3;-><init>(Lcom/google/android/gms/internal/ads/N;Lcom/google/android/gms/internal/ads/e0;Lm0/h;Ljava/lang/String;I)V

    .line 344
    .line 345
    .line 346
    iput-object v2, v0, Lcom/google/android/gms/internal/ads/f3;->e:Lcom/google/android/gms/internal/ads/d3;

    .line 347
    .line 348
    goto :goto_4

    .line 349
    :cond_a
    if-eq v3, v5, :cond_d

    .line 350
    .line 351
    if-eq v3, v11, :cond_c

    .line 352
    .line 353
    const v4, 0xfffe

    .line 354
    .line 355
    .line 356
    if-eq v3, v4, :cond_d

    .line 357
    .line 358
    :cond_b
    const/16 v18, 0x0

    .line 359
    .line 360
    goto :goto_3

    .line 361
    :cond_c
    const/16 v5, 0x20

    .line 362
    .line 363
    if-ne v2, v5, :cond_b

    .line 364
    .line 365
    const/16 v18, 0x4

    .line 366
    .line 367
    goto :goto_3

    .line 368
    :cond_d
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/Et;->r(I)I

    .line 369
    .line 370
    .line 371
    move-result v4

    .line 372
    move/from16 v18, v4

    .line 373
    .line 374
    :goto_3
    if-eqz v18, :cond_e

    .line 375
    .line 376
    new-instance v2, Lcom/google/android/gms/internal/ads/e3;

    .line 377
    .line 378
    iget-object v14, v0, Lcom/google/android/gms/internal/ads/f3;->a:Lcom/google/android/gms/internal/ads/N;

    .line 379
    .line 380
    iget-object v15, v0, Lcom/google/android/gms/internal/ads/f3;->b:Lcom/google/android/gms/internal/ads/e0;

    .line 381
    .line 382
    const-string v17, "audio/raw"

    .line 383
    .line 384
    move-object v13, v2

    .line 385
    move-object/from16 v16, v1

    .line 386
    .line 387
    invoke-direct/range {v13 .. v18}, Lcom/google/android/gms/internal/ads/e3;-><init>(Lcom/google/android/gms/internal/ads/N;Lcom/google/android/gms/internal/ads/e0;Lm0/h;Ljava/lang/String;I)V

    .line 388
    .line 389
    .line 390
    iput-object v2, v0, Lcom/google/android/gms/internal/ads/f3;->e:Lcom/google/android/gms/internal/ads/d3;

    .line 391
    .line 392
    :goto_4
    iput v11, v0, Lcom/google/android/gms/internal/ads/f3;->c:I

    .line 393
    .line 394
    return v6

    .line 395
    :cond_e
    new-instance v1, Ljava/lang/StringBuilder;

    .line 396
    .line 397
    const-string v2, "Unsupported WAV format type: "

    .line 398
    .line 399
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 400
    .line 401
    .line 402
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 403
    .line 404
    .line 405
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 406
    .line 407
    .line 408
    move-result-object v1

    .line 409
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/Ka;->b(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/Ka;

    .line 410
    .line 411
    .line 412
    move-result-object v1

    .line 413
    throw v1

    .line 414
    :cond_f
    new-instance v2, Lcom/google/android/gms/internal/ads/jr;

    .line 415
    .line 416
    invoke-direct {v2, v10}, Lcom/google/android/gms/internal/ads/jr;-><init>(I)V

    .line 417
    .line 418
    .line 419
    invoke-static {v1, v2}, LS0/g;->c(Lcom/google/android/gms/internal/ads/M;Lcom/google/android/gms/internal/ads/jr;)LS0/g;

    .line 420
    .line 421
    .line 422
    move-result-object v3

    .line 423
    iget v4, v3, LS0/g;->a:I

    .line 424
    .line 425
    const v5, 0x64733634

    .line 426
    .line 427
    .line 428
    if-eq v4, v5, :cond_10

    .line 429
    .line 430
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/M;->zzj()V

    .line 431
    .line 432
    .line 433
    goto :goto_5

    .line 434
    :cond_10
    invoke-interface {v1, v10}, Lcom/google/android/gms/internal/ads/M;->zzg(I)V

    .line 435
    .line 436
    .line 437
    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/ads/jr;->j(I)V

    .line 438
    .line 439
    .line 440
    iget-object v4, v2, Lcom/google/android/gms/internal/ads/jr;->a:[B

    .line 441
    .line 442
    invoke-interface {v1, v6, v4, v10}, Lcom/google/android/gms/internal/ads/M;->g(I[BI)V

    .line 443
    .line 444
    .line 445
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/jr;->B()J

    .line 446
    .line 447
    .line 448
    move-result-wide v8

    .line 449
    iget-wide v2, v3, LS0/g;->b:J

    .line 450
    .line 451
    long-to-int v3, v2

    .line 452
    add-int/2addr v3, v10

    .line 453
    invoke-interface {v1, v3}, Lcom/google/android/gms/internal/ads/M;->q(I)V

    .line 454
    .line 455
    .line 456
    :goto_5
    iput-wide v8, v0, Lcom/google/android/gms/internal/ads/f3;->d:J

    .line 457
    .line 458
    iput v7, v0, Lcom/google/android/gms/internal/ads/f3;->c:I

    .line 459
    .line 460
    return v6

    .line 461
    :cond_11
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/M;->zzf()J

    .line 462
    .line 463
    .line 464
    move-result-wide v7

    .line 465
    const-wide/16 v9, 0x0

    .line 466
    .line 467
    cmp-long v2, v7, v9

    .line 468
    .line 469
    if-nez v2, :cond_12

    .line 470
    .line 471
    const/4 v2, 0x1

    .line 472
    goto :goto_6

    .line 473
    :cond_12
    const/4 v2, 0x0

    .line 474
    :goto_6
    invoke-static {v2}, Lo3/r;->M(Z)V

    .line 475
    .line 476
    .line 477
    iget v2, v0, Lcom/google/android/gms/internal/ads/f3;->f:I

    .line 478
    .line 479
    if-eq v2, v3, :cond_13

    .line 480
    .line 481
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/M;->q(I)V

    .line 482
    .line 483
    .line 484
    iput v4, v0, Lcom/google/android/gms/internal/ads/f3;->c:I

    .line 485
    .line 486
    goto :goto_7

    .line 487
    :cond_13
    invoke-static/range {p1 .. p1}, Lo3/r;->D(Lcom/google/android/gms/internal/ads/M;)Z

    .line 488
    .line 489
    .line 490
    move-result v2

    .line 491
    if-eqz v2, :cond_14

    .line 492
    .line 493
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/M;->zze()J

    .line 494
    .line 495
    .line 496
    move-result-wide v2

    .line 497
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/M;->zzf()J

    .line 498
    .line 499
    .line 500
    move-result-wide v7

    .line 501
    sub-long/2addr v2, v7

    .line 502
    long-to-int v3, v2

    .line 503
    invoke-interface {v1, v3}, Lcom/google/android/gms/internal/ads/M;->q(I)V

    .line 504
    .line 505
    .line 506
    iput v5, v0, Lcom/google/android/gms/internal/ads/f3;->c:I

    .line 507
    .line 508
    :goto_7
    return v6

    .line 509
    :cond_14
    const-string v1, "Unsupported or unrecognized wav file type."

    .line 510
    .line 511
    const/4 v2, 0x0

    .line 512
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/Ka;->a(Ljava/lang/String;Ljava/lang/RuntimeException;)Lcom/google/android/gms/internal/ads/Ka;

    .line 513
    .line 514
    .line 515
    move-result-object v1

    .line 516
    throw v1
.end method

.method public final d(Lcom/google/android/gms/internal/ads/M;)Z
    .locals 0

    .line 1
    invoke-static {p1}, Lo3/r;->D(Lcom/google/android/gms/internal/ads/M;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public final e(JJ)V
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
    iput p1, p0, Lcom/google/android/gms/internal/ads/f3;->c:I

    .line 11
    .line 12
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/f3;->e:Lcom/google/android/gms/internal/ads/d3;

    .line 13
    .line 14
    if-eqz p1, :cond_1

    .line 15
    .line 16
    invoke-interface {p1, p3, p4}, Lcom/google/android/gms/internal/ads/d3;->a(J)V

    .line 17
    .line 18
    .line 19
    :cond_1
    return-void
.end method

.method public final f(Lcom/google/android/gms/internal/ads/N;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/f3;->a:Lcom/google/android/gms/internal/ads/N;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const/4 v1, 0x1

    .line 5
    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/N;->h(II)Lcom/google/android/gms/internal/ads/e0;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/f3;->b:Lcom/google/android/gms/internal/ads/e0;

    .line 10
    .line 11
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/N;->f()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final zzd()Ljava/util/List;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/uA;->H:Lcom/google/android/gms/internal/ads/sA;

    .line 2
    .line 3
    sget-object v0, Lcom/google/android/gms/internal/ads/PA;->K:Lcom/google/android/gms/internal/ads/PA;

    .line 4
    .line 5
    return-object v0
.end method
