.class public final Lcom/google/android/gms/internal/ads/m0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/h0;


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/uA;

.field public final b:I


# direct methods
.method public constructor <init>(ILcom/google/android/gms/internal/ads/PA;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/google/android/gms/internal/ads/m0;->b:I

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/m0;->a:Lcom/google/android/gms/internal/ads/uA;

    .line 7
    .line 8
    return-void
.end method

.method public static b(ILcom/google/android/gms/internal/ads/jr;)Lcom/google/android/gms/internal/ads/m0;
    .locals 19

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    const-string v2, "initialCapacity"

    .line 5
    .line 6
    invoke-static {v1, v2}, Lo3/r;->q(ILjava/lang/String;)V

    .line 7
    .line 8
    .line 9
    new-array v2, v1, [Ljava/lang/Object;

    .line 10
    .line 11
    iget v3, v0, Lcom/google/android/gms/internal/ads/jr;->c:I

    .line 12
    .line 13
    const/4 v4, 0x0

    .line 14
    const/4 v5, -0x2

    .line 15
    const/4 v6, 0x0

    .line 16
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/jr;->o()I

    .line 17
    .line 18
    .line 19
    move-result v7

    .line 20
    const/16 v8, 0x8

    .line 21
    .line 22
    if-le v7, v8, :cond_13

    .line 23
    .line 24
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/jr;->s()I

    .line 25
    .line 26
    .line 27
    move-result v7

    .line 28
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/jr;->s()I

    .line 29
    .line 30
    .line 31
    move-result v9

    .line 32
    iget v10, v0, Lcom/google/android/gms/internal/ads/jr;->b:I

    .line 33
    .line 34
    add-int/2addr v10, v9

    .line 35
    invoke-virtual {v0, v10}, Lcom/google/android/gms/internal/ads/jr;->i(I)V

    .line 36
    .line 37
    .line 38
    const/4 v9, 0x1

    .line 39
    const v11, 0x5453494c

    .line 40
    .line 41
    .line 42
    const/4 v12, 0x2

    .line 43
    if-ne v7, v11, :cond_0

    .line 44
    .line 45
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/jr;->s()I

    .line 46
    .line 47
    .line 48
    move-result v7

    .line 49
    invoke-static {v7, v0}, Lcom/google/android/gms/internal/ads/m0;->b(ILcom/google/android/gms/internal/ads/jr;)Lcom/google/android/gms/internal/ads/m0;

    .line 50
    .line 51
    .line 52
    move-result-object v7

    .line 53
    goto/16 :goto_6

    .line 54
    .line 55
    :cond_0
    const/16 v11, 0xc

    .line 56
    .line 57
    const/4 v13, 0x0

    .line 58
    sparse-switch v7, :sswitch_data_0

    .line 59
    .line 60
    .line 61
    :goto_1
    move-object v7, v13

    .line 62
    goto/16 :goto_6

    .line 63
    .line 64
    :sswitch_0
    new-instance v7, Lcom/google/android/gms/internal/ads/o0;

    .line 65
    .line 66
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/jr;->o()I

    .line 67
    .line 68
    .line 69
    move-result v8

    .line 70
    sget-object v11, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 71
    .line 72
    invoke-virtual {v0, v8, v11}, Lcom/google/android/gms/internal/ads/jr;->b(ILjava/nio/charset/Charset;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v8

    .line 76
    invoke-direct {v7, v8}, Lcom/google/android/gms/internal/ads/o0;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    goto/16 :goto_6

    .line 80
    .line 81
    :sswitch_1
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/jr;->s()I

    .line 82
    .line 83
    .line 84
    move-result v14

    .line 85
    invoke-virtual {v0, v11}, Lcom/google/android/gms/internal/ads/jr;->k(I)V

    .line 86
    .line 87
    .line 88
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/jr;->s()I

    .line 89
    .line 90
    .line 91
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/jr;->s()I

    .line 92
    .line 93
    .line 94
    move-result v15

    .line 95
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/jr;->s()I

    .line 96
    .line 97
    .line 98
    move-result v16

    .line 99
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/jr;->k(I)V

    .line 100
    .line 101
    .line 102
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/jr;->s()I

    .line 103
    .line 104
    .line 105
    move-result v17

    .line 106
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/jr;->s()I

    .line 107
    .line 108
    .line 109
    move-result v18

    .line 110
    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/jr;->k(I)V

    .line 111
    .line 112
    .line 113
    new-instance v7, Lcom/google/android/gms/internal/ads/k0;

    .line 114
    .line 115
    move-object v13, v7

    .line 116
    invoke-direct/range {v13 .. v18}, Lcom/google/android/gms/internal/ads/k0;-><init>(IIIII)V

    .line 117
    .line 118
    .line 119
    goto/16 :goto_6

    .line 120
    .line 121
    :sswitch_2
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/jr;->s()I

    .line 122
    .line 123
    .line 124
    move-result v7

    .line 125
    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/jr;->k(I)V

    .line 126
    .line 127
    .line 128
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/jr;->s()I

    .line 129
    .line 130
    .line 131
    move-result v8

    .line 132
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/jr;->s()I

    .line 133
    .line 134
    .line 135
    move-result v13

    .line 136
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/jr;->k(I)V

    .line 137
    .line 138
    .line 139
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/jr;->s()I

    .line 140
    .line 141
    .line 142
    invoke-virtual {v0, v11}, Lcom/google/android/gms/internal/ads/jr;->k(I)V

    .line 143
    .line 144
    .line 145
    new-instance v11, Lcom/google/android/gms/internal/ads/j0;

    .line 146
    .line 147
    invoke-direct {v11, v7, v8, v13}, Lcom/google/android/gms/internal/ads/j0;-><init>(III)V

    .line 148
    .line 149
    .line 150
    move-object v7, v11

    .line 151
    goto/16 :goto_6

    .line 152
    .line 153
    :sswitch_3
    const-string v7, "StreamFormatChunk"

    .line 154
    .line 155
    if-ne v5, v12, :cond_2

    .line 156
    .line 157
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/jr;->k(I)V

    .line 158
    .line 159
    .line 160
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/jr;->s()I

    .line 161
    .line 162
    .line 163
    move-result v8

    .line 164
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/jr;->s()I

    .line 165
    .line 166
    .line 167
    move-result v11

    .line 168
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/jr;->k(I)V

    .line 169
    .line 170
    .line 171
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/jr;->s()I

    .line 172
    .line 173
    .line 174
    move-result v14

    .line 175
    sparse-switch v14, :sswitch_data_1

    .line 176
    .line 177
    .line 178
    move-object v15, v13

    .line 179
    goto :goto_2

    .line 180
    :sswitch_4
    const-string v15, "video/mjpeg"

    .line 181
    .line 182
    goto :goto_2

    .line 183
    :sswitch_5
    const-string v15, "video/mp43"

    .line 184
    .line 185
    goto :goto_2

    .line 186
    :sswitch_6
    const-string v15, "video/mp42"

    .line 187
    .line 188
    goto :goto_2

    .line 189
    :sswitch_7
    const-string v15, "video/avc"

    .line 190
    .line 191
    goto :goto_2

    .line 192
    :sswitch_8
    const-string v15, "video/mp4v-es"

    .line 193
    .line 194
    :goto_2
    if-nez v15, :cond_1

    .line 195
    .line 196
    const-string v8, "Ignoring track with unsupported compression "

    .line 197
    .line 198
    invoke-static {v8, v14, v7}, La/r;->p(Ljava/lang/String;ILjava/lang/String;)V

    .line 199
    .line 200
    .line 201
    goto/16 :goto_1

    .line 202
    .line 203
    :cond_1
    new-instance v7, Lcom/google/android/gms/internal/ads/K;

    .line 204
    .line 205
    invoke-direct {v7}, Lcom/google/android/gms/internal/ads/K;-><init>()V

    .line 206
    .line 207
    .line 208
    iput v8, v7, Lcom/google/android/gms/internal/ads/K;->r:I

    .line 209
    .line 210
    iput v11, v7, Lcom/google/android/gms/internal/ads/K;->s:I

    .line 211
    .line 212
    invoke-virtual {v7, v15}, Lcom/google/android/gms/internal/ads/K;->f(Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    new-instance v8, Lcom/google/android/gms/internal/ads/n0;

    .line 216
    .line 217
    new-instance v11, Lcom/google/android/gms/internal/ads/p0;

    .line 218
    .line 219
    invoke-direct {v11, v7}, Lcom/google/android/gms/internal/ads/p0;-><init>(Lcom/google/android/gms/internal/ads/K;)V

    .line 220
    .line 221
    .line 222
    invoke-direct {v8, v11}, Lcom/google/android/gms/internal/ads/n0;-><init>(Lcom/google/android/gms/internal/ads/p0;)V

    .line 223
    .line 224
    .line 225
    move-object v7, v8

    .line 226
    goto/16 :goto_6

    .line 227
    .line 228
    :cond_2
    if-ne v5, v9, :cond_c

    .line 229
    .line 230
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/jr;->u()I

    .line 231
    .line 232
    .line 233
    move-result v8

    .line 234
    const-string v11, "audio/raw"

    .line 235
    .line 236
    const-string v14, "audio/mp4a-latm"

    .line 237
    .line 238
    if-eq v8, v9, :cond_7

    .line 239
    .line 240
    const/16 v15, 0x55

    .line 241
    .line 242
    if-eq v8, v15, :cond_6

    .line 243
    .line 244
    const/16 v15, 0xff

    .line 245
    .line 246
    if-eq v8, v15, :cond_5

    .line 247
    .line 248
    const/16 v15, 0x2000

    .line 249
    .line 250
    if-eq v8, v15, :cond_4

    .line 251
    .line 252
    const/16 v15, 0x2001

    .line 253
    .line 254
    if-eq v8, v15, :cond_3

    .line 255
    .line 256
    move-object v15, v13

    .line 257
    goto :goto_3

    .line 258
    :cond_3
    const-string v15, "audio/vnd.dts"

    .line 259
    .line 260
    goto :goto_3

    .line 261
    :cond_4
    const-string v15, "audio/ac3"

    .line 262
    .line 263
    goto :goto_3

    .line 264
    :cond_5
    move-object v15, v14

    .line 265
    goto :goto_3

    .line 266
    :cond_6
    const-string v15, "audio/mpeg"

    .line 267
    .line 268
    goto :goto_3

    .line 269
    :cond_7
    move-object v15, v11

    .line 270
    :goto_3
    if-nez v15, :cond_8

    .line 271
    .line 272
    const-string v11, "Ignoring track with unsupported format tag "

    .line 273
    .line 274
    invoke-static {v11, v8, v7}, La/r;->p(Ljava/lang/String;ILjava/lang/String;)V

    .line 275
    .line 276
    .line 277
    goto/16 :goto_1

    .line 278
    .line 279
    :cond_8
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/jr;->u()I

    .line 280
    .line 281
    .line 282
    move-result v7

    .line 283
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/jr;->s()I

    .line 284
    .line 285
    .line 286
    move-result v8

    .line 287
    const/4 v13, 0x6

    .line 288
    invoke-virtual {v0, v13}, Lcom/google/android/gms/internal/ads/jr;->k(I)V

    .line 289
    .line 290
    .line 291
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/jr;->u()I

    .line 292
    .line 293
    .line 294
    move-result v13

    .line 295
    invoke-static {v13}, Lcom/google/android/gms/internal/ads/Et;->r(I)I

    .line 296
    .line 297
    .line 298
    move-result v13

    .line 299
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/jr;->o()I

    .line 300
    .line 301
    .line 302
    move-result v16

    .line 303
    if-lez v16, :cond_9

    .line 304
    .line 305
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/jr;->u()I

    .line 306
    .line 307
    .line 308
    move-result v16

    .line 309
    move/from16 v1, v16

    .line 310
    .line 311
    goto :goto_4

    .line 312
    :cond_9
    const/4 v1, 0x0

    .line 313
    :goto_4
    new-array v9, v1, [B

    .line 314
    .line 315
    invoke-virtual {v0, v4, v9, v1}, Lcom/google/android/gms/internal/ads/jr;->f(I[BI)V

    .line 316
    .line 317
    .line 318
    new-instance v4, Lcom/google/android/gms/internal/ads/K;

    .line 319
    .line 320
    invoke-direct {v4}, Lcom/google/android/gms/internal/ads/K;-><init>()V

    .line 321
    .line 322
    .line 323
    invoke-virtual {v4, v15}, Lcom/google/android/gms/internal/ads/K;->f(Ljava/lang/String;)V

    .line 324
    .line 325
    .line 326
    iput v7, v4, Lcom/google/android/gms/internal/ads/K;->z:I

    .line 327
    .line 328
    iput v8, v4, Lcom/google/android/gms/internal/ads/K;->A:I

    .line 329
    .line 330
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 331
    .line 332
    .line 333
    move-result v7

    .line 334
    if-eqz v7, :cond_a

    .line 335
    .line 336
    if-eqz v13, :cond_a

    .line 337
    .line 338
    iput v13, v4, Lcom/google/android/gms/internal/ads/K;->B:I

    .line 339
    .line 340
    :cond_a
    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 341
    .line 342
    .line 343
    move-result v7

    .line 344
    if-eqz v7, :cond_b

    .line 345
    .line 346
    if-lez v1, :cond_b

    .line 347
    .line 348
    invoke-static {v9}, Lcom/google/android/gms/internal/ads/uA;->w(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/PA;

    .line 349
    .line 350
    .line 351
    move-result-object v1

    .line 352
    iput-object v1, v4, Lcom/google/android/gms/internal/ads/K;->o:Ljava/util/List;

    .line 353
    .line 354
    :cond_b
    new-instance v7, Lcom/google/android/gms/internal/ads/n0;

    .line 355
    .line 356
    new-instance v1, Lcom/google/android/gms/internal/ads/p0;

    .line 357
    .line 358
    invoke-direct {v1, v4}, Lcom/google/android/gms/internal/ads/p0;-><init>(Lcom/google/android/gms/internal/ads/K;)V

    .line 359
    .line 360
    .line 361
    invoke-direct {v7, v1}, Lcom/google/android/gms/internal/ads/n0;-><init>(Lcom/google/android/gms/internal/ads/p0;)V

    .line 362
    .line 363
    .line 364
    goto :goto_6

    .line 365
    :cond_c
    sget v1, Lcom/google/android/gms/internal/ads/Et;->a:I

    .line 366
    .line 367
    packed-switch v5, :pswitch_data_0

    .line 368
    .line 369
    .line 370
    const-string v1, "camera motion"

    .line 371
    .line 372
    goto :goto_5

    .line 373
    :pswitch_0
    const-string v1, "metadata"

    .line 374
    .line 375
    goto :goto_5

    .line 376
    :pswitch_1
    const-string v1, "image"

    .line 377
    .line 378
    goto :goto_5

    .line 379
    :pswitch_2
    const-string v1, "text"

    .line 380
    .line 381
    goto :goto_5

    .line 382
    :pswitch_3
    const-string v1, "video"

    .line 383
    .line 384
    goto :goto_5

    .line 385
    :pswitch_4
    const-string v1, "audio"

    .line 386
    .line 387
    goto :goto_5

    .line 388
    :pswitch_5
    const-string v1, "default"

    .line 389
    .line 390
    goto :goto_5

    .line 391
    :pswitch_6
    const-string v1, "unknown"

    .line 392
    .line 393
    goto :goto_5

    .line 394
    :pswitch_7
    const-string v1, "none"

    .line 395
    .line 396
    :goto_5
    const-string v4, "Ignoring strf box for unsupported track type: "

    .line 397
    .line 398
    invoke-virtual {v4, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 399
    .line 400
    .line 401
    move-result-object v1

    .line 402
    invoke-static {v7, v1}, Lcom/google/android/gms/internal/ads/Zo;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    .line 404
    .line 405
    goto/16 :goto_1

    .line 406
    .line 407
    :goto_6
    if-eqz v7, :cond_12

    .line 408
    .line 409
    invoke-interface {v7}, Lcom/google/android/gms/internal/ads/h0;->zza()I

    .line 410
    .line 411
    .line 412
    move-result v1

    .line 413
    const v4, 0x68727473

    .line 414
    .line 415
    .line 416
    if-ne v1, v4, :cond_10

    .line 417
    .line 418
    move-object v1, v7

    .line 419
    check-cast v1, Lcom/google/android/gms/internal/ads/k0;

    .line 420
    .line 421
    const v4, 0x73646976

    .line 422
    .line 423
    .line 424
    iget v1, v1, Lcom/google/android/gms/internal/ads/k0;->a:I

    .line 425
    .line 426
    if-eq v1, v4, :cond_f

    .line 427
    .line 428
    const v4, 0x73647561

    .line 429
    .line 430
    .line 431
    if-eq v1, v4, :cond_e

    .line 432
    .line 433
    const v4, 0x73747874

    .line 434
    .line 435
    .line 436
    if-eq v1, v4, :cond_d

    .line 437
    .line 438
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 439
    .line 440
    .line 441
    move-result-object v1

    .line 442
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 443
    .line 444
    .line 445
    move-result-object v1

    .line 446
    const-string v4, "Found unsupported streamType fourCC: "

    .line 447
    .line 448
    invoke-virtual {v4, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 449
    .line 450
    .line 451
    move-result-object v1

    .line 452
    const-string v4, "AviStreamHeaderChunk"

    .line 453
    .line 454
    invoke-static {v4, v1}, Lcom/google/android/gms/internal/ads/Zo;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    .line 456
    .line 457
    const/4 v5, -0x1

    .line 458
    goto :goto_7

    .line 459
    :cond_d
    const/4 v5, 0x3

    .line 460
    goto :goto_7

    .line 461
    :cond_e
    const/4 v5, 0x1

    .line 462
    goto :goto_7

    .line 463
    :cond_f
    const/4 v5, 0x2

    .line 464
    :cond_10
    :goto_7
    add-int/lit8 v1, v6, 0x1

    .line 465
    .line 466
    array-length v4, v2

    .line 467
    if-ge v4, v1, :cond_11

    .line 468
    .line 469
    invoke-static {v4, v1}, Lcom/google/android/gms/internal/ads/oA;->e(II)I

    .line 470
    .line 471
    .line 472
    move-result v4

    .line 473
    invoke-static {v2, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 474
    .line 475
    .line 476
    move-result-object v2

    .line 477
    :cond_11
    aput-object v7, v2, v6

    .line 478
    .line 479
    move v6, v1

    .line 480
    :cond_12
    invoke-virtual {v0, v10}, Lcom/google/android/gms/internal/ads/jr;->j(I)V

    .line 481
    .line 482
    .line 483
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/jr;->i(I)V

    .line 484
    .line 485
    .line 486
    const/4 v1, 0x4

    .line 487
    const/4 v4, 0x0

    .line 488
    goto/16 :goto_0

    .line 489
    .line 490
    :cond_13
    new-instance v0, Lcom/google/android/gms/internal/ads/m0;

    .line 491
    .line 492
    invoke-static {v6, v2}, Lcom/google/android/gms/internal/ads/uA;->s(I[Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/PA;

    .line 493
    .line 494
    .line 495
    move-result-object v1

    .line 496
    move/from16 v2, p0

    .line 497
    .line 498
    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/internal/ads/m0;-><init>(ILcom/google/android/gms/internal/ads/PA;)V

    .line 499
    .line 500
    .line 501
    return-object v0

    .line 502
    nop

    .line 503
    :sswitch_data_0
    .sparse-switch
        0x66727473 -> :sswitch_3
        0x68697661 -> :sswitch_2
        0x68727473 -> :sswitch_1
        0x6e727473 -> :sswitch_0
    .end sparse-switch

    .line 504
    .line 505
    .line 506
    .line 507
    .line 508
    .line 509
    .line 510
    .line 511
    .line 512
    .line 513
    .line 514
    .line 515
    .line 516
    .line 517
    .line 518
    .line 519
    .line 520
    .line 521
    :sswitch_data_1
    .sparse-switch
        0x30355844 -> :sswitch_8
        0x31435641 -> :sswitch_7
        0x31637661 -> :sswitch_7
        0x3234504d -> :sswitch_6
        0x3334504d -> :sswitch_5
        0x34363248 -> :sswitch_7
        0x34504d46 -> :sswitch_8
        0x44495633 -> :sswitch_8
        0x44495658 -> :sswitch_8
        0x47504a4d -> :sswitch_4
        0x58564944 -> :sswitch_8
        0x64697678 -> :sswitch_8
        0x67706a6d -> :sswitch_4
        0x78766964 -> :sswitch_8
    .end sparse-switch

    .line 522
    .line 523
    .line 524
    .line 525
    .line 526
    .line 527
    .line 528
    .line 529
    .line 530
    .line 531
    .line 532
    .line 533
    .line 534
    .line 535
    .line 536
    .line 537
    .line 538
    .line 539
    .line 540
    :pswitch_data_0
    .packed-switch -0x2
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


# virtual methods
.method public final a(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/h0;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/m0;->a:Lcom/google/android/gms/internal/ads/uA;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    :cond_0
    if-ge v2, v1, :cond_1

    .line 9
    .line 10
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    check-cast v3, Lcom/google/android/gms/internal/ads/h0;

    .line 15
    .line 16
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    add-int/lit8 v2, v2, 0x1

    .line 21
    .line 22
    if-ne v4, p1, :cond_0

    .line 23
    .line 24
    return-object v3

    .line 25
    :cond_1
    const/4 p1, 0x0

    .line 26
    return-object p1
.end method

.method public final zza()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/m0;->b:I

    return v0
.end method
