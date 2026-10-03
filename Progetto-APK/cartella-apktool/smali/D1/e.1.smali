.class public final LD1/e;
.super Landroid/view/View;
.source "SourceFile"

# interfaces
.implements LD1/O;


# static fields
.field public static final synthetic y0:I


# instance fields
.field public final G:Landroid/graphics/Rect;

.field public final H:Landroid/graphics/Rect;

.field public final I:Landroid/graphics/Rect;

.field public final J:Landroid/graphics/Rect;

.field public final K:Landroid/graphics/Paint;

.field public final L:Landroid/graphics/Paint;

.field public final M:Landroid/graphics/Paint;

.field public final N:Landroid/graphics/Paint;

.field public final O:Landroid/graphics/Paint;

.field public final P:Landroid/graphics/Paint;

.field public final Q:Landroid/graphics/drawable/Drawable;

.field public final R:I

.field public final S:I

.field public final T:I

.field public final U:I

.field public final V:I

.field public final W:I

.field public final a0:I

.field public final b0:I

.field public final c0:I

.field public final d0:Ljava/lang/StringBuilder;

.field public final e0:Ljava/util/Formatter;

.field public final f0:La/b;

.field public final g0:Ljava/util/concurrent/CopyOnWriteArraySet;

.field public final h0:Landroid/graphics/Point;

.field public final i0:F

.field public j0:I

.field public k0:J

.field public l0:I

.field public m0:Landroid/graphics/Rect;

.field public final n0:Landroid/animation/ValueAnimator;

.field public o0:F

.field public p0:Z

.field public q0:Z

.field public r0:J

.field public s0:J

.field public t0:J

.field public u0:J

.field public v0:I

