.class public final Lcom/google/ads/interactivemedia/v3/internal/zzabi;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final zza:Ljava/util/TimeZone;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "UTC"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/zzabi;->zza:Ljava/util/TimeZone;

    .line 8
    .line 9
    return-void
.end method

.method public static zza(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/text/ParsePosition;->getIndex()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    add-int/lit8 v3, v0, 0x4

    .line 10
    .line 11
    invoke-static {v1, v0, v3}, Lcom/google/ads/interactivemedia/v3/internal/zzabi;->zzb(Ljava/lang/String;II)I

    .line 12
    .line 13
    .line 14
    move-result v4

    .line 15
    const/16 v5, 0x2d

    .line 16
    .line 17
    invoke-static {v1, v3, v5}, Lcom/google/ads/interactivemedia/v3/internal/zzabi;->zzc(Ljava/lang/String;IC)Z

    .line 18
    .line 19
    .line 20
    move-result v6

    .line 21
    const/4 v7, 0x5

    .line 22
    if-eqz v6, :cond_0

    .line 23
    .line 24
    add-int/lit8 v3, v0, 0x5

    .line 25
    .line 26
    :cond_0
    add-int/lit8 v0, v3, 0x2

    .line 27
    .line 28
    invoke-static {v1, v3, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzabi;->zzb(Ljava/lang/String;II)I

    .line 29
    .line 30
    .line 31
    move-result v6

    .line 32
    invoke-static {v1, v0, v5}, Lcom/google/ads/interactivemedia/v3/internal/zzabi;->zzc(Ljava/lang/String;IC)Z

    .line 33
    .line 34
    .line 35
    move-result v8

    .line 36
    if-eqz v8, :cond_1

    .line 37
    .line 38
    add-int/lit8 v0, v3, 0x3

    .line 39
    .line 40
    :cond_1
    add-int/lit8 v3, v0, 0x2

    .line 41
    .line 42
    invoke-static {v1, v0, v3}, Lcom/google/ads/interactivemedia/v3/internal/zzabi;->zzb(Ljava/lang/String;II)I

    .line 43
    .line 44
    .line 45
    move-result v8

    .line 46
    const/16 v9, 0x54

    .line 47
    .line 48
    invoke-static {v1, v3, v9}, Lcom/google/ads/interactivemedia/v3/internal/zzabi;->zzc(Ljava/lang/String;IC)Z

    .line 49
    .line 50
    .line 51
    move-result v9

    .line 52
    const/4 v10, 0x0

    .line 53
    if-nez v9, :cond_2

    .line 54
    .line 55
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    .line 56
    .line 57
    .line 58
    move-result v11

    .line 59
    if-gt v11, v3, :cond_2

    .line 60
    .line 61
    new-instance v0, Ljava/util/GregorianCalendar;

    .line 62
    .line 63
    add-int/lit8 v6, v6, -0x1

    .line 64
    .line 65
    invoke-direct {v0, v4, v6, v8}, Ljava/util/GregorianCalendar;-><init>(III)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, v10}, Ljava/util/Calendar;->setLenient(Z)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v2, v3}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    return-object v0

    .line 79
    :catch_0
    move-exception v0

    .line 80
    goto/16 :goto_9

    .line 81
    .line 82
    :catch_1
    move-exception v0

    .line 83
    goto/16 :goto_9

    .line 84
    .line 85
    :cond_2
    const/16 v11, 0x2b

    .line 86
    .line 87
    const/16 v12, 0x5a

    .line 88
    .line 89
    const/4 v13, 0x1

    .line 90
    const/4 v14, 0x2

    .line 91
    if-eqz v9, :cond_d

    .line 92
    .line 93
    add-int/lit8 v3, v0, 0x3

    .line 94
    .line 95
    add-int/lit8 v9, v0, 0x5

    .line 96
    .line 97
    invoke-static {v1, v3, v9}, Lcom/google/ads/interactivemedia/v3/internal/zzabi;->zzb(Ljava/lang/String;II)I

    .line 98
    .line 99
    .line 100
    move-result v3

    .line 101
    const/16 v15, 0x3a

    .line 102
    .line 103
    invoke-static {v1, v9, v15}, Lcom/google/ads/interactivemedia/v3/internal/zzabi;->zzc(Ljava/lang/String;IC)Z

    .line 104
    .line 105
    .line 106
    move-result v16

    .line 107
    if-eqz v16, :cond_3

    .line 108
    .line 109
    add-int/lit8 v9, v0, 0x6

    .line 110
    .line 111
    :cond_3
    add-int/lit8 v0, v9, 0x2

    .line 112
    .line 113
    invoke-static {v1, v9, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzabi;->zzb(Ljava/lang/String;II)I

    .line 114
    .line 115
    .line 116
    move-result v16

    .line 117
    invoke-static {v1, v0, v15}, Lcom/google/ads/interactivemedia/v3/internal/zzabi;->zzc(Ljava/lang/String;IC)Z

    .line 118
    .line 119
    .line 120
    move-result v15

    .line 121
    if-eqz v15, :cond_4

    .line 122
    .line 123
    add-int/lit8 v9, v9, 0x3

    .line 124
    .line 125
    move v0, v9

    .line 126
    :cond_4
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    .line 127
    .line 128
    .line 129
    move-result v9

    .line 130
    if-le v9, v0, :cond_c

    .line 131
    .line 132
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    .line 133
    .line 134
    .line 135
    move-result v9

    .line 136
    if-eq v9, v12, :cond_c

    .line 137
    .line 138
    if-eq v9, v11, :cond_c

    .line 139
    .line 140
    if-eq v9, v5, :cond_c

    .line 141
    .line 142
    add-int/lit8 v9, v0, 0x2

    .line 143
    .line 144
    invoke-static {v1, v0, v9}, Lcom/google/ads/interactivemedia/v3/internal/zzabi;->zzb(Ljava/lang/String;II)I

    .line 145
    .line 146
    .line 147
    move-result v15

    .line 148
    const/16 v10, 0x3b

    .line 149
    .line 150
    if-le v15, v10, :cond_5

    .line 151
    .line 152
    const/16 v10, 0x3f

    .line 153
    .line 154
    if-ge v15, v10, :cond_5

    .line 155
    .line 156
    const/16 v15, 0x3b

    .line 157
    .line 158
    :cond_5
    const/16 v10, 0x2e

    .line 159
    .line 160
    invoke-static {v1, v9, v10}, Lcom/google/ads/interactivemedia/v3/internal/zzabi;->zzc(Ljava/lang/String;IC)Z

    .line 161
    .line 162
    .line 163
    move-result v10

    .line 164
    if-eqz v10, :cond_b

    .line 165
    .line 166
    add-int/lit8 v9, v0, 0x3

    .line 167
    .line 168
    add-int/lit8 v10, v0, 0x4

    .line 169
    .line 170
    :goto_0
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    .line 171
    .line 172
    .line 173
    move-result v7

    .line 174
    if-ge v10, v7, :cond_8

    .line 175
    .line 176
    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    .line 177
    .line 178
    .line 179
    move-result v7

    .line 180
    const/16 v5, 0x30

    .line 181
    .line 182
    if-lt v7, v5, :cond_7

    .line 183
    .line 184
    const/16 v5, 0x39

    .line 185
    .line 186
    if-le v7, v5, :cond_6

    .line 187
    .line 188
    goto :goto_1

    .line 189
    :cond_6
    add-int/lit8 v10, v10, 0x1

    .line 190
    .line 191
    const/16 v5, 0x2d

    .line 192
    .line 193
    goto :goto_0

    .line 194
    :cond_7
    :goto_1
    move v5, v10

    .line 195
    goto :goto_2

    .line 196
    :cond_8
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    .line 197
    .line 198
    .line 199
    move-result v5

    .line 200
    :goto_2
    add-int/lit8 v0, v0, 0x6

    .line 201
    .line 202
    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    .line 203
    .line 204
    .line 205
    move-result v0

    .line 206
    invoke-static {v1, v9, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzabi;->zzb(Ljava/lang/String;II)I

    .line 207
    .line 208
    .line 209
    move-result v7

    .line 210
    sub-int/2addr v0, v9

    .line 211
    if-eq v0, v13, :cond_a

    .line 212
    .line 213
    if-eq v0, v14, :cond_9

    .line 214
    .line 215
    goto :goto_3

    .line 216
    :cond_9
    mul-int/lit8 v7, v7, 0xa

    .line 217
    .line 218
    goto :goto_3

    .line 219
    :cond_a
    mul-int/lit8 v7, v7, 0x64

    .line 220
    .line 221
    :goto_3
    move v0, v3

    .line 222
    move v3, v5

    .line 223
    move/from16 v5, v16

    .line 224
    .line 225
    goto :goto_4

    .line 226
    :cond_b
    move v0, v3

    .line 227
    move v3, v9

    .line 228
    move/from16 v5, v16

    .line 229
    .line 230
    const/4 v7, 0x0

    .line 231
    goto :goto_4

    .line 232
    :cond_c
    move/from16 v5, v16

    .line 233
    .line 234
    const/4 v7, 0x0

    .line 235
    const/4 v15, 0x0

    .line 236
    move/from16 v17, v3

    .line 237
    .line 238
    move v3, v0

    .line 239
    move/from16 v0, v17

    .line 240
    .line 241
    goto :goto_4

    .line 242
    :cond_d
    const/4 v0, 0x0

    .line 243
    const/4 v5, 0x0

    .line 244
    const/4 v7, 0x0

    .line 245
    const/4 v15, 0x0

    .line 246
    :goto_4
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    .line 247
    .line 248
    .line 249
    move-result v9

    .line 250
    if-le v9, v3, :cond_16

    .line 251
    .line 252
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    .line 253
    .line 254
    .line 255
    move-result v9

    .line 256
    if-ne v9, v12, :cond_e

    .line 257
    .line 258
    sget-object v9, Lcom/google/ads/interactivemedia/v3/internal/zzabi;->zza:Ljava/util/TimeZone;

    .line 259
    .line 260
    add-int/2addr v3, v13

    .line 261
    goto/16 :goto_8

    .line 262
    .line 263
    :cond_e
    if-eq v9, v11, :cond_10

    .line 264
    .line 265
    const/16 v10, 0x2d

    .line 266
    .line 267
    if-ne v9, v10, :cond_f

    .line 268
    .line 269
    goto :goto_5

    .line 270
    :cond_f
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    .line 271
    .line 272
    new-instance v3, Ljava/lang/StringBuilder;

    .line 273
    .line 274
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 275
    .line 276
    .line 277
    const-string v4, "Invalid time zone indicator \'"

    .line 278
    .line 279
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    .line 281
    .line 282
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 283
    .line 284
    .line 285
    const-string v4, "\'"

    .line 286
    .line 287
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    .line 289
    .line 290
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 291
    .line 292
    .line 293
    move-result-object v3

    .line 294
    invoke-direct {v0, v3}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 295
    .line 296
    .line 297
    throw v0

    .line 298
    :cond_10
    :goto_5
    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 299
    .line 300
    .line 301
    move-result-object v9

    .line 302
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    .line 303
    .line 304
    .line 305
    move-result v10

    .line 306
    const/4 v11, 0x5

    .line 307
    if-ge v10, v11, :cond_11

    .line 308
    .line 309
    new-instance v10, Ljava/lang/StringBuilder;

    .line 310
    .line 311
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 312
    .line 313
    .line 314
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    .line 316
    .line 317
    const-string v9, "00"

    .line 318
    .line 319
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    .line 321
    .line 322
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 323
    .line 324
    .line 325
    move-result-object v9

    .line 326
    :cond_11
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    .line 327
    .line 328
    .line 329
    move-result v10

    .line 330
    add-int/2addr v3, v10

    .line 331
    const-string v10, "+0000"

    .line 332
    .line 333
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 334
    .line 335
    .line 336
    move-result v10

    .line 337
    if-nez v10, :cond_15

    .line 338
    .line 339
    const-string v10, "+00:00"

    .line 340
    .line 341
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 342
    .line 343
    .line 344
    move-result v10

    .line 345
    if-eqz v10, :cond_12

    .line 346
    .line 347
    goto :goto_7

    .line 348
    :cond_12
    new-instance v10, Ljava/lang/StringBuilder;

    .line 349
    .line 350
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 351
    .line 352
    .line 353
    const-string v11, "GMT"

    .line 354
    .line 355
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    .line 357
    .line 358
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    .line 360
    .line 361
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 362
    .line 363
    .line 364
    move-result-object v9

    .line 365
    invoke-static {v9}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    .line 366
    .line 367
    .line 368
    move-result-object v10

    .line 369
    invoke-virtual {v10}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    .line 370
    .line 371
    .line 372
    move-result-object v11

    .line 373
    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 374
    .line 375
    .line 376
    move-result v12

    .line 377
    if-nez v12, :cond_14

    .line 378
    .line 379
    const-string v12, ":"

    .line 380
    .line 381
    const-string v14, ""

    .line 382
    .line 383
    invoke-virtual {v11, v12, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 384
    .line 385
    .line 386
    move-result-object v11

    .line 387
    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 388
    .line 389
    .line 390
    move-result v11

    .line 391
    if-eqz v11, :cond_13

    .line 392
    .line 393
    goto :goto_6

    .line 394
    :cond_13
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    .line 395
    .line 396
    invoke-virtual {v10}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    .line 397
    .line 398
    .line 399
    move-result-object v3

    .line 400
    new-instance v4, Ljava/lang/StringBuilder;

    .line 401
    .line 402
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 403
    .line 404
    .line 405
    const-string v5, "Mismatching time zone indicator: "

    .line 406
    .line 407
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    .line 409
    .line 410
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 411
    .line 412
    .line 413
    const-string v5, " given, resolves to "

    .line 414
    .line 415
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    .line 417
    .line 418
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 419
    .line 420
    .line 421
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 422
    .line 423
    .line 424
    move-result-object v3

    .line 425
    invoke-direct {v0, v3}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 426
    .line 427
    .line 428
    throw v0

    .line 429
    :cond_14
    :goto_6
    move-object v9, v10

    .line 430
    goto :goto_8

    .line 431
    :cond_15
    :goto_7
    sget-object v9, Lcom/google/ads/interactivemedia/v3/internal/zzabi;->zza:Ljava/util/TimeZone;

    .line 432
    .line 433
    :goto_8
    new-instance v10, Ljava/util/GregorianCalendar;

    .line 434
    .line 435
    invoke-direct {v10, v9}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 436
    .line 437
    .line 438
    const/4 v9, 0x0

    .line 439
    invoke-virtual {v10, v9}, Ljava/util/Calendar;->setLenient(Z)V

    .line 440
    .line 441
    .line 442
    invoke-virtual {v10, v13, v4}, Ljava/util/Calendar;->set(II)V

    .line 443
    .line 444
    .line 445
    add-int/lit8 v6, v6, -0x1

    .line 446
    .line 447
    const/4 v4, 0x2

    .line 448
    invoke-virtual {v10, v4, v6}, Ljava/util/Calendar;->set(II)V

    .line 449
    .line 450
    .line 451
    const/4 v4, 0x5

    .line 452
    invoke-virtual {v10, v4, v8}, Ljava/util/Calendar;->set(II)V

    .line 453
    .line 454
    .line 455
    const/16 v4, 0xb

    .line 456
    .line 457
    invoke-virtual {v10, v4, v0}, Ljava/util/Calendar;->set(II)V

    .line 458
    .line 459
    .line 460
    const/16 v0, 0xc

    .line 461
    .line 462
    invoke-virtual {v10, v0, v5}, Ljava/util/Calendar;->set(II)V

    .line 463
    .line 464
    .line 465
    const/16 v0, 0xd

    .line 466
    .line 467
    invoke-virtual {v10, v0, v15}, Ljava/util/Calendar;->set(II)V

    .line 468
    .line 469
    .line 470
    const/16 v0, 0xe

    .line 471
    .line 472
    invoke-virtual {v10, v0, v7}, Ljava/util/Calendar;->set(II)V

    .line 473
    .line 474
    .line 475
    invoke-virtual {v2, v3}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 476
    .line 477
    .line 478
    invoke-virtual {v10}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    .line 479
    .line 480
    .line 481
    move-result-object v0

    .line 482
    return-object v0

    .line 483
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 484
    .line 485
    const-string v3, "No time zone indicator"

    .line 486
    .line 487
    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 488
    .line 489
    .line 490
    throw v0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 491
    :goto_9
    if-nez v1, :cond_17

    .line 492
    .line 493
    const/4 v1, 0x0

    .line 494
    goto :goto_a

    .line 495
    :cond_17
    const-string v3, "\""

    .line 496
    .line 497
    invoke-static {v3, v1, v3}, La/r;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 498
    .line 499
    .line 500
    move-result-object v1

    .line 501
    :goto_a
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 502
    .line 503
    .line 504
    move-result-object v3

    .line 505
    if-eqz v3, :cond_18

    .line 506
    .line 507
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 508
    .line 509
    .line 510
    move-result v4

    .line 511
    if-eqz v4, :cond_19

    .line 512
    .line 513
    :cond_18
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 514
    .line 515
    .line 516
    move-result-object v3

    .line 517
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 518
    .line 519
    .line 520
    move-result-object v3

    .line 521
    const-string v4, "("

    .line 522
    .line 523
    const-string v5, ")"

    .line 524
    .line 525
    invoke-static {v4, v3, v5}, La/r;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 526
    .line 527
    .line 528
    move-result-object v3

    .line 529
    :cond_19
    new-instance v4, Ljava/text/ParseException;

    .line 530
    .line 531
    const-string v5, "Failed to parse date ["

    .line 532
    .line 533
    const-string v6, "]: "

    .line 534
    .line 535
    invoke-static {v5, v1, v6, v3}, Lcom/google/protobuf/U2;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 536
    .line 537
    .line 538
    move-result-object v1

    .line 539
    invoke-virtual/range {p1 .. p1}, Ljava/text/ParsePosition;->getIndex()I

    .line 540
    .line 541
    .line 542
    move-result v2

    .line 543
    invoke-direct {v4, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    .line 544
    .line 545
    .line 546
    invoke-virtual {v4, v0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 547
    .line 548
    .line 549
    throw v4
.end method

.method private static zzb(Ljava/lang/String;II)I
    .locals 5

    .line 1
    if-ltz p1, :cond_4

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-gt p2, v0, :cond_4

    .line 8
    .line 9
    if-gt p1, p2, :cond_4

    .line 10
    .line 11
    const-string v0, "Invalid number: "

    .line 12
    .line 13
    const/16 v1, 0xa

    .line 14
    .line 15
    if-ge p1, p2, :cond_1

    .line 16
    .line 17
    add-int/lit8 v2, p1, 0x1

    .line 18
    .line 19
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    invoke-static {v3, v1}, Ljava/lang/Character;->digit(CI)I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    if-ltz v3, :cond_0

    .line 28
    .line 29
    neg-int v3, v3

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    new-instance v1, Ljava/lang/NumberFormatException;

    .line 32
    .line 33
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    invoke-direct {v1, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    throw v1

    .line 49
    :cond_1
    const/4 v3, 0x0

    .line 50
    move v2, p1

    .line 51
    :goto_0
    if-ge v2, p2, :cond_3

    .line 52
    .line 53
    add-int/lit8 v4, v2, 0x1

    .line 54
    .line 55
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    invoke-static {v2, v1}, Ljava/lang/Character;->digit(CI)I

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    if-ltz v2, :cond_2

    .line 64
    .line 65
    mul-int/lit8 v3, v3, 0xa

    .line 66
    .line 67
    sub-int/2addr v3, v2

    .line 68
    move v2, v4

    .line 69
    goto :goto_0

    .line 70
    :cond_2
    new-instance v1, Ljava/lang/NumberFormatException;

    .line 71
    .line 72
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    invoke-direct {v1, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    throw v1

    .line 88
    :cond_3
    neg-int p0, v3

    .line 89
    return p0

    .line 90
    :cond_4
    new-instance p1, Ljava/lang/NumberFormatException;

    .line 91
    .line 92
    invoke-direct {p1, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    throw p1
.end method

.method private static zzc(Ljava/lang/String;IC)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-ge p1, v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    if-ne p0, p2, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x1

    .line 14
    return p0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    return p0
.end method
