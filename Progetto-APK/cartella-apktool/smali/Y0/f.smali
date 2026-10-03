.class public final LY0/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LY0/a;


# instance fields
.field public final a:Lz4/H;

.field public final b:I


# direct methods
.method public constructor <init>(ILz4/d0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, LY0/f;->b:I

    .line 5
    .line 6
    iput-object p2, p0, LY0/f;->a:Lz4/H;

    .line 7
    .line 8
    return-void
.end method

.method public static b(ILp0/E;)LY0/f;
    .locals 18

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    const-string v2, "initialCapacity"

    .line 5
    .line 6
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/Cw;->g(ILjava/lang/String;)V

    .line 7
    .line 8
    .line 9
    new-array v2, v1, [Ljava/lang/Object;

    .line 10
    .line 11
    iget v3, v0, Lp0/E;->c:I

    .line 12
    .line 13
    const/4 v4, 0x0

    .line 14
    const/4 v5, -0x2

    .line 15
    const/4 v6, 0x0

    .line 16
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lp0/E;->a()I

    .line 17
    .line 18
    .line 19
    move-result v7

    .line 20
    const/16 v8, 0x8

    .line 21
    .line 22
    if-le v7, v8, :cond_10

    .line 23
    .line 24
    invoke-virtual/range {p1 .. p1}, Lp0/E;->n()I

    .line 25
    .line 26
    .line 27
    move-result v7

    .line 28
    invoke-virtual/range {p1 .. p1}, Lp0/E;->n()I

    .line 29
    .line 30
    .line 31
    move-result v9

    .line 32
    iget v10, v0, Lp0/E;->b:I

    .line 33
    .line 34
    add-int/2addr v10, v9

    .line 35
    invoke-virtual {v0, v10}, Lp0/E;->K(I)V

    .line 36
    .line 37
    .line 38
    const v9, 0x5453494c

    .line 39
    .line 40
    .line 41
    if-ne v7, v9, :cond_0

    .line 42
    .line 43
    invoke-virtual/range {p1 .. p1}, Lp0/E;->n()I

    .line 44
    .line 45
    .line 46
    move-result v7

    .line 47
    invoke-static {v7, v0}, LY0/f;->b(ILp0/E;)LY0/f;

    .line 48
    .line 49
    .line 50
    move-result-object v7

    .line 51
    goto/16 :goto_5

    .line 52
    .line 53
    :cond_0
    const/16 v9, 0xc

    .line 54
    .line 55
    const/4 v11, 0x0

    .line 56
    sparse-switch v7, :sswitch_data_0

    .line 57
    .line 58
    .line 59
    :goto_1
    move-object v7, v11

    .line 60
    goto/16 :goto_5

    .line 61
    .line 62
    :sswitch_0
    new-instance v7, LY0/h;

    .line 63
    .line 64
    invoke-virtual/range {p1 .. p1}, Lp0/E;->a()I

    .line 65
    .line 66
    .line 67
    move-result v8

    .line 68
    sget-object v9, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 69
    .line 70
    invoke-virtual {v0, v8, v9}, Lp0/E;->x(ILjava/nio/charset/Charset;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v8

    .line 74
    invoke-direct {v7, v8}, LY0/h;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    goto/16 :goto_5

    .line 78
    .line 79
    :sswitch_1
    invoke-virtual/range {p1 .. p1}, Lp0/E;->n()I

    .line 80
    .line 81
    .line 82
    move-result v12

    .line 83
    invoke-virtual {v0, v9}, Lp0/E;->M(I)V

    .line 84
    .line 85
    .line 86
    invoke-virtual/range {p1 .. p1}, Lp0/E;->n()I

    .line 87
    .line 88
    .line 89
    invoke-virtual/range {p1 .. p1}, Lp0/E;->n()I

    .line 90
    .line 91
    .line 92
    move-result v13

    .line 93
    invoke-virtual/range {p1 .. p1}, Lp0/E;->n()I

    .line 94
    .line 95
    .line 96
    move-result v14

    .line 97
    invoke-virtual {v0, v1}, Lp0/E;->M(I)V

    .line 98
    .line 99
    .line 100
    invoke-virtual/range {p1 .. p1}, Lp0/E;->n()I

    .line 101
    .line 102
    .line 103
    move-result v15

    .line 104
    invoke-virtual/range {p1 .. p1}, Lp0/E;->n()I

    .line 105
    .line 106
    .line 107
    move-result v16

    .line 108
    invoke-virtual {v0, v1}, Lp0/E;->M(I)V

    .line 109
    .line 110
    .line 111
    invoke-virtual/range {p1 .. p1}, Lp0/E;->n()I

    .line 112
    .line 113
    .line 114
    move-result v17

    .line 115
    new-instance v7, LY0/d;

    .line 116
    .line 117
    move-object v11, v7

    .line 118
    invoke-direct/range {v11 .. v17}, LY0/d;-><init>(IIIIII)V

    .line 119
    .line 120
    .line 121
    goto/16 :goto_5

    .line 122
    .line 123
    :sswitch_2
    invoke-virtual/range {p1 .. p1}, Lp0/E;->n()I

    .line 124
    .line 125
    .line 126
    move-result v7

    .line 127
    invoke-virtual {v0, v8}, Lp0/E;->M(I)V

    .line 128
    .line 129
    .line 130
    invoke-virtual/range {p1 .. p1}, Lp0/E;->n()I

    .line 131
    .line 132
    .line 133
    move-result v8

    .line 134
    invoke-virtual/range {p1 .. p1}, Lp0/E;->n()I

    .line 135
    .line 136
    .line 137
    move-result v11

    .line 138
    invoke-virtual {v0, v1}, Lp0/E;->M(I)V

    .line 139
    .line 140
    .line 141
    invoke-virtual/range {p1 .. p1}, Lp0/E;->n()I

    .line 142
    .line 143
    .line 144
    invoke-virtual {v0, v9}, Lp0/E;->M(I)V

    .line 145
    .line 146
    .line 147
    new-instance v9, LY0/c;

    .line 148
    .line 149
    invoke-direct {v9, v7, v8, v11}, LY0/c;-><init>(III)V

    .line 150
    .line 151
    .line 152
    move-object v7, v9

    .line 153
    goto/16 :goto_5

    .line 154
    .line 155
    :sswitch_3
    const/4 v7, 0x2

    .line 156
    const-string v8, "StreamFormatChunk"

    .line 157
    .line 158
    if-ne v5, v7, :cond_2

    .line 159
    .line 160
    invoke-virtual {v0, v1}, Lp0/E;->M(I)V

    .line 161
    .line 162
    .line 163
    invoke-virtual/range {p1 .. p1}, Lp0/E;->n()I

    .line 164
    .line 165
    .line 166
    move-result v7

    .line 167
    invoke-virtual/range {p1 .. p1}, Lp0/E;->n()I

    .line 168
    .line 169
    .line 170
    move-result v9

    .line 171
    invoke-virtual {v0, v1}, Lp0/E;->M(I)V

    .line 172
    .line 173
    .line 174
    invoke-virtual/range {p1 .. p1}, Lp0/E;->n()I

    .line 175
    .line 176
    .line 177
    move-result v12

    .line 178
    sparse-switch v12, :sswitch_data_1

    .line 179
    .line 180
    .line 181
    move-object v13, v11

    .line 182
    goto :goto_2

    .line 183
    :sswitch_4
    const-string v13, "video/mjpeg"

    .line 184
    .line 185
    goto :goto_2

    .line 186
    :sswitch_5
    const-string v13, "video/mp43"

    .line 187
    .line 188
    goto :goto_2

    .line 189
    :sswitch_6
    const-string v13, "video/mp42"

    .line 190
    .line 191
    goto :goto_2

    .line 192
    :sswitch_7
    const-string v13, "video/avc"

    .line 193
    .line 194
    goto :goto_2

    .line 195
    :sswitch_8
    const-string v13, "video/mp4v-es"

    .line 196
    .line 197
    :goto_2
    if-nez v13, :cond_1

    .line 198
    .line 199
    const-string v7, "Ignoring track with unsupported compression "

    .line 200
    .line 201
    invoke-static {v7, v12, v8}, Lcom/google/protobuf/U2;->v(Ljava/lang/String;ILjava/lang/String;)V

    .line 202
    .line 203
    .line 204
    goto/16 :goto_1

    .line 205
    .line 206
    :cond_1
    new-instance v8, Lm0/s;

    .line 207
    .line 208
    invoke-direct {v8}, Lm0/s;-><init>()V

    .line 209
    .line 210
    .line 211
    iput v7, v8, Lm0/s;->u:I

    .line 212
    .line 213
    iput v9, v8, Lm0/s;->v:I

    .line 214
    .line 215
    invoke-static {v13}, Lm0/O;->p(Ljava/lang/String;)Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v7

    .line 219
    iput-object v7, v8, Lm0/s;->n:Ljava/lang/String;

    .line 220
    .line 221
    new-instance v11, LY0/g;

    .line 222
    .line 223
    new-instance v7, Lm0/t;

    .line 224
    .line 225
    invoke-direct {v7, v8}, Lm0/t;-><init>(Lm0/s;)V

    .line 226
    .line 227
    .line 228
    invoke-direct {v11, v7}, LY0/g;-><init>(Lm0/t;)V

    .line 229
    .line 230
    .line 231
    goto/16 :goto_1

    .line 232
    .line 233
    :cond_2
    const/4 v7, 0x1

    .line 234
    if-ne v5, v7, :cond_c

    .line 235
    .line 236
    invoke-virtual/range {p1 .. p1}, Lp0/E;->s()I

    .line 237
    .line 238
    .line 239
    move-result v9

    .line 240
    const-string v12, "audio/raw"

    .line 241
    .line 242
    const-string v13, "audio/mp4a-latm"

    .line 243
    .line 244
    if-eq v9, v7, :cond_7

    .line 245
    .line 246
    const/16 v7, 0x55

    .line 247
    .line 248
    if-eq v9, v7, :cond_6

    .line 249
    .line 250
    const/16 v7, 0xff

    .line 251
    .line 252
    if-eq v9, v7, :cond_5

    .line 253
    .line 254
    const/16 v7, 0x2000

    .line 255
    .line 256
    if-eq v9, v7, :cond_4

    .line 257
    .line 258
    const/16 v7, 0x2001

    .line 259
    .line 260
    if-eq v9, v7, :cond_3

    .line 261
    .line 262
    move-object v7, v11

    .line 263
    goto :goto_3

    .line 264
    :cond_3
    const-string v7, "audio/vnd.dts"

    .line 265
    .line 266
    goto :goto_3

    .line 267
    :cond_4
    const-string v7, "audio/ac3"

    .line 268
    .line 269
    goto :goto_3

    .line 270
    :cond_5
    move-object v7, v13

    .line 271
    goto :goto_3

    .line 272
    :cond_6
    const-string v7, "audio/mpeg"

    .line 273
    .line 274
    goto :goto_3

    .line 275
    :cond_7
    move-object v7, v12

    .line 276
    :goto_3
    if-nez v7, :cond_8

    .line 277
    .line 278
    const-string v7, "Ignoring track with unsupported format tag "

    .line 279
    .line 280
    invoke-static {v7, v9, v8}, Lcom/google/protobuf/U2;->v(Ljava/lang/String;ILjava/lang/String;)V

    .line 281
    .line 282
    .line 283
    goto/16 :goto_1

    .line 284
    .line 285
    :cond_8
    invoke-virtual/range {p1 .. p1}, Lp0/E;->s()I

    .line 286
    .line 287
    .line 288
    move-result v8

    .line 289
    invoke-virtual/range {p1 .. p1}, Lp0/E;->n()I

    .line 290
    .line 291
    .line 292
    move-result v9

    .line 293
    const/4 v11, 0x6

    .line 294
    invoke-virtual {v0, v11}, Lp0/E;->M(I)V

    .line 295
    .line 296
    .line 297
    invoke-virtual/range {p1 .. p1}, Lp0/E;->s()I

    .line 298
    .line 299
    .line 300
    move-result v11

    .line 301
    sget-object v14, Lp0/M;->a:Ljava/lang/String;

    .line 302
    .line 303
    sget-object v14, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 304
    .line 305
    invoke-static {v11, v14}, Lp0/M;->A(ILjava/nio/ByteOrder;)I

    .line 306
    .line 307
    .line 308
    move-result v11

    .line 309
    invoke-virtual/range {p1 .. p1}, Lp0/E;->a()I

    .line 310
    .line 311
    .line 312
    move-result v14

    .line 313
    if-lez v14, :cond_9

    .line 314
    .line 315
    invoke-virtual/range {p1 .. p1}, Lp0/E;->s()I

    .line 316
    .line 317
    .line 318
    move-result v14

    .line 319
    goto :goto_4

    .line 320
    :cond_9
    const/4 v14, 0x0

    .line 321
    :goto_4
    new-instance v15, Lm0/s;

    .line 322
    .line 323
    invoke-direct {v15}, Lm0/s;-><init>()V

    .line 324
    .line 325
    .line 326
    invoke-static {v7}, Lm0/O;->p(Ljava/lang/String;)Ljava/lang/String;

    .line 327
    .line 328
    .line 329
    move-result-object v1

    .line 330
    iput-object v1, v15, Lm0/s;->n:Ljava/lang/String;

    .line 331
    .line 332
    iput v8, v15, Lm0/s;->F:I

    .line 333
    .line 334
    iput v9, v15, Lm0/s;->G:I

    .line 335
    .line 336
    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 337
    .line 338
    .line 339
    move-result v1

    .line 340
    if-eqz v1, :cond_a

    .line 341
    .line 342
    if-eqz v11, :cond_a

    .line 343
    .line 344
    iput v11, v15, Lm0/s;->H:I

    .line 345
    .line 346
    :cond_a
    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 347
    .line 348
    .line 349
    move-result v1

    .line 350
    if-eqz v1, :cond_b

    .line 351
    .line 352
    if-lez v14, :cond_b

    .line 353
    .line 354
    new-array v1, v14, [B

    .line 355
    .line 356
    invoke-virtual {v0, v4, v1, v14}, Lp0/E;->j(I[BI)V

    .line 357
    .line 358
    .line 359
    invoke-static {v1}, Lz4/H;->x(Ljava/lang/Object;)Lz4/d0;

    .line 360
    .line 361
    .line 362
    move-result-object v1

    .line 363
    iput-object v1, v15, Lm0/s;->q:Ljava/util/List;

    .line 364
    .line 365
    :cond_b
    new-instance v11, LY0/g;

    .line 366
    .line 367
    new-instance v1, Lm0/t;

    .line 368
    .line 369
    invoke-direct {v1, v15}, Lm0/t;-><init>(Lm0/s;)V

    .line 370
    .line 371
    .line 372
    invoke-direct {v11, v1}, LY0/g;-><init>(Lm0/t;)V

    .line 373
    .line 374
    .line 375
    goto/16 :goto_1

    .line 376
    .line 377
    :cond_c
    new-instance v1, Ljava/lang/StringBuilder;

    .line 378
    .line 379
    const-string v7, "Ignoring strf box for unsupported track type: "

    .line 380
    .line 381
    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 382
    .line 383
    .line 384
    invoke-static {v5}, Lp0/M;->G(I)Ljava/lang/String;

    .line 385
    .line 386
    .line 387
    move-result-object v7

    .line 388
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    .line 390
    .line 391
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 392
    .line 393
    .line 394
    move-result-object v1

    .line 395
    invoke-static {v8, v1}, Lp0/x;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    .line 397
    .line 398
    goto/16 :goto_1

    .line 399
    .line 400
    :goto_5
    if-eqz v7, :cond_f

    .line 401
    .line 402
    invoke-interface {v7}, LY0/a;->getType()I

    .line 403
    .line 404
    .line 405
    move-result v1

    .line 406
    const v8, 0x68727473

    .line 407
    .line 408
    .line 409
    if-ne v1, v8, :cond_d

    .line 410
    .line 411
    move-object v1, v7

    .line 412
    check-cast v1, LY0/d;

    .line 413
    .line 414
    invoke-virtual {v1}, LY0/d;->a()I

    .line 415
    .line 416
    .line 417
    move-result v5

    .line 418
    :cond_d
    array-length v1, v2

    .line 419
    add-int/lit8 v8, v6, 0x1

    .line 420
    .line 421
    invoke-static {v1, v8}, LQ3/b;->f(II)I

    .line 422
    .line 423
    .line 424
    move-result v1

    .line 425
    array-length v9, v2

    .line 426
    if-gt v1, v9, :cond_e

    .line 427
    .line 428
    goto :goto_6

    .line 429
    :cond_e
    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 430
    .line 431
    .line 432
    move-result-object v2

    .line 433
    :goto_6
    aput-object v7, v2, v6

    .line 434
    .line 435
    move v6, v8

    .line 436
    :cond_f
    invoke-virtual {v0, v10}, Lp0/E;->L(I)V

    .line 437
    .line 438
    .line 439
    invoke-virtual {v0, v3}, Lp0/E;->K(I)V

    .line 440
    .line 441
    .line 442
    const/4 v1, 0x4

    .line 443
    goto/16 :goto_0

    .line 444
    .line 445
    :cond_10
    new-instance v0, LY0/f;

    .line 446
    .line 447
    invoke-static {v6, v2}, Lz4/H;->p(I[Ljava/lang/Object;)Lz4/d0;

    .line 448
    .line 449
    .line 450
    move-result-object v1

    .line 451
    move/from16 v2, p0

    .line 452
    .line 453
    invoke-direct {v0, v2, v1}, LY0/f;-><init>(ILz4/d0;)V

    .line 454
    .line 455
    .line 456
    return-object v0

    .line 457
    :sswitch_data_0
    .sparse-switch
        0x66727473 -> :sswitch_3
        0x68697661 -> :sswitch_2
        0x68727473 -> :sswitch_1
        0x6e727473 -> :sswitch_0
    .end sparse-switch

    .line 458
    .line 459
    .line 460
    .line 461
    .line 462
    .line 463
    .line 464
    .line 465
    .line 466
    .line 467
    .line 468
    .line 469
    .line 470
    .line 471
    .line 472
    .line 473
    .line 474
    .line 475
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
.end method


# virtual methods
.method public final a(Ljava/lang/Class;)LY0/a;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, LY0/f;->a:Lz4/H;

    .line 3
    .line 4
    invoke-virtual {v1, v0}, Lz4/H;->v(I)Lz4/F;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    :cond_0
    invoke-virtual {v0}, Lz4/a;->hasNext()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    invoke-virtual {v0}, Lz4/a;->next()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    check-cast v1, LY0/a;

    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    if-ne v2, p1, :cond_0

    .line 25
    .line 26
    return-object v1

    .line 27
    :cond_1
    const/4 p1, 0x0

    .line 28
    return-object p1
.end method

.method public final getType()I
    .locals 1

    .line 1
    iget v0, p0, LY0/f;->b:I

    .line 2
    .line 3
    return v0
.end method
