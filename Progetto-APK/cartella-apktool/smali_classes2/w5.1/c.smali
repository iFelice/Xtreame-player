.class public final enum Lw5/c;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final I:Ljava/util/HashMap;

.field public static final J:Ljava/util/HashMap;

.field public static final synthetic K:[Lw5/c;


# instance fields
.field public final G:[I

.field public final H:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 31

    .line 1
    new-instance v0, Lw5/c;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x2

    .line 5
    filled-new-array {v1, v2}, [I

    .line 6
    .line 7
    .line 8
    move-result-object v3

    .line 9
    new-array v4, v1, [Ljava/lang/String;

    .line 10
    .line 11
    const-string v5, "Cp437"

    .line 12
    .line 13
    invoke-direct {v0, v5, v1, v3, v4}, Lw5/c;-><init>(Ljava/lang/String;I[I[Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    new-instance v3, Lw5/c;

    .line 17
    .line 18
    const/4 v4, 0x1

    .line 19
    const/4 v5, 0x3

    .line 20
    filled-new-array {v4, v5}, [I

    .line 21
    .line 22
    .line 23
    move-result-object v6

    .line 24
    const-string v7, "ISO-8859-1"

    .line 25
    .line 26
    filled-new-array {v7}, [Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v7

    .line 30
    const-string v8, "ISO8859_1"

    .line 31
    .line 32
    invoke-direct {v3, v8, v4, v6, v7}, Lw5/c;-><init>(Ljava/lang/String;I[I[Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    new-instance v6, Lw5/c;

    .line 36
    .line 37
    const-string v7, "ISO-8859-2"

    .line 38
    .line 39
    filled-new-array {v7}, [Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v7

    .line 43
    const-string v8, "ISO8859_2"

    .line 44
    .line 45
    const/4 v9, 0x4

    .line 46
    invoke-direct {v6, v8, v2, v9, v7}, Lw5/c;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    new-instance v7, Lw5/c;

    .line 50
    .line 51
    const-string v8, "ISO-8859-3"

    .line 52
    .line 53
    filled-new-array {v8}, [Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v8

    .line 57
    const-string v10, "ISO8859_3"

    .line 58
    .line 59
    const/4 v11, 0x5

    .line 60
    invoke-direct {v7, v10, v5, v11, v8}, Lw5/c;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    new-instance v8, Lw5/c;

    .line 64
    .line 65
    const-string v10, "ISO-8859-4"

    .line 66
    .line 67
    filled-new-array {v10}, [Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v10

    .line 71
    const-string v12, "ISO8859_4"

    .line 72
    .line 73
    const/4 v13, 0x6

    .line 74
    invoke-direct {v8, v12, v9, v13, v10}, Lw5/c;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    new-instance v10, Lw5/c;

    .line 78
    .line 79
    const-string v12, "ISO-8859-5"

    .line 80
    .line 81
    filled-new-array {v12}, [Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v12

    .line 85
    const-string v14, "ISO8859_5"

    .line 86
    .line 87
    const/4 v15, 0x7

    .line 88
    invoke-direct {v10, v14, v11, v15, v12}, Lw5/c;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    new-instance v12, Lw5/c;

    .line 92
    .line 93
    const-string v14, "ISO-8859-6"

    .line 94
    .line 95
    filled-new-array {v14}, [Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v14

    .line 99
    const-string v11, "ISO8859_6"

    .line 100
    .line 101
    const/16 v9, 0x8

    .line 102
    .line 103
    invoke-direct {v12, v11, v13, v9, v14}, Lw5/c;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    new-instance v11, Lw5/c;

    .line 107
    .line 108
    const-string v14, "ISO-8859-7"

    .line 109
    .line 110
    filled-new-array {v14}, [Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v14

    .line 114
    const-string v13, "ISO8859_7"

    .line 115
    .line 116
    const/16 v5, 0x9

    .line 117
    .line 118
    invoke-direct {v11, v13, v15, v5, v14}, Lw5/c;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    new-instance v13, Lw5/c;

    .line 122
    .line 123
    const-string v14, "ISO-8859-8"

    .line 124
    .line 125
    filled-new-array {v14}, [Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v14

    .line 129
    const-string v15, "ISO8859_8"

    .line 130
    .line 131
    const/16 v2, 0xa

    .line 132
    .line 133
    invoke-direct {v13, v15, v9, v2, v14}, Lw5/c;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    new-instance v14, Lw5/c;

    .line 137
    .line 138
    const-string v15, "ISO-8859-9"

    .line 139
    .line 140
    filled-new-array {v15}, [Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v15

    .line 144
    const-string v9, "ISO8859_9"

    .line 145
    .line 146
    const/16 v4, 0xb

    .line 147
    .line 148
    invoke-direct {v14, v9, v5, v4, v15}, Lw5/c;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    new-instance v9, Lw5/c;

    .line 152
    .line 153
    const-string v15, "ISO-8859-10"

    .line 154
    .line 155
    filled-new-array {v15}, [Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v15

    .line 159
    const-string v5, "ISO8859_10"

    .line 160
    .line 161
    const/16 v1, 0xc

    .line 162
    .line 163
    invoke-direct {v9, v5, v2, v1, v15}, Lw5/c;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    new-instance v5, Lw5/c;

    .line 167
    .line 168
    const-string v15, "ISO-8859-11"

    .line 169
    .line 170
    filled-new-array {v15}, [Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v15

    .line 174
    const-string v2, "ISO8859_11"

    .line 175
    .line 176
    const/16 v1, 0xd

    .line 177
    .line 178
    invoke-direct {v5, v2, v4, v1, v15}, Lw5/c;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    new-instance v2, Lw5/c;

    .line 182
    .line 183
    const-string v15, "ISO-8859-13"

    .line 184
    .line 185
    filled-new-array {v15}, [Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v15

    .line 189
    const-string v4, "ISO8859_13"

    .line 190
    .line 191
    const/16 v1, 0xf

    .line 192
    .line 193
    move-object/from16 v16, v5

    .line 194
    .line 195
    const/16 v5, 0xc

    .line 196
    .line 197
    invoke-direct {v2, v4, v5, v1, v15}, Lw5/c;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    new-instance v4, Lw5/c;

    .line 201
    .line 202
    const-string v5, "ISO-8859-14"

    .line 203
    .line 204
    filled-new-array {v5}, [Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v5

    .line 208
    const-string v15, "ISO8859_14"

    .line 209
    .line 210
    const/16 v1, 0x10

    .line 211
    .line 212
    move-object/from16 v17, v2

    .line 213
    .line 214
    const/16 v2, 0xd

    .line 215
    .line 216
    invoke-direct {v4, v15, v2, v1, v5}, Lw5/c;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    new-instance v2, Lw5/c;

    .line 220
    .line 221
    const-string v5, "ISO-8859-15"

    .line 222
    .line 223
    filled-new-array {v5}, [Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v5

    .line 227
    const-string v15, "ISO8859_15"

    .line 228
    .line 229
    const/16 v1, 0xe

    .line 230
    .line 231
    move-object/from16 v18, v4

    .line 232
    .line 233
    const/16 v4, 0x11

    .line 234
    .line 235
    invoke-direct {v2, v15, v1, v4, v5}, Lw5/c;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    .line 236
    .line 237
    .line 238
    new-instance v5, Lw5/c;

    .line 239
    .line 240
    const-string v15, "ISO-8859-16"

    .line 241
    .line 242
    filled-new-array {v15}, [Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object v15

    .line 246
    const-string v1, "ISO8859_16"

    .line 247
    .line 248
    const/16 v4, 0x12

    .line 249
    .line 250
    move-object/from16 v19, v2

    .line 251
    .line 252
    const/16 v2, 0xf

    .line 253
    .line 254
    invoke-direct {v5, v1, v2, v4, v15}, Lw5/c;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    .line 255
    .line 256
    .line 257
    new-instance v1, Lw5/c;

    .line 258
    .line 259
    const-string v2, "Shift_JIS"

    .line 260
    .line 261
    filled-new-array {v2}, [Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object v2

    .line 265
    const-string v15, "SJIS"

    .line 266
    .line 267
    const/16 v4, 0x14

    .line 268
    .line 269
    move-object/from16 v20, v5

    .line 270
    .line 271
    const/16 v5, 0x10

    .line 272
    .line 273
    invoke-direct {v1, v15, v5, v4, v2}, Lw5/c;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    .line 274
    .line 275
    .line 276
    new-instance v2, Lw5/c;

    .line 277
    .line 278
    const-string v5, "windows-1250"

    .line 279
    .line 280
    filled-new-array {v5}, [Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    move-result-object v5

    .line 284
    const-string v15, "Cp1250"

    .line 285
    .line 286
    const/16 v4, 0x15

    .line 287
    .line 288
    move-object/from16 v21, v1

    .line 289
    .line 290
    const/16 v1, 0x11

    .line 291
    .line 292
    invoke-direct {v2, v15, v1, v4, v5}, Lw5/c;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    .line 293
    .line 294
    .line 295
    new-instance v1, Lw5/c;

    .line 296
    .line 297
    const-string v5, "windows-1251"

    .line 298
    .line 299
    filled-new-array {v5}, [Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    move-result-object v5

    .line 303
    const-string v15, "Cp1251"

    .line 304
    .line 305
    const/16 v4, 0x16

    .line 306
    .line 307
    move-object/from16 v22, v2

    .line 308
    .line 309
    const/16 v2, 0x12

    .line 310
    .line 311
    invoke-direct {v1, v15, v2, v4, v5}, Lw5/c;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    .line 312
    .line 313
    .line 314
    new-instance v2, Lw5/c;

    .line 315
    .line 316
    const-string v5, "windows-1252"

    .line 317
    .line 318
    filled-new-array {v5}, [Ljava/lang/String;

    .line 319
    .line 320
    .line 321
    move-result-object v5

    .line 322
    const-string v15, "Cp1252"

    .line 323
    .line 324
    const/16 v4, 0x13

    .line 325
    .line 326
    move-object/from16 v23, v1

    .line 327
    .line 328
    const/16 v1, 0x17

    .line 329
    .line 330
    invoke-direct {v2, v15, v4, v1, v5}, Lw5/c;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    .line 331
    .line 332
    .line 333
    new-instance v4, Lw5/c;

    .line 334
    .line 335
    const-string v5, "windows-1256"

    .line 336
    .line 337
    filled-new-array {v5}, [Ljava/lang/String;

    .line 338
    .line 339
    .line 340
    move-result-object v5

    .line 341
    const-string v15, "Cp1256"

    .line 342
    .line 343
    const/16 v1, 0x18

    .line 344
    .line 345
    move-object/from16 v25, v2

    .line 346
    .line 347
    const/16 v2, 0x14

    .line 348
    .line 349
    invoke-direct {v4, v15, v2, v1, v5}, Lw5/c;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    .line 350
    .line 351
    .line 352
    new-instance v2, Lw5/c;

    .line 353
    .line 354
    const-string v5, "UTF-16BE"

    .line 355
    .line 356
    const-string v15, "UnicodeBig"

    .line 357
    .line 358
    filled-new-array {v5, v15}, [Ljava/lang/String;

    .line 359
    .line 360
    .line 361
    move-result-object v5

    .line 362
    const-string v15, "UnicodeBigUnmarked"

    .line 363
    .line 364
    const/16 v1, 0x19

    .line 365
    .line 366
    move-object/from16 v27, v4

    .line 367
    .line 368
    const/16 v4, 0x15

    .line 369
    .line 370
    invoke-direct {v2, v15, v4, v1, v5}, Lw5/c;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    .line 371
    .line 372
    .line 373
    new-instance v4, Lw5/c;

    .line 374
    .line 375
    const-string v5, "UTF-8"

    .line 376
    .line 377
    filled-new-array {v5}, [Ljava/lang/String;

    .line 378
    .line 379
    .line 380
    move-result-object v5

    .line 381
    const-string v15, "UTF8"

    .line 382
    .line 383
    const/16 v1, 0x1a

    .line 384
    .line 385
    move-object/from16 v29, v2

    .line 386
    .line 387
    const/16 v2, 0x16

    .line 388
    .line 389
    invoke-direct {v4, v15, v2, v1, v5}, Lw5/c;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    .line 390
    .line 391
    .line 392
    new-instance v2, Lw5/c;

    .line 393
    .line 394
    const/16 v5, 0x1b

    .line 395
    .line 396
    const/16 v15, 0xaa

    .line 397
    .line 398
    filled-new-array {v5, v15}, [I

    .line 399
    .line 400
    .line 401
    move-result-object v5

    .line 402
    const-string v15, "US-ASCII"

    .line 403
    .line 404
    filled-new-array {v15}, [Ljava/lang/String;

    .line 405
    .line 406
    .line 407
    move-result-object v15

    .line 408
    const-string v1, "ASCII"

    .line 409
    .line 410
    move-object/from16 v30, v4

    .line 411
    .line 412
    const/16 v4, 0x17

    .line 413
    .line 414
    invoke-direct {v2, v1, v4, v5, v15}, Lw5/c;-><init>(Ljava/lang/String;I[I[Ljava/lang/String;)V

    .line 415
    .line 416
    .line 417
    new-instance v1, Lw5/c;

    .line 418
    .line 419
    const/16 v4, 0x1c

    .line 420
    .line 421
    filled-new-array {v4}, [I

    .line 422
    .line 423
    .line 424
    move-result-object v4

    .line 425
    const/4 v5, 0x0

    .line 426
    new-array v15, v5, [Ljava/lang/String;

    .line 427
    .line 428
    const-string v5, "Big5"

    .line 429
    .line 430
    move-object/from16 v24, v2

    .line 431
    .line 432
    const/16 v2, 0x18

    .line 433
    .line 434
    invoke-direct {v1, v5, v2, v4, v15}, Lw5/c;-><init>(Ljava/lang/String;I[I[Ljava/lang/String;)V

    .line 435
    .line 436
    .line 437
    new-instance v2, Lw5/c;

    .line 438
    .line 439
    const-string v4, "GBK"

    .line 440
    .line 441
    const-string v5, "GB2312"

    .line 442
    .line 443
    const-string v15, "EUC_CN"

    .line 444
    .line 445
    filled-new-array {v5, v15, v4}, [Ljava/lang/String;

    .line 446
    .line 447
    .line 448
    move-result-object v4

    .line 449
    const-string v5, "GB18030"

    .line 450
    .line 451
    const/16 v15, 0x1d

    .line 452
    .line 453
    move-object/from16 v26, v1

    .line 454
    .line 455
    const/16 v1, 0x19

    .line 456
    .line 457
    invoke-direct {v2, v5, v1, v15, v4}, Lw5/c;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    .line 458
    .line 459
    .line 460
    new-instance v1, Lw5/c;

    .line 461
    .line 462
    const-string v4, "EUC-KR"

    .line 463
    .line 464
    filled-new-array {v4}, [Ljava/lang/String;

    .line 465
    .line 466
    .line 467
    move-result-object v4

    .line 468
    const-string v5, "EUC_KR"

    .line 469
    .line 470
    const/16 v15, 0x1e

    .line 471
    .line 472
    move-object/from16 v28, v2

    .line 473
    .line 474
    const/16 v2, 0x1a

    .line 475
    .line 476
    invoke-direct {v1, v5, v2, v15, v4}, Lw5/c;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    .line 477
    .line 478
    .line 479
    const/16 v2, 0x1b

    .line 480
    .line 481
    new-array v2, v2, [Lw5/c;

    .line 482
    .line 483
    const/4 v5, 0x0

    .line 484
    aput-object v0, v2, v5

    .line 485
    .line 486
    const/4 v0, 0x1

    .line 487
    aput-object v3, v2, v0

    .line 488
    .line 489
    const/4 v0, 0x2

    .line 490
    aput-object v6, v2, v0

    .line 491
    .line 492
    const/4 v0, 0x3

    .line 493
    aput-object v7, v2, v0

    .line 494
    .line 495
    const/4 v0, 0x4

    .line 496
    aput-object v8, v2, v0

    .line 497
    .line 498
    const/4 v0, 0x5

    .line 499
    aput-object v10, v2, v0

    .line 500
    .line 501
    const/4 v0, 0x6

    .line 502
    aput-object v12, v2, v0

    .line 503
    .line 504
    const/4 v0, 0x7

    .line 505
    aput-object v11, v2, v0

    .line 506
    .line 507
    const/16 v0, 0x8

    .line 508
    .line 509
    aput-object v13, v2, v0

    .line 510
    .line 511
    const/16 v0, 0x9

    .line 512
    .line 513
    aput-object v14, v2, v0

    .line 514
    .line 515
    const/16 v0, 0xa

    .line 516
    .line 517
    aput-object v9, v2, v0

    .line 518
    .line 519
    const/16 v0, 0xb

    .line 520
    .line 521
    aput-object v16, v2, v0

    .line 522
    .line 523
    const/16 v0, 0xc

    .line 524
    .line 525
    aput-object v17, v2, v0

    .line 526
    .line 527
    const/16 v0, 0xd

    .line 528
    .line 529
    aput-object v18, v2, v0

    .line 530
    .line 531
    const/16 v0, 0xe

    .line 532
    .line 533
    aput-object v19, v2, v0

    .line 534
    .line 535
    const/16 v0, 0xf

    .line 536
    .line 537
    aput-object v20, v2, v0

    .line 538
    .line 539
    const/16 v0, 0x10

    .line 540
    .line 541
    aput-object v21, v2, v0

    .line 542
    .line 543
    const/16 v0, 0x11

    .line 544
    .line 545
    aput-object v22, v2, v0

    .line 546
    .line 547
    const/16 v0, 0x12

    .line 548
    .line 549
    aput-object v23, v2, v0

    .line 550
    .line 551
    const/16 v0, 0x13

    .line 552
    .line 553
    aput-object v25, v2, v0

    .line 554
    .line 555
    const/16 v0, 0x14

    .line 556
    .line 557
    aput-object v27, v2, v0

    .line 558
    .line 559
    const/16 v0, 0x15

    .line 560
    .line 561
    aput-object v29, v2, v0

    .line 562
    .line 563
    const/16 v0, 0x16

    .line 564
    .line 565
    aput-object v30, v2, v0

    .line 566
    .line 567
    const/16 v0, 0x17

    .line 568
    .line 569
    aput-object v24, v2, v0

    .line 570
    .line 571
    const/16 v0, 0x18

    .line 572
    .line 573
    aput-object v26, v2, v0

    .line 574
    .line 575
    const/16 v0, 0x19

    .line 576
    .line 577
    aput-object v28, v2, v0

    .line 578
    .line 579
    const/16 v0, 0x1a

    .line 580
    .line 581
    aput-object v1, v2, v0

    .line 582
    .line 583
    sput-object v2, Lw5/c;->K:[Lw5/c;

    .line 584
    .line 585
    new-instance v0, Ljava/util/HashMap;

    .line 586
    .line 587
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 588
    .line 589
    .line 590
    sput-object v0, Lw5/c;->I:Ljava/util/HashMap;

    .line 591
    .line 592
    new-instance v0, Ljava/util/HashMap;

    .line 593
    .line 594
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 595
    .line 596
    .line 597
    sput-object v0, Lw5/c;->J:Ljava/util/HashMap;

    .line 598
    .line 599
    invoke-static {}, Lw5/c;->values()[Lw5/c;

    .line 600
    .line 601
    .line 602
    move-result-object v0

    .line 603
    array-length v1, v0

    .line 604
    const/4 v2, 0x0

    .line 605
    :goto_0
    if-ge v2, v1, :cond_2

    .line 606
    .line 607
    aget-object v3, v0, v2

    .line 608
    .line 609
    iget-object v4, v3, Lw5/c;->G:[I

    .line 610
    .line 611
    array-length v6, v4

    .line 612
    const/4 v7, 0x0

    .line 613
    :goto_1
    if-ge v7, v6, :cond_0

    .line 614
    .line 615
    aget v8, v4, v7

    .line 616
    .line 617
    sget-object v9, Lw5/c;->I:Ljava/util/HashMap;

    .line 618
    .line 619
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 620
    .line 621
    .line 622
    move-result-object v8

    .line 623
    invoke-virtual {v9, v8, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 624
    .line 625
    .line 626
    const/4 v8, 0x1

    .line 627
    add-int/2addr v7, v8

    .line 628
    goto :goto_1

    .line 629
    :cond_0
    sget-object v4, Lw5/c;->J:Ljava/util/HashMap;

    .line 630
    .line 631
    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 632
    .line 633
    .line 634
    move-result-object v6

    .line 635
    invoke-virtual {v4, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 636
    .line 637
    .line 638
    iget-object v4, v3, Lw5/c;->H:[Ljava/lang/String;

    .line 639
    .line 640
    array-length v6, v4

    .line 641
    const/4 v7, 0x0

    .line 642
    :goto_2
    if-ge v7, v6, :cond_1

    .line 643
    .line 644
    aget-object v8, v4, v7

    .line 645
    .line 646
    sget-object v9, Lw5/c;->J:Ljava/util/HashMap;

    .line 647
    .line 648
    invoke-virtual {v9, v8, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 649
    .line 650
    .line 651
    const/4 v8, 0x1

    .line 652
    add-int/2addr v7, v8

    .line 653
    goto :goto_2

    .line 654
    :cond_1
    const/4 v8, 0x1

    .line 655
    add-int/2addr v2, v8

    .line 656
    goto :goto_0

    .line 657
    :cond_2
    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;II[Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    filled-new-array {p3}, [I

    move-result-object p1

    iput-object p1, p0, Lw5/c;->G:[I

    .line 3
    iput-object p4, p0, Lw5/c;->H:[Ljava/lang/String;

    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;I[I[Ljava/lang/String;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 5
    iput-object p3, p0, Lw5/c;->G:[I

    .line 6
    iput-object p4, p0, Lw5/c;->H:[Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lw5/c;
    .locals 1

    .line 1
    const-class v0, Lw5/c;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lw5/c;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lw5/c;
    .locals 1

    .line 1
    sget-object v0, Lw5/c;->K:[Lw5/c;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lw5/c;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lw5/c;

    .line 8
    .line 9
    return-object v0
.end method
