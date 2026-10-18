.class public final LB0/p;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lp0/C;

.field public c:I

.field public final d:J

.field public final e:LC0/g;

.field public final f:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LB0/p;->a:Landroid/content/Context;

    .line 5
    .line 6
    new-instance v0, Lp0/C;

    .line 7
    .line 8
    const/4 v1, 0x2

    .line 9
    invoke-direct {v0, p1, v1}, Lp0/C;-><init>(Landroid/content/Context;I)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, LB0/p;->b:Lp0/C;

    .line 13
    .line 14
    const/4 p1, 0x0

    .line 15
    iput p1, p0, LB0/p;->c:I

    .line 16
    .line 17
    const-wide/16 v0, 0x1388

    .line 18
    .line 19
    iput-wide v0, p0, LB0/p;->d:J

    .line 20
    .line 21
    sget-object p1, LK0/s;->g:LC0/g;

    .line 22
    .line 23
    iput-object p1, p0, LB0/p;->e:LC0/g;

    .line 24
    .line 25
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    iput-wide v0, p0, LB0/p;->f:J

    .line 31
    .line 32
    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Handler;LB0/L;LB0/L;LB0/L;LB0/L;)[LB0/h;
    .locals 22

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    move-object/from16 v9, p5

    .line 8
    .line 9
    const/4 v12, 0x2

    .line 10
    const/4 v13, 0x0

    .line 11
    const/4 v14, 0x1

    .line 12
    new-instance v15, Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 15
    .line 16
    .line 17
    iget v3, v1, LB0/p;->c:I

    .line 18
    .line 19
    iget-object v5, v1, LB0/p;->e:LC0/g;

    .line 20
    .line 21
    const-class v4, LU0/N;

    .line 22
    .line 23
    new-instance v6, LU0/i;

    .line 24
    .line 25
    iget-object v8, v1, LB0/p;->a:Landroid/content/Context;

    .line 26
    .line 27
    invoke-direct {v6, v8}, LU0/i;-><init>(Landroid/content/Context;)V

    .line 28
    .line 29
    .line 30
    iget-object v7, v1, LB0/p;->b:Lp0/C;

    .line 31
    .line 32
    iput-object v7, v6, LU0/i;->d:LK0/k;

    .line 33
    .line 34
    iput-object v5, v6, LU0/i;->c:LK0/s;

    .line 35
    .line 36
    iget-wide v10, v1, LB0/p;->d:J

    .line 37
    .line 38
    iput-wide v10, v6, LU0/i;->e:J

    .line 39
    .line 40
    iput-boolean v13, v6, LU0/i;->f:Z

    .line 41
    .line 42
    iput-object v0, v6, LU0/i;->g:Landroid/os/Handler;

    .line 43
    .line 44
    iput-object v2, v6, LU0/i;->h:LU0/N;

    .line 45
    .line 46
    const/16 v7, 0x32

    .line 47
    .line 48
    iput v7, v6, LU0/i;->i:I

    .line 49
    .line 50
    iput-boolean v13, v6, LU0/i;->k:Z

    .line 51
    .line 52
    move-object/from16 v17, v8

    .line 53
    .line 54
    iget-wide v7, v1, LB0/p;->f:J

    .line 55
    .line 56
    iput-wide v7, v6, LU0/i;->l:J

    .line 57
    .line 58
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 59
    .line 60
    const/16 v8, 0x22

    .line 61
    .line 62
    if-lt v7, v8, :cond_0

    .line 63
    .line 64
    iput-boolean v13, v6, LU0/i;->m:Z

    .line 65
    .line 66
    :cond_0
    iget-boolean v7, v6, LU0/i;->b:Z

    .line 67
    .line 68
    xor-int/2addr v7, v14

    .line 69
    invoke-static {v7}, Lcom/google/android/gms/internal/measurement/H1;->i(Z)V

    .line 70
    .line 71
    .line 72
    iget-object v7, v6, LU0/i;->g:Landroid/os/Handler;

    .line 73
    .line 74
    if-nez v7, :cond_1

    .line 75
    .line 76
    iget-object v8, v6, LU0/i;->h:LU0/N;

    .line 77
    .line 78
    if-eqz v8, :cond_2

    .line 79
    .line 80
    :cond_1
    if-eqz v7, :cond_3

    .line 81
    .line 82
    iget-object v7, v6, LU0/i;->h:LU0/N;

    .line 83
    .line 84
    if-eqz v7, :cond_3

    .line 85
    .line 86
    :cond_2
    const/4 v7, 0x1

    .line 87
    goto :goto_0

    .line 88
    :cond_3
    const/4 v7, 0x0

    .line 89
    :goto_0
    invoke-static {v7}, Lcom/google/android/gms/internal/measurement/H1;->i(Z)V

    .line 90
    .line 91
    .line 92
    iput-boolean v14, v6, LU0/i;->b:Z

    .line 93
    .line 94
    new-instance v7, LU0/k;

    .line 95
    .line 96
    invoke-direct {v7, v6}, LU0/k;-><init>(LU0/i;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v15, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    const-string v8, "Error instantiating FFmpeg extension"

    .line 103
    .line 104
    const-class v19, Landroid/os/Handler;

    .line 105
    .line 106
    const-string v7, "DefaultRenderersFactory"

    .line 107
    .line 108
    if-nez v3, :cond_4

    .line 109
    .line 110
    goto/16 :goto_7

    .line 111
    .line 112
    :cond_4
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    .line 113
    .line 114
    .line 115
    move-result v6

    .line 116
    if-ne v3, v12, :cond_5

    .line 117
    .line 118
    add-int/lit8 v6, v6, -0x1

    .line 119
    .line 120
    :cond_5
    :try_start_0
    const-class v3, Lz0/a;

    .line 121
    .line 122
    const/4 v12, 0x4

    .line 123
    new-array v14, v12, [Ljava/lang/Class;

    .line 124
    .line 125
    sget-object v12, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 126
    .line 127
    aput-object v12, v14, v13

    .line 128
    .line 129
    const/4 v12, 0x1

    .line 130
    aput-object v19, v14, v12

    .line 131
    .line 132
    const/4 v12, 0x2

    .line 133
    aput-object v4, v14, v12

    .line 134
    .line 135
    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 136
    .line 137
    const/16 v16, 0x3

    .line 138
    .line 139
    aput-object v12, v14, v16

    .line 140
    .line 141
    invoke-virtual {v3, v14}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 142
    .line 143
    .line 144
    move-result-object v3

    .line 145
    const/4 v12, 0x4

    .line 146
    new-array v14, v12, [Ljava/lang/Object;

    .line 147
    .line 148
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 149
    .line 150
    .line 151
    move-result-object v12

    .line 152
    aput-object v12, v14, v13

    .line 153
    .line 154
    const/4 v12, 0x1

    .line 155
    aput-object v0, v14, v12

    .line 156
    .line 157
    const/4 v12, 0x2

    .line 158
    aput-object v2, v14, v12

    .line 159
    .line 160
    const/16 v12, 0x32

    .line 161
    .line 162
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 163
    .line 164
    .line 165
    move-result-object v20

    .line 166
    const/4 v12, 0x3

    .line 167
    aput-object v20, v14, v12

    .line 168
    .line 169
    invoke-virtual {v3, v14}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object v3

    .line 173
    check-cast v3, LB0/h;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    .line 175
    const/4 v12, 0x1

    .line 176
    add-int/lit8 v14, v6, 0x1

    .line 177
    .line 178
    :try_start_1
    invoke-virtual {v15, v6, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 179
    .line 180
    .line 181
    const-string v3, "Loaded LibvpxVideoRenderer."

    .line 182
    .line 183
    invoke-static {v7, v3}, Lp0/x;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 184
    .line 185
    .line 186
    goto :goto_3

    .line 187
    :catch_0
    move-exception v0

    .line 188
    goto :goto_1

    .line 189
    :catch_1
    move v6, v14

    .line 190
    goto :goto_2

    .line 191
    :goto_1
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 192
    .line 193
    const-string v3, "Error instantiating VP9 extension"

    .line 194
    .line 195
    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 196
    .line 197
    .line 198
    throw v2

    .line 199
    :catch_2
    :goto_2
    move v14, v6

    .line 200
    :goto_3
    :try_start_2
    const-class v3, Lx0/d;

    .line 201
    .line 202
    sget v6, Lx0/d;->q0:I

    .line 203
    .line 204
    const/4 v6, 0x4

    .line 205
    new-array v12, v6, [Ljava/lang/Class;

    .line 206
    .line 207
    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 208
    .line 209
    aput-object v6, v12, v13

    .line 210
    .line 211
    const/4 v6, 0x1

    .line 212
    aput-object v19, v12, v6

    .line 213
    .line 214
    const/4 v6, 0x2

    .line 215
    aput-object v4, v12, v6

    .line 216
    .line 217
    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 218
    .line 219
    const/16 v16, 0x3

    .line 220
    .line 221
    aput-object v6, v12, v16

    .line 222
    .line 223
    invoke-virtual {v3, v12}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 224
    .line 225
    .line 226
    move-result-object v3

    .line 227
    const/4 v6, 0x4

    .line 228
    new-array v12, v6, [Ljava/lang/Object;

    .line 229
    .line 230
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 231
    .line 232
    .line 233
    move-result-object v6

    .line 234
    aput-object v6, v12, v13

    .line 235
    .line 236
    const/4 v6, 0x1

    .line 237
    aput-object v0, v12, v6

    .line 238
    .line 239
    const/4 v6, 0x2

    .line 240
    aput-object v2, v12, v6

    .line 241
    .line 242
    const/16 v6, 0x32

    .line 243
    .line 244
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 245
    .line 246
    .line 247
    move-result-object v20

    .line 248
    const/4 v6, 0x3

    .line 249
    aput-object v20, v12, v6

    .line 250
    .line 251
    invoke-virtual {v3, v12}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    .line 253
    .line 254
    move-result-object v3

    .line 255
    check-cast v3, LB0/h;
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 256
    .line 257
    const/4 v6, 0x1

    .line 258
    add-int/lit8 v12, v14, 0x1

    .line 259
    .line 260
    :try_start_3
    invoke-virtual {v15, v14, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 261
    .line 262
    .line 263
    const-string v3, "Loaded Libgav1VideoRenderer."

    .line 264
    .line 265
    invoke-static {v7, v3}, Lp0/x;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 266
    .line 267
    .line 268
    goto :goto_6

    .line 269
    :catch_3
    move-exception v0

    .line 270
    goto :goto_4

    .line 271
    :catch_4
    move v14, v12

    .line 272
    goto :goto_5

    .line 273
    :goto_4
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 274
    .line 275
    const-string v3, "Error instantiating AV1 extension"

    .line 276
    .line 277
    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 278
    .line 279
    .line 280
    throw v2

    .line 281
    :catch_5
    :goto_5
    move v12, v14

    .line 282
    :goto_6
    :try_start_4
    const-class v3, Landroidx/media3/decoder/ffmpeg/a;

    .line 283
    .line 284
    const/4 v6, 0x4

    .line 285
    new-array v14, v6, [Ljava/lang/Class;

    .line 286
    .line 287
    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 288
    .line 289
    aput-object v6, v14, v13

    .line 290
    .line 291
    const/4 v6, 0x1

    .line 292
    aput-object v19, v14, v6

    .line 293
    .line 294
    const/4 v6, 0x2

    .line 295
    aput-object v4, v14, v6

    .line 296
    .line 297
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 298
    .line 299
    const/4 v6, 0x3

    .line 300
    aput-object v4, v14, v6

    .line 301
    .line 302
    invoke-virtual {v3, v14}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 303
    .line 304
    .line 305
    move-result-object v3

    .line 306
    const/4 v4, 0x4

    .line 307
    new-array v6, v4, [Ljava/lang/Object;

    .line 308
    .line 309
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 310
    .line 311
    .line 312
    move-result-object v4

    .line 313
    aput-object v4, v6, v13

    .line 314
    .line 315
    const/4 v4, 0x1

    .line 316
    aput-object v0, v6, v4

    .line 317
    .line 318
    const/4 v4, 0x2

    .line 319
    aput-object v2, v6, v4

    .line 320
    .line 321
    const/16 v2, 0x32

    .line 322
    .line 323
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 324
    .line 325
    .line 326
    move-result-object v2

    .line 327
    const/4 v4, 0x3

    .line 328
    aput-object v2, v6, v4

    .line 329
    .line 330
    invoke-virtual {v3, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    .line 332
    .line 333
    move-result-object v2

    .line 334
    check-cast v2, LB0/h;

    .line 335
    .line 336
    invoke-virtual {v15, v12, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 337
    .line 338
    .line 339
    const-string v2, "Loaded FfmpegVideoRenderer."

    .line 340
    .line 341
    invoke-static {v7, v2}, Lp0/x;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6

    .line 342
    .line 343
    .line 344
    goto :goto_7

    .line 345
    :catch_6
    move-exception v0

    .line 346
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 347
    .line 348
    invoke-direct {v2, v8, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 349
    .line 350
    .line 351
    throw v2

    .line 352
    :catch_7
    :goto_7
    new-instance v2, LD0/I;

    .line 353
    .line 354
    move-object/from16 v10, v17

    .line 355
    .line 356
    invoke-direct {v2, v10}, LD0/I;-><init>(Landroid/content/Context;)V

    .line 357
    .line 358
    .line 359
    iput-boolean v13, v2, LD0/I;->d:Z

    .line 360
    .line 361
    iput-boolean v13, v2, LD0/I;->e:Z

    .line 362
    .line 363
    invoke-virtual {v2}, LD0/I;->a()LD0/S;

    .line 364
    .line 365
    .line 366
    move-result-object v11

    .line 367
    iget v12, v1, LB0/p;->c:I

    .line 368
    .line 369
    const-class v14, Landroid/content/Context;

    .line 370
    .line 371
    const-class v17, LD0/v;

    .line 372
    .line 373
    const-class v18, LD0/o;

    .line 374
    .line 375
    new-instance v6, LD0/V;

    .line 376
    .line 377
    iget-object v4, v1, LB0/p;->a:Landroid/content/Context;

    .line 378
    .line 379
    iget-object v3, v1, LB0/p;->b:Lp0/C;

    .line 380
    .line 381
    move-object v2, v6

    .line 382
    move-object/from16 v20, v3

    .line 383
    .line 384
    move-object v3, v4

    .line 385
    move-object/from16 v21, v4

    .line 386
    .line 387
    move-object/from16 v4, v20

    .line 388
    .line 389
    move-object v13, v6

    .line 390
    move-object/from16 v6, p1

    .line 391
    .line 392
    move-object v1, v7

    .line 393
    move-object/from16 v7, p3

    .line 394
    .line 395
    move-object/from16 p2, v10

    .line 396
    .line 397
    move-object v10, v8

    .line 398
    move-object v8, v11

    .line 399
    invoke-direct/range {v2 .. v8}, LD0/V;-><init>(Landroid/content/Context;Lp0/C;LC0/g;Landroid/os/Handler;LB0/L;LD0/S;)V

    .line 400
    .line 401
    .line 402
    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 403
    .line 404
    .line 405
    if-nez v12, :cond_6

    .line 406
    .line 407
    goto/16 :goto_17

    .line 408
    .line 409
    :cond_6
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    .line 410
    .line 411
    .line 412
    move-result v2

    .line 413
    const/4 v3, 0x2

    .line 414
    if-ne v12, v3, :cond_7

    .line 415
    .line 416
    add-int/lit8 v2, v2, -0x1

    .line 417
    .line 418
    :cond_7
    :try_start_5
    const-string v3, "androidx.media3.decoder.midi.MidiRenderer"

    .line 419
    .line 420
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 421
    .line 422
    .line 423
    move-result-object v3

    .line 424
    const/4 v4, 0x4

    .line 425
    new-array v5, v4, [Ljava/lang/Class;

    .line 426
    .line 427
    const/4 v4, 0x0

    .line 428
    aput-object v14, v5, v4

    .line 429
    .line 430
    const/4 v4, 0x1

    .line 431
    aput-object v19, v5, v4

    .line 432
    .line 433
    const/4 v4, 0x2

    .line 434
    aput-object v18, v5, v4

    .line 435
    .line 436
    const/4 v4, 0x3

    .line 437
    aput-object v17, v5, v4

    .line 438
    .line 439
    invoke-virtual {v3, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 440
    .line 441
    .line 442
    move-result-object v3

    .line 443
    const/4 v4, 0x4

    .line 444
    new-array v5, v4, [Ljava/lang/Object;

    .line 445
    .line 446
    const/4 v4, 0x0

    .line 447
    aput-object v21, v5, v4

    .line 448
    .line 449
    const/4 v4, 0x1

    .line 450
    aput-object v0, v5, v4

    .line 451
    .line 452
    const/4 v6, 0x2

    .line 453
    aput-object p3, v5, v6

    .line 454
    .line 455
    const/4 v6, 0x3

    .line 456
    aput-object v11, v5, v6

    .line 457
    .line 458
    invoke-virtual {v3, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 459
    .line 460
    .line 461
    move-result-object v3

    .line 462
    check-cast v3, LB0/h;
    :try_end_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_5} :catch_a
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_8

    .line 463
    .line 464
    add-int/lit8 v5, v2, 0x1

    .line 465
    .line 466
    :try_start_6
    invoke-virtual {v15, v2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 467
    .line 468
    .line 469
    const-string v2, "Loaded MidiRenderer."

    .line 470
    .line 471
    invoke-static {v1, v2}, Lp0/x;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_6} :catch_9
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_8

    .line 472
    .line 473
    .line 474
    goto :goto_a

    .line 475
    :catch_8
    move-exception v0

    .line 476
    goto :goto_8

    .line 477
    :catch_9
    move v2, v5

    .line 478
    goto :goto_9

    .line 479
    :goto_8
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 480
    .line 481
    const-string v2, "Error instantiating MIDI extension"

    .line 482
    .line 483
    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 484
    .line 485
    .line 486
    throw v1

    .line 487
    :catch_a
    :goto_9
    move v5, v2

    .line 488
    :goto_a
    :try_start_7
    const-class v2, Ly0/a;

    .line 489
    .line 490
    const/4 v3, 0x3

    .line 491
    new-array v4, v3, [Ljava/lang/Class;

    .line 492
    .line 493
    const/4 v6, 0x0

    .line 494
    aput-object v19, v4, v6

    .line 495
    .line 496
    const/4 v7, 0x1

    .line 497
    aput-object v18, v4, v7

    .line 498
    .line 499
    const/4 v8, 0x2

    .line 500
    aput-object v17, v4, v8

    .line 501
    .line 502
    invoke-virtual {v2, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 503
    .line 504
    .line 505
    move-result-object v2

    .line 506
    new-array v4, v3, [Ljava/lang/Object;

    .line 507
    .line 508
    aput-object v0, v4, v6

    .line 509
    .line 510
    aput-object p3, v4, v7

    .line 511
    .line 512
    aput-object v11, v4, v8

    .line 513
    .line 514
    invoke-virtual {v2, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 515
    .line 516
    .line 517
    move-result-object v2

    .line 518
    check-cast v2, LB0/h;
    :try_end_7
    .catch Ljava/lang/ClassNotFoundException; {:try_start_7 .. :try_end_7} :catch_d
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_b

    .line 519
    .line 520
    add-int/lit8 v3, v5, 0x1

    .line 521
    .line 522
    :try_start_8
    invoke-virtual {v15, v5, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 523
    .line 524
    .line 525
    const-string v2, "Loaded LibopusAudioRenderer."

    .line 526
    .line 527
    invoke-static {v1, v2}, Lp0/x;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/ClassNotFoundException; {:try_start_8 .. :try_end_8} :catch_c
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_b

    .line 528
    .line 529
    .line 530
    goto :goto_d

    .line 531
    :catch_b
    move-exception v0

    .line 532
    goto :goto_b

    .line 533
    :catch_c
    move v5, v3

    .line 534
    goto :goto_c

    .line 535
    :goto_b
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 536
    .line 537
    const-string v2, "Error instantiating Opus extension"

    .line 538
    .line 539
    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 540
    .line 541
    .line 542
    throw v1

    .line 543
    :catch_d
    :goto_c
    move v3, v5

    .line 544
    :goto_d
    :try_start_9
    const-class v2, Landroidx/media3/decoder/flac/k;

    .line 545
    .line 546
    const/4 v4, 0x3

    .line 547
    new-array v5, v4, [Ljava/lang/Class;

    .line 548
    .line 549
    const/4 v6, 0x0

    .line 550
    aput-object v19, v5, v6

    .line 551
    .line 552
    const/4 v7, 0x1

    .line 553
    aput-object v18, v5, v7

    .line 554
    .line 555
    const/4 v8, 0x2

    .line 556
    aput-object v17, v5, v8

    .line 557
    .line 558
    invoke-virtual {v2, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 559
    .line 560
    .line 561
    move-result-object v2

    .line 562
    new-array v5, v4, [Ljava/lang/Object;

    .line 563
    .line 564
    aput-object v0, v5, v6

    .line 565
    .line 566
    aput-object p3, v5, v7

    .line 567
    .line 568
    aput-object v11, v5, v8

    .line 569
    .line 570
    invoke-virtual {v2, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 571
    .line 572
    .line 573
    move-result-object v2

    .line 574
    check-cast v2, LB0/h;
    :try_end_9
    .catch Ljava/lang/ClassNotFoundException; {:try_start_9 .. :try_end_9} :catch_10
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_e

    .line 575
    .line 576
    add-int/lit8 v4, v3, 0x1

    .line 577
    .line 578
    :try_start_a
    invoke-virtual {v15, v3, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 579
    .line 580
    .line 581
    const-string v2, "Loaded LibflacAudioRenderer."

    .line 582
    .line 583
    invoke-static {v1, v2}, Lp0/x;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_a .. :try_end_a} :catch_f
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_e

    .line 584
    .line 585
    .line 586
    goto :goto_10

    .line 587
    :catch_e
    move-exception v0

    .line 588
    goto :goto_e

    .line 589
    :catch_f
    move v3, v4

    .line 590
    goto :goto_f

    .line 591
    :goto_e
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 592
    .line 593
    const-string v2, "Error instantiating FLAC extension"

    .line 594
    .line 595
    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 596
    .line 597
    .line 598
    throw v1

    .line 599
    :catch_10
    :goto_f
    move v4, v3

    .line 600
    :goto_10
    :try_start_b
    const-class v2, Landroidx/media3/decoder/ffmpeg/c;

    .line 601
    .line 602
    const/4 v3, 0x3

    .line 603
    new-array v5, v3, [Ljava/lang/Class;

    .line 604
    .line 605
    const/4 v6, 0x0

    .line 606
    aput-object v19, v5, v6

    .line 607
    .line 608
    const/4 v7, 0x1

    .line 609
    aput-object v18, v5, v7

    .line 610
    .line 611
    const/4 v8, 0x2

    .line 612
    aput-object v17, v5, v8

    .line 613
    .line 614
    invoke-virtual {v2, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 615
    .line 616
    .line 617
    move-result-object v2

    .line 618
    new-array v5, v3, [Ljava/lang/Object;

    .line 619
    .line 620
    aput-object v0, v5, v6

    .line 621
    .line 622
    aput-object p3, v5, v7

    .line 623
    .line 624
    aput-object v11, v5, v8

    .line 625
    .line 626
    invoke-virtual {v2, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 627
    .line 628
    .line 629
    move-result-object v2

    .line 630
    check-cast v2, LB0/h;
    :try_end_b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_b .. :try_end_b} :catch_13
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_11

    .line 631
    .line 632
    add-int/lit8 v3, v4, 0x1

    .line 633
    .line 634
    :try_start_c
    invoke-virtual {v15, v4, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 635
    .line 636
    .line 637
    const-string v2, "Loaded FfmpegAudioRenderer."

    .line 638
    .line 639
    invoke-static {v1, v2}, Lp0/x;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/ClassNotFoundException; {:try_start_c .. :try_end_c} :catch_12
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_11

    .line 640
    .line 641
    .line 642
    goto :goto_13

    .line 643
    :catch_11
    move-exception v0

    .line 644
    goto :goto_11

    .line 645
    :catch_12
    move v4, v3

    .line 646
    goto :goto_12

    .line 647
    :goto_11
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 648
    .line 649
    invoke-direct {v1, v10, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 650
    .line 651
    .line 652
    throw v1

    .line 653
    :catch_13
    :goto_12
    move v3, v4

    .line 654
    :goto_13
    :try_start_d
    const-string v2, "androidx.media3.decoder.iamf.LibiamfAudioRenderer"

    .line 655
    .line 656
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 657
    .line 658
    .line 659
    move-result-object v2

    .line 660
    const/4 v4, 0x4

    .line 661
    new-array v5, v4, [Ljava/lang/Class;

    .line 662
    .line 663
    const/4 v4, 0x0

    .line 664
    aput-object v14, v5, v4

    .line 665
    .line 666
    const/4 v4, 0x1

    .line 667
    aput-object v19, v5, v4

    .line 668
    .line 669
    const/4 v4, 0x2

    .line 670
    aput-object v18, v5, v4

    .line 671
    .line 672
    const/4 v4, 0x3

    .line 673
    aput-object v17, v5, v4

    .line 674
    .line 675
    invoke-virtual {v2, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 676
    .line 677
    .line 678
    move-result-object v2

    .line 679
    const/4 v4, 0x4

    .line 680
    new-array v4, v4, [Ljava/lang/Object;

    .line 681
    .line 682
    const/4 v5, 0x0

    .line 683
    aput-object v21, v4, v5

    .line 684
    .line 685
    const/4 v5, 0x1

    .line 686
    aput-object v0, v4, v5

    .line 687
    .line 688
    const/4 v6, 0x2

    .line 689
    aput-object p3, v4, v6

    .line 690
    .line 691
    const/4 v6, 0x3

    .line 692
    aput-object v11, v4, v6

    .line 693
    .line 694
    invoke-virtual {v2, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 695
    .line 696
    .line 697
    move-result-object v2

    .line 698
    check-cast v2, LB0/h;
    :try_end_d
    .catch Ljava/lang/ClassNotFoundException; {:try_start_d .. :try_end_d} :catch_16
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_14

    .line 699
    .line 700
    add-int/lit8 v14, v3, 0x1

    .line 701
    .line 702
    :try_start_e
    invoke-virtual {v15, v3, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 703
    .line 704
    .line 705
    const-string v2, "Loaded LibiamfAudioRenderer."

    .line 706
    .line 707
    invoke-static {v1, v2}, Lp0/x;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/lang/ClassNotFoundException; {:try_start_e .. :try_end_e} :catch_15
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_14

    .line 708
    .line 709
    .line 710
    goto :goto_16

    .line 711
    :catch_14
    move-exception v0

    .line 712
    goto :goto_14

    .line 713
    :catch_15
    move v3, v14

    .line 714
    goto :goto_15

    .line 715
    :goto_14
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 716
    .line 717
    const-string v2, "Error instantiating IAMF extension"

    .line 718
    .line 719
    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 720
    .line 721
    .line 722
    throw v1

    .line 723
    :catch_16
    :goto_15
    move v14, v3

    .line 724
    :goto_16
    :try_start_f
    const-class v2, Landroidx/media3/decoder/mpegh/MpeghAudioRenderer;

    .line 725
    .line 726
    const/4 v3, 0x3

    .line 727
    new-array v4, v3, [Ljava/lang/Class;

    .line 728
    .line 729
    const/4 v5, 0x0

    .line 730
    aput-object v19, v4, v5

    .line 731
    .line 732
    const/4 v6, 0x1

    .line 733
    aput-object v18, v4, v6

    .line 734
    .line 735
    const/4 v7, 0x2

    .line 736
    aput-object v17, v4, v7

    .line 737
    .line 738
    invoke-virtual {v2, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 739
    .line 740
    .line 741
    move-result-object v2

    .line 742
    new-array v3, v3, [Ljava/lang/Object;

    .line 743
    .line 744
    aput-object v0, v3, v5

    .line 745
    .line 746
    aput-object p3, v3, v6

    .line 747
    .line 748
    aput-object v11, v3, v7

    .line 749
    .line 750
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 751
    .line 752
    .line 753
    move-result-object v2

    .line 754
    check-cast v2, LB0/h;

    .line 755
    .line 756
    invoke-virtual {v15, v14, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 757
    .line 758
    .line 759
    const-string v2, "Loaded MpeghAudioRenderer."

    .line 760
    .line 761
    invoke-static {v1, v2}, Lp0/x;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/ClassNotFoundException; {:try_start_f .. :try_end_f} :catch_18
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_17

    .line 762
    .line 763
    .line 764
    goto :goto_17

    .line 765
    :catch_17
    move-exception v0

    .line 766
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 767
    .line 768
    const-string v2, "Error instantiating MPEG-H extension"

    .line 769
    .line 770
    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 771
    .line 772
    .line 773
    throw v1

    .line 774
    :catch_18
    :goto_17
    invoke-virtual/range {p1 .. p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 775
    .line 776
    .line 777
    move-result-object v1

    .line 778
    new-instance v2, LQ0/g;

    .line 779
    .line 780
    move-object/from16 v3, p4

    .line 781
    .line 782
    invoke-direct {v2, v3, v1}, LQ0/g;-><init>(LB0/L;Landroid/os/Looper;)V

    .line 783
    .line 784
    .line 785
    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 786
    .line 787
    .line 788
    invoke-virtual/range {p1 .. p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 789
    .line 790
    .line 791
    move-result-object v0

    .line 792
    new-instance v1, LL0/b;

    .line 793
    .line 794
    invoke-direct {v1, v9, v0}, LL0/b;-><init>(LB0/L;Landroid/os/Looper;)V

    .line 795
    .line 796
    .line 797
    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 798
    .line 799
    .line 800
    new-instance v1, LL0/b;

    .line 801
    .line 802
    invoke-direct {v1, v9, v0}, LL0/b;-><init>(LB0/L;Landroid/os/Looper;)V

    .line 803
    .line 804
    .line 805
    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 806
    .line 807
    .line 808
    new-instance v0, LV0/b;

    .line 809
    .line 810
    invoke-direct {v0}, LV0/b;-><init>()V

    .line 811
    .line 812
    .line 813
    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 814
    .line 815
    .line 816
    new-instance v0, LJ0/g;

    .line 817
    .line 818
    new-instance v1, LF/d;

    .line 819
    .line 820
    move-object/from16 v2, p2

    .line 821
    .line 822
    invoke-direct {v1, v2}, LF/d;-><init>(Landroid/content/Context;)V

    .line 823
    .line 824
    .line 825
    invoke-direct {v0, v1}, LJ0/g;-><init>(LF/d;)V

    .line 826
    .line 827
    .line 828
    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 829
    .line 830
    .line 831
    const/4 v0, 0x0

    .line 832
    new-array v0, v0, [LB0/h;

    .line 833
    .line 834
    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 835
    .line 836
    .line 837
    move-result-object v0

    .line 838
    check-cast v0, [LB0/h;

    .line 839
    .line 840
    return-object v0
.end method
