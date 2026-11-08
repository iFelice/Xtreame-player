.class public final Lcom/google/android/gms/internal/ads/H;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/O;


# static fields
.field public static final I:[I

.field public static final J:Lcom/google/android/gms/internal/ads/x;

.field public static final K:Lcom/google/android/gms/internal/ads/x;


# instance fields
.field public G:Lcom/google/android/gms/internal/ads/PA;

.field public final H:Lcom/google/android/gms/internal/ads/kH;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    const/4 v0, 0x4

    .line 2
    const/4 v1, 0x3

    .line 3
    const/16 v2, 0x15

    .line 4
    .line 5
    new-array v2, v2, [I

    .line 6
    .line 7
    fill-array-data v2, :array_0

    .line 8
    .line 9
    .line 10
    sput-object v2, Lcom/google/android/gms/internal/ads/H;->I:[I

    .line 11
    .line 12
    new-instance v2, Lcom/google/android/gms/internal/ads/x;

    .line 13
    .line 14
    new-instance v3, Lcom/google/android/gms/internal/ads/kH;

    .line 15
    .line 16
    invoke-direct {v3, v1}, Lcom/google/android/gms/internal/ads/kH;-><init>(I)V

    .line 17
    .line 18
    .line 19
    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/x;-><init>(Lcom/google/android/gms/internal/ads/kH;)V

    .line 20
    .line 21
    .line 22
    sput-object v2, Lcom/google/android/gms/internal/ads/H;->J:Lcom/google/android/gms/internal/ads/x;

    .line 23
    .line 24
    new-instance v1, Lcom/google/android/gms/internal/ads/x;

    .line 25
    .line 26
    new-instance v2, Lcom/google/android/gms/internal/ads/kH;

    .line 27
    .line 28
    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/kH;-><init>(I)V

    .line 29
    .line 30
    .line 31
    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/x;-><init>(Lcom/google/android/gms/internal/ads/kH;)V

    .line 32
    .line 33
    .line 34
    sput-object v1, Lcom/google/android/gms/internal/ads/H;->K:Lcom/google/android/gms/internal/ads/x;

    .line 35
    .line 36
    return-void

    .line 37
    :array_0
    .array-data 4
        0x5
        0x4
        0xc
        0x8
        0x3
        0xa
        0x9
        0xb
        0x6
        0x2
        0x0
        0x1
        0x7
        0x10
        0xf
        0xe
        0x11
        0x12
        0x13
        0x14
        0x15
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/kH;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/kH;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/H;->H:Lcom/google/android/gms/internal/ads/kH;

    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Landroid/net/Uri;Ljava/util/Map;)[Lcom/google/android/gms/internal/ads/L;
    .locals 26

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    const/16 v2, 0x15

    .line 7
    .line 8
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 9
    .line 10
    .line 11
    const-string v3, "Content-Type"

    .line 12
    .line 13
    move-object/from16 v4, p2

    .line 14
    .line 15
    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    check-cast v3, Ljava/util/List;

    .line 20
    .line 21
    const/4 v4, 0x0

    .line 22
    const/4 v5, 0x0

    .line 23
    if-eqz v3, :cond_1

    .line 24
    .line 25
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    .line 26
    .line 27
    .line 28
    move-result v6

    .line 29
    if-eqz v6, :cond_0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    move-object v4, v3

    .line 37
    check-cast v4, Ljava/lang/String;

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :catchall_0
    move-exception v0

    .line 41
    goto/16 :goto_7

    .line 42
    .line 43
    :cond_1
    :goto_0
    const/16 v7, 0x12

    .line 44
    .line 45
    const/4 v8, 0x3

    .line 46
    const/4 v9, 0x4

    .line 47
    const/16 v10, 0x11

    .line 48
    .line 49
    const/16 v11, 0x10

    .line 50
    .line 51
    const/4 v12, 0x5

    .line 52
    const/4 v13, 0x7

    .line 53
    const/16 v14, 0x14

    .line 54
    .line 55
    const/16 v15, 0xc

    .line 56
    .line 57
    const/16 v16, 0x6

    .line 58
    .line 59
    const/16 v17, 0xb

    .line 60
    .line 61
    const/16 v18, 0xe

    .line 62
    .line 63
    const/16 v19, 0x13

    .line 64
    .line 65
    const/16 v20, 0x9

    .line 66
    .line 67
    const/16 v21, 0xd

    .line 68
    .line 69
    const/16 v22, 0xf

    .line 70
    .line 71
    const/16 v23, 0x8

    .line 72
    .line 73
    const/16 v24, 0xa

    .line 74
    .line 75
    const/4 v3, -0x1

    .line 76
    if-nez v4, :cond_2

    .line 77
    .line 78
    :goto_1
    const/4 v4, -0x1

    .line 79
    goto/16 :goto_4

    .line 80
    .line 81
    :cond_2
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/va;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v4

    .line 85
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    .line 86
    .line 87
    .line 88
    move-result v25

    .line 89
    sparse-switch v25, :sswitch_data_0

    .line 90
    .line 91
    .line 92
    goto/16 :goto_2

    .line 93
    .line 94
    :sswitch_0
    const-string v5, "video/x-matroska"

    .line 95
    .line 96
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    move-result v4

    .line 100
    if-eqz v4, :cond_3

    .line 101
    .line 102
    const/16 v4, 0xa

    .line 103
    .line 104
    goto/16 :goto_3

    .line 105
    .line 106
    :sswitch_1
    const-string v5, "audio/webm"

    .line 107
    .line 108
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    move-result v4

    .line 112
    if-eqz v4, :cond_3

    .line 113
    .line 114
    const/16 v4, 0xd

    .line 115
    .line 116
    goto/16 :goto_3

    .line 117
    .line 118
    :sswitch_2
    const-string v5, "audio/mpeg"

    .line 119
    .line 120
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    move-result v4

    .line 124
    if-eqz v4, :cond_3

    .line 125
    .line 126
    const/16 v4, 0xf

    .line 127
    .line 128
    goto/16 :goto_3

    .line 129
    .line 130
    :sswitch_3
    const-string v5, "audio/midi"

    .line 131
    .line 132
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    move-result v4

    .line 136
    if-eqz v4, :cond_3

    .line 137
    .line 138
    const/16 v4, 0x9

    .line 139
    .line 140
    goto/16 :goto_3

    .line 141
    .line 142
    :sswitch_4
    const-string v5, "audio/flac"

    .line 143
    .line 144
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    move-result v4

    .line 148
    if-eqz v4, :cond_3

    .line 149
    .line 150
    const/4 v4, 0x7

    .line 151
    goto/16 :goto_3

    .line 152
    .line 153
    :sswitch_5
    const-string v5, "audio/eac3"

    .line 154
    .line 155
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 156
    .line 157
    .line 158
    move-result v4

    .line 159
    if-eqz v4, :cond_3

    .line 160
    .line 161
    const/4 v4, 0x1

    .line 162
    goto/16 :goto_3

    .line 163
    .line 164
    :sswitch_6
    const-string v5, "audio/3gpp"

    .line 165
    .line 166
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 167
    .line 168
    .line 169
    move-result v4

    .line 170
    if-eqz v4, :cond_3

    .line 171
    .line 172
    const/4 v4, 0x5

    .line 173
    goto/16 :goto_3

    .line 174
    .line 175
    :sswitch_7
    const-string v5, "video/mp4"

    .line 176
    .line 177
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 178
    .line 179
    .line 180
    move-result v4

    .line 181
    if-eqz v4, :cond_3

    .line 182
    .line 183
    const/16 v4, 0x10

    .line 184
    .line 185
    goto/16 :goto_3

    .line 186
    .line 187
    :sswitch_8
    const-string v5, "audio/wav"

    .line 188
    .line 189
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 190
    .line 191
    .line 192
    move-result v4

    .line 193
    if-eqz v4, :cond_3

    .line 194
    .line 195
    const/16 v4, 0x16

    .line 196
    .line 197
    goto/16 :goto_3

    .line 198
    .line 199
    :sswitch_9
    const-string v5, "audio/ogg"

    .line 200
    .line 201
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 202
    .line 203
    .line 204
    move-result v4

    .line 205
    if-eqz v4, :cond_3

    .line 206
    .line 207
    const/16 v4, 0x13

    .line 208
    .line 209
    goto/16 :goto_3

    .line 210
    .line 211
    :sswitch_a
    const-string v5, "audio/mp4"

    .line 212
    .line 213
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 214
    .line 215
    .line 216
    move-result v4

    .line 217
    if-eqz v4, :cond_3

    .line 218
    .line 219
    const/16 v4, 0x11

    .line 220
    .line 221
    goto/16 :goto_3

    .line 222
    .line 223
    :sswitch_b
    const-string v5, "audio/amr"

    .line 224
    .line 225
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 226
    .line 227
    .line 228
    move-result v4

    .line 229
    if-eqz v4, :cond_3

    .line 230
    .line 231
    const/4 v4, 0x4

    .line 232
    goto/16 :goto_3

    .line 233
    .line 234
    :sswitch_c
    const-string v5, "audio/ac4"

    .line 235
    .line 236
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 237
    .line 238
    .line 239
    move-result v4

    .line 240
    if-eqz v4, :cond_3

    .line 241
    .line 242
    const/4 v4, 0x3

    .line 243
    goto/16 :goto_3

    .line 244
    .line 245
    :sswitch_d
    const-string v5, "audio/ac3"

    .line 246
    .line 247
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 248
    .line 249
    .line 250
    move-result v4

    .line 251
    if-eqz v4, :cond_3

    .line 252
    .line 253
    const/4 v4, 0x0

    .line 254
    goto/16 :goto_3

    .line 255
    .line 256
    :sswitch_e
    const-string v5, "video/x-flv"

    .line 257
    .line 258
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 259
    .line 260
    .line 261
    move-result v4

    .line 262
    if-eqz v4, :cond_3

    .line 263
    .line 264
    const/16 v4, 0x8

    .line 265
    .line 266
    goto/16 :goto_3

    .line 267
    .line 268
    :sswitch_f
    const-string v5, "application/webm"

    .line 269
    .line 270
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 271
    .line 272
    .line 273
    move-result v4

    .line 274
    if-eqz v4, :cond_3

    .line 275
    .line 276
    const/16 v4, 0xe

    .line 277
    .line 278
    goto/16 :goto_3

    .line 279
    .line 280
    :sswitch_10
    const-string v5, "audio/x-matroska"

    .line 281
    .line 282
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 283
    .line 284
    .line 285
    move-result v4

    .line 286
    if-eqz v4, :cond_3

    .line 287
    .line 288
    const/16 v4, 0xb

    .line 289
    .line 290
    goto/16 :goto_3

    .line 291
    .line 292
    :sswitch_11
    const-string v5, "image/png"

    .line 293
    .line 294
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 295
    .line 296
    .line 297
    move-result v4

    .line 298
    if-eqz v4, :cond_3

    .line 299
    .line 300
    const/16 v4, 0x1a

    .line 301
    .line 302
    goto/16 :goto_3

    .line 303
    .line 304
    :sswitch_12
    const-string v5, "image/bmp"

    .line 305
    .line 306
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 307
    .line 308
    .line 309
    move-result v4

    .line 310
    if-eqz v4, :cond_3

    .line 311
    .line 312
    const/16 v4, 0x1c

    .line 313
    .line 314
    goto/16 :goto_3

    .line 315
    .line 316
    :sswitch_13
    const-string v5, "text/vtt"

    .line 317
    .line 318
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 319
    .line 320
    .line 321
    move-result v4

    .line 322
    if-eqz v4, :cond_3

    .line 323
    .line 324
    const/16 v4, 0x17

    .line 325
    .line 326
    goto/16 :goto_3

    .line 327
    .line 328
    :sswitch_14
    const-string v5, "video/x-msvideo"

    .line 329
    .line 330
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 331
    .line 332
    .line 333
    move-result v4

    .line 334
    if-eqz v4, :cond_3

    .line 335
    .line 336
    const/16 v4, 0x19

    .line 337
    .line 338
    goto/16 :goto_3

    .line 339
    .line 340
    :sswitch_15
    const-string v5, "application/mp4"

    .line 341
    .line 342
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 343
    .line 344
    .line 345
    move-result v4

    .line 346
    if-eqz v4, :cond_3

    .line 347
    .line 348
    const/16 v4, 0x12

    .line 349
    .line 350
    goto/16 :goto_3

    .line 351
    .line 352
    :sswitch_16
    const-string v5, "image/webp"

    .line 353
    .line 354
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 355
    .line 356
    .line 357
    move-result v4

    .line 358
    if-eqz v4, :cond_3

    .line 359
    .line 360
    const/16 v4, 0x1b

    .line 361
    .line 362
    goto/16 :goto_3

    .line 363
    .line 364
    :sswitch_17
    const-string v5, "image/jpeg"

    .line 365
    .line 366
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 367
    .line 368
    .line 369
    move-result v4

    .line 370
    if-eqz v4, :cond_3

    .line 371
    .line 372
    const/16 v4, 0x18

    .line 373
    .line 374
    goto :goto_3

    .line 375
    :sswitch_18
    const-string v5, "image/heif"

    .line 376
    .line 377
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 378
    .line 379
    .line 380
    move-result v4

    .line 381
    if-eqz v4, :cond_3

    .line 382
    .line 383
    const/16 v4, 0x1d

    .line 384
    .line 385
    goto :goto_3

    .line 386
    :sswitch_19
    const-string v5, "image/heic"

    .line 387
    .line 388
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 389
    .line 390
    .line 391
    move-result v4

    .line 392
    if-eqz v4, :cond_3

    .line 393
    .line 394
    const/16 v4, 0x1e

    .line 395
    .line 396
    goto :goto_3

    .line 397
    :sswitch_1a
    const-string v5, "image/avif"

    .line 398
    .line 399
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 400
    .line 401
    .line 402
    move-result v4

    .line 403
    if-eqz v4, :cond_3

    .line 404
    .line 405
    const/16 v4, 0x1f

    .line 406
    .line 407
    goto :goto_3

    .line 408
    :sswitch_1b
    const-string v5, "audio/amr-wb"

    .line 409
    .line 410
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 411
    .line 412
    .line 413
    move-result v4

    .line 414
    if-eqz v4, :cond_3

    .line 415
    .line 416
    const/4 v4, 0x6

    .line 417
    goto :goto_3

    .line 418
    :sswitch_1c
    const-string v5, "video/webm"

    .line 419
    .line 420
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 421
    .line 422
    .line 423
    move-result v4

    .line 424
    if-eqz v4, :cond_3

    .line 425
    .line 426
    const/16 v4, 0xc

    .line 427
    .line 428
    goto :goto_3

    .line 429
    :sswitch_1d
    const-string v5, "video/mp2t"

    .line 430
    .line 431
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 432
    .line 433
    .line 434
    move-result v4

    .line 435
    if-eqz v4, :cond_3

    .line 436
    .line 437
    const/16 v4, 0x15

    .line 438
    .line 439
    goto :goto_3

    .line 440
    :sswitch_1e
    const-string v5, "video/mp2p"

    .line 441
    .line 442
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 443
    .line 444
    .line 445
    move-result v4

    .line 446
    if-eqz v4, :cond_3

    .line 447
    .line 448
    const/16 v4, 0x14

    .line 449
    .line 450
    goto :goto_3

    .line 451
    :sswitch_1f
    const-string v5, "audio/eac3-joc"

    .line 452
    .line 453
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 454
    .line 455
    .line 456
    move-result v4

    .line 457
    if-eqz v4, :cond_3

    .line 458
    .line 459
    const/4 v4, 0x2

    .line 460
    goto :goto_3

    .line 461
    :cond_3
    :goto_2
    const/4 v4, -0x1

    .line 462
    :goto_3
    packed-switch v4, :pswitch_data_0

    .line 463
    .line 464
    .line 465
    goto/16 :goto_1

    .line 466
    .line 467
    :pswitch_0
    const/16 v4, 0x15

    .line 468
    .line 469
    goto :goto_4

    .line 470
    :pswitch_1
    const/16 v4, 0x14

    .line 471
    .line 472
    goto :goto_4

    .line 473
    :pswitch_2
    const/16 v4, 0x13

    .line 474
    .line 475
    goto :goto_4

    .line 476
    :pswitch_3
    const/16 v4, 0x12

    .line 477
    .line 478
    goto :goto_4

    .line 479
    :pswitch_4
    const/16 v4, 0x11

    .line 480
    .line 481
    goto :goto_4

    .line 482
    :pswitch_5
    const/16 v4, 0x10

    .line 483
    .line 484
    goto :goto_4

    .line 485
    :pswitch_6
    const/16 v4, 0xe

    .line 486
    .line 487
    goto :goto_4

    .line 488
    :pswitch_7
    const/16 v4, 0xd

    .line 489
    .line 490
    goto :goto_4

    .line 491
    :pswitch_8
    const/16 v4, 0xc

    .line 492
    .line 493
    goto :goto_4

    .line 494
    :pswitch_9
    const/16 v4, 0xb

    .line 495
    .line 496
    goto :goto_4

    .line 497
    :pswitch_a
    const/16 v4, 0xa

    .line 498
    .line 499
    goto :goto_4

    .line 500
    :pswitch_b
    const/16 v4, 0x9

    .line 501
    .line 502
    goto :goto_4

    .line 503
    :pswitch_c
    const/16 v4, 0x8

    .line 504
    .line 505
    goto :goto_4

    .line 506
    :pswitch_d
    const/4 v4, 0x7

    .line 507
    goto :goto_4

    .line 508
    :pswitch_e
    const/4 v4, 0x6

    .line 509
    goto :goto_4

    .line 510
    :pswitch_f
    const/16 v4, 0xf

    .line 511
    .line 512
    goto :goto_4

    .line 513
    :pswitch_10
    const/4 v4, 0x5

    .line 514
    goto :goto_4

    .line 515
    :pswitch_11
    const/4 v4, 0x4

    .line 516
    goto :goto_4

    .line 517
    :pswitch_12
    const/4 v4, 0x3

    .line 518
    goto :goto_4

    .line 519
    :pswitch_13
    const/4 v4, 0x1

    .line 520
    goto :goto_4

    .line 521
    :pswitch_14
    const/4 v4, 0x0

    .line 522
    :goto_4
    if-eq v4, v3, :cond_4

    .line 523
    .line 524
    invoke-virtual {v1, v4, v0}, Lcom/google/android/gms/internal/ads/H;->b(ILjava/util/ArrayList;)V

    .line 525
    .line 526
    .line 527
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    .line 528
    .line 529
    .line 530
    move-result-object v5

    .line 531
    if-nez v5, :cond_6

    .line 532
    .line 533
    :cond_5
    const/4 v14, -0x1

    .line 534
    goto/16 :goto_5

    .line 535
    .line 536
    :cond_6
    const-string v6, ".ac3"

    .line 537
    .line 538
    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 539
    .line 540
    .line 541
    move-result v6

    .line 542
    if-nez v6, :cond_7

    .line 543
    .line 544
    const-string v6, ".ec3"

    .line 545
    .line 546
    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 547
    .line 548
    .line 549
    move-result v6

    .line 550
    if-eqz v6, :cond_8

    .line 551
    .line 552
    :cond_7
    const/4 v14, 0x0

    .line 553
    goto/16 :goto_5

    .line 554
    .line 555
    :cond_8
    const-string v6, ".ac4"

    .line 556
    .line 557
    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 558
    .line 559
    .line 560
    move-result v6

    .line 561
    if-eqz v6, :cond_9

    .line 562
    .line 563
    const/4 v14, 0x1

    .line 564
    goto/16 :goto_5

    .line 565
    .line 566
    :cond_9
    const-string v6, ".adts"

    .line 567
    .line 568
    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 569
    .line 570
    .line 571
    move-result v6

    .line 572
    if-nez v6, :cond_a

    .line 573
    .line 574
    const-string v6, ".aac"

    .line 575
    .line 576
    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 577
    .line 578
    .line 579
    move-result v6

    .line 580
    if-eqz v6, :cond_b

    .line 581
    .line 582
    :cond_a
    const/4 v14, 0x2

    .line 583
    goto/16 :goto_5

    .line 584
    .line 585
    :cond_b
    const-string v6, ".amr"

    .line 586
    .line 587
    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 588
    .line 589
    .line 590
    move-result v6

    .line 591
    if-eqz v6, :cond_c

    .line 592
    .line 593
    const/4 v14, 0x3

    .line 594
    goto/16 :goto_5

    .line 595
    .line 596
    :cond_c
    const-string v6, ".flac"

    .line 597
    .line 598
    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 599
    .line 600
    .line 601
    move-result v6

    .line 602
    if-eqz v6, :cond_d

    .line 603
    .line 604
    const/4 v14, 0x4

    .line 605
    goto/16 :goto_5

    .line 606
    .line 607
    :cond_d
    const-string v6, ".flv"

    .line 608
    .line 609
    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 610
    .line 611
    .line 612
    move-result v6

    .line 613
    if-eqz v6, :cond_e

    .line 614
    .line 615
    const/4 v14, 0x5

    .line 616
    goto/16 :goto_5

    .line 617
    .line 618
    :cond_e
    const-string v6, ".mid"

    .line 619
    .line 620
    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 621
    .line 622
    .line 623
    move-result v6

    .line 624
    if-nez v6, :cond_f

    .line 625
    .line 626
    const-string v6, ".midi"

    .line 627
    .line 628
    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 629
    .line 630
    .line 631
    move-result v6

    .line 632
    if-nez v6, :cond_f

    .line 633
    .line 634
    const-string v6, ".smf"

    .line 635
    .line 636
    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 637
    .line 638
    .line 639
    move-result v6

    .line 640
    if-eqz v6, :cond_10

    .line 641
    .line 642
    :cond_f
    const/16 v14, 0xf

    .line 643
    .line 644
    goto/16 :goto_5

    .line 645
    .line 646
    :cond_10
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 647
    .line 648
    .line 649
    move-result v6

    .line 650
    const-string v8, ".mk"

    .line 651
    .line 652
    add-int/lit8 v6, v6, -0x4

    .line 653
    .line 654
    invoke-virtual {v5, v8, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    .line 655
    .line 656
    .line 657
    move-result v6

    .line 658
    if-nez v6, :cond_11

    .line 659
    .line 660
    const-string v6, ".webm"

    .line 661
    .line 662
    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 663
    .line 664
    .line 665
    move-result v6

    .line 666
    if-eqz v6, :cond_12

    .line 667
    .line 668
    :cond_11
    const/4 v14, 0x6

    .line 669
    goto/16 :goto_5

    .line 670
    .line 671
    :cond_12
    const-string v6, ".mp3"

    .line 672
    .line 673
    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 674
    .line 675
    .line 676
    move-result v6

    .line 677
    if-eqz v6, :cond_13

    .line 678
    .line 679
    const/4 v14, 0x7

    .line 680
    goto/16 :goto_5

    .line 681
    .line 682
    :cond_13
    const-string v6, ".mp4"

    .line 683
    .line 684
    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 685
    .line 686
    .line 687
    move-result v6

    .line 688
    if-nez v6, :cond_14

    .line 689
    .line 690
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 691
    .line 692
    .line 693
    move-result v6

    .line 694
    add-int/lit8 v6, v6, -0x4

    .line 695
    .line 696
    const-string v8, ".m4"

    .line 697
    .line 698
    invoke-virtual {v5, v8, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    .line 699
    .line 700
    .line 701
    move-result v6

    .line 702
    if-nez v6, :cond_14

    .line 703
    .line 704
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 705
    .line 706
    .line 707
    move-result v6

    .line 708
    const-string v8, ".mp4"

    .line 709
    .line 710
    add-int/lit8 v6, v6, -0x5

    .line 711
    .line 712
    invoke-virtual {v5, v8, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    .line 713
    .line 714
    .line 715
    move-result v6

    .line 716
    if-nez v6, :cond_14

    .line 717
    .line 718
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 719
    .line 720
    .line 721
    move-result v6

    .line 722
    add-int/lit8 v6, v6, -0x5

    .line 723
    .line 724
    const-string v8, ".cmf"

    .line 725
    .line 726
    invoke-virtual {v5, v8, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    .line 727
    .line 728
    .line 729
    move-result v6

    .line 730
    if-eqz v6, :cond_15

    .line 731
    .line 732
    :cond_14
    const/16 v14, 0x8

    .line 733
    .line 734
    goto/16 :goto_5

    .line 735
    .line 736
    :cond_15
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 737
    .line 738
    .line 739
    move-result v6

    .line 740
    add-int/lit8 v6, v6, -0x4

    .line 741
    .line 742
    const-string v8, ".og"

    .line 743
    .line 744
    invoke-virtual {v5, v8, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    .line 745
    .line 746
    .line 747
    move-result v6

    .line 748
    if-nez v6, :cond_16

    .line 749
    .line 750
    const-string v6, ".opus"

    .line 751
    .line 752
    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 753
    .line 754
    .line 755
    move-result v6

    .line 756
    if-eqz v6, :cond_17

    .line 757
    .line 758
    :cond_16
    const/16 v14, 0x9

    .line 759
    .line 760
    goto/16 :goto_5

    .line 761
    .line 762
    :cond_17
    const-string v6, ".ps"

    .line 763
    .line 764
    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 765
    .line 766
    .line 767
    move-result v6

    .line 768
    if-nez v6, :cond_18

    .line 769
    .line 770
    const-string v6, ".mpeg"

    .line 771
    .line 772
    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 773
    .line 774
    .line 775
    move-result v6

    .line 776
    if-nez v6, :cond_18

    .line 777
    .line 778
    const-string v6, ".mpg"

    .line 779
    .line 780
    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 781
    .line 782
    .line 783
    move-result v6

    .line 784
    if-nez v6, :cond_18

    .line 785
    .line 786
    const-string v6, ".m2p"

    .line 787
    .line 788
    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 789
    .line 790
    .line 791
    move-result v6

    .line 792
    if-eqz v6, :cond_19

    .line 793
    .line 794
    :cond_18
    const/16 v14, 0xa

    .line 795
    .line 796
    goto/16 :goto_5

    .line 797
    .line 798
    :cond_19
    const-string v6, ".ts"

    .line 799
    .line 800
    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 801
    .line 802
    .line 803
    move-result v6

    .line 804
    if-nez v6, :cond_1a

    .line 805
    .line 806
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 807
    .line 808
    .line 809
    move-result v6

    .line 810
    add-int/lit8 v6, v6, -0x4

    .line 811
    .line 812
    const-string v8, ".ts"

    .line 813
    .line 814
    invoke-virtual {v5, v8, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    .line 815
    .line 816
    .line 817
    move-result v6

    .line 818
    if-eqz v6, :cond_1b

    .line 819
    .line 820
    :cond_1a
    const/16 v14, 0xb

    .line 821
    .line 822
    goto/16 :goto_5

    .line 823
    .line 824
    :cond_1b
    const-string v6, ".wav"

    .line 825
    .line 826
    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 827
    .line 828
    .line 829
    move-result v6

    .line 830
    if-nez v6, :cond_1c

    .line 831
    .line 832
    const-string v6, ".wave"

    .line 833
    .line 834
    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 835
    .line 836
    .line 837
    move-result v6

    .line 838
    if-eqz v6, :cond_1d

    .line 839
    .line 840
    :cond_1c
    const/16 v14, 0xc

    .line 841
    .line 842
    goto/16 :goto_5

    .line 843
    .line 844
    :cond_1d
    const-string v6, ".vtt"

    .line 845
    .line 846
    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 847
    .line 848
    .line 849
    move-result v6

    .line 850
    if-nez v6, :cond_1e

    .line 851
    .line 852
    const-string v6, ".webvtt"

    .line 853
    .line 854
    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 855
    .line 856
    .line 857
    move-result v6

    .line 858
    if-eqz v6, :cond_1f

    .line 859
    .line 860
    :cond_1e
    const/16 v14, 0xd

    .line 861
    .line 862
    goto :goto_5

    .line 863
    :cond_1f
    const-string v6, ".jpg"

    .line 864
    .line 865
    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 866
    .line 867
    .line 868
    move-result v6

    .line 869
    if-nez v6, :cond_20

    .line 870
    .line 871
    const-string v6, ".jpeg"

    .line 872
    .line 873
    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 874
    .line 875
    .line 876
    move-result v6

    .line 877
    if-eqz v6, :cond_21

    .line 878
    .line 879
    :cond_20
    const/16 v14, 0xe

    .line 880
    .line 881
    goto :goto_5

    .line 882
    :cond_21
    const-string v6, ".avi"

    .line 883
    .line 884
    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 885
    .line 886
    .line 887
    move-result v6

    .line 888
    if-eqz v6, :cond_22

    .line 889
    .line 890
    const/16 v14, 0x10

    .line 891
    .line 892
    goto :goto_5

    .line 893
    :cond_22
    const-string v6, ".png"

    .line 894
    .line 895
    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 896
    .line 897
    .line 898
    move-result v6

    .line 899
    if-eqz v6, :cond_23

    .line 900
    .line 901
    const/16 v14, 0x11

    .line 902
    .line 903
    goto :goto_5

    .line 904
    :cond_23
    const-string v6, ".webp"

    .line 905
    .line 906
    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 907
    .line 908
    .line 909
    move-result v6

    .line 910
    if-eqz v6, :cond_24

    .line 911
    .line 912
    const/16 v14, 0x12

    .line 913
    .line 914
    goto :goto_5

    .line 915
    :cond_24
    const-string v6, ".bmp"

    .line 916
    .line 917
    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 918
    .line 919
    .line 920
    move-result v6

    .line 921
    if-nez v6, :cond_25

    .line 922
    .line 923
    const-string v6, ".dib"

    .line 924
    .line 925
    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 926
    .line 927
    .line 928
    move-result v6

    .line 929
    if-eqz v6, :cond_26

    .line 930
    .line 931
    :cond_25
    const/16 v14, 0x13

    .line 932
    .line 933
    goto :goto_5

    .line 934
    :cond_26
    const-string v6, ".heic"

    .line 935
    .line 936
    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 937
    .line 938
    .line 939
    move-result v6

    .line 940
    if-nez v6, :cond_28

    .line 941
    .line 942
    const-string v6, ".heif"

    .line 943
    .line 944
    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 945
    .line 946
    .line 947
    move-result v6

    .line 948
    if-eqz v6, :cond_27

    .line 949
    .line 950
    goto :goto_5

    .line 951
    :cond_27
    const-string v6, ".avif"

    .line 952
    .line 953
    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 954
    .line 955
    .line 956
    move-result v5

    .line 957
    if-eqz v5, :cond_5

    .line 958
    .line 959
    const/16 v14, 0x15

    .line 960
    .line 961
    :cond_28
    :goto_5
    if-eq v14, v3, :cond_29

    .line 962
    .line 963
    if-eq v14, v4, :cond_29

    .line 964
    .line 965
    invoke-virtual {v1, v14, v0}, Lcom/google/android/gms/internal/ads/H;->b(ILjava/util/ArrayList;)V

    .line 966
    .line 967
    .line 968
    :cond_29
    sget-object v3, Lcom/google/android/gms/internal/ads/H;->I:[I

    .line 969
    .line 970
    const/4 v5, 0x0

    .line 971
    :goto_6
    if-ge v5, v2, :cond_2b

    .line 972
    .line 973
    aget v6, v3, v5

    .line 974
    .line 975
    if-eq v6, v4, :cond_2a

    .line 976
    .line 977
    if-eq v6, v14, :cond_2a

    .line 978
    .line 979
    invoke-virtual {v1, v6, v0}, Lcom/google/android/gms/internal/ads/H;->b(ILjava/util/ArrayList;)V

    .line 980
    .line 981
    .line 982
    :cond_2a
    add-int/lit8 v5, v5, 0x1

    .line 983
    .line 984
    goto :goto_6

    .line 985
    :cond_2b
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 986
    .line 987
    .line 988
    move-result v2

    .line 989
    new-array v2, v2, [Lcom/google/android/gms/internal/ads/L;

    .line 990
    .line 991
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 992
    .line 993
    .line 994
    move-result-object v0

    .line 995
    check-cast v0, [Lcom/google/android/gms/internal/ads/L;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 996
    .line 997
    monitor-exit p0

    .line 998
    return-object v0

    .line 999
    :goto_7
    monitor-exit p0

    .line 1000
    throw v0

    .line 1001
    :sswitch_data_0
    .sparse-switch
        -0x7e929daa -> :sswitch_1f
        -0x6315f78b -> :sswitch_1e
        -0x6315f787 -> :sswitch_1d
        -0x63118f53 -> :sswitch_1c
        -0x5fc6f775 -> :sswitch_1b
        -0x58abd7ba -> :sswitch_1a
        -0x58a8e8f5 -> :sswitch_19
        -0x58a8e8f2 -> :sswitch_18
        -0x58a7d764 -> :sswitch_17
        -0x58a21830 -> :sswitch_16
        -0x4a681e4e -> :sswitch_15
        -0x405dba54 -> :sswitch_14
        -0x3be2f26c -> :sswitch_13
        -0x3468a12f -> :sswitch_12
        -0x34686c8b -> :sswitch_11
        -0x17118226 -> :sswitch_10
        -0x2974308 -> :sswitch_f
        0xd45707 -> :sswitch_e
        0xb269698 -> :sswitch_d
        0xb269699 -> :sswitch_c
        0xb26980d -> :sswitch_b
        0xb26c538 -> :sswitch_a
        0xb26cbd6 -> :sswitch_9
        0xb26e933 -> :sswitch_8
        0x4f62635d -> :sswitch_7
        0x59976a2d -> :sswitch_6
        0x59ae0c65 -> :sswitch_5
        0x59aeaa01 -> :sswitch_4
        0x59b1cdba -> :sswitch_3
        0x59b1e81e -> :sswitch_2
        0x59b64a32 -> :sswitch_1
        0x79909c15 -> :sswitch_0
    .end sparse-switch

    .line 1002
    .line 1003
    .line 1004
    .line 1005
    .line 1006
    .line 1007
    .line 1008
    .line 1009
    .line 1010
    .line 1011
    .line 1012
    .line 1013
    .line 1014
    .line 1015
    .line 1016
    .line 1017
    .line 1018
    .line 1019
    .line 1020
    .line 1021
    .line 1022
    .line 1023
    .line 1024
    .line 1025
    .line 1026
    .line 1027
    .line 1028
    .line 1029
    .line 1030
    .line 1031
    .line 1032
    .line 1033
    .line 1034
    .line 1035
    .line 1036
    .line 1037
    .line 1038
    .line 1039
    .line 1040
    .line 1041
    .line 1042
    .line 1043
    .line 1044
    .line 1045
    .line 1046
    .line 1047
    .line 1048
    .line 1049
    .line 1050
    .line 1051
    .line 1052
    .line 1053
    .line 1054
    .line 1055
    .line 1056
    .line 1057
    .line 1058
    .line 1059
    .line 1060
    .line 1061
    .line 1062
    .line 1063
    .line 1064
    .line 1065
    .line 1066
    .line 1067
    .line 1068
    .line 1069
    .line 1070
    .line 1071
    .line 1072
    .line 1073
    .line 1074
    .line 1075
    .line 1076
    .line 1077
    .line 1078
    .line 1079
    .line 1080
    .line 1081
    .line 1082
    .line 1083
    .line 1084
    .line 1085
    .line 1086
    .line 1087
    .line 1088
    .line 1089
    .line 1090
    .line 1091
    .line 1092
    .line 1093
    .line 1094
    .line 1095
    .line 1096
    .line 1097
    .line 1098
    .line 1099
    .line 1100
    .line 1101
    .line 1102
    .line 1103
    .line 1104
    .line 1105
    .line 1106
    .line 1107
    .line 1108
    .line 1109
    .line 1110
    .line 1111
    .line 1112
    .line 1113
    .line 1114
    .line 1115
    .line 1116
    .line 1117
    .line 1118
    .line 1119
    .line 1120
    .line 1121
    .line 1122
    .line 1123
    .line 1124
    .line 1125
    .line 1126
    .line 1127
    .line 1128
    .line 1129
    .line 1130
    .line 1131
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_c
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
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final b(ILjava/util/ArrayList;)V
    .locals 4

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x1

    .line 3
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/H;->H:Lcom/google/android/gms/internal/ads/kH;

    .line 4
    .line 5
    const/4 v3, 0x0

    .line 6
    packed-switch p1, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    :pswitch_0
    goto :goto_0

    .line 10
    :pswitch_1
    new-instance p1, Lcom/google/android/gms/internal/ads/q0;

    .line 11
    .line 12
    invoke-direct {p1, v3}, Lcom/google/android/gms/internal/ads/q0;-><init>(I)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :pswitch_2
    new-instance p1, Lcom/google/android/gms/internal/ads/q0;

    .line 20
    .line 21
    invoke-direct {p1, v1}, Lcom/google/android/gms/internal/ads/q0;-><init>(I)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :pswitch_3
    new-instance p1, Lcom/google/android/gms/internal/ads/r0;

    .line 29
    .line 30
    invoke-direct {p1, v3}, Lcom/google/android/gms/internal/ads/r0;-><init>(I)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :pswitch_4
    new-instance p1, Lcom/google/android/gms/internal/ads/q0;

    .line 38
    .line 39
    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/q0;-><init>(I)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/ads/r0;

    .line 47
    .line 48
    invoke-direct {p1, v1}, Lcom/google/android/gms/internal/ads/r0;-><init>(I)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/ads/i0;

    .line 56
    .line 57
    invoke-direct {p1, v2}, Lcom/google/android/gms/internal/ads/i0;-><init>(Lcom/google/android/gms/internal/ads/kH;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    return-void

    .line 64
    :pswitch_7
    sget-object p1, Lcom/google/android/gms/internal/ads/H;->K:Lcom/google/android/gms/internal/ads/x;

    .line 65
    .line 66
    new-array v0, v3, [Ljava/lang/Object;

    .line 67
    .line 68
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/x;->h([Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/L;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    if-eqz p1, :cond_0

    .line 73
    .line 74
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    :cond_0
    :goto_0
    return-void

    .line 78
    :pswitch_8
    new-instance p1, Lcom/google/android/gms/internal/ads/r0;

    .line 79
    .line 80
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/r0;-><init>()V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    return-void

    .line 87
    :pswitch_9
    new-instance p1, Lcom/google/android/gms/internal/ads/f3;

    .line 88
    .line 89
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 90
    .line 91
    .line 92
    iput v3, p1, Lcom/google/android/gms/internal/ads/f3;->c:I

    .line 93
    .line 94
    const-wide/16 v0, -0x1

    .line 95
    .line 96
    iput-wide v0, p1, Lcom/google/android/gms/internal/ads/f3;->d:J

    .line 97
    .line 98
    const/4 v2, -0x1

    .line 99
    iput v2, p1, Lcom/google/android/gms/internal/ads/f3;->f:I

    .line 100
    .line 101
    iput-wide v0, p1, Lcom/google/android/gms/internal/ads/f3;->g:J

    .line 102
    .line 103
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    return-void

    .line 107
    :pswitch_a
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/H;->G:Lcom/google/android/gms/internal/ads/PA;

    .line 108
    .line 109
    if-nez p1, :cond_1

    .line 110
    .line 111
    sget-object p1, Lcom/google/android/gms/internal/ads/uA;->H:Lcom/google/android/gms/internal/ads/sA;

    .line 112
    .line 113
    sget-object p1, Lcom/google/android/gms/internal/ads/PA;->K:Lcom/google/android/gms/internal/ads/PA;

    .line 114
    .line 115
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/H;->G:Lcom/google/android/gms/internal/ads/PA;

    .line 116
    .line 117
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/ads/X2;

    .line 118
    .line 119
    new-instance v0, Lcom/google/android/gms/internal/ads/Ys;

    .line 120
    .line 121
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/Ys;-><init>()V

    .line 122
    .line 123
    .line 124
    new-instance v1, LI2/c;

    .line 125
    .line 126
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/H;->G:Lcom/google/android/gms/internal/ads/PA;

    .line 127
    .line 128
    invoke-direct {v1, v3}, LI2/c;-><init>(Ljava/util/List;)V

    .line 129
    .line 130
    .line 131
    invoke-direct {p1, v2, v0, v1}, Lcom/google/android/gms/internal/ads/X2;-><init>(Lcom/google/android/gms/internal/ads/kH;Lcom/google/android/gms/internal/ads/Ys;LI2/c;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    .line 136
    .line 137
    return-void

    .line 138
    :pswitch_b
    new-instance p1, Lcom/google/android/gms/internal/ads/T2;

    .line 139
    .line 140
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/T2;-><init>()V

    .line 141
    .line 142
    .line 143
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    return-void

    .line 147
    :pswitch_c
    new-instance p1, Lcom/google/android/gms/internal/ads/M1;

    .line 148
    .line 149
    invoke-direct {p1, v3}, Lcom/google/android/gms/internal/ads/M1;-><init>(I)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    .line 154
    .line 155
    return-void

    .line 156
    :pswitch_d
    new-instance p1, Lcom/google/android/gms/internal/ads/x1;

    .line 157
    .line 158
    sget-object v0, Lcom/google/android/gms/internal/ads/PA;->K:Lcom/google/android/gms/internal/ads/PA;

    .line 159
    .line 160
    invoke-direct {p1, v2, v3, v0}, Lcom/google/android/gms/internal/ads/x1;-><init>(Lcom/google/android/gms/internal/ads/kH;ILcom/google/android/gms/internal/ads/PA;)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    .line 165
    .line 166
    new-instance p1, Lcom/google/android/gms/internal/ads/A1;

    .line 167
    .line 168
    invoke-direct {p1, v3, v2}, Lcom/google/android/gms/internal/ads/A1;-><init>(ILcom/google/android/gms/internal/ads/kH;)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 172
    .line 173
    .line 174
    return-void

    .line 175
    :pswitch_e
    new-instance p1, Lcom/google/android/gms/internal/ads/j1;

    .line 176
    .line 177
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/j1;-><init>()V

    .line 178
    .line 179
    .line 180
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    .line 182
    .line 183
    return-void

    .line 184
    :pswitch_f
    new-instance p1, Lcom/google/android/gms/internal/ads/f1;

    .line 185
    .line 186
    new-instance v0, Lcom/google/android/gms/internal/ads/c1;

    .line 187
    .line 188
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/c1;-><init>()V

    .line 189
    .line 190
    .line 191
    invoke-direct {p1, v0, v3, v2}, Lcom/google/android/gms/internal/ads/f1;-><init>(Lcom/google/android/gms/internal/ads/c1;ILcom/google/android/gms/internal/ads/kH;)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 195
    .line 196
    .line 197
    return-void

    .line 198
    :pswitch_10
    new-instance p1, Lcom/google/android/gms/internal/ads/u0;

    .line 199
    .line 200
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/u0;-><init>()V

    .line 201
    .line 202
    .line 203
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 204
    .line 205
    .line 206
    return-void

    .line 207
    :pswitch_11
    sget-object p1, Lcom/google/android/gms/internal/ads/H;->J:Lcom/google/android/gms/internal/ads/x;

    .line 208
    .line 209
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 210
    .line 211
    .line 212
    move-result-object v0

    .line 213
    new-array v1, v1, [Ljava/lang/Object;

    .line 214
    .line 215
    aput-object v0, v1, v3

    .line 216
    .line 217
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/x;->h([Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/L;

    .line 218
    .line 219
    .line 220
    move-result-object p1

    .line 221
    if-eqz p1, :cond_2

    .line 222
    .line 223
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 224
    .line 225
    .line 226
    return-void

    .line 227
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/ads/s0;

    .line 228
    .line 229
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/s0;-><init>()V

    .line 230
    .line 231
    .line 232
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 233
    .line 234
    .line 235
    return-void

    .line 236
    :pswitch_12
    new-instance p1, Lcom/google/android/gms/internal/ads/g0;

    .line 237
    .line 238
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/g0;-><init>()V

    .line 239
    .line 240
    .line 241
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 242
    .line 243
    .line 244
    return-void

    .line 245
    :pswitch_13
    new-instance p1, Lcom/google/android/gms/internal/ads/B2;

    .line 246
    .line 247
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/B2;-><init>()V

    .line 248
    .line 249
    .line 250
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 251
    .line 252
    .line 253
    return-void

    .line 254
    :pswitch_14
    new-instance p1, Lcom/google/android/gms/internal/ads/M1;

    .line 255
    .line 256
    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/M1;-><init>(I)V

    .line 257
    .line 258
    .line 259
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 260
    .line 261
    .line 262
    return-void

    .line 263
    :pswitch_15
    new-instance p1, Lcom/google/android/gms/internal/ads/M1;

    .line 264
    .line 265
    invoke-direct {p1, v1}, Lcom/google/android/gms/internal/ads/M1;-><init>(I)V

    .line 266
    .line 267
    .line 268
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 269
    .line 270
    .line 271
    return-void

    .line 272
    nop

    .line 273
    :pswitch_data_0
    .packed-switch 0x0
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
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
