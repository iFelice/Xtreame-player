.class public Landroidx/media3/ui/PlayerView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# static fields
.field public static final synthetic p0:I


# instance fields
.field public final G:LD1/D;

.field public final H:Landroidx/media3/ui/AspectRatioFrameLayout;

.field public final I:Landroid/view/View;

.field public final J:Landroid/view/View;

.field public final K:Z

.field public final L:LD1/H;

.field public final M:Landroid/widget/ImageView;

.field public final N:Landroid/widget/ImageView;

.field public final O:Landroidx/media3/ui/SubtitleView;

.field public final P:Landroid/view/View;

.field public final Q:Landroid/widget/TextView;

.field public final R:LD1/v;

.field public final S:Landroid/widget/FrameLayout;

.field public final T:Landroid/widget/FrameLayout;

.field public final U:Landroid/os/Handler;

.field public final V:Ljava/lang/Class;

.field public final W:Ljava/lang/reflect/Method;

.field public final a0:Ljava/lang/Object;

.field public b0:Lm0/Y;

.field public c0:Z

.field public d0:LD1/u;

.field public e0:I

.field public f0:I

.field public g0:Landroid/graphics/drawable/Drawable;

.field public h0:I

.field public i0:Z

.field public j0:Ljava/lang/CharSequence;

.field public k0:I

.field public l0:Z

.field public m0:Z

.field public n0:Z

