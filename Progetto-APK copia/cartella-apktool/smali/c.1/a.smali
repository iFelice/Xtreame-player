.class public final Lc/a;
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

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lc/a;->a:I

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 38

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget v2, v0, Lc/a;->a:I

    .line 6
    .line 7
    const/4 v3, 0x4

    .line 8
    const/4 v4, 0x3

    .line 9
    const/4 v5, 0x2

    .line 10
    const/4 v6, 0x0

    .line 11
    const/4 v7, 0x1

    .line 12
    const/4 v8, 0x0

    .line 13
    packed-switch v2, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    invoke-static/range {p1 .. p1}, Lf/b;->H(Landroid/os/Parcel;)I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    move-object v10, v6

    .line 21
    move-object/from16 v16, v10

    .line 22
    .line 23
    const/4 v11, 0x0

    .line 24
    const/4 v12, 0x0

    .line 25
    const/4 v13, 0x0

    .line 26
    const/4 v14, 0x0

    .line 27
    const/4 v15, 0x0

    .line 28
    const/16 v17, 0x0

    .line 29
    .line 30
    const/16 v18, 0x0

    .line 31
    .line 32
    const/16 v19, 0x0

    .line 33
    .line 34
    const/16 v20, 0x0

    .line 35
    .line 36
    const/16 v21, 0x0

    .line 37
    .line 38
    const/16 v22, 0x0

    .line 39
    .line 40
    const/16 v23, 0x0

    .line 41
    .line 42
    const/16 v24, 0x0

    .line 43
    .line 44
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    if-ge v3, v2, :cond_0

    .line 49
    .line 50
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    int-to-char v4, v3

    .line 55
    packed-switch v4, :pswitch_data_1

    .line 56
    .line 57
    .line 58
    invoke-static {v3, v1}, Lf/b;->G(ILandroid/os/Parcel;)V

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :pswitch_0
    invoke-static {v3, v1}, Lf/b;->y(ILandroid/os/Parcel;)Z

    .line 63
    .line 64
    .line 65
    move-result v24

    .line 66
    goto :goto_0

    .line 67
    :pswitch_1
    invoke-static {v3, v1}, Lf/b;->y(ILandroid/os/Parcel;)Z

    .line 68
    .line 69
    .line 70
    move-result v23

    .line 71
    goto :goto_0

    .line 72
    :pswitch_2
    invoke-static {v3, v1}, Lf/b;->y(ILandroid/os/Parcel;)Z

    .line 73
    .line 74
    .line 75
    move-result v22

    .line 76
    goto :goto_0

    .line 77
    :pswitch_3
    invoke-static {v3, v1}, Lf/b;->y(ILandroid/os/Parcel;)Z

    .line 78
    .line 79
    .line 80
    move-result v21

    .line 81
    goto :goto_0

    .line 82
    :pswitch_4
    invoke-static {v3, v1}, Lf/b;->y(ILandroid/os/Parcel;)Z

    .line 83
    .line 84
    .line 85
    move-result v20

    .line 86
    goto :goto_0

    .line 87
    :pswitch_5
    invoke-static {v3, v1}, Lf/b;->y(ILandroid/os/Parcel;)Z

    .line 88
    .line 89
    .line 90
    move-result v19

    .line 91
    goto :goto_0

    .line 92
    :pswitch_6
    invoke-static {v3, v1}, Lf/b;->y(ILandroid/os/Parcel;)Z

    .line 93
    .line 94
    .line 95
    move-result v18

    .line 96
    goto :goto_0

    .line 97
    :pswitch_7
    invoke-static {v3, v1}, Lf/b;->y(ILandroid/os/Parcel;)Z

    .line 98
    .line 99
    .line 100
    move-result v17

    .line 101
    goto :goto_0

    .line 102
    :pswitch_8
    sget-object v4, Ll3/d1;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 103
    .line 104
    invoke-static {v1, v3, v4}, Lf/b;->q(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v3

    .line 108
    move-object/from16 v16, v3

    .line 109
    .line 110
    check-cast v16, [Ll3/d1;

    .line 111
    .line 112
    goto :goto_0

    .line 113
    :pswitch_9
    invoke-static {v3, v1}, Lf/b;->D(ILandroid/os/Parcel;)I

    .line 114
    .line 115
    .line 116
    move-result v15

    .line 117
    goto :goto_0

    .line 118
    :pswitch_a
    invoke-static {v3, v1}, Lf/b;->D(ILandroid/os/Parcel;)I

    .line 119
    .line 120
    .line 121
    move-result v14

    .line 122
    goto :goto_0

    .line 123
    :pswitch_b
    invoke-static {v3, v1}, Lf/b;->y(ILandroid/os/Parcel;)Z

    .line 124
    .line 125
    .line 126
    move-result v13

    .line 127
    goto :goto_0

    .line 128
    :pswitch_c
    invoke-static {v3, v1}, Lf/b;->D(ILandroid/os/Parcel;)I

    .line 129
    .line 130
    .line 131
    move-result v12

    .line 132
    goto :goto_0

    .line 133
    :pswitch_d
    invoke-static {v3, v1}, Lf/b;->D(ILandroid/os/Parcel;)I

    .line 134
    .line 135
    .line 136
    move-result v11

    .line 137
    goto :goto_0

    .line 138
    :pswitch_e
    invoke-static {v3, v1}, Lf/b;->n(ILandroid/os/Parcel;)Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v10

    .line 142
    goto :goto_0

    .line 143
    :cond_0
    invoke-static {v2, v1}, Lf/b;->t(ILandroid/os/Parcel;)V

    .line 144
    .line 145
    .line 146
    new-instance v1, Ll3/d1;

    .line 147
    .line 148
    move-object v9, v1

    .line 149
    invoke-direct/range {v9 .. v24}, Ll3/d1;-><init>(Ljava/lang/String;IIZII[Ll3/d1;ZZZZZZZZ)V

    .line 150
    .line 151
    .line 152
    return-object v1

    .line 153
    :pswitch_f
    invoke-static/range {p1 .. p1}, Lf/b;->H(Landroid/os/Parcel;)I

    .line 154
    .line 155
    .line 156
    move-result v2

    .line 157
    const-wide/16 v3, 0x0

    .line 158
    .line 159
    move-wide v11, v3

    .line 160
    move-wide/from16 v36, v11

    .line 161
    .line 162
    move-object v13, v6

    .line 163
    move-object v15, v13

    .line 164
    move-object/from16 v19, v15

    .line 165
    .line 166
    move-object/from16 v20, v19

    .line 167
    .line 168
    move-object/from16 v21, v20

    .line 169
    .line 170
    move-object/from16 v22, v21

    .line 171
    .line 172
    move-object/from16 v23, v22

    .line 173
    .line 174
    move-object/from16 v24, v23

    .line 175
    .line 176
    move-object/from16 v25, v24

    .line 177
    .line 178
    move-object/from16 v26, v25

    .line 179
    .line 180
    move-object/from16 v27, v26

    .line 181
    .line 182
    move-object/from16 v29, v27

    .line 183
    .line 184
    move-object/from16 v31, v29

    .line 185
    .line 186
    move-object/from16 v32, v31

    .line 187
    .line 188
    move-object/from16 v34, v32

    .line 189
    .line 190
    const/4 v10, 0x0

    .line 191
    const/4 v14, 0x0

    .line 192
    const/16 v16, 0x0

    .line 193
    .line 194
    const/16 v17, 0x0

    .line 195
    .line 196
    const/16 v18, 0x0

    .line 197
    .line 198
    const/16 v28, 0x0

    .line 199
    .line 200
    const/16 v30, 0x0

    .line 201
    .line 202
    const/16 v33, 0x0

    .line 203
    .line 204
    const/16 v35, 0x0

    .line 205
    .line 206
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    .line 207
    .line 208
    .line 209
    move-result v3

    .line 210
    if-ge v3, v2, :cond_1

    .line 211
    .line 212
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 213
    .line 214
    .line 215
    move-result v3

    .line 216
    int-to-char v4, v3

    .line 217
    packed-switch v4, :pswitch_data_2

    .line 218
    .line 219
    .line 220
    invoke-static {v3, v1}, Lf/b;->G(ILandroid/os/Parcel;)V

    .line 221
    .line 222
    .line 223
    goto :goto_1

    .line 224
    :pswitch_10
    invoke-static {v3, v1}, Lf/b;->E(ILandroid/os/Parcel;)J

    .line 225
    .line 226
    .line 227
    move-result-wide v3

    .line 228
    move-wide/from16 v36, v3

    .line 229
    .line 230
    goto :goto_1

    .line 231
    :pswitch_11
    invoke-static {v3, v1}, Lf/b;->D(ILandroid/os/Parcel;)I

    .line 232
    .line 233
    .line 234
    move-result v3

    .line 235
    move/from16 v35, v3

    .line 236
    .line 237
    goto :goto_1

    .line 238
    :pswitch_12
    invoke-static {v3, v1}, Lf/b;->n(ILandroid/os/Parcel;)Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v3

    .line 242
    move-object/from16 v34, v3

    .line 243
    .line 244
    goto :goto_1

    .line 245
    :pswitch_13
    invoke-static {v3, v1}, Lf/b;->D(ILandroid/os/Parcel;)I

    .line 246
    .line 247
    .line 248
    move-result v3

    .line 249
    move/from16 v33, v3

    .line 250
    .line 251
    goto :goto_1

    .line 252
    :pswitch_14
    invoke-static {v3, v1}, Lf/b;->p(ILandroid/os/Parcel;)Ljava/util/ArrayList;

    .line 253
    .line 254
    .line 255
    move-result-object v3

    .line 256
    move-object/from16 v32, v3

    .line 257
    .line 258
    goto :goto_1

    .line 259
    :pswitch_15
    invoke-static {v3, v1}, Lf/b;->n(ILandroid/os/Parcel;)Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object v3

    .line 263
    move-object/from16 v31, v3

    .line 264
    .line 265
    goto :goto_1

    .line 266
    :pswitch_16
    invoke-static {v3, v1}, Lf/b;->D(ILandroid/os/Parcel;)I

    .line 267
    .line 268
    .line 269
    move-result v3

    .line 270
    move/from16 v30, v3

    .line 271
    .line 272
    goto :goto_1

    .line 273
    :pswitch_17
    sget-object v4, Ll3/L;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 274
    .line 275
    invoke-static {v1, v3, v4}, Lf/b;->m(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 276
    .line 277
    .line 278
    move-result-object v3

    .line 279
    check-cast v3, Ll3/L;

    .line 280
    .line 281
    move-object/from16 v29, v3

    .line 282
    .line 283
    goto :goto_1

    .line 284
    :pswitch_18
    invoke-static {v3, v1}, Lf/b;->y(ILandroid/os/Parcel;)Z

    .line 285
    .line 286
    .line 287
    move-result v3

    .line 288
    move/from16 v28, v3

    .line 289
    .line 290
    goto :goto_1

    .line 291
    :pswitch_19
    invoke-static {v3, v1}, Lf/b;->n(ILandroid/os/Parcel;)Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object v3

    .line 295
    move-object/from16 v27, v3

    .line 296
    .line 297
    goto :goto_1

    .line 298
    :pswitch_1a
    invoke-static {v3, v1}, Lf/b;->n(ILandroid/os/Parcel;)Ljava/lang/String;

    .line 299
    .line 300
    .line 301
    move-result-object v3

    .line 302
    move-object/from16 v26, v3

    .line 303
    .line 304
    goto :goto_1

    .line 305
    :pswitch_1b
    invoke-static {v3, v1}, Lf/b;->p(ILandroid/os/Parcel;)Ljava/util/ArrayList;

    .line 306
    .line 307
    .line 308
    move-result-object v3

    .line 309
    move-object/from16 v25, v3

    .line 310
    .line 311
    goto :goto_1

    .line 312
    :pswitch_1c
    invoke-static {v3, v1}, Lf/b;->g(ILandroid/os/Parcel;)Landroid/os/Bundle;

    .line 313
    .line 314
    .line 315
    move-result-object v3

    .line 316
    move-object/from16 v24, v3

    .line 317
    .line 318
    goto :goto_1

    .line 319
    :pswitch_1d
    invoke-static {v3, v1}, Lf/b;->g(ILandroid/os/Parcel;)Landroid/os/Bundle;

    .line 320
    .line 321
    .line 322
    move-result-object v3

    .line 323
    move-object/from16 v23, v3

    .line 324
    .line 325
    goto :goto_1

    .line 326
    :pswitch_1e
    invoke-static {v3, v1}, Lf/b;->n(ILandroid/os/Parcel;)Ljava/lang/String;

    .line 327
    .line 328
    .line 329
    move-result-object v3

    .line 330
    move-object/from16 v22, v3

    .line 331
    .line 332
    goto :goto_1

    .line 333
    :pswitch_1f
    sget-object v4, Landroid/location/Location;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 334
    .line 335
    invoke-static {v1, v3, v4}, Lf/b;->m(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 336
    .line 337
    .line 338
    move-result-object v3

    .line 339
    check-cast v3, Landroid/location/Location;

    .line 340
    .line 341
    move-object/from16 v21, v3

    .line 342
    .line 343
    goto/16 :goto_1

    .line 344
    .line 345
    :pswitch_20
    sget-object v4, Ll3/V0;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 346
    .line 347
    invoke-static {v1, v3, v4}, Lf/b;->m(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 348
    .line 349
    .line 350
    move-result-object v3

    .line 351
    check-cast v3, Ll3/V0;

    .line 352
    .line 353
    move-object/from16 v20, v3

    .line 354
    .line 355
    goto/16 :goto_1

    .line 356
    .line 357
    :pswitch_21
    invoke-static {v3, v1}, Lf/b;->n(ILandroid/os/Parcel;)Ljava/lang/String;

    .line 358
    .line 359
    .line 360
    move-result-object v3

    .line 361
    move-object/from16 v19, v3

    .line 362
    .line 363
    goto/16 :goto_1

    .line 364
    .line 365
    :pswitch_22
    invoke-static {v3, v1}, Lf/b;->y(ILandroid/os/Parcel;)Z

    .line 366
    .line 367
    .line 368
    move-result v3

    .line 369
    move/from16 v18, v3

    .line 370
    .line 371
    goto/16 :goto_1

    .line 372
    .line 373
    :pswitch_23
    invoke-static {v3, v1}, Lf/b;->D(ILandroid/os/Parcel;)I

    .line 374
    .line 375
    .line 376
    move-result v3

    .line 377
    move/from16 v17, v3

    .line 378
    .line 379
    goto/16 :goto_1

    .line 380
    .line 381
    :pswitch_24
    invoke-static {v3, v1}, Lf/b;->y(ILandroid/os/Parcel;)Z

    .line 382
    .line 383
    .line 384
    move-result v3

    .line 385
    move/from16 v16, v3

    .line 386
    .line 387
    goto/16 :goto_1

    .line 388
    .line 389
    :pswitch_25
    invoke-static {v3, v1}, Lf/b;->p(ILandroid/os/Parcel;)Ljava/util/ArrayList;

    .line 390
    .line 391
    .line 392
    move-result-object v3

    .line 393
    move-object v15, v3

    .line 394
    goto/16 :goto_1

    .line 395
    .line 396
    :pswitch_26
    invoke-static {v3, v1}, Lf/b;->D(ILandroid/os/Parcel;)I

    .line 397
    .line 398
    .line 399
    move-result v3

    .line 400
    move v14, v3

    .line 401
    goto/16 :goto_1

    .line 402
    .line 403
    :pswitch_27
    invoke-static {v3, v1}, Lf/b;->g(ILandroid/os/Parcel;)Landroid/os/Bundle;

    .line 404
    .line 405
    .line 406
    move-result-object v3

    .line 407
    move-object v13, v3

    .line 408
    goto/16 :goto_1

    .line 409
    .line 410
    :pswitch_28
    invoke-static {v3, v1}, Lf/b;->E(ILandroid/os/Parcel;)J

    .line 411
    .line 412
    .line 413
    move-result-wide v3

    .line 414
    move-wide v11, v3

    .line 415
    goto/16 :goto_1

    .line 416
    .line 417
    :pswitch_29
    invoke-static {v3, v1}, Lf/b;->D(ILandroid/os/Parcel;)I

    .line 418
    .line 419
    .line 420
    move-result v3

    .line 421
    move v10, v3

    .line 422
    goto/16 :goto_1

    .line 423
    .line 424
    :cond_1
    invoke-static {v2, v1}, Lf/b;->t(ILandroid/os/Parcel;)V

    .line 425
    .line 426
    .line 427
    new-instance v1, Ll3/b1;

    .line 428
    .line 429
    move-object v9, v1

    .line 430
    invoke-direct/range {v9 .. v37}, Ll3/b1;-><init>(IJLandroid/os/Bundle;ILjava/util/List;ZIZLjava/lang/String;Ll3/V0;Landroid/location/Location;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLl3/L;ILjava/lang/String;Ljava/util/List;ILjava/lang/String;IJ)V

    .line 431
    .line 432
    .line 433
    return-object v1

    .line 434
    :pswitch_2a
    invoke-static/range {p1 .. p1}, Lf/b;->H(Landroid/os/Parcel;)I

    .line 435
    .line 436
    .line 437
    move-result v2

    .line 438
    const/4 v6, 0x0

    .line 439
    const/4 v7, 0x0

    .line 440
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    .line 441
    .line 442
    .line 443
    move-result v9

    .line 444
    if-ge v9, v2, :cond_5

    .line 445
    .line 446
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 447
    .line 448
    .line 449
    move-result v9

    .line 450
    int-to-char v10, v9

    .line 451
    if-eq v10, v5, :cond_4

    .line 452
    .line 453
    if-eq v10, v4, :cond_3

    .line 454
    .line 455
    if-eq v10, v3, :cond_2

    .line 456
    .line 457
    invoke-static {v9, v1}, Lf/b;->G(ILandroid/os/Parcel;)V

    .line 458
    .line 459
    .line 460
    goto :goto_2

    .line 461
    :cond_2
    invoke-static {v9, v1}, Lf/b;->y(ILandroid/os/Parcel;)Z

    .line 462
    .line 463
    .line 464
    move-result v7

    .line 465
    goto :goto_2

    .line 466
    :cond_3
    invoke-static {v9, v1}, Lf/b;->y(ILandroid/os/Parcel;)Z

    .line 467
    .line 468
    .line 469
    move-result v6

    .line 470
    goto :goto_2

    .line 471
    :cond_4
    invoke-static {v9, v1}, Lf/b;->y(ILandroid/os/Parcel;)Z

    .line 472
    .line 473
    .line 474
    move-result v8

    .line 475
    goto :goto_2

    .line 476
    :cond_5
    invoke-static {v2, v1}, Lf/b;->t(ILandroid/os/Parcel;)V

    .line 477
    .line 478
    .line 479
    new-instance v1, Ll3/Y0;

    .line 480
    .line 481
    invoke-direct {v1, v8, v6, v7}, Ll3/Y0;-><init>(ZZZ)V

    .line 482
    .line 483
    .line 484
    return-object v1

    .line 485
    :pswitch_2b
    invoke-static/range {p1 .. p1}, Lf/b;->H(Landroid/os/Parcel;)I

    .line 486
    .line 487
    .line 488
    move-result v2

    .line 489
    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    .line 490
    .line 491
    .line 492
    move-result v3

    .line 493
    if-ge v3, v2, :cond_7

    .line 494
    .line 495
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 496
    .line 497
    .line 498
    move-result v3

    .line 499
    int-to-char v4, v3

    .line 500
    const/16 v5, 0xf

    .line 501
    .line 502
    if-eq v4, v5, :cond_6

    .line 503
    .line 504
    invoke-static {v3, v1}, Lf/b;->G(ILandroid/os/Parcel;)V

    .line 505
    .line 506
    .line 507
    goto :goto_3

    .line 508
    :cond_6
    invoke-static {v3, v1}, Lf/b;->n(ILandroid/os/Parcel;)Ljava/lang/String;

    .line 509
    .line 510
    .line 511
    move-result-object v6

    .line 512
    goto :goto_3

    .line 513
    :cond_7
    invoke-static {v2, v1}, Lf/b;->t(ILandroid/os/Parcel;)V

    .line 514
    .line 515
    .line 516
    new-instance v1, Ll3/V0;

    .line 517
    .line 518
    invoke-direct {v1, v6}, Ll3/V0;-><init>(Ljava/lang/String;)V

    .line 519
    .line 520
    .line 521
    return-object v1

    .line 522
    :pswitch_2c
    invoke-static/range {p1 .. p1}, Lf/b;->H(Landroid/os/Parcel;)I

    .line 523
    .line 524
    .line 525
    move-result v2

    .line 526
    const/4 v3, 0x0

    .line 527
    :goto_4
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    .line 528
    .line 529
    .line 530
    move-result v4

    .line 531
    if-ge v4, v2, :cond_a

    .line 532
    .line 533
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 534
    .line 535
    .line 536
    move-result v4

    .line 537
    int-to-char v6, v4

    .line 538
    if-eq v6, v7, :cond_9

    .line 539
    .line 540
    if-eq v6, v5, :cond_8

    .line 541
    .line 542
    invoke-static {v4, v1}, Lf/b;->G(ILandroid/os/Parcel;)V

    .line 543
    .line 544
    .line 545
    goto :goto_4

    .line 546
    :cond_8
    invoke-static {v4, v1}, Lf/b;->D(ILandroid/os/Parcel;)I

    .line 547
    .line 548
    .line 549
    move-result v3

    .line 550
    goto :goto_4

    .line 551
    :cond_9
    invoke-static {v4, v1}, Lf/b;->D(ILandroid/os/Parcel;)I

    .line 552
    .line 553
    .line 554
    move-result v8

    .line 555
    goto :goto_4

    .line 556
    :cond_a
    invoke-static {v2, v1}, Lf/b;->t(ILandroid/os/Parcel;)V

    .line 557
    .line 558
    .line 559
    new-instance v1, Ll3/U0;

    .line 560
    .line 561
    invoke-direct {v1, v8, v3}, Ll3/U0;-><init>(II)V

    .line 562
    .line 563
    .line 564
    return-object v1

    .line 565
    :pswitch_2d
    invoke-static/range {p1 .. p1}, Lf/b;->H(Landroid/os/Parcel;)I

    .line 566
    .line 567
    .line 568
    move-result v2

    .line 569
    move-object v8, v6

    .line 570
    const/4 v9, 0x0

    .line 571
    const/4 v10, 0x0

    .line 572
    :goto_5
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    .line 573
    .line 574
    .line 575
    move-result v11

    .line 576
    if-ge v11, v2, :cond_f

    .line 577
    .line 578
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 579
    .line 580
    .line 581
    move-result v11

    .line 582
    int-to-char v12, v11

    .line 583
    if-eq v12, v7, :cond_e

    .line 584
    .line 585
    if-eq v12, v5, :cond_d

    .line 586
    .line 587
    if-eq v12, v4, :cond_c

    .line 588
    .line 589
    if-eq v12, v3, :cond_b

    .line 590
    .line 591
    invoke-static {v11, v1}, Lf/b;->G(ILandroid/os/Parcel;)V

    .line 592
    .line 593
    .line 594
    goto :goto_5

    .line 595
    :cond_b
    invoke-static {v11, v1}, Lf/b;->D(ILandroid/os/Parcel;)I

    .line 596
    .line 597
    .line 598
    move-result v10

    .line 599
    goto :goto_5

    .line 600
    :cond_c
    sget-object v8, Ll3/b1;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 601
    .line 602
    invoke-static {v1, v11, v8}, Lf/b;->m(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 603
    .line 604
    .line 605
    move-result-object v8

    .line 606
    check-cast v8, Ll3/b1;

    .line 607
    .line 608
    goto :goto_5

    .line 609
    :cond_d
    invoke-static {v11, v1}, Lf/b;->D(ILandroid/os/Parcel;)I

    .line 610
    .line 611
    .line 612
    move-result v9

    .line 613
    goto :goto_5

    .line 614
    :cond_e
    invoke-static {v11, v1}, Lf/b;->n(ILandroid/os/Parcel;)Ljava/lang/String;

    .line 615
    .line 616
    .line 617
    move-result-object v6

    .line 618
    goto :goto_5

    .line 619
    :cond_f
    invoke-static {v2, v1}, Lf/b;->t(ILandroid/os/Parcel;)V

    .line 620
    .line 621
    .line 622
    new-instance v1, Ll3/T0;

    .line 623
    .line 624
    invoke-direct {v1, v6, v9, v8, v10}, Ll3/T0;-><init>(Ljava/lang/String;ILl3/b1;I)V

    .line 625
    .line 626
    .line 627
    return-object v1

    .line 628
    :pswitch_2e
    invoke-static/range {p1 .. p1}, Lf/b;->H(Landroid/os/Parcel;)I

    .line 629
    .line 630
    .line 631
    move-result v2

    .line 632
    const/4 v3, 0x0

    .line 633
    :goto_6
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    .line 634
    .line 635
    .line 636
    move-result v9

    .line 637
    if-ge v9, v2, :cond_13

    .line 638
    .line 639
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 640
    .line 641
    .line 642
    move-result v9

    .line 643
    int-to-char v10, v9

    .line 644
    if-eq v10, v7, :cond_12

    .line 645
    .line 646
    if-eq v10, v5, :cond_11

    .line 647
    .line 648
    if-eq v10, v4, :cond_10

    .line 649
    .line 650
    invoke-static {v9, v1}, Lf/b;->G(ILandroid/os/Parcel;)V

    .line 651
    .line 652
    .line 653
    goto :goto_6

    .line 654
    :cond_10
    invoke-static {v9, v1}, Lf/b;->n(ILandroid/os/Parcel;)Ljava/lang/String;

    .line 655
    .line 656
    .line 657
    move-result-object v6

    .line 658
    goto :goto_6

    .line 659
    :cond_11
    invoke-static {v9, v1}, Lf/b;->D(ILandroid/os/Parcel;)I

    .line 660
    .line 661
    .line 662
    move-result v3

    .line 663
    goto :goto_6

    .line 664
    :cond_12
    invoke-static {v9, v1}, Lf/b;->D(ILandroid/os/Parcel;)I

    .line 665
    .line 666
    .line 667
    move-result v8

    .line 668
    goto :goto_6

    .line 669
    :cond_13
    invoke-static {v2, v1}, Lf/b;->t(ILandroid/os/Parcel;)V

    .line 670
    .line 671
    .line 672
    new-instance v1, Ll3/L0;

    .line 673
    .line 674
    invoke-direct {v1, v8, v3, v6}, Ll3/L0;-><init>(IILjava/lang/String;)V

    .line 675
    .line 676
    .line 677
    return-object v1

    .line 678
    :pswitch_2f
    invoke-static/range {p1 .. p1}, Lf/b;->H(Landroid/os/Parcel;)I

    .line 679
    .line 680
    .line 681
    move-result v2

    .line 682
    move-object v11, v6

    .line 683
    move-object v12, v11

    .line 684
    move-object v13, v12

    .line 685
    move-object v14, v13

    .line 686
    const/4 v10, 0x0

    .line 687
    :goto_7
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    .line 688
    .line 689
    .line 690
    move-result v6

    .line 691
    if-ge v6, v2, :cond_19

    .line 692
    .line 693
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 694
    .line 695
    .line 696
    move-result v6

    .line 697
    int-to-char v8, v6

    .line 698
    if-eq v8, v7, :cond_18

    .line 699
    .line 700
    if-eq v8, v5, :cond_17

    .line 701
    .line 702
    if-eq v8, v4, :cond_16

    .line 703
    .line 704
    if-eq v8, v3, :cond_15

    .line 705
    .line 706
    const/4 v9, 0x5

    .line 707
    if-eq v8, v9, :cond_14

    .line 708
    .line 709
    invoke-static {v6, v1}, Lf/b;->G(ILandroid/os/Parcel;)V

    .line 710
    .line 711
    .line 712
    goto :goto_7

    .line 713
    :cond_14
    invoke-static {v6, v1}, Lf/b;->C(ILandroid/os/Parcel;)Landroid/os/IBinder;

    .line 714
    .line 715
    .line 716
    move-result-object v14

    .line 717
    goto :goto_7

    .line 718
    :cond_15
    sget-object v8, Ll3/z0;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 719
    .line 720
    invoke-static {v1, v6, v8}, Lf/b;->m(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 721
    .line 722
    .line 723
    move-result-object v6

    .line 724
    move-object v13, v6

    .line 725
    check-cast v13, Ll3/z0;

    .line 726
    .line 727
    goto :goto_7

    .line 728
    :cond_16
    invoke-static {v6, v1}, Lf/b;->n(ILandroid/os/Parcel;)Ljava/lang/String;

    .line 729
    .line 730
    .line 731
    move-result-object v12

    .line 732
    goto :goto_7

    .line 733
    :cond_17
    invoke-static {v6, v1}, Lf/b;->n(ILandroid/os/Parcel;)Ljava/lang/String;

    .line 734
    .line 735
    .line 736
    move-result-object v11

    .line 737
    goto :goto_7

    .line 738
    :cond_18
    invoke-static {v6, v1}, Lf/b;->D(ILandroid/os/Parcel;)I

    .line 739
    .line 740
    .line 741
    move-result v10

    .line 742
    goto :goto_7

    .line 743
    :cond_19
    invoke-static {v2, v1}, Lf/b;->t(ILandroid/os/Parcel;)V

    .line 744
    .line 745
    .line 746
    new-instance v1, Ll3/z0;

    .line 747
    .line 748
    move-object v9, v1

    .line 749
    invoke-direct/range {v9 .. v14}, Ll3/z0;-><init>(ILjava/lang/String;Ljava/lang/String;Ll3/z0;Landroid/os/IBinder;)V

    .line 750
    .line 751
    .line 752
    return-object v1

    .line 753
    :pswitch_30
    invoke-static/range {p1 .. p1}, Lf/b;->H(Landroid/os/Parcel;)I

    .line 754
    .line 755
    .line 756
    move-result v2

    .line 757
    :goto_8
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    .line 758
    .line 759
    .line 760
    move-result v3

    .line 761
    if-ge v3, v2, :cond_1b

    .line 762
    .line 763
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 764
    .line 765
    .line 766
    move-result v3

    .line 767
    int-to-char v4, v3

    .line 768
    if-eq v4, v5, :cond_1a

    .line 769
    .line 770
    invoke-static {v3, v1}, Lf/b;->G(ILandroid/os/Parcel;)V

    .line 771
    .line 772
    .line 773
    goto :goto_8

    .line 774
    :cond_1a
    invoke-static {v3, v1}, Lf/b;->D(ILandroid/os/Parcel;)I

    .line 775
    .line 776
    .line 777
    move-result v8

    .line 778
    goto :goto_8

    .line 779
    :cond_1b
    invoke-static {v2, v1}, Lf/b;->t(ILandroid/os/Parcel;)V

    .line 780
    .line 781
    .line 782
    new-instance v1, Ll3/E0;

    .line 783
    .line 784
    invoke-direct {v1, v8}, Ll3/E0;-><init>(I)V

    .line 785
    .line 786
    .line 787
    return-object v1

    .line 788
    :pswitch_31
    invoke-static/range {p1 .. p1}, Lf/b;->H(Landroid/os/Parcel;)I

    .line 789
    .line 790
    .line 791
    move-result v2

    .line 792
    move-object v3, v6

    .line 793
    :goto_9
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    .line 794
    .line 795
    .line 796
    move-result v4

    .line 797
    if-ge v4, v2, :cond_1e

    .line 798
    .line 799
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 800
    .line 801
    .line 802
    move-result v4

    .line 803
    int-to-char v8, v4

    .line 804
    if-eq v8, v7, :cond_1d

    .line 805
    .line 806
    if-eq v8, v5, :cond_1c

    .line 807
    .line 808
    invoke-static {v4, v1}, Lf/b;->G(ILandroid/os/Parcel;)V

    .line 809
    .line 810
    .line 811
    goto :goto_9

    .line 812
    :cond_1c
    invoke-static {v4, v1}, Lf/b;->n(ILandroid/os/Parcel;)Ljava/lang/String;

    .line 813
    .line 814
    .line 815
    move-result-object v3

    .line 816
    goto :goto_9

    .line 817
    :cond_1d
    invoke-static {v4, v1}, Lf/b;->n(ILandroid/os/Parcel;)Ljava/lang/String;

    .line 818
    .line 819
    .line 820
    move-result-object v6

    .line 821
    goto :goto_9

    .line 822
    :cond_1e
    invoke-static {v2, v1}, Lf/b;->t(ILandroid/os/Parcel;)V

    .line 823
    .line 824
    .line 825
    new-instance v1, Ll3/L;

    .line 826
    .line 827
    invoke-direct {v1, v6, v3}, Ll3/L;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 828
    .line 829
    .line 830
    return-object v1

    .line 831
    :pswitch_32
    invoke-static/range {p1 .. p1}, Lf/b;->H(Landroid/os/Parcel;)I

    .line 832
    .line 833
    .line 834
    move-result v2

    .line 835
    move-object v3, v6

    .line 836
    :goto_a
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    .line 837
    .line 838
    .line 839
    move-result v9

    .line 840
    if-ge v9, v2, :cond_22

    .line 841
    .line 842
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 843
    .line 844
    .line 845
    move-result v9

    .line 846
    int-to-char v10, v9

    .line 847
    if-eq v10, v7, :cond_21

    .line 848
    .line 849
    if-eq v10, v5, :cond_20

    .line 850
    .line 851
    if-eq v10, v4, :cond_1f

    .line 852
    .line 853
    invoke-static {v9, v1}, Lf/b;->G(ILandroid/os/Parcel;)V

    .line 854
    .line 855
    .line 856
    goto :goto_a

    .line 857
    :cond_1f
    invoke-static {v9, v1}, Lf/b;->C(ILandroid/os/Parcel;)Landroid/os/IBinder;

    .line 858
    .line 859
    .line 860
    move-result-object v3

    .line 861
    goto :goto_a

    .line 862
    :cond_20
    invoke-static {v9, v1}, Lf/b;->C(ILandroid/os/Parcel;)Landroid/os/IBinder;

    .line 863
    .line 864
    .line 865
    move-result-object v6

    .line 866
    goto :goto_a

    .line 867
    :cond_21
    invoke-static {v9, v1}, Lf/b;->y(ILandroid/os/Parcel;)Z

    .line 868
    .line 869
    .line 870
    move-result v8

    .line 871
    goto :goto_a

    .line 872
    :cond_22
    invoke-static {v2, v1}, Lf/b;->t(ILandroid/os/Parcel;)V

    .line 873
    .line 874
    .line 875
    new-instance v1, Li3/d;

    .line 876
    .line 877
    invoke-direct {v1, v8, v6, v3}, Li3/d;-><init>(ZLandroid/os/IBinder;Landroid/os/IBinder;)V

    .line 878
    .line 879
    .line 880
    return-object v1

    .line 881
    :pswitch_33
    invoke-static/range {p1 .. p1}, Lf/b;->H(Landroid/os/Parcel;)I

    .line 882
    .line 883
    .line 884
    move-result v2

    .line 885
    :goto_b
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    .line 886
    .line 887
    .line 888
    move-result v3

    .line 889
    if-ge v3, v2, :cond_25

    .line 890
    .line 891
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 892
    .line 893
    .line 894
    move-result v3

    .line 895
    int-to-char v4, v3

    .line 896
    if-eq v4, v7, :cond_24

    .line 897
    .line 898
    if-eq v4, v5, :cond_23

    .line 899
    .line 900
    invoke-static {v3, v1}, Lf/b;->G(ILandroid/os/Parcel;)V

    .line 901
    .line 902
    .line 903
    goto :goto_b

    .line 904
    :cond_23
    invoke-static {v3, v1}, Lf/b;->C(ILandroid/os/Parcel;)Landroid/os/IBinder;

    .line 905
    .line 906
    .line 907
    move-result-object v6

    .line 908
    goto :goto_b

    .line 909
    :cond_24
    invoke-static {v3, v1}, Lf/b;->y(ILandroid/os/Parcel;)Z

    .line 910
    .line 911
    .line 912
    move-result v8

    .line 913
    goto :goto_b

    .line 914
    :cond_25
    invoke-static {v2, v1}, Lf/b;->t(ILandroid/os/Parcel;)V

    .line 915
    .line 916
    .line 917
    new-instance v1, Li3/a;

    .line 918
    .line 919
    invoke-direct {v1, v8, v6}, Li3/a;-><init>(ZLandroid/os/IBinder;)V

    .line 920
    .line 921
    .line 922
    return-object v1

    .line 923
    :pswitch_34
    new-instance v2, Landroidx/versionedparcelable/ParcelImpl;

    .line 924
    .line 925
    invoke-direct {v2, v1}, Landroidx/versionedparcelable/ParcelImpl;-><init>(Landroid/os/Parcel;)V

    .line 926
    .line 927
    .line 928
    return-object v2

    .line 929
    :pswitch_35
    new-instance v2, LO1/k0;

    .line 930
    .line 931
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 932
    .line 933
    .line 934
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 935
    .line 936
    .line 937
    move-result v3

    .line 938
    iput v3, v2, LO1/k0;->G:I

    .line 939
    .line 940
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 941
    .line 942
    .line 943
    move-result v3

    .line 944
    iput v3, v2, LO1/k0;->H:I

    .line 945
    .line 946
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 947
    .line 948
    .line 949
    move-result v3

    .line 950
    iput v3, v2, LO1/k0;->I:I

    .line 951
    .line 952
    if-lez v3, :cond_26

    .line 953
    .line 954
    new-array v3, v3, [I

    .line 955
    .line 956
    iput-object v3, v2, LO1/k0;->J:[I

    .line 957
    .line 958
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readIntArray([I)V

    .line 959
    .line 960
    .line 961
    :cond_26
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 962
    .line 963
    .line 964
    move-result v3

    .line 965
    iput v3, v2, LO1/k0;->K:I

    .line 966
    .line 967
    if-lez v3, :cond_27

    .line 968
    .line 969
    new-array v3, v3, [I

    .line 970
    .line 971
    iput-object v3, v2, LO1/k0;->L:[I

    .line 972
    .line 973
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readIntArray([I)V

    .line 974
    .line 975
    .line 976
    :cond_27
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 977
    .line 978
    .line 979
    move-result v3

    .line 980
    if-ne v3, v7, :cond_28

    .line 981
    .line 982
    const/4 v3, 0x1

    .line 983
    goto :goto_c

    .line 984
    :cond_28
    const/4 v3, 0x0

    .line 985
    :goto_c
    iput-boolean v3, v2, LO1/k0;->N:Z

    .line 986
    .line 987
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 988
    .line 989
    .line 990
    move-result v3

    .line 991
    if-ne v3, v7, :cond_29

    .line 992
    .line 993
    const/4 v3, 0x1

    .line 994
    goto :goto_d

    .line 995
    :cond_29
    const/4 v3, 0x0

    .line 996
    :goto_d
    iput-boolean v3, v2, LO1/k0;->O:Z

    .line 997
    .line 998
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 999
    .line 1000
    .line 1001
    move-result v3

    .line 1002
    if-ne v3, v7, :cond_2a

    .line 1003
    .line 1004
    goto :goto_e

    .line 1005
    :cond_2a
    const/4 v7, 0x0

    .line 1006
    :goto_e
    iput-boolean v7, v2, LO1/k0;->P:Z

    .line 1007
    .line 1008
    const-class v3, LO1/j0;

    .line 1009
    .line 1010
    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 1011
    .line 1012
    .line 1013
    move-result-object v3

    .line 1014
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    .line 1015
    .line 1016
    .line 1017
    move-result-object v1

    .line 1018
    iput-object v1, v2, LO1/k0;->M:Ljava/util/List;

    .line 1019
    .line 1020
    return-object v2

    .line 1021
    :pswitch_36
    new-instance v2, LO1/j0;

    .line 1022
    .line 1023
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 1024
    .line 1025
    .line 1026
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 1027
    .line 1028
    .line 1029
    move-result v3

    .line 1030
    iput v3, v2, LO1/j0;->G:I

    .line 1031
    .line 1032
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 1033
    .line 1034
    .line 1035
    move-result v3

    .line 1036
    iput v3, v2, LO1/j0;->H:I

    .line 1037
    .line 1038
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 1039
    .line 1040
    .line 1041
    move-result v3

    .line 1042
    if-ne v3, v7, :cond_2b

    .line 1043
    .line 1044
    goto :goto_f

    .line 1045
    :cond_2b
    const/4 v7, 0x0

    .line 1046
    :goto_f
    iput-boolean v7, v2, LO1/j0;->J:Z

    .line 1047
    .line 1048
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 1049
    .line 1050
    .line 1051
    move-result v3

    .line 1052
    if-lez v3, :cond_2c

    .line 1053
    .line 1054
    new-array v3, v3, [I

    .line 1055
    .line 1056
    iput-object v3, v2, LO1/j0;->I:[I

    .line 1057
    .line 1058
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readIntArray([I)V

    .line 1059
    .line 1060
    .line 1061
    :cond_2c
    return-object v2

    .line 1062
    :pswitch_37
    new-instance v2, LO1/v;

    .line 1063
    .line 1064
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 1065
    .line 1066
    .line 1067
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 1068
    .line 1069
    .line 1070
    move-result v3

    .line 1071
    iput v3, v2, LO1/v;->G:I

    .line 1072
    .line 1073
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 1074
    .line 1075
    .line 1076
    move-result v3

    .line 1077
    iput v3, v2, LO1/v;->H:I

    .line 1078
    .line 1079
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 1080
    .line 1081
    .line 1082
    move-result v1

    .line 1083
    if-ne v1, v7, :cond_2d

    .line 1084
    .line 1085
    goto :goto_10

    .line 1086
    :cond_2d
    const/4 v7, 0x0

    .line 1087
    :goto_10
    iput-boolean v7, v2, LO1/v;->I:Z

    .line 1088
    .line 1089
    return-object v2

    .line 1090
    :pswitch_38
    new-instance v2, LN0/a;

    .line 1091
    .line 1092
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 1093
    .line 1094
    .line 1095
    move-result v1

    .line 1096
    invoke-direct {v2, v1}, LN0/a;-><init>(I)V

    .line 1097
    .line 1098
    .line 1099
    return-object v2

    .line 1100
    :pswitch_39
    new-instance v2, Lm0/a0;

    .line 1101
    .line 1102
    invoke-direct {v2, v1}, Lm0/a0;-><init>(Landroid/os/Parcel;)V

    .line 1103
    .line 1104
    .line 1105
    return-object v2

    .line 1106
    :pswitch_3a
    new-instance v2, Lm0/m;

    .line 1107
    .line 1108
    invoke-direct {v2, v1}, Lm0/m;-><init>(Landroid/os/Parcel;)V

    .line 1109
    .line 1110
    .line 1111
    return-object v2

    .line 1112
    :pswitch_3b
    new-instance v2, Lm0/n;

    .line 1113
    .line 1114
    invoke-direct {v2, v1}, Lm0/n;-><init>(Landroid/os/Parcel;)V

    .line 1115
    .line 1116
    .line 1117
    return-object v2

    .line 1118
    :pswitch_3c
    new-instance v2, Landroidx/leanback/widget/p;

    .line 1119
    .line 1120
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 1121
    .line 1122
    .line 1123
    sget-object v3, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    .line 1124
    .line 1125
    iput-object v3, v2, Landroidx/leanback/widget/p;->H:Landroid/os/Bundle;

    .line 1126
    .line 1127
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 1128
    .line 1129
    .line 1130
    move-result v3

    .line 1131
    iput v3, v2, Landroidx/leanback/widget/p;->G:I

    .line 1132
    .line 1133
    const-class v3, Landroidx/leanback/widget/q;

    .line 1134
    .line 1135
    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 1136
    .line 1137
    .line 1138
    move-result-object v3

    .line 1139
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    .line 1140
    .line 1141
    .line 1142
    move-result-object v1

    .line 1143
    iput-object v1, v2, Landroidx/leanback/widget/p;->H:Landroid/os/Bundle;

    .line 1144
    .line 1145
    return-object v2

    .line 1146
    :pswitch_3d
    new-instance v2, LY/O;

    .line 1147
    .line 1148
    invoke-direct {v2, v1}, LY/O;-><init>(Landroid/os/Parcel;)V

    .line 1149
    .line 1150
    .line 1151
    return-object v2

    .line 1152
    :pswitch_3e
    new-instance v2, LY/L;

    .line 1153
    .line 1154
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 1155
    .line 1156
    .line 1157
    iput-object v6, v2, LY/L;->K:Ljava/lang/String;

    .line 1158
    .line 1159
    new-instance v3, Ljava/util/ArrayList;

    .line 1160
    .line 1161
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1162
    .line 1163
    .line 1164
    iput-object v3, v2, LY/L;->L:Ljava/util/ArrayList;

    .line 1165
    .line 1166
    new-instance v3, Ljava/util/ArrayList;

    .line 1167
    .line 1168
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1169
    .line 1170
    .line 1171
    iput-object v3, v2, LY/L;->M:Ljava/util/ArrayList;

    .line 1172
    .line 1173
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 1174
    .line 1175
    .line 1176
    move-result-object v3

    .line 1177
    iput-object v3, v2, LY/L;->G:Ljava/util/ArrayList;

    .line 1178
    .line 1179
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 1180
    .line 1181
    .line 1182
    move-result-object v3

    .line 1183
    iput-object v3, v2, LY/L;->H:Ljava/util/ArrayList;

    .line 1184
    .line 1185
    sget-object v3, LY/b;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1186
    .line 1187
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    .line 1188
    .line 1189
    .line 1190
    move-result-object v3

    .line 1191
    check-cast v3, [LY/b;

    .line 1192
    .line 1193
    iput-object v3, v2, LY/L;->I:[LY/b;

    .line 1194
    .line 1195
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 1196
    .line 1197
    .line 1198
    move-result v3

    .line 1199
    iput v3, v2, LY/L;->J:I

    .line 1200
    .line 1201
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1202
    .line 1203
    .line 1204
    move-result-object v3

    .line 1205
    iput-object v3, v2, LY/L;->K:Ljava/lang/String;

    .line 1206
    .line 1207
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 1208
    .line 1209
    .line 1210
    move-result-object v3

    .line 1211
    iput-object v3, v2, LY/L;->L:Ljava/util/ArrayList;

    .line 1212
    .line 1213
    sget-object v3, LY/c;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1214
    .line 1215
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    .line 1216
    .line 1217
    .line 1218
    move-result-object v3

    .line 1219
    iput-object v3, v2, LY/L;->M:Ljava/util/ArrayList;

    .line 1220
    .line 1221
    sget-object v3, LY/H;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1222
    .line 1223
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    .line 1224
    .line 1225
    .line 1226
    move-result-object v1

    .line 1227
    iput-object v1, v2, LY/L;->N:Ljava/util/ArrayList;

    .line 1228
    .line 1229
    return-object v2

    .line 1230
    :pswitch_3f
    new-instance v2, LY/H;

    .line 1231
    .line 1232
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 1233
    .line 1234
    .line 1235
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1236
    .line 1237
    .line 1238
    move-result-object v3

    .line 1239
    iput-object v3, v2, LY/H;->G:Ljava/lang/String;

    .line 1240
    .line 1241
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 1242
    .line 1243
    .line 1244
    move-result v1

    .line 1245
    iput v1, v2, LY/H;->H:I

    .line 1246
    .line 1247
    return-object v2

    .line 1248
    :pswitch_40
    new-instance v2, LY/c;

    .line 1249
    .line 1250
    invoke-direct {v2, v1}, LY/c;-><init>(Landroid/os/Parcel;)V

    .line 1251
    .line 1252
    .line 1253
    return-object v2

    .line 1254
    :pswitch_41
    new-instance v2, LY/b;

    .line 1255
    .line 1256
    invoke-direct {v2, v1}, LY/b;-><init>(Landroid/os/Parcel;)V

    .line 1257
    .line 1258
    .line 1259
    return-object v2

    .line 1260
    :pswitch_42
    new-instance v2, LQ/h;

    .line 1261
    .line 1262
    invoke-direct {v2, v1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 1263
    .line 1264
    .line 1265
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 1266
    .line 1267
    .line 1268
    move-result v1

    .line 1269
    iput v1, v2, LQ/h;->G:I

    .line 1270
    .line 1271
    return-object v2

    .line 1272
    :pswitch_43
    new-instance v2, Ll/U;

    .line 1273
    .line 1274
    invoke-direct {v2, v1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 1275
    .line 1276
    .line 1277
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readByte()B

    .line 1278
    .line 1279
    .line 1280
    move-result v1

    .line 1281
    if-eqz v1, :cond_2e

    .line 1282
    .line 1283
    goto :goto_11

    .line 1284
    :cond_2e
    const/4 v7, 0x0

    .line 1285
    :goto_11
    iput-boolean v7, v2, Ll/U;->G:Z

    .line 1286
    .line 1287
    return-object v2

    .line 1288
    :pswitch_44
    const-string v2, "inParcel"

    .line 1289
    .line 1290
    invoke-static {v1, v2}, Lz4/q0;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1291
    .line 1292
    .line 1293
    new-instance v2, Lc/h;

    .line 1294
    .line 1295
    const-class v3, Landroid/content/IntentSender;

    .line 1296
    .line 1297
    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 1298
    .line 1299
    .line 1300
    move-result-object v3

    .line 1301
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    .line 1302
    .line 1303
    .line 1304
    move-result-object v3

    .line 1305
    invoke-static {v3}, Lz4/q0;->e(Ljava/lang/Object;)V

    .line 1306
    .line 1307
    .line 1308
    check-cast v3, Landroid/content/IntentSender;

    .line 1309
    .line 1310
    const-class v4, Landroid/content/Intent;

    .line 1311
    .line 1312
    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 1313
    .line 1314
    .line 1315
    move-result-object v4

    .line 1316
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    .line 1317
    .line 1318
    .line 1319
    move-result-object v4

    .line 1320
    check-cast v4, Landroid/content/Intent;

    .line 1321
    .line 1322
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 1323
    .line 1324
    .line 1325
    move-result v5

    .line 1326
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 1327
    .line 1328
    .line 1329
    move-result v1

    .line 1330
    invoke-direct {v2, v3, v4, v5, v1}, Lc/h;-><init>(Landroid/content/IntentSender;Landroid/content/Intent;II)V

    .line 1331
    .line 1332
    .line 1333
    return-object v2

    .line 1334
    :pswitch_45
    new-instance v2, Lc/b;

    .line 1335
    .line 1336
    invoke-direct {v2, v1}, Lc/b;-><init>(Landroid/os/Parcel;)V

    .line 1337
    .line 1338
    .line 1339
    return-object v2

    .line 1340
    nop

    .line 1341
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
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
        :pswitch_f
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
    :pswitch_data_1
    .packed-switch 0x2
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

    .line 1404
    .line 1405
    .line 1406
    .line 1407
    .line 1408
    .line 1409
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
    .line 1432
    .line 1433
    .line 1434
    .line 1435
    .line 1436
    .line 1437
    :pswitch_data_2
    .packed-switch 0x1
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
        :pswitch_1e
        :pswitch_1d
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
    .end packed-switch
.end method

.method public final newArray(I)[Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Lc/a;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-array p1, p1, [Ll3/d1;

    .line 7
    .line 8
    return-object p1

    .line 9
    :pswitch_0
    new-array p1, p1, [Ll3/b1;

    .line 10
    .line 11
    return-object p1

    .line 12
    :pswitch_1
    new-array p1, p1, [Ll3/Y0;

    .line 13
    .line 14
    return-object p1

    .line 15
    :pswitch_2
    new-array p1, p1, [Ll3/V0;

    .line 16
    .line 17
    return-object p1

    .line 18
    :pswitch_3
    new-array p1, p1, [Ll3/U0;

    .line 19
    .line 20
    return-object p1

    .line 21
    :pswitch_4
    new-array p1, p1, [Ll3/T0;

    .line 22
    .line 23
    return-object p1

    .line 24
    :pswitch_5
    new-array p1, p1, [Ll3/L0;

    .line 25
    .line 26
    return-object p1

    .line 27
    :pswitch_6
    new-array p1, p1, [Ll3/z0;

    .line 28
    .line 29
    return-object p1

    .line 30
    :pswitch_7
    new-array p1, p1, [Ll3/E0;

    .line 31
    .line 32
    return-object p1

    .line 33
    :pswitch_8
    new-array p1, p1, [Ll3/L;

    .line 34
    .line 35
    return-object p1

    .line 36
    :pswitch_9
    new-array p1, p1, [Li3/d;

    .line 37
    .line 38
    return-object p1

    .line 39
    :pswitch_a
    new-array p1, p1, [Li3/a;

    .line 40
    .line 41
    return-object p1

    .line 42
    :pswitch_b
    new-array p1, p1, [Landroidx/versionedparcelable/ParcelImpl;

    .line 43
    .line 44
    return-object p1

    .line 45
    :pswitch_c
    new-array p1, p1, [LO1/k0;

    .line 46
    .line 47
    return-object p1

    .line 48
    :pswitch_d
    new-array p1, p1, [LO1/j0;

    .line 49
    .line 50
    return-object p1

    .line 51
    :pswitch_e
    new-array p1, p1, [LO1/v;

    .line 52
    .line 53
    return-object p1

    .line 54
    :pswitch_f
    new-array p1, p1, [LN0/a;

    .line 55
    .line 56
    return-object p1

    .line 57
    :pswitch_10
    new-array p1, p1, [Lm0/a0;

    .line 58
    .line 59
    return-object p1

    .line 60
    :pswitch_11
    new-array p1, p1, [Lm0/m;

    .line 61
    .line 62
    return-object p1

    .line 63
    :pswitch_12
    new-array p1, p1, [Lm0/n;

    .line 64
    .line 65
    return-object p1

    .line 66
    :pswitch_13
    new-array p1, p1, [Landroidx/leanback/widget/p;

    .line 67
    .line 68
    return-object p1

    .line 69
    :pswitch_14
    new-array p1, p1, [LY/O;

    .line 70
    .line 71
    return-object p1

    .line 72
    :pswitch_15
    new-array p1, p1, [LY/L;

    .line 73
    .line 74
    return-object p1

    .line 75
    :pswitch_16
    new-array p1, p1, [LY/H;

    .line 76
    .line 77
    return-object p1

    .line 78
    :pswitch_17
    new-array p1, p1, [LY/c;

    .line 79
    .line 80
    return-object p1

    .line 81
    :pswitch_18
    new-array p1, p1, [LY/b;

    .line 82
    .line 83
    return-object p1

    .line 84
    :pswitch_19
    new-array p1, p1, [LQ/h;

    .line 85
    .line 86
    return-object p1

    .line 87
    :pswitch_1a
    new-array p1, p1, [Ll/U;

    .line 88
    .line 89
    return-object p1

    .line 90
    :pswitch_1b
    new-array p1, p1, [Lc/h;

    .line 91
    .line 92
    return-object p1

    .line 93
    :pswitch_1c
    new-array p1, p1, [Lc/b;

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
