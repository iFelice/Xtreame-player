.class public abstract LF/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/ThreadLocal;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/ThreadLocal;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, LF/c;->a:Ljava/lang/ThreadLocal;

    .line 7
    .line 8
    return-void
.end method

.method public static a(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;
    .locals 4

    .line 1
    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x2

    .line 10
    if-eq v1, v2, :cond_0

    .line 11
    .line 12
    const/4 v3, 0x1

    .line 13
    if-eq v1, v3, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    if-ne v1, v2, :cond_1

    .line 17
    .line 18
    invoke-static {p0, p1, v0, p2}, LF/c;->b(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :cond_1
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 24
    .line 25
    const-string p1, "No start tag found"

    .line 26
    .line 27
    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    throw p0
.end method

.method public static b(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;
    .locals 34

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    const-string v4, "selector"

    .line 12
    .line 13
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    if-eqz v4, :cond_25

    .line 18
    .line 19
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    const/4 v4, 0x1

    .line 24
    add-int/2addr v3, v4

    .line 25
    const/16 v5, 0x14

    .line 26
    .line 27
    new-array v6, v5, [[I

    .line 28
    .line 29
    new-array v5, v5, [I

    .line 30
    .line 31
    const/4 v7, 0x0

    .line 32
    const/4 v8, 0x0

    .line 33
    :goto_0
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 34
    .line 35
    .line 36
    move-result v9

    .line 37
    if-eq v9, v4, :cond_24

    .line 38
    .line 39
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 40
    .line 41
    .line 42
    move-result v10

    .line 43
    const/4 v11, 0x3

    .line 44
    if-ge v10, v3, :cond_0

    .line 45
    .line 46
    if-eq v9, v11, :cond_24

    .line 47
    .line 48
    :cond_0
    const/4 v12, 0x2

    .line 49
    if-ne v9, v12, :cond_1

    .line 50
    .line 51
    if-gt v10, v3, :cond_1

    .line 52
    .line 53
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v9

    .line 57
    const-string v10, "item"

    .line 58
    .line 59
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v9

    .line 63
    if-nez v9, :cond_2

    .line 64
    .line 65
    :cond_1
    move/from16 v30, v3

    .line 66
    .line 67
    const/16 v16, 0x1

    .line 68
    .line 69
    goto/16 :goto_1c

    .line 70
    .line 71
    :cond_2
    sget-object v9, LC/a;->a:[I

    .line 72
    .line 73
    if-nez v2, :cond_3

    .line 74
    .line 75
    invoke-virtual {v0, v1, v9}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 76
    .line 77
    .line 78
    move-result-object v9

    .line 79
    goto :goto_1

    .line 80
    :cond_3
    invoke-virtual {v2, v1, v9, v7, v7}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 81
    .line 82
    .line 83
    move-result-object v9

    .line 84
    :goto_1
    const/4 v10, -0x1

    .line 85
    invoke-virtual {v9, v7, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 86
    .line 87
    .line 88
    move-result v13

    .line 89
    const v14, -0xff01

    .line 90
    .line 91
    .line 92
    const/16 v15, 0x1f

    .line 93
    .line 94
    if-eq v13, v10, :cond_6

    .line 95
    .line 96
    sget-object v10, LF/c;->a:Ljava/lang/ThreadLocal;

    .line 97
    .line 98
    invoke-virtual {v10}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v16

    .line 102
    check-cast v16, Landroid/util/TypedValue;

    .line 103
    .line 104
    if-nez v16, :cond_4

    .line 105
    .line 106
    new-instance v12, Landroid/util/TypedValue;

    .line 107
    .line 108
    invoke-direct {v12}, Landroid/util/TypedValue;-><init>()V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v10, v12}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 112
    .line 113
    .line 114
    goto :goto_2

    .line 115
    :cond_4
    move-object/from16 v12, v16

    .line 116
    .line 117
    :goto_2
    invoke-virtual {v0, v13, v12, v4}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 118
    .line 119
    .line 120
    iget v10, v12, Landroid/util/TypedValue;->type:I

    .line 121
    .line 122
    const/16 v12, 0x1c

    .line 123
    .line 124
    if-lt v10, v12, :cond_5

    .line 125
    .line 126
    if-gt v10, v15, :cond_5

    .line 127
    .line 128
    goto :goto_3

    .line 129
    :cond_5
    :try_start_0
    invoke-virtual {v0, v13}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    .line 130
    .line 131
    .line 132
    move-result-object v10

    .line 133
    invoke-static {v0, v10, v2}, LF/c;->a(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    .line 134
    .line 135
    .line 136
    move-result-object v10

    .line 137
    invoke-virtual {v10}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    .line 138
    .line 139
    .line 140
    move-result v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    goto :goto_4

    .line 142
    :catch_0
    invoke-virtual {v9, v7, v14}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 143
    .line 144
    .line 145
    move-result v10

    .line 146
    goto :goto_4

    .line 147
    :cond_6
    :goto_3
    invoke-virtual {v9, v7, v14}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 148
    .line 149
    .line 150
    move-result v10

    .line 151
    :goto_4
    invoke-virtual {v9, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 152
    .line 153
    .line 154
    move-result v12

    .line 155
    const/high16 v13, 0x3f800000    # 1.0f

    .line 156
    .line 157
    if-eqz v12, :cond_7

    .line 158
    .line 159
    invoke-virtual {v9, v4, v13}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 160
    .line 161
    .line 162
    move-result v11

    .line 163
    goto :goto_5

    .line 164
    :cond_7
    invoke-virtual {v9, v11}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 165
    .line 166
    .line 167
    move-result v12

    .line 168
    if-eqz v12, :cond_8

    .line 169
    .line 170
    invoke-virtual {v9, v11, v13}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 171
    .line 172
    .line 173
    move-result v11

    .line 174
    goto :goto_5

    .line 175
    :cond_8
    const/high16 v11, 0x3f800000    # 1.0f

    .line 176
    .line 177
    :goto_5
    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 178
    .line 179
    const/4 v14, 0x4

    .line 180
    const/high16 v4, -0x40800000    # -1.0f

    .line 181
    .line 182
    if-lt v12, v15, :cond_9

    .line 183
    .line 184
    const/4 v12, 0x2

    .line 185
    invoke-virtual {v9, v12}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 186
    .line 187
    .line 188
    move-result v15

    .line 189
    if-eqz v15, :cond_9

    .line 190
    .line 191
    invoke-virtual {v9, v12, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 192
    .line 193
    .line 194
    move-result v4

    .line 195
    goto :goto_6

    .line 196
    :cond_9
    invoke-virtual {v9, v14, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 197
    .line 198
    .line 199
    move-result v4

    .line 200
    :goto_6
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    .line 201
    .line 202
    .line 203
    invoke-interface/range {p2 .. p2}, Landroid/util/AttributeSet;->getAttributeCount()I

    .line 204
    .line 205
    .line 206
    move-result v9

    .line 207
    new-array v12, v9, [I

    .line 208
    .line 209
    const/4 v14, 0x0

    .line 210
    const/4 v15, 0x0

    .line 211
    :goto_7
    if-ge v15, v9, :cond_c

    .line 212
    .line 213
    invoke-interface {v1, v15}, Landroid/util/AttributeSet;->getAttributeNameResource(I)I

    .line 214
    .line 215
    .line 216
    move-result v13

    .line 217
    const v7, 0x10101a5

    .line 218
    .line 219
    .line 220
    if-eq v13, v7, :cond_b

    .line 221
    .line 222
    const v7, 0x101031f

    .line 223
    .line 224
    .line 225
    if-eq v13, v7, :cond_b

    .line 226
    .line 227
    const v7, 0x7f040035

    .line 228
    .line 229
    .line 230
    if-eq v13, v7, :cond_b

    .line 231
    .line 232
    const v7, 0x7f04024e

    .line 233
    .line 234
    .line 235
    if-eq v13, v7, :cond_b

    .line 236
    .line 237
    add-int/lit8 v7, v14, 0x1

    .line 238
    .line 239
    const/4 v0, 0x0

    .line 240
    invoke-interface {v1, v15, v0}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    .line 241
    .line 242
    .line 243
    move-result v19

    .line 244
    if-eqz v19, :cond_a

    .line 245
    .line 246
    goto :goto_8

    .line 247
    :cond_a
    neg-int v13, v13

    .line 248
    :goto_8
    aput v13, v12, v14

    .line 249
    .line 250
    move v14, v7

    .line 251
    :cond_b
    add-int/lit8 v15, v15, 0x1

    .line 252
    .line 253
    move-object/from16 v0, p0

    .line 254
    .line 255
    const/4 v7, 0x0

    .line 256
    const/high16 v13, 0x3f800000    # 1.0f

    .line 257
    .line 258
    goto :goto_7

    .line 259
    :cond_c
    invoke-static {v12, v14}, Landroid/util/StateSet;->trimStateSet([II)[I

    .line 260
    .line 261
    .line 262
    move-result-object v0

    .line 263
    const/high16 v7, 0x42c80000    # 100.0f

    .line 264
    .line 265
    const/4 v9, 0x0

    .line 266
    cmpl-float v12, v4, v9

    .line 267
    .line 268
    if-ltz v12, :cond_d

    .line 269
    .line 270
    cmpg-float v12, v4, v7

    .line 271
    .line 272
    if-gtz v12, :cond_d

    .line 273
    .line 274
    const/4 v12, 0x1

    .line 275
    :goto_9
    const/high16 v13, 0x3f800000    # 1.0f

    .line 276
    .line 277
    goto :goto_a

    .line 278
    :cond_d
    const/4 v12, 0x0

    .line 279
    goto :goto_9

    .line 280
    :goto_a
    cmpl-float v14, v11, v13

    .line 281
    .line 282
    if-nez v14, :cond_e

    .line 283
    .line 284
    if-nez v12, :cond_e

    .line 285
    .line 286
    move/from16 v30, v3

    .line 287
    .line 288
    const/16 v16, 0x1

    .line 289
    .line 290
    goto/16 :goto_19

    .line 291
    .line 292
    :cond_e
    invoke-static {v10}, Landroid/graphics/Color;->alpha(I)I

    .line 293
    .line 294
    .line 295
    move-result v13

    .line 296
    int-to-float v13, v13

    .line 297
    mul-float v13, v13, v11

    .line 298
    .line 299
    const/high16 v11, 0x3f000000    # 0.5f

    .line 300
    .line 301
    add-float/2addr v13, v11

    .line 302
    float-to-int v11, v13

    .line 303
    if-gez v11, :cond_f

    .line 304
    .line 305
    const/4 v13, 0x0

    .line 306
    goto :goto_b

    .line 307
    :cond_f
    const/16 v13, 0xff

    .line 308
    .line 309
    if-le v11, v13, :cond_10

    .line 310
    .line 311
    goto :goto_b

    .line 312
    :cond_10
    move v13, v11

    .line 313
    :goto_b
    if-eqz v12, :cond_1f

    .line 314
    .line 315
    invoke-static {v10}, LF/a;->a(I)LF/a;

    .line 316
    .line 317
    .line 318
    move-result-object v10

    .line 319
    sget-object v11, LF/o;->k:LF/o;

    .line 320
    .line 321
    iget v12, v10, LF/a;->b:F

    .line 322
    .line 323
    float-to-double v14, v12

    .line 324
    const-wide/high16 v19, 0x3ff0000000000000L    # 1.0

    .line 325
    .line 326
    cmpg-double v21, v14, v19

    .line 327
    .line 328
    if-ltz v21, :cond_11

    .line 329
    .line 330
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    .line 331
    .line 332
    .line 333
    move-result v14

    .line 334
    int-to-double v14, v14

    .line 335
    const-wide/16 v19, 0x0

    .line 336
    .line 337
    cmpg-double v21, v14, v19

    .line 338
    .line 339
    if-lez v21, :cond_11

    .line 340
    .line 341
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    .line 342
    .line 343
    .line 344
    move-result v14

    .line 345
    int-to-double v14, v14

    .line 346
    const-wide/high16 v19, 0x4059000000000000L    # 100.0

    .line 347
    .line 348
    cmpl-double v21, v14, v19

    .line 349
    .line 350
    if-ltz v21, :cond_12

    .line 351
    .line 352
    :cond_11
    move/from16 v30, v3

    .line 353
    .line 354
    const/16 v16, 0x1

    .line 355
    .line 356
    goto/16 :goto_17

    .line 357
    .line 358
    :cond_12
    iget v10, v10, LF/a;->a:F

    .line 359
    .line 360
    cmpg-float v14, v10, v9

    .line 361
    .line 362
    if-gez v14, :cond_13

    .line 363
    .line 364
    const/4 v10, 0x0

    .line 365
    goto :goto_c

    .line 366
    :cond_13
    const/high16 v14, 0x43b40000    # 360.0f

    .line 367
    .line 368
    invoke-static {v14, v10}, Ljava/lang/Math;->min(FF)F

    .line 369
    .line 370
    .line 371
    move-result v10

    .line 372
    :goto_c
    move v15, v12

    .line 373
    const/4 v14, 0x0

    .line 374
    const/16 v19, 0x1

    .line 375
    .line 376
    const/16 v20, 0x0

    .line 377
    .line 378
    :goto_d
    sub-float v22, v20, v12

    .line 379
    .line 380
    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->abs(F)F

    .line 381
    .line 382
    .line 383
    move-result v22

    .line 384
    const v23, 0x3ecccccd    # 0.4f

    .line 385
    .line 386
    .line 387
    cmpl-float v22, v22, v23

    .line 388
    .line 389
    if-ltz v22, :cond_1d

    .line 390
    .line 391
    const/high16 v22, 0x447a0000    # 1000.0f

    .line 392
    .line 393
    const/high16 v23, 0x447a0000    # 1000.0f

    .line 394
    .line 395
    const/16 v24, 0x0

    .line 396
    .line 397
    const/high16 v25, 0x42c80000    # 100.0f

    .line 398
    .line 399
    const/16 v26, 0x0

    .line 400
    .line 401
    :goto_e
    sub-float v27, v24, v25

    .line 402
    .line 403
    invoke-static/range {v27 .. v27}, Ljava/lang/Math;->abs(F)F

    .line 404
    .line 405
    .line 406
    move-result v27

    .line 407
    const v28, 0x3c23d70a    # 0.01f

    .line 408
    .line 409
    .line 410
    const/high16 v29, 0x40000000    # 2.0f

    .line 411
    .line 412
    cmpl-float v27, v27, v28

    .line 413
    .line 414
    if-lez v27, :cond_19

    .line 415
    .line 416
    sub-float v27, v25, v24

    .line 417
    .line 418
    div-float v27, v27, v29

    .line 419
    .line 420
    add-float v9, v27, v24

    .line 421
    .line 422
    invoke-static {v9, v15, v10}, LF/a;->b(FFF)LF/a;

    .line 423
    .line 424
    .line 425
    move-result-object v7

    .line 426
    sget-object v1, LF/o;->k:LF/o;

    .line 427
    .line 428
    invoke-virtual {v7, v1}, LF/a;->e(LF/o;)I

    .line 429
    .line 430
    .line 431
    move-result v1

    .line 432
    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    .line 433
    .line 434
    .line 435
    move-result v7

    .line 436
    invoke-static {v7}, LF/b;->b(I)F

    .line 437
    .line 438
    .line 439
    move-result v7

    .line 440
    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    .line 441
    .line 442
    .line 443
    move-result v30

    .line 444
    invoke-static/range {v30 .. v30}, LF/b;->b(I)F

    .line 445
    .line 446
    .line 447
    move-result v30

    .line 448
    invoke-static {v1}, Landroid/graphics/Color;->blue(I)I

    .line 449
    .line 450
    .line 451
    move-result v31

    .line 452
    invoke-static/range {v31 .. v31}, LF/b;->b(I)F

    .line 453
    .line 454
    .line 455
    move-result v31

    .line 456
    sget-object v32, LF/b;->d:[[F

    .line 457
    .line 458
    const/16 v16, 0x1

    .line 459
    .line 460
    aget-object v32, v32, v16

    .line 461
    .line 462
    const/16 v18, 0x0

    .line 463
    .line 464
    aget v33, v32, v18

    .line 465
    .line 466
    mul-float v7, v7, v33

    .line 467
    .line 468
    aget v33, v32, v16

    .line 469
    .line 470
    mul-float v30, v30, v33

    .line 471
    .line 472
    add-float v30, v30, v7

    .line 473
    .line 474
    const/4 v7, 0x2

    .line 475
    aget v17, v32, v7

    .line 476
    .line 477
    mul-float v31, v31, v17

    .line 478
    .line 479
    add-float v31, v31, v30

    .line 480
    .line 481
    const/high16 v17, 0x42c80000    # 100.0f

    .line 482
    .line 483
    div-float v7, v31, v17

    .line 484
    .line 485
    const v30, 0x3c111aa7

    .line 486
    .line 487
    .line 488
    cmpg-float v30, v7, v30

    .line 489
    .line 490
    if-gtz v30, :cond_14

    .line 491
    .line 492
    const v30, 0x4461d2f7

    .line 493
    .line 494
    .line 495
    mul-float v7, v7, v30

    .line 496
    .line 497
    move/from16 v30, v3

    .line 498
    .line 499
    goto :goto_f

    .line 500
    :cond_14
    move/from16 v30, v3

    .line 501
    .line 502
    float-to-double v2, v7

    .line 503
    invoke-static {v2, v3}, Ljava/lang/Math;->cbrt(D)D

    .line 504
    .line 505
    .line 506
    move-result-wide v2

    .line 507
    double-to-float v2, v2

    .line 508
    const/high16 v3, 0x42e80000    # 116.0f

    .line 509
    .line 510
    mul-float v2, v2, v3

    .line 511
    .line 512
    const/high16 v3, 0x41800000    # 16.0f

    .line 513
    .line 514
    sub-float v7, v2, v3

    .line 515
    .line 516
    :goto_f
    sub-float v2, v4, v7

    .line 517
    .line 518
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    .line 519
    .line 520
    .line 521
    move-result v2

    .line 522
    const v3, 0x3e4ccccd    # 0.2f

    .line 523
    .line 524
    .line 525
    cmpg-float v3, v2, v3

    .line 526
    .line 527
    if-gez v3, :cond_16

    .line 528
    .line 529
    invoke-static {v1}, LF/a;->a(I)LF/a;

    .line 530
    .line 531
    .line 532
    move-result-object v1

    .line 533
    iget v3, v1, LF/a;->c:F

    .line 534
    .line 535
    move/from16 v31, v2

    .line 536
    .line 537
    iget v2, v1, LF/a;->b:F

    .line 538
    .line 539
    invoke-static {v3, v2, v10}, LF/a;->b(FFF)LF/a;

    .line 540
    .line 541
    .line 542
    move-result-object v2

    .line 543
    iget v3, v1, LF/a;->g:F

    .line 544
    .line 545
    move/from16 v32, v9

    .line 546
    .line 547
    iget v9, v2, LF/a;->g:F

    .line 548
    .line 549
    sub-float/2addr v3, v9

    .line 550
    iget v9, v1, LF/a;->h:F

    .line 551
    .line 552
    move/from16 v33, v10

    .line 553
    .line 554
    iget v10, v2, LF/a;->h:F

    .line 555
    .line 556
    sub-float/2addr v9, v10

    .line 557
    iget v10, v1, LF/a;->i:F

    .line 558
    .line 559
    iget v2, v2, LF/a;->i:F

    .line 560
    .line 561
    sub-float/2addr v10, v2

    .line 562
    mul-float v3, v3, v3

    .line 563
    .line 564
    mul-float v9, v9, v9

    .line 565
    .line 566
    add-float/2addr v9, v3

    .line 567
    mul-float v10, v10, v10

    .line 568
    .line 569
    add-float/2addr v10, v9

    .line 570
    float-to-double v2, v10

    .line 571
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    .line 572
    .line 573
    .line 574
    move-result-wide v2

    .line 575
    const-wide v9, 0x3fe428f5c28f5c29L    # 0.63

    .line 576
    .line 577
    .line 578
    .line 579
    .line 580
    invoke-static {v2, v3, v9, v10}, Ljava/lang/Math;->pow(DD)D

    .line 581
    .line 582
    .line 583
    move-result-wide v2

    .line 584
    const-wide v9, 0x3ff68f5c28f5c28fL    # 1.41

    .line 585
    .line 586
    .line 587
    .line 588
    .line 589
    mul-double v2, v2, v9

    .line 590
    .line 591
    double-to-float v2, v2

    .line 592
    const/high16 v3, 0x3f800000    # 1.0f

    .line 593
    .line 594
    cmpg-float v9, v2, v3

    .line 595
    .line 596
    if-gtz v9, :cond_15

    .line 597
    .line 598
    move-object/from16 v26, v1

    .line 599
    .line 600
    move/from16 v23, v2

    .line 601
    .line 602
    move/from16 v22, v31

    .line 603
    .line 604
    :cond_15
    :goto_10
    const/4 v1, 0x0

    .line 605
    goto :goto_11

    .line 606
    :cond_16
    move/from16 v32, v9

    .line 607
    .line 608
    move/from16 v33, v10

    .line 609
    .line 610
    const/high16 v3, 0x3f800000    # 1.0f

    .line 611
    .line 612
    goto :goto_10

    .line 613
    :goto_11
    cmpl-float v2, v22, v1

    .line 614
    .line 615
    if-nez v2, :cond_17

    .line 616
    .line 617
    cmpl-float v2, v23, v1

    .line 618
    .line 619
    if-nez v2, :cond_17

    .line 620
    .line 621
    :goto_12
    move-object/from16 v2, v26

    .line 622
    .line 623
    goto :goto_14

    .line 624
    :cond_17
    cmpg-float v2, v7, v4

    .line 625
    .line 626
    if-gez v2, :cond_18

    .line 627
    .line 628
    move/from16 v24, v32

    .line 629
    .line 630
    goto :goto_13

    .line 631
    :cond_18
    move/from16 v25, v32

    .line 632
    .line 633
    :goto_13
    move-object/from16 v1, p2

    .line 634
    .line 635
    move-object/from16 v2, p3

    .line 636
    .line 637
    move/from16 v3, v30

    .line 638
    .line 639
    move/from16 v10, v33

    .line 640
    .line 641
    const/high16 v7, 0x42c80000    # 100.0f

    .line 642
    .line 643
    const/4 v9, 0x0

    .line 644
    goto/16 :goto_e

    .line 645
    .line 646
    :cond_19
    move/from16 v30, v3

    .line 647
    .line 648
    move/from16 v33, v10

    .line 649
    .line 650
    const/4 v1, 0x0

    .line 651
    const/high16 v3, 0x3f800000    # 1.0f

    .line 652
    .line 653
    const/16 v16, 0x1

    .line 654
    .line 655
    const/high16 v17, 0x42c80000    # 100.0f

    .line 656
    .line 657
    goto :goto_12

    .line 658
    :goto_14
    if-eqz v19, :cond_1b

    .line 659
    .line 660
    if-eqz v2, :cond_1a

    .line 661
    .line 662
    invoke-virtual {v2, v11}, LF/a;->e(LF/o;)I

    .line 663
    .line 664
    .line 665
    move-result v1

    .line 666
    :goto_15
    move v10, v1

    .line 667
    goto :goto_18

    .line 668
    :cond_1a
    sub-float v2, v12, v20

    .line 669
    .line 670
    div-float v2, v2, v29

    .line 671
    .line 672
    add-float v15, v2, v20

    .line 673
    .line 674
    move-object/from16 v1, p2

    .line 675
    .line 676
    move-object/from16 v2, p3

    .line 677
    .line 678
    move/from16 v3, v30

    .line 679
    .line 680
    move/from16 v10, v33

    .line 681
    .line 682
    const/high16 v7, 0x42c80000    # 100.0f

    .line 683
    .line 684
    const/4 v9, 0x0

    .line 685
    const/16 v19, 0x0

    .line 686
    .line 687
    goto/16 :goto_d

    .line 688
    .line 689
    :cond_1b
    if-nez v2, :cond_1c

    .line 690
    .line 691
    move v12, v15

    .line 692
    goto :goto_16

    .line 693
    :cond_1c
    move-object v14, v2

    .line 694
    move/from16 v20, v15

    .line 695
    .line 696
    :goto_16
    sub-float v2, v12, v20

    .line 697
    .line 698
    div-float v2, v2, v29

    .line 699
    .line 700
    add-float v15, v2, v20

    .line 701
    .line 702
    move-object/from16 v1, p2

    .line 703
    .line 704
    move-object/from16 v2, p3

    .line 705
    .line 706
    move/from16 v3, v30

    .line 707
    .line 708
    move/from16 v10, v33

    .line 709
    .line 710
    const/high16 v7, 0x42c80000    # 100.0f

    .line 711
    .line 712
    const/4 v9, 0x0

    .line 713
    goto/16 :goto_d

    .line 714
    .line 715
    :cond_1d
    move/from16 v30, v3

    .line 716
    .line 717
    const/16 v16, 0x1

    .line 718
    .line 719
    if-nez v14, :cond_1e

    .line 720
    .line 721
    invoke-static {v4}, LF/b;->a(F)I

    .line 722
    .line 723
    .line 724
    move-result v1

    .line 725
    goto :goto_15

    .line 726
    :cond_1e
    invoke-virtual {v14, v11}, LF/a;->e(LF/o;)I

    .line 727
    .line 728
    .line 729
    move-result v1

    .line 730
    goto :goto_15

    .line 731
    :goto_17
    invoke-static {v4}, LF/b;->a(F)I

    .line 732
    .line 733
    .line 734
    move-result v1

    .line 735
    goto :goto_15

    .line 736
    :cond_1f
    move/from16 v30, v3

    .line 737
    .line 738
    const/16 v16, 0x1

    .line 739
    .line 740
    :goto_18
    const v1, 0xffffff

    .line 741
    .line 742
    .line 743
    and-int/2addr v1, v10

    .line 744
    shl-int/lit8 v2, v13, 0x18

    .line 745
    .line 746
    or-int v10, v1, v2

    .line 747
    .line 748
    :goto_19
    add-int/lit8 v1, v8, 0x1

    .line 749
    .line 750
    array-length v2, v5

    .line 751
    const/16 v3, 0x8

    .line 752
    .line 753
    if-le v1, v2, :cond_21

    .line 754
    .line 755
    const/4 v2, 0x4

    .line 756
    if-gt v8, v2, :cond_20

    .line 757
    .line 758
    const/16 v2, 0x8

    .line 759
    .line 760
    goto :goto_1a

    .line 761
    :cond_20
    mul-int/lit8 v2, v8, 0x2

    .line 762
    .line 763
    :goto_1a
    new-array v2, v2, [I

    .line 764
    .line 765
    const/4 v4, 0x0

    .line 766
    invoke-static {v5, v4, v2, v4, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 767
    .line 768
    .line 769
    move-object v5, v2

    .line 770
    :cond_21
    aput v10, v5, v8

    .line 771
    .line 772
    array-length v2, v6

    .line 773
    if-le v1, v2, :cond_23

    .line 774
    .line 775
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 776
    .line 777
    .line 778
    move-result-object v2

    .line 779
    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    .line 780
    .line 781
    .line 782
    move-result-object v2

    .line 783
    const/4 v4, 0x4

    .line 784
    if-gt v8, v4, :cond_22

    .line 785
    .line 786
    goto :goto_1b

    .line 787
    :cond_22
    mul-int/lit8 v3, v8, 0x2

    .line 788
    .line 789
    :goto_1b
    invoke-static {v2, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    .line 790
    .line 791
    .line 792
    move-result-object v2

    .line 793
    check-cast v2, [Ljava/lang/Object;

    .line 794
    .line 795
    const/4 v3, 0x0

    .line 796
    invoke-static {v6, v3, v2, v3, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 797
    .line 798
    .line 799
    move-object v6, v2

    .line 800
    :cond_23
    aput-object v0, v6, v8

    .line 801
    .line 802
    check-cast v6, [[I

    .line 803
    .line 804
    move-object/from16 v0, p0

    .line 805
    .line 806
    move-object/from16 v2, p3

    .line 807
    .line 808
    move v8, v1

    .line 809
    move/from16 v3, v30

    .line 810
    .line 811
    const/4 v4, 0x1

    .line 812
    const/4 v7, 0x0

    .line 813
    move-object/from16 v1, p2

    .line 814
    .line 815
    goto/16 :goto_0

    .line 816
    .line 817
    :goto_1c
    move-object/from16 v0, p0

    .line 818
    .line 819
    move-object/from16 v1, p2

    .line 820
    .line 821
    move-object/from16 v2, p3

    .line 822
    .line 823
    move/from16 v3, v30

    .line 824
    .line 825
    const/4 v4, 0x1

    .line 826
    const/4 v7, 0x0

    .line 827
    goto/16 :goto_0

    .line 828
    .line 829
    :cond_24
    new-array v0, v8, [I

    .line 830
    .line 831
    new-array v1, v8, [[I

    .line 832
    .line 833
    const/4 v2, 0x0

    .line 834
    invoke-static {v5, v2, v0, v2, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 835
    .line 836
    .line 837
    invoke-static {v6, v2, v1, v2, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 838
    .line 839
    .line 840
    new-instance v2, Landroid/content/res/ColorStateList;

    .line 841
    .line 842
    invoke-direct {v2, v1, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 843
    .line 844
    .line 845
    return-object v2

    .line 846
    :cond_25
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 847
    .line 848
    new-instance v1, Ljava/lang/StringBuilder;

    .line 849
    .line 850
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 851
    .line 852
    .line 853
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 854
    .line 855
    .line 856
    move-result-object v2

    .line 857
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 858
    .line 859
    .line 860
    const-string v2, ": invalid color state list tag "

    .line 861
    .line 862
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 863
    .line 864
    .line 865
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 866
    .line 867
    .line 868
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 869
    .line 870
    .line 871
    move-result-object v1

    .line 872
    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 873
    .line 874
    .line 875
    throw v0
.end method
