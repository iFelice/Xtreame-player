.class public final Lcom/google/ads/interactivemedia/v3/internal/zzi;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static zza(Ljava/lang/String;)[[Ljava/security/cert/X509Certificate;
    .locals 22

    .line 1
    const-string v0, "Not an APK file: ZIP End of Central Directory record not found in file with "

    .line 2
    .line 3
    const-string v1, "APK Signing Block size out of range: "

    .line 4
    .line 5
    const-string v2, "end > capacity: "

    .line 6
    .line 7
    const-string v3, " < 8"

    .line 8
    .line 9
    const-string v4, "end < start: "

    .line 10
    .line 11
    const-string v5, "APK Signing Block sizes in header and footer do not match: "

    .line 12
    .line 13
    const-string v6, "APK Signing Block offset out of range: "

    .line 14
    .line 15
    const-string v7, "APK too small for APK Signing Block. ZIP Central Directory offset: "

    .line 16
    .line 17
    const-string v8, "ZIP Central Directory offset out of range: "

    .line 18
    .line 19
    new-instance v9, Ljava/io/RandomAccessFile;

    .line 20
    .line 21
    const-string v10, "r"

    .line 22
    .line 23
    move-object/from16 v11, p0

    .line 24
    .line 25
    invoke-direct {v9, v11, v10}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    :try_start_0
    invoke-static {v9}, Lcom/google/ads/interactivemedia/v3/internal/zzj;->zzc(Ljava/io/RandomAccessFile;)Landroid/util/Pair;

    .line 29
    .line 30
    .line 31
    move-result-object v10

    .line 32
    if-eqz v10, :cond_11

    .line 33
    .line 34
    iget-object v0, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 35
    .line 36
    move-object/from16 v19, v0

    .line 37
    .line 38
    check-cast v19, Ljava/nio/ByteBuffer;

    .line 39
    .line 40
    iget-object v0, v10, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast v0, Ljava/lang/Long;

    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 45
    .line 46
    .line 47
    move-result-wide v13

    .line 48
    const-wide/16 v10, -0x14

    .line 49
    .line 50
    add-long/2addr v10, v13

    .line 51
    const-wide/16 v15, 0x0

    .line 52
    .line 53
    cmp-long v0, v10, v15

    .line 54
    .line 55
    if-gez v0, :cond_0

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_0
    invoke-virtual {v9, v10, v11}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->readInt()I

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    const v10, 0x504b0607

    .line 66
    .line 67
    .line 68
    if-eq v0, v10, :cond_10

    .line 69
    .line 70
    :goto_0
    invoke-static/range {v19 .. v19}, Lcom/google/ads/interactivemedia/v3/internal/zzj;->zza(Ljava/nio/ByteBuffer;)J

    .line 71
    .line 72
    .line 73
    move-result-wide v10

    .line 74
    cmp-long v0, v10, v13

    .line 75
    .line 76
    if-gez v0, :cond_f

    .line 77
    .line 78
    invoke-static/range {v19 .. v19}, Lcom/google/ads/interactivemedia/v3/internal/zzj;->zzb(Ljava/nio/ByteBuffer;)J

    .line 79
    .line 80
    .line 81
    move-result-wide v17

    .line 82
    add-long v17, v10, v17

    .line 83
    .line 84
    cmp-long v0, v17, v13

    .line 85
    .line 86
    if-nez v0, :cond_e

    .line 87
    .line 88
    const-wide/16 v17, 0x20

    .line 89
    .line 90
    cmp-long v0, v10, v17

    .line 91
    .line 92
    if-ltz v0, :cond_d

    .line 93
    .line 94
    const/16 v0, 0x18

    .line 95
    .line 96
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    sget-object v7, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 101
    .line 102
    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    .line 106
    .line 107
    .line 108
    move-result v8

    .line 109
    move-wide/from16 v17, v13

    .line 110
    .line 111
    int-to-long v12, v8

    .line 112
    sub-long v12, v10, v12

    .line 113
    .line 114
    invoke-virtual {v9, v12, v13}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    .line 118
    .line 119
    .line 120
    move-result-object v8

    .line 121
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    .line 122
    .line 123
    .line 124
    move-result v12

    .line 125
    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    .line 126
    .line 127
    .line 128
    move-result v13

    .line 129
    invoke-virtual {v9, v8, v12, v13}, Ljava/io/RandomAccessFile;->readFully([BII)V

    .line 130
    .line 131
    .line 132
    const/16 v8, 0x8

    .line 133
    .line 134
    invoke-virtual {v0, v8}, Ljava/nio/ByteBuffer;->getLong(I)J

    .line 135
    .line 136
    .line 137
    move-result-wide v12

    .line 138
    const-wide v20, 0x20676953204b5041L

    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    cmp-long v14, v12, v20

    .line 144
    .line 145
    if-nez v14, :cond_c

    .line 146
    .line 147
    const/16 v12, 0x10

    .line 148
    .line 149
    invoke-virtual {v0, v12}, Ljava/nio/ByteBuffer;->getLong(I)J

    .line 150
    .line 151
    .line 152
    move-result-wide v12

    .line 153
    const-wide v20, 0x3234206b636f6c42L    # 7.465385175170059E-67

    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    cmp-long v14, v12, v20

    .line 159
    .line 160
    if-nez v14, :cond_c

    .line 161
    .line 162
    const/4 v12, 0x0

    .line 163
    invoke-virtual {v0, v12}, Ljava/nio/ByteBuffer;->getLong(I)J

    .line 164
    .line 165
    .line 166
    move-result-wide v13

    .line 167
    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    .line 168
    .line 169
    .line 170
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 171
    move-object/from16 v21, v9

    .line 172
    .line 173
    int-to-long v8, v0

    .line 174
    cmp-long v0, v13, v8

    .line 175
    .line 176
    if-ltz v0, :cond_b

    .line 177
    .line 178
    const-wide/32 v8, 0x7ffffff7

    .line 179
    .line 180
    .line 181
    cmp-long v0, v13, v8

    .line 182
    .line 183
    if-gtz v0, :cond_b

    .line 184
    .line 185
    const-wide/16 v0, 0x8

    .line 186
    .line 187
    add-long/2addr v0, v13

    .line 188
    long-to-int v1, v0

    .line 189
    int-to-long v8, v1

    .line 190
    sub-long v8, v10, v8

    .line 191
    .line 192
    cmp-long v0, v8, v15

    .line 193
    .line 194
    if-ltz v0, :cond_a

    .line 195
    .line 196
    :try_start_1
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 201
    .line 202
    .line 203
    move-object/from16 v1, v21

    .line 204
    .line 205
    :try_start_2
    invoke-virtual {v1, v8, v9}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    .line 209
    .line 210
    .line 211
    move-result-object v6

    .line 212
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    .line 213
    .line 214
    .line 215
    move-result v15

    .line 216
    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    .line 217
    .line 218
    .line 219
    move-result v12

    .line 220
    invoke-virtual {v1, v6, v15, v12}, Ljava/io/RandomAccessFile;->readFully([BII)V

    .line 221
    .line 222
    .line 223
    move-wide/from16 v20, v10

    .line 224
    .line 225
    const/4 v6, 0x0

    .line 226
    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->getLong(I)J

    .line 227
    .line 228
    .line 229
    move-result-wide v10

    .line 230
    cmp-long v6, v10, v13

    .line 231
    .line 232
    if-nez v6, :cond_9

    .line 233
    .line 234
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 235
    .line 236
    .line 237
    move-result-object v5

    .line 238
    invoke-static {v0, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 239
    .line 240
    .line 241
    move-result-object v0

    .line 242
    iget-object v5, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 243
    .line 244
    check-cast v5, Ljava/nio/ByteBuffer;

    .line 245
    .line 246
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 247
    .line 248
    check-cast v0, Ljava/lang/Long;

    .line 249
    .line 250
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 251
    .line 252
    .line 253
    move-result-wide v13

    .line 254
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    .line 255
    .line 256
    .line 257
    move-result-object v0

    .line 258
    if-ne v0, v7, :cond_8

    .line 259
    .line 260
    invoke-virtual {v5}, Ljava/nio/Buffer;->capacity()I

    .line 261
    .line 262
    .line 263
    move-result v0

    .line 264
    add-int/lit8 v0, v0, -0x18

    .line 265
    .line 266
    const/16 v6, 0x8

    .line 267
    .line 268
    if-lt v0, v6, :cond_7

    .line 269
    .line 270
    invoke-virtual {v5}, Ljava/nio/Buffer;->capacity()I

    .line 271
    .line 272
    .line 273
    move-result v3

    .line 274
    invoke-virtual {v5}, Ljava/nio/Buffer;->capacity()I

    .line 275
    .line 276
    .line 277
    move-result v4

    .line 278
    if-gt v0, v4, :cond_6

    .line 279
    .line 280
    invoke-virtual {v5}, Ljava/nio/Buffer;->limit()I

    .line 281
    .line 282
    .line 283
    move-result v2

    .line 284
    invoke-virtual {v5}, Ljava/nio/Buffer;->position()I

    .line 285
    .line 286
    .line 287
    move-result v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 288
    const/4 v4, 0x0

    .line 289
    :try_start_3
    invoke-virtual {v5, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 290
    .line 291
    .line 292
    invoke-virtual {v5, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 293
    .line 294
    .line 295
    const/16 v0, 0x8

    .line 296
    .line 297
    invoke-virtual {v5, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 298
    .line 299
    .line 300
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    .line 301
    .line 302
    .line 303
    move-result-object v0

    .line 304
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    .line 305
    .line 306
    .line 307
    move-result-object v4

    .line 308
    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 309
    .line 310
    .line 311
    const/4 v4, 0x0

    .line 312
    :try_start_4
    invoke-virtual {v5, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 313
    .line 314
    .line 315
    invoke-virtual {v5, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 316
    .line 317
    .line 318
    invoke-virtual {v5, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 319
    .line 320
    .line 321
    const/4 v12, 0x0

    .line 322
    :goto_1
    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 323
    .line 324
    .line 325
    move-result v2

    .line 326
    if-eqz v2, :cond_5

    .line 327
    .line 328
    add-int/lit8 v12, v12, 0x1

    .line 329
    .line 330
    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    .line 331
    .line 332
    .line 333
    move-result v2

    .line 334
    const/16 v3, 0x8

    .line 335
    .line 336
    if-lt v2, v3, :cond_4

    .line 337
    .line 338
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J

    .line 339
    .line 340
    .line 341
    move-result-wide v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 342
    const-wide/16 v6, 0x4

    .line 343
    .line 344
    const-string v2, " size out of range: "

    .line 345
    .line 346
    const-string v8, "APK Signing Block entry #"

    .line 347
    .line 348
    cmp-long v9, v4, v6

    .line 349
    .line 350
    if-ltz v9, :cond_3

    .line 351
    .line 352
    const-wide/32 v6, 0x7fffffff

    .line 353
    .line 354
    .line 355
    cmp-long v9, v4, v6

    .line 356
    .line 357
    if-gtz v9, :cond_3

    .line 358
    .line 359
    :try_start_5
    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    .line 360
    .line 361
    .line 362
    move-result v6

    .line 363
    long-to-int v5, v4

    .line 364
    add-int/2addr v6, v5

    .line 365
    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    .line 366
    .line 367
    .line 368
    move-result v4

    .line 369
    if-gt v5, v4, :cond_2

    .line 370
    .line 371
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    .line 372
    .line 373
    .line 374
    move-result v2

    .line 375
    const v4, 0x7109871a

    .line 376
    .line 377
    .line 378
    if-ne v2, v4, :cond_1

    .line 379
    .line 380
    add-int/lit8 v5, v5, -0x4

    .line 381
    .line 382
    invoke-static {v0, v5}, Lcom/google/ads/interactivemedia/v3/internal/zzi;->zze(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    .line 383
    .line 384
    .line 385
    move-result-object v12

    .line 386
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zze;

    .line 387
    .line 388
    const/4 v2, 0x0

    .line 389
    move-wide/from16 v4, v20

    .line 390
    .line 391
    move-object v11, v0

    .line 392
    move-wide/from16 v9, v17

    .line 393
    .line 394
    move-wide v15, v4

    .line 395
    move-object/from16 v20, v2

    .line 396
    .line 397
    invoke-direct/range {v11 .. v20}, Lcom/google/ads/interactivemedia/v3/internal/zze;-><init>(Ljava/nio/ByteBuffer;JJJLjava/nio/ByteBuffer;Lcom/google/ads/interactivemedia/v3/internal/zzd;)V

    .line 398
    .line 399
    .line 400
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    .line 401
    .line 402
    .line 403
    move-result-object v2

    .line 404
    invoke-static {v2, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzi;->zzl(Ljava/nio/channels/FileChannel;Lcom/google/ads/interactivemedia/v3/internal/zze;)[[Ljava/security/cert/X509Certificate;

    .line 405
    .line 406
    .line 407
    move-result-object v0

    .line 408
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 409
    .line 410
    .line 411
    :try_start_6
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    .line 412
    .line 413
    .line 414
    :catch_0
    return-object v0

    .line 415
    :catchall_0
    move-exception v0

    .line 416
    :goto_2
    move-object v2, v1

    .line 417
    goto/16 :goto_3

    .line 418
    .line 419
    :cond_1
    move-wide/from16 v9, v17

    .line 420
    .line 421
    move-wide/from16 v4, v20

    .line 422
    .line 423
    :try_start_7
    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 424
    .line 425
    .line 426
    move-wide/from16 v20, v4

    .line 427
    .line 428
    move-wide/from16 v17, v9

    .line 429
    .line 430
    goto :goto_1

    .line 431
    :cond_2
    new-instance v3, Lcom/google/ads/interactivemedia/v3/internal/zzf;

    .line 432
    .line 433
    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    .line 434
    .line 435
    .line 436
    move-result v0

    .line 437
    new-instance v4, Ljava/lang/StringBuilder;

    .line 438
    .line 439
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 440
    .line 441
    .line 442
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 443
    .line 444
    .line 445
    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 446
    .line 447
    .line 448
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 449
    .line 450
    .line 451
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 452
    .line 453
    .line 454
    const-string v2, ", available: "

    .line 455
    .line 456
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 457
    .line 458
    .line 459
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 460
    .line 461
    .line 462
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 463
    .line 464
    .line 465
    move-result-object v0

    .line 466
    invoke-direct {v3, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzf;-><init>(Ljava/lang/String;)V

    .line 467
    .line 468
    .line 469
    throw v3

    .line 470
    :cond_3
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzf;

    .line 471
    .line 472
    new-instance v3, Ljava/lang/StringBuilder;

    .line 473
    .line 474
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 475
    .line 476
    .line 477
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 478
    .line 479
    .line 480
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 481
    .line 482
    .line 483
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 484
    .line 485
    .line 486
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 487
    .line 488
    .line 489
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 490
    .line 491
    .line 492
    move-result-object v2

    .line 493
    invoke-direct {v0, v2}, Lcom/google/ads/interactivemedia/v3/internal/zzf;-><init>(Ljava/lang/String;)V

    .line 494
    .line 495
    .line 496
    throw v0

    .line 497
    :cond_4
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzf;

    .line 498
    .line 499
    new-instance v2, Ljava/lang/StringBuilder;

    .line 500
    .line 501
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 502
    .line 503
    .line 504
    const-string v3, "Insufficient data to read size of APK Signing Block entry #"

    .line 505
    .line 506
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 507
    .line 508
    .line 509
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 510
    .line 511
    .line 512
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 513
    .line 514
    .line 515
    move-result-object v2

    .line 516
    invoke-direct {v0, v2}, Lcom/google/ads/interactivemedia/v3/internal/zzf;-><init>(Ljava/lang/String;)V

    .line 517
    .line 518
    .line 519
    throw v0

    .line 520
    :cond_5
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzf;

    .line 521
    .line 522
    const-string v2, "No APK Signature Scheme v2 block in APK Signing Block"

    .line 523
    .line 524
    invoke-direct {v0, v2}, Lcom/google/ads/interactivemedia/v3/internal/zzf;-><init>(Ljava/lang/String;)V

    .line 525
    .line 526
    .line 527
    throw v0

    .line 528
    :catchall_1
    move-exception v0

    .line 529
    const/4 v4, 0x0

    .line 530
    invoke-virtual {v5, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 531
    .line 532
    .line 533
    invoke-virtual {v5, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 534
    .line 535
    .line 536
    invoke-virtual {v5, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 537
    .line 538
    .line 539
    throw v0

    .line 540
    :cond_6
    new-instance v4, Ljava/lang/IllegalArgumentException;

    .line 541
    .line 542
    new-instance v5, Ljava/lang/StringBuilder;

    .line 543
    .line 544
    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 545
    .line 546
    .line 547
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 548
    .line 549
    .line 550
    const-string v0, " > "

    .line 551
    .line 552
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 553
    .line 554
    .line 555
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 556
    .line 557
    .line 558
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 559
    .line 560
    .line 561
    move-result-object v0

    .line 562
    invoke-direct {v4, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 563
    .line 564
    .line 565
    throw v4

    .line 566
    :cond_7
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 567
    .line 568
    new-instance v5, Ljava/lang/StringBuilder;

    .line 569
    .line 570
    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 571
    .line 572
    .line 573
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 574
    .line 575
    .line 576
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 577
    .line 578
    .line 579
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 580
    .line 581
    .line 582
    move-result-object v0

    .line 583
    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 584
    .line 585
    .line 586
    throw v2

    .line 587
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 588
    .line 589
    const-string v2, "ByteBuffer byte order must be little endian"

    .line 590
    .line 591
    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 592
    .line 593
    .line 594
    throw v0

    .line 595
    :cond_9
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzf;

    .line 596
    .line 597
    new-instance v2, Ljava/lang/StringBuilder;

    .line 598
    .line 599
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 600
    .line 601
    .line 602
    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 603
    .line 604
    .line 605
    const-string v3, " vs "

    .line 606
    .line 607
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 608
    .line 609
    .line 610
    invoke-virtual {v2, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 611
    .line 612
    .line 613
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 614
    .line 615
    .line 616
    move-result-object v2

    .line 617
    invoke-direct {v0, v2}, Lcom/google/ads/interactivemedia/v3/internal/zzf;-><init>(Ljava/lang/String;)V

    .line 618
    .line 619
    .line 620
    throw v0

    .line 621
    :catchall_2
    move-exception v0

    .line 622
    move-object/from16 v1, v21

    .line 623
    .line 624
    goto/16 :goto_2

    .line 625
    .line 626
    :cond_a
    move-object/from16 v1, v21

    .line 627
    .line 628
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzf;

    .line 629
    .line 630
    new-instance v2, Ljava/lang/StringBuilder;

    .line 631
    .line 632
    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 633
    .line 634
    .line 635
    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 636
    .line 637
    .line 638
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 639
    .line 640
    .line 641
    move-result-object v2

    .line 642
    invoke-direct {v0, v2}, Lcom/google/ads/interactivemedia/v3/internal/zzf;-><init>(Ljava/lang/String;)V

    .line 643
    .line 644
    .line 645
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 646
    :cond_b
    move-object/from16 v2, v21

    .line 647
    .line 648
    :try_start_8
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzf;

    .line 649
    .line 650
    new-instance v3, Ljava/lang/StringBuilder;

    .line 651
    .line 652
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 653
    .line 654
    .line 655
    invoke-virtual {v3, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 656
    .line 657
    .line 658
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 659
    .line 660
    .line 661
    move-result-object v1

    .line 662
    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzf;-><init>(Ljava/lang/String;)V

    .line 663
    .line 664
    .line 665
    throw v0

    .line 666
    :catchall_3
    move-exception v0

    .line 667
    goto/16 :goto_3

    .line 668
    .line 669
    :catchall_4
    move-exception v0

    .line 670
    move-object v2, v9

    .line 671
    goto :goto_3

    .line 672
    :cond_c
    move-object v2, v9

    .line 673
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzf;

    .line 674
    .line 675
    const-string v1, "No APK Signing Block before ZIP Central Directory"

    .line 676
    .line 677
    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzf;-><init>(Ljava/lang/String;)V

    .line 678
    .line 679
    .line 680
    throw v0

    .line 681
    :cond_d
    move-object v2, v9

    .line 682
    move-wide v4, v10

    .line 683
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzf;

    .line 684
    .line 685
    new-instance v1, Ljava/lang/StringBuilder;

    .line 686
    .line 687
    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 688
    .line 689
    .line 690
    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 691
    .line 692
    .line 693
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 694
    .line 695
    .line 696
    move-result-object v1

    .line 697
    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzf;-><init>(Ljava/lang/String;)V

    .line 698
    .line 699
    .line 700
    throw v0

    .line 701
    :cond_e
    move-object v2, v9

    .line 702
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzf;

    .line 703
    .line 704
    const-string v1, "ZIP Central Directory is not immediately followed by End of Central Directory"

    .line 705
    .line 706
    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzf;-><init>(Ljava/lang/String;)V

    .line 707
    .line 708
    .line 709
    throw v0

    .line 710
    :cond_f
    move-object v2, v9

    .line 711
    move-wide v4, v10

    .line 712
    move-wide v9, v13

    .line 713
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzf;

    .line 714
    .line 715
    new-instance v1, Ljava/lang/StringBuilder;

    .line 716
    .line 717
    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 718
    .line 719
    .line 720
    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 721
    .line 722
    .line 723
    const-string v3, ". ZIP End of Central Directory offset: "

    .line 724
    .line 725
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 726
    .line 727
    .line 728
    invoke-virtual {v1, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 729
    .line 730
    .line 731
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 732
    .line 733
    .line 734
    move-result-object v1

    .line 735
    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzf;-><init>(Ljava/lang/String;)V

    .line 736
    .line 737
    .line 738
    throw v0

    .line 739
    :cond_10
    move-object v2, v9

    .line 740
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzf;

    .line 741
    .line 742
    const-string v1, "ZIP64 APK not supported"

    .line 743
    .line 744
    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzf;-><init>(Ljava/lang/String;)V

    .line 745
    .line 746
    .line 747
    throw v0

    .line 748
    :cond_11
    move-object v2, v9

    .line 749
    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/zzf;

    .line 750
    .line 751
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->length()J

    .line 752
    .line 753
    .line 754
    move-result-wide v3

    .line 755
    new-instance v5, Ljava/lang/StringBuilder;

    .line 756
    .line 757
    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 758
    .line 759
    .line 760
    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 761
    .line 762
    .line 763
    const-string v0, " bytes"

    .line 764
    .line 765
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 766
    .line 767
    .line 768
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 769
    .line 770
    .line 771
    move-result-object v0

    .line 772
    invoke-direct {v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzf;-><init>(Ljava/lang/String;)V

    .line 773
    .line 774
    .line 775
    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 776
    :goto_3
    :try_start_9
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1

    .line 777
    .line 778
    .line 779
    :catch_1
    throw v0
.end method

.method private static zzb(I)I
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p0, v0, :cond_1

    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    if-ne p0, v0, :cond_0

    .line 6
    .line 7
    const/16 p0, 0x40

    .line 8
    .line 9
    return p0

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 11
    .line 12
    const-string v1, "Unknown content digest algorthm: "

    .line 13
    .line 14
    invoke-static {v1, p0}, La/r;->f(Ljava/lang/String;I)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    throw v0

    .line 22
    :cond_1
    const/16 p0, 0x20

    .line 23
    .line 24
    return p0
.end method

.method private static zzc(I)I
    .locals 2

    .line 1
    const/16 v0, 0x201

    .line 2
    .line 3
    if-eq p0, v0, :cond_1

    .line 4
    .line 5
    const/16 v0, 0x202

    .line 6
    .line 7
    if-eq p0, v0, :cond_0

    .line 8
    .line 9
    const/16 v0, 0x301

    .line 10
    .line 11
    if-eq p0, v0, :cond_1

    .line 12
    .line 13
    packed-switch p0, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    int-to-long v0, p0

    .line 17
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 18
    .line 19
    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const-string v1, "Unknown signature algorithm: 0x"

    .line 28
    .line 29
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    throw p0

    .line 37
    :cond_0
    :pswitch_0
    const/4 p0, 0x2

    .line 38
    return p0

    .line 39
    :cond_1
    :pswitch_1
    const/4 p0, 0x1

    .line 40
    return p0

    .line 41
    :pswitch_data_0
    .packed-switch 0x101
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static zzd(I)Ljava/lang/String;
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p0, v0, :cond_1

    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    if-ne p0, v0, :cond_0

    .line 6
    .line 7
    const-string p0, "SHA-512"

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 11
    .line 12
    const-string v1, "Unknown content digest algorthm: "

    .line 13
    .line 14
    invoke-static {v1, p0}, La/r;->f(Ljava/lang/String;I)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    throw v0

    .line 22
    :cond_1
    const-string p0, "SHA-256"

    .line 23
    .line 24
    return-object p0
.end method

.method private static zze(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/nio/Buffer;->limit()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    add-int/2addr p1, v1

    .line 10
    if-lt p1, v1, :cond_0

    .line 11
    .line 12
    if-gt p1, v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 15
    .line 16
    .line 17
    :try_start_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 32
    .line 33
    .line 34
    return-object v1

    .line 35
    :catchall_0
    move-exception p1

    .line 36
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 37
    .line 38
    .line 39
    throw p1

    .line 40
    :cond_0
    new-instance p0, Ljava/nio/BufferUnderflowException;

    .line 41
    .line 42
    invoke-direct {p0}, Ljava/nio/BufferUnderflowException;-><init>()V

    .line 43
    .line 44
    .line 45
    throw p0
.end method

.method private static zzf(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x4

    .line 6
    if-lt v0, v1, :cond_2

    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-ltz v0, :cond_1

    .line 13
    .line 14
    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-gt v0, v1, :cond_0

    .line 19
    .line 20
    invoke-static {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzi;->zze(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    return-object p0

    .line 25
    :cond_0
    new-instance v1, Ljava/io/IOException;

    .line 26
    .line 27
    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    const-string v2, "Length-prefixed field longer than remaining buffer. Field length: "

    .line 32
    .line 33
    const-string v3, ", remaining: "

    .line 34
    .line 35
    invoke-static {v2, v0, v3, p0}, Lcom/google/protobuf/U2;->j(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    invoke-direct {v1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    throw v1

    .line 43
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 44
    .line 45
    const-string v0, "Negative length"

    .line 46
    .line 47
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    throw p0

    .line 51
    :cond_2
    new-instance v0, Ljava/io/IOException;

    .line 52
    .line 53
    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    .line 54
    .line 55
    .line 56
    move-result p0

    .line 57
    const-string v1, "Remaining buffer too short to contain length of length-prefixed field. Remaining: "

    .line 58
    .line 59
    invoke-static {v1, p0}, La/r;->f(Ljava/lang/String;I)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    throw v0
.end method

.method private static zzg(I[BI)V
    .locals 1

    .line 1
    and-int/lit16 p2, p0, 0xff

    .line 2
    .line 3
    int-to-byte p2, p2

    .line 4
    const/4 v0, 0x1

    .line 5
    aput-byte p2, p1, v0

    .line 6
    .line 7
    ushr-int/lit8 p2, p0, 0x8

    .line 8
    .line 9
    and-int/lit16 p2, p2, 0xff

    .line 10
    .line 11
    int-to-byte p2, p2

    .line 12
    const/4 v0, 0x2

    .line 13
    aput-byte p2, p1, v0

    .line 14
    .line 15
    ushr-int/lit8 p2, p0, 0x10

    .line 16
    .line 17
    and-int/lit16 p2, p2, 0xff

    .line 18
    .line 19
    int-to-byte p2, p2

    .line 20
    const/4 v0, 0x3

    .line 21
    aput-byte p2, p1, v0

    .line 22
    .line 23
    shr-int/lit8 p0, p0, 0x18

    .line 24
    .line 25
    int-to-byte p0, p0

    .line 26
    const/4 p2, 0x4

    .line 27
    aput-byte p0, p1, p2

    .line 28
    .line 29
    return-void
.end method

.method private static zzh(Ljava/util/Map;Ljava/nio/channels/FileChannel;JJJLjava/nio/ByteBuffer;)V
    .locals 13

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    if-nez v2, :cond_3

    .line 8
    .line 9
    new-instance v2, Lcom/google/ads/interactivemedia/v3/internal/zzc;

    .line 10
    .line 11
    const-wide/16 v5, 0x0

    .line 12
    .line 13
    move-object v3, v2

    .line 14
    move-object v4, p1

    .line 15
    move-wide v7, p2

    .line 16
    invoke-direct/range {v3 .. v8}, Lcom/google/ads/interactivemedia/v3/internal/zzc;-><init>(Ljava/nio/channels/FileChannel;JJ)V

    .line 17
    .line 18
    .line 19
    sub-long v11, p6, p4

    .line 20
    .line 21
    new-instance v3, Lcom/google/ads/interactivemedia/v3/internal/zzc;

    .line 22
    .line 23
    move-object v7, v3

    .line 24
    move-object v8, p1

    .line 25
    move-wide/from16 v9, p4

    .line 26
    .line 27
    invoke-direct/range {v7 .. v12}, Lcom/google/ads/interactivemedia/v3/internal/zzc;-><init>(Ljava/nio/channels/FileChannel;JJ)V

    .line 28
    .line 29
    .line 30
    invoke-virtual/range {p8 .. p8}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    sget-object v5, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 35
    .line 36
    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 37
    .line 38
    .line 39
    move-wide v5, p2

    .line 40
    invoke-static {v4, v5, v6}, Lcom/google/ads/interactivemedia/v3/internal/zzj;->zzd(Ljava/nio/ByteBuffer;J)V

    .line 41
    .line 42
    .line 43
    new-instance v5, Lcom/google/ads/interactivemedia/v3/internal/zza;

    .line 44
    .line 45
    invoke-direct {v5, v4}, Lcom/google/ads/interactivemedia/v3/internal/zza;-><init>(Ljava/nio/ByteBuffer;)V

    .line 46
    .line 47
    .line 48
    invoke-interface {p0}, Ljava/util/Map;->size()I

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    new-array v6, v4, [I

    .line 53
    .line 54
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 55
    .line 56
    .line 57
    move-result-object v7

    .line 58
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 59
    .line 60
    .line 61
    move-result-object v7

    .line 62
    const/4 v8, 0x0

    .line 63
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 64
    .line 65
    .line 66
    move-result v9

    .line 67
    if-eqz v9, :cond_0

    .line 68
    .line 69
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v9

    .line 73
    check-cast v9, Ljava/lang/Integer;

    .line 74
    .line 75
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    .line 76
    .line 77
    .line 78
    move-result v9

    .line 79
    aput v9, v6, v8

    .line 80
    .line 81
    add-int/2addr v8, v1

    .line 82
    goto :goto_0

    .line 83
    :cond_0
    const/4 v7, 0x3

    .line 84
    :try_start_0
    new-array v7, v7, [Lcom/google/ads/interactivemedia/v3/internal/zzb;

    .line 85
    .line 86
    aput-object v2, v7, v0

    .line 87
    .line 88
    aput-object v3, v7, v1

    .line 89
    .line 90
    const/4 v2, 0x2

    .line 91
    aput-object v5, v7, v2

    .line 92
    .line 93
    invoke-static {v6, v7}, Lcom/google/ads/interactivemedia/v3/internal/zzi;->zzk([I[Lcom/google/ads/interactivemedia/v3/internal/zzb;)[[B

    .line 94
    .line 95
    .line 96
    move-result-object v2
    :try_end_0
    .catch Ljava/security/DigestException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    :goto_1
    if-ge v0, v4, :cond_2

    .line 98
    .line 99
    aget v3, v6, v0

    .line 100
    .line 101
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 102
    .line 103
    .line 104
    move-result-object v5

    .line 105
    move-object v7, p0

    .line 106
    invoke-interface {p0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v5

    .line 110
    check-cast v5, [B

    .line 111
    .line 112
    aget-object v8, v2, v0

    .line 113
    .line 114
    invoke-static {v5, v8}, Ljava/security/MessageDigest;->isEqual([B[B)Z

    .line 115
    .line 116
    .line 117
    move-result v5

    .line 118
    if-eqz v5, :cond_1

    .line 119
    .line 120
    add-int/2addr v0, v1

    .line 121
    goto :goto_1

    .line 122
    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    .line 123
    .line 124
    invoke-static {v3}, Lcom/google/ads/interactivemedia/v3/internal/zzi;->zzd(I)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    const-string v2, " digest of contents did not verify"

    .line 129
    .line 130
    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    throw v0

    .line 138
    :cond_2
    return-void

    .line 139
    :catch_0
    move-exception v0

    .line 140
    new-instance v1, Ljava/lang/SecurityException;

    .line 141
    .line 142
    const-string v2, "Failed to compute digest(s) of contents"

    .line 143
    .line 144
    invoke-direct {v1, v2, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 145
    .line 146
    .line 147
    throw v1

    .line 148
    :cond_3
    new-instance v0, Ljava/lang/SecurityException;

    .line 149
    .line 150
    const-string v1, "No digests provided"

    .line 151
    .line 152
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    throw v0
.end method

.method private static zzi(Ljava/nio/ByteBuffer;)[B
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-ltz v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-gt v0, v1, :cond_0

    .line 12
    .line 13
    new-array v0, v0, [B

    .line 14
    .line 15
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 16
    .line 17
    .line 18
    return-object v0

    .line 19
    :cond_0
    new-instance v1, Ljava/io/IOException;

    .line 20
    .line 21
    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    const-string v2, "Underflow while reading length-prefixed value. Length: "

    .line 26
    .line 27
    const-string v3, ", available: "

    .line 28
    .line 29
    invoke-static {v2, v0, v3, p0}, Lcom/google/protobuf/U2;->j(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-direct {v1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    throw v1

    .line 37
    :cond_1
    new-instance p0, Ljava/io/IOException;

    .line 38
    .line 39
    const-string v0, "Negative length"

    .line 40
    .line 41
    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    throw p0
.end method

.method private static zzj(Ljava/nio/ByteBuffer;Ljava/util/Map;Ljava/security/cert/CertificateFactory;)[Ljava/security/cert/X509Certificate;
    .locals 22

    .line 1
    invoke-static/range {p0 .. p0}, Lcom/google/ads/interactivemedia/v3/internal/zzi;->zzf(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static/range {p0 .. p0}, Lcom/google/ads/interactivemedia/v3/internal/zzi;->zzf(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static/range {p0 .. p0}, Lcom/google/ads/interactivemedia/v3/internal/zzi;->zzi(Ljava/nio/ByteBuffer;)[B

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    new-instance v3, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    .line 18
    const/4 v4, 0x0

    .line 19
    const/4 v5, -0x1

    .line 20
    move-object v9, v4

    .line 21
    const/4 v7, -0x1

    .line 22
    const/4 v8, 0x0

    .line 23
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 24
    .line 25
    .line 26
    move-result v10

    .line 27
    const/16 v11, 0x8

    .line 28
    .line 29
    const/16 v12, 0x301

    .line 30
    .line 31
    const/16 v13, 0x202

    .line 32
    .line 33
    const/16 v14, 0x201

    .line 34
    .line 35
    const/4 v15, 0x1

    .line 36
    if-eqz v10, :cond_4

    .line 37
    .line 38
    add-int/lit8 v8, v8, 0x1

    .line 39
    .line 40
    :try_start_0
    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/internal/zzi;->zzf(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 41
    .line 42
    .line 43
    move-result-object v10

    .line 44
    invoke-virtual {v10}, Ljava/nio/Buffer;->remaining()I

    .line 45
    .line 46
    .line 47
    move-result v6

    .line 48
    if-lt v6, v11, :cond_3

    .line 49
    .line 50
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->getInt()I

    .line 51
    .line 52
    .line 53
    move-result v6

    .line 54
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 55
    .line 56
    .line 57
    move-result-object v11

    .line 58
    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    if-eq v6, v14, :cond_1

    .line 62
    .line 63
    if-eq v6, v13, :cond_1

    .line 64
    .line 65
    if-eq v6, v12, :cond_1

    .line 66
    .line 67
    packed-switch v6, :pswitch_data_0

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_1
    :pswitch_0
    if-eq v7, v5, :cond_2

    .line 72
    .line 73
    invoke-static {v6}, Lcom/google/ads/interactivemedia/v3/internal/zzi;->zzc(I)I

    .line 74
    .line 75
    .line 76
    move-result v11

    .line 77
    invoke-static {v7}, Lcom/google/ads/interactivemedia/v3/internal/zzi;->zzc(I)I

    .line 78
    .line 79
    .line 80
    move-result v12

    .line 81
    if-eq v11, v15, :cond_0

    .line 82
    .line 83
    if-eq v12, v15, :cond_2

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :catch_0
    move-exception v0

    .line 87
    goto :goto_1

    .line 88
    :catch_1
    move-exception v0

    .line 89
    goto :goto_1

    .line 90
    :cond_2
    invoke-static {v10}, Lcom/google/ads/interactivemedia/v3/internal/zzi;->zzi(Ljava/nio/ByteBuffer;)[B

    .line 91
    .line 92
    .line 93
    move-result-object v9

    .line 94
    move v7, v6

    .line 95
    goto :goto_0

    .line 96
    :cond_3
    new-instance v0, Ljava/lang/SecurityException;

    .line 97
    .line 98
    const-string v1, "Signature record too short"

    .line 99
    .line 100
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    :goto_1
    new-instance v1, Ljava/lang/SecurityException;

    .line 105
    .line 106
    const-string v2, "Failed to parse signature record #"

    .line 107
    .line 108
    invoke-static {v2, v8}, La/r;->f(Ljava/lang/String;I)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    invoke-direct {v1, v2, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 113
    .line 114
    .line 115
    throw v1

    .line 116
    :cond_4
    if-ne v7, v5, :cond_6

    .line 117
    .line 118
    if-nez v8, :cond_5

    .line 119
    .line 120
    new-instance v0, Ljava/lang/SecurityException;

    .line 121
    .line 122
    const-string v1, "No signatures found"

    .line 123
    .line 124
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    throw v0

    .line 128
    :cond_5
    new-instance v0, Ljava/lang/SecurityException;

    .line 129
    .line 130
    const-string v1, "No supported signatures found"

    .line 131
    .line 132
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    throw v0

    .line 136
    :cond_6
    const-string v1, "Unknown signature algorithm: 0x"

    .line 137
    .line 138
    if-eq v7, v14, :cond_8

    .line 139
    .line 140
    if-eq v7, v13, :cond_8

    .line 141
    .line 142
    if-eq v7, v12, :cond_7

    .line 143
    .line 144
    packed-switch v7, :pswitch_data_1

    .line 145
    .line 146
    .line 147
    int-to-long v2, v7

    .line 148
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 149
    .line 150
    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v2

    .line 154
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v2

    .line 158
    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v1

    .line 162
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    throw v0

    .line 166
    :pswitch_1
    const-string v5, "RSA"

    .line 167
    .line 168
    goto :goto_2

    .line 169
    :cond_7
    const-string v5, "DSA"

    .line 170
    .line 171
    goto :goto_2

    .line 172
    :cond_8
    const-string v5, "EC"

    .line 173
    .line 174
    :goto_2
    if-eq v7, v14, :cond_b

    .line 175
    .line 176
    if-eq v7, v13, :cond_a

    .line 177
    .line 178
    if-eq v7, v12, :cond_9

    .line 179
    .line 180
    packed-switch v7, :pswitch_data_2

    .line 181
    .line 182
    .line 183
    int-to-long v2, v7

    .line 184
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 185
    .line 186
    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v2

    .line 190
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v2

    .line 194
    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v1

    .line 198
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    throw v0

    .line 202
    :pswitch_2
    const-string v1, "SHA512withRSA"

    .line 203
    .line 204
    invoke-static {v1, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 205
    .line 206
    .line 207
    move-result-object v1

    .line 208
    goto :goto_3

    .line 209
    :pswitch_3
    const-string v1, "SHA256withRSA"

    .line 210
    .line 211
    invoke-static {v1, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 212
    .line 213
    .line 214
    move-result-object v1

    .line 215
    goto :goto_3

    .line 216
    :pswitch_4
    new-instance v1, Ljava/security/spec/PSSParameterSpec;

    .line 217
    .line 218
    sget-object v19, Ljava/security/spec/MGF1ParameterSpec;->SHA512:Ljava/security/spec/MGF1ParameterSpec;

    .line 219
    .line 220
    const/16 v20, 0x40

    .line 221
    .line 222
    const/16 v21, 0x1

    .line 223
    .line 224
    const-string v17, "SHA-512"

    .line 225
    .line 226
    const-string v18, "MGF1"

    .line 227
    .line 228
    move-object/from16 v16, v1

    .line 229
    .line 230
    invoke-direct/range {v16 .. v21}, Ljava/security/spec/PSSParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;II)V

    .line 231
    .line 232
    .line 233
    const-string v6, "SHA512withRSA/PSS"

    .line 234
    .line 235
    invoke-static {v6, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 236
    .line 237
    .line 238
    move-result-object v1

    .line 239
    goto :goto_3

    .line 240
    :pswitch_5
    new-instance v1, Ljava/security/spec/PSSParameterSpec;

    .line 241
    .line 242
    sget-object v19, Ljava/security/spec/MGF1ParameterSpec;->SHA256:Ljava/security/spec/MGF1ParameterSpec;

    .line 243
    .line 244
    const/16 v20, 0x20

    .line 245
    .line 246
    const/16 v21, 0x1

    .line 247
    .line 248
    const-string v17, "SHA-256"

    .line 249
    .line 250
    const-string v18, "MGF1"

    .line 251
    .line 252
    move-object/from16 v16, v1

    .line 253
    .line 254
    invoke-direct/range {v16 .. v21}, Ljava/security/spec/PSSParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;II)V

    .line 255
    .line 256
    .line 257
    const-string v6, "SHA256withRSA/PSS"

    .line 258
    .line 259
    invoke-static {v6, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 260
    .line 261
    .line 262
    move-result-object v1

    .line 263
    goto :goto_3

    .line 264
    :cond_9
    const-string v1, "SHA256withDSA"

    .line 265
    .line 266
    invoke-static {v1, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 267
    .line 268
    .line 269
    move-result-object v1

    .line 270
    goto :goto_3

    .line 271
    :cond_a
    const-string v1, "SHA512withECDSA"

    .line 272
    .line 273
    invoke-static {v1, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 274
    .line 275
    .line 276
    move-result-object v1

    .line 277
    goto :goto_3

    .line 278
    :cond_b
    const-string v1, "SHA256withECDSA"

    .line 279
    .line 280
    invoke-static {v1, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 281
    .line 282
    .line 283
    move-result-object v1

    .line 284
    :goto_3
    iget-object v6, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 285
    .line 286
    check-cast v6, Ljava/lang/String;

    .line 287
    .line 288
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 289
    .line 290
    check-cast v1, Ljava/security/spec/AlgorithmParameterSpec;

    .line 291
    .line 292
    :try_start_1
    invoke-static {v5}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    .line 293
    .line 294
    .line 295
    move-result-object v5

    .line 296
    new-instance v8, Ljava/security/spec/X509EncodedKeySpec;

    .line 297
    .line 298
    invoke-direct {v8, v2}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 299
    .line 300
    .line 301
    invoke-virtual {v5, v8}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    .line 302
    .line 303
    .line 304
    move-result-object v5

    .line 305
    invoke-static {v6}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    .line 306
    .line 307
    .line 308
    move-result-object v8

    .line 309
    invoke-virtual {v8, v5}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 310
    .line 311
    .line 312
    if-eqz v1, :cond_c

    .line 313
    .line 314
    invoke-virtual {v8, v1}, Ljava/security/Signature;->setParameter(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 315
    .line 316
    .line 317
    goto :goto_4

    .line 318
    :catch_2
    move-exception v0

    .line 319
    goto/16 :goto_9

    .line 320
    .line 321
    :catch_3
    move-exception v0

    .line 322
    goto/16 :goto_9

    .line 323
    .line 324
    :catch_4
    move-exception v0

    .line 325
    goto/16 :goto_9

    .line 326
    .line 327
    :catch_5
    move-exception v0

    .line 328
    goto/16 :goto_9

    .line 329
    .line 330
    :catch_6
    move-exception v0

    .line 331
    goto/16 :goto_9

    .line 332
    .line 333
    :cond_c
    :goto_4
    invoke-virtual {v8, v0}, Ljava/security/Signature;->update(Ljava/nio/ByteBuffer;)V

    .line 334
    .line 335
    .line 336
    invoke-virtual {v8, v9}, Ljava/security/Signature;->verify([B)Z

    .line 337
    .line 338
    .line 339
    move-result v1
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/security/SignatureException; {:try_start_1 .. :try_end_1} :catch_2

    .line 340
    if-eqz v1, :cond_16

    .line 341
    .line 342
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 343
    .line 344
    .line 345
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzi;->zzf(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 346
    .line 347
    .line 348
    move-result-object v1

    .line 349
    new-instance v5, Ljava/util/ArrayList;

    .line 350
    .line 351
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 352
    .line 353
    .line 354
    const/4 v6, 0x0

    .line 355
    :cond_d
    :goto_5
    invoke-virtual {v1}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 356
    .line 357
    .line 358
    move-result v8

    .line 359
    if-eqz v8, :cond_f

    .line 360
    .line 361
    add-int/2addr v6, v15

    .line 362
    :try_start_2
    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/internal/zzi;->zzf(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 363
    .line 364
    .line 365
    move-result-object v8

    .line 366
    invoke-virtual {v8}, Ljava/nio/Buffer;->remaining()I

    .line 367
    .line 368
    .line 369
    move-result v9

    .line 370
    if-lt v9, v11, :cond_e

    .line 371
    .line 372
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->getInt()I

    .line 373
    .line 374
    .line 375
    move-result v9

    .line 376
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 377
    .line 378
    .line 379
    move-result-object v10

    .line 380
    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 381
    .line 382
    .line 383
    if-ne v9, v7, :cond_d

    .line 384
    .line 385
    invoke-static {v8}, Lcom/google/ads/interactivemedia/v3/internal/zzi;->zzi(Ljava/nio/ByteBuffer;)[B

    .line 386
    .line 387
    .line 388
    move-result-object v4

    .line 389
    goto :goto_5

    .line 390
    :catch_7
    move-exception v0

    .line 391
    goto :goto_6

    .line 392
    :catch_8
    move-exception v0

    .line 393
    goto :goto_6

    .line 394
    :cond_e
    new-instance v0, Ljava/io/IOException;

    .line 395
    .line 396
    const-string v1, "Record too short"

    .line 397
    .line 398
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 399
    .line 400
    .line 401
    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/nio/BufferUnderflowException; {:try_start_2 .. :try_end_2} :catch_7

    .line 402
    :goto_6
    new-instance v1, Ljava/io/IOException;

    .line 403
    .line 404
    const-string v2, "Failed to parse digest record #"

    .line 405
    .line 406
    invoke-static {v2, v6}, La/r;->f(Ljava/lang/String;I)Ljava/lang/String;

    .line 407
    .line 408
    .line 409
    move-result-object v2

    .line 410
    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 411
    .line 412
    .line 413
    throw v1

    .line 414
    :cond_f
    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 415
    .line 416
    .line 417
    move-result v1

    .line 418
    if-eqz v1, :cond_15

    .line 419
    .line 420
    invoke-static {v7}, Lcom/google/ads/interactivemedia/v3/internal/zzi;->zzc(I)I

    .line 421
    .line 422
    .line 423
    move-result v1

    .line 424
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 425
    .line 426
    .line 427
    move-result-object v3

    .line 428
    move-object/from16 v5, p1

    .line 429
    .line 430
    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 431
    .line 432
    .line 433
    move-result-object v3

    .line 434
    check-cast v3, [B

    .line 435
    .line 436
    if-eqz v3, :cond_11

    .line 437
    .line 438
    invoke-static {v3, v4}, Ljava/security/MessageDigest;->isEqual([B[B)Z

    .line 439
    .line 440
    .line 441
    move-result v3

    .line 442
    if-eqz v3, :cond_10

    .line 443
    .line 444
    goto :goto_7

    .line 445
    :cond_10
    new-instance v0, Ljava/lang/SecurityException;

    .line 446
    .line 447
    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/internal/zzi;->zzd(I)Ljava/lang/String;

    .line 448
    .line 449
    .line 450
    move-result-object v1

    .line 451
    const-string v2, " contents digest does not match the digest specified by a preceding signer"

    .line 452
    .line 453
    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 454
    .line 455
    .line 456
    move-result-object v1

    .line 457
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 458
    .line 459
    .line 460
    throw v0

    .line 461
    :cond_11
    :goto_7
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzi;->zzf(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 462
    .line 463
    .line 464
    move-result-object v0

    .line 465
    new-instance v1, Ljava/util/ArrayList;

    .line 466
    .line 467
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 468
    .line 469
    .line 470
    const/4 v3, 0x0

    .line 471
    :goto_8
    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 472
    .line 473
    .line 474
    move-result v4

    .line 475
    if-eqz v4, :cond_12

    .line 476
    .line 477
    add-int/2addr v3, v15

    .line 478
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzi;->zzi(Ljava/nio/ByteBuffer;)[B

    .line 479
    .line 480
    .line 481
    move-result-object v4

    .line 482
    :try_start_3
    new-instance v5, Ljava/io/ByteArrayInputStream;

    .line 483
    .line 484
    invoke-direct {v5, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 485
    .line 486
    .line 487
    move-object/from16 v6, p2

    .line 488
    .line 489
    invoke-virtual {v6, v5}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    .line 490
    .line 491
    .line 492
    move-result-object v5

    .line 493
    check-cast v5, Ljava/security/cert/X509Certificate;
    :try_end_3
    .catch Ljava/security/cert/CertificateException; {:try_start_3 .. :try_end_3} :catch_9

    .line 494
    .line 495
    new-instance v7, Lcom/google/ads/interactivemedia/v3/internal/zzg;

    .line 496
    .line 497
    invoke-direct {v7, v5, v4}, Lcom/google/ads/interactivemedia/v3/internal/zzg;-><init>(Ljava/security/cert/X509Certificate;[B)V

    .line 498
    .line 499
    .line 500
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 501
    .line 502
    .line 503
    goto :goto_8

    .line 504
    :catch_9
    move-exception v0

    .line 505
    new-instance v1, Ljava/lang/SecurityException;

    .line 506
    .line 507
    const-string v2, "Failed to decode certificate #"

    .line 508
    .line 509
    invoke-static {v2, v3}, La/r;->f(Ljava/lang/String;I)Ljava/lang/String;

    .line 510
    .line 511
    .line 512
    move-result-object v2

    .line 513
    invoke-direct {v1, v2, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 514
    .line 515
    .line 516
    throw v1

    .line 517
    :cond_12
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 518
    .line 519
    .line 520
    move-result v0

    .line 521
    if-nez v0, :cond_14

    .line 522
    .line 523
    const/4 v0, 0x0

    .line 524
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 525
    .line 526
    .line 527
    move-result-object v0

    .line 528
    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 529
    .line 530
    invoke-virtual {v0}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    .line 531
    .line 532
    .line 533
    move-result-object v0

    .line 534
    invoke-interface {v0}, Ljava/security/Key;->getEncoded()[B

    .line 535
    .line 536
    .line 537
    move-result-object v0

    .line 538
    invoke-static {v2, v0}, Ljava/util/Arrays;->equals([B[B)Z

    .line 539
    .line 540
    .line 541
    move-result v0

    .line 542
    if-eqz v0, :cond_13

    .line 543
    .line 544
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 545
    .line 546
    .line 547
    move-result v0

    .line 548
    new-array v0, v0, [Ljava/security/cert/X509Certificate;

    .line 549
    .line 550
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 551
    .line 552
    .line 553
    move-result-object v0

    .line 554
    check-cast v0, [Ljava/security/cert/X509Certificate;

    .line 555
    .line 556
    return-object v0

    .line 557
    :cond_13
    new-instance v0, Ljava/lang/SecurityException;

    .line 558
    .line 559
    const-string v1, "Public key mismatch between certificate and signature record"

    .line 560
    .line 561
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 562
    .line 563
    .line 564
    throw v0

    .line 565
    :cond_14
    new-instance v0, Ljava/lang/SecurityException;

    .line 566
    .line 567
    const-string v1, "No certificates listed"

    .line 568
    .line 569
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 570
    .line 571
    .line 572
    throw v0

    .line 573
    :cond_15
    new-instance v0, Ljava/lang/SecurityException;

    .line 574
    .line 575
    const-string v1, "Signature algorithms don\'t match between digests and signatures records"

    .line 576
    .line 577
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 578
    .line 579
    .line 580
    throw v0

    .line 581
    :cond_16
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 582
    .line 583
    .line 584
    move-result-object v0

    .line 585
    new-instance v1, Ljava/lang/SecurityException;

    .line 586
    .line 587
    const-string v2, " signature did not verify"

    .line 588
    .line 589
    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 590
    .line 591
    .line 592
    move-result-object v0

    .line 593
    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 594
    .line 595
    .line 596
    throw v1

    .line 597
    :goto_9
    new-instance v1, Ljava/lang/SecurityException;

    .line 598
    .line 599
    const-string v2, "Failed to verify "

    .line 600
    .line 601
    const-string v3, " signature"

    .line 602
    .line 603
    invoke-static {v2, v6, v3}, La/r;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 604
    .line 605
    .line 606
    move-result-object v2

    .line 607
    invoke-direct {v1, v2, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 608
    .line 609
    .line 610
    throw v1

    .line 611
    :pswitch_data_0
    .packed-switch 0x101
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

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
    :pswitch_data_1
    .packed-switch 0x101
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

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
    :pswitch_data_2
    .packed-switch 0x101
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private static zzk([I[Lcom/google/ads/interactivemedia/v3/internal/zzb;)[[B
    .locals 27

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-wide/16 v2, 0x0

    .line 5
    .line 6
    move-wide v5, v2

    .line 7
    const/4 v4, 0x0

    .line 8
    :goto_0
    const-wide/32 v7, 0x100000

    .line 9
    .line 10
    .line 11
    const/4 v9, 0x3

    .line 12
    if-ge v4, v9, :cond_0

    .line 13
    .line 14
    aget-object v9, p1, v4

    .line 15
    .line 16
    invoke-interface {v9}, Lcom/google/ads/interactivemedia/v3/internal/zzb;->zza()J

    .line 17
    .line 18
    .line 19
    move-result-wide v9

    .line 20
    const-wide/32 v11, 0xfffff

    .line 21
    .line 22
    .line 23
    add-long/2addr v9, v11

    .line 24
    div-long/2addr v9, v7

    .line 25
    add-long/2addr v5, v9

    .line 26
    add-int/lit8 v4, v4, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const-wide/32 v10, 0x1fffff

    .line 30
    .line 31
    .line 32
    cmp-long v4, v5, v10

    .line 33
    .line 34
    if-gez v4, :cond_9

    .line 35
    .line 36
    array-length v4, v0

    .line 37
    new-array v4, v4, [[B

    .line 38
    .line 39
    const/4 v10, 0x0

    .line 40
    :goto_1
    array-length v11, v0

    .line 41
    const/4 v12, 0x5

    .line 42
    const/4 v13, 0x1

    .line 43
    if-ge v10, v11, :cond_1

    .line 44
    .line 45
    long-to-int v11, v5

    .line 46
    aget v14, v0, v10

    .line 47
    .line 48
    invoke-static {v14}, Lcom/google/ads/interactivemedia/v3/internal/zzi;->zzb(I)I

    .line 49
    .line 50
    .line 51
    move-result v14

    .line 52
    mul-int v14, v14, v11

    .line 53
    .line 54
    add-int/2addr v14, v12

    .line 55
    new-array v12, v14, [B

    .line 56
    .line 57
    const/16 v14, 0x5a

    .line 58
    .line 59
    aput-byte v14, v12, v1

    .line 60
    .line 61
    invoke-static {v11, v12, v13}, Lcom/google/ads/interactivemedia/v3/internal/zzi;->zzg(I[BI)V

    .line 62
    .line 63
    .line 64
    aput-object v12, v4, v10

    .line 65
    .line 66
    add-int/lit8 v10, v10, 0x1

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_1
    new-array v5, v12, [B

    .line 70
    .line 71
    const/16 v6, -0x5b

    .line 72
    .line 73
    aput-byte v6, v5, v1

    .line 74
    .line 75
    new-array v6, v11, [Ljava/security/MessageDigest;

    .line 76
    .line 77
    const/4 v10, 0x0

    .line 78
    :goto_2
    array-length v14, v0

    .line 79
    const-string v15, " digest not supported"

    .line 80
    .line 81
    if-ge v10, v14, :cond_2

    .line 82
    .line 83
    aget v14, v0, v10

    .line 84
    .line 85
    invoke-static {v14}, Lcom/google/ads/interactivemedia/v3/internal/zzi;->zzd(I)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v14

    .line 89
    :try_start_0
    invoke-static {v14}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 90
    .line 91
    .line 92
    move-result-object v16

    .line 93
    aput-object v16, v6, v10
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    .line 95
    add-int/lit8 v10, v10, 0x1

    .line 96
    .line 97
    goto :goto_2

    .line 98
    :catch_0
    move-exception v0

    .line 99
    invoke-virtual {v14, v15}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    new-instance v2, Ljava/lang/RuntimeException;

    .line 104
    .line 105
    invoke-direct {v2, v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 106
    .line 107
    .line 108
    throw v2

    .line 109
    :cond_2
    const/4 v10, 0x0

    .line 110
    const/4 v14, 0x0

    .line 111
    :goto_3
    if-ge v10, v9, :cond_7

    .line 112
    .line 113
    aget-object v9, p1, v10

    .line 114
    .line 115
    invoke-interface {v9}, Lcom/google/ads/interactivemedia/v3/internal/zzb;->zza()J

    .line 116
    .line 117
    .line 118
    move-result-wide v17

    .line 119
    move-wide/from16 v19, v2

    .line 120
    .line 121
    move-wide/from16 v12, v17

    .line 122
    .line 123
    :goto_4
    cmp-long v21, v12, v2

    .line 124
    .line 125
    if-lez v21, :cond_6

    .line 126
    .line 127
    invoke-static {v12, v13, v7, v8}, Ljava/lang/Math;->min(JJ)J

    .line 128
    .line 129
    .line 130
    move-result-wide v2

    .line 131
    long-to-int v3, v2

    .line 132
    const/4 v2, 0x1

    .line 133
    invoke-static {v3, v5, v2}, Lcom/google/ads/interactivemedia/v3/internal/zzi;->zzg(I[BI)V

    .line 134
    .line 135
    .line 136
    const/4 v2, 0x0

    .line 137
    :goto_5
    if-ge v2, v11, :cond_3

    .line 138
    .line 139
    aget-object v7, v6, v2

    .line 140
    .line 141
    invoke-virtual {v7, v5}, Ljava/security/MessageDigest;->update([B)V

    .line 142
    .line 143
    .line 144
    add-int/lit8 v2, v2, 0x1

    .line 145
    .line 146
    const-wide/32 v7, 0x100000

    .line 147
    .line 148
    .line 149
    goto :goto_5

    .line 150
    :cond_3
    move-wide/from16 v7, v19

    .line 151
    .line 152
    :try_start_1
    invoke-interface {v9, v6, v7, v8, v3}, Lcom/google/ads/interactivemedia/v3/internal/zzb;->zzb([Ljava/security/MessageDigest;JI)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 153
    .line 154
    .line 155
    move-object/from16 v19, v5

    .line 156
    .line 157
    const/4 v2, 0x0

    .line 158
    :goto_6
    array-length v5, v0

    .line 159
    if-ge v2, v5, :cond_5

    .line 160
    .line 161
    aget v5, v0, v2

    .line 162
    .line 163
    move-object/from16 v20, v9

    .line 164
    .line 165
    aget-object v9, v4, v2

    .line 166
    .line 167
    invoke-static {v5}, Lcom/google/ads/interactivemedia/v3/internal/zzi;->zzb(I)I

    .line 168
    .line 169
    .line 170
    move-result v5

    .line 171
    move/from16 v22, v11

    .line 172
    .line 173
    aget-object v11, v6, v2

    .line 174
    .line 175
    mul-int v23, v14, v5

    .line 176
    .line 177
    move-object/from16 v24, v6

    .line 178
    .line 179
    const/16 v17, 0x5

    .line 180
    .line 181
    add-int/lit8 v6, v23, 0x5

    .line 182
    .line 183
    invoke-virtual {v11, v9, v6, v5}, Ljava/security/MessageDigest;->digest([BII)I

    .line 184
    .line 185
    .line 186
    move-result v6

    .line 187
    if-ne v6, v5, :cond_4

    .line 188
    .line 189
    add-int/lit8 v2, v2, 0x1

    .line 190
    .line 191
    move-object/from16 v9, v20

    .line 192
    .line 193
    move/from16 v11, v22

    .line 194
    .line 195
    move-object/from16 v6, v24

    .line 196
    .line 197
    goto :goto_6

    .line 198
    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    .line 199
    .line 200
    invoke-virtual {v11}, Ljava/security/MessageDigest;->getAlgorithm()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v1

    .line 204
    new-instance v2, Ljava/lang/StringBuilder;

    .line 205
    .line 206
    const-string v3, "Unexpected output size of "

    .line 207
    .line 208
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    const-string v1, " digest: "

    .line 215
    .line 216
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v1

    .line 226
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    throw v0

    .line 230
    :cond_5
    move-object/from16 v24, v6

    .line 231
    .line 232
    move-object/from16 v20, v9

    .line 233
    .line 234
    move/from16 v22, v11

    .line 235
    .line 236
    const/16 v17, 0x5

    .line 237
    .line 238
    int-to-long v2, v3

    .line 239
    add-long v5, v7, v2

    .line 240
    .line 241
    sub-long/2addr v12, v2

    .line 242
    add-int/lit8 v14, v14, 0x1

    .line 243
    .line 244
    const-wide/16 v2, 0x0

    .line 245
    .line 246
    const-wide/32 v7, 0x100000

    .line 247
    .line 248
    .line 249
    move-wide/from16 v25, v5

    .line 250
    .line 251
    move-object/from16 v5, v19

    .line 252
    .line 253
    move-wide/from16 v19, v25

    .line 254
    .line 255
    move-object/from16 v6, v24

    .line 256
    .line 257
    goto/16 :goto_4

    .line 258
    .line 259
    :catch_1
    move-exception v0

    .line 260
    move-object v2, v0

    .line 261
    new-instance v0, Ljava/security/DigestException;

    .line 262
    .line 263
    const-string v3, "Failed to digest chunk #"

    .line 264
    .line 265
    const-string v4, " of section #"

    .line 266
    .line 267
    invoke-static {v3, v14, v4, v1}, Lcom/google/protobuf/U2;->j(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object v1

    .line 271
    invoke-direct {v0, v1, v2}, Ljava/security/DigestException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 272
    .line 273
    .line 274
    throw v0

    .line 275
    :cond_6
    move-object/from16 v19, v5

    .line 276
    .line 277
    move-object/from16 v24, v6

    .line 278
    .line 279
    move/from16 v22, v11

    .line 280
    .line 281
    const/16 v17, 0x5

    .line 282
    .line 283
    add-int/lit8 v1, v1, 0x1

    .line 284
    .line 285
    add-int/lit8 v10, v10, 0x1

    .line 286
    .line 287
    const-wide/16 v2, 0x0

    .line 288
    .line 289
    const-wide/32 v7, 0x100000

    .line 290
    .line 291
    .line 292
    const/4 v9, 0x3

    .line 293
    const/4 v12, 0x5

    .line 294
    const/4 v13, 0x1

    .line 295
    goto/16 :goto_3

    .line 296
    .line 297
    :cond_7
    array-length v1, v0

    .line 298
    new-array v1, v1, [[B

    .line 299
    .line 300
    const/4 v2, 0x0

    .line 301
    :goto_7
    array-length v3, v0

    .line 302
    if-ge v2, v3, :cond_8

    .line 303
    .line 304
    aget v3, v0, v2

    .line 305
    .line 306
    aget-object v5, v4, v2

    .line 307
    .line 308
    invoke-static {v3}, Lcom/google/ads/interactivemedia/v3/internal/zzi;->zzd(I)Ljava/lang/String;

    .line 309
    .line 310
    .line 311
    move-result-object v3

    .line 312
    :try_start_2
    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 313
    .line 314
    .line 315
    move-result-object v3
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_2

    .line 316
    invoke-virtual {v3, v5}, Ljava/security/MessageDigest;->digest([B)[B

    .line 317
    .line 318
    .line 319
    move-result-object v3

    .line 320
    aput-object v3, v1, v2

    .line 321
    .line 322
    add-int/lit8 v2, v2, 0x1

    .line 323
    .line 324
    goto :goto_7

    .line 325
    :catch_2
    move-exception v0

    .line 326
    move-object v1, v0

    .line 327
    invoke-virtual {v3, v15}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 328
    .line 329
    .line 330
    move-result-object v0

    .line 331
    new-instance v2, Ljava/lang/RuntimeException;

    .line 332
    .line 333
    invoke-direct {v2, v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 334
    .line 335
    .line 336
    throw v2

    .line 337
    :cond_8
    return-object v1

    .line 338
    :cond_9
    new-instance v0, Ljava/security/DigestException;

    .line 339
    .line 340
    const-string v1, "Too many chunks: "

    .line 341
    .line 342
    invoke-static {v1, v5, v6}, LA0/O;->z(Ljava/lang/String;J)Ljava/lang/String;

    .line 343
    .line 344
    .line 345
    move-result-object v1

    .line 346
    invoke-direct {v0, v1}, Ljava/security/DigestException;-><init>(Ljava/lang/String;)V

    .line 347
    .line 348
    .line 349
    throw v0
.end method

.method private static zzl(Ljava/nio/channels/FileChannel;Lcom/google/ads/interactivemedia/v3/internal/zze;)[[Ljava/security/cert/X509Certificate;
    .locals 10

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v9, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    :try_start_0
    const-string v1, "X.509"

    .line 12
    .line 13
    invoke-static {v1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    .line 14
    .line 15
    .line 16
    move-result-object v1
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_4

    .line 17
    :try_start_1
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/zze;->zze(Lcom/google/ads/interactivemedia/v3/internal/zze;)Ljava/nio/ByteBuffer;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-static {v2}, Lcom/google/ads/interactivemedia/v3/internal/zzi;->zzf(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 22
    .line 23
    .line 24
    move-result-object v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 25
    const/4 v3, 0x0

    .line 26
    :goto_0
    invoke-virtual {v2}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    if-eqz v4, :cond_0

    .line 31
    .line 32
    add-int/lit8 v3, v3, 0x1

    .line 33
    .line 34
    :try_start_2
    invoke-static {v2}, Lcom/google/ads/interactivemedia/v3/internal/zzi;->zzf(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    invoke-static {v4, v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzi;->zzj(Ljava/nio/ByteBuffer;Ljava/util/Map;Ljava/security/cert/CertificateFactory;)[Ljava/security/cert/X509Certificate;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/nio/BufferUnderflowException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :catch_0
    move-exception p0

    .line 47
    goto :goto_1

    .line 48
    :catch_1
    move-exception p0

    .line 49
    goto :goto_1

    .line 50
    :catch_2
    move-exception p0

    .line 51
    :goto_1
    new-instance p1, Ljava/lang/SecurityException;

    .line 52
    .line 53
    const-string v0, "Failed to parse/verify signer #"

    .line 54
    .line 55
    const-string v1, " block"

    .line 56
    .line 57
    invoke-static {v0, v3, v1}, LA0/O;->y(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-direct {p1, v0, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 62
    .line 63
    .line 64
    throw p1

    .line 65
    :cond_0
    if-lez v3, :cond_2

    .line 66
    .line 67
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    if-nez v1, :cond_1

    .line 72
    .line 73
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/zze;->zza(Lcom/google/ads/interactivemedia/v3/internal/zze;)J

    .line 74
    .line 75
    .line 76
    move-result-wide v2

    .line 77
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/zze;->zzb(Lcom/google/ads/interactivemedia/v3/internal/zze;)J

    .line 78
    .line 79
    .line 80
    move-result-wide v4

    .line 81
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/zze;->zzc(Lcom/google/ads/interactivemedia/v3/internal/zze;)J

    .line 82
    .line 83
    .line 84
    move-result-wide v6

    .line 85
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/zze;->zzd(Lcom/google/ads/interactivemedia/v3/internal/zze;)Ljava/nio/ByteBuffer;

    .line 86
    .line 87
    .line 88
    move-result-object v8

    .line 89
    move-object v1, p0

    .line 90
    invoke-static/range {v0 .. v8}, Lcom/google/ads/interactivemedia/v3/internal/zzi;->zzh(Ljava/util/Map;Ljava/nio/channels/FileChannel;JJJLjava/nio/ByteBuffer;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 94
    .line 95
    .line 96
    move-result p0

    .line 97
    new-array p0, p0, [[Ljava/security/cert/X509Certificate;

    .line 98
    .line 99
    invoke-virtual {v9, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object p0

    .line 103
    check-cast p0, [[Ljava/security/cert/X509Certificate;

    .line 104
    .line 105
    return-object p0

    .line 106
    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    .line 107
    .line 108
    const-string p1, "No content digests found"

    .line 109
    .line 110
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    throw p0

    .line 114
    :cond_2
    new-instance p0, Ljava/lang/SecurityException;

    .line 115
    .line 116
    const-string p1, "No signers found"

    .line 117
    .line 118
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    throw p0

    .line 122
    :catch_3
    move-exception p0

    .line 123
    new-instance p1, Ljava/lang/SecurityException;

    .line 124
    .line 125
    const-string v0, "Failed to read list of signers"

    .line 126
    .line 127
    invoke-direct {p1, v0, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 128
    .line 129
    .line 130
    throw p1

    .line 131
    :catch_4
    move-exception p0

    .line 132
    new-instance p1, Ljava/lang/RuntimeException;

    .line 133
    .line 134
    const-string v0, "Failed to obtain X.509 CertificateFactory"

    .line 135
    .line 136
    invoke-direct {p1, v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 137
    .line 138
    .line 139
    throw p1
.end method
