.class public final LN/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:LN/k;

.field public final c:LN/i;

.field public final d:LN/i;

.field public e:Landroid/view/VelocityTracker;

.field public f:F

.field public g:I

.field public h:I

.field public i:I

.field public final j:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;LN/k;)V
    .locals 4

    .line 1
    new-instance v0, LN/i;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, LN/i;-><init>(I)V

    .line 5
    .line 6
    .line 7
    new-instance v2, LN/i;

    .line 8
    .line 9
    const/4 v3, 0x1

    .line 10
    invoke-direct {v2, v3}, LN/i;-><init>(I)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    const/4 v3, -0x1

    .line 17
    iput v3, p0, LN/j;->g:I

    .line 18
    .line 19
    iput v3, p0, LN/j;->h:I

    .line 20
    .line 21
    iput v3, p0, LN/j;->i:I

    .line 22
    .line 23
    const v3, 0x7fffffff

    .line 24
    .line 25
    .line 26
    filled-new-array {v3, v1}, [I

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    iput-object v1, p0, LN/j;->j:[I

    .line 31
    .line 32
    iput-object p1, p0, LN/j;->a:Landroid/content/Context;

    .line 33
    .line 34
    iput-object p2, p0, LN/j;->b:LN/k;

    .line 35
    .line 36
    iput-object v0, p0, LN/j;->c:LN/i;

    .line 37
    .line 38
    iput-object v2, p0, LN/j;->d:LN/i;

    .line 39
    .line 40
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/MotionEvent;I)V
    .locals 25

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getSource()I

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDeviceId()I

    .line 12
    .line 13
    .line 14
    move-result v4

    .line 15
    iget v5, v0, LN/j;->h:I

    .line 16
    .line 17
    const/16 v9, 0x22

    .line 18
    .line 19
    const/high16 v10, 0x400000

    .line 20
    .line 21
    iget-object v12, v0, LN/j;->j:[I

    .line 22
    .line 23
    if-ne v5, v3, :cond_1

    .line 24
    .line 25
    iget v5, v0, LN/j;->i:I

    .line 26
    .line 27
    if-ne v5, v4, :cond_1

    .line 28
    .line 29
    iget v5, v0, LN/j;->g:I

    .line 30
    .line 31
    if-eq v5, v2, :cond_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const/4 v3, 0x0

    .line 35
    const/4 v15, 0x0

    .line 36
    goto/16 :goto_a

    .line 37
    .line 38
    :cond_1
    :goto_0
    iget-object v5, v0, LN/j;->c:LN/i;

    .line 39
    .line 40
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    iget-object v5, v0, LN/j;->a:Landroid/content/Context;

    .line 44
    .line 45
    invoke-static {v5}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 46
    .line 47
    .line 48
    move-result-object v13

    .line 49
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDeviceId()I

    .line 50
    .line 51
    .line 52
    move-result v14

    .line 53
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getSource()I

    .line 54
    .line 55
    .line 56
    move-result v15

    .line 57
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 58
    .line 59
    const-string v7, "android"

    .line 60
    .line 61
    const-string v6, "dimen"

    .line 62
    .line 63
    const/4 v11, -0x1

    .line 64
    if-lt v8, v9, :cond_3

    .line 65
    .line 66
    sget-object v17, LN/O;->a:Ljava/lang/reflect/Method;

    .line 67
    .line 68
    invoke-static {v13, v14, v2, v15}, Le7/a;->l(Landroid/view/ViewConfiguration;III)I

    .line 69
    .line 70
    .line 71
    move-result v14

    .line 72
    :cond_2
    :goto_1
    const/4 v15, 0x0

    .line 73
    goto :goto_4

    .line 74
    :cond_3
    sget-object v17, LN/O;->a:Ljava/lang/reflect/Method;

    .line 75
    .line 76
    invoke-static {v14}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    .line 77
    .line 78
    .line 79
    move-result-object v14

    .line 80
    if-eqz v14, :cond_6

    .line 81
    .line 82
    invoke-virtual {v14, v2, v15}, Landroid/view/InputDevice;->getMotionRange(II)Landroid/view/InputDevice$MotionRange;

    .line 83
    .line 84
    .line 85
    move-result-object v14

    .line 86
    if-eqz v14, :cond_6

    .line 87
    .line 88
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 89
    .line 90
    .line 91
    move-result-object v14

    .line 92
    if-ne v15, v10, :cond_4

    .line 93
    .line 94
    const/16 v15, 0x1a

    .line 95
    .line 96
    if-ne v2, v15, :cond_4

    .line 97
    .line 98
    const-string v15, "config_viewMinRotaryEncoderFlingVelocity"

    .line 99
    .line 100
    invoke-virtual {v14, v15, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    .line 102
    .line 103
    move-result v15

    .line 104
    goto :goto_2

    .line 105
    :cond_4
    const/4 v15, -0x1

    .line 106
    :goto_2
    invoke-static {v13}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    if-eq v15, v11, :cond_5

    .line 110
    .line 111
    if-eqz v15, :cond_6

    .line 112
    .line 113
    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 114
    .line 115
    .line 116
    move-result v14

    .line 117
    if-gez v14, :cond_2

    .line 118
    .line 119
    goto :goto_3

    .line 120
    :cond_5
    invoke-virtual {v13}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    .line 121
    .line 122
    .line 123
    move-result v14

    .line 124
    goto :goto_1

    .line 125
    :cond_6
    :goto_3
    const v14, 0x7fffffff

    .line 126
    .line 127
    .line 128
    goto :goto_1

    .line 129
    :goto_4
    aput v14, v12, v15

    .line 130
    .line 131
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDeviceId()I

    .line 132
    .line 133
    .line 134
    move-result v14

    .line 135
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getSource()I

    .line 136
    .line 137
    .line 138
    move-result v15

    .line 139
    if-lt v8, v9, :cond_7

    .line 140
    .line 141
    invoke-static {v13, v14, v2, v15}, Le7/a;->k(Landroid/view/ViewConfiguration;III)I

    .line 142
    .line 143
    .line 144
    move-result v5

    .line 145
    :goto_5
    const/4 v6, 0x1

    .line 146
    goto :goto_9

    .line 147
    :cond_7
    invoke-static {v14}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    .line 148
    .line 149
    .line 150
    move-result-object v8

    .line 151
    if-eqz v8, :cond_8

    .line 152
    .line 153
    invoke-virtual {v8, v2, v15}, Landroid/view/InputDevice;->getMotionRange(II)Landroid/view/InputDevice$MotionRange;

    .line 154
    .line 155
    .line 156
    move-result-object v8

    .line 157
    if-eqz v8, :cond_8

    .line 158
    .line 159
    const/4 v8, 0x1

    .line 160
    goto :goto_6

    .line 161
    :cond_8
    const/4 v8, 0x0

    .line 162
    :goto_6
    const/high16 v14, -0x80000000

    .line 163
    .line 164
    if-nez v8, :cond_a

    .line 165
    .line 166
    :cond_9
    const/high16 v5, -0x80000000

    .line 167
    .line 168
    goto :goto_5

    .line 169
    :cond_a
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 170
    .line 171
    .line 172
    move-result-object v5

    .line 173
    if-ne v15, v10, :cond_b

    .line 174
    .line 175
    const/16 v8, 0x1a

    .line 176
    .line 177
    if-ne v2, v8, :cond_b

    .line 178
    .line 179
    const-string v8, "config_viewMaxRotaryEncoderFlingVelocity"

    .line 180
    .line 181
    invoke-virtual {v5, v8, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    .line 183
    .line 184
    move-result v6

    .line 185
    goto :goto_7

    .line 186
    :cond_b
    const/4 v6, -0x1

    .line 187
    :goto_7
    invoke-static {v13}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    if-eq v6, v11, :cond_d

    .line 191
    .line 192
    if-eqz v6, :cond_9

    .line 193
    .line 194
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 195
    .line 196
    .line 197
    move-result v5

    .line 198
    if-gez v5, :cond_c

    .line 199
    .line 200
    goto :goto_8

    .line 201
    :cond_c
    move v14, v5

    .line 202
    :goto_8
    move v5, v14

    .line 203
    goto :goto_5

    .line 204
    :cond_d
    invoke-virtual {v13}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    .line 205
    .line 206
    .line 207
    move-result v5

    .line 208
    goto :goto_5

    .line 209
    :goto_9
    aput v5, v12, v6

    .line 210
    .line 211
    iput v3, v0, LN/j;->h:I

    .line 212
    .line 213
    iput v4, v0, LN/j;->i:I

    .line 214
    .line 215
    iput v2, v0, LN/j;->g:I

    .line 216
    .line 217
    const/4 v3, 0x0

    .line 218
    const/4 v15, 0x1

    .line 219
    :goto_a
    aget v4, v12, v3

    .line 220
    .line 221
    const v3, 0x7fffffff

    .line 222
    .line 223
    .line 224
    if-ne v4, v3, :cond_f

    .line 225
    .line 226
    iget-object v1, v0, LN/j;->e:Landroid/view/VelocityTracker;

    .line 227
    .line 228
    if-eqz v1, :cond_e

    .line 229
    .line 230
    invoke-virtual {v1}, Landroid/view/VelocityTracker;->recycle()V

    .line 231
    .line 232
    .line 233
    const/4 v1, 0x0

    .line 234
    iput-object v1, v0, LN/j;->e:Landroid/view/VelocityTracker;

    .line 235
    .line 236
    :cond_e
    return-void

    .line 237
    :cond_f
    iget-object v3, v0, LN/j;->e:Landroid/view/VelocityTracker;

    .line 238
    .line 239
    if-nez v3, :cond_10

    .line 240
    .line 241
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    .line 242
    .line 243
    .line 244
    move-result-object v3

    .line 245
    iput-object v3, v0, LN/j;->e:Landroid/view/VelocityTracker;

    .line 246
    .line 247
    :cond_10
    iget-object v3, v0, LN/j;->e:Landroid/view/VelocityTracker;

    .line 248
    .line 249
    iget-object v4, v0, LN/j;->d:LN/i;

    .line 250
    .line 251
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 252
    .line 253
    .line 254
    sget-object v4, LN/w;->a:Ljava/util/Map;

    .line 255
    .line 256
    invoke-virtual {v3, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 257
    .line 258
    .line 259
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 260
    .line 261
    const/16 v5, 0x14

    .line 262
    .line 263
    const/4 v6, 0x0

    .line 264
    if-lt v4, v9, :cond_11

    .line 265
    .line 266
    goto :goto_b

    .line 267
    :cond_11
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getSource()I

    .line 268
    .line 269
    .line 270
    move-result v4

    .line 271
    if-ne v4, v10, :cond_15

    .line 272
    .line 273
    sget-object v4, LN/w;->a:Ljava/util/Map;

    .line 274
    .line 275
    invoke-interface {v4, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 276
    .line 277
    .line 278
    move-result v7

    .line 279
    if-nez v7, :cond_12

    .line 280
    .line 281
    new-instance v7, LN/x;

    .line 282
    .line 283
    invoke-direct {v7}, LN/x;-><init>()V

    .line 284
    .line 285
    .line 286
    invoke-interface {v4, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    .line 288
    .line 289
    :cond_12
    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    .line 291
    .line 292
    move-result-object v4

    .line 293
    check-cast v4, LN/x;

    .line 294
    .line 295
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 296
    .line 297
    .line 298
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    .line 299
    .line 300
    .line 301
    move-result-wide v7

    .line 302
    iget v10, v4, LN/x;->d:I

    .line 303
    .line 304
    iget-object v11, v4, LN/x;->b:[J

    .line 305
    .line 306
    if-eqz v10, :cond_13

    .line 307
    .line 308
    iget v10, v4, LN/x;->e:I

    .line 309
    .line 310
    aget-wide v13, v11, v10

    .line 311
    .line 312
    sub-long v13, v7, v13

    .line 313
    .line 314
    const-wide/16 v17, 0x28

    .line 315
    .line 316
    cmp-long v10, v13, v17

    .line 317
    .line 318
    if-lez v10, :cond_13

    .line 319
    .line 320
    const/4 v10, 0x0

    .line 321
    iput v10, v4, LN/x;->d:I

    .line 322
    .line 323
    iput v6, v4, LN/x;->c:F

    .line 324
    .line 325
    :cond_13
    iget v10, v4, LN/x;->e:I

    .line 326
    .line 327
    const/4 v13, 0x1

    .line 328
    add-int/2addr v10, v13

    .line 329
    rem-int/2addr v10, v5

    .line 330
    iput v10, v4, LN/x;->e:I

    .line 331
    .line 332
    iget v14, v4, LN/x;->d:I

    .line 333
    .line 334
    if-eq v14, v5, :cond_14

    .line 335
    .line 336
    add-int/2addr v14, v13

    .line 337
    iput v14, v4, LN/x;->d:I

    .line 338
    .line 339
    :cond_14
    const/16 v13, 0x1a

    .line 340
    .line 341
    invoke-virtual {v1, v13}, Landroid/view/MotionEvent;->getAxisValue(I)F

    .line 342
    .line 343
    .line 344
    move-result v1

    .line 345
    iget-object v13, v4, LN/x;->a:[F

    .line 346
    .line 347
    aput v1, v13, v10

    .line 348
    .line 349
    iget v1, v4, LN/x;->e:I

    .line 350
    .line 351
    aput-wide v7, v11, v1

    .line 352
    .line 353
    :cond_15
    :goto_b
    const/16 v1, 0x3e8

    .line 354
    .line 355
    const v4, 0x7f7fffff    # Float.MAX_VALUE

    .line 356
    .line 357
    .line 358
    invoke-virtual {v3, v1, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 359
    .line 360
    .line 361
    sget-object v7, LN/w;->a:Ljava/util/Map;

    .line 362
    .line 363
    invoke-interface {v7, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    .line 365
    .line 366
    move-result-object v7

    .line 367
    check-cast v7, LN/x;

    .line 368
    .line 369
    if-eqz v7, :cond_21

    .line 370
    .line 371
    iget v8, v7, LN/x;->d:I

    .line 372
    .line 373
    const/4 v10, 0x2

    .line 374
    if-ge v8, v10, :cond_16

    .line 375
    .line 376
    :goto_c
    const/4 v5, 0x0

    .line 377
    goto/16 :goto_10

    .line 378
    .line 379
    :cond_16
    iget v11, v7, LN/x;->e:I

    .line 380
    .line 381
    add-int/lit8 v13, v11, 0x14

    .line 382
    .line 383
    const/4 v14, 0x1

    .line 384
    sub-int/2addr v8, v14

    .line 385
    sub-int/2addr v13, v8

    .line 386
    rem-int/2addr v13, v5

    .line 387
    iget-object v8, v7, LN/x;->b:[J

    .line 388
    .line 389
    aget-wide v17, v8, v11

    .line 390
    .line 391
    :goto_d
    aget-wide v19, v8, v13

    .line 392
    .line 393
    sub-long v21, v17, v19

    .line 394
    .line 395
    const-wide/16 v23, 0x64

    .line 396
    .line 397
    cmp-long v11, v21, v23

    .line 398
    .line 399
    if-lez v11, :cond_17

    .line 400
    .line 401
    iget v11, v7, LN/x;->d:I

    .line 402
    .line 403
    const/4 v14, 0x1

    .line 404
    sub-int/2addr v11, v14

    .line 405
    iput v11, v7, LN/x;->d:I

    .line 406
    .line 407
    add-int/lit8 v13, v13, 0x1

    .line 408
    .line 409
    rem-int/2addr v13, v5

    .line 410
    goto :goto_d

    .line 411
    :cond_17
    const/4 v14, 0x1

    .line 412
    iget v11, v7, LN/x;->d:I

    .line 413
    .line 414
    if-ge v11, v10, :cond_18

    .line 415
    .line 416
    goto :goto_c

    .line 417
    :cond_18
    iget-object v9, v7, LN/x;->a:[F

    .line 418
    .line 419
    if-ne v11, v10, :cond_1a

    .line 420
    .line 421
    add-int/2addr v13, v14

    .line 422
    rem-int/2addr v13, v5

    .line 423
    aget-wide v10, v8, v13

    .line 424
    .line 425
    cmp-long v5, v19, v10

    .line 426
    .line 427
    if-nez v5, :cond_19

    .line 428
    .line 429
    goto :goto_c

    .line 430
    :cond_19
    aget v5, v9, v13

    .line 431
    .line 432
    sub-long v10, v10, v19

    .line 433
    .line 434
    long-to-float v8, v10

    .line 435
    div-float/2addr v5, v8

    .line 436
    goto :goto_10

    .line 437
    :cond_1a
    const/4 v10, 0x0

    .line 438
    const/4 v11, 0x0

    .line 439
    const/4 v14, 0x0

    .line 440
    :goto_e
    iget v4, v7, LN/x;->d:I

    .line 441
    .line 442
    const/16 v16, 0x1

    .line 443
    .line 444
    add-int/lit8 v4, v4, -0x1

    .line 445
    .line 446
    const/high16 v17, 0x40000000    # 2.0f

    .line 447
    .line 448
    const/high16 v18, 0x3f800000    # 1.0f

    .line 449
    .line 450
    const/high16 v19, -0x40800000    # -1.0f

    .line 451
    .line 452
    if-ge v10, v4, :cond_1e

    .line 453
    .line 454
    add-int v4, v10, v13

    .line 455
    .line 456
    rem-int/lit8 v20, v4, 0x14

    .line 457
    .line 458
    aget-wide v20, v8, v20

    .line 459
    .line 460
    add-int/lit8 v4, v4, 0x1

    .line 461
    .line 462
    rem-int/2addr v4, v5

    .line 463
    aget-wide v22, v8, v4

    .line 464
    .line 465
    cmp-long v24, v22, v20

    .line 466
    .line 467
    if-nez v24, :cond_1b

    .line 468
    .line 469
    goto :goto_f

    .line 470
    :cond_1b
    add-int/lit8 v11, v11, 0x1

    .line 471
    .line 472
    cmpg-float v22, v14, v6

    .line 473
    .line 474
    if-gez v22, :cond_1c

    .line 475
    .line 476
    const/high16 v18, -0x40800000    # -1.0f

    .line 477
    .line 478
    :cond_1c
    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    .line 479
    .line 480
    .line 481
    move-result v19

    .line 482
    mul-float v5, v19, v17

    .line 483
    .line 484
    float-to-double v1, v5

    .line 485
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    .line 486
    .line 487
    .line 488
    move-result-wide v1

    .line 489
    double-to-float v1, v1

    .line 490
    mul-float v18, v18, v1

    .line 491
    .line 492
    aget v1, v9, v4

    .line 493
    .line 494
    aget-wide v4, v8, v4

    .line 495
    .line 496
    sub-long v4, v4, v20

    .line 497
    .line 498
    long-to-float v2, v4

    .line 499
    div-float/2addr v1, v2

    .line 500
    sub-float v2, v1, v18

    .line 501
    .line 502
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 503
    .line 504
    .line 505
    move-result v1

    .line 506
    mul-float v1, v1, v2

    .line 507
    .line 508
    add-float/2addr v14, v1

    .line 509
    const/4 v1, 0x1

    .line 510
    if-ne v11, v1, :cond_1d

    .line 511
    .line 512
    const/high16 v1, 0x3f000000    # 0.5f

    .line 513
    .line 514
    mul-float v14, v14, v1

    .line 515
    .line 516
    :cond_1d
    :goto_f
    add-int/lit8 v10, v10, 0x1

    .line 517
    .line 518
    move/from16 v2, p2

    .line 519
    .line 520
    const/16 v1, 0x3e8

    .line 521
    .line 522
    const/16 v5, 0x14

    .line 523
    .line 524
    goto :goto_e

    .line 525
    :cond_1e
    cmpg-float v1, v14, v6

    .line 526
    .line 527
    if-gez v1, :cond_1f

    .line 528
    .line 529
    const/high16 v18, -0x40800000    # -1.0f

    .line 530
    .line 531
    :cond_1f
    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    .line 532
    .line 533
    .line 534
    move-result v1

    .line 535
    mul-float v1, v1, v17

    .line 536
    .line 537
    float-to-double v1, v1

    .line 538
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    .line 539
    .line 540
    .line 541
    move-result-wide v1

    .line 542
    double-to-float v1, v1

    .line 543
    mul-float v5, v18, v1

    .line 544
    .line 545
    const/16 v1, 0x3e8

    .line 546
    .line 547
    :goto_10
    int-to-float v1, v1

    .line 548
    mul-float v5, v5, v1

    .line 549
    .line 550
    iput v5, v7, LN/x;->c:F

    .line 551
    .line 552
    const v1, 0x7f7fffff    # Float.MAX_VALUE

    .line 553
    .line 554
    .line 555
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 556
    .line 557
    .line 558
    move-result v2

    .line 559
    neg-float v2, v2

    .line 560
    cmpg-float v2, v5, v2

    .line 561
    .line 562
    if-gez v2, :cond_20

    .line 563
    .line 564
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 565
    .line 566
    .line 567
    move-result v1

    .line 568
    neg-float v1, v1

    .line 569
    iput v1, v7, LN/x;->c:F

    .line 570
    .line 571
    goto :goto_11

    .line 572
    :cond_20
    iget v2, v7, LN/x;->c:F

    .line 573
    .line 574
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 575
    .line 576
    .line 577
    move-result v4

    .line 578
    cmpl-float v2, v2, v4

    .line 579
    .line 580
    if-lez v2, :cond_21

    .line 581
    .line 582
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 583
    .line 584
    .line 585
    move-result v1

    .line 586
    iput v1, v7, LN/x;->c:F

    .line 587
    .line 588
    :cond_21
    :goto_11
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 589
    .line 590
    const/16 v2, 0x22

    .line 591
    .line 592
    if-lt v1, v2, :cond_22

    .line 593
    .line 594
    move/from16 v1, p2

    .line 595
    .line 596
    invoke-static {v3, v1}, Le7/a;->c(Landroid/view/VelocityTracker;I)F

    .line 597
    .line 598
    .line 599
    move-result v1

    .line 600
    goto :goto_13

    .line 601
    :cond_22
    move/from16 v1, p2

    .line 602
    .line 603
    if-nez v1, :cond_23

    .line 604
    .line 605
    invoke-virtual {v3}, Landroid/view/VelocityTracker;->getXVelocity()F

    .line 606
    .line 607
    .line 608
    move-result v1

    .line 609
    goto :goto_13

    .line 610
    :cond_23
    const/4 v2, 0x1

    .line 611
    if-ne v1, v2, :cond_24

    .line 612
    .line 613
    invoke-virtual {v3}, Landroid/view/VelocityTracker;->getYVelocity()F

    .line 614
    .line 615
    .line 616
    move-result v1

    .line 617
    goto :goto_13

    .line 618
    :cond_24
    sget-object v2, LN/w;->a:Ljava/util/Map;

    .line 619
    .line 620
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 621
    .line 622
    .line 623
    move-result-object v2

    .line 624
    check-cast v2, LN/x;

    .line 625
    .line 626
    if-eqz v2, :cond_26

    .line 627
    .line 628
    const/16 v3, 0x1a

    .line 629
    .line 630
    if-eq v1, v3, :cond_25

    .line 631
    .line 632
    goto :goto_12

    .line 633
    :cond_25
    iget v1, v2, LN/x;->c:F

    .line 634
    .line 635
    goto :goto_13

    .line 636
    :cond_26
    :goto_12
    const/4 v1, 0x0

    .line 637
    :goto_13
    iget-object v2, v0, LN/j;->b:LN/k;

    .line 638
    .line 639
    invoke-interface {v2}, LN/k;->B()F

    .line 640
    .line 641
    .line 642
    move-result v3

    .line 643
    mul-float v3, v3, v1

    .line 644
    .line 645
    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    .line 646
    .line 647
    .line 648
    move-result v1

    .line 649
    if-nez v15, :cond_27

    .line 650
    .line 651
    iget v4, v0, LN/j;->f:F

    .line 652
    .line 653
    invoke-static {v4}, Ljava/lang/Math;->signum(F)F

    .line 654
    .line 655
    .line 656
    move-result v4

    .line 657
    cmpl-float v4, v1, v4

    .line 658
    .line 659
    if-eqz v4, :cond_28

    .line 660
    .line 661
    cmpl-float v1, v1, v6

    .line 662
    .line 663
    if-eqz v1, :cond_28

    .line 664
    .line 665
    :cond_27
    invoke-interface {v2}, LN/k;->E()V

    .line 666
    .line 667
    .line 668
    :cond_28
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    .line 669
    .line 670
    .line 671
    move-result v1

    .line 672
    const/4 v4, 0x0

    .line 673
    aget v4, v12, v4

    .line 674
    .line 675
    int-to-float v4, v4

    .line 676
    cmpg-float v1, v1, v4

    .line 677
    .line 678
    if-gez v1, :cond_29

    .line 679
    .line 680
    return-void

    .line 681
    :cond_29
    const/4 v1, 0x1

    .line 682
    aget v1, v12, v1

    .line 683
    .line 684
    neg-int v4, v1

    .line 685
    int-to-float v4, v4

    .line 686
    int-to-float v1, v1

    .line 687
    invoke-static {v3, v1}, Ljava/lang/Math;->min(FF)F

    .line 688
    .line 689
    .line 690
    move-result v1

    .line 691
    invoke-static {v4, v1}, Ljava/lang/Math;->max(FF)F

    .line 692
    .line 693
    .line 694
    move-result v1

    .line 695
    invoke-interface {v2, v1}, LN/k;->u(F)Z

    .line 696
    .line 697
    .line 698
    move-result v2

    .line 699
    if-eqz v2, :cond_2a

    .line 700
    .line 701
    move v6, v1

    .line 702
    :cond_2a
    iput v6, v0, LN/j;->f:F

    .line 703
    .line 704
    return-void
.end method
