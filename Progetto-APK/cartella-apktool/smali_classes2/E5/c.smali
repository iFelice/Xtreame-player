.class public final LE5/c;
.super LD5/a;
.source "SourceFile"


# static fields
.field public static final k:[I

.field public static final l:[I

.field public static final m:[I

.field public static final n:[[I

.field public static final o:[[I

.field public static final p:[[I


# instance fields
.field public final g:Ljava/util/ArrayList;

.field public final h:Ljava/util/ArrayList;

.field public final i:[I

.field public j:Z


# direct methods
.method static constructor <clinit>()V
    .locals 31

    .line 1
    const/4 v0, 0x7

    .line 2
    const/4 v1, 0x5

    .line 3
    const/4 v2, 0x4

    .line 4
    const/4 v3, 0x3

    .line 5
    const/4 v4, 0x1

    .line 6
    filled-new-array {v0, v1, v2, v3, v4}, [I

    .line 7
    .line 8
    .line 9
    move-result-object v5

    .line 10
    sput-object v5, LE5/c;->k:[I

    .line 11
    .line 12
    const/16 v5, 0x68

    .line 13
    .line 14
    const/16 v6, 0xcc

    .line 15
    .line 16
    const/16 v7, 0x14

    .line 17
    .line 18
    const/16 v8, 0x34

    .line 19
    .line 20
    filled-new-array {v2, v7, v8, v5, v6}, [I

    .line 21
    .line 22
    .line 23
    move-result-object v5

    .line 24
    sput-object v5, LE5/c;->l:[I

    .line 25
    .line 26
    const/16 v5, 0xb84

    .line 27
    .line 28
    const/16 v6, 0xf94

    .line 29
    .line 30
    const/4 v8, 0x0

    .line 31
    const/16 v9, 0x15c

    .line 32
    .line 33
    const/16 v10, 0x56c

    .line 34
    .line 35
    filled-new-array {v8, v9, v10, v5, v6}, [I

    .line 36
    .line 37
    .line 38
    move-result-object v5

    .line 39
    sput-object v5, LE5/c;->m:[I

    .line 40
    .line 41
    const/16 v5, 0x8

    .line 42
    .line 43
    filled-new-array {v4, v5, v2, v4}, [I

    .line 44
    .line 45
    .line 46
    move-result-object v6

    .line 47
    const/4 v9, 0x6

    .line 48
    filled-new-array {v3, v9, v2, v4}, [I

    .line 49
    .line 50
    .line 51
    move-result-object v10

    .line 52
    filled-new-array {v3, v2, v9, v4}, [I

    .line 53
    .line 54
    .line 55
    move-result-object v11

    .line 56
    const/4 v12, 0x2

    .line 57
    filled-new-array {v3, v12, v5, v4}, [I

    .line 58
    .line 59
    .line 60
    move-result-object v13

    .line 61
    filled-new-array {v12, v9, v1, v4}, [I

    .line 62
    .line 63
    .line 64
    move-result-object v14

    .line 65
    const/16 v15, 0x9

    .line 66
    .line 67
    filled-new-array {v12, v12, v15, v4}, [I

    .line 68
    .line 69
    .line 70
    move-result-object v16

    .line 71
    new-array v7, v9, [[I

    .line 72
    .line 73
    aput-object v6, v7, v8

    .line 74
    .line 75
    aput-object v10, v7, v4

    .line 76
    .line 77
    aput-object v11, v7, v12

    .line 78
    .line 79
    aput-object v13, v7, v3

    .line 80
    .line 81
    aput-object v14, v7, v2

    .line 82
    .line 83
    aput-object v16, v7, v1

    .line 84
    .line 85
    sput-object v7, LE5/c;->n:[[I

    .line 86
    .line 87
    new-array v6, v5, [I

    .line 88
    .line 89
    fill-array-data v6, :array_0

    .line 90
    .line 91
    .line 92
    new-array v10, v5, [I

    .line 93
    .line 94
    fill-array-data v10, :array_1

    .line 95
    .line 96
    .line 97
    new-array v13, v5, [I

    .line 98
    .line 99
    fill-array-data v13, :array_2

    .line 100
    .line 101
    .line 102
    new-array v7, v5, [I

    .line 103
    .line 104
    fill-array-data v7, :array_3

    .line 105
    .line 106
    .line 107
    new-array v14, v5, [I

    .line 108
    .line 109
    fill-array-data v14, :array_4

    .line 110
    .line 111
    .line 112
    const/16 v17, 0xc

    .line 113
    .line 114
    new-array v11, v5, [I

    .line 115
    .line 116
    fill-array-data v11, :array_5

    .line 117
    .line 118
    .line 119
    new-array v15, v5, [I

    .line 120
    .line 121
    fill-array-data v15, :array_6

    .line 122
    .line 123
    .line 124
    new-array v0, v5, [I

    .line 125
    .line 126
    fill-array-data v0, :array_7

    .line 127
    .line 128
    .line 129
    new-array v9, v5, [I

    .line 130
    .line 131
    fill-array-data v9, :array_8

    .line 132
    .line 133
    .line 134
    const/16 v18, 0x11

    .line 135
    .line 136
    new-array v1, v5, [I

    .line 137
    .line 138
    fill-array-data v1, :array_9

    .line 139
    .line 140
    .line 141
    new-array v2, v5, [I

    .line 142
    .line 143
    fill-array-data v2, :array_a

    .line 144
    .line 145
    .line 146
    const/16 v19, 0x10

    .line 147
    .line 148
    new-array v3, v5, [I

    .line 149
    .line 150
    fill-array-data v3, :array_b

    .line 151
    .line 152
    .line 153
    new-array v12, v5, [I

    .line 154
    .line 155
    fill-array-data v12, :array_c

    .line 156
    .line 157
    .line 158
    new-array v4, v5, [I

    .line 159
    .line 160
    fill-array-data v4, :array_d

    .line 161
    .line 162
    .line 163
    new-array v8, v5, [I

    .line 164
    .line 165
    fill-array-data v8, :array_e

    .line 166
    .line 167
    .line 168
    const/16 v21, 0x16

    .line 169
    .line 170
    move-object/from16 v22, v8

    .line 171
    .line 172
    new-array v8, v5, [I

    .line 173
    .line 174
    fill-array-data v8, :array_f

    .line 175
    .line 176
    .line 177
    const/16 v23, 0x12

    .line 178
    .line 179
    move-object/from16 v24, v8

    .line 180
    .line 181
    new-array v8, v5, [I

    .line 182
    .line 183
    fill-array-data v8, :array_10

    .line 184
    .line 185
    .line 186
    move-object/from16 v25, v8

    .line 187
    .line 188
    new-array v8, v5, [I

    .line 189
    .line 190
    fill-array-data v8, :array_11

    .line 191
    .line 192
    .line 193
    move-object/from16 v26, v8

    .line 194
    .line 195
    new-array v8, v5, [I

    .line 196
    .line 197
    fill-array-data v8, :array_12

    .line 198
    .line 199
    .line 200
    move-object/from16 v27, v8

    .line 201
    .line 202
    new-array v8, v5, [I

    .line 203
    .line 204
    fill-array-data v8, :array_13

    .line 205
    .line 206
    .line 207
    move-object/from16 v28, v8

    .line 208
    .line 209
    new-array v8, v5, [I

    .line 210
    .line 211
    fill-array-data v8, :array_14

    .line 212
    .line 213
    .line 214
    move-object/from16 v29, v8

    .line 215
    .line 216
    new-array v8, v5, [I

    .line 217
    .line 218
    fill-array-data v8, :array_15

    .line 219
    .line 220
    .line 221
    move-object/from16 v30, v8

    .line 222
    .line 223
    new-array v8, v5, [I

    .line 224
    .line 225
    fill-array-data v8, :array_16

    .line 226
    .line 227
    .line 228
    const/16 v5, 0x17

    .line 229
    .line 230
    new-array v5, v5, [[I

    .line 231
    .line 232
    const/16 v20, 0x0

    .line 233
    .line 234
    aput-object v6, v5, v20

    .line 235
    .line 236
    const/4 v6, 0x1

    .line 237
    aput-object v10, v5, v6

    .line 238
    .line 239
    const/4 v6, 0x2

    .line 240
    aput-object v13, v5, v6

    .line 241
    .line 242
    const/4 v6, 0x3

    .line 243
    aput-object v7, v5, v6

    .line 244
    .line 245
    const/4 v6, 0x4

    .line 246
    aput-object v14, v5, v6

    .line 247
    .line 248
    const/4 v6, 0x5

    .line 249
    aput-object v11, v5, v6

    .line 250
    .line 251
    const/4 v6, 0x6

    .line 252
    aput-object v15, v5, v6

    .line 253
    .line 254
    const/4 v6, 0x7

    .line 255
    aput-object v0, v5, v6

    .line 256
    .line 257
    const/16 v0, 0x8

    .line 258
    .line 259
    aput-object v9, v5, v0

    .line 260
    .line 261
    const/16 v0, 0x9

    .line 262
    .line 263
    aput-object v1, v5, v0

    .line 264
    .line 265
    const/16 v0, 0xa

    .line 266
    .line 267
    aput-object v2, v5, v0

    .line 268
    .line 269
    const/16 v0, 0xb

    .line 270
    .line 271
    aput-object v3, v5, v0

    .line 272
    .line 273
    aput-object v12, v5, v17

    .line 274
    .line 275
    const/16 v0, 0xd

    .line 276
    .line 277
    aput-object v4, v5, v0

    .line 278
    .line 279
    const/16 v0, 0xe

    .line 280
    .line 281
    aput-object v22, v5, v0

    .line 282
    .line 283
    const/16 v0, 0xf

    .line 284
    .line 285
    aput-object v24, v5, v0

    .line 286
    .line 287
    aput-object v25, v5, v19

    .line 288
    .line 289
    aput-object v26, v5, v18

    .line 290
    .line 291
    aput-object v27, v5, v23

    .line 292
    .line 293
    const/16 v0, 0x13

    .line 294
    .line 295
    aput-object v28, v5, v0

    .line 296
    .line 297
    const/16 v0, 0x14

    .line 298
    .line 299
    aput-object v29, v5, v0

    .line 300
    .line 301
    const/16 v0, 0x15

    .line 302
    .line 303
    aput-object v30, v5, v0

    .line 304
    .line 305
    aput-object v8, v5, v21

    .line 306
    .line 307
    sput-object v5, LE5/c;->o:[[I

    .line 308
    .line 309
    const/4 v0, 0x0

    .line 310
    filled-new-array {v0, v0}, [I

    .line 311
    .line 312
    .line 313
    move-result-object v1

    .line 314
    const/4 v2, 0x1

    .line 315
    filled-new-array {v0, v2, v2}, [I

    .line 316
    .line 317
    .line 318
    move-result-object v3

    .line 319
    const/4 v4, 0x3

    .line 320
    const/4 v5, 0x2

    .line 321
    filled-new-array {v0, v5, v2, v4}, [I

    .line 322
    .line 323
    .line 324
    move-result-object v6

    .line 325
    const/4 v7, 0x4

    .line 326
    filled-new-array {v0, v7, v2, v4, v5}, [I

    .line 327
    .line 328
    .line 329
    move-result-object v8

    .line 330
    const/4 v0, 0x6

    .line 331
    new-array v2, v0, [I

    .line 332
    .line 333
    fill-array-data v2, :array_17

    .line 334
    .line 335
    .line 336
    const/4 v0, 0x7

    .line 337
    new-array v4, v0, [I

    .line 338
    .line 339
    fill-array-data v4, :array_18

    .line 340
    .line 341
    .line 342
    const/16 v0, 0x8

    .line 343
    .line 344
    new-array v5, v0, [I

    .line 345
    .line 346
    fill-array-data v5, :array_19

    .line 347
    .line 348
    .line 349
    const/16 v0, 0x9

    .line 350
    .line 351
    new-array v7, v0, [I

    .line 352
    .line 353
    fill-array-data v7, :array_1a

    .line 354
    .line 355
    .line 356
    const/16 v0, 0xa

    .line 357
    .line 358
    new-array v9, v0, [I

    .line 359
    .line 360
    fill-array-data v9, :array_1b

    .line 361
    .line 362
    .line 363
    const/16 v10, 0xb

    .line 364
    .line 365
    new-array v10, v10, [I

    .line 366
    .line 367
    fill-array-data v10, :array_1c

    .line 368
    .line 369
    .line 370
    new-array v0, v0, [[I

    .line 371
    .line 372
    const/4 v11, 0x0

    .line 373
    aput-object v1, v0, v11

    .line 374
    .line 375
    const/4 v1, 0x1

    .line 376
    aput-object v3, v0, v1

    .line 377
    .line 378
    const/4 v1, 0x2

    .line 379
    aput-object v6, v0, v1

    .line 380
    .line 381
    const/4 v1, 0x3

    .line 382
    aput-object v8, v0, v1

    .line 383
    .line 384
    const/4 v1, 0x4

    .line 385
    aput-object v2, v0, v1

    .line 386
    .line 387
    const/4 v1, 0x5

    .line 388
    aput-object v4, v0, v1

    .line 389
    .line 390
    const/4 v1, 0x6

    .line 391
    aput-object v5, v0, v1

    .line 392
    .line 393
    const/4 v1, 0x7

    .line 394
    aput-object v7, v0, v1

    .line 395
    .line 396
    const/16 v1, 0x8

    .line 397
    .line 398
    aput-object v9, v0, v1

    .line 399
    .line 400
    const/16 v1, 0x9

    .line 401
    .line 402
    aput-object v10, v0, v1

    .line 403
    .line 404
    sput-object v0, LE5/c;->p:[[I

    .line 405
    .line 406
    return-void

    .line 407
    :array_0
    .array-data 4
        0x1
        0x3
        0x9
        0x1b
        0x51
        0x20
        0x60
        0x4d
    .end array-data

    .line 408
    .line 409
    .line 410
    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
    .line 418
    .line 419
    .line 420
    .line 421
    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    .line 427
    :array_1
    .array-data 4
        0x14
        0x3c
        0xb4
        0x76
        0x8f
        0x7
        0x15
        0x3f
    .end array-data

    .line 428
    .line 429
    .line 430
    .line 431
    .line 432
    .line 433
    .line 434
    .line 435
    .line 436
    .line 437
    .line 438
    .line 439
    .line 440
    .line 441
    .line 442
    .line 443
    .line 444
    .line 445
    .line 446
    .line 447
    :array_2
    .array-data 4
        0xbd
        0x91
        0xd
        0x27
        0x75
        0x8c
        0xd1
        0xcd
    .end array-data

    .line 448
    .line 449
    .line 450
    .line 451
    .line 452
    .line 453
    .line 454
    .line 455
    .line 456
    .line 457
    .line 458
    .line 459
    :array_3
    .array-data 4
        0xc1
        0x9d
        0x31
        0x93
        0x13
        0x39
        0xab
        0x5b
    .end array-data

    :array_4
    .array-data 4
        0x3e
        0xba
        0x88
        0xc5
        0xa9
        0x55
        0x2c
        0x84
    .end array-data

    :array_5
    .array-data 4
        0xb9
        0x85
        0xbc
        0x8e
        0x4
        0xc
        0x24
        0x6c
    .end array-data

    :array_6
    .array-data 4
        0x71
        0x80
        0xad
        0x61
        0x50
        0x1d
        0x57
        0x32
    .end array-data

    :array_7
    .array-data 4
        0x96
        0x1c
        0x54
        0x29
        0x7b
        0x9e
        0x34
        0x9c
    .end array-data

    :array_8
    .array-data 4
        0x2e
        0x8a
        0xcb
        0xbb
        0x8b
        0xce
        0xc4
        0xa6
    .end array-data

    :array_9
    .array-data 4
        0x4c
        0x11
        0x33
        0x99
        0x25
        0x6f
        0x7a
        0x9b
    .end array-data

    :array_a
    .array-data 4
        0x2b
        0x81
        0xb0
        0x6a
        0x6b
        0x6e
        0x77
        0x92
    .end array-data

    :array_b
    .array-data 4
        0x10
        0x30
        0x90
        0xa
        0x1e
        0x5a
        0x3b
        0xb1
    .end array-data

    :array_c
    .array-data 4
        0x6d
        0x74
        0x89
        0xc8
        0xb2
        0x70
        0x7d
        0xa4
    .end array-data

    :array_d
    .array-data 4
        0x46
        0xd2
        0xd0
        0xca
        0xb8
        0x82
        0xb3
        0x73
    .end array-data

    :array_e
    .array-data 4
        0x86
        0xbf
        0x97
        0x1f
        0x5d
        0x44
        0xcc
        0xbe
    .end array-data

    :array_f
    .array-data 4
        0x94
        0x16
        0x42
        0xc6
        0xac
        0x5e
        0x47
        0x2
    .end array-data

    :array_10
    .array-data 4
        0x6
        0x12
        0x36
        0xa2
        0x40
        0xc0
        0x9a
        0x28
    .end array-data

    :array_11
    .array-data 4
        0x78
        0x95
        0x19
        0x4b
        0xe
        0x2a
        0x7e
        0xa7
    .end array-data

    :array_12
    .array-data 4
        0x4f
        0x1a
        0x4e
        0x17
        0x45
        0xcf
        0xc7
        0xaf
    .end array-data

    :array_13
    .array-data 4
        0x67
        0x62
        0x53
        0x26
        0x72
        0x83
        0xb6
        0x7c
    .end array-data

    :array_14
    .array-data 4
        0xa1
        0x3d
        0xb7
        0x7f
        0xaa
        0x58
        0x35
        0x9f
    .end array-data

    :array_15
    .array-data 4
        0x37
        0xa5
        0x49
        0x8
        0x18
        0x48
        0x5
        0xf
    .end array-data

    :array_16
    .array-data 4
        0x2d
        0x87
        0xc2
        0xa0
        0x3a
        0xae
        0x64
        0x59
    .end array-data

    :array_17
    .array-data 4
        0x0
        0x4
        0x1
        0x3
        0x3
        0x5
    .end array-data

    :array_18
    .array-data 4
        0x0
        0x4
        0x1
        0x3
        0x4
        0x5
        0x5
    .end array-data

    :array_19
    .array-data 4
        0x0
        0x0
        0x1
        0x1
        0x2
        0x2
        0x3
        0x3
    .end array-data

    :array_1a
    .array-data 4
        0x0
        0x0
        0x1
        0x1
        0x2
        0x2
        0x3
        0x4
        0x4
    .end array-data

    :array_1b
    .array-data 4
        0x0
        0x0
        0x1
        0x1
        0x2
        0x2
        0x3
        0x4
        0x5
        0x5
    .end array-data

    :array_1c
    .array-data 4
        0x0
        0x0
        0x1
        0x1
        0x2
        0x3
        0x3
        0x4
        0x4
        0x5
        0x5
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, LD5/a;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    const/16 v1, 0xb

    .line 7
    .line 8
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, LE5/c;->g:Ljava/util/ArrayList;

    .line 12
    .line 13
    new-instance v0, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, LE5/c;->h:Ljava/util/ArrayList;

    .line 19
    .line 20
    const/4 v0, 0x2

    .line 21
    new-array v0, v0, [I

    .line 22
    .line 23
    iput-object v0, p0, LE5/c;->i:[I

    .line 24
    .line 25
    return-void
.end method

.method public static o(Ljava/util/List;)Lq5/m;
    .locals 13

    .line 1
    const/4 v0, 0x4

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x2

    .line 4
    const/4 v3, 0x1

    .line 5
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result v4

    .line 9
    shl-int/2addr v4, v3

    .line 10
    add-int/lit8 v5, v4, -0x1

    .line 11
    .line 12
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 13
    .line 14
    .line 15
    move-result v6

    .line 16
    sub-int/2addr v6, v3

    .line 17
    invoke-interface {p0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v6

    .line 21
    check-cast v6, LE5/a;

    .line 22
    .line 23
    iget-object v6, v6, LE5/a;->b:LD5/b;

    .line 24
    .line 25
    if-nez v6, :cond_0

    .line 26
    .line 27
    add-int/lit8 v5, v4, -0x2

    .line 28
    .line 29
    :cond_0
    const/16 v4, 0xc

    .line 30
    .line 31
    mul-int/lit8 v5, v5, 0xc

    .line 32
    .line 33
    new-instance v6, Lw5/a;

    .line 34
    .line 35
    invoke-direct {v6, v5}, Lw5/a;-><init>(I)V

    .line 36
    .line 37
    .line 38
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v5

    .line 42
    check-cast v5, LE5/a;

    .line 43
    .line 44
    iget-object v5, v5, LE5/a;->b:LD5/b;

    .line 45
    .line 46
    iget v5, v5, LD5/b;->a:I

    .line 47
    .line 48
    const/16 v7, 0xb

    .line 49
    .line 50
    const/16 v8, 0xb

    .line 51
    .line 52
    const/4 v9, 0x0

    .line 53
    :goto_0
    if-ltz v8, :cond_2

    .line 54
    .line 55
    shl-int v10, v3, v8

    .line 56
    .line 57
    and-int/2addr v10, v5

    .line 58
    if-eqz v10, :cond_1

    .line 59
    .line 60
    invoke-virtual {v6, v9}, Lw5/a;->j(I)V

    .line 61
    .line 62
    .line 63
    :cond_1
    add-int/2addr v9, v3

    .line 64
    add-int/lit8 v8, v8, -0x1

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_2
    const/4 v5, 0x1

    .line 68
    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 69
    .line 70
    .line 71
    move-result v8

    .line 72
    if-ge v5, v8, :cond_7

    .line 73
    .line 74
    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v8

    .line 78
    check-cast v8, LE5/a;

    .line 79
    .line 80
    iget-object v10, v8, LE5/a;->a:LD5/b;

    .line 81
    .line 82
    iget v10, v10, LD5/b;->a:I

    .line 83
    .line 84
    const/16 v11, 0xb

    .line 85
    .line 86
    :goto_2
    if-ltz v11, :cond_4

    .line 87
    .line 88
    shl-int v12, v3, v11

    .line 89
    .line 90
    and-int/2addr v12, v10

    .line 91
    if-eqz v12, :cond_3

    .line 92
    .line 93
    invoke-virtual {v6, v9}, Lw5/a;->j(I)V

    .line 94
    .line 95
    .line 96
    :cond_3
    add-int/2addr v9, v3

    .line 97
    add-int/lit8 v11, v11, -0x1

    .line 98
    .line 99
    goto :goto_2

    .line 100
    :cond_4
    iget-object v8, v8, LE5/a;->b:LD5/b;

    .line 101
    .line 102
    if-eqz v8, :cond_6

    .line 103
    .line 104
    const/16 v10, 0xb

    .line 105
    .line 106
    :goto_3
    if-ltz v10, :cond_6

    .line 107
    .line 108
    shl-int v11, v3, v10

    .line 109
    .line 110
    iget v12, v8, LD5/b;->a:I

    .line 111
    .line 112
    and-int/2addr v11, v12

    .line 113
    if-eqz v11, :cond_5

    .line 114
    .line 115
    invoke-virtual {v6, v9}, Lw5/a;->j(I)V

    .line 116
    .line 117
    .line 118
    :cond_5
    add-int/2addr v9, v3

    .line 119
    add-int/lit8 v10, v10, -0x1

    .line 120
    .line 121
    goto :goto_3

    .line 122
    :cond_6
    add-int/2addr v5, v3

    .line 123
    goto :goto_1

    .line 124
    :cond_7
    invoke-virtual {v6, v3}, Lw5/a;->d(I)Z

    .line 125
    .line 126
    .line 127
    move-result v5

    .line 128
    if-eqz v5, :cond_8

    .line 129
    .line 130
    new-instance v4, LF5/b;

    .line 131
    .line 132
    invoke-direct {v4, v2, v6}, LF5/b;-><init>(ILw5/a;)V

    .line 133
    .line 134
    .line 135
    goto/16 :goto_4

    .line 136
    .line 137
    :cond_8
    invoke-virtual {v6, v2}, Lw5/a;->d(I)Z

    .line 138
    .line 139
    .line 140
    move-result v5

    .line 141
    if-nez v5, :cond_9

    .line 142
    .line 143
    new-instance v4, LF5/g;

    .line 144
    .line 145
    invoke-direct {v4, v6}, Lf/H;-><init>(Lw5/a;)V

    .line 146
    .line 147
    .line 148
    goto/16 :goto_4

    .line 149
    .line 150
    :cond_9
    invoke-static {v3, v0, v6}, Lcom/google/android/gms/internal/ads/bD;->g(IILw5/a;)I

    .line 151
    .line 152
    .line 153
    move-result v5

    .line 154
    if-eq v5, v0, :cond_d

    .line 155
    .line 156
    const/4 v7, 0x5

    .line 157
    if-eq v5, v7, :cond_c

    .line 158
    .line 159
    invoke-static {v3, v7, v6}, Lcom/google/android/gms/internal/ads/bD;->g(IILw5/a;)I

    .line 160
    .line 161
    .line 162
    move-result v5

    .line 163
    if-eq v5, v4, :cond_b

    .line 164
    .line 165
    const/16 v4, 0xd

    .line 166
    .line 167
    if-eq v5, v4, :cond_a

    .line 168
    .line 169
    const/4 v4, 0x7

    .line 170
    invoke-static {v3, v4, v6}, Lcom/google/android/gms/internal/ads/bD;->g(IILw5/a;)I

    .line 171
    .line 172
    .line 173
    move-result v4

    .line 174
    const-string v5, "11"

    .line 175
    .line 176
    const-string v7, "13"

    .line 177
    .line 178
    const-string v8, "15"

    .line 179
    .line 180
    const-string v9, "17"

    .line 181
    .line 182
    const-string v10, "310"

    .line 183
    .line 184
    const-string v11, "320"

    .line 185
    .line 186
    packed-switch v4, :pswitch_data_0

    .line 187
    .line 188
    .line 189
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 190
    .line 191
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    const-string v1, "unknown decoder: "

    .line 196
    .line 197
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v0

    .line 201
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    throw p0

    .line 205
    :pswitch_0
    new-instance v4, LF5/c;

    .line 206
    .line 207
    invoke-direct {v4, v6, v11, v9}, LF5/c;-><init>(Lw5/a;Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    goto :goto_4

    .line 211
    :pswitch_1
    new-instance v4, LF5/c;

    .line 212
    .line 213
    invoke-direct {v4, v6, v10, v9}, LF5/c;-><init>(Lw5/a;Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    goto :goto_4

    .line 217
    :pswitch_2
    new-instance v4, LF5/c;

    .line 218
    .line 219
    invoke-direct {v4, v6, v11, v8}, LF5/c;-><init>(Lw5/a;Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    .line 221
    .line 222
    goto :goto_4

    .line 223
    :pswitch_3
    new-instance v4, LF5/c;

    .line 224
    .line 225
    invoke-direct {v4, v6, v10, v8}, LF5/c;-><init>(Lw5/a;Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    goto :goto_4

    .line 229
    :pswitch_4
    new-instance v4, LF5/c;

    .line 230
    .line 231
    invoke-direct {v4, v6, v11, v7}, LF5/c;-><init>(Lw5/a;Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    .line 233
    .line 234
    goto :goto_4

    .line 235
    :pswitch_5
    new-instance v4, LF5/c;

    .line 236
    .line 237
    invoke-direct {v4, v6, v10, v7}, LF5/c;-><init>(Lw5/a;Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    .line 239
    .line 240
    goto :goto_4

    .line 241
    :pswitch_6
    new-instance v4, LF5/c;

    .line 242
    .line 243
    invoke-direct {v4, v6, v11, v5}, LF5/c;-><init>(Lw5/a;Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    .line 245
    .line 246
    goto :goto_4

    .line 247
    :pswitch_7
    new-instance v4, LF5/c;

    .line 248
    .line 249
    invoke-direct {v4, v6, v10, v5}, LF5/c;-><init>(Lw5/a;Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    .line 251
    .line 252
    goto :goto_4

    .line 253
    :cond_a
    new-instance v4, LF5/b;

    .line 254
    .line 255
    invoke-direct {v4, v3, v6}, LF5/b;-><init>(ILw5/a;)V

    .line 256
    .line 257
    .line 258
    goto :goto_4

    .line 259
    :cond_b
    new-instance v4, LF5/b;

    .line 260
    .line 261
    invoke-direct {v4, v1, v6}, LF5/b;-><init>(ILw5/a;)V

    .line 262
    .line 263
    .line 264
    goto :goto_4

    .line 265
    :cond_c
    new-instance v4, LF5/a;

    .line 266
    .line 267
    invoke-direct {v4, v3, v6}, LF5/a;-><init>(ILw5/a;)V

    .line 268
    .line 269
    .line 270
    goto :goto_4

    .line 271
    :cond_d
    new-instance v4, LF5/a;

    .line 272
    .line 273
    invoke-direct {v4, v1, v6}, LF5/a;-><init>(ILw5/a;)V

    .line 274
    .line 275
    .line 276
    :goto_4
    invoke-virtual {v4}, Lf/H;->i()Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object v4

    .line 280
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 281
    .line 282
    .line 283
    move-result-object v5

    .line 284
    check-cast v5, LE5/a;

    .line 285
    .line 286
    iget-object v5, v5, LE5/a;->c:LD5/c;

    .line 287
    .line 288
    iget-object v5, v5, LD5/c;->c:[Lq5/o;

    .line 289
    .line 290
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 291
    .line 292
    .line 293
    move-result v6

    .line 294
    sub-int/2addr v6, v3

    .line 295
    invoke-interface {p0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 296
    .line 297
    .line 298
    move-result-object p0

    .line 299
    check-cast p0, LE5/a;

    .line 300
    .line 301
    iget-object p0, p0, LE5/a;->c:LD5/c;

    .line 302
    .line 303
    iget-object p0, p0, LD5/c;->c:[Lq5/o;

    .line 304
    .line 305
    new-instance v6, Lq5/m;

    .line 306
    .line 307
    aget-object v7, v5, v1

    .line 308
    .line 309
    aget-object v5, v5, v3

    .line 310
    .line 311
    aget-object v8, p0, v1

    .line 312
    .line 313
    aget-object p0, p0, v3

    .line 314
    .line 315
    new-array v0, v0, [Lq5/o;

    .line 316
    .line 317
    aput-object v7, v0, v1

    .line 318
    .line 319
    aput-object v5, v0, v3

    .line 320
    .line 321
    aput-object v8, v0, v2

    .line 322
    .line 323
    const/4 v1, 0x3

    .line 324
    aput-object p0, v0, v1

    .line 325
    .line 326
    sget-object p0, Lq5/a;->T:Lq5/a;

    .line 327
    .line 328
    const/4 v1, 0x0

    .line 329
    invoke-direct {v6, v4, v1, v0, p0}, Lq5/m;-><init>(Ljava/lang/String;[B[Lq5/o;Lq5/a;)V

    .line 330
    .line 331
    .line 332
    return-object v6

    .line 333
    :pswitch_data_0
    .packed-switch 0x38
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
.method public final a()V
    .locals 1

    .line 1
    iget-object v0, p0, LE5/c;->g:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, LE5/c;->h:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final d(ILw5/a;Ljava/util/Map;)Lq5/m;
    .locals 1

    .line 1
    iget-object p3, p0, LE5/c;->g:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {p3}, Ljava/util/ArrayList;->clear()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, LE5/c;->j:Z

    .line 8
    .line 9
    :try_start_0
    invoke-virtual {p0, p1, p2}, LE5/c;->q(ILw5/a;)Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-static {v0}, LE5/c;->o(Ljava/util/List;)Lq5/m;

    .line 14
    .line 15
    .line 16
    move-result-object p1
    :try_end_0
    .catch Lq5/i; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    return-object p1

    .line 18
    :catch_0
    invoke-virtual {p3}, Ljava/util/ArrayList;->clear()V

    .line 19
    .line 20
    .line 21
    const/4 p3, 0x1

    .line 22
    iput-boolean p3, p0, LE5/c;->j:Z

    .line 23
    .line 24
    invoke-virtual {p0, p1, p2}, LE5/c;->q(ILw5/a;)Ljava/util/List;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-static {p1}, LE5/c;->o(Ljava/util/List;)Lq5/m;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    return-object p1
.end method

.method public final l()Z
    .locals 9

    .line 1
    iget-object v0, p0, LE5/c;->g:Ljava/util/ArrayList;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v2

    .line 8
    check-cast v2, LE5/a;

    .line 9
    .line 10
    iget-object v3, v2, LE5/a;->a:LD5/b;

    .line 11
    .line 12
    iget-object v2, v2, LE5/a;->b:LD5/b;

    .line 13
    .line 14
    if-nez v2, :cond_0

    .line 15
    .line 16
    return v1

    .line 17
    :cond_0
    const/4 v4, 0x2

    .line 18
    const/4 v5, 0x1

    .line 19
    iget v2, v2, LD5/b;->b:I

    .line 20
    .line 21
    const/4 v6, 0x1

    .line 22
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 23
    .line 24
    .line 25
    move-result v7

    .line 26
    if-ge v6, v7, :cond_2

    .line 27
    .line 28
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v7

    .line 32
    check-cast v7, LE5/a;

    .line 33
    .line 34
    iget-object v8, v7, LE5/a;->a:LD5/b;

    .line 35
    .line 36
    iget v8, v8, LD5/b;->b:I

    .line 37
    .line 38
    add-int/2addr v2, v8

    .line 39
    add-int/lit8 v8, v4, 0x1

    .line 40
    .line 41
    iget-object v7, v7, LE5/a;->b:LD5/b;

    .line 42
    .line 43
    if-eqz v7, :cond_1

    .line 44
    .line 45
    iget v7, v7, LD5/b;->b:I

    .line 46
    .line 47
    add-int/2addr v2, v7

    .line 48
    add-int/lit8 v4, v4, 0x2

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_1
    move v4, v8

    .line 52
    :goto_1
    add-int/lit8 v6, v6, 0x1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_2
    rem-int/lit16 v2, v2, 0xd3

    .line 56
    .line 57
    add-int/lit8 v4, v4, -0x4

    .line 58
    .line 59
    mul-int/lit16 v4, v4, 0xd3

    .line 60
    .line 61
    add-int/2addr v4, v2

    .line 62
    iget v0, v3, LD5/b;->a:I

    .line 63
    .line 64
    if-ne v4, v0, :cond_3

    .line 65
    .line 66
    return v5

    .line 67
    :cond_3
    return v1
.end method

.method public final m(ILjava/util/ArrayList;)Ljava/util/List;
    .locals 9

    .line 1
    :goto_0
    iget-object v0, p0, LE5/c;->h:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-ge p1, v1, :cond_6

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, LE5/b;

    .line 14
    .line 15
    iget-object v1, p0, LE5/c;->g:Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    if-eqz v3, :cond_0

    .line 29
    .line 30
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    check-cast v3, LE5/b;

    .line 35
    .line 36
    iget-object v3, v3, LE5/b;->a:Ljava/util/ArrayList;

    .line 37
    .line 38
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 39
    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_0
    iget-object v2, v0, LE5/b;->a:Ljava/util/ArrayList;

    .line 43
    .line 44
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 45
    .line 46
    .line 47
    sget-object v2, LE5/c;->p:[[I

    .line 48
    .line 49
    const/4 v3, 0x0

    .line 50
    const/4 v4, 0x0

    .line 51
    :goto_2
    const/16 v5, 0xa

    .line 52
    .line 53
    if-ge v4, v5, :cond_5

    .line 54
    .line 55
    aget-object v5, v2, v4

    .line 56
    .line 57
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 58
    .line 59
    .line 60
    move-result v6

    .line 61
    array-length v7, v5

    .line 62
    if-gt v6, v7, :cond_4

    .line 63
    .line 64
    const/4 v6, 0x0

    .line 65
    :goto_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 66
    .line 67
    .line 68
    move-result v7

    .line 69
    if-ge v6, v7, :cond_2

    .line 70
    .line 71
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v7

    .line 75
    check-cast v7, LE5/a;

    .line 76
    .line 77
    iget-object v7, v7, LE5/a;->c:LD5/c;

    .line 78
    .line 79
    iget v7, v7, LD5/c;->a:I

    .line 80
    .line 81
    aget v8, v5, v6

    .line 82
    .line 83
    if-eq v7, v8, :cond_1

    .line 84
    .line 85
    goto :goto_4

    .line 86
    :cond_1
    add-int/lit8 v6, v6, 0x1

    .line 87
    .line 88
    goto :goto_3

    .line 89
    :cond_2
    invoke-virtual {p0}, LE5/c;->l()Z

    .line 90
    .line 91
    .line 92
    move-result v2

    .line 93
    if-eqz v2, :cond_3

    .line 94
    .line 95
    return-object v1

    .line 96
    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    .line 97
    .line 98
    invoke-direct {v1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    add-int/lit8 v0, p1, 0x1

    .line 105
    .line 106
    :try_start_0
    invoke-virtual {p0, v0, v1}, LE5/c;->m(ILjava/util/ArrayList;)Ljava/util/List;

    .line 107
    .line 108
    .line 109
    move-result-object p1
    :try_end_0
    .catch Lq5/i; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    return-object p1

    .line 111
    :cond_4
    :goto_4
    add-int/lit8 v4, v4, 0x1

    .line 112
    .line 113
    goto :goto_2

    .line 114
    :catch_0
    :cond_5
    add-int/lit8 p1, p1, 0x1

    .line 115
    .line 116
    goto :goto_0

    .line 117
    :cond_6
    sget-object p1, Lq5/i;->I:Lq5/i;

    .line 118
    .line 119
    throw p1
.end method

.method public final n(Z)Ljava/util/List;
    .locals 4

    .line 1
    iget-object v0, p0, LE5/c;->h:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/16 v2, 0x19

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    if-le v1, v2, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 13
    .line 14
    .line 15
    return-object v3

    .line 16
    :cond_0
    iget-object v1, p0, LE5/c;->g:Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 19
    .line 20
    .line 21
    if-eqz p1, :cond_1

    .line 22
    .line 23
    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 24
    .line 25
    .line 26
    :cond_1
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 29
    .line 30
    .line 31
    const/4 v2, 0x0

    .line 32
    invoke-virtual {p0, v2, v1}, LE5/c;->m(ILjava/util/ArrayList;)Ljava/util/List;

    .line 33
    .line 34
    .line 35
    move-result-object v3
    :try_end_0
    .catch Lq5/i; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    goto :goto_0

    .line 37
    :catch_0
    nop

    .line 38
    :goto_0
    if-eqz p1, :cond_2

    .line 39
    .line 40
    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 41
    .line 42
    .line 43
    :cond_2
    return-object v3
.end method

.method public final p(Lw5/a;LD5/c;ZZ)LD5/b;
    .locals 17

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
    iget-object v3, v0, LD5/a;->b:[I

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    invoke-static {v3, v4}, Ljava/util/Arrays;->fill([II)V

    .line 11
    .line 12
    .line 13
    const/4 v5, 0x1

    .line 14
    if-eqz p4, :cond_0

    .line 15
    .line 16
    iget-object v6, v2, LD5/c;->b:[I

    .line 17
    .line 18
    aget v6, v6, v4

    .line 19
    .line 20
    invoke-static {v6, v1, v3}, LC5/j;->h(ILw5/a;[I)V

    .line 21
    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_0
    iget-object v6, v2, LD5/c;->b:[I

    .line 25
    .line 26
    aget v6, v6, v5

    .line 27
    .line 28
    invoke-static {v6, v1, v3}, LC5/j;->g(ILw5/a;[I)V

    .line 29
    .line 30
    .line 31
    array-length v1, v3

    .line 32
    sub-int/2addr v1, v5

    .line 33
    const/4 v6, 0x0

    .line 34
    :goto_0
    if-ge v6, v1, :cond_1

    .line 35
    .line 36
    aget v7, v3, v6

    .line 37
    .line 38
    aget v8, v3, v1

    .line 39
    .line 40
    aput v8, v3, v6

    .line 41
    .line 42
    aput v7, v3, v1

    .line 43
    .line 44
    add-int/lit8 v6, v6, 0x1

    .line 45
    .line 46
    add-int/lit8 v1, v1, -0x1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    :goto_1
    invoke-static {v3}, Ld2/v;->t([I)I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    int-to-float v1, v1

    .line 54
    const/high16 v6, 0x41880000    # 17.0f

    .line 55
    .line 56
    div-float/2addr v1, v6

    .line 57
    iget-object v6, v2, LD5/c;->b:[I

    .line 58
    .line 59
    aget v7, v6, v5

    .line 60
    .line 61
    aget v6, v6, v4

    .line 62
    .line 63
    sub-int/2addr v7, v6

    .line 64
    int-to-float v6, v7

    .line 65
    const/high16 v7, 0x41700000    # 15.0f

    .line 66
    .line 67
    div-float/2addr v6, v7

    .line 68
    sub-float v7, v1, v6

    .line 69
    .line 70
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    .line 71
    .line 72
    .line 73
    move-result v7

    .line 74
    div-float/2addr v7, v6

    .line 75
    const v6, 0x3e99999a    # 0.3f

    .line 76
    .line 77
    .line 78
    cmpl-float v7, v7, v6

    .line 79
    .line 80
    if-gtz v7, :cond_29

    .line 81
    .line 82
    const/4 v7, 0x0

    .line 83
    :goto_2
    array-length v8, v3

    .line 84
    iget-object v9, v0, LD5/a;->d:[F

    .line 85
    .line 86
    iget-object v10, v0, LD5/a;->c:[F

    .line 87
    .line 88
    iget-object v11, v0, LD5/a;->f:[I

    .line 89
    .line 90
    iget-object v12, v0, LD5/a;->e:[I

    .line 91
    .line 92
    if-ge v7, v8, :cond_7

    .line 93
    .line 94
    aget v8, v3, v7

    .line 95
    .line 96
    int-to-float v8, v8

    .line 97
    const/high16 v13, 0x3f800000    # 1.0f

    .line 98
    .line 99
    mul-float v8, v8, v13

    .line 100
    .line 101
    div-float/2addr v8, v1

    .line 102
    const/high16 v13, 0x3f000000    # 0.5f

    .line 103
    .line 104
    add-float/2addr v13, v8

    .line 105
    float-to-int v13, v13

    .line 106
    if-gtz v13, :cond_3

    .line 107
    .line 108
    cmpg-float v13, v8, v6

    .line 109
    .line 110
    if-ltz v13, :cond_2

    .line 111
    .line 112
    const/4 v13, 0x1

    .line 113
    goto :goto_3

    .line 114
    :cond_2
    sget-object v1, Lq5/i;->I:Lq5/i;

    .line 115
    .line 116
    throw v1

    .line 117
    :cond_3
    const/16 v14, 0x8

    .line 118
    .line 119
    if-le v13, v14, :cond_5

    .line 120
    .line 121
    const v13, 0x410b3333    # 8.7f

    .line 122
    .line 123
    .line 124
    cmpl-float v13, v8, v13

    .line 125
    .line 126
    if-gtz v13, :cond_4

    .line 127
    .line 128
    const/16 v13, 0x8

    .line 129
    .line 130
    goto :goto_3

    .line 131
    :cond_4
    sget-object v1, Lq5/i;->I:Lq5/i;

    .line 132
    .line 133
    throw v1

    .line 134
    :cond_5
    :goto_3
    div-int/lit8 v14, v7, 0x2

    .line 135
    .line 136
    and-int/lit8 v15, v7, 0x1

    .line 137
    .line 138
    if-nez v15, :cond_6

    .line 139
    .line 140
    aput v13, v12, v14

    .line 141
    .line 142
    int-to-float v9, v13

    .line 143
    sub-float/2addr v8, v9

    .line 144
    aput v8, v10, v14

    .line 145
    .line 146
    goto :goto_4

    .line 147
    :cond_6
    aput v13, v11, v14

    .line 148
    .line 149
    int-to-float v10, v13

    .line 150
    sub-float/2addr v8, v10

    .line 151
    aput v8, v9, v14

    .line 152
    .line 153
    :goto_4
    add-int/lit8 v7, v7, 0x1

    .line 154
    .line 155
    goto :goto_2

    .line 156
    :cond_7
    invoke-static {v12}, Ld2/v;->t([I)I

    .line 157
    .line 158
    .line 159
    move-result v1

    .line 160
    invoke-static {v11}, Ld2/v;->t([I)I

    .line 161
    .line 162
    .line 163
    move-result v3

    .line 164
    const/16 v6, 0xd

    .line 165
    .line 166
    const/4 v7, 0x4

    .line 167
    if-le v1, v6, :cond_8

    .line 168
    .line 169
    const/4 v8, 0x0

    .line 170
    const/4 v13, 0x1

    .line 171
    goto :goto_6

    .line 172
    :cond_8
    if-ge v1, v7, :cond_9

    .line 173
    .line 174
    const/4 v8, 0x1

    .line 175
    :goto_5
    const/4 v13, 0x0

    .line 176
    goto :goto_6

    .line 177
    :cond_9
    const/4 v8, 0x0

    .line 178
    goto :goto_5

    .line 179
    :goto_6
    if-le v3, v6, :cond_a

    .line 180
    .line 181
    const/4 v14, 0x0

    .line 182
    const/4 v15, 0x1

    .line 183
    goto :goto_8

    .line 184
    :cond_a
    if-ge v3, v7, :cond_b

    .line 185
    .line 186
    const/4 v14, 0x1

    .line 187
    :goto_7
    const/4 v15, 0x0

    .line 188
    goto :goto_8

    .line 189
    :cond_b
    const/4 v14, 0x0

    .line 190
    goto :goto_7

    .line 191
    :goto_8
    add-int v16, v1, v3

    .line 192
    .line 193
    add-int/lit8 v4, v16, -0x11

    .line 194
    .line 195
    and-int/lit8 v7, v1, 0x1

    .line 196
    .line 197
    if-ne v7, v5, :cond_c

    .line 198
    .line 199
    const/4 v7, 0x1

    .line 200
    goto :goto_9

    .line 201
    :cond_c
    const/4 v7, 0x0

    .line 202
    :goto_9
    and-int/lit8 v16, v3, 0x1

    .line 203
    .line 204
    if-nez v16, :cond_d

    .line 205
    .line 206
    const/16 v16, 0x1

    .line 207
    .line 208
    goto :goto_a

    .line 209
    :cond_d
    const/16 v16, 0x0

    .line 210
    .line 211
    :goto_a
    const/4 v6, -0x1

    .line 212
    if-eq v4, v6, :cond_17

    .line 213
    .line 214
    if-eqz v4, :cond_12

    .line 215
    .line 216
    if-ne v4, v5, :cond_11

    .line 217
    .line 218
    if-eqz v7, :cond_f

    .line 219
    .line 220
    if-nez v16, :cond_e

    .line 221
    .line 222
    const/4 v13, 0x1

    .line 223
    goto :goto_d

    .line 224
    :cond_e
    sget-object v1, Lq5/i;->I:Lq5/i;

    .line 225
    .line 226
    throw v1

    .line 227
    :cond_f
    if-eqz v16, :cond_10

    .line 228
    .line 229
    :goto_b
    const/4 v15, 0x1

    .line 230
    goto :goto_d

    .line 231
    :cond_10
    sget-object v1, Lq5/i;->I:Lq5/i;

    .line 232
    .line 233
    throw v1

    .line 234
    :cond_11
    sget-object v1, Lq5/i;->I:Lq5/i;

    .line 235
    .line 236
    throw v1

    .line 237
    :cond_12
    if-eqz v7, :cond_15

    .line 238
    .line 239
    if-eqz v16, :cond_14

    .line 240
    .line 241
    if-ge v1, v3, :cond_13

    .line 242
    .line 243
    const/4 v8, 0x1

    .line 244
    goto :goto_b

    .line 245
    :cond_13
    const/4 v13, 0x1

    .line 246
    :goto_c
    const/4 v14, 0x1

    .line 247
    goto :goto_d

    .line 248
    :cond_14
    sget-object v1, Lq5/i;->I:Lq5/i;

    .line 249
    .line 250
    throw v1

    .line 251
    :cond_15
    if-nez v16, :cond_16

    .line 252
    .line 253
    goto :goto_d

    .line 254
    :cond_16
    sget-object v1, Lq5/i;->I:Lq5/i;

    .line 255
    .line 256
    throw v1

    .line 257
    :cond_17
    if-eqz v7, :cond_19

    .line 258
    .line 259
    if-nez v16, :cond_18

    .line 260
    .line 261
    const/4 v8, 0x1

    .line 262
    goto :goto_d

    .line 263
    :cond_18
    sget-object v1, Lq5/i;->I:Lq5/i;

    .line 264
    .line 265
    throw v1

    .line 266
    :cond_19
    if-eqz v16, :cond_28

    .line 267
    .line 268
    goto :goto_c

    .line 269
    :goto_d
    if-eqz v8, :cond_1b

    .line 270
    .line 271
    if-nez v13, :cond_1a

    .line 272
    .line 273
    invoke-static {v12, v10}, LD5/a;->j([I[F)V

    .line 274
    .line 275
    .line 276
    goto :goto_e

    .line 277
    :cond_1a
    sget-object v1, Lq5/i;->I:Lq5/i;

    .line 278
    .line 279
    throw v1

    .line 280
    :cond_1b
    :goto_e
    if-eqz v13, :cond_1c

    .line 281
    .line 282
    invoke-static {v12, v10}, LD5/a;->i([I[F)V

    .line 283
    .line 284
    .line 285
    :cond_1c
    if-eqz v14, :cond_1e

    .line 286
    .line 287
    if-nez v15, :cond_1d

    .line 288
    .line 289
    invoke-static {v11, v10}, LD5/a;->j([I[F)V

    .line 290
    .line 291
    .line 292
    goto :goto_f

    .line 293
    :cond_1d
    sget-object v1, Lq5/i;->I:Lq5/i;

    .line 294
    .line 295
    throw v1

    .line 296
    :cond_1e
    :goto_f
    if-eqz v15, :cond_1f

    .line 297
    .line 298
    invoke-static {v11, v9}, LD5/a;->i([I[F)V

    .line 299
    .line 300
    .line 301
    :cond_1f
    iget v1, v2, LD5/c;->a:I

    .line 302
    .line 303
    mul-int/lit8 v2, v1, 0x4

    .line 304
    .line 305
    const/4 v3, 0x2

    .line 306
    if-eqz p3, :cond_20

    .line 307
    .line 308
    const/4 v4, 0x0

    .line 309
    goto :goto_10

    .line 310
    :cond_20
    const/4 v4, 0x2

    .line 311
    :goto_10
    add-int/2addr v2, v4

    .line 312
    xor-int/lit8 v4, p4, 0x1

    .line 313
    .line 314
    add-int/2addr v2, v4

    .line 315
    sub-int/2addr v2, v5

    .line 316
    array-length v4, v12

    .line 317
    sub-int/2addr v4, v5

    .line 318
    const/4 v6, 0x0

    .line 319
    const/4 v7, 0x0

    .line 320
    :goto_11
    sget-object v8, LE5/c;->o:[[I

    .line 321
    .line 322
    if-ltz v4, :cond_23

    .line 323
    .line 324
    if-nez v1, :cond_21

    .line 325
    .line 326
    if-eqz p3, :cond_21

    .line 327
    .line 328
    if-nez p4, :cond_22

    .line 329
    .line 330
    :cond_21
    aget-object v8, v8, v2

    .line 331
    .line 332
    mul-int/lit8 v9, v4, 0x2

    .line 333
    .line 334
    aget v8, v8, v9

    .line 335
    .line 336
    aget v9, v12, v4

    .line 337
    .line 338
    mul-int v9, v9, v8

    .line 339
    .line 340
    add-int/2addr v6, v9

    .line 341
    :cond_22
    aget v8, v12, v4

    .line 342
    .line 343
    add-int/2addr v7, v8

    .line 344
    add-int/lit8 v4, v4, -0x1

    .line 345
    .line 346
    goto :goto_11

    .line 347
    :cond_23
    array-length v4, v11

    .line 348
    sub-int/2addr v4, v5

    .line 349
    const/4 v9, 0x0

    .line 350
    :goto_12
    if-ltz v4, :cond_26

    .line 351
    .line 352
    if-nez v1, :cond_24

    .line 353
    .line 354
    if-eqz p3, :cond_24

    .line 355
    .line 356
    if-nez p4, :cond_25

    .line 357
    .line 358
    :cond_24
    aget-object v10, v8, v2

    .line 359
    .line 360
    mul-int/lit8 v13, v4, 0x2

    .line 361
    .line 362
    add-int/2addr v13, v5

    .line 363
    aget v10, v10, v13

    .line 364
    .line 365
    aget v13, v11, v4

    .line 366
    .line 367
    mul-int v13, v13, v10

    .line 368
    .line 369
    add-int/2addr v9, v13

    .line 370
    :cond_25
    add-int/lit8 v4, v4, -0x1

    .line 371
    .line 372
    goto :goto_12

    .line 373
    :cond_26
    add-int/2addr v6, v9

    .line 374
    and-int/lit8 v1, v7, 0x1

    .line 375
    .line 376
    if-nez v1, :cond_27

    .line 377
    .line 378
    const/16 v1, 0xd

    .line 379
    .line 380
    if-gt v7, v1, :cond_27

    .line 381
    .line 382
    const/4 v2, 0x4

    .line 383
    if-lt v7, v2, :cond_27

    .line 384
    .line 385
    sub-int/2addr v1, v7

    .line 386
    div-int/2addr v1, v3

    .line 387
    sget-object v2, LE5/c;->k:[I

    .line 388
    .line 389
    aget v2, v2, v1

    .line 390
    .line 391
    rsub-int/lit8 v3, v2, 0x9

    .line 392
    .line 393
    invoke-static {v12, v2, v5}, Ly4/k;->J([IIZ)I

    .line 394
    .line 395
    .line 396
    move-result v2

    .line 397
    const/4 v4, 0x0

    .line 398
    invoke-static {v11, v3, v4}, Ly4/k;->J([IIZ)I

    .line 399
    .line 400
    .line 401
    move-result v3

    .line 402
    sget-object v4, LE5/c;->l:[I

    .line 403
    .line 404
    aget v4, v4, v1

    .line 405
    .line 406
    sget-object v5, LE5/c;->m:[I

    .line 407
    .line 408
    aget v1, v5, v1

    .line 409
    .line 410
    mul-int v2, v2, v4

    .line 411
    .line 412
    add-int/2addr v2, v3

    .line 413
    add-int/2addr v2, v1

    .line 414
    new-instance v1, LD5/b;

    .line 415
    .line 416
    invoke-direct {v1, v2, v6}, LD5/b;-><init>(II)V

    .line 417
    .line 418
    .line 419
    return-object v1

    .line 420
    :cond_27
    sget-object v1, Lq5/i;->I:Lq5/i;

    .line 421
    .line 422
    throw v1

    .line 423
    :cond_28
    sget-object v1, Lq5/i;->I:Lq5/i;

    .line 424
    .line 425
    throw v1

    .line 426
    :cond_29
    sget-object v1, Lq5/i;->I:Lq5/i;

    .line 427
    .line 428
    throw v1
.end method

.method public final q(ILw5/a;)Ljava/util/List;
    .locals 11

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_0
    iget-object v2, p0, LE5/c;->g:Ljava/util/ArrayList;

    .line 4
    .line 5
    const/4 v3, 0x1

    .line 6
    if-nez v1, :cond_1

    .line 7
    .line 8
    :try_start_0
    invoke-virtual {p0, p2, v2, p1}, LE5/c;->r(Lw5/a;Ljava/util/ArrayList;I)LE5/a;

    .line 9
    .line 10
    .line 11
    move-result-object v4

    .line 12
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lq5/i; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catch_0
    move-exception v1

    .line 17
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-nez v2, :cond_0

    .line 22
    .line 23
    const/4 v1, 0x1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    throw v1

    .line 26
    :cond_1
    invoke-virtual {p0}, LE5/c;->l()Z

    .line 27
    .line 28
    .line 29
    move-result p2

    .line 30
    if-eqz p2, :cond_2

    .line 31
    .line 32
    return-object v2

    .line 33
    :cond_2
    iget-object p2, p0, LE5/c;->h:Ljava/util/ArrayList;

    .line 34
    .line 35
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    xor-int/2addr v1, v3

    .line 40
    const/4 v4, 0x0

    .line 41
    const/4 v5, 0x0

    .line 42
    :goto_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 43
    .line 44
    .line 45
    move-result v6

    .line 46
    if-ge v4, v6, :cond_4

    .line 47
    .line 48
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v6

    .line 52
    check-cast v6, LE5/b;

    .line 53
    .line 54
    iget v7, v6, LE5/b;->b:I

    .line 55
    .line 56
    iget-object v6, v6, LE5/b;->a:Ljava/util/ArrayList;

    .line 57
    .line 58
    if-le v7, p1, :cond_3

    .line 59
    .line 60
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v6

    .line 64
    if-nez v6, :cond_c

    .line 65
    .line 66
    goto :goto_2

    .line 67
    :cond_3
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v5

    .line 71
    add-int/lit8 v4, v4, 0x1

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_4
    :goto_2
    if-eqz v5, :cond_5

    .line 75
    .line 76
    goto/16 :goto_5

    .line 77
    .line 78
    :cond_5
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 79
    .line 80
    .line 81
    move-result-object v5

    .line 82
    :cond_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 83
    .line 84
    .line 85
    move-result v6

    .line 86
    if-eqz v6, :cond_8

    .line 87
    .line 88
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v6

    .line 92
    check-cast v6, LE5/b;

    .line 93
    .line 94
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 95
    .line 96
    .line 97
    move-result-object v7

    .line 98
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 99
    .line 100
    .line 101
    move-result v8

    .line 102
    if-eqz v8, :cond_c

    .line 103
    .line 104
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v8

    .line 108
    check-cast v8, LE5/a;

    .line 109
    .line 110
    iget-object v9, v6, LE5/b;->a:Ljava/util/ArrayList;

    .line 111
    .line 112
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 113
    .line 114
    .line 115
    move-result-object v9

    .line 116
    :cond_7
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 117
    .line 118
    .line 119
    move-result v10

    .line 120
    if-eqz v10, :cond_6

    .line 121
    .line 122
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v10

    .line 126
    check-cast v10, LE5/a;

    .line 127
    .line 128
    invoke-virtual {v8, v10}, LE5/a;->equals(Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    move-result v10

    .line 132
    if-eqz v10, :cond_7

    .line 133
    .line 134
    goto :goto_3

    .line 135
    :cond_8
    new-instance v5, LE5/b;

    .line 136
    .line 137
    invoke-direct {v5, p1, v2}, LE5/b;-><init>(ILjava/util/ArrayList;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {p2, v4, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    :cond_9
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 148
    .line 149
    .line 150
    move-result p2

    .line 151
    if-eqz p2, :cond_c

    .line 152
    .line 153
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object p2

    .line 157
    check-cast p2, LE5/b;

    .line 158
    .line 159
    iget-object v4, p2, LE5/b;->a:Ljava/util/ArrayList;

    .line 160
    .line 161
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 162
    .line 163
    .line 164
    move-result v4

    .line 165
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 166
    .line 167
    .line 168
    move-result v5

    .line 169
    if-eq v4, v5, :cond_9

    .line 170
    .line 171
    iget-object p2, p2, LE5/b;->a:Ljava/util/ArrayList;

    .line 172
    .line 173
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 174
    .line 175
    .line 176
    move-result-object p2

    .line 177
    :cond_a
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 178
    .line 179
    .line 180
    move-result v4

    .line 181
    if-eqz v4, :cond_b

    .line 182
    .line 183
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    move-result-object v4

    .line 187
    check-cast v4, LE5/a;

    .line 188
    .line 189
    invoke-interface {v2, v4}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    .line 190
    .line 191
    .line 192
    move-result v4

    .line 193
    if-nez v4, :cond_a

    .line 194
    .line 195
    goto :goto_4

    .line 196
    :cond_b
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    .line 197
    .line 198
    .line 199
    goto :goto_4

    .line 200
    :cond_c
    :goto_5
    if-eqz v1, :cond_e

    .line 201
    .line 202
    invoke-virtual {p0, v0}, LE5/c;->n(Z)Ljava/util/List;

    .line 203
    .line 204
    .line 205
    move-result-object p1

    .line 206
    if-eqz p1, :cond_d

    .line 207
    .line 208
    return-object p1

    .line 209
    :cond_d
    invoke-virtual {p0, v3}, LE5/c;->n(Z)Ljava/util/List;

    .line 210
    .line 211
    .line 212
    move-result-object p1

    .line 213
    if-eqz p1, :cond_e

    .line 214
    .line 215
    return-object p1

    .line 216
    :cond_e
    sget-object p1, Lq5/i;->I:Lq5/i;

    .line 217
    .line 218
    throw p1
.end method

.method public final r(Lw5/a;Ljava/util/ArrayList;I)LE5/a;
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
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    const/4 v4, 0x2

    .line 12
    rem-int/2addr v3, v4

    .line 13
    const/4 v5, 0x0

    .line 14
    const/4 v6, 0x1

    .line 15
    if-nez v3, :cond_0

    .line 16
    .line 17
    const/4 v3, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v3, 0x0

    .line 20
    :goto_0
    iget-boolean v7, v0, LE5/c;->j:Z

    .line 21
    .line 22
    if-eqz v7, :cond_1

    .line 23
    .line 24
    xor-int/lit8 v3, v3, 0x1

    .line 25
    .line 26
    :cond_1
    const/4 v7, -0x1

    .line 27
    const/4 v8, 0x1

    .line 28
    :goto_1
    iget-object v9, v0, LD5/a;->a:[I

    .line 29
    .line 30
    aput v5, v9, v5

    .line 31
    .line 32
    aput v5, v9, v6

    .line 33
    .line 34
    aput v5, v9, v4

    .line 35
    .line 36
    const/4 v10, 0x3

    .line 37
    aput v5, v9, v10

    .line 38
    .line 39
    iget v11, v1, Lw5/a;->H:I

    .line 40
    .line 41
    if-ltz v7, :cond_2

    .line 42
    .line 43
    move v12, v7

    .line 44
    goto :goto_2

    .line 45
    :cond_2
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 46
    .line 47
    .line 48
    move-result v12

    .line 49
    if-eqz v12, :cond_3

    .line 50
    .line 51
    const/4 v12, 0x0

    .line 52
    goto :goto_2

    .line 53
    :cond_3
    invoke-static {v2, v6}, Lcom/google/protobuf/U2;->g(Ljava/util/ArrayList;I)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v12

    .line 57
    check-cast v12, LE5/a;

    .line 58
    .line 59
    iget-object v12, v12, LE5/a;->c:LD5/c;

    .line 60
    .line 61
    iget-object v12, v12, LD5/c;->b:[I

    .line 62
    .line 63
    aget v12, v12, v6

    .line 64
    .line 65
    :goto_2
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    .line 66
    .line 67
    .line 68
    move-result v13

    .line 69
    rem-int/2addr v13, v4

    .line 70
    if-eqz v13, :cond_4

    .line 71
    .line 72
    const/4 v13, 0x1

    .line 73
    goto :goto_3

    .line 74
    :cond_4
    const/4 v13, 0x0

    .line 75
    :goto_3
    iget-boolean v14, v0, LE5/c;->j:Z

    .line 76
    .line 77
    if-eqz v14, :cond_5

    .line 78
    .line 79
    xor-int/lit8 v13, v13, 0x1

    .line 80
    .line 81
    :cond_5
    const/4 v14, 0x0

    .line 82
    :goto_4
    if-ge v12, v11, :cond_6

    .line 83
    .line 84
    invoke-virtual {v1, v12}, Lw5/a;->d(I)Z

    .line 85
    .line 86
    .line 87
    move-result v14

    .line 88
    xor-int/2addr v14, v6

    .line 89
    if-eqz v14, :cond_6

    .line 90
    .line 91
    add-int/lit8 v12, v12, 0x1

    .line 92
    .line 93
    goto :goto_4

    .line 94
    :cond_6
    move v15, v14

    .line 95
    const/4 v4, 0x0

    .line 96
    move v14, v12

    .line 97
    :goto_5
    if-ge v12, v11, :cond_15

    .line 98
    .line 99
    invoke-virtual {v1, v12}, Lw5/a;->d(I)Z

    .line 100
    .line 101
    .line 102
    move-result v5

    .line 103
    if-eq v5, v15, :cond_7

    .line 104
    .line 105
    aget v5, v9, v4

    .line 106
    .line 107
    add-int/2addr v5, v6

    .line 108
    aput v5, v9, v4

    .line 109
    .line 110
    const/4 v5, 0x0

    .line 111
    const/4 v6, 0x2

    .line 112
    const/16 v17, 0x1

    .line 113
    .line 114
    goto/16 :goto_11

    .line 115
    .line 116
    :cond_7
    if-ne v4, v10, :cond_14

    .line 117
    .line 118
    if-eqz v13, :cond_8

    .line 119
    .line 120
    array-length v5, v9

    .line 121
    const/4 v10, 0x0

    .line 122
    :goto_6
    div-int/lit8 v6, v5, 0x2

    .line 123
    .line 124
    if-ge v10, v6, :cond_8

    .line 125
    .line 126
    aget v6, v9, v10

    .line 127
    .line 128
    sub-int v18, v5, v10

    .line 129
    .line 130
    const/16 v17, 0x1

    .line 131
    .line 132
    add-int/lit8 v18, v18, -0x1

    .line 133
    .line 134
    aget v19, v9, v18

    .line 135
    .line 136
    aput v19, v9, v10

    .line 137
    .line 138
    aput v6, v9, v18

    .line 139
    .line 140
    add-int/lit8 v10, v10, 0x1

    .line 141
    .line 142
    const/4 v6, 0x1

    .line 143
    goto :goto_6

    .line 144
    :cond_8
    invoke-static {v9}, LD5/a;->k([I)Z

    .line 145
    .line 146
    .line 147
    move-result v5

    .line 148
    if-eqz v5, :cond_12

    .line 149
    .line 150
    iget-object v4, v0, LE5/c;->i:[I

    .line 151
    .line 152
    const/4 v5, 0x0

    .line 153
    aput v14, v4, v5

    .line 154
    .line 155
    const/4 v5, 0x1

    .line 156
    aput v12, v4, v5

    .line 157
    .line 158
    if-eqz v3, :cond_a

    .line 159
    .line 160
    add-int/lit8 v14, v14, -0x1

    .line 161
    .line 162
    :goto_7
    if-ltz v14, :cond_9

    .line 163
    .line 164
    invoke-virtual {v1, v14}, Lw5/a;->d(I)Z

    .line 165
    .line 166
    .line 167
    move-result v5

    .line 168
    if-nez v5, :cond_9

    .line 169
    .line 170
    add-int/lit8 v14, v14, -0x1

    .line 171
    .line 172
    goto :goto_7

    .line 173
    :cond_9
    add-int/lit8 v14, v14, 0x1

    .line 174
    .line 175
    const/4 v5, 0x0

    .line 176
    aget v6, v4, v5

    .line 177
    .line 178
    sub-int/2addr v6, v14

    .line 179
    const/4 v5, 0x1

    .line 180
    aget v10, v4, v5

    .line 181
    .line 182
    :goto_8
    move v13, v10

    .line 183
    move v12, v14

    .line 184
    goto :goto_9

    .line 185
    :cond_a
    const/4 v5, 0x1

    .line 186
    add-int/lit8 v12, v12, 0x1

    .line 187
    .line 188
    invoke-virtual {v1, v12}, Lw5/a;->f(I)I

    .line 189
    .line 190
    .line 191
    move-result v10

    .line 192
    aget v6, v4, v5

    .line 193
    .line 194
    sub-int v6, v10, v6

    .line 195
    .line 196
    goto :goto_8

    .line 197
    :goto_9
    array-length v10, v9

    .line 198
    sub-int/2addr v10, v5

    .line 199
    const/4 v11, 0x0

    .line 200
    invoke-static {v9, v11, v9, v5, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 201
    .line 202
    .line 203
    aput v6, v9, v11

    .line 204
    .line 205
    const/4 v5, 0x0

    .line 206
    :try_start_0
    sget-object v6, LE5/c;->n:[[I

    .line 207
    .line 208
    const/4 v11, 0x0

    .line 209
    :goto_a
    const/4 v10, 0x6

    .line 210
    if-ge v11, v10, :cond_c

    .line 211
    .line 212
    aget-object v10, v6, v11

    .line 213
    .line 214
    const v14, 0x3ee66666    # 0.45f

    .line 215
    .line 216
    .line 217
    invoke-static {v9, v10, v14}, LC5/j;->f([I[IF)F

    .line 218
    .line 219
    .line 220
    move-result v10
    :try_end_0
    .catch Lq5/i; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    const v14, 0x3e4ccccd    # 0.2f

    .line 222
    .line 223
    .line 224
    cmpg-float v10, v10, v14

    .line 225
    .line 226
    if-gez v10, :cond_b

    .line 227
    .line 228
    new-instance v6, LD5/c;

    .line 229
    .line 230
    filled-new-array {v12, v13}, [I

    .line 231
    .line 232
    .line 233
    move-result-object v15

    .line 234
    move-object v10, v6

    .line 235
    move/from16 v14, p3

    .line 236
    .line 237
    invoke-direct/range {v10 .. v15}, LD5/c;-><init>(IIII[I)V

    .line 238
    .line 239
    .line 240
    goto :goto_b

    .line 241
    :cond_b
    add-int/lit8 v11, v11, 0x1

    .line 242
    .line 243
    goto :goto_a

    .line 244
    :cond_c
    :try_start_1
    sget-object v6, Lq5/i;->I:Lq5/i;

    .line 245
    .line 246
    throw v6
    :try_end_1
    .catch Lq5/i; {:try_start_1 .. :try_end_1} :catch_0

    .line 247
    :catch_0
    nop

    .line 248
    move-object v6, v5

    .line 249
    :goto_b
    if-nez v6, :cond_e

    .line 250
    .line 251
    const/4 v9, 0x0

    .line 252
    aget v4, v4, v9

    .line 253
    .line 254
    invoke-virtual {v1, v4}, Lw5/a;->d(I)Z

    .line 255
    .line 256
    .line 257
    move-result v7

    .line 258
    if-eqz v7, :cond_d

    .line 259
    .line 260
    invoke-virtual {v1, v4}, Lw5/a;->f(I)I

    .line 261
    .line 262
    .line 263
    move-result v4

    .line 264
    invoke-virtual {v1, v4}, Lw5/a;->e(I)I

    .line 265
    .line 266
    .line 267
    move-result v4

    .line 268
    goto :goto_c

    .line 269
    :cond_d
    invoke-virtual {v1, v4}, Lw5/a;->e(I)I

    .line 270
    .line 271
    .line 272
    move-result v4

    .line 273
    invoke-virtual {v1, v4}, Lw5/a;->f(I)I

    .line 274
    .line 275
    .line 276
    move-result v4

    .line 277
    :goto_c
    move v7, v4

    .line 278
    goto :goto_d

    .line 279
    :cond_e
    const/4 v8, 0x0

    .line 280
    :goto_d
    if-nez v8, :cond_11

    .line 281
    .line 282
    const/4 v4, 0x1

    .line 283
    invoke-virtual {v0, v1, v6, v3, v4}, LE5/c;->p(Lw5/a;LD5/c;ZZ)LD5/b;

    .line 284
    .line 285
    .line 286
    move-result-object v7

    .line 287
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 288
    .line 289
    .line 290
    move-result v8

    .line 291
    if-nez v8, :cond_f

    .line 292
    .line 293
    invoke-static {v2, v4}, Lcom/google/protobuf/U2;->g(Ljava/util/ArrayList;I)Ljava/lang/Object;

    .line 294
    .line 295
    .line 296
    move-result-object v2

    .line 297
    check-cast v2, LE5/a;

    .line 298
    .line 299
    iget-object v2, v2, LE5/a;->b:LD5/b;

    .line 300
    .line 301
    if-eqz v2, :cond_10

    .line 302
    .line 303
    :cond_f
    const/4 v2, 0x0

    .line 304
    goto :goto_e

    .line 305
    :cond_10
    sget-object v1, Lq5/i;->I:Lq5/i;

    .line 306
    .line 307
    throw v1

    .line 308
    :goto_e
    :try_start_2
    invoke-virtual {v0, v1, v6, v3, v2}, LE5/c;->p(Lw5/a;LD5/c;ZZ)LD5/b;

    .line 309
    .line 310
    .line 311
    move-result-object v5
    :try_end_2
    .catch Lq5/i; {:try_start_2 .. :try_end_2} :catch_1

    .line 312
    :catch_1
    new-instance v1, LE5/a;

    .line 313
    .line 314
    invoke-direct {v1, v7, v5, v6}, LE5/a;-><init>(LD5/b;LD5/b;LD5/c;)V

    .line 315
    .line 316
    .line 317
    return-object v1

    .line 318
    :cond_11
    const/4 v4, 0x2

    .line 319
    const/4 v5, 0x0

    .line 320
    const/4 v6, 0x1

    .line 321
    goto/16 :goto_1

    .line 322
    .line 323
    :cond_12
    if-eqz v13, :cond_13

    .line 324
    .line 325
    array-length v5, v9

    .line 326
    const/4 v6, 0x0

    .line 327
    :goto_f
    div-int/lit8 v10, v5, 0x2

    .line 328
    .line 329
    if-ge v6, v10, :cond_13

    .line 330
    .line 331
    aget v10, v9, v6

    .line 332
    .line 333
    sub-int v18, v5, v6

    .line 334
    .line 335
    const/16 v17, 0x1

    .line 336
    .line 337
    add-int/lit8 v18, v18, -0x1

    .line 338
    .line 339
    aget v19, v9, v18

    .line 340
    .line 341
    aput v19, v9, v6

    .line 342
    .line 343
    aput v10, v9, v18

    .line 344
    .line 345
    add-int/lit8 v6, v6, 0x1

    .line 346
    .line 347
    goto :goto_f

    .line 348
    :cond_13
    const/16 v17, 0x1

    .line 349
    .line 350
    const/4 v5, 0x0

    .line 351
    aget v6, v9, v5

    .line 352
    .line 353
    aget v10, v9, v17

    .line 354
    .line 355
    add-int/2addr v6, v10

    .line 356
    add-int/2addr v14, v6

    .line 357
    const/4 v6, 0x2

    .line 358
    aget v10, v9, v6

    .line 359
    .line 360
    aput v10, v9, v5

    .line 361
    .line 362
    const/4 v10, 0x3

    .line 363
    aget v16, v9, v10

    .line 364
    .line 365
    aput v16, v9, v17

    .line 366
    .line 367
    aput v5, v9, v6

    .line 368
    .line 369
    aput v5, v9, v10

    .line 370
    .line 371
    add-int/lit8 v4, v4, -0x1

    .line 372
    .line 373
    goto :goto_10

    .line 374
    :cond_14
    const/4 v5, 0x0

    .line 375
    const/4 v6, 0x2

    .line 376
    const/16 v17, 0x1

    .line 377
    .line 378
    add-int/lit8 v4, v4, 0x1

    .line 379
    .line 380
    :goto_10
    aput v17, v9, v4

    .line 381
    .line 382
    xor-int/lit8 v15, v15, 0x1

    .line 383
    .line 384
    :goto_11
    add-int/lit8 v12, v12, 0x1

    .line 385
    .line 386
    const/4 v6, 0x1

    .line 387
    goto/16 :goto_5

    .line 388
    .line 389
    :cond_15
    sget-object v1, Lq5/i;->I:Lq5/i;

    .line 390
    .line 391
    throw v1
.end method
