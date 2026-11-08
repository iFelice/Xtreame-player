.class public final Lcom/google/android/gms/internal/ads/E0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ads/E0;->a:I

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget v2, v0, Lcom/google/android/gms/internal/ads/E0;->a:I

    .line 6
    .line 7
    const/4 v3, 0x4

    .line 8
    const-wide/16 v4, 0x0

    .line 9
    .line 10
    const/4 v6, 0x3

    .line 11
    const/4 v7, 0x1

    .line 12
    const/4 v8, 0x2

    .line 13
    const/4 v9, 0x0

    .line 14
    const/4 v10, 0x0

    .line 15
    packed-switch v2, :pswitch_data_0

    .line 16
    .line 17
    .line 18
    invoke-static/range {p1 .. p1}, Lf/b;->H(Landroid/os/Parcel;)I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    const/4 v3, 0x0

    .line 23
    const/4 v4, 0x0

    .line 24
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    .line 25
    .line 26
    .line 27
    move-result v5

    .line 28
    if-ge v5, v2, :cond_3

    .line 29
    .line 30
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 31
    .line 32
    .line 33
    move-result v5

    .line 34
    int-to-char v10, v5

    .line 35
    if-eq v10, v7, :cond_2

    .line 36
    .line 37
    if-eq v10, v8, :cond_1

    .line 38
    .line 39
    if-eq v10, v6, :cond_0

    .line 40
    .line 41
    invoke-static {v5, v1}, Lf/b;->G(ILandroid/os/Parcel;)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    invoke-static {v5, v1}, Lf/b;->D(ILandroid/os/Parcel;)I

    .line 46
    .line 47
    .line 48
    move-result v4

    .line 49
    goto :goto_0

    .line 50
    :cond_1
    invoke-static {v5, v1}, Lf/b;->D(ILandroid/os/Parcel;)I

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    goto :goto_0

    .line 55
    :cond_2
    invoke-static {v5, v1}, Lf/b;->D(ILandroid/os/Parcel;)I

    .line 56
    .line 57
    .line 58
    move-result v9

    .line 59
    goto :goto_0

    .line 60
    :cond_3
    invoke-static {v2, v1}, Lf/b;->t(ILandroid/os/Parcel;)V

    .line 61
    .line 62
    .line 63
    new-instance v1, Lcom/google/android/gms/internal/ads/Ob;

    .line 64
    .line 65
    invoke-direct {v1, v9, v3, v4}, Lcom/google/android/gms/internal/ads/Ob;-><init>(III)V

    .line 66
    .line 67
    .line 68
    return-object v1

    .line 69
    :pswitch_0
    invoke-static/range {p1 .. p1}, Lf/b;->H(Landroid/os/Parcel;)I

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    const/4 v3, 0x0

    .line 74
    const/4 v4, 0x0

    .line 75
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    .line 76
    .line 77
    .line 78
    move-result v5

    .line 79
    if-ge v5, v2, :cond_8

    .line 80
    .line 81
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 82
    .line 83
    .line 84
    move-result v5

    .line 85
    int-to-char v11, v5

    .line 86
    if-eq v11, v7, :cond_7

    .line 87
    .line 88
    if-eq v11, v8, :cond_6

    .line 89
    .line 90
    if-eq v11, v6, :cond_5

    .line 91
    .line 92
    const/16 v12, 0x3e8

    .line 93
    .line 94
    if-eq v11, v12, :cond_4

    .line 95
    .line 96
    invoke-static {v5, v1}, Lf/b;->G(ILandroid/os/Parcel;)V

    .line 97
    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_4
    invoke-static {v5, v1}, Lf/b;->D(ILandroid/os/Parcel;)I

    .line 101
    .line 102
    .line 103
    move-result v9

    .line 104
    goto :goto_1

    .line 105
    :cond_5
    invoke-static {v5, v1}, Lf/b;->D(ILandroid/os/Parcel;)I

    .line 106
    .line 107
    .line 108
    move-result v4

    .line 109
    goto :goto_1

    .line 110
    :cond_6
    invoke-static {v5, v1}, Lf/b;->n(ILandroid/os/Parcel;)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v10

    .line 114
    goto :goto_1

    .line 115
    :cond_7
    invoke-static {v5, v1}, Lf/b;->D(ILandroid/os/Parcel;)I

    .line 116
    .line 117
    .line 118
    move-result v3

    .line 119
    goto :goto_1

    .line 120
    :cond_8
    invoke-static {v2, v1}, Lf/b;->t(ILandroid/os/Parcel;)V

    .line 121
    .line 122
    .line 123
    new-instance v1, Lcom/google/android/gms/internal/ads/la;

    .line 124
    .line 125
    invoke-direct {v1, v9, v10, v3, v4}, Lcom/google/android/gms/internal/ads/la;-><init>(ILjava/lang/String;II)V

    .line 126
    .line 127
    .line 128
    return-object v1

    .line 129
    :pswitch_1
    invoke-static/range {p1 .. p1}, Lf/b;->H(Landroid/os/Parcel;)I

    .line 130
    .line 131
    .line 132
    move-result v2

    .line 133
    move-object v3, v10

    .line 134
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    .line 135
    .line 136
    .line 137
    move-result v4

    .line 138
    if-ge v4, v2, :cond_b

    .line 139
    .line 140
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 141
    .line 142
    .line 143
    move-result v4

    .line 144
    int-to-char v5, v4

    .line 145
    if-eq v5, v7, :cond_a

    .line 146
    .line 147
    if-eq v5, v8, :cond_9

    .line 148
    .line 149
    invoke-static {v4, v1}, Lf/b;->G(ILandroid/os/Parcel;)V

    .line 150
    .line 151
    .line 152
    goto :goto_2

    .line 153
    :cond_9
    invoke-static {v4, v1}, Lf/b;->g(ILandroid/os/Parcel;)Landroid/os/Bundle;

    .line 154
    .line 155
    .line 156
    move-result-object v3

    .line 157
    goto :goto_2

    .line 158
    :cond_a
    invoke-static {v4, v1}, Lf/b;->n(ILandroid/os/Parcel;)Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v10

    .line 162
    goto :goto_2

    .line 163
    :cond_b
    invoke-static {v2, v1}, Lf/b;->t(ILandroid/os/Parcel;)V

    .line 164
    .line 165
    .line 166
    new-instance v1, Lcom/google/android/gms/internal/ads/ka;

    .line 167
    .line 168
    invoke-direct {v1, v10, v3}, Lcom/google/android/gms/internal/ads/ka;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 169
    .line 170
    .line 171
    return-object v1

    .line 172
    :pswitch_2
    invoke-static/range {p1 .. p1}, Lf/b;->H(Landroid/os/Parcel;)I

    .line 173
    .line 174
    .line 175
    move-result v2

    .line 176
    move-object v5, v10

    .line 177
    const/4 v4, 0x0

    .line 178
    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    .line 179
    .line 180
    .line 181
    move-result v11

    .line 182
    if-ge v11, v2, :cond_10

    .line 183
    .line 184
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 185
    .line 186
    .line 187
    move-result v11

    .line 188
    int-to-char v12, v11

    .line 189
    if-eq v12, v7, :cond_f

    .line 190
    .line 191
    if-eq v12, v8, :cond_e

    .line 192
    .line 193
    if-eq v12, v6, :cond_d

    .line 194
    .line 195
    if-eq v12, v3, :cond_c

    .line 196
    .line 197
    invoke-static {v11, v1}, Lf/b;->G(ILandroid/os/Parcel;)V

    .line 198
    .line 199
    .line 200
    goto :goto_3

    .line 201
    :cond_c
    invoke-static {v11, v1}, Lf/b;->n(ILandroid/os/Parcel;)Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v5

    .line 205
    goto :goto_3

    .line 206
    :cond_d
    invoke-static {v11, v1}, Lf/b;->D(ILandroid/os/Parcel;)I

    .line 207
    .line 208
    .line 209
    move-result v4

    .line 210
    goto :goto_3

    .line 211
    :cond_e
    invoke-static {v11, v1}, Lf/b;->y(ILandroid/os/Parcel;)Z

    .line 212
    .line 213
    .line 214
    move-result v9

    .line 215
    goto :goto_3

    .line 216
    :cond_f
    invoke-static {v11, v1}, Lf/b;->n(ILandroid/os/Parcel;)Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v10

    .line 220
    goto :goto_3

    .line 221
    :cond_10
    invoke-static {v2, v1}, Lf/b;->t(ILandroid/os/Parcel;)V

    .line 222
    .line 223
    .line 224
    new-instance v1, Lcom/google/android/gms/internal/ads/fa;

    .line 225
    .line 226
    invoke-direct {v1, v10, v4, v5, v9}, Lcom/google/android/gms/internal/ads/fa;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    .line 227
    .line 228
    .line 229
    return-object v1

    .line 230
    :pswitch_3
    invoke-static/range {p1 .. p1}, Lf/b;->H(Landroid/os/Parcel;)I

    .line 231
    .line 232
    .line 233
    move-result v2

    .line 234
    move-wide/from16 v19, v4

    .line 235
    .line 236
    move-object v13, v10

    .line 237
    move-object v15, v13

    .line 238
    move-object/from16 v16, v15

    .line 239
    .line 240
    move-object/from16 v17, v16

    .line 241
    .line 242
    const/4 v12, 0x0

    .line 243
    const/4 v14, 0x0

    .line 244
    const/16 v18, 0x0

    .line 245
    .line 246
    :goto_4
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    .line 247
    .line 248
    .line 249
    move-result v3

    .line 250
    if-ge v3, v2, :cond_11

    .line 251
    .line 252
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 253
    .line 254
    .line 255
    move-result v3

    .line 256
    int-to-char v4, v3

    .line 257
    packed-switch v4, :pswitch_data_1

    .line 258
    .line 259
    .line 260
    invoke-static {v3, v1}, Lf/b;->G(ILandroid/os/Parcel;)V

    .line 261
    .line 262
    .line 263
    goto :goto_4

    .line 264
    :pswitch_4
    invoke-static {v3, v1}, Lf/b;->E(ILandroid/os/Parcel;)J

    .line 265
    .line 266
    .line 267
    move-result-wide v3

    .line 268
    move-wide/from16 v19, v3

    .line 269
    .line 270
    goto :goto_4

    .line 271
    :pswitch_5
    invoke-static {v3, v1}, Lf/b;->y(ILandroid/os/Parcel;)Z

    .line 272
    .line 273
    .line 274
    move-result v3

    .line 275
    move/from16 v18, v3

    .line 276
    .line 277
    goto :goto_4

    .line 278
    :pswitch_6
    invoke-static {v3, v1}, Lf/b;->o(ILandroid/os/Parcel;)[Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    move-result-object v3

    .line 282
    move-object/from16 v17, v3

    .line 283
    .line 284
    goto :goto_4

    .line 285
    :pswitch_7
    invoke-static {v3, v1}, Lf/b;->o(ILandroid/os/Parcel;)[Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object v3

    .line 289
    move-object/from16 v16, v3

    .line 290
    .line 291
    goto :goto_4

    .line 292
    :pswitch_8
    invoke-static {v3, v1}, Lf/b;->i(ILandroid/os/Parcel;)[B

    .line 293
    .line 294
    .line 295
    move-result-object v3

    .line 296
    move-object v15, v3

    .line 297
    goto :goto_4

    .line 298
    :pswitch_9
    invoke-static {v3, v1}, Lf/b;->D(ILandroid/os/Parcel;)I

    .line 299
    .line 300
    .line 301
    move-result v3

    .line 302
    move v14, v3

    .line 303
    goto :goto_4

    .line 304
    :pswitch_a
    invoke-static {v3, v1}, Lf/b;->n(ILandroid/os/Parcel;)Ljava/lang/String;

    .line 305
    .line 306
    .line 307
    move-result-object v3

    .line 308
    move-object v13, v3

    .line 309
    goto :goto_4

    .line 310
    :pswitch_b
    invoke-static {v3, v1}, Lf/b;->y(ILandroid/os/Parcel;)Z

    .line 311
    .line 312
    .line 313
    move-result v3

    .line 314
    move v12, v3

    .line 315
    goto :goto_4

    .line 316
    :cond_11
    invoke-static {v2, v1}, Lf/b;->t(ILandroid/os/Parcel;)V

    .line 317
    .line 318
    .line 319
    new-instance v1, Lcom/google/android/gms/internal/ads/ba;

    .line 320
    .line 321
    move-object v11, v1

    .line 322
    invoke-direct/range {v11 .. v20}, Lcom/google/android/gms/internal/ads/ba;-><init>(ZLjava/lang/String;I[B[Ljava/lang/String;[Ljava/lang/String;ZJ)V

    .line 323
    .line 324
    .line 325
    return-object v1

    .line 326
    :pswitch_c
    invoke-static/range {p1 .. p1}, Lf/b;->H(Landroid/os/Parcel;)I

    .line 327
    .line 328
    .line 329
    move-result v2

    .line 330
    move-object v3, v10

    .line 331
    move-object v4, v3

    .line 332
    :goto_5
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    .line 333
    .line 334
    .line 335
    move-result v5

    .line 336
    if-ge v5, v2, :cond_15

    .line 337
    .line 338
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 339
    .line 340
    .line 341
    move-result v5

    .line 342
    int-to-char v9, v5

    .line 343
    if-eq v9, v7, :cond_14

    .line 344
    .line 345
    if-eq v9, v8, :cond_13

    .line 346
    .line 347
    if-eq v9, v6, :cond_12

    .line 348
    .line 349
    invoke-static {v5, v1}, Lf/b;->G(ILandroid/os/Parcel;)V

    .line 350
    .line 351
    .line 352
    goto :goto_5

    .line 353
    :cond_12
    invoke-static {v5, v1}, Lf/b;->o(ILandroid/os/Parcel;)[Ljava/lang/String;

    .line 354
    .line 355
    .line 356
    move-result-object v4

    .line 357
    goto :goto_5

    .line 358
    :cond_13
    invoke-static {v5, v1}, Lf/b;->o(ILandroid/os/Parcel;)[Ljava/lang/String;

    .line 359
    .line 360
    .line 361
    move-result-object v3

    .line 362
    goto :goto_5

    .line 363
    :cond_14
    invoke-static {v5, v1}, Lf/b;->n(ILandroid/os/Parcel;)Ljava/lang/String;

    .line 364
    .line 365
    .line 366
    move-result-object v10

    .line 367
    goto :goto_5

    .line 368
    :cond_15
    invoke-static {v2, v1}, Lf/b;->t(ILandroid/os/Parcel;)V

    .line 369
    .line 370
    .line 371
    new-instance v1, Lcom/google/android/gms/internal/ads/aa;

    .line 372
    .line 373
    invoke-direct {v1, v10, v3, v4}, Lcom/google/android/gms/internal/ads/aa;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 374
    .line 375
    .line 376
    return-object v1

    .line 377
    :pswitch_d
    new-instance v2, Lcom/google/android/gms/internal/ads/Q9;

    .line 378
    .line 379
    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/ads/Q9;-><init>(Landroid/os/Parcel;)V

    .line 380
    .line 381
    .line 382
    return-object v2

    .line 383
    :pswitch_e
    invoke-static/range {p1 .. p1}, Lf/b;->H(Landroid/os/Parcel;)I

    .line 384
    .line 385
    .line 386
    move-result v2

    .line 387
    move-object/from16 v17, v10

    .line 388
    .line 389
    const/4 v12, 0x0

    .line 390
    const/4 v13, 0x0

    .line 391
    const/4 v14, 0x0

    .line 392
    const/4 v15, 0x0

    .line 393
    const/16 v16, 0x0

    .line 394
    .line 395
    const/16 v18, 0x0

    .line 396
    .line 397
    const/16 v19, 0x0

    .line 398
    .line 399
    const/16 v20, 0x0

    .line 400
    .line 401
    const/16 v21, 0x0

    .line 402
    .line 403
    const/16 v22, 0x0

    .line 404
    .line 405
    :goto_6
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    .line 406
    .line 407
    .line 408
    move-result v3

    .line 409
    if-ge v3, v2, :cond_16

    .line 410
    .line 411
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 412
    .line 413
    .line 414
    move-result v3

    .line 415
    int-to-char v4, v3

    .line 416
    packed-switch v4, :pswitch_data_2

    .line 417
    .line 418
    .line 419
    invoke-static {v3, v1}, Lf/b;->G(ILandroid/os/Parcel;)V

    .line 420
    .line 421
    .line 422
    goto :goto_6

    .line 423
    :pswitch_f
    invoke-static {v3, v1}, Lf/b;->D(ILandroid/os/Parcel;)I

    .line 424
    .line 425
    .line 426
    move-result v22

    .line 427
    goto :goto_6

    .line 428
    :pswitch_10
    invoke-static {v3, v1}, Lf/b;->y(ILandroid/os/Parcel;)Z

    .line 429
    .line 430
    .line 431
    move-result v21

    .line 432
    goto :goto_6

    .line 433
    :pswitch_11
    invoke-static {v3, v1}, Lf/b;->D(ILandroid/os/Parcel;)I

    .line 434
    .line 435
    .line 436
    move-result v20

    .line 437
    goto :goto_6

    .line 438
    :pswitch_12
    invoke-static {v3, v1}, Lf/b;->D(ILandroid/os/Parcel;)I

    .line 439
    .line 440
    .line 441
    move-result v19

    .line 442
    goto :goto_6

    .line 443
    :pswitch_13
    invoke-static {v3, v1}, Lf/b;->y(ILandroid/os/Parcel;)Z

    .line 444
    .line 445
    .line 446
    move-result v18

    .line 447
    goto :goto_6

    .line 448
    :pswitch_14
    sget-object v4, Ll3/Y0;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 449
    .line 450
    invoke-static {v1, v3, v4}, Lf/b;->m(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 451
    .line 452
    .line 453
    move-result-object v3

    .line 454
    move-object/from16 v17, v3

    .line 455
    .line 456
    check-cast v17, Ll3/Y0;

    .line 457
    .line 458
    goto :goto_6

    .line 459
    :pswitch_15
    invoke-static {v3, v1}, Lf/b;->D(ILandroid/os/Parcel;)I

    .line 460
    .line 461
    .line 462
    move-result v16

    .line 463
    goto :goto_6

    .line 464
    :pswitch_16
    invoke-static {v3, v1}, Lf/b;->y(ILandroid/os/Parcel;)Z

    .line 465
    .line 466
    .line 467
    move-result v15

    .line 468
    goto :goto_6

    .line 469
    :pswitch_17
    invoke-static {v3, v1}, Lf/b;->D(ILandroid/os/Parcel;)I

    .line 470
    .line 471
    .line 472
    move-result v14

    .line 473
    goto :goto_6

    .line 474
    :pswitch_18
    invoke-static {v3, v1}, Lf/b;->y(ILandroid/os/Parcel;)Z

    .line 475
    .line 476
    .line 477
    move-result v13

    .line 478
    goto :goto_6

    .line 479
    :pswitch_19
    invoke-static {v3, v1}, Lf/b;->D(ILandroid/os/Parcel;)I

    .line 480
    .line 481
    .line 482
    move-result v12

    .line 483
    goto :goto_6

    .line 484
    :cond_16
    invoke-static {v2, v1}, Lf/b;->t(ILandroid/os/Parcel;)V

    .line 485
    .line 486
    .line 487
    new-instance v1, Lcom/google/android/gms/internal/ads/M8;

    .line 488
    .line 489
    move-object v11, v1

    .line 490
    invoke-direct/range {v11 .. v22}, Lcom/google/android/gms/internal/ads/M8;-><init>(IZIZILl3/Y0;ZIIZI)V

    .line 491
    .line 492
    .line 493
    return-object v1

    .line 494
    :pswitch_1a
    invoke-static/range {p1 .. p1}, Lf/b;->H(Landroid/os/Parcel;)I

    .line 495
    .line 496
    .line 497
    move-result v2

    .line 498
    move-wide v13, v4

    .line 499
    move-wide/from16 v20, v13

    .line 500
    .line 501
    move-object v12, v10

    .line 502
    move-object v15, v12

    .line 503
    move-object/from16 v16, v15

    .line 504
    .line 505
    move-object/from16 v17, v16

    .line 506
    .line 507
    move-object/from16 v18, v17

    .line 508
    .line 509
    move-object/from16 v22, v18

    .line 510
    .line 511
    const/16 v19, 0x0

    .line 512
    .line 513
    const/16 v23, 0x0

    .line 514
    .line 515
    :goto_7
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    .line 516
    .line 517
    .line 518
    move-result v3

    .line 519
    if-ge v3, v2, :cond_17

    .line 520
    .line 521
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 522
    .line 523
    .line 524
    move-result v3

    .line 525
    int-to-char v4, v3

    .line 526
    packed-switch v4, :pswitch_data_3

    .line 527
    .line 528
    .line 529
    invoke-static {v3, v1}, Lf/b;->G(ILandroid/os/Parcel;)V

    .line 530
    .line 531
    .line 532
    goto :goto_7

    .line 533
    :pswitch_1b
    invoke-static {v3, v1}, Lf/b;->D(ILandroid/os/Parcel;)I

    .line 534
    .line 535
    .line 536
    move-result v3

    .line 537
    move/from16 v23, v3

    .line 538
    .line 539
    goto :goto_7

    .line 540
    :pswitch_1c
    invoke-static {v3, v1}, Lf/b;->n(ILandroid/os/Parcel;)Ljava/lang/String;

    .line 541
    .line 542
    .line 543
    move-result-object v3

    .line 544
    move-object/from16 v22, v3

    .line 545
    .line 546
    goto :goto_7

    .line 547
    :pswitch_1d
    invoke-static {v3, v1}, Lf/b;->E(ILandroid/os/Parcel;)J

    .line 548
    .line 549
    .line 550
    move-result-wide v3

    .line 551
    move-wide/from16 v20, v3

    .line 552
    .line 553
    goto :goto_7

    .line 554
    :pswitch_1e
    invoke-static {v3, v1}, Lf/b;->y(ILandroid/os/Parcel;)Z

    .line 555
    .line 556
    .line 557
    move-result v3

    .line 558
    move/from16 v19, v3

    .line 559
    .line 560
    goto :goto_7

    .line 561
    :pswitch_1f
    invoke-static {v3, v1}, Lf/b;->g(ILandroid/os/Parcel;)Landroid/os/Bundle;

    .line 562
    .line 563
    .line 564
    move-result-object v3

    .line 565
    move-object/from16 v18, v3

    .line 566
    .line 567
    goto :goto_7

    .line 568
    :pswitch_20
    invoke-static {v3, v1}, Lf/b;->n(ILandroid/os/Parcel;)Ljava/lang/String;

    .line 569
    .line 570
    .line 571
    move-result-object v3

    .line 572
    move-object/from16 v17, v3

    .line 573
    .line 574
    goto :goto_7

    .line 575
    :pswitch_21
    invoke-static {v3, v1}, Lf/b;->n(ILandroid/os/Parcel;)Ljava/lang/String;

    .line 576
    .line 577
    .line 578
    move-result-object v3

    .line 579
    move-object/from16 v16, v3

    .line 580
    .line 581
    goto :goto_7

    .line 582
    :pswitch_22
    invoke-static {v3, v1}, Lf/b;->n(ILandroid/os/Parcel;)Ljava/lang/String;

    .line 583
    .line 584
    .line 585
    move-result-object v3

    .line 586
    move-object v15, v3

    .line 587
    goto :goto_7

    .line 588
    :pswitch_23
    invoke-static {v3, v1}, Lf/b;->E(ILandroid/os/Parcel;)J

    .line 589
    .line 590
    .line 591
    move-result-wide v3

    .line 592
    move-wide v13, v3

    .line 593
    goto :goto_7

    .line 594
    :pswitch_24
    invoke-static {v3, v1}, Lf/b;->n(ILandroid/os/Parcel;)Ljava/lang/String;

    .line 595
    .line 596
    .line 597
    move-result-object v3

    .line 598
    move-object v12, v3

    .line 599
    goto :goto_7

    .line 600
    :cond_17
    invoke-static {v2, v1}, Lf/b;->t(ILandroid/os/Parcel;)V

    .line 601
    .line 602
    .line 603
    new-instance v1, Lcom/google/android/gms/internal/ads/o6;

    .line 604
    .line 605
    move-object v11, v1

    .line 606
    invoke-direct/range {v11 .. v23}, Lcom/google/android/gms/internal/ads/o6;-><init>(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZJLjava/lang/String;I)V

    .line 607
    .line 608
    .line 609
    return-object v1

    .line 610
    :pswitch_25
    invoke-static/range {p1 .. p1}, Lf/b;->H(Landroid/os/Parcel;)I

    .line 611
    .line 612
    .line 613
    move-result v2

    .line 614
    move-wide v15, v4

    .line 615
    move-object v12, v10

    .line 616
    const/4 v13, 0x0

    .line 617
    const/4 v14, 0x0

    .line 618
    const/16 v17, 0x0

    .line 619
    .line 620
    :goto_8
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    .line 621
    .line 622
    .line 623
    move-result v4

    .line 624
    if-ge v4, v2, :cond_1d

    .line 625
    .line 626
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 627
    .line 628
    .line 629
    move-result v4

    .line 630
    int-to-char v5, v4

    .line 631
    if-eq v5, v8, :cond_1c

    .line 632
    .line 633
    if-eq v5, v6, :cond_1b

    .line 634
    .line 635
    if-eq v5, v3, :cond_1a

    .line 636
    .line 637
    const/4 v7, 0x5

    .line 638
    if-eq v5, v7, :cond_19

    .line 639
    .line 640
    const/4 v7, 0x6

    .line 641
    if-eq v5, v7, :cond_18

    .line 642
    .line 643
    invoke-static {v4, v1}, Lf/b;->G(ILandroid/os/Parcel;)V

    .line 644
    .line 645
    .line 646
    goto :goto_8

    .line 647
    :cond_18
    invoke-static {v4, v1}, Lf/b;->y(ILandroid/os/Parcel;)Z

    .line 648
    .line 649
    .line 650
    move-result v4

    .line 651
    move/from16 v17, v4

    .line 652
    .line 653
    goto :goto_8

    .line 654
    :cond_19
    invoke-static {v4, v1}, Lf/b;->E(ILandroid/os/Parcel;)J

    .line 655
    .line 656
    .line 657
    move-result-wide v4

    .line 658
    move-wide v15, v4

    .line 659
    goto :goto_8

    .line 660
    :cond_1a
    invoke-static {v4, v1}, Lf/b;->y(ILandroid/os/Parcel;)Z

    .line 661
    .line 662
    .line 663
    move-result v4

    .line 664
    move v14, v4

    .line 665
    goto :goto_8

    .line 666
    :cond_1b
    invoke-static {v4, v1}, Lf/b;->y(ILandroid/os/Parcel;)Z

    .line 667
    .line 668
    .line 669
    move-result v4

    .line 670
    move v13, v4

    .line 671
    goto :goto_8

    .line 672
    :cond_1c
    sget-object v5, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 673
    .line 674
    invoke-static {v1, v4, v5}, Lf/b;->m(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 675
    .line 676
    .line 677
    move-result-object v4

    .line 678
    check-cast v4, Landroid/os/ParcelFileDescriptor;

    .line 679
    .line 680
    move-object v12, v4

    .line 681
    goto :goto_8

    .line 682
    :cond_1d
    invoke-static {v2, v1}, Lf/b;->t(ILandroid/os/Parcel;)V

    .line 683
    .line 684
    .line 685
    new-instance v1, Lcom/google/android/gms/internal/ads/m6;

    .line 686
    .line 687
    move-object v11, v1

    .line 688
    invoke-direct/range {v11 .. v17}, Lcom/google/android/gms/internal/ads/m6;-><init>(Landroid/os/ParcelFileDescriptor;ZZJZ)V

    .line 689
    .line 690
    .line 691
    return-object v1

    .line 692
    :pswitch_26
    new-instance v2, Lcom/google/android/gms/internal/ads/a1;

    .line 693
    .line 694
    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/ads/H0;-><init>(Landroid/os/Parcel;)V

    .line 695
    .line 696
    .line 697
    return-object v2

    .line 698
    :pswitch_27
    new-instance v2, Lcom/google/android/gms/internal/ads/Z0;

    .line 699
    .line 700
    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/ads/Z0;-><init>(Landroid/os/Parcel;)V

    .line 701
    .line 702
    .line 703
    return-object v2

    .line 704
    :pswitch_28
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    .line 705
    .line 706
    .line 707
    move-result-wide v5

    .line 708
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    .line 709
    .line 710
    .line 711
    move-result-wide v7

    .line 712
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 713
    .line 714
    .line 715
    move-result v4

    .line 716
    new-instance v1, Lcom/google/android/gms/internal/ads/X0;

    .line 717
    .line 718
    move-object v3, v1

    .line 719
    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/internal/ads/X0;-><init>(IJJ)V

    .line 720
    .line 721
    .line 722
    return-object v1

    .line 723
    :pswitch_29
    new-instance v2, Ljava/util/ArrayList;

    .line 724
    .line 725
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 726
    .line 727
    .line 728
    const-class v3, Lcom/google/android/gms/internal/ads/X0;

    .line 729
    .line 730
    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 731
    .line 732
    .line 733
    move-result-object v3

    .line 734
    invoke-virtual {v1, v2, v3}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 735
    .line 736
    .line 737
    new-instance v1, Lcom/google/android/gms/internal/ads/Y0;

    .line 738
    .line 739
    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/Y0;-><init>(Ljava/util/ArrayList;)V

    .line 740
    .line 741
    .line 742
    return-object v1

    .line 743
    :pswitch_2a
    new-instance v2, Lcom/google/android/gms/internal/ads/W0;

    .line 744
    .line 745
    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/ads/W0;-><init>(Landroid/os/Parcel;)V

    .line 746
    .line 747
    .line 748
    return-object v2

    .line 749
    :pswitch_2b
    new-instance v2, Lcom/google/android/gms/internal/ads/V0;

    .line 750
    .line 751
    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/ads/V0;-><init>(Landroid/os/Parcel;)V

    .line 752
    .line 753
    .line 754
    return-object v2

    .line 755
    :pswitch_2c
    new-instance v2, Lcom/google/android/gms/internal/ads/U0;

    .line 756
    .line 757
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 758
    .line 759
    .line 760
    move-result-object v3

    .line 761
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 762
    .line 763
    .line 764
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 765
    .line 766
    .line 767
    move-result-object v4

    .line 768
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    .line 769
    .line 770
    .line 771
    move-result-object v1

    .line 772
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 773
    .line 774
    .line 775
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/uA;->u([Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/PA;

    .line 776
    .line 777
    .line 778
    move-result-object v1

    .line 779
    invoke-direct {v2, v3, v4, v1}, Lcom/google/android/gms/internal/ads/U0;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/PA;)V

    .line 780
    .line 781
    .line 782
    return-object v2

    .line 783
    :pswitch_2d
    new-instance v2, Lcom/google/android/gms/internal/ads/T0;

    .line 784
    .line 785
    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/ads/T0;-><init>(Landroid/os/Parcel;)V

    .line 786
    .line 787
    .line 788
    return-object v2

    .line 789
    :pswitch_2e
    new-instance v2, Lcom/google/android/gms/internal/ads/S0;

    .line 790
    .line 791
    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/ads/S0;-><init>(Landroid/os/Parcel;)V

    .line 792
    .line 793
    .line 794
    return-object v2

    .line 795
    :pswitch_2f
    new-instance v2, Lcom/google/android/gms/internal/ads/R0;

    .line 796
    .line 797
    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/ads/R0;-><init>(Landroid/os/Parcel;)V

    .line 798
    .line 799
    .line 800
    return-object v2

    .line 801
    :pswitch_30
    new-instance v2, Lcom/google/android/gms/internal/ads/O0;

    .line 802
    .line 803
    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/ads/O0;-><init>(Landroid/os/Parcel;)V

    .line 804
    .line 805
    .line 806
    return-object v2

    .line 807
    :pswitch_31
    new-instance v2, Lcom/google/android/gms/internal/ads/N0;

    .line 808
    .line 809
    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/ads/N0;-><init>(Landroid/os/Parcel;)V

    .line 810
    .line 811
    .line 812
    return-object v2

    .line 813
    :pswitch_32
    new-instance v2, Lcom/google/android/gms/internal/ads/M0;

    .line 814
    .line 815
    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/ads/M0;-><init>(Landroid/os/Parcel;)V

    .line 816
    .line 817
    .line 818
    return-object v2

    .line 819
    :pswitch_33
    new-instance v2, Lcom/google/android/gms/internal/ads/L0;

    .line 820
    .line 821
    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/ads/L0;-><init>(Landroid/os/Parcel;)V

    .line 822
    .line 823
    .line 824
    return-object v2

    .line 825
    :pswitch_34
    new-instance v2, Lcom/google/android/gms/internal/ads/K0;

    .line 826
    .line 827
    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/ads/K0;-><init>(Landroid/os/Parcel;)V

    .line 828
    .line 829
    .line 830
    return-object v2

    .line 831
    :pswitch_35
    new-instance v2, Lcom/google/android/gms/internal/ads/J0;

    .line 832
    .line 833
    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/ads/J0;-><init>(Landroid/os/Parcel;)V

    .line 834
    .line 835
    .line 836
    return-object v2

    .line 837
    :pswitch_36
    new-instance v2, Lcom/google/android/gms/internal/ads/I0;

    .line 838
    .line 839
    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/ads/I0;-><init>(Landroid/os/Parcel;)V

    .line 840
    .line 841
    .line 842
    return-object v2

    .line 843
    :pswitch_37
    new-instance v2, Lcom/google/android/gms/internal/ads/H0;

    .line 844
    .line 845
    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/ads/H0;-><init>(Landroid/os/Parcel;)V

    .line 846
    .line 847
    .line 848
    return-object v2

    .line 849
    :pswitch_38
    new-instance v2, Lcom/google/android/gms/internal/ads/G0;

    .line 850
    .line 851
    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/ads/G0;-><init>(Landroid/os/Parcel;)V

    .line 852
    .line 853
    .line 854
    return-object v2

    .line 855
    :pswitch_39
    new-instance v2, Lcom/google/android/gms/internal/ads/F0;

    .line 856
    .line 857
    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/ads/F0;-><init>(Landroid/os/Parcel;)V

    .line 858
    .line 859
    .line 860
    return-object v2

    .line 861
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_39
        :pswitch_38
        :pswitch_37
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
        :pswitch_1a
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 862
    .line 863
    .line 864
    .line 865
    .line 866
    .line 867
    .line 868
    .line 869
    .line 870
    .line 871
    .line 872
    .line 873
    .line 874
    .line 875
    .line 876
    .line 877
    .line 878
    .line 879
    .line 880
    .line 881
    .line 882
    .line 883
    .line 884
    .line 885
    .line 886
    .line 887
    .line 888
    .line 889
    .line 890
    .line 891
    .line 892
    .line 893
    .line 894
    .line 895
    .line 896
    .line 897
    .line 898
    .line 899
    .line 900
    .line 901
    .line 902
    .line 903
    .line 904
    .line 905
    .line 906
    .line 907
    .line 908
    .line 909
    .line 910
    .line 911
    .line 912
    .line 913
    .line 914
    .line 915
    .line 916
    .line 917
    .line 918
    .line 919
    .line 920
    .line 921
    .line 922
    .line 923
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    .line 924
    .line 925
    .line 926
    .line 927
    .line 928
    .line 929
    .line 930
    .line 931
    .line 932
    .line 933
    .line 934
    .line 935
    .line 936
    .line 937
    .line 938
    .line 939
    .line 940
    .line 941
    .line 942
    .line 943
    :pswitch_data_2
    .packed-switch 0x1
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
    .end packed-switch

    .line 944
    .line 945
    .line 946
    .line 947
    .line 948
    .line 949
    .line 950
    .line 951
    .line 952
    .line 953
    .line 954
    .line 955
    .line 956
    .line 957
    .line 958
    .line 959
    .line 960
    .line 961
    .line 962
    .line 963
    .line 964
    .line 965
    .line 966
    .line 967
    .line 968
    .line 969
    :pswitch_data_3
    .packed-switch 0x2
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
    .end packed-switch
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/E0;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-array p1, p1, [Lcom/google/android/gms/internal/ads/Ob;

    .line 7
    .line 8
    return-object p1

    .line 9
    :pswitch_0
    new-array p1, p1, [Lcom/google/android/gms/internal/ads/la;

    .line 10
    .line 11
    return-object p1

    .line 12
    :pswitch_1
    new-array p1, p1, [Lcom/google/android/gms/internal/ads/ka;

    .line 13
    .line 14
    return-object p1

    .line 15
    :pswitch_2
    new-array p1, p1, [Lcom/google/android/gms/internal/ads/fa;

    .line 16
    .line 17
    return-object p1

    .line 18
    :pswitch_3
    new-array p1, p1, [Lcom/google/android/gms/internal/ads/ba;

    .line 19
    .line 20
    return-object p1

    .line 21
    :pswitch_4
    new-array p1, p1, [Lcom/google/android/gms/internal/ads/aa;

    .line 22
    .line 23
    return-object p1

    .line 24
    :pswitch_5
    new-array p1, p1, [Lcom/google/android/gms/internal/ads/Q9;

    .line 25
    .line 26
    return-object p1

    .line 27
    :pswitch_6
    new-array p1, p1, [Lcom/google/android/gms/internal/ads/M8;

    .line 28
    .line 29
    return-object p1

    .line 30
    :pswitch_7
    new-array p1, p1, [Lcom/google/android/gms/internal/ads/o6;

    .line 31
    .line 32
    return-object p1

    .line 33
    :pswitch_8
    new-array p1, p1, [Lcom/google/android/gms/internal/ads/m6;

    .line 34
    .line 35
    return-object p1

    .line 36
    :pswitch_9
    new-array p1, p1, [Lcom/google/android/gms/internal/ads/a1;

    .line 37
    .line 38
    return-object p1

    .line 39
    :pswitch_a
    new-array p1, p1, [Lcom/google/android/gms/internal/ads/Z0;

    .line 40
    .line 41
    return-object p1

    .line 42
    :pswitch_b
    new-array p1, p1, [Lcom/google/android/gms/internal/ads/X0;

    .line 43
    .line 44
    return-object p1

    .line 45
    :pswitch_c
    new-array p1, p1, [Lcom/google/android/gms/internal/ads/Y0;

    .line 46
    .line 47
    return-object p1

    .line 48
    :pswitch_d
    new-array p1, p1, [Lcom/google/android/gms/internal/ads/W0;

    .line 49
    .line 50
    return-object p1

    .line 51
    :pswitch_e
    new-array p1, p1, [Lcom/google/android/gms/internal/ads/V0;

    .line 52
    .line 53
    return-object p1

    .line 54
    :pswitch_f
    new-array p1, p1, [Lcom/google/android/gms/internal/ads/U0;

    .line 55
    .line 56
    return-object p1

    .line 57
    :pswitch_10
    new-array p1, p1, [Lcom/google/android/gms/internal/ads/T0;

    .line 58
    .line 59
    return-object p1

    .line 60
    :pswitch_11
    new-array p1, p1, [Lcom/google/android/gms/internal/ads/S0;

    .line 61
    .line 62
    return-object p1

    .line 63
    :pswitch_12
    new-array p1, p1, [Lcom/google/android/gms/internal/ads/R0;

    .line 64
    .line 65
    return-object p1

    .line 66
    :pswitch_13
    new-array p1, p1, [Lcom/google/android/gms/internal/ads/O0;

    .line 67
    .line 68
    return-object p1

    .line 69
    :pswitch_14
    new-array p1, p1, [Lcom/google/android/gms/internal/ads/N0;

    .line 70
    .line 71
    return-object p1

    .line 72
    :pswitch_15
    new-array p1, p1, [Lcom/google/android/gms/internal/ads/M0;

    .line 73
    .line 74
    return-object p1

    .line 75
    :pswitch_16
    new-array p1, p1, [Lcom/google/android/gms/internal/ads/L0;

    .line 76
    .line 77
    return-object p1

    .line 78
    :pswitch_17
    new-array p1, p1, [Lcom/google/android/gms/internal/ads/K0;

    .line 79
    .line 80
    return-object p1

    .line 81
    :pswitch_18
    new-array p1, p1, [Lcom/google/android/gms/internal/ads/J0;

    .line 82
    .line 83
    return-object p1

    .line 84
    :pswitch_19
    new-array p1, p1, [Lcom/google/android/gms/internal/ads/I0;

    .line 85
    .line 86
    return-object p1

    .line 87
    :pswitch_1a
    new-array p1, p1, [Lcom/google/android/gms/internal/ads/H0;

    .line 88
    .line 89
    return-object p1

    .line 90
    :pswitch_1b
    new-array p1, p1, [Lcom/google/android/gms/internal/ads/G0;

    .line 91
    .line 92
    return-object p1

    .line 93
    :pswitch_1c
    new-array p1, p1, [Lcom/google/android/gms/internal/ads/F0;

    .line 94
    .line 95
    return-object p1

    .line 96
    nop

    .line 97
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
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
