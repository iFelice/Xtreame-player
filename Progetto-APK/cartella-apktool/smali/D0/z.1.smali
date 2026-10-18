.class public final LD0/z;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public A:J

.field public B:J

.field public C:J

.field public D:Z

.field public E:J

.field public F:J

.field public G:Z

.field public H:J

.field public I:Lp0/f;

.field public final a:LD0/N;

.field public final b:[J

.field public c:Landroid/media/AudioTrack;

.field public d:I

.field public e:LD0/x;

.field public f:I

.field public g:Z

.field public h:J

.field public i:F

.field public j:Z

.field public k:J

.field public l:I

.field public m:J

.field public n:J

.field public o:Ljava/lang/reflect/Method;

.field public p:J

.field public q:Z

.field public r:Z

.field public s:J

.field public t:J

.field public u:J

.field public v:J

.field public w:J

.field public x:I

.field public y:I

.field public z:J


# direct methods
.method public constructor <init>(LD0/N;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LD0/z;->a:LD0/N;

    .line 5
    .line 6
    :try_start_0
    const-class p1, Landroid/media/AudioTrack;

    .line 7
    .line 8
    const-string v0, "getLatency"

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {p1, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iput-object p1, p0, LD0/z;->o:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    .line 17
    :catch_0
    const/16 p1, 0xa

    .line 18
    .line 19
    new-array p1, p1, [J

    .line 20
    .line 21
    iput-object p1, p0, LD0/z;->b:[J

    .line 22
    .line 23
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    iput-wide v0, p0, LD0/z;->F:J

    .line 29
    .line 30
    iput-wide v0, p0, LD0/z;->E:J

    .line 31
    .line 32
    sget-object p1, Lp0/f;->a:Lp0/G;

    .line 33
    .line 34
    iput-object p1, p0, LD0/z;->I:Lp0/f;

    .line 35
    .line 36
    return-void
.end method


# virtual methods
.method public final a()J
    .locals 32

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, LD0/z;->c:Landroid/media/AudioTrack;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v1}, Landroid/media/AudioTrack;->getPlayState()I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    const/4 v3, 0x1

    .line 13
    const-wide/16 v4, 0x3e8

    .line 14
    .line 15
    iget-object v7, v0, LD0/z;->a:LD0/N;

    .line 16
    .line 17
    const-wide/16 v8, 0x0

    .line 18
    .line 19
    const/4 v10, 0x0

    .line 20
    const/4 v11, 0x3

    .line 21
    if-ne v2, v11, :cond_19

    .line 22
    .line 23
    iget-object v2, v0, LD0/z;->I:Lp0/f;

    .line 24
    .line 25
    check-cast v2, Lp0/G;

    .line 26
    .line 27
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 31
    .line 32
    .line 33
    move-result-wide v12

    .line 34
    div-long/2addr v12, v4

    .line 35
    iget-wide v14, v0, LD0/z;->n:J

    .line 36
    .line 37
    sub-long v14, v12, v14

    .line 38
    .line 39
    const-wide/16 v16, 0x7530

    .line 40
    .line 41
    cmp-long v2, v14, v16

    .line 42
    .line 43
    if-ltz v2, :cond_2

    .line 44
    .line 45
    invoke-virtual/range {p0 .. p0}, LD0/z;->b()J

    .line 46
    .line 47
    .line 48
    move-result-wide v14

    .line 49
    iget v2, v0, LD0/z;->f:I

    .line 50
    .line 51
    invoke-static {v2, v14, v15}, Lp0/M;->X(IJ)J

    .line 52
    .line 53
    .line 54
    move-result-wide v14

    .line 55
    cmp-long v2, v14, v8

    .line 56
    .line 57
    if-nez v2, :cond_0

    .line 58
    .line 59
    move-object/from16 v28, v1

    .line 60
    .line 61
    move-object/from16 v17, v7

    .line 62
    .line 63
    goto/16 :goto_8

    .line 64
    .line 65
    :cond_0
    iget v2, v0, LD0/z;->x:I

    .line 66
    .line 67
    iget v11, v0, LD0/z;->i:F

    .line 68
    .line 69
    invoke-static {v14, v15, v11}, Lp0/M;->C(JF)J

    .line 70
    .line 71
    .line 72
    move-result-wide v14

    .line 73
    sub-long/2addr v14, v12

    .line 74
    iget-object v11, v0, LD0/z;->b:[J

    .line 75
    .line 76
    aput-wide v14, v11, v2

    .line 77
    .line 78
    iget v2, v0, LD0/z;->x:I

    .line 79
    .line 80
    add-int/2addr v2, v3

    .line 81
    const/16 v14, 0xa

    .line 82
    .line 83
    rem-int/2addr v2, v14

    .line 84
    iput v2, v0, LD0/z;->x:I

    .line 85
    .line 86
    iget v2, v0, LD0/z;->y:I

    .line 87
    .line 88
    if-ge v2, v14, :cond_1

    .line 89
    .line 90
    add-int/2addr v2, v3

    .line 91
    iput v2, v0, LD0/z;->y:I

    .line 92
    .line 93
    :cond_1
    iput-wide v12, v0, LD0/z;->n:J

    .line 94
    .line 95
    iput-wide v8, v0, LD0/z;->m:J

    .line 96
    .line 97
    const/4 v2, 0x0

    .line 98
    :goto_0
    iget v14, v0, LD0/z;->y:I

    .line 99
    .line 100
    if-ge v2, v14, :cond_2

    .line 101
    .line 102
    move-object/from16 v17, v7

    .line 103
    .line 104
    iget-wide v6, v0, LD0/z;->m:J

    .line 105
    .line 106
    aget-wide v18, v11, v2

    .line 107
    .line 108
    int-to-long v8, v14

    .line 109
    div-long v18, v18, v8

    .line 110
    .line 111
    add-long v6, v18, v6

    .line 112
    .line 113
    iput-wide v6, v0, LD0/z;->m:J

    .line 114
    .line 115
    add-int/lit8 v2, v2, 0x1

    .line 116
    .line 117
    move-object/from16 v7, v17

    .line 118
    .line 119
    const-wide/16 v8, 0x0

    .line 120
    .line 121
    goto :goto_0

    .line 122
    :cond_2
    move-object/from16 v17, v7

    .line 123
    .line 124
    iget-boolean v2, v0, LD0/z;->g:Z

    .line 125
    .line 126
    if-eqz v2, :cond_3

    .line 127
    .line 128
    :goto_1
    move-object/from16 v28, v1

    .line 129
    .line 130
    goto/16 :goto_8

    .line 131
    .line 132
    :cond_3
    iget-boolean v2, v0, LD0/z;->r:Z

    .line 133
    .line 134
    const-string v6, "DefaultAudioSink"

    .line 135
    .line 136
    const-wide/32 v18, 0x7a120

    .line 137
    .line 138
    .line 139
    if-eqz v2, :cond_5

    .line 140
    .line 141
    iget-object v2, v0, LD0/z;->o:Ljava/lang/reflect/Method;

    .line 142
    .line 143
    if-eqz v2, :cond_5

    .line 144
    .line 145
    iget-wide v7, v0, LD0/z;->s:J

    .line 146
    .line 147
    sub-long v7, v12, v7

    .line 148
    .line 149
    cmp-long v9, v7, v18

    .line 150
    .line 151
    if-ltz v9, :cond_5

    .line 152
    .line 153
    :try_start_0
    iget-object v7, v0, LD0/z;->c:Landroid/media/AudioTrack;

    .line 154
    .line 155
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 156
    .line 157
    .line 158
    new-array v8, v10, [Ljava/lang/Object;

    .line 159
    .line 160
    invoke-virtual {v2, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object v2

    .line 164
    check-cast v2, Ljava/lang/Integer;

    .line 165
    .line 166
    sget-object v7, Lp0/M;->a:Ljava/lang/String;

    .line 167
    .line 168
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 169
    .line 170
    .line 171
    move-result v2

    .line 172
    int-to-long v7, v2

    .line 173
    mul-long v7, v7, v4

    .line 174
    .line 175
    iget-wide v3, v0, LD0/z;->h:J

    .line 176
    .line 177
    sub-long/2addr v7, v3

    .line 178
    iput-wide v7, v0, LD0/z;->p:J

    .line 179
    .line 180
    const-wide/16 v3, 0x0

    .line 181
    .line 182
    invoke-static {v7, v8, v3, v4}, Ljava/lang/Math;->max(JJ)J

    .line 183
    .line 184
    .line 185
    move-result-wide v7

    .line 186
    iput-wide v7, v0, LD0/z;->p:J

    .line 187
    .line 188
    const-wide/32 v3, 0x4c4b40

    .line 189
    .line 190
    .line 191
    cmp-long v5, v7, v3

    .line 192
    .line 193
    if-lez v5, :cond_4

    .line 194
    .line 195
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 196
    .line 197
    .line 198
    new-instance v3, Ljava/lang/StringBuilder;

    .line 199
    .line 200
    const-string v4, "Ignoring impossibly large audio latency: "

    .line 201
    .line 202
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v3

    .line 212
    invoke-static {v6, v3}, Lp0/x;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    const-wide/16 v3, 0x0

    .line 216
    .line 217
    iput-wide v3, v0, LD0/z;->p:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    .line 219
    goto :goto_2

    .line 220
    :catch_0
    const/4 v3, 0x0

    .line 221
    iput-object v3, v0, LD0/z;->o:Ljava/lang/reflect/Method;

    .line 222
    .line 223
    :cond_4
    :goto_2
    iput-wide v12, v0, LD0/z;->s:J

    .line 224
    .line 225
    :cond_5
    iget-object v3, v0, LD0/z;->e:LD0/x;

    .line 226
    .line 227
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 228
    .line 229
    .line 230
    iget v4, v0, LD0/z;->i:F

    .line 231
    .line 232
    invoke-virtual {v0, v12, v13}, LD0/z;->c(J)J

    .line 233
    .line 234
    .line 235
    move-result-wide v7

    .line 236
    iget-wide v10, v3, LD0/x;->g:J

    .line 237
    .line 238
    sub-long v9, v12, v10

    .line 239
    .line 240
    move-object v11, v6

    .line 241
    iget-wide v5, v3, LD0/x;->f:J

    .line 242
    .line 243
    cmp-long v24, v9, v5

    .line 244
    .line 245
    if-gez v24, :cond_6

    .line 246
    .line 247
    goto :goto_1

    .line 248
    :cond_6
    iput-wide v12, v3, LD0/x;->g:J

    .line 249
    .line 250
    iget-object v6, v3, LD0/x;->a:LD0/w;

    .line 251
    .line 252
    iget-object v5, v6, LD0/w;->a:Landroid/media/AudioTrack;

    .line 253
    .line 254
    iget-object v9, v6, LD0/w;->b:Landroid/media/AudioTimestamp;

    .line 255
    .line 256
    invoke-virtual {v5, v9}, Landroid/media/AudioTrack;->getTimestamp(Landroid/media/AudioTimestamp;)Z

    .line 257
    .line 258
    .line 259
    move-result v10

    .line 260
    if-eqz v10, :cond_9

    .line 261
    .line 262
    iget-wide v14, v9, Landroid/media/AudioTimestamp;->framePosition:J

    .line 263
    .line 264
    move-object/from16 v26, v3

    .line 265
    .line 266
    iget-wide v2, v6, LD0/w;->d:J

    .line 267
    .line 268
    cmp-long v27, v2, v14

    .line 269
    .line 270
    if-lez v27, :cond_8

    .line 271
    .line 272
    iget-boolean v5, v6, LD0/w;->f:Z

    .line 273
    .line 274
    if-eqz v5, :cond_7

    .line 275
    .line 276
    move-object/from16 v28, v1

    .line 277
    .line 278
    iget-wide v0, v6, LD0/w;->g:J

    .line 279
    .line 280
    add-long/2addr v0, v2

    .line 281
    iput-wide v0, v6, LD0/w;->g:J

    .line 282
    .line 283
    const/4 v0, 0x0

    .line 284
    iput-boolean v0, v6, LD0/w;->f:Z

    .line 285
    .line 286
    goto :goto_3

    .line 287
    :cond_7
    move-object/from16 v28, v1

    .line 288
    .line 289
    iget-wide v0, v6, LD0/w;->c:J

    .line 290
    .line 291
    const-wide/16 v2, 0x1

    .line 292
    .line 293
    add-long/2addr v0, v2

    .line 294
    iput-wide v0, v6, LD0/w;->c:J

    .line 295
    .line 296
    goto :goto_3

    .line 297
    :cond_8
    move-object/from16 v28, v1

    .line 298
    .line 299
    :goto_3
    iput-wide v14, v6, LD0/w;->d:J

    .line 300
    .line 301
    iget-wide v0, v6, LD0/w;->g:J

    .line 302
    .line 303
    add-long/2addr v14, v0

    .line 304
    iget-wide v0, v6, LD0/w;->c:J

    .line 305
    .line 306
    const/16 v2, 0x20

    .line 307
    .line 308
    shl-long/2addr v0, v2

    .line 309
    add-long/2addr v14, v0

    .line 310
    iput-wide v14, v6, LD0/w;->e:J

    .line 311
    .line 312
    move-object/from16 v0, v26

    .line 313
    .line 314
    goto :goto_4

    .line 315
    :cond_9
    move-object/from16 v28, v1

    .line 316
    .line 317
    move-object v0, v3

    .line 318
    :goto_4
    iget v1, v0, LD0/x;->b:I

    .line 319
    .line 320
    if-eqz v10, :cond_c

    .line 321
    .line 322
    iget-wide v14, v9, Landroid/media/AudioTimestamp;->nanoTime:J

    .line 323
    .line 324
    const-wide/16 v22, 0x3e8

    .line 325
    .line 326
    div-long v14, v14, v22

    .line 327
    .line 328
    move/from16 v26, v4

    .line 329
    .line 330
    iget-wide v3, v6, LD0/w;->e:J

    .line 331
    .line 332
    iget-object v2, v6, LD0/w;->b:Landroid/media/AudioTimestamp;

    .line 333
    .line 334
    move-object/from16 v29, v6

    .line 335
    .line 336
    iget-wide v5, v2, Landroid/media/AudioTimestamp;->nanoTime:J

    .line 337
    .line 338
    div-long v5, v5, v22

    .line 339
    .line 340
    invoke-static {v1, v3, v4}, Lp0/M;->X(IJ)J

    .line 341
    .line 342
    .line 343
    move-result-wide v2

    .line 344
    sub-long v4, v12, v5

    .line 345
    .line 346
    move/from16 v6, v26

    .line 347
    .line 348
    invoke-static {v4, v5, v6}, Lp0/M;->y(JF)J

    .line 349
    .line 350
    .line 351
    move-result-wide v4

    .line 352
    add-long/2addr v4, v2

    .line 353
    sub-long v2, v14, v12

    .line 354
    .line 355
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    .line 356
    .line 357
    .line 358
    move-result-wide v2

    .line 359
    move-object/from16 v26, v9

    .line 360
    .line 361
    const-string v9, ", "

    .line 362
    .line 363
    move/from16 v30, v6

    .line 364
    .line 365
    iget-object v6, v0, LD0/x;->c:LD0/N;

    .line 366
    .line 367
    const-wide/32 v20, 0x4c4b40

    .line 368
    .line 369
    .line 370
    cmp-long v31, v2, v20

    .line 371
    .line 372
    if-lez v31, :cond_a

    .line 373
    .line 374
    move-object/from16 v3, v29

    .line 375
    .line 376
    iget-wide v4, v3, LD0/w;->e:J

    .line 377
    .line 378
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 379
    .line 380
    .line 381
    new-instance v2, Ljava/lang/StringBuilder;

    .line 382
    .line 383
    move/from16 v29, v1

    .line 384
    .line 385
    const-string v1, "Spurious audio timestamp (system clock mismatch): "

    .line 386
    .line 387
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 388
    .line 389
    .line 390
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 391
    .line 392
    .line 393
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    .line 395
    .line 396
    invoke-virtual {v2, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 397
    .line 398
    .line 399
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    .line 401
    .line 402
    invoke-virtual {v2, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 403
    .line 404
    .line 405
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 406
    .line 407
    .line 408
    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 409
    .line 410
    .line 411
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    .line 413
    .line 414
    iget-object v1, v6, LD0/N;->a:LD0/S;

    .line 415
    .line 416
    invoke-virtual {v1}, LD0/S;->l()J

    .line 417
    .line 418
    .line 419
    move-result-wide v4

    .line 420
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 421
    .line 422
    .line 423
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 424
    .line 425
    .line 426
    invoke-virtual {v1}, LD0/S;->m()J

    .line 427
    .line 428
    .line 429
    move-result-wide v4

    .line 430
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 431
    .line 432
    .line 433
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 434
    .line 435
    .line 436
    move-result-object v1

    .line 437
    sget-object v2, LD0/S;->p0:Ljava/lang/Object;

    .line 438
    .line 439
    invoke-static {v11, v1}, Lp0/x;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    .line 441
    .line 442
    const/4 v1, 0x4

    .line 443
    invoke-virtual {v0, v1}, LD0/x;->a(I)V

    .line 444
    .line 445
    .line 446
    goto :goto_5

    .line 447
    :cond_a
    move-object/from16 v3, v29

    .line 448
    .line 449
    move/from16 v29, v1

    .line 450
    .line 451
    sub-long/2addr v4, v7

    .line 452
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    .line 453
    .line 454
    .line 455
    move-result-wide v1

    .line 456
    const-wide/32 v4, 0x4c4b40

    .line 457
    .line 458
    .line 459
    cmp-long v20, v1, v4

    .line 460
    .line 461
    if-lez v20, :cond_b

    .line 462
    .line 463
    iget-wide v1, v3, LD0/w;->e:J

    .line 464
    .line 465
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 466
    .line 467
    .line 468
    new-instance v4, Ljava/lang/StringBuilder;

    .line 469
    .line 470
    const-string v5, "Spurious audio timestamp (frame position mismatch): "

    .line 471
    .line 472
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 473
    .line 474
    .line 475
    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 476
    .line 477
    .line 478
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 479
    .line 480
    .line 481
    invoke-virtual {v4, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 482
    .line 483
    .line 484
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 485
    .line 486
    .line 487
    invoke-virtual {v4, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 488
    .line 489
    .line 490
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 491
    .line 492
    .line 493
    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 494
    .line 495
    .line 496
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 497
    .line 498
    .line 499
    iget-object v1, v6, LD0/N;->a:LD0/S;

    .line 500
    .line 501
    invoke-virtual {v1}, LD0/S;->l()J

    .line 502
    .line 503
    .line 504
    move-result-wide v5

    .line 505
    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 506
    .line 507
    .line 508
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 509
    .line 510
    .line 511
    invoke-virtual {v1}, LD0/S;->m()J

    .line 512
    .line 513
    .line 514
    move-result-wide v1

    .line 515
    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 516
    .line 517
    .line 518
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 519
    .line 520
    .line 521
    move-result-object v1

    .line 522
    sget-object v2, LD0/S;->p0:Ljava/lang/Object;

    .line 523
    .line 524
    invoke-static {v11, v1}, Lp0/x;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    .line 526
    .line 527
    const/4 v1, 0x4

    .line 528
    invoke-virtual {v0, v1}, LD0/x;->a(I)V

    .line 529
    .line 530
    .line 531
    goto :goto_5

    .line 532
    :cond_b
    const/4 v1, 0x4

    .line 533
    iget v2, v0, LD0/x;->d:I

    .line 534
    .line 535
    if-ne v2, v1, :cond_d

    .line 536
    .line 537
    const/4 v1, 0x0

    .line 538
    invoke-virtual {v0, v1}, LD0/x;->a(I)V

    .line 539
    .line 540
    .line 541
    goto :goto_5

    .line 542
    :cond_c
    move/from16 v29, v1

    .line 543
    .line 544
    move/from16 v30, v4

    .line 545
    .line 546
    move-object v3, v6

    .line 547
    move-object/from16 v26, v9

    .line 548
    .line 549
    :cond_d
    :goto_5
    iget v1, v0, LD0/x;->d:I

    .line 550
    .line 551
    if-eqz v1, :cond_16

    .line 552
    .line 553
    const/4 v2, 0x1

    .line 554
    if-eq v1, v2, :cond_11

    .line 555
    .line 556
    const/4 v4, 0x2

    .line 557
    if-eq v1, v4, :cond_10

    .line 558
    .line 559
    const/4 v3, 0x3

    .line 560
    if-eq v1, v3, :cond_f

    .line 561
    .line 562
    const/4 v3, 0x4

    .line 563
    if-ne v1, v3, :cond_e

    .line 564
    .line 565
    goto/16 :goto_8

    .line 566
    .line 567
    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 568
    .line 569
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 570
    .line 571
    .line 572
    throw v0

    .line 573
    :cond_f
    if-eqz v10, :cond_1a

    .line 574
    .line 575
    const/4 v1, 0x0

    .line 576
    invoke-virtual {v0, v1}, LD0/x;->a(I)V

    .line 577
    .line 578
    .line 579
    goto/16 :goto_8

    .line 580
    .line 581
    :cond_10
    const/4 v1, 0x0

    .line 582
    if-nez v10, :cond_1a

    .line 583
    .line 584
    invoke-virtual {v0, v1}, LD0/x;->a(I)V

    .line 585
    .line 586
    .line 587
    goto/16 :goto_8

    .line 588
    .line 589
    :cond_11
    if-eqz v10, :cond_15

    .line 590
    .line 591
    iget-wide v6, v3, LD0/w;->e:J

    .line 592
    .line 593
    iget-wide v8, v0, LD0/x;->h:J

    .line 594
    .line 595
    cmp-long v1, v6, v8

    .line 596
    .line 597
    if-gtz v1, :cond_12

    .line 598
    .line 599
    goto :goto_6

    .line 600
    :cond_12
    iget-wide v6, v0, LD0/x;->i:J

    .line 601
    .line 602
    move/from16 v1, v29

    .line 603
    .line 604
    invoke-static {v1, v8, v9}, Lp0/M;->X(IJ)J

    .line 605
    .line 606
    .line 607
    move-result-wide v8

    .line 608
    sub-long v6, v12, v6

    .line 609
    .line 610
    move/from16 v4, v30

    .line 611
    .line 612
    invoke-static {v6, v7, v4}, Lp0/M;->y(JF)J

    .line 613
    .line 614
    .line 615
    move-result-wide v6

    .line 616
    add-long/2addr v6, v8

    .line 617
    iget-wide v8, v3, LD0/w;->e:J

    .line 618
    .line 619
    iget-object v10, v3, LD0/w;->b:Landroid/media/AudioTimestamp;

    .line 620
    .line 621
    iget-wide v10, v10, Landroid/media/AudioTimestamp;->nanoTime:J

    .line 622
    .line 623
    const-wide/16 v18, 0x3e8

    .line 624
    .line 625
    div-long v10, v10, v18

    .line 626
    .line 627
    invoke-static {v1, v8, v9}, Lp0/M;->X(IJ)J

    .line 628
    .line 629
    .line 630
    move-result-wide v8

    .line 631
    sub-long v10, v12, v10

    .line 632
    .line 633
    invoke-static {v10, v11, v4}, Lp0/M;->y(JF)J

    .line 634
    .line 635
    .line 636
    move-result-wide v10

    .line 637
    add-long/2addr v10, v8

    .line 638
    sub-long/2addr v10, v6

    .line 639
    invoke-static {v10, v11}, Ljava/lang/Math;->abs(J)J

    .line 640
    .line 641
    .line 642
    move-result-wide v6

    .line 643
    cmp-long v1, v6, v18

    .line 644
    .line 645
    if-gez v1, :cond_13

    .line 646
    .line 647
    const/4 v1, 0x2

    .line 648
    invoke-virtual {v0, v1}, LD0/x;->a(I)V

    .line 649
    .line 650
    .line 651
    goto :goto_8

    .line 652
    :cond_13
    :goto_6
    iget-wide v6, v0, LD0/x;->e:J

    .line 653
    .line 654
    sub-long/2addr v12, v6

    .line 655
    const-wide/32 v6, 0x1e8480

    .line 656
    .line 657
    .line 658
    cmp-long v1, v12, v6

    .line 659
    .line 660
    if-lez v1, :cond_14

    .line 661
    .line 662
    const/4 v1, 0x3

    .line 663
    invoke-virtual {v0, v1}, LD0/x;->a(I)V

    .line 664
    .line 665
    .line 666
    goto :goto_8

    .line 667
    :cond_14
    iget-wide v3, v3, LD0/w;->e:J

    .line 668
    .line 669
    iput-wide v3, v0, LD0/x;->h:J

    .line 670
    .line 671
    move-object/from16 v1, v26

    .line 672
    .line 673
    iget-wide v3, v1, Landroid/media/AudioTimestamp;->nanoTime:J

    .line 674
    .line 675
    const-wide/16 v6, 0x3e8

    .line 676
    .line 677
    div-long/2addr v3, v6

    .line 678
    iput-wide v3, v0, LD0/x;->i:J

    .line 679
    .line 680
    goto :goto_8

    .line 681
    :cond_15
    const/4 v4, 0x0

    .line 682
    const-wide/16 v6, 0x3e8

    .line 683
    .line 684
    invoke-virtual {v0, v4}, LD0/x;->a(I)V

    .line 685
    .line 686
    .line 687
    goto :goto_7

    .line 688
    :cond_16
    move-object/from16 v1, v26

    .line 689
    .line 690
    const/4 v4, 0x0

    .line 691
    const-wide/16 v6, 0x3e8

    .line 692
    .line 693
    if-eqz v10, :cond_17

    .line 694
    .line 695
    iget-wide v8, v1, Landroid/media/AudioTimestamp;->nanoTime:J

    .line 696
    .line 697
    div-long v10, v8, v6

    .line 698
    .line 699
    iget-wide v12, v0, LD0/x;->e:J

    .line 700
    .line 701
    cmp-long v1, v10, v12

    .line 702
    .line 703
    if-ltz v1, :cond_18

    .line 704
    .line 705
    iget-wide v10, v3, LD0/w;->e:J

    .line 706
    .line 707
    iput-wide v10, v0, LD0/x;->h:J

    .line 708
    .line 709
    div-long/2addr v8, v6

    .line 710
    iput-wide v8, v0, LD0/x;->i:J

    .line 711
    .line 712
    const/4 v1, 0x1

    .line 713
    invoke-virtual {v0, v1}, LD0/x;->a(I)V

    .line 714
    .line 715
    .line 716
    goto :goto_7

    .line 717
    :cond_17
    iget-wide v5, v0, LD0/x;->e:J

    .line 718
    .line 719
    sub-long/2addr v12, v5

    .line 720
    cmp-long v1, v12, v18

    .line 721
    .line 722
    if-lez v1, :cond_18

    .line 723
    .line 724
    const/4 v1, 0x3

    .line 725
    invoke-virtual {v0, v1}, LD0/x;->a(I)V

    .line 726
    .line 727
    .line 728
    :cond_18
    :goto_7
    move-object/from16 v0, p0

    .line 729
    .line 730
    goto :goto_9

    .line 731
    :cond_19
    move-object/from16 v28, v1

    .line 732
    .line 733
    move-object/from16 v17, v7

    .line 734
    .line 735
    :cond_1a
    :goto_8
    const/4 v4, 0x0

    .line 736
    goto :goto_7

    .line 737
    :goto_9
    iget-object v1, v0, LD0/z;->I:Lp0/f;

    .line 738
    .line 739
    check-cast v1, Lp0/G;

    .line 740
    .line 741
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 742
    .line 743
    .line 744
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 745
    .line 746
    .line 747
    move-result-wide v5

    .line 748
    const-wide/16 v7, 0x3e8

    .line 749
    .line 750
    div-long/2addr v5, v7

    .line 751
    iget-object v1, v0, LD0/z;->e:LD0/x;

    .line 752
    .line 753
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 754
    .line 755
    .line 756
    iget v3, v1, LD0/x;->d:I

    .line 757
    .line 758
    const/4 v7, 0x2

    .line 759
    if-ne v3, v7, :cond_1b

    .line 760
    .line 761
    const/4 v10, 0x1

    .line 762
    goto :goto_a

    .line 763
    :cond_1b
    const/4 v10, 0x0

    .line 764
    :goto_a
    if-eqz v10, :cond_1c

    .line 765
    .line 766
    iget v3, v0, LD0/z;->i:F

    .line 767
    .line 768
    iget-object v4, v1, LD0/x;->a:LD0/w;

    .line 769
    .line 770
    iget-wide v7, v4, LD0/w;->e:J

    .line 771
    .line 772
    iget-object v4, v4, LD0/w;->b:Landroid/media/AudioTimestamp;

    .line 773
    .line 774
    iget-wide v11, v4, Landroid/media/AudioTimestamp;->nanoTime:J

    .line 775
    .line 776
    const-wide/16 v13, 0x3e8

    .line 777
    .line 778
    div-long/2addr v11, v13

    .line 779
    iget v4, v1, LD0/x;->b:I

    .line 780
    .line 781
    invoke-static {v4, v7, v8}, Lp0/M;->X(IJ)J

    .line 782
    .line 783
    .line 784
    move-result-wide v7

    .line 785
    sub-long v11, v5, v11

    .line 786
    .line 787
    invoke-static {v11, v12, v3}, Lp0/M;->y(JF)J

    .line 788
    .line 789
    .line 790
    move-result-wide v3

    .line 791
    add-long/2addr v3, v7

    .line 792
    goto :goto_b

    .line 793
    :cond_1c
    invoke-virtual {v0, v5, v6}, LD0/z;->c(J)J

    .line 794
    .line 795
    .line 796
    move-result-wide v3

    .line 797
    :goto_b
    invoke-virtual/range {v28 .. v28}, Landroid/media/AudioTrack;->getPlayState()I

    .line 798
    .line 799
    .line 800
    move-result v7

    .line 801
    const/4 v8, 0x3

    .line 802
    if-ne v7, v8, :cond_21

    .line 803
    .line 804
    if-nez v10, :cond_1d

    .line 805
    .line 806
    iget v1, v1, LD0/x;->d:I

    .line 807
    .line 808
    if-eqz v1, :cond_1e

    .line 809
    .line 810
    const/4 v2, 0x1

    .line 811
    if-ne v1, v2, :cond_1d

    .line 812
    .line 813
    goto :goto_c

    .line 814
    :cond_1d
    invoke-virtual {v0, v3, v4}, LD0/z;->f(J)V

    .line 815
    .line 816
    .line 817
    :cond_1e
    :goto_c
    iget-wide v7, v0, LD0/z;->F:J

    .line 818
    .line 819
    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    .line 820
    .line 821
    .line 822
    .line 823
    .line 824
    cmp-long v1, v7, v9

    .line 825
    .line 826
    if-eqz v1, :cond_1f

    .line 827
    .line 828
    sub-long v7, v5, v7

    .line 829
    .line 830
    iget-wide v11, v0, LD0/z;->E:J

    .line 831
    .line 832
    sub-long v11, v3, v11

    .line 833
    .line 834
    iget v1, v0, LD0/z;->i:F

    .line 835
    .line 836
    invoke-static {v7, v8, v1}, Lp0/M;->y(JF)J

    .line 837
    .line 838
    .line 839
    move-result-wide v7

    .line 840
    iget-wide v13, v0, LD0/z;->E:J

    .line 841
    .line 842
    add-long/2addr v13, v7

    .line 843
    sub-long v15, v13, v3

    .line 844
    .line 845
    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->abs(J)J

    .line 846
    .line 847
    .line 848
    move-result-wide v15

    .line 849
    const-wide/16 v18, 0x0

    .line 850
    .line 851
    cmp-long v1, v11, v18

    .line 852
    .line 853
    if-eqz v1, :cond_1f

    .line 854
    .line 855
    const-wide/32 v11, 0xf4240

    .line 856
    .line 857
    .line 858
    cmp-long v1, v15, v11

    .line 859
    .line 860
    if-gez v1, :cond_1f

    .line 861
    .line 862
    const-wide/16 v11, 0xa

    .line 863
    .line 864
    mul-long v7, v7, v11

    .line 865
    .line 866
    const-wide/16 v11, 0x64

    .line 867
    .line 868
    div-long/2addr v7, v11

    .line 869
    sub-long v22, v13, v7

    .line 870
    .line 871
    add-long v24, v13, v7

    .line 872
    .line 873
    move-wide/from16 v20, v3

    .line 874
    .line 875
    invoke-static/range {v20 .. v25}, Lp0/M;->j(JJJ)J

    .line 876
    .line 877
    .line 878
    move-result-wide v3

    .line 879
    :cond_1f
    iget-boolean v1, v0, LD0/z;->D:Z

    .line 880
    .line 881
    if-nez v1, :cond_20

    .line 882
    .line 883
    iget-boolean v1, v0, LD0/z;->j:Z

    .line 884
    .line 885
    if-nez v1, :cond_20

    .line 886
    .line 887
    iget-wide v7, v0, LD0/z;->E:J

    .line 888
    .line 889
    cmp-long v1, v7, v9

    .line 890
    .line 891
    if-eqz v1, :cond_20

    .line 892
    .line 893
    cmp-long v1, v3, v7

    .line 894
    .line 895
    if-lez v1, :cond_20

    .line 896
    .line 897
    const/4 v1, 0x1

    .line 898
    iput-boolean v1, v0, LD0/z;->j:Z

    .line 899
    .line 900
    sub-long v1, v3, v7

    .line 901
    .line 902
    invoke-static {v1, v2}, Lp0/M;->e0(J)J

    .line 903
    .line 904
    .line 905
    move-result-wide v1

    .line 906
    iget v7, v0, LD0/z;->i:F

    .line 907
    .line 908
    invoke-static {v1, v2, v7}, Lp0/M;->C(JF)J

    .line 909
    .line 910
    .line 911
    move-result-wide v1

    .line 912
    iget-object v7, v0, LD0/z;->I:Lp0/f;

    .line 913
    .line 914
    check-cast v7, Lp0/G;

    .line 915
    .line 916
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 917
    .line 918
    .line 919
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 920
    .line 921
    .line 922
    move-result-wide v7

    .line 923
    invoke-static {v1, v2}, Lp0/M;->e0(J)J

    .line 924
    .line 925
    .line 926
    move-result-wide v1

    .line 927
    sub-long/2addr v7, v1

    .line 928
    move-object/from16 v1, v17

    .line 929
    .line 930
    iget-object v1, v1, LD0/N;->a:LD0/S;

    .line 931
    .line 932
    iget-object v1, v1, LD0/S;->u:LD0/s;

    .line 933
    .line 934
    if-eqz v1, :cond_20

    .line 935
    .line 936
    invoke-interface {v1, v7, v8}, LD0/s;->h(J)V

    .line 937
    .line 938
    .line 939
    :cond_20
    iput-wide v5, v0, LD0/z;->F:J

    .line 940
    .line 941
    iput-wide v3, v0, LD0/z;->E:J

    .line 942
    .line 943
    goto :goto_d

    .line 944
    :cond_21
    const/4 v1, 0x1

    .line 945
    if-ne v7, v1, :cond_22

    .line 946
    .line 947
    invoke-virtual {v0, v3, v4}, LD0/z;->f(J)V

    .line 948
    .line 949
    .line 950
    :cond_22
    :goto_d
    return-wide v3
.end method

.method public final b()J
    .locals 12

    .line 1
    iget-wide v0, p0, LD0/z;->z:J

    .line 2
    .line 3
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    cmp-long v4, v0, v2

    .line 9
    .line 10
    if-eqz v4, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, LD0/z;->d()J

    .line 13
    .line 14
    .line 15
    move-result-wide v0

    .line 16
    iget-wide v2, p0, LD0/z;->C:J

    .line 17
    .line 18
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    .line 19
    .line 20
    .line 21
    move-result-wide v0

    .line 22
    return-wide v0

    .line 23
    :cond_0
    iget-object v0, p0, LD0/z;->I:Lp0/f;

    .line 24
    .line 25
    check-cast v0, Lp0/G;

    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 31
    .line 32
    .line 33
    move-result-wide v0

    .line 34
    iget-wide v4, p0, LD0/z;->t:J

    .line 35
    .line 36
    sub-long v4, v0, v4

    .line 37
    .line 38
    const-wide/16 v6, 0x5

    .line 39
    .line 40
    cmp-long v8, v4, v6

    .line 41
    .line 42
    if-ltz v8, :cond_9

    .line 43
    .line 44
    iget-object v4, p0, LD0/z;->c:Landroid/media/AudioTrack;

    .line 45
    .line 46
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v4}, Landroid/media/AudioTrack;->getPlayState()I

    .line 50
    .line 51
    .line 52
    move-result v5

    .line 53
    const/4 v6, 0x1

    .line 54
    if-ne v5, v6, :cond_1

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_1
    invoke-virtual {v4}, Landroid/media/AudioTrack;->getPlaybackHeadPosition()I

    .line 58
    .line 59
    .line 60
    move-result v4

    .line 61
    int-to-long v6, v4

    .line 62
    const-wide v8, 0xffffffffL

    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    and-long/2addr v6, v8

    .line 68
    iget-boolean v4, p0, LD0/z;->g:Z

    .line 69
    .line 70
    const-wide/16 v8, 0x0

    .line 71
    .line 72
    if-eqz v4, :cond_3

    .line 73
    .line 74
    const/4 v4, 0x2

    .line 75
    if-ne v5, v4, :cond_2

    .line 76
    .line 77
    cmp-long v4, v6, v8

    .line 78
    .line 79
    if-nez v4, :cond_2

    .line 80
    .line 81
    iget-wide v10, p0, LD0/z;->u:J

    .line 82
    .line 83
    iput-wide v10, p0, LD0/z;->w:J

    .line 84
    .line 85
    :cond_2
    iget-wide v10, p0, LD0/z;->w:J

    .line 86
    .line 87
    add-long/2addr v6, v10

    .line 88
    :cond_3
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 89
    .line 90
    const/16 v10, 0x1d

    .line 91
    .line 92
    if-gt v4, v10, :cond_5

    .line 93
    .line 94
    cmp-long v4, v6, v8

    .line 95
    .line 96
    if-nez v4, :cond_4

    .line 97
    .line 98
    iget-wide v10, p0, LD0/z;->u:J

    .line 99
    .line 100
    cmp-long v4, v10, v8

    .line 101
    .line 102
    if-lez v4, :cond_4

    .line 103
    .line 104
    const/4 v4, 0x3

    .line 105
    if-ne v5, v4, :cond_4

    .line 106
    .line 107
    iget-wide v4, p0, LD0/z;->A:J

    .line 108
    .line 109
    cmp-long v6, v4, v2

    .line 110
    .line 111
    if-nez v6, :cond_8

    .line 112
    .line 113
    iput-wide v0, p0, LD0/z;->A:J

    .line 114
    .line 115
    goto :goto_1

    .line 116
    :cond_4
    iput-wide v2, p0, LD0/z;->A:J

    .line 117
    .line 118
    :cond_5
    iget-wide v2, p0, LD0/z;->u:J

    .line 119
    .line 120
    cmp-long v4, v2, v6

    .line 121
    .line 122
    if-lez v4, :cond_7

    .line 123
    .line 124
    iget-boolean v4, p0, LD0/z;->G:Z

    .line 125
    .line 126
    if-eqz v4, :cond_6

    .line 127
    .line 128
    iget-wide v4, p0, LD0/z;->H:J

    .line 129
    .line 130
    add-long/2addr v4, v2

    .line 131
    iput-wide v4, p0, LD0/z;->H:J

    .line 132
    .line 133
    const/4 v2, 0x0

    .line 134
    iput-boolean v2, p0, LD0/z;->G:Z

    .line 135
    .line 136
    goto :goto_0

    .line 137
    :cond_6
    iget-wide v2, p0, LD0/z;->v:J

    .line 138
    .line 139
    const-wide/16 v4, 0x1

    .line 140
    .line 141
    add-long/2addr v2, v4

    .line 142
    iput-wide v2, p0, LD0/z;->v:J

    .line 143
    .line 144
    :cond_7
    :goto_0
    iput-wide v6, p0, LD0/z;->u:J

    .line 145
    .line 146
    :cond_8
    :goto_1
    iput-wide v0, p0, LD0/z;->t:J

    .line 147
    .line 148
    :cond_9
    iget-wide v0, p0, LD0/z;->u:J

    .line 149
    .line 150
    iget-wide v2, p0, LD0/z;->H:J

    .line 151
    .line 152
    add-long/2addr v0, v2

    .line 153
    iget-wide v2, p0, LD0/z;->v:J

    .line 154
    .line 155
    const/16 v4, 0x20

    .line 156
    .line 157
    shl-long/2addr v2, v4

    .line 158
    add-long/2addr v0, v2

    .line 159
    return-wide v0
.end method

.method public final c(J)J
    .locals 5

    .line 1
    iget v0, p0, LD0/z;->y:I

    .line 2
    .line 3
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    iget-wide p1, p0, LD0/z;->z:J

    .line 11
    .line 12
    cmp-long v0, p1, v1

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0}, LD0/z;->d()J

    .line 17
    .line 18
    .line 19
    move-result-wide p1

    .line 20
    iget v0, p0, LD0/z;->f:I

    .line 21
    .line 22
    invoke-static {v0, p1, p2}, Lp0/M;->X(IJ)J

    .line 23
    .line 24
    .line 25
    move-result-wide p1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    invoke-virtual {p0}, LD0/z;->b()J

    .line 28
    .line 29
    .line 30
    move-result-wide p1

    .line 31
    iget v0, p0, LD0/z;->f:I

    .line 32
    .line 33
    invoke-static {v0, p1, p2}, Lp0/M;->X(IJ)J

    .line 34
    .line 35
    .line 36
    move-result-wide p1

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    iget-wide v3, p0, LD0/z;->m:J

    .line 39
    .line 40
    add-long/2addr p1, v3

    .line 41
    iget v0, p0, LD0/z;->i:F

    .line 42
    .line 43
    invoke-static {p1, p2, v0}, Lp0/M;->y(JF)J

    .line 44
    .line 45
    .line 46
    move-result-wide p1

    .line 47
    :goto_0
    iget-wide v3, p0, LD0/z;->p:J

    .line 48
    .line 49
    sub-long/2addr p1, v3

    .line 50
    const-wide/16 v3, 0x0

    .line 51
    .line 52
    invoke-static {v3, v4, p1, p2}, Ljava/lang/Math;->max(JJ)J

    .line 53
    .line 54
    .line 55
    move-result-wide p1

    .line 56
    iget-wide v3, p0, LD0/z;->z:J

    .line 57
    .line 58
    cmp-long v0, v3, v1

    .line 59
    .line 60
    if-eqz v0, :cond_2

    .line 61
    .line 62
    iget-wide v0, p0, LD0/z;->C:J

    .line 63
    .line 64
    iget v2, p0, LD0/z;->f:I

    .line 65
    .line 66
    invoke-static {v2, v0, v1}, Lp0/M;->X(IJ)J

    .line 67
    .line 68
    .line 69
    move-result-wide v0

    .line 70
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(JJ)J

    .line 71
    .line 72
    .line 73
    move-result-wide p1

    .line 74
    :cond_2
    return-wide p1
.end method

.method public final d()J
    .locals 10

    .line 1
    iget-object v0, p0, LD0/z;->c:Landroid/media/AudioTrack;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x2

    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    iget-wide v0, p0, LD0/z;->B:J

    .line 14
    .line 15
    return-wide v0

    .line 16
    :cond_0
    iget-object v0, p0, LD0/z;->I:Lp0/f;

    .line 17
    .line 18
    check-cast v0, Lp0/G;

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 24
    .line 25
    .line 26
    move-result-wide v0

    .line 27
    invoke-static {v0, v1}, Lp0/M;->R(J)J

    .line 28
    .line 29
    .line 30
    move-result-wide v0

    .line 31
    iget-wide v2, p0, LD0/z;->z:J

    .line 32
    .line 33
    sub-long/2addr v0, v2

    .line 34
    iget v2, p0, LD0/z;->i:F

    .line 35
    .line 36
    invoke-static {v0, v1, v2}, Lp0/M;->y(JF)J

    .line 37
    .line 38
    .line 39
    move-result-wide v3

    .line 40
    iget v0, p0, LD0/z;->f:I

    .line 41
    .line 42
    int-to-long v5, v0

    .line 43
    const-wide/32 v7, 0xf4240

    .line 44
    .line 45
    .line 46
    sget-object v9, Ljava/math/RoundingMode;->UP:Ljava/math/RoundingMode;

    .line 47
    .line 48
    invoke-static/range {v3 .. v9}, Lp0/M;->Z(JJJLjava/math/RoundingMode;)J

    .line 49
    .line 50
    .line 51
    move-result-wide v0

    .line 52
    iget-wide v2, p0, LD0/z;->B:J

    .line 53
    .line 54
    add-long/2addr v2, v0

    .line 55
    return-wide v2
.end method

.method public final e(J)Z
    .locals 7

    .line 1
    invoke-virtual {p0}, LD0/z;->a()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget v2, p0, LD0/z;->f:I

    .line 6
    .line 7
    sget-object v3, Lp0/M;->a:Ljava/lang/String;

    .line 8
    .line 9
    int-to-long v2, v2

    .line 10
    const-wide/32 v4, 0xf4240

    .line 11
    .line 12
    .line 13
    sget-object v6, Ljava/math/RoundingMode;->UP:Ljava/math/RoundingMode;

    .line 14
    .line 15
    invoke-static/range {v0 .. v6}, Lp0/M;->Z(JJJLjava/math/RoundingMode;)J

    .line 16
    .line 17
    .line 18
    move-result-wide v0

    .line 19
    cmp-long v2, p1, v0

    .line 20
    .line 21
    if-gtz v2, :cond_1

    .line 22
    .line 23
    iget-boolean p1, p0, LD0/z;->g:Z

    .line 24
    .line 25
    if-eqz p1, :cond_0

    .line 26
    .line 27
    iget-object p1, p0, LD0/z;->c:Landroid/media/AudioTrack;

    .line 28
    .line 29
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Landroid/media/AudioTrack;->getPlayState()I

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    const/4 p2, 0x2

    .line 37
    if-ne p1, p2, :cond_0

    .line 38
    .line 39
    invoke-virtual {p0}, LD0/z;->b()J

    .line 40
    .line 41
    .line 42
    move-result-wide p1

    .line 43
    const-wide/16 v0, 0x0

    .line 44
    .line 45
    cmp-long v2, p1, v0

    .line 46
    .line 47
    if-nez v2, :cond_0

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    const/4 p1, 0x0

    .line 51
    goto :goto_1

    .line 52
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 53
    :goto_1
    return p1
.end method

.method public final f(J)V
    .locals 5

    .line 1
    iget-boolean v0, p0, LD0/z;->D:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-wide v0, p0, LD0/z;->k:J

    .line 6
    .line 7
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    cmp-long v4, v0, v2

    .line 13
    .line 14
    if-eqz v4, :cond_1

    .line 15
    .line 16
    cmp-long v4, p1, v0

    .line 17
    .line 18
    if-gez v4, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    sub-long/2addr p1, v0

    .line 22
    iget v0, p0, LD0/z;->i:F

    .line 23
    .line 24
    invoke-static {p1, p2, v0}, Lp0/M;->C(JF)J

    .line 25
    .line 26
    .line 27
    move-result-wide p1

    .line 28
    iget-object v0, p0, LD0/z;->I:Lp0/f;

    .line 29
    .line 30
    check-cast v0, Lp0/G;

    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 36
    .line 37
    .line 38
    move-result-wide v0

    .line 39
    invoke-static {p1, p2}, Lp0/M;->e0(J)J

    .line 40
    .line 41
    .line 42
    move-result-wide p1

    .line 43
    sub-long/2addr v0, p1

    .line 44
    iput-wide v2, p0, LD0/z;->k:J

    .line 45
    .line 46
    iget-object p1, p0, LD0/z;->a:LD0/N;

    .line 47
    .line 48
    iget-object p1, p1, LD0/N;->a:LD0/S;

    .line 49
    .line 50
    iget-object p1, p1, LD0/S;->u:LD0/s;

    .line 51
    .line 52
    if-eqz p1, :cond_1

    .line 53
    .line 54
    invoke-interface {p1, v0, v1}, LD0/s;->h(J)V

    .line 55
    .line 56
    .line 57
    :cond_1
    :goto_0
    return-void
.end method

.method public final g()V
    .locals 3

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    iput-wide v0, p0, LD0/z;->m:J

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    iput v2, p0, LD0/z;->y:I

    .line 7
    .line 8
    iput v2, p0, LD0/z;->x:I

    .line 9
    .line 10
    iput-wide v0, p0, LD0/z;->n:J

    .line 11
    .line 12
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    iput-wide v0, p0, LD0/z;->E:J

    .line 18
    .line 19
    iput-wide v0, p0, LD0/z;->F:J

    .line 20
    .line 21
    iput-boolean v2, p0, LD0/z;->j:Z

    .line 22
    .line 23
    return-void
.end method
