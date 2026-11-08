.class public final Lcom/google/android/gms/internal/ads/Q2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/a3;


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/F2;

.field public final b:Lcom/google/android/gms/internal/ads/f0;

.field public c:I

.field public d:I

.field public e:Lcom/google/android/gms/internal/ads/Ys;

.field public f:Z

.field public g:Z

.field public h:Z

.field public i:I

.field public j:I

.field public k:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/F2;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Q2;->a:Lcom/google/android/gms/internal/ads/F2;

    new-instance p1, Lcom/google/android/gms/internal/ads/f0;

    const/16 v0, 0xa

    new-array v1, v0, [B

    invoke-direct {p1, v1, v0}, Lcom/google/android/gms/internal/ads/f0;-><init>([BI)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Q2;->b:Lcom/google/android/gms/internal/ads/f0;

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/ads/Q2;->c:I

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/Ys;Lcom/google/android/gms/internal/ads/N;LA1/I;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Q2;->e:Lcom/google/android/gms/internal/ads/Ys;

    .line 2
    .line 3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Q2;->a:Lcom/google/android/gms/internal/ads/F2;

    .line 4
    .line 5
    invoke-interface {p1, p2, p3}, Lcom/google/android/gms/internal/ads/F2;->c(Lcom/google/android/gms/internal/ads/N;LA1/I;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final b(ILcom/google/android/gms/internal/ads/jr;)V
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/Q2;->e:Lcom/google/android/gms/internal/ads/Ys;

    .line 6
    .line 7
    invoke-static {v2}, Lo3/r;->x(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    and-int/lit8 v2, p1, 0x1

    .line 11
    .line 12
    const/4 v3, 0x1

    .line 13
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/Q2;->a:Lcom/google/android/gms/internal/ads/F2;

    .line 14
    .line 15
    const-string v5, "PesReader"

    .line 16
    .line 17
    const/4 v6, -0x1

    .line 18
    const/4 v7, 0x2

    .line 19
    const/4 v8, 0x0

    .line 20
    if-eqz v2, :cond_4

    .line 21
    .line 22
    iget v2, v0, Lcom/google/android/gms/internal/ads/Q2;->c:I

    .line 23
    .line 24
    if-eqz v2, :cond_3

    .line 25
    .line 26
    if-eq v2, v3, :cond_3

    .line 27
    .line 28
    if-eq v2, v7, :cond_2

    .line 29
    .line 30
    iget v2, v0, Lcom/google/android/gms/internal/ads/Q2;->j:I

    .line 31
    .line 32
    if-eq v2, v6, :cond_0

    .line 33
    .line 34
    new-instance v9, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    const-string v10, "Unexpected start indicator: expected "

    .line 37
    .line 38
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string v2, " more bytes"

    .line 45
    .line 46
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    invoke-static {v5, v2}, Lcom/google/android/gms/internal/ads/Zo;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    :cond_0
    iget v2, v1, Lcom/google/android/gms/internal/ads/jr;->c:I

    .line 57
    .line 58
    if-nez v2, :cond_1

    .line 59
    .line 60
    const/4 v2, 0x1

    .line 61
    goto :goto_0

    .line 62
    :cond_1
    const/4 v2, 0x0

    .line 63
    :goto_0
    invoke-interface {v4, v2}, Lcom/google/android/gms/internal/ads/F2;->zzc(Z)V

    .line 64
    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_2
    const-string v2, "Unexpected start indicator reading extended header"

    .line 68
    .line 69
    invoke-static {v5, v2}, Lcom/google/android/gms/internal/ads/Zo;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    :cond_3
    :goto_1
    iput v3, v0, Lcom/google/android/gms/internal/ads/Q2;->c:I

    .line 73
    .line 74
    iput v8, v0, Lcom/google/android/gms/internal/ads/Q2;->d:I

    .line 75
    .line 76
    :cond_4
    move/from16 v2, p1

    .line 77
    .line 78
    :goto_2
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/jr;->o()I

    .line 79
    .line 80
    .line 81
    move-result v9

    .line 82
    if-lez v9, :cond_13

    .line 83
    .line 84
    iget v9, v0, Lcom/google/android/gms/internal/ads/Q2;->c:I

    .line 85
    .line 86
    if-eqz v9, :cond_12

    .line 87
    .line 88
    iget-object v10, v0, Lcom/google/android/gms/internal/ads/Q2;->b:Lcom/google/android/gms/internal/ads/f0;

    .line 89
    .line 90
    if-eq v9, v3, :cond_d

    .line 91
    .line 92
    if-eq v9, v7, :cond_8

    .line 93
    .line 94
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/jr;->o()I

    .line 95
    .line 96
    .line 97
    move-result v9

    .line 98
    iget v10, v0, Lcom/google/android/gms/internal/ads/Q2;->j:I

    .line 99
    .line 100
    if-ne v10, v6, :cond_5

    .line 101
    .line 102
    const/4 v10, 0x0

    .line 103
    goto :goto_3

    .line 104
    :cond_5
    sub-int v10, v9, v10

    .line 105
    .line 106
    :goto_3
    if-lez v10, :cond_6

    .line 107
    .line 108
    sub-int/2addr v9, v10

    .line 109
    iget v10, v1, Lcom/google/android/gms/internal/ads/jr;->b:I

    .line 110
    .line 111
    add-int/2addr v10, v9

    .line 112
    invoke-virtual {v1, v10}, Lcom/google/android/gms/internal/ads/jr;->i(I)V

    .line 113
    .line 114
    .line 115
    :cond_6
    invoke-interface {v4, v1}, Lcom/google/android/gms/internal/ads/F2;->b(Lcom/google/android/gms/internal/ads/jr;)V

    .line 116
    .line 117
    .line 118
    iget v10, v0, Lcom/google/android/gms/internal/ads/Q2;->j:I

    .line 119
    .line 120
    if-eq v10, v6, :cond_7

    .line 121
    .line 122
    sub-int/2addr v10, v9

    .line 123
    iput v10, v0, Lcom/google/android/gms/internal/ads/Q2;->j:I

    .line 124
    .line 125
    if-nez v10, :cond_7

    .line 126
    .line 127
    invoke-interface {v4, v8}, Lcom/google/android/gms/internal/ads/F2;->zzc(Z)V

    .line 128
    .line 129
    .line 130
    iput v3, v0, Lcom/google/android/gms/internal/ads/Q2;->c:I

    .line 131
    .line 132
    iput v8, v0, Lcom/google/android/gms/internal/ads/Q2;->d:I

    .line 133
    .line 134
    :cond_7
    move-object v6, v1

    .line 135
    move/from16 v19, v2

    .line 136
    .line 137
    const/4 v1, 0x0

    .line 138
    const/4 v8, -0x1

    .line 139
    move-object/from16 v20, v5

    .line 140
    .line 141
    move-object v5, v4

    .line 142
    move-object/from16 v4, v20

    .line 143
    .line 144
    goto/16 :goto_a

    .line 145
    .line 146
    :cond_8
    const/16 v9, 0xa

    .line 147
    .line 148
    iget v11, v0, Lcom/google/android/gms/internal/ads/Q2;->i:I

    .line 149
    .line 150
    invoke-static {v9, v11}, Ljava/lang/Math;->min(II)I

    .line 151
    .line 152
    .line 153
    move-result v9

    .line 154
    iget-object v11, v10, Lcom/google/android/gms/internal/ads/f0;->b:[B

    .line 155
    .line 156
    invoke-virtual {v0, v1, v11, v9}, Lcom/google/android/gms/internal/ads/Q2;->c(Lcom/google/android/gms/internal/ads/jr;[BI)Z

    .line 157
    .line 158
    .line 159
    move-result v9

    .line 160
    if-eqz v9, :cond_c

    .line 161
    .line 162
    const/4 v9, 0x0

    .line 163
    iget v11, v0, Lcom/google/android/gms/internal/ads/Q2;->i:I

    .line 164
    .line 165
    invoke-virtual {v0, v1, v9, v11}, Lcom/google/android/gms/internal/ads/Q2;->c(Lcom/google/android/gms/internal/ads/jr;[BI)Z

    .line 166
    .line 167
    .line 168
    move-result v9

    .line 169
    if-eqz v9, :cond_c

    .line 170
    .line 171
    invoke-virtual {v10, v8}, Lcom/google/android/gms/internal/ads/f0;->t(I)V

    .line 172
    .line 173
    .line 174
    iget-boolean v9, v0, Lcom/google/android/gms/internal/ads/Q2;->f:Z

    .line 175
    .line 176
    const/4 v11, 0x3

    .line 177
    const/4 v12, 0x4

    .line 178
    if-eqz v9, :cond_a

    .line 179
    .line 180
    invoke-virtual {v10, v12}, Lcom/google/android/gms/internal/ads/f0;->v(I)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v10, v11}, Lcom/google/android/gms/internal/ads/f0;->g(I)I

    .line 184
    .line 185
    .line 186
    move-result v9

    .line 187
    int-to-long v13, v9

    .line 188
    invoke-virtual {v10, v3}, Lcom/google/android/gms/internal/ads/f0;->v(I)V

    .line 189
    .line 190
    .line 191
    const/16 v9, 0xf

    .line 192
    .line 193
    invoke-virtual {v10, v9}, Lcom/google/android/gms/internal/ads/f0;->g(I)I

    .line 194
    .line 195
    .line 196
    move-result v15

    .line 197
    shl-int/2addr v15, v9

    .line 198
    invoke-virtual {v10, v3}, Lcom/google/android/gms/internal/ads/f0;->v(I)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {v10, v9}, Lcom/google/android/gms/internal/ads/f0;->g(I)I

    .line 202
    .line 203
    .line 204
    move-result v7

    .line 205
    int-to-long v6, v7

    .line 206
    invoke-virtual {v10, v3}, Lcom/google/android/gms/internal/ads/f0;->v(I)V

    .line 207
    .line 208
    .line 209
    iget-boolean v8, v0, Lcom/google/android/gms/internal/ads/Q2;->h:Z

    .line 210
    .line 211
    const/16 v16, 0x1e

    .line 212
    .line 213
    if-nez v8, :cond_9

    .line 214
    .line 215
    iget-boolean v8, v0, Lcom/google/android/gms/internal/ads/Q2;->g:Z

    .line 216
    .line 217
    if-eqz v8, :cond_9

    .line 218
    .line 219
    invoke-virtual {v10, v12}, Lcom/google/android/gms/internal/ads/f0;->v(I)V

    .line 220
    .line 221
    .line 222
    invoke-virtual {v10, v11}, Lcom/google/android/gms/internal/ads/f0;->g(I)I

    .line 223
    .line 224
    .line 225
    move-result v8

    .line 226
    int-to-long v11, v8

    .line 227
    shl-long v11, v11, v16

    .line 228
    .line 229
    invoke-virtual {v10, v3}, Lcom/google/android/gms/internal/ads/f0;->v(I)V

    .line 230
    .line 231
    .line 232
    invoke-virtual {v10, v9}, Lcom/google/android/gms/internal/ads/f0;->g(I)I

    .line 233
    .line 234
    .line 235
    move-result v8

    .line 236
    shl-int/2addr v8, v9

    .line 237
    invoke-virtual {v10, v3}, Lcom/google/android/gms/internal/ads/f0;->v(I)V

    .line 238
    .line 239
    .line 240
    invoke-virtual {v10, v9}, Lcom/google/android/gms/internal/ads/f0;->g(I)I

    .line 241
    .line 242
    .line 243
    move-result v9

    .line 244
    move-object/from16 v17, v4

    .line 245
    .line 246
    move-object/from16 v18, v5

    .line 247
    .line 248
    int-to-long v4, v9

    .line 249
    invoke-virtual {v10, v3}, Lcom/google/android/gms/internal/ads/f0;->v(I)V

    .line 250
    .line 251
    .line 252
    iget-object v9, v0, Lcom/google/android/gms/internal/ads/Q2;->e:Lcom/google/android/gms/internal/ads/Ys;

    .line 253
    .line 254
    move/from16 v19, v2

    .line 255
    .line 256
    int-to-long v1, v8

    .line 257
    or-long/2addr v1, v11

    .line 258
    or-long/2addr v1, v4

    .line 259
    invoke-virtual {v9, v1, v2}, Lcom/google/android/gms/internal/ads/Ys;->b(J)J

    .line 260
    .line 261
    .line 262
    iput-boolean v3, v0, Lcom/google/android/gms/internal/ads/Q2;->h:Z

    .line 263
    .line 264
    goto :goto_4

    .line 265
    :cond_9
    move/from16 v19, v2

    .line 266
    .line 267
    move-object/from16 v17, v4

    .line 268
    .line 269
    move-object/from16 v18, v5

    .line 270
    .line 271
    :goto_4
    shl-long v1, v13, v16

    .line 272
    .line 273
    int-to-long v4, v15

    .line 274
    or-long/2addr v1, v4

    .line 275
    or-long/2addr v1, v6

    .line 276
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/Q2;->e:Lcom/google/android/gms/internal/ads/Ys;

    .line 277
    .line 278
    invoke-virtual {v4, v1, v2}, Lcom/google/android/gms/internal/ads/Ys;->b(J)J

    .line 279
    .line 280
    .line 281
    move-result-wide v1

    .line 282
    goto :goto_5

    .line 283
    :cond_a
    move/from16 v19, v2

    .line 284
    .line 285
    move-object/from16 v17, v4

    .line 286
    .line 287
    move-object/from16 v18, v5

    .line 288
    .line 289
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    :goto_5
    iget-boolean v4, v0, Lcom/google/android/gms/internal/ads/Q2;->k:Z

    .line 295
    .line 296
    if-eq v3, v4, :cond_b

    .line 297
    .line 298
    const/4 v12, 0x0

    .line 299
    goto :goto_6

    .line 300
    :cond_b
    const/4 v12, 0x4

    .line 301
    :goto_6
    or-int v4, v19, v12

    .line 302
    .line 303
    move-object/from16 v5, v17

    .line 304
    .line 305
    invoke-interface {v5, v4, v1, v2}, Lcom/google/android/gms/internal/ads/F2;->d(IJ)V

    .line 306
    .line 307
    .line 308
    const/4 v1, 0x3

    .line 309
    iput v1, v0, Lcom/google/android/gms/internal/ads/Q2;->c:I

    .line 310
    .line 311
    const/4 v1, 0x0

    .line 312
    iput v1, v0, Lcom/google/android/gms/internal/ads/Q2;->d:I

    .line 313
    .line 314
    move-object/from16 v1, p2

    .line 315
    .line 316
    move v2, v4

    .line 317
    move-object v4, v5

    .line 318
    move-object/from16 v5, v18

    .line 319
    .line 320
    const/4 v6, -0x1

    .line 321
    const/4 v7, 0x2

    .line 322
    const/4 v8, 0x0

    .line 323
    goto/16 :goto_2

    .line 324
    .line 325
    :cond_c
    move/from16 v19, v2

    .line 326
    .line 327
    move-object/from16 v18, v5

    .line 328
    .line 329
    move-object v5, v4

    .line 330
    move-object/from16 v6, p2

    .line 331
    .line 332
    move-object/from16 v4, v18

    .line 333
    .line 334
    const/4 v1, 0x0

    .line 335
    :goto_7
    const/4 v8, -0x1

    .line 336
    goto/16 :goto_a

    .line 337
    .line 338
    :cond_d
    move/from16 v19, v2

    .line 339
    .line 340
    move-object/from16 v18, v5

    .line 341
    .line 342
    const/4 v1, 0x0

    .line 343
    move-object v5, v4

    .line 344
    iget-object v2, v10, Lcom/google/android/gms/internal/ads/f0;->b:[B

    .line 345
    .line 346
    const/16 v4, 0x9

    .line 347
    .line 348
    move-object/from16 v6, p2

    .line 349
    .line 350
    invoke-virtual {v0, v6, v2, v4}, Lcom/google/android/gms/internal/ads/Q2;->c(Lcom/google/android/gms/internal/ads/jr;[BI)Z

    .line 351
    .line 352
    .line 353
    move-result v2

    .line 354
    if-eqz v2, :cond_11

    .line 355
    .line 356
    invoke-virtual {v10, v1}, Lcom/google/android/gms/internal/ads/f0;->t(I)V

    .line 357
    .line 358
    .line 359
    const/16 v1, 0x18

    .line 360
    .line 361
    invoke-virtual {v10, v1}, Lcom/google/android/gms/internal/ads/f0;->g(I)I

    .line 362
    .line 363
    .line 364
    move-result v1

    .line 365
    if-eq v1, v3, :cond_e

    .line 366
    .line 367
    const-string v2, "Unexpected start code prefix: "

    .line 368
    .line 369
    move-object/from16 v4, v18

    .line 370
    .line 371
    invoke-static {v2, v1, v4}, La/r;->p(Ljava/lang/String;ILjava/lang/String;)V

    .line 372
    .line 373
    .line 374
    const/4 v1, -0x1

    .line 375
    iput v1, v0, Lcom/google/android/gms/internal/ads/Q2;->j:I

    .line 376
    .line 377
    const/4 v1, 0x0

    .line 378
    const/4 v7, 0x2

    .line 379
    const/4 v8, -0x1

    .line 380
    goto :goto_9

    .line 381
    :cond_e
    move-object/from16 v4, v18

    .line 382
    .line 383
    const/16 v1, 0x8

    .line 384
    .line 385
    invoke-virtual {v10, v1}, Lcom/google/android/gms/internal/ads/f0;->v(I)V

    .line 386
    .line 387
    .line 388
    const/16 v2, 0x10

    .line 389
    .line 390
    invoke-virtual {v10, v2}, Lcom/google/android/gms/internal/ads/f0;->g(I)I

    .line 391
    .line 392
    .line 393
    move-result v2

    .line 394
    const/4 v7, 0x5

    .line 395
    invoke-virtual {v10, v7}, Lcom/google/android/gms/internal/ads/f0;->v(I)V

    .line 396
    .line 397
    .line 398
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/f0;->x()Z

    .line 399
    .line 400
    .line 401
    move-result v7

    .line 402
    iput-boolean v7, v0, Lcom/google/android/gms/internal/ads/Q2;->k:Z

    .line 403
    .line 404
    const/4 v7, 0x2

    .line 405
    invoke-virtual {v10, v7}, Lcom/google/android/gms/internal/ads/f0;->v(I)V

    .line 406
    .line 407
    .line 408
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/f0;->x()Z

    .line 409
    .line 410
    .line 411
    move-result v8

    .line 412
    iput-boolean v8, v0, Lcom/google/android/gms/internal/ads/Q2;->f:Z

    .line 413
    .line 414
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/f0;->x()Z

    .line 415
    .line 416
    .line 417
    move-result v8

    .line 418
    iput-boolean v8, v0, Lcom/google/android/gms/internal/ads/Q2;->g:Z

    .line 419
    .line 420
    const/4 v8, 0x6

    .line 421
    invoke-virtual {v10, v8}, Lcom/google/android/gms/internal/ads/f0;->v(I)V

    .line 422
    .line 423
    .line 424
    invoke-virtual {v10, v1}, Lcom/google/android/gms/internal/ads/f0;->g(I)I

    .line 425
    .line 426
    .line 427
    move-result v1

    .line 428
    iput v1, v0, Lcom/google/android/gms/internal/ads/Q2;->i:I

    .line 429
    .line 430
    const/4 v8, -0x1

    .line 431
    if-nez v2, :cond_10

    .line 432
    .line 433
    iput v8, v0, Lcom/google/android/gms/internal/ads/Q2;->j:I

    .line 434
    .line 435
    :cond_f
    :goto_8
    const/4 v1, 0x2

    .line 436
    goto :goto_9

    .line 437
    :cond_10
    add-int/lit8 v2, v2, -0x3

    .line 438
    .line 439
    sub-int/2addr v2, v1

    .line 440
    iput v2, v0, Lcom/google/android/gms/internal/ads/Q2;->j:I

    .line 441
    .line 442
    if-gez v2, :cond_f

    .line 443
    .line 444
    const-string v1, "Found negative packet payload size: "

    .line 445
    .line 446
    invoke-static {v1, v2, v4}, La/r;->p(Ljava/lang/String;ILjava/lang/String;)V

    .line 447
    .line 448
    .line 449
    iput v8, v0, Lcom/google/android/gms/internal/ads/Q2;->j:I

    .line 450
    .line 451
    goto :goto_8

    .line 452
    :goto_9
    iput v1, v0, Lcom/google/android/gms/internal/ads/Q2;->c:I

    .line 453
    .line 454
    const/4 v1, 0x0

    .line 455
    iput v1, v0, Lcom/google/android/gms/internal/ads/Q2;->d:I

    .line 456
    .line 457
    goto :goto_a

    .line 458
    :cond_11
    move-object/from16 v4, v18

    .line 459
    .line 460
    const/4 v7, 0x2

    .line 461
    goto :goto_7

    .line 462
    :cond_12
    move-object v6, v1

    .line 463
    move/from16 v19, v2

    .line 464
    .line 465
    const/4 v1, 0x0

    .line 466
    const/4 v8, -0x1

    .line 467
    move-object/from16 v20, v5

    .line 468
    .line 469
    move-object v5, v4

    .line 470
    move-object/from16 v4, v20

    .line 471
    .line 472
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/jr;->o()I

    .line 473
    .line 474
    .line 475
    move-result v2

    .line 476
    invoke-virtual {v6, v2}, Lcom/google/android/gms/internal/ads/jr;->k(I)V

    .line 477
    .line 478
    .line 479
    :goto_a
    move-object v1, v6

    .line 480
    move/from16 v2, v19

    .line 481
    .line 482
    const/4 v6, -0x1

    .line 483
    const/4 v8, 0x0

    .line 484
    move-object/from16 v20, v5

    .line 485
    .line 486
    move-object v5, v4

    .line 487
    move-object/from16 v4, v20

    .line 488
    .line 489
    goto/16 :goto_2

    .line 490
    .line 491
    :cond_13
    return-void
.end method

.method public final c(Lcom/google/android/gms/internal/ads/jr;[BI)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/jr;->o()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget v1, p0, Lcom/google/android/gms/internal/ads/Q2;->d:I

    .line 6
    .line 7
    sub-int v1, p3, v1

    .line 8
    .line 9
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x1

    .line 14
    if-gtz v0, :cond_0

    .line 15
    .line 16
    return v1

    .line 17
    :cond_0
    if-nez p2, :cond_1

    .line 18
    .line 19
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/jr;->k(I)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    iget v2, p0, Lcom/google/android/gms/internal/ads/Q2;->d:I

    .line 24
    .line 25
    invoke-virtual {p1, v2, p2, v0}, Lcom/google/android/gms/internal/ads/jr;->f(I[BI)V

    .line 26
    .line 27
    .line 28
    :goto_0
    iget p1, p0, Lcom/google/android/gms/internal/ads/Q2;->d:I

    .line 29
    .line 30
    add-int/2addr p1, v0

    .line 31
    iput p1, p0, Lcom/google/android/gms/internal/ads/Q2;->d:I

    .line 32
    .line 33
    if-ne p1, p3, :cond_2

    .line 34
    .line 35
    return v1

    .line 36
    :cond_2
    const/4 p1, 0x0

    .line 37
    return p1
.end method

.method public final zzc()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/google/android/gms/internal/ads/Q2;->c:I

    .line 3
    .line 4
    iput v0, p0, Lcom/google/android/gms/internal/ads/Q2;->d:I

    .line 5
    .line 6
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/Q2;->h:Z

    .line 7
    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Q2;->a:Lcom/google/android/gms/internal/ads/F2;

    .line 9
    .line 10
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/F2;->zze()V

    .line 11
    .line 12
    .line 13
    return-void
.end method
