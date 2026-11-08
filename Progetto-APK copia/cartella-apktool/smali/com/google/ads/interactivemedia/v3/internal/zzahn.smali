.class public final Lcom/google/ads/interactivemedia/v3/internal/zzahn;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private zza:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzahn;->zza:I

    return-void
.end method


# virtual methods
.method public final zza()I
    .locals 1

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzahn;->zza:I

    return v0
.end method

.method public final zzb(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/ads/interactivemedia/v3/internal/zzahn;
    .locals 5

    .line 1
    iget p3, p0, Lcom/google/ads/interactivemedia/v3/internal/zzahn;->zza:I

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    goto/16 :goto_14

    .line 6
    .line 7
    :cond_0
    if-eq p1, p2, :cond_20

    .line 8
    .line 9
    const/4 p3, -0x1

    .line 10
    if-nez p1, :cond_1

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_1
    const/4 v0, 0x1

    .line 14
    if-nez p2, :cond_2

    .line 15
    .line 16
    const/4 p3, 0x1

    .line 17
    :goto_0
    iput p3, p0, Lcom/google/ads/interactivemedia/v3/internal/zzahn;->zza:I

    .line 18
    .line 19
    return-object p0

    .line 20
    :cond_2
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzahm;->zza(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_1f

    .line 25
    .line 26
    instance-of v1, p1, [J

    .line 27
    .line 28
    const/4 v2, 0x0

    .line 29
    if-eqz v1, :cond_5

    .line 30
    .line 31
    check-cast p1, [J

    .line 32
    .line 33
    check-cast p2, [J

    .line 34
    .line 35
    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzahn;->zza:I

    .line 36
    .line 37
    if-nez v1, :cond_20

    .line 38
    .line 39
    if-eq p1, p2, :cond_20

    .line 40
    .line 41
    array-length v1, p1

    .line 42
    array-length v3, p2

    .line 43
    if-eq v1, v3, :cond_4

    .line 44
    .line 45
    if-ge v1, v3, :cond_3

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_3
    const/4 p3, 0x1

    .line 49
    :goto_1
    iput p3, p0, Lcom/google/ads/interactivemedia/v3/internal/zzahn;->zza:I

    .line 50
    .line 51
    goto/16 :goto_14

    .line 52
    .line 53
    :cond_4
    :goto_2
    array-length p3, p1

    .line 54
    if-ge v2, p3, :cond_20

    .line 55
    .line 56
    iget p3, p0, Lcom/google/ads/interactivemedia/v3/internal/zzahn;->zza:I

    .line 57
    .line 58
    if-nez p3, :cond_20

    .line 59
    .line 60
    aget-wide v0, p1, v2

    .line 61
    .line 62
    aget-wide v3, p2, v2

    .line 63
    .line 64
    invoke-static {v0, v1, v3, v4}, Ljava/lang/Long;->compare(JJ)I

    .line 65
    .line 66
    .line 67
    move-result p3

    .line 68
    iput p3, p0, Lcom/google/ads/interactivemedia/v3/internal/zzahn;->zza:I

    .line 69
    .line 70
    add-int/lit8 v2, v2, 0x1

    .line 71
    .line 72
    goto :goto_2

    .line 73
    :cond_5
    instance-of v1, p1, [I

    .line 74
    .line 75
    if-eqz v1, :cond_8

    .line 76
    .line 77
    check-cast p1, [I

    .line 78
    .line 79
    check-cast p2, [I

    .line 80
    .line 81
    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzahn;->zza:I

    .line 82
    .line 83
    if-nez v1, :cond_20

    .line 84
    .line 85
    if-eq p1, p2, :cond_20

    .line 86
    .line 87
    array-length v1, p1

    .line 88
    array-length v3, p2

    .line 89
    if-eq v1, v3, :cond_7

    .line 90
    .line 91
    if-ge v1, v3, :cond_6

    .line 92
    .line 93
    goto :goto_3

    .line 94
    :cond_6
    const/4 p3, 0x1

    .line 95
    :goto_3
    iput p3, p0, Lcom/google/ads/interactivemedia/v3/internal/zzahn;->zza:I

    .line 96
    .line 97
    goto/16 :goto_14

    .line 98
    .line 99
    :cond_7
    :goto_4
    array-length p3, p1

    .line 100
    if-ge v2, p3, :cond_20

    .line 101
    .line 102
    iget p3, p0, Lcom/google/ads/interactivemedia/v3/internal/zzahn;->zza:I

    .line 103
    .line 104
    if-nez p3, :cond_20

    .line 105
    .line 106
    aget p3, p1, v2

    .line 107
    .line 108
    aget v0, p2, v2

    .line 109
    .line 110
    invoke-static {p3, v0}, Ljava/lang/Integer;->compare(II)I

    .line 111
    .line 112
    .line 113
    move-result p3

    .line 114
    iput p3, p0, Lcom/google/ads/interactivemedia/v3/internal/zzahn;->zza:I

    .line 115
    .line 116
    add-int/lit8 v2, v2, 0x1

    .line 117
    .line 118
    goto :goto_4

    .line 119
    :cond_8
    instance-of v1, p1, [S

    .line 120
    .line 121
    if-eqz v1, :cond_b

    .line 122
    .line 123
    check-cast p1, [S

    .line 124
    .line 125
    check-cast p2, [S

    .line 126
    .line 127
    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzahn;->zza:I

    .line 128
    .line 129
    if-nez v1, :cond_20

    .line 130
    .line 131
    if-eq p1, p2, :cond_20

    .line 132
    .line 133
    array-length v1, p1

    .line 134
    array-length v3, p2

    .line 135
    if-eq v1, v3, :cond_a

    .line 136
    .line 137
    if-ge v1, v3, :cond_9

    .line 138
    .line 139
    goto :goto_5

    .line 140
    :cond_9
    const/4 p3, 0x1

    .line 141
    :goto_5
    iput p3, p0, Lcom/google/ads/interactivemedia/v3/internal/zzahn;->zza:I

    .line 142
    .line 143
    goto/16 :goto_14

    .line 144
    .line 145
    :cond_a
    :goto_6
    array-length p3, p1

    .line 146
    if-ge v2, p3, :cond_20

    .line 147
    .line 148
    iget p3, p0, Lcom/google/ads/interactivemedia/v3/internal/zzahn;->zza:I

    .line 149
    .line 150
    if-nez p3, :cond_20

    .line 151
    .line 152
    aget-short p3, p1, v2

    .line 153
    .line 154
    aget-short v0, p2, v2

    .line 155
    .line 156
    invoke-static {p3, v0}, Ljava/lang/Short;->compare(SS)I

    .line 157
    .line 158
    .line 159
    move-result p3

    .line 160
    iput p3, p0, Lcom/google/ads/interactivemedia/v3/internal/zzahn;->zza:I

    .line 161
    .line 162
    add-int/lit8 v2, v2, 0x1

    .line 163
    .line 164
    goto :goto_6

    .line 165
    :cond_b
    instance-of v1, p1, [C

    .line 166
    .line 167
    if-eqz v1, :cond_e

    .line 168
    .line 169
    check-cast p1, [C

    .line 170
    .line 171
    check-cast p2, [C

    .line 172
    .line 173
    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzahn;->zza:I

    .line 174
    .line 175
    if-nez v1, :cond_20

    .line 176
    .line 177
    if-eq p1, p2, :cond_20

    .line 178
    .line 179
    array-length v1, p1

    .line 180
    array-length v3, p2

    .line 181
    if-eq v1, v3, :cond_d

    .line 182
    .line 183
    if-ge v1, v3, :cond_c

    .line 184
    .line 185
    goto :goto_7

    .line 186
    :cond_c
    const/4 p3, 0x1

    .line 187
    :goto_7
    iput p3, p0, Lcom/google/ads/interactivemedia/v3/internal/zzahn;->zza:I

    .line 188
    .line 189
    goto/16 :goto_14

    .line 190
    .line 191
    :cond_d
    :goto_8
    array-length p3, p1

    .line 192
    if-ge v2, p3, :cond_20

    .line 193
    .line 194
    iget p3, p0, Lcom/google/ads/interactivemedia/v3/internal/zzahn;->zza:I

    .line 195
    .line 196
    if-nez p3, :cond_20

    .line 197
    .line 198
    aget-char p3, p1, v2

    .line 199
    .line 200
    aget-char v0, p2, v2

    .line 201
    .line 202
    invoke-static {p3, v0}, Ljava/lang/Character;->compare(CC)I

    .line 203
    .line 204
    .line 205
    move-result p3

    .line 206
    iput p3, p0, Lcom/google/ads/interactivemedia/v3/internal/zzahn;->zza:I

    .line 207
    .line 208
    add-int/lit8 v2, v2, 0x1

    .line 209
    .line 210
    goto :goto_8

    .line 211
    :cond_e
    instance-of v1, p1, [B

    .line 212
    .line 213
    if-eqz v1, :cond_11

    .line 214
    .line 215
    check-cast p1, [B

    .line 216
    .line 217
    check-cast p2, [B

    .line 218
    .line 219
    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzahn;->zza:I

    .line 220
    .line 221
    if-nez v1, :cond_20

    .line 222
    .line 223
    if-eq p1, p2, :cond_20

    .line 224
    .line 225
    array-length v1, p1

    .line 226
    array-length v3, p2

    .line 227
    if-eq v1, v3, :cond_10

    .line 228
    .line 229
    if-ge v1, v3, :cond_f

    .line 230
    .line 231
    goto :goto_9

    .line 232
    :cond_f
    const/4 p3, 0x1

    .line 233
    :goto_9
    iput p3, p0, Lcom/google/ads/interactivemedia/v3/internal/zzahn;->zza:I

    .line 234
    .line 235
    goto/16 :goto_14

    .line 236
    .line 237
    :cond_10
    :goto_a
    array-length p3, p1

    .line 238
    if-ge v2, p3, :cond_20

    .line 239
    .line 240
    iget p3, p0, Lcom/google/ads/interactivemedia/v3/internal/zzahn;->zza:I

    .line 241
    .line 242
    if-nez p3, :cond_20

    .line 243
    .line 244
    aget-byte p3, p1, v2

    .line 245
    .line 246
    aget-byte v0, p2, v2

    .line 247
    .line 248
    invoke-static {p3, v0}, Ljava/lang/Byte;->compare(BB)I

    .line 249
    .line 250
    .line 251
    move-result p3

    .line 252
    iput p3, p0, Lcom/google/ads/interactivemedia/v3/internal/zzahn;->zza:I

    .line 253
    .line 254
    add-int/lit8 v2, v2, 0x1

    .line 255
    .line 256
    goto :goto_a

    .line 257
    :cond_11
    instance-of v1, p1, [D

    .line 258
    .line 259
    if-eqz v1, :cond_14

    .line 260
    .line 261
    check-cast p1, [D

    .line 262
    .line 263
    check-cast p2, [D

    .line 264
    .line 265
    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzahn;->zza:I

    .line 266
    .line 267
    if-nez v1, :cond_20

    .line 268
    .line 269
    if-eq p1, p2, :cond_20

    .line 270
    .line 271
    array-length v1, p1

    .line 272
    array-length v3, p2

    .line 273
    if-eq v1, v3, :cond_13

    .line 274
    .line 275
    if-ge v1, v3, :cond_12

    .line 276
    .line 277
    goto :goto_b

    .line 278
    :cond_12
    const/4 p3, 0x1

    .line 279
    :goto_b
    iput p3, p0, Lcom/google/ads/interactivemedia/v3/internal/zzahn;->zza:I

    .line 280
    .line 281
    goto/16 :goto_14

    .line 282
    .line 283
    :cond_13
    :goto_c
    array-length p3, p1

    .line 284
    if-ge v2, p3, :cond_20

    .line 285
    .line 286
    iget p3, p0, Lcom/google/ads/interactivemedia/v3/internal/zzahn;->zza:I

    .line 287
    .line 288
    if-nez p3, :cond_20

    .line 289
    .line 290
    aget-wide v0, p1, v2

    .line 291
    .line 292
    aget-wide v3, p2, v2

    .line 293
    .line 294
    invoke-static {v0, v1, v3, v4}, Ljava/lang/Double;->compare(DD)I

    .line 295
    .line 296
    .line 297
    move-result p3

    .line 298
    iput p3, p0, Lcom/google/ads/interactivemedia/v3/internal/zzahn;->zza:I

    .line 299
    .line 300
    add-int/lit8 v2, v2, 0x1

    .line 301
    .line 302
    goto :goto_c

    .line 303
    :cond_14
    instance-of v1, p1, [F

    .line 304
    .line 305
    if-eqz v1, :cond_17

    .line 306
    .line 307
    check-cast p1, [F

    .line 308
    .line 309
    check-cast p2, [F

    .line 310
    .line 311
    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzahn;->zza:I

    .line 312
    .line 313
    if-nez v1, :cond_20

    .line 314
    .line 315
    if-eq p1, p2, :cond_20

    .line 316
    .line 317
    array-length v1, p1

    .line 318
    array-length v3, p2

    .line 319
    if-eq v1, v3, :cond_16

    .line 320
    .line 321
    if-ge v1, v3, :cond_15

    .line 322
    .line 323
    goto :goto_d

    .line 324
    :cond_15
    const/4 p3, 0x1

    .line 325
    :goto_d
    iput p3, p0, Lcom/google/ads/interactivemedia/v3/internal/zzahn;->zza:I

    .line 326
    .line 327
    goto/16 :goto_14

    .line 328
    .line 329
    :cond_16
    :goto_e
    array-length p3, p1

    .line 330
    if-ge v2, p3, :cond_20

    .line 331
    .line 332
    iget p3, p0, Lcom/google/ads/interactivemedia/v3/internal/zzahn;->zza:I

    .line 333
    .line 334
    if-nez p3, :cond_20

    .line 335
    .line 336
    aget p3, p1, v2

    .line 337
    .line 338
    aget v0, p2, v2

    .line 339
    .line 340
    invoke-static {p3, v0}, Ljava/lang/Float;->compare(FF)I

    .line 341
    .line 342
    .line 343
    move-result p3

    .line 344
    iput p3, p0, Lcom/google/ads/interactivemedia/v3/internal/zzahn;->zza:I

    .line 345
    .line 346
    add-int/lit8 v2, v2, 0x1

    .line 347
    .line 348
    goto :goto_e

    .line 349
    :cond_17
    instance-of v1, p1, [Z

    .line 350
    .line 351
    if-eqz v1, :cond_1c

    .line 352
    .line 353
    check-cast p1, [Z

    .line 354
    .line 355
    check-cast p2, [Z

    .line 356
    .line 357
    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzahn;->zza:I

    .line 358
    .line 359
    if-nez v1, :cond_20

    .line 360
    .line 361
    if-eq p1, p2, :cond_20

    .line 362
    .line 363
    array-length v1, p1

    .line 364
    array-length v3, p2

    .line 365
    if-eq v1, v3, :cond_19

    .line 366
    .line 367
    if-ge v1, v3, :cond_18

    .line 368
    .line 369
    goto :goto_f

    .line 370
    :cond_18
    const/4 p3, 0x1

    .line 371
    :goto_f
    iput p3, p0, Lcom/google/ads/interactivemedia/v3/internal/zzahn;->zza:I

    .line 372
    .line 373
    goto :goto_14

    .line 374
    :cond_19
    :goto_10
    array-length v1, p1

    .line 375
    if-ge v2, v1, :cond_20

    .line 376
    .line 377
    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzahn;->zza:I

    .line 378
    .line 379
    if-nez v1, :cond_20

    .line 380
    .line 381
    aget-boolean v1, p1, v2

    .line 382
    .line 383
    aget-boolean v3, p2, v2

    .line 384
    .line 385
    if-ne v1, v3, :cond_1a

    .line 386
    .line 387
    goto :goto_11

    .line 388
    :cond_1a
    if-eqz v1, :cond_1b

    .line 389
    .line 390
    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzahn;->zza:I

    .line 391
    .line 392
    goto :goto_11

    .line 393
    :cond_1b
    iput p3, p0, Lcom/google/ads/interactivemedia/v3/internal/zzahn;->zza:I

    .line 394
    .line 395
    :goto_11
    add-int/lit8 v2, v2, 0x1

    .line 396
    .line 397
    goto :goto_10

    .line 398
    :cond_1c
    check-cast p1, [Ljava/lang/Object;

    .line 399
    .line 400
    check-cast p2, [Ljava/lang/Object;

    .line 401
    .line 402
    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzahn;->zza:I

    .line 403
    .line 404
    if-nez v1, :cond_20

    .line 405
    .line 406
    if-eq p1, p2, :cond_20

    .line 407
    .line 408
    array-length v1, p1

    .line 409
    array-length v3, p2

    .line 410
    if-eq v1, v3, :cond_1e

    .line 411
    .line 412
    if-ge v1, v3, :cond_1d

    .line 413
    .line 414
    goto :goto_12

    .line 415
    :cond_1d
    const/4 p3, 0x1

    .line 416
    :goto_12
    iput p3, p0, Lcom/google/ads/interactivemedia/v3/internal/zzahn;->zza:I

    .line 417
    .line 418
    goto :goto_14

    .line 419
    :cond_1e
    :goto_13
    array-length p3, p1

    .line 420
    if-ge v2, p3, :cond_20

    .line 421
    .line 422
    iget p3, p0, Lcom/google/ads/interactivemedia/v3/internal/zzahn;->zza:I

    .line 423
    .line 424
    if-nez p3, :cond_20

    .line 425
    .line 426
    aget-object p3, p1, v2

    .line 427
    .line 428
    aget-object v0, p2, v2

    .line 429
    .line 430
    const/4 v1, 0x0

    .line 431
    invoke-virtual {p0, p3, v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzahn;->zzb(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/ads/interactivemedia/v3/internal/zzahn;

    .line 432
    .line 433
    .line 434
    add-int/lit8 v2, v2, 0x1

    .line 435
    .line 436
    goto :goto_13

    .line 437
    :cond_1f
    check-cast p1, Ljava/lang/Comparable;

    .line 438
    .line 439
    invoke-interface {p1, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    .line 440
    .line 441
    .line 442
    move-result p1

    .line 443
    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzahn;->zza:I

    .line 444
    .line 445
    :cond_20
    :goto_14
    return-object p0
.end method
