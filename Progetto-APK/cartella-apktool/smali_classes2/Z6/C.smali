.class public final LZ6/C;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final L:[LZ6/s;

.field public static final M:Ljava/util/concurrent/ConcurrentHashMap;


# instance fields
.field public final G:Ljava/lang/String;

.field public final H:Ljava/util/TimeZone;

.field public final I:Ljava/util/Locale;

.field public final transient J:[LZ6/s;

.field public final transient K:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [LZ6/s;

    .line 3
    .line 4
    sput-object v0, LZ6/C;->L:[LZ6/s;

    .line 5
    .line 6
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 7
    .line 8
    const/4 v1, 0x7

    .line 9
    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    .line 10
    .line 11
    .line 12
    sput-object v0, LZ6/C;->M:Ljava/util/concurrent/ConcurrentHashMap;

    .line 13
    .line 14
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    iput-object v1, v0, LZ6/C;->G:Ljava/lang/String;

    .line 9
    .line 10
    move-object/from16 v2, p2

    .line 11
    .line 12
    iput-object v2, v0, LZ6/C;->H:Ljava/util/TimeZone;

    .line 13
    .line 14
    invoke-static/range {p3 .. p3}, LY6/a;->a(Ljava/util/Locale;)Ljava/util/Locale;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    iput-object v2, v0, LZ6/C;->I:Ljava/util/Locale;

    .line 19
    .line 20
    new-instance v3, Ljava/text/DateFormatSymbols;

    .line 21
    .line 22
    invoke-direct {v3, v2}, Ljava/text/DateFormatSymbols;-><init>(Ljava/util/Locale;)V

    .line 23
    .line 24
    .line 25
    new-instance v4, Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v3}, Ljava/text/DateFormatSymbols;->getEras()[Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v5

    .line 34
    invoke-virtual {v3}, Ljava/text/DateFormatSymbols;->getMonths()[Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v6

    .line 38
    invoke-virtual {v3}, Ljava/text/DateFormatSymbols;->getShortMonths()[Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v7

    .line 42
    invoke-virtual {v3}, Ljava/text/DateFormatSymbols;->getWeekdays()[Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v8

    .line 46
    invoke-virtual {v3}, Ljava/text/DateFormatSymbols;->getShortWeekdays()[Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v9

    .line 50
    invoke-virtual {v3}, Ljava/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    .line 55
    .line 56
    .line 57
    move-result v10

    .line 58
    const/4 v11, 0x1

    .line 59
    new-array v12, v11, [I

    .line 60
    .line 61
    const/4 v13, 0x0

    .line 62
    const/4 v14, 0x0

    .line 63
    :goto_0
    if-ge v14, v10, :cond_a

    .line 64
    .line 65
    aput v14, v12, v13

    .line 66
    .line 67
    new-instance v14, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    .line 71
    .line 72
    aget v15, v12, v13

    .line 73
    .line 74
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    .line 75
    .line 76
    .line 77
    move-result v13

    .line 78
    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    .line 79
    .line 80
    .line 81
    move-result v11

    .line 82
    move-object/from16 v16, v8

    .line 83
    .line 84
    const/16 v8, 0x5a

    .line 85
    .line 86
    move-object/from16 v17, v9

    .line 87
    .line 88
    const/16 v9, 0x41

    .line 89
    .line 90
    if-lt v11, v9, :cond_0

    .line 91
    .line 92
    if-le v11, v8, :cond_1

    .line 93
    .line 94
    :cond_0
    const/16 v8, 0x61

    .line 95
    .line 96
    if-lt v11, v8, :cond_3

    .line 97
    .line 98
    const/16 v8, 0x7a

    .line 99
    .line 100
    if-gt v11, v8, :cond_3

    .line 101
    .line 102
    :cond_1
    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    :goto_1
    add-int/lit8 v8, v15, 0x1

    .line 106
    .line 107
    if-ge v8, v13, :cond_2

    .line 108
    .line 109
    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    .line 110
    .line 111
    .line 112
    move-result v9

    .line 113
    if-ne v9, v11, :cond_2

    .line 114
    .line 115
    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    move v15, v8

    .line 119
    goto :goto_1

    .line 120
    :cond_2
    move/from16 v18, v10

    .line 121
    .line 122
    :goto_2
    const/4 v1, 0x0

    .line 123
    goto :goto_6

    .line 124
    :cond_3
    const/16 v8, 0x27

    .line 125
    .line 126
    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    const/4 v11, 0x0

    .line 130
    :goto_3
    if-ge v15, v13, :cond_2

    .line 131
    .line 132
    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    .line 133
    .line 134
    .line 135
    move-result v9

    .line 136
    if-ne v9, v8, :cond_6

    .line 137
    .line 138
    add-int/lit8 v8, v15, 0x1

    .line 139
    .line 140
    move/from16 v18, v10

    .line 141
    .line 142
    if-ge v8, v13, :cond_4

    .line 143
    .line 144
    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    .line 145
    .line 146
    .line 147
    move-result v10

    .line 148
    const/16 v1, 0x27

    .line 149
    .line 150
    if-ne v10, v1, :cond_5

    .line 151
    .line 152
    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    move v15, v8

    .line 156
    :goto_4
    const/4 v1, 0x1

    .line 157
    const/16 v8, 0x41

    .line 158
    .line 159
    const/16 v10, 0x5a

    .line 160
    .line 161
    goto :goto_5

    .line 162
    :cond_4
    const/16 v1, 0x27

    .line 163
    .line 164
    :cond_5
    xor-int/lit8 v8, v11, 0x1

    .line 165
    .line 166
    move v11, v8

    .line 167
    goto :goto_4

    .line 168
    :cond_6
    move/from16 v18, v10

    .line 169
    .line 170
    const/16 v1, 0x27

    .line 171
    .line 172
    const/16 v8, 0x41

    .line 173
    .line 174
    const/16 v10, 0x5a

    .line 175
    .line 176
    if-nez v11, :cond_9

    .line 177
    .line 178
    if-lt v9, v8, :cond_7

    .line 179
    .line 180
    if-le v9, v10, :cond_8

    .line 181
    .line 182
    :cond_7
    const/16 v1, 0x61

    .line 183
    .line 184
    if-lt v9, v1, :cond_9

    .line 185
    .line 186
    const/16 v1, 0x7a

    .line 187
    .line 188
    if-gt v9, v1, :cond_9

    .line 189
    .line 190
    :cond_8
    add-int/lit8 v15, v15, -0x1

    .line 191
    .line 192
    goto :goto_2

    .line 193
    :cond_9
    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    const/4 v1, 0x1

    .line 197
    :goto_5
    add-int/2addr v15, v1

    .line 198
    move-object/from16 v1, p1

    .line 199
    .line 200
    move/from16 v10, v18

    .line 201
    .line 202
    const/16 v8, 0x27

    .line 203
    .line 204
    const/16 v9, 0x41

    .line 205
    .line 206
    goto :goto_3

    .line 207
    :goto_6
    aput v15, v12, v1

    .line 208
    .line 209
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v8

    .line 213
    aget v9, v12, v1

    .line 214
    .line 215
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    .line 216
    .line 217
    .line 218
    move-result v10

    .line 219
    if-nez v10, :cond_b

    .line 220
    .line 221
    :cond_a
    const/4 v8, 0x0

    .line 222
    goto/16 :goto_f

    .line 223
    .line 224
    :cond_b
    invoke-virtual {v8, v1}, Ljava/lang/String;->charAt(I)C

    .line 225
    .line 226
    .line 227
    move-result v11

    .line 228
    const/16 v1, 0x79

    .line 229
    .line 230
    const/4 v13, 0x3

    .line 231
    const/4 v14, 0x4

    .line 232
    const/4 v15, 0x2

    .line 233
    if-eq v11, v1, :cond_e

    .line 234
    .line 235
    const/16 v1, 0x7a

    .line 236
    .line 237
    if-eq v11, v1, :cond_17

    .line 238
    .line 239
    const/4 v1, 0x7

    .line 240
    sparse-switch v11, :sswitch_data_0

    .line 241
    .line 242
    .line 243
    packed-switch v11, :pswitch_data_0

    .line 244
    .line 245
    .line 246
    sget-object v1, LZ6/p;->d:LZ6/p;

    .line 247
    .line 248
    packed-switch v11, :pswitch_data_1

    .line 249
    .line 250
    .line 251
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 252
    .line 253
    const-string v2, "Illegal pattern component: "

    .line 254
    .line 255
    invoke-virtual {v2, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object v2

    .line 259
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 260
    .line 261
    .line 262
    throw v1

    .line 263
    :pswitch_0
    const/4 v8, 0x1

    .line 264
    if-ne v10, v8, :cond_c

    .line 265
    .line 266
    sget-object v1, LZ6/x;->c:LZ6/x;

    .line 267
    .line 268
    :goto_7
    move-object v10, v1

    .line 269
    :goto_8
    const/4 v1, 0x1

    .line 270
    :goto_9
    const/4 v8, 0x0

    .line 271
    goto/16 :goto_e

    .line 272
    .line 273
    :cond_c
    if-ne v10, v15, :cond_d

    .line 274
    .line 275
    goto :goto_7

    .line 276
    :cond_d
    sget-object v1, LZ6/x;->b:LZ6/x;

    .line 277
    .line 278
    goto :goto_7

    .line 279
    :cond_e
    :pswitch_1
    const/4 v1, 0x1

    .line 280
    const/4 v8, 0x0

    .line 281
    goto/16 :goto_c

    .line 282
    .line 283
    :pswitch_2
    const/4 v8, 0x1

    .line 284
    if-eq v10, v8, :cond_11

    .line 285
    .line 286
    if-eq v10, v15, :cond_10

    .line 287
    .line 288
    if-ne v10, v13, :cond_f

    .line 289
    .line 290
    goto :goto_7

    .line 291
    :cond_f
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 292
    .line 293
    const-string v2, "invalid number of X"

    .line 294
    .line 295
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 296
    .line 297
    .line 298
    throw v1

    .line 299
    :cond_10
    sget-object v1, LZ6/p;->c:LZ6/p;

    .line 300
    .line 301
    goto :goto_7

    .line 302
    :cond_11
    sget-object v1, LZ6/p;->b:LZ6/p;

    .line 303
    .line 304
    goto :goto_7

    .line 305
    :pswitch_3
    invoke-static {v14, v10}, LZ6/C;->e(II)LZ6/q;

    .line 306
    .line 307
    .line 308
    move-result-object v1

    .line 309
    goto :goto_7

    .line 310
    :pswitch_4
    const/16 v1, 0xb

    .line 311
    .line 312
    invoke-static {v1, v10}, LZ6/C;->e(II)LZ6/q;

    .line 313
    .line 314
    .line 315
    move-result-object v1

    .line 316
    goto :goto_7

    .line 317
    :pswitch_5
    new-instance v1, LZ6/u;

    .line 318
    .line 319
    const/4 v8, 0x0

    .line 320
    invoke-direct {v1, v8, v5}, LZ6/u;-><init>(I[Ljava/lang/String;)V

    .line 321
    .line 322
    .line 323
    move-object v10, v1

    .line 324
    const/4 v1, 0x1

    .line 325
    goto/16 :goto_e

    .line 326
    .line 327
    :pswitch_6
    const/16 v1, 0x8

    .line 328
    .line 329
    invoke-static {v1, v10}, LZ6/C;->e(II)LZ6/q;

    .line 330
    .line 331
    .line 332
    move-result-object v1

    .line 333
    goto :goto_7

    .line 334
    :pswitch_7
    new-instance v8, LZ6/u;

    .line 335
    .line 336
    if-ge v10, v14, :cond_12

    .line 337
    .line 338
    move-object/from16 v10, v17

    .line 339
    .line 340
    goto :goto_a

    .line 341
    :cond_12
    move-object/from16 v10, v16

    .line 342
    .line 343
    :goto_a
    invoke-direct {v8, v1, v10}, LZ6/u;-><init>(I[Ljava/lang/String;)V

    .line 344
    .line 345
    .line 346
    :goto_b
    move-object v10, v8

    .line 347
    goto :goto_8

    .line 348
    :pswitch_8
    const/4 v1, 0x6

    .line 349
    invoke-static {v1, v10}, LZ6/C;->e(II)LZ6/q;

    .line 350
    .line 351
    .line 352
    move-result-object v1

    .line 353
    goto :goto_7

    .line 354
    :sswitch_0
    invoke-static {v13, v10}, LZ6/C;->e(II)LZ6/q;

    .line 355
    .line 356
    .line 357
    move-result-object v1

    .line 358
    goto :goto_7

    .line 359
    :sswitch_1
    new-instance v8, LZ6/o;

    .line 360
    .line 361
    invoke-static {v1, v10}, LZ6/C;->e(II)LZ6/q;

    .line 362
    .line 363
    .line 364
    move-result-object v1

    .line 365
    const/4 v10, 0x0

    .line 366
    invoke-direct {v8, v1, v10}, LZ6/o;-><init>(LZ6/q;I)V

    .line 367
    .line 368
    .line 369
    goto :goto_b

    .line 370
    :sswitch_2
    const/16 v1, 0xd

    .line 371
    .line 372
    invoke-static {v1, v10}, LZ6/C;->e(II)LZ6/q;

    .line 373
    .line 374
    .line 375
    move-result-object v1

    .line 376
    goto :goto_7

    .line 377
    :sswitch_3
    const/16 v1, 0xc

    .line 378
    .line 379
    invoke-static {v1, v10}, LZ6/C;->e(II)LZ6/q;

    .line 380
    .line 381
    .line 382
    move-result-object v1

    .line 383
    goto :goto_7

    .line 384
    :sswitch_4
    new-instance v1, LZ6/o;

    .line 385
    .line 386
    const/16 v8, 0xb

    .line 387
    .line 388
    invoke-static {v8, v10}, LZ6/C;->e(II)LZ6/q;

    .line 389
    .line 390
    .line 391
    move-result-object v8

    .line 392
    invoke-direct {v1, v8, v15}, LZ6/o;-><init>(LZ6/q;I)V

    .line 393
    .line 394
    .line 395
    goto :goto_7

    .line 396
    :sswitch_5
    new-instance v1, LZ6/o;

    .line 397
    .line 398
    const/16 v8, 0xa

    .line 399
    .line 400
    invoke-static {v8, v10}, LZ6/C;->e(II)LZ6/q;

    .line 401
    .line 402
    .line 403
    move-result-object v8

    .line 404
    const/4 v10, 0x1

    .line 405
    invoke-direct {v1, v8, v10}, LZ6/o;-><init>(LZ6/q;I)V

    .line 406
    .line 407
    .line 408
    goto/16 :goto_7

    .line 409
    .line 410
    :sswitch_6
    const/4 v1, 0x5

    .line 411
    invoke-static {v1, v10}, LZ6/C;->e(II)LZ6/q;

    .line 412
    .line 413
    .line 414
    move-result-object v1

    .line 415
    goto/16 :goto_7

    .line 416
    .line 417
    :sswitch_7
    new-instance v1, LZ6/u;

    .line 418
    .line 419
    const/16 v8, 0x9

    .line 420
    .line 421
    invoke-direct {v1, v8, v3}, LZ6/u;-><init>(I[Ljava/lang/String;)V

    .line 422
    .line 423
    .line 424
    goto/16 :goto_7

    .line 425
    .line 426
    :sswitch_8
    const/16 v1, 0xe

    .line 427
    .line 428
    invoke-static {v1, v10}, LZ6/C;->e(II)LZ6/q;

    .line 429
    .line 430
    .line 431
    move-result-object v1

    .line 432
    goto/16 :goto_7

    .line 433
    .line 434
    :sswitch_9
    if-lt v10, v14, :cond_13

    .line 435
    .line 436
    new-instance v1, LZ6/u;

    .line 437
    .line 438
    invoke-direct {v1, v15, v6}, LZ6/u;-><init>(I[Ljava/lang/String;)V

    .line 439
    .line 440
    .line 441
    goto/16 :goto_7

    .line 442
    .line 443
    :cond_13
    if-ne v10, v13, :cond_14

    .line 444
    .line 445
    new-instance v1, LZ6/u;

    .line 446
    .line 447
    invoke-direct {v1, v15, v7}, LZ6/u;-><init>(I[Ljava/lang/String;)V

    .line 448
    .line 449
    .line 450
    goto/16 :goto_7

    .line 451
    .line 452
    :cond_14
    if-ne v10, v15, :cond_15

    .line 453
    .line 454
    sget-object v1, LZ6/y;->a:LZ6/y;

    .line 455
    .line 456
    goto/16 :goto_7

    .line 457
    .line 458
    :cond_15
    sget-object v1, LZ6/B;->a:LZ6/B;

    .line 459
    .line 460
    goto/16 :goto_7

    .line 461
    .line 462
    :sswitch_a
    const/16 v1, 0xa

    .line 463
    .line 464
    invoke-static {v1, v10}, LZ6/C;->e(II)LZ6/q;

    .line 465
    .line 466
    .line 467
    move-result-object v1

    .line 468
    goto/16 :goto_7

    .line 469
    .line 470
    :sswitch_b
    const/4 v1, 0x1

    .line 471
    invoke-virtual {v8, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 472
    .line 473
    .line 474
    move-result-object v8

    .line 475
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    .line 476
    .line 477
    .line 478
    move-result v10

    .line 479
    if-ne v10, v1, :cond_16

    .line 480
    .line 481
    new-instance v10, LZ6/n;

    .line 482
    .line 483
    const/4 v11, 0x0

    .line 484
    invoke-virtual {v8, v11}, Ljava/lang/String;->charAt(I)C

    .line 485
    .line 486
    .line 487
    move-result v8

    .line 488
    invoke-direct {v10, v8}, LZ6/n;-><init>(C)V

    .line 489
    .line 490
    .line 491
    goto/16 :goto_9

    .line 492
    .line 493
    :cond_16
    new-instance v10, LZ6/t;

    .line 494
    .line 495
    invoke-direct {v10, v8}, LZ6/t;-><init>(Ljava/lang/String;)V

    .line 496
    .line 497
    .line 498
    goto/16 :goto_9

    .line 499
    .line 500
    :cond_17
    const/4 v1, 0x1

    .line 501
    iget-object v8, v0, LZ6/C;->H:Ljava/util/TimeZone;

    .line 502
    .line 503
    if-lt v10, v14, :cond_18

    .line 504
    .line 505
    new-instance v10, LZ6/w;

    .line 506
    .line 507
    invoke-direct {v10, v8, v2, v1}, LZ6/w;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;I)V

    .line 508
    .line 509
    .line 510
    goto/16 :goto_9

    .line 511
    .line 512
    :cond_18
    new-instance v10, LZ6/w;

    .line 513
    .line 514
    const/4 v11, 0x0

    .line 515
    invoke-direct {v10, v8, v2, v11}, LZ6/w;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;I)V

    .line 516
    .line 517
    .line 518
    goto/16 :goto_9

    .line 519
    .line 520
    :goto_c
    if-ne v10, v15, :cond_19

    .line 521
    .line 522
    sget-object v10, LZ6/A;->a:LZ6/A;

    .line 523
    .line 524
    goto :goto_d

    .line 525
    :cond_19
    invoke-static {v10, v14}, Ljava/lang/Math;->max(II)I

    .line 526
    .line 527
    .line 528
    move-result v10

    .line 529
    invoke-static {v1, v10}, LZ6/C;->e(II)LZ6/q;

    .line 530
    .line 531
    .line 532
    move-result-object v10

    .line 533
    :goto_d
    const/16 v14, 0x59

    .line 534
    .line 535
    if-ne v11, v14, :cond_1a

    .line 536
    .line 537
    new-instance v11, LZ6/o;

    .line 538
    .line 539
    invoke-direct {v11, v10, v13}, LZ6/o;-><init>(LZ6/q;I)V

    .line 540
    .line 541
    .line 542
    move-object v10, v11

    .line 543
    :cond_1a
    :goto_e
    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 544
    .line 545
    .line 546
    add-int/lit8 v14, v9, 0x1

    .line 547
    .line 548
    move-object/from16 v1, p1

    .line 549
    .line 550
    move-object/from16 v8, v16

    .line 551
    .line 552
    move-object/from16 v9, v17

    .line 553
    .line 554
    move/from16 v10, v18

    .line 555
    .line 556
    const/4 v11, 0x1

    .line 557
    const/4 v13, 0x0

    .line 558
    goto/16 :goto_0

    .line 559
    .line 560
    :goto_f
    sget-object v1, LZ6/C;->L:[LZ6/s;

    .line 561
    .line 562
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 563
    .line 564
    .line 565
    move-result-object v1

    .line 566
    check-cast v1, [LZ6/s;

    .line 567
    .line 568
    iput-object v1, v0, LZ6/C;->J:[LZ6/s;

    .line 569
    .line 570
    array-length v1, v1

    .line 571
    const/4 v13, 0x0

    .line 572
    :goto_10
    add-int/lit8 v1, v1, -0x1

    .line 573
    .line 574
    if-ltz v1, :cond_1b

    .line 575
    .line 576
    iget-object v2, v0, LZ6/C;->J:[LZ6/s;

    .line 577
    .line 578
    aget-object v2, v2, v1

    .line 579
    .line 580
    invoke-interface {v2}, LZ6/s;->b()I

    .line 581
    .line 582
    .line 583
    move-result v2

    .line 584
    add-int/2addr v13, v2

    .line 585
    goto :goto_10

    .line 586
    :cond_1b
    iput v13, v0, LZ6/C;->K:I

    .line 587
    .line 588
    return-void

    .line 589
    :sswitch_data_0
    .sparse-switch
        0x27 -> :sswitch_b
        0x4b -> :sswitch_a
        0x4d -> :sswitch_9
        0x53 -> :sswitch_8
        0x61 -> :sswitch_7
        0x64 -> :sswitch_6
        0x68 -> :sswitch_5
        0x6b -> :sswitch_4
        0x6d -> :sswitch_3
        0x73 -> :sswitch_2
        0x75 -> :sswitch_1
        0x77 -> :sswitch_0
    .end sparse-switch

    .line 590
    .line 591
    .line 592
    .line 593
    .line 594
    .line 595
    .line 596
    .line 597
    .line 598
    .line 599
    .line 600
    .line 601
    .line 602
    .line 603
    .line 604
    .line 605
    .line 606
    .line 607
    .line 608
    .line 609
    .line 610
    .line 611
    .line 612
    .line 613
    .line 614
    .line 615
    .line 616
    .line 617
    .line 618
    .line 619
    .line 620
    .line 621
    .line 622
    .line 623
    .line 624
    .line 625
    .line 626
    .line 627
    .line 628
    .line 629
    .line 630
    .line 631
    .line 632
    .line 633
    .line 634
    .line 635
    .line 636
    .line 637
    .line 638
    .line 639
    :pswitch_data_0
    .packed-switch 0x44
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    .line 640
    .line 641
    .line 642
    .line 643
    .line 644
    .line 645
    .line 646
    .line 647
    .line 648
    .line 649
    .line 650
    .line 651
    .line 652
    .line 653
    :pswitch_data_1
    .packed-switch 0x57
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static a(Ljava/lang/Appendable;I)V
    .locals 1

    .line 1
    div-int/lit8 v0, p1, 0xa

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x30

    .line 4
    .line 5
    int-to-char v0, v0

    .line 6
    invoke-interface {p0, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 7
    .line 8
    .line 9
    rem-int/lit8 p1, p1, 0xa

    .line 10
    .line 11
    add-int/lit8 p1, p1, 0x30

    .line 12
    .line 13
    int-to-char p1, p1

    .line 14
    invoke-interface {p0, p1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public static b(Ljava/lang/Appendable;II)V
    .locals 8

    .line 1
    const/16 v0, 0xa

    .line 2
    .line 3
    const/16 v1, 0x2710

    .line 4
    .line 5
    const/16 v2, 0x30

    .line 6
    .line 7
    if-ge p1, v1, :cond_a

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    const/16 v3, 0x64

    .line 11
    .line 12
    const/16 v4, 0x3e8

    .line 13
    .line 14
    const/4 v5, 0x2

    .line 15
    const/4 v6, 0x3

    .line 16
    const/4 v7, 0x4

    .line 17
    if-ge p1, v4, :cond_2

    .line 18
    .line 19
    if-ge p1, v3, :cond_1

    .line 20
    .line 21
    if-ge p1, v0, :cond_0

    .line 22
    .line 23
    const/4 v4, 0x1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 v4, 0x2

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const/4 v4, 0x3

    .line 28
    goto :goto_0

    .line 29
    :cond_2
    const/4 v4, 0x4

    .line 30
    :goto_0
    sub-int/2addr p2, v4

    .line 31
    :goto_1
    if-lez p2, :cond_3

    .line 32
    .line 33
    invoke-interface {p0, v2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 34
    .line 35
    .line 36
    add-int/lit8 p2, p2, -0x1

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_3
    if-eq v4, v1, :cond_9

    .line 40
    .line 41
    if-eq v4, v5, :cond_7

    .line 42
    .line 43
    if-eq v4, v6, :cond_5

    .line 44
    .line 45
    if-eq v4, v7, :cond_4

    .line 46
    .line 47
    goto :goto_7

    .line 48
    :cond_4
    div-int/lit16 p2, p1, 0x3e8

    .line 49
    .line 50
    add-int/2addr p2, v2

    .line 51
    int-to-char p2, p2

    .line 52
    invoke-interface {p0, p2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 53
    .line 54
    .line 55
    rem-int/lit16 p1, p1, 0x3e8

    .line 56
    .line 57
    :cond_5
    if-lt p1, v3, :cond_6

    .line 58
    .line 59
    div-int/lit8 p2, p1, 0x64

    .line 60
    .line 61
    add-int/2addr p2, v2

    .line 62
    int-to-char p2, p2

    .line 63
    invoke-interface {p0, p2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 64
    .line 65
    .line 66
    rem-int/lit8 p1, p1, 0x64

    .line 67
    .line 68
    goto :goto_2

    .line 69
    :cond_6
    invoke-interface {p0, v2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 70
    .line 71
    .line 72
    :cond_7
    :goto_2
    if-lt p1, v0, :cond_8

    .line 73
    .line 74
    div-int/lit8 p2, p1, 0xa

    .line 75
    .line 76
    add-int/2addr p2, v2

    .line 77
    int-to-char p2, p2

    .line 78
    invoke-interface {p0, p2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 79
    .line 80
    .line 81
    rem-int/lit8 p1, p1, 0xa

    .line 82
    .line 83
    goto :goto_3

    .line 84
    :cond_8
    invoke-interface {p0, v2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 85
    .line 86
    .line 87
    :cond_9
    :goto_3
    add-int/2addr p1, v2

    .line 88
    int-to-char p1, p1

    .line 89
    invoke-interface {p0, p1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 90
    .line 91
    .line 92
    goto :goto_7

    .line 93
    :cond_a
    new-array v0, v0, [C

    .line 94
    .line 95
    const/4 v1, 0x0

    .line 96
    :goto_4
    if-eqz p1, :cond_b

    .line 97
    .line 98
    add-int/lit8 v3, v1, 0x1

    .line 99
    .line 100
    rem-int/lit8 v4, p1, 0xa

    .line 101
    .line 102
    add-int/2addr v4, v2

    .line 103
    int-to-char v4, v4

    .line 104
    aput-char v4, v0, v1

    .line 105
    .line 106
    div-int/lit8 p1, p1, 0xa

    .line 107
    .line 108
    move v1, v3

    .line 109
    goto :goto_4

    .line 110
    :cond_b
    :goto_5
    if-ge v1, p2, :cond_c

    .line 111
    .line 112
    invoke-interface {p0, v2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 113
    .line 114
    .line 115
    add-int/lit8 p2, p2, -0x1

    .line 116
    .line 117
    goto :goto_5

    .line 118
    :cond_c
    :goto_6
    add-int/lit8 v1, v1, -0x1

    .line 119
    .line 120
    if-ltz v1, :cond_d

    .line 121
    .line 122
    aget-char p1, v0, v1

    .line 123
    .line 124
    invoke-interface {p0, p1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 125
    .line 126
    .line 127
    goto :goto_6

    .line 128
    :cond_d
    :goto_7
    return-void
.end method

.method public static d(Ljava/util/TimeZone;ZILjava/util/Locale;)Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, LZ6/v;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2, p3}, LZ6/v;-><init>(Ljava/util/TimeZone;ZILjava/util/Locale;)V

    .line 4
    .line 5
    .line 6
    sget-object v1, LZ6/C;->M:Ljava/util/concurrent/ConcurrentHashMap;

    .line 7
    .line 8
    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    check-cast v2, Ljava/lang/String;

    .line 13
    .line 14
    if-nez v2, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0, p1, p2, p3}, Ljava/util/TimeZone;->getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    check-cast p0, Ljava/lang/String;

    .line 25
    .line 26
    if-eqz p0, :cond_0

    .line 27
    .line 28
    move-object v2, p0

    .line 29
    :cond_0
    return-object v2
.end method

.method public static e(II)LZ6/q;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p1, v0, :cond_1

    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    if-eq p1, v0, :cond_0

    .line 6
    .line 7
    new-instance v0, LZ6/r;

    .line 8
    .line 9
    invoke-direct {v0, p0, p1}, LZ6/r;-><init>(II)V

    .line 10
    .line 11
    .line 12
    return-object v0

    .line 13
    :cond_0
    new-instance p1, LZ6/z;

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    invoke-direct {p1, p0, v0}, LZ6/z;-><init>(II)V

    .line 17
    .line 18
    .line 19
    return-object p1

    .line 20
    :cond_1
    new-instance p1, LZ6/z;

    .line 21
    .line 22
    invoke-direct {p1, p0, v0}, LZ6/z;-><init>(II)V

    .line 23
    .line 24
    .line 25
    return-object p1
.end method


# virtual methods
.method public final c(Ljava/util/Date;)Ljava/lang/String;
    .locals 5

    .line 1
    iget-object v0, p0, LZ6/C;->H:Ljava/util/TimeZone;

    .line 2
    .line 3
    iget-object v1, p0, LZ6/C;->I:Ljava/util/Locale;

    .line 4
    .line 5
    invoke-static {v0, v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 10
    .line 11
    .line 12
    new-instance p1, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    iget v1, p0, LZ6/C;->K:I

    .line 15
    .line 16
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 17
    .line 18
    .line 19
    iget-object v1, p0, LZ6/C;->J:[LZ6/s;

    .line 20
    .line 21
    array-length v2, v1

    .line 22
    const/4 v3, 0x0

    .line 23
    :goto_0
    if-ge v3, v2, :cond_0

    .line 24
    .line 25
    aget-object v4, v1, v3

    .line 26
    .line 27
    invoke-interface {v4, p1, v0}, LZ6/s;->a(Ljava/lang/StringBuilder;Ljava/util/Calendar;)V

    .line 28
    .line 29
    .line 30
    add-int/lit8 v3, v3, 0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    return-object p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, LZ6/C;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    check-cast p1, LZ6/C;

    .line 8
    .line 9
    iget-object v0, p1, LZ6/C;->G:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v2, p0, LZ6/C;->G:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    iget-object v0, p0, LZ6/C;->H:Ljava/util/TimeZone;

    .line 20
    .line 21
    iget-object v2, p1, LZ6/C;->H:Ljava/util/TimeZone;

    .line 22
    .line 23
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    iget-object v0, p0, LZ6/C;->I:Ljava/util/Locale;

    .line 30
    .line 31
    iget-object p1, p1, LZ6/C;->I:Ljava/util/Locale;

    .line 32
    .line 33
    invoke-virtual {v0, p1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    if-eqz p1, :cond_1

    .line 38
    .line 39
    const/4 v1, 0x1

    .line 40
    :cond_1
    return v1
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, LZ6/C;->G:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, LZ6/C;->H:Ljava/util/TimeZone;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    iget-object v2, p0, LZ6/C;->I:Ljava/util/Locale;

    .line 14
    .line 15
    invoke-virtual {v2}, Ljava/util/Locale;->hashCode()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    mul-int/lit8 v2, v2, 0xd

    .line 20
    .line 21
    add-int/2addr v2, v1

    .line 22
    mul-int/lit8 v2, v2, 0xd

    .line 23
    .line 24
    add-int/2addr v2, v0

    .line 25
    return v2
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "FastDatePrinter["

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, LZ6/C;->G:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ","

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v2, p0, LZ6/C;->I:Ljava/util/Locale;

    .line 19
    .line 20
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, LZ6/C;->H:Ljava/util/TimeZone;

    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v1, "]"

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    return-object v0
.end method
