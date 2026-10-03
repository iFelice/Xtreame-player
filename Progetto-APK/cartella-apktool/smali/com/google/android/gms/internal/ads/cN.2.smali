.class public abstract Lcom/google/android/gms/internal/ads/cN;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/regex/Pattern;

.field public static final b:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "^\\D?(\\d+)$"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/google/android/gms/internal/ads/cN;->a:Ljava/util/regex/Pattern;

    .line 8
    .line 9
    new-instance v0, Ljava/util/HashMap;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lcom/google/android/gms/internal/ads/cN;->b:Ljava/util/HashMap;

    .line 15
    .line 16
    return-void
.end method

.method public static a(Lcom/google/android/gms/internal/ads/p0;)Landroid/util/Pair;
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/p0;->j:Ljava/lang/String;

    .line 4
    .line 5
    if-nez v1, :cond_1

    .line 6
    .line 7
    :cond_0
    :goto_0
    const/4 v2, 0x0

    .line 8
    goto/16 :goto_10

    .line 9
    .line 10
    :cond_1
    const-string v3, "\\."

    .line 11
    .line 12
    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/p0;->m:Ljava/lang/String;

    .line 17
    .line 18
    const-string v4, "video/dolby-vision"

    .line 19
    .line 20
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    const/16 v6, 0x80

    .line 25
    .line 26
    const/16 v7, 0x100

    .line 27
    .line 28
    const/16 v8, 0x200

    .line 29
    .line 30
    const/16 v9, 0x20

    .line 31
    .line 32
    const/16 v10, 0x40

    .line 33
    .line 34
    const/16 v12, 0x8

    .line 35
    .line 36
    const/4 v13, 0x3

    .line 37
    const/16 v14, 0x10

    .line 38
    .line 39
    const/4 v15, 0x4

    .line 40
    const/4 v2, 0x2

    .line 41
    const/4 v4, 0x1

    .line 42
    const-string v11, "MediaCodecUtil"

    .line 43
    .line 44
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/p0;->j:Ljava/lang/String;

    .line 45
    .line 46
    if-eqz v3, :cond_b

    .line 47
    .line 48
    array-length v0, v1

    .line 49
    if-ge v0, v13, :cond_2

    .line 50
    .line 51
    const-string v0, "Ignoring malformed Dolby Vision codec string: "

    .line 52
    .line 53
    invoke-static {v5, v0, v11}, La/r;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_2
    sget-object v0, Lcom/google/android/gms/internal/ads/cN;->a:Ljava/util/regex/Pattern;

    .line 58
    .line 59
    aget-object v3, v1, v4

    .line 60
    .line 61
    invoke-virtual {v0, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    if-nez v3, :cond_3

    .line 70
    .line 71
    const-string v0, "Ignoring malformed Dolby Vision codec string: "

    .line 72
    .line 73
    invoke-static {v5, v0, v11}, La/r;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_3
    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    if-nez v0, :cond_5

    .line 82
    .line 83
    :cond_4
    :goto_1
    const/4 v3, 0x0

    .line 84
    goto/16 :goto_2

    .line 85
    .line 86
    :cond_5
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 87
    .line 88
    .line 89
    move-result v3

    .line 90
    const/16 v5, 0x61f

    .line 91
    .line 92
    if-eq v3, v5, :cond_6

    .line 93
    .line 94
    packed-switch v3, :pswitch_data_0

    .line 95
    .line 96
    .line 97
    goto :goto_1

    .line 98
    :pswitch_0
    const-string v3, "09"

    .line 99
    .line 100
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    move-result v3

    .line 104
    if-eqz v3, :cond_4

    .line 105
    .line 106
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 107
    .line 108
    .line 109
    move-result-object v3

    .line 110
    goto/16 :goto_2

    .line 111
    .line 112
    :pswitch_1
    const-string v3, "08"

    .line 113
    .line 114
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    move-result v3

    .line 118
    if-eqz v3, :cond_4

    .line 119
    .line 120
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 121
    .line 122
    .line 123
    move-result-object v3

    .line 124
    goto/16 :goto_2

    .line 125
    .line 126
    :pswitch_2
    const-string v3, "07"

    .line 127
    .line 128
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    move-result v3

    .line 132
    if-eqz v3, :cond_4

    .line 133
    .line 134
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 135
    .line 136
    .line 137
    move-result-object v3

    .line 138
    goto/16 :goto_2

    .line 139
    .line 140
    :pswitch_3
    const-string v3, "06"

    .line 141
    .line 142
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 143
    .line 144
    .line 145
    move-result v3

    .line 146
    if-eqz v3, :cond_4

    .line 147
    .line 148
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 149
    .line 150
    .line 151
    move-result-object v3

    .line 152
    goto :goto_2

    .line 153
    :pswitch_4
    const-string v3, "05"

    .line 154
    .line 155
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 156
    .line 157
    .line 158
    move-result v3

    .line 159
    if-eqz v3, :cond_4

    .line 160
    .line 161
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 162
    .line 163
    .line 164
    move-result-object v3

    .line 165
    goto :goto_2

    .line 166
    :pswitch_5
    const-string v3, "04"

    .line 167
    .line 168
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 169
    .line 170
    .line 171
    move-result v3

    .line 172
    if-eqz v3, :cond_4

    .line 173
    .line 174
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 175
    .line 176
    .line 177
    move-result-object v3

    .line 178
    goto :goto_2

    .line 179
    :pswitch_6
    const-string v3, "03"

    .line 180
    .line 181
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 182
    .line 183
    .line 184
    move-result v3

    .line 185
    if-eqz v3, :cond_4

    .line 186
    .line 187
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 188
    .line 189
    .line 190
    move-result-object v3

    .line 191
    goto :goto_2

    .line 192
    :pswitch_7
    const-string v3, "02"

    .line 193
    .line 194
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 195
    .line 196
    .line 197
    move-result v3

    .line 198
    if-eqz v3, :cond_4

    .line 199
    .line 200
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 201
    .line 202
    .line 203
    move-result-object v3

    .line 204
    goto :goto_2

    .line 205
    :pswitch_8
    const-string v3, "01"

    .line 206
    .line 207
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 208
    .line 209
    .line 210
    move-result v3

    .line 211
    if-eqz v3, :cond_4

    .line 212
    .line 213
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 214
    .line 215
    .line 216
    move-result-object v3

    .line 217
    goto :goto_2

    .line 218
    :pswitch_9
    const-string v3, "00"

    .line 219
    .line 220
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 221
    .line 222
    .line 223
    move-result v3

    .line 224
    if-eqz v3, :cond_4

    .line 225
    .line 226
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 227
    .line 228
    .line 229
    move-result-object v3

    .line 230
    goto :goto_2

    .line 231
    :cond_6
    const-string v3, "10"

    .line 232
    .line 233
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 234
    .line 235
    .line 236
    move-result v3

    .line 237
    if-eqz v3, :cond_4

    .line 238
    .line 239
    const/16 v3, 0x400

    .line 240
    .line 241
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 242
    .line 243
    .line 244
    move-result-object v5

    .line 245
    move-object v3, v5

    .line 246
    :goto_2
    if-nez v3, :cond_7

    .line 247
    .line 248
    const-string v1, "Unknown Dolby Vision profile string: "

    .line 249
    .line 250
    invoke-static {v0, v1, v11}, La/r;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    .line 252
    .line 253
    goto/16 :goto_0

    .line 254
    .line 255
    :cond_7
    aget-object v0, v1, v2

    .line 256
    .line 257
    if-nez v0, :cond_9

    .line 258
    .line 259
    :cond_8
    :goto_3
    const/4 v1, 0x0

    .line 260
    goto/16 :goto_4

    .line 261
    .line 262
    :cond_9
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 263
    .line 264
    .line 265
    move-result v1

    .line 266
    packed-switch v1, :pswitch_data_1

    .line 267
    .line 268
    .line 269
    packed-switch v1, :pswitch_data_2

    .line 270
    .line 271
    .line 272
    goto :goto_3

    .line 273
    :pswitch_a
    const-string v1, "13"

    .line 274
    .line 275
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 276
    .line 277
    .line 278
    move-result v1

    .line 279
    if-eqz v1, :cond_8

    .line 280
    .line 281
    const/16 v16, 0x1000

    .line 282
    .line 283
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 284
    .line 285
    .line 286
    move-result-object v1

    .line 287
    goto/16 :goto_4

    .line 288
    .line 289
    :pswitch_b
    const-string v1, "12"

    .line 290
    .line 291
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 292
    .line 293
    .line 294
    move-result v1

    .line 295
    if-eqz v1, :cond_8

    .line 296
    .line 297
    const/16 v17, 0x800

    .line 298
    .line 299
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 300
    .line 301
    .line 302
    move-result-object v1

    .line 303
    goto/16 :goto_4

    .line 304
    .line 305
    :pswitch_c
    const-string v1, "11"

    .line 306
    .line 307
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 308
    .line 309
    .line 310
    move-result v1

    .line 311
    if-eqz v1, :cond_8

    .line 312
    .line 313
    const/16 v18, 0x400

    .line 314
    .line 315
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 316
    .line 317
    .line 318
    move-result-object v1

    .line 319
    goto/16 :goto_4

    .line 320
    .line 321
    :pswitch_d
    const-string v1, "10"

    .line 322
    .line 323
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 324
    .line 325
    .line 326
    move-result v1

    .line 327
    if-eqz v1, :cond_8

    .line 328
    .line 329
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 330
    .line 331
    .line 332
    move-result-object v1

    .line 333
    goto/16 :goto_4

    .line 334
    .line 335
    :pswitch_e
    const-string v1, "09"

    .line 336
    .line 337
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 338
    .line 339
    .line 340
    move-result v1

    .line 341
    if-eqz v1, :cond_8

    .line 342
    .line 343
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 344
    .line 345
    .line 346
    move-result-object v1

    .line 347
    goto/16 :goto_4

    .line 348
    .line 349
    :pswitch_f
    const-string v1, "08"

    .line 350
    .line 351
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 352
    .line 353
    .line 354
    move-result v1

    .line 355
    if-eqz v1, :cond_8

    .line 356
    .line 357
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 358
    .line 359
    .line 360
    move-result-object v1

    .line 361
    goto :goto_4

    .line 362
    :pswitch_10
    const-string v1, "07"

    .line 363
    .line 364
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 365
    .line 366
    .line 367
    move-result v1

    .line 368
    if-eqz v1, :cond_8

    .line 369
    .line 370
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 371
    .line 372
    .line 373
    move-result-object v1

    .line 374
    goto :goto_4

    .line 375
    :pswitch_11
    const-string v1, "06"

    .line 376
    .line 377
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 378
    .line 379
    .line 380
    move-result v1

    .line 381
    if-eqz v1, :cond_8

    .line 382
    .line 383
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 384
    .line 385
    .line 386
    move-result-object v1

    .line 387
    goto :goto_4

    .line 388
    :pswitch_12
    const-string v1, "05"

    .line 389
    .line 390
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 391
    .line 392
    .line 393
    move-result v1

    .line 394
    if-eqz v1, :cond_8

    .line 395
    .line 396
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 397
    .line 398
    .line 399
    move-result-object v1

    .line 400
    goto :goto_4

    .line 401
    :pswitch_13
    const-string v1, "04"

    .line 402
    .line 403
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 404
    .line 405
    .line 406
    move-result v1

    .line 407
    if-eqz v1, :cond_8

    .line 408
    .line 409
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 410
    .line 411
    .line 412
    move-result-object v1

    .line 413
    goto :goto_4

    .line 414
    :pswitch_14
    const-string v1, "03"

    .line 415
    .line 416
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 417
    .line 418
    .line 419
    move-result v1

    .line 420
    if-eqz v1, :cond_8

    .line 421
    .line 422
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 423
    .line 424
    .line 425
    move-result-object v1

    .line 426
    goto :goto_4

    .line 427
    :pswitch_15
    const-string v1, "02"

    .line 428
    .line 429
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 430
    .line 431
    .line 432
    move-result v1

    .line 433
    if-eqz v1, :cond_8

    .line 434
    .line 435
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 436
    .line 437
    .line 438
    move-result-object v1

    .line 439
    goto :goto_4

    .line 440
    :pswitch_16
    const-string v1, "01"

    .line 441
    .line 442
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 443
    .line 444
    .line 445
    move-result v1

    .line 446
    if-eqz v1, :cond_8

    .line 447
    .line 448
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 449
    .line 450
    .line 451
    move-result-object v1

    .line 452
    :goto_4
    if-nez v1, :cond_a

    .line 453
    .line 454
    const-string v1, "Unknown Dolby Vision level string: "

    .line 455
    .line 456
    invoke-static {v0, v1, v11}, La/r;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    .line 458
    .line 459
    goto/16 :goto_0

    .line 460
    .line 461
    :cond_a
    new-instance v2, Landroid/util/Pair;

    .line 462
    .line 463
    invoke-direct {v2, v3, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 464
    .line 465
    .line 466
    goto/16 :goto_10

    .line 467
    .line 468
    :cond_b
    const/16 v16, 0x1000

    .line 469
    .line 470
    const/16 v17, 0x800

    .line 471
    .line 472
    const/16 v18, 0x400

    .line 473
    .line 474
    const/4 v3, 0x0

    .line 475
    aget-object v6, v1, v3

    .line 476
    .line 477
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    .line 478
    .line 479
    .line 480
    move-result v19

    .line 481
    const/4 v7, 0x6

    .line 482
    const/4 v8, -0x1

    .line 483
    sparse-switch v19, :sswitch_data_0

    .line 484
    .line 485
    .line 486
    goto :goto_5

    .line 487
    :sswitch_0
    const-string v9, "vp09"

    .line 488
    .line 489
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 490
    .line 491
    .line 492
    move-result v6

    .line 493
    if-eqz v6, :cond_c

    .line 494
    .line 495
    const/4 v6, 0x2

    .line 496
    goto :goto_6

    .line 497
    :sswitch_1
    const-string v9, "mp4a"

    .line 498
    .line 499
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 500
    .line 501
    .line 502
    move-result v6

    .line 503
    if-eqz v6, :cond_c

    .line 504
    .line 505
    const/4 v6, 0x6

    .line 506
    goto :goto_6

    .line 507
    :sswitch_2
    const-string v9, "hvc1"

    .line 508
    .line 509
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 510
    .line 511
    .line 512
    move-result v6

    .line 513
    if-eqz v6, :cond_c

    .line 514
    .line 515
    const/4 v6, 0x4

    .line 516
    goto :goto_6

    .line 517
    :sswitch_3
    const-string v9, "hev1"

    .line 518
    .line 519
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 520
    .line 521
    .line 522
    move-result v6

    .line 523
    if-eqz v6, :cond_c

    .line 524
    .line 525
    const/4 v6, 0x3

    .line 526
    goto :goto_6

    .line 527
    :sswitch_4
    const-string v9, "avc2"

    .line 528
    .line 529
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 530
    .line 531
    .line 532
    move-result v6

    .line 533
    if-eqz v6, :cond_c

    .line 534
    .line 535
    const/4 v6, 0x1

    .line 536
    goto :goto_6

    .line 537
    :sswitch_5
    const-string v9, "avc1"

    .line 538
    .line 539
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 540
    .line 541
    .line 542
    move-result v6

    .line 543
    if-eqz v6, :cond_c

    .line 544
    .line 545
    const/4 v6, 0x0

    .line 546
    goto :goto_6

    .line 547
    :sswitch_6
    const-string v9, "av01"

    .line 548
    .line 549
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 550
    .line 551
    .line 552
    move-result v6

    .line 553
    if-eqz v6, :cond_c

    .line 554
    .line 555
    const/4 v6, 0x5

    .line 556
    goto :goto_6

    .line 557
    :cond_c
    :goto_5
    const/4 v6, -0x1

    .line 558
    :goto_6
    const/16 v9, 0x14

    .line 559
    .line 560
    packed-switch v6, :pswitch_data_3

    .line 561
    .line 562
    .line 563
    goto/16 :goto_0

    .line 564
    .line 565
    :pswitch_17
    array-length v0, v1

    .line 566
    if-eq v0, v13, :cond_d

    .line 567
    .line 568
    const-string v0, "Ignoring malformed MP4A codec string: "

    .line 569
    .line 570
    invoke-static {v5, v0, v11}, La/r;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    .line 572
    .line 573
    goto/16 :goto_0

    .line 574
    .line 575
    :cond_d
    :try_start_0
    aget-object v0, v1, v4

    .line 576
    .line 577
    invoke-static {v0, v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    .line 578
    .line 579
    .line 580
    move-result v0

    .line 581
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/va;->d(I)Ljava/lang/String;

    .line 582
    .line 583
    .line 584
    move-result-object v0

    .line 585
    const-string v6, "audio/mp4a-latm"

    .line 586
    .line 587
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 588
    .line 589
    .line 590
    move-result v0

    .line 591
    if-eqz v0, :cond_0

    .line 592
    .line 593
    aget-object v0, v1, v2

    .line 594
    .line 595
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 596
    .line 597
    .line 598
    move-result v0

    .line 599
    const/16 v1, 0x11

    .line 600
    .line 601
    if-eq v0, v1, :cond_13

    .line 602
    .line 603
    if-eq v0, v9, :cond_12

    .line 604
    .line 605
    const/16 v1, 0x17

    .line 606
    .line 607
    if-eq v0, v1, :cond_11

    .line 608
    .line 609
    const/16 v1, 0x1d

    .line 610
    .line 611
    if-eq v0, v1, :cond_10

    .line 612
    .line 613
    const/16 v1, 0x27

    .line 614
    .line 615
    if-eq v0, v1, :cond_f

    .line 616
    .line 617
    const/16 v1, 0x2a

    .line 618
    .line 619
    if-eq v0, v1, :cond_e

    .line 620
    .line 621
    packed-switch v0, :pswitch_data_4

    .line 622
    .line 623
    .line 624
    const/4 v13, -0x1

    .line 625
    goto :goto_7

    .line 626
    :pswitch_18
    const/4 v13, 0x6

    .line 627
    goto :goto_7

    .line 628
    :pswitch_19
    const/4 v13, 0x5

    .line 629
    goto :goto_7

    .line 630
    :pswitch_1a
    const/4 v13, 0x4

    .line 631
    goto :goto_7

    .line 632
    :pswitch_1b
    const/4 v13, 0x2

    .line 633
    goto :goto_7

    .line 634
    :pswitch_1c
    const/4 v13, 0x1

    .line 635
    goto :goto_7

    .line 636
    :cond_e
    const/16 v13, 0x2a

    .line 637
    .line 638
    goto :goto_7

    .line 639
    :cond_f
    const/16 v13, 0x27

    .line 640
    .line 641
    goto :goto_7

    .line 642
    :cond_10
    const/16 v13, 0x1d

    .line 643
    .line 644
    goto :goto_7

    .line 645
    :cond_11
    const/16 v13, 0x17

    .line 646
    .line 647
    goto :goto_7

    .line 648
    :cond_12
    const/16 v13, 0x14

    .line 649
    .line 650
    goto :goto_7

    .line 651
    :cond_13
    const/16 v13, 0x11

    .line 652
    .line 653
    :goto_7
    :pswitch_1d
    if-eq v13, v8, :cond_0

    .line 654
    .line 655
    new-instance v0, Landroid/util/Pair;

    .line 656
    .line 657
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 658
    .line 659
    .line 660
    move-result-object v1

    .line 661
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 662
    .line 663
    .line 664
    move-result-object v2

    .line 665
    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 666
    .line 667
    .line 668
    :goto_8
    move-object v2, v0

    .line 669
    goto/16 :goto_10

    .line 670
    .line 671
    :catch_0
    const-string v0, "Ignoring malformed MP4A codec string: "

    .line 672
    .line 673
    invoke-static {v5, v0, v11}, La/r;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 674
    .line 675
    .line 676
    goto/16 :goto_0

    .line 677
    .line 678
    :pswitch_1e
    array-length v6, v1

    .line 679
    if-ge v6, v15, :cond_14

    .line 680
    .line 681
    const-string v0, "Ignoring malformed AV1 codec string: "

    .line 682
    .line 683
    invoke-static {v5, v0, v11}, La/r;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 684
    .line 685
    .line 686
    goto/16 :goto_0

    .line 687
    .line 688
    :cond_14
    :try_start_1
    aget-object v6, v1, v4

    .line 689
    .line 690
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 691
    .line 692
    .line 693
    move-result v6

    .line 694
    aget-object v9, v1, v2

    .line 695
    .line 696
    invoke-virtual {v9, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 697
    .line 698
    .line 699
    move-result-object v3

    .line 700
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 701
    .line 702
    .line 703
    move-result v3

    .line 704
    aget-object v1, v1, v13

    .line 705
    .line 706
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 707
    .line 708
    .line 709
    move-result v1
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 710
    if-eqz v6, :cond_15

    .line 711
    .line 712
    const-string v0, "Unknown AV1 profile: "

    .line 713
    .line 714
    invoke-static {v0, v6, v11}, La/r;->p(Ljava/lang/String;ILjava/lang/String;)V

    .line 715
    .line 716
    .line 717
    goto/16 :goto_0

    .line 718
    .line 719
    :cond_15
    if-eq v1, v12, :cond_19

    .line 720
    .line 721
    const/16 v5, 0xa

    .line 722
    .line 723
    if-eq v1, v5, :cond_16

    .line 724
    .line 725
    const-string v0, "Unknown AV1 bit depth: "

    .line 726
    .line 727
    invoke-static {v0, v1, v11}, La/r;->p(Ljava/lang/String;ILjava/lang/String;)V

    .line 728
    .line 729
    .line 730
    goto/16 :goto_0

    .line 731
    .line 732
    :cond_16
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/p0;->z:Lcom/google/android/gms/internal/ads/rL;

    .line 733
    .line 734
    if-eqz v0, :cond_18

    .line 735
    .line 736
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/rL;->d:[B

    .line 737
    .line 738
    if-nez v1, :cond_17

    .line 739
    .line 740
    const/4 v1, 0x7

    .line 741
    iget v0, v0, Lcom/google/android/gms/internal/ads/rL;->c:I

    .line 742
    .line 743
    if-eq v0, v1, :cond_17

    .line 744
    .line 745
    if-ne v0, v7, :cond_18

    .line 746
    .line 747
    :cond_17
    const/16 v0, 0x1000

    .line 748
    .line 749
    goto :goto_9

    .line 750
    :cond_18
    const/4 v0, 0x2

    .line 751
    goto :goto_9

    .line 752
    :cond_19
    const/4 v0, 0x1

    .line 753
    :goto_9
    packed-switch v3, :pswitch_data_5

    .line 754
    .line 755
    .line 756
    const/4 v4, -0x1

    .line 757
    goto :goto_a

    .line 758
    :pswitch_1f
    const/high16 v4, 0x800000

    .line 759
    .line 760
    goto :goto_a

    .line 761
    :pswitch_20
    const/high16 v4, 0x400000

    .line 762
    .line 763
    goto :goto_a

    .line 764
    :pswitch_21
    const/high16 v4, 0x200000

    .line 765
    .line 766
    goto :goto_a

    .line 767
    :pswitch_22
    const/high16 v4, 0x100000

    .line 768
    .line 769
    goto :goto_a

    .line 770
    :pswitch_23
    const/high16 v4, 0x80000

    .line 771
    .line 772
    goto :goto_a

    .line 773
    :pswitch_24
    const/high16 v4, 0x40000

    .line 774
    .line 775
    goto :goto_a

    .line 776
    :pswitch_25
    const/high16 v4, 0x20000

    .line 777
    .line 778
    goto :goto_a

    .line 779
    :pswitch_26
    const/high16 v4, 0x10000

    .line 780
    .line 781
    goto :goto_a

    .line 782
    :pswitch_27
    const v4, 0x8000

    .line 783
    .line 784
    .line 785
    goto :goto_a

    .line 786
    :pswitch_28
    const/16 v4, 0x4000

    .line 787
    .line 788
    goto :goto_a

    .line 789
    :pswitch_29
    const/16 v4, 0x2000

    .line 790
    .line 791
    goto :goto_a

    .line 792
    :pswitch_2a
    const/16 v4, 0x1000

    .line 793
    .line 794
    goto :goto_a

    .line 795
    :pswitch_2b
    const/16 v4, 0x800

    .line 796
    .line 797
    goto :goto_a

    .line 798
    :pswitch_2c
    const/16 v4, 0x400

    .line 799
    .line 800
    goto :goto_a

    .line 801
    :pswitch_2d
    const/16 v4, 0x200

    .line 802
    .line 803
    goto :goto_a

    .line 804
    :pswitch_2e
    const/16 v4, 0x100

    .line 805
    .line 806
    goto :goto_a

    .line 807
    :pswitch_2f
    const/16 v4, 0x80

    .line 808
    .line 809
    goto :goto_a

    .line 810
    :pswitch_30
    const/16 v4, 0x40

    .line 811
    .line 812
    goto :goto_a

    .line 813
    :pswitch_31
    const/16 v4, 0x20

    .line 814
    .line 815
    goto :goto_a

    .line 816
    :pswitch_32
    const/16 v4, 0x10

    .line 817
    .line 818
    goto :goto_a

    .line 819
    :pswitch_33
    const/16 v4, 0x8

    .line 820
    .line 821
    goto :goto_a

    .line 822
    :pswitch_34
    const/4 v4, 0x4

    .line 823
    goto :goto_a

    .line 824
    :pswitch_35
    const/4 v4, 0x2

    .line 825
    :goto_a
    :pswitch_36
    if-ne v4, v8, :cond_1a

    .line 826
    .line 827
    const-string v0, "Unknown AV1 level: "

    .line 828
    .line 829
    invoke-static {v0, v3, v11}, La/r;->p(Ljava/lang/String;ILjava/lang/String;)V

    .line 830
    .line 831
    .line 832
    goto/16 :goto_0

    .line 833
    .line 834
    :cond_1a
    new-instance v2, Landroid/util/Pair;

    .line 835
    .line 836
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 837
    .line 838
    .line 839
    move-result-object v0

    .line 840
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 841
    .line 842
    .line 843
    move-result-object v1

    .line 844
    invoke-direct {v2, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 845
    .line 846
    .line 847
    goto/16 :goto_10

    .line 848
    .line 849
    :catch_1
    const-string v0, "Ignoring malformed AV1 codec string: "

    .line 850
    .line 851
    invoke-static {v5, v0, v11}, La/r;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 852
    .line 853
    .line 854
    goto/16 :goto_0

    .line 855
    .line 856
    :pswitch_37
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/p0;->z:Lcom/google/android/gms/internal/ads/rL;

    .line 857
    .line 858
    invoke-static {v5, v1, v0}, Lcom/google/android/gms/internal/ads/cN;->e(Ljava/lang/String;[Ljava/lang/String;Lcom/google/android/gms/internal/ads/rL;)Landroid/util/Pair;

    .line 859
    .line 860
    .line 861
    move-result-object v0

    .line 862
    return-object v0

    .line 863
    :pswitch_38
    array-length v0, v1

    .line 864
    if-ge v0, v13, :cond_1b

    .line 865
    .line 866
    const-string v0, "Ignoring malformed VP9 codec string: "

    .line 867
    .line 868
    invoke-static {v5, v0, v11}, La/r;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 869
    .line 870
    .line 871
    goto/16 :goto_0

    .line 872
    .line 873
    :cond_1b
    :try_start_2
    aget-object v0, v1, v4

    .line 874
    .line 875
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 876
    .line 877
    .line 878
    move-result v0

    .line 879
    aget-object v1, v1, v2

    .line 880
    .line 881
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 882
    .line 883
    .line 884
    move-result v1
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    .line 885
    if-eqz v0, :cond_1f

    .line 886
    .line 887
    if-eq v0, v4, :cond_1e

    .line 888
    .line 889
    if-eq v0, v2, :cond_1d

    .line 890
    .line 891
    if-eq v0, v13, :cond_1c

    .line 892
    .line 893
    const/4 v3, -0x1

    .line 894
    goto :goto_b

    .line 895
    :cond_1c
    const/16 v3, 0x8

    .line 896
    .line 897
    goto :goto_b

    .line 898
    :cond_1d
    const/4 v3, 0x4

    .line 899
    goto :goto_b

    .line 900
    :cond_1e
    const/4 v3, 0x2

    .line 901
    goto :goto_b

    .line 902
    :cond_1f
    const/4 v3, 0x1

    .line 903
    :goto_b
    if-ne v3, v8, :cond_20

    .line 904
    .line 905
    const-string v1, "Unknown VP9 profile: "

    .line 906
    .line 907
    invoke-static {v1, v0, v11}, La/r;->p(Ljava/lang/String;ILjava/lang/String;)V

    .line 908
    .line 909
    .line 910
    goto/16 :goto_0

    .line 911
    .line 912
    :cond_20
    const/16 v0, 0xa

    .line 913
    .line 914
    if-eq v1, v0, :cond_2a

    .line 915
    .line 916
    const/16 v0, 0xb

    .line 917
    .line 918
    if-eq v1, v0, :cond_29

    .line 919
    .line 920
    if-eq v1, v9, :cond_28

    .line 921
    .line 922
    const/16 v0, 0x15

    .line 923
    .line 924
    if-eq v1, v0, :cond_27

    .line 925
    .line 926
    const/16 v0, 0x1e

    .line 927
    .line 928
    if-eq v1, v0, :cond_26

    .line 929
    .line 930
    const/16 v0, 0x1f

    .line 931
    .line 932
    if-eq v1, v0, :cond_25

    .line 933
    .line 934
    const/16 v0, 0x28

    .line 935
    .line 936
    if-eq v1, v0, :cond_24

    .line 937
    .line 938
    const/16 v0, 0x29

    .line 939
    .line 940
    if-eq v1, v0, :cond_23

    .line 941
    .line 942
    const/16 v0, 0x32

    .line 943
    .line 944
    if-eq v1, v0, :cond_22

    .line 945
    .line 946
    const/16 v0, 0x33

    .line 947
    .line 948
    if-eq v1, v0, :cond_21

    .line 949
    .line 950
    packed-switch v1, :pswitch_data_6

    .line 951
    .line 952
    .line 953
    const/4 v4, -0x1

    .line 954
    goto :goto_c

    .line 955
    :pswitch_39
    const/16 v4, 0x2000

    .line 956
    .line 957
    goto :goto_c

    .line 958
    :pswitch_3a
    const/16 v4, 0x1000

    .line 959
    .line 960
    goto :goto_c

    .line 961
    :pswitch_3b
    const/16 v4, 0x800

    .line 962
    .line 963
    goto :goto_c

    .line 964
    :cond_21
    const/16 v4, 0x200

    .line 965
    .line 966
    goto :goto_c

    .line 967
    :cond_22
    const/16 v4, 0x100

    .line 968
    .line 969
    goto :goto_c

    .line 970
    :cond_23
    const/16 v4, 0x80

    .line 971
    .line 972
    goto :goto_c

    .line 973
    :cond_24
    const/16 v4, 0x40

    .line 974
    .line 975
    goto :goto_c

    .line 976
    :cond_25
    const/16 v4, 0x20

    .line 977
    .line 978
    goto :goto_c

    .line 979
    :cond_26
    const/16 v4, 0x10

    .line 980
    .line 981
    goto :goto_c

    .line 982
    :cond_27
    const/16 v4, 0x8

    .line 983
    .line 984
    goto :goto_c

    .line 985
    :cond_28
    const/4 v4, 0x4

    .line 986
    goto :goto_c

    .line 987
    :cond_29
    const/4 v4, 0x2

    .line 988
    :cond_2a
    :goto_c
    if-ne v4, v8, :cond_2b

    .line 989
    .line 990
    const-string v0, "Unknown VP9 level: "

    .line 991
    .line 992
    invoke-static {v0, v1, v11}, La/r;->p(Ljava/lang/String;ILjava/lang/String;)V

    .line 993
    .line 994
    .line 995
    goto/16 :goto_0

    .line 996
    .line 997
    :cond_2b
    new-instance v2, Landroid/util/Pair;

    .line 998
    .line 999
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1000
    .line 1001
    .line 1002
    move-result-object v0

    .line 1003
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1004
    .line 1005
    .line 1006
    move-result-object v1

    .line 1007
    invoke-direct {v2, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1008
    .line 1009
    .line 1010
    goto/16 :goto_10

    .line 1011
    .line 1012
    :catch_2
    const-string v0, "Ignoring malformed VP9 codec string: "

    .line 1013
    .line 1014
    invoke-static {v5, v0, v11}, La/r;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1015
    .line 1016
    .line 1017
    goto/16 :goto_0

    .line 1018
    .line 1019
    :pswitch_3c
    array-length v0, v1

    .line 1020
    const-string v6, "Ignoring malformed AVC codec string: "

    .line 1021
    .line 1022
    if-ge v0, v2, :cond_2c

    .line 1023
    .line 1024
    invoke-static {v5, v6, v11}, La/r;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1025
    .line 1026
    .line 1027
    goto/16 :goto_0

    .line 1028
    .line 1029
    :cond_2c
    :try_start_3
    aget-object v9, v1, v4

    .line 1030
    .line 1031
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    .line 1032
    .line 1033
    .line 1034
    move-result v9

    .line 1035
    if-ne v9, v7, :cond_2d

    .line 1036
    .line 1037
    aget-object v0, v1, v4

    .line 1038
    .line 1039
    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 1040
    .line 1041
    .line 1042
    move-result-object v0

    .line 1043
    invoke-static {v0, v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    .line 1044
    .line 1045
    .line 1046
    move-result v0

    .line 1047
    aget-object v1, v1, v4

    .line 1048
    .line 1049
    invoke-virtual {v1, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 1050
    .line 1051
    .line 1052
    move-result-object v1

    .line 1053
    invoke-static {v1, v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    .line 1054
    .line 1055
    .line 1056
    move-result v1

    .line 1057
    goto :goto_d

    .line 1058
    :cond_2d
    if-lt v0, v13, :cond_37

    .line 1059
    .line 1060
    aget-object v0, v1, v4

    .line 1061
    .line 1062
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 1063
    .line 1064
    .line 1065
    move-result v0

    .line 1066
    aget-object v1, v1, v2

    .line 1067
    .line 1068
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 1069
    .line 1070
    .line 1071
    move-result v1
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    .line 1072
    :goto_d
    const/16 v3, 0x42

    .line 1073
    .line 1074
    if-eq v0, v3, :cond_33

    .line 1075
    .line 1076
    const/16 v3, 0x4d

    .line 1077
    .line 1078
    if-eq v0, v3, :cond_34

    .line 1079
    .line 1080
    const/16 v2, 0x58

    .line 1081
    .line 1082
    if-eq v0, v2, :cond_32

    .line 1083
    .line 1084
    const/16 v2, 0x64

    .line 1085
    .line 1086
    if-eq v0, v2, :cond_31

    .line 1087
    .line 1088
    const/16 v2, 0x6e

    .line 1089
    .line 1090
    if-eq v0, v2, :cond_30

    .line 1091
    .line 1092
    const/16 v2, 0x7a

    .line 1093
    .line 1094
    if-eq v0, v2, :cond_2f

    .line 1095
    .line 1096
    const/16 v2, 0xf4

    .line 1097
    .line 1098
    if-eq v0, v2, :cond_2e

    .line 1099
    .line 1100
    const/4 v2, -0x1

    .line 1101
    goto :goto_e

    .line 1102
    :cond_2e
    const/16 v2, 0x40

    .line 1103
    .line 1104
    goto :goto_e

    .line 1105
    :cond_2f
    const/16 v2, 0x20

    .line 1106
    .line 1107
    goto :goto_e

    .line 1108
    :cond_30
    const/16 v2, 0x10

    .line 1109
    .line 1110
    goto :goto_e

    .line 1111
    :cond_31
    const/16 v2, 0x8

    .line 1112
    .line 1113
    goto :goto_e

    .line 1114
    :cond_32
    const/4 v2, 0x4

    .line 1115
    goto :goto_e

    .line 1116
    :cond_33
    const/4 v2, 0x1

    .line 1117
    :cond_34
    :goto_e
    if-ne v2, v8, :cond_35

    .line 1118
    .line 1119
    const-string v1, "Unknown AVC profile: "

    .line 1120
    .line 1121
    invoke-static {v1, v0, v11}, La/r;->p(Ljava/lang/String;ILjava/lang/String;)V

    .line 1122
    .line 1123
    .line 1124
    goto/16 :goto_0

    .line 1125
    .line 1126
    :cond_35
    packed-switch v1, :pswitch_data_7

    .line 1127
    .line 1128
    .line 1129
    packed-switch v1, :pswitch_data_8

    .line 1130
    .line 1131
    .line 1132
    packed-switch v1, :pswitch_data_9

    .line 1133
    .line 1134
    .line 1135
    packed-switch v1, :pswitch_data_a

    .line 1136
    .line 1137
    .line 1138
    packed-switch v1, :pswitch_data_b

    .line 1139
    .line 1140
    .line 1141
    const/4 v4, -0x1

    .line 1142
    goto :goto_f

    .line 1143
    :pswitch_3d
    const/high16 v4, 0x10000

    .line 1144
    .line 1145
    goto :goto_f

    .line 1146
    :pswitch_3e
    const v4, 0x8000

    .line 1147
    .line 1148
    .line 1149
    goto :goto_f

    .line 1150
    :pswitch_3f
    const/16 v4, 0x4000

    .line 1151
    .line 1152
    goto :goto_f

    .line 1153
    :pswitch_40
    const/16 v4, 0x2000

    .line 1154
    .line 1155
    goto :goto_f

    .line 1156
    :pswitch_41
    const/16 v4, 0x1000

    .line 1157
    .line 1158
    goto :goto_f

    .line 1159
    :pswitch_42
    const/16 v4, 0x800

    .line 1160
    .line 1161
    goto :goto_f

    .line 1162
    :pswitch_43
    const/16 v4, 0x400

    .line 1163
    .line 1164
    goto :goto_f

    .line 1165
    :pswitch_44
    const/16 v4, 0x200

    .line 1166
    .line 1167
    goto :goto_f

    .line 1168
    :pswitch_45
    const/16 v4, 0x100

    .line 1169
    .line 1170
    goto :goto_f

    .line 1171
    :pswitch_46
    const/16 v4, 0x80

    .line 1172
    .line 1173
    goto :goto_f

    .line 1174
    :pswitch_47
    const/16 v4, 0x40

    .line 1175
    .line 1176
    goto :goto_f

    .line 1177
    :pswitch_48
    const/16 v4, 0x20

    .line 1178
    .line 1179
    goto :goto_f

    .line 1180
    :pswitch_49
    const/16 v4, 0x10

    .line 1181
    .line 1182
    goto :goto_f

    .line 1183
    :pswitch_4a
    const/16 v4, 0x8

    .line 1184
    .line 1185
    goto :goto_f

    .line 1186
    :pswitch_4b
    const/4 v4, 0x4

    .line 1187
    :goto_f
    :pswitch_4c
    if-ne v4, v8, :cond_36

    .line 1188
    .line 1189
    const-string v0, "Unknown AVC level: "

    .line 1190
    .line 1191
    invoke-static {v0, v1, v11}, La/r;->p(Ljava/lang/String;ILjava/lang/String;)V

    .line 1192
    .line 1193
    .line 1194
    goto/16 :goto_0

    .line 1195
    .line 1196
    :cond_36
    new-instance v0, Landroid/util/Pair;

    .line 1197
    .line 1198
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1199
    .line 1200
    .line 1201
    move-result-object v1

    .line 1202
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1203
    .line 1204
    .line 1205
    move-result-object v2

    .line 1206
    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1207
    .line 1208
    .line 1209
    goto/16 :goto_8

    .line 1210
    .line 1211
    :cond_37
    :try_start_4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1212
    .line 1213
    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1214
    .line 1215
    .line 1216
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1217
    .line 1218
    .line 1219
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1220
    .line 1221
    .line 1222
    move-result-object v0

    .line 1223
    invoke-static {v11, v0}, Lcom/google/android/gms/internal/ads/Zo;->f(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_3

    .line 1224
    .line 1225
    .line 1226
    goto/16 :goto_0

    .line 1227
    .line 1228
    :catch_3
    invoke-static {v5, v6, v11}, La/r;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1229
    .line 1230
    .line 1231
    goto/16 :goto_0

    .line 1232
    .line 1233
    :goto_10
    return-object v2

    .line 1234
    nop

    .line 1235
    :pswitch_data_0
    .packed-switch 0x600
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 1236
    .line 1237
    .line 1238
    .line 1239
    .line 1240
    .line 1241
    .line 1242
    .line 1243
    .line 1244
    .line 1245
    .line 1246
    .line 1247
    .line 1248
    .line 1249
    .line 1250
    .line 1251
    .line 1252
    .line 1253
    .line 1254
    .line 1255
    .line 1256
    .line 1257
    .line 1258
    .line 1259
    :pswitch_data_1
    .packed-switch 0x601
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
    .end packed-switch

    .line 1260
    .line 1261
    .line 1262
    .line 1263
    .line 1264
    .line 1265
    .line 1266
    .line 1267
    .line 1268
    .line 1269
    .line 1270
    .line 1271
    .line 1272
    .line 1273
    .line 1274
    .line 1275
    .line 1276
    .line 1277
    .line 1278
    .line 1279
    .line 1280
    .line 1281
    :pswitch_data_2
    .packed-switch 0x61f
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
    .end packed-switch

    .line 1282
    .line 1283
    .line 1284
    .line 1285
    .line 1286
    .line 1287
    .line 1288
    .line 1289
    .line 1290
    .line 1291
    .line 1292
    .line 1293
    :sswitch_data_0
    .sparse-switch
        0x2dd8f6 -> :sswitch_6
        0x2ddf23 -> :sswitch_5
        0x2ddf24 -> :sswitch_4
        0x30d038 -> :sswitch_3
        0x310dbc -> :sswitch_2
        0x333790 -> :sswitch_1
        0x374e43 -> :sswitch_0
    .end sparse-switch

    .line 1294
    .line 1295
    .line 1296
    .line 1297
    .line 1298
    .line 1299
    .line 1300
    .line 1301
    .line 1302
    .line 1303
    .line 1304
    .line 1305
    .line 1306
    .line 1307
    .line 1308
    .line 1309
    .line 1310
    .line 1311
    .line 1312
    .line 1313
    .line 1314
    .line 1315
    .line 1316
    .line 1317
    .line 1318
    .line 1319
    .line 1320
    .line 1321
    .line 1322
    .line 1323
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_3c
        :pswitch_3c
        :pswitch_38
        :pswitch_37
        :pswitch_37
        :pswitch_1e
        :pswitch_17
    .end packed-switch

    .line 1324
    .line 1325
    .line 1326
    .line 1327
    .line 1328
    .line 1329
    .line 1330
    .line 1331
    .line 1332
    .line 1333
    .line 1334
    .line 1335
    .line 1336
    .line 1337
    .line 1338
    .line 1339
    .line 1340
    .line 1341
    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_1c
        :pswitch_1b
        :pswitch_1d
        :pswitch_1a
        :pswitch_19
        :pswitch_18
    .end packed-switch

    .line 1342
    .line 1343
    .line 1344
    .line 1345
    .line 1346
    .line 1347
    .line 1348
    .line 1349
    .line 1350
    .line 1351
    .line 1352
    .line 1353
    .line 1354
    .line 1355
    .line 1356
    .line 1357
    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
    .end packed-switch

    .line 1358
    .line 1359
    .line 1360
    .line 1361
    .line 1362
    .line 1363
    .line 1364
    .line 1365
    .line 1366
    .line 1367
    .line 1368
    .line 1369
    .line 1370
    .line 1371
    .line 1372
    .line 1373
    .line 1374
    .line 1375
    .line 1376
    .line 1377
    .line 1378
    .line 1379
    .line 1380
    .line 1381
    .line 1382
    .line 1383
    .line 1384
    .line 1385
    .line 1386
    .line 1387
    .line 1388
    .line 1389
    .line 1390
    .line 1391
    .line 1392
    .line 1393
    .line 1394
    .line 1395
    .line 1396
    .line 1397
    .line 1398
    .line 1399
    .line 1400
    .line 1401
    .line 1402
    .line 1403
    .line 1404
    .line 1405
    .line 1406
    .line 1407
    .line 1408
    .line 1409
    :pswitch_data_6
    .packed-switch 0x3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
    .end packed-switch

    .line 1410
    .line 1411
    .line 1412
    .line 1413
    .line 1414
    .line 1415
    .line 1416
    .line 1417
    .line 1418
    .line 1419
    :pswitch_data_7
    .packed-switch 0xa
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
    .end packed-switch

    .line 1420
    .line 1421
    .line 1422
    .line 1423
    .line 1424
    .line 1425
    .line 1426
    .line 1427
    .line 1428
    .line 1429
    .line 1430
    .line 1431
    :pswitch_data_8
    .packed-switch 0x14
        :pswitch_48
        :pswitch_47
        :pswitch_46
    .end packed-switch

    .line 1432
    .line 1433
    .line 1434
    .line 1435
    .line 1436
    .line 1437
    .line 1438
    .line 1439
    .line 1440
    .line 1441
    :pswitch_data_9
    .packed-switch 0x1e
        :pswitch_45
        :pswitch_44
        :pswitch_43
    .end packed-switch

    .line 1442
    .line 1443
    .line 1444
    .line 1445
    .line 1446
    .line 1447
    .line 1448
    .line 1449
    .line 1450
    .line 1451
    :pswitch_data_a
    .packed-switch 0x28
        :pswitch_42
        :pswitch_41
        :pswitch_40
    .end packed-switch

    .line 1452
    .line 1453
    .line 1454
    .line 1455
    .line 1456
    .line 1457
    .line 1458
    .line 1459
    .line 1460
    .line 1461
    :pswitch_data_b
    .packed-switch 0x32
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
    .end packed-switch
.end method

.method public static b(Lcom/google/android/gms/internal/ads/p0;)Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/p0;->m:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "audio/eac3-joc"

    .line 4
    .line 5
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const-string p0, "audio/eac3"

    .line 12
    .line 13
    return-object p0

    .line 14
    :cond_0
    const-string v0, "video/dolby-vision"

    .line 15
    .line 16
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/p0;->m:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_4

    .line 23
    .line 24
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/cN;->a(Lcom/google/android/gms/internal/ads/p0;)Landroid/util/Pair;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    if-eqz p0, :cond_4

    .line 29
    .line 30
    iget-object p0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast p0, Ljava/lang/Integer;

    .line 33
    .line 34
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 35
    .line 36
    .line 37
    move-result p0

    .line 38
    const/16 v0, 0x10

    .line 39
    .line 40
    if-eq p0, v0, :cond_5

    .line 41
    .line 42
    const/16 v0, 0x100

    .line 43
    .line 44
    if-ne p0, v0, :cond_1

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_1
    const/16 v0, 0x200

    .line 48
    .line 49
    if-ne p0, v0, :cond_2

    .line 50
    .line 51
    const-string p0, "video/avc"

    .line 52
    .line 53
    return-object p0

    .line 54
    :cond_2
    const/16 v0, 0x400

    .line 55
    .line 56
    if-eq p0, v0, :cond_3

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_3
    const-string p0, "video/av01"

    .line 60
    .line 61
    return-object p0

    .line 62
    :cond_4
    :goto_0
    const-string p0, "video/mv-hevc"

    .line 63
    .line 64
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result p0

    .line 68
    if-nez p0, :cond_5

    .line 69
    .line 70
    const/4 p0, 0x0

    .line 71
    return-object p0

    .line 72
    :cond_5
    :goto_1
    const-string p0, "video/hevc"

    .line 73
    .line 74
    return-object p0
.end method

.method public static declared-synchronized c(Ljava/lang/String;ZZ)Ljava/util/List;
    .locals 13

    .line 1
    const-string v0, "MediaCodecList API didn\'t list secure decoder for: "

    .line 2
    .line 3
    const-class v1, Lcom/google/android/gms/internal/ads/cN;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    new-instance v2, Lcom/google/android/gms/internal/ads/YM;

    .line 7
    .line 8
    invoke-direct {v2, p0, p1, p2}, Lcom/google/android/gms/internal/ads/YM;-><init>(Ljava/lang/String;ZZ)V

    .line 9
    .line 10
    .line 11
    sget-object v3, Lcom/google/android/gms/internal/ads/cN;->b:Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v4

    .line 17
    check-cast v4, Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    .line 19
    if-eqz v4, :cond_0

    .line 20
    .line 21
    monitor-exit v1

    .line 22
    return-object v4

    .line 23
    :cond_0
    :try_start_1
    new-instance v4, LK0/x;

    .line 24
    .line 25
    invoke-direct {v4, p1, p2}, LK0/x;-><init>(ZZ)V

    .line 26
    .line 27
    .line 28
    invoke-static {v2, v4}, Lcom/google/android/gms/internal/ads/cN;->f(Lcom/google/android/gms/internal/ads/YM;Lcom/google/android/gms/internal/ads/aN;)Ljava/util/ArrayList;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    const/4 v4, 0x0

    .line 33
    if-eqz p1, :cond_1

    .line 34
    .line 35
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    if-eqz p1, :cond_1

    .line 40
    .line 41
    sget p1, Lcom/google/android/gms/internal/ads/Et;->a:I

    .line 42
    .line 43
    const/16 v5, 0x17

    .line 44
    .line 45
    if-gt p1, v5, :cond_1

    .line 46
    .line 47
    new-instance p1, Lcom/google/android/gms/internal/ads/GH;

    .line 48
    .line 49
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 50
    .line 51
    .line 52
    invoke-static {v2, p1}, Lcom/google/android/gms/internal/ads/cN;->f(Lcom/google/android/gms/internal/ads/YM;Lcom/google/android/gms/internal/ads/aN;)Ljava/util/ArrayList;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    if-nez p1, :cond_1

    .line 61
    .line 62
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    check-cast p1, Lcom/google/android/gms/internal/ads/PM;

    .line 67
    .line 68
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/PM;->a:Ljava/lang/String;

    .line 69
    .line 70
    new-instance v5, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    const-string v0, ". Assuming: "

    .line 79
    .line 80
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    const-string v0, "MediaCodecUtil"

    .line 91
    .line 92
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/Zo;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    goto :goto_0

    .line 96
    :catchall_0
    move-exception p0

    .line 97
    goto/16 :goto_1

    .line 98
    .line 99
    :cond_1
    :goto_0
    const-string p1, "audio/raw"

    .line 100
    .line 101
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    move-result p0

    .line 105
    const/4 p1, 0x1

    .line 106
    if-eqz p0, :cond_3

    .line 107
    .line 108
    sget p0, Lcom/google/android/gms/internal/ads/Et;->a:I

    .line 109
    .line 110
    const/16 v0, 0x1a

    .line 111
    .line 112
    if-ge p0, v0, :cond_2

    .line 113
    .line 114
    sget-object p0, Lcom/google/android/gms/internal/ads/Et;->b:Ljava/lang/String;

    .line 115
    .line 116
    const-string v0, "R9"

    .line 117
    .line 118
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    move-result p0

    .line 122
    if-eqz p0, :cond_2

    .line 123
    .line 124
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 125
    .line 126
    .line 127
    move-result p0

    .line 128
    if-ne p0, p1, :cond_2

    .line 129
    .line 130
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object p0

    .line 134
    check-cast p0, Lcom/google/android/gms/internal/ads/PM;

    .line 135
    .line 136
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/PM;->a:Ljava/lang/String;

    .line 137
    .line 138
    const-string v0, "OMX.MTK.AUDIO.DECODER.RAW"

    .line 139
    .line 140
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 141
    .line 142
    .line 143
    move-result p0

    .line 144
    if-eqz p0, :cond_2

    .line 145
    .line 146
    const-string v5, "OMX.google.raw.decoder"

    .line 147
    .line 148
    const-string v6, "audio/raw"

    .line 149
    .line 150
    const-string v7, "audio/raw"

    .line 151
    .line 152
    const/4 v10, 0x1

    .line 153
    const/4 v11, 0x0

    .line 154
    const/4 v12, 0x0

    .line 155
    const/4 v8, 0x0

    .line 156
    const/4 v9, 0x0

    .line 157
    invoke-static/range {v5 .. v12}, Lcom/google/android/gms/internal/ads/PM;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;ZZZZ)Lcom/google/android/gms/internal/ads/PM;

    .line 158
    .line 159
    .line 160
    move-result-object p0

    .line 161
    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    .line 163
    .line 164
    :cond_2
    new-instance p0, Lcom/google/android/gms/internal/ads/GH;

    .line 165
    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    .line 168
    .line 169
    new-instance v0, Lcom/google/android/gms/internal/ads/XM;

    .line 170
    .line 171
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/XM;-><init>(Lcom/google/android/gms/internal/ads/bN;)V

    .line 172
    .line 173
    .line 174
    invoke-static {p2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 175
    .line 176
    .line 177
    :cond_3
    sget p0, Lcom/google/android/gms/internal/ads/Et;->a:I

    .line 178
    .line 179
    const/16 v0, 0x20

    .line 180
    .line 181
    if-ge p0, v0, :cond_4

    .line 182
    .line 183
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 184
    .line 185
    .line 186
    move-result p0

    .line 187
    if-le p0, p1, :cond_4

    .line 188
    .line 189
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    move-result-object p0

    .line 193
    check-cast p0, Lcom/google/android/gms/internal/ads/PM;

    .line 194
    .line 195
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/PM;->a:Ljava/lang/String;

    .line 196
    .line 197
    const-string p1, "OMX.qti.audio.decoder.flac"

    .line 198
    .line 199
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 200
    .line 201
    .line 202
    move-result p0

    .line 203
    if-eqz p0, :cond_4

    .line 204
    .line 205
    invoke-interface {p2, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 206
    .line 207
    .line 208
    move-result-object p0

    .line 209
    check-cast p0, Lcom/google/android/gms/internal/ads/PM;

    .line 210
    .line 211
    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    .line 213
    .line 214
    :cond_4
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/uA;->t(Ljava/util/Collection;)Lcom/google/android/gms/internal/ads/uA;

    .line 215
    .line 216
    .line 217
    move-result-object p0

    .line 218
    invoke-virtual {v3, v2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 219
    .line 220
    .line 221
    monitor-exit v1

    .line 222
    return-object p0

    .line 223
    :goto_1
    monitor-exit v1

    .line 224
    throw p0
.end method

.method public static d(Lcom/google/android/gms/internal/ads/WM;Lcom/google/android/gms/internal/ads/p0;ZZ)Lcom/google/android/gms/internal/ads/PA;
    .locals 1

    .line 1
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/p0;->m:Ljava/lang/String;

    .line 2
    .line 3
    check-cast p0, Lcom/google/android/gms/internal/ads/y1;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-static {v0, p2, p3}, Lcom/google/android/gms/internal/ads/cN;->c(Ljava/lang/String;ZZ)Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/cN;->b(Lcom/google/android/gms/internal/ads/p0;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    if-nez p1, :cond_0

    .line 17
    .line 18
    sget-object p0, Lcom/google/android/gms/internal/ads/PA;->K:Lcom/google/android/gms/internal/ads/PA;

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/ads/cN;->c(Ljava/lang/String;ZZ)Ljava/util/List;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    :goto_0
    new-instance p1, Lcom/google/android/gms/internal/ads/rA;

    .line 29
    .line 30
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/rA;-><init>()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/oA;->d(Ljava/lang/Iterable;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ads/oA;->d(Ljava/lang/Iterable;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/rA;->h()Lcom/google/android/gms/internal/ads/PA;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    return-object p0
.end method

.method public static e(Ljava/lang/String;[Ljava/lang/String;Lcom/google/android/gms/internal/ads/rL;)Landroid/util/Pair;
    .locals 10

    .line 1
    array-length v0, p1

    .line 2
    const-string v1, "Ignoring malformed HEVC codec string: "

    .line 3
    .line 4
    const-string v2, "MediaCodecUtil"

    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    const/4 v4, 0x4

    .line 8
    if-ge v0, v4, :cond_0

    .line 9
    .line 10
    invoke-static {p0, v1, v2}, La/r;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    return-object v3

    .line 14
    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/cN;->a:Ljava/util/regex/Pattern;

    .line 15
    .line 16
    const/4 v5, 0x1

    .line 17
    aget-object v6, p1, v5

    .line 18
    .line 19
    invoke-virtual {v0, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    .line 24
    .line 25
    .line 26
    move-result v6

    .line 27
    if-nez v6, :cond_1

    .line 28
    .line 29
    invoke-static {p0, v1, v2}, La/r;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    return-object v3

    .line 33
    :cond_1
    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    const-string v0, "1"

    .line 38
    .line 39
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    const/16 v1, 0x1000

    .line 44
    .line 45
    const/4 v6, 0x6

    .line 46
    const/4 v7, 0x2

    .line 47
    if-eqz v0, :cond_2

    .line 48
    .line 49
    const/4 p0, 0x1

    .line 50
    goto :goto_0

    .line 51
    :cond_2
    const-string v0, "2"

    .line 52
    .line 53
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-eqz v0, :cond_4

    .line 58
    .line 59
    if-eqz p2, :cond_3

    .line 60
    .line 61
    iget p0, p2, Lcom/google/android/gms/internal/ads/rL;->c:I

    .line 62
    .line 63
    if-ne p0, v6, :cond_3

    .line 64
    .line 65
    const/16 p0, 0x1000

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_3
    const/4 p0, 0x2

    .line 69
    goto :goto_0

    .line 70
    :cond_4
    const-string p2, "6"

    .line 71
    .line 72
    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result p2

    .line 76
    if-eqz p2, :cond_8

    .line 77
    .line 78
    const/4 p0, 0x6

    .line 79
    :goto_0
    const/4 p2, 0x3

    .line 80
    aget-object p1, p1, p2

    .line 81
    .line 82
    if-nez p1, :cond_5

    .line 83
    .line 84
    :goto_1
    move-object p2, v3

    .line 85
    goto/16 :goto_4

    .line 86
    .line 87
    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    const/16 v8, 0x10

    .line 92
    .line 93
    const/16 v9, 0x8

    .line 94
    .line 95
    sparse-switch v0, :sswitch_data_0

    .line 96
    .line 97
    .line 98
    goto/16 :goto_2

    .line 99
    .line 100
    :sswitch_0
    const-string p2, "L186"

    .line 101
    .line 102
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result p2

    .line 106
    if-eqz p2, :cond_6

    .line 107
    .line 108
    const/16 v6, 0xc

    .line 109
    .line 110
    goto/16 :goto_3

    .line 111
    .line 112
    :sswitch_1
    const-string p2, "L183"

    .line 113
    .line 114
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    move-result p2

    .line 118
    if-eqz p2, :cond_6

    .line 119
    .line 120
    const/16 v6, 0xb

    .line 121
    .line 122
    goto/16 :goto_3

    .line 123
    .line 124
    :sswitch_2
    const-string p2, "L180"

    .line 125
    .line 126
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    move-result p2

    .line 130
    if-eqz p2, :cond_6

    .line 131
    .line 132
    const/16 v6, 0xa

    .line 133
    .line 134
    goto/16 :goto_3

    .line 135
    .line 136
    :sswitch_3
    const-string p2, "L156"

    .line 137
    .line 138
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    move-result p2

    .line 142
    if-eqz p2, :cond_6

    .line 143
    .line 144
    const/16 v6, 0x9

    .line 145
    .line 146
    goto/16 :goto_3

    .line 147
    .line 148
    :sswitch_4
    const-string p2, "L153"

    .line 149
    .line 150
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 151
    .line 152
    .line 153
    move-result p2

    .line 154
    if-eqz p2, :cond_6

    .line 155
    .line 156
    const/16 v6, 0x8

    .line 157
    .line 158
    goto/16 :goto_3

    .line 159
    .line 160
    :sswitch_5
    const-string p2, "L150"

    .line 161
    .line 162
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 163
    .line 164
    .line 165
    move-result p2

    .line 166
    if-eqz p2, :cond_6

    .line 167
    .line 168
    const/4 v6, 0x7

    .line 169
    goto/16 :goto_3

    .line 170
    .line 171
    :sswitch_6
    const-string p2, "L123"

    .line 172
    .line 173
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 174
    .line 175
    .line 176
    move-result p2

    .line 177
    if-eqz p2, :cond_6

    .line 178
    .line 179
    goto/16 :goto_3

    .line 180
    .line 181
    :sswitch_7
    const-string p2, "L120"

    .line 182
    .line 183
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 184
    .line 185
    .line 186
    move-result p2

    .line 187
    if-eqz p2, :cond_6

    .line 188
    .line 189
    const/4 v6, 0x5

    .line 190
    goto/16 :goto_3

    .line 191
    .line 192
    :sswitch_8
    const-string p2, "H186"

    .line 193
    .line 194
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 195
    .line 196
    .line 197
    move-result p2

    .line 198
    if-eqz p2, :cond_6

    .line 199
    .line 200
    const/16 v6, 0x19

    .line 201
    .line 202
    goto/16 :goto_3

    .line 203
    .line 204
    :sswitch_9
    const-string p2, "H183"

    .line 205
    .line 206
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 207
    .line 208
    .line 209
    move-result p2

    .line 210
    if-eqz p2, :cond_6

    .line 211
    .line 212
    const/16 v6, 0x18

    .line 213
    .line 214
    goto/16 :goto_3

    .line 215
    .line 216
    :sswitch_a
    const-string p2, "H180"

    .line 217
    .line 218
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 219
    .line 220
    .line 221
    move-result p2

    .line 222
    if-eqz p2, :cond_6

    .line 223
    .line 224
    const/16 v6, 0x17

    .line 225
    .line 226
    goto/16 :goto_3

    .line 227
    .line 228
    :sswitch_b
    const-string p2, "H156"

    .line 229
    .line 230
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 231
    .line 232
    .line 233
    move-result p2

    .line 234
    if-eqz p2, :cond_6

    .line 235
    .line 236
    const/16 v6, 0x16

    .line 237
    .line 238
    goto/16 :goto_3

    .line 239
    .line 240
    :sswitch_c
    const-string p2, "H153"

    .line 241
    .line 242
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 243
    .line 244
    .line 245
    move-result p2

    .line 246
    if-eqz p2, :cond_6

    .line 247
    .line 248
    const/16 v6, 0x15

    .line 249
    .line 250
    goto/16 :goto_3

    .line 251
    .line 252
    :sswitch_d
    const-string p2, "H150"

    .line 253
    .line 254
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 255
    .line 256
    .line 257
    move-result p2

    .line 258
    if-eqz p2, :cond_6

    .line 259
    .line 260
    const/16 v6, 0x14

    .line 261
    .line 262
    goto/16 :goto_3

    .line 263
    .line 264
    :sswitch_e
    const-string p2, "H123"

    .line 265
    .line 266
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 267
    .line 268
    .line 269
    move-result p2

    .line 270
    if-eqz p2, :cond_6

    .line 271
    .line 272
    const/16 v6, 0x13

    .line 273
    .line 274
    goto/16 :goto_3

    .line 275
    .line 276
    :sswitch_f
    const-string p2, "H120"

    .line 277
    .line 278
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 279
    .line 280
    .line 281
    move-result p2

    .line 282
    if-eqz p2, :cond_6

    .line 283
    .line 284
    const/16 v6, 0x12

    .line 285
    .line 286
    goto/16 :goto_3

    .line 287
    .line 288
    :sswitch_10
    const-string p2, "L93"

    .line 289
    .line 290
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 291
    .line 292
    .line 293
    move-result p2

    .line 294
    if-eqz p2, :cond_6

    .line 295
    .line 296
    const/4 v6, 0x4

    .line 297
    goto :goto_3

    .line 298
    :sswitch_11
    const-string v0, "L90"

    .line 299
    .line 300
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 301
    .line 302
    .line 303
    move-result v0

    .line 304
    if-eqz v0, :cond_6

    .line 305
    .line 306
    const/4 v6, 0x3

    .line 307
    goto :goto_3

    .line 308
    :sswitch_12
    const-string p2, "L63"

    .line 309
    .line 310
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 311
    .line 312
    .line 313
    move-result p2

    .line 314
    if-eqz p2, :cond_6

    .line 315
    .line 316
    const/4 v6, 0x2

    .line 317
    goto :goto_3

    .line 318
    :sswitch_13
    const-string p2, "L60"

    .line 319
    .line 320
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 321
    .line 322
    .line 323
    move-result p2

    .line 324
    if-eqz p2, :cond_6

    .line 325
    .line 326
    const/4 v6, 0x1

    .line 327
    goto :goto_3

    .line 328
    :sswitch_14
    const-string p2, "L30"

    .line 329
    .line 330
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 331
    .line 332
    .line 333
    move-result p2

    .line 334
    if-eqz p2, :cond_6

    .line 335
    .line 336
    const/4 v6, 0x0

    .line 337
    goto :goto_3

    .line 338
    :sswitch_15
    const-string p2, "H93"

    .line 339
    .line 340
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 341
    .line 342
    .line 343
    move-result p2

    .line 344
    if-eqz p2, :cond_6

    .line 345
    .line 346
    const/16 v6, 0x11

    .line 347
    .line 348
    goto :goto_3

    .line 349
    :sswitch_16
    const-string p2, "H90"

    .line 350
    .line 351
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 352
    .line 353
    .line 354
    move-result p2

    .line 355
    if-eqz p2, :cond_6

    .line 356
    .line 357
    const/16 v6, 0x10

    .line 358
    .line 359
    goto :goto_3

    .line 360
    :sswitch_17
    const-string p2, "H63"

    .line 361
    .line 362
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 363
    .line 364
    .line 365
    move-result p2

    .line 366
    if-eqz p2, :cond_6

    .line 367
    .line 368
    const/16 v6, 0xf

    .line 369
    .line 370
    goto :goto_3

    .line 371
    :sswitch_18
    const-string p2, "H60"

    .line 372
    .line 373
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 374
    .line 375
    .line 376
    move-result p2

    .line 377
    if-eqz p2, :cond_6

    .line 378
    .line 379
    const/16 v6, 0xe

    .line 380
    .line 381
    goto :goto_3

    .line 382
    :sswitch_19
    const-string p2, "H30"

    .line 383
    .line 384
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 385
    .line 386
    .line 387
    move-result p2

    .line 388
    if-eqz p2, :cond_6

    .line 389
    .line 390
    const/16 v6, 0xd

    .line 391
    .line 392
    goto :goto_3

    .line 393
    :cond_6
    :goto_2
    const/4 v6, -0x1

    .line 394
    :goto_3
    packed-switch v6, :pswitch_data_0

    .line 395
    .line 396
    .line 397
    goto/16 :goto_1

    .line 398
    .line 399
    :pswitch_0
    const/high16 p2, 0x2000000

    .line 400
    .line 401
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 402
    .line 403
    .line 404
    move-result-object p2

    .line 405
    goto/16 :goto_4

    .line 406
    .line 407
    :pswitch_1
    const/high16 p2, 0x800000

    .line 408
    .line 409
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 410
    .line 411
    .line 412
    move-result-object p2

    .line 413
    goto/16 :goto_4

    .line 414
    .line 415
    :pswitch_2
    const/high16 p2, 0x200000

    .line 416
    .line 417
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 418
    .line 419
    .line 420
    move-result-object p2

    .line 421
    goto/16 :goto_4

    .line 422
    .line 423
    :pswitch_3
    const/high16 p2, 0x80000

    .line 424
    .line 425
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 426
    .line 427
    .line 428
    move-result-object p2

    .line 429
    goto/16 :goto_4

    .line 430
    .line 431
    :pswitch_4
    const/high16 p2, 0x20000

    .line 432
    .line 433
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 434
    .line 435
    .line 436
    move-result-object p2

    .line 437
    goto/16 :goto_4

    .line 438
    .line 439
    :pswitch_5
    const p2, 0x8000

    .line 440
    .line 441
    .line 442
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 443
    .line 444
    .line 445
    move-result-object p2

    .line 446
    goto/16 :goto_4

    .line 447
    .line 448
    :pswitch_6
    const/16 p2, 0x2000

    .line 449
    .line 450
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 451
    .line 452
    .line 453
    move-result-object p2

    .line 454
    goto/16 :goto_4

    .line 455
    .line 456
    :pswitch_7
    const/16 p2, 0x800

    .line 457
    .line 458
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 459
    .line 460
    .line 461
    move-result-object p2

    .line 462
    goto/16 :goto_4

    .line 463
    .line 464
    :pswitch_8
    const/16 p2, 0x200

    .line 465
    .line 466
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 467
    .line 468
    .line 469
    move-result-object p2

    .line 470
    goto/16 :goto_4

    .line 471
    .line 472
    :pswitch_9
    const/16 p2, 0x80

    .line 473
    .line 474
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 475
    .line 476
    .line 477
    move-result-object p2

    .line 478
    goto/16 :goto_4

    .line 479
    .line 480
    :pswitch_a
    const/16 p2, 0x20

    .line 481
    .line 482
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 483
    .line 484
    .line 485
    move-result-object p2

    .line 486
    goto :goto_4

    .line 487
    :pswitch_b
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 488
    .line 489
    .line 490
    move-result-object p2

    .line 491
    goto :goto_4

    .line 492
    :pswitch_c
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 493
    .line 494
    .line 495
    move-result-object p2

    .line 496
    goto :goto_4

    .line 497
    :pswitch_d
    const/high16 p2, 0x1000000

    .line 498
    .line 499
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 500
    .line 501
    .line 502
    move-result-object p2

    .line 503
    goto :goto_4

    .line 504
    :pswitch_e
    const/high16 p2, 0x400000

    .line 505
    .line 506
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 507
    .line 508
    .line 509
    move-result-object p2

    .line 510
    goto :goto_4

    .line 511
    :pswitch_f
    const/high16 p2, 0x100000

    .line 512
    .line 513
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 514
    .line 515
    .line 516
    move-result-object p2

    .line 517
    goto :goto_4

    .line 518
    :pswitch_10
    const/high16 p2, 0x40000

    .line 519
    .line 520
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 521
    .line 522
    .line 523
    move-result-object p2

    .line 524
    goto :goto_4

    .line 525
    :pswitch_11
    const/high16 p2, 0x10000

    .line 526
    .line 527
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 528
    .line 529
    .line 530
    move-result-object p2

    .line 531
    goto :goto_4

    .line 532
    :pswitch_12
    const/16 p2, 0x4000

    .line 533
    .line 534
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 535
    .line 536
    .line 537
    move-result-object p2

    .line 538
    goto :goto_4

    .line 539
    :pswitch_13
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 540
    .line 541
    .line 542
    move-result-object p2

    .line 543
    goto :goto_4

    .line 544
    :pswitch_14
    const/16 p2, 0x400

    .line 545
    .line 546
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 547
    .line 548
    .line 549
    move-result-object p2

    .line 550
    goto :goto_4

    .line 551
    :pswitch_15
    const/16 p2, 0x100

    .line 552
    .line 553
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 554
    .line 555
    .line 556
    move-result-object p2

    .line 557
    goto :goto_4

    .line 558
    :pswitch_16
    const/16 p2, 0x40

    .line 559
    .line 560
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 561
    .line 562
    .line 563
    move-result-object p2

    .line 564
    goto :goto_4

    .line 565
    :pswitch_17
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 566
    .line 567
    .line 568
    move-result-object p2

    .line 569
    goto :goto_4

    .line 570
    :pswitch_18
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 571
    .line 572
    .line 573
    move-result-object p2

    .line 574
    goto :goto_4

    .line 575
    :pswitch_19
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 576
    .line 577
    .line 578
    move-result-object p2

    .line 579
    :goto_4
    if-nez p2, :cond_7

    .line 580
    .line 581
    const-string p0, "Unknown HEVC level string: "

    .line 582
    .line 583
    invoke-static {p1, p0, v2}, La/r;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    .line 585
    .line 586
    return-object v3

    .line 587
    :cond_7
    new-instance p1, Landroid/util/Pair;

    .line 588
    .line 589
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 590
    .line 591
    .line 592
    move-result-object p0

    .line 593
    invoke-direct {p1, p0, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 594
    .line 595
    .line 596
    return-object p1

    .line 597
    :cond_8
    const-string p1, "Unknown HEVC profile string: "

    .line 598
    .line 599
    invoke-static {p0, p1, v2}, La/r;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    .line 601
    .line 602
    return-object v3

    .line 603
    :sswitch_data_0
    .sparse-switch
        0x114a5 -> :sswitch_19
        0x11502 -> :sswitch_18
        0x11505 -> :sswitch_17
        0x1155f -> :sswitch_16
        0x11562 -> :sswitch_15
        0x123a9 -> :sswitch_14
        0x12406 -> :sswitch_13
        0x12409 -> :sswitch_12
        0x12463 -> :sswitch_11
        0x12466 -> :sswitch_10
        0x2178e7 -> :sswitch_f
        0x2178ea -> :sswitch_e
        0x217944 -> :sswitch_d
        0x217947 -> :sswitch_c
        0x21794a -> :sswitch_b
        0x2179a1 -> :sswitch_a
        0x2179a4 -> :sswitch_9
        0x2179a7 -> :sswitch_8
        0x234a63 -> :sswitch_7
        0x234a66 -> :sswitch_6
        0x234ac0 -> :sswitch_5
        0x234ac3 -> :sswitch_4
        0x234ac6 -> :sswitch_3
        0x234b1d -> :sswitch_2
        0x234b20 -> :sswitch_1
        0x234b23 -> :sswitch_0
    .end sparse-switch

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
    .line 654
    .line 655
    .line 656
    .line 657
    .line 658
    .line 659
    .line 660
    .line 661
    .line 662
    .line 663
    .line 664
    .line 665
    .line 666
    .line 667
    .line 668
    .line 669
    .line 670
    .line 671
    .line 672
    .line 673
    .line 674
    .line 675
    .line 676
    .line 677
    .line 678
    .line 679
    .line 680
    .line 681
    .line 682
    .line 683
    .line 684
    .line 685
    .line 686
    .line 687
    .line 688
    .line 689
    .line 690
    .line 691
    .line 692
    .line 693
    .line 694
    .line 695
    .line 696
    .line 697
    .line 698
    .line 699
    .line 700
    .line 701
    .line 702
    .line 703
    .line 704
    .line 705
    .line 706
    .line 707
    .line 708
    .line 709
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static f(Lcom/google/android/gms/internal/ads/YM;Lcom/google/android/gms/internal/ads/aN;)Ljava/util/ArrayList;
    .locals 22

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    const-string v3, "secure-playback"

    .line 6
    .line 7
    const-string v4, "tunneled-playback"

    .line 8
    .line 9
    :try_start_0
    new-instance v5, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 12
    .line 13
    .line 14
    iget-object v14, v1, Lcom/google/android/gms/internal/ads/YM;->a:Ljava/lang/String;

    .line 15
    .line 16
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/aN;->zza()I

    .line 17
    .line 18
    .line 19
    move-result v15

    .line 20
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/aN;->zze()Z

    .line 21
    .line 22
    .line 23
    move-result v16

    .line 24
    const/16 v17, 0x0

    .line 25
    .line 26
    const/4 v13, 0x0

    .line 27
    :goto_0
    if-ge v13, v15, :cond_1b

    .line 28
    .line 29
    invoke-interface {v2, v13}, Lcom/google/android/gms/internal/ads/aN;->zzb(I)Landroid/media/MediaCodecInfo;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    sget v6, Lcom/google/android/gms/internal/ads/Et;->a:I

    .line 34
    .line 35
    const/16 v7, 0x1d

    .line 36
    .line 37
    if-lt v6, v7, :cond_1

    .line 38
    .line 39
    invoke-static {v0}, LD0/a;->D(Landroid/media/MediaCodecInfo;)Z

    .line 40
    .line 41
    .line 42
    move-result v8

    .line 43
    if-eqz v8, :cond_1

    .line 44
    .line 45
    :cond_0
    :goto_1
    move-object/from16 v19, v3

    .line 46
    .line 47
    move/from16 v20, v13

    .line 48
    .line 49
    goto/16 :goto_a

    .line 50
    .line 51
    :catch_0
    move-exception v0

    .line 52
    goto/16 :goto_c

    .line 53
    .line 54
    :cond_1
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v12

    .line 58
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    .line 59
    .line 60
    .line 61
    move-result v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    if-nez v8, :cond_0

    .line 63
    .line 64
    const-string v8, ".secure"

    .line 65
    .line 66
    if-nez v16, :cond_2

    .line 67
    .line 68
    :try_start_1
    invoke-virtual {v12, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 69
    .line 70
    .line 71
    move-result v9

    .line 72
    if-nez v9, :cond_0

    .line 73
    .line 74
    :cond_2
    const/16 v9, 0x18

    .line 75
    .line 76
    if-ge v6, v9, :cond_4

    .line 77
    .line 78
    const-string v9, "OMX.SEC.aac.dec"

    .line 79
    .line 80
    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v9

    .line 84
    if-nez v9, :cond_3

    .line 85
    .line 86
    const-string v9, "OMX.Exynos.AAC.Decoder"

    .line 87
    .line 88
    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    move-result v9

    .line 92
    if-eqz v9, :cond_4

    .line 93
    .line 94
    :cond_3
    const-string v9, "samsung"

    .line 95
    .line 96
    sget-object v10, Lcom/google/android/gms/internal/ads/Et;->c:Ljava/lang/String;

    .line 97
    .line 98
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    move-result v9

    .line 102
    if-eqz v9, :cond_4

    .line 103
    .line 104
    sget-object v9, Lcom/google/android/gms/internal/ads/Et;->b:Ljava/lang/String;

    .line 105
    .line 106
    const-string v10, "zeroflte"

    .line 107
    .line 108
    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 109
    .line 110
    .line 111
    move-result v10

    .line 112
    if-nez v10, :cond_0

    .line 113
    .line 114
    const-string v10, "zerolte"

    .line 115
    .line 116
    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 117
    .line 118
    .line 119
    move-result v10

    .line 120
    if-nez v10, :cond_0

    .line 121
    .line 122
    const-string v10, "zenlte"

    .line 123
    .line 124
    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 125
    .line 126
    .line 127
    move-result v10

    .line 128
    if-nez v10, :cond_0

    .line 129
    .line 130
    const-string v10, "SC-05G"

    .line 131
    .line 132
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    move-result v10

    .line 136
    if-nez v10, :cond_0

    .line 137
    .line 138
    const-string v10, "marinelteatt"

    .line 139
    .line 140
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 141
    .line 142
    .line 143
    move-result v10

    .line 144
    if-nez v10, :cond_0

    .line 145
    .line 146
    const-string v10, "404SC"

    .line 147
    .line 148
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 149
    .line 150
    .line 151
    move-result v10

    .line 152
    if-nez v10, :cond_0

    .line 153
    .line 154
    const-string v10, "SC-04G"

    .line 155
    .line 156
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 157
    .line 158
    .line 159
    move-result v10

    .line 160
    if-nez v10, :cond_0

    .line 161
    .line 162
    const-string v10, "SCV31"

    .line 163
    .line 164
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 165
    .line 166
    .line 167
    move-result v9

    .line 168
    if-nez v9, :cond_0

    .line 169
    .line 170
    :cond_4
    const/16 v11, 0x17

    .line 171
    .line 172
    if-gt v6, v11, :cond_5

    .line 173
    .line 174
    const-string v6, "audio/eac3-joc"

    .line 175
    .line 176
    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 177
    .line 178
    .line 179
    move-result v6

    .line 180
    if-eqz v6, :cond_5

    .line 181
    .line 182
    const-string v6, "OMX.MTK.AUDIO.DECODER.DSPAC3"

    .line 183
    .line 184
    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 185
    .line 186
    .line 187
    move-result v6

    .line 188
    if-nez v6, :cond_0

    .line 189
    .line 190
    :cond_5
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v6

    .line 194
    array-length v9, v6

    .line 195
    const/4 v10, 0x0

    .line 196
    :goto_2
    if-ge v10, v9, :cond_7

    .line 197
    .line 198
    aget-object v11, v6, v10

    .line 199
    .line 200
    invoke-virtual {v11, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 201
    .line 202
    .line 203
    move-result v19

    .line 204
    if-eqz v19, :cond_6

    .line 205
    .line 206
    goto/16 :goto_3

    .line 207
    .line 208
    :cond_6
    add-int/lit8 v10, v10, 0x1

    .line 209
    .line 210
    const/16 v11, 0x17

    .line 211
    .line 212
    goto :goto_2

    .line 213
    :cond_7
    const-string v6, "video/dolby-vision"

    .line 214
    .line 215
    invoke-virtual {v14, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 216
    .line 217
    .line 218
    move-result v6

    .line 219
    const/4 v11, 0x0

    .line 220
    if-eqz v6, :cond_a

    .line 221
    .line 222
    const-string v6, "OMX.MS.HEVCDV.Decoder"

    .line 223
    .line 224
    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 225
    .line 226
    .line 227
    move-result v6

    .line 228
    if-eqz v6, :cond_8

    .line 229
    .line 230
    const-string v11, "video/hevcdv"

    .line 231
    .line 232
    goto :goto_3

    .line 233
    :cond_8
    const-string v6, "OMX.RTK.video.decoder"

    .line 234
    .line 235
    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 236
    .line 237
    .line 238
    move-result v6

    .line 239
    if-nez v6, :cond_9

    .line 240
    .line 241
    const-string v6, "OMX.realtek.video.decoder.tunneled"

    .line 242
    .line 243
    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 244
    .line 245
    .line 246
    move-result v6

    .line 247
    if-eqz v6, :cond_e

    .line 248
    .line 249
    :cond_9
    const-string v11, "video/dv_hevc"

    .line 250
    .line 251
    goto :goto_3

    .line 252
    :cond_a
    const-string v6, "video/mv-hevc"

    .line 253
    .line 254
    invoke-virtual {v14, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 255
    .line 256
    .line 257
    move-result v6

    .line 258
    if-eqz v6, :cond_b

    .line 259
    .line 260
    const-string v6, "c2.qti.mvhevc.decoder"

    .line 261
    .line 262
    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 263
    .line 264
    .line 265
    move-result v6

    .line 266
    if-eqz v6, :cond_e

    .line 267
    .line 268
    const-string v11, "video/x-mvhevc"

    .line 269
    .line 270
    goto :goto_3

    .line 271
    :cond_b
    const-string v6, "audio/alac"

    .line 272
    .line 273
    invoke-virtual {v14, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 274
    .line 275
    .line 276
    move-result v6

    .line 277
    if-eqz v6, :cond_c

    .line 278
    .line 279
    const-string v6, "OMX.lge.alac.decoder"

    .line 280
    .line 281
    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 282
    .line 283
    .line 284
    move-result v6

    .line 285
    if-eqz v6, :cond_c

    .line 286
    .line 287
    const-string v11, "audio/x-lg-alac"

    .line 288
    .line 289
    goto :goto_3

    .line 290
    :cond_c
    const-string v6, "audio/flac"

    .line 291
    .line 292
    invoke-virtual {v14, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 293
    .line 294
    .line 295
    move-result v6

    .line 296
    if-eqz v6, :cond_d

    .line 297
    .line 298
    const-string v6, "OMX.lge.flac.decoder"

    .line 299
    .line 300
    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 301
    .line 302
    .line 303
    move-result v6

    .line 304
    if-eqz v6, :cond_d

    .line 305
    .line 306
    const-string v11, "audio/x-lg-flac"

    .line 307
    .line 308
    goto :goto_3

    .line 309
    :cond_d
    const-string v6, "audio/ac3"

    .line 310
    .line 311
    invoke-virtual {v14, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 312
    .line 313
    .line 314
    move-result v6

    .line 315
    if-eqz v6, :cond_e

    .line 316
    .line 317
    const-string v6, "OMX.lge.ac3.decoder"

    .line 318
    .line 319
    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 320
    .line 321
    .line 322
    move-result v6

    .line 323
    if-eqz v6, :cond_e

    .line 324
    .line 325
    const-string v11, "audio/lg-ac3"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 326
    .line 327
    :cond_e
    :goto_3
    if-eqz v11, :cond_0

    .line 328
    .line 329
    :try_start_2
    invoke-virtual {v0, v11}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    .line 330
    .line 331
    .line 332
    move-result-object v9

    .line 333
    invoke-interface {v2, v4, v11, v9}, Lcom/google/android/gms/internal/ads/aN;->a(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;)Z

    .line 334
    .line 335
    .line 336
    move-result v6

    .line 337
    invoke-interface {v2, v4, v9}, Lcom/google/android/gms/internal/ads/aN;->b(Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;)Z

    .line 338
    .line 339
    .line 340
    move-result v10

    .line 341
    iget-boolean v7, v1, Lcom/google/android/gms/internal/ads/YM;->c:Z

    .line 342
    .line 343
    if-nez v7, :cond_f

    .line 344
    .line 345
    if-nez v10, :cond_0

    .line 346
    .line 347
    goto :goto_4

    .line 348
    :cond_f
    if-nez v6, :cond_10

    .line 349
    .line 350
    goto/16 :goto_1

    .line 351
    .line 352
    :cond_10
    :goto_4
    invoke-interface {v2, v3, v11, v9}, Lcom/google/android/gms/internal/ads/aN;->a(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;)Z

    .line 353
    .line 354
    .line 355
    move-result v6

    .line 356
    invoke-interface {v2, v3, v9}, Lcom/google/android/gms/internal/ads/aN;->b(Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;)Z

    .line 357
    .line 358
    .line 359
    move-result v7
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 360
    iget-boolean v10, v1, Lcom/google/android/gms/internal/ads/YM;->b:Z

    .line 361
    .line 362
    if-nez v10, :cond_11

    .line 363
    .line 364
    if-nez v7, :cond_0

    .line 365
    .line 366
    goto :goto_5

    .line 367
    :cond_11
    if-eqz v6, :cond_0

    .line 368
    .line 369
    const/4 v6, 0x1

    .line 370
    :goto_5
    :try_start_3
    sget v7, Lcom/google/android/gms/internal/ads/Et;->a:I

    .line 371
    .line 372
    const/16 v1, 0x1d

    .line 373
    .line 374
    if-lt v7, v1, :cond_12

    .line 375
    .line 376
    invoke-static {v0}, LD0/a;->z(Landroid/media/MediaCodecInfo;)Z

    .line 377
    .line 378
    .line 379
    move-result v1

    .line 380
    goto :goto_7

    .line 381
    :catch_1
    move-exception v0

    .line 382
    move-object/from16 v19, v3

    .line 383
    .line 384
    move-object/from16 v18, v11

    .line 385
    .line 386
    move-object v3, v12

    .line 387
    move/from16 v20, v13

    .line 388
    .line 389
    :goto_6
    const/16 v2, 0x17

    .line 390
    .line 391
    goto/16 :goto_9

    .line 392
    .line 393
    :cond_12
    invoke-static {v0, v14}, Lcom/google/android/gms/internal/ads/cN;->g(Landroid/media/MediaCodecInfo;Ljava/lang/String;)Z

    .line 394
    .line 395
    .line 396
    move-result v1

    .line 397
    if-nez v1, :cond_13

    .line 398
    .line 399
    const/4 v1, 0x1

    .line 400
    goto :goto_7

    .line 401
    :cond_13
    const/4 v1, 0x0

    .line 402
    :goto_7
    invoke-static {v0, v14}, Lcom/google/android/gms/internal/ads/cN;->g(Landroid/media/MediaCodecInfo;Ljava/lang/String;)Z

    .line 403
    .line 404
    .line 405
    move-result v21

    .line 406
    const/16 v2, 0x1d

    .line 407
    .line 408
    if-lt v7, v2, :cond_14

    .line 409
    .line 410
    invoke-static {v0}, LD0/a;->B(Landroid/media/MediaCodecInfo;)Z

    .line 411
    .line 412
    .line 413
    move-result v0

    .line 414
    goto :goto_8

    .line 415
    :cond_14
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    .line 416
    .line 417
    .line 418
    move-result-object v0

    .line 419
    invoke-static {v0}, Lo3/r;->m(Ljava/lang/String;)Ljava/lang/String;

    .line 420
    .line 421
    .line 422
    move-result-object v0

    .line 423
    const-string v2, "omx.google."

    .line 424
    .line 425
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 426
    .line 427
    .line 428
    move-result v2

    .line 429
    if-nez v2, :cond_15

    .line 430
    .line 431
    const-string v2, "c2.android."

    .line 432
    .line 433
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 434
    .line 435
    .line 436
    move-result v2

    .line 437
    if-nez v2, :cond_15

    .line 438
    .line 439
    const-string v2, "c2.google."

    .line 440
    .line 441
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 442
    .line 443
    .line 444
    move-result v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 445
    if-nez v0, :cond_15

    .line 446
    .line 447
    const/4 v0, 0x1

    .line 448
    goto :goto_8

    .line 449
    :cond_15
    const/4 v0, 0x0

    .line 450
    :goto_8
    if-eqz v16, :cond_16

    .line 451
    .line 452
    if-eq v10, v6, :cond_17

    .line 453
    .line 454
    :cond_16
    if-nez v16, :cond_18

    .line 455
    .line 456
    if-nez v10, :cond_18

    .line 457
    .line 458
    :cond_17
    const/4 v2, 0x0

    .line 459
    move-object v6, v12

    .line 460
    move-object v7, v14

    .line 461
    move-object v8, v11

    .line 462
    move v10, v1

    .line 463
    move-object/from16 v18, v11

    .line 464
    .line 465
    const/16 v1, 0x17

    .line 466
    .line 467
    move/from16 v11, v21

    .line 468
    .line 469
    move-object/from16 v19, v3

    .line 470
    .line 471
    move-object v3, v12

    .line 472
    move v12, v0

    .line 473
    move/from16 v20, v13

    .line 474
    .line 475
    move v13, v2

    .line 476
    :try_start_4
    invoke-static/range {v6 .. v13}, Lcom/google/android/gms/internal/ads/PM;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;ZZZZ)Lcom/google/android/gms/internal/ads/PM;

    .line 477
    .line 478
    .line 479
    move-result-object v0

    .line 480
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 481
    .line 482
    .line 483
    goto/16 :goto_a

    .line 484
    .line 485
    :catch_2
    move-exception v0

    .line 486
    goto :goto_6

    .line 487
    :cond_18
    move-object/from16 v19, v3

    .line 488
    .line 489
    move-object/from16 v18, v11

    .line 490
    .line 491
    move-object v3, v12

    .line 492
    move/from16 v20, v13

    .line 493
    .line 494
    const/16 v2, 0x17

    .line 495
    .line 496
    if-nez v16, :cond_1a

    .line 497
    .line 498
    if-eqz v6, :cond_1a

    .line 499
    .line 500
    :try_start_5
    new-instance v6, Ljava/lang/StringBuilder;

    .line 501
    .line 502
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 503
    .line 504
    .line 505
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 506
    .line 507
    .line 508
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 509
    .line 510
    .line 511
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 512
    .line 513
    .line 514
    move-result-object v6

    .line 515
    const/4 v13, 0x1

    .line 516
    move-object v7, v14

    .line 517
    move-object/from16 v8, v18

    .line 518
    .line 519
    move v10, v1

    .line 520
    move/from16 v11, v21

    .line 521
    .line 522
    move v12, v0

    .line 523
    invoke-static/range {v6 .. v13}, Lcom/google/android/gms/internal/ads/PM;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;ZZZZ)Lcom/google/android/gms/internal/ads/PM;

    .line 524
    .line 525
    .line 526
    move-result-object v0

    .line 527
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 528
    .line 529
    .line 530
    goto :goto_b

    .line 531
    :catch_3
    move-exception v0

    .line 532
    :goto_9
    :try_start_6
    sget v1, Lcom/google/android/gms/internal/ads/Et;->a:I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 533
    .line 534
    const-string v6, "MediaCodecUtil"

    .line 535
    .line 536
    if-gt v1, v2, :cond_19

    .line 537
    .line 538
    :try_start_7
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    .line 539
    .line 540
    .line 541
    move-result v1

    .line 542
    if-nez v1, :cond_19

    .line 543
    .line 544
    new-instance v0, Ljava/lang/StringBuilder;

    .line 545
    .line 546
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 547
    .line 548
    .line 549
    const-string v1, "Skipping codec "

    .line 550
    .line 551
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 552
    .line 553
    .line 554
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 555
    .line 556
    .line 557
    const-string v1, " (failed to query capabilities)"

    .line 558
    .line 559
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 560
    .line 561
    .line 562
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 563
    .line 564
    .line 565
    move-result-object v0

    .line 566
    invoke-static {v6, v0}, Lcom/google/android/gms/internal/ads/Zo;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    .line 568
    .line 569
    goto :goto_a

    .line 570
    :cond_19
    new-instance v1, Ljava/lang/StringBuilder;

    .line 571
    .line 572
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 573
    .line 574
    .line 575
    const-string v2, "Failed to query codec "

    .line 576
    .line 577
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 578
    .line 579
    .line 580
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 581
    .line 582
    .line 583
    const-string v2, " ("

    .line 584
    .line 585
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 586
    .line 587
    .line 588
    move-object/from16 v11, v18

    .line 589
    .line 590
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 591
    .line 592
    .line 593
    const-string v2, ")"

    .line 594
    .line 595
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 596
    .line 597
    .line 598
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 599
    .line 600
    .line 601
    move-result-object v1

    .line 602
    invoke-static {v6, v1}, Lcom/google/android/gms/internal/ads/Zo;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    .line 604
    .line 605
    throw v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    .line 606
    :cond_1a
    :goto_a
    add-int/lit8 v13, v20, 0x1

    .line 607
    .line 608
    move-object/from16 v1, p0

    .line 609
    .line 610
    move-object/from16 v2, p1

    .line 611
    .line 612
    move-object/from16 v3, v19

    .line 613
    .line 614
    goto/16 :goto_0

    .line 615
    .line 616
    :cond_1b
    :goto_b
    return-object v5

    .line 617
    :goto_c
    new-instance v1, Lcom/google/android/gms/internal/ads/ZM;

    .line 618
    .line 619
    const-string v2, "Failed to query underlying media codecs"

    .line 620
    .line 621
    invoke-direct {v1, v2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 622
    .line 623
    .line 624
    throw v1
.end method

.method public static g(Landroid/media/MediaCodecInfo;Ljava/lang/String;)Z
    .locals 2

    .line 1
    sget v0, Lcom/google/android/gms/internal/ads/Et;->a:I

    .line 2
    .line 3
    const/16 v1, 0x1d

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    invoke-static {p0}, LD0/a;->v(Landroid/media/MediaCodecInfo;)Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0

    .line 12
    :cond_0
    const-string v0, "audio"

    .line 13
    .line 14
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/va;->h(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    const/4 v0, 0x1

    .line 23
    if-eqz p1, :cond_1

    .line 24
    .line 25
    return v0

    .line 26
    :cond_1
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-static {p0}, Lo3/r;->m(Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    const-string p1, "arc."

    .line 35
    .line 36
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    const/4 v1, 0x0

    .line 41
    if-eqz p1, :cond_2

    .line 42
    .line 43
    return v1

    .line 44
    :cond_2
    const-string p1, "omx.google."

    .line 45
    .line 46
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    if-nez p1, :cond_6

    .line 51
    .line 52
    const-string p1, "omx.ffmpeg."

    .line 53
    .line 54
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    if-nez p1, :cond_6

    .line 59
    .line 60
    const-string p1, "omx.sec."

    .line 61
    .line 62
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    if-eqz p1, :cond_3

    .line 67
    .line 68
    const-string p1, ".sw."

    .line 69
    .line 70
    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    if-nez p1, :cond_6

    .line 75
    .line 76
    :cond_3
    const-string p1, "omx.qcom.video.decoder.hevcswvdec"

    .line 77
    .line 78
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    if-nez p1, :cond_6

    .line 83
    .line 84
    const-string p1, "c2.android."

    .line 85
    .line 86
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 87
    .line 88
    .line 89
    move-result p1

    .line 90
    if-nez p1, :cond_6

    .line 91
    .line 92
    const-string p1, "c2.google."

    .line 93
    .line 94
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 95
    .line 96
    .line 97
    move-result p1

    .line 98
    if-nez p1, :cond_6

    .line 99
    .line 100
    const-string p1, "omx."

    .line 101
    .line 102
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 103
    .line 104
    .line 105
    move-result p1

    .line 106
    if-nez p1, :cond_5

    .line 107
    .line 108
    const-string p1, "c2."

    .line 109
    .line 110
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 111
    .line 112
    .line 113
    move-result p0

    .line 114
    if-nez p0, :cond_4

    .line 115
    .line 116
    goto :goto_0

    .line 117
    :cond_4
    return v1

    .line 118
    :cond_5
    const/4 v0, 0x0

    .line 119
    :cond_6
    :goto_0
    return v0
.end method
