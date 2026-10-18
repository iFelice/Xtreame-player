.class public final Lcom/google/android/gms/internal/ads/WL;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public A:J

.field public B:J

.field public C:J

.field public D:Z

.field public E:J

.field public F:J

.field public G:Lcom/google/android/gms/internal/ads/pl;

.field public final a:Lcom/google/android/gms/internal/ads/bM;

.field public final b:[J

.field public c:Landroid/media/AudioTrack;

.field public d:I

.field public e:Lcom/google/android/gms/internal/ads/VL;

.field public f:I

.field public g:Z

.field public h:J

.field public i:F

.field public j:Z

.field public k:J

.field public l:J

.field public m:Ljava/lang/reflect/Method;

.field public n:J

.field public o:Z

.field public p:Z

.field public q:J

.field public r:J

.field public s:J

.field public t:J

.field public u:J

.field public v:I

.field public w:I

.field public x:J

.field public y:J

.field public z:J


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/bM;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/WL;->a:Lcom/google/android/gms/internal/ads/bM;

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
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/WL;->m:Ljava/lang/reflect/Method;
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
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/WL;->b:[J

    .line 22
    .line 23
    sget-object p1, Lcom/google/android/gms/internal/ads/pl;->a:Lcom/google/android/gms/internal/ads/Nr;

    .line 24
    .line 25
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/WL;->G:Lcom/google/android/gms/internal/ads/pl;

    .line 26
    .line 27
    return-void
.end method


# virtual methods
.method public final a(Z)J
    .locals 31

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/WL;->c:Landroid/media/AudioTrack;

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
    move-result v1

    .line 12
    const/high16 v2, 0x3f800000    # 1.0f

    .line 13
    .line 14
    const/4 v3, 0x1

    .line 15
    const-wide/16 v4, 0x3e8

    .line 16
    .line 17
    const/4 v6, 0x2

    .line 18
    const/4 v7, 0x3

    .line 19
    iget-object v8, v0, Lcom/google/android/gms/internal/ads/WL;->a:Lcom/google/android/gms/internal/ads/bM;

    .line 20
    .line 21
    const-wide/16 v10, 0x0

    .line 22
    .line 23
    if-ne v1, v7, :cond_0

    .line 24
    .line 25
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/WL;->G:Lcom/google/android/gms/internal/ads/pl;

    .line 26
    .line 27
    check-cast v1, Lcom/google/android/gms/internal/ads/Nr;

    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 33
    .line 34
    .line 35
    move-result-wide v12

    .line 36
    div-long/2addr v12, v4

    .line 37
    iget-wide v14, v0, Lcom/google/android/gms/internal/ads/WL;->l:J

    .line 38
    .line 39
    sub-long v14, v12, v14

    .line 40
    .line 41
    const-wide/16 v16, 0x7530

    .line 42
    .line 43
    cmp-long v1, v14, v16

    .line 44
    .line 45
    if-ltz v1, :cond_4

    .line 46
    .line 47
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/WL;->d()J

    .line 48
    .line 49
    .line 50
    move-result-wide v14

    .line 51
    iget v1, v0, Lcom/google/android/gms/internal/ads/WL;->f:I

    .line 52
    .line 53
    invoke-static {v1, v14, v15}, Lcom/google/android/gms/internal/ads/Et;->u(IJ)J

    .line 54
    .line 55
    .line 56
    move-result-wide v14

    .line 57
    cmp-long v1, v14, v10

    .line 58
    .line 59
    if-nez v1, :cond_1

    .line 60
    .line 61
    :cond_0
    const/4 v6, 0x0

    .line 62
    goto/16 :goto_8

    .line 63
    .line 64
    :cond_1
    iget v1, v0, Lcom/google/android/gms/internal/ads/WL;->v:I

    .line 65
    .line 66
    iget v4, v0, Lcom/google/android/gms/internal/ads/WL;->i:F

    .line 67
    .line 68
    cmpl-float v5, v4, v2

    .line 69
    .line 70
    if-nez v5, :cond_2

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_2
    long-to-double v14, v14

    .line 74
    float-to-double v4, v4

    .line 75
    div-double/2addr v14, v4

    .line 76
    invoke-static {v14, v15}, Ljava/lang/Math;->round(D)J

    .line 77
    .line 78
    .line 79
    move-result-wide v14

    .line 80
    :goto_0
    sub-long/2addr v14, v12

    .line 81
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/WL;->b:[J

    .line 82
    .line 83
    aput-wide v14, v4, v1

    .line 84
    .line 85
    iget v1, v0, Lcom/google/android/gms/internal/ads/WL;->v:I

    .line 86
    .line 87
    add-int/2addr v1, v3

    .line 88
    const/16 v5, 0xa

    .line 89
    .line 90
    rem-int/2addr v1, v5

    .line 91
    iput v1, v0, Lcom/google/android/gms/internal/ads/WL;->v:I

    .line 92
    .line 93
    iget v1, v0, Lcom/google/android/gms/internal/ads/WL;->w:I

    .line 94
    .line 95
    if-ge v1, v5, :cond_3

    .line 96
    .line 97
    add-int/2addr v1, v3

    .line 98
    iput v1, v0, Lcom/google/android/gms/internal/ads/WL;->w:I

    .line 99
    .line 100
    :cond_3
    iput-wide v12, v0, Lcom/google/android/gms/internal/ads/WL;->l:J

    .line 101
    .line 102
    iput-wide v10, v0, Lcom/google/android/gms/internal/ads/WL;->k:J

    .line 103
    .line 104
    const/4 v1, 0x0

    .line 105
    :goto_1
    iget v5, v0, Lcom/google/android/gms/internal/ads/WL;->w:I

    .line 106
    .line 107
    if-ge v1, v5, :cond_4

    .line 108
    .line 109
    iget-wide v14, v0, Lcom/google/android/gms/internal/ads/WL;->k:J

    .line 110
    .line 111
    int-to-long v10, v5

    .line 112
    aget-wide v18, v4, v1

    .line 113
    .line 114
    div-long v18, v18, v10

    .line 115
    .line 116
    add-long v10, v18, v14

    .line 117
    .line 118
    iput-wide v10, v0, Lcom/google/android/gms/internal/ads/WL;->k:J

    .line 119
    .line 120
    add-int/lit8 v1, v1, 0x1

    .line 121
    .line 122
    const-wide/16 v10, 0x0

    .line 123
    .line 124
    goto :goto_1

    .line 125
    :cond_4
    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/WL;->g:Z

    .line 126
    .line 127
    if-nez v1, :cond_0

    .line 128
    .line 129
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/WL;->e:Lcom/google/android/gms/internal/ads/VL;

    .line 130
    .line 131
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 132
    .line 133
    .line 134
    iget-wide v4, v1, Lcom/google/android/gms/internal/ads/VL;->e:J

    .line 135
    .line 136
    sub-long v4, v12, v4

    .line 137
    .line 138
    iget-wide v10, v1, Lcom/google/android/gms/internal/ads/VL;->d:J

    .line 139
    .line 140
    const-string v2, "DefaultAudioSink"

    .line 141
    .line 142
    const-wide/32 v19, 0x4c4b40

    .line 143
    .line 144
    .line 145
    cmp-long v21, v4, v10

    .line 146
    .line 147
    if-gez v21, :cond_5

    .line 148
    .line 149
    :goto_2
    move-wide v4, v12

    .line 150
    goto/16 :goto_6

    .line 151
    .line 152
    :cond_5
    iput-wide v12, v1, Lcom/google/android/gms/internal/ads/VL;->e:J

    .line 153
    .line 154
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/VL;->a:Lcom/google/android/gms/internal/ads/UL;

    .line 155
    .line 156
    iget-object v5, v4, Lcom/google/android/gms/internal/ads/UL;->a:Landroid/media/AudioTrack;

    .line 157
    .line 158
    iget-object v10, v4, Lcom/google/android/gms/internal/ads/UL;->b:Landroid/media/AudioTimestamp;

    .line 159
    .line 160
    invoke-virtual {v5, v10}, Landroid/media/AudioTrack;->getTimestamp(Landroid/media/AudioTimestamp;)Z

    .line 161
    .line 162
    .line 163
    move-result v5

    .line 164
    if-eqz v5, :cond_7

    .line 165
    .line 166
    iget-wide v14, v10, Landroid/media/AudioTimestamp;->framePosition:J

    .line 167
    .line 168
    move-object/from16 v22, v10

    .line 169
    .line 170
    iget-wide v9, v4, Lcom/google/android/gms/internal/ads/UL;->d:J

    .line 171
    .line 172
    cmp-long v23, v9, v14

    .line 173
    .line 174
    if-lez v23, :cond_6

    .line 175
    .line 176
    iget-wide v9, v4, Lcom/google/android/gms/internal/ads/UL;->c:J

    .line 177
    .line 178
    const-wide/16 v23, 0x1

    .line 179
    .line 180
    add-long v9, v9, v23

    .line 181
    .line 182
    iput-wide v9, v4, Lcom/google/android/gms/internal/ads/UL;->c:J

    .line 183
    .line 184
    :cond_6
    iput-wide v14, v4, Lcom/google/android/gms/internal/ads/UL;->d:J

    .line 185
    .line 186
    iget-wide v9, v4, Lcom/google/android/gms/internal/ads/UL;->c:J

    .line 187
    .line 188
    const/16 v23, 0x20

    .line 189
    .line 190
    shl-long v9, v9, v23

    .line 191
    .line 192
    add-long/2addr v14, v9

    .line 193
    iput-wide v14, v4, Lcom/google/android/gms/internal/ads/UL;->e:J

    .line 194
    .line 195
    goto :goto_3

    .line 196
    :cond_7
    move-object/from16 v22, v10

    .line 197
    .line 198
    :goto_3
    iget v9, v1, Lcom/google/android/gms/internal/ads/VL;->b:I

    .line 199
    .line 200
    if-eqz v9, :cond_10

    .line 201
    .line 202
    if-eq v9, v3, :cond_d

    .line 203
    .line 204
    if-eq v9, v6, :cond_b

    .line 205
    .line 206
    if-eq v9, v7, :cond_9

    .line 207
    .line 208
    if-nez v5, :cond_8

    .line 209
    .line 210
    goto :goto_2

    .line 211
    :cond_8
    :goto_4
    move-object/from16 v5, v22

    .line 212
    .line 213
    goto :goto_5

    .line 214
    :cond_9
    if-nez v5, :cond_a

    .line 215
    .line 216
    goto :goto_2

    .line 217
    :cond_a
    const/4 v7, 0x0

    .line 218
    invoke-virtual {v1, v7}, Lcom/google/android/gms/internal/ads/VL;->a(I)V

    .line 219
    .line 220
    .line 221
    goto :goto_4

    .line 222
    :cond_b
    const/4 v7, 0x0

    .line 223
    if-eqz v5, :cond_c

    .line 224
    .line 225
    goto :goto_4

    .line 226
    :cond_c
    invoke-virtual {v1, v7}, Lcom/google/android/gms/internal/ads/VL;->a(I)V

    .line 227
    .line 228
    .line 229
    goto :goto_2

    .line 230
    :cond_d
    const/4 v7, 0x0

    .line 231
    if-eqz v5, :cond_f

    .line 232
    .line 233
    iget-wide v9, v4, Lcom/google/android/gms/internal/ads/UL;->e:J

    .line 234
    .line 235
    iget-wide v14, v1, Lcom/google/android/gms/internal/ads/VL;->f:J

    .line 236
    .line 237
    cmp-long v5, v9, v14

    .line 238
    .line 239
    if-gtz v5, :cond_e

    .line 240
    .line 241
    goto :goto_4

    .line 242
    :cond_e
    invoke-virtual {v1, v6}, Lcom/google/android/gms/internal/ads/VL;->a(I)V

    .line 243
    .line 244
    .line 245
    goto :goto_4

    .line 246
    :cond_f
    invoke-virtual {v1, v7}, Lcom/google/android/gms/internal/ads/VL;->a(I)V

    .line 247
    .line 248
    .line 249
    goto :goto_2

    .line 250
    :cond_10
    if-eqz v5, :cond_14

    .line 251
    .line 252
    move-object/from16 v5, v22

    .line 253
    .line 254
    iget-wide v9, v5, Landroid/media/AudioTimestamp;->nanoTime:J

    .line 255
    .line 256
    const-wide/16 v14, 0x3e8

    .line 257
    .line 258
    div-long/2addr v9, v14

    .line 259
    iget-wide v14, v1, Lcom/google/android/gms/internal/ads/VL;->c:J

    .line 260
    .line 261
    cmp-long v7, v9, v14

    .line 262
    .line 263
    if-gez v7, :cond_11

    .line 264
    .line 265
    goto :goto_2

    .line 266
    :cond_11
    iget-wide v9, v4, Lcom/google/android/gms/internal/ads/UL;->e:J

    .line 267
    .line 268
    iput-wide v9, v1, Lcom/google/android/gms/internal/ads/VL;->f:J

    .line 269
    .line 270
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/VL;->a(I)V

    .line 271
    .line 272
    .line 273
    :goto_5
    iget-wide v9, v5, Landroid/media/AudioTimestamp;->nanoTime:J

    .line 274
    .line 275
    const-wide/16 v14, 0x3e8

    .line 276
    .line 277
    div-long/2addr v9, v14

    .line 278
    iget-wide v4, v4, Lcom/google/android/gms/internal/ads/UL;->e:J

    .line 279
    .line 280
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/WL;->d()J

    .line 281
    .line 282
    .line 283
    move-result-wide v14

    .line 284
    iget v7, v0, Lcom/google/android/gms/internal/ads/WL;->f:I

    .line 285
    .line 286
    invoke-static {v7, v14, v15}, Lcom/google/android/gms/internal/ads/Et;->u(IJ)J

    .line 287
    .line 288
    .line 289
    move-result-wide v14

    .line 290
    sub-long v22, v9, v12

    .line 291
    .line 292
    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->abs(J)J

    .line 293
    .line 294
    .line 295
    move-result-wide v22

    .line 296
    const-string v7, ", "

    .line 297
    .line 298
    cmp-long v25, v22, v19

    .line 299
    .line 300
    if-lez v25, :cond_12

    .line 301
    .line 302
    iget-object v3, v8, Lcom/google/android/gms/internal/ads/bM;->a:Lcom/google/android/gms/internal/ads/lM;

    .line 303
    .line 304
    move-wide/from16 v25, v12

    .line 305
    .line 306
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/lM;->a()J

    .line 307
    .line 308
    .line 309
    move-result-wide v11

    .line 310
    move-wide/from16 v27, v14

    .line 311
    .line 312
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/lM;->b()J

    .line 313
    .line 314
    .line 315
    move-result-wide v13

    .line 316
    const-string v3, "Spurious audio timestamp (system clock mismatch): "

    .line 317
    .line 318
    invoke-static {v3, v4, v5, v7}, Lt/a;->d(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    .line 320
    .line 321
    move-result-object v3

    .line 322
    invoke-virtual {v3, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 323
    .line 324
    .line 325
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    .line 327
    .line 328
    move-wide/from16 v4, v25

    .line 329
    .line 330
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 331
    .line 332
    .line 333
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    .line 335
    .line 336
    move-wide/from16 v9, v27

    .line 337
    .line 338
    invoke-virtual {v3, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 339
    .line 340
    .line 341
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    .line 343
    .line 344
    invoke-virtual {v3, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 345
    .line 346
    .line 347
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    .line 349
    .line 350
    invoke-virtual {v3, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 351
    .line 352
    .line 353
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 354
    .line 355
    .line 356
    move-result-object v3

    .line 357
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/Zo;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    .line 359
    .line 360
    const/4 v3, 0x4

    .line 361
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/VL;->a(I)V

    .line 362
    .line 363
    .line 364
    goto/16 :goto_6

    .line 365
    .line 366
    :cond_12
    move-wide/from16 v29, v12

    .line 367
    .line 368
    move-wide v11, v14

    .line 369
    move-wide/from16 v14, v29

    .line 370
    .line 371
    iget v3, v0, Lcom/google/android/gms/internal/ads/WL;->f:I

    .line 372
    .line 373
    invoke-static {v3, v4, v5}, Lcom/google/android/gms/internal/ads/Et;->u(IJ)J

    .line 374
    .line 375
    .line 376
    move-result-wide v25

    .line 377
    sub-long v25, v25, v11

    .line 378
    .line 379
    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->abs(J)J

    .line 380
    .line 381
    .line 382
    move-result-wide v25

    .line 383
    cmp-long v3, v25, v19

    .line 384
    .line 385
    if-lez v3, :cond_13

    .line 386
    .line 387
    iget-object v3, v8, Lcom/google/android/gms/internal/ads/bM;->a:Lcom/google/android/gms/internal/ads/lM;

    .line 388
    .line 389
    move-wide/from16 v25, v14

    .line 390
    .line 391
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/lM;->a()J

    .line 392
    .line 393
    .line 394
    move-result-wide v13

    .line 395
    move-object/from16 v27, v7

    .line 396
    .line 397
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/lM;->b()J

    .line 398
    .line 399
    .line 400
    move-result-wide v6

    .line 401
    const-string v3, "Spurious audio timestamp (frame position mismatch): "

    .line 402
    .line 403
    move-object/from16 v15, v27

    .line 404
    .line 405
    invoke-static {v3, v4, v5, v15}, Lt/a;->d(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 406
    .line 407
    .line 408
    move-result-object v3

    .line 409
    invoke-virtual {v3, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 410
    .line 411
    .line 412
    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 413
    .line 414
    .line 415
    move-wide/from16 v4, v25

    .line 416
    .line 417
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 418
    .line 419
    .line 420
    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 421
    .line 422
    .line 423
    invoke-virtual {v3, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 424
    .line 425
    .line 426
    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 427
    .line 428
    .line 429
    invoke-virtual {v3, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 430
    .line 431
    .line 432
    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 433
    .line 434
    .line 435
    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 436
    .line 437
    .line 438
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 439
    .line 440
    .line 441
    move-result-object v3

    .line 442
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/Zo;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    .line 444
    .line 445
    const/4 v3, 0x4

    .line 446
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/VL;->a(I)V

    .line 447
    .line 448
    .line 449
    goto :goto_6

    .line 450
    :cond_13
    move-wide v4, v14

    .line 451
    const/4 v3, 0x4

    .line 452
    iget v6, v1, Lcom/google/android/gms/internal/ads/VL;->b:I

    .line 453
    .line 454
    if-ne v6, v3, :cond_16

    .line 455
    .line 456
    const/4 v3, 0x0

    .line 457
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/VL;->a(I)V

    .line 458
    .line 459
    .line 460
    goto :goto_6

    .line 461
    :cond_14
    move-wide v4, v12

    .line 462
    iget-wide v9, v1, Lcom/google/android/gms/internal/ads/VL;->c:J

    .line 463
    .line 464
    sub-long v12, v4, v9

    .line 465
    .line 466
    const-wide/32 v9, 0x7a120

    .line 467
    .line 468
    .line 469
    cmp-long v3, v12, v9

    .line 470
    .line 471
    if-gtz v3, :cond_15

    .line 472
    .line 473
    goto :goto_6

    .line 474
    :cond_15
    invoke-virtual {v1, v7}, Lcom/google/android/gms/internal/ads/VL;->a(I)V

    .line 475
    .line 476
    .line 477
    :cond_16
    :goto_6
    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/WL;->p:Z

    .line 478
    .line 479
    if-eqz v1, :cond_0

    .line 480
    .line 481
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/WL;->m:Ljava/lang/reflect/Method;

    .line 482
    .line 483
    if-eqz v1, :cond_0

    .line 484
    .line 485
    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/WL;->q:J

    .line 486
    .line 487
    sub-long v12, v4, v6

    .line 488
    .line 489
    const-wide/32 v6, 0x7a120

    .line 490
    .line 491
    .line 492
    cmp-long v3, v12, v6

    .line 493
    .line 494
    if-ltz v3, :cond_0

    .line 495
    .line 496
    :try_start_0
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/WL;->c:Landroid/media/AudioTrack;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 497
    .line 498
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 499
    .line 500
    .line 501
    const/4 v6, 0x0

    .line 502
    :try_start_1
    new-array v7, v6, [Ljava/lang/Object;

    .line 503
    .line 504
    invoke-virtual {v1, v3, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 505
    .line 506
    .line 507
    move-result-object v1

    .line 508
    check-cast v1, Ljava/lang/Integer;

    .line 509
    .line 510
    sget v3, Lcom/google/android/gms/internal/ads/Et;->a:I

    .line 511
    .line 512
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 513
    .line 514
    .line 515
    move-result v1

    .line 516
    int-to-long v9, v1

    .line 517
    const-wide/16 v11, 0x3e8

    .line 518
    .line 519
    mul-long v9, v9, v11

    .line 520
    .line 521
    iget-wide v11, v0, Lcom/google/android/gms/internal/ads/WL;->h:J

    .line 522
    .line 523
    sub-long/2addr v9, v11

    .line 524
    iput-wide v9, v0, Lcom/google/android/gms/internal/ads/WL;->n:J

    .line 525
    .line 526
    const-wide/16 v11, 0x0

    .line 527
    .line 528
    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->max(JJ)J

    .line 529
    .line 530
    .line 531
    move-result-wide v9

    .line 532
    iput-wide v9, v0, Lcom/google/android/gms/internal/ads/WL;->n:J

    .line 533
    .line 534
    cmp-long v1, v9, v19

    .line 535
    .line 536
    if-lez v1, :cond_17

    .line 537
    .line 538
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 539
    .line 540
    .line 541
    new-instance v1, Ljava/lang/StringBuilder;

    .line 542
    .line 543
    const-string v3, "Ignoring impossibly large audio latency: "

    .line 544
    .line 545
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 546
    .line 547
    .line 548
    invoke-virtual {v1, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 549
    .line 550
    .line 551
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 552
    .line 553
    .line 554
    move-result-object v1

    .line 555
    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/Zo;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    .line 557
    .line 558
    const-wide/16 v1, 0x0

    .line 559
    .line 560
    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/WL;->n:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 561
    .line 562
    goto :goto_7

    .line 563
    :catch_0
    const/4 v6, 0x0

    .line 564
    :catch_1
    const/4 v1, 0x0

    .line 565
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/WL;->m:Ljava/lang/reflect/Method;

    .line 566
    .line 567
    :cond_17
    :goto_7
    iput-wide v4, v0, Lcom/google/android/gms/internal/ads/WL;->q:J

    .line 568
    .line 569
    :goto_8
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/WL;->G:Lcom/google/android/gms/internal/ads/pl;

    .line 570
    .line 571
    check-cast v1, Lcom/google/android/gms/internal/ads/Nr;

    .line 572
    .line 573
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 574
    .line 575
    .line 576
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 577
    .line 578
    .line 579
    move-result-wide v1

    .line 580
    const-wide/16 v3, 0x3e8

    .line 581
    .line 582
    div-long/2addr v1, v3

    .line 583
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/WL;->e:Lcom/google/android/gms/internal/ads/VL;

    .line 584
    .line 585
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 586
    .line 587
    .line 588
    iget v4, v3, Lcom/google/android/gms/internal/ads/VL;->b:I

    .line 589
    .line 590
    const/4 v5, 0x2

    .line 591
    if-ne v4, v5, :cond_18

    .line 592
    .line 593
    const/4 v9, 0x1

    .line 594
    goto :goto_9

    .line 595
    :cond_18
    const/4 v9, 0x0

    .line 596
    :goto_9
    if-eqz v9, :cond_19

    .line 597
    .line 598
    iget-object v3, v3, Lcom/google/android/gms/internal/ads/VL;->a:Lcom/google/android/gms/internal/ads/UL;

    .line 599
    .line 600
    iget-wide v4, v3, Lcom/google/android/gms/internal/ads/UL;->e:J

    .line 601
    .line 602
    iget v6, v0, Lcom/google/android/gms/internal/ads/WL;->f:I

    .line 603
    .line 604
    invoke-static {v6, v4, v5}, Lcom/google/android/gms/internal/ads/Et;->u(IJ)J

    .line 605
    .line 606
    .line 607
    move-result-wide v4

    .line 608
    iget-object v3, v3, Lcom/google/android/gms/internal/ads/UL;->b:Landroid/media/AudioTimestamp;

    .line 609
    .line 610
    iget-wide v6, v3, Landroid/media/AudioTimestamp;->nanoTime:J

    .line 611
    .line 612
    const-wide/16 v10, 0x3e8

    .line 613
    .line 614
    div-long/2addr v6, v10

    .line 615
    sub-long v6, v1, v6

    .line 616
    .line 617
    iget v3, v0, Lcom/google/android/gms/internal/ads/WL;->i:F

    .line 618
    .line 619
    invoke-static {v6, v7, v3}, Lcom/google/android/gms/internal/ads/Et;->s(JF)J

    .line 620
    .line 621
    .line 622
    move-result-wide v6

    .line 623
    add-long/2addr v6, v4

    .line 624
    goto :goto_c

    .line 625
    :cond_19
    iget v3, v0, Lcom/google/android/gms/internal/ads/WL;->w:I

    .line 626
    .line 627
    if-nez v3, :cond_1a

    .line 628
    .line 629
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/WL;->d()J

    .line 630
    .line 631
    .line 632
    move-result-wide v3

    .line 633
    iget v5, v0, Lcom/google/android/gms/internal/ads/WL;->f:I

    .line 634
    .line 635
    invoke-static {v5, v3, v4}, Lcom/google/android/gms/internal/ads/Et;->u(IJ)J

    .line 636
    .line 637
    .line 638
    move-result-wide v3

    .line 639
    :goto_a
    move-wide v6, v3

    .line 640
    goto :goto_b

    .line 641
    :cond_1a
    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/WL;->k:J

    .line 642
    .line 643
    add-long/2addr v3, v1

    .line 644
    iget v5, v0, Lcom/google/android/gms/internal/ads/WL;->i:F

    .line 645
    .line 646
    invoke-static {v3, v4, v5}, Lcom/google/android/gms/internal/ads/Et;->s(JF)J

    .line 647
    .line 648
    .line 649
    move-result-wide v3

    .line 650
    goto :goto_a

    .line 651
    :goto_b
    if-nez p1, :cond_1b

    .line 652
    .line 653
    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/WL;->n:J

    .line 654
    .line 655
    sub-long/2addr v6, v3

    .line 656
    const-wide/16 v3, 0x0

    .line 657
    .line 658
    invoke-static {v3, v4, v6, v7}, Ljava/lang/Math;->max(JJ)J

    .line 659
    .line 660
    .line 661
    move-result-wide v6

    .line 662
    :cond_1b
    :goto_c
    iget-boolean v3, v0, Lcom/google/android/gms/internal/ads/WL;->D:Z

    .line 663
    .line 664
    if-eq v3, v9, :cond_1c

    .line 665
    .line 666
    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/WL;->C:J

    .line 667
    .line 668
    iput-wide v3, v0, Lcom/google/android/gms/internal/ads/WL;->F:J

    .line 669
    .line 670
    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/WL;->B:J

    .line 671
    .line 672
    iput-wide v3, v0, Lcom/google/android/gms/internal/ads/WL;->E:J

    .line 673
    .line 674
    :cond_1c
    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/WL;->F:J

    .line 675
    .line 676
    sub-long v3, v1, v3

    .line 677
    .line 678
    const-wide/32 v10, 0xf4240

    .line 679
    .line 680
    .line 681
    cmp-long v5, v3, v10

    .line 682
    .line 683
    if-gez v5, :cond_1d

    .line 684
    .line 685
    iget-wide v12, v0, Lcom/google/android/gms/internal/ads/WL;->E:J

    .line 686
    .line 687
    iget v5, v0, Lcom/google/android/gms/internal/ads/WL;->i:F

    .line 688
    .line 689
    invoke-static {v3, v4, v5}, Lcom/google/android/gms/internal/ads/Et;->s(JF)J

    .line 690
    .line 691
    .line 692
    move-result-wide v14

    .line 693
    add-long/2addr v14, v12

    .line 694
    const-wide/16 v12, 0x3e8

    .line 695
    .line 696
    mul-long v3, v3, v12

    .line 697
    .line 698
    div-long/2addr v3, v10

    .line 699
    mul-long v6, v6, v3

    .line 700
    .line 701
    sub-long v4, v12, v3

    .line 702
    .line 703
    mul-long v4, v4, v14

    .line 704
    .line 705
    add-long/2addr v4, v6

    .line 706
    div-long v6, v4, v12

    .line 707
    .line 708
    :cond_1d
    iget-boolean v3, v0, Lcom/google/android/gms/internal/ads/WL;->j:Z

    .line 709
    .line 710
    if-nez v3, :cond_1f

    .line 711
    .line 712
    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/WL;->B:J

    .line 713
    .line 714
    cmp-long v5, v6, v3

    .line 715
    .line 716
    if-lez v5, :cond_1f

    .line 717
    .line 718
    const/4 v5, 0x1

    .line 719
    iput-boolean v5, v0, Lcom/google/android/gms/internal/ads/WL;->j:Z

    .line 720
    .line 721
    sub-long v3, v6, v3

    .line 722
    .line 723
    iget v5, v0, Lcom/google/android/gms/internal/ads/WL;->i:F

    .line 724
    .line 725
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/Et;->w(J)J

    .line 726
    .line 727
    .line 728
    move-result-wide v3

    .line 729
    const/high16 v10, 0x3f800000    # 1.0f

    .line 730
    .line 731
    cmpl-float v10, v5, v10

    .line 732
    .line 733
    if-nez v10, :cond_1e

    .line 734
    .line 735
    goto :goto_d

    .line 736
    :cond_1e
    long-to-double v3, v3

    .line 737
    float-to-double v10, v5

    .line 738
    div-double/2addr v3, v10

    .line 739
    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    .line 740
    .line 741
    .line 742
    move-result-wide v3

    .line 743
    :goto_d
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/WL;->G:Lcom/google/android/gms/internal/ads/pl;

    .line 744
    .line 745
    check-cast v5, Lcom/google/android/gms/internal/ads/Nr;

    .line 746
    .line 747
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 748
    .line 749
    .line 750
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 751
    .line 752
    .line 753
    move-result-wide v10

    .line 754
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/Et;->w(J)J

    .line 755
    .line 756
    .line 757
    move-result-wide v3

    .line 758
    sub-long/2addr v10, v3

    .line 759
    iget-object v3, v8, Lcom/google/android/gms/internal/ads/bM;->a:Lcom/google/android/gms/internal/ads/lM;

    .line 760
    .line 761
    iget-object v3, v3, Lcom/google/android/gms/internal/ads/lM;->l:Lcom/google/android/gms/internal/ads/nM;

    .line 762
    .line 763
    if-eqz v3, :cond_1f

    .line 764
    .line 765
    iget-object v3, v3, Lcom/google/android/gms/internal/ads/nM;->a:Lcom/google/android/gms/internal/ads/oM;

    .line 766
    .line 767
    iget-object v3, v3, Lcom/google/android/gms/internal/ads/oM;->y0:Lcom/google/android/gms/internal/ads/oL;

    .line 768
    .line 769
    iget-object v4, v3, Lcom/google/android/gms/internal/ads/oL;->H:Ljava/lang/Object;

    .line 770
    .line 771
    check-cast v4, Landroid/os/Handler;

    .line 772
    .line 773
    if-eqz v4, :cond_1f

    .line 774
    .line 775
    new-instance v5, Lcom/google/android/gms/internal/ads/LL;

    .line 776
    .line 777
    invoke-direct {v5, v3, v10, v11}, Lcom/google/android/gms/internal/ads/LL;-><init>(Lcom/google/android/gms/internal/ads/oL;J)V

    .line 778
    .line 779
    .line 780
    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 781
    .line 782
    .line 783
    :cond_1f
    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/WL;->C:J

    .line 784
    .line 785
    iput-wide v6, v0, Lcom/google/android/gms/internal/ads/WL;->B:J

    .line 786
    .line 787
    iput-boolean v9, v0, Lcom/google/android/gms/internal/ads/WL;->D:Z

    .line 788
    .line 789
    return-wide v6
.end method

.method public final b(Landroid/media/AudioTrack;ZIII)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/WL;->c:Landroid/media/AudioTrack;

    .line 2
    .line 3
    iput p5, p0, Lcom/google/android/gms/internal/ads/WL;->d:I

    .line 4
    .line 5
    new-instance v0, Lcom/google/android/gms/internal/ads/VL;

    .line 6
    .line 7
    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/VL;-><init>(Landroid/media/AudioTrack;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/WL;->e:Lcom/google/android/gms/internal/ads/VL;

    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/media/AudioTrack;->getSampleRate()I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    iput p1, p0, Lcom/google/android/gms/internal/ads/WL;->f:I

    .line 17
    .line 18
    const/4 p1, 0x0

    .line 19
    if-eqz p2, :cond_0

    .line 20
    .line 21
    sget p2, Lcom/google/android/gms/internal/ads/Et;->a:I

    .line 22
    .line 23
    const/16 v0, 0x17

    .line 24
    .line 25
    if-ge p2, v0, :cond_0

    .line 26
    .line 27
    const/4 p2, 0x5

    .line 28
    const/4 v0, 0x1

    .line 29
    if-eq p3, p2, :cond_1

    .line 30
    .line 31
    const/4 p2, 0x6

    .line 32
    if-ne p3, p2, :cond_0

    .line 33
    .line 34
    const/4 p3, 0x6

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const/4 v0, 0x0

    .line 37
    :cond_1
    :goto_0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/WL;->g:Z

    .line 38
    .line 39
    invoke-static {p3}, Lcom/google/android/gms/internal/ads/Et;->c(I)Z

    .line 40
    .line 41
    .line 42
    move-result p2

    .line 43
    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/WL;->p:Z

    .line 44
    .line 45
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    if-eqz p2, :cond_2

    .line 51
    .line 52
    div-int/2addr p5, p4

    .line 53
    int-to-long p2, p5

    .line 54
    iget p4, p0, Lcom/google/android/gms/internal/ads/WL;->f:I

    .line 55
    .line 56
    invoke-static {p4, p2, p3}, Lcom/google/android/gms/internal/ads/Et;->u(IJ)J

    .line 57
    .line 58
    .line 59
    move-result-wide p2

    .line 60
    goto :goto_1

    .line 61
    :cond_2
    move-wide p2, v0

    .line 62
    :goto_1
    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/WL;->h:J

    .line 63
    .line 64
    const-wide/16 p2, 0x0

    .line 65
    .line 66
    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/WL;->s:J

    .line 67
    .line 68
    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/WL;->t:J

    .line 69
    .line 70
    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/WL;->u:J

    .line 71
    .line 72
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/WL;->o:Z

    .line 73
    .line 74
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/WL;->x:J

    .line 75
    .line 76
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/WL;->y:J

    .line 77
    .line 78
    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/WL;->q:J

    .line 79
    .line 80
    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/WL;->n:J

    .line 81
    .line 82
    const/high16 p1, 0x3f800000    # 1.0f

    .line 83
    .line 84
    iput p1, p0, Lcom/google/android/gms/internal/ads/WL;->i:F

    .line 85
    .line 86
    return-void
.end method

.method public final c(J)Z
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/WL;->a(Z)J

    .line 3
    .line 4
    .line 5
    move-result-wide v1

    .line 6
    iget v3, p0, Lcom/google/android/gms/internal/ads/WL;->f:I

    .line 7
    .line 8
    sget v4, Lcom/google/android/gms/internal/ads/Et;->a:I

    .line 9
    .line 10
    sget-object v7, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    .line 11
    .line 12
    int-to-long v3, v3

    .line 13
    const-wide/32 v5, 0xf4240

    .line 14
    .line 15
    .line 16
    invoke-static/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/Et;->v(JJJLjava/math/RoundingMode;)J

    .line 17
    .line 18
    .line 19
    move-result-wide v1

    .line 20
    cmp-long v3, p1, v1

    .line 21
    .line 22
    if-gtz v3, :cond_1

    .line 23
    .line 24
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/WL;->g:Z

    .line 25
    .line 26
    if-eqz p1, :cond_0

    .line 27
    .line 28
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/WL;->c:Landroid/media/AudioTrack;

    .line 29
    .line 30
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Landroid/media/AudioTrack;->getPlayState()I

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    const/4 p2, 0x2

    .line 38
    if-ne p1, p2, :cond_0

    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/WL;->d()J

    .line 41
    .line 42
    .line 43
    move-result-wide p1

    .line 44
    const-wide/16 v1, 0x0

    .line 45
    .line 46
    cmp-long v3, p1, v1

    .line 47
    .line 48
    if-nez v3, :cond_0

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_0
    return v0

    .line 52
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 53
    return p1
.end method

.method public final d()J
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/WL;->G:Lcom/google/android/gms/internal/ads/pl;

    .line 2
    .line 3
    check-cast v0, Lcom/google/android/gms/internal/ads/Nr;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/WL;->x:J

    .line 13
    .line 14
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    const/4 v6, 0x2

    .line 20
    cmp-long v7, v2, v4

    .line 21
    .line 22
    if-eqz v7, :cond_1

    .line 23
    .line 24
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/WL;->c:Landroid/media/AudioTrack;

    .line 25
    .line 26
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2}, Landroid/media/AudioTrack;->getPlayState()I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-ne v2, v6, :cond_0

    .line 34
    .line 35
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/WL;->z:J

    .line 36
    .line 37
    return-wide v0

    .line 38
    :cond_0
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/Et;->t(J)J

    .line 39
    .line 40
    .line 41
    move-result-wide v0

    .line 42
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/WL;->x:J

    .line 43
    .line 44
    sub-long/2addr v0, v2

    .line 45
    iget v2, p0, Lcom/google/android/gms/internal/ads/WL;->i:F

    .line 46
    .line 47
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/Et;->s(JF)J

    .line 48
    .line 49
    .line 50
    move-result-wide v3

    .line 51
    iget v0, p0, Lcom/google/android/gms/internal/ads/WL;->f:I

    .line 52
    .line 53
    sget-object v9, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    .line 54
    .line 55
    int-to-long v5, v0

    .line 56
    const-wide/32 v7, 0xf4240

    .line 57
    .line 58
    .line 59
    invoke-static/range {v3 .. v9}, Lcom/google/android/gms/internal/ads/Et;->v(JJJLjava/math/RoundingMode;)J

    .line 60
    .line 61
    .line 62
    move-result-wide v0

    .line 63
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/WL;->A:J

    .line 64
    .line 65
    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/WL;->z:J

    .line 66
    .line 67
    add-long/2addr v4, v0

    .line 68
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    .line 69
    .line 70
    .line 71
    move-result-wide v0

    .line 72
    return-wide v0

    .line 73
    :cond_1
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/WL;->r:J

    .line 74
    .line 75
    sub-long v2, v0, v2

    .line 76
    .line 77
    const-wide/16 v7, 0x5

    .line 78
    .line 79
    cmp-long v9, v2, v7

    .line 80
    .line 81
    if-ltz v9, :cond_b

    .line 82
    .line 83
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/WL;->c:Landroid/media/AudioTrack;

    .line 84
    .line 85
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v2}, Landroid/media/AudioTrack;->getPlayState()I

    .line 89
    .line 90
    .line 91
    move-result v3

    .line 92
    const/4 v7, 0x1

    .line 93
    if-ne v3, v7, :cond_2

    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_2
    invoke-virtual {v2}, Landroid/media/AudioTrack;->getPlaybackHeadPosition()I

    .line 97
    .line 98
    .line 99
    move-result v2

    .line 100
    int-to-long v7, v2

    .line 101
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/WL;->g:Z

    .line 102
    .line 103
    const-wide v9, 0xffffffffL

    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    and-long/2addr v7, v9

    .line 109
    const-wide/16 v9, 0x0

    .line 110
    .line 111
    if-eqz v2, :cond_5

    .line 112
    .line 113
    if-ne v3, v6, :cond_3

    .line 114
    .line 115
    cmp-long v2, v7, v9

    .line 116
    .line 117
    if-nez v2, :cond_4

    .line 118
    .line 119
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/WL;->s:J

    .line 120
    .line 121
    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/WL;->u:J

    .line 122
    .line 123
    goto :goto_0

    .line 124
    :cond_3
    move v6, v3

    .line 125
    :cond_4
    :goto_0
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/WL;->u:J

    .line 126
    .line 127
    add-long/2addr v7, v2

    .line 128
    move v3, v6

    .line 129
    :cond_5
    sget v2, Lcom/google/android/gms/internal/ads/Et;->a:I

    .line 130
    .line 131
    const/16 v6, 0x1d

    .line 132
    .line 133
    if-gt v2, v6, :cond_8

    .line 134
    .line 135
    cmp-long v2, v7, v9

    .line 136
    .line 137
    if-nez v2, :cond_6

    .line 138
    .line 139
    iget-wide v6, p0, Lcom/google/android/gms/internal/ads/WL;->s:J

    .line 140
    .line 141
    cmp-long v2, v6, v9

    .line 142
    .line 143
    if-lez v2, :cond_7

    .line 144
    .line 145
    const/4 v2, 0x3

    .line 146
    if-ne v3, v2, :cond_7

    .line 147
    .line 148
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/WL;->y:J

    .line 149
    .line 150
    cmp-long v6, v2, v4

    .line 151
    .line 152
    if-nez v6, :cond_a

    .line 153
    .line 154
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/WL;->y:J

    .line 155
    .line 156
    goto :goto_1

    .line 157
    :cond_6
    move-wide v9, v7

    .line 158
    :cond_7
    iput-wide v4, p0, Lcom/google/android/gms/internal/ads/WL;->y:J

    .line 159
    .line 160
    move-wide v7, v9

    .line 161
    :cond_8
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/WL;->s:J

    .line 162
    .line 163
    cmp-long v4, v2, v7

    .line 164
    .line 165
    if-lez v4, :cond_9

    .line 166
    .line 167
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/WL;->t:J

    .line 168
    .line 169
    const-wide/16 v4, 0x1

    .line 170
    .line 171
    add-long/2addr v2, v4

    .line 172
    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/WL;->t:J

    .line 173
    .line 174
    :cond_9
    iput-wide v7, p0, Lcom/google/android/gms/internal/ads/WL;->s:J

    .line 175
    .line 176
    :cond_a
    :goto_1
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/WL;->r:J

    .line 177
    .line 178
    :cond_b
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/WL;->s:J

    .line 179
    .line 180
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/WL;->t:J

    .line 181
    .line 182
    const/16 v4, 0x20

    .line 183
    .line 184
    shl-long/2addr v2, v4

    .line 185
    add-long/2addr v0, v2

    .line 186
    return-wide v0
.end method