.field public o0:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 23

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
    const/4 v3, 0x1

    .line 8
    const/4 v4, 0x0

    .line 9
    invoke-direct {v1, v0, v2, v4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 10
    .line 11
    .line 12
    new-instance v5, LD1/D;

    .line 13
    .line 14
    invoke-direct {v5, v1}, LD1/D;-><init>(Landroidx/media3/ui/PlayerView;)V

    .line 15
    .line 16
    .line 17
    iput-object v5, v1, Landroidx/media3/ui/PlayerView;->G:LD1/D;

    .line 18
    .line 19
    new-instance v6, Landroid/os/Handler;

    .line 20
    .line 21
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 22
    .line 23
    .line 24
    move-result-object v7

    .line 25
    invoke-direct {v6, v7}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 26
    .line 27
    .line 28
    iput-object v6, v1, Landroidx/media3/ui/PlayerView;->U:Landroid/os/Handler;

    .line 29
    .line 30
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isInEditMode()Z

    .line 31
    .line 32
    .line 33
    move-result v6

    .line 34
    const/4 v7, 0x0

    .line 35
    if-eqz v6, :cond_1

    .line 36
    .line 37
    iput-object v7, v1, Landroidx/media3/ui/PlayerView;->H:Landroidx/media3/ui/AspectRatioFrameLayout;

    .line 38
    .line 39
    iput-object v7, v1, Landroidx/media3/ui/PlayerView;->I:Landroid/view/View;

    .line 40
    .line 41
    iput-object v7, v1, Landroidx/media3/ui/PlayerView;->J:Landroid/view/View;

    .line 42
    .line 43
    iput-boolean v4, v1, Landroidx/media3/ui/PlayerView;->K:Z

    .line 44
    .line 45
    iput-object v7, v1, Landroidx/media3/ui/PlayerView;->L:LD1/H;

    .line 46
    .line 47
    iput-object v7, v1, Landroidx/media3/ui/PlayerView;->M:Landroid/widget/ImageView;

    .line 48
    .line 49
    iput-object v7, v1, Landroidx/media3/ui/PlayerView;->N:Landroid/widget/ImageView;

    .line 50
    .line 51
    iput-object v7, v1, Landroidx/media3/ui/PlayerView;->O:Landroidx/media3/ui/SubtitleView;

    .line 52
    .line 53
    iput-object v7, v1, Landroidx/media3/ui/PlayerView;->P:Landroid/view/View;

    .line 54
    .line 55
    iput-object v7, v1, Landroidx/media3/ui/PlayerView;->Q:Landroid/widget/TextView;

    .line 56
    .line 57
    iput-object v7, v1, Landroidx/media3/ui/PlayerView;->R:LD1/v;

    .line 58
    .line 59
    iput-object v7, v1, Landroidx/media3/ui/PlayerView;->S:Landroid/widget/FrameLayout;

    .line 60
    .line 61
    iput-object v7, v1, Landroidx/media3/ui/PlayerView;->T:Landroid/widget/FrameLayout;

    .line 62
    .line 63
    iput-object v7, v1, Landroidx/media3/ui/PlayerView;->V:Ljava/lang/Class;

    .line 64
    .line 65
    iput-object v7, v1, Landroidx/media3/ui/PlayerView;->W:Ljava/lang/reflect/Method;

    .line 66
    .line 67
    iput-object v7, v1, Landroidx/media3/ui/PlayerView;->a0:Ljava/lang/Object;

    .line 68
    .line 69
    new-instance v2, Landroid/widget/ImageView;

    .line 70
    .line 71
    invoke-direct {v2, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 72
    .line 73
    .line 74
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 75
    .line 76
    const v4, 0x7f0805ff

    .line 77
    .line 78
    .line 79
    const/16 v5, 0x17

    .line 80
    .line 81
    if-lt v3, v5, :cond_0

    .line 82
    .line 83
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    invoke-virtual {v3, v4, v0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 96
    .line 97
    .line 98
    invoke-static {v3}, LB0/q;->c(Landroid/content/res/Resources;)I

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    invoke-virtual {v2, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 103
    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 107
    .line 108
    .line 109
    move-result-object v3

    .line 110
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    invoke-virtual {v3, v4, v0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 119
    .line 120
    .line 121
    const v0, 0x7f06007a

    .line 122
    .line 123
    .line 124
    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getColor(I)I

    .line 125
    .line 126
    .line 127
    move-result v0

    .line 128
    invoke-virtual {v2, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 129
    .line 130
    .line 131
    :goto_0
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 132
    .line 133
    .line 134
    goto/16 :goto_e

    .line 135
    .line 136
    :cond_1
    const/4 v8, 0x3

    .line 137
    const v9, 0x7f0e007c

    .line 138
    .line 139
    .line 140
    if-eqz v2, :cond_2

    .line 141
    .line 142
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 143
    .line 144
    .line 145
    move-result-object v11

    .line 146
    sget-object v12, LD1/I;->d:[I

    .line 147
    .line 148
    invoke-virtual {v11, v2, v12, v4, v4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 149
    .line 150
    .line 151
    move-result-object v11

    .line 152
    const/16 v12, 0x2a

    .line 153
    .line 154
    :try_start_0
    invoke-virtual {v11, v12}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 155
    .line 156
    .line 157
    move-result v13

    .line 158
    invoke-virtual {v11, v12, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 159
    .line 160
    .line 161
    move-result v12

    .line 162
    const/16 v14, 0x16

    .line 163
    .line 164
    invoke-virtual {v11, v14, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 165
    .line 166
    .line 167
    move-result v9

    .line 168
    const/16 v14, 0x32

    .line 169
    .line 170
    invoke-virtual {v11, v14, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 171
    .line 172
    .line 173
    move-result v14

    .line 174
    invoke-virtual {v11, v8, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 175
    .line 176
    .line 177
    move-result v15

    .line 178
    const/16 v7, 0x9

    .line 179
    .line 180
    invoke-virtual {v11, v7, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 181
    .line 182
    .line 183
    move-result v7

    .line 184
    const/16 v8, 0xf

    .line 185
    .line 186
    invoke-virtual {v11, v8, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 187
    .line 188
    .line 189
    move-result v8

    .line 190
    const/16 v6, 0x33

    .line 191
    .line 192
    invoke-virtual {v11, v6, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 193
    .line 194
    .line 195
    move-result v6

    .line 196
    const/16 v10, 0x2d

    .line 197
    .line 198
    invoke-virtual {v11, v10, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 199
    .line 200
    .line 201
    move-result v10

    .line 202
    const/16 v3, 0x1c

    .line 203
    .line 204
    invoke-virtual {v11, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 205
    .line 206
    .line 207
    move-result v3

    .line 208
    const/16 v4, 0x26

    .line 209
    .line 210
    move/from16 v18, v3

    .line 211
    .line 212
    const/16 v3, 0x1388

    .line 213
    .line 214
    invoke-virtual {v11, v4, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 215
    .line 216
    .line 217
    move-result v3

    .line 218
    const/16 v4, 0xe

    .line 219
    .line 220
    move/from16 v16, v3

    .line 221
    .line 222
    const/4 v3, 0x1

    .line 223
    invoke-virtual {v11, v4, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 224
    .line 225
    .line 226
    move-result v4

    .line 227
    move/from16 v19, v4

    .line 228
    .line 229
    const/4 v4, 0x4

    .line 230
    invoke-virtual {v11, v4, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 231
    .line 232
    .line 233
    move-result v20

    .line 234
    const/16 v3, 0x23

    .line 235
    .line 236
    const/4 v4, 0x0

    .line 237
    invoke-virtual {v11, v3, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    .line 238
    .line 239
    .line 240
    move-result v3

    .line 241
    iget-boolean v4, v1, Landroidx/media3/ui/PlayerView;->i0:Z

    .line 242
    .line 243
    move/from16 v21, v3

    .line 244
    .line 245
    const/16 v3, 0x10

    .line 246
    .line 247
    invoke-virtual {v11, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 248
    .line 249
    .line 250
    move-result v3

    .line 251
    iput-boolean v3, v1, Landroidx/media3/ui/PlayerView;->i0:Z

    .line 252
    .line 253
    const/16 v3, 0xd

    .line 254
    .line 255
    const/4 v4, 0x1

    .line 256
    invoke-virtual {v11, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 257
    .line 258
    .line 259
    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 260
    invoke-virtual {v11}, Landroid/content/res/TypedArray;->recycle()V

    .line 261
    .line 262
    .line 263
    move v11, v8

    .line 264
    move/from16 v4, v19

    .line 265
    .line 266
    move/from16 v8, v21

    .line 267
    .line 268
    move/from16 v19, v15

    .line 269
    .line 270
    move v15, v13

    .line 271
    move v13, v10

    .line 272
    move v10, v7

    .line 273
    move v7, v3

    .line 274
    move/from16 v3, v18

    .line 275
    .line 276
    move/from16 v18, v14

    .line 277
    .line 278
    move v14, v12

    .line 279
    move v12, v9

    .line 280
    move/from16 v22, v20

    .line 281
    .line 282
    move/from16 v20, v6

    .line 283
    .line 284
    move/from16 v6, v22

    .line 285
    .line 286
    goto :goto_1

    .line 287
    :catchall_0
    move-exception v0

    .line 288
    invoke-virtual {v11}, Landroid/content/res/TypedArray;->recycle()V

    .line 289
    .line 290
    .line 291
    throw v0

    .line 292
    :cond_2
    const/16 v3, 0x1388

    .line 293
    .line 294
    const/4 v3, 0x0

    .line 295
    const/4 v4, 0x1

    .line 296
    const/4 v6, 0x1

    .line 297
    const/4 v7, 0x1

    .line 298
    const/4 v8, 0x0

    .line 299
    const/4 v10, 0x0

    .line 300
    const/4 v11, 0x0

    .line 301
    const v12, 0x7f0e007c

    .line 302
    .line 303
    .line 304
    const/4 v13, 0x1

    .line 305
    const/4 v14, 0x0

    .line 306
    const/4 v15, 0x0

    .line 307
    const/16 v16, 0x1388

    .line 308
    .line 309
    const/16 v18, 0x1

    .line 310
    .line 311
    const/16 v19, 0x1

    .line 312
    .line 313
    const/16 v20, 0x1

    .line 314
    .line 315
    :goto_1
    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 316
    .line 317
    .line 318
    move-result-object v9

    .line 319
    invoke-virtual {v9, v12, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 320
    .line 321
    .line 322
    const/high16 v9, 0x40000

    .line 323
    .line 324
    invoke-virtual {v1, v9}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 325
    .line 326
    .line 327
    const v9, 0x7f0b01e9

    .line 328
    .line 329
    .line 330
    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 331
    .line 332
    .line 333
    move-result-object v9

    .line 334
    check-cast v9, Landroidx/media3/ui/AspectRatioFrameLayout;

    .line 335
    .line 336
    iput-object v9, v1, Landroidx/media3/ui/PlayerView;->H:Landroidx/media3/ui/AspectRatioFrameLayout;

    .line 337
    .line 338
    if-eqz v9, :cond_3

    .line 339
    .line 340
    invoke-virtual {v9, v3}, Landroidx/media3/ui/AspectRatioFrameLayout;->setResizeMode(I)V

    .line 341
    .line 342
    .line 343
    :cond_3
    const v3, 0x7f0b020c

    .line 344
    .line 345
    .line 346
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 347
    .line 348
    .line 349
    move-result-object v3

    .line 350
    iput-object v3, v1, Landroidx/media3/ui/PlayerView;->I:Landroid/view/View;

    .line 351
    .line 352
    if-eqz v3, :cond_4

    .line 353
    .line 354
    if-eqz v15, :cond_4

    .line 355
    .line 356
    invoke-virtual {v3, v14}, Landroid/view/View;->setBackgroundColor(I)V

    .line 357
    .line 358
    .line 359
    :cond_4
    const/16 v3, 0x22

    .line 360
    .line 361
    const/4 v12, 0x2

    .line 362
    if-eqz v9, :cond_9

    .line 363
    .line 364
    if-eqz v13, :cond_9

    .line 365
    .line 366
    new-instance v14, Landroid/view/ViewGroup$LayoutParams;

    .line 367
    .line 368
    const/4 v15, -0x1

    .line 369
    invoke-direct {v14, v15, v15}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 370
    .line 371
    .line 372
    if-eq v13, v12, :cond_8

    .line 373
    .line 374
    const-class v15, Landroid/content/Context;

    .line 375
    .line 376
    const/4 v12, 0x3

    .line 377
    if-eq v13, v12, :cond_7

    .line 378
    .line 379
    const/4 v12, 0x4

    .line 380
    if-eq v13, v12, :cond_6

    .line 381
    .line 382
    new-instance v12, Landroid/view/SurfaceView;

    .line 383
    .line 384
    invoke-direct {v12, v0}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 385
    .line 386
    .line 387
    sget v13, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 388
    .line 389
    if-lt v13, v3, :cond_5

    .line 390
    .line 391
    invoke-static {v12}, LA0/F;->u(Landroid/view/SurfaceView;)V

    .line 392
    .line 393
    .line 394
    :cond_5
    iput-object v12, v1, Landroidx/media3/ui/PlayerView;->J:Landroid/view/View;

    .line 395
    .line 396
    goto :goto_2

    .line 397
    :cond_6
    :try_start_1
    const-class v12, LU0/z;

    .line 398
    .line 399
    sget v13, LU0/z;->H:I

    .line 400
    .line 401
    const/4 v13, 0x1

    .line 402
    new-array v3, v13, [Ljava/lang/Class;

    .line 403
    .line 404
    const/16 v17, 0x0

    .line 405
    .line 406
    aput-object v15, v3, v17

    .line 407
    .line 408
    invoke-virtual {v12, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 409
    .line 410
    .line 411
    move-result-object v3

    .line 412
    new-array v12, v13, [Ljava/lang/Object;

    .line 413
    .line 414
    aput-object v0, v12, v17

    .line 415
    .line 416
    invoke-virtual {v3, v12}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    .line 418
    .line 419
    move-result-object v3

    .line 420
    check-cast v3, Landroid/view/View;

    .line 421
    .line 422
    iput-object v3, v1, Landroidx/media3/ui/PlayerView;->J:Landroid/view/View;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 423
    .line 424
    goto :goto_2

    .line 425
    :catch_0
    move-exception v0

    .line 426
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 427
    .line 428
    const-string v3, "video_decoder_gl_surface_view requires an ExoPlayer dependency"

    .line 429
    .line 430
    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 431
    .line 432
    .line 433
    throw v2

    .line 434
    :cond_7
    :try_start_2
    const-class v3, LV0/k;

    .line 435
    .line 436
    sget v12, LV0/k;->R:I

    .line 437
    .line 438
    const/4 v12, 0x1

    .line 439
    new-array v13, v12, [Ljava/lang/Class;

    .line 440
    .line 441
    const/16 v17, 0x0

    .line 442
    .line 443
    aput-object v15, v13, v17

    .line 444
    .line 445
    invoke-virtual {v3, v13}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 446
    .line 447
    .line 448
    move-result-object v3

    .line 449
    new-array v13, v12, [Ljava/lang/Object;

    .line 450
    .line 451
    aput-object v0, v13, v17

    .line 452
    .line 453
    invoke-virtual {v3, v13}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    .line 455
    .line 456
    move-result-object v3

    .line 457
    check-cast v3, Landroid/view/View;

    .line 458
    .line 459
    iput-object v3, v1, Landroidx/media3/ui/PlayerView;->J:Landroid/view/View;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 460
    .line 461
    const/4 v3, 0x1

    .line 462
    goto :goto_3

    .line 463
    :catch_1
    move-exception v0

    .line 464
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 465
    .line 466
    const-string v3, "spherical_gl_surface_view requires an ExoPlayer dependency"

    .line 467
    .line 468
    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 469
    .line 470
    .line 471
    throw v2

    .line 472
    :cond_8
    new-instance v3, Landroid/view/TextureView;

    .line 473
    .line 474
    invoke-direct {v3, v0}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    .line 475
    .line 476
    .line 477
    iput-object v3, v1, Landroidx/media3/ui/PlayerView;->J:Landroid/view/View;

    .line 478
    .line 479
    :goto_2
    const/4 v3, 0x0

    .line 480
    :goto_3
    iget-object v12, v1, Landroidx/media3/ui/PlayerView;->J:Landroid/view/View;

    .line 481
    .line 482
    invoke-virtual {v12, v14}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 483
    .line 484
    .line 485
    iget-object v12, v1, Landroidx/media3/ui/PlayerView;->J:Landroid/view/View;

    .line 486
    .line 487
    invoke-virtual {v12, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 488
    .line 489
    .line 490
    iget-object v5, v1, Landroidx/media3/ui/PlayerView;->J:Landroid/view/View;

    .line 491
    .line 492
    const/4 v12, 0x0

    .line 493
    invoke-virtual {v5, v12}, Landroid/view/View;->setClickable(Z)V

    .line 494
    .line 495
    .line 496
    iget-object v5, v1, Landroidx/media3/ui/PlayerView;->J:Landroid/view/View;

    .line 497
    .line 498
    invoke-virtual {v9, v5, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 499
    .line 500
    .line 501
    goto :goto_4

    .line 502
    :cond_9
    const/4 v3, 0x0

    .line 503
    iput-object v3, v1, Landroidx/media3/ui/PlayerView;->J:Landroid/view/View;

    .line 504
    .line 505
    const/4 v3, 0x0

    .line 506
    :goto_4
    iput-boolean v3, v1, Landroidx/media3/ui/PlayerView;->K:Z

    .line 507
    .line 508
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 509
    .line 510
    const/16 v5, 0x22

    .line 511
    .line 512
    if-ne v3, v5, :cond_a

    .line 513
    .line 514
    new-instance v3, LD1/H;

    .line 515
    .line 516
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 517
    .line 518
    .line 519
    goto :goto_5

    .line 520
    :cond_a
    const/4 v3, 0x0

    .line 521
    :goto_5
    iput-object v3, v1, Landroidx/media3/ui/PlayerView;->L:LD1/H;

    .line 522
    .line 523
    const v3, 0x7f0b01e1

    .line 524
    .line 525
    .line 526
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 527
    .line 528
    .line 529
    move-result-object v3

    .line 530
    check-cast v3, Landroid/widget/FrameLayout;

    .line 531
    .line 532
    iput-object v3, v1, Landroidx/media3/ui/PlayerView;->S:Landroid/widget/FrameLayout;

    .line 533
    .line 534
    const v3, 0x7f0b01fc

    .line 535
    .line 536
    .line 537
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 538
    .line 539
    .line 540
    move-result-object v3

    .line 541
    check-cast v3, Landroid/widget/FrameLayout;

    .line 542
    .line 543
    iput-object v3, v1, Landroidx/media3/ui/PlayerView;->T:Landroid/widget/FrameLayout;

    .line 544
    .line 545
    const v3, 0x7f0b01f5

    .line 546
    .line 547
    .line 548
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 549
    .line 550
    .line 551
    move-result-object v3

    .line 552
    check-cast v3, Landroid/widget/ImageView;

    .line 553
    .line 554
    iput-object v3, v1, Landroidx/media3/ui/PlayerView;->M:Landroid/widget/ImageView;

    .line 555
    .line 556
    iput v11, v1, Landroidx/media3/ui/PlayerView;->f0:I

    .line 557
    .line 558
    :try_start_3
    const-class v3, Landroidx/media3/exoplayer/ExoPlayer;

    .line 559
    .line 560
    const-class v5, Landroidx/media3/exoplayer/image/ImageOutput;

    .line 561
    .line 562
    const-string v9, "setImageOutput"

    .line 563
    .line 564
    const/4 v11, 0x1

    .line 565
    new-array v12, v11, [Ljava/lang/Class;
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_3

    .line 566
    .line 567
    const/4 v13, 0x0

    .line 568
    :try_start_4
    aput-object v5, v12, v13

    .line 569
    .line 570
    invoke-virtual {v3, v9, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 571
    .line 572
    .line 573
    move-result-object v9

    .line 574
    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 575
    .line 576
    .line 577
    move-result-object v12

    .line 578
    new-array v14, v11, [Ljava/lang/Class;

    .line 579
    .line 580
    aput-object v5, v14, v13

    .line 581
    .line 582
    new-instance v5, LD1/C;

    .line 583
    .line 584
    invoke-direct {v5, v1}, LD1/C;-><init>(Landroidx/media3/ui/PlayerView;)V

    .line 585
    .line 586
    .line 587
    invoke-static {v12, v14, v5}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    .line 588
    .line 589
    .line 590
    move-result-object v5
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_4} :catch_2

    .line 591
    goto :goto_8

    .line 592
    :catch_2
    :goto_6
    nop

    .line 593
    goto :goto_7

    .line 594
    :catch_3
    const/4 v13, 0x0

    .line 595
    goto :goto_6

    .line 596
    :goto_7
    const/4 v3, 0x0

    .line 597
    const/4 v5, 0x0

    .line 598
    const/4 v9, 0x0

    .line 599
    :goto_8
    iput-object v3, v1, Landroidx/media3/ui/PlayerView;->V:Ljava/lang/Class;

    .line 600
    .line 601
    iput-object v9, v1, Landroidx/media3/ui/PlayerView;->W:Ljava/lang/reflect/Method;

    .line 602
    .line 603
    iput-object v5, v1, Landroidx/media3/ui/PlayerView;->a0:Ljava/lang/Object;

    .line 604
    .line 605
    const v3, 0x7f0b01e2

    .line 606
    .line 607
    .line 608
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 609
    .line 610
    .line 611
    move-result-object v3

    .line 612
    check-cast v3, Landroid/widget/ImageView;

    .line 613
    .line 614
    iput-object v3, v1, Landroidx/media3/ui/PlayerView;->N:Landroid/widget/ImageView;

    .line 615
    .line 616
    if-eqz v18, :cond_b

    .line 617
    .line 618
    if-eqz v19, :cond_b

    .line 619
    .line 620
    if-eqz v3, :cond_b

    .line 621
    .line 622
    move/from16 v3, v19

    .line 623
    .line 624
    goto :goto_9

    .line 625
    :cond_b
    const/4 v3, 0x0

    .line 626
    :goto_9
    iput v3, v1, Landroidx/media3/ui/PlayerView;->e0:I

    .line 627
    .line 628
    if-eqz v10, :cond_c

    .line 629
    .line 630
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 631
    .line 632
    .line 633
    move-result-object v3

    .line 634
    invoke-virtual {v3, v10}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 635
    .line 636
    .line 637
    move-result-object v3

    .line 638
    iput-object v3, v1, Landroidx/media3/ui/PlayerView;->g0:Landroid/graphics/drawable/Drawable;

    .line 639
    .line 640
    :cond_c
    const v3, 0x7f0b020f

    .line 641
    .line 642
    .line 643
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 644
    .line 645
    .line 646
    move-result-object v3

    .line 647
    check-cast v3, Landroidx/media3/ui/SubtitleView;

    .line 648
    .line 649
    iput-object v3, v1, Landroidx/media3/ui/PlayerView;->O:Landroidx/media3/ui/SubtitleView;

    .line 650
    .line 651
    if-eqz v3, :cond_d

    .line 652
    .line 653
    invoke-virtual {v3}, Landroidx/media3/ui/SubtitleView;->a()V

    .line 654
    .line 655
    .line 656
    invoke-virtual {v3}, Landroidx/media3/ui/SubtitleView;->b()V

    .line 657
    .line 658
    .line 659
    :cond_d
    const v3, 0x7f0b01e6

    .line 660
    .line 661
    .line 662
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 663
    .line 664
    .line 665
    move-result-object v3

    .line 666
    iput-object v3, v1, Landroidx/media3/ui/PlayerView;->P:Landroid/view/View;

    .line 667
    .line 668
    const/16 v5, 0x8

    .line 669
    .line 670
    if-eqz v3, :cond_e

    .line 671
    .line 672
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 673
    .line 674
    .line 675
    :cond_e
    iput v8, v1, Landroidx/media3/ui/PlayerView;->h0:I

    .line 676
    .line 677
    const v3, 0x7f0b01ee

    .line 678
    .line 679
    .line 680
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 681
    .line 682
    .line 683
    move-result-object v3

    .line 684
    check-cast v3, Landroid/widget/TextView;

    .line 685
    .line 686
    iput-object v3, v1, Landroidx/media3/ui/PlayerView;->Q:Landroid/widget/TextView;

    .line 687
    .line 688
    if-eqz v3, :cond_f

    .line 689
    .line 690
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 691
    .line 692
    .line 693
    :cond_f
    const v3, 0x7f0b01ea

    .line 694
    .line 695
    .line 696
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 697
    .line 698
    .line 699
    move-result-object v5

    .line 700
    check-cast v5, LD1/v;

    .line 701
    .line 702
    const v8, 0x7f0b01eb

    .line 703
    .line 704
    .line 705
    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 706
    .line 707
    .line 708
    move-result-object v8

    .line 709
    if-eqz v5, :cond_10

    .line 710
    .line 711
    iput-object v5, v1, Landroidx/media3/ui/PlayerView;->R:LD1/v;

    .line 712
    .line 713
    goto :goto_a

    .line 714
    :cond_10
    if-eqz v8, :cond_11

    .line 715
    .line 716
    new-instance v5, LD1/v;

    .line 717
    .line 718
    invoke-direct {v5, v0, v2}, LD1/v;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 719
    .line 720
    .line 721
    iput-object v5, v1, Landroidx/media3/ui/PlayerView;->R:LD1/v;

    .line 722
    .line 723
    invoke-virtual {v5, v3}, Landroid/view/View;->setId(I)V

    .line 724
    .line 725
    .line 726
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 727
    .line 728
    .line 729
    move-result-object v0

    .line 730
    invoke-virtual {v5, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 731
    .line 732
    .line 733
    invoke-virtual {v8}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 734
    .line 735
    .line 736
    move-result-object v0

    .line 737
    check-cast v0, Landroid/view/ViewGroup;

    .line 738
    .line 739
    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    .line 740
    .line 741
    .line 742
    move-result v2

    .line 743
    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 744
    .line 745
    .line 746
    invoke-virtual {v0, v5, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 747
    .line 748
    .line 749
    goto :goto_a

    .line 750
    :cond_11
    const/4 v0, 0x0

    .line 751
    iput-object v0, v1, Landroidx/media3/ui/PlayerView;->R:LD1/v;

    .line 752
    .line 753
    :goto_a
    iget-object v0, v1, Landroidx/media3/ui/PlayerView;->R:LD1/v;

    .line 754
    .line 755
    if-eqz v0, :cond_12

    .line 756
    .line 757
    move/from16 v2, v16

    .line 758
    .line 759
    goto :goto_b

    .line 760
    :cond_12
    const/4 v2, 0x0

    .line 761
    :goto_b
    iput v2, v1, Landroidx/media3/ui/PlayerView;->k0:I

    .line 762
    .line 763
    iput-boolean v4, v1, Landroidx/media3/ui/PlayerView;->n0:Z

    .line 764
    .line 765
    iput-boolean v6, v1, Landroidx/media3/ui/PlayerView;->l0:Z

    .line 766
    .line 767
    iput-boolean v7, v1, Landroidx/media3/ui/PlayerView;->m0:Z

    .line 768
    .line 769
    if-eqz v20, :cond_13

    .line 770
    .line 771
    if-eqz v0, :cond_13

    .line 772
    .line 773
    const/4 v4, 0x1

    .line 774
    goto :goto_c

    .line 775
    :cond_13
    const/4 v4, 0x0

    .line 776
    :goto_c
    iput-boolean v4, v1, Landroidx/media3/ui/PlayerView;->c0:Z

    .line 777
    .line 778
    if-eqz v0, :cond_16

    .line 779
    .line 780
    iget-object v0, v0, LD1/v;->G:LD1/B;

    .line 781
    .line 782
    iget v2, v0, LD1/B;->z:I

    .line 783
    .line 784
    const/4 v3, 0x3

    .line 785
    if-eq v2, v3, :cond_15

    .line 786
    .line 787
    const/4 v3, 0x2

    .line 788
    if-ne v2, v3, :cond_14

    .line 789
    .line 790
    goto :goto_d

    .line 791
    :cond_14
    invoke-virtual {v0}, LD1/B;->g()V

    .line 792
    .line 793
    .line 794
    invoke-virtual {v0, v3}, LD1/B;->j(I)V

    .line 795
    .line 796
    .line 797
    :cond_15
    :goto_d
    iget-object v0, v1, Landroidx/media3/ui/PlayerView;->R:LD1/v;

    .line 798
    .line 799
    iget-object v2, v1, Landroidx/media3/ui/PlayerView;->G:LD1/D;

    .line 800
    .line 801
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 802
    .line 803
    .line 804
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 805
    .line 806
    .line 807
    iget-object v0, v0, LD1/v;->P:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 808
    .line 809
    invoke-virtual {v0, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 810
    .line 811
    .line 812
    :cond_16
    if-eqz v20, :cond_17

    .line 813
    .line 814
    const/4 v0, 0x1

    .line 815
    invoke-virtual {v1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 816
    .line 817
    .line 818
    :cond_17
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/ui/PlayerView;->m()V

    .line 819
    .line 820
    .line 821
    :goto_e
    return-void
.end method

.method public static a(Landroidx/media3/ui/PlayerView;Landroid/graphics/Bitmap;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0, v0}, Landroidx/media3/ui/PlayerView;->setImage(Landroid/graphics/drawable/Drawable;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroidx/media3/ui/PlayerView;->c()Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-nez p1, :cond_1

    .line 21
    .line 22
    const/4 p1, 0x0

    .line 23
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->M:Landroid/widget/ImageView;

    .line 24
    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Landroidx/media3/ui/PlayerView;->p()V

    .line 31
    .line 32
    .line 33
    :cond_0
    iget-object p0, p0, Landroidx/media3/ui/PlayerView;->I:Landroid/view/View;

    .line 34
    .line 35
    if-eqz p0, :cond_1

    .line 36
    .line 37
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 38
    .line 39
    .line 40
    :cond_1
    return-void
.end method

.method private setImage(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->M:Landroid/widget/ImageView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/media3/ui/PlayerView;->p()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method private setImageOutput(Lm0/Y;)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->V:Ljava/lang/Class;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    :try_start_0
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->W:Ljava/lang/reflect/Method;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    const/4 v1, 0x1

    .line 21
    new-array v1, v1, [Ljava/lang/Object;

    .line 22
    .line 23
    iget-object v2, p0, Landroidx/media3/ui/PlayerView;->a0:Ljava/lang/Object;

    .line 24
    .line 25
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    const/4 v3, 0x0

    .line 29
    aput-object v2, v1, v3

    .line 30
    .line 31
    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    .line 33
    .line 34
    goto :goto_1

    .line 35
    :catch_0
    move-exception p1

    .line 36
    goto :goto_0

    .line 37
    :catch_1
    move-exception p1

    .line 38
    :goto_0
    new-instance v0, Ljava/lang/RuntimeException;

    .line 39
    .line 40
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 41
    .line 42
    .line 43
    throw v0

    .line 44
    :cond_0
    :goto_1
    return-void
.end method


# virtual methods
.method public final b()Z
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->b0:Lm0/Y;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Landroidx/media3/ui/PlayerView;->a0:Ljava/lang/Object;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    const/16 v1, 0x1e

    .line 10
    .line 11
    move-object v2, v0

    .line 12
    check-cast v2, Lm0/f;

    .line 13
    .line 14
    invoke-virtual {v2, v1}, Lm0/f;->c(I)Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    check-cast v0, LB0/O;

    .line 21
    .line 22
    invoke-virtual {v0}, LB0/O;->y()Lm0/m0;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const/4 v1, 0x4

    .line 27
    invoke-virtual {v0, v1}, Lm0/m0;->b(I)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    const/4 v0, 0x1

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const/4 v0, 0x0

    .line 36
    :goto_0
    return v0
.end method

.method public final c()Z
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->b0:Lm0/Y;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/16 v1, 0x1e

    .line 6
    .line 7
    move-object v2, v0

    .line 8
    check-cast v2, Lm0/f;

    .line 9
    .line 10
    invoke-virtual {v2, v1}, Lm0/f;->c(I)Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    check-cast v0, LB0/O;

    .line 17
    .line 18
    invoke-virtual {v0}, LB0/O;->y()Lm0/m0;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const/4 v1, 0x2

    .line 23
    invoke-virtual {v0, v1}, Lm0/m0;->b(I)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    const/4 v0, 0x1

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 v0, 0x0

    .line 32
    :goto_0
    return v0
.end method

.method public final d()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->M:Landroid/widget/ImageView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x4

    .line 6
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7
    .line 8
    .line 9
    :cond_0
    if-eqz v0, :cond_1

    .line 10
    .line 11
    const v1, 0x106000d

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 15
    .line 16
    .line 17
    :cond_1
    return-void
.end method

.method public final dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 2
    .line 3
    .line 4
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 5
    .line 6
    const/16 v0, 0x22

    .line 7
    .line 8
    if-ne p1, v0, :cond_0

    .line 9
    .line 10
    iget-object p1, p0, Landroidx/media3/ui/PlayerView;->L:LD1/H;

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    iget-boolean v0, p0, Landroidx/media3/ui/PlayerView;->o0:Z

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    iget-object v0, p1, LD1/H;->a:Landroid/window/SurfaceSyncGroup;

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    invoke-static {v0}, LA0/F;->v(Landroid/window/SurfaceSyncGroup;)V

    .line 23
    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    iput-object v0, p1, LD1/H;->a:Landroid/window/SurfaceSyncGroup;

    .line 27
    .line 28
    :cond_0
    return-void
.end method

.method public final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->b0:Lm0/Y;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/16 v1, 0x10

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
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->b0:Lm0/Y;

    .line 16
    .line 17
    check-cast v0, LB0/O;

    .line 18
    .line 19
    invoke-virtual {v0}, LB0/O;->F()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    return p1

    .line 30
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    const/16 v1, 0x13

    .line 35
    .line 36
    const/4 v2, 0x0

    .line 37
    const/4 v3, 0x1

    .line 38
    if-eq v0, v1, :cond_2

    .line 39
    .line 40
    const/16 v1, 0x10e

    .line 41
    .line 42
    if-eq v0, v1, :cond_2

    .line 43
    .line 44
    const/16 v1, 0x16

    .line 45
    .line 46
    if-eq v0, v1, :cond_2

    .line 47
    .line 48
    const/16 v1, 0x10f

    .line 49
    .line 50
    if-eq v0, v1, :cond_2

    .line 51
    .line 52
    const/16 v1, 0x14

    .line 53
    .line 54
    if-eq v0, v1, :cond_2

    .line 55
    .line 56
    const/16 v1, 0x10d

    .line 57
    .line 58
    if-eq v0, v1, :cond_2

    .line 59
    .line 60
    const/16 v1, 0x15

    .line 61
    .line 62
    if-eq v0, v1, :cond_2

    .line 63
    .line 64
    const/16 v1, 0x10c

    .line 65
    .line 66
    if-eq v0, v1, :cond_2

    .line 67
    .line 68
    const/16 v1, 0x17

    .line 69
    .line 70
    if-ne v0, v1, :cond_1

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_1
    const/4 v0, 0x0

    .line 74
    goto :goto_1

    .line 75
    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 76
    :goto_1
    iget-object v1, p0, Landroidx/media3/ui/PlayerView;->R:LD1/v;

    .line 77
    .line 78
    if-eqz v0, :cond_3

    .line 79
    .line 80
    invoke-virtual {p0}, Landroidx/media3/ui/PlayerView;->q()Z

    .line 81
    .line 82
    .line 83
    move-result v4

    .line 84
    if-eqz v4, :cond_3

    .line 85
    .line 86
    invoke-virtual {v1}, LD1/v;->j()Z

    .line 87
    .line 88
    .line 89
    move-result v4

    .line 90
    if-nez v4, :cond_3

    .line 91
    .line 92
    invoke-virtual {p0, v3}, Landroidx/media3/ui/PlayerView;->f(Z)V

    .line 93
    .line 94
    .line 95
    :goto_2
    const/4 v2, 0x1

    .line 96
    goto :goto_4

    .line 97
    :cond_3
    invoke-virtual {p0}, Landroidx/media3/ui/PlayerView;->q()Z

    .line 98
    .line 99
    .line 100
    move-result v4

    .line 101
    if-eqz v4, :cond_4

    .line 102
    .line 103
    invoke-virtual {v1, p1}, LD1/v;->d(Landroid/view/KeyEvent;)Z

    .line 104
    .line 105
    .line 106
    move-result v1

    .line 107
    if-eqz v1, :cond_4

    .line 108
    .line 109
    goto :goto_3

    .line 110
    :cond_4
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 111
    .line 112
    .line 113
    move-result p1

    .line 114
    if-eqz p1, :cond_5

    .line 115
    .line 116
    :goto_3
    invoke-virtual {p0, v3}, Landroidx/media3/ui/PlayerView;->f(Z)V

    .line 117
    .line 118
    .line 119
    goto :goto_2

    .line 120
    :cond_5
    if-eqz v0, :cond_6

    .line 121
    .line 122
    invoke-virtual {p0}, Landroidx/media3/ui/PlayerView;->q()Z

    .line 123
    .line 124
    .line 125
    move-result p1

    .line 126
    if-eqz p1, :cond_6

    .line 127
    .line 128
    invoke-virtual {p0, v3}, Landroidx/media3/ui/PlayerView;->f(Z)V

    .line 129
    .line 130
    .line 131
    :cond_6
    :goto_4
    return v2
.end method

.method public final e()Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->b0:Lm0/Y;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/16 v1, 0x10

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
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->b0:Lm0/Y;

    .line 16
    .line 17
    check-cast v0, LB0/O;

    .line 18
    .line 19
    invoke-virtual {v0}, LB0/O;->F()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->b0:Lm0/Y;

    .line 26
    .line 27
    check-cast v0, LB0/O;

    .line 28
    .line 29
    invoke-virtual {v0}, LB0/O;->B()Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_0

    .line 34
    .line 35
    const/4 v0, 0x1

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    const/4 v0, 0x0

    .line 38
    :goto_0
    return v0
.end method

.method public final f(Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/media3/ui/PlayerView;->e()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-boolean v0, p0, Landroidx/media3/ui/PlayerView;->m0:Z

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-virtual {p0}, Landroidx/media3/ui/PlayerView;->q()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_3

    .line 17
    .line 18
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->R:LD1/v;

    .line 19
    .line 20
    invoke-virtual {v0}, LD1/v;->j()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    invoke-virtual {v0}, LD1/v;->getShowTimeoutMs()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-gtz v0, :cond_1

    .line 31
    .line 32
    const/4 v0, 0x1

    .line 33
    goto :goto_0

    .line 34
    :cond_1
    const/4 v0, 0x0

    .line 35
    :goto_0
    invoke-virtual {p0}, Landroidx/media3/ui/PlayerView;->h()Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-nez p1, :cond_2

    .line 40
    .line 41
    if-nez v0, :cond_2

    .line 42
    .line 43
    if-eqz v1, :cond_3

    .line 44
    .line 45
    :cond_2
    invoke-virtual {p0, v1}, Landroidx/media3/ui/PlayerView;->i(Z)V

    .line 46
    .line 47
    .line 48
    :cond_3
    return-void
.end method

.method public final g(Landroid/graphics/drawable/Drawable;)Z
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Landroidx/media3/ui/PlayerView;->N:Landroid/widget/ImageView;

    .line 3
    .line 4
    if-eqz v1, :cond_2

    .line 5
    .line 6
    if-eqz p1, :cond_2

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    if-lez v2, :cond_2

    .line 17
    .line 18
    if-lez v3, :cond_2

    .line 19
    .line 20
    int-to-float v2, v2

    .line 21
    int-to-float v3, v3

    .line 22
    div-float/2addr v2, v3

    .line 23
    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    .line 24
    .line 25
    iget v4, p0, Landroidx/media3/ui/PlayerView;->e0:I

    .line 26
    .line 27
    const/4 v5, 0x2

    .line 28
    if-ne v4, v5, :cond_0

    .line 29
    .line 30
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    int-to-float v2, v2

    .line 35
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    int-to-float v3, v3

    .line 40
    div-float/2addr v2, v3

    .line 41
    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    .line 42
    .line 43
    :cond_0
    iget-object v4, p0, Landroidx/media3/ui/PlayerView;->H:Landroidx/media3/ui/AspectRatioFrameLayout;

    .line 44
    .line 45
    if-eqz v4, :cond_1

    .line 46
    .line 47
    invoke-virtual {v4, v2}, Landroidx/media3/ui/AspectRatioFrameLayout;->setAspectRatio(F)V

    .line 48
    .line 49
    .line 50
    :cond_1
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 57
    .line 58
    .line 59
    const/4 p1, 0x1

    .line 60
    return p1

    .line 61
    :cond_2
    return v0
.end method

.method public getAdOverlayInfos()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lm0/a;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Landroidx/media3/ui/PlayerView;->T:Landroid/widget/FrameLayout;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    new-instance v2, Lm0/a;

    .line 11
    .line 12
    const/4 v3, 0x4

    .line 13
    const-string v4, "Transparent overlay does not impact viewability"

    .line 14
    .line 15
    invoke-direct {v2, v1, v3, v4}, Lm0/a;-><init>(Landroid/view/View;ILjava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    :cond_0
    iget-object v1, p0, Landroidx/media3/ui/PlayerView;->R:LD1/v;

    .line 22
    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    new-instance v2, Lm0/a;

    .line 26
    .line 27
    const/4 v3, 0x1

    .line 28
    const/4 v4, 0x0

    .line 29
    invoke-direct {v2, v1, v3, v4}, Lm0/a;-><init>(Landroid/view/View;ILjava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    :cond_1
    invoke-static {v0}, Lz4/H;->s(Ljava/util/Collection;)Lz4/H;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    return-object v0
.end method

.method public getAdViewGroup()Landroid/view/ViewGroup;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->S:Landroid/widget/FrameLayout;

    .line 2
    .line 3
    const-string v1, "exo_ad_overlay must be present for ad playback"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/H1;->k(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public getArtworkDisplayMode()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/media3/ui/PlayerView;->e0:I

    .line 2
    .line 3
    return v0
.end method

.method public getControllerAutoShow()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/media3/ui/PlayerView;->l0:Z

    .line 2
    .line 3
    return v0
.end method

.method public getControllerHideOnTouch()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/media3/ui/PlayerView;->n0:Z

    .line 2
    .line 3
    return v0
.end method

.method public getControllerShowTimeoutMs()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/media3/ui/PlayerView;->k0:I

    .line 2
    .line 3
    return v0
.end method

.method public getDefaultArtwork()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->g0:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    return-object v0
.end method

.method public getImageDisplayMode()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/media3/ui/PlayerView;->f0:I

    .line 2
    .line 3
    return v0
.end method

.method public getOverlayFrameLayout()Landroid/widget/FrameLayout;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->T:Landroid/widget/FrameLayout;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPlayer()Lm0/Y;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->b0:Lm0/Y;

    .line 2
    .line 3
    return-object v0
.end method

.method public getResizeMode()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->H:Landroidx/media3/ui/AspectRatioFrameLayout;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/H1;->j(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Landroidx/media3/ui/AspectRatioFrameLayout;->getResizeMode()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    return v0
.end method

.method public getSubtitleView()Landroidx/media3/ui/SubtitleView;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->O:Landroidx/media3/ui/SubtitleView;

    .line 2
    .line 3
    return-object v0
.end method

.method public getUseArtwork()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget v0, p0, Landroidx/media3/ui/PlayerView;->e0:I

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
.end method

.method public getUseController()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/media3/ui/PlayerView;->c0:Z

    .line 2
    .line 3
    return v0
.end method

.method public getVideoSurfaceView()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->J:Landroid/view/View;

    .line 2
    .line 3
    return-object v0
.end method

.method public final h()Z
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->b0:Lm0/Y;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    check-cast v0, LB0/O;

    .line 8
    .line 9
    invoke-virtual {v0}, LB0/O;->C()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    iget-boolean v2, p0, Landroidx/media3/ui/PlayerView;->l0:Z

    .line 14
    .line 15
    if-eqz v2, :cond_2

    .line 16
    .line 17
    iget-object v2, p0, Landroidx/media3/ui/PlayerView;->b0:Lm0/Y;

    .line 18
    .line 19
    const/16 v3, 0x11

    .line 20
    .line 21
    check-cast v2, Lm0/f;

    .line 22
    .line 23
    invoke-virtual {v2, v3}, Lm0/f;->c(I)Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_1

    .line 28
    .line 29
    iget-object v2, p0, Landroidx/media3/ui/PlayerView;->b0:Lm0/Y;

    .line 30
    .line 31
    check-cast v2, LB0/O;

    .line 32
    .line 33
    invoke-virtual {v2}, LB0/O;->x()Lm0/f0;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-virtual {v2}, Lm0/f0;->q()Z

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    if-nez v2, :cond_2

    .line 42
    .line 43
    :cond_1
    if-eq v0, v1, :cond_3

    .line 44
    .line 45
    const/4 v2, 0x4

    .line 46
    if-eq v0, v2, :cond_3

    .line 47
    .line 48
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->b0:Lm0/Y;

    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    .line 52
    .line 53
    check-cast v0, LB0/O;

    .line 54
    .line 55
    invoke-virtual {v0}, LB0/O;->B()Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-nez v0, :cond_2

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_2
    const/4 v1, 0x0

    .line 63
    :cond_3
    :goto_0
    return v1
.end method

.method public final i(Z)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/media3/ui/PlayerView;->q()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    if-eqz p1, :cond_1

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    goto :goto_0

    .line 13
    :cond_1
    iget p1, p0, Landroidx/media3/ui/PlayerView;->k0:I

    .line 14
    .line 15
    :goto_0
    iget-object v1, p0, Landroidx/media3/ui/PlayerView;->R:LD1/v;

    .line 16
    .line 17
    invoke-virtual {v1, p1}, LD1/v;->setShowTimeoutMs(I)V

    .line 18
    .line 19
    .line 20
    iget-object p1, v1, LD1/v;->G:LD1/B;

    .line 21
    .line 22
    iget-object v1, p1, LD1/B;->a:LD1/v;

    .line 23
    .line 24
    invoke-virtual {v1}, LD1/v;->l()Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-nez v2, :cond_2

    .line 29
    .line 30
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, LD1/v;->m()V

    .line 34
    .line 35
    .line 36
    iget-object v0, v1, LD1/v;->d0:Landroid/widget/ImageView;

    .line 37
    .line 38
    if-eqz v0, :cond_2

    .line 39
    .line 40
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 41
    .line 42
    .line 43
    :cond_2
    invoke-virtual {p1}, LD1/B;->l()V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public final j()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/media3/ui/PlayerView;->q()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->b0:Lm0/Y;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->R:LD1/v;

    .line 13
    .line 14
    invoke-virtual {v0}, LD1/v;->j()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-nez v1, :cond_1

    .line 19
    .line 20
    const/4 v0, 0x1

    .line 21
    invoke-virtual {p0, v0}, Landroidx/media3/ui/PlayerView;->f(Z)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    iget-boolean v1, p0, Landroidx/media3/ui/PlayerView;->n0:Z

    .line 26
    .line 27
    if-eqz v1, :cond_2

    .line 28
    .line 29
    invoke-virtual {v0}, LD1/v;->g()V

    .line 30
    .line 31
    .line 32
    :cond_2
    :goto_0
    return-void
.end method

.method public final k()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->b0:Lm0/Y;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast v0, LB0/O;

    .line 6
    .line 7
    invoke-virtual {v0}, LB0/O;->c0()V

    .line 8
    .line 9
    .line 10
    iget-object v0, v0, LB0/O;->L0:Lm0/w0;

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    sget-object v0, Lm0/w0;->d:Lm0/w0;

    .line 14
    .line 15
    :goto_0
    iget v1, v0, Lm0/w0;->a:I

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    iget v3, v0, Lm0/w0;->b:I

    .line 19
    .line 20
    if-eqz v3, :cond_2

    .line 21
    .line 22
    if-nez v1, :cond_1

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_1
    int-to-float v1, v1

    .line 26
    iget v0, v0, Lm0/w0;->c:F

    .line 27
    .line 28
    mul-float v1, v1, v0

    .line 29
    .line 30
    int-to-float v0, v3

    .line 31
    div-float/2addr v1, v0

    .line 32
    goto :goto_2

    .line 33
    :cond_2
    :goto_1
    const/4 v1, 0x0

    .line 34
    :goto_2
    iget-boolean v0, p0, Landroidx/media3/ui/PlayerView;->K:Z

    .line 35
    .line 36
    if-eqz v0, :cond_3

    .line 37
    .line 38
    goto :goto_3

    .line 39
    :cond_3
    move v2, v1

    .line 40
    :goto_3
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->H:Landroidx/media3/ui/AspectRatioFrameLayout;

    .line 41
    .line 42
    if-eqz v0, :cond_4

    .line 43
    .line 44
    invoke-virtual {v0, v2}, Landroidx/media3/ui/AspectRatioFrameLayout;->setAspectRatio(F)V

    .line 45
    .line 46
    .line 47
    :cond_4
    return-void
.end method

.method public final l()V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->P:Landroid/view/View;

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    iget-object v1, p0, Landroidx/media3/ui/PlayerView;->b0:Lm0/Y;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    check-cast v1, LB0/O;

    .line 11
    .line 12
    invoke-virtual {v1}, LB0/O;->C()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    const/4 v3, 0x2

    .line 17
    if-ne v1, v3, :cond_0

    .line 18
    .line 19
    iget v1, p0, Landroidx/media3/ui/PlayerView;->h0:I

    .line 20
    .line 21
    const/4 v4, 0x1

    .line 22
    if-eq v1, v3, :cond_1

    .line 23
    .line 24
    if-ne v1, v4, :cond_0

    .line 25
    .line 26
    iget-object v1, p0, Landroidx/media3/ui/PlayerView;->b0:Lm0/Y;

    .line 27
    .line 28
    check-cast v1, LB0/O;

    .line 29
    .line 30
    invoke-virtual {v1}, LB0/O;->B()Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_0

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    const/4 v4, 0x0

    .line 38
    :cond_1
    :goto_0
    if-eqz v4, :cond_2

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_2
    const/16 v2, 0x8

    .line 42
    .line 43
    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 44
    .line 45
    .line 46
    :cond_3
    return-void
.end method

.method public final m()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Landroidx/media3/ui/PlayerView;->R:LD1/v;

    .line 3
    .line 4
    if-eqz v1, :cond_3

    .line 5
    .line 6
    iget-boolean v2, p0, Landroidx/media3/ui/PlayerView;->c0:Z

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {v1}, LD1/v;->j()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_2

    .line 16
    .line 17
    iget-boolean v1, p0, Landroidx/media3/ui/PlayerView;->n0:Z

    .line 18
    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const v1, 0x7f1300ae

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    :cond_1
    invoke-virtual {p0, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 33
    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    const v1, 0x7f1300bc

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {p0, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 48
    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_3
    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 52
    .line 53
    .line 54
    :goto_1
    return-void
.end method

.method public final n()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->Q:Landroid/widget/TextView;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget-object v1, p0, Landroidx/media3/ui/PlayerView;->j0:Ljava/lang/CharSequence;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    iget-object v1, p0, Landroidx/media3/ui/PlayerView;->b0:Lm0/Y;

    .line 18
    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    check-cast v1, LB0/O;

    .line 22
    .line 23
    invoke-virtual {v1}, LB0/O;->c0()V

    .line 24
    .line 25
    .line 26
    iget-object v1, v1, LB0/O;->N0:LB0/v0;

    .line 27
    .line 28
    iget-object v1, v1, LB0/v0;->f:LB0/w;

    .line 29
    .line 30
    :cond_1
    const/16 v1, 0x8

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 33
    .line 34
    .line 35
    :cond_2
    return-void
.end method

.method public final o(Z)V
    .locals 10

    .line 1
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->b0:Lm0/Y;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/16 v3, 0x1e

    .line 8
    .line 9
    move-object v4, v0

    .line 10
    check-cast v4, Lm0/f;

    .line 11
    .line 12
    invoke-virtual {v4, v3}, Lm0/f;->c(I)Z

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    if-eqz v3, :cond_0

    .line 17
    .line 18
    move-object v3, v0

    .line 19
    check-cast v3, LB0/O;

    .line 20
    .line 21
    invoke-virtual {v3}, LB0/O;->y()Lm0/m0;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    iget-object v3, v3, Lm0/m0;->a:Lz4/H;

    .line 26
    .line 27
    invoke-virtual {v3}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    if-nez v3, :cond_0

    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const/4 v3, 0x0

    .line 36
    :goto_0
    iget-boolean v4, p0, Landroidx/media3/ui/PlayerView;->i0:Z

    .line 37
    .line 38
    const v5, 0x106000d

    .line 39
    .line 40
    .line 41
    const/4 v6, 0x4

    .line 42
    iget-object v7, p0, Landroidx/media3/ui/PlayerView;->N:Landroid/widget/ImageView;

    .line 43
    .line 44
    iget-object v8, p0, Landroidx/media3/ui/PlayerView;->I:Landroid/view/View;

    .line 45
    .line 46
    if-nez v4, :cond_4

    .line 47
    .line 48
    if-eqz v3, :cond_1

    .line 49
    .line 50
    if-eqz p1, :cond_4

    .line 51
    .line 52
    :cond_1
    if-eqz v7, :cond_2

    .line 53
    .line 54
    invoke-virtual {v7, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v7, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 58
    .line 59
    .line 60
    :cond_2
    if-eqz v8, :cond_3

    .line 61
    .line 62
    invoke-virtual {v8, v2}, Landroid/view/View;->setVisibility(I)V

    .line 63
    .line 64
    .line 65
    :cond_3
    invoke-virtual {p0}, Landroidx/media3/ui/PlayerView;->d()V

    .line 66
    .line 67
    .line 68
    :cond_4
    if-nez v3, :cond_5

    .line 69
    .line 70
    return-void

    .line 71
    :cond_5
    invoke-virtual {p0}, Landroidx/media3/ui/PlayerView;->c()Z

    .line 72
    .line 73
    .line 74
    move-result p1

    .line 75
    invoke-virtual {p0}, Landroidx/media3/ui/PlayerView;->b()Z

    .line 76
    .line 77
    .line 78
    move-result v3

    .line 79
    if-nez p1, :cond_7

    .line 80
    .line 81
    if-nez v3, :cond_7

    .line 82
    .line 83
    if-eqz v8, :cond_6

    .line 84
    .line 85
    invoke-virtual {v8, v2}, Landroid/view/View;->setVisibility(I)V

    .line 86
    .line 87
    .line 88
    :cond_6
    invoke-virtual {p0}, Landroidx/media3/ui/PlayerView;->d()V

    .line 89
    .line 90
    .line 91
    :cond_7
    iget-object v4, p0, Landroidx/media3/ui/PlayerView;->M:Landroid/widget/ImageView;

    .line 92
    .line 93
    if-eqz v8, :cond_9

    .line 94
    .line 95
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    .line 96
    .line 97
    .line 98
    move-result v9

    .line 99
    if-ne v9, v6, :cond_9

    .line 100
    .line 101
    if-nez v4, :cond_8

    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_8
    invoke-virtual {v4}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 105
    .line 106
    .line 107
    move-result-object v9

    .line 108
    if-eqz v9, :cond_9

    .line 109
    .line 110
    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    .line 111
    .line 112
    .line 113
    move-result v9

    .line 114
    if-eqz v9, :cond_9

    .line 115
    .line 116
    goto :goto_2

    .line 117
    :cond_9
    :goto_1
    const/4 v1, 0x0

    .line 118
    :goto_2
    if-eqz v3, :cond_b

    .line 119
    .line 120
    if-nez p1, :cond_b

    .line 121
    .line 122
    if-eqz v1, :cond_b

    .line 123
    .line 124
    if-eqz v8, :cond_a

    .line 125
    .line 126
    invoke-virtual {v8, v2}, Landroid/view/View;->setVisibility(I)V

    .line 127
    .line 128
    .line 129
    :cond_a
    if-eqz v4, :cond_c

    .line 130
    .line 131
    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {p0}, Landroidx/media3/ui/PlayerView;->p()V

    .line 135
    .line 136
    .line 137
    goto :goto_3

    .line 138
    :cond_b
    if-eqz p1, :cond_c

    .line 139
    .line 140
    if-nez v3, :cond_c

    .line 141
    .line 142
    if-eqz v1, :cond_c

    .line 143
    .line 144
    invoke-virtual {p0}, Landroidx/media3/ui/PlayerView;->d()V

    .line 145
    .line 146
    .line 147
    :cond_c
    :goto_3
    if-nez p1, :cond_10

    .line 148
    .line 149
    if-nez v3, :cond_10

    .line 150
    .line 151
    iget p1, p0, Landroidx/media3/ui/PlayerView;->e0:I

    .line 152
    .line 153
    if-eqz p1, :cond_10

    .line 154
    .line 155
    invoke-static {v7}, Lcom/google/android/gms/internal/measurement/H1;->j(Ljava/lang/Object;)V

    .line 156
    .line 157
    .line 158
    if-eqz v0, :cond_f

    .line 159
    .line 160
    const/16 p1, 0x12

    .line 161
    .line 162
    move-object v1, v0

    .line 163
    check-cast v1, Lm0/f;

    .line 164
    .line 165
    invoke-virtual {v1, p1}, Lm0/f;->c(I)Z

    .line 166
    .line 167
    .line 168
    move-result p1

    .line 169
    if-nez p1, :cond_d

    .line 170
    .line 171
    goto :goto_4

    .line 172
    :cond_d
    check-cast v0, LB0/O;

    .line 173
    .line 174
    invoke-virtual {v0}, LB0/O;->c0()V

    .line 175
    .line 176
    .line 177
    iget-object p1, v0, LB0/O;->u0:Lm0/L;

    .line 178
    .line 179
    iget-object p1, p1, Lm0/L;->i:[B

    .line 180
    .line 181
    if-nez p1, :cond_e

    .line 182
    .line 183
    goto :goto_4

    .line 184
    :cond_e
    array-length v0, p1

    .line 185
    invoke-static {p1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    .line 186
    .line 187
    .line 188
    move-result-object p1

    .line 189
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 190
    .line 191
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 192
    .line 193
    .line 194
    move-result-object v1

    .line 195
    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {p0, v0}, Landroidx/media3/ui/PlayerView;->g(Landroid/graphics/drawable/Drawable;)Z

    .line 199
    .line 200
    .line 201
    move-result p1

    .line 202
    if-eqz p1, :cond_f

    .line 203
    .line 204
    return-void

    .line 205
    :cond_f
    :goto_4
    iget-object p1, p0, Landroidx/media3/ui/PlayerView;->g0:Landroid/graphics/drawable/Drawable;

    .line 206
    .line 207
    invoke-virtual {p0, p1}, Landroidx/media3/ui/PlayerView;->g(Landroid/graphics/drawable/Drawable;)Z

    .line 208
    .line 209
    .line 210
    move-result p1

    .line 211
    if-eqz p1, :cond_10

    .line 212
    .line 213
    return-void

    .line 214
    :cond_10
    if-eqz v7, :cond_11

    .line 215
    .line 216
    invoke-virtual {v7, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 217
    .line 218
    .line 219
    invoke-virtual {v7, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 220
    .line 221
    .line 222
    :cond_11
    return-void
.end method

.method public final onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/media3/ui/PlayerView;->q()Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_1

    .line 6
    .line 7
    iget-object p1, p0, Landroidx/media3/ui/PlayerView;->b0:Lm0/Y;

    .line 8
    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p1, 0x1

    .line 13
    invoke-virtual {p0, p1}, Landroidx/media3/ui/PlayerView;->f(Z)V

    .line 14
    .line 15
    .line 16
    return p1

    .line 17
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 18
    return p1
.end method

.method public final p()V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->M:Landroid/widget/ImageView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    if-nez v1, :cond_1

    .line 11
    .line 12
    return-void

    .line 13
    :cond_1
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-lez v2, :cond_5

    .line 22
    .line 23
    if-gtz v1, :cond_2

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_2
    int-to-float v2, v2

    .line 27
    int-to-float v1, v1

    .line 28
    div-float/2addr v2, v1

    .line 29
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    .line 30
    .line 31
    iget v3, p0, Landroidx/media3/ui/PlayerView;->f0:I

    .line 32
    .line 33
    const/4 v4, 0x1

    .line 34
    if-ne v3, v4, :cond_3

    .line 35
    .line 36
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    int-to-float v1, v1

    .line 41
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    int-to-float v2, v2

    .line 46
    div-float v2, v1, v2

    .line 47
    .line 48
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    .line 49
    .line 50
    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    if-nez v3, :cond_4

    .line 55
    .line 56
    iget-object v3, p0, Landroidx/media3/ui/PlayerView;->H:Landroidx/media3/ui/AspectRatioFrameLayout;

    .line 57
    .line 58
    if-eqz v3, :cond_4

    .line 59
    .line 60
    invoke-virtual {v3, v2}, Landroidx/media3/ui/AspectRatioFrameLayout;->setAspectRatio(F)V

    .line 61
    .line 62
    .line 63
    :cond_4
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 64
    .line 65
    .line 66
    :cond_5
    :goto_0
    return-void
.end method

.method public final performClick()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/media3/ui/PlayerView;->j()V

    .line 2
    .line 3
    .line 4
    invoke-super {p0}, Landroid/widget/FrameLayout;->performClick()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    return v0
.end method

.method public final q()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/media3/ui/PlayerView;->c0:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->R:LD1/v;

    .line 6
    .line 7
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/H1;->j(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    return v0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    return v0
.end method

.method public setArtworkDisplayMode(I)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_1

    .line 3
    .line 4
    iget-object v1, p0, Landroidx/media3/ui/PlayerView;->N:Landroid/widget/ImageView;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v1, 0x0

    .line 10
    goto :goto_1

    .line 11
    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 12
    :goto_1
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/H1;->i(Z)V

    .line 13
    .line 14
    .line 15
    iget v1, p0, Landroidx/media3/ui/PlayerView;->e0:I

    .line 16
    .line 17
    if-eq v1, p1, :cond_2

    .line 18
    .line 19
    iput p1, p0, Landroidx/media3/ui/PlayerView;->e0:I

    .line 20
    .line 21
    invoke-virtual {p0, v0}, Landroidx/media3/ui/PlayerView;->o(Z)V

    .line 22
    .line 23
    .line 24
    :cond_2
    return-void
.end method

.method public setAspectRatioListener(LD1/a;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->H:Landroidx/media3/ui/AspectRatioFrameLayout;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/H1;->j(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1}, Landroidx/media3/ui/AspectRatioFrameLayout;->setAspectRatioListener(LD1/a;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setControllerAnimationEnabled(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->R:LD1/v;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/H1;->j(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1}, LD1/v;->setAnimationEnabled(Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setControllerAutoShow(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/media3/ui/PlayerView;->l0:Z

    .line 2
    .line 3
    return-void
.end method

.method public setControllerHideDuringAds(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/media3/ui/PlayerView;->m0:Z

    .line 2
    .line 3
    return-void
.end method

.method public setControllerHideOnTouch(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->R:LD1/v;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/H1;->j(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    iput-boolean p1, p0, Landroidx/media3/ui/PlayerView;->n0:Z

    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/media3/ui/PlayerView;->m()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setControllerOnFullScreenModeChangedListener(LD1/l;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->R:LD1/v;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/H1;->j(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1}, LD1/v;->setOnFullScreenModeChangedListener(LD1/l;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setControllerShowTimeoutMs(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->R:LD1/v;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/H1;->j(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    iput p1, p0, Landroidx/media3/ui/PlayerView;->k0:I

    .line 7
    .line 8
    invoke-virtual {v0}, LD1/v;->j()Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0}, Landroidx/media3/ui/PlayerView;->h()Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    invoke-virtual {p0, p1}, Landroidx/media3/ui/PlayerView;->i(Z)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public setControllerVisibilityListener(LD1/E;)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1}, Landroidx/media3/ui/PlayerView;->setControllerVisibilityListener(LD1/u;)V

    :cond_0
    return-void
.end method

.method public setControllerVisibilityListener(LD1/u;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->R:LD1/v;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/H1;->j(Ljava/lang/Object;)V

    .line 4
    iget-object v1, p0, Landroidx/media3/ui/PlayerView;->d0:LD1/u;

    if-ne v1, p1, :cond_0

    return-void

    .line 5
    :cond_0
    iget-object v0, v0, LD1/v;->P:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v1, :cond_1

    .line 6
    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 7
    :cond_1
    iput-object p1, p0, Landroidx/media3/ui/PlayerView;->d0:LD1/u;

    if-eqz p1, :cond_2

    .line 8
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    .line 9
    invoke-virtual {p0, p1}, Landroidx/media3/ui/PlayerView;->setControllerVisibilityListener(LD1/E;)V

    :cond_2
    return-void
.end method

.method public setCustomErrorMessage(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->Q:Landroid/widget/TextView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/H1;->i(Z)V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Landroidx/media3/ui/PlayerView;->j0:Ljava/lang/CharSequence;

    .line 12
    .line 13
    invoke-virtual {p0}, Landroidx/media3/ui/PlayerView;->n()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public setDefaultArtwork(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->g0:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput-object p1, p0, Landroidx/media3/ui/PlayerView;->g0:Landroid/graphics/drawable/Drawable;

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    invoke-virtual {p0, p1}, Landroidx/media3/ui/PlayerView;->o(Z)V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public setEnableComposeSurfaceSyncWorkaround(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/media3/ui/PlayerView;->o0:Z

    .line 2
    .line 3
    return-void
.end method

.method public setErrorMessageProvider(Lm0/p;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lm0/p;",
            ")V"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/media3/ui/PlayerView;->n()V

    .line 4
    .line 5
    .line 6
    :cond_0
    return-void
.end method

.method public setFullscreenButtonClickListener(LD1/F;)V
    .locals 1

    .line 1
    iget-object p1, p0, Landroidx/media3/ui/PlayerView;->R:LD1/v;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/H1;->j(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->G:LD1/D;

    .line 7
    .line 8
    invoke-virtual {p1, v0}, LD1/v;->setOnFullScreenModeChangedListener(LD1/l;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setFullscreenButtonState(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->R:LD1/v;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/H1;->j(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1}, LD1/v;->o(Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setImageDisplayMode(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->M:Landroid/widget/ImageView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/H1;->i(Z)V

    .line 9
    .line 10
    .line 11
    iget v0, p0, Landroidx/media3/ui/PlayerView;->f0:I

    .line 12
    .line 13
    if-eq v0, p1, :cond_1

    .line 14
    .line 15
    iput p1, p0, Landroidx/media3/ui/PlayerView;->f0:I

    .line 16
    .line 17
    invoke-virtual {p0}, Landroidx/media3/ui/PlayerView;->p()V

    .line 18
    .line 19
    .line 20
    :cond_1
    return-void
.end method

.method public setKeepContentOnPlayerReset(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/media3/ui/PlayerView;->i0:Z

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput-boolean p1, p0, Landroidx/media3/ui/PlayerView;->i0:Z

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    invoke-virtual {p0, p1}, Landroidx/media3/ui/PlayerView;->o(Z)V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public setPlayer(Lm0/Y;)V
    .locals 11

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
    const/4 v2, 0x1

    .line 10
    const/4 v3, 0x0

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
    if-eqz p1, :cond_2

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
    if-ne v0, v1, :cond_1

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_1
    const/4 v0, 0x0

    .line 34
    goto :goto_2

    .line 35
    :cond_2
    :goto_1
    const/4 v0, 0x1

    .line 36
    :goto_2
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/H1;->d(Z)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->b0:Lm0/Y;

    .line 40
    .line 41
    if-ne v0, p1, :cond_3

    .line 42
    .line 43
    return-void

    .line 44
    :cond_3
    iget-object v1, p0, Landroidx/media3/ui/PlayerView;->J:Landroid/view/View;

    .line 45
    .line 46
    const/16 v4, 0x1b

    .line 47
    .line 48
    iget-object v5, p0, Landroidx/media3/ui/PlayerView;->G:LD1/D;

    .line 49
    .line 50
    const/4 v6, 0x0

    .line 51
    if-eqz v0, :cond_7

    .line 52
    .line 53
    move-object v7, v0

    .line 54
    check-cast v7, LB0/O;

    .line 55
    .line 56
    invoke-virtual {v7, v5}, LB0/O;->M(Lm0/W;)V

    .line 57
    .line 58
    .line 59
    move-object v8, v0

    .line 60
    check-cast v8, Lm0/f;

    .line 61
    .line 62
    invoke-virtual {v8, v4}, Lm0/f;->c(I)Z

    .line 63
    .line 64
    .line 65
    move-result v8

    .line 66
    if-eqz v8, :cond_6

    .line 67
    .line 68
    instance-of v8, v1, Landroid/view/TextureView;

    .line 69
    .line 70
    if-eqz v8, :cond_4

    .line 71
    .line 72
    move-object v8, v1

    .line 73
    check-cast v8, Landroid/view/TextureView;

    .line 74
    .line 75
    invoke-virtual {v7}, LB0/O;->c0()V

    .line 76
    .line 77
    .line 78
    if-eqz v8, :cond_6

    .line 79
    .line 80
    iget-object v9, v7, LB0/O;->A0:Landroid/view/TextureView;

    .line 81
    .line 82
    if-ne v8, v9, :cond_6

    .line 83
    .line 84
    invoke-virtual {v7}, LB0/O;->o()V

    .line 85
    .line 86
    .line 87
    goto :goto_4

    .line 88
    :cond_4
    instance-of v8, v1, Landroid/view/SurfaceView;

    .line 89
    .line 90
    if-eqz v8, :cond_6

    .line 91
    .line 92
    move-object v8, v1

    .line 93
    check-cast v8, Landroid/view/SurfaceView;

    .line 94
    .line 95
    invoke-virtual {v7}, LB0/O;->c0()V

    .line 96
    .line 97
    .line 98
    if-nez v8, :cond_5

    .line 99
    .line 100
    move-object v8, v6

    .line 101
    goto :goto_3

    .line 102
    :cond_5
    invoke-virtual {v8}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    .line 103
    .line 104
    .line 105
    move-result-object v8

    .line 106
    :goto_3
    invoke-virtual {v7}, LB0/O;->c0()V

    .line 107
    .line 108
    .line 109
    if-eqz v8, :cond_6

    .line 110
    .line 111
    iget-object v9, v7, LB0/O;->x0:Landroid/view/SurfaceHolder;

    .line 112
    .line 113
    if-ne v8, v9, :cond_6

    .line 114
    .line 115
    invoke-virtual {v7}, LB0/O;->o()V

    .line 116
    .line 117
    .line 118
    :cond_6
    :goto_4
    iget-object v7, p0, Landroidx/media3/ui/PlayerView;->V:Ljava/lang/Class;

    .line 119
    .line 120
    if-eqz v7, :cond_7

    .line 121
    .line 122
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 123
    .line 124
    .line 125
    move-result-object v8

    .line 126
    invoke-virtual {v7, v8}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 127
    .line 128
    .line 129
    move-result v7

    .line 130
    if-eqz v7, :cond_7

    .line 131
    .line 132
    :try_start_0
    iget-object v7, p0, Landroidx/media3/ui/PlayerView;->W:Ljava/lang/reflect/Method;

    .line 133
    .line 134
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 135
    .line 136
    .line 137
    new-array v8, v2, [Ljava/lang/Object;

    .line 138
    .line 139
    aput-object v6, v8, v3

    .line 140
    .line 141
    invoke-virtual {v7, v0, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    .line 143
    .line 144
    goto :goto_6

    .line 145
    :catch_0
    move-exception p1

    .line 146
    goto :goto_5

    .line 147
    :catch_1
    move-exception p1

    .line 148
    :goto_5
    new-instance v0, Ljava/lang/RuntimeException;

    .line 149
    .line 150
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 151
    .line 152
    .line 153
    throw v0

    .line 154
    :cond_7
    :goto_6
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->O:Landroidx/media3/ui/SubtitleView;

    .line 155
    .line 156
    if-eqz v0, :cond_8

    .line 157
    .line 158
    invoke-virtual {v0, v6}, Landroidx/media3/ui/SubtitleView;->setCues(Ljava/util/List;)V

    .line 159
    .line 160
    .line 161
    :cond_8
    iput-object p1, p0, Landroidx/media3/ui/PlayerView;->b0:Lm0/Y;

    .line 162
    .line 163
    invoke-virtual {p0}, Landroidx/media3/ui/PlayerView;->q()Z

    .line 164
    .line 165
    .line 166
    move-result v7

    .line 167
    iget-object v8, p0, Landroidx/media3/ui/PlayerView;->R:LD1/v;

    .line 168
    .line 169
    if-eqz v7, :cond_9

    .line 170
    .line 171
    invoke-virtual {v8, p1}, LD1/v;->setPlayer(Lm0/Y;)V

    .line 172
    .line 173
    .line 174
    :cond_9
    invoke-virtual {p0}, Landroidx/media3/ui/PlayerView;->l()V

    .line 175
    .line 176
    .line 177
    invoke-virtual {p0}, Landroidx/media3/ui/PlayerView;->n()V

    .line 178
    .line 179
    .line 180
    invoke-virtual {p0, v2}, Landroidx/media3/ui/PlayerView;->o(Z)V

    .line 181
    .line 182
    .line 183
    if-eqz p1, :cond_18

    .line 184
    .line 185
    move-object v7, p1

    .line 186
    check-cast v7, Lm0/f;

    .line 187
    .line 188
    invoke-virtual {v7, v4}, Lm0/f;->c(I)Z

    .line 189
    .line 190
    .line 191
    move-result v4

    .line 192
    if-eqz v4, :cond_16

    .line 193
    .line 194
    instance-of v4, v1, Landroid/view/TextureView;

    .line 195
    .line 196
    if-eqz v4, :cond_e

    .line 197
    .line 198
    check-cast v1, Landroid/view/TextureView;

    .line 199
    .line 200
    move-object v2, p1

    .line 201
    check-cast v2, LB0/O;

    .line 202
    .line 203
    invoke-virtual {v2}, LB0/O;->c0()V

    .line 204
    .line 205
    .line 206
    if-nez v1, :cond_a

    .line 207
    .line 208
    invoke-virtual {v2}, LB0/O;->o()V

    .line 209
    .line 210
    .line 211
    goto/16 :goto_9

    .line 212
    .line 213
    :cond_a
    invoke-virtual {v2}, LB0/O;->N()V

    .line 214
    .line 215
    .line 216
    iput-object v1, v2, LB0/O;->A0:Landroid/view/TextureView;

    .line 217
    .line 218
    invoke-virtual {v1}, Landroid/view/TextureView;->getSurfaceTextureListener()Landroid/view/TextureView$SurfaceTextureListener;

    .line 219
    .line 220
    .line 221
    move-result-object v4

    .line 222
    if-eqz v4, :cond_b

    .line 223
    .line 224
    const-string v4, "ExoPlayerImpl"

    .line 225
    .line 226
    const-string v8, "Replacing existing SurfaceTextureListener."

    .line 227
    .line 228
    invoke-static {v4, v8}, Lp0/x;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    .line 230
    .line 231
    :cond_b
    iget-object v4, v2, LB0/O;->d0:LB0/L;

    .line 232
    .line 233
    invoke-virtual {v1, v4}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 234
    .line 235
    .line 236
    invoke-virtual {v1}, Landroid/view/TextureView;->isAvailable()Z

    .line 237
    .line 238
    .line 239
    move-result v4

    .line 240
    if-eqz v4, :cond_c

    .line 241
    .line 242
    invoke-virtual {v1}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    .line 243
    .line 244
    .line 245
    move-result-object v4

    .line 246
    goto :goto_7

    .line 247
    :cond_c
    move-object v4, v6

    .line 248
    :goto_7
    if-nez v4, :cond_d

    .line 249
    .line 250
    invoke-virtual {v2, v6}, LB0/O;->V(Ljava/lang/Object;)V

    .line 251
    .line 252
    .line 253
    invoke-virtual {v2, v3, v3}, LB0/O;->J(II)V

    .line 254
    .line 255
    .line 256
    goto/16 :goto_9

    .line 257
    .line 258
    :cond_d
    new-instance v6, Landroid/view/Surface;

    .line 259
    .line 260
    invoke-direct {v6, v4}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 261
    .line 262
    .line 263
    invoke-virtual {v2, v6}, LB0/O;->V(Ljava/lang/Object;)V

    .line 264
    .line 265
    .line 266
    iput-object v6, v2, LB0/O;->w0:Landroid/view/Surface;

    .line 267
    .line 268
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 269
    .line 270
    .line 271
    move-result v4

    .line 272
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 273
    .line 274
    .line 275
    move-result v1

    .line 276
    invoke-virtual {v2, v4, v1}, LB0/O;->J(II)V

    .line 277
    .line 278
    .line 279
    goto/16 :goto_9

    .line 280
    .line 281
    :cond_e
    instance-of v4, v1, Landroid/view/SurfaceView;

    .line 282
    .line 283
    if-eqz v4, :cond_14

    .line 284
    .line 285
    check-cast v1, Landroid/view/SurfaceView;

    .line 286
    .line 287
    move-object v4, p1

    .line 288
    check-cast v4, LB0/O;

    .line 289
    .line 290
    invoke-virtual {v4}, LB0/O;->c0()V

    .line 291
    .line 292
    .line 293
    instance-of v8, v1, LU0/A;

    .line 294
    .line 295
    if-eqz v8, :cond_f

    .line 296
    .line 297
    invoke-virtual {v4}, LB0/O;->N()V

    .line 298
    .line 299
    .line 300
    invoke-virtual {v4, v1}, LB0/O;->V(Ljava/lang/Object;)V

    .line 301
    .line 302
    .line 303
    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    .line 304
    .line 305
    .line 306
    move-result-object v1

    .line 307
    invoke-virtual {v4, v1}, LB0/O;->R(Landroid/view/SurfaceHolder;)V

    .line 308
    .line 309
    .line 310
    goto/16 :goto_9

    .line 311
    .line 312
    :cond_f
    instance-of v8, v1, LV0/k;

    .line 313
    .line 314
    iget-object v9, v4, LB0/O;->d0:LB0/L;

    .line 315
    .line 316
    if-eqz v8, :cond_10

    .line 317
    .line 318
    invoke-virtual {v4}, LB0/O;->N()V

    .line 319
    .line 320
    .line 321
    move-object v6, v1

    .line 322
    check-cast v6, LV0/k;

    .line 323
    .line 324
    iput-object v6, v4, LB0/O;->y0:LV0/k;

    .line 325
    .line 326
    iget-object v6, v4, LB0/O;->e0:LB0/M;

    .line 327
    .line 328
    invoke-virtual {v4, v6}, LB0/O;->p(LB0/y0;)LB0/z0;

    .line 329
    .line 330
    .line 331
    move-result-object v6

    .line 332
    iget-boolean v8, v6, LB0/z0;->f:Z

    .line 333
    .line 334
    xor-int/2addr v8, v2

    .line 335
    invoke-static {v8}, Lcom/google/android/gms/internal/measurement/H1;->i(Z)V

    .line 336
    .line 337
    .line 338
    const/16 v8, 0x2710

    .line 339
    .line 340
    iput v8, v6, LB0/z0;->c:I

    .line 341
    .line 342
    iget-object v8, v4, LB0/O;->y0:LV0/k;

    .line 343
    .line 344
    iget-boolean v10, v6, LB0/z0;->f:Z

    .line 345
    .line 346
    xor-int/2addr v2, v10

    .line 347
    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/H1;->i(Z)V

    .line 348
    .line 349
    .line 350
    iput-object v8, v6, LB0/z0;->d:Ljava/lang/Object;

    .line 351
    .line 352
    invoke-virtual {v6}, LB0/z0;->b()V

    .line 353
    .line 354
    .line 355
    iget-object v2, v4, LB0/O;->y0:LV0/k;

    .line 356
    .line 357
    iget-object v2, v2, LV0/k;->G:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 358
    .line 359
    invoke-virtual {v2, v9}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 360
    .line 361
    .line 362
    iget-object v2, v4, LB0/O;->y0:LV0/k;

    .line 363
    .line 364
    invoke-virtual {v2}, LV0/k;->getVideoSurface()Landroid/view/Surface;

    .line 365
    .line 366
    .line 367
    move-result-object v2

    .line 368
    invoke-virtual {v4, v2}, LB0/O;->V(Ljava/lang/Object;)V

    .line 369
    .line 370
    .line 371
    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    .line 372
    .line 373
    .line 374
    move-result-object v1

    .line 375
    invoke-virtual {v4, v1}, LB0/O;->R(Landroid/view/SurfaceHolder;)V

    .line 376
    .line 377
    .line 378
    goto :goto_9

    .line 379
    :cond_10
    if-nez v1, :cond_11

    .line 380
    .line 381
    move-object v1, v6

    .line 382
    goto :goto_8

    .line 383
    :cond_11
    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    .line 384
    .line 385
    .line 386
    move-result-object v1

    .line 387
    :goto_8
    invoke-virtual {v4}, LB0/O;->c0()V

    .line 388
    .line 389
    .line 390
    if-nez v1, :cond_12

    .line 391
    .line 392
    invoke-virtual {v4}, LB0/O;->o()V

    .line 393
    .line 394
    .line 395
    goto :goto_9

    .line 396
    :cond_12
    invoke-virtual {v4}, LB0/O;->N()V

    .line 397
    .line 398
    .line 399
    iput-boolean v2, v4, LB0/O;->z0:Z

    .line 400
    .line 401
    iput-object v1, v4, LB0/O;->x0:Landroid/view/SurfaceHolder;

    .line 402
    .line 403
    invoke-interface {v1, v9}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 404
    .line 405
    .line 406
    invoke-interface {v1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    .line 407
    .line 408
    .line 409
    move-result-object v2

    .line 410
    if-eqz v2, :cond_13

    .line 411
    .line 412
    invoke-virtual {v2}, Landroid/view/Surface;->isValid()Z

    .line 413
    .line 414
    .line 415
    move-result v8

    .line 416
    if-eqz v8, :cond_13

    .line 417
    .line 418
    invoke-virtual {v4, v2}, LB0/O;->V(Ljava/lang/Object;)V

    .line 419
    .line 420
    .line 421
    invoke-interface {v1}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    .line 422
    .line 423
    .line 424
    move-result-object v1

    .line 425
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 426
    .line 427
    .line 428
    move-result v2

    .line 429
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 430
    .line 431
    .line 432
    move-result v1

    .line 433
    invoke-virtual {v4, v2, v1}, LB0/O;->J(II)V

    .line 434
    .line 435
    .line 436
    goto :goto_9

    .line 437
    :cond_13
    invoke-virtual {v4, v6}, LB0/O;->V(Ljava/lang/Object;)V

    .line 438
    .line 439
    .line 440
    invoke-virtual {v4, v3, v3}, LB0/O;->J(II)V

    .line 441
    .line 442
    .line 443
    :cond_14
    :goto_9
    const/16 v1, 0x1e

    .line 444
    .line 445
    invoke-virtual {v7, v1}, Lm0/f;->c(I)Z

    .line 446
    .line 447
    .line 448
    move-result v1

    .line 449
    if-eqz v1, :cond_15

    .line 450
    .line 451
    move-object v1, p1

    .line 452
    check-cast v1, LB0/O;

    .line 453
    .line 454
    invoke-virtual {v1}, LB0/O;->y()Lm0/m0;

    .line 455
    .line 456
    .line 457
    move-result-object v1

    .line 458
    invoke-virtual {v1}, Lm0/m0;->c()Z

    .line 459
    .line 460
    .line 461
    move-result v1

    .line 462
    if-eqz v1, :cond_16

    .line 463
    .line 464
    :cond_15
    invoke-virtual {p0}, Landroidx/media3/ui/PlayerView;->k()V

    .line 465
    .line 466
    .line 467
    :cond_16
    if-eqz v0, :cond_17

    .line 468
    .line 469
    const/16 v1, 0x1c

    .line 470
    .line 471
    invoke-virtual {v7, v1}, Lm0/f;->c(I)Z

    .line 472
    .line 473
    .line 474
    move-result v1

    .line 475
    if-eqz v1, :cond_17

    .line 476
    .line 477
    move-object v1, p1

    .line 478
    check-cast v1, LB0/O;

    .line 479
    .line 480
    invoke-virtual {v1}, LB0/O;->c0()V

    .line 481
    .line 482
    .line 483
    iget-object v1, v1, LB0/O;->G0:Lo0/c;

    .line 484
    .line 485
    iget-object v1, v1, Lo0/c;->a:Lz4/d0;

    .line 486
    .line 487
    invoke-virtual {v0, v1}, Landroidx/media3/ui/SubtitleView;->setCues(Ljava/util/List;)V

    .line 488
    .line 489
    .line 490
    :cond_17
    move-object v0, p1

    .line 491
    check-cast v0, LB0/O;

    .line 492
    .line 493
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 494
    .line 495
    .line 496
    iget-object v0, v0, LB0/O;->S:Lx/e;

    .line 497
    .line 498
    invoke-virtual {v0, v5}, Lx/e;->a(Ljava/lang/Object;)V

    .line 499
    .line 500
    .line 501
    invoke-direct {p0, p1}, Landroidx/media3/ui/PlayerView;->setImageOutput(Lm0/Y;)V

    .line 502
    .line 503
    .line 504
    invoke-virtual {p0, v3}, Landroidx/media3/ui/PlayerView;->f(Z)V

    .line 505
    .line 506
    .line 507
    goto :goto_a

    .line 508
    :cond_18
    if-eqz v8, :cond_19

    .line 509
    .line 510
    invoke-virtual {v8}, LD1/v;->g()V

    .line 511
    .line 512
    .line 513
    :cond_19
    :goto_a
    return-void
.end method

.method public setRepeatToggleModes(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->R:LD1/v;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/H1;->j(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1}, LD1/v;->setRepeatToggleModes(I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setResizeMode(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->H:Landroidx/media3/ui/AspectRatioFrameLayout;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/H1;->j(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1}, Landroidx/media3/ui/AspectRatioFrameLayout;->setResizeMode(I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setShowBuffering(I)V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/media3/ui/PlayerView;->h0:I

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput p1, p0, Landroidx/media3/ui/PlayerView;->h0:I

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/media3/ui/PlayerView;->l()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public setShowFastForwardButton(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->R:LD1/v;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/H1;->j(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1}, LD1/v;->setShowFastForwardButton(Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setShowMultiWindowTimeBar(Z)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->R:LD1/v;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/H1;->j(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1}, LD1/v;->setShowMultiWindowTimeBar(Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setShowNextButton(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->R:LD1/v;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/H1;->j(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1}, LD1/v;->setShowNextButton(Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setShowPlayButtonIfPlaybackIsSuppressed(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->R:LD1/v;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/H1;->j(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1}, LD1/v;->setShowPlayButtonIfPlaybackIsSuppressed(Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setShowPreviousButton(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->R:LD1/v;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/H1;->j(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1}, LD1/v;->setShowPreviousButton(Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setShowRewindButton(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->R:LD1/v;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/H1;->j(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1}, LD1/v;->setShowRewindButton(Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setShowShuffleButton(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->R:LD1/v;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/H1;->j(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1}, LD1/v;->setShowShuffleButton(Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setShowSubtitleButton(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->R:LD1/v;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/H1;->j(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1}, LD1/v;->setShowSubtitleButton(Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setShowVrButton(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->R:LD1/v;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/H1;->j(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1}, LD1/v;->setShowVrButton(Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setShutterBackgroundColor(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->I:Landroid/view/View;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setTimeBarScrubbingEnabled(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->R:LD1/v;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/H1;->j(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1}, LD1/v;->setTimeBarScrubbingEnabled(Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setUseArtwork(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    xor-int/lit8 p1, p1, 0x1

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroidx/media3/ui/PlayerView;->setArtworkDisplayMode(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setUseController(Z)V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    iget-object v2, p0, Landroidx/media3/ui/PlayerView;->R:LD1/v;

    .line 4
    .line 5
    if-eqz p1, :cond_1

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v3, 0x0

    .line 11
    goto :goto_1

    .line 12
    :cond_1
    :goto_0
    const/4 v3, 0x1

    .line 13
    :goto_1
    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/H1;->i(Z)V

    .line 14
    .line 15
    .line 16
    if-nez p1, :cond_3

    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/view/View;->hasOnClickListeners()Z

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    if-eqz v3, :cond_2

    .line 23
    .line 24
    goto :goto_2

    .line 25
    :cond_2
    const/4 v0, 0x0

    .line 26
    :cond_3
    :goto_2
    invoke-virtual {p0, v0}, Landroid/view/View;->setClickable(Z)V

    .line 27
    .line 28
    .line 29
    iget-boolean v0, p0, Landroidx/media3/ui/PlayerView;->c0:Z

    .line 30
    .line 31
    if-ne v0, p1, :cond_4

    .line 32
    .line 33
    return-void

    .line 34
    :cond_4
    iput-boolean p1, p0, Landroidx/media3/ui/PlayerView;->c0:Z

    .line 35
    .line 36
    invoke-virtual {p0}, Landroidx/media3/ui/PlayerView;->q()Z

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    if-eqz p1, :cond_5

    .line 41
    .line 42
    iget-object p1, p0, Landroidx/media3/ui/PlayerView;->b0:Lm0/Y;

    .line 43
    .line 44
    invoke-virtual {v2, p1}, LD1/v;->setPlayer(Lm0/Y;)V

    .line 45
    .line 46
    .line 47
    goto :goto_3

    .line 48
    :cond_5
    if-eqz v2, :cond_6

    .line 49
    .line 50
    invoke-virtual {v2}, LD1/v;->g()V

    .line 51
    .line 52
    .line 53
    const/4 p1, 0x0

    .line 54
    invoke-virtual {v2, p1}, LD1/v;->setPlayer(Lm0/Y;)V

    .line 55
    .line 56
    .line 57
    :cond_6
    :goto_3
    invoke-virtual {p0}, Landroidx/media3/ui/PlayerView;->m()V

    .line 58
    .line 59
    .line 60
    return-void
.end method

.method public setVisibility(I)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->J:Landroid/view/View;

    .line 5
    .line 6
    instance-of v1, v0, Landroid/view/SurfaceView;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method
