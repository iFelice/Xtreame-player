.class public final Lcom/google/android/gms/internal/measurement/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;
.implements Lcom/google/android/gms/internal/measurement/n;


# instance fields
.field public final G:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/q;->G:Ljava/lang/String;

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 10
    .line 11
    const-string v0, "StringValue cannot be null."

    .line 12
    .line 13
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    throw p1
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    return p1

    .line 5
    :cond_0
    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/q;

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    return p1

    .line 11
    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/measurement/q;

    .line 12
    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/q;->G:Ljava/lang/String;

    .line 14
    .line 15
    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/q;->G:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    return p1
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/q;->G:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/measurement/p;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/measurement/p;-><init>(Ljava/lang/Object;I)V

    return-object v0
.end method

.method public final l(Ljava/lang/String;Lm2/i;Ljava/util/ArrayList;)Lcom/google/android/gms/internal/measurement/n;
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    move-object/from16 v3, p3

    .line 8
    .line 9
    const-string v9, "charAt"

    .line 10
    .line 11
    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v10

    .line 15
    const-string v11, "trim"

    .line 16
    .line 17
    const-string v12, "concat"

    .line 18
    .line 19
    const-string v13, "toLocaleUpperCase"

    .line 20
    .line 21
    const-string v14, "toString"

    .line 22
    .line 23
    const-string v15, "toLocaleLowerCase"

    .line 24
    .line 25
    const-string v4, "toLowerCase"

    .line 26
    .line 27
    const-string v6, "substring"

    .line 28
    .line 29
    const-string v8, "split"

    .line 30
    .line 31
    const-string v5, "slice"

    .line 32
    .line 33
    const-string v7, "search"

    .line 34
    .line 35
    const-string v2, "replace"

    .line 36
    .line 37
    const-string v3, "match"

    .line 38
    .line 39
    const-string v0, "lastIndexOf"

    .line 40
    .line 41
    move-object/from16 v16, v9

    .line 42
    .line 43
    const-string v9, "indexOf"

    .line 44
    .line 45
    move-object/from16 v17, v11

    .line 46
    .line 47
    const-string v11, "hasOwnProperty"

    .line 48
    .line 49
    move-object/from16 v18, v13

    .line 50
    .line 51
    const-string v13, "toUpperCase"

    .line 52
    .line 53
    if-nez v10, :cond_2

    .line 54
    .line 55
    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v10

    .line 59
    if-nez v10, :cond_2

    .line 60
    .line 61
    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v10

    .line 65
    if-nez v10, :cond_2

    .line 66
    .line 67
    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v10

    .line 71
    if-nez v10, :cond_2

    .line 72
    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v10

    .line 77
    if-nez v10, :cond_2

    .line 78
    .line 79
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result v10

    .line 83
    if-nez v10, :cond_2

    .line 84
    .line 85
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result v10

    .line 89
    if-nez v10, :cond_2

    .line 90
    .line 91
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result v10

    .line 95
    if-nez v10, :cond_2

    .line 96
    .line 97
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-result v10

    .line 101
    if-nez v10, :cond_2

    .line 102
    .line 103
    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    move-result v10

    .line 107
    if-nez v10, :cond_2

    .line 108
    .line 109
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    move-result v10

    .line 113
    if-nez v10, :cond_2

    .line 114
    .line 115
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    move-result v10

    .line 119
    if-nez v10, :cond_2

    .line 120
    .line 121
    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    move-result v10

    .line 125
    if-nez v10, :cond_2

    .line 126
    .line 127
    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    move-result v10

    .line 131
    if-nez v10, :cond_2

    .line 132
    .line 133
    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    move-result v10

    .line 137
    if-nez v10, :cond_2

    .line 138
    .line 139
    move-object/from16 v10, v18

    .line 140
    .line 141
    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 142
    .line 143
    .line 144
    move-result v18

    .line 145
    if-nez v18, :cond_1

    .line 146
    .line 147
    move-object/from16 v18, v11

    .line 148
    .line 149
    move-object/from16 v11, v17

    .line 150
    .line 151
    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 152
    .line 153
    .line 154
    move-result v17

    .line 155
    if-eqz v17, :cond_0

    .line 156
    .line 157
    goto :goto_1

    .line 158
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 159
    .line 160
    const-string v2, " is not a String function"

    .line 161
    .line 162
    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v1

    .line 166
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    throw v0

    .line 170
    :cond_1
    :goto_0
    move-object/from16 v18, v11

    .line 171
    .line 172
    move-object/from16 v11, v17

    .line 173
    .line 174
    goto :goto_1

    .line 175
    :cond_2
    move-object/from16 v10, v18

    .line 176
    .line 177
    goto :goto_0

    .line 178
    :goto_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    .line 179
    .line 180
    .line 181
    move-result v17

    .line 182
    sparse-switch v17, :sswitch_data_0

    .line 183
    .line 184
    .line 185
    :cond_3
    move-object/from16 v11, v16

    .line 186
    .line 187
    :cond_4
    move-object/from16 v12, v18

    .line 188
    .line 189
    goto/16 :goto_4

    .line 190
    .line 191
    :sswitch_0
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 192
    .line 193
    .line 194
    move-result v1

    .line 195
    if-eqz v1, :cond_3

    .line 196
    .line 197
    move-object/from16 v11, v16

    .line 198
    .line 199
    move-object/from16 v12, v18

    .line 200
    .line 201
    const/4 v1, 0x3

    .line 202
    goto/16 :goto_5

    .line 203
    .line 204
    :sswitch_1
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 205
    .line 206
    .line 207
    move-result v1

    .line 208
    if-eqz v1, :cond_3

    .line 209
    .line 210
    const/4 v1, 0x6

    .line 211
    :goto_2
    move-object/from16 v11, v16

    .line 212
    .line 213
    :goto_3
    move-object/from16 v12, v18

    .line 214
    .line 215
    goto/16 :goto_5

    .line 216
    .line 217
    :sswitch_2
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 218
    .line 219
    .line 220
    move-result v1

    .line 221
    if-eqz v1, :cond_3

    .line 222
    .line 223
    const/16 v1, 0xa

    .line 224
    .line 225
    goto :goto_2

    .line 226
    :sswitch_3
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 227
    .line 228
    .line 229
    move-result v1

    .line 230
    if-eqz v1, :cond_3

    .line 231
    .line 232
    const/16 v1, 0x9

    .line 233
    .line 234
    goto :goto_2

    .line 235
    :sswitch_4
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 236
    .line 237
    .line 238
    move-result v1

    .line 239
    if-eqz v1, :cond_3

    .line 240
    .line 241
    const/16 v1, 0x8

    .line 242
    .line 243
    goto :goto_2

    .line 244
    :sswitch_5
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 245
    .line 246
    .line 247
    move-result v1

    .line 248
    if-eqz v1, :cond_3

    .line 249
    .line 250
    const/4 v1, 0x5

    .line 251
    goto :goto_2

    .line 252
    :sswitch_6
    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 253
    .line 254
    .line 255
    move-result v1

    .line 256
    if-eqz v1, :cond_3

    .line 257
    .line 258
    const/16 v1, 0x10

    .line 259
    .line 260
    goto :goto_2

    .line 261
    :sswitch_7
    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 262
    .line 263
    .line 264
    move-result v1

    .line 265
    if-eqz v1, :cond_3

    .line 266
    .line 267
    const/16 v1, 0xf

    .line 268
    .line 269
    goto :goto_2

    .line 270
    :sswitch_8
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 271
    .line 272
    .line 273
    move-result v1

    .line 274
    if-eqz v1, :cond_3

    .line 275
    .line 276
    const/4 v1, 0x4

    .line 277
    goto :goto_2

    .line 278
    :sswitch_9
    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 279
    .line 280
    .line 281
    move-result v1

    .line 282
    if-eqz v1, :cond_3

    .line 283
    .line 284
    const/16 v1, 0xb

    .line 285
    .line 286
    goto :goto_2

    .line 287
    :sswitch_a
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 288
    .line 289
    .line 290
    move-result v1

    .line 291
    if-eqz v1, :cond_3

    .line 292
    .line 293
    const/4 v1, 0x7

    .line 294
    goto :goto_2

    .line 295
    :sswitch_b
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 296
    .line 297
    .line 298
    move-result v1

    .line 299
    if-eqz v1, :cond_3

    .line 300
    .line 301
    const/16 v1, 0xd

    .line 302
    .line 303
    goto :goto_2

    .line 304
    :sswitch_c
    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 305
    .line 306
    .line 307
    move-result v1

    .line 308
    if-eqz v1, :cond_3

    .line 309
    .line 310
    move-object/from16 v11, v16

    .line 311
    .line 312
    move-object/from16 v12, v18

    .line 313
    .line 314
    const/4 v1, 0x1

    .line 315
    goto :goto_5

    .line 316
    :sswitch_d
    move-object/from16 v11, v16

    .line 317
    .line 318
    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 319
    .line 320
    .line 321
    move-result v1

    .line 322
    if-eqz v1, :cond_4

    .line 323
    .line 324
    move-object/from16 v12, v18

    .line 325
    .line 326
    const/4 v1, 0x0

    .line 327
    goto :goto_5

    .line 328
    :sswitch_e
    move-object/from16 v11, v16

    .line 329
    .line 330
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 331
    .line 332
    .line 333
    move-result v1

    .line 334
    if-eqz v1, :cond_4

    .line 335
    .line 336
    const/16 v1, 0xc

    .line 337
    .line 338
    goto :goto_3

    .line 339
    :sswitch_f
    move-object/from16 v11, v16

    .line 340
    .line 341
    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 342
    .line 343
    .line 344
    move-result v1

    .line 345
    if-eqz v1, :cond_4

    .line 346
    .line 347
    const/16 v1, 0xe

    .line 348
    .line 349
    goto/16 :goto_3

    .line 350
    .line 351
    :sswitch_10
    move-object/from16 v11, v16

    .line 352
    .line 353
    move-object/from16 v12, v18

    .line 354
    .line 355
    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 356
    .line 357
    .line 358
    move-result v1

    .line 359
    if-eqz v1, :cond_5

    .line 360
    .line 361
    const/4 v1, 0x2

    .line 362
    goto :goto_5

    .line 363
    :cond_5
    :goto_4
    const/4 v1, -0x1

    .line 364
    :goto_5
    const-string v16, "undefined"

    .line 365
    .line 366
    move-object/from16 v17, v2

    .line 367
    .line 368
    move-object/from16 v18, v3

    .line 369
    .line 370
    move-object/from16 v19, v0

    .line 371
    .line 372
    move-object/from16 v0, p0

    .line 373
    .line 374
    iget-object v2, v0, Lcom/google/android/gms/internal/measurement/q;->G:Ljava/lang/String;

    .line 375
    .line 376
    packed-switch v1, :pswitch_data_0

    .line 377
    .line 378
    .line 379
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 380
    .line 381
    const-string v2, "Command not supported"

    .line 382
    .line 383
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 384
    .line 385
    .line 386
    throw v1

    .line 387
    :pswitch_0
    move-object/from16 v1, p3

    .line 388
    .line 389
    const/4 v3, 0x0

    .line 390
    invoke-static {v13, v3, v1}, Lcom/google/android/gms/internal/ads/Cw;->O1(Ljava/lang/String;ILjava/util/List;)V

    .line 391
    .line 392
    .line 393
    new-instance v1, Lcom/google/android/gms/internal/measurement/q;

    .line 394
    .line 395
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 396
    .line 397
    .line 398
    move-result-object v2

    .line 399
    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/measurement/q;-><init>(Ljava/lang/String;)V

    .line 400
    .line 401
    .line 402
    goto/16 :goto_22

    .line 403
    .line 404
    :pswitch_1
    move-object/from16 v1, p3

    .line 405
    .line 406
    const/4 v3, 0x0

    .line 407
    invoke-static {v13, v3, v1}, Lcom/google/android/gms/internal/ads/Cw;->O1(Ljava/lang/String;ILjava/util/List;)V

    .line 408
    .line 409
    .line 410
    new-instance v1, Lcom/google/android/gms/internal/measurement/q;

    .line 411
    .line 412
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 413
    .line 414
    invoke-virtual {v2, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 415
    .line 416
    .line 417
    move-result-object v2

    .line 418
    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/measurement/q;-><init>(Ljava/lang/String;)V

    .line 419
    .line 420
    .line 421
    goto/16 :goto_22

    .line 422
    .line 423
    :pswitch_2
    move-object/from16 v1, p3

    .line 424
    .line 425
    const/4 v3, 0x0

    .line 426
    invoke-static {v14, v3, v1}, Lcom/google/android/gms/internal/ads/Cw;->O1(Ljava/lang/String;ILjava/util/List;)V

    .line 427
    .line 428
    .line 429
    goto/16 :goto_1f

    .line 430
    .line 431
    :pswitch_3
    move-object/from16 v1, p3

    .line 432
    .line 433
    const/4 v3, 0x0

    .line 434
    invoke-static {v4, v3, v1}, Lcom/google/android/gms/internal/ads/Cw;->O1(Ljava/lang/String;ILjava/util/List;)V

    .line 435
    .line 436
    .line 437
    new-instance v1, Lcom/google/android/gms/internal/measurement/q;

    .line 438
    .line 439
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 440
    .line 441
    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 442
    .line 443
    .line 444
    move-result-object v2

    .line 445
    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/measurement/q;-><init>(Ljava/lang/String;)V

    .line 446
    .line 447
    .line 448
    goto/16 :goto_22

    .line 449
    .line 450
    :pswitch_4
    move-object/from16 v1, p3

    .line 451
    .line 452
    const/4 v3, 0x0

    .line 453
    invoke-static {v15, v3, v1}, Lcom/google/android/gms/internal/ads/Cw;->O1(Ljava/lang/String;ILjava/util/List;)V

    .line 454
    .line 455
    .line 456
    new-instance v1, Lcom/google/android/gms/internal/measurement/q;

    .line 457
    .line 458
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 459
    .line 460
    .line 461
    move-result-object v2

    .line 462
    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/measurement/q;-><init>(Ljava/lang/String;)V

    .line 463
    .line 464
    .line 465
    goto/16 :goto_22

    .line 466
    .line 467
    :pswitch_5
    move-object/from16 v1, p3

    .line 468
    .line 469
    const/4 v3, 0x0

    .line 470
    invoke-static {v10, v3, v1}, Lcom/google/android/gms/internal/ads/Cw;->O1(Ljava/lang/String;ILjava/util/List;)V

    .line 471
    .line 472
    .line 473
    new-instance v1, Lcom/google/android/gms/internal/measurement/q;

    .line 474
    .line 475
    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 476
    .line 477
    .line 478
    move-result-object v2

    .line 479
    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/measurement/q;-><init>(Ljava/lang/String;)V

    .line 480
    .line 481
    .line 482
    goto/16 :goto_22

    .line 483
    .line 484
    :pswitch_6
    move-object/from16 v1, p3

    .line 485
    .line 486
    const/4 v3, 0x0

    .line 487
    const/4 v4, 0x2

    .line 488
    invoke-static {v6, v4, v1}, Lcom/google/android/gms/internal/ads/Cw;->U1(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 489
    .line 490
    .line 491
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 492
    .line 493
    .line 494
    move-result v4

    .line 495
    if-nez v4, :cond_6

    .line 496
    .line 497
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 498
    .line 499
    .line 500
    move-result-object v4

    .line 501
    check-cast v4, Lcom/google/android/gms/internal/measurement/n;

    .line 502
    .line 503
    move-object/from16 v3, p2

    .line 504
    .line 505
    invoke-virtual {v3, v4}, Lm2/i;->t(Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    .line 506
    .line 507
    .line 508
    move-result-object v4

    .line 509
    invoke-interface {v4}, Lcom/google/android/gms/internal/measurement/n;->zzh()Ljava/lang/Double;

    .line 510
    .line 511
    .line 512
    move-result-object v4

    .line 513
    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    .line 514
    .line 515
    .line 516
    move-result-wide v4

    .line 517
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/ads/Cw;->r(D)D

    .line 518
    .line 519
    .line 520
    move-result-wide v4

    .line 521
    double-to-int v4, v4

    .line 522
    goto :goto_6

    .line 523
    :cond_6
    move-object/from16 v3, p2

    .line 524
    .line 525
    const/4 v4, 0x0

    .line 526
    :goto_6
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    .line 527
    .line 528
    .line 529
    move-result v5

    .line 530
    const/4 v6, 0x1

    .line 531
    if-le v5, v6, :cond_7

    .line 532
    .line 533
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 534
    .line 535
    .line 536
    move-result-object v1

    .line 537
    check-cast v1, Lcom/google/android/gms/internal/measurement/n;

    .line 538
    .line 539
    invoke-virtual {v3, v1}, Lm2/i;->t(Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    .line 540
    .line 541
    .line 542
    move-result-object v1

    .line 543
    invoke-interface {v1}, Lcom/google/android/gms/internal/measurement/n;->zzh()Ljava/lang/Double;

    .line 544
    .line 545
    .line 546
    move-result-object v1

    .line 547
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    .line 548
    .line 549
    .line 550
    move-result-wide v5

    .line 551
    invoke-static {v5, v6}, Lcom/google/android/gms/internal/ads/Cw;->r(D)D

    .line 552
    .line 553
    .line 554
    move-result-wide v5

    .line 555
    double-to-int v1, v5

    .line 556
    :goto_7
    const/4 v3, 0x0

    .line 557
    goto :goto_8

    .line 558
    :cond_7
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 559
    .line 560
    .line 561
    move-result v1

    .line 562
    goto :goto_7

    .line 563
    :goto_8
    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    .line 564
    .line 565
    .line 566
    move-result v4

    .line 567
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 568
    .line 569
    .line 570
    move-result v5

    .line 571
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    .line 572
    .line 573
    .line 574
    move-result v4

    .line 575
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    .line 576
    .line 577
    .line 578
    move-result v1

    .line 579
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 580
    .line 581
    .line 582
    move-result v3

    .line 583
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    .line 584
    .line 585
    .line 586
    move-result v1

    .line 587
    new-instance v3, Lcom/google/android/gms/internal/measurement/q;

    .line 588
    .line 589
    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    .line 590
    .line 591
    .line 592
    move-result v5

    .line 593
    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    .line 594
    .line 595
    .line 596
    move-result v1

    .line 597
    invoke-virtual {v2, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 598
    .line 599
    .line 600
    move-result-object v1

    .line 601
    invoke-direct {v3, v1}, Lcom/google/android/gms/internal/measurement/q;-><init>(Ljava/lang/String;)V

    .line 602
    .line 603
    .line 604
    :goto_9
    move-object v1, v3

    .line 605
    goto/16 :goto_22

    .line 606
    .line 607
    :pswitch_7
    move-object/from16 v3, p2

    .line 608
    .line 609
    move-object/from16 v1, p3

    .line 610
    .line 611
    const/4 v4, 0x2

    .line 612
    invoke-static {v8, v4, v1}, Lcom/google/android/gms/internal/ads/Cw;->U1(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 613
    .line 614
    .line 615
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 616
    .line 617
    .line 618
    move-result v4

    .line 619
    if-nez v4, :cond_8

    .line 620
    .line 621
    new-instance v1, Lcom/google/android/gms/internal/measurement/d;

    .line 622
    .line 623
    const/4 v2, 0x1

    .line 624
    new-array v2, v2, [Lcom/google/android/gms/internal/measurement/n;

    .line 625
    .line 626
    const/4 v4, 0x0

    .line 627
    aput-object v0, v2, v4

    .line 628
    .line 629
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 630
    .line 631
    .line 632
    move-result-object v2

    .line 633
    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/measurement/d;-><init>(Ljava/util/List;)V

    .line 634
    .line 635
    .line 636
    goto/16 :goto_22

    .line 637
    .line 638
    :cond_8
    const/4 v4, 0x0

    .line 639
    new-instance v5, Ljava/util/ArrayList;

    .line 640
    .line 641
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 642
    .line 643
    .line 644
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 645
    .line 646
    .line 647
    move-result v6

    .line 648
    if-eqz v6, :cond_9

    .line 649
    .line 650
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 651
    .line 652
    .line 653
    goto/16 :goto_d

    .line 654
    .line 655
    :cond_9
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 656
    .line 657
    .line 658
    move-result-object v6

    .line 659
    check-cast v6, Lcom/google/android/gms/internal/measurement/n;

    .line 660
    .line 661
    invoke-virtual {v3, v6}, Lm2/i;->t(Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    .line 662
    .line 663
    .line 664
    move-result-object v4

    .line 665
    invoke-interface {v4}, Lcom/google/android/gms/internal/measurement/n;->zzi()Ljava/lang/String;

    .line 666
    .line 667
    .line 668
    move-result-object v4

    .line 669
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    .line 670
    .line 671
    .line 672
    move-result v6

    .line 673
    const/4 v7, 0x1

    .line 674
    if-le v6, v7, :cond_a

    .line 675
    .line 676
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 677
    .line 678
    .line 679
    move-result-object v1

    .line 680
    check-cast v1, Lcom/google/android/gms/internal/measurement/n;

    .line 681
    .line 682
    invoke-virtual {v3, v1}, Lm2/i;->t(Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    .line 683
    .line 684
    .line 685
    move-result-object v1

    .line 686
    invoke-interface {v1}, Lcom/google/android/gms/internal/measurement/n;->zzh()Ljava/lang/Double;

    .line 687
    .line 688
    .line 689
    move-result-object v1

    .line 690
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    .line 691
    .line 692
    .line 693
    move-result-wide v6

    .line 694
    invoke-static {v6, v7}, Lcom/google/android/gms/internal/ads/Cw;->v0(D)I

    .line 695
    .line 696
    .line 697
    move-result v1

    .line 698
    int-to-long v6, v1

    .line 699
    const-wide v8, 0xffffffffL

    .line 700
    .line 701
    .line 702
    .line 703
    .line 704
    and-long/2addr v6, v8

    .line 705
    goto :goto_a

    .line 706
    :cond_a
    const-wide/32 v6, 0x7fffffff

    .line 707
    .line 708
    .line 709
    :goto_a
    const-wide/16 v8, 0x0

    .line 710
    .line 711
    cmp-long v1, v6, v8

    .line 712
    .line 713
    if-nez v1, :cond_b

    .line 714
    .line 715
    new-instance v1, Lcom/google/android/gms/internal/measurement/d;

    .line 716
    .line 717
    invoke-direct {v1}, Lcom/google/android/gms/internal/measurement/d;-><init>()V

    .line 718
    .line 719
    .line 720
    goto/16 :goto_22

    .line 721
    .line 722
    :cond_b
    invoke-static {v4}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    .line 723
    .line 724
    .line 725
    move-result-object v1

    .line 726
    long-to-int v3, v6

    .line 727
    const/4 v8, 0x1

    .line 728
    add-int/2addr v3, v8

    .line 729
    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 730
    .line 731
    .line 732
    move-result-object v1

    .line 733
    array-length v2, v1

    .line 734
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    .line 735
    .line 736
    .line 737
    move-result v3

    .line 738
    if-eqz v3, :cond_c

    .line 739
    .line 740
    if-lez v2, :cond_c

    .line 741
    .line 742
    const/4 v3, 0x0

    .line 743
    aget-object v3, v1, v3

    .line 744
    .line 745
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 746
    .line 747
    .line 748
    move-result v3

    .line 749
    const/4 v4, -0x1

    .line 750
    add-int/lit8 v8, v2, -0x1

    .line 751
    .line 752
    aget-object v9, v1, v8

    .line 753
    .line 754
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    .line 755
    .line 756
    .line 757
    move-result v9

    .line 758
    if-nez v9, :cond_d

    .line 759
    .line 760
    move v8, v2

    .line 761
    goto :goto_b

    .line 762
    :cond_c
    const/4 v4, -0x1

    .line 763
    move v8, v2

    .line 764
    const/4 v3, 0x0

    .line 765
    :cond_d
    :goto_b
    int-to-long v9, v2

    .line 766
    cmp-long v2, v9, v6

    .line 767
    .line 768
    if-lez v2, :cond_e

    .line 769
    .line 770
    add-int/2addr v8, v4

    .line 771
    :cond_e
    :goto_c
    if-ge v3, v8, :cond_f

    .line 772
    .line 773
    new-instance v2, Lcom/google/android/gms/internal/measurement/q;

    .line 774
    .line 775
    aget-object v4, v1, v3

    .line 776
    .line 777
    invoke-direct {v2, v4}, Lcom/google/android/gms/internal/measurement/q;-><init>(Ljava/lang/String;)V

    .line 778
    .line 779
    .line 780
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 781
    .line 782
    .line 783
    const/4 v2, 0x1

    .line 784
    add-int/2addr v3, v2

    .line 785
    goto :goto_c

    .line 786
    :cond_f
    :goto_d
    new-instance v1, Lcom/google/android/gms/internal/measurement/d;

    .line 787
    .line 788
    invoke-direct {v1, v5}, Lcom/google/android/gms/internal/measurement/d;-><init>(Ljava/util/List;)V

    .line 789
    .line 790
    .line 791
    goto/16 :goto_22

    .line 792
    .line 793
    :pswitch_8
    move-object/from16 v3, p2

    .line 794
    .line 795
    move-object/from16 v1, p3

    .line 796
    .line 797
    const/4 v4, 0x2

    .line 798
    invoke-static {v5, v4, v1}, Lcom/google/android/gms/internal/ads/Cw;->U1(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 799
    .line 800
    .line 801
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 802
    .line 803
    .line 804
    move-result v4

    .line 805
    if-nez v4, :cond_10

    .line 806
    .line 807
    const/4 v4, 0x0

    .line 808
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 809
    .line 810
    .line 811
    move-result-object v5

    .line 812
    check-cast v5, Lcom/google/android/gms/internal/measurement/n;

    .line 813
    .line 814
    invoke-virtual {v3, v5}, Lm2/i;->t(Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    .line 815
    .line 816
    .line 817
    move-result-object v4

    .line 818
    invoke-interface {v4}, Lcom/google/android/gms/internal/measurement/n;->zzh()Ljava/lang/Double;

    .line 819
    .line 820
    .line 821
    move-result-object v4

    .line 822
    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    .line 823
    .line 824
    .line 825
    move-result-wide v4

    .line 826
    goto :goto_e

    .line 827
    :cond_10
    const-wide/16 v4, 0x0

    .line 828
    .line 829
    :goto_e
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/ads/Cw;->r(D)D

    .line 830
    .line 831
    .line 832
    move-result-wide v4

    .line 833
    const-wide/16 v6, 0x0

    .line 834
    .line 835
    cmpg-double v8, v4, v6

    .line 836
    .line 837
    if-gez v8, :cond_11

    .line 838
    .line 839
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 840
    .line 841
    .line 842
    move-result v8

    .line 843
    int-to-double v8, v8

    .line 844
    add-double/2addr v8, v4

    .line 845
    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->max(DD)D

    .line 846
    .line 847
    .line 848
    move-result-wide v4

    .line 849
    goto :goto_f

    .line 850
    :cond_11
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 851
    .line 852
    .line 853
    move-result v6

    .line 854
    int-to-double v6, v6

    .line 855
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(DD)D

    .line 856
    .line 857
    .line 858
    move-result-wide v4

    .line 859
    :goto_f
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    .line 860
    .line 861
    .line 862
    move-result v6

    .line 863
    const/4 v7, 0x1

    .line 864
    if-le v6, v7, :cond_12

    .line 865
    .line 866
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 867
    .line 868
    .line 869
    move-result-object v1

    .line 870
    check-cast v1, Lcom/google/android/gms/internal/measurement/n;

    .line 871
    .line 872
    invoke-virtual {v3, v1}, Lm2/i;->t(Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    .line 873
    .line 874
    .line 875
    move-result-object v1

    .line 876
    invoke-interface {v1}, Lcom/google/android/gms/internal/measurement/n;->zzh()Ljava/lang/Double;

    .line 877
    .line 878
    .line 879
    move-result-object v1

    .line 880
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    .line 881
    .line 882
    .line 883
    move-result-wide v6

    .line 884
    goto :goto_10

    .line 885
    :cond_12
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 886
    .line 887
    .line 888
    move-result v1

    .line 889
    int-to-double v6, v1

    .line 890
    :goto_10
    invoke-static {v6, v7}, Lcom/google/android/gms/internal/ads/Cw;->r(D)D

    .line 891
    .line 892
    .line 893
    move-result-wide v6

    .line 894
    const-wide/16 v10, 0x0

    .line 895
    .line 896
    cmpg-double v1, v6, v10

    .line 897
    .line 898
    if-gez v1, :cond_13

    .line 899
    .line 900
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 901
    .line 902
    .line 903
    move-result v1

    .line 904
    int-to-double v8, v1

    .line 905
    add-double/2addr v8, v6

    .line 906
    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(DD)D

    .line 907
    .line 908
    .line 909
    move-result-wide v6

    .line 910
    goto :goto_11

    .line 911
    :cond_13
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 912
    .line 913
    .line 914
    move-result v1

    .line 915
    int-to-double v8, v1

    .line 916
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(DD)D

    .line 917
    .line 918
    .line 919
    move-result-wide v6

    .line 920
    :goto_11
    double-to-int v1, v4

    .line 921
    double-to-int v3, v6

    .line 922
    sub-int/2addr v3, v1

    .line 923
    const/4 v4, 0x0

    .line 924
    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    .line 925
    .line 926
    .line 927
    move-result v3

    .line 928
    add-int/2addr v3, v1

    .line 929
    new-instance v4, Lcom/google/android/gms/internal/measurement/q;

    .line 930
    .line 931
    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 932
    .line 933
    .line 934
    move-result-object v1

    .line 935
    invoke-direct {v4, v1}, Lcom/google/android/gms/internal/measurement/q;-><init>(Ljava/lang/String;)V

    .line 936
    .line 937
    .line 938
    :goto_12
    move-object v1, v4

    .line 939
    goto/16 :goto_22

    .line 940
    .line 941
    :pswitch_9
    move-object/from16 v3, p2

    .line 942
    .line 943
    move-object/from16 v1, p3

    .line 944
    .line 945
    const/4 v4, 0x0

    .line 946
    const/4 v5, 0x1

    .line 947
    invoke-static {v7, v5, v1}, Lcom/google/android/gms/internal/ads/Cw;->U1(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 948
    .line 949
    .line 950
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 951
    .line 952
    .line 953
    move-result v5

    .line 954
    if-nez v5, :cond_14

    .line 955
    .line 956
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 957
    .line 958
    .line 959
    move-result-object v1

    .line 960
    check-cast v1, Lcom/google/android/gms/internal/measurement/n;

    .line 961
    .line 962
    invoke-virtual {v3, v1}, Lm2/i;->t(Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    .line 963
    .line 964
    .line 965
    move-result-object v1

    .line 966
    invoke-interface {v1}, Lcom/google/android/gms/internal/measurement/n;->zzi()Ljava/lang/String;

    .line 967
    .line 968
    .line 969
    move-result-object v16

    .line 970
    :cond_14
    invoke-static/range {v16 .. v16}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 971
    .line 972
    .line 973
    move-result-object v1

    .line 974
    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 975
    .line 976
    .line 977
    move-result-object v1

    .line 978
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    .line 979
    .line 980
    .line 981
    move-result v2

    .line 982
    if-eqz v2, :cond_15

    .line 983
    .line 984
    new-instance v2, Lcom/google/android/gms/internal/measurement/g;

    .line 985
    .line 986
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    .line 987
    .line 988
    .line 989
    move-result v1

    .line 990
    int-to-double v3, v1

    .line 991
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 992
    .line 993
    .line 994
    move-result-object v1

    .line 995
    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/measurement/g;-><init>(Ljava/lang/Double;)V

    .line 996
    .line 997
    .line 998
    :goto_13
    move-object v1, v2

    .line 999
    goto/16 :goto_22

    .line 1000
    .line 1001
    :cond_15
    new-instance v1, Lcom/google/android/gms/internal/measurement/g;

    .line 1002
    .line 1003
    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    .line 1004
    .line 1005
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 1006
    .line 1007
    .line 1008
    move-result-object v2

    .line 1009
    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/measurement/g;-><init>(Ljava/lang/Double;)V

    .line 1010
    .line 1011
    .line 1012
    goto/16 :goto_22

    .line 1013
    .line 1014
    :pswitch_a
    move-object/from16 v3, p2

    .line 1015
    .line 1016
    move-object/from16 v1, p3

    .line 1017
    .line 1018
    move-object/from16 v4, v17

    .line 1019
    .line 1020
    const/4 v5, 0x2

    .line 1021
    invoke-static {v4, v5, v1}, Lcom/google/android/gms/internal/ads/Cw;->U1(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 1022
    .line 1023
    .line 1024
    sget-object v4, Lcom/google/android/gms/internal/measurement/n;->s:Lcom/google/android/gms/internal/measurement/r;

    .line 1025
    .line 1026
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1027
    .line 1028
    .line 1029
    move-result v5

    .line 1030
    if-nez v5, :cond_16

    .line 1031
    .line 1032
    const/4 v5, 0x0

    .line 1033
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1034
    .line 1035
    .line 1036
    move-result-object v6

    .line 1037
    check-cast v6, Lcom/google/android/gms/internal/measurement/n;

    .line 1038
    .line 1039
    invoke-virtual {v3, v6}, Lm2/i;->t(Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    .line 1040
    .line 1041
    .line 1042
    move-result-object v5

    .line 1043
    invoke-interface {v5}, Lcom/google/android/gms/internal/measurement/n;->zzi()Ljava/lang/String;

    .line 1044
    .line 1045
    .line 1046
    move-result-object v16

    .line 1047
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    .line 1048
    .line 1049
    .line 1050
    move-result v5

    .line 1051
    const/4 v6, 0x1

    .line 1052
    if-le v5, v6, :cond_16

    .line 1053
    .line 1054
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1055
    .line 1056
    .line 1057
    move-result-object v1

    .line 1058
    check-cast v1, Lcom/google/android/gms/internal/measurement/n;

    .line 1059
    .line 1060
    invoke-virtual {v3, v1}, Lm2/i;->t(Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    .line 1061
    .line 1062
    .line 1063
    move-result-object v4

    .line 1064
    :cond_16
    move-object/from16 v1, v16

    .line 1065
    .line 1066
    invoke-virtual {v2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 1067
    .line 1068
    .line 1069
    move-result v5

    .line 1070
    if-ltz v5, :cond_22

    .line 1071
    .line 1072
    instance-of v6, v4, Lcom/google/android/gms/internal/measurement/h;

    .line 1073
    .line 1074
    if-eqz v6, :cond_17

    .line 1075
    .line 1076
    check-cast v4, Lcom/google/android/gms/internal/measurement/h;

    .line 1077
    .line 1078
    new-instance v6, Lcom/google/android/gms/internal/measurement/q;

    .line 1079
    .line 1080
    invoke-direct {v6, v1}, Lcom/google/android/gms/internal/measurement/q;-><init>(Ljava/lang/String;)V

    .line 1081
    .line 1082
    .line 1083
    int-to-double v7, v5

    .line 1084
    new-instance v9, Lcom/google/android/gms/internal/measurement/g;

    .line 1085
    .line 1086
    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 1087
    .line 1088
    .line 1089
    move-result-object v7

    .line 1090
    invoke-direct {v9, v7}, Lcom/google/android/gms/internal/measurement/g;-><init>(Ljava/lang/Double;)V

    .line 1091
    .line 1092
    .line 1093
    const/4 v7, 0x3

    .line 1094
    new-array v7, v7, [Lcom/google/android/gms/internal/measurement/n;

    .line 1095
    .line 1096
    const/4 v8, 0x0

    .line 1097
    aput-object v6, v7, v8

    .line 1098
    .line 1099
    const/4 v6, 0x1

    .line 1100
    aput-object v9, v7, v6

    .line 1101
    .line 1102
    const/4 v6, 0x2

    .line 1103
    aput-object v0, v7, v6

    .line 1104
    .line 1105
    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 1106
    .line 1107
    .line 1108
    move-result-object v6

    .line 1109
    invoke-virtual {v4, v3, v6}, Lcom/google/android/gms/internal/measurement/h;->a(Lm2/i;Ljava/util/List;)Lcom/google/android/gms/internal/measurement/n;

    .line 1110
    .line 1111
    .line 1112
    move-result-object v4

    .line 1113
    goto :goto_14

    .line 1114
    :cond_17
    const/4 v8, 0x0

    .line 1115
    :goto_14
    new-instance v3, Lcom/google/android/gms/internal/measurement/q;

    .line 1116
    .line 1117
    invoke-virtual {v2, v8, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 1118
    .line 1119
    .line 1120
    move-result-object v6

    .line 1121
    invoke-interface {v4}, Lcom/google/android/gms/internal/measurement/n;->zzi()Ljava/lang/String;

    .line 1122
    .line 1123
    .line 1124
    move-result-object v4

    .line 1125
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 1126
    .line 1127
    .line 1128
    move-result v1

    .line 1129
    add-int/2addr v1, v5

    .line 1130
    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 1131
    .line 1132
    .line 1133
    move-result-object v1

    .line 1134
    invoke-static {v6, v4, v1}, Lcom/google/protobuf/U2;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1135
    .line 1136
    .line 1137
    move-result-object v1

    .line 1138
    invoke-direct {v3, v1}, Lcom/google/android/gms/internal/measurement/q;-><init>(Ljava/lang/String;)V

    .line 1139
    .line 1140
    .line 1141
    goto/16 :goto_9

    .line 1142
    .line 1143
    :pswitch_b
    move-object/from16 v3, p2

    .line 1144
    .line 1145
    move-object/from16 v1, p3

    .line 1146
    .line 1147
    move-object/from16 v4, v18

    .line 1148
    .line 1149
    const/4 v5, 0x1

    .line 1150
    invoke-static {v4, v5, v1}, Lcom/google/android/gms/internal/ads/Cw;->U1(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 1151
    .line 1152
    .line 1153
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    .line 1154
    .line 1155
    .line 1156
    move-result v4

    .line 1157
    if-gtz v4, :cond_18

    .line 1158
    .line 1159
    const-string v1, ""

    .line 1160
    .line 1161
    goto :goto_15

    .line 1162
    :cond_18
    const/4 v4, 0x0

    .line 1163
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1164
    .line 1165
    .line 1166
    move-result-object v1

    .line 1167
    check-cast v1, Lcom/google/android/gms/internal/measurement/n;

    .line 1168
    .line 1169
    invoke-virtual {v3, v1}, Lm2/i;->t(Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    .line 1170
    .line 1171
    .line 1172
    move-result-object v1

    .line 1173
    invoke-interface {v1}, Lcom/google/android/gms/internal/measurement/n;->zzi()Ljava/lang/String;

    .line 1174
    .line 1175
    .line 1176
    move-result-object v1

    .line 1177
    :goto_15
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 1178
    .line 1179
    .line 1180
    move-result-object v1

    .line 1181
    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 1182
    .line 1183
    .line 1184
    move-result-object v1

    .line 1185
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    .line 1186
    .line 1187
    .line 1188
    move-result v2

    .line 1189
    if-eqz v2, :cond_19

    .line 1190
    .line 1191
    new-instance v2, Lcom/google/android/gms/internal/measurement/d;

    .line 1192
    .line 1193
    new-instance v3, Lcom/google/android/gms/internal/measurement/q;

    .line 1194
    .line 1195
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    .line 1196
    .line 1197
    .line 1198
    move-result-object v1

    .line 1199
    invoke-direct {v3, v1}, Lcom/google/android/gms/internal/measurement/q;-><init>(Ljava/lang/String;)V

    .line 1200
    .line 1201
    .line 1202
    const/4 v1, 0x1

    .line 1203
    new-array v1, v1, [Lcom/google/android/gms/internal/measurement/n;

    .line 1204
    .line 1205
    const/4 v4, 0x0

    .line 1206
    aput-object v3, v1, v4

    .line 1207
    .line 1208
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 1209
    .line 1210
    .line 1211
    move-result-object v1

    .line 1212
    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/measurement/d;-><init>(Ljava/util/List;)V

    .line 1213
    .line 1214
    .line 1215
    goto/16 :goto_13

    .line 1216
    .line 1217
    :cond_19
    sget-object v1, Lcom/google/android/gms/internal/measurement/n;->t:Lcom/google/android/gms/internal/measurement/l;

    .line 1218
    .line 1219
    goto/16 :goto_22

    .line 1220
    .line 1221
    :pswitch_c
    move-object/from16 v3, p2

    .line 1222
    .line 1223
    move-object/from16 v1, p3

    .line 1224
    .line 1225
    move-object/from16 v5, v19

    .line 1226
    .line 1227
    const/4 v4, 0x0

    .line 1228
    const/4 v6, 0x2

    .line 1229
    invoke-static {v5, v6, v1}, Lcom/google/android/gms/internal/ads/Cw;->U1(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 1230
    .line 1231
    .line 1232
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    .line 1233
    .line 1234
    .line 1235
    move-result v5

    .line 1236
    if-gtz v5, :cond_1a

    .line 1237
    .line 1238
    :goto_16
    move-object/from16 v4, v16

    .line 1239
    .line 1240
    goto :goto_17

    .line 1241
    :cond_1a
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1242
    .line 1243
    .line 1244
    move-result-object v4

    .line 1245
    check-cast v4, Lcom/google/android/gms/internal/measurement/n;

    .line 1246
    .line 1247
    invoke-virtual {v3, v4}, Lm2/i;->t(Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    .line 1248
    .line 1249
    .line 1250
    move-result-object v4

    .line 1251
    invoke-interface {v4}, Lcom/google/android/gms/internal/measurement/n;->zzi()Ljava/lang/String;

    .line 1252
    .line 1253
    .line 1254
    move-result-object v16

    .line 1255
    goto :goto_16

    .line 1256
    :goto_17
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    .line 1257
    .line 1258
    .line 1259
    move-result v5

    .line 1260
    if-ge v5, v6, :cond_1b

    .line 1261
    .line 1262
    const-wide/high16 v5, 0x7ff8000000000000L    # Double.NaN

    .line 1263
    .line 1264
    goto :goto_18

    .line 1265
    :cond_1b
    const/4 v5, 0x1

    .line 1266
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1267
    .line 1268
    .line 1269
    move-result-object v1

    .line 1270
    check-cast v1, Lcom/google/android/gms/internal/measurement/n;

    .line 1271
    .line 1272
    invoke-virtual {v3, v1}, Lm2/i;->t(Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    .line 1273
    .line 1274
    .line 1275
    move-result-object v1

    .line 1276
    invoke-interface {v1}, Lcom/google/android/gms/internal/measurement/n;->zzh()Ljava/lang/Double;

    .line 1277
    .line 1278
    .line 1279
    move-result-object v1

    .line 1280
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    .line 1281
    .line 1282
    .line 1283
    move-result-wide v5

    .line 1284
    :goto_18
    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    .line 1285
    .line 1286
    .line 1287
    move-result v1

    .line 1288
    if-eqz v1, :cond_1c

    .line 1289
    .line 1290
    const-wide/high16 v5, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    .line 1291
    .line 1292
    goto :goto_19

    .line 1293
    :cond_1c
    invoke-static {v5, v6}, Lcom/google/android/gms/internal/ads/Cw;->r(D)D

    .line 1294
    .line 1295
    .line 1296
    move-result-wide v5

    .line 1297
    :goto_19
    double-to-int v1, v5

    .line 1298
    new-instance v3, Lcom/google/android/gms/internal/measurement/g;

    .line 1299
    .line 1300
    invoke-virtual {v2, v4, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;I)I

    .line 1301
    .line 1302
    .line 1303
    move-result v1

    .line 1304
    int-to-double v1, v1

    .line 1305
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 1306
    .line 1307
    .line 1308
    move-result-object v1

    .line 1309
    invoke-direct {v3, v1}, Lcom/google/android/gms/internal/measurement/g;-><init>(Ljava/lang/Double;)V

    .line 1310
    .line 1311
    .line 1312
    goto/16 :goto_9

    .line 1313
    .line 1314
    :pswitch_d
    move-object/from16 v3, p2

    .line 1315
    .line 1316
    move-object/from16 v1, p3

    .line 1317
    .line 1318
    const/4 v4, 0x2

    .line 1319
    const-wide/16 v10, 0x0

    .line 1320
    .line 1321
    invoke-static {v9, v4, v1}, Lcom/google/android/gms/internal/ads/Cw;->U1(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 1322
    .line 1323
    .line 1324
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    .line 1325
    .line 1326
    .line 1327
    move-result v5

    .line 1328
    if-gtz v5, :cond_1d

    .line 1329
    .line 1330
    :goto_1a
    move-object/from16 v5, v16

    .line 1331
    .line 1332
    goto :goto_1b

    .line 1333
    :cond_1d
    const/4 v5, 0x0

    .line 1334
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1335
    .line 1336
    .line 1337
    move-result-object v5

    .line 1338
    check-cast v5, Lcom/google/android/gms/internal/measurement/n;

    .line 1339
    .line 1340
    invoke-virtual {v3, v5}, Lm2/i;->t(Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    .line 1341
    .line 1342
    .line 1343
    move-result-object v5

    .line 1344
    invoke-interface {v5}, Lcom/google/android/gms/internal/measurement/n;->zzi()Ljava/lang/String;

    .line 1345
    .line 1346
    .line 1347
    move-result-object v16

    .line 1348
    goto :goto_1a

    .line 1349
    :goto_1b
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    .line 1350
    .line 1351
    .line 1352
    move-result v6

    .line 1353
    if-ge v6, v4, :cond_1e

    .line 1354
    .line 1355
    move-wide v3, v10

    .line 1356
    goto :goto_1c

    .line 1357
    :cond_1e
    const/4 v4, 0x1

    .line 1358
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1359
    .line 1360
    .line 1361
    move-result-object v1

    .line 1362
    check-cast v1, Lcom/google/android/gms/internal/measurement/n;

    .line 1363
    .line 1364
    invoke-virtual {v3, v1}, Lm2/i;->t(Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    .line 1365
    .line 1366
    .line 1367
    move-result-object v1

    .line 1368
    invoke-interface {v1}, Lcom/google/android/gms/internal/measurement/n;->zzh()Ljava/lang/Double;

    .line 1369
    .line 1370
    .line 1371
    move-result-object v1

    .line 1372
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    .line 1373
    .line 1374
    .line 1375
    move-result-wide v3

    .line 1376
    :goto_1c
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/Cw;->r(D)D

    .line 1377
    .line 1378
    .line 1379
    move-result-wide v3

    .line 1380
    double-to-int v1, v3

    .line 1381
    new-instance v3, Lcom/google/android/gms/internal/measurement/g;

    .line 1382
    .line 1383
    invoke-virtual {v2, v5, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    .line 1384
    .line 1385
    .line 1386
    move-result v1

    .line 1387
    int-to-double v1, v1

    .line 1388
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 1389
    .line 1390
    .line 1391
    move-result-object v1

    .line 1392
    invoke-direct {v3, v1}, Lcom/google/android/gms/internal/measurement/g;-><init>(Ljava/lang/Double;)V

    .line 1393
    .line 1394
    .line 1395
    goto/16 :goto_9

    .line 1396
    .line 1397
    :pswitch_e
    move-object/from16 v3, p2

    .line 1398
    .line 1399
    move-object/from16 v1, p3

    .line 1400
    .line 1401
    const/4 v4, 0x1

    .line 1402
    invoke-static {v12, v4, v1}, Lcom/google/android/gms/internal/ads/Cw;->O1(Ljava/lang/String;ILjava/util/List;)V

    .line 1403
    .line 1404
    .line 1405
    const/4 v4, 0x0

    .line 1406
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1407
    .line 1408
    .line 1409
    move-result-object v1

    .line 1410
    check-cast v1, Lcom/google/android/gms/internal/measurement/n;

    .line 1411
    .line 1412
    invoke-virtual {v3, v1}, Lm2/i;->t(Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    .line 1413
    .line 1414
    .line 1415
    move-result-object v1

    .line 1416
    invoke-interface {v1}, Lcom/google/android/gms/internal/measurement/n;->zzi()Ljava/lang/String;

    .line 1417
    .line 1418
    .line 1419
    move-result-object v3

    .line 1420
    const-string v4, "length"

    .line 1421
    .line 1422
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1423
    .line 1424
    .line 1425
    move-result v3

    .line 1426
    sget-object v4, Lcom/google/android/gms/internal/measurement/n;->x:Lcom/google/android/gms/internal/measurement/e;

    .line 1427
    .line 1428
    if-eqz v3, :cond_1f

    .line 1429
    .line 1430
    :goto_1d
    goto/16 :goto_12

    .line 1431
    .line 1432
    :cond_1f
    invoke-interface {v1}, Lcom/google/android/gms/internal/measurement/n;->zzh()Ljava/lang/Double;

    .line 1433
    .line 1434
    .line 1435
    move-result-object v1

    .line 1436
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    .line 1437
    .line 1438
    .line 1439
    move-result-wide v5

    .line 1440
    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    .line 1441
    .line 1442
    .line 1443
    move-result-wide v7

    .line 1444
    cmpl-double v1, v5, v7

    .line 1445
    .line 1446
    if-nez v1, :cond_20

    .line 1447
    .line 1448
    double-to-int v1, v5

    .line 1449
    if-ltz v1, :cond_20

    .line 1450
    .line 1451
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 1452
    .line 1453
    .line 1454
    move-result v2

    .line 1455
    if-ge v1, v2, :cond_20

    .line 1456
    .line 1457
    goto :goto_1d

    .line 1458
    :cond_20
    sget-object v1, Lcom/google/android/gms/internal/measurement/n;->y:Lcom/google/android/gms/internal/measurement/e;

    .line 1459
    .line 1460
    goto/16 :goto_22

    .line 1461
    .line 1462
    :pswitch_f
    move-object/from16 v3, p2

    .line 1463
    .line 1464
    move-object/from16 v1, p3

    .line 1465
    .line 1466
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1467
    .line 1468
    .line 1469
    move-result v4

    .line 1470
    if-nez v4, :cond_22

    .line 1471
    .line 1472
    new-instance v4, Ljava/lang/StringBuilder;

    .line 1473
    .line 1474
    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1475
    .line 1476
    .line 1477
    const/4 v7, 0x0

    .line 1478
    :goto_1e
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    .line 1479
    .line 1480
    .line 1481
    move-result v2

    .line 1482
    if-ge v7, v2, :cond_21

    .line 1483
    .line 1484
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1485
    .line 1486
    .line 1487
    move-result-object v2

    .line 1488
    check-cast v2, Lcom/google/android/gms/internal/measurement/n;

    .line 1489
    .line 1490
    invoke-virtual {v3, v2}, Lm2/i;->t(Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    .line 1491
    .line 1492
    .line 1493
    move-result-object v2

    .line 1494
    invoke-interface {v2}, Lcom/google/android/gms/internal/measurement/n;->zzi()Ljava/lang/String;

    .line 1495
    .line 1496
    .line 1497
    move-result-object v2

    .line 1498
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1499
    .line 1500
    .line 1501
    const/4 v5, 0x1

    .line 1502
    add-int/2addr v7, v5

    .line 1503
    goto :goto_1e

    .line 1504
    :cond_21
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1505
    .line 1506
    .line 1507
    move-result-object v1

    .line 1508
    new-instance v2, Lcom/google/android/gms/internal/measurement/q;

    .line 1509
    .line 1510
    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/measurement/q;-><init>(Ljava/lang/String;)V

    .line 1511
    .line 1512
    .line 1513
    goto/16 :goto_13

    .line 1514
    .line 1515
    :cond_22
    :goto_1f
    move-object v1, v0

    .line 1516
    goto :goto_22

    .line 1517
    :pswitch_10
    move-object/from16 v3, p2

    .line 1518
    .line 1519
    move-object/from16 v1, p3

    .line 1520
    .line 1521
    const/4 v5, 0x1

    .line 1522
    invoke-static {v11, v5, v1}, Lcom/google/android/gms/internal/ads/Cw;->U1(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 1523
    .line 1524
    .line 1525
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1526
    .line 1527
    .line 1528
    move-result v4

    .line 1529
    if-nez v4, :cond_23

    .line 1530
    .line 1531
    const/4 v4, 0x0

    .line 1532
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1533
    .line 1534
    .line 1535
    move-result-object v1

    .line 1536
    check-cast v1, Lcom/google/android/gms/internal/measurement/n;

    .line 1537
    .line 1538
    invoke-virtual {v3, v1}, Lm2/i;->t(Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    .line 1539
    .line 1540
    .line 1541
    move-result-object v1

    .line 1542
    invoke-interface {v1}, Lcom/google/android/gms/internal/measurement/n;->zzh()Ljava/lang/Double;

    .line 1543
    .line 1544
    .line 1545
    move-result-object v1

    .line 1546
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    .line 1547
    .line 1548
    .line 1549
    move-result-wide v3

    .line 1550
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/Cw;->r(D)D

    .line 1551
    .line 1552
    .line 1553
    move-result-wide v3

    .line 1554
    double-to-int v7, v3

    .line 1555
    goto :goto_20

    .line 1556
    :cond_23
    const/4 v4, 0x0

    .line 1557
    const/4 v7, 0x0

    .line 1558
    :goto_20
    if-ltz v7, :cond_25

    .line 1559
    .line 1560
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 1561
    .line 1562
    .line 1563
    move-result v1

    .line 1564
    if-lt v7, v1, :cond_24

    .line 1565
    .line 1566
    goto :goto_21

    .line 1567
    :cond_24
    new-instance v1, Lcom/google/android/gms/internal/measurement/q;

    .line 1568
    .line 1569
    invoke-virtual {v2, v7}, Ljava/lang/String;->charAt(I)C

    .line 1570
    .line 1571
    .line 1572
    move-result v2

    .line 1573
    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    .line 1574
    .line 1575
    .line 1576
    move-result-object v2

    .line 1577
    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/measurement/q;-><init>(Ljava/lang/String;)V

    .line 1578
    .line 1579
    .line 1580
    goto :goto_22

    .line 1581
    :cond_25
    :goto_21
    sget-object v1, Lcom/google/android/gms/internal/measurement/n;->z:Lcom/google/android/gms/internal/measurement/q;

    .line 1582
    .line 1583
    :goto_22
    return-object v1

    .line 1584
    nop

    .line 1585
    :sswitch_data_0
    .sparse-switch
        -0x6aaca37f -> :sswitch_10
        -0x69e9ad94 -> :sswitch_f
        -0x57513364 -> :sswitch_e
        -0x5128e1d7 -> :sswitch_d
        -0x50c088ec -> :sswitch_c
        -0x43ce226a -> :sswitch_b
        -0x36059a58 -> :sswitch_a
        -0x2b53be43 -> :sswitch_9
        -0x1bdda92d -> :sswitch_8
        -0x17d0ad49 -> :sswitch_7
        0x367422 -> :sswitch_6
        0x62dd9c5 -> :sswitch_5
        0x6873d92 -> :sswitch_4
        0x6891b1a -> :sswitch_3
        0x1f9f6e51 -> :sswitch_2
        0x413cb2b4 -> :sswitch_1
        0x73d44649 -> :sswitch_0
    .end sparse-switch

    .line 1586
    .line 1587
    .line 1588
    .line 1589
    .line 1590
    .line 1591
    .line 1592
    .line 1593
    .line 1594
    .line 1595
    .line 1596
    .line 1597
    .line 1598
    .line 1599
    .line 1600
    .line 1601
    .line 1602
    .line 1603
    .line 1604
    .line 1605
    .line 1606
    .line 1607
    .line 1608
    .line 1609
    .line 1610
    .line 1611
    .line 1612
    .line 1613
    .line 1614
    .line 1615
    .line 1616
    .line 1617
    .line 1618
    .line 1619
    .line 1620
    .line 1621
    .line 1622
    .line 1623
    .line 1624
    .line 1625
    .line 1626
    .line 1627
    .line 1628
    .line 1629
    .line 1630
    .line 1631
    .line 1632
    .line 1633
    .line 1634
    .line 1635
    .line 1636
    .line 1637
    .line 1638
    .line 1639
    .line 1640
    .line 1641
    .line 1642
    .line 1643
    .line 1644
    .line 1645
    .line 1646
    .line 1647
    .line 1648
    .line 1649
    .line 1650
    .line 1651
    .line 1652
    .line 1653
    .line 1654
    .line 1655
    :pswitch_data_0
    .packed-switch 0x0
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

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "\""

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/q;->G:Ljava/lang/String;

    .line 9
    .line 10
    invoke-static {v0, v2, v1}, La/r;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    return-object v0
.end method

.method public final zzd()Lcom/google/android/gms/internal/measurement/n;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/q;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/q;->G:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/q;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public final zzg()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/q;->G:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    xor-int/lit8 v0, v0, 0x1

    .line 8
    .line 9
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method public final zzh()Ljava/lang/Double;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/q;->G:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    :try_start_0
    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    .line 10
    .line 11
    .line 12
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    return-object v0

    .line 14
    :catch_0
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 15
    .line 16
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    return-object v0

    .line 21
    :cond_0
    const-wide/16 v0, 0x0

    .line 22
    .line 23
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    return-object v0
.end method

.method public final zzi()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/q;->G:Ljava/lang/String;

    return-object v0
.end method

.method public final zzl()Ljava/util/Iterator;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/measurement/p;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/measurement/p;-><init>(Ljava/lang/Object;I)V

    return-object v0
.end method
