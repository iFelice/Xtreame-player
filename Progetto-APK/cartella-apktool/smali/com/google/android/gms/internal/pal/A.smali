.class public final enum Lcom/google/android/gms/internal/pal/A;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum H:Lcom/google/android/gms/internal/pal/A;

.field public static final enum I:Lcom/google/android/gms/internal/pal/A;

.field public static final J:[Lcom/google/android/gms/internal/pal/A;

.field public static final synthetic K:[Lcom/google/android/gms/internal/pal/A;


# instance fields
.field public final G:I


# direct methods
.method static constructor <clinit>()V
    .locals 63

    .line 1
    new-instance v6, Lcom/google/android/gms/internal/pal/A;

    .line 2
    .line 3
    sget-object v7, Lcom/google/android/gms/internal/pal/M;->L:Lcom/google/android/gms/internal/pal/M;

    .line 4
    .line 5
    const/4 v3, 0x0

    .line 6
    const/4 v4, 0x1

    .line 7
    const-string v1, "DOUBLE"

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    move-object v0, v6

    .line 11
    move-object v5, v7

    .line 12
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/pal/A;-><init>(Ljava/lang/String;IIILcom/google/android/gms/internal/pal/M;)V

    .line 13
    .line 14
    .line 15
    new-instance v14, Lcom/google/android/gms/internal/pal/A;

    .line 16
    .line 17
    sget-object v15, Lcom/google/android/gms/internal/pal/M;->K:Lcom/google/android/gms/internal/pal/M;

    .line 18
    .line 19
    const/4 v11, 0x1

    .line 20
    const/4 v12, 0x1

    .line 21
    const-string v9, "FLOAT"

    .line 22
    .line 23
    const/4 v10, 0x1

    .line 24
    move-object v8, v14

    .line 25
    move-object v13, v15

    .line 26
    invoke-direct/range {v8 .. v13}, Lcom/google/android/gms/internal/pal/A;-><init>(Ljava/lang/String;IIILcom/google/android/gms/internal/pal/M;)V

    .line 27
    .line 28
    .line 29
    new-instance v8, Lcom/google/android/gms/internal/pal/A;

    .line 30
    .line 31
    sget-object v9, Lcom/google/android/gms/internal/pal/M;->J:Lcom/google/android/gms/internal/pal/M;

    .line 32
    .line 33
    const/4 v3, 0x2

    .line 34
    const-string v1, "INT64"

    .line 35
    .line 36
    const/4 v2, 0x2

    .line 37
    move-object v0, v8

    .line 38
    move-object v5, v9

    .line 39
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/pal/A;-><init>(Ljava/lang/String;IIILcom/google/android/gms/internal/pal/M;)V

    .line 40
    .line 41
    .line 42
    new-instance v10, Lcom/google/android/gms/internal/pal/A;

    .line 43
    .line 44
    const/4 v2, 0x3

    .line 45
    const/4 v3, 0x3

    .line 46
    const-string v1, "UINT64"

    .line 47
    .line 48
    move-object v0, v10

    .line 49
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/pal/A;-><init>(Ljava/lang/String;IIILcom/google/android/gms/internal/pal/M;)V

    .line 50
    .line 51
    .line 52
    new-instance v11, Lcom/google/android/gms/internal/pal/A;

    .line 53
    .line 54
    sget-object v12, Lcom/google/android/gms/internal/pal/M;->I:Lcom/google/android/gms/internal/pal/M;

    .line 55
    .line 56
    const/16 v19, 0x4

    .line 57
    .line 58
    const/16 v20, 0x1

    .line 59
    .line 60
    const-string v17, "INT32"

    .line 61
    .line 62
    const/16 v18, 0x4

    .line 63
    .line 64
    move-object/from16 v16, v11

    .line 65
    .line 66
    move-object/from16 v21, v12

    .line 67
    .line 68
    invoke-direct/range {v16 .. v21}, Lcom/google/android/gms/internal/pal/A;-><init>(Ljava/lang/String;IIILcom/google/android/gms/internal/pal/M;)V

    .line 69
    .line 70
    .line 71
    new-instance v13, Lcom/google/android/gms/internal/pal/A;

    .line 72
    .line 73
    const/4 v2, 0x5

    .line 74
    const/4 v3, 0x5

    .line 75
    const-string v1, "FIXED64"

    .line 76
    .line 77
    move-object v0, v13

    .line 78
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/pal/A;-><init>(Ljava/lang/String;IIILcom/google/android/gms/internal/pal/M;)V

    .line 79
    .line 80
    .line 81
    new-instance v16, Lcom/google/android/gms/internal/pal/A;

    .line 82
    .line 83
    const/4 v2, 0x6

    .line 84
    const/4 v3, 0x6

    .line 85
    const-string v1, "FIXED32"

    .line 86
    .line 87
    move-object/from16 v0, v16

    .line 88
    .line 89
    move-object v5, v12

    .line 90
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/pal/A;-><init>(Ljava/lang/String;IIILcom/google/android/gms/internal/pal/M;)V

    .line 91
    .line 92
    .line 93
    new-instance v23, Lcom/google/android/gms/internal/pal/A;

    .line 94
    .line 95
    sget-object v24, Lcom/google/android/gms/internal/pal/M;->M:Lcom/google/android/gms/internal/pal/M;

    .line 96
    .line 97
    const/16 v20, 0x7

    .line 98
    .line 99
    const/16 v21, 0x1

    .line 100
    .line 101
    const-string v18, "BOOL"

    .line 102
    .line 103
    const/16 v19, 0x7

    .line 104
    .line 105
    move-object/from16 v17, v23

    .line 106
    .line 107
    move-object/from16 v22, v24

    .line 108
    .line 109
    invoke-direct/range {v17 .. v22}, Lcom/google/android/gms/internal/pal/A;-><init>(Ljava/lang/String;IIILcom/google/android/gms/internal/pal/M;)V

    .line 110
    .line 111
    .line 112
    new-instance v17, Lcom/google/android/gms/internal/pal/A;

    .line 113
    .line 114
    sget-object v18, Lcom/google/android/gms/internal/pal/M;->N:Lcom/google/android/gms/internal/pal/M;

    .line 115
    .line 116
    const/16 v3, 0x8

    .line 117
    .line 118
    const-string v1, "STRING"

    .line 119
    .line 120
    const/16 v2, 0x8

    .line 121
    .line 122
    move-object/from16 v0, v17

    .line 123
    .line 124
    move-object/from16 v5, v18

    .line 125
    .line 126
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/pal/A;-><init>(Ljava/lang/String;IIILcom/google/android/gms/internal/pal/M;)V

    .line 127
    .line 128
    .line 129
    new-instance v19, Lcom/google/android/gms/internal/pal/A;

    .line 130
    .line 131
    sget-object v20, Lcom/google/android/gms/internal/pal/M;->Q:Lcom/google/android/gms/internal/pal/M;

    .line 132
    .line 133
    const/16 v28, 0x9

    .line 134
    .line 135
    const/16 v29, 0x1

    .line 136
    .line 137
    const-string v26, "MESSAGE"

    .line 138
    .line 139
    const/16 v27, 0x9

    .line 140
    .line 141
    move-object/from16 v25, v19

    .line 142
    .line 143
    move-object/from16 v30, v20

    .line 144
    .line 145
    invoke-direct/range {v25 .. v30}, Lcom/google/android/gms/internal/pal/A;-><init>(Ljava/lang/String;IIILcom/google/android/gms/internal/pal/M;)V

    .line 146
    .line 147
    .line 148
    new-instance v21, Lcom/google/android/gms/internal/pal/A;

    .line 149
    .line 150
    sget-object v22, Lcom/google/android/gms/internal/pal/M;->O:Lcom/google/android/gms/internal/pal/M;

    .line 151
    .line 152
    const/16 v3, 0xa

    .line 153
    .line 154
    const-string v1, "BYTES"

    .line 155
    .line 156
    const/16 v2, 0xa

    .line 157
    .line 158
    move-object/from16 v0, v21

    .line 159
    .line 160
    move-object/from16 v5, v22

    .line 161
    .line 162
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/pal/A;-><init>(Ljava/lang/String;IIILcom/google/android/gms/internal/pal/M;)V

    .line 163
    .line 164
    .line 165
    new-instance v25, Lcom/google/android/gms/internal/pal/A;

    .line 166
    .line 167
    const/16 v2, 0xb

    .line 168
    .line 169
    const/16 v3, 0xb

    .line 170
    .line 171
    const-string v1, "UINT32"

    .line 172
    .line 173
    move-object/from16 v0, v25

    .line 174
    .line 175
    move-object v5, v12

    .line 176
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/pal/A;-><init>(Ljava/lang/String;IIILcom/google/android/gms/internal/pal/M;)V

    .line 177
    .line 178
    .line 179
    new-instance v32, Lcom/google/android/gms/internal/pal/A;

    .line 180
    .line 181
    sget-object v33, Lcom/google/android/gms/internal/pal/M;->P:Lcom/google/android/gms/internal/pal/M;

    .line 182
    .line 183
    const/16 v29, 0xc

    .line 184
    .line 185
    const/16 v30, 0x1

    .line 186
    .line 187
    const-string v27, "ENUM"

    .line 188
    .line 189
    const/16 v28, 0xc

    .line 190
    .line 191
    move-object/from16 v26, v32

    .line 192
    .line 193
    move-object/from16 v31, v33

    .line 194
    .line 195
    invoke-direct/range {v26 .. v31}, Lcom/google/android/gms/internal/pal/A;-><init>(Ljava/lang/String;IIILcom/google/android/gms/internal/pal/M;)V

    .line 196
    .line 197
    .line 198
    new-instance v26, Lcom/google/android/gms/internal/pal/A;

    .line 199
    .line 200
    const/16 v2, 0xd

    .line 201
    .line 202
    const/16 v3, 0xd

    .line 203
    .line 204
    const-string v1, "SFIXED32"

    .line 205
    .line 206
    move-object/from16 v0, v26

    .line 207
    .line 208
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/pal/A;-><init>(Ljava/lang/String;IIILcom/google/android/gms/internal/pal/M;)V

    .line 209
    .line 210
    .line 211
    new-instance v27, Lcom/google/android/gms/internal/pal/A;

    .line 212
    .line 213
    const/16 v2, 0xe

    .line 214
    .line 215
    const/16 v3, 0xe

    .line 216
    .line 217
    const-string v1, "SFIXED64"

    .line 218
    .line 219
    move-object/from16 v0, v27

    .line 220
    .line 221
    move-object v5, v9

    .line 222
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/pal/A;-><init>(Ljava/lang/String;IIILcom/google/android/gms/internal/pal/M;)V

    .line 223
    .line 224
    .line 225
    new-instance v28, Lcom/google/android/gms/internal/pal/A;

    .line 226
    .line 227
    const/16 v2, 0xf

    .line 228
    .line 229
    const/16 v3, 0xf

    .line 230
    .line 231
    const-string v1, "SINT32"

    .line 232
    .line 233
    move-object/from16 v0, v28

    .line 234
    .line 235
    move-object v5, v12

    .line 236
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/pal/A;-><init>(Ljava/lang/String;IIILcom/google/android/gms/internal/pal/M;)V

    .line 237
    .line 238
    .line 239
    new-instance v29, Lcom/google/android/gms/internal/pal/A;

    .line 240
    .line 241
    const/16 v2, 0x10

    .line 242
    .line 243
    const/16 v3, 0x10

    .line 244
    .line 245
    const-string v1, "SINT64"

    .line 246
    .line 247
    move-object/from16 v0, v29

    .line 248
    .line 249
    move-object v5, v9

    .line 250
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/pal/A;-><init>(Ljava/lang/String;IIILcom/google/android/gms/internal/pal/M;)V

    .line 251
    .line 252
    .line 253
    new-instance v30, Lcom/google/android/gms/internal/pal/A;

    .line 254
    .line 255
    const-string v1, "GROUP"

    .line 256
    .line 257
    const/16 v2, 0x11

    .line 258
    .line 259
    const/16 v3, 0x11

    .line 260
    .line 261
    move-object/from16 v0, v30

    .line 262
    .line 263
    move-object/from16 v5, v20

    .line 264
    .line 265
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/pal/A;-><init>(Ljava/lang/String;IIILcom/google/android/gms/internal/pal/M;)V

    .line 266
    .line 267
    .line 268
    new-instance v31, Lcom/google/android/gms/internal/pal/A;

    .line 269
    .line 270
    const/16 v2, 0x12

    .line 271
    .line 272
    const/16 v3, 0x12

    .line 273
    .line 274
    const-string v1, "DOUBLE_LIST"

    .line 275
    .line 276
    const/4 v4, 0x2

    .line 277
    move-object/from16 v0, v31

    .line 278
    .line 279
    move-object v5, v7

    .line 280
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/pal/A;-><init>(Ljava/lang/String;IIILcom/google/android/gms/internal/pal/M;)V

    .line 281
    .line 282
    .line 283
    new-instance v34, Lcom/google/android/gms/internal/pal/A;

    .line 284
    .line 285
    const/16 v2, 0x13

    .line 286
    .line 287
    const/16 v3, 0x13

    .line 288
    .line 289
    const-string v1, "FLOAT_LIST"

    .line 290
    .line 291
    move-object/from16 v0, v34

    .line 292
    .line 293
    move-object v5, v15

    .line 294
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/pal/A;-><init>(Ljava/lang/String;IIILcom/google/android/gms/internal/pal/M;)V

    .line 295
    .line 296
    .line 297
    new-instance v35, Lcom/google/android/gms/internal/pal/A;

    .line 298
    .line 299
    const/16 v2, 0x14

    .line 300
    .line 301
    const/16 v3, 0x14

    .line 302
    .line 303
    const-string v1, "INT64_LIST"

    .line 304
    .line 305
    move-object/from16 v0, v35

    .line 306
    .line 307
    move-object v5, v9

    .line 308
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/pal/A;-><init>(Ljava/lang/String;IIILcom/google/android/gms/internal/pal/M;)V

    .line 309
    .line 310
    .line 311
    new-instance v36, Lcom/google/android/gms/internal/pal/A;

    .line 312
    .line 313
    const/16 v2, 0x15

    .line 314
    .line 315
    const/16 v3, 0x15

    .line 316
    .line 317
    const-string v1, "UINT64_LIST"

    .line 318
    .line 319
    move-object/from16 v0, v36

    .line 320
    .line 321
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/pal/A;-><init>(Ljava/lang/String;IIILcom/google/android/gms/internal/pal/M;)V

    .line 322
    .line 323
    .line 324
    new-instance v37, Lcom/google/android/gms/internal/pal/A;

    .line 325
    .line 326
    const/16 v2, 0x16

    .line 327
    .line 328
    const/16 v3, 0x16

    .line 329
    .line 330
    const-string v1, "INT32_LIST"

    .line 331
    .line 332
    move-object/from16 v0, v37

    .line 333
    .line 334
    move-object v5, v12

    .line 335
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/pal/A;-><init>(Ljava/lang/String;IIILcom/google/android/gms/internal/pal/M;)V

    .line 336
    .line 337
    .line 338
    new-instance v38, Lcom/google/android/gms/internal/pal/A;

    .line 339
    .line 340
    const/16 v2, 0x17

    .line 341
    .line 342
    const/16 v3, 0x17

    .line 343
    .line 344
    const-string v1, "FIXED64_LIST"

    .line 345
    .line 346
    move-object/from16 v0, v38

    .line 347
    .line 348
    move-object v5, v9

    .line 349
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/pal/A;-><init>(Ljava/lang/String;IIILcom/google/android/gms/internal/pal/M;)V

    .line 350
    .line 351
    .line 352
    new-instance v39, Lcom/google/android/gms/internal/pal/A;

    .line 353
    .line 354
    const/16 v2, 0x18

    .line 355
    .line 356
    const/16 v3, 0x18

    .line 357
    .line 358
    const-string v1, "FIXED32_LIST"

    .line 359
    .line 360
    move-object/from16 v0, v39

    .line 361
    .line 362
    move-object v5, v12

    .line 363
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/pal/A;-><init>(Ljava/lang/String;IIILcom/google/android/gms/internal/pal/M;)V

    .line 364
    .line 365
    .line 366
    new-instance v40, Lcom/google/android/gms/internal/pal/A;

    .line 367
    .line 368
    const/16 v2, 0x19

    .line 369
    .line 370
    const/16 v3, 0x19

    .line 371
    .line 372
    const-string v1, "BOOL_LIST"

    .line 373
    .line 374
    move-object/from16 v0, v40

    .line 375
    .line 376
    move-object/from16 v5, v24

    .line 377
    .line 378
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/pal/A;-><init>(Ljava/lang/String;IIILcom/google/android/gms/internal/pal/M;)V

    .line 379
    .line 380
    .line 381
    new-instance v41, Lcom/google/android/gms/internal/pal/A;

    .line 382
    .line 383
    const/16 v2, 0x1a

    .line 384
    .line 385
    const/16 v3, 0x1a

    .line 386
    .line 387
    const-string v1, "STRING_LIST"

    .line 388
    .line 389
    move-object/from16 v0, v41

    .line 390
    .line 391
    move-object/from16 v5, v18

    .line 392
    .line 393
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/pal/A;-><init>(Ljava/lang/String;IIILcom/google/android/gms/internal/pal/M;)V

    .line 394
    .line 395
    .line 396
    new-instance v18, Lcom/google/android/gms/internal/pal/A;

    .line 397
    .line 398
    const-string v1, "MESSAGE_LIST"

    .line 399
    .line 400
    const/16 v2, 0x1b

    .line 401
    .line 402
    const/16 v3, 0x1b

    .line 403
    .line 404
    move-object/from16 v0, v18

    .line 405
    .line 406
    move-object/from16 v5, v20

    .line 407
    .line 408
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/pal/A;-><init>(Ljava/lang/String;IIILcom/google/android/gms/internal/pal/M;)V

    .line 409
    .line 410
    .line 411
    new-instance v42, Lcom/google/android/gms/internal/pal/A;

    .line 412
    .line 413
    const-string v1, "BYTES_LIST"

    .line 414
    .line 415
    const/16 v2, 0x1c

    .line 416
    .line 417
    const/16 v3, 0x1c

    .line 418
    .line 419
    move-object/from16 v0, v42

    .line 420
    .line 421
    move-object/from16 v5, v22

    .line 422
    .line 423
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/pal/A;-><init>(Ljava/lang/String;IIILcom/google/android/gms/internal/pal/M;)V

    .line 424
    .line 425
    .line 426
    new-instance v22, Lcom/google/android/gms/internal/pal/A;

    .line 427
    .line 428
    const/16 v2, 0x1d

    .line 429
    .line 430
    const/16 v3, 0x1d

    .line 431
    .line 432
    const-string v1, "UINT32_LIST"

    .line 433
    .line 434
    move-object/from16 v0, v22

    .line 435
    .line 436
    move-object v5, v12

    .line 437
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/pal/A;-><init>(Ljava/lang/String;IIILcom/google/android/gms/internal/pal/M;)V

    .line 438
    .line 439
    .line 440
    new-instance v43, Lcom/google/android/gms/internal/pal/A;

    .line 441
    .line 442
    const-string v1, "ENUM_LIST"

    .line 443
    .line 444
    const/16 v2, 0x1e

    .line 445
    .line 446
    const/16 v3, 0x1e

    .line 447
    .line 448
    move-object/from16 v0, v43

    .line 449
    .line 450
    move-object/from16 v5, v33

    .line 451
    .line 452
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/pal/A;-><init>(Ljava/lang/String;IIILcom/google/android/gms/internal/pal/M;)V

    .line 453
    .line 454
    .line 455
    new-instance v44, Lcom/google/android/gms/internal/pal/A;

    .line 456
    .line 457
    const/16 v2, 0x1f

    .line 458
    .line 459
    const/16 v3, 0x1f

    .line 460
    .line 461
    const-string v1, "SFIXED32_LIST"

    .line 462
    .line 463
    move-object/from16 v0, v44

    .line 464
    .line 465
    move-object v5, v12

    .line 466
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/pal/A;-><init>(Ljava/lang/String;IIILcom/google/android/gms/internal/pal/M;)V

    .line 467
    .line 468
    .line 469
    new-instance v45, Lcom/google/android/gms/internal/pal/A;

    .line 470
    .line 471
    const/16 v2, 0x20

    .line 472
    .line 473
    const/16 v3, 0x20

    .line 474
    .line 475
    const-string v1, "SFIXED64_LIST"

    .line 476
    .line 477
    move-object/from16 v0, v45

    .line 478
    .line 479
    move-object v5, v9

    .line 480
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/pal/A;-><init>(Ljava/lang/String;IIILcom/google/android/gms/internal/pal/M;)V

    .line 481
    .line 482
    .line 483
    new-instance v46, Lcom/google/android/gms/internal/pal/A;

    .line 484
    .line 485
    const/16 v2, 0x21

    .line 486
    .line 487
    const/16 v3, 0x21

    .line 488
    .line 489
    const-string v1, "SINT32_LIST"

    .line 490
    .line 491
    move-object/from16 v0, v46

    .line 492
    .line 493
    move-object v5, v12

    .line 494
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/pal/A;-><init>(Ljava/lang/String;IIILcom/google/android/gms/internal/pal/M;)V

    .line 495
    .line 496
    .line 497
    new-instance v47, Lcom/google/android/gms/internal/pal/A;

    .line 498
    .line 499
    const/16 v2, 0x22

    .line 500
    .line 501
    const/16 v3, 0x22

    .line 502
    .line 503
    const-string v1, "SINT64_LIST"

    .line 504
    .line 505
    move-object/from16 v0, v47

    .line 506
    .line 507
    move-object v5, v9

    .line 508
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/pal/A;-><init>(Ljava/lang/String;IIILcom/google/android/gms/internal/pal/M;)V

    .line 509
    .line 510
    .line 511
    new-instance v48, Lcom/google/android/gms/internal/pal/A;

    .line 512
    .line 513
    const/16 v2, 0x23

    .line 514
    .line 515
    const/16 v3, 0x23

    .line 516
    .line 517
    const-string v1, "DOUBLE_LIST_PACKED"

    .line 518
    .line 519
    const/4 v4, 0x3

    .line 520
    move-object/from16 v0, v48

    .line 521
    .line 522
    move-object v5, v7

    .line 523
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/pal/A;-><init>(Ljava/lang/String;IIILcom/google/android/gms/internal/pal/M;)V

    .line 524
    .line 525
    .line 526
    sput-object v48, Lcom/google/android/gms/internal/pal/A;->H:Lcom/google/android/gms/internal/pal/A;

    .line 527
    .line 528
    new-instance v7, Lcom/google/android/gms/internal/pal/A;

    .line 529
    .line 530
    const/16 v2, 0x24

    .line 531
    .line 532
    const/16 v3, 0x24

    .line 533
    .line 534
    const-string v1, "FLOAT_LIST_PACKED"

    .line 535
    .line 536
    move-object v0, v7

    .line 537
    move-object v5, v15

    .line 538
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/pal/A;-><init>(Ljava/lang/String;IIILcom/google/android/gms/internal/pal/M;)V

    .line 539
    .line 540
    .line 541
    new-instance v15, Lcom/google/android/gms/internal/pal/A;

    .line 542
    .line 543
    const/16 v2, 0x25

    .line 544
    .line 545
    const/16 v3, 0x25

    .line 546
    .line 547
    const-string v1, "INT64_LIST_PACKED"

    .line 548
    .line 549
    move-object v0, v15

    .line 550
    move-object v5, v9

    .line 551
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/pal/A;-><init>(Ljava/lang/String;IIILcom/google/android/gms/internal/pal/M;)V

    .line 552
    .line 553
    .line 554
    new-instance v49, Lcom/google/android/gms/internal/pal/A;

    .line 555
    .line 556
    const/16 v2, 0x26

    .line 557
    .line 558
    const/16 v3, 0x26

    .line 559
    .line 560
    const-string v1, "UINT64_LIST_PACKED"

    .line 561
    .line 562
    move-object/from16 v0, v49

    .line 563
    .line 564
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/pal/A;-><init>(Ljava/lang/String;IIILcom/google/android/gms/internal/pal/M;)V

    .line 565
    .line 566
    .line 567
    new-instance v50, Lcom/google/android/gms/internal/pal/A;

    .line 568
    .line 569
    const/16 v2, 0x27

    .line 570
    .line 571
    const/16 v3, 0x27

    .line 572
    .line 573
    const-string v1, "INT32_LIST_PACKED"

    .line 574
    .line 575
    move-object/from16 v0, v50

    .line 576
    .line 577
    move-object v5, v12

    .line 578
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/pal/A;-><init>(Ljava/lang/String;IIILcom/google/android/gms/internal/pal/M;)V

    .line 579
    .line 580
    .line 581
    new-instance v51, Lcom/google/android/gms/internal/pal/A;

    .line 582
    .line 583
    const/16 v2, 0x28

    .line 584
    .line 585
    const/16 v3, 0x28

    .line 586
    .line 587
    const-string v1, "FIXED64_LIST_PACKED"

    .line 588
    .line 589
    move-object/from16 v0, v51

    .line 590
    .line 591
    move-object v5, v9

    .line 592
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/pal/A;-><init>(Ljava/lang/String;IIILcom/google/android/gms/internal/pal/M;)V

    .line 593
    .line 594
    .line 595
    new-instance v52, Lcom/google/android/gms/internal/pal/A;

    .line 596
    .line 597
    const/16 v2, 0x29

    .line 598
    .line 599
    const/16 v3, 0x29

    .line 600
    .line 601
    const-string v1, "FIXED32_LIST_PACKED"

    .line 602
    .line 603
    move-object/from16 v0, v52

    .line 604
    .line 605
    move-object v5, v12

    .line 606
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/pal/A;-><init>(Ljava/lang/String;IIILcom/google/android/gms/internal/pal/M;)V

    .line 607
    .line 608
    .line 609
    new-instance v53, Lcom/google/android/gms/internal/pal/A;

    .line 610
    .line 611
    const/16 v2, 0x2a

    .line 612
    .line 613
    const/16 v3, 0x2a

    .line 614
    .line 615
    const-string v1, "BOOL_LIST_PACKED"

    .line 616
    .line 617
    move-object/from16 v0, v53

    .line 618
    .line 619
    move-object/from16 v5, v24

    .line 620
    .line 621
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/pal/A;-><init>(Ljava/lang/String;IIILcom/google/android/gms/internal/pal/M;)V

    .line 622
    .line 623
    .line 624
    new-instance v24, Lcom/google/android/gms/internal/pal/A;

    .line 625
    .line 626
    const/16 v2, 0x2b

    .line 627
    .line 628
    const/16 v3, 0x2b

    .line 629
    .line 630
    const-string v1, "UINT32_LIST_PACKED"

    .line 631
    .line 632
    move-object/from16 v0, v24

    .line 633
    .line 634
    move-object v5, v12

    .line 635
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/pal/A;-><init>(Ljava/lang/String;IIILcom/google/android/gms/internal/pal/M;)V

    .line 636
    .line 637
    .line 638
    new-instance v54, Lcom/google/android/gms/internal/pal/A;

    .line 639
    .line 640
    const-string v1, "ENUM_LIST_PACKED"

    .line 641
    .line 642
    const/16 v2, 0x2c

    .line 643
    .line 644
    const/16 v3, 0x2c

    .line 645
    .line 646
    move-object/from16 v0, v54

    .line 647
    .line 648
    move-object/from16 v5, v33

    .line 649
    .line 650
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/pal/A;-><init>(Ljava/lang/String;IIILcom/google/android/gms/internal/pal/M;)V

    .line 651
    .line 652
    .line 653
    new-instance v33, Lcom/google/android/gms/internal/pal/A;

    .line 654
    .line 655
    const/16 v2, 0x2d

    .line 656
    .line 657
    const/16 v3, 0x2d

    .line 658
    .line 659
    const-string v1, "SFIXED32_LIST_PACKED"

    .line 660
    .line 661
    move-object/from16 v0, v33

    .line 662
    .line 663
    move-object v5, v12

    .line 664
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/pal/A;-><init>(Ljava/lang/String;IIILcom/google/android/gms/internal/pal/M;)V

    .line 665
    .line 666
    .line 667
    new-instance v55, Lcom/google/android/gms/internal/pal/A;

    .line 668
    .line 669
    const/16 v2, 0x2e

    .line 670
    .line 671
    const/16 v3, 0x2e

    .line 672
    .line 673
    const-string v1, "SFIXED64_LIST_PACKED"

    .line 674
    .line 675
    move-object/from16 v0, v55

    .line 676
    .line 677
    move-object v5, v9

    .line 678
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/pal/A;-><init>(Ljava/lang/String;IIILcom/google/android/gms/internal/pal/M;)V

    .line 679
    .line 680
    .line 681
    new-instance v56, Lcom/google/android/gms/internal/pal/A;

    .line 682
    .line 683
    const/16 v2, 0x2f

    .line 684
    .line 685
    const/16 v3, 0x2f

    .line 686
    .line 687
    const-string v1, "SINT32_LIST_PACKED"

    .line 688
    .line 689
    move-object/from16 v0, v56

    .line 690
    .line 691
    move-object v5, v12

    .line 692
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/pal/A;-><init>(Ljava/lang/String;IIILcom/google/android/gms/internal/pal/M;)V

    .line 693
    .line 694
    .line 695
    new-instance v12, Lcom/google/android/gms/internal/pal/A;

    .line 696
    .line 697
    const/16 v2, 0x30

    .line 698
    .line 699
    const/16 v3, 0x30

    .line 700
    .line 701
    const-string v1, "SINT64_LIST_PACKED"

    .line 702
    .line 703
    move-object v0, v12

    .line 704
    move-object v5, v9

    .line 705
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/pal/A;-><init>(Ljava/lang/String;IIILcom/google/android/gms/internal/pal/M;)V

    .line 706
    .line 707
    .line 708
    sput-object v12, Lcom/google/android/gms/internal/pal/A;->I:Lcom/google/android/gms/internal/pal/A;

    .line 709
    .line 710
    new-instance v9, Lcom/google/android/gms/internal/pal/A;

    .line 711
    .line 712
    const-string v1, "GROUP_LIST"

    .line 713
    .line 714
    const/16 v2, 0x31

    .line 715
    .line 716
    const/16 v3, 0x31

    .line 717
    .line 718
    const/4 v4, 0x2

    .line 719
    move-object v0, v9

    .line 720
    move-object/from16 v5, v20

    .line 721
    .line 722
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/pal/A;-><init>(Ljava/lang/String;IIILcom/google/android/gms/internal/pal/M;)V

    .line 723
    .line 724
    .line 725
    new-instance v0, Lcom/google/android/gms/internal/pal/A;

    .line 726
    .line 727
    sget-object v62, Lcom/google/android/gms/internal/pal/M;->H:Lcom/google/android/gms/internal/pal/M;

    .line 728
    .line 729
    const/16 v60, 0x32

    .line 730
    .line 731
    const/16 v61, 0x4

    .line 732
    .line 733
    const-string v58, "MAP"

    .line 734
    .line 735
    const/16 v59, 0x32

    .line 736
    .line 737
    move-object/from16 v57, v0

    .line 738
    .line 739
    invoke-direct/range {v57 .. v62}, Lcom/google/android/gms/internal/pal/A;-><init>(Ljava/lang/String;IIILcom/google/android/gms/internal/pal/M;)V

    .line 740
    .line 741
    .line 742
    const/16 v1, 0x33

    .line 743
    .line 744
    new-array v1, v1, [Lcom/google/android/gms/internal/pal/A;

    .line 745
    .line 746
    const/4 v2, 0x0

    .line 747
    aput-object v6, v1, v2

    .line 748
    .line 749
    const/4 v3, 0x1

    .line 750
    aput-object v14, v1, v3

    .line 751
    .line 752
    aput-object v8, v1, v4

    .line 753
    .line 754
    const/4 v4, 0x3

    .line 755
    aput-object v10, v1, v4

    .line 756
    .line 757
    const/4 v4, 0x4

    .line 758
    aput-object v11, v1, v4

    .line 759
    .line 760
    const/4 v4, 0x5

    .line 761
    aput-object v13, v1, v4

    .line 762
    .line 763
    const/4 v4, 0x6

    .line 764
    aput-object v16, v1, v4

    .line 765
    .line 766
    const/4 v4, 0x7

    .line 767
    aput-object v23, v1, v4

    .line 768
    .line 769
    const/16 v4, 0x8

    .line 770
    .line 771
    aput-object v17, v1, v4

    .line 772
    .line 773
    const/16 v4, 0x9

    .line 774
    .line 775
    aput-object v19, v1, v4

    .line 776
    .line 777
    const/16 v4, 0xa

    .line 778
    .line 779
    aput-object v21, v1, v4

    .line 780
    .line 781
    const/16 v4, 0xb

    .line 782
    .line 783
    aput-object v25, v1, v4

    .line 784
    .line 785
    const/16 v4, 0xc

    .line 786
    .line 787
    aput-object v32, v1, v4

    .line 788
    .line 789
    const/16 v4, 0xd

    .line 790
    .line 791
    aput-object v26, v1, v4

    .line 792
    .line 793
    const/16 v4, 0xe

    .line 794
    .line 795
    aput-object v27, v1, v4

    .line 796
    .line 797
    const/16 v4, 0xf

    .line 798
    .line 799
    aput-object v28, v1, v4

    .line 800
    .line 801
    const/16 v4, 0x10

    .line 802
    .line 803
    aput-object v29, v1, v4

    .line 804
    .line 805
    const/16 v4, 0x11

    .line 806
    .line 807
    aput-object v30, v1, v4

    .line 808
    .line 809
    const/16 v4, 0x12

    .line 810
    .line 811
    aput-object v31, v1, v4

    .line 812
    .line 813
    const/16 v4, 0x13

    .line 814
    .line 815
    aput-object v34, v1, v4

    .line 816
    .line 817
    const/16 v4, 0x14

    .line 818
    .line 819
    aput-object v35, v1, v4

    .line 820
    .line 821
    const/16 v4, 0x15

    .line 822
    .line 823
    aput-object v36, v1, v4

    .line 824
    .line 825
    const/16 v4, 0x16

    .line 826
    .line 827
    aput-object v37, v1, v4

    .line 828
    .line 829
    const/16 v4, 0x17

    .line 830
    .line 831
    aput-object v38, v1, v4

    .line 832
    .line 833
    const/16 v4, 0x18

    .line 834
    .line 835
    aput-object v39, v1, v4

    .line 836
    .line 837
    const/16 v4, 0x19

    .line 838
    .line 839
    aput-object v40, v1, v4

    .line 840
    .line 841
    const/16 v4, 0x1a

    .line 842
    .line 843
    aput-object v41, v1, v4

    .line 844
    .line 845
    const/16 v4, 0x1b

    .line 846
    .line 847
    aput-object v18, v1, v4

    .line 848
    .line 849
    const/16 v4, 0x1c

    .line 850
    .line 851
    aput-object v42, v1, v4

    .line 852
    .line 853
    const/16 v4, 0x1d

    .line 854
    .line 855
    aput-object v22, v1, v4

    .line 856
    .line 857
    const/16 v4, 0x1e

    .line 858
    .line 859
    aput-object v43, v1, v4

    .line 860
    .line 861
    const/16 v4, 0x1f

    .line 862
    .line 863
    aput-object v44, v1, v4

    .line 864
    .line 865
    const/16 v4, 0x20

    .line 866
    .line 867
    aput-object v45, v1, v4

    .line 868
    .line 869
    const/16 v4, 0x21

    .line 870
    .line 871
    aput-object v46, v1, v4

    .line 872
    .line 873
    const/16 v4, 0x22

    .line 874
    .line 875
    aput-object v47, v1, v4

    .line 876
    .line 877
    const/16 v4, 0x23

    .line 878
    .line 879
    aput-object v48, v1, v4

    .line 880
    .line 881
    const/16 v4, 0x24

    .line 882
    .line 883
    aput-object v7, v1, v4

    .line 884
    .line 885
    const/16 v4, 0x25

    .line 886
    .line 887
    aput-object v15, v1, v4

    .line 888
    .line 889
    const/16 v4, 0x26

    .line 890
    .line 891
    aput-object v49, v1, v4

    .line 892
    .line 893
    const/16 v4, 0x27

    .line 894
    .line 895
    aput-object v50, v1, v4

    .line 896
    .line 897
    const/16 v4, 0x28

    .line 898
    .line 899
    aput-object v51, v1, v4

    .line 900
    .line 901
    const/16 v4, 0x29

    .line 902
    .line 903
    aput-object v52, v1, v4

    .line 904
    .line 905
    const/16 v4, 0x2a

    .line 906
    .line 907
    aput-object v53, v1, v4

    .line 908
    .line 909
    const/16 v4, 0x2b

    .line 910
    .line 911
    aput-object v24, v1, v4

    .line 912
    .line 913
    const/16 v4, 0x2c

    .line 914
    .line 915
    aput-object v54, v1, v4

    .line 916
    .line 917
    const/16 v4, 0x2d

    .line 918
    .line 919
    aput-object v33, v1, v4

    .line 920
    .line 921
    const/16 v4, 0x2e

    .line 922
    .line 923
    aput-object v55, v1, v4

    .line 924
    .line 925
    const/16 v4, 0x2f

    .line 926
    .line 927
    aput-object v56, v1, v4

    .line 928
    .line 929
    const/16 v4, 0x30

    .line 930
    .line 931
    aput-object v12, v1, v4

    .line 932
    .line 933
    const/16 v4, 0x31

    .line 934
    .line 935
    aput-object v9, v1, v4

    .line 936
    .line 937
    const/16 v4, 0x32

    .line 938
    .line 939
    aput-object v0, v1, v4

    .line 940
    .line 941
    sput-object v1, Lcom/google/android/gms/internal/pal/A;->K:[Lcom/google/android/gms/internal/pal/A;

    .line 942
    .line 943
    invoke-static {}, Lcom/google/android/gms/internal/pal/A;->values()[Lcom/google/android/gms/internal/pal/A;

    .line 944
    .line 945
    .line 946
    move-result-object v0

    .line 947
    array-length v1, v0

    .line 948
    new-array v4, v1, [Lcom/google/android/gms/internal/pal/A;

    .line 949
    .line 950
    sput-object v4, Lcom/google/android/gms/internal/pal/A;->J:[Lcom/google/android/gms/internal/pal/A;

    .line 951
    .line 952
    :goto_0
    if-ge v2, v1, :cond_0

    .line 953
    .line 954
    aget-object v4, v0, v2

    .line 955
    .line 956
    sget-object v5, Lcom/google/android/gms/internal/pal/A;->J:[Lcom/google/android/gms/internal/pal/A;

    .line 957
    .line 958
    iget v6, v4, Lcom/google/android/gms/internal/pal/A;->G:I

    .line 959
    .line 960
    aput-object v4, v5, v6

    .line 961
    .line 962
    add-int/2addr v2, v3

    .line 963
    goto :goto_0

    .line 964
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIILcom/google/android/gms/internal/pal/M;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lcom/google/android/gms/internal/pal/A;->G:I

    .line 5
    .line 6
    sget-object p1, Lcom/google/android/gms/internal/pal/M;->H:Lcom/google/android/gms/internal/pal/M;

    .line 7
    .line 8
    add-int/lit8 p1, p4, -0x1

    .line 9
    .line 10
    const/4 p2, 0x1

    .line 11
    if-eq p1, p2, :cond_1

    .line 12
    .line 13
    const/4 p3, 0x3

    .line 14
    if-eq p1, p3, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    :goto_0
    if-ne p4, p2, :cond_2

    .line 25
    .line 26
    invoke-virtual {p5}, Ljava/lang/Enum;->ordinal()I

    .line 27
    .line 28
    .line 29
    :cond_2
    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/pal/A;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/pal/A;->K:[Lcom/google/android/gms/internal/pal/A;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/google/android/gms/internal/pal/A;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/google/android/gms/internal/pal/A;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final zza()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/pal/A;->G:I

    return v0
.end method