.field public w0:[J

.field public x0:[Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p2

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x0

    .line 7
    move-object/from16 v4, p1

    .line 8
    .line 9
    invoke-direct {v1, v4, v2, v3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 10
    .line 11
    .line 12
    new-instance v5, Landroid/graphics/Rect;

    .line 13
    .line 14
    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object v5, v1, LD1/e;->G:Landroid/graphics/Rect;

    .line 18
    .line 19
    new-instance v5, Landroid/graphics/Rect;

    .line 20
    .line 21
    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object v5, v1, LD1/e;->H:Landroid/graphics/Rect;

    .line 25
    .line 26
    new-instance v5, Landroid/graphics/Rect;

    .line 27
    .line 28
    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 29
    .line 30
    .line 31
    iput-object v5, v1, LD1/e;->I:Landroid/graphics/Rect;

    .line 32
    .line 33
    new-instance v5, Landroid/graphics/Rect;

    .line 34
    .line 35
    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 36
    .line 37
    .line 38
    iput-object v5, v1, LD1/e;->J:Landroid/graphics/Rect;

    .line 39
    .line 40
    new-instance v5, Landroid/graphics/Paint;

    .line 41
    .line 42
    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 43
    .line 44
    .line 45
    iput-object v5, v1, LD1/e;->K:Landroid/graphics/Paint;

    .line 46
    .line 47
    new-instance v6, Landroid/graphics/Paint;

    .line 48
    .line 49
    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    .line 50
    .line 51
    .line 52
    iput-object v6, v1, LD1/e;->L:Landroid/graphics/Paint;

    .line 53
    .line 54
    new-instance v7, Landroid/graphics/Paint;

    .line 55
    .line 56
    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    .line 57
    .line 58
    .line 59
    iput-object v7, v1, LD1/e;->M:Landroid/graphics/Paint;

    .line 60
    .line 61
    new-instance v8, Landroid/graphics/Paint;

    .line 62
    .line 63
    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    .line 64
    .line 65
    .line 66
    iput-object v8, v1, LD1/e;->N:Landroid/graphics/Paint;

    .line 67
    .line 68
    new-instance v9, Landroid/graphics/Paint;

    .line 69
    .line 70
    invoke-direct {v9}, Landroid/graphics/Paint;-><init>()V

    .line 71
    .line 72
    .line 73
    iput-object v9, v1, LD1/e;->O:Landroid/graphics/Paint;

    .line 74
    .line 75
    new-instance v10, Landroid/graphics/Paint;

    .line 76
    .line 77
    invoke-direct {v10}, Landroid/graphics/Paint;-><init>()V

    .line 78
    .line 79
    .line 80
    iput-object v10, v1, LD1/e;->P:Landroid/graphics/Paint;

    .line 81
    .line 82
    const/4 v11, 0x1

    .line 83
    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 84
    .line 85
    .line 86
    new-instance v12, Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 87
    .line 88
    invoke-direct {v12}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    .line 89
    .line 90
    .line 91
    iput-object v12, v1, LD1/e;->g0:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 92
    .line 93
    new-instance v12, Landroid/graphics/Point;

    .line 94
    .line 95
    invoke-direct {v12}, Landroid/graphics/Point;-><init>()V

    .line 96
    .line 97
    .line 98
    iput-object v12, v1, LD1/e;->h0:Landroid/graphics/Point;

    .line 99
    .line 100
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 101
    .line 102
    .line 103
    move-result-object v12

    .line 104
    invoke-virtual {v12}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 105
    .line 106
    .line 107
    move-result-object v12

    .line 108
    iget v12, v12, Landroid/util/DisplayMetrics;->density:F

    .line 109
    .line 110
    iput v12, v1, LD1/e;->i0:F

    .line 111
    .line 112
    const/16 v13, -0x32

    .line 113
    .line 114
    invoke-static {v13, v12}, LD1/e;->a(IF)I

    .line 115
    .line 116
    .line 117
    move-result v13

    .line 118
    iput v13, v1, LD1/e;->c0:I

    .line 119
    .line 120
    const/4 v13, 0x4

    .line 121
    invoke-static {v13, v12}, LD1/e;->a(IF)I

    .line 122
    .line 123
    .line 124
    move-result v14

    .line 125
    const/16 v15, 0x1a

    .line 126
    .line 127
    invoke-static {v15, v12}, LD1/e;->a(IF)I

    .line 128
    .line 129
    .line 130
    move-result v15

    .line 131
    invoke-static {v13, v12}, LD1/e;->a(IF)I

    .line 132
    .line 133
    .line 134
    move-result v2

    .line 135
    const/16 v13, 0xc

    .line 136
    .line 137
    invoke-static {v13, v12}, LD1/e;->a(IF)I

    .line 138
    .line 139
    .line 140
    move-result v11

    .line 141
    invoke-static {v3, v12}, LD1/e;->a(IF)I

    .line 142
    .line 143
    .line 144
    move-result v13

    .line 145
    const/16 v3, 0x10

    .line 146
    .line 147
    invoke-static {v3, v12}, LD1/e;->a(IF)I

    .line 148
    .line 149
    .line 150
    move-result v3

    .line 151
    if-eqz v0, :cond_2

    .line 152
    .line 153
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 154
    .line 155
    .line 156
    move-result-object v4

    .line 157
    sget-object v12, LD1/I;->b:[I

    .line 158
    .line 159
    move-object/from16 v16, v9

    .line 160
    .line 161
    const v9, 0x7f1400e8

    .line 162
    .line 163
    .line 164
    move-object/from16 v17, v8

    .line 165
    .line 166
    const/4 v8, 0x0

    .line 167
    invoke-virtual {v4, v0, v12, v8, v9}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 168
    .line 169
    .line 170
    move-result-object v4

    .line 171
    const/16 v0, 0xa

    .line 172
    .line 173
    :try_start_0
    invoke-virtual {v4, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    iput-object v0, v1, LD1/e;->Q:Landroid/graphics/drawable/Drawable;

    .line 178
    .line 179
    if-eqz v0, :cond_1

    .line 180
    .line 181
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 182
    .line 183
    const/16 v9, 0x17

    .line 184
    .line 185
    if-lt v8, v9, :cond_0

    .line 186
    .line 187
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getLayoutDirection()I

    .line 188
    .line 189
    .line 190
    move-result v12

    .line 191
    if-lt v8, v9, :cond_0

    .line 192
    .line 193
    invoke-static {v0, v12}, LB0/q;->x(Landroid/graphics/drawable/Drawable;I)Z

    .line 194
    .line 195
    .line 196
    move-result v8

    .line 197
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    .line 198
    .line 199
    .line 200
    move-result v0

    .line 201
    invoke-static {v0, v15}, Ljava/lang/Math;->max(II)I

    .line 202
    .line 203
    .line 204
    move-result v15

    .line 205
    goto :goto_0

    .line 206
    :catchall_0
    move-exception v0

    .line 207
    goto/16 :goto_1

    .line 208
    .line 209
    :cond_1
    :goto_0
    const/4 v0, 0x3

    .line 210
    invoke-virtual {v4, v0, v14}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 211
    .line 212
    .line 213
    move-result v0

    .line 214
    iput v0, v1, LD1/e;->R:I

    .line 215
    .line 216
    const/16 v0, 0xc

    .line 217
    .line 218
    invoke-virtual {v4, v0, v15}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 219
    .line 220
    .line 221
    move-result v0

    .line 222
    iput v0, v1, LD1/e;->S:I

    .line 223
    .line 224
    const/4 v0, 0x0

    .line 225
    const/4 v8, 0x2

    .line 226
    invoke-virtual {v4, v8, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 227
    .line 228
    .line 229
    move-result v9

    .line 230
    iput v9, v1, LD1/e;->T:I

    .line 231
    .line 232
    const/4 v0, 0x1

    .line 233
    invoke-virtual {v4, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 234
    .line 235
    .line 236
    move-result v2

    .line 237
    iput v2, v1, LD1/e;->U:I

    .line 238
    .line 239
    const/16 v0, 0xb

    .line 240
    .line 241
    invoke-virtual {v4, v0, v11}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 242
    .line 243
    .line 244
    move-result v0

    .line 245
    iput v0, v1, LD1/e;->V:I

    .line 246
    .line 247
    const/16 v0, 0x8

    .line 248
    .line 249
    invoke-virtual {v4, v0, v13}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 250
    .line 251
    .line 252
    move-result v0

    .line 253
    iput v0, v1, LD1/e;->W:I

    .line 254
    .line 255
    const/16 v0, 0x9

    .line 256
    .line 257
    invoke-virtual {v4, v0, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 258
    .line 259
    .line 260
    move-result v0

    .line 261
    iput v0, v1, LD1/e;->a0:I

    .line 262
    .line 263
    const/4 v0, 0x6

    .line 264
    const/4 v2, -0x1

    .line 265
    invoke-virtual {v4, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 266
    .line 267
    .line 268
    move-result v0

    .line 269
    const/4 v3, 0x7

    .line 270
    invoke-virtual {v4, v3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 271
    .line 272
    .line 273
    move-result v2

    .line 274
    const/4 v3, 0x4

    .line 275
    const v8, -0x33000001    # -1.3421772E8f

    .line 276
    .line 277
    .line 278
    invoke-virtual {v4, v3, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 279
    .line 280
    .line 281
    move-result v8

    .line 282
    const/16 v3, 0xd

    .line 283
    .line 284
    const v9, 0x33ffffff

    .line 285
    .line 286
    .line 287
    invoke-virtual {v4, v3, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 288
    .line 289
    .line 290
    move-result v3

    .line 291
    const/4 v9, 0x0

    .line 292
    const v11, -0x4d000100

    .line 293
    .line 294
    .line 295
    invoke-virtual {v4, v9, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 296
    .line 297
    .line 298
    move-result v9

    .line 299
    const/4 v11, 0x5

    .line 300
    const v12, 0x33ffff00

    .line 301
    .line 302
    .line 303
    invoke-virtual {v4, v11, v12}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 304
    .line 305
    .line 306
    move-result v11

    .line 307
    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 308
    .line 309
    .line 310
    invoke-virtual {v10, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 311
    .line 312
    .line 313
    invoke-virtual {v6, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 314
    .line 315
    .line 316
    invoke-virtual {v7, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 317
    .line 318
    .line 319
    move-object/from16 v0, v17

    .line 320
    .line 321
    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 322
    .line 323
    .line 324
    move-object/from16 v8, v16

    .line 325
    .line 326
    invoke-virtual {v8, v11}, Landroid/graphics/Paint;->setColor(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 327
    .line 328
    .line 329
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 330
    .line 331
    .line 332
    goto :goto_2

    .line 333
    :goto_1
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 334
    .line 335
    .line 336
    throw v0

    .line 337
    :cond_2
    move-object v0, v8

    .line 338
    move-object v8, v9

    .line 339
    iput v14, v1, LD1/e;->R:I

    .line 340
    .line 341
    iput v15, v1, LD1/e;->S:I

    .line 342
    .line 343
    const/4 v4, 0x0

    .line 344
    iput v4, v1, LD1/e;->T:I

    .line 345
    .line 346
    iput v2, v1, LD1/e;->U:I

    .line 347
    .line 348
    iput v11, v1, LD1/e;->V:I

    .line 349
    .line 350
    iput v13, v1, LD1/e;->W:I

    .line 351
    .line 352
    iput v3, v1, LD1/e;->a0:I

    .line 353
    .line 354
    const/4 v2, -0x1

    .line 355
    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 356
    .line 357
    .line 358
    invoke-virtual {v10, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 359
    .line 360
    .line 361
    const v2, -0x33000001    # -1.3421772E8f

    .line 362
    .line 363
    .line 364
    invoke-virtual {v6, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 365
    .line 366
    .line 367
    const v2, 0x33ffffff

    .line 368
    .line 369
    .line 370
    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 371
    .line 372
    .line 373
    const v2, -0x4d000100

    .line 374
    .line 375
    .line 376
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 377
    .line 378
    .line 379
    const v0, 0x33ffff00

    .line 380
    .line 381
    .line 382
    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 383
    .line 384
    .line 385
    const/4 v0, 0x0

    .line 386
    iput-object v0, v1, LD1/e;->Q:Landroid/graphics/drawable/Drawable;

    .line 387
    .line 388
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 389
    .line 390
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 391
    .line 392
    .line 393
    iput-object v0, v1, LD1/e;->d0:Ljava/lang/StringBuilder;

    .line 394
    .line 395
    new-instance v2, Ljava/util/Formatter;

    .line 396
    .line 397
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 398
    .line 399
    .line 400
    move-result-object v3

    .line 401
    invoke-direct {v2, v0, v3}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    .line 402
    .line 403
    .line 404
    iput-object v2, v1, LD1/e;->e0:Ljava/util/Formatter;

    .line 405
    .line 406
    new-instance v0, La/b;

    .line 407
    .line 408
    const/16 v2, 0x16

    .line 409
    .line 410
    invoke-direct {v0, v1, v2}, La/b;-><init>(Ljava/lang/Object;I)V

    .line 411
    .line 412
    .line 413
    iput-object v0, v1, LD1/e;->f0:La/b;

    .line 414
    .line 415
    iget-object v0, v1, LD1/e;->Q:Landroid/graphics/drawable/Drawable;

    .line 416
    .line 417
    if-eqz v0, :cond_3

    .line 418
    .line 419
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    .line 420
    .line 421
    .line 422
    move-result v0

    .line 423
    const/4 v2, 0x1

    .line 424
    add-int/2addr v0, v2

    .line 425
    const/4 v3, 0x2

    .line 426
    div-int/2addr v0, v3

    .line 427
    iput v0, v1, LD1/e;->b0:I

    .line 428
    .line 429
    goto :goto_3

    .line 430
    :cond_3
    const/4 v2, 0x1

    .line 431
    const/4 v3, 0x2

    .line 432
    iget v0, v1, LD1/e;->W:I

    .line 433
    .line 434
    iget v4, v1, LD1/e;->V:I

    .line 435
    .line 436
    iget v5, v1, LD1/e;->a0:I

    .line 437
    .line 438
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    .line 439
    .line 440
    .line 441
    move-result v4

    .line 442
    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    .line 443
    .line 444
    .line 445
    move-result v0

    .line 446
    add-int/2addr v0, v2

    .line 447
    div-int/2addr v0, v3

    .line 448
    iput v0, v1, LD1/e;->b0:I

    .line 449
    .line 450
    :goto_3
    const/high16 v0, 0x3f800000    # 1.0f

    .line 451
    .line 452
    iput v0, v1, LD1/e;->o0:F

    .line 453
    .line 454
    new-instance v0, Landroid/animation/ValueAnimator;

    .line 455
    .line 456
    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    .line 457
    .line 458
    .line 459
    iput-object v0, v1, LD1/e;->n0:Landroid/animation/ValueAnimator;

    .line 460
    .line 461
    new-instance v2, LD1/x;

    .line 462
    .line 463
    const/4 v3, 0x4

    .line 464
    invoke-direct {v2, v1, v3}, LD1/x;-><init>(Ljava/lang/Object;I)V

    .line 465
    .line 466
    .line 467
    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 468
    .line 469
    .line 470
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 471
    .line 472
    .line 473
    .line 474
    .line 475
    iput-wide v2, v1, LD1/e;->s0:J

    .line 476
    .line 477
    iput-wide v2, v1, LD1/e;->k0:J

    .line 478
    .line 479
    const/16 v0, 0x14

    .line 480
    .line 481
    iput v0, v1, LD1/e;->j0:I

    .line 482
    .line 483
    const/4 v0, 0x1

    .line 484
    invoke-virtual {v1, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 485
    .line 486
    .line 487
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getImportantForAccessibility()I

    .line 488
    .line 489
    .line 490
    move-result v2

    .line 491
    if-nez v2, :cond_4

    .line 492
    .line 493
    invoke-virtual {v1, v0}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 494
    .line 495
    .line 496
    :cond_4
    return-void
.end method

.method public static a(IF)I
    .locals 0

    .line 1
    int-to-float p0, p0

    .line 2
    mul-float p0, p0, p1

    .line 3
    .line 4
    const/high16 p1, 0x3f000000    # 0.5f

    .line 5
    .line 6
    add-float/2addr p0, p1

    .line 7
    float-to-int p0, p0

    .line 8
    return p0
.end method

.method private getPositionIncrement()J
    .locals 5

    .line 1
    iget-wide v0, p0, LD1/e;->k0:J

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
    if-nez v4, :cond_1

    .line 11
    .line 12
    iget-wide v0, p0, LD1/e;->s0:J

    .line 13
    .line 14
    cmp-long v4, v0, v2

    .line 15
    .line 16
    if-nez v4, :cond_0

    .line 17
    .line 18
    const-wide/16 v0, 0x0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget v2, p0, LD1/e;->j0:I

    .line 22
    .line 23
    int-to-long v2, v2

    .line 24
    div-long/2addr v0, v2

    .line 25
    :cond_1
    :goto_0
    return-wide v0
.end method

.method private getProgressText()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, LD1/e;->e0:Ljava/util/Formatter;

    .line 2
    .line 3
    iget-wide v1, p0, LD1/e;->t0:J

    .line 4
    .line 5
    iget-object v3, p0, LD1/e;->d0:Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-static {v3, v0, v1, v2}, Lp0/M;->D(Ljava/lang/StringBuilder;Ljava/util/Formatter;J)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method private getScrubberPosition()J
    .locals 6

    .line 1
    iget-object v0, p0, LD1/e;->H:Landroid/graphics/Rect;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-lez v1, :cond_1

    .line 8
    .line 9
    iget-wide v1, p0, LD1/e;->s0:J

    .line 10
    .line 11
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    cmp-long v5, v1, v3

    .line 17
    .line 18
    if-nez v5, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget-object v1, p0, LD1/e;->J:Landroid/graphics/Rect;

    .line 22
    .line 23
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    int-to-long v1, v1

    .line 28
    iget-wide v3, p0, LD1/e;->s0:J

    .line 29
    .line 30
    mul-long v1, v1, v3

    .line 31
    .line 32
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    int-to-long v3, v0

    .line 37
    div-long/2addr v1, v3

    .line 38
    return-wide v1

    .line 39
    :cond_1
    :goto_0
    const-wide/16 v0, 0x0

    .line 40
    .line 41
    return-wide v0
.end method


# virtual methods
.method public final b(J)Z
    .locals 9

    .line 1
    iget-wide v4, p0, LD1/e;->s0:J

    .line 2
    .line 3
    const-wide/16 v0, 0x0

    .line 4
    .line 5
    const/4 v6, 0x0

    .line 6
    cmp-long v2, v4, v0

    .line 7
    .line 8
    if-gtz v2, :cond_0

    .line 9
    .line 10
    return v6

    .line 11
    :cond_0
    iget-boolean v0, p0, LD1/e;->q0:Z

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    iget-wide v0, p0, LD1/e;->r0:J

    .line 16
    .line 17
    :goto_0
    move-wide v7, v0

    .line 18
    goto :goto_1

    .line 19
    :cond_1
    iget-wide v0, p0, LD1/e;->t0:J

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :goto_1
    add-long v0, v7, p1

    .line 23
    .line 24
    const-wide/16 v2, 0x0

    .line 25
    .line 26
    invoke-static/range {v0 .. v5}, Lp0/M;->j(JJJ)J

    .line 27
    .line 28
    .line 29
    move-result-wide p1

    .line 30
    cmp-long v0, p1, v7

    .line 31
    .line 32
    if-nez v0, :cond_2

    .line 33
    .line 34
    return v6

    .line 35
    :cond_2
    iget-boolean v0, p0, LD1/e;->q0:Z

    .line 36
    .line 37
    if-nez v0, :cond_3

    .line 38
    .line 39
    invoke-virtual {p0, p1, p2}, LD1/e;->c(J)V

    .line 40
    .line 41
    .line 42
    goto :goto_2

    .line 43
    :cond_3
    invoke-virtual {p0, p1, p2}, LD1/e;->f(J)V

    .line 44
    .line 45
    .line 46
    :goto_2
    invoke-virtual {p0}, LD1/e;->e()V

    .line 47
    .line 48
    .line 49
    const/4 p1, 0x1

    .line 50
    return p1
.end method

.method public final c(J)V
    .locals 7

    .line 1
    iput-wide p1, p0, LD1/e;->r0:J

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, LD1/e;->q0:Z

    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroid/view/View;->setPressed(Z)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-interface {v1, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 16
    .line 17
    .line 18
    :cond_0
    iget-object v1, p0, LD1/e;->g0:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-eqz v2, :cond_5

    .line 29
    .line 30
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    check-cast v2, LD1/k;

    .line 35
    .line 36
    iget-object v2, v2, LD1/k;->G:LD1/v;

    .line 37
    .line 38
    iput-boolean v0, v2, LD1/v;->c1:Z

    .line 39
    .line 40
    iget-object v3, v2, LD1/v;->s0:Landroid/widget/TextView;

    .line 41
    .line 42
    if-eqz v3, :cond_2

    .line 43
    .line 44
    iget-object v4, v2, LD1/v;->u0:Ljava/lang/StringBuilder;

    .line 45
    .line 46
    iget-object v5, v2, LD1/v;->v0:Ljava/util/Formatter;

    .line 47
    .line 48
    invoke-static {v4, v5, p1, p2}, Lp0/M;->D(Ljava/lang/StringBuilder;Ljava/util/Formatter;J)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    .line 54
    .line 55
    :cond_2
    iget-object v3, v2, LD1/v;->G:LD1/B;

    .line 56
    .line 57
    invoke-virtual {v3}, LD1/B;->g()V

    .line 58
    .line 59
    .line 60
    iget-object v3, v2, LD1/v;->V0:Lm0/Y;

    .line 61
    .line 62
    if-eqz v3, :cond_1

    .line 63
    .line 64
    iget-boolean v4, v2, LD1/v;->e1:Z

    .line 65
    .line 66
    if-eqz v4, :cond_1

    .line 67
    .line 68
    invoke-virtual {v2, v3}, LD1/v;->i(Lm0/Y;)Z

    .line 69
    .line 70
    .line 71
    move-result v3

    .line 72
    const/4 v4, 0x0

    .line 73
    if-eqz v3, :cond_3

    .line 74
    .line 75
    :try_start_0
    iget-object v3, v2, LD1/v;->K:Ljava/lang/reflect/Method;

    .line 76
    .line 77
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 78
    .line 79
    .line 80
    iget-object v2, v2, LD1/v;->V0:Lm0/Y;

    .line 81
    .line 82
    new-array v5, v0, [Ljava/lang/Object;

    .line 83
    .line 84
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 85
    .line 86
    aput-object v6, v5, v4

    .line 87
    .line 88
    invoke-virtual {v3, v2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    .line 90
    .line 91
    goto :goto_0

    .line 92
    :catch_0
    move-exception p1

    .line 93
    goto :goto_1

    .line 94
    :catch_1
    move-exception p1

    .line 95
    :goto_1
    new-instance p2, Ljava/lang/RuntimeException;

    .line 96
    .line 97
    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 98
    .line 99
    .line 100
    throw p2

    .line 101
    :cond_3
    iget-object v3, v2, LD1/v;->V0:Lm0/Y;

    .line 102
    .line 103
    invoke-virtual {v2, v3}, LD1/v;->h(Lm0/Y;)Z

    .line 104
    .line 105
    .line 106
    move-result v3

    .line 107
    if-eqz v3, :cond_4

    .line 108
    .line 109
    :try_start_1
    iget-object v3, v2, LD1/v;->N:Ljava/lang/reflect/Method;

    .line 110
    .line 111
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 112
    .line 113
    .line 114
    iget-object v2, v2, LD1/v;->V0:Lm0/Y;

    .line 115
    .line 116
    new-array v5, v0, [Ljava/lang/Object;

    .line 117
    .line 118
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 119
    .line 120
    aput-object v6, v5, v4

    .line 121
    .line 122
    invoke-virtual {v3, v2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_2

    .line 123
    .line 124
    .line 125
    goto :goto_0

    .line 126
    :catch_2
    move-exception p1

    .line 127
    goto :goto_2

    .line 128
    :catch_3
    move-exception p1

    .line 129
    :goto_2
    new-instance p2, Ljava/lang/RuntimeException;

    .line 130
    .line 131
    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 132
    .line 133
    .line 134
    throw p2

    .line 135
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    .line 136
    .line 137
    const-string v4, "Time bar scrubbing is enabled, but player is not an ExoPlayer or CompositionPlayer instance, so ignoring (because we can\'t enable scrubbing mode). player.class="

    .line 138
    .line 139
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    iget-object v2, v2, LD1/v;->V0:Lm0/Y;

    .line 143
    .line 144
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 148
    .line 149
    .line 150
    move-result-object v2

    .line 151
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v2

    .line 158
    const-string v3, "PlayerControlView"

    .line 159
    .line 160
    invoke-static {v3, v2}, Lp0/x;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    goto/16 :goto_0

    .line 164
    .line 165
    :cond_5
    return-void
.end method

.method public final d(Z)V
    .locals 7

    .line 1
    iget-object v0, p0, LD1/e;->f0:La/b;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, LD1/e;->q0:Z

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroid/view/View;->setPressed(Z)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    invoke-interface {v1, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 22
    .line 23
    .line 24
    iget-object v1, p0, LD1/e;->g0:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-eqz v2, :cond_4

    .line 35
    .line 36
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    check-cast v2, LD1/k;

    .line 41
    .line 42
    iget-wide v3, p0, LD1/e;->r0:J

    .line 43
    .line 44
    iget-object v2, v2, LD1/k;->G:LD1/v;

    .line 45
    .line 46
    iput-boolean v0, v2, LD1/v;->c1:Z

    .line 47
    .line 48
    iget-object v5, v2, LD1/v;->V0:Lm0/Y;

    .line 49
    .line 50
    if-eqz v5, :cond_3

    .line 51
    .line 52
    if-nez p1, :cond_1

    .line 53
    .line 54
    invoke-static {v2, v5, v3, v4}, LD1/v;->a(LD1/v;Lm0/Y;J)V

    .line 55
    .line 56
    .line 57
    :cond_1
    iget-object v3, v2, LD1/v;->V0:Lm0/Y;

    .line 58
    .line 59
    invoke-virtual {v2, v3}, LD1/v;->i(Lm0/Y;)Z

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    const/4 v4, 0x1

    .line 64
    if-eqz v3, :cond_2

    .line 65
    .line 66
    :try_start_0
    iget-object v3, v2, LD1/v;->K:Ljava/lang/reflect/Method;

    .line 67
    .line 68
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 69
    .line 70
    .line 71
    iget-object v5, v2, LD1/v;->V0:Lm0/Y;

    .line 72
    .line 73
    new-array v4, v4, [Ljava/lang/Object;

    .line 74
    .line 75
    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 76
    .line 77
    aput-object v6, v4, v0

    .line 78
    .line 79
    invoke-virtual {v3, v5, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    .line 81
    .line 82
    goto :goto_3

    .line 83
    :catch_0
    move-exception p1

    .line 84
    goto :goto_1

    .line 85
    :catch_1
    move-exception p1

    .line 86
    :goto_1
    new-instance v0, Ljava/lang/RuntimeException;

    .line 87
    .line 88
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 89
    .line 90
    .line 91
    throw v0

    .line 92
    :cond_2
    iget-object v3, v2, LD1/v;->V0:Lm0/Y;

    .line 93
    .line 94
    invoke-virtual {v2, v3}, LD1/v;->h(Lm0/Y;)Z

    .line 95
    .line 96
    .line 97
    move-result v3

    .line 98
    if-eqz v3, :cond_3

    .line 99
    .line 100
    :try_start_1
    iget-object v3, v2, LD1/v;->N:Ljava/lang/reflect/Method;

    .line 101
    .line 102
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 103
    .line 104
    .line 105
    iget-object v5, v2, LD1/v;->V0:Lm0/Y;

    .line 106
    .line 107
    new-array v4, v4, [Ljava/lang/Object;

    .line 108
    .line 109
    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 110
    .line 111
    aput-object v6, v4, v0

    .line 112
    .line 113
    invoke-virtual {v3, v5, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_2

    .line 114
    .line 115
    .line 116
    goto :goto_3

    .line 117
    :catch_2
    move-exception p1

    .line 118
    goto :goto_2

    .line 119
    :catch_3
    move-exception p1

    .line 120
    :goto_2
    new-instance v0, Ljava/lang/RuntimeException;

    .line 121
    .line 122
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 123
    .line 124
    .line 125
    throw v0

    .line 126
    :cond_3
    :goto_3
    iget-object v2, v2, LD1/v;->G:LD1/B;

    .line 127
    .line 128
    invoke-virtual {v2}, LD1/B;->h()V

    .line 129
    .line 130
    .line 131
    goto :goto_0

    .line 132
    :cond_4
    return-void
.end method

.method public final drawableStateChanged()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, LD1/e;->Q:Landroid/graphics/drawable/Drawable;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void
.end method

.method public final e()V
    .locals 10

    .line 1
    iget-object v0, p0, LD1/e;->I:Landroid/graphics/Rect;

    .line 2
    .line 3
    iget-object v1, p0, LD1/e;->H:Landroid/graphics/Rect;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 6
    .line 7
    .line 8
    iget-object v2, p0, LD1/e;->J:Landroid/graphics/Rect;

    .line 9
    .line 10
    invoke-virtual {v2, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 11
    .line 12
    .line 13
    iget-boolean v3, p0, LD1/e;->q0:Z

    .line 14
    .line 15
    if-eqz v3, :cond_0

    .line 16
    .line 17
    iget-wide v3, p0, LD1/e;->r0:J

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iget-wide v3, p0, LD1/e;->t0:J

    .line 21
    .line 22
    :goto_0
    iget-wide v5, p0, LD1/e;->s0:J

    .line 23
    .line 24
    const-wide/16 v7, 0x0

    .line 25
    .line 26
    cmp-long v9, v5, v7

    .line 27
    .line 28
    if-lez v9, :cond_1

    .line 29
    .line 30
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 31
    .line 32
    .line 33
    move-result v5

    .line 34
    int-to-long v5, v5

    .line 35
    iget-wide v7, p0, LD1/e;->u0:J

    .line 36
    .line 37
    mul-long v5, v5, v7

    .line 38
    .line 39
    iget-wide v7, p0, LD1/e;->s0:J

    .line 40
    .line 41
    div-long/2addr v5, v7

    .line 42
    long-to-int v6, v5

    .line 43
    iget v5, v1, Landroid/graphics/Rect;->left:I

    .line 44
    .line 45
    add-int/2addr v5, v6

    .line 46
    iget v6, v1, Landroid/graphics/Rect;->right:I

    .line 47
    .line 48
    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    .line 49
    .line 50
    .line 51
    move-result v5

    .line 52
    iput v5, v0, Landroid/graphics/Rect;->right:I

    .line 53
    .line 54
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    int-to-long v5, v0

    .line 59
    mul-long v5, v5, v3

    .line 60
    .line 61
    iget-wide v3, p0, LD1/e;->s0:J

    .line 62
    .line 63
    div-long/2addr v5, v3

    .line 64
    long-to-int v0, v5

    .line 65
    iget v3, v1, Landroid/graphics/Rect;->left:I

    .line 66
    .line 67
    add-int/2addr v3, v0

    .line 68
    iget v0, v1, Landroid/graphics/Rect;->right:I

    .line 69
    .line 70
    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    iput v0, v2, Landroid/graphics/Rect;->right:I

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_1
    iget v1, v1, Landroid/graphics/Rect;->left:I

    .line 78
    .line 79
    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 80
    .line 81
    iput v1, v2, Landroid/graphics/Rect;->right:I

    .line 82
    .line 83
    :goto_1
    iget-object v0, p0, LD1/e;->G:Landroid/graphics/Rect;

    .line 84
    .line 85
    invoke-virtual {p0, v0}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    .line 86
    .line 87
    .line 88
    return-void
.end method

.method public final f(J)V
    .locals 5

    .line 1
    iget-wide v0, p0, LD1/e;->r0:J

    .line 2
    .line 3
    cmp-long v2, v0, p1

    .line 4
    .line 5
    if-nez v2, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iput-wide p1, p0, LD1/e;->r0:J

    .line 9
    .line 10
    iget-object v0, p0, LD1/e;->g0:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_3

    .line 21
    .line 22
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, LD1/k;

    .line 27
    .line 28
    iget-object v1, v1, LD1/k;->G:LD1/v;

    .line 29
    .line 30
    iget-object v2, v1, LD1/v;->s0:Landroid/widget/TextView;

    .line 31
    .line 32
    if-eqz v2, :cond_2

    .line 33
    .line 34
    iget-object v3, v1, LD1/v;->u0:Ljava/lang/StringBuilder;

    .line 35
    .line 36
    iget-object v4, v1, LD1/v;->v0:Ljava/util/Formatter;

    .line 37
    .line 38
    invoke-static {v3, v4, p1, p2}, Lp0/M;->D(Ljava/lang/StringBuilder;Ljava/util/Formatter;J)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    .line 44
    .line 45
    :cond_2
    iget-object v2, v1, LD1/v;->V0:Lm0/Y;

    .line 46
    .line 47
    invoke-virtual {v1, v2}, LD1/v;->k(Lm0/Y;)Z

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    if-eqz v2, :cond_1

    .line 52
    .line 53
    iget-object v2, v1, LD1/v;->V0:Lm0/Y;

    .line 54
    .line 55
    invoke-static {v1, v2, p1, p2}, LD1/v;->a(LD1/v;Lm0/Y;J)V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_3
    return-void
.end method

.method public getPreferredUpdateDelay()J
    .locals 6

    .line 1
    iget-object v0, p0, LD1/e;->H:Landroid/graphics/Rect;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    int-to-float v0, v0

    .line 8
    iget v1, p0, LD1/e;->i0:F

    .line 9
    .line 10
    div-float/2addr v0, v1

    .line 11
    float-to-int v0, v0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    iget-wide v1, p0, LD1/e;->s0:J

    .line 15
    .line 16
    const-wide/16 v3, 0x0

    .line 17
    .line 18
    cmp-long v5, v1, v3

    .line 19
    .line 20
    if-eqz v5, :cond_1

    .line 21
    .line 22
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    cmp-long v5, v1, v3

    .line 28
    .line 29
    if-nez v5, :cond_0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    int-to-long v3, v0

    .line 33
    div-long/2addr v1, v3

    .line 34
    goto :goto_1

    .line 35
    :cond_1
    :goto_0
    const-wide v1, 0x7fffffffffffffffL

    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    :goto_1
    return-wide v1
.end method

.method public final jumpDrawablesToCurrentState()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, LD1/e;->Q:Landroid/graphics/drawable/Drawable;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v7, p1

    .line 4
    .line 5
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 6
    .line 7
    .line 8
    iget-object v8, v0, LD1/e;->H:Landroid/graphics/Rect;

    .line 9
    .line 10
    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    invoke-virtual {v8}, Landroid/graphics/Rect;->centerY()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    div-int/lit8 v3, v1, 0x2

    .line 19
    .line 20
    sub-int v9, v2, v3

    .line 21
    .line 22
    add-int v10, v9, v1

    .line 23
    .line 24
    iget-wide v1, v0, LD1/e;->s0:J

    .line 25
    .line 26
    iget-object v6, v0, LD1/e;->M:Landroid/graphics/Paint;

    .line 27
    .line 28
    iget-object v11, v0, LD1/e;->J:Landroid/graphics/Rect;

    .line 29
    .line 30
    const-wide/16 v12, 0x0

    .line 31
    .line 32
    cmp-long v3, v1, v12

    .line 33
    .line 34
    if-gtz v3, :cond_0

    .line 35
    .line 36
    iget v1, v8, Landroid/graphics/Rect;->left:I

    .line 37
    .line 38
    int-to-float v2, v1

    .line 39
    int-to-float v3, v9

    .line 40
    iget v1, v8, Landroid/graphics/Rect;->right:I

    .line 41
    .line 42
    int-to-float v4, v1

    .line 43
    int-to-float v5, v10

    .line 44
    move-object/from16 v1, p1

    .line 45
    .line 46
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 47
    .line 48
    .line 49
    goto/16 :goto_3

    .line 50
    .line 51
    :cond_0
    iget-object v1, v0, LD1/e;->I:Landroid/graphics/Rect;

    .line 52
    .line 53
    iget v14, v1, Landroid/graphics/Rect;->left:I

    .line 54
    .line 55
    iget v15, v1, Landroid/graphics/Rect;->right:I

    .line 56
    .line 57
    iget v1, v8, Landroid/graphics/Rect;->left:I

    .line 58
    .line 59
    invoke-static {v1, v15}, Ljava/lang/Math;->max(II)I

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    iget v2, v11, Landroid/graphics/Rect;->right:I

    .line 64
    .line 65
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    iget v2, v8, Landroid/graphics/Rect;->right:I

    .line 70
    .line 71
    if-ge v1, v2, :cond_1

    .line 72
    .line 73
    int-to-float v3, v1

    .line 74
    int-to-float v4, v9

    .line 75
    int-to-float v5, v2

    .line 76
    int-to-float v2, v10

    .line 77
    move-object/from16 v1, p1

    .line 78
    .line 79
    move/from16 v16, v2

    .line 80
    .line 81
    move v2, v3

    .line 82
    move v3, v4

    .line 83
    move v4, v5

    .line 84
    move/from16 v5, v16

    .line 85
    .line 86
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 87
    .line 88
    .line 89
    :cond_1
    iget v1, v11, Landroid/graphics/Rect;->right:I

    .line 90
    .line 91
    invoke-static {v14, v1}, Ljava/lang/Math;->max(II)I

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    if-le v15, v1, :cond_2

    .line 96
    .line 97
    int-to-float v2, v1

    .line 98
    int-to-float v3, v9

    .line 99
    int-to-float v4, v15

    .line 100
    int-to-float v5, v10

    .line 101
    iget-object v6, v0, LD1/e;->L:Landroid/graphics/Paint;

    .line 102
    .line 103
    move-object/from16 v1, p1

    .line 104
    .line 105
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 106
    .line 107
    .line 108
    :cond_2
    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    .line 109
    .line 110
    .line 111
    move-result v1

    .line 112
    if-lez v1, :cond_3

    .line 113
    .line 114
    iget v1, v11, Landroid/graphics/Rect;->left:I

    .line 115
    .line 116
    int-to-float v2, v1

    .line 117
    int-to-float v3, v9

    .line 118
    iget v1, v11, Landroid/graphics/Rect;->right:I

    .line 119
    .line 120
    int-to-float v4, v1

    .line 121
    int-to-float v5, v10

    .line 122
    iget-object v6, v0, LD1/e;->K:Landroid/graphics/Paint;

    .line 123
    .line 124
    move-object/from16 v1, p1

    .line 125
    .line 126
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 127
    .line 128
    .line 129
    :cond_3
    iget v1, v0, LD1/e;->v0:I

    .line 130
    .line 131
    if-nez v1, :cond_4

    .line 132
    .line 133
    goto :goto_3

    .line 134
    :cond_4
    iget-object v14, v0, LD1/e;->w0:[J

    .line 135
    .line 136
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 137
    .line 138
    .line 139
    iget-object v15, v0, LD1/e;->x0:[Z

    .line 140
    .line 141
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 142
    .line 143
    .line 144
    iget v6, v0, LD1/e;->U:I

    .line 145
    .line 146
    div-int/lit8 v16, v6, 0x2

    .line 147
    .line 148
    const/4 v5, 0x0

    .line 149
    const/4 v4, 0x0

    .line 150
    :goto_0
    iget v1, v0, LD1/e;->v0:I

    .line 151
    .line 152
    if-ge v4, v1, :cond_6

    .line 153
    .line 154
    aget-wide v17, v14, v4

    .line 155
    .line 156
    const-wide/16 v19, 0x0

    .line 157
    .line 158
    iget-wide v1, v0, LD1/e;->s0:J

    .line 159
    .line 160
    move-wide/from16 v21, v1

    .line 161
    .line 162
    invoke-static/range {v17 .. v22}, Lp0/M;->j(JJJ)J

    .line 163
    .line 164
    .line 165
    move-result-wide v1

    .line 166
    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    .line 167
    .line 168
    .line 169
    move-result v3

    .line 170
    int-to-long v12, v3

    .line 171
    mul-long v12, v12, v1

    .line 172
    .line 173
    iget-wide v1, v0, LD1/e;->s0:J

    .line 174
    .line 175
    div-long/2addr v12, v1

    .line 176
    long-to-int v1, v12

    .line 177
    sub-int v1, v1, v16

    .line 178
    .line 179
    iget v2, v8, Landroid/graphics/Rect;->left:I

    .line 180
    .line 181
    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    .line 182
    .line 183
    .line 184
    move-result v3

    .line 185
    sub-int/2addr v3, v6

    .line 186
    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    .line 187
    .line 188
    .line 189
    move-result v1

    .line 190
    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    .line 191
    .line 192
    .line 193
    move-result v1

    .line 194
    add-int/2addr v1, v2

    .line 195
    aget-boolean v2, v15, v4

    .line 196
    .line 197
    if-eqz v2, :cond_5

    .line 198
    .line 199
    iget-object v2, v0, LD1/e;->O:Landroid/graphics/Paint;

    .line 200
    .line 201
    :goto_1
    move-object v12, v2

    .line 202
    goto :goto_2

    .line 203
    :cond_5
    iget-object v2, v0, LD1/e;->N:Landroid/graphics/Paint;

    .line 204
    .line 205
    goto :goto_1

    .line 206
    :goto_2
    int-to-float v2, v1

    .line 207
    int-to-float v3, v9

    .line 208
    add-int/2addr v1, v6

    .line 209
    int-to-float v13, v1

    .line 210
    int-to-float v1, v10

    .line 211
    move/from16 v19, v1

    .line 212
    .line 213
    move-object/from16 v1, p1

    .line 214
    .line 215
    move/from16 v20, v4

    .line 216
    .line 217
    move v4, v13

    .line 218
    const/4 v13, 0x0

    .line 219
    move/from16 v5, v19

    .line 220
    .line 221
    move/from16 v19, v6

    .line 222
    .line 223
    move-object v6, v12

    .line 224
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 225
    .line 226
    .line 227
    add-int/lit8 v4, v20, 0x1

    .line 228
    .line 229
    move/from16 v6, v19

    .line 230
    .line 231
    const/4 v5, 0x0

    .line 232
    const-wide/16 v12, 0x0

    .line 233
    .line 234
    goto :goto_0

    .line 235
    :cond_6
    :goto_3
    iget-wide v1, v0, LD1/e;->s0:J

    .line 236
    .line 237
    const-wide/16 v3, 0x0

    .line 238
    .line 239
    cmp-long v5, v1, v3

    .line 240
    .line 241
    if-gtz v5, :cond_7

    .line 242
    .line 243
    goto :goto_6

    .line 244
    :cond_7
    iget v1, v11, Landroid/graphics/Rect;->right:I

    .line 245
    .line 246
    iget v2, v11, Landroid/graphics/Rect;->left:I

    .line 247
    .line 248
    iget v3, v8, Landroid/graphics/Rect;->right:I

    .line 249
    .line 250
    invoke-static {v1, v2, v3}, Lp0/M;->i(III)I

    .line 251
    .line 252
    .line 253
    move-result v1

    .line 254
    invoke-virtual {v11}, Landroid/graphics/Rect;->centerY()I

    .line 255
    .line 256
    .line 257
    move-result v2

    .line 258
    iget-object v3, v0, LD1/e;->Q:Landroid/graphics/drawable/Drawable;

    .line 259
    .line 260
    if-nez v3, :cond_b

    .line 261
    .line 262
    iget-boolean v3, v0, LD1/e;->q0:Z

    .line 263
    .line 264
    if-nez v3, :cond_a

    .line 265
    .line 266
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isFocused()Z

    .line 267
    .line 268
    .line 269
    move-result v3

    .line 270
    if-eqz v3, :cond_8

    .line 271
    .line 272
    goto :goto_4

    .line 273
    :cond_8
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isEnabled()Z

    .line 274
    .line 275
    .line 276
    move-result v3

    .line 277
    if-eqz v3, :cond_9

    .line 278
    .line 279
    iget v3, v0, LD1/e;->V:I

    .line 280
    .line 281
    goto :goto_5

    .line 282
    :cond_9
    iget v3, v0, LD1/e;->W:I

    .line 283
    .line 284
    goto :goto_5

    .line 285
    :cond_a
    :goto_4
    iget v3, v0, LD1/e;->a0:I

    .line 286
    .line 287
    :goto_5
    int-to-float v3, v3

    .line 288
    iget v4, v0, LD1/e;->o0:F

    .line 289
    .line 290
    mul-float v3, v3, v4

    .line 291
    .line 292
    const/high16 v4, 0x40000000    # 2.0f

    .line 293
    .line 294
    div-float/2addr v3, v4

    .line 295
    float-to-int v3, v3

    .line 296
    int-to-float v1, v1

    .line 297
    int-to-float v2, v2

    .line 298
    int-to-float v3, v3

    .line 299
    iget-object v4, v0, LD1/e;->P:Landroid/graphics/Paint;

    .line 300
    .line 301
    invoke-virtual {v7, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 302
    .line 303
    .line 304
    goto :goto_6

    .line 305
    :cond_b
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 306
    .line 307
    .line 308
    move-result v4

    .line 309
    int-to-float v4, v4

    .line 310
    iget v5, v0, LD1/e;->o0:F

    .line 311
    .line 312
    mul-float v4, v4, v5

    .line 313
    .line 314
    float-to-int v4, v4

    .line 315
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 316
    .line 317
    .line 318
    move-result v5

    .line 319
    int-to-float v5, v5

    .line 320
    iget v6, v0, LD1/e;->o0:F

    .line 321
    .line 322
    mul-float v5, v5, v6

    .line 323
    .line 324
    float-to-int v5, v5

    .line 325
    div-int/lit8 v4, v4, 0x2

    .line 326
    .line 327
    sub-int v6, v1, v4

    .line 328
    .line 329
    div-int/lit8 v5, v5, 0x2

    .line 330
    .line 331
    sub-int v8, v2, v5

    .line 332
    .line 333
    add-int/2addr v1, v4

    .line 334
    add-int/2addr v2, v5

    .line 335
    invoke-virtual {v3, v6, v8, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 336
    .line 337
    .line 338
    invoke-virtual {v3, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 339
    .line 340
    .line 341
    :goto_6
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 342
    .line 343
    .line 344
    return-void
.end method

.method public final onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 2
    .line 3
    .line 4
    iget-boolean p2, p0, LD1/e;->q0:Z

    .line 5
    .line 6
    if-eqz p2, :cond_0

    .line 7
    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    invoke-virtual {p0, p1}, LD1/e;->d(Z)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public final onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/4 v1, 0x4

    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-direct {p0}, LD1/e;->getProgressText()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    :cond_0
    const-string v0, "android.widget.SeekBar"

    .line 23
    .line 24
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setClassName(Ljava/lang/CharSequence;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public final onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2
    .line 3
    .line 4
    const-string v0, "android.widget.SeekBar"

    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, LD1/e;->getProgressText()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 14
    .line 15
    .line 16
    iget-wide v0, p0, LD1/e;->s0:J

    .line 17
    .line 18
    const-wide/16 v2, 0x0

    .line 19
    .line 20
    cmp-long v4, v0, v2

    .line 21
    .line 22
    if-gtz v4, :cond_0

    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_FORWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 26
    .line 27
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 28
    .line 29
    .line 30
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_BACKWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 31
    .line 32
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-direct {p0}, LD1/e;->getPositionIncrement()J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    const/16 v2, 0x42

    .line 12
    .line 13
    const/4 v3, 0x1

    .line 14
    if-eq p1, v2, :cond_0

    .line 15
    .line 16
    packed-switch p1, :pswitch_data_0

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :pswitch_0
    neg-long v0, v0

    .line 21
    :pswitch_1
    invoke-virtual {p0, v0, v1}, LD1/e;->b(J)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    iget-object p1, p0, LD1/e;->f0:La/b;

    .line 28
    .line 29
    invoke-virtual {p0, p1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 30
    .line 31
    .line 32
    const-wide/16 v0, 0x3e8

    .line 33
    .line 34
    invoke-virtual {p0, p1, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 35
    .line 36
    .line 37
    return v3

    .line 38
    :cond_0
    :pswitch_2
    iget-boolean v0, p0, LD1/e;->q0:Z

    .line 39
    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    const/4 p1, 0x0

    .line 43
    invoke-virtual {p0, p1}, LD1/e;->d(Z)V

    .line 44
    .line 45
    .line 46
    return v3

    .line 47
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    return p1

    .line 52
    nop

    .line 53
    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final onLayout(ZIIII)V
    .locals 6

    .line 1
    sub-int/2addr p4, p2

    .line 2
    sub-int/2addr p5, p3

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 8
    .line 9
    .line 10
    move-result p2

    .line 11
    sub-int p2, p4, p2

    .line 12
    .line 13
    iget-boolean p3, p0, LD1/e;->p0:Z

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    if-eqz p3, :cond_0

    .line 17
    .line 18
    const/4 p3, 0x0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iget p3, p0, LD1/e;->b0:I

    .line 21
    .line 22
    :goto_0
    iget v1, p0, LD1/e;->T:I

    .line 23
    .line 24
    const/4 v2, 0x1

    .line 25
    iget v3, p0, LD1/e;->R:I

    .line 26
    .line 27
    iget v4, p0, LD1/e;->S:I

    .line 28
    .line 29
    if-ne v1, v2, :cond_1

    .line 30
    .line 31
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    sub-int v1, p5, v1

    .line 36
    .line 37
    sub-int/2addr v1, v4

    .line 38
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    sub-int v2, p5, v2

    .line 43
    .line 44
    sub-int/2addr v2, v3

    .line 45
    div-int/lit8 v5, v3, 0x2

    .line 46
    .line 47
    sub-int v5, p3, v5

    .line 48
    .line 49
    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    .line 50
    .line 51
    .line 52
    move-result v5

    .line 53
    sub-int/2addr v2, v5

    .line 54
    goto :goto_1

    .line 55
    :cond_1
    sub-int v1, p5, v4

    .line 56
    .line 57
    div-int/lit8 v1, v1, 0x2

    .line 58
    .line 59
    sub-int v2, p5, v3

    .line 60
    .line 61
    div-int/lit8 v2, v2, 0x2

    .line 62
    .line 63
    :goto_1
    add-int/2addr v4, v1

    .line 64
    iget-object v5, p0, LD1/e;->G:Landroid/graphics/Rect;

    .line 65
    .line 66
    invoke-virtual {v5, p1, v1, p2, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 67
    .line 68
    .line 69
    iget p1, v5, Landroid/graphics/Rect;->left:I

    .line 70
    .line 71
    add-int/2addr p1, p3

    .line 72
    iget p2, v5, Landroid/graphics/Rect;->right:I

    .line 73
    .line 74
    sub-int/2addr p2, p3

    .line 75
    add-int/2addr v3, v2

    .line 76
    iget-object p3, p0, LD1/e;->H:Landroid/graphics/Rect;

    .line 77
    .line 78
    invoke-virtual {p3, p1, v2, p2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 79
    .line 80
    .line 81
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 82
    .line 83
    const/16 p2, 0x1d

    .line 84
    .line 85
    if-lt p1, p2, :cond_3

    .line 86
    .line 87
    iget-object p1, p0, LD1/e;->m0:Landroid/graphics/Rect;

    .line 88
    .line 89
    if-eqz p1, :cond_2

    .line 90
    .line 91
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 92
    .line 93
    .line 94
    move-result p1

    .line 95
    if-ne p1, p4, :cond_2

    .line 96
    .line 97
    iget-object p1, p0, LD1/e;->m0:Landroid/graphics/Rect;

    .line 98
    .line 99
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    .line 100
    .line 101
    .line 102
    move-result p1

    .line 103
    if-ne p1, p5, :cond_2

    .line 104
    .line 105
    goto :goto_2

    .line 106
    :cond_2
    new-instance p1, Landroid/graphics/Rect;

    .line 107
    .line 108
    invoke-direct {p1, v0, v0, p4, p5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 109
    .line 110
    .line 111
    iput-object p1, p0, LD1/e;->m0:Landroid/graphics/Rect;

    .line 112
    .line 113
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    invoke-static {p0, p1}, LD0/a;->j(LD1/e;Ljava/util/List;)V

    .line 118
    .line 119
    .line 120
    :cond_3
    :goto_2
    invoke-virtual {p0}, LD1/e;->e()V

    .line 121
    .line 122
    .line 123
    return-void
.end method

.method public final onMeasure(II)V
    .locals 3

    .line 1
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    iget v1, p0, LD1/e;->S:I

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    move p2, v1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/high16 v2, 0x40000000    # 2.0f

    .line 16
    .line 17
    if-ne v0, v2, :cond_1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    .line 21
    .line 22
    .line 23
    move-result p2

    .line 24
    :goto_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, LD1/e;->Q:Landroid/graphics/drawable/Drawable;

    .line 32
    .line 33
    if-eqz p1, :cond_2

    .line 34
    .line 35
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    .line 36
    .line 37
    .line 38
    move-result p2

    .line 39
    if-eqz p2, :cond_2

    .line 40
    .line 41
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    if-eqz p1, :cond_2

    .line 50
    .line 51
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 52
    .line 53
    .line 54
    :cond_2
    return-void
.end method

.method public final onRtlPropertiesChanged(I)V
    .locals 3

    .line 1
    iget-object v0, p0, LD1/e;->Q:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 6
    .line 7
    const/16 v2, 0x17

    .line 8
    .line 9
    if-lt v1, v2, :cond_0

    .line 10
    .line 11
    invoke-static {v0, p1}, LB0/q;->x(Landroid/graphics/drawable/Drawable;I)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_6

    .line 7
    .line 8
    iget-wide v2, p0, LD1/e;->s0:J

    .line 9
    .line 10
    const-wide/16 v4, 0x0

    .line 11
    .line 12
    cmp-long v0, v2, v4

    .line 13
    .line 14
    if-gtz v0, :cond_0

    .line 15
    .line 16
    goto/16 :goto_1

    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, LD1/e;->h0:Landroid/graphics/Point;

    .line 19
    .line 20
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    float-to-int v2, v2

    .line 25
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    float-to-int v3, v3

    .line 30
    invoke-virtual {v0, v2, v3}, Landroid/graphics/Point;->set(II)V

    .line 31
    .line 32
    .line 33
    iget v2, v0, Landroid/graphics/Point;->x:I

    .line 34
    .line 35
    iget v0, v0, Landroid/graphics/Point;->y:I

    .line 36
    .line 37
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    iget-object v4, p0, LD1/e;->J:Landroid/graphics/Rect;

    .line 42
    .line 43
    iget-object v5, p0, LD1/e;->H:Landroid/graphics/Rect;

    .line 44
    .line 45
    const/4 v6, 0x1

    .line 46
    if-eqz v3, :cond_5

    .line 47
    .line 48
    const/4 v7, 0x3

    .line 49
    if-eq v3, v6, :cond_3

    .line 50
    .line 51
    const/4 v8, 0x2

    .line 52
    if-eq v3, v8, :cond_1

    .line 53
    .line 54
    if-eq v3, v7, :cond_3

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_1
    iget-boolean p1, p0, LD1/e;->q0:Z

    .line 58
    .line 59
    if-eqz p1, :cond_6

    .line 60
    .line 61
    iget p1, p0, LD1/e;->c0:I

    .line 62
    .line 63
    if-ge v0, p1, :cond_2

    .line 64
    .line 65
    iget p1, p0, LD1/e;->l0:I

    .line 66
    .line 67
    sub-int/2addr v2, p1

    .line 68
    div-int/2addr v2, v7

    .line 69
    add-int/2addr v2, p1

    .line 70
    int-to-float p1, v2

    .line 71
    float-to-int p1, p1

    .line 72
    iget v0, v5, Landroid/graphics/Rect;->left:I

    .line 73
    .line 74
    iget v1, v5, Landroid/graphics/Rect;->right:I

    .line 75
    .line 76
    invoke-static {p1, v0, v1}, Lp0/M;->i(III)I

    .line 77
    .line 78
    .line 79
    move-result p1

    .line 80
    iput p1, v4, Landroid/graphics/Rect;->right:I

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_2
    iput v2, p0, LD1/e;->l0:I

    .line 84
    .line 85
    int-to-float p1, v2

    .line 86
    float-to-int p1, p1

    .line 87
    iget v0, v5, Landroid/graphics/Rect;->left:I

    .line 88
    .line 89
    iget v1, v5, Landroid/graphics/Rect;->right:I

    .line 90
    .line 91
    invoke-static {p1, v0, v1}, Lp0/M;->i(III)I

    .line 92
    .line 93
    .line 94
    move-result p1

    .line 95
    iput p1, v4, Landroid/graphics/Rect;->right:I

    .line 96
    .line 97
    :goto_0
    invoke-direct {p0}, LD1/e;->getScrubberPosition()J

    .line 98
    .line 99
    .line 100
    move-result-wide v0

    .line 101
    invoke-virtual {p0, v0, v1}, LD1/e;->f(J)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {p0}, LD1/e;->e()V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 108
    .line 109
    .line 110
    return v6

    .line 111
    :cond_3
    iget-boolean v0, p0, LD1/e;->q0:Z

    .line 112
    .line 113
    if-eqz v0, :cond_6

    .line 114
    .line 115
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 116
    .line 117
    .line 118
    move-result p1

    .line 119
    if-ne p1, v7, :cond_4

    .line 120
    .line 121
    const/4 v1, 0x1

    .line 122
    :cond_4
    invoke-virtual {p0, v1}, LD1/e;->d(Z)V

    .line 123
    .line 124
    .line 125
    return v6

    .line 126
    :cond_5
    int-to-float p1, v2

    .line 127
    int-to-float v0, v0

    .line 128
    float-to-int p1, p1

    .line 129
    float-to-int v0, v0

    .line 130
    iget-object v2, p0, LD1/e;->G:Landroid/graphics/Rect;

    .line 131
    .line 132
    invoke-virtual {v2, p1, v0}, Landroid/graphics/Rect;->contains(II)Z

    .line 133
    .line 134
    .line 135
    move-result v0

    .line 136
    if-eqz v0, :cond_6

    .line 137
    .line 138
    iget v0, v5, Landroid/graphics/Rect;->left:I

    .line 139
    .line 140
    iget v1, v5, Landroid/graphics/Rect;->right:I

    .line 141
    .line 142
    invoke-static {p1, v0, v1}, Lp0/M;->i(III)I

    .line 143
    .line 144
    .line 145
    move-result p1

    .line 146
    iput p1, v4, Landroid/graphics/Rect;->right:I

    .line 147
    .line 148
    invoke-direct {p0}, LD1/e;->getScrubberPosition()J

    .line 149
    .line 150
    .line 151
    move-result-wide v0

    .line 152
    invoke-virtual {p0, v0, v1}, LD1/e;->c(J)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {p0}, LD1/e;->e()V

    .line 156
    .line 157
    .line 158
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 159
    .line 160
    .line 161
    return v6

    .line 162
    :cond_6
    :goto_1
    return v1
.end method

.method public final performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 6

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    const/4 v0, 0x1

    .line 6
    if-eqz p2, :cond_0

    .line 7
    .line 8
    return v0

    .line 9
    :cond_0
    iget-wide v1, p0, LD1/e;->s0:J

    .line 10
    .line 11
    const-wide/16 v3, 0x0

    .line 12
    .line 13
    const/4 p2, 0x0

    .line 14
    cmp-long v5, v1, v3

    .line 15
    .line 16
    if-gtz v5, :cond_1

    .line 17
    .line 18
    return p2

    .line 19
    :cond_1
    const/16 v1, 0x2000

    .line 20
    .line 21
    if-ne p1, v1, :cond_2

    .line 22
    .line 23
    invoke-direct {p0}, LD1/e;->getPositionIncrement()J

    .line 24
    .line 25
    .line 26
    move-result-wide v1

    .line 27
    neg-long v1, v1

    .line 28
    invoke-virtual {p0, v1, v2}, LD1/e;->b(J)Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    if-eqz p1, :cond_3

    .line 33
    .line 34
    invoke-virtual {p0, p2}, LD1/e;->d(Z)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_2
    const/16 v1, 0x1000

    .line 39
    .line 40
    if-ne p1, v1, :cond_4

    .line 41
    .line 42
    invoke-direct {p0}, LD1/e;->getPositionIncrement()J

    .line 43
    .line 44
    .line 45
    move-result-wide v1

    .line 46
    invoke-virtual {p0, v1, v2}, LD1/e;->b(J)Z

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    if-eqz p1, :cond_3

    .line 51
    .line 52
    invoke-virtual {p0, p2}, LD1/e;->d(Z)V

    .line 53
    .line 54
    .line 55
    :cond_3
    :goto_0
    const/4 p1, 0x4

    .line 56
    invoke-virtual {p0, p1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 57
    .line 58
    .line 59
    return v0

    .line 60
    :cond_4
    return p2
.end method

.method public setAdMarkerColor(I)V
    .locals 1

    .line 1
    iget-object v0, p0, LD1/e;->N:Landroid/graphics/Paint;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, LD1/e;->G:Landroid/graphics/Rect;

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setBufferedColor(I)V
    .locals 1

    .line 1
    iget-object v0, p0, LD1/e;->L:Landroid/graphics/Paint;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, LD1/e;->G:Landroid/graphics/Rect;

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setBufferedPosition(J)V
    .locals 3

    .line 1
    iget-wide v0, p0, LD1/e;->u0:J

    .line 2
    .line 3
    cmp-long v2, v0, p1

    .line 4
    .line 5
    if-nez v2, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iput-wide p1, p0, LD1/e;->u0:J

    .line 9
    .line 10
    invoke-virtual {p0}, LD1/e;->e()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public setDuration(J)V
    .locals 3

    .line 1
    iget-wide v0, p0, LD1/e;->s0:J

    .line 2
    .line 3
    cmp-long v2, v0, p1

    .line 4
    .line 5
    if-nez v2, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iput-wide p1, p0, LD1/e;->s0:J

    .line 9
    .line 10
    iget-boolean v0, p0, LD1/e;->q0:Z

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    cmp-long v2, p1, v0

    .line 20
    .line 21
    if-nez v2, :cond_1

    .line 22
    .line 23
    const/4 p1, 0x1

    .line 24
    invoke-virtual {p0, p1}, LD1/e;->d(Z)V

    .line 25
    .line 26
    .line 27
    :cond_1
    invoke-virtual {p0}, LD1/e;->e()V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, LD1/e;->q0:Z

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    const/4 p1, 0x1

    .line 11
    invoke-virtual {p0, p1}, LD1/e;->d(Z)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public setKeyCountIncrement(I)V
    .locals 2

    .line 1
    if-lez p1, :cond_0

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    const/4 v0, 0x0

    .line 6
    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/H1;->d(Z)V

    .line 7
    .line 8
    .line 9
    iput p1, p0, LD1/e;->j0:I

    .line 10
    .line 11
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    iput-wide v0, p0, LD1/e;->k0:J

    .line 17
    .line 18
    return-void
.end method

.method public setKeyTimeIncrement(J)V
    .locals 3

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v2, p1, v0

    .line 4
    .line 5
    if-lez v2, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/H1;->d(Z)V

    .line 11
    .line 12
    .line 13
    const/4 v0, -0x1

    .line 14
    iput v0, p0, LD1/e;->j0:I

    .line 15
    .line 16
    iput-wide p1, p0, LD1/e;->k0:J

    .line 17
    .line 18
    return-void
.end method

.method public setPlayedAdMarkerColor(I)V
    .locals 1

    .line 1
    iget-object v0, p0, LD1/e;->O:Landroid/graphics/Paint;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, LD1/e;->G:Landroid/graphics/Rect;

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setPlayedColor(I)V
    .locals 1

    .line 1
    iget-object v0, p0, LD1/e;->K:Landroid/graphics/Paint;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, LD1/e;->G:Landroid/graphics/Rect;

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setPosition(J)V
    .locals 3

    .line 1
    iget-wide v0, p0, LD1/e;->t0:J

    .line 2
    .line 3
    cmp-long v2, v0, p1

    .line 4
    .line 5
    if-nez v2, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iput-wide p1, p0, LD1/e;->t0:J

    .line 9
    .line 10
    invoke-direct {p0}, LD1/e;->getProgressText()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, LD1/e;->e()V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public setScrubberColor(I)V
    .locals 1

    .line 1
    iget-object v0, p0, LD1/e;->P:Landroid/graphics/Paint;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, LD1/e;->G:Landroid/graphics/Rect;

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setUnplayedColor(I)V
    .locals 1

    .line 1
    iget-object v0, p0, LD1/e;->M:Landroid/graphics/Paint;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, LD1/e;->G:Landroid/graphics/Rect;

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
