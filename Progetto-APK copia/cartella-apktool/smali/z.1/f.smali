.class public final Lz/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public final synthetic h:Landroidx/constraintlayout/widget/ConstraintLayout;


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lz/f;->h:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 5
    .line 6
    iput-object p2, p0, Lz/f;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 7
    .line 8
    return-void
.end method

.method public static a(III)Z
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    const/high16 v2, 0x40000000    # 2.0f

    .line 18
    .line 19
    if-ne v1, v2, :cond_2

    .line 20
    .line 21
    const/high16 v1, -0x80000000

    .line 22
    .line 23
    if-eq p0, v1, :cond_1

    .line 24
    .line 25
    if-nez p0, :cond_2

    .line 26
    .line 27
    :cond_1
    if-ne p2, p1, :cond_2

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_2
    const/4 v0, 0x0

    .line 31
    :goto_0
    return v0
.end method


# virtual methods
.method public final b(Lw/d;Lx/b;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget v3, v1, Lw/d;->f0:I

    .line 11
    .line 12
    const/16 v4, 0x8

    .line 13
    .line 14
    const/4 v5, 0x0

    .line 15
    if-ne v3, v4, :cond_1

    .line 16
    .line 17
    iput v5, v2, Lx/b;->e:I

    .line 18
    .line 19
    iput v5, v2, Lx/b;->f:I

    .line 20
    .line 21
    iput v5, v2, Lx/b;->g:I

    .line 22
    .line 23
    return-void

    .line 24
    :cond_1
    iget-object v3, v1, Lw/d;->S:Lw/d;

    .line 25
    .line 26
    if-nez v3, :cond_2

    .line 27
    .line 28
    return-void

    .line 29
    :cond_2
    sget-object v3, Landroidx/constraintlayout/widget/ConstraintLayout;->V:Lz/s;

    .line 30
    .line 31
    iget-object v3, v0, Lz/f;->h:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 32
    .line 33
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    iget v4, v2, Lx/b;->a:I

    .line 37
    .line 38
    iget v6, v2, Lx/b;->b:I

    .line 39
    .line 40
    iget v7, v2, Lx/b;->c:I

    .line 41
    .line 42
    iget v8, v2, Lx/b;->d:I

    .line 43
    .line 44
    iget v9, v0, Lz/f;->b:I

    .line 45
    .line 46
    iget v10, v0, Lz/f;->c:I

    .line 47
    .line 48
    add-int/2addr v9, v10

    .line 49
    iget v10, v0, Lz/f;->d:I

    .line 50
    .line 51
    iget-object v11, v1, Lw/d;->e0:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast v11, Landroid/view/View;

    .line 54
    .line 55
    invoke-static {v4}, Lu/h;->b(I)I

    .line 56
    .line 57
    .line 58
    move-result v12

    .line 59
    iget-object v13, v1, Lw/d;->J:Lw/c;

    .line 60
    .line 61
    iget-object v14, v1, Lw/d;->H:Lw/c;

    .line 62
    .line 63
    const/4 v15, 0x1

    .line 64
    const/4 v5, 0x2

    .line 65
    if-eqz v12, :cond_e

    .line 66
    .line 67
    if-eq v12, v15, :cond_d

    .line 68
    .line 69
    if-eq v12, v5, :cond_6

    .line 70
    .line 71
    const/4 v7, 0x3

    .line 72
    if-eq v12, v7, :cond_3

    .line 73
    .line 74
    const/4 v7, 0x0

    .line 75
    goto/16 :goto_5

    .line 76
    .line 77
    :cond_3
    iget v7, v0, Lz/f;->f:I

    .line 78
    .line 79
    if-eqz v14, :cond_4

    .line 80
    .line 81
    iget v12, v14, Lw/c;->g:I

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_4
    const/4 v12, 0x0

    .line 85
    :goto_0
    if-eqz v13, :cond_5

    .line 86
    .line 87
    iget v5, v13, Lw/c;->g:I

    .line 88
    .line 89
    add-int/2addr v12, v5

    .line 90
    :cond_5
    add-int/2addr v10, v12

    .line 91
    const/4 v5, -0x1

    .line 92
    invoke-static {v7, v10, v5}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 93
    .line 94
    .line 95
    move-result v7

    .line 96
    goto :goto_5

    .line 97
    :cond_6
    iget v5, v0, Lz/f;->f:I

    .line 98
    .line 99
    const/4 v7, -0x2

    .line 100
    invoke-static {v5, v10, v7}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 101
    .line 102
    .line 103
    move-result v5

    .line 104
    iget v7, v1, Lw/d;->r:I

    .line 105
    .line 106
    if-ne v7, v15, :cond_7

    .line 107
    .line 108
    const/4 v7, 0x1

    .line 109
    goto :goto_1

    .line 110
    :cond_7
    const/4 v7, 0x0

    .line 111
    :goto_1
    iget v10, v2, Lx/b;->j:I

    .line 112
    .line 113
    const/4 v12, 0x2

    .line 114
    if-eq v10, v15, :cond_8

    .line 115
    .line 116
    if-ne v10, v12, :cond_b

    .line 117
    .line 118
    :cond_8
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    .line 119
    .line 120
    .line 121
    move-result v10

    .line 122
    invoke-virtual/range {p1 .. p1}, Lw/d;->i()I

    .line 123
    .line 124
    .line 125
    move-result v15

    .line 126
    if-ne v10, v15, :cond_9

    .line 127
    .line 128
    const/4 v10, 0x1

    .line 129
    goto :goto_2

    .line 130
    :cond_9
    const/4 v10, 0x0

    .line 131
    :goto_2
    iget v15, v2, Lx/b;->j:I

    .line 132
    .line 133
    if-eq v15, v12, :cond_c

    .line 134
    .line 135
    if-eqz v7, :cond_c

    .line 136
    .line 137
    if-eqz v7, :cond_a

    .line 138
    .line 139
    if-nez v10, :cond_c

    .line 140
    .line 141
    :cond_a
    invoke-virtual/range {p1 .. p1}, Lw/d;->y()Z

    .line 142
    .line 143
    .line 144
    move-result v7

    .line 145
    if-eqz v7, :cond_b

    .line 146
    .line 147
    goto :goto_4

    .line 148
    :cond_b
    :goto_3
    move v7, v5

    .line 149
    goto :goto_5

    .line 150
    :cond_c
    :goto_4
    invoke-virtual/range {p1 .. p1}, Lw/d;->o()I

    .line 151
    .line 152
    .line 153
    move-result v5

    .line 154
    const/high16 v12, 0x40000000    # 2.0f

    .line 155
    .line 156
    invoke-static {v5, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 157
    .line 158
    .line 159
    move-result v5

    .line 160
    goto :goto_3

    .line 161
    :cond_d
    const/high16 v12, 0x40000000    # 2.0f

    .line 162
    .line 163
    iget v5, v0, Lz/f;->f:I

    .line 164
    .line 165
    const/4 v7, -0x2

    .line 166
    invoke-static {v5, v10, v7}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 167
    .line 168
    .line 169
    move-result v5

    .line 170
    goto :goto_3

    .line 171
    :cond_e
    const/high16 v12, 0x40000000    # 2.0f

    .line 172
    .line 173
    invoke-static {v7, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 174
    .line 175
    .line 176
    move-result v5

    .line 177
    goto :goto_3

    .line 178
    :goto_5
    invoke-static {v6}, Lu/h;->b(I)I

    .line 179
    .line 180
    .line 181
    move-result v5

    .line 182
    if-eqz v5, :cond_19

    .line 183
    .line 184
    const/4 v10, 0x1

    .line 185
    if-eq v5, v10, :cond_18

    .line 186
    .line 187
    const/4 v8, 0x2

    .line 188
    if-eq v5, v8, :cond_12

    .line 189
    .line 190
    const/4 v8, 0x3

    .line 191
    if-eq v5, v8, :cond_f

    .line 192
    .line 193
    const/4 v5, 0x0

    .line 194
    goto/16 :goto_a

    .line 195
    .line 196
    :cond_f
    iget v5, v0, Lz/f;->g:I

    .line 197
    .line 198
    if-eqz v14, :cond_10

    .line 199
    .line 200
    iget-object v8, v1, Lw/d;->I:Lw/c;

    .line 201
    .line 202
    iget v8, v8, Lw/c;->g:I

    .line 203
    .line 204
    goto :goto_6

    .line 205
    :cond_10
    const/4 v8, 0x0

    .line 206
    :goto_6
    if-eqz v13, :cond_11

    .line 207
    .line 208
    iget-object v10, v1, Lw/d;->K:Lw/c;

    .line 209
    .line 210
    iget v10, v10, Lw/c;->g:I

    .line 211
    .line 212
    add-int/2addr v8, v10

    .line 213
    :cond_11
    add-int/2addr v9, v8

    .line 214
    const/4 v8, -0x1

    .line 215
    invoke-static {v5, v9, v8}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 216
    .line 217
    .line 218
    move-result v5

    .line 219
    goto :goto_a

    .line 220
    :cond_12
    iget v5, v0, Lz/f;->g:I

    .line 221
    .line 222
    const/4 v8, -0x2

    .line 223
    invoke-static {v5, v9, v8}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 224
    .line 225
    .line 226
    move-result v5

    .line 227
    iget v8, v1, Lw/d;->s:I

    .line 228
    .line 229
    const/4 v9, 0x1

    .line 230
    if-ne v8, v9, :cond_13

    .line 231
    .line 232
    const/4 v8, 0x1

    .line 233
    goto :goto_7

    .line 234
    :cond_13
    const/4 v8, 0x0

    .line 235
    :goto_7
    iget v10, v2, Lx/b;->j:I

    .line 236
    .line 237
    if-eq v10, v9, :cond_14

    .line 238
    .line 239
    const/4 v9, 0x2

    .line 240
    if-ne v10, v9, :cond_1a

    .line 241
    .line 242
    goto :goto_8

    .line 243
    :cond_14
    const/4 v9, 0x2

    .line 244
    :goto_8
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    .line 245
    .line 246
    .line 247
    move-result v10

    .line 248
    invoke-virtual/range {p1 .. p1}, Lw/d;->o()I

    .line 249
    .line 250
    .line 251
    move-result v12

    .line 252
    if-ne v10, v12, :cond_15

    .line 253
    .line 254
    const/4 v10, 0x1

    .line 255
    goto :goto_9

    .line 256
    :cond_15
    const/4 v10, 0x0

    .line 257
    :goto_9
    iget v12, v2, Lx/b;->j:I

    .line 258
    .line 259
    if-eq v12, v9, :cond_17

    .line 260
    .line 261
    if-eqz v8, :cond_17

    .line 262
    .line 263
    if-eqz v8, :cond_16

    .line 264
    .line 265
    if-nez v10, :cond_17

    .line 266
    .line 267
    :cond_16
    invoke-virtual/range {p1 .. p1}, Lw/d;->z()Z

    .line 268
    .line 269
    .line 270
    move-result v8

    .line 271
    if-eqz v8, :cond_1a

    .line 272
    .line 273
    :cond_17
    invoke-virtual/range {p1 .. p1}, Lw/d;->i()I

    .line 274
    .line 275
    .line 276
    move-result v5

    .line 277
    const/high16 v10, 0x40000000    # 2.0f

    .line 278
    .line 279
    invoke-static {v5, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 280
    .line 281
    .line 282
    move-result v5

    .line 283
    goto :goto_a

    .line 284
    :cond_18
    const/high16 v10, 0x40000000    # 2.0f

    .line 285
    .line 286
    iget v5, v0, Lz/f;->g:I

    .line 287
    .line 288
    const/4 v8, -0x2

    .line 289
    invoke-static {v5, v9, v8}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 290
    .line 291
    .line 292
    move-result v5

    .line 293
    goto :goto_a

    .line 294
    :cond_19
    const/high16 v10, 0x40000000    # 2.0f

    .line 295
    .line 296
    invoke-static {v8, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 297
    .line 298
    .line 299
    move-result v5

    .line 300
    :cond_1a
    :goto_a
    iget-object v8, v1, Lw/d;->S:Lw/d;

    .line 301
    .line 302
    check-cast v8, Lw/e;

    .line 303
    .line 304
    if-eqz v8, :cond_1b

    .line 305
    .line 306
    iget v9, v3, Landroidx/constraintlayout/widget/ConstraintLayout;->O:I

    .line 307
    .line 308
    const/16 v10, 0x100

    .line 309
    .line 310
    invoke-static {v9, v10}, Lw/i;->b(II)Z

    .line 311
    .line 312
    .line 313
    move-result v9

    .line 314
    if-eqz v9, :cond_1b

    .line 315
    .line 316
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    .line 317
    .line 318
    .line 319
    move-result v9

    .line 320
    invoke-virtual/range {p1 .. p1}, Lw/d;->o()I

    .line 321
    .line 322
    .line 323
    move-result v10

    .line 324
    if-ne v9, v10, :cond_1b

    .line 325
    .line 326
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    .line 327
    .line 328
    .line 329
    move-result v9

    .line 330
    invoke-virtual {v8}, Lw/d;->o()I

    .line 331
    .line 332
    .line 333
    move-result v10

    .line 334
    if-ge v9, v10, :cond_1b

    .line 335
    .line 336
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    .line 337
    .line 338
    .line 339
    move-result v9

    .line 340
    invoke-virtual/range {p1 .. p1}, Lw/d;->i()I

    .line 341
    .line 342
    .line 343
    move-result v10

    .line 344
    if-ne v9, v10, :cond_1b

    .line 345
    .line 346
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    .line 347
    .line 348
    .line 349
    move-result v9

    .line 350
    invoke-virtual {v8}, Lw/d;->i()I

    .line 351
    .line 352
    .line 353
    move-result v8

    .line 354
    if-ge v9, v8, :cond_1b

    .line 355
    .line 356
    invoke-virtual {v11}, Landroid/view/View;->getBaseline()I

    .line 357
    .line 358
    .line 359
    move-result v8

    .line 360
    iget v9, v1, Lw/d;->Z:I

    .line 361
    .line 362
    if-ne v8, v9, :cond_1b

    .line 363
    .line 364
    invoke-virtual/range {p1 .. p1}, Lw/d;->x()Z

    .line 365
    .line 366
    .line 367
    move-result v8

    .line 368
    if-nez v8, :cond_1b

    .line 369
    .line 370
    iget v8, v1, Lw/d;->F:I

    .line 371
    .line 372
    invoke-virtual/range {p1 .. p1}, Lw/d;->o()I

    .line 373
    .line 374
    .line 375
    move-result v9

    .line 376
    invoke-static {v8, v7, v9}, Lz/f;->a(III)Z

    .line 377
    .line 378
    .line 379
    move-result v8

    .line 380
    if-eqz v8, :cond_1b

    .line 381
    .line 382
    iget v8, v1, Lw/d;->G:I

    .line 383
    .line 384
    invoke-virtual/range {p1 .. p1}, Lw/d;->i()I

    .line 385
    .line 386
    .line 387
    move-result v9

    .line 388
    invoke-static {v8, v5, v9}, Lz/f;->a(III)Z

    .line 389
    .line 390
    .line 391
    move-result v8

    .line 392
    if-eqz v8, :cond_1b

    .line 393
    .line 394
    invoke-virtual/range {p1 .. p1}, Lw/d;->o()I

    .line 395
    .line 396
    .line 397
    move-result v3

    .line 398
    iput v3, v2, Lx/b;->e:I

    .line 399
    .line 400
    invoke-virtual/range {p1 .. p1}, Lw/d;->i()I

    .line 401
    .line 402
    .line 403
    move-result v3

    .line 404
    iput v3, v2, Lx/b;->f:I

    .line 405
    .line 406
    iget v1, v1, Lw/d;->Z:I

    .line 407
    .line 408
    iput v1, v2, Lx/b;->g:I

    .line 409
    .line 410
    return-void

    .line 411
    :cond_1b
    const/4 v8, 0x3

    .line 412
    if-ne v4, v8, :cond_1c

    .line 413
    .line 414
    const/4 v9, 0x1

    .line 415
    goto :goto_b

    .line 416
    :cond_1c
    const/4 v9, 0x0

    .line 417
    :goto_b
    if-ne v6, v8, :cond_1d

    .line 418
    .line 419
    const/4 v8, 0x1

    .line 420
    goto :goto_c

    .line 421
    :cond_1d
    const/4 v8, 0x0

    .line 422
    :goto_c
    const/4 v10, 0x4

    .line 423
    const/4 v12, 0x1

    .line 424
    if-eq v6, v10, :cond_1f

    .line 425
    .line 426
    if-ne v6, v12, :cond_1e

    .line 427
    .line 428
    goto :goto_d

    .line 429
    :cond_1e
    const/4 v6, 0x0

    .line 430
    goto :goto_e

    .line 431
    :cond_1f
    :goto_d
    const/4 v6, 0x1

    .line 432
    :goto_e
    if-eq v4, v10, :cond_21

    .line 433
    .line 434
    if-ne v4, v12, :cond_20

    .line 435
    .line 436
    goto :goto_f

    .line 437
    :cond_20
    const/4 v10, 0x0

    .line 438
    goto :goto_10

    .line 439
    :cond_21
    :goto_f
    const/4 v10, 0x1

    .line 440
    :goto_10
    const/4 v4, 0x0

    .line 441
    if-eqz v9, :cond_22

    .line 442
    .line 443
    iget v12, v1, Lw/d;->V:F

    .line 444
    .line 445
    cmpl-float v12, v12, v4

    .line 446
    .line 447
    if-lez v12, :cond_22

    .line 448
    .line 449
    const/4 v12, 0x1

    .line 450
    goto :goto_11

    .line 451
    :cond_22
    const/4 v12, 0x0

    .line 452
    :goto_11
    if-eqz v8, :cond_23

    .line 453
    .line 454
    iget v13, v1, Lw/d;->V:F

    .line 455
    .line 456
    cmpl-float v4, v13, v4

    .line 457
    .line 458
    if-lez v4, :cond_23

    .line 459
    .line 460
    const/4 v4, 0x1

    .line 461
    goto :goto_12

    .line 462
    :cond_23
    const/4 v4, 0x0

    .line 463
    :goto_12
    if-nez v11, :cond_24

    .line 464
    .line 465
    return-void

    .line 466
    :cond_24
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 467
    .line 468
    .line 469
    move-result-object v13

    .line 470
    check-cast v13, Lz/e;

    .line 471
    .line 472
    iget v14, v2, Lx/b;->j:I

    .line 473
    .line 474
    const/4 v15, 0x1

    .line 475
    if-eq v14, v15, :cond_26

    .line 476
    .line 477
    const/4 v15, 0x2

    .line 478
    if-eq v14, v15, :cond_26

    .line 479
    .line 480
    if-eqz v9, :cond_26

    .line 481
    .line 482
    iget v9, v1, Lw/d;->r:I

    .line 483
    .line 484
    if-nez v9, :cond_26

    .line 485
    .line 486
    if-eqz v8, :cond_26

    .line 487
    .line 488
    iget v8, v1, Lw/d;->s:I

    .line 489
    .line 490
    if-eqz v8, :cond_25

    .line 491
    .line 492
    goto :goto_13

    .line 493
    :cond_25
    const/4 v0, 0x0

    .line 494
    const/4 v3, -0x1

    .line 495
    const/4 v8, 0x0

    .line 496
    const/4 v10, 0x0

    .line 497
    const/4 v15, 0x0

    .line 498
    goto/16 :goto_19

    .line 499
    .line 500
    :cond_26
    :goto_13
    invoke-virtual {v11, v7, v5}, Landroid/view/View;->measure(II)V

    .line 501
    .line 502
    .line 503
    iput v7, v1, Lw/d;->F:I

    .line 504
    .line 505
    iput v5, v1, Lw/d;->G:I

    .line 506
    .line 507
    const/4 v8, 0x0

    .line 508
    iput-boolean v8, v1, Lw/d;->g:Z

    .line 509
    .line 510
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    .line 511
    .line 512
    .line 513
    move-result v8

    .line 514
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    .line 515
    .line 516
    .line 517
    move-result v9

    .line 518
    invoke-virtual {v11}, Landroid/view/View;->getBaseline()I

    .line 519
    .line 520
    .line 521
    move-result v14

    .line 522
    iget v15, v1, Lw/d;->u:I

    .line 523
    .line 524
    if-lez v15, :cond_27

    .line 525
    .line 526
    invoke-static {v15, v8}, Ljava/lang/Math;->max(II)I

    .line 527
    .line 528
    .line 529
    move-result v15

    .line 530
    goto :goto_14

    .line 531
    :cond_27
    move v15, v8

    .line 532
    :goto_14
    iget v0, v1, Lw/d;->v:I

    .line 533
    .line 534
    if-lez v0, :cond_28

    .line 535
    .line 536
    invoke-static {v0, v15}, Ljava/lang/Math;->min(II)I

    .line 537
    .line 538
    .line 539
    move-result v15

    .line 540
    :cond_28
    iget v0, v1, Lw/d;->x:I

    .line 541
    .line 542
    if-lez v0, :cond_29

    .line 543
    .line 544
    invoke-static {v0, v9}, Ljava/lang/Math;->max(II)I

    .line 545
    .line 546
    .line 547
    move-result v0

    .line 548
    move/from16 v16, v5

    .line 549
    .line 550
    goto :goto_15

    .line 551
    :cond_29
    move/from16 v16, v5

    .line 552
    .line 553
    move v0, v9

    .line 554
    :goto_15
    iget v5, v1, Lw/d;->y:I

    .line 555
    .line 556
    if-lez v5, :cond_2a

    .line 557
    .line 558
    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    .line 559
    .line 560
    .line 561
    move-result v0

    .line 562
    :cond_2a
    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintLayout;->O:I

    .line 563
    .line 564
    const/4 v5, 0x1

    .line 565
    invoke-static {v3, v5}, Lw/i;->b(II)Z

    .line 566
    .line 567
    .line 568
    move-result v3

    .line 569
    if-nez v3, :cond_2c

    .line 570
    .line 571
    const/high16 v3, 0x3f000000    # 0.5f

    .line 572
    .line 573
    if-eqz v12, :cond_2b

    .line 574
    .line 575
    if-eqz v6, :cond_2b

    .line 576
    .line 577
    iget v4, v1, Lw/d;->V:F

    .line 578
    .line 579
    int-to-float v5, v0

    .line 580
    mul-float v5, v5, v4

    .line 581
    .line 582
    add-float/2addr v5, v3

    .line 583
    float-to-int v3, v5

    .line 584
    move v15, v3

    .line 585
    goto :goto_16

    .line 586
    :cond_2b
    if-eqz v4, :cond_2c

    .line 587
    .line 588
    if-eqz v10, :cond_2c

    .line 589
    .line 590
    iget v0, v1, Lw/d;->V:F

    .line 591
    .line 592
    int-to-float v4, v15

    .line 593
    div-float/2addr v4, v0

    .line 594
    add-float/2addr v4, v3

    .line 595
    float-to-int v0, v4

    .line 596
    :cond_2c
    :goto_16
    if-ne v8, v15, :cond_2e

    .line 597
    .line 598
    if-eq v9, v0, :cond_2d

    .line 599
    .line 600
    goto :goto_17

    .line 601
    :cond_2d
    move v8, v14

    .line 602
    const/4 v3, -0x1

    .line 603
    const/4 v10, 0x0

    .line 604
    goto :goto_19

    .line 605
    :cond_2e
    :goto_17
    const/high16 v3, 0x40000000    # 2.0f

    .line 606
    .line 607
    if-eq v8, v15, :cond_2f

    .line 608
    .line 609
    invoke-static {v15, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 610
    .line 611
    .line 612
    move-result v7

    .line 613
    :cond_2f
    if-eq v9, v0, :cond_30

    .line 614
    .line 615
    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 616
    .line 617
    .line 618
    move-result v5

    .line 619
    goto :goto_18

    .line 620
    :cond_30
    move/from16 v5, v16

    .line 621
    .line 622
    :goto_18
    invoke-virtual {v11, v7, v5}, Landroid/view/View;->measure(II)V

    .line 623
    .line 624
    .line 625
    iput v7, v1, Lw/d;->F:I

    .line 626
    .line 627
    iput v5, v1, Lw/d;->G:I

    .line 628
    .line 629
    const/4 v10, 0x0

    .line 630
    iput-boolean v10, v1, Lw/d;->g:Z

    .line 631
    .line 632
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    .line 633
    .line 634
    .line 635
    move-result v8

    .line 636
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    .line 637
    .line 638
    .line 639
    move-result v0

    .line 640
    invoke-virtual {v11}, Landroid/view/View;->getBaseline()I

    .line 641
    .line 642
    .line 643
    move-result v3

    .line 644
    move v15, v8

    .line 645
    move v8, v3

    .line 646
    const/4 v3, -0x1

    .line 647
    :goto_19
    if-eq v8, v3, :cond_31

    .line 648
    .line 649
    const/4 v3, 0x1

    .line 650
    goto :goto_1a

    .line 651
    :cond_31
    const/4 v3, 0x0

    .line 652
    :goto_1a
    iget v4, v2, Lx/b;->c:I

    .line 653
    .line 654
    if-ne v15, v4, :cond_33

    .line 655
    .line 656
    iget v4, v2, Lx/b;->d:I

    .line 657
    .line 658
    if-eq v0, v4, :cond_32

    .line 659
    .line 660
    goto :goto_1b

    .line 661
    :cond_32
    const/4 v5, 0x0

    .line 662
    goto :goto_1c

    .line 663
    :cond_33
    :goto_1b
    const/4 v5, 0x1

    .line 664
    :goto_1c
    iput-boolean v5, v2, Lx/b;->i:Z

    .line 665
    .line 666
    iget-boolean v4, v13, Lz/e;->c0:Z

    .line 667
    .line 668
    if-eqz v4, :cond_34

    .line 669
    .line 670
    const/4 v10, 0x1

    .line 671
    goto :goto_1d

    .line 672
    :cond_34
    move v10, v3

    .line 673
    :goto_1d
    if-eqz v10, :cond_35

    .line 674
    .line 675
    const/4 v3, -0x1

    .line 676
    if-eq v8, v3, :cond_35

    .line 677
    .line 678
    iget v1, v1, Lw/d;->Z:I

    .line 679
    .line 680
    if-eq v1, v8, :cond_35

    .line 681
    .line 682
    const/4 v1, 0x1

    .line 683
    iput-boolean v1, v2, Lx/b;->i:Z

    .line 684
    .line 685
    :cond_35
    iput v15, v2, Lx/b;->e:I

    .line 686
    .line 687
    iput v0, v2, Lx/b;->f:I

    .line 688
    .line 689
    iput-boolean v10, v2, Lx/b;->h:Z

    .line 690
    .line 691
    iput v8, v2, Lx/b;->g:I

    .line 692
    .line 693
    return-void
.end method
