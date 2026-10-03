.class public final LD1/v;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# static fields
.field public static final n1:[F


# instance fields
.field public final A0:Landroid/graphics/drawable/Drawable;

.field public final B0:Landroid/graphics/drawable/Drawable;

.field public final C0:Landroid/graphics/drawable/Drawable;

.field public final D0:Landroid/graphics/drawable/Drawable;

.field public final E0:Ljava/lang/String;

.field public final F0:Ljava/lang/String;

.field public final G:LD1/B;

.field public final G0:Ljava/lang/String;

.field public final H:Landroid/content/res/Resources;

.field public final H0:Landroid/graphics/drawable/Drawable;

.field public final I:LD1/k;

.field public final I0:Landroid/graphics/drawable/Drawable;

.field public final J:Ljava/lang/Class;

.field public final J0:F

.field public final K:Ljava/lang/reflect/Method;

.field public final K0:F

.field public final L:Ljava/lang/reflect/Method;

.field public final L0:Ljava/lang/String;

.field public final M:Ljava/lang/Class;

.field public final M0:Ljava/lang/String;

.field public final N:Ljava/lang/reflect/Method;

.field public final N0:Landroid/graphics/drawable/Drawable;

.field public final O:Ljava/lang/reflect/Method;

.field public final O0:Landroid/graphics/drawable/Drawable;

.field public final P:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public final P0:Ljava/lang/String;

.field public final Q:Landroidx/recyclerview/widget/RecyclerView;

.field public final Q0:Ljava/lang/String;

.field public final R:LD1/q;

.field public final R0:Landroid/graphics/drawable/Drawable;

.field public final S:LD1/n;

.field public final S0:Landroid/graphics/drawable/Drawable;

.field public final T:LD1/j;

.field public final T0:Ljava/lang/String;

.field public final U:LD1/j;

.field public final U0:Ljava/lang/String;

.field public final V:LD1/f;

.field public V0:Lm0/Y;

.field public final W:Landroid/widget/PopupWindow;

.field public W0:LD1/l;

.field public X0:Z

.field public Y0:Z

.field public Z0:Z

.field public final a0:I

.field public a1:Z

.field public final b0:Landroid/widget/ImageView;

.field public b1:Z

.field public final c0:Landroid/widget/ImageView;

.field public c1:Z

.field public final d0:Landroid/widget/ImageView;

.field public d1:I

.field public final e0:Landroid/view/View;

.field public e1:Z

.field public final f0:Landroid/view/View;

.field public f1:I

.field public final g0:Landroid/widget/TextView;

.field public g1:I

.field public final h0:Landroid/widget/TextView;

.field public h1:[J

.field public final i0:Landroid/widget/ImageView;

.field public i1:[Z

.field public final j0:Landroid/widget/ImageView;

.field public final j1:[J

.field public final k0:Landroid/widget/ImageView;

.field public final k1:[Z

.field public final l0:Landroid/widget/ImageView;

.field public l1:J

.field public final m0:Landroid/widget/ImageView;

.field public m1:Z

.field public final n0:Landroid/widget/ImageView;

.field public final o0:Landroid/view/View;

.field public final p0:Landroid/view/View;

.field public final q0:Landroid/view/View;

.field public final r0:Landroid/widget/TextView;

.field public final s0:Landroid/widget/TextView;

.field public final t0:LD1/O;

.field public final u0:Ljava/lang/StringBuilder;

.field public final v0:Ljava/util/Formatter;

.field public final w0:Lm0/d0;

.field public final x0:Lm0/e0;

.field public final y0:La/b;

.field public final z0:Landroid/graphics/drawable/Drawable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "media3.ui"

    .line 2
    .line 3
    invoke-static {v0}, Lm0/J;->a(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x7

    .line 7
    new-array v0, v0, [F

    .line 8
    .line 9
    fill-array-data v0, :array_0

    .line 10
    .line 11
    .line 12
    sput-object v0, LD1/v;->n1:[F

    .line 13
    .line 14
    return-void

    .line 15
    :array_0
    .array-data 4
        0x3e800000    # 0.25f
        0x3f000000    # 0.5f
        0x3f400000    # 0.75f
        0x3f800000    # 1.0f
        0x3fa00000    # 1.25f
        0x3fc00000    # 1.5f
        0x40000000    # 2.0f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 39

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
    const-string v4, "isScrubbingModeEnabled"

    .line 8
    .line 9
    const-string v5, "setScrubbingModeEnabled"

    .line 10
    .line 11
    const/4 v6, 0x0

    .line 12
    const/4 v7, 0x0

    .line 13
    invoke-direct {v1, v0, v6, v7}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 14
    .line 15
    .line 16
    const/4 v8, 0x1

    .line 17
    iput-boolean v8, v1, LD1/v;->a1:Z

    .line 18
    .line 19
    const/16 v9, 0x1388

    .line 20
    .line 21
    iput v9, v1, LD1/v;->d1:I

    .line 22
    .line 23
    iput v7, v1, LD1/v;->g1:I

    .line 24
    .line 25
    const/16 v9, 0xc8

    .line 26
    .line 27
    iput v9, v1, LD1/v;->f1:I

    .line 28
    .line 29
    const v10, 0x7f0e007b

    .line 30
    .line 31
    .line 32
    const v11, 0x7f080641

    .line 33
    .line 34
    .line 35
    const v12, 0x7f080640

    .line 36
    .line 37
    .line 38
    const v13, 0x7f08063d

    .line 39
    .line 40
    .line 41
    const v14, 0x7f08064a

    .line 42
    .line 43
    .line 44
    const v15, 0x7f080642

    .line 45
    .line 46
    .line 47
    const v6, 0x7f08064b

    .line 48
    .line 49
    .line 50
    const v3, 0x7f08063c

    .line 51
    .line 52
    .line 53
    if-eqz v2, :cond_0

    .line 54
    .line 55
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 56
    .line 57
    .line 58
    move-result-object v8

    .line 59
    sget-object v9, LD1/I;->c:[I

    .line 60
    .line 61
    invoke-virtual {v8, v2, v9, v7, v7}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 62
    .line 63
    .line 64
    move-result-object v8

    .line 65
    const/4 v9, 0x6

    .line 66
    :try_start_0
    invoke-virtual {v8, v9, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 67
    .line 68
    .line 69
    move-result v10

    .line 70
    const/16 v9, 0xc

    .line 71
    .line 72
    invoke-virtual {v8, v9, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 73
    .line 74
    .line 75
    move-result v11

    .line 76
    const/16 v9, 0xb

    .line 77
    .line 78
    invoke-virtual {v8, v9, v12}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 79
    .line 80
    .line 81
    move-result v12

    .line 82
    const/16 v9, 0xa

    .line 83
    .line 84
    invoke-virtual {v8, v9, v13}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 85
    .line 86
    .line 87
    move-result v13

    .line 88
    const/4 v9, 0x7

    .line 89
    invoke-virtual {v8, v9, v14}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 90
    .line 91
    .line 92
    move-result v14

    .line 93
    const/16 v9, 0xf

    .line 94
    .line 95
    invoke-virtual {v8, v9, v15}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 96
    .line 97
    .line 98
    move-result v15

    .line 99
    const/16 v9, 0x14

    .line 100
    .line 101
    invoke-virtual {v8, v9, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 102
    .line 103
    .line 104
    move-result v6

    .line 105
    const/16 v9, 0x9

    .line 106
    .line 107
    invoke-virtual {v8, v9, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 108
    .line 109
    .line 110
    move-result v3

    .line 111
    const v7, 0x7f08063b

    .line 112
    .line 113
    .line 114
    const/16 v9, 0x8

    .line 115
    .line 116
    invoke-virtual {v8, v9, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 117
    .line 118
    .line 119
    move-result v7

    .line 120
    const/16 v9, 0x11

    .line 121
    .line 122
    move/from16 v24, v3

    .line 123
    .line 124
    const v3, 0x7f080644

    .line 125
    .line 126
    .line 127
    invoke-virtual {v8, v9, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 128
    .line 129
    .line 130
    move-result v3

    .line 131
    const/16 v9, 0x12

    .line 132
    .line 133
    move/from16 v16, v3

    .line 134
    .line 135
    const v3, 0x7f080645

    .line 136
    .line 137
    .line 138
    invoke-virtual {v8, v9, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 139
    .line 140
    .line 141
    move-result v3

    .line 142
    const/16 v9, 0x10

    .line 143
    .line 144
    move/from16 v17, v3

    .line 145
    .line 146
    const v3, 0x7f080643

    .line 147
    .line 148
    .line 149
    invoke-virtual {v8, v9, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 150
    .line 151
    .line 152
    move-result v3

    .line 153
    const/16 v9, 0x23

    .line 154
    .line 155
    move/from16 v18, v3

    .line 156
    .line 157
    const v3, 0x7f080649

    .line 158
    .line 159
    .line 160
    invoke-virtual {v8, v9, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 161
    .line 162
    .line 163
    move-result v3

    .line 164
    const/16 v9, 0x22

    .line 165
    .line 166
    move/from16 v19, v3

    .line 167
    .line 168
    const v3, 0x7f080648

    .line 169
    .line 170
    .line 171
    invoke-virtual {v8, v9, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 172
    .line 173
    .line 174
    move-result v3

    .line 175
    const/16 v9, 0x25

    .line 176
    .line 177
    move/from16 v20, v3

    .line 178
    .line 179
    const v3, 0x7f08064e

    .line 180
    .line 181
    .line 182
    invoke-virtual {v8, v9, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 183
    .line 184
    .line 185
    move-result v3

    .line 186
    const/16 v9, 0x24

    .line 187
    .line 188
    move/from16 v21, v3

    .line 189
    .line 190
    const v3, 0x7f08064d

    .line 191
    .line 192
    .line 193
    invoke-virtual {v8, v9, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 194
    .line 195
    .line 196
    move-result v3

    .line 197
    const/16 v9, 0x2a

    .line 198
    .line 199
    move/from16 v22, v3

    .line 200
    .line 201
    const v3, 0x7f08064f

    .line 202
    .line 203
    .line 204
    invoke-virtual {v8, v9, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 205
    .line 206
    .line 207
    move-result v3

    .line 208
    iget v9, v1, LD1/v;->d1:I

    .line 209
    .line 210
    move/from16 v23, v3

    .line 211
    .line 212
    const/16 v3, 0x20

    .line 213
    .line 214
    invoke-virtual {v8, v3, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 215
    .line 216
    .line 217
    move-result v3

    .line 218
    iput v3, v1, LD1/v;->d1:I

    .line 219
    .line 220
    iget v3, v1, LD1/v;->g1:I

    .line 221
    .line 222
    const/16 v9, 0x13

    .line 223
    .line 224
    invoke-virtual {v8, v9, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 225
    .line 226
    .line 227
    move-result v3

    .line 228
    iput v3, v1, LD1/v;->g1:I

    .line 229
    .line 230
    const/16 v3, 0x1d

    .line 231
    .line 232
    const/4 v9, 0x1

    .line 233
    invoke-virtual {v8, v3, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 234
    .line 235
    .line 236
    move-result v3

    .line 237
    move/from16 v25, v3

    .line 238
    .line 239
    const/16 v3, 0x1a

    .line 240
    .line 241
    invoke-virtual {v8, v3, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 242
    .line 243
    .line 244
    move-result v3

    .line 245
    move/from16 v26, v3

    .line 246
    .line 247
    const/16 v3, 0x1c

    .line 248
    .line 249
    invoke-virtual {v8, v3, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 250
    .line 251
    .line 252
    move-result v3

    .line 253
    move/from16 v27, v3

    .line 254
    .line 255
    const/16 v3, 0x1b

    .line 256
    .line 257
    invoke-virtual {v8, v3, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 258
    .line 259
    .line 260
    move-result v3

    .line 261
    const/16 v9, 0x1e

    .line 262
    .line 263
    move/from16 v28, v3

    .line 264
    .line 265
    const/4 v3, 0x0

    .line 266
    invoke-virtual {v8, v9, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 267
    .line 268
    .line 269
    move-result v9

    .line 270
    move/from16 v29, v6

    .line 271
    .line 272
    const/16 v6, 0x1f

    .line 273
    .line 274
    invoke-virtual {v8, v6, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 275
    .line 276
    .line 277
    move-result v6

    .line 278
    move/from16 v30, v6

    .line 279
    .line 280
    const/16 v6, 0x21

    .line 281
    .line 282
    invoke-virtual {v8, v6, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 283
    .line 284
    .line 285
    move-result v6

    .line 286
    move/from16 v31, v6

    .line 287
    .line 288
    const/16 v6, 0x27

    .line 289
    .line 290
    invoke-virtual {v8, v6, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 291
    .line 292
    .line 293
    move-result v6

    .line 294
    iput-boolean v6, v1, LD1/v;->e1:Z

    .line 295
    .line 296
    iget v3, v1, LD1/v;->f1:I

    .line 297
    .line 298
    const/16 v6, 0x26

    .line 299
    .line 300
    invoke-virtual {v8, v6, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 301
    .line 302
    .line 303
    move-result v3

    .line 304
    invoke-virtual {v1, v3}, LD1/v;->setTimeBarMinUpdateInterval(I)V

    .line 305
    .line 306
    .line 307
    const/4 v3, 0x1

    .line 308
    const/4 v6, 0x2

    .line 309
    invoke-virtual {v8, v6, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 310
    .line 311
    .line 312
    move-result v32
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 313
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    .line 314
    .line 315
    .line 316
    move/from16 v6, v21

    .line 317
    .line 318
    move/from16 v33, v25

    .line 319
    .line 320
    move/from16 v34, v26

    .line 321
    .line 322
    move/from16 v35, v27

    .line 323
    .line 324
    move/from16 v36, v28

    .line 325
    .line 326
    move/from16 v8, v29

    .line 327
    .line 328
    move/from16 v3, v32

    .line 329
    .line 330
    move/from16 v26, v12

    .line 331
    .line 332
    move v12, v14

    .line 333
    move/from16 v21, v18

    .line 334
    .line 335
    move/from16 v25, v24

    .line 336
    .line 337
    move/from16 v24, v7

    .line 338
    .line 339
    move/from16 v18, v9

    .line 340
    .line 341
    move v7, v10

    .line 342
    move/from16 v9, v22

    .line 343
    .line 344
    move/from16 v10, v23

    .line 345
    .line 346
    move/from16 v23, v16

    .line 347
    .line 348
    move/from16 v22, v17

    .line 349
    .line 350
    move/from16 v17, v30

    .line 351
    .line 352
    move/from16 v16, v31

    .line 353
    .line 354
    move/from16 v37, v15

    .line 355
    .line 356
    move v15, v11

    .line 357
    move/from16 v11, v37

    .line 358
    .line 359
    move/from16 v38, v20

    .line 360
    .line 361
    move/from16 v20, v19

    .line 362
    .line 363
    move/from16 v19, v38

    .line 364
    .line 365
    goto :goto_0

    .line 366
    :catchall_0
    move-exception v0

    .line 367
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    .line 368
    .line 369
    .line 370
    throw v0

    .line 371
    :cond_0
    const v3, 0x7f08064f

    .line 372
    .line 373
    .line 374
    const v7, 0x7f08063b

    .line 375
    .line 376
    .line 377
    const v8, 0x7f08063c

    .line 378
    .line 379
    .line 380
    const v9, 0x7f080644

    .line 381
    .line 382
    .line 383
    const v16, 0x7f080645

    .line 384
    .line 385
    .line 386
    const v17, 0x7f080643

    .line 387
    .line 388
    .line 389
    const v18, 0x7f080649

    .line 390
    .line 391
    .line 392
    const v19, 0x7f080648

    .line 393
    .line 394
    .line 395
    const v20, 0x7f08064e

    .line 396
    .line 397
    .line 398
    const v21, 0x7f08064d

    .line 399
    .line 400
    .line 401
    const/4 v3, 0x1

    .line 402
    const v6, 0x7f08064e

    .line 403
    .line 404
    .line 405
    const v7, 0x7f0e007b

    .line 406
    .line 407
    .line 408
    const v8, 0x7f08064b

    .line 409
    .line 410
    .line 411
    const v9, 0x7f08064d

    .line 412
    .line 413
    .line 414
    const v10, 0x7f08064f

    .line 415
    .line 416
    .line 417
    const v11, 0x7f080642

    .line 418
    .line 419
    .line 420
    const v12, 0x7f08064a

    .line 421
    .line 422
    .line 423
    const v15, 0x7f080641

    .line 424
    .line 425
    .line 426
    const/16 v16, 0x0

    .line 427
    .line 428
    const/16 v17, 0x0

    .line 429
    .line 430
    const/16 v18, 0x0

    .line 431
    .line 432
    const v20, 0x7f080649

    .line 433
    .line 434
    .line 435
    const v21, 0x7f080643

    .line 436
    .line 437
    .line 438
    const v22, 0x7f080645

    .line 439
    .line 440
    .line 441
    const v23, 0x7f080644

    .line 442
    .line 443
    .line 444
    const v24, 0x7f08063b

    .line 445
    .line 446
    .line 447
    const v25, 0x7f08063c

    .line 448
    .line 449
    .line 450
    const v26, 0x7f080640

    .line 451
    .line 452
    .line 453
    const/16 v33, 0x1

    .line 454
    .line 455
    const/16 v34, 0x1

    .line 456
    .line 457
    const/16 v35, 0x1

    .line 458
    .line 459
    const/16 v36, 0x1

    .line 460
    .line 461
    :goto_0
    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 462
    .line 463
    .line 464
    move-result-object v14

    .line 465
    invoke-virtual {v14, v7, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 466
    .line 467
    .line 468
    const/high16 v7, 0x40000

    .line 469
    .line 470
    invoke-virtual {v1, v7}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 471
    .line 472
    .line 473
    new-instance v7, LD1/k;

    .line 474
    .line 475
    invoke-direct {v7, v1}, LD1/k;-><init>(LD1/v;)V

    .line 476
    .line 477
    .line 478
    iput-object v7, v1, LD1/v;->I:LD1/k;

    .line 479
    .line 480
    new-instance v7, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 481
    .line 482
    invoke-direct {v7}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 483
    .line 484
    .line 485
    iput-object v7, v1, LD1/v;->P:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 486
    .line 487
    new-instance v7, Lm0/d0;

    .line 488
    .line 489
    invoke-direct {v7}, Lm0/d0;-><init>()V

    .line 490
    .line 491
    .line 492
    iput-object v7, v1, LD1/v;->w0:Lm0/d0;

    .line 493
    .line 494
    new-instance v7, Lm0/e0;

    .line 495
    .line 496
    invoke-direct {v7}, Lm0/e0;-><init>()V

    .line 497
    .line 498
    .line 499
    iput-object v7, v1, LD1/v;->x0:Lm0/e0;

    .line 500
    .line 501
    new-instance v7, Ljava/lang/StringBuilder;

    .line 502
    .line 503
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 504
    .line 505
    .line 506
    iput-object v7, v1, LD1/v;->u0:Ljava/lang/StringBuilder;

    .line 507
    .line 508
    new-instance v14, Ljava/util/Formatter;

    .line 509
    .line 510
    move/from16 v27, v15

    .line 511
    .line 512
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 513
    .line 514
    .line 515
    move-result-object v15

    .line 516
    invoke-direct {v14, v7, v15}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    .line 517
    .line 518
    .line 519
    iput-object v14, v1, LD1/v;->v0:Ljava/util/Formatter;

    .line 520
    .line 521
    const/4 v7, 0x0

    .line 522
    new-array v14, v7, [J

    .line 523
    .line 524
    iput-object v14, v1, LD1/v;->h1:[J

    .line 525
    .line 526
    new-array v14, v7, [Z

    .line 527
    .line 528
    iput-object v14, v1, LD1/v;->i1:[Z

    .line 529
    .line 530
    new-array v14, v7, [J

    .line 531
    .line 532
    iput-object v14, v1, LD1/v;->j1:[J

    .line 533
    .line 534
    new-array v14, v7, [Z

    .line 535
    .line 536
    iput-object v14, v1, LD1/v;->k1:[Z

    .line 537
    .line 538
    new-instance v7, La/b;

    .line 539
    .line 540
    const/16 v14, 0x17

    .line 541
    .line 542
    invoke-direct {v7, v1, v14}, La/b;-><init>(Ljava/lang/Object;I)V

    .line 543
    .line 544
    .line 545
    iput-object v7, v1, LD1/v;->y0:La/b;

    .line 546
    .line 547
    :try_start_1
    const-class v7, Landroidx/media3/exoplayer/ExoPlayer;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_2

    .line 548
    .line 549
    const/4 v15, 0x1

    .line 550
    :try_start_2
    new-array v14, v15, [Ljava/lang/Class;

    .line 551
    .line 552
    sget-object v15, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_1

    .line 553
    .line 554
    move/from16 v29, v9

    .line 555
    .line 556
    const/4 v9, 0x0

    .line 557
    :try_start_3
    aput-object v15, v14, v9
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_0

    .line 558
    .line 559
    const-string v15, "setScrubbingModeEnabled"

    .line 560
    .line 561
    :try_start_4
    invoke-virtual {v7, v15, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 562
    .line 563
    .line 564
    move-result-object v14
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_4} :catch_0

    .line 565
    :try_start_5
    new-array v15, v9, [Ljava/lang/Class;
    :try_end_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5 .. :try_end_5} :catch_3

    .line 566
    .line 567
    const-string v9, "isScrubbingModeEnabled"

    .line 568
    .line 569
    :try_start_6
    invoke-virtual {v7, v9, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 570
    .line 571
    .line 572
    move-result-object v9
    :try_end_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_6 .. :try_end_6} :catch_3

    .line 573
    goto :goto_3

    .line 574
    :catch_0
    :goto_1
    const/4 v14, 0x0

    .line 575
    goto :goto_2

    .line 576
    :catch_1
    move/from16 v29, v9

    .line 577
    .line 578
    goto :goto_1

    .line 579
    :catch_2
    move/from16 v29, v9

    .line 580
    .line 581
    const/4 v7, 0x0

    .line 582
    goto :goto_1

    .line 583
    :catch_3
    :goto_2
    const/4 v9, 0x0

    .line 584
    :goto_3
    iput-object v7, v1, LD1/v;->J:Ljava/lang/Class;

    .line 585
    .line 586
    iput-object v14, v1, LD1/v;->K:Ljava/lang/reflect/Method;

    .line 587
    .line 588
    iput-object v9, v1, LD1/v;->L:Ljava/lang/reflect/Method;

    .line 589
    .line 590
    :try_start_7
    const-class v7, LC1/a;

    .line 591
    .line 592
    sget v9, LC1/a;->H:I
    :try_end_7
    .catch Ljava/lang/ClassNotFoundException; {:try_start_7 .. :try_end_7} :catch_6
    .catch Ljava/lang/NoSuchMethodException; {:try_start_7 .. :try_end_7} :catch_6

    .line 593
    .line 594
    const/4 v9, 0x1

    .line 595
    :try_start_8
    new-array v14, v9, [Ljava/lang/Class;

    .line 596
    .line 597
    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 598
    .line 599
    const/4 v15, 0x0

    .line 600
    aput-object v9, v14, v15

    .line 601
    .line 602
    invoke-virtual {v7, v5, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 603
    .line 604
    .line 605
    move-result-object v5
    :try_end_8
    .catch Ljava/lang/ClassNotFoundException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_8 .. :try_end_8} :catch_5

    .line 606
    :try_start_9
    new-array v9, v15, [Ljava/lang/Class;

    .line 607
    .line 608
    invoke-virtual {v7, v4, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 609
    .line 610
    .line 611
    move-result-object v4
    :try_end_9
    .catch Ljava/lang/ClassNotFoundException; {:try_start_9 .. :try_end_9} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_9 .. :try_end_9} :catch_4

    .line 612
    goto :goto_5

    .line 613
    :catch_4
    nop

    .line 614
    goto :goto_4

    .line 615
    :catch_5
    nop

    .line 616
    const/4 v5, 0x0

    .line 617
    goto :goto_4

    .line 618
    :catch_6
    nop

    .line 619
    const/4 v5, 0x0

    .line 620
    const/4 v7, 0x0

    .line 621
    :goto_4
    const/4 v4, 0x0

    .line 622
    :goto_5
    iput-object v7, v1, LD1/v;->M:Ljava/lang/Class;

    .line 623
    .line 624
    iput-object v5, v1, LD1/v;->N:Ljava/lang/reflect/Method;

    .line 625
    .line 626
    iput-object v4, v1, LD1/v;->O:Ljava/lang/reflect/Method;

    .line 627
    .line 628
    const v4, 0x7f0b01ed

    .line 629
    .line 630
    .line 631
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 632
    .line 633
    .line 634
    move-result-object v4

    .line 635
    check-cast v4, Landroid/widget/TextView;

    .line 636
    .line 637
    iput-object v4, v1, LD1/v;->r0:Landroid/widget/TextView;

    .line 638
    .line 639
    const v4, 0x7f0b0202

    .line 640
    .line 641
    .line 642
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 643
    .line 644
    .line 645
    move-result-object v4

    .line 646
    check-cast v4, Landroid/widget/TextView;

    .line 647
    .line 648
    iput-object v4, v1, LD1/v;->s0:Landroid/widget/TextView;

    .line 649
    .line 650
    const v4, 0x7f0b020e

    .line 651
    .line 652
    .line 653
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 654
    .line 655
    .line 656
    move-result-object v4

    .line 657
    check-cast v4, Landroid/widget/ImageView;

    .line 658
    .line 659
    iput-object v4, v1, LD1/v;->l0:Landroid/widget/ImageView;

    .line 660
    .line 661
    if-eqz v4, :cond_1

    .line 662
    .line 663
    iget-object v5, v1, LD1/v;->I:LD1/k;

    .line 664
    .line 665
    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 666
    .line 667
    .line 668
    :cond_1
    const v4, 0x7f0b01f3

    .line 669
    .line 670
    .line 671
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 672
    .line 673
    .line 674
    move-result-object v4

    .line 675
    check-cast v4, Landroid/widget/ImageView;

    .line 676
    .line 677
    iput-object v4, v1, LD1/v;->m0:Landroid/widget/ImageView;

    .line 678
    .line 679
    new-instance v5, LD1/g;

    .line 680
    .line 681
    const/4 v7, 0x0

    .line 682
    invoke-direct {v5, v1, v7}, LD1/g;-><init>(LD1/v;I)V

    .line 683
    .line 684
    .line 685
    if-nez v4, :cond_2

    .line 686
    .line 687
    goto :goto_6

    .line 688
    :cond_2
    const/16 v7, 0x8

    .line 689
    .line 690
    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 691
    .line 692
    .line 693
    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 694
    .line 695
    .line 696
    :goto_6
    const v4, 0x7f0b01f8

    .line 697
    .line 698
    .line 699
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 700
    .line 701
    .line 702
    move-result-object v4

    .line 703
    check-cast v4, Landroid/widget/ImageView;

    .line 704
    .line 705
    iput-object v4, v1, LD1/v;->n0:Landroid/widget/ImageView;

    .line 706
    .line 707
    new-instance v5, LD1/g;

    .line 708
    .line 709
    const/4 v7, 0x1

    .line 710
    invoke-direct {v5, v1, v7}, LD1/g;-><init>(LD1/v;I)V

    .line 711
    .line 712
    .line 713
    if-nez v4, :cond_3

    .line 714
    .line 715
    goto :goto_7

    .line 716
    :cond_3
    const/16 v7, 0x8

    .line 717
    .line 718
    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 719
    .line 720
    .line 721
    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 722
    .line 723
    .line 724
    :goto_7
    const v4, 0x7f0b0209

    .line 725
    .line 726
    .line 727
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 728
    .line 729
    .line 730
    move-result-object v4

    .line 731
    iput-object v4, v1, LD1/v;->o0:Landroid/view/View;

    .line 732
    .line 733
    if-eqz v4, :cond_4

    .line 734
    .line 735
    iget-object v5, v1, LD1/v;->I:LD1/k;

    .line 736
    .line 737
    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 738
    .line 739
    .line 740
    :cond_4
    const v4, 0x7f0b0200

    .line 741
    .line 742
    .line 743
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 744
    .line 745
    .line 746
    move-result-object v4

    .line 747
    iput-object v4, v1, LD1/v;->p0:Landroid/view/View;

    .line 748
    .line 749
    if-eqz v4, :cond_5

    .line 750
    .line 751
    iget-object v5, v1, LD1/v;->I:LD1/k;

    .line 752
    .line 753
    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 754
    .line 755
    .line 756
    :cond_5
    const v4, 0x7f0b01e3

    .line 757
    .line 758
    .line 759
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 760
    .line 761
    .line 762
    move-result-object v4

    .line 763
    iput-object v4, v1, LD1/v;->q0:Landroid/view/View;

    .line 764
    .line 765
    if-eqz v4, :cond_6

    .line 766
    .line 767
    iget-object v5, v1, LD1/v;->I:LD1/k;

    .line 768
    .line 769
    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 770
    .line 771
    .line 772
    :cond_6
    const v4, 0x7f0b0204

    .line 773
    .line 774
    .line 775
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 776
    .line 777
    .line 778
    move-result-object v5

    .line 779
    check-cast v5, LD1/O;

    .line 780
    .line 781
    const v7, 0x7f0b0205

    .line 782
    .line 783
    .line 784
    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 785
    .line 786
    .line 787
    move-result-object v7

    .line 788
    if-eqz v5, :cond_7

    .line 789
    .line 790
    iput-object v5, v1, LD1/v;->t0:LD1/O;

    .line 791
    .line 792
    goto :goto_8

    .line 793
    :cond_7
    if-eqz v7, :cond_8

    .line 794
    .line 795
    new-instance v5, LD1/e;

    .line 796
    .line 797
    invoke-direct {v5, v0, v2}, LD1/e;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 798
    .line 799
    .line 800
    invoke-virtual {v5, v4}, Landroid/view/View;->setId(I)V

    .line 801
    .line 802
    .line 803
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 804
    .line 805
    .line 806
    move-result-object v2

    .line 807
    invoke-virtual {v5, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 808
    .line 809
    .line 810
    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 811
    .line 812
    .line 813
    move-result-object v2

    .line 814
    check-cast v2, Landroid/view/ViewGroup;

    .line 815
    .line 816
    invoke-virtual {v2, v7}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    .line 817
    .line 818
    .line 819
    move-result v4

    .line 820
    invoke-virtual {v2, v7}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 821
    .line 822
    .line 823
    invoke-virtual {v2, v5, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 824
    .line 825
    .line 826
    iput-object v5, v1, LD1/v;->t0:LD1/O;

    .line 827
    .line 828
    goto :goto_8

    .line 829
    :cond_8
    const/4 v2, 0x0

    .line 830
    iput-object v2, v1, LD1/v;->t0:LD1/O;

    .line 831
    .line 832
    :goto_8
    iget-object v2, v1, LD1/v;->t0:LD1/O;

    .line 833
    .line 834
    if-eqz v2, :cond_9

    .line 835
    .line 836
    iget-object v4, v1, LD1/v;->I:LD1/k;

    .line 837
    .line 838
    check-cast v2, LD1/e;

    .line 839
    .line 840
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 841
    .line 842
    .line 843
    iget-object v2, v2, LD1/e;->g0:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 844
    .line 845
    invoke-virtual {v2, v4}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 846
    .line 847
    .line 848
    :cond_9
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 849
    .line 850
    .line 851
    move-result-object v2

    .line 852
    iput-object v2, v1, LD1/v;->H:Landroid/content/res/Resources;

    .line 853
    .line 854
    const v4, 0x7f0b01ff

    .line 855
    .line 856
    .line 857
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 858
    .line 859
    .line 860
    move-result-object v4

    .line 861
    check-cast v4, Landroid/widget/ImageView;

    .line 862
    .line 863
    iput-object v4, v1, LD1/v;->d0:Landroid/widget/ImageView;

    .line 864
    .line 865
    if-eqz v4, :cond_a

    .line 866
    .line 867
    iget-object v5, v1, LD1/v;->I:LD1/k;

    .line 868
    .line 869
    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 870
    .line 871
    .line 872
    :cond_a
    const v4, 0x7f0b0203

    .line 873
    .line 874
    .line 875
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 876
    .line 877
    .line 878
    move-result-object v4

    .line 879
    check-cast v4, Landroid/widget/ImageView;

    .line 880
    .line 881
    iput-object v4, v1, LD1/v;->b0:Landroid/widget/ImageView;

    .line 882
    .line 883
    if-eqz v4, :cond_b

    .line 884
    .line 885
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 886
    .line 887
    .line 888
    move-result-object v5

    .line 889
    invoke-virtual {v2, v11, v5}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    .line 890
    .line 891
    .line 892
    move-result-object v5

    .line 893
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 894
    .line 895
    .line 896
    iget-object v5, v1, LD1/v;->I:LD1/k;

    .line 897
    .line 898
    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 899
    .line 900
    .line 901
    :cond_b
    const v5, 0x7f0b01f9

    .line 902
    .line 903
    .line 904
    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 905
    .line 906
    .line 907
    move-result-object v5

    .line 908
    check-cast v5, Landroid/widget/ImageView;

    .line 909
    .line 910
    iput-object v5, v1, LD1/v;->c0:Landroid/widget/ImageView;

    .line 911
    .line 912
    if-eqz v5, :cond_c

    .line 913
    .line 914
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 915
    .line 916
    .line 917
    move-result-object v7

    .line 918
    invoke-virtual {v2, v13, v7}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    .line 919
    .line 920
    .line 921
    move-result-object v7

    .line 922
    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 923
    .line 924
    .line 925
    iget-object v7, v1, LD1/v;->I:LD1/k;

    .line 926
    .line 927
    invoke-virtual {v5, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 928
    .line 929
    .line 930
    :cond_c
    const v7, 0x7f090005

    .line 931
    .line 932
    .line 933
    invoke-static {v0, v7}, LF/n;->b(Landroid/content/Context;I)Landroid/graphics/Typeface;

    .line 934
    .line 935
    .line 936
    move-result-object v7

    .line 937
    const v9, 0x7f0b0207

    .line 938
    .line 939
    .line 940
    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 941
    .line 942
    .line 943
    move-result-object v9

    .line 944
    check-cast v9, Landroid/widget/ImageView;

    .line 945
    .line 946
    const v11, 0x7f0b0208

    .line 947
    .line 948
    .line 949
    invoke-virtual {v1, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 950
    .line 951
    .line 952
    move-result-object v11

    .line 953
    check-cast v11, Landroid/widget/TextView;

    .line 954
    .line 955
    if-eqz v9, :cond_d

    .line 956
    .line 957
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 958
    .line 959
    .line 960
    move-result-object v11

    .line 961
    invoke-virtual {v2, v8, v11}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    .line 962
    .line 963
    .line 964
    move-result-object v8

    .line 965
    invoke-virtual {v9, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 966
    .line 967
    .line 968
    iput-object v9, v1, LD1/v;->f0:Landroid/view/View;

    .line 969
    .line 970
    const/4 v8, 0x0

    .line 971
    iput-object v8, v1, LD1/v;->h0:Landroid/widget/TextView;

    .line 972
    .line 973
    goto :goto_9

    .line 974
    :cond_d
    const/4 v8, 0x0

    .line 975
    if-eqz v11, :cond_e

    .line 976
    .line 977
    invoke-virtual {v11, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 978
    .line 979
    .line 980
    iput-object v11, v1, LD1/v;->h0:Landroid/widget/TextView;

    .line 981
    .line 982
    iput-object v11, v1, LD1/v;->f0:Landroid/view/View;

    .line 983
    .line 984
    goto :goto_9

    .line 985
    :cond_e
    iput-object v8, v1, LD1/v;->h0:Landroid/widget/TextView;

    .line 986
    .line 987
    iput-object v8, v1, LD1/v;->f0:Landroid/view/View;

    .line 988
    .line 989
    :goto_9
    iget-object v8, v1, LD1/v;->f0:Landroid/view/View;

    .line 990
    .line 991
    if-eqz v8, :cond_f

    .line 992
    .line 993
    iget-object v9, v1, LD1/v;->I:LD1/k;

    .line 994
    .line 995
    invoke-virtual {v8, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 996
    .line 997
    .line 998
    :cond_f
    const v8, 0x7f0b01f1

    .line 999
    .line 1000
    .line 1001
    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 1002
    .line 1003
    .line 1004
    move-result-object v8

    .line 1005
    check-cast v8, Landroid/widget/ImageView;

    .line 1006
    .line 1007
    const v9, 0x7f0b01f2

    .line 1008
    .line 1009
    .line 1010
    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 1011
    .line 1012
    .line 1013
    move-result-object v9

    .line 1014
    check-cast v9, Landroid/widget/TextView;

    .line 1015
    .line 1016
    if-eqz v8, :cond_10

    .line 1017
    .line 1018
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 1019
    .line 1020
    .line 1021
    move-result-object v7

    .line 1022
    invoke-virtual {v2, v12, v7}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    .line 1023
    .line 1024
    .line 1025
    move-result-object v7

    .line 1026
    invoke-virtual {v8, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1027
    .line 1028
    .line 1029
    iput-object v8, v1, LD1/v;->e0:Landroid/view/View;

    .line 1030
    .line 1031
    const/4 v8, 0x0

    .line 1032
    iput-object v8, v1, LD1/v;->g0:Landroid/widget/TextView;

    .line 1033
    .line 1034
    goto :goto_a

    .line 1035
    :cond_10
    const/4 v8, 0x0

    .line 1036
    if-eqz v9, :cond_11

    .line 1037
    .line 1038
    invoke-virtual {v9, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1039
    .line 1040
    .line 1041
    iput-object v9, v1, LD1/v;->g0:Landroid/widget/TextView;

    .line 1042
    .line 1043
    iput-object v9, v1, LD1/v;->e0:Landroid/view/View;

    .line 1044
    .line 1045
    goto :goto_a

    .line 1046
    :cond_11
    iput-object v8, v1, LD1/v;->g0:Landroid/widget/TextView;

    .line 1047
    .line 1048
    iput-object v8, v1, LD1/v;->e0:Landroid/view/View;

    .line 1049
    .line 1050
    :goto_a
    iget-object v7, v1, LD1/v;->e0:Landroid/view/View;

    .line 1051
    .line 1052
    if-eqz v7, :cond_12

    .line 1053
    .line 1054
    iget-object v8, v1, LD1/v;->I:LD1/k;

    .line 1055
    .line 1056
    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1057
    .line 1058
    .line 1059
    :cond_12
    const v7, 0x7f0b0206

    .line 1060
    .line 1061
    .line 1062
    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 1063
    .line 1064
    .line 1065
    move-result-object v7

    .line 1066
    check-cast v7, Landroid/widget/ImageView;

    .line 1067
    .line 1068
    iput-object v7, v1, LD1/v;->i0:Landroid/widget/ImageView;

    .line 1069
    .line 1070
    if-eqz v7, :cond_13

    .line 1071
    .line 1072
    iget-object v8, v1, LD1/v;->I:LD1/k;

    .line 1073
    .line 1074
    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1075
    .line 1076
    .line 1077
    :cond_13
    const v8, 0x7f0b020b

    .line 1078
    .line 1079
    .line 1080
    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 1081
    .line 1082
    .line 1083
    move-result-object v8

    .line 1084
    check-cast v8, Landroid/widget/ImageView;

    .line 1085
    .line 1086
    iput-object v8, v1, LD1/v;->j0:Landroid/widget/ImageView;

    .line 1087
    .line 1088
    if-eqz v8, :cond_14

    .line 1089
    .line 1090
    iget-object v9, v1, LD1/v;->I:LD1/k;

    .line 1091
    .line 1092
    invoke-virtual {v8, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1093
    .line 1094
    .line 1095
    :cond_14
    const v9, 0x7f0c000a

    .line 1096
    .line 1097
    .line 1098
    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getInteger(I)I

    .line 1099
    .line 1100
    .line 1101
    move-result v9

    .line 1102
    int-to-float v9, v9

    .line 1103
    const/high16 v11, 0x42c80000    # 100.0f

    .line 1104
    .line 1105
    div-float/2addr v9, v11

    .line 1106
    iput v9, v1, LD1/v;->J0:F

    .line 1107
    .line 1108
    const v9, 0x7f0c0009

    .line 1109
    .line 1110
    .line 1111
    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getInteger(I)I

    .line 1112
    .line 1113
    .line 1114
    move-result v9

    .line 1115
    int-to-float v9, v9

    .line 1116
    div-float/2addr v9, v11

    .line 1117
    iput v9, v1, LD1/v;->K0:F

    .line 1118
    .line 1119
    const v9, 0x7f0b0213

    .line 1120
    .line 1121
    .line 1122
    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 1123
    .line 1124
    .line 1125
    move-result-object v9

    .line 1126
    check-cast v9, Landroid/widget/ImageView;

    .line 1127
    .line 1128
    iput-object v9, v1, LD1/v;->k0:Landroid/widget/ImageView;

    .line 1129
    .line 1130
    if-eqz v9, :cond_15

    .line 1131
    .line 1132
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 1133
    .line 1134
    .line 1135
    move-result-object v11

    .line 1136
    invoke-virtual {v2, v10, v11}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    .line 1137
    .line 1138
    .line 1139
    move-result-object v10

    .line 1140
    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1141
    .line 1142
    .line 1143
    const/4 v10, 0x0

    .line 1144
    invoke-virtual {v1, v9, v10}, LD1/v;->n(Landroid/view/View;Z)V

    .line 1145
    .line 1146
    .line 1147
    :cond_15
    new-instance v10, LD1/B;

    .line 1148
    .line 1149
    invoke-direct {v10, v1}, LD1/B;-><init>(LD1/v;)V

    .line 1150
    .line 1151
    .line 1152
    iput-object v10, v1, LD1/v;->G:LD1/B;

    .line 1153
    .line 1154
    iput-boolean v3, v10, LD1/B;->C:Z

    .line 1155
    .line 1156
    const v3, 0x7f1300b4

    .line 1157
    .line 1158
    .line 1159
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 1160
    .line 1161
    .line 1162
    move-result-object v3

    .line 1163
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 1164
    .line 1165
    .line 1166
    move-result-object v11

    .line 1167
    const v12, 0x7f08064c

    .line 1168
    .line 1169
    .line 1170
    invoke-virtual {v2, v12, v11}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    .line 1171
    .line 1172
    .line 1173
    move-result-object v11

    .line 1174
    const v12, 0x7f1300d5

    .line 1175
    .line 1176
    .line 1177
    invoke-virtual {v2, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 1178
    .line 1179
    .line 1180
    move-result-object v12

    .line 1181
    filled-new-array {v3, v12}, [Ljava/lang/String;

    .line 1182
    .line 1183
    .line 1184
    move-result-object v3

    .line 1185
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 1186
    .line 1187
    .line 1188
    move-result-object v12

    .line 1189
    const v13, 0x7f080638

    .line 1190
    .line 1191
    .line 1192
    invoke-virtual {v2, v13, v12}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    .line 1193
    .line 1194
    .line 1195
    move-result-object v12

    .line 1196
    const/4 v13, 0x2

    .line 1197
    new-array v13, v13, [Landroid/graphics/drawable/Drawable;

    .line 1198
    .line 1199
    const/4 v14, 0x0

    .line 1200
    aput-object v11, v13, v14

    .line 1201
    .line 1202
    const/4 v11, 0x1

    .line 1203
    aput-object v12, v13, v11

    .line 1204
    .line 1205
    new-instance v11, LD1/q;

    .line 1206
    .line 1207
    invoke-direct {v11, v1, v3, v13}, LD1/q;-><init>(LD1/v;[Ljava/lang/String;[Landroid/graphics/drawable/Drawable;)V

    .line 1208
    .line 1209
    .line 1210
    iput-object v11, v1, LD1/v;->R:LD1/q;

    .line 1211
    .line 1212
    const v3, 0x7f0700c3

    .line 1213
    .line 1214
    .line 1215
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 1216
    .line 1217
    .line 1218
    move-result v3

    .line 1219
    iput v3, v1, LD1/v;->a0:I

    .line 1220
    .line 1221
    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 1222
    .line 1223
    .line 1224
    move-result-object v3

    .line 1225
    const v12, 0x7f0e007d

    .line 1226
    .line 1227
    .line 1228
    const/4 v13, 0x0

    .line 1229
    invoke-virtual {v3, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 1230
    .line 1231
    .line 1232
    move-result-object v3

    .line 1233
    check-cast v3, Landroidx/recyclerview/widget/RecyclerView;

    .line 1234
    .line 1235
    iput-object v3, v1, LD1/v;->Q:Landroidx/recyclerview/widget/RecyclerView;

    .line 1236
    .line 1237
    invoke-virtual {v3, v11}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(LO1/C;)V

    .line 1238
    .line 1239
    .line 1240
    new-instance v11, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 1241
    .line 1242
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 1243
    .line 1244
    .line 1245
    const/4 v12, 0x1

    .line 1246
    invoke-direct {v11, v12}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    .line 1247
    .line 1248
    .line 1249
    invoke-virtual {v3, v11}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(LO1/L;)V

    .line 1250
    .line 1251
    .line 1252
    new-instance v11, Landroid/widget/PopupWindow;

    .line 1253
    .line 1254
    const/4 v13, -0x2

    .line 1255
    invoke-direct {v11, v3, v13, v13, v12}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    .line 1256
    .line 1257
    .line 1258
    iput-object v11, v1, LD1/v;->W:Landroid/widget/PopupWindow;

    .line 1259
    .line 1260
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 1261
    .line 1262
    const/16 v13, 0x17

    .line 1263
    .line 1264
    if-ge v3, v13, :cond_16

    .line 1265
    .line 1266
    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    .line 1267
    .line 1268
    const/4 v13, 0x0

    .line 1269
    invoke-direct {v3, v13}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 1270
    .line 1271
    .line 1272
    invoke-virtual {v11, v3}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1273
    .line 1274
    .line 1275
    :cond_16
    iget-object v3, v1, LD1/v;->I:LD1/k;

    .line 1276
    .line 1277
    invoke-virtual {v11, v3}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 1278
    .line 1279
    .line 1280
    iput-boolean v12, v1, LD1/v;->m1:Z

    .line 1281
    .line 1282
    new-instance v3, LD1/f;

    .line 1283
    .line 1284
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 1285
    .line 1286
    .line 1287
    move-result-object v11

    .line 1288
    invoke-direct {v3, v11}, LD1/f;-><init>(Landroid/content/res/Resources;)V

    .line 1289
    .line 1290
    .line 1291
    iput-object v3, v1, LD1/v;->V:LD1/f;

    .line 1292
    .line 1293
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 1294
    .line 1295
    .line 1296
    move-result-object v3

    .line 1297
    invoke-virtual {v2, v6, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    .line 1298
    .line 1299
    .line 1300
    move-result-object v3

    .line 1301
    iput-object v3, v1, LD1/v;->N0:Landroid/graphics/drawable/Drawable;

    .line 1302
    .line 1303
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 1304
    .line 1305
    .line 1306
    move-result-object v3

    .line 1307
    move/from16 v6, v29

    .line 1308
    .line 1309
    invoke-virtual {v2, v6, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    .line 1310
    .line 1311
    .line 1312
    move-result-object v3

    .line 1313
    iput-object v3, v1, LD1/v;->O0:Landroid/graphics/drawable/Drawable;

    .line 1314
    .line 1315
    const v3, 0x7f1300a9

    .line 1316
    .line 1317
    .line 1318
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 1319
    .line 1320
    .line 1321
    move-result-object v3

    .line 1322
    iput-object v3, v1, LD1/v;->P0:Ljava/lang/String;

    .line 1323
    .line 1324
    const v3, 0x7f1300a8

    .line 1325
    .line 1326
    .line 1327
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 1328
    .line 1329
    .line 1330
    move-result-object v3

    .line 1331
    iput-object v3, v1, LD1/v;->Q0:Ljava/lang/String;

    .line 1332
    .line 1333
    new-instance v3, LD1/j;

    .line 1334
    .line 1335
    const/4 v6, 0x0

    .line 1336
    const/4 v11, 0x1

    .line 1337
    invoke-direct {v3, v1, v11, v6}, LD1/j;-><init>(LD1/v;II)V

    .line 1338
    .line 1339
    .line 1340
    iput-object v3, v1, LD1/v;->T:LD1/j;

    .line 1341
    .line 1342
    new-instance v3, LD1/j;

    .line 1343
    .line 1344
    invoke-direct {v3, v1, v6, v6}, LD1/j;-><init>(LD1/v;II)V

    .line 1345
    .line 1346
    .line 1347
    iput-object v3, v1, LD1/v;->U:LD1/j;

    .line 1348
    .line 1349
    new-instance v3, LD1/n;

    .line 1350
    .line 1351
    const v6, 0x7f030002

    .line 1352
    .line 1353
    .line 1354
    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 1355
    .line 1356
    .line 1357
    move-result-object v6

    .line 1358
    sget-object v11, LD1/v;->n1:[F

    .line 1359
    .line 1360
    invoke-direct {v3, v1, v6, v11}, LD1/n;-><init>(LD1/v;[Ljava/lang/String;[F)V

    .line 1361
    .line 1362
    .line 1363
    iput-object v3, v1, LD1/v;->S:LD1/n;

    .line 1364
    .line 1365
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 1366
    .line 1367
    .line 1368
    move-result-object v3

    .line 1369
    move/from16 v11, v27

    .line 1370
    .line 1371
    invoke-virtual {v2, v11, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    .line 1372
    .line 1373
    .line 1374
    move-result-object v3

    .line 1375
    iput-object v3, v1, LD1/v;->z0:Landroid/graphics/drawable/Drawable;

    .line 1376
    .line 1377
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 1378
    .line 1379
    .line 1380
    move-result-object v3

    .line 1381
    move/from16 v12, v26

    .line 1382
    .line 1383
    invoke-virtual {v2, v12, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    .line 1384
    .line 1385
    .line 1386
    move-result-object v3

    .line 1387
    iput-object v3, v1, LD1/v;->A0:Landroid/graphics/drawable/Drawable;

    .line 1388
    .line 1389
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 1390
    .line 1391
    .line 1392
    move-result-object v3

    .line 1393
    move/from16 v6, v25

    .line 1394
    .line 1395
    invoke-virtual {v2, v6, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    .line 1396
    .line 1397
    .line 1398
    move-result-object v3

    .line 1399
    iput-object v3, v1, LD1/v;->R0:Landroid/graphics/drawable/Drawable;

    .line 1400
    .line 1401
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 1402
    .line 1403
    .line 1404
    move-result-object v3

    .line 1405
    move/from16 v6, v24

    .line 1406
    .line 1407
    invoke-virtual {v2, v6, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    .line 1408
    .line 1409
    .line 1410
    move-result-object v3

    .line 1411
    iput-object v3, v1, LD1/v;->S0:Landroid/graphics/drawable/Drawable;

    .line 1412
    .line 1413
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 1414
    .line 1415
    .line 1416
    move-result-object v3

    .line 1417
    move/from16 v6, v23

    .line 1418
    .line 1419
    invoke-virtual {v2, v6, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    .line 1420
    .line 1421
    .line 1422
    move-result-object v3

    .line 1423
    iput-object v3, v1, LD1/v;->B0:Landroid/graphics/drawable/Drawable;

    .line 1424
    .line 1425
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 1426
    .line 1427
    .line 1428
    move-result-object v3

    .line 1429
    move/from16 v6, v22

    .line 1430
    .line 1431
    invoke-virtual {v2, v6, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    .line 1432
    .line 1433
    .line 1434
    move-result-object v3

    .line 1435
    iput-object v3, v1, LD1/v;->C0:Landroid/graphics/drawable/Drawable;

    .line 1436
    .line 1437
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 1438
    .line 1439
    .line 1440
    move-result-object v3

    .line 1441
    move/from16 v6, v21

    .line 1442
    .line 1443
    invoke-virtual {v2, v6, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    .line 1444
    .line 1445
    .line 1446
    move-result-object v3

    .line 1447
    iput-object v3, v1, LD1/v;->D0:Landroid/graphics/drawable/Drawable;

    .line 1448
    .line 1449
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 1450
    .line 1451
    .line 1452
    move-result-object v3

    .line 1453
    move/from16 v6, v20

    .line 1454
    .line 1455
    invoke-virtual {v2, v6, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    .line 1456
    .line 1457
    .line 1458
    move-result-object v3

    .line 1459
    iput-object v3, v1, LD1/v;->H0:Landroid/graphics/drawable/Drawable;

    .line 1460
    .line 1461
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 1462
    .line 1463
    .line 1464
    move-result-object v0

    .line 1465
    move/from16 v3, v19

    .line 1466
    .line 1467
    invoke-virtual {v2, v3, v0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    .line 1468
    .line 1469
    .line 1470
    move-result-object v0

    .line 1471
    iput-object v0, v1, LD1/v;->I0:Landroid/graphics/drawable/Drawable;

    .line 1472
    .line 1473
    const v0, 0x7f1300ad

    .line 1474
    .line 1475
    .line 1476
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 1477
    .line 1478
    .line 1479
    move-result-object v0

    .line 1480
    iput-object v0, v1, LD1/v;->T0:Ljava/lang/String;

    .line 1481
    .line 1482
    const v0, 0x7f1300ac

    .line 1483
    .line 1484
    .line 1485
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 1486
    .line 1487
    .line 1488
    move-result-object v0

    .line 1489
    iput-object v0, v1, LD1/v;->U0:Ljava/lang/String;

    .line 1490
    .line 1491
    const v0, 0x7f1300b7

    .line 1492
    .line 1493
    .line 1494
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 1495
    .line 1496
    .line 1497
    move-result-object v0

    .line 1498
    iput-object v0, v1, LD1/v;->E0:Ljava/lang/String;

    .line 1499
    .line 1500
    const v0, 0x7f1300b8

    .line 1501
    .line 1502
    .line 1503
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 1504
    .line 1505
    .line 1506
    move-result-object v0

    .line 1507
    iput-object v0, v1, LD1/v;->F0:Ljava/lang/String;

    .line 1508
    .line 1509
    const v0, 0x7f1300b6

    .line 1510
    .line 1511
    .line 1512
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 1513
    .line 1514
    .line 1515
    move-result-object v0

    .line 1516
    iput-object v0, v1, LD1/v;->G0:Ljava/lang/String;

    .line 1517
    .line 1518
    const v0, 0x7f1300be

    .line 1519
    .line 1520
    .line 1521
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 1522
    .line 1523
    .line 1524
    move-result-object v0

    .line 1525
    iput-object v0, v1, LD1/v;->L0:Ljava/lang/String;

    .line 1526
    .line 1527
    const v0, 0x7f1300bd

    .line 1528
    .line 1529
    .line 1530
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 1531
    .line 1532
    .line 1533
    move-result-object v0

    .line 1534
    iput-object v0, v1, LD1/v;->M0:Ljava/lang/String;

    .line 1535
    .line 1536
    const v0, 0x7f0b01e5

    .line 1537
    .line 1538
    .line 1539
    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 1540
    .line 1541
    .line 1542
    move-result-object v0

    .line 1543
    check-cast v0, Landroid/view/ViewGroup;

    .line 1544
    .line 1545
    const/4 v2, 0x1

    .line 1546
    invoke-virtual {v10, v0, v2}, LD1/B;->i(Landroid/view/View;Z)V

    .line 1547
    .line 1548
    .line 1549
    iget-object v0, v1, LD1/v;->e0:Landroid/view/View;

    .line 1550
    .line 1551
    move/from16 v3, v34

    .line 1552
    .line 1553
    invoke-virtual {v10, v0, v3}, LD1/B;->i(Landroid/view/View;Z)V

    .line 1554
    .line 1555
    .line 1556
    iget-object v0, v1, LD1/v;->f0:Landroid/view/View;

    .line 1557
    .line 1558
    move/from16 v3, v33

    .line 1559
    .line 1560
    invoke-virtual {v10, v0, v3}, LD1/B;->i(Landroid/view/View;Z)V

    .line 1561
    .line 1562
    .line 1563
    move/from16 v0, v35

    .line 1564
    .line 1565
    invoke-virtual {v10, v4, v0}, LD1/B;->i(Landroid/view/View;Z)V

    .line 1566
    .line 1567
    .line 1568
    move/from16 v0, v36

    .line 1569
    .line 1570
    invoke-virtual {v10, v5, v0}, LD1/B;->i(Landroid/view/View;Z)V

    .line 1571
    .line 1572
    .line 1573
    move/from16 v0, v18

    .line 1574
    .line 1575
    invoke-virtual {v10, v8, v0}, LD1/B;->i(Landroid/view/View;Z)V

    .line 1576
    .line 1577
    .line 1578
    iget-object v0, v1, LD1/v;->l0:Landroid/widget/ImageView;

    .line 1579
    .line 1580
    move/from16 v3, v17

    .line 1581
    .line 1582
    invoke-virtual {v10, v0, v3}, LD1/B;->i(Landroid/view/View;Z)V

    .line 1583
    .line 1584
    .line 1585
    move/from16 v0, v16

    .line 1586
    .line 1587
    invoke-virtual {v10, v9, v0}, LD1/B;->i(Landroid/view/View;Z)V

    .line 1588
    .line 1589
    .line 1590
    iget v0, v1, LD1/v;->g1:I

    .line 1591
    .line 1592
    if-eqz v0, :cond_17

    .line 1593
    .line 1594
    const/4 v8, 0x1

    .line 1595
    goto :goto_b

    .line 1596
    :cond_17
    const/4 v8, 0x0

    .line 1597
    :goto_b
    invoke-virtual {v10, v7, v8}, LD1/B;->i(Landroid/view/View;Z)V

    .line 1598
    .line 1599
    .line 1600
    new-instance v0, LD1/h;

    .line 1601
    .line 1602
    const/4 v2, 0x0

    .line 1603
    invoke-direct {v0, v1, v2}, LD1/h;-><init>(Ljava/lang/Object;I)V

    .line 1604
    .line 1605
    .line 1606
    invoke-virtual {v1, v0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 1607
    .line 1608
    .line 1609
    return-void
.end method

.method public static a(LD1/v;Lm0/Y;J)V
    .locals 7

    .line 1
    iget-boolean v0, p0, LD1/v;->b1:Z

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    check-cast p1, Lm0/f;

    .line 6
    .line 7
    const/16 v0, 0x11

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Lm0/f;->c(I)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_3

    .line 14
    .line 15
    const/16 v0, 0xa

    .line 16
    .line 17
    invoke-virtual {p1, v0}, Lm0/f;->c(I)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_3

    .line 22
    .line 23
    move-object v0, p1

    .line 24
    check-cast v0, LB0/O;

    .line 25
    .line 26
    invoke-virtual {v0}, LB0/O;->x()Lm0/f0;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0}, Lm0/f0;->p()I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    const/4 v2, 0x0

    .line 35
    const/4 v3, 0x0

    .line 36
    :goto_0
    const-wide/16 v4, 0x0

    .line 37
    .line 38
    iget-object v6, p0, LD1/v;->x0:Lm0/e0;

    .line 39
    .line 40
    invoke-virtual {v0, v3, v6, v4, v5}, Lm0/f0;->n(ILm0/e0;J)Lm0/e0;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    iget-wide v4, v4, Lm0/e0;->m:J

    .line 45
    .line 46
    invoke-static {v4, v5}, Lp0/M;->e0(J)J

    .line 47
    .line 48
    .line 49
    move-result-wide v4

    .line 50
    cmp-long v6, p2, v4

    .line 51
    .line 52
    if-gez v6, :cond_0

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_0
    add-int/lit8 v6, v1, -0x1

    .line 56
    .line 57
    if-ne v3, v6, :cond_1

    .line 58
    .line 59
    move-wide p2, v4

    .line 60
    :goto_1
    invoke-virtual {p1, v3, p2, p3, v2}, Lm0/f;->i(IJZ)V

    .line 61
    .line 62
    .line 63
    goto :goto_2

    .line 64
    :cond_1
    sub-long/2addr p2, v4

    .line 65
    add-int/lit8 v3, v3, 0x1

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_2
    check-cast p1, Lm0/f;

    .line 69
    .line 70
    const/4 v0, 0x5

    .line 71
    invoke-virtual {p1, v0}, Lm0/f;->c(I)Z

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    if-eqz v1, :cond_3

    .line 76
    .line 77
    invoke-virtual {p1, v0, p2, p3}, Lm0/f;->j(IJ)V

    .line 78
    .line 79
    .line 80
    :cond_3
    :goto_2
    invoke-virtual {p0}, LD1/v;->s()V

    .line 81
    .line 82
    .line 83
    return-void
.end method

.method public static synthetic b(LD1/v;F)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, LD1/v;->setPlaybackSpeed(F)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static c(Lm0/Y;Lm0/e0;)Z
    .locals 9

    .line 1
    check-cast p0, Lm0/f;

    .line 2
    .line 3
    const/16 v0, 0x11

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lm0/f;->c(I)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    return v1

    .line 13
    :cond_0
    check-cast p0, LB0/O;

    .line 14
    .line 15
    invoke-virtual {p0}, LB0/O;->x()Lm0/f0;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-virtual {p0}, Lm0/f0;->p()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    const/4 v2, 0x1

    .line 24
    if-le v0, v2, :cond_4

    .line 25
    .line 26
    const/16 v3, 0x64

    .line 27
    .line 28
    if-le v0, v3, :cond_1

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_1
    const/4 v3, 0x0

    .line 32
    :goto_0
    if-ge v3, v0, :cond_3

    .line 33
    .line 34
    const-wide/16 v4, 0x0

    .line 35
    .line 36
    invoke-virtual {p0, v3, p1, v4, v5}, Lm0/f0;->n(ILm0/e0;J)Lm0/e0;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    iget-wide v4, v4, Lm0/e0;->m:J

    .line 41
    .line 42
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    cmp-long v8, v4, v6

    .line 48
    .line 49
    if-nez v8, :cond_2

    .line 50
    .line 51
    return v1

    .line 52
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_3
    return v2

    .line 56
    :cond_4
    :goto_1
    return v1
.end method

.method private setPlaybackSpeed(F)V
    .locals 10

    .line 1
    iget-object v0, p0, LD1/v;->V0:Lm0/Y;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    const/16 v1, 0xd

    .line 6
    .line 7
    check-cast v0, Lm0/f;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lm0/f;->c(I)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object v0, p0, LD1/v;->V0:Lm0/Y;

    .line 17
    .line 18
    move-object v1, v0

    .line 19
    check-cast v1, LB0/O;

    .line 20
    .line 21
    invoke-virtual {v1}, LB0/O;->c0()V

    .line 22
    .line 23
    .line 24
    iget-object v0, v1, LB0/O;->N0:LB0/v0;

    .line 25
    .line 26
    iget-object v0, v0, LB0/v0;->o:Lm0/S;

    .line 27
    .line 28
    new-instance v2, Lm0/S;

    .line 29
    .line 30
    iget v0, v0, Lm0/S;->b:F

    .line 31
    .line 32
    invoke-direct {v2, p1, v0}, Lm0/S;-><init>(FF)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, LB0/O;->c0()V

    .line 36
    .line 37
    .line 38
    iget-object p1, v1, LB0/O;->N0:LB0/v0;

    .line 39
    .line 40
    iget-object p1, p1, LB0/v0;->o:Lm0/S;

    .line 41
    .line 42
    invoke-virtual {p1, v2}, Lm0/S;->equals(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    if-eqz p1, :cond_1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    iget-object p1, v1, LB0/O;->N0:LB0/v0;

    .line 50
    .line 51
    invoke-virtual {p1, v2}, LB0/v0;->g(Lm0/S;)LB0/v0;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    iget v0, v1, LB0/O;->m0:I

    .line 56
    .line 57
    add-int/lit8 v0, v0, 0x1

    .line 58
    .line 59
    iput v0, v1, LB0/O;->m0:I

    .line 60
    .line 61
    iget-object v0, v1, LB0/O;->R:LB0/X;

    .line 62
    .line 63
    iget-object v0, v0, LB0/X;->N:Lp0/I;

    .line 64
    .line 65
    const/4 v3, 0x4

    .line 66
    invoke-virtual {v0, v3, v2}, Lp0/I;->a(ILjava/lang/Object;)Lp0/H;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-virtual {v0}, Lp0/H;->b()V

    .line 71
    .line 72
    .line 73
    const/4 v8, -0x1

    .line 74
    const/4 v9, 0x0

    .line 75
    const/4 v3, 0x0

    .line 76
    const/4 v4, 0x0

    .line 77
    const/4 v5, 0x5

    .line 78
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    move-object v2, p1

    .line 84
    invoke-virtual/range {v1 .. v9}, LB0/O;->a0(LB0/v0;IZIJIZ)V

    .line 85
    .line 86
    .line 87
    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public final d(Landroid/view/KeyEvent;)Z
    .locals 13

    .line 1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, LD1/v;->V0:Lm0/Y;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_a

    .line 9
    .line 10
    const/16 v3, 0x58

    .line 11
    .line 12
    const/16 v4, 0x57

    .line 13
    .line 14
    const/16 v5, 0x7f

    .line 15
    .line 16
    const/16 v6, 0x7e

    .line 17
    .line 18
    const/16 v7, 0x4f

    .line 19
    .line 20
    const/16 v8, 0x55

    .line 21
    .line 22
    const/16 v9, 0x59

    .line 23
    .line 24
    const/16 v10, 0x5a

    .line 25
    .line 26
    if-eq v0, v10, :cond_0

    .line 27
    .line 28
    if-eq v0, v9, :cond_0

    .line 29
    .line 30
    if-eq v0, v8, :cond_0

    .line 31
    .line 32
    if-eq v0, v7, :cond_0

    .line 33
    .line 34
    if-eq v0, v6, :cond_0

    .line 35
    .line 36
    if-eq v0, v5, :cond_0

    .line 37
    .line 38
    if-eq v0, v4, :cond_0

    .line 39
    .line 40
    if-ne v0, v3, :cond_a

    .line 41
    .line 42
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    .line 43
    .line 44
    .line 45
    move-result v11

    .line 46
    const/4 v12, 0x1

    .line 47
    if-nez v11, :cond_9

    .line 48
    .line 49
    if-ne v0, v10, :cond_1

    .line 50
    .line 51
    move-object p1, v1

    .line 52
    check-cast p1, LB0/O;

    .line 53
    .line 54
    invoke-virtual {p1}, LB0/O;->C()I

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    const/4 v0, 0x4

    .line 59
    if-eq p1, v0, :cond_9

    .line 60
    .line 61
    check-cast v1, Lm0/f;

    .line 62
    .line 63
    const/16 p1, 0xc

    .line 64
    .line 65
    invoke-virtual {v1, p1}, Lm0/f;->c(I)Z

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    if-eqz v0, :cond_9

    .line 70
    .line 71
    move-object v0, v1

    .line 72
    check-cast v0, LB0/O;

    .line 73
    .line 74
    invoke-virtual {v0}, LB0/O;->c0()V

    .line 75
    .line 76
    .line 77
    iget-wide v2, v0, LB0/O;->b0:J

    .line 78
    .line 79
    invoke-virtual {v1, p1, v2, v3}, Lm0/f;->l(IJ)V

    .line 80
    .line 81
    .line 82
    goto/16 :goto_0

    .line 83
    .line 84
    :cond_1
    if-ne v0, v9, :cond_2

    .line 85
    .line 86
    move-object v9, v1

    .line 87
    check-cast v9, Lm0/f;

    .line 88
    .line 89
    const/16 v10, 0xb

    .line 90
    .line 91
    invoke-virtual {v9, v10}, Lm0/f;->c(I)Z

    .line 92
    .line 93
    .line 94
    move-result v11

    .line 95
    if-eqz v11, :cond_2

    .line 96
    .line 97
    move-object p1, v9

    .line 98
    check-cast p1, LB0/O;

    .line 99
    .line 100
    invoke-virtual {p1}, LB0/O;->c0()V

    .line 101
    .line 102
    .line 103
    iget-wide v0, p1, LB0/O;->a0:J

    .line 104
    .line 105
    neg-long v0, v0

    .line 106
    invoke-virtual {v9, v10, v0, v1}, Lm0/f;->l(IJ)V

    .line 107
    .line 108
    .line 109
    goto :goto_0

    .line 110
    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    .line 111
    .line 112
    .line 113
    move-result p1

    .line 114
    if-nez p1, :cond_9

    .line 115
    .line 116
    if-eq v0, v7, :cond_7

    .line 117
    .line 118
    if-eq v0, v8, :cond_7

    .line 119
    .line 120
    if-eq v0, v4, :cond_6

    .line 121
    .line 122
    if-eq v0, v3, :cond_5

    .line 123
    .line 124
    if-eq v0, v6, :cond_4

    .line 125
    .line 126
    if-eq v0, v5, :cond_3

    .line 127
    .line 128
    goto :goto_0

    .line 129
    :cond_3
    sget-object p1, Lp0/M;->a:Ljava/lang/String;

    .line 130
    .line 131
    check-cast v1, Lm0/f;

    .line 132
    .line 133
    invoke-virtual {v1, v12}, Lm0/f;->c(I)Z

    .line 134
    .line 135
    .line 136
    move-result p1

    .line 137
    if-eqz p1, :cond_9

    .line 138
    .line 139
    check-cast v1, LB0/O;

    .line 140
    .line 141
    invoke-virtual {v1, v2}, LB0/O;->S(Z)V

    .line 142
    .line 143
    .line 144
    goto :goto_0

    .line 145
    :cond_4
    invoke-static {v1}, Lp0/M;->H(Lm0/Y;)Z

    .line 146
    .line 147
    .line 148
    goto :goto_0

    .line 149
    :cond_5
    check-cast v1, Lm0/f;

    .line 150
    .line 151
    const/4 p1, 0x7

    .line 152
    invoke-virtual {v1, p1}, Lm0/f;->c(I)Z

    .line 153
    .line 154
    .line 155
    move-result p1

    .line 156
    if-eqz p1, :cond_9

    .line 157
    .line 158
    invoke-virtual {v1}, Lm0/f;->m()V

    .line 159
    .line 160
    .line 161
    goto :goto_0

    .line 162
    :cond_6
    check-cast v1, Lm0/f;

    .line 163
    .line 164
    const/16 p1, 0x9

    .line 165
    .line 166
    invoke-virtual {v1, p1}, Lm0/f;->c(I)Z

    .line 167
    .line 168
    .line 169
    move-result p1

    .line 170
    if-eqz p1, :cond_9

    .line 171
    .line 172
    invoke-virtual {v1}, Lm0/f;->k()V

    .line 173
    .line 174
    .line 175
    goto :goto_0

    .line 176
    :cond_7
    iget-boolean p1, p0, LD1/v;->a1:Z

    .line 177
    .line 178
    invoke-static {v1, p1}, Lp0/M;->b0(Lm0/Y;Z)Z

    .line 179
    .line 180
    .line 181
    move-result p1

    .line 182
    if-eqz p1, :cond_8

    .line 183
    .line 184
    invoke-static {v1}, Lp0/M;->H(Lm0/Y;)Z

    .line 185
    .line 186
    .line 187
    goto :goto_0

    .line 188
    :cond_8
    check-cast v1, Lm0/f;

    .line 189
    .line 190
    invoke-virtual {v1, v12}, Lm0/f;->c(I)Z

    .line 191
    .line 192
    .line 193
    move-result p1

    .line 194
    if-eqz p1, :cond_9

    .line 195
    .line 196
    check-cast v1, LB0/O;

    .line 197
    .line 198
    invoke-virtual {v1, v2}, LB0/O;->S(Z)V

    .line 199
    .line 200
    .line 201
    :cond_9
    :goto_0
    return v12

    .line 202
    :cond_a
    return v2
.end method

.method public final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, LD1/v;->d(Landroid/view/KeyEvent;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p1, 0x0

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 17
    :goto_1
    return p1
.end method

.method public final e(LO1/C;Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object v0, p0, LD1/v;->Q:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(LO1/C;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, LD1/v;->u()V

    .line 7
    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    iput-boolean p1, p0, LD1/v;->m1:Z

    .line 11
    .line 12
    iget-object p1, p0, LD1/v;->W:Landroid/widget/PopupWindow;

    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 15
    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    iput-boolean v0, p0, LD1/v;->m1:Z

    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->getWidth()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    sub-int/2addr v0, v1

    .line 29
    iget v1, p0, LD1/v;->a0:I

    .line 30
    .line 31
    sub-int/2addr v0, v1

    .line 32
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->getHeight()I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    neg-int v2, v2

    .line 37
    sub-int/2addr v2, v1

    .line 38
    invoke-virtual {p1, p2, v0, v2}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public final f(Lm0/m0;I)Lz4/d0;
    .locals 11

    .line 1
    const/4 v0, 0x4

    .line 2
    const-string v1, "initialCapacity"

    .line 3
    .line 4
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/Cw;->g(ILjava/lang/String;)V

    .line 5
    .line 6
    .line 7
    new-array v0, v0, [Ljava/lang/Object;

    .line 8
    .line 9
    iget-object v1, p1, Lm0/m0;->a:Lz4/H;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    const/4 v3, 0x0

    .line 13
    const/4 v4, 0x0

    .line 14
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 15
    .line 16
    .line 17
    move-result v5

    .line 18
    if-ge v3, v5, :cond_5

    .line 19
    .line 20
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v5

    .line 24
    check-cast v5, Lm0/l0;

    .line 25
    .line 26
    iget-object v6, v5, Lm0/l0;->b:Lm0/g0;

    .line 27
    .line 28
    iget v6, v6, Lm0/g0;->c:I

    .line 29
    .line 30
    if-eq v6, p2, :cond_0

    .line 31
    .line 32
    goto :goto_4

    .line 33
    :cond_0
    const/4 v6, 0x0

    .line 34
    :goto_1
    iget v7, v5, Lm0/l0;->a:I

    .line 35
    .line 36
    if-ge v6, v7, :cond_4

    .line 37
    .line 38
    invoke-virtual {v5, v6}, Lm0/l0;->d(I)Z

    .line 39
    .line 40
    .line 41
    move-result v7

    .line 42
    if-nez v7, :cond_1

    .line 43
    .line 44
    goto :goto_3

    .line 45
    :cond_1
    iget-object v7, v5, Lm0/l0;->b:Lm0/g0;

    .line 46
    .line 47
    iget-object v7, v7, Lm0/g0;->d:[Lm0/t;

    .line 48
    .line 49
    aget-object v7, v7, v6

    .line 50
    .line 51
    iget v8, v7, Lm0/t;->e:I

    .line 52
    .line 53
    and-int/lit8 v8, v8, 0x2

    .line 54
    .line 55
    if-eqz v8, :cond_2

    .line 56
    .line 57
    goto :goto_3

    .line 58
    :cond_2
    iget-object v8, p0, LD1/v;->V:LD1/f;

    .line 59
    .line 60
    invoke-virtual {v8, v7}, LD1/f;->c(Lm0/t;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v7

    .line 64
    new-instance v8, LD1/s;

    .line 65
    .line 66
    invoke-direct {v8, p1, v3, v6, v7}, LD1/s;-><init>(Lm0/m0;IILjava/lang/String;)V

    .line 67
    .line 68
    .line 69
    array-length v7, v0

    .line 70
    add-int/lit8 v9, v4, 0x1

    .line 71
    .line 72
    invoke-static {v7, v9}, LQ3/b;->f(II)I

    .line 73
    .line 74
    .line 75
    move-result v7

    .line 76
    array-length v10, v0

    .line 77
    if-gt v7, v10, :cond_3

    .line 78
    .line 79
    goto :goto_2

    .line 80
    :cond_3
    invoke-static {v0, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    :goto_2
    aput-object v8, v0, v4

    .line 85
    .line 86
    move v4, v9

    .line 87
    :goto_3
    add-int/lit8 v6, v6, 0x1

    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_4
    :goto_4
    add-int/lit8 v3, v3, 0x1

    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_5
    invoke-static {v4, v0}, Lz4/H;->p(I[Ljava/lang/Object;)Lz4/d0;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    return-object p1
.end method

.method public final g()V
    .locals 3

    .line 1
    iget-object v0, p0, LD1/v;->G:LD1/B;

    .line 2
    .line 3
    iget v1, v0, LD1/B;->z:I

    .line 4
    .line 5
    const/4 v2, 0x3

    .line 6
    if-eq v1, v2, :cond_3

    .line 7
    .line 8
    const/4 v2, 0x2

    .line 9
    if-ne v1, v2, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {v0}, LD1/B;->g()V

    .line 13
    .line 14
    .line 15
    iget-boolean v1, v0, LD1/B;->C:Z

    .line 16
    .line 17
    if-nez v1, :cond_1

    .line 18
    .line 19
    invoke-virtual {v0, v2}, LD1/B;->j(I)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    iget v1, v0, LD1/B;->z:I

    .line 24
    .line 25
    const/4 v2, 0x1

    .line 26
    if-ne v1, v2, :cond_2

    .line 27
    .line 28
    iget-object v0, v0, LD1/B;->m:Landroid/animation/AnimatorSet;

    .line 29
    .line 30
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_2
    iget-object v0, v0, LD1/B;->n:Landroid/animation/AnimatorSet;

    .line 35
    .line 36
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 37
    .line 38
    .line 39
    :cond_3
    :goto_0
    return-void
.end method

.method public getPlayer()Lm0/Y;
    .locals 1

    .line 1
    iget-object v0, p0, LD1/v;->V0:Lm0/Y;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRepeatToggleModes()I
    .locals 1

    .line 1
    iget v0, p0, LD1/v;->g1:I

    .line 2
    .line 3
    return v0
.end method

.method public getShowShuffleButton()Z
    .locals 2

    .line 1
    iget-object v0, p0, LD1/v;->G:LD1/B;

    .line 2
    .line 3
    iget-object v1, p0, LD1/v;->j0:Landroid/widget/ImageView;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, LD1/B;->c(Landroid/widget/ImageView;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public getShowSubtitleButton()Z
    .locals 2

    .line 1
    iget-object v0, p0, LD1/v;->G:LD1/B;

    .line 2
    .line 3
    iget-object v1, p0, LD1/v;->l0:Landroid/widget/ImageView;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, LD1/B;->c(Landroid/widget/ImageView;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public getShowTimeoutMs()I
    .locals 1

    .line 1
    iget v0, p0, LD1/v;->d1:I

    .line 2
    .line 3
    return v0
.end method

.method public getShowVrButton()Z
    .locals 2

    .line 1
    iget-object v0, p0, LD1/v;->G:LD1/B;

    .line 2
    .line 3
    iget-object v1, p0, LD1/v;->k0:Landroid/widget/ImageView;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, LD1/B;->c(Landroid/widget/ImageView;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public final h(Lm0/Y;)Z
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, LD1/v;->M:Ljava/lang/Class;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    const/4 p1, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 p1, 0x0

    .line 20
    :goto_0
    return p1
.end method

.method public final i(Lm0/Y;)Z
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, LD1/v;->J:Ljava/lang/Class;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    const/4 p1, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 p1, 0x0

    .line 20
    :goto_0
    return p1
.end method

.method public final j()Z
    .locals 2

    .line 1
    iget-object v0, p0, LD1/v;->G:LD1/B;

    .line 2
    .line 3
    iget v1, v0, LD1/B;->z:I

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    iget-object v0, v0, LD1/B;->a:LD1/v;

    .line 8
    .line 9
    invoke-virtual {v0}, LD1/v;->l()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    :goto_0
    return v0
.end method

.method public final k(Lm0/Y;)Z
    .locals 3

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, LD1/v;->i(Lm0/Y;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, LD1/v;->L:Ljava/lang/reflect/Method;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    new-array v2, v1, [Ljava/lang/Object;

    .line 14
    .line 15
    invoke-virtual {v0, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    check-cast v0, Ljava/lang/Boolean;

    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-nez v0, :cond_1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catch_0
    move-exception p1

    .line 32
    goto :goto_1

    .line 33
    :catch_1
    move-exception p1

    .line 34
    goto :goto_1

    .line 35
    :cond_0
    :goto_0
    invoke-virtual {p0, p1}, LD1/v;->h(Lm0/Y;)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_2

    .line 40
    .line 41
    iget-object v0, p0, LD1/v;->O:Ljava/lang/reflect/Method;

    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    new-array v2, v1, [Ljava/lang/Object;

    .line 47
    .line 48
    invoke-virtual {v0, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    .line 54
    .line 55
    check-cast p1, Ljava/lang/Boolean;

    .line 56
    .line 57
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 58
    .line 59
    .line 60
    move-result p1
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    if-eqz p1, :cond_2

    .line 62
    .line 63
    :cond_1
    const/4 v1, 0x1

    .line 64
    :cond_2
    return v1

    .line 65
    :goto_1
    new-instance v0, Ljava/lang/RuntimeException;

    .line 66
    .line 67
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 68
    .line 69
    .line 70
    throw v0
.end method

.method public final l()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

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
    return v0
.end method

.method public final m()V
    .locals 0

    .line 1
    invoke-virtual {p0}, LD1/v;->q()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, LD1/v;->p()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, LD1/v;->t()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, LD1/v;->v()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, LD1/v;->x()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, LD1/v;->r()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, LD1/v;->w()V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final n(Landroid/view/View;Z)V
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 5
    .line 6
    .line 7
    if-eqz p2, :cond_1

    .line 8
    .line 9
    iget p2, p0, LD1/v;->J0:F

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_1
    iget p2, p0, LD1/v;->K0:F

    .line 13
    .line 14
    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final o(Z)V
    .locals 5

    .line 1
    iget-boolean v0, p0, LD1/v;->X0:Z

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput-boolean p1, p0, LD1/v;->X0:Z

    .line 7
    .line 8
    iget-object v0, p0, LD1/v;->U0:Ljava/lang/String;

    .line 9
    .line 10
    iget-object v1, p0, LD1/v;->S0:Landroid/graphics/drawable/Drawable;

    .line 11
    .line 12
    iget-object v2, p0, LD1/v;->T0:Ljava/lang/String;

    .line 13
    .line 14
    iget-object v3, p0, LD1/v;->R0:Landroid/graphics/drawable/Drawable;

    .line 15
    .line 16
    iget-object v4, p0, LD1/v;->m0:Landroid/widget/ImageView;

    .line 17
    .line 18
    if-nez v4, :cond_1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    if-eqz p1, :cond_2

    .line 22
    .line 23
    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v4, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_2
    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v4, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 34
    .line 35
    .line 36
    :goto_0
    iget-object v4, p0, LD1/v;->n0:Landroid/widget/ImageView;

    .line 37
    .line 38
    if-nez v4, :cond_3

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_3
    if-eqz p1, :cond_4

    .line 42
    .line 43
    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v4, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 47
    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_4
    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v4, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 54
    .line 55
    .line 56
    :goto_1
    iget-object p1, p0, LD1/v;->W0:LD1/l;

    .line 57
    .line 58
    if-eqz p1, :cond_5

    .line 59
    .line 60
    check-cast p1, LD1/D;

    .line 61
    .line 62
    iget-object p1, p1, LD1/D;->I:Landroidx/media3/ui/PlayerView;

    .line 63
    .line 64
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 65
    .line 66
    .line 67
    :cond_5
    return-void
.end method

.method public final onAttachedToWindow()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, LD1/v;->G:LD1/B;

    .line 5
    .line 6
    iget-object v1, v0, LD1/B;->x:LD1/h;

    .line 7
    .line 8
    iget-object v2, v0, LD1/B;->a:LD1/v;

    .line 9
    .line 10
    invoke-virtual {v2, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 11
    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    iput-boolean v1, p0, LD1/v;->Y0:Z

    .line 15
    .line 16
    invoke-virtual {p0}, LD1/v;->j()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    invoke-virtual {v0}, LD1/B;->h()V

    .line 23
    .line 24
    .line 25
    :cond_0
    invoke-virtual {p0}, LD1/v;->m()V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, LD1/v;->G:LD1/B;

    .line 5
    .line 6
    iget-object v1, v0, LD1/B;->x:LD1/h;

    .line 7
    .line 8
    iget-object v2, v0, LD1/B;->a:LD1/v;

    .line 9
    .line 10
    invoke-virtual {v2, v1}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 11
    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    iput-boolean v1, p0, LD1/v;->Y0:Z

    .line 15
    .line 16
    iget-object v1, p0, LD1/v;->y0:La/b;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, LD1/B;->g()V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final onLayout(ZIIII)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, LD1/v;->G:LD1/B;

    .line 5
    .line 6
    iget-object p1, p1, LD1/B;->b:Landroid/view/View;

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    sub-int/2addr p4, p2

    .line 11
    sub-int/2addr p5, p3

    .line 12
    const/4 p2, 0x0

    .line 13
    invoke-virtual {p1, p2, p2, p4, p5}, Landroid/view/View;->layout(IIII)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public final p()V
    .locals 14

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0}, LD1/v;->l()Z

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    if-eqz v2, :cond_9

    .line 8
    .line 9
    iget-boolean v2, p0, LD1/v;->Y0:Z

    .line 10
    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    goto/16 :goto_4

    .line 14
    .line 15
    :cond_0
    iget-object v2, p0, LD1/v;->V0:Lm0/Y;

    .line 16
    .line 17
    if-eqz v2, :cond_2

    .line 18
    .line 19
    iget-boolean v3, p0, LD1/v;->Z0:Z

    .line 20
    .line 21
    if-eqz v3, :cond_1

    .line 22
    .line 23
    iget-object v3, p0, LD1/v;->x0:Lm0/e0;

    .line 24
    .line 25
    invoke-static {v2, v3}, LD1/v;->c(Lm0/Y;Lm0/e0;)Z

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    if-eqz v3, :cond_1

    .line 30
    .line 31
    const/16 v3, 0xa

    .line 32
    .line 33
    move-object v4, v2

    .line 34
    check-cast v4, Lm0/f;

    .line 35
    .line 36
    invoke-virtual {v4, v3}, Lm0/f;->c(I)Z

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    goto :goto_0

    .line 41
    :cond_1
    const/4 v3, 0x5

    .line 42
    move-object v4, v2

    .line 43
    check-cast v4, Lm0/f;

    .line 44
    .line 45
    invoke-virtual {v4, v3}, Lm0/f;->c(I)Z

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    :goto_0
    check-cast v2, Lm0/f;

    .line 50
    .line 51
    const/4 v4, 0x7

    .line 52
    invoke-virtual {v2, v4}, Lm0/f;->c(I)Z

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    const/16 v5, 0xb

    .line 57
    .line 58
    invoke-virtual {v2, v5}, Lm0/f;->c(I)Z

    .line 59
    .line 60
    .line 61
    move-result v5

    .line 62
    const/16 v6, 0xc

    .line 63
    .line 64
    invoke-virtual {v2, v6}, Lm0/f;->c(I)Z

    .line 65
    .line 66
    .line 67
    move-result v6

    .line 68
    const/16 v7, 0x9

    .line 69
    .line 70
    invoke-virtual {v2, v7}, Lm0/f;->c(I)Z

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    goto :goto_1

    .line 75
    :cond_2
    const/4 v2, 0x0

    .line 76
    const/4 v3, 0x0

    .line 77
    const/4 v4, 0x0

    .line 78
    const/4 v5, 0x0

    .line 79
    const/4 v6, 0x0

    .line 80
    :goto_1
    iget-object v7, p0, LD1/v;->H:Landroid/content/res/Resources;

    .line 81
    .line 82
    iget-object v8, p0, LD1/v;->f0:Landroid/view/View;

    .line 83
    .line 84
    const-wide/16 v9, 0x3e8

    .line 85
    .line 86
    if-eqz v5, :cond_5

    .line 87
    .line 88
    iget-object v11, p0, LD1/v;->V0:Lm0/Y;

    .line 89
    .line 90
    if-eqz v11, :cond_3

    .line 91
    .line 92
    check-cast v11, LB0/O;

    .line 93
    .line 94
    invoke-virtual {v11}, LB0/O;->c0()V

    .line 95
    .line 96
    .line 97
    iget-wide v11, v11, LB0/O;->a0:J

    .line 98
    .line 99
    goto :goto_2

    .line 100
    :cond_3
    const-wide/16 v11, 0x1388

    .line 101
    .line 102
    :goto_2
    div-long/2addr v11, v9

    .line 103
    long-to-int v12, v11

    .line 104
    iget-object v11, p0, LD1/v;->h0:Landroid/widget/TextView;

    .line 105
    .line 106
    if-eqz v11, :cond_4

    .line 107
    .line 108
    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v13

    .line 112
    invoke-virtual {v11, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    .line 114
    .line 115
    :cond_4
    if-eqz v8, :cond_5

    .line 116
    .line 117
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 118
    .line 119
    .line 120
    move-result-object v11

    .line 121
    new-array v13, v0, [Ljava/lang/Object;

    .line 122
    .line 123
    aput-object v11, v13, v1

    .line 124
    .line 125
    const v11, 0x7f110002

    .line 126
    .line 127
    .line 128
    invoke-virtual {v7, v11, v12, v13}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v11

    .line 132
    invoke-virtual {v8, v11}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 133
    .line 134
    .line 135
    :cond_5
    iget-object v11, p0, LD1/v;->e0:Landroid/view/View;

    .line 136
    .line 137
    if-eqz v6, :cond_8

    .line 138
    .line 139
    iget-object v12, p0, LD1/v;->V0:Lm0/Y;

    .line 140
    .line 141
    if-eqz v12, :cond_6

    .line 142
    .line 143
    check-cast v12, LB0/O;

    .line 144
    .line 145
    invoke-virtual {v12}, LB0/O;->c0()V

    .line 146
    .line 147
    .line 148
    iget-wide v12, v12, LB0/O;->b0:J

    .line 149
    .line 150
    goto :goto_3

    .line 151
    :cond_6
    const-wide/16 v12, 0x3a98

    .line 152
    .line 153
    :goto_3
    div-long/2addr v12, v9

    .line 154
    long-to-int v9, v12

    .line 155
    iget-object v10, p0, LD1/v;->g0:Landroid/widget/TextView;

    .line 156
    .line 157
    if-eqz v10, :cond_7

    .line 158
    .line 159
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v12

    .line 163
    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    .line 165
    .line 166
    :cond_7
    if-eqz v11, :cond_8

    .line 167
    .line 168
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 169
    .line 170
    .line 171
    move-result-object v10

    .line 172
    new-array v0, v0, [Ljava/lang/Object;

    .line 173
    .line 174
    aput-object v10, v0, v1

    .line 175
    .line 176
    const v1, 0x7f110001

    .line 177
    .line 178
    .line 179
    invoke-virtual {v7, v1, v9, v0}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    invoke-virtual {v11, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 184
    .line 185
    .line 186
    :cond_8
    iget-object v0, p0, LD1/v;->b0:Landroid/widget/ImageView;

    .line 187
    .line 188
    invoke-virtual {p0, v0, v4}, LD1/v;->n(Landroid/view/View;Z)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {p0, v8, v5}, LD1/v;->n(Landroid/view/View;Z)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {p0, v11, v6}, LD1/v;->n(Landroid/view/View;Z)V

    .line 195
    .line 196
    .line 197
    iget-object v0, p0, LD1/v;->c0:Landroid/widget/ImageView;

    .line 198
    .line 199
    invoke-virtual {p0, v0, v2}, LD1/v;->n(Landroid/view/View;Z)V

    .line 200
    .line 201
    .line 202
    iget-object v0, p0, LD1/v;->t0:LD1/O;

    .line 203
    .line 204
    if-eqz v0, :cond_9

    .line 205
    .line 206
    check-cast v0, LD1/e;

    .line 207
    .line 208
    invoke-virtual {v0, v3}, LD1/e;->setEnabled(Z)V

    .line 209
    .line 210
    .line 211
    :cond_9
    :goto_4
    return-void
.end method

.method public final q()V
    .locals 5

    .line 1
    invoke-virtual {p0}, LD1/v;->l()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_5

    .line 6
    .line 7
    iget-boolean v0, p0, LD1/v;->Y0:Z

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_3

    .line 12
    :cond_0
    iget-object v0, p0, LD1/v;->d0:Landroid/widget/ImageView;

    .line 13
    .line 14
    if-eqz v0, :cond_5

    .line 15
    .line 16
    iget-object v1, p0, LD1/v;->V0:Lm0/Y;

    .line 17
    .line 18
    iget-boolean v2, p0, LD1/v;->a1:Z

    .line 19
    .line 20
    invoke-static {v1, v2}, Lp0/M;->b0(Lm0/Y;Z)Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    iget-object v2, p0, LD1/v;->z0:Landroid/graphics/drawable/Drawable;

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    iget-object v2, p0, LD1/v;->A0:Landroid/graphics/drawable/Drawable;

    .line 30
    .line 31
    :goto_0
    if-eqz v1, :cond_2

    .line 32
    .line 33
    const v1, 0x7f1300b3

    .line 34
    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_2
    const v1, 0x7f1300b2

    .line 38
    .line 39
    .line 40
    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 41
    .line 42
    .line 43
    iget-object v2, p0, LD1/v;->H:Landroid/content/res/Resources;

    .line 44
    .line 45
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 50
    .line 51
    .line 52
    iget-object v1, p0, LD1/v;->V0:Lm0/Y;

    .line 53
    .line 54
    if-eqz v1, :cond_3

    .line 55
    .line 56
    move-object v2, v1

    .line 57
    check-cast v2, Lm0/f;

    .line 58
    .line 59
    const/4 v3, 0x1

    .line 60
    invoke-virtual {v2, v3}, Lm0/f;->c(I)Z

    .line 61
    .line 62
    .line 63
    move-result v4

    .line 64
    if-eqz v4, :cond_3

    .line 65
    .line 66
    const/16 v4, 0x11

    .line 67
    .line 68
    invoke-virtual {v2, v4}, Lm0/f;->c(I)Z

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    if-eqz v2, :cond_4

    .line 73
    .line 74
    check-cast v1, LB0/O;

    .line 75
    .line 76
    invoke-virtual {v1}, LB0/O;->x()Lm0/f0;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    invoke-virtual {v1}, Lm0/f0;->q()Z

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    if-nez v1, :cond_3

    .line 85
    .line 86
    goto :goto_2

    .line 87
    :cond_3
    const/4 v3, 0x0

    .line 88
    :cond_4
    :goto_2
    invoke-virtual {p0, v0, v3}, LD1/v;->n(Landroid/view/View;Z)V

    .line 89
    .line 90
    .line 91
    :cond_5
    :goto_3
    return-void
.end method

.method public final r()V
    .locals 8

    .line 1
    iget-object v0, p0, LD1/v;->V0:Lm0/Y;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    check-cast v0, LB0/O;

    .line 7
    .line 8
    invoke-virtual {v0}, LB0/O;->c0()V

    .line 9
    .line 10
    .line 11
    iget-object v0, v0, LB0/O;->N0:LB0/v0;

    .line 12
    .line 13
    iget-object v0, v0, LB0/v0;->o:Lm0/S;

    .line 14
    .line 15
    iget v0, v0, Lm0/S;->a:F

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    const v2, 0x7f7fffff    # Float.MAX_VALUE

    .line 19
    .line 20
    .line 21
    const/4 v3, 0x0

    .line 22
    const/4 v4, 0x0

    .line 23
    :goto_0
    iget-object v5, p0, LD1/v;->S:LD1/n;

    .line 24
    .line 25
    iget-object v6, v5, LD1/n;->J:[F

    .line 26
    .line 27
    array-length v7, v6

    .line 28
    if-ge v3, v7, :cond_2

    .line 29
    .line 30
    aget v5, v6, v3

    .line 31
    .line 32
    sub-float v5, v0, v5

    .line 33
    .line 34
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    .line 35
    .line 36
    .line 37
    move-result v5

    .line 38
    cmpg-float v6, v5, v2

    .line 39
    .line 40
    if-gez v6, :cond_1

    .line 41
    .line 42
    move v4, v3

    .line 43
    move v2, v5

    .line 44
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_2
    iput v4, v5, LD1/n;->K:I

    .line 48
    .line 49
    iget-object v0, v5, LD1/n;->I:[Ljava/lang/String;

    .line 50
    .line 51
    aget-object v0, v0, v4

    .line 52
    .line 53
    iget-object v2, p0, LD1/v;->R:LD1/q;

    .line 54
    .line 55
    invoke-virtual {v2, v1, v0}, LD1/q;->f(ILjava/lang/String;)V

    .line 56
    .line 57
    .line 58
    const/4 v0, 0x1

    .line 59
    invoke-virtual {v2, v0}, LD1/q;->g(I)Z

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    if-nez v3, :cond_3

    .line 64
    .line 65
    invoke-virtual {v2, v1}, LD1/q;->g(I)Z

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    if-eqz v2, :cond_4

    .line 70
    .line 71
    :cond_3
    const/4 v1, 0x1

    .line 72
    :cond_4
    iget-object v0, p0, LD1/v;->o0:Landroid/view/View;

    .line 73
    .line 74
    invoke-virtual {p0, v0, v1}, LD1/v;->n(Landroid/view/View;Z)V

    .line 75
    .line 76
    .line 77
    return-void
.end method

.method public final s()V
    .locals 14

    .line 1
    invoke-virtual {p0}, LD1/v;->l()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_d

    .line 6
    .line 7
    iget-boolean v0, p0, LD1/v;->Y0:Z

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto/16 :goto_5

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, LD1/v;->V0:Lm0/Y;

    .line 14
    .line 15
    const-wide/16 v1, 0x0

    .line 16
    .line 17
    if-eqz v0, :cond_5

    .line 18
    .line 19
    const/16 v3, 0x10

    .line 20
    .line 21
    move-object v4, v0

    .line 22
    check-cast v4, Lm0/f;

    .line 23
    .line 24
    invoke-virtual {v4, v3}, Lm0/f;->c(I)Z

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    if-eqz v3, :cond_5

    .line 29
    .line 30
    iget-wide v3, p0, LD1/v;->l1:J

    .line 31
    .line 32
    move-object v5, v0

    .line 33
    check-cast v5, LB0/O;

    .line 34
    .line 35
    invoke-virtual {v5}, LB0/O;->c0()V

    .line 36
    .line 37
    .line 38
    iget-object v6, v5, LB0/O;->N0:LB0/v0;

    .line 39
    .line 40
    invoke-virtual {v5, v6}, LB0/O;->q(LB0/v0;)J

    .line 41
    .line 42
    .line 43
    move-result-wide v6

    .line 44
    add-long/2addr v6, v3

    .line 45
    iget-wide v3, p0, LD1/v;->l1:J

    .line 46
    .line 47
    invoke-virtual {v5}, LB0/O;->c0()V

    .line 48
    .line 49
    .line 50
    iget-object v8, v5, LB0/O;->N0:LB0/v0;

    .line 51
    .line 52
    iget-object v8, v8, LB0/v0;->a:Lm0/f0;

    .line 53
    .line 54
    invoke-virtual {v8}, Lm0/f0;->q()Z

    .line 55
    .line 56
    .line 57
    move-result v8

    .line 58
    if-eqz v8, :cond_1

    .line 59
    .line 60
    iget-wide v1, v5, LB0/O;->P0:J

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_1
    iget-object v8, v5, LB0/O;->N0:LB0/v0;

    .line 64
    .line 65
    iget-object v9, v8, LB0/v0;->k:LO0/y;

    .line 66
    .line 67
    iget-wide v9, v9, LO0/y;->d:J

    .line 68
    .line 69
    iget-object v11, v8, LB0/v0;->b:LO0/y;

    .line 70
    .line 71
    iget-wide v11, v11, LO0/y;->d:J

    .line 72
    .line 73
    cmp-long v13, v9, v11

    .line 74
    .line 75
    if-eqz v13, :cond_2

    .line 76
    .line 77
    iget-object v8, v8, LB0/v0;->a:Lm0/f0;

    .line 78
    .line 79
    invoke-virtual {v5}, LB0/O;->t()I

    .line 80
    .line 81
    .line 82
    move-result v9

    .line 83
    iget-object v5, v5, Lm0/f;->G:Lm0/e0;

    .line 84
    .line 85
    invoke-virtual {v8, v9, v5, v1, v2}, Lm0/f0;->n(ILm0/e0;J)Lm0/e0;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    iget-wide v1, v1, Lm0/e0;->m:J

    .line 90
    .line 91
    invoke-static {v1, v2}, Lp0/M;->e0(J)J

    .line 92
    .line 93
    .line 94
    move-result-wide v1

    .line 95
    goto :goto_1

    .line 96
    :cond_2
    iget-wide v1, v8, LB0/v0;->q:J

    .line 97
    .line 98
    iget-object v8, v5, LB0/O;->N0:LB0/v0;

    .line 99
    .line 100
    iget-object v8, v8, LB0/v0;->k:LO0/y;

    .line 101
    .line 102
    invoke-virtual {v8}, LO0/y;->b()Z

    .line 103
    .line 104
    .line 105
    move-result v8

    .line 106
    if-eqz v8, :cond_4

    .line 107
    .line 108
    iget-object v1, v5, LB0/O;->N0:LB0/v0;

    .line 109
    .line 110
    iget-object v2, v1, LB0/v0;->a:Lm0/f0;

    .line 111
    .line 112
    iget-object v1, v1, LB0/v0;->k:LO0/y;

    .line 113
    .line 114
    iget-object v1, v1, LO0/y;->a:Ljava/lang/Object;

    .line 115
    .line 116
    iget-object v8, v5, LB0/O;->U:Lm0/d0;

    .line 117
    .line 118
    invoke-virtual {v2, v1, v8}, Lm0/f0;->h(Ljava/lang/Object;Lm0/d0;)Lm0/d0;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    iget-object v2, v5, LB0/O;->N0:LB0/v0;

    .line 123
    .line 124
    iget-object v2, v2, LB0/v0;->k:LO0/y;

    .line 125
    .line 126
    iget v2, v2, LO0/y;->b:I

    .line 127
    .line 128
    invoke-virtual {v1, v2}, Lm0/d0;->d(I)J

    .line 129
    .line 130
    .line 131
    move-result-wide v8

    .line 132
    const-wide/high16 v10, -0x8000000000000000L

    .line 133
    .line 134
    cmp-long v2, v8, v10

    .line 135
    .line 136
    if-nez v2, :cond_3

    .line 137
    .line 138
    iget-wide v1, v1, Lm0/d0;->d:J

    .line 139
    .line 140
    goto :goto_0

    .line 141
    :cond_3
    move-wide v1, v8

    .line 142
    :cond_4
    :goto_0
    iget-object v8, v5, LB0/O;->N0:LB0/v0;

    .line 143
    .line 144
    iget-object v9, v8, LB0/v0;->a:Lm0/f0;

    .line 145
    .line 146
    iget-object v8, v8, LB0/v0;->k:LO0/y;

    .line 147
    .line 148
    iget-object v8, v8, LO0/y;->a:Ljava/lang/Object;

    .line 149
    .line 150
    iget-object v5, v5, LB0/O;->U:Lm0/d0;

    .line 151
    .line 152
    invoke-virtual {v9, v8, v5}, Lm0/f0;->h(Ljava/lang/Object;Lm0/d0;)Lm0/d0;

    .line 153
    .line 154
    .line 155
    iget-wide v8, v5, Lm0/d0;->e:J

    .line 156
    .line 157
    add-long/2addr v1, v8

    .line 158
    invoke-static {v1, v2}, Lp0/M;->e0(J)J

    .line 159
    .line 160
    .line 161
    move-result-wide v1

    .line 162
    :goto_1
    add-long/2addr v1, v3

    .line 163
    move-wide v3, v1

    .line 164
    move-wide v1, v6

    .line 165
    goto :goto_2

    .line 166
    :cond_5
    move-wide v3, v1

    .line 167
    :goto_2
    iget-object v5, p0, LD1/v;->s0:Landroid/widget/TextView;

    .line 168
    .line 169
    if-eqz v5, :cond_6

    .line 170
    .line 171
    iget-boolean v6, p0, LD1/v;->c1:Z

    .line 172
    .line 173
    if-nez v6, :cond_6

    .line 174
    .line 175
    iget-object v6, p0, LD1/v;->u0:Ljava/lang/StringBuilder;

    .line 176
    .line 177
    iget-object v7, p0, LD1/v;->v0:Ljava/util/Formatter;

    .line 178
    .line 179
    invoke-static {v6, v7, v1, v2}, Lp0/M;->D(Ljava/lang/StringBuilder;Ljava/util/Formatter;J)Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v6

    .line 183
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 184
    .line 185
    .line 186
    :cond_6
    iget-object v5, p0, LD1/v;->t0:LD1/O;

    .line 187
    .line 188
    if-eqz v5, :cond_8

    .line 189
    .line 190
    check-cast v5, LD1/e;

    .line 191
    .line 192
    invoke-virtual {v5, v1, v2}, LD1/e;->setPosition(J)V

    .line 193
    .line 194
    .line 195
    iget-object v5, p0, LD1/v;->t0:LD1/O;

    .line 196
    .line 197
    invoke-virtual {p0, v0}, LD1/v;->k(Lm0/Y;)Z

    .line 198
    .line 199
    .line 200
    move-result v6

    .line 201
    if-eqz v6, :cond_7

    .line 202
    .line 203
    move-wide v3, v1

    .line 204
    :cond_7
    check-cast v5, LD1/e;

    .line 205
    .line 206
    invoke-virtual {v5, v3, v4}, LD1/e;->setBufferedPosition(J)V

    .line 207
    .line 208
    .line 209
    :cond_8
    iget-object v3, p0, LD1/v;->y0:La/b;

    .line 210
    .line 211
    invoke-virtual {p0, v3}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 212
    .line 213
    .line 214
    const/4 v3, 0x1

    .line 215
    if-nez v0, :cond_9

    .line 216
    .line 217
    const/4 v4, 0x1

    .line 218
    goto :goto_3

    .line 219
    :cond_9
    move-object v4, v0

    .line 220
    check-cast v4, LB0/O;

    .line 221
    .line 222
    invoke-virtual {v4}, LB0/O;->C()I

    .line 223
    .line 224
    .line 225
    move-result v4

    .line 226
    :goto_3
    const-wide/16 v5, 0x3e8

    .line 227
    .line 228
    if-eqz v0, :cond_c

    .line 229
    .line 230
    move-object v7, v0

    .line 231
    check-cast v7, Lm0/f;

    .line 232
    .line 233
    invoke-virtual {v7}, Lm0/f;->g()Z

    .line 234
    .line 235
    .line 236
    move-result v7

    .line 237
    if-eqz v7, :cond_c

    .line 238
    .line 239
    iget-object v3, p0, LD1/v;->t0:LD1/O;

    .line 240
    .line 241
    if-eqz v3, :cond_a

    .line 242
    .line 243
    check-cast v3, LD1/e;

    .line 244
    .line 245
    invoke-virtual {v3}, LD1/e;->getPreferredUpdateDelay()J

    .line 246
    .line 247
    .line 248
    move-result-wide v3

    .line 249
    goto :goto_4

    .line 250
    :cond_a
    move-wide v3, v5

    .line 251
    :goto_4
    rem-long/2addr v1, v5

    .line 252
    sub-long v1, v5, v1

    .line 253
    .line 254
    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->min(JJ)J

    .line 255
    .line 256
    .line 257
    move-result-wide v1

    .line 258
    check-cast v0, LB0/O;

    .line 259
    .line 260
    invoke-virtual {v0}, LB0/O;->c0()V

    .line 261
    .line 262
    .line 263
    iget-object v0, v0, LB0/O;->N0:LB0/v0;

    .line 264
    .line 265
    iget-object v0, v0, LB0/v0;->o:Lm0/S;

    .line 266
    .line 267
    iget v0, v0, Lm0/S;->a:F

    .line 268
    .line 269
    const/4 v3, 0x0

    .line 270
    cmpl-float v3, v0, v3

    .line 271
    .line 272
    if-lez v3, :cond_b

    .line 273
    .line 274
    long-to-float v1, v1

    .line 275
    div-float/2addr v1, v0

    .line 276
    float-to-long v5, v1

    .line 277
    :cond_b
    move-wide v7, v5

    .line 278
    iget v0, p0, LD1/v;->f1:I

    .line 279
    .line 280
    int-to-long v9, v0

    .line 281
    const-wide/16 v11, 0x3e8

    .line 282
    .line 283
    invoke-static/range {v7 .. v12}, Lp0/M;->j(JJJ)J

    .line 284
    .line 285
    .line 286
    move-result-wide v0

    .line 287
    iget-object v2, p0, LD1/v;->y0:La/b;

    .line 288
    .line 289
    invoke-virtual {p0, v2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 290
    .line 291
    .line 292
    goto :goto_5

    .line 293
    :cond_c
    const/4 v0, 0x4

    .line 294
    if-eq v4, v0, :cond_d

    .line 295
    .line 296
    if-eq v4, v3, :cond_d

    .line 297
    .line 298
    iget-object v0, p0, LD1/v;->y0:La/b;

    .line 299
    .line 300
    invoke-virtual {p0, v0, v5, v6}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 301
    .line 302
    .line 303
    :cond_d
    :goto_5
    return-void
.end method

.method public setAnimationEnabled(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, LD1/v;->G:LD1/B;

    .line 2
    .line 3
    iput-boolean p1, v0, LD1/B;->C:Z

    .line 4
    .line 5
    return-void
.end method

.method public setOnFullScreenModeChangedListener(LD1/l;)V
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iput-object p1, p0, LD1/v;->W0:LD1/l;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const/4 v1, 0x1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v2, 0x0

    .line 10
    :goto_0
    const/16 v3, 0x8

    .line 11
    .line 12
    iget-object v4, p0, LD1/v;->m0:Landroid/widget/ImageView;

    .line 13
    .line 14
    if-nez v4, :cond_1

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_1
    if-eqz v2, :cond_2

    .line 18
    .line 19
    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    .line 20
    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_2
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 24
    .line 25
    .line 26
    :goto_1
    if-eqz p1, :cond_3

    .line 27
    .line 28
    goto :goto_2

    .line 29
    :cond_3
    const/4 v1, 0x0

    .line 30
    :goto_2
    iget-object p1, p0, LD1/v;->n0:Landroid/widget/ImageView;

    .line 31
    .line 32
    if-nez p1, :cond_4

    .line 33
    .line 34
    goto :goto_3

    .line 35
    :cond_4
    if-eqz v1, :cond_5

    .line 36
    .line 37
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 38
    .line 39
    .line 40
    goto :goto_3

    .line 41
    :cond_5
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 42
    .line 43
    .line 44
    :goto_3
    return-void
.end method

.method public setPlayer(Lm0/Y;)V
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x0

    .line 10
    const/4 v3, 0x1

    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/H1;->i(Z)V

    .line 17
    .line 18
    .line 19
    if-eqz p1, :cond_1

    .line 20
    .line 21
    move-object v0, p1

    .line 22
    check-cast v0, LB0/O;

    .line 23
    .line 24
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    iget-object v0, v0, LB0/O;->Y:Landroid/os/Looper;

    .line 29
    .line 30
    if-ne v0, v1, :cond_2

    .line 31
    .line 32
    :cond_1
    const/4 v2, 0x1

    .line 33
    :cond_2
    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/H1;->d(Z)V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, LD1/v;->V0:Lm0/Y;

    .line 37
    .line 38
    if-ne v0, p1, :cond_3

    .line 39
    .line 40
    return-void

    .line 41
    :cond_3
    iget-object v1, p0, LD1/v;->I:LD1/k;

    .line 42
    .line 43
    if-eqz v0, :cond_4

    .line 44
    .line 45
    check-cast v0, LB0/O;

    .line 46
    .line 47
    invoke-virtual {v0, v1}, LB0/O;->M(Lm0/W;)V

    .line 48
    .line 49
    .line 50
    :cond_4
    iput-object p1, p0, LD1/v;->V0:Lm0/Y;

    .line 51
    .line 52
    if-eqz p1, :cond_5

    .line 53
    .line 54
    check-cast p1, LB0/O;

    .line 55
    .line 56
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    .line 58
    .line 59
    iget-object p1, p1, LB0/O;->S:Lx/e;

    .line 60
    .line 61
    invoke-virtual {p1, v1}, Lx/e;->a(Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    :cond_5
    invoke-virtual {p0}, LD1/v;->m()V

    .line 65
    .line 66
    .line 67
    return-void
.end method

.method public setProgressUpdateListener(LD1/o;)V
    .locals 0

    .line 1
    return-void
.end method

.method public setRepeatToggleModes(I)V
    .locals 4

    .line 1
    iput p1, p0, LD1/v;->g1:I

    .line 2
    .line 3
    iget-object v0, p0, LD1/v;->V0:Lm0/Y;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    const/16 v3, 0xf

    .line 10
    .line 11
    check-cast v0, Lm0/f;

    .line 12
    .line 13
    invoke-virtual {v0, v3}, Lm0/f;->c(I)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    iget-object v0, p0, LD1/v;->V0:Lm0/Y;

    .line 20
    .line 21
    check-cast v0, LB0/O;

    .line 22
    .line 23
    invoke-virtual {v0}, LB0/O;->c0()V

    .line 24
    .line 25
    .line 26
    iget v0, v0, LB0/O;->k0:I

    .line 27
    .line 28
    if-nez p1, :cond_0

    .line 29
    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    iget-object v0, p0, LD1/v;->V0:Lm0/Y;

    .line 33
    .line 34
    check-cast v0, LB0/O;

    .line 35
    .line 36
    invoke-virtual {v0, v1}, LB0/O;->T(I)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    const/4 v3, 0x2

    .line 41
    if-ne p1, v2, :cond_1

    .line 42
    .line 43
    if-ne v0, v3, :cond_1

    .line 44
    .line 45
    iget-object v0, p0, LD1/v;->V0:Lm0/Y;

    .line 46
    .line 47
    check-cast v0, LB0/O;

    .line 48
    .line 49
    invoke-virtual {v0, v2}, LB0/O;->T(I)V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    if-ne p1, v3, :cond_2

    .line 54
    .line 55
    if-ne v0, v2, :cond_2

    .line 56
    .line 57
    iget-object v0, p0, LD1/v;->V0:Lm0/Y;

    .line 58
    .line 59
    check-cast v0, LB0/O;

    .line 60
    .line 61
    invoke-virtual {v0, v3}, LB0/O;->T(I)V

    .line 62
    .line 63
    .line 64
    :cond_2
    :goto_0
    if-eqz p1, :cond_3

    .line 65
    .line 66
    const/4 v1, 0x1

    .line 67
    :cond_3
    iget-object p1, p0, LD1/v;->G:LD1/B;

    .line 68
    .line 69
    iget-object v0, p0, LD1/v;->i0:Landroid/widget/ImageView;

    .line 70
    .line 71
    invoke-virtual {p1, v0, v1}, LD1/B;->i(Landroid/view/View;Z)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0}, LD1/v;->t()V

    .line 75
    .line 76
    .line 77
    return-void
.end method

.method public setShowFastForwardButton(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, LD1/v;->G:LD1/B;

    .line 2
    .line 3
    iget-object v1, p0, LD1/v;->e0:Landroid/view/View;

    .line 4
    .line 5
    invoke-virtual {v0, v1, p1}, LD1/B;->i(Landroid/view/View;Z)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, LD1/v;->p()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setShowMultiWindowTimeBar(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iput-boolean p1, p0, LD1/v;->Z0:Z

    .line 2
    .line 3
    invoke-virtual {p0}, LD1/v;->w()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setShowNextButton(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, LD1/v;->G:LD1/B;

    .line 2
    .line 3
    iget-object v1, p0, LD1/v;->c0:Landroid/widget/ImageView;

    .line 4
    .line 5
    invoke-virtual {v0, v1, p1}, LD1/B;->i(Landroid/view/View;Z)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, LD1/v;->p()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setShowPlayButtonIfPlaybackIsSuppressed(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, LD1/v;->a1:Z

    .line 2
    .line 3
    invoke-virtual {p0}, LD1/v;->q()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setShowPreviousButton(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, LD1/v;->G:LD1/B;

    .line 2
    .line 3
    iget-object v1, p0, LD1/v;->b0:Landroid/widget/ImageView;

    .line 4
    .line 5
    invoke-virtual {v0, v1, p1}, LD1/B;->i(Landroid/view/View;Z)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, LD1/v;->p()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setShowRewindButton(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, LD1/v;->G:LD1/B;

    .line 2
    .line 3
    iget-object v1, p0, LD1/v;->f0:Landroid/view/View;

    .line 4
    .line 5
    invoke-virtual {v0, v1, p1}, LD1/B;->i(Landroid/view/View;Z)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, LD1/v;->p()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setShowShuffleButton(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, LD1/v;->G:LD1/B;

    .line 2
    .line 3
    iget-object v1, p0, LD1/v;->j0:Landroid/widget/ImageView;

    .line 4
    .line 5
    invoke-virtual {v0, v1, p1}, LD1/B;->i(Landroid/view/View;Z)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, LD1/v;->v()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setShowSubtitleButton(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, LD1/v;->G:LD1/B;

    .line 2
    .line 3
    iget-object v1, p0, LD1/v;->l0:Landroid/widget/ImageView;

    .line 4
    .line 5
    invoke-virtual {v0, v1, p1}, LD1/B;->i(Landroid/view/View;Z)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setShowTimeoutMs(I)V
    .locals 0

    .line 1
    iput p1, p0, LD1/v;->d1:I

    .line 2
    .line 3
    invoke-virtual {p0}, LD1/v;->j()Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, LD1/v;->G:LD1/B;

    .line 10
    .line 11
    invoke-virtual {p1}, LD1/B;->h()V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public setShowVrButton(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, LD1/v;->G:LD1/B;

    .line 2
    .line 3
    iget-object v1, p0, LD1/v;->k0:Landroid/widget/ImageView;

    .line 4
    .line 5
    invoke-virtual {v0, v1, p1}, LD1/B;->i(Landroid/view/View;Z)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setTimeBarMinUpdateInterval(I)V
    .locals 2

    .line 1
    const/16 v0, 0x10

    .line 2
    .line 3
    const/16 v1, 0x3e8

    .line 4
    .line 5
    invoke-static {p1, v0, v1}, Lp0/M;->i(III)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    iput p1, p0, LD1/v;->f1:I

    .line 10
    .line 11
    return-void
.end method

.method public setTimeBarScrubbingEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, LD1/v;->e1:Z

    .line 2
    .line 3
    return-void
.end method

.method public setVrButtonListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, LD1/v;->k0:Landroid/widget/ImageView;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    const/4 p1, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    :goto_0
    invoke-virtual {p0, v0, p1}, LD1/v;->n(Landroid/view/View;Z)V

    .line 14
    .line 15
    .line 16
    :cond_1
    return-void
.end method

.method public final t()V
    .locals 7

    .line 1
    invoke-virtual {p0}, LD1/v;->l()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_7

    .line 6
    .line 7
    iget-boolean v0, p0, LD1/v;->Y0:Z

    .line 8
    .line 9
    if-eqz v0, :cond_7

    .line 10
    .line 11
    iget-object v0, p0, LD1/v;->i0:Landroid/widget/ImageView;

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    goto :goto_2

    .line 16
    :cond_0
    iget v1, p0, LD1/v;->g1:I

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    if-nez v1, :cond_1

    .line 20
    .line 21
    invoke-virtual {p0, v0, v2}, LD1/v;->n(Landroid/view/View;Z)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_1
    iget-object v1, p0, LD1/v;->V0:Lm0/Y;

    .line 26
    .line 27
    iget-object v3, p0, LD1/v;->E0:Ljava/lang/String;

    .line 28
    .line 29
    iget-object v4, p0, LD1/v;->B0:Landroid/graphics/drawable/Drawable;

    .line 30
    .line 31
    if-eqz v1, :cond_6

    .line 32
    .line 33
    const/16 v5, 0xf

    .line 34
    .line 35
    move-object v6, v1

    .line 36
    check-cast v6, Lm0/f;

    .line 37
    .line 38
    invoke-virtual {v6, v5}, Lm0/f;->c(I)Z

    .line 39
    .line 40
    .line 41
    move-result v5

    .line 42
    if-nez v5, :cond_2

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_2
    const/4 v2, 0x1

    .line 46
    invoke-virtual {p0, v0, v2}, LD1/v;->n(Landroid/view/View;Z)V

    .line 47
    .line 48
    .line 49
    check-cast v1, LB0/O;

    .line 50
    .line 51
    invoke-virtual {v1}, LB0/O;->c0()V

    .line 52
    .line 53
    .line 54
    iget v1, v1, LB0/O;->k0:I

    .line 55
    .line 56
    if-eqz v1, :cond_5

    .line 57
    .line 58
    if-eq v1, v2, :cond_4

    .line 59
    .line 60
    const/4 v2, 0x2

    .line 61
    if-eq v1, v2, :cond_3

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_3
    iget-object v1, p0, LD1/v;->D0:Landroid/graphics/drawable/Drawable;

    .line 65
    .line 66
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 67
    .line 68
    .line 69
    iget-object v1, p0, LD1/v;->G0:Ljava/lang/String;

    .line 70
    .line 71
    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_4
    iget-object v1, p0, LD1/v;->C0:Landroid/graphics/drawable/Drawable;

    .line 76
    .line 77
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 78
    .line 79
    .line 80
    iget-object v1, p0, LD1/v;->F0:Ljava/lang/String;

    .line 81
    .line 82
    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 83
    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_5
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 90
    .line 91
    .line 92
    :goto_0
    return-void

    .line 93
    :cond_6
    :goto_1
    invoke-virtual {p0, v0, v2}, LD1/v;->n(Landroid/view/View;Z)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 100
    .line 101
    .line 102
    :cond_7
    :goto_2
    return-void
.end method

.method public final u()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, LD1/v;->Q:Landroidx/recyclerview/widget/RecyclerView;

    .line 3
    .line 4
    invoke-virtual {v1, v0, v0}, Landroid/view/View;->measure(II)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iget v2, p0, LD1/v;->a0:I

    .line 12
    .line 13
    mul-int/lit8 v3, v2, 0x2

    .line 14
    .line 15
    sub-int/2addr v0, v3

    .line 16
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    iget-object v3, p0, LD1/v;->W:Landroid/widget/PopupWindow;

    .line 25
    .line 26
    invoke-virtual {v3, v0}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    mul-int/lit8 v2, v2, 0x2

    .line 34
    .line 35
    sub-int/2addr v0, v2

    .line 36
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    invoke-virtual {v3, v0}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method public final v()V
    .locals 7

    .line 1
    invoke-virtual {p0}, LD1/v;->l()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_6

    .line 6
    .line 7
    iget-boolean v0, p0, LD1/v;->Y0:Z

    .line 8
    .line 9
    if-eqz v0, :cond_6

    .line 10
    .line 11
    iget-object v0, p0, LD1/v;->j0:Landroid/widget/ImageView;

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_0
    iget-object v1, p0, LD1/v;->V0:Lm0/Y;

    .line 17
    .line 18
    iget-object v2, p0, LD1/v;->G:LD1/B;

    .line 19
    .line 20
    invoke-virtual {v2, v0}, LD1/B;->c(Landroid/widget/ImageView;)Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    const/4 v3, 0x0

    .line 25
    if-nez v2, :cond_1

    .line 26
    .line 27
    invoke-virtual {p0, v0, v3}, LD1/v;->n(Landroid/view/View;Z)V

    .line 28
    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_1
    iget-object v2, p0, LD1/v;->M0:Ljava/lang/String;

    .line 32
    .line 33
    iget-object v4, p0, LD1/v;->I0:Landroid/graphics/drawable/Drawable;

    .line 34
    .line 35
    if-eqz v1, :cond_5

    .line 36
    .line 37
    const/16 v5, 0xe

    .line 38
    .line 39
    move-object v6, v1

    .line 40
    check-cast v6, Lm0/f;

    .line 41
    .line 42
    invoke-virtual {v6, v5}, Lm0/f;->c(I)Z

    .line 43
    .line 44
    .line 45
    move-result v5

    .line 46
    if-nez v5, :cond_2

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_2
    const/4 v3, 0x1

    .line 50
    invoke-virtual {p0, v0, v3}, LD1/v;->n(Landroid/view/View;Z)V

    .line 51
    .line 52
    .line 53
    check-cast v1, LB0/O;

    .line 54
    .line 55
    invoke-virtual {v1}, LB0/O;->c0()V

    .line 56
    .line 57
    .line 58
    iget-boolean v3, v1, LB0/O;->l0:Z

    .line 59
    .line 60
    if-eqz v3, :cond_3

    .line 61
    .line 62
    iget-object v4, p0, LD1/v;->H0:Landroid/graphics/drawable/Drawable;

    .line 63
    .line 64
    :cond_3
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1}, LB0/O;->c0()V

    .line 68
    .line 69
    .line 70
    iget-boolean v1, v1, LB0/O;->l0:Z

    .line 71
    .line 72
    if-eqz v1, :cond_4

    .line 73
    .line 74
    iget-object v2, p0, LD1/v;->L0:Ljava/lang/String;

    .line 75
    .line 76
    :cond_4
    invoke-virtual {v0, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 77
    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_5
    :goto_0
    invoke-virtual {p0, v0, v3}, LD1/v;->n(Landroid/view/View;Z)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 87
    .line 88
    .line 89
    :cond_6
    :goto_1
    return-void
.end method

.method public final w()V
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, LD1/v;->V0:Lm0/Y;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-boolean v2, v0, LD1/v;->Z0:Z

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    const/4 v4, 0x1

    .line 12
    iget-object v5, v0, LD1/v;->x0:Lm0/e0;

    .line 13
    .line 14
    if-eqz v2, :cond_1

    .line 15
    .line 16
    invoke-static {v1, v5}, LD1/v;->c(Lm0/Y;Lm0/e0;)Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_1

    .line 21
    .line 22
    const/4 v2, 0x1

    .line 23
    goto :goto_0

    .line 24
    :cond_1
    const/4 v2, 0x0

    .line 25
    :goto_0
    iput-boolean v2, v0, LD1/v;->b1:Z

    .line 26
    .line 27
    const-wide/16 v6, 0x0

    .line 28
    .line 29
    iput-wide v6, v0, LD1/v;->l1:J

    .line 30
    .line 31
    move-object v2, v1

    .line 32
    check-cast v2, Lm0/f;

    .line 33
    .line 34
    const/16 v8, 0x11

    .line 35
    .line 36
    invoke-virtual {v2, v8}, Lm0/f;->c(I)Z

    .line 37
    .line 38
    .line 39
    move-result v8

    .line 40
    if-eqz v8, :cond_2

    .line 41
    .line 42
    move-object v8, v1

    .line 43
    check-cast v8, LB0/O;

    .line 44
    .line 45
    invoke-virtual {v8}, LB0/O;->x()Lm0/f0;

    .line 46
    .line 47
    .line 48
    move-result-object v8

    .line 49
    goto :goto_1

    .line 50
    :cond_2
    sget-object v8, Lm0/f0;->a:Lm0/c0;

    .line 51
    .line 52
    :goto_1
    invoke-virtual {v8}, Lm0/f0;->q()Z

    .line 53
    .line 54
    .line 55
    move-result v9

    .line 56
    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    if-nez v9, :cond_13

    .line 62
    .line 63
    check-cast v1, LB0/O;

    .line 64
    .line 65
    invoke-virtual {v1}, LB0/O;->t()I

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    iget-boolean v2, v0, LD1/v;->b1:Z

    .line 70
    .line 71
    if-eqz v2, :cond_3

    .line 72
    .line 73
    const/4 v9, 0x0

    .line 74
    goto :goto_2

    .line 75
    :cond_3
    move v9, v1

    .line 76
    :goto_2
    if-eqz v2, :cond_4

    .line 77
    .line 78
    invoke-virtual {v8}, Lm0/f0;->p()I

    .line 79
    .line 80
    .line 81
    move-result v2

    .line 82
    sub-int/2addr v2, v4

    .line 83
    goto :goto_3

    .line 84
    :cond_4
    move v2, v1

    .line 85
    :goto_3
    move-wide v12, v6

    .line 86
    const/4 v14, 0x0

    .line 87
    :goto_4
    if-gt v9, v2, :cond_6

    .line 88
    .line 89
    if-ne v9, v1, :cond_5

    .line 90
    .line 91
    invoke-static {v12, v13}, Lp0/M;->e0(J)J

    .line 92
    .line 93
    .line 94
    move-result-wide v6

    .line 95
    iput-wide v6, v0, LD1/v;->l1:J

    .line 96
    .line 97
    :cond_5
    invoke-virtual {v8, v9, v5}, Lm0/f0;->o(ILm0/e0;)V

    .line 98
    .line 99
    .line 100
    iget-wide v6, v5, Lm0/e0;->m:J

    .line 101
    .line 102
    cmp-long v16, v6, v10

    .line 103
    .line 104
    if-nez v16, :cond_7

    .line 105
    .line 106
    iget-boolean v1, v0, LD1/v;->b1:Z

    .line 107
    .line 108
    xor-int/2addr v1, v4

    .line 109
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/H1;->i(Z)V

    .line 110
    .line 111
    .line 112
    :cond_6
    const/4 v5, 0x1

    .line 113
    goto/16 :goto_c

    .line 114
    .line 115
    :cond_7
    iget v6, v5, Lm0/e0;->n:I

    .line 116
    .line 117
    :goto_5
    iget v7, v5, Lm0/e0;->o:I

    .line 118
    .line 119
    if-gt v6, v7, :cond_12

    .line 120
    .line 121
    iget-object v7, v0, LD1/v;->w0:Lm0/d0;

    .line 122
    .line 123
    invoke-virtual {v8, v6, v7, v3}, Lm0/f0;->g(ILm0/d0;Z)Lm0/d0;

    .line 124
    .line 125
    .line 126
    iget-object v15, v7, Lm0/d0;->g:Lm0/c;

    .line 127
    .line 128
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 129
    .line 130
    .line 131
    iget-object v15, v7, Lm0/d0;->g:Lm0/c;

    .line 132
    .line 133
    iget v15, v15, Lm0/c;->a:I

    .line 134
    .line 135
    :goto_6
    if-ge v3, v15, :cond_11

    .line 136
    .line 137
    invoke-virtual {v7, v3}, Lm0/d0;->d(I)J

    .line 138
    .line 139
    .line 140
    move-result-wide v17

    .line 141
    const-wide/high16 v19, -0x8000000000000000L

    .line 142
    .line 143
    cmp-long v21, v17, v19

    .line 144
    .line 145
    move-object/from16 v20, v5

    .line 146
    .line 147
    if-nez v21, :cond_a

    .line 148
    .line 149
    iget-wide v4, v7, Lm0/d0;->d:J

    .line 150
    .line 151
    cmp-long v17, v4, v10

    .line 152
    .line 153
    if-nez v17, :cond_9

    .line 154
    .line 155
    :cond_8
    move/from16 v21, v1

    .line 156
    .line 157
    const/4 v5, 0x1

    .line 158
    goto/16 :goto_b

    .line 159
    .line 160
    :cond_9
    move-wide/from16 v17, v4

    .line 161
    .line 162
    :cond_a
    iget-wide v4, v7, Lm0/d0;->e:J

    .line 163
    .line 164
    add-long v17, v17, v4

    .line 165
    .line 166
    const-wide/16 v4, 0x0

    .line 167
    .line 168
    cmp-long v16, v17, v4

    .line 169
    .line 170
    if-ltz v16, :cond_8

    .line 171
    .line 172
    iget-object v4, v0, LD1/v;->h1:[J

    .line 173
    .line 174
    array-length v5, v4

    .line 175
    if-ne v14, v5, :cond_c

    .line 176
    .line 177
    array-length v5, v4

    .line 178
    if-nez v5, :cond_b

    .line 179
    .line 180
    const/4 v5, 0x1

    .line 181
    goto :goto_7

    .line 182
    :cond_b
    array-length v5, v4

    .line 183
    mul-int/lit8 v5, v5, 0x2

    .line 184
    .line 185
    :goto_7
    invoke-static {v4, v5}, Ljava/util/Arrays;->copyOf([JI)[J

    .line 186
    .line 187
    .line 188
    move-result-object v4

    .line 189
    iput-object v4, v0, LD1/v;->h1:[J

    .line 190
    .line 191
    iget-object v4, v0, LD1/v;->i1:[Z

    .line 192
    .line 193
    invoke-static {v4, v5}, Ljava/util/Arrays;->copyOf([ZI)[Z

    .line 194
    .line 195
    .line 196
    move-result-object v4

    .line 197
    iput-object v4, v0, LD1/v;->i1:[Z

    .line 198
    .line 199
    :cond_c
    iget-object v4, v0, LD1/v;->h1:[J

    .line 200
    .line 201
    add-long v17, v12, v17

    .line 202
    .line 203
    invoke-static/range {v17 .. v18}, Lp0/M;->e0(J)J

    .line 204
    .line 205
    .line 206
    move-result-wide v17

    .line 207
    aput-wide v17, v4, v14

    .line 208
    .line 209
    iget-object v4, v0, LD1/v;->i1:[Z

    .line 210
    .line 211
    iget-object v5, v7, Lm0/d0;->g:Lm0/c;

    .line 212
    .line 213
    invoke-virtual {v5, v3}, Lm0/c;->a(I)Lm0/b;

    .line 214
    .line 215
    .line 216
    move-result-object v5

    .line 217
    iget v10, v5, Lm0/b;->b:I

    .line 218
    .line 219
    const/4 v11, -0x1

    .line 220
    if-ne v10, v11, :cond_e

    .line 221
    .line 222
    move/from16 v21, v1

    .line 223
    .line 224
    :cond_d
    const/4 v5, 0x1

    .line 225
    :goto_8
    const/16 v19, 0x1

    .line 226
    .line 227
    goto :goto_a

    .line 228
    :cond_e
    const/4 v11, 0x0

    .line 229
    :goto_9
    if-ge v11, v10, :cond_10

    .line 230
    .line 231
    move/from16 v21, v1

    .line 232
    .line 233
    iget-object v1, v5, Lm0/b;->f:[I

    .line 234
    .line 235
    aget v1, v1, v11

    .line 236
    .line 237
    if-eqz v1, :cond_d

    .line 238
    .line 239
    move-object/from16 v22, v5

    .line 240
    .line 241
    const/4 v5, 0x1

    .line 242
    if-ne v1, v5, :cond_f

    .line 243
    .line 244
    goto :goto_8

    .line 245
    :cond_f
    add-int/lit8 v11, v11, 0x1

    .line 246
    .line 247
    move/from16 v1, v21

    .line 248
    .line 249
    move-object/from16 v5, v22

    .line 250
    .line 251
    goto :goto_9

    .line 252
    :cond_10
    move/from16 v21, v1

    .line 253
    .line 254
    const/4 v5, 0x1

    .line 255
    const/16 v19, 0x0

    .line 256
    .line 257
    :goto_a
    xor-int/lit8 v1, v19, 0x1

    .line 258
    .line 259
    aput-boolean v1, v4, v14

    .line 260
    .line 261
    add-int/lit8 v14, v14, 0x1

    .line 262
    .line 263
    :goto_b
    add-int/lit8 v3, v3, 0x1

    .line 264
    .line 265
    move-object/from16 v5, v20

    .line 266
    .line 267
    move/from16 v1, v21

    .line 268
    .line 269
    const/4 v4, 0x1

    .line 270
    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    goto/16 :goto_6

    .line 276
    .line 277
    :cond_11
    move/from16 v21, v1

    .line 278
    .line 279
    move-object/from16 v20, v5

    .line 280
    .line 281
    const/4 v5, 0x1

    .line 282
    add-int/lit8 v6, v6, 0x1

    .line 283
    .line 284
    move-object/from16 v5, v20

    .line 285
    .line 286
    const/4 v3, 0x0

    .line 287
    const/4 v4, 0x1

    .line 288
    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    goto/16 :goto_5

    .line 294
    .line 295
    :cond_12
    move/from16 v21, v1

    .line 296
    .line 297
    move-object v1, v5

    .line 298
    const/4 v5, 0x1

    .line 299
    iget-wide v3, v1, Lm0/e0;->m:J

    .line 300
    .line 301
    add-long/2addr v12, v3

    .line 302
    add-int/lit8 v9, v9, 0x1

    .line 303
    .line 304
    move-object v5, v1

    .line 305
    move/from16 v1, v21

    .line 306
    .line 307
    const/4 v3, 0x0

    .line 308
    const/4 v4, 0x1

    .line 309
    const-wide/16 v6, 0x0

    .line 310
    .line 311
    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    goto/16 :goto_4

    .line 317
    .line 318
    :goto_c
    move-wide v6, v12

    .line 319
    goto :goto_e

    .line 320
    :cond_13
    const/4 v5, 0x1

    .line 321
    const/16 v1, 0x10

    .line 322
    .line 323
    invoke-virtual {v2, v1}, Lm0/f;->c(I)Z

    .line 324
    .line 325
    .line 326
    move-result v1

    .line 327
    if-eqz v1, :cond_14

    .line 328
    .line 329
    invoke-virtual {v2}, Lm0/f;->a()J

    .line 330
    .line 331
    .line 332
    move-result-wide v1

    .line 333
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    cmp-long v6, v1, v3

    .line 339
    .line 340
    if-eqz v6, :cond_14

    .line 341
    .line 342
    invoke-static {v1, v2}, Lp0/M;->R(J)J

    .line 343
    .line 344
    .line 345
    move-result-wide v6

    .line 346
    :goto_d
    const/4 v14, 0x0

    .line 347
    goto :goto_e

    .line 348
    :cond_14
    const-wide/16 v6, 0x0

    .line 349
    .line 350
    goto :goto_d

    .line 351
    :goto_e
    invoke-static {v6, v7}, Lp0/M;->e0(J)J

    .line 352
    .line 353
    .line 354
    move-result-wide v1

    .line 355
    iget-object v3, v0, LD1/v;->r0:Landroid/widget/TextView;

    .line 356
    .line 357
    if-eqz v3, :cond_15

    .line 358
    .line 359
    iget-object v4, v0, LD1/v;->u0:Ljava/lang/StringBuilder;

    .line 360
    .line 361
    iget-object v6, v0, LD1/v;->v0:Ljava/util/Formatter;

    .line 362
    .line 363
    invoke-static {v4, v6, v1, v2}, Lp0/M;->D(Ljava/lang/StringBuilder;Ljava/util/Formatter;J)Ljava/lang/String;

    .line 364
    .line 365
    .line 366
    move-result-object v4

    .line 367
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 368
    .line 369
    .line 370
    :cond_15
    iget-object v3, v0, LD1/v;->t0:LD1/O;

    .line 371
    .line 372
    if-eqz v3, :cond_19

    .line 373
    .line 374
    check-cast v3, LD1/e;

    .line 375
    .line 376
    invoke-virtual {v3, v1, v2}, LD1/e;->setDuration(J)V

    .line 377
    .line 378
    .line 379
    iget-object v1, v0, LD1/v;->j1:[J

    .line 380
    .line 381
    array-length v2, v1

    .line 382
    add-int v4, v14, v2

    .line 383
    .line 384
    iget-object v6, v0, LD1/v;->h1:[J

    .line 385
    .line 386
    array-length v7, v6

    .line 387
    if-le v4, v7, :cond_16

    .line 388
    .line 389
    invoke-static {v6, v4}, Ljava/util/Arrays;->copyOf([JI)[J

    .line 390
    .line 391
    .line 392
    move-result-object v6

    .line 393
    iput-object v6, v0, LD1/v;->h1:[J

    .line 394
    .line 395
    iget-object v6, v0, LD1/v;->i1:[Z

    .line 396
    .line 397
    invoke-static {v6, v4}, Ljava/util/Arrays;->copyOf([ZI)[Z

    .line 398
    .line 399
    .line 400
    move-result-object v6

    .line 401
    iput-object v6, v0, LD1/v;->i1:[Z

    .line 402
    .line 403
    :cond_16
    iget-object v6, v0, LD1/v;->h1:[J

    .line 404
    .line 405
    const/4 v7, 0x0

    .line 406
    invoke-static {v1, v7, v6, v14, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 407
    .line 408
    .line 409
    iget-object v1, v0, LD1/v;->k1:[Z

    .line 410
    .line 411
    iget-object v6, v0, LD1/v;->i1:[Z

    .line 412
    .line 413
    invoke-static {v1, v7, v6, v14, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 414
    .line 415
    .line 416
    iget-object v1, v0, LD1/v;->h1:[J

    .line 417
    .line 418
    iget-object v2, v0, LD1/v;->i1:[Z

    .line 419
    .line 420
    if-eqz v4, :cond_18

    .line 421
    .line 422
    if-eqz v1, :cond_17

    .line 423
    .line 424
    if-eqz v2, :cond_17

    .line 425
    .line 426
    goto :goto_f

    .line 427
    :cond_17
    const/4 v5, 0x0

    .line 428
    :cond_18
    :goto_f
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/H1;->d(Z)V

    .line 429
    .line 430
    .line 431
    iput v4, v3, LD1/e;->v0:I

    .line 432
    .line 433
    iput-object v1, v3, LD1/e;->w0:[J

    .line 434
    .line 435
    iput-object v2, v3, LD1/e;->x0:[Z

    .line 436
    .line 437
    invoke-virtual {v3}, LD1/e;->e()V

    .line 438
    .line 439
    .line 440
    :cond_19
    invoke-virtual/range {p0 .. p0}, LD1/v;->s()V

    .line 441
    .line 442
    .line 443
    return-void
.end method

.method public final x()V
    .locals 6

    .line 1
    iget-object v0, p0, LD1/v;->T:LD1/j;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    iput-object v1, v0, LD1/t;->I:Ljava/util/List;

    .line 11
    .line 12
    iget-object v1, p0, LD1/v;->U:LD1/j;

    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    iput-object v2, v1, LD1/t;->I:Ljava/util/List;

    .line 22
    .line 23
    iget-object v2, p0, LD1/v;->V0:Lm0/Y;

    .line 24
    .line 25
    const/4 v3, 0x1

    .line 26
    iget-object v4, p0, LD1/v;->l0:Landroid/widget/ImageView;

    .line 27
    .line 28
    if-eqz v2, :cond_2

    .line 29
    .line 30
    const/16 v5, 0x1e

    .line 31
    .line 32
    check-cast v2, Lm0/f;

    .line 33
    .line 34
    invoke-virtual {v2, v5}, Lm0/f;->c(I)Z

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-eqz v2, :cond_2

    .line 39
    .line 40
    iget-object v2, p0, LD1/v;->V0:Lm0/Y;

    .line 41
    .line 42
    const/16 v5, 0x1d

    .line 43
    .line 44
    check-cast v2, Lm0/f;

    .line 45
    .line 46
    invoke-virtual {v2, v5}, Lm0/f;->c(I)Z

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    if-nez v2, :cond_0

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_0
    iget-object v2, p0, LD1/v;->V0:Lm0/Y;

    .line 54
    .line 55
    check-cast v2, LB0/O;

    .line 56
    .line 57
    invoke-virtual {v2}, LB0/O;->y()Lm0/m0;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    invoke-virtual {p0, v2, v3}, LD1/v;->f(Lm0/m0;I)Lz4/d0;

    .line 62
    .line 63
    .line 64
    move-result-object v5

    .line 65
    invoke-virtual {v1, v5}, LD1/j;->h(Lz4/d0;)V

    .line 66
    .line 67
    .line 68
    iget-object v1, p0, LD1/v;->G:LD1/B;

    .line 69
    .line 70
    invoke-virtual {v1, v4}, LD1/B;->c(Landroid/widget/ImageView;)Z

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    if-eqz v1, :cond_1

    .line 75
    .line 76
    const/4 v1, 0x3

    .line 77
    invoke-virtual {p0, v2, v1}, LD1/v;->f(Lm0/m0;I)Lz4/d0;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    invoke-virtual {v0, v1}, LD1/j;->h(Lz4/d0;)V

    .line 82
    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_1
    sget-object v1, Lz4/d0;->K:Lz4/d0;

    .line 86
    .line 87
    invoke-virtual {v0, v1}, LD1/j;->h(Lz4/d0;)V

    .line 88
    .line 89
    .line 90
    :cond_2
    :goto_0
    invoke-virtual {v0}, LD1/t;->a()I

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    const/4 v1, 0x0

    .line 95
    if-lez v0, :cond_3

    .line 96
    .line 97
    const/4 v0, 0x1

    .line 98
    goto :goto_1

    .line 99
    :cond_3
    const/4 v0, 0x0

    .line 100
    :goto_1
    invoke-virtual {p0, v4, v0}, LD1/v;->n(Landroid/view/View;Z)V

    .line 101
    .line 102
    .line 103
    iget-object v0, p0, LD1/v;->R:LD1/q;

    .line 104
    .line 105
    invoke-virtual {v0, v3}, LD1/q;->g(I)Z

    .line 106
    .line 107
    .line 108
    move-result v2

    .line 109
    if-nez v2, :cond_5

    .line 110
    .line 111
    invoke-virtual {v0, v1}, LD1/q;->g(I)Z

    .line 112
    .line 113
    .line 114
    move-result v0

    .line 115
    if-eqz v0, :cond_4

    .line 116
    .line 117
    goto :goto_2

    .line 118
    :cond_4
    const/4 v3, 0x0

    .line 119
    :cond_5
    :goto_2
    iget-object v0, p0, LD1/v;->o0:Landroid/view/View;

    .line 120
    .line 121
    invoke-virtual {p0, v0, v3}, LD1/v;->n(Landroid/view/View;Z)V

    .line 122
    .line 123
    .line 124
    return-void
.end method
