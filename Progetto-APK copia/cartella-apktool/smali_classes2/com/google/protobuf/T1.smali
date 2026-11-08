.class public final Lcom/google/protobuf/T1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/j2;


# static fields
.field public static final p:[I

.field public static final q:Lsun/misc/Unsafe;


# instance fields
.field public final a:[I

.field public final b:[Ljava/lang/Object;

.field public final c:I

.field public final d:I

.field public final e:Lcom/google/protobuf/Q1;

.field public final f:Z

.field public final g:Z

.field public final h:[I

.field public final i:I

.field public final j:I

.field public final k:Lcom/google/protobuf/Z1;

.field public final l:Lcom/google/protobuf/D1;

.field public final m:Lcom/google/protobuf/B2;

.field public final n:Lcom/google/protobuf/P0;

.field public final o:Lcom/google/protobuf/L1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [I

    .line 3
    .line 4
    sput-object v0, Lcom/google/protobuf/T1;->p:[I

    .line 5
    .line 6
    invoke-static {}, Lcom/google/protobuf/H2;->j()Lsun/misc/Unsafe;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sput-object v0, Lcom/google/protobuf/T1;->q:Lsun/misc/Unsafe;

    .line 11
    .line 12
    return-void
.end method

.method public constructor <init>([I[Ljava/lang/Object;IILcom/google/protobuf/Q1;[IIILcom/google/protobuf/Z1;Lcom/google/protobuf/D1;Lcom/google/protobuf/B2;Lcom/google/protobuf/P0;Lcom/google/protobuf/L1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/protobuf/T1;->a:[I

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/protobuf/T1;->b:[Ljava/lang/Object;

    .line 7
    .line 8
    iput p3, p0, Lcom/google/protobuf/T1;->c:I

    .line 9
    .line 10
    iput p4, p0, Lcom/google/protobuf/T1;->d:I

    .line 11
    .line 12
    instance-of p1, p5, Lcom/google/protobuf/i1;

    .line 13
    .line 14
    iput-boolean p1, p0, Lcom/google/protobuf/T1;->g:Z

    .line 15
    .line 16
    if-eqz p12, :cond_0

    .line 17
    .line 18
    instance-of p1, p5, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;

    .line 19
    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    const/4 p1, 0x1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 p1, 0x0

    .line 25
    :goto_0
    iput-boolean p1, p0, Lcom/google/protobuf/T1;->f:Z

    .line 26
    .line 27
    iput-object p6, p0, Lcom/google/protobuf/T1;->h:[I

    .line 28
    .line 29
    iput p7, p0, Lcom/google/protobuf/T1;->i:I

    .line 30
    .line 31
    iput p8, p0, Lcom/google/protobuf/T1;->j:I

    .line 32
    .line 33
    iput-object p9, p0, Lcom/google/protobuf/T1;->k:Lcom/google/protobuf/Z1;

    .line 34
    .line 35
    iput-object p10, p0, Lcom/google/protobuf/T1;->l:Lcom/google/protobuf/D1;

    .line 36
    .line 37
    iput-object p11, p0, Lcom/google/protobuf/T1;->m:Lcom/google/protobuf/B2;

    .line 38
    .line 39
    iput-object p12, p0, Lcom/google/protobuf/T1;->n:Lcom/google/protobuf/P0;

    .line 40
    .line 41
    iput-object p5, p0, Lcom/google/protobuf/T1;->e:Lcom/google/protobuf/Q1;

    .line 42
    .line 43
    iput-object p13, p0, Lcom/google/protobuf/T1;->o:Lcom/google/protobuf/L1;

    .line 44
    .line 45
    return-void
.end method

.method public static C(Lcom/google/protobuf/N1;Lcom/google/protobuf/Z1;Lcom/google/protobuf/D1;Lcom/google/protobuf/B2;Lcom/google/protobuf/P0;Lcom/google/protobuf/L1;)Lcom/google/protobuf/T1;
    .locals 7

    .line 1
    instance-of v0, p0, Lcom/google/protobuf/i2;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v1, p0

    .line 6
    check-cast v1, Lcom/google/protobuf/i2;

    .line 7
    .line 8
    move-object v2, p1

    .line 9
    move-object v3, p2

    .line 10
    move-object v4, p3

    .line 11
    move-object v5, p4

    .line 12
    move-object v6, p5

    .line 13
    invoke-static/range {v1 .. v6}, Lcom/google/protobuf/T1;->D(Lcom/google/protobuf/i2;Lcom/google/protobuf/Z1;Lcom/google/protobuf/D1;Lcom/google/protobuf/B2;Lcom/google/protobuf/P0;Lcom/google/protobuf/L1;)Lcom/google/protobuf/T1;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0

    .line 18
    :cond_0
    invoke-static {p0}, LA0/O;->I(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    const/4 p0, 0x0

    .line 22
    throw p0
.end method

.method public static D(Lcom/google/protobuf/i2;Lcom/google/protobuf/Z1;Lcom/google/protobuf/D1;Lcom/google/protobuf/B2;Lcom/google/protobuf/P0;Lcom/google/protobuf/L1;)Lcom/google/protobuf/T1;
    .locals 31

    .line 1
    invoke-virtual/range {p0 .. p0}, Lcom/google/protobuf/i2;->c()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    .line 11
    .line 12
    .line 13
    move-result v3

    .line 14
    const v5, 0xd800

    .line 15
    .line 16
    .line 17
    if-lt v3, v5, :cond_0

    .line 18
    .line 19
    const/4 v3, 0x1

    .line 20
    :goto_0
    add-int/lit8 v6, v3, 0x1

    .line 21
    .line 22
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    if-lt v3, v5, :cond_1

    .line 27
    .line 28
    move v3, v6

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 v6, 0x1

    .line 31
    :cond_1
    add-int/lit8 v3, v6, 0x1

    .line 32
    .line 33
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    .line 34
    .line 35
    .line 36
    move-result v6

    .line 37
    if-lt v6, v5, :cond_3

    .line 38
    .line 39
    and-int/lit16 v6, v6, 0x1fff

    .line 40
    .line 41
    const/16 v8, 0xd

    .line 42
    .line 43
    :goto_1
    add-int/lit8 v9, v3, 0x1

    .line 44
    .line 45
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    if-lt v3, v5, :cond_2

    .line 50
    .line 51
    and-int/lit16 v3, v3, 0x1fff

    .line 52
    .line 53
    shl-int/2addr v3, v8

    .line 54
    or-int/2addr v6, v3

    .line 55
    add-int/lit8 v8, v8, 0xd

    .line 56
    .line 57
    move v3, v9

    .line 58
    goto :goto_1

    .line 59
    :cond_2
    shl-int/2addr v3, v8

    .line 60
    or-int/2addr v6, v3

    .line 61
    move v3, v9

    .line 62
    :cond_3
    if-nez v6, :cond_4

    .line 63
    .line 64
    sget-object v6, Lcom/google/protobuf/T1;->p:[I

    .line 65
    .line 66
    move-object v14, v6

    .line 67
    const/4 v6, 0x0

    .line 68
    const/4 v8, 0x0

    .line 69
    const/4 v10, 0x0

    .line 70
    const/4 v11, 0x0

    .line 71
    const/4 v12, 0x0

    .line 72
    const/4 v13, 0x0

    .line 73
    const/4 v15, 0x0

    .line 74
    goto/16 :goto_a

    .line 75
    .line 76
    :cond_4
    add-int/lit8 v6, v3, 0x1

    .line 77
    .line 78
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    .line 79
    .line 80
    .line 81
    move-result v3

    .line 82
    if-lt v3, v5, :cond_6

    .line 83
    .line 84
    and-int/lit16 v3, v3, 0x1fff

    .line 85
    .line 86
    const/16 v8, 0xd

    .line 87
    .line 88
    :goto_2
    add-int/lit8 v9, v6, 0x1

    .line 89
    .line 90
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    .line 91
    .line 92
    .line 93
    move-result v6

    .line 94
    if-lt v6, v5, :cond_5

    .line 95
    .line 96
    and-int/lit16 v6, v6, 0x1fff

    .line 97
    .line 98
    shl-int/2addr v6, v8

    .line 99
    or-int/2addr v3, v6

    .line 100
    add-int/lit8 v8, v8, 0xd

    .line 101
    .line 102
    move v6, v9

    .line 103
    goto :goto_2

    .line 104
    :cond_5
    shl-int/2addr v6, v8

    .line 105
    or-int/2addr v3, v6

    .line 106
    move v6, v9

    .line 107
    :cond_6
    add-int/lit8 v8, v6, 0x1

    .line 108
    .line 109
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    .line 110
    .line 111
    .line 112
    move-result v6

    .line 113
    if-lt v6, v5, :cond_8

    .line 114
    .line 115
    and-int/lit16 v6, v6, 0x1fff

    .line 116
    .line 117
    const/16 v9, 0xd

    .line 118
    .line 119
    :goto_3
    add-int/lit8 v10, v8, 0x1

    .line 120
    .line 121
    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    .line 122
    .line 123
    .line 124
    move-result v8

    .line 125
    if-lt v8, v5, :cond_7

    .line 126
    .line 127
    and-int/lit16 v8, v8, 0x1fff

    .line 128
    .line 129
    shl-int/2addr v8, v9

    .line 130
    or-int/2addr v6, v8

    .line 131
    add-int/lit8 v9, v9, 0xd

    .line 132
    .line 133
    move v8, v10

    .line 134
    goto :goto_3

    .line 135
    :cond_7
    shl-int/2addr v8, v9

    .line 136
    or-int/2addr v6, v8

    .line 137
    move v8, v10

    .line 138
    :cond_8
    add-int/lit8 v9, v8, 0x1

    .line 139
    .line 140
    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    .line 141
    .line 142
    .line 143
    move-result v8

    .line 144
    if-lt v8, v5, :cond_a

    .line 145
    .line 146
    and-int/lit16 v8, v8, 0x1fff

    .line 147
    .line 148
    const/16 v10, 0xd

    .line 149
    .line 150
    :goto_4
    add-int/lit8 v11, v9, 0x1

    .line 151
    .line 152
    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    .line 153
    .line 154
    .line 155
    move-result v9

    .line 156
    if-lt v9, v5, :cond_9

    .line 157
    .line 158
    and-int/lit16 v9, v9, 0x1fff

    .line 159
    .line 160
    shl-int/2addr v9, v10

    .line 161
    or-int/2addr v8, v9

    .line 162
    add-int/lit8 v10, v10, 0xd

    .line 163
    .line 164
    move v9, v11

    .line 165
    goto :goto_4

    .line 166
    :cond_9
    shl-int/2addr v9, v10

    .line 167
    or-int/2addr v8, v9

    .line 168
    move v9, v11

    .line 169
    :cond_a
    add-int/lit8 v10, v9, 0x1

    .line 170
    .line 171
    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    .line 172
    .line 173
    .line 174
    move-result v9

    .line 175
    if-lt v9, v5, :cond_c

    .line 176
    .line 177
    and-int/lit16 v9, v9, 0x1fff

    .line 178
    .line 179
    const/16 v11, 0xd

    .line 180
    .line 181
    :goto_5
    add-int/lit8 v12, v10, 0x1

    .line 182
    .line 183
    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    .line 184
    .line 185
    .line 186
    move-result v10

    .line 187
    if-lt v10, v5, :cond_b

    .line 188
    .line 189
    and-int/lit16 v10, v10, 0x1fff

    .line 190
    .line 191
    shl-int/2addr v10, v11

    .line 192
    or-int/2addr v9, v10

    .line 193
    add-int/lit8 v11, v11, 0xd

    .line 194
    .line 195
    move v10, v12

    .line 196
    goto :goto_5

    .line 197
    :cond_b
    shl-int/2addr v10, v11

    .line 198
    or-int/2addr v9, v10

    .line 199
    move v10, v12

    .line 200
    :cond_c
    add-int/lit8 v11, v10, 0x1

    .line 201
    .line 202
    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    .line 203
    .line 204
    .line 205
    move-result v10

    .line 206
    if-lt v10, v5, :cond_e

    .line 207
    .line 208
    and-int/lit16 v10, v10, 0x1fff

    .line 209
    .line 210
    const/16 v12, 0xd

    .line 211
    .line 212
    :goto_6
    add-int/lit8 v13, v11, 0x1

    .line 213
    .line 214
    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    .line 215
    .line 216
    .line 217
    move-result v11

    .line 218
    if-lt v11, v5, :cond_d

    .line 219
    .line 220
    and-int/lit16 v11, v11, 0x1fff

    .line 221
    .line 222
    shl-int/2addr v11, v12

    .line 223
    or-int/2addr v10, v11

    .line 224
    add-int/lit8 v12, v12, 0xd

    .line 225
    .line 226
    move v11, v13

    .line 227
    goto :goto_6

    .line 228
    :cond_d
    shl-int/2addr v11, v12

    .line 229
    or-int/2addr v10, v11

    .line 230
    move v11, v13

    .line 231
    :cond_e
    add-int/lit8 v12, v11, 0x1

    .line 232
    .line 233
    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    .line 234
    .line 235
    .line 236
    move-result v11

    .line 237
    if-lt v11, v5, :cond_10

    .line 238
    .line 239
    and-int/lit16 v11, v11, 0x1fff

    .line 240
    .line 241
    const/16 v13, 0xd

    .line 242
    .line 243
    :goto_7
    add-int/lit8 v14, v12, 0x1

    .line 244
    .line 245
    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    .line 246
    .line 247
    .line 248
    move-result v12

    .line 249
    if-lt v12, v5, :cond_f

    .line 250
    .line 251
    and-int/lit16 v12, v12, 0x1fff

    .line 252
    .line 253
    shl-int/2addr v12, v13

    .line 254
    or-int/2addr v11, v12

    .line 255
    add-int/lit8 v13, v13, 0xd

    .line 256
    .line 257
    move v12, v14

    .line 258
    goto :goto_7

    .line 259
    :cond_f
    shl-int/2addr v12, v13

    .line 260
    or-int/2addr v11, v12

    .line 261
    move v12, v14

    .line 262
    :cond_10
    add-int/lit8 v13, v12, 0x1

    .line 263
    .line 264
    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    .line 265
    .line 266
    .line 267
    move-result v12

    .line 268
    if-lt v12, v5, :cond_12

    .line 269
    .line 270
    and-int/lit16 v12, v12, 0x1fff

    .line 271
    .line 272
    const/16 v14, 0xd

    .line 273
    .line 274
    :goto_8
    add-int/lit8 v15, v13, 0x1

    .line 275
    .line 276
    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    .line 277
    .line 278
    .line 279
    move-result v13

    .line 280
    if-lt v13, v5, :cond_11

    .line 281
    .line 282
    and-int/lit16 v13, v13, 0x1fff

    .line 283
    .line 284
    shl-int/2addr v13, v14

    .line 285
    or-int/2addr v12, v13

    .line 286
    add-int/lit8 v14, v14, 0xd

    .line 287
    .line 288
    move v13, v15

    .line 289
    goto :goto_8

    .line 290
    :cond_11
    shl-int/2addr v13, v14

    .line 291
    or-int/2addr v12, v13

    .line 292
    move v13, v15

    .line 293
    :cond_12
    add-int/lit8 v14, v13, 0x1

    .line 294
    .line 295
    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    .line 296
    .line 297
    .line 298
    move-result v13

    .line 299
    if-lt v13, v5, :cond_14

    .line 300
    .line 301
    and-int/lit16 v13, v13, 0x1fff

    .line 302
    .line 303
    const/16 v15, 0xd

    .line 304
    .line 305
    :goto_9
    add-int/lit8 v16, v14, 0x1

    .line 306
    .line 307
    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    .line 308
    .line 309
    .line 310
    move-result v14

    .line 311
    if-lt v14, v5, :cond_13

    .line 312
    .line 313
    and-int/lit16 v14, v14, 0x1fff

    .line 314
    .line 315
    shl-int/2addr v14, v15

    .line 316
    or-int/2addr v13, v14

    .line 317
    add-int/lit8 v15, v15, 0xd

    .line 318
    .line 319
    move/from16 v14, v16

    .line 320
    .line 321
    goto :goto_9

    .line 322
    :cond_13
    shl-int/2addr v14, v15

    .line 323
    or-int/2addr v13, v14

    .line 324
    move/from16 v14, v16

    .line 325
    .line 326
    :cond_14
    add-int v15, v13, v11

    .line 327
    .line 328
    add-int/2addr v15, v12

    .line 329
    new-array v12, v15, [I

    .line 330
    .line 331
    mul-int/lit8 v15, v3, 0x2

    .line 332
    .line 333
    add-int/2addr v15, v6

    .line 334
    move v6, v3

    .line 335
    move v3, v14

    .line 336
    move-object v14, v12

    .line 337
    move v12, v8

    .line 338
    move v8, v15

    .line 339
    move v15, v13

    .line 340
    move v13, v9

    .line 341
    :goto_a
    invoke-virtual/range {p0 .. p0}, Lcom/google/protobuf/i2;->b()[Ljava/lang/Object;

    .line 342
    .line 343
    .line 344
    move-result-object v9

    .line 345
    invoke-virtual/range {p0 .. p0}, Lcom/google/protobuf/i2;->a()Lcom/google/protobuf/Q1;

    .line 346
    .line 347
    .line 348
    move-result-object v16

    .line 349
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 350
    .line 351
    .line 352
    move-result-object v2

    .line 353
    mul-int/lit8 v7, v10, 0x3

    .line 354
    .line 355
    new-array v7, v7, [I

    .line 356
    .line 357
    mul-int/lit8 v10, v10, 0x2

    .line 358
    .line 359
    new-array v10, v10, [Ljava/lang/Object;

    .line 360
    .line 361
    add-int v18, v15, v11

    .line 362
    .line 363
    move/from16 v20, v15

    .line 364
    .line 365
    move/from16 v21, v18

    .line 366
    .line 367
    const/4 v11, 0x0

    .line 368
    const/16 v19, 0x0

    .line 369
    .line 370
    :goto_b
    if-ge v3, v1, :cond_35

    .line 371
    .line 372
    add-int/lit8 v22, v3, 0x1

    .line 373
    .line 374
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    .line 375
    .line 376
    .line 377
    move-result v3

    .line 378
    if-lt v3, v5, :cond_16

    .line 379
    .line 380
    and-int/lit16 v3, v3, 0x1fff

    .line 381
    .line 382
    move/from16 v4, v22

    .line 383
    .line 384
    const/16 v22, 0xd

    .line 385
    .line 386
    :goto_c
    add-int/lit8 v24, v4, 0x1

    .line 387
    .line 388
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    .line 389
    .line 390
    .line 391
    move-result v4

    .line 392
    if-lt v4, v5, :cond_15

    .line 393
    .line 394
    and-int/lit16 v4, v4, 0x1fff

    .line 395
    .line 396
    shl-int v4, v4, v22

    .line 397
    .line 398
    or-int/2addr v3, v4

    .line 399
    add-int/lit8 v22, v22, 0xd

    .line 400
    .line 401
    move/from16 v4, v24

    .line 402
    .line 403
    goto :goto_c

    .line 404
    :cond_15
    shl-int v4, v4, v22

    .line 405
    .line 406
    or-int/2addr v3, v4

    .line 407
    move/from16 v4, v24

    .line 408
    .line 409
    goto :goto_d

    .line 410
    :cond_16
    move/from16 v4, v22

    .line 411
    .line 412
    :goto_d
    add-int/lit8 v22, v4, 0x1

    .line 413
    .line 414
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    .line 415
    .line 416
    .line 417
    move-result v4

    .line 418
    if-lt v4, v5, :cond_18

    .line 419
    .line 420
    and-int/lit16 v4, v4, 0x1fff

    .line 421
    .line 422
    move/from16 v5, v22

    .line 423
    .line 424
    const/16 v22, 0xd

    .line 425
    .line 426
    :goto_e
    add-int/lit8 v25, v5, 0x1

    .line 427
    .line 428
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    .line 429
    .line 430
    .line 431
    move-result v5

    .line 432
    move/from16 v26, v1

    .line 433
    .line 434
    const v1, 0xd800

    .line 435
    .line 436
    .line 437
    if-lt v5, v1, :cond_17

    .line 438
    .line 439
    and-int/lit16 v1, v5, 0x1fff

    .line 440
    .line 441
    shl-int v1, v1, v22

    .line 442
    .line 443
    or-int/2addr v4, v1

    .line 444
    add-int/lit8 v22, v22, 0xd

    .line 445
    .line 446
    move/from16 v5, v25

    .line 447
    .line 448
    move/from16 v1, v26

    .line 449
    .line 450
    goto :goto_e

    .line 451
    :cond_17
    shl-int v1, v5, v22

    .line 452
    .line 453
    or-int/2addr v4, v1

    .line 454
    move/from16 v1, v25

    .line 455
    .line 456
    goto :goto_f

    .line 457
    :cond_18
    move/from16 v26, v1

    .line 458
    .line 459
    move/from16 v1, v22

    .line 460
    .line 461
    :goto_f
    and-int/lit16 v5, v4, 0xff

    .line 462
    .line 463
    move/from16 v22, v15

    .line 464
    .line 465
    and-int/lit16 v15, v4, 0x400

    .line 466
    .line 467
    if-eqz v15, :cond_19

    .line 468
    .line 469
    add-int/lit8 v15, v11, 0x1

    .line 470
    .line 471
    aput v19, v14, v11

    .line 472
    .line 473
    move v11, v15

    .line 474
    :cond_19
    sget-object v15, Lcom/google/protobuf/T1;->q:Lsun/misc/Unsafe;

    .line 475
    .line 476
    move/from16 v28, v11

    .line 477
    .line 478
    const/16 v11, 0x33

    .line 479
    .line 480
    if-lt v5, v11, :cond_22

    .line 481
    .line 482
    add-int/lit8 v11, v1, 0x1

    .line 483
    .line 484
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    .line 485
    .line 486
    .line 487
    move-result v1

    .line 488
    move/from16 v25, v11

    .line 489
    .line 490
    const v11, 0xd800

    .line 491
    .line 492
    .line 493
    if-lt v1, v11, :cond_1b

    .line 494
    .line 495
    and-int/lit16 v1, v1, 0x1fff

    .line 496
    .line 497
    move/from16 v11, v25

    .line 498
    .line 499
    const/16 v25, 0xd

    .line 500
    .line 501
    :goto_10
    add-int/lit8 v29, v11, 0x1

    .line 502
    .line 503
    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    .line 504
    .line 505
    .line 506
    move-result v11

    .line 507
    move/from16 v30, v13

    .line 508
    .line 509
    const v13, 0xd800

    .line 510
    .line 511
    .line 512
    if-lt v11, v13, :cond_1a

    .line 513
    .line 514
    and-int/lit16 v11, v11, 0x1fff

    .line 515
    .line 516
    shl-int v11, v11, v25

    .line 517
    .line 518
    or-int/2addr v1, v11

    .line 519
    add-int/lit8 v25, v25, 0xd

    .line 520
    .line 521
    move/from16 v11, v29

    .line 522
    .line 523
    move/from16 v13, v30

    .line 524
    .line 525
    goto :goto_10

    .line 526
    :cond_1a
    shl-int v11, v11, v25

    .line 527
    .line 528
    or-int/2addr v1, v11

    .line 529
    move/from16 v11, v29

    .line 530
    .line 531
    goto :goto_11

    .line 532
    :cond_1b
    move/from16 v30, v13

    .line 533
    .line 534
    move/from16 v11, v25

    .line 535
    .line 536
    :goto_11
    add-int/lit8 v13, v5, -0x33

    .line 537
    .line 538
    move/from16 v25, v11

    .line 539
    .line 540
    const/16 v11, 0x9

    .line 541
    .line 542
    if-eq v13, v11, :cond_1e

    .line 543
    .line 544
    const/16 v11, 0x11

    .line 545
    .line 546
    if-ne v13, v11, :cond_1c

    .line 547
    .line 548
    goto :goto_13

    .line 549
    :cond_1c
    const/16 v11, 0xc

    .line 550
    .line 551
    if-ne v13, v11, :cond_1f

    .line 552
    .line 553
    invoke-virtual/range {p0 .. p0}, Lcom/google/protobuf/i2;->d()I

    .line 554
    .line 555
    .line 556
    move-result v11

    .line 557
    const/4 v13, 0x1

    .line 558
    invoke-static {v11, v13}, Lu/h;->a(II)Z

    .line 559
    .line 560
    .line 561
    move-result v11

    .line 562
    if-nez v11, :cond_1d

    .line 563
    .line 564
    and-int/lit16 v11, v4, 0x800

    .line 565
    .line 566
    if-eqz v11, :cond_1f

    .line 567
    .line 568
    :cond_1d
    div-int/lit8 v11, v19, 0x3

    .line 569
    .line 570
    mul-int/lit8 v11, v11, 0x2

    .line 571
    .line 572
    add-int/2addr v11, v13

    .line 573
    add-int/lit8 v13, v8, 0x1

    .line 574
    .line 575
    aget-object v8, v9, v8

    .line 576
    .line 577
    aput-object v8, v10, v11

    .line 578
    .line 579
    :goto_12
    move v8, v13

    .line 580
    goto :goto_14

    .line 581
    :cond_1e
    :goto_13
    div-int/lit8 v11, v19, 0x3

    .line 582
    .line 583
    mul-int/lit8 v11, v11, 0x2

    .line 584
    .line 585
    const/4 v13, 0x1

    .line 586
    add-int/2addr v11, v13

    .line 587
    add-int/lit8 v13, v8, 0x1

    .line 588
    .line 589
    aget-object v8, v9, v8

    .line 590
    .line 591
    aput-object v8, v10, v11

    .line 592
    .line 593
    goto :goto_12

    .line 594
    :cond_1f
    :goto_14
    mul-int/lit8 v1, v1, 0x2

    .line 595
    .line 596
    aget-object v11, v9, v1

    .line 597
    .line 598
    instance-of v13, v11, Ljava/lang/reflect/Field;

    .line 599
    .line 600
    if-eqz v13, :cond_20

    .line 601
    .line 602
    check-cast v11, Ljava/lang/reflect/Field;

    .line 603
    .line 604
    :goto_15
    move v13, v12

    .line 605
    goto :goto_16

    .line 606
    :cond_20
    check-cast v11, Ljava/lang/String;

    .line 607
    .line 608
    invoke-static {v2, v11}, Lcom/google/protobuf/T1;->P(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 609
    .line 610
    .line 611
    move-result-object v11

    .line 612
    aput-object v11, v9, v1

    .line 613
    .line 614
    goto :goto_15

    .line 615
    :goto_16
    invoke-virtual {v15, v11}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    .line 616
    .line 617
    .line 618
    move-result-wide v11

    .line 619
    long-to-int v12, v11

    .line 620
    add-int/lit8 v1, v1, 0x1

    .line 621
    .line 622
    aget-object v11, v9, v1

    .line 623
    .line 624
    move/from16 v27, v8

    .line 625
    .line 626
    instance-of v8, v11, Ljava/lang/reflect/Field;

    .line 627
    .line 628
    if-eqz v8, :cond_21

    .line 629
    .line 630
    check-cast v11, Ljava/lang/reflect/Field;

    .line 631
    .line 632
    :goto_17
    move v1, v12

    .line 633
    goto :goto_18

    .line 634
    :cond_21
    check-cast v11, Ljava/lang/String;

    .line 635
    .line 636
    invoke-static {v2, v11}, Lcom/google/protobuf/T1;->P(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 637
    .line 638
    .line 639
    move-result-object v11

    .line 640
    aput-object v11, v9, v1

    .line 641
    .line 642
    goto :goto_17

    .line 643
    :goto_18
    invoke-virtual {v15, v11}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    .line 644
    .line 645
    .line 646
    move-result-wide v11

    .line 647
    long-to-int v8, v11

    .line 648
    move v12, v1

    .line 649
    move/from16 v24, v25

    .line 650
    .line 651
    move/from16 v11, v27

    .line 652
    .line 653
    const/4 v1, 0x0

    .line 654
    move/from16 v27, v3

    .line 655
    .line 656
    move/from16 v25, v13

    .line 657
    .line 658
    move-object v3, v14

    .line 659
    goto/16 :goto_24

    .line 660
    .line 661
    :cond_22
    move/from16 v30, v13

    .line 662
    .line 663
    move v13, v12

    .line 664
    add-int/lit8 v11, v8, 0x1

    .line 665
    .line 666
    aget-object v12, v9, v8

    .line 667
    .line 668
    check-cast v12, Ljava/lang/String;

    .line 669
    .line 670
    invoke-static {v2, v12}, Lcom/google/protobuf/T1;->P(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 671
    .line 672
    .line 673
    move-result-object v12

    .line 674
    move/from16 v25, v13

    .line 675
    .line 676
    const/16 v13, 0x9

    .line 677
    .line 678
    if-eq v5, v13, :cond_23

    .line 679
    .line 680
    const/16 v13, 0x11

    .line 681
    .line 682
    if-ne v5, v13, :cond_24

    .line 683
    .line 684
    :cond_23
    move/from16 v27, v3

    .line 685
    .line 686
    const/4 v3, 0x1

    .line 687
    goto/16 :goto_1d

    .line 688
    .line 689
    :cond_24
    const/16 v13, 0x1b

    .line 690
    .line 691
    if-eq v5, v13, :cond_25

    .line 692
    .line 693
    const/16 v13, 0x31

    .line 694
    .line 695
    if-ne v5, v13, :cond_26

    .line 696
    .line 697
    :cond_25
    move/from16 v27, v3

    .line 698
    .line 699
    const/4 v3, 0x1

    .line 700
    goto :goto_1c

    .line 701
    :cond_26
    const/16 v13, 0xc

    .line 702
    .line 703
    if-eq v5, v13, :cond_2a

    .line 704
    .line 705
    const/16 v13, 0x1e

    .line 706
    .line 707
    if-eq v5, v13, :cond_2a

    .line 708
    .line 709
    const/16 v13, 0x2c

    .line 710
    .line 711
    if-ne v5, v13, :cond_27

    .line 712
    .line 713
    goto :goto_1a

    .line 714
    :cond_27
    const/16 v13, 0x32

    .line 715
    .line 716
    if-ne v5, v13, :cond_29

    .line 717
    .line 718
    add-int/lit8 v13, v20, 0x1

    .line 719
    .line 720
    aput v19, v14, v20

    .line 721
    .line 722
    div-int/lit8 v20, v19, 0x3

    .line 723
    .line 724
    mul-int/lit8 v20, v20, 0x2

    .line 725
    .line 726
    add-int/lit8 v27, v8, 0x2

    .line 727
    .line 728
    aget-object v11, v9, v11

    .line 729
    .line 730
    aput-object v11, v10, v20

    .line 731
    .line 732
    and-int/lit16 v11, v4, 0x800

    .line 733
    .line 734
    if-eqz v11, :cond_28

    .line 735
    .line 736
    add-int/lit8 v20, v20, 0x1

    .line 737
    .line 738
    add-int/lit8 v11, v8, 0x3

    .line 739
    .line 740
    aget-object v8, v9, v27

    .line 741
    .line 742
    aput-object v8, v10, v20

    .line 743
    .line 744
    move/from16 v27, v3

    .line 745
    .line 746
    move/from16 v20, v13

    .line 747
    .line 748
    :goto_19
    const/4 v3, 0x1

    .line 749
    goto :goto_1e

    .line 750
    :cond_28
    move/from16 v20, v13

    .line 751
    .line 752
    move/from16 v11, v27

    .line 753
    .line 754
    :cond_29
    move/from16 v27, v3

    .line 755
    .line 756
    goto :goto_19

    .line 757
    :cond_2a
    :goto_1a
    invoke-virtual/range {p0 .. p0}, Lcom/google/protobuf/i2;->d()I

    .line 758
    .line 759
    .line 760
    move-result v13

    .line 761
    move/from16 v27, v3

    .line 762
    .line 763
    const/4 v3, 0x1

    .line 764
    if-eq v13, v3, :cond_2b

    .line 765
    .line 766
    and-int/lit16 v13, v4, 0x800

    .line 767
    .line 768
    if-eqz v13, :cond_2c

    .line 769
    .line 770
    :cond_2b
    div-int/lit8 v13, v19, 0x3

    .line 771
    .line 772
    mul-int/lit8 v13, v13, 0x2

    .line 773
    .line 774
    add-int/2addr v13, v3

    .line 775
    add-int/lit8 v8, v8, 0x2

    .line 776
    .line 777
    aget-object v11, v9, v11

    .line 778
    .line 779
    aput-object v11, v10, v13

    .line 780
    .line 781
    :goto_1b
    move v11, v8

    .line 782
    goto :goto_1e

    .line 783
    :goto_1c
    div-int/lit8 v13, v19, 0x3

    .line 784
    .line 785
    mul-int/lit8 v13, v13, 0x2

    .line 786
    .line 787
    add-int/2addr v13, v3

    .line 788
    add-int/lit8 v8, v8, 0x2

    .line 789
    .line 790
    aget-object v11, v9, v11

    .line 791
    .line 792
    aput-object v11, v10, v13

    .line 793
    .line 794
    goto :goto_1b

    .line 795
    :goto_1d
    div-int/lit8 v8, v19, 0x3

    .line 796
    .line 797
    mul-int/lit8 v8, v8, 0x2

    .line 798
    .line 799
    add-int/2addr v8, v3

    .line 800
    invoke-virtual {v12}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    .line 801
    .line 802
    .line 803
    move-result-object v13

    .line 804
    aput-object v13, v10, v8

    .line 805
    .line 806
    :cond_2c
    :goto_1e
    invoke-virtual {v15, v12}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    .line 807
    .line 808
    .line 809
    move-result-wide v12

    .line 810
    long-to-int v12, v12

    .line 811
    and-int/lit16 v8, v4, 0x1000

    .line 812
    .line 813
    if-eqz v8, :cond_30

    .line 814
    .line 815
    const/16 v8, 0x11

    .line 816
    .line 817
    if-gt v5, v8, :cond_30

    .line 818
    .line 819
    add-int/lit8 v8, v1, 0x1

    .line 820
    .line 821
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    .line 822
    .line 823
    .line 824
    move-result v1

    .line 825
    const v13, 0xd800

    .line 826
    .line 827
    .line 828
    if-lt v1, v13, :cond_2e

    .line 829
    .line 830
    and-int/lit16 v1, v1, 0x1fff

    .line 831
    .line 832
    const/16 v23, 0xd

    .line 833
    .line 834
    :goto_1f
    add-int/lit8 v24, v8, 0x1

    .line 835
    .line 836
    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    .line 837
    .line 838
    .line 839
    move-result v8

    .line 840
    if-lt v8, v13, :cond_2d

    .line 841
    .line 842
    and-int/lit16 v8, v8, 0x1fff

    .line 843
    .line 844
    shl-int v8, v8, v23

    .line 845
    .line 846
    or-int/2addr v1, v8

    .line 847
    add-int/lit8 v23, v23, 0xd

    .line 848
    .line 849
    move/from16 v8, v24

    .line 850
    .line 851
    goto :goto_1f

    .line 852
    :cond_2d
    shl-int v8, v8, v23

    .line 853
    .line 854
    or-int/2addr v1, v8

    .line 855
    goto :goto_20

    .line 856
    :cond_2e
    move/from16 v24, v8

    .line 857
    .line 858
    :goto_20
    mul-int/lit8 v8, v6, 0x2

    .line 859
    .line 860
    div-int/lit8 v23, v1, 0x20

    .line 861
    .line 862
    add-int v23, v23, v8

    .line 863
    .line 864
    aget-object v8, v9, v23

    .line 865
    .line 866
    instance-of v3, v8, Ljava/lang/reflect/Field;

    .line 867
    .line 868
    if-eqz v3, :cond_2f

    .line 869
    .line 870
    check-cast v8, Ljava/lang/reflect/Field;

    .line 871
    .line 872
    :goto_21
    move-object v3, v14

    .line 873
    goto :goto_22

    .line 874
    :cond_2f
    check-cast v8, Ljava/lang/String;

    .line 875
    .line 876
    invoke-static {v2, v8}, Lcom/google/protobuf/T1;->P(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 877
    .line 878
    .line 879
    move-result-object v8

    .line 880
    aput-object v8, v9, v23

    .line 881
    .line 882
    goto :goto_21

    .line 883
    :goto_22
    invoke-virtual {v15, v8}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    .line 884
    .line 885
    .line 886
    move-result-wide v13

    .line 887
    long-to-int v8, v13

    .line 888
    rem-int/lit8 v1, v1, 0x20

    .line 889
    .line 890
    goto :goto_23

    .line 891
    :cond_30
    move-object v3, v14

    .line 892
    const v8, 0xfffff

    .line 893
    .line 894
    .line 895
    move/from16 v24, v1

    .line 896
    .line 897
    const/4 v1, 0x0

    .line 898
    :goto_23
    const/16 v13, 0x12

    .line 899
    .line 900
    if-lt v5, v13, :cond_31

    .line 901
    .line 902
    const/16 v13, 0x31

    .line 903
    .line 904
    if-gt v5, v13, :cond_31

    .line 905
    .line 906
    add-int/lit8 v13, v21, 0x1

    .line 907
    .line 908
    aput v12, v3, v21

    .line 909
    .line 910
    move/from16 v21, v13

    .line 911
    .line 912
    :cond_31
    :goto_24
    add-int/lit8 v13, v19, 0x1

    .line 913
    .line 914
    aput v27, v7, v19

    .line 915
    .line 916
    add-int/lit8 v14, v19, 0x2

    .line 917
    .line 918
    and-int/lit16 v15, v4, 0x200

    .line 919
    .line 920
    if-eqz v15, :cond_32

    .line 921
    .line 922
    const/high16 v15, 0x20000000

    .line 923
    .line 924
    goto :goto_25

    .line 925
    :cond_32
    const/4 v15, 0x0

    .line 926
    :goto_25
    move-object/from16 v27, v0

    .line 927
    .line 928
    and-int/lit16 v0, v4, 0x100

    .line 929
    .line 930
    if-eqz v0, :cond_33

    .line 931
    .line 932
    const/high16 v0, 0x10000000

    .line 933
    .line 934
    goto :goto_26

    .line 935
    :cond_33
    const/4 v0, 0x0

    .line 936
    :goto_26
    or-int/2addr v0, v15

    .line 937
    and-int/lit16 v4, v4, 0x800

    .line 938
    .line 939
    if-eqz v4, :cond_34

    .line 940
    .line 941
    const/high16 v4, -0x80000000

    .line 942
    .line 943
    goto :goto_27

    .line 944
    :cond_34
    const/4 v4, 0x0

    .line 945
    :goto_27
    or-int/2addr v0, v4

    .line 946
    shl-int/lit8 v4, v5, 0x14

    .line 947
    .line 948
    or-int/2addr v0, v4

    .line 949
    or-int/2addr v0, v12

    .line 950
    aput v0, v7, v13

    .line 951
    .line 952
    add-int/lit8 v19, v19, 0x3

    .line 953
    .line 954
    shl-int/lit8 v0, v1, 0x14

    .line 955
    .line 956
    or-int/2addr v0, v8

    .line 957
    aput v0, v7, v14

    .line 958
    .line 959
    move-object v14, v3

    .line 960
    move v8, v11

    .line 961
    move/from16 v15, v22

    .line 962
    .line 963
    move/from16 v3, v24

    .line 964
    .line 965
    move/from16 v12, v25

    .line 966
    .line 967
    move/from16 v1, v26

    .line 968
    .line 969
    move-object/from16 v0, v27

    .line 970
    .line 971
    move/from16 v11, v28

    .line 972
    .line 973
    move/from16 v13, v30

    .line 974
    .line 975
    const v5, 0xd800

    .line 976
    .line 977
    .line 978
    goto/16 :goto_b

    .line 979
    .line 980
    :cond_35
    move/from16 v25, v12

    .line 981
    .line 982
    move/from16 v30, v13

    .line 983
    .line 984
    move-object v3, v14

    .line 985
    move/from16 v22, v15

    .line 986
    .line 987
    new-instance v0, Lcom/google/protobuf/T1;

    .line 988
    .line 989
    invoke-virtual/range {p0 .. p0}, Lcom/google/protobuf/i2;->a()Lcom/google/protobuf/Q1;

    .line 990
    .line 991
    .line 992
    move-result-object v13

    .line 993
    move-object v8, v0

    .line 994
    move-object v9, v7

    .line 995
    move/from16 v11, v25

    .line 996
    .line 997
    move/from16 v12, v30

    .line 998
    .line 999
    move/from16 v16, v18

    .line 1000
    .line 1001
    move-object/from16 v17, p1

    .line 1002
    .line 1003
    move-object/from16 v18, p2

    .line 1004
    .line 1005
    move-object/from16 v19, p3

    .line 1006
    .line 1007
    move-object/from16 v20, p4

    .line 1008
    .line 1009
    move-object/from16 v21, p5

    .line 1010
    .line 1011
    invoke-direct/range {v8 .. v21}, Lcom/google/protobuf/T1;-><init>([I[Ljava/lang/Object;IILcom/google/protobuf/Q1;[IIILcom/google/protobuf/Z1;Lcom/google/protobuf/D1;Lcom/google/protobuf/B2;Lcom/google/protobuf/P0;Lcom/google/protobuf/L1;)V

    .line 1012
    .line 1013
    .line 1014
    return-object v0
.end method

.method public static E(I)J
    .locals 2

    .line 1
    const v0, 0xfffff

    and-int/2addr p0, v0

    int-to-long v0, p0

    return-wide v0
.end method

.method public static F(Ljava/lang/Object;J)I
    .locals 1

    .line 1
    sget-object v0, Lcom/google/protobuf/H2;->c:Lcom/google/protobuf/G2;

    .line 2
    .line 3
    invoke-virtual {v0, p0, p1, p2}, Lcom/google/protobuf/G2;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Ljava/lang/Integer;

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public static G(Ljava/lang/Object;J)J
    .locals 1

    .line 1
    sget-object v0, Lcom/google/protobuf/H2;->c:Lcom/google/protobuf/G2;

    .line 2
    .line 3
    invoke-virtual {v0, p0, p1, p2}, Lcom/google/protobuf/G2;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Ljava/lang/Long;

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    .line 10
    .line 11
    .line 12
    move-result-wide p0

    .line 13
    return-wide p0
.end method

.method public static P(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 5

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 2
    .line 3
    .line 4
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    return-object p0

    .line 6
    :catch_0
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    array-length v1, v0

    .line 11
    const/4 v2, 0x0

    .line 12
    :goto_0
    if-ge v2, v1, :cond_1

    .line 13
    .line 14
    aget-object v3, v0, v2

    .line 15
    .line 16
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    if-eqz v4, :cond_0

    .line 25
    .line 26
    return-object v3

    .line 27
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    .line 31
    .line 32
    const-string v2, "Field "

    .line 33
    .line 34
    const-string v3, " for "

    .line 35
    .line 36
    invoke-static {v2, p1, v3}, Lcom/google/protobuf/U2;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string p0, " not found. Known fields are "

    .line 48
    .line 49
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    invoke-direct {v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    throw v1
.end method

.method public static V(I)I
    .locals 1

    .line 1
    const/high16 v0, 0xff00000

    and-int/2addr p0, v0

    ushr-int/lit8 p0, p0, 0x14

    return p0
.end method

.method public static l(Ljava/lang/Object;)V
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/google/protobuf/T1;->u(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 9
    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v2, "Mutating immutable message: "

    .line 13
    .line 14
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw v0
.end method

.method public static m([BIILcom/google/protobuf/S2;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/SG;)I
    .locals 1

    .line 1
    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    .line 2
    .line 3
    .line 4
    move-result p3

    .line 5
    packed-switch p3, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    :pswitch_0
    new-instance p0, Ljava/lang/RuntimeException;

    .line 9
    .line 10
    const-string p1, "unsupported field type."

    .line 11
    .line 12
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    throw p0

    .line 16
    :pswitch_1
    invoke-static {p0, p1, p5}, Lcom/google/protobuf/i;->P([BILcom/google/android/gms/internal/ads/SG;)I

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    iget-wide p1, p5, Lcom/google/android/gms/internal/ads/SG;->b:J

    .line 21
    .line 22
    invoke-static {p1, p2}, Lcom/google/protobuf/w;->d(J)J

    .line 23
    .line 24
    .line 25
    move-result-wide p1

    .line 26
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    iput-object p1, p5, Lcom/google/android/gms/internal/ads/SG;->c:Ljava/lang/Object;

    .line 31
    .line 32
    goto/16 :goto_3

    .line 33
    .line 34
    :pswitch_2
    invoke-static {p0, p1, p5}, Lcom/google/protobuf/i;->N([BILcom/google/android/gms/internal/ads/SG;)I

    .line 35
    .line 36
    .line 37
    move-result p0

    .line 38
    iget p1, p5, Lcom/google/android/gms/internal/ads/SG;->a:I

    .line 39
    .line 40
    invoke-static {p1}, Lcom/google/protobuf/w;->c(I)I

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    iput-object p1, p5, Lcom/google/android/gms/internal/ads/SG;->c:Ljava/lang/Object;

    .line 49
    .line 50
    goto/16 :goto_3

    .line 51
    .line 52
    :pswitch_3
    invoke-static {p0, p1, p5}, Lcom/google/protobuf/i;->f([BILcom/google/android/gms/internal/ads/SG;)I

    .line 53
    .line 54
    .line 55
    move-result p0

    .line 56
    goto/16 :goto_3

    .line 57
    .line 58
    :pswitch_4
    sget-object p3, Lcom/google/protobuf/g2;->c:Lcom/google/protobuf/g2;

    .line 59
    .line 60
    invoke-virtual {p3, p4}, Lcom/google/protobuf/g2;->a(Ljava/lang/Class;)Lcom/google/protobuf/j2;

    .line 61
    .line 62
    .line 63
    move-result-object p3

    .line 64
    invoke-static {p3, p0, p1, p2, p5}, Lcom/google/protobuf/i;->t(Lcom/google/protobuf/j2;[BIILcom/google/android/gms/internal/ads/SG;)I

    .line 65
    .line 66
    .line 67
    move-result p0

    .line 68
    goto :goto_3

    .line 69
    :pswitch_5
    invoke-static {p0, p1, p5}, Lcom/google/protobuf/i;->J([BILcom/google/android/gms/internal/ads/SG;)I

    .line 70
    .line 71
    .line 72
    move-result p0

    .line 73
    goto :goto_3

    .line 74
    :pswitch_6
    invoke-static {p0, p1, p5}, Lcom/google/protobuf/i;->P([BILcom/google/android/gms/internal/ads/SG;)I

    .line 75
    .line 76
    .line 77
    move-result p0

    .line 78
    iget-wide p1, p5, Lcom/google/android/gms/internal/ads/SG;->b:J

    .line 79
    .line 80
    const-wide/16 p3, 0x0

    .line 81
    .line 82
    cmp-long v0, p1, p3

    .line 83
    .line 84
    if-eqz v0, :cond_0

    .line 85
    .line 86
    const/4 p1, 0x1

    .line 87
    goto :goto_0

    .line 88
    :cond_0
    const/4 p1, 0x0

    .line 89
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    iput-object p1, p5, Lcom/google/android/gms/internal/ads/SG;->c:Ljava/lang/Object;

    .line 94
    .line 95
    goto :goto_3

    .line 96
    :pswitch_7
    invoke-static {p1, p0}, Lcom/google/protobuf/i;->l(I[B)I

    .line 97
    .line 98
    .line 99
    move-result p0

    .line 100
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 101
    .line 102
    .line 103
    move-result-object p0

    .line 104
    iput-object p0, p5, Lcom/google/android/gms/internal/ads/SG;->c:Ljava/lang/Object;

    .line 105
    .line 106
    :goto_1
    add-int/lit8 p0, p1, 0x4

    .line 107
    .line 108
    goto :goto_3

    .line 109
    :pswitch_8
    invoke-static {p1, p0}, Lcom/google/protobuf/i;->n(I[B)J

    .line 110
    .line 111
    .line 112
    move-result-wide p2

    .line 113
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 114
    .line 115
    .line 116
    move-result-object p0

    .line 117
    iput-object p0, p5, Lcom/google/android/gms/internal/ads/SG;->c:Ljava/lang/Object;

    .line 118
    .line 119
    :goto_2
    add-int/lit8 p0, p1, 0x8

    .line 120
    .line 121
    goto :goto_3

    .line 122
    :pswitch_9
    invoke-static {p0, p1, p5}, Lcom/google/protobuf/i;->N([BILcom/google/android/gms/internal/ads/SG;)I

    .line 123
    .line 124
    .line 125
    move-result p0

    .line 126
    iget p1, p5, Lcom/google/android/gms/internal/ads/SG;->a:I

    .line 127
    .line 128
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    iput-object p1, p5, Lcom/google/android/gms/internal/ads/SG;->c:Ljava/lang/Object;

    .line 133
    .line 134
    goto :goto_3

    .line 135
    :pswitch_a
    invoke-static {p0, p1, p5}, Lcom/google/protobuf/i;->P([BILcom/google/android/gms/internal/ads/SG;)I

    .line 136
    .line 137
    .line 138
    move-result p0

    .line 139
    iget-wide p1, p5, Lcom/google/android/gms/internal/ads/SG;->b:J

    .line 140
    .line 141
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    iput-object p1, p5, Lcom/google/android/gms/internal/ads/SG;->c:Ljava/lang/Object;

    .line 146
    .line 147
    goto :goto_3

    .line 148
    :pswitch_b
    invoke-static {p1, p0}, Lcom/google/protobuf/i;->p(I[B)F

    .line 149
    .line 150
    .line 151
    move-result p0

    .line 152
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 153
    .line 154
    .line 155
    move-result-object p0

    .line 156
    iput-object p0, p5, Lcom/google/android/gms/internal/ads/SG;->c:Ljava/lang/Object;

    .line 157
    .line 158
    goto :goto_1

    .line 159
    :pswitch_c
    invoke-static {p1, p0}, Lcom/google/protobuf/i;->h(I[B)D

    .line 160
    .line 161
    .line 162
    move-result-wide p2

    .line 163
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 164
    .line 165
    .line 166
    move-result-object p0

    .line 167
    iput-object p0, p5, Lcom/google/android/gms/internal/ads/SG;->c:Ljava/lang/Object;

    .line 168
    .line 169
    goto :goto_2

    .line 170
    :goto_3
    return p0

    .line 171
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_9
        :pswitch_9
        :pswitch_7
        :pswitch_8
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static r(Ljava/lang/Object;)Lcom/google/protobuf/A2;
    .locals 2

    .line 1
    check-cast p0, Lcom/google/protobuf/i1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/protobuf/i1;->unknownFields:Lcom/google/protobuf/A2;

    .line 4
    .line 5
    sget-object v1, Lcom/google/protobuf/A2;->f:Lcom/google/protobuf/A2;

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    new-instance v0, Lcom/google/protobuf/A2;

    .line 10
    .line 11
    invoke-direct {v0}, Lcom/google/protobuf/A2;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lcom/google/protobuf/i1;->unknownFields:Lcom/google/protobuf/A2;

    .line 15
    .line 16
    :cond_0
    return-object v0
.end method

.method public static u(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return p0

    .line 5
    :cond_0
    instance-of v0, p0, Lcom/google/protobuf/i1;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    check-cast p0, Lcom/google/protobuf/i1;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/google/protobuf/i1;->isMutable()Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    return p0

    .line 16
    :cond_1
    const/4 p0, 0x1

    .line 17
    return p0
.end method


# virtual methods
.method public final A(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/protobuf/T1;->q(I)Lcom/google/protobuf/j2;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0, p1}, Lcom/google/protobuf/T1;->W(I)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const v2, 0xfffff

    .line 10
    .line 11
    .line 12
    and-int/2addr v1, v2

    .line 13
    int-to-long v1, v1

    .line 14
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/T1;->s(ILjava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-nez p1, :cond_0

    .line 19
    .line 20
    invoke-interface {v0}, Lcom/google/protobuf/j2;->i()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    return-object p1

    .line 25
    :cond_0
    sget-object p1, Lcom/google/protobuf/T1;->q:Lsun/misc/Unsafe;

    .line 26
    .line 27
    invoke-virtual {p1, p2, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-static {p1}, Lcom/google/protobuf/T1;->u(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result p2

    .line 35
    if-eqz p2, :cond_1

    .line 36
    .line 37
    return-object p1

    .line 38
    :cond_1
    invoke-interface {v0}, Lcom/google/protobuf/j2;->i()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    if-eqz p1, :cond_2

    .line 43
    .line 44
    invoke-interface {v0, p2, p1}, Lcom/google/protobuf/j2;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    :cond_2
    return-object p2
.end method

.method public final B(ILjava/lang/Object;I)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-virtual {p0, p3}, Lcom/google/protobuf/T1;->q(I)Lcom/google/protobuf/j2;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/T1;->v(ILjava/lang/Object;I)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    invoke-interface {v0}, Lcom/google/protobuf/j2;->i()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1

    .line 16
    :cond_0
    invoke-virtual {p0, p3}, Lcom/google/protobuf/T1;->W(I)I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    const p3, 0xfffff

    .line 21
    .line 22
    .line 23
    and-int/2addr p1, p3

    .line 24
    int-to-long v1, p1

    .line 25
    sget-object p1, Lcom/google/protobuf/T1;->q:Lsun/misc/Unsafe;

    .line 26
    .line 27
    invoke-virtual {p1, p2, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-static {p1}, Lcom/google/protobuf/T1;->u(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result p2

    .line 35
    if-eqz p2, :cond_1

    .line 36
    .line 37
    return-object p1

    .line 38
    :cond_1
    invoke-interface {v0}, Lcom/google/protobuf/j2;->i()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    if-eqz p1, :cond_2

    .line 43
    .line 44
    invoke-interface {v0, p2, p1}, Lcom/google/protobuf/j2;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    :cond_2
    return-object p2
.end method

.method public final H(Ljava/lang/Object;[BIIIJLcom/google/android/gms/internal/ads/SG;)I
    .locals 7

    .line 1
    invoke-virtual {p0, p5}, Lcom/google/protobuf/T1;->p(I)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p5

    .line 5
    sget-object v0, Lcom/google/protobuf/T1;->q:Lsun/misc/Unsafe;

    .line 6
    .line 7
    invoke-virtual {v0, p1, p6, p7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    iget-object v2, p0, Lcom/google/protobuf/T1;->o:Lcom/google/protobuf/L1;

    .line 12
    .line 13
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    invoke-static {v1}, Lcom/google/protobuf/L1;->d(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    invoke-static {}, Lcom/google/protobuf/L1;->f()Lcom/google/protobuf/K1;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-static {v2, v1}, Lcom/google/protobuf/L1;->e(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/protobuf/K1;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, p1, p6, p7, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    move-object v1, v2

    .line 33
    :cond_0
    invoke-static {p5}, Lcom/google/protobuf/L1;->a(Ljava/lang/Object;)Lm2/i;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-static {v1}, Lcom/google/protobuf/L1;->b(Ljava/lang/Object;)Lcom/google/protobuf/K1;

    .line 38
    .line 39
    .line 40
    move-result-object p5

    .line 41
    invoke-static {p2, p3, p8}, Lcom/google/protobuf/i;->N([BILcom/google/android/gms/internal/ads/SG;)I

    .line 42
    .line 43
    .line 44
    move-result p3

    .line 45
    iget p6, p8, Lcom/google/android/gms/internal/ads/SG;->a:I

    .line 46
    .line 47
    if-ltz p6, :cond_7

    .line 48
    .line 49
    sub-int p7, p4, p3

    .line 50
    .line 51
    if-gt p6, p7, :cond_7

    .line 52
    .line 53
    add-int/2addr p6, p3

    .line 54
    iget-object p7, p1, Lm2/i;->I:Ljava/lang/Object;

    .line 55
    .line 56
    iget-object v0, p1, Lm2/i;->K:Ljava/lang/Object;

    .line 57
    .line 58
    :goto_0
    if-ge p3, p6, :cond_5

    .line 59
    .line 60
    add-int/lit8 v1, p3, 0x1

    .line 61
    .line 62
    aget-byte p3, p2, p3

    .line 63
    .line 64
    if-gez p3, :cond_1

    .line 65
    .line 66
    invoke-static {p3, p2, v1, p8}, Lcom/google/protobuf/i;->M(I[BILcom/google/android/gms/internal/ads/SG;)I

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    iget p3, p8, Lcom/google/android/gms/internal/ads/SG;->a:I

    .line 71
    .line 72
    :cond_1
    move v2, v1

    .line 73
    ushr-int/lit8 v1, p3, 0x3

    .line 74
    .line 75
    and-int/lit8 v3, p3, 0x7

    .line 76
    .line 77
    const/4 v4, 0x1

    .line 78
    if-eq v1, v4, :cond_3

    .line 79
    .line 80
    const/4 v4, 0x2

    .line 81
    if-eq v1, v4, :cond_2

    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_2
    iget-object v1, p1, Lm2/i;->J:Ljava/lang/Object;

    .line 85
    .line 86
    move-object v4, v1

    .line 87
    check-cast v4, Lcom/google/protobuf/S2;

    .line 88
    .line 89
    iget v1, v4, Lcom/google/protobuf/S2;->H:I

    .line 90
    .line 91
    if-ne v3, v1, :cond_4

    .line 92
    .line 93
    iget-object p3, p1, Lm2/i;->K:Ljava/lang/Object;

    .line 94
    .line 95
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 96
    .line 97
    .line 98
    move-result-object v5

    .line 99
    move-object v1, p2

    .line 100
    move v3, p4

    .line 101
    move-object v6, p8

    .line 102
    invoke-static/range {v1 .. v6}, Lcom/google/protobuf/T1;->m([BIILcom/google/protobuf/S2;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/SG;)I

    .line 103
    .line 104
    .line 105
    move-result p3

    .line 106
    iget-object v0, p8, Lcom/google/android/gms/internal/ads/SG;->c:Ljava/lang/Object;

    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_3
    iget-object v1, p1, Lm2/i;->H:Ljava/lang/Object;

    .line 110
    .line 111
    move-object v4, v1

    .line 112
    check-cast v4, Lcom/google/protobuf/S2;

    .line 113
    .line 114
    iget v1, v4, Lcom/google/protobuf/S2;->H:I

    .line 115
    .line 116
    if-ne v3, v1, :cond_4

    .line 117
    .line 118
    const/4 v5, 0x0

    .line 119
    move-object v1, p2

    .line 120
    move v3, p4

    .line 121
    move-object v6, p8

    .line 122
    invoke-static/range {v1 .. v6}, Lcom/google/protobuf/T1;->m([BIILcom/google/protobuf/S2;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/SG;)I

    .line 123
    .line 124
    .line 125
    move-result p3

    .line 126
    iget-object p7, p8, Lcom/google/android/gms/internal/ads/SG;->c:Ljava/lang/Object;

    .line 127
    .line 128
    goto :goto_0

    .line 129
    :cond_4
    :goto_1
    invoke-static {p3, p2, v2, p4, p8}, Lcom/google/protobuf/i;->W(I[BIILcom/google/android/gms/internal/ads/SG;)I

    .line 130
    .line 131
    .line 132
    move-result p3

    .line 133
    goto :goto_0

    .line 134
    :cond_5
    if-ne p3, p6, :cond_6

    .line 135
    .line 136
    invoke-virtual {p5, p7, v0}, Lcom/google/protobuf/K1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    return p6

    .line 140
    :cond_6
    invoke-static {}, Lcom/google/protobuf/x1;->f()Lcom/google/protobuf/x1;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    throw p1

    .line 145
    :cond_7
    invoke-static {}, Lcom/google/protobuf/x1;->g()Lcom/google/protobuf/x1;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    throw p1
.end method

.method public final I(Ljava/lang/Object;[BIIILcom/google/android/gms/internal/ads/SG;)I
    .locals 28

    .line 1
    move-object/from16 v15, p0

    .line 2
    .line 3
    move-object/from16 v14, p1

    .line 4
    .line 5
    move-object/from16 v12, p2

    .line 6
    .line 7
    move/from16 v13, p4

    .line 8
    .line 9
    move/from16 v11, p5

    .line 10
    .line 11
    move-object/from16 v9, p6

    .line 12
    .line 13
    invoke-static/range {p1 .. p1}, Lcom/google/protobuf/T1;->l(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    move/from16 v0, p3

    .line 17
    .line 18
    const/4 v1, -0x1

    .line 19
    const/4 v2, 0x0

    .line 20
    const/4 v3, 0x0

    .line 21
    const/4 v5, 0x0

    .line 22
    const v6, 0xfffff

    .line 23
    .line 24
    .line 25
    :goto_0
    sget-object v4, Lcom/google/protobuf/T1;->q:Lsun/misc/Unsafe;

    .line 26
    .line 27
    if-ge v0, v13, :cond_1b

    .line 28
    .line 29
    add-int/lit8 v3, v0, 0x1

    .line 30
    .line 31
    aget-byte v0, v12, v0

    .line 32
    .line 33
    if-gez v0, :cond_0

    .line 34
    .line 35
    invoke-static {v0, v12, v3, v9}, Lcom/google/protobuf/i;->M(I[BILcom/google/android/gms/internal/ads/SG;)I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    iget v3, v9, Lcom/google/android/gms/internal/ads/SG;->a:I

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_0
    move/from16 v27, v3

    .line 43
    .line 44
    move v3, v0

    .line 45
    move/from16 v0, v27

    .line 46
    .line 47
    :goto_1
    ushr-int/lit8 v10, v3, 0x3

    .line 48
    .line 49
    and-int/lit8 v7, v3, 0x7

    .line 50
    .line 51
    iget v8, v15, Lcom/google/protobuf/T1;->d:I

    .line 52
    .line 53
    move/from16 p3, v0

    .line 54
    .line 55
    iget v0, v15, Lcom/google/protobuf/T1;->c:I

    .line 56
    .line 57
    move/from16 v19, v3

    .line 58
    .line 59
    const/4 v3, 0x3

    .line 60
    if-le v10, v1, :cond_2

    .line 61
    .line 62
    div-int/2addr v2, v3

    .line 63
    if-lt v10, v0, :cond_1

    .line 64
    .line 65
    if-gt v10, v8, :cond_1

    .line 66
    .line 67
    invoke-virtual {v15, v10, v2}, Lcom/google/protobuf/T1;->S(II)I

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    goto :goto_2

    .line 72
    :cond_1
    const/4 v0, -0x1

    .line 73
    :goto_2
    move v2, v0

    .line 74
    const/4 v1, -0x1

    .line 75
    const/4 v8, 0x0

    .line 76
    goto :goto_4

    .line 77
    :cond_2
    if-lt v10, v0, :cond_3

    .line 78
    .line 79
    if-gt v10, v8, :cond_3

    .line 80
    .line 81
    const/4 v8, 0x0

    .line 82
    invoke-virtual {v15, v10, v8}, Lcom/google/protobuf/T1;->S(II)I

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    goto :goto_3

    .line 87
    :cond_3
    const/4 v8, 0x0

    .line 88
    const/4 v0, -0x1

    .line 89
    :goto_3
    move v2, v0

    .line 90
    const/4 v1, -0x1

    .line 91
    :goto_4
    if-ne v2, v1, :cond_4

    .line 92
    .line 93
    move/from16 v2, p3

    .line 94
    .line 95
    move-object/from16 v26, v4

    .line 96
    .line 97
    move/from16 v18, v5

    .line 98
    .line 99
    move/from16 v25, v6

    .line 100
    .line 101
    move/from16 v16, v10

    .line 102
    .line 103
    move v8, v11

    .line 104
    move/from16 v9, v19

    .line 105
    .line 106
    const/16 v17, -0x1

    .line 107
    .line 108
    const/16 v19, 0x0

    .line 109
    .line 110
    const/16 v20, 0x0

    .line 111
    .line 112
    goto/16 :goto_15

    .line 113
    .line 114
    :cond_4
    add-int/lit8 v0, v2, 0x1

    .line 115
    .line 116
    iget-object v1, v15, Lcom/google/protobuf/T1;->a:[I

    .line 117
    .line 118
    aget v0, v1, v0

    .line 119
    .line 120
    invoke-static {v0}, Lcom/google/protobuf/T1;->V(I)I

    .line 121
    .line 122
    .line 123
    move-result v3

    .line 124
    const v16, 0xfffff

    .line 125
    .line 126
    .line 127
    and-int v8, v0, v16

    .line 128
    .line 129
    int-to-long v8, v8

    .line 130
    move-wide/from16 v21, v8

    .line 131
    .line 132
    const/16 v8, 0x11

    .line 133
    .line 134
    if-gt v3, v8, :cond_10

    .line 135
    .line 136
    add-int/lit8 v8, v2, 0x2

    .line 137
    .line 138
    aget v1, v1, v8

    .line 139
    .line 140
    ushr-int/lit8 v8, v1, 0x14

    .line 141
    .line 142
    const/4 v9, 0x1

    .line 143
    shl-int v8, v9, v8

    .line 144
    .line 145
    const v9, 0xfffff

    .line 146
    .line 147
    .line 148
    and-int/2addr v1, v9

    .line 149
    move/from16 v16, v10

    .line 150
    .line 151
    if-eq v1, v6, :cond_7

    .line 152
    .line 153
    if-eq v6, v9, :cond_5

    .line 154
    .line 155
    int-to-long v9, v6

    .line 156
    invoke-virtual {v4, v14, v9, v10, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 157
    .line 158
    .line 159
    const v9, 0xfffff

    .line 160
    .line 161
    .line 162
    :cond_5
    if-ne v1, v9, :cond_6

    .line 163
    .line 164
    const/4 v5, 0x0

    .line 165
    goto :goto_5

    .line 166
    :cond_6
    int-to-long v5, v1

    .line 167
    invoke-virtual {v4, v14, v5, v6}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 168
    .line 169
    .line 170
    move-result v5

    .line 171
    :goto_5
    move/from16 v25, v1

    .line 172
    .line 173
    move v10, v5

    .line 174
    goto :goto_6

    .line 175
    :cond_7
    move v10, v5

    .line 176
    move/from16 v25, v6

    .line 177
    .line 178
    :goto_6
    const/4 v1, 0x5

    .line 179
    packed-switch v3, :pswitch_data_0

    .line 180
    .line 181
    .line 182
    :cond_8
    move/from16 v6, p3

    .line 183
    .line 184
    move v11, v2

    .line 185
    move/from16 v13, v19

    .line 186
    .line 187
    const/16 v17, -0x1

    .line 188
    .line 189
    goto/16 :goto_10

    .line 190
    .line 191
    :pswitch_0
    const/4 v0, 0x3

    .line 192
    if-ne v7, v0, :cond_8

    .line 193
    .line 194
    invoke-virtual {v15, v2, v14}, Lcom/google/protobuf/T1;->A(ILjava/lang/Object;)Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    move-result-object v7

    .line 198
    shl-int/lit8 v0, v16, 0x3

    .line 199
    .line 200
    or-int/lit8 v5, v0, 0x4

    .line 201
    .line 202
    invoke-virtual {v15, v2}, Lcom/google/protobuf/T1;->q(I)Lcom/google/protobuf/j2;

    .line 203
    .line 204
    .line 205
    move-result-object v1

    .line 206
    move/from16 v6, p3

    .line 207
    .line 208
    move-object v0, v7

    .line 209
    const/16 v17, -0x1

    .line 210
    .line 211
    move v4, v2

    .line 212
    move-object/from16 v2, p2

    .line 213
    .line 214
    move/from16 v13, v19

    .line 215
    .line 216
    move v3, v6

    .line 217
    move v6, v4

    .line 218
    move/from16 v4, p4

    .line 219
    .line 220
    move v11, v6

    .line 221
    move-object/from16 v6, p6

    .line 222
    .line 223
    invoke-static/range {v0 .. v6}, Lcom/google/protobuf/i;->T(Ljava/lang/Object;Lcom/google/protobuf/j2;[BIIILcom/google/android/gms/internal/ads/SG;)I

    .line 224
    .line 225
    .line 226
    move-result v0

    .line 227
    invoke-virtual {v15, v11, v14, v7}, Lcom/google/protobuf/T1;->T(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 228
    .line 229
    .line 230
    :goto_7
    or-int v5, v10, v8

    .line 231
    .line 232
    move-object/from16 v9, p6

    .line 233
    .line 234
    :goto_8
    move v2, v11

    .line 235
    move v3, v13

    .line 236
    move/from16 v1, v16

    .line 237
    .line 238
    :goto_9
    move/from16 v6, v25

    .line 239
    .line 240
    move/from16 v13, p4

    .line 241
    .line 242
    move/from16 v11, p5

    .line 243
    .line 244
    goto/16 :goto_0

    .line 245
    .line 246
    :pswitch_1
    move/from16 v6, p3

    .line 247
    .line 248
    move v11, v2

    .line 249
    move/from16 v13, v19

    .line 250
    .line 251
    const/16 v17, -0x1

    .line 252
    .line 253
    if-nez v7, :cond_9

    .line 254
    .line 255
    move-object/from16 v7, p6

    .line 256
    .line 257
    move-wide/from16 v2, v21

    .line 258
    .line 259
    invoke-static {v12, v6, v7}, Lcom/google/protobuf/i;->P([BILcom/google/android/gms/internal/ads/SG;)I

    .line 260
    .line 261
    .line 262
    move-result v6

    .line 263
    iget-wide v0, v7, Lcom/google/android/gms/internal/ads/SG;->b:J

    .line 264
    .line 265
    invoke-static {v0, v1}, Lcom/google/protobuf/w;->d(J)J

    .line 266
    .line 267
    .line 268
    move-result-wide v18

    .line 269
    move-object v0, v4

    .line 270
    move-object/from16 v1, p1

    .line 271
    .line 272
    move-wide/from16 v4, v18

    .line 273
    .line 274
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    .line 275
    .line 276
    .line 277
    or-int v5, v10, v8

    .line 278
    .line 279
    move v0, v6

    .line 280
    :goto_a
    move-object v9, v7

    .line 281
    goto :goto_8

    .line 282
    :cond_9
    move-object/from16 v7, p6

    .line 283
    .line 284
    goto/16 :goto_10

    .line 285
    .line 286
    :pswitch_2
    move/from16 v6, p3

    .line 287
    .line 288
    move-object/from16 v5, p6

    .line 289
    .line 290
    move v11, v2

    .line 291
    move/from16 v13, v19

    .line 292
    .line 293
    move-wide/from16 v2, v21

    .line 294
    .line 295
    const/16 v17, -0x1

    .line 296
    .line 297
    if-nez v7, :cond_f

    .line 298
    .line 299
    invoke-static {v12, v6, v5}, Lcom/google/protobuf/i;->N([BILcom/google/android/gms/internal/ads/SG;)I

    .line 300
    .line 301
    .line 302
    move-result v0

    .line 303
    iget v1, v5, Lcom/google/android/gms/internal/ads/SG;->a:I

    .line 304
    .line 305
    invoke-static {v1}, Lcom/google/protobuf/w;->c(I)I

    .line 306
    .line 307
    .line 308
    move-result v1

    .line 309
    invoke-virtual {v4, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 310
    .line 311
    .line 312
    :goto_b
    or-int v1, v10, v8

    .line 313
    .line 314
    move-object v9, v5

    .line 315
    move v2, v11

    .line 316
    move v3, v13

    .line 317
    move/from16 v6, v25

    .line 318
    .line 319
    move/from16 v13, p4

    .line 320
    .line 321
    move/from16 v11, p5

    .line 322
    .line 323
    move v5, v1

    .line 324
    :goto_c
    move/from16 v1, v16

    .line 325
    .line 326
    goto/16 :goto_0

    .line 327
    .line 328
    :pswitch_3
    move/from16 v6, p3

    .line 329
    .line 330
    move-object/from16 v5, p6

    .line 331
    .line 332
    move v11, v2

    .line 333
    move/from16 v13, v19

    .line 334
    .line 335
    move-wide/from16 v2, v21

    .line 336
    .line 337
    const/16 v17, -0x1

    .line 338
    .line 339
    if-nez v7, :cond_f

    .line 340
    .line 341
    invoke-static {v12, v6, v5}, Lcom/google/protobuf/i;->N([BILcom/google/android/gms/internal/ads/SG;)I

    .line 342
    .line 343
    .line 344
    move-result v1

    .line 345
    iget v6, v5, Lcom/google/android/gms/internal/ads/SG;->a:I

    .line 346
    .line 347
    invoke-virtual {v15, v11}, Lcom/google/protobuf/T1;->o(I)Lcom/google/protobuf/q1;

    .line 348
    .line 349
    .line 350
    move-result-object v7

    .line 351
    const/high16 v18, -0x80000000

    .line 352
    .line 353
    and-int v0, v0, v18

    .line 354
    .line 355
    if-eqz v0, :cond_b

    .line 356
    .line 357
    if-eqz v7, :cond_b

    .line 358
    .line 359
    invoke-interface {v7, v6}, Lcom/google/protobuf/q1;->a(I)Z

    .line 360
    .line 361
    .line 362
    move-result v0

    .line 363
    if-eqz v0, :cond_a

    .line 364
    .line 365
    goto :goto_d

    .line 366
    :cond_a
    invoke-static/range {p1 .. p1}, Lcom/google/protobuf/T1;->r(Ljava/lang/Object;)Lcom/google/protobuf/A2;

    .line 367
    .line 368
    .line 369
    move-result-object v0

    .line 370
    int-to-long v2, v6

    .line 371
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 372
    .line 373
    .line 374
    move-result-object v2

    .line 375
    invoke-virtual {v0, v13, v2}, Lcom/google/protobuf/A2;->f(ILjava/lang/Object;)V

    .line 376
    .line 377
    .line 378
    move v0, v1

    .line 379
    move-object v9, v5

    .line 380
    move v5, v10

    .line 381
    goto/16 :goto_8

    .line 382
    .line 383
    :cond_b
    :goto_d
    invoke-virtual {v4, v14, v2, v3, v6}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 384
    .line 385
    .line 386
    or-int v0, v10, v8

    .line 387
    .line 388
    move-object v9, v5

    .line 389
    move v2, v11

    .line 390
    move v3, v13

    .line 391
    move/from16 v6, v25

    .line 392
    .line 393
    move/from16 v13, p4

    .line 394
    .line 395
    move/from16 v11, p5

    .line 396
    .line 397
    move v5, v0

    .line 398
    move v0, v1

    .line 399
    goto :goto_c

    .line 400
    :pswitch_4
    move/from16 v6, p3

    .line 401
    .line 402
    move-object/from16 v5, p6

    .line 403
    .line 404
    move v11, v2

    .line 405
    move/from16 v13, v19

    .line 406
    .line 407
    move-wide/from16 v2, v21

    .line 408
    .line 409
    const/4 v0, 0x2

    .line 410
    const/16 v17, -0x1

    .line 411
    .line 412
    if-ne v7, v0, :cond_f

    .line 413
    .line 414
    invoke-static {v12, v6, v5}, Lcom/google/protobuf/i;->f([BILcom/google/android/gms/internal/ads/SG;)I

    .line 415
    .line 416
    .line 417
    move-result v0

    .line 418
    iget-object v1, v5, Lcom/google/android/gms/internal/ads/SG;->c:Ljava/lang/Object;

    .line 419
    .line 420
    invoke-virtual {v4, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 421
    .line 422
    .line 423
    goto :goto_b

    .line 424
    :pswitch_5
    move/from16 v6, p3

    .line 425
    .line 426
    move-object/from16 v5, p6

    .line 427
    .line 428
    move v11, v2

    .line 429
    move/from16 v13, v19

    .line 430
    .line 431
    const/4 v0, 0x2

    .line 432
    const/16 v17, -0x1

    .line 433
    .line 434
    if-ne v7, v0, :cond_f

    .line 435
    .line 436
    invoke-virtual {v15, v11, v14}, Lcom/google/protobuf/T1;->A(ILjava/lang/Object;)Ljava/lang/Object;

    .line 437
    .line 438
    .line 439
    move-result-object v7

    .line 440
    invoke-virtual {v15, v11}, Lcom/google/protobuf/T1;->q(I)Lcom/google/protobuf/j2;

    .line 441
    .line 442
    .line 443
    move-result-object v1

    .line 444
    move-object v0, v7

    .line 445
    move-object/from16 v2, p2

    .line 446
    .line 447
    move v3, v6

    .line 448
    move/from16 v4, p4

    .line 449
    .line 450
    move-object v6, v5

    .line 451
    move-object/from16 v5, p6

    .line 452
    .line 453
    invoke-static/range {v0 .. v5}, Lcom/google/protobuf/i;->U(Ljava/lang/Object;Lcom/google/protobuf/j2;[BIILcom/google/android/gms/internal/ads/SG;)I

    .line 454
    .line 455
    .line 456
    move-result v0

    .line 457
    invoke-virtual {v15, v11, v14, v7}, Lcom/google/protobuf/T1;->T(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 458
    .line 459
    .line 460
    or-int v5, v10, v8

    .line 461
    .line 462
    move-object v9, v6

    .line 463
    goto/16 :goto_8

    .line 464
    .line 465
    :pswitch_6
    move/from16 v6, p3

    .line 466
    .line 467
    move-object/from16 v5, p6

    .line 468
    .line 469
    move v11, v2

    .line 470
    move/from16 v13, v19

    .line 471
    .line 472
    move-wide/from16 v2, v21

    .line 473
    .line 474
    const/4 v1, 0x2

    .line 475
    const/16 v17, -0x1

    .line 476
    .line 477
    if-ne v7, v1, :cond_f

    .line 478
    .line 479
    const/high16 v1, 0x20000000

    .line 480
    .line 481
    and-int/2addr v0, v1

    .line 482
    if-eqz v0, :cond_c

    .line 483
    .line 484
    invoke-static {v12, v6, v5}, Lcom/google/protobuf/i;->J([BILcom/google/android/gms/internal/ads/SG;)I

    .line 485
    .line 486
    .line 487
    move-result v0

    .line 488
    goto :goto_e

    .line 489
    :cond_c
    invoke-static {v12, v6, v5}, Lcom/google/protobuf/i;->G([BILcom/google/android/gms/internal/ads/SG;)I

    .line 490
    .line 491
    .line 492
    move-result v0

    .line 493
    :goto_e
    iget-object v1, v5, Lcom/google/android/gms/internal/ads/SG;->c:Ljava/lang/Object;

    .line 494
    .line 495
    invoke-virtual {v4, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 496
    .line 497
    .line 498
    goto/16 :goto_b

    .line 499
    .line 500
    :pswitch_7
    move/from16 v6, p3

    .line 501
    .line 502
    move-object/from16 v5, p6

    .line 503
    .line 504
    move v11, v2

    .line 505
    move/from16 v13, v19

    .line 506
    .line 507
    move-wide/from16 v2, v21

    .line 508
    .line 509
    const/16 v17, -0x1

    .line 510
    .line 511
    if-nez v7, :cond_f

    .line 512
    .line 513
    invoke-static {v12, v6, v5}, Lcom/google/protobuf/i;->P([BILcom/google/android/gms/internal/ads/SG;)I

    .line 514
    .line 515
    .line 516
    move-result v0

    .line 517
    iget-wide v6, v5, Lcom/google/android/gms/internal/ads/SG;->b:J

    .line 518
    .line 519
    const-wide/16 v18, 0x0

    .line 520
    .line 521
    cmp-long v1, v6, v18

    .line 522
    .line 523
    if-eqz v1, :cond_d

    .line 524
    .line 525
    const/4 v1, 0x1

    .line 526
    goto :goto_f

    .line 527
    :cond_d
    const/4 v1, 0x0

    .line 528
    :goto_f
    invoke-static {v14, v2, v3, v1}, Lcom/google/protobuf/H2;->k(Ljava/lang/Object;JZ)V

    .line 529
    .line 530
    .line 531
    goto/16 :goto_b

    .line 532
    .line 533
    :pswitch_8
    move/from16 v6, p3

    .line 534
    .line 535
    move-object/from16 v5, p6

    .line 536
    .line 537
    move v11, v2

    .line 538
    move/from16 v13, v19

    .line 539
    .line 540
    move-wide/from16 v2, v21

    .line 541
    .line 542
    const/16 v17, -0x1

    .line 543
    .line 544
    if-ne v7, v1, :cond_f

    .line 545
    .line 546
    invoke-static {v6, v12}, Lcom/google/protobuf/i;->l(I[B)I

    .line 547
    .line 548
    .line 549
    move-result v0

    .line 550
    invoke-virtual {v4, v14, v2, v3, v0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 551
    .line 552
    .line 553
    add-int/lit8 v0, v6, 0x4

    .line 554
    .line 555
    goto/16 :goto_b

    .line 556
    .line 557
    :pswitch_9
    move/from16 v6, p3

    .line 558
    .line 559
    move-object/from16 v5, p6

    .line 560
    .line 561
    move v11, v2

    .line 562
    move/from16 v13, v19

    .line 563
    .line 564
    move-wide/from16 v2, v21

    .line 565
    .line 566
    const/4 v0, 0x1

    .line 567
    const/16 v17, -0x1

    .line 568
    .line 569
    if-ne v7, v0, :cond_e

    .line 570
    .line 571
    invoke-static {v6, v12}, Lcom/google/protobuf/i;->n(I[B)J

    .line 572
    .line 573
    .line 574
    move-result-wide v18

    .line 575
    move-object v0, v4

    .line 576
    move-object/from16 v1, p1

    .line 577
    .line 578
    move-object v7, v5

    .line 579
    move-wide/from16 v4, v18

    .line 580
    .line 581
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    .line 582
    .line 583
    .line 584
    add-int/lit8 v0, v6, 0x8

    .line 585
    .line 586
    or-int v5, v10, v8

    .line 587
    .line 588
    goto/16 :goto_a

    .line 589
    .line 590
    :cond_e
    move-object v7, v5

    .line 591
    goto/16 :goto_10

    .line 592
    .line 593
    :pswitch_a
    move/from16 v6, p3

    .line 594
    .line 595
    move-object/from16 v5, p6

    .line 596
    .line 597
    move v11, v2

    .line 598
    move/from16 v13, v19

    .line 599
    .line 600
    move-wide/from16 v2, v21

    .line 601
    .line 602
    const/16 v17, -0x1

    .line 603
    .line 604
    if-nez v7, :cond_f

    .line 605
    .line 606
    invoke-static {v12, v6, v5}, Lcom/google/protobuf/i;->N([BILcom/google/android/gms/internal/ads/SG;)I

    .line 607
    .line 608
    .line 609
    move-result v0

    .line 610
    iget v1, v5, Lcom/google/android/gms/internal/ads/SG;->a:I

    .line 611
    .line 612
    invoke-virtual {v4, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 613
    .line 614
    .line 615
    goto/16 :goto_b

    .line 616
    .line 617
    :pswitch_b
    move/from16 v6, p3

    .line 618
    .line 619
    move-object/from16 v5, p6

    .line 620
    .line 621
    move v11, v2

    .line 622
    move/from16 v13, v19

    .line 623
    .line 624
    move-wide/from16 v2, v21

    .line 625
    .line 626
    const/16 v17, -0x1

    .line 627
    .line 628
    if-nez v7, :cond_f

    .line 629
    .line 630
    invoke-static {v12, v6, v5}, Lcom/google/protobuf/i;->P([BILcom/google/android/gms/internal/ads/SG;)I

    .line 631
    .line 632
    .line 633
    move-result v6

    .line 634
    iget-wide v0, v5, Lcom/google/android/gms/internal/ads/SG;->b:J

    .line 635
    .line 636
    move-wide/from16 v18, v0

    .line 637
    .line 638
    move-object v0, v4

    .line 639
    move-object/from16 v1, p1

    .line 640
    .line 641
    move-wide/from16 v4, v18

    .line 642
    .line 643
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    .line 644
    .line 645
    .line 646
    or-int v5, v10, v8

    .line 647
    .line 648
    move-object/from16 v9, p6

    .line 649
    .line 650
    move v0, v6

    .line 651
    goto/16 :goto_8

    .line 652
    .line 653
    :pswitch_c
    move/from16 v6, p3

    .line 654
    .line 655
    move v11, v2

    .line 656
    move/from16 v13, v19

    .line 657
    .line 658
    move-wide/from16 v2, v21

    .line 659
    .line 660
    const/16 v17, -0x1

    .line 661
    .line 662
    if-ne v7, v1, :cond_f

    .line 663
    .line 664
    invoke-static {v6, v12}, Lcom/google/protobuf/i;->p(I[B)F

    .line 665
    .line 666
    .line 667
    move-result v0

    .line 668
    invoke-static {v14, v2, v3, v0}, Lcom/google/protobuf/H2;->p(Ljava/lang/Object;JF)V

    .line 669
    .line 670
    .line 671
    add-int/lit8 v0, v6, 0x4

    .line 672
    .line 673
    goto/16 :goto_7

    .line 674
    .line 675
    :pswitch_d
    move/from16 v6, p3

    .line 676
    .line 677
    move v11, v2

    .line 678
    move/from16 v13, v19

    .line 679
    .line 680
    move-wide/from16 v2, v21

    .line 681
    .line 682
    const/4 v0, 0x1

    .line 683
    const/16 v17, -0x1

    .line 684
    .line 685
    if-ne v7, v0, :cond_f

    .line 686
    .line 687
    invoke-static {v6, v12}, Lcom/google/protobuf/i;->h(I[B)D

    .line 688
    .line 689
    .line 690
    move-result-wide v0

    .line 691
    invoke-static {v14, v2, v3, v0, v1}, Lcom/google/protobuf/H2;->o(Ljava/lang/Object;JD)V

    .line 692
    .line 693
    .line 694
    add-int/lit8 v0, v6, 0x8

    .line 695
    .line 696
    goto/16 :goto_7

    .line 697
    .line 698
    :cond_f
    :goto_10
    move/from16 v8, p5

    .line 699
    .line 700
    move-object/from16 v26, v4

    .line 701
    .line 702
    move v2, v6

    .line 703
    move/from16 v18, v10

    .line 704
    .line 705
    move/from16 v20, v11

    .line 706
    .line 707
    move v9, v13

    .line 708
    const/16 v19, 0x0

    .line 709
    .line 710
    goto/16 :goto_15

    .line 711
    .line 712
    :cond_10
    move v11, v2

    .line 713
    move/from16 v16, v10

    .line 714
    .line 715
    move/from16 v13, v19

    .line 716
    .line 717
    move-wide/from16 v1, v21

    .line 718
    .line 719
    const v9, 0xfffff

    .line 720
    .line 721
    .line 722
    const/16 v17, -0x1

    .line 723
    .line 724
    move/from16 v10, p3

    .line 725
    .line 726
    const/16 v8, 0x1b

    .line 727
    .line 728
    if-ne v3, v8, :cond_14

    .line 729
    .line 730
    const/4 v8, 0x2

    .line 731
    if-ne v7, v8, :cond_13

    .line 732
    .line 733
    invoke-virtual {v4, v14, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 734
    .line 735
    .line 736
    move-result-object v0

    .line 737
    check-cast v0, Lcom/google/protobuf/u1;

    .line 738
    .line 739
    check-cast v0, Lcom/google/protobuf/c;

    .line 740
    .line 741
    invoke-virtual {v0}, Lcom/google/protobuf/c;->c()Z

    .line 742
    .line 743
    .line 744
    move-result v3

    .line 745
    if-nez v3, :cond_12

    .line 746
    .line 747
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 748
    .line 749
    .line 750
    move-result v3

    .line 751
    if-nez v3, :cond_11

    .line 752
    .line 753
    const/16 v3, 0xa

    .line 754
    .line 755
    goto :goto_11

    .line 756
    :cond_11
    mul-int/lit8 v3, v3, 0x2

    .line 757
    .line 758
    :goto_11
    invoke-interface {v0, v3}, Lcom/google/protobuf/u1;->f(I)Lcom/google/protobuf/u1;

    .line 759
    .line 760
    .line 761
    move-result-object v0

    .line 762
    invoke-virtual {v4, v14, v1, v2, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 763
    .line 764
    .line 765
    :cond_12
    move-object v7, v0

    .line 766
    invoke-virtual {v15, v11}, Lcom/google/protobuf/T1;->q(I)Lcom/google/protobuf/j2;

    .line 767
    .line 768
    .line 769
    move-result-object v0

    .line 770
    move v1, v13

    .line 771
    move-object/from16 v2, p2

    .line 772
    .line 773
    move v3, v10

    .line 774
    move/from16 v4, p4

    .line 775
    .line 776
    move/from16 v18, v5

    .line 777
    .line 778
    move-object v5, v7

    .line 779
    move/from16 v25, v6

    .line 780
    .line 781
    move-object/from16 v6, p6

    .line 782
    .line 783
    invoke-static/range {v0 .. v6}, Lcom/google/protobuf/i;->u(Lcom/google/protobuf/j2;I[BIILcom/google/protobuf/u1;Lcom/google/android/gms/internal/ads/SG;)I

    .line 784
    .line 785
    .line 786
    move-result v0

    .line 787
    move-object/from16 v9, p6

    .line 788
    .line 789
    move v2, v11

    .line 790
    move v3, v13

    .line 791
    move/from16 v1, v16

    .line 792
    .line 793
    move/from16 v5, v18

    .line 794
    .line 795
    goto/16 :goto_9

    .line 796
    .line 797
    :cond_13
    move/from16 v18, v5

    .line 798
    .line 799
    move/from16 v25, v6

    .line 800
    .line 801
    move-object/from16 v26, v4

    .line 802
    .line 803
    move v15, v10

    .line 804
    move/from16 v20, v11

    .line 805
    .line 806
    move/from16 v24, v13

    .line 807
    .line 808
    const/16 v19, 0x0

    .line 809
    .line 810
    goto/16 :goto_14

    .line 811
    .line 812
    :cond_14
    move/from16 v18, v5

    .line 813
    .line 814
    move/from16 v25, v6

    .line 815
    .line 816
    const/16 v5, 0x31

    .line 817
    .line 818
    if-gt v3, v5, :cond_16

    .line 819
    .line 820
    int-to-long v5, v0

    .line 821
    move-object/from16 v0, p0

    .line 822
    .line 823
    move-wide/from16 v21, v1

    .line 824
    .line 825
    move-object/from16 v1, p1

    .line 826
    .line 827
    move-object/from16 v2, p2

    .line 828
    .line 829
    move v8, v3

    .line 830
    move v3, v10

    .line 831
    move-object/from16 v26, v4

    .line 832
    .line 833
    move/from16 v4, p4

    .line 834
    .line 835
    move-wide/from16 v23, v5

    .line 836
    .line 837
    move v5, v13

    .line 838
    move/from16 v6, v16

    .line 839
    .line 840
    move/from16 p3, v8

    .line 841
    .line 842
    const/16 v19, 0x0

    .line 843
    .line 844
    move v8, v11

    .line 845
    move v15, v10

    .line 846
    move-wide/from16 v9, v23

    .line 847
    .line 848
    move/from16 v20, v11

    .line 849
    .line 850
    move/from16 v11, p3

    .line 851
    .line 852
    move/from16 v24, v13

    .line 853
    .line 854
    move-wide/from16 v12, v21

    .line 855
    .line 856
    move-object/from16 v14, p6

    .line 857
    .line 858
    invoke-virtual/range {v0 .. v14}, Lcom/google/protobuf/T1;->K(Ljava/lang/Object;[BIIIIIIJIJLcom/google/android/gms/internal/ads/SG;)I

    .line 859
    .line 860
    .line 861
    move-result v0

    .line 862
    if-eq v0, v15, :cond_15

    .line 863
    .line 864
    :goto_12
    move-object/from16 v15, p0

    .line 865
    .line 866
    move-object/from16 v14, p1

    .line 867
    .line 868
    move-object/from16 v12, p2

    .line 869
    .line 870
    move/from16 v13, p4

    .line 871
    .line 872
    move/from16 v11, p5

    .line 873
    .line 874
    move-object/from16 v9, p6

    .line 875
    .line 876
    move/from16 v1, v16

    .line 877
    .line 878
    move/from16 v5, v18

    .line 879
    .line 880
    move/from16 v2, v20

    .line 881
    .line 882
    move/from16 v3, v24

    .line 883
    .line 884
    move/from16 v6, v25

    .line 885
    .line 886
    goto/16 :goto_0

    .line 887
    .line 888
    :cond_15
    move/from16 v8, p5

    .line 889
    .line 890
    move v2, v0

    .line 891
    :goto_13
    move/from16 v9, v24

    .line 892
    .line 893
    goto :goto_15

    .line 894
    :cond_16
    move-wide/from16 v21, v1

    .line 895
    .line 896
    move/from16 p3, v3

    .line 897
    .line 898
    move-object/from16 v26, v4

    .line 899
    .line 900
    move v15, v10

    .line 901
    move/from16 v20, v11

    .line 902
    .line 903
    move/from16 v24, v13

    .line 904
    .line 905
    const/16 v19, 0x0

    .line 906
    .line 907
    const/16 v1, 0x32

    .line 908
    .line 909
    move/from16 v9, p3

    .line 910
    .line 911
    if-ne v9, v1, :cond_18

    .line 912
    .line 913
    const/4 v1, 0x2

    .line 914
    if-ne v7, v1, :cond_17

    .line 915
    .line 916
    move-object/from16 v0, p0

    .line 917
    .line 918
    move-object/from16 v1, p1

    .line 919
    .line 920
    move-object/from16 v2, p2

    .line 921
    .line 922
    move v3, v15

    .line 923
    move/from16 v4, p4

    .line 924
    .line 925
    move/from16 v5, v20

    .line 926
    .line 927
    move-wide/from16 v6, v21

    .line 928
    .line 929
    move-object/from16 v8, p6

    .line 930
    .line 931
    invoke-virtual/range {v0 .. v8}, Lcom/google/protobuf/T1;->H(Ljava/lang/Object;[BIIIJLcom/google/android/gms/internal/ads/SG;)I

    .line 932
    .line 933
    .line 934
    move-result v0

    .line 935
    if-eq v0, v15, :cond_15

    .line 936
    .line 937
    goto :goto_12

    .line 938
    :cond_17
    :goto_14
    move/from16 v8, p5

    .line 939
    .line 940
    move v2, v15

    .line 941
    goto :goto_13

    .line 942
    :cond_18
    move v8, v0

    .line 943
    move-object/from16 v0, p0

    .line 944
    .line 945
    move-object/from16 v1, p1

    .line 946
    .line 947
    move-object/from16 v2, p2

    .line 948
    .line 949
    move v3, v15

    .line 950
    move/from16 v4, p4

    .line 951
    .line 952
    move/from16 v5, v24

    .line 953
    .line 954
    move/from16 v6, v16

    .line 955
    .line 956
    move-wide/from16 v10, v21

    .line 957
    .line 958
    move/from16 v12, v20

    .line 959
    .line 960
    move-object/from16 v13, p6

    .line 961
    .line 962
    invoke-virtual/range {v0 .. v13}, Lcom/google/protobuf/T1;->J(Ljava/lang/Object;[BIIIIIIIJILcom/google/android/gms/internal/ads/SG;)I

    .line 963
    .line 964
    .line 965
    move-result v0

    .line 966
    if-eq v0, v15, :cond_15

    .line 967
    .line 968
    goto :goto_12

    .line 969
    :goto_15
    if-ne v9, v8, :cond_19

    .line 970
    .line 971
    if-eqz v8, :cond_19

    .line 972
    .line 973
    const v1, 0xfffff

    .line 974
    .line 975
    .line 976
    move-object/from16 v10, p0

    .line 977
    .line 978
    move v6, v2

    .line 979
    move/from16 v5, v18

    .line 980
    .line 981
    move/from16 v0, v25

    .line 982
    .line 983
    goto/16 :goto_17

    .line 984
    .line 985
    :cond_19
    move-object/from16 v10, p0

    .line 986
    .line 987
    iget-boolean v0, v10, Lcom/google/protobuf/T1;->f:Z

    .line 988
    .line 989
    move-object/from16 v11, p6

    .line 990
    .line 991
    if-eqz v0, :cond_1a

    .line 992
    .line 993
    iget-object v0, v11, Lcom/google/android/gms/internal/ads/SG;->e:Ljava/lang/Object;

    .line 994
    .line 995
    check-cast v0, Lcom/google/protobuf/O0;

    .line 996
    .line 997
    invoke-static {}, Lcom/google/protobuf/O0;->b()Lcom/google/protobuf/O0;

    .line 998
    .line 999
    .line 1000
    move-result-object v1

    .line 1001
    if-eq v0, v1, :cond_1a

    .line 1002
    .line 1003
    iget-object v5, v10, Lcom/google/protobuf/T1;->e:Lcom/google/protobuf/Q1;

    .line 1004
    .line 1005
    iget-object v6, v10, Lcom/google/protobuf/T1;->m:Lcom/google/protobuf/B2;

    .line 1006
    .line 1007
    move v0, v9

    .line 1008
    move-object/from16 v1, p2

    .line 1009
    .line 1010
    move/from16 v3, p4

    .line 1011
    .line 1012
    move-object/from16 v4, p1

    .line 1013
    .line 1014
    move-object/from16 v7, p6

    .line 1015
    .line 1016
    invoke-static/range {v0 .. v7}, Lcom/google/protobuf/i;->k(I[BIILjava/lang/Object;Lcom/google/protobuf/Q1;Lcom/google/protobuf/B2;Lcom/google/android/gms/internal/ads/SG;)I

    .line 1017
    .line 1018
    .line 1019
    move-result v0

    .line 1020
    goto :goto_16

    .line 1021
    :cond_1a
    invoke-static/range {p1 .. p1}, Lcom/google/protobuf/T1;->r(Ljava/lang/Object;)Lcom/google/protobuf/A2;

    .line 1022
    .line 1023
    .line 1024
    move-result-object v4

    .line 1025
    move v0, v9

    .line 1026
    move-object/from16 v1, p2

    .line 1027
    .line 1028
    move/from16 v3, p4

    .line 1029
    .line 1030
    move-object/from16 v5, p6

    .line 1031
    .line 1032
    invoke-static/range {v0 .. v5}, Lcom/google/protobuf/i;->K(I[BIILcom/google/protobuf/A2;Lcom/google/android/gms/internal/ads/SG;)I

    .line 1033
    .line 1034
    .line 1035
    move-result v0

    .line 1036
    :goto_16
    move-object/from16 v14, p1

    .line 1037
    .line 1038
    move-object/from16 v12, p2

    .line 1039
    .line 1040
    move/from16 v13, p4

    .line 1041
    .line 1042
    move v3, v9

    .line 1043
    move-object v15, v10

    .line 1044
    move-object v9, v11

    .line 1045
    move/from16 v1, v16

    .line 1046
    .line 1047
    move/from16 v5, v18

    .line 1048
    .line 1049
    move/from16 v2, v20

    .line 1050
    .line 1051
    move/from16 v6, v25

    .line 1052
    .line 1053
    move v11, v8

    .line 1054
    goto/16 :goto_0

    .line 1055
    .line 1056
    :cond_1b
    move-object/from16 v26, v4

    .line 1057
    .line 1058
    move/from16 v18, v5

    .line 1059
    .line 1060
    move/from16 v25, v6

    .line 1061
    .line 1062
    move v8, v11

    .line 1063
    move-object v10, v15

    .line 1064
    move v6, v0

    .line 1065
    move v9, v3

    .line 1066
    move/from16 v0, v25

    .line 1067
    .line 1068
    const v1, 0xfffff

    .line 1069
    .line 1070
    .line 1071
    :goto_17
    if-eq v0, v1, :cond_1c

    .line 1072
    .line 1073
    int-to-long v0, v0

    .line 1074
    move-object/from16 v7, p1

    .line 1075
    .line 1076
    move-object/from16 v2, v26

    .line 1077
    .line 1078
    invoke-virtual {v2, v7, v0, v1, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1079
    .line 1080
    .line 1081
    goto :goto_18

    .line 1082
    :cond_1c
    move-object/from16 v7, p1

    .line 1083
    .line 1084
    :goto_18
    const/4 v0, 0x0

    .line 1085
    iget v1, v10, Lcom/google/protobuf/T1;->i:I

    .line 1086
    .line 1087
    move-object v3, v0

    .line 1088
    move v11, v1

    .line 1089
    :goto_19
    iget v0, v10, Lcom/google/protobuf/T1;->j:I

    .line 1090
    .line 1091
    if-ge v11, v0, :cond_1d

    .line 1092
    .line 1093
    iget-object v0, v10, Lcom/google/protobuf/T1;->h:[I

    .line 1094
    .line 1095
    aget v2, v0, v11

    .line 1096
    .line 1097
    iget-object v4, v10, Lcom/google/protobuf/T1;->m:Lcom/google/protobuf/B2;

    .line 1098
    .line 1099
    move-object/from16 v0, p0

    .line 1100
    .line 1101
    move-object/from16 v1, p1

    .line 1102
    .line 1103
    move-object/from16 v5, p1

    .line 1104
    .line 1105
    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/T1;->n(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/protobuf/B2;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1106
    .line 1107
    .line 1108
    move-result-object v0

    .line 1109
    move-object v3, v0

    .line 1110
    check-cast v3, Lcom/google/protobuf/A2;

    .line 1111
    .line 1112
    add-int/lit8 v11, v11, 0x1

    .line 1113
    .line 1114
    goto :goto_19

    .line 1115
    :cond_1d
    if-eqz v3, :cond_1e

    .line 1116
    .line 1117
    iget-object v0, v10, Lcom/google/protobuf/T1;->m:Lcom/google/protobuf/B2;

    .line 1118
    .line 1119
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1120
    .line 1121
    .line 1122
    invoke-static {v7, v3}, Lcom/google/protobuf/B2;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1123
    .line 1124
    .line 1125
    :cond_1e
    if-nez v8, :cond_20

    .line 1126
    .line 1127
    move/from16 v0, p4

    .line 1128
    .line 1129
    if-ne v6, v0, :cond_1f

    .line 1130
    .line 1131
    goto :goto_1a

    .line 1132
    :cond_1f
    invoke-static {}, Lcom/google/protobuf/x1;->f()Lcom/google/protobuf/x1;

    .line 1133
    .line 1134
    .line 1135
    move-result-object v0

    .line 1136
    throw v0

    .line 1137
    :cond_20
    move/from16 v0, p4

    .line 1138
    .line 1139
    if-gt v6, v0, :cond_21

    .line 1140
    .line 1141
    if-ne v9, v8, :cond_21

    .line 1142
    .line 1143
    :goto_1a
    return v6

    .line 1144
    :cond_21
    invoke-static {}, Lcom/google/protobuf/x1;->f()Lcom/google/protobuf/x1;

    .line 1145
    .line 1146
    .line 1147
    move-result-object v0

    .line 1148
    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_a
        :pswitch_3
        :pswitch_8
        :pswitch_9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final J(Ljava/lang/Object;[BIIIIIIIJILcom/google/android/gms/internal/ads/SG;)I
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v2, p5

    move/from16 v9, p6

    move/from16 v3, p7

    move-wide/from16 v6, p10

    move/from16 v10, p12

    move-object/from16 v8, p13

    add-int/lit8 v11, v10, 0x2

    .line 1
    iget-object v12, v0, Lcom/google/protobuf/T1;->a:[I

    aget v11, v12, v11

    const v12, 0xfffff

    and-int/2addr v11, v12

    int-to-long v11, v11

    const/4 v13, 0x2

    const/4 v14, 0x5

    .line 2
    sget-object v15, Lcom/google/protobuf/T1;->q:Lsun/misc/Unsafe;

    packed-switch p9, :pswitch_data_0

    goto/16 :goto_5

    :pswitch_0
    const/4 v6, 0x3

    if-ne v3, v6, :cond_6

    .line 3
    invoke-virtual {v0, v9, v1, v10}, Lcom/google/protobuf/T1;->B(ILjava/lang/Object;I)Ljava/lang/Object;

    move-result-object v11

    and-int/lit8 v2, v2, -0x8

    or-int/lit8 v7, v2, 0x4

    .line 4
    invoke-virtual {v0, v10}, Lcom/google/protobuf/T1;->q(I)Lcom/google/protobuf/j2;

    move-result-object v3

    move-object v2, v11

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v8, p13

    .line 5
    invoke-static/range {v2 .. v8}, Lcom/google/protobuf/i;->T(Ljava/lang/Object;Lcom/google/protobuf/j2;[BIIILcom/google/android/gms/internal/ads/SG;)I

    move-result v2

    .line 6
    invoke-virtual {v0, v1, v9, v10, v11}, Lcom/google/protobuf/T1;->U(Ljava/lang/Object;IILjava/lang/Object;)V

    goto/16 :goto_6

    :pswitch_1
    if-nez v3, :cond_6

    .line 7
    invoke-static {v4, v5, v8}, Lcom/google/protobuf/i;->P([BILcom/google/android/gms/internal/ads/SG;)I

    move-result v2

    .line 8
    iget-wide v3, v8, Lcom/google/android/gms/internal/ads/SG;->b:J

    invoke-static {v3, v4}, Lcom/google/protobuf/w;->d(J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v15, v1, v6, v7, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 9
    invoke-virtual {v15, v1, v11, v12, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_6

    :pswitch_2
    if-nez v3, :cond_6

    .line 10
    invoke-static {v4, v5, v8}, Lcom/google/protobuf/i;->N([BILcom/google/android/gms/internal/ads/SG;)I

    move-result v2

    .line 11
    iget v3, v8, Lcom/google/android/gms/internal/ads/SG;->a:I

    invoke-static {v3}, Lcom/google/protobuf/w;->c(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v15, v1, v6, v7, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 12
    invoke-virtual {v15, v1, v11, v12, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_6

    :pswitch_3
    if-nez v3, :cond_6

    .line 13
    invoke-static {v4, v5, v8}, Lcom/google/protobuf/i;->N([BILcom/google/android/gms/internal/ads/SG;)I

    move-result v3

    .line 14
    iget v4, v8, Lcom/google/android/gms/internal/ads/SG;->a:I

    .line 15
    invoke-virtual {v0, v10}, Lcom/google/protobuf/T1;->o(I)Lcom/google/protobuf/q1;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 16
    invoke-interface {v5, v4}, Lcom/google/protobuf/q1;->a(I)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    .line 17
    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/google/protobuf/T1;->r(Ljava/lang/Object;)Lcom/google/protobuf/A2;

    move-result-object v1

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/google/protobuf/A2;->f(ILjava/lang/Object;)V

    goto :goto_1

    .line 18
    :cond_1
    :goto_0
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v15, v1, v6, v7, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 19
    invoke-virtual {v15, v1, v11, v12, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :goto_1
    move v2, v3

    goto/16 :goto_6

    :pswitch_4
    if-ne v3, v13, :cond_6

    .line 20
    invoke-static {v4, v5, v8}, Lcom/google/protobuf/i;->f([BILcom/google/android/gms/internal/ads/SG;)I

    move-result v2

    .line 21
    iget-object v3, v8, Lcom/google/android/gms/internal/ads/SG;->c:Ljava/lang/Object;

    invoke-virtual {v15, v1, v6, v7, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 22
    invoke-virtual {v15, v1, v11, v12, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_6

    :pswitch_5
    if-ne v3, v13, :cond_6

    .line 23
    invoke-virtual {v0, v9, v1, v10}, Lcom/google/protobuf/T1;->B(ILjava/lang/Object;I)Ljava/lang/Object;

    move-result-object v11

    .line 24
    invoke-virtual {v0, v10}, Lcom/google/protobuf/T1;->q(I)Lcom/google/protobuf/j2;

    move-result-object v3

    move-object v2, v11

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p13

    .line 25
    invoke-static/range {v2 .. v7}, Lcom/google/protobuf/i;->U(Ljava/lang/Object;Lcom/google/protobuf/j2;[BIILcom/google/android/gms/internal/ads/SG;)I

    move-result v2

    .line 26
    invoke-virtual {v0, v1, v9, v10, v11}, Lcom/google/protobuf/T1;->U(Ljava/lang/Object;IILjava/lang/Object;)V

    goto/16 :goto_6

    :pswitch_6
    if-ne v3, v13, :cond_6

    .line 27
    invoke-static {v4, v5, v8}, Lcom/google/protobuf/i;->N([BILcom/google/android/gms/internal/ads/SG;)I

    move-result v2

    .line 28
    iget v3, v8, Lcom/google/android/gms/internal/ads/SG;->a:I

    if-nez v3, :cond_2

    .line 29
    const-string v3, ""

    invoke-virtual {v15, v1, v6, v7, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_3

    :cond_2
    const/high16 v5, 0x20000000

    and-int v5, p8, v5

    if-eqz v5, :cond_4

    add-int v5, v2, v3

    .line 30
    invoke-static {v2, v4, v5}, Lcom/google/protobuf/K2;->e(I[BI)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_2

    .line 31
    :cond_3
    invoke-static {}, Lcom/google/protobuf/x1;->b()Lcom/google/protobuf/x1;

    move-result-object v1

    throw v1

    .line 32
    :cond_4
    :goto_2
    new-instance v5, Ljava/lang/String;

    sget-object v8, Lcom/google/protobuf/v1;->a:Ljava/nio/charset/Charset;

    invoke-direct {v5, v4, v2, v3, v8}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 33
    invoke-virtual {v15, v1, v6, v7, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/2addr v2, v3

    .line 34
    :goto_3
    invoke-virtual {v15, v1, v11, v12, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_6

    :pswitch_7
    if-nez v3, :cond_6

    .line 35
    invoke-static {v4, v5, v8}, Lcom/google/protobuf/i;->P([BILcom/google/android/gms/internal/ads/SG;)I

    move-result v2

    .line 36
    iget-wide v3, v8, Lcom/google/android/gms/internal/ads/SG;->b:J

    const-wide/16 v13, 0x0

    cmp-long v5, v3, v13

    if-eqz v5, :cond_5

    const/4 v3, 0x1

    goto :goto_4

    :cond_5
    const/4 v3, 0x0

    :goto_4
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v15, v1, v6, v7, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 37
    invoke-virtual {v15, v1, v11, v12, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_6

    :pswitch_8
    if-ne v3, v14, :cond_6

    .line 38
    invoke-static {v5, v4}, Lcom/google/protobuf/i;->l(I[B)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v15, v1, v6, v7, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/lit8 v2, v5, 0x4

    .line 39
    invoke-virtual {v15, v1, v11, v12, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_6

    :pswitch_9
    const/4 v2, 0x1

    if-ne v3, v2, :cond_6

    .line 40
    invoke-static {v5, v4}, Lcom/google/protobuf/i;->n(I[B)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v15, v1, v6, v7, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/lit8 v2, v5, 0x8

    .line 41
    invoke-virtual {v15, v1, v11, v12, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_6

    :pswitch_a
    if-nez v3, :cond_6

    .line 42
    invoke-static {v4, v5, v8}, Lcom/google/protobuf/i;->N([BILcom/google/android/gms/internal/ads/SG;)I

    move-result v2

    .line 43
    iget v3, v8, Lcom/google/android/gms/internal/ads/SG;->a:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v15, v1, v6, v7, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 44
    invoke-virtual {v15, v1, v11, v12, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_6

    :pswitch_b
    if-nez v3, :cond_6

    .line 45
    invoke-static {v4, v5, v8}, Lcom/google/protobuf/i;->P([BILcom/google/android/gms/internal/ads/SG;)I

    move-result v2

    .line 46
    iget-wide v3, v8, Lcom/google/android/gms/internal/ads/SG;->b:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v15, v1, v6, v7, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 47
    invoke-virtual {v15, v1, v11, v12, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_6

    :pswitch_c
    if-ne v3, v14, :cond_6

    .line 48
    invoke-static {v5, v4}, Lcom/google/protobuf/i;->p(I[B)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v15, v1, v6, v7, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/lit8 v2, v5, 0x4

    .line 49
    invoke-virtual {v15, v1, v11, v12, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_6

    :pswitch_d
    const/4 v2, 0x1

    if-ne v3, v2, :cond_6

    .line 50
    invoke-static {v5, v4}, Lcom/google/protobuf/i;->h(I[B)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v15, v1, v6, v7, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/lit8 v2, v5, 0x8

    .line 51
    invoke-virtual {v15, v1, v11, v12, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_6

    :cond_6
    :goto_5
    move v2, v5

    :goto_6
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x33
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_a
        :pswitch_3
        :pswitch_8
        :pswitch_9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final K(Ljava/lang/Object;[BIIIIIIJIJLcom/google/android/gms/internal/ads/SG;)I
    .locals 13

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move/from16 v4, p3

    move/from16 v2, p7

    move/from16 v8, p8

    move-wide/from16 v5, p12

    move-object/from16 v7, p14

    .line 1
    sget-object v9, Lcom/google/protobuf/T1;->q:Lsun/misc/Unsafe;

    invoke-virtual {v9, p1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/protobuf/u1;

    .line 2
    check-cast v10, Lcom/google/protobuf/c;

    invoke-virtual {v10}, Lcom/google/protobuf/c;->c()Z

    move-result v11

    const/4 v12, 0x2

    if-nez v11, :cond_1

    .line 3
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    if-nez v11, :cond_0

    const/16 v11, 0xa

    goto :goto_0

    :cond_0
    mul-int/lit8 v11, v11, 0x2

    .line 4
    :goto_0
    invoke-interface {v10, v11}, Lcom/google/protobuf/u1;->f(I)Lcom/google/protobuf/u1;

    move-result-object v10

    .line 5
    invoke-virtual {v9, p1, v5, v6, v10}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_1
    const/4 v5, 0x1

    const/4 v6, 0x5

    packed-switch p11, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    const/4 v1, 0x3

    if-ne v2, v1, :cond_d

    .line 6
    invoke-virtual {p0, v8}, Lcom/google/protobuf/T1;->q(I)Lcom/google/protobuf/j2;

    move-result-object v1

    move-object/from16 p6, v1

    move/from16 p7, p5

    move-object/from16 p8, p2

    move/from16 p9, p3

    move/from16 p10, p4

    move-object/from16 p11, v10

    move-object/from16 p12, p14

    .line 7
    invoke-static/range {p6 .. p12}, Lcom/google/protobuf/i;->s(Lcom/google/protobuf/j2;I[BIILcom/google/protobuf/u1;Lcom/google/android/gms/internal/ads/SG;)I

    move-result v1

    goto/16 :goto_3

    :pswitch_1
    if-ne v2, v12, :cond_2

    .line 8
    invoke-static {p2, v4, v10, v7}, Lcom/google/protobuf/i;->B([BILcom/google/protobuf/u1;Lcom/google/android/gms/internal/ads/SG;)I

    move-result v1

    goto/16 :goto_3

    :cond_2
    if-nez v2, :cond_d

    move-object/from16 p6, p2

    move/from16 p7, p3

    move/from16 p8, p4

    move-object/from16 p9, v10

    move-object/from16 p10, p14

    .line 9
    invoke-static/range {p5 .. p10}, Lcom/google/protobuf/i;->F(I[BIILcom/google/protobuf/u1;Lcom/google/android/gms/internal/ads/SG;)I

    move-result v1

    goto/16 :goto_3

    :pswitch_2
    if-ne v2, v12, :cond_3

    .line 10
    invoke-static {p2, v4, v10, v7}, Lcom/google/protobuf/i;->A([BILcom/google/protobuf/u1;Lcom/google/android/gms/internal/ads/SG;)I

    move-result v1

    goto/16 :goto_3

    :cond_3
    if-nez v2, :cond_d

    move-object/from16 p6, p2

    move/from16 p7, p3

    move/from16 p8, p4

    move-object/from16 p9, v10

    move-object/from16 p10, p14

    .line 11
    invoke-static/range {p5 .. p10}, Lcom/google/protobuf/i;->E(I[BIILcom/google/protobuf/u1;Lcom/google/android/gms/internal/ads/SG;)I

    move-result v1

    goto/16 :goto_3

    :pswitch_3
    if-ne v2, v12, :cond_4

    .line 12
    invoke-static {p2, v4, v10, v7}, Lcom/google/protobuf/i;->C([BILcom/google/protobuf/u1;Lcom/google/android/gms/internal/ads/SG;)I

    move-result v2

    goto :goto_1

    :cond_4
    if-nez v2, :cond_d

    move/from16 v2, p5

    move-object v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object v6, v10

    move-object/from16 v7, p14

    .line 13
    invoke-static/range {v2 .. v7}, Lcom/google/protobuf/i;->O(I[BIILcom/google/protobuf/u1;Lcom/google/android/gms/internal/ads/SG;)I

    move-result v2

    .line 14
    :goto_1
    invoke-virtual {p0, v8}, Lcom/google/protobuf/T1;->o(I)Lcom/google/protobuf/q1;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, v0, Lcom/google/protobuf/T1;->m:Lcom/google/protobuf/B2;

    move-object/from16 p7, p1

    move/from16 p8, p6

    move-object/from16 p9, v10

    move-object/from16 p10, v3

    move-object/from16 p11, v4

    move-object/from16 p12, v5

    .line 15
    invoke-static/range {p7 .. p12}, Lcom/google/protobuf/k2;->A(Ljava/lang/Object;ILjava/util/List;Lcom/google/protobuf/q1;Ljava/lang/Object;Lcom/google/protobuf/B2;)Ljava/lang/Object;

    move v1, v2

    goto/16 :goto_3

    :pswitch_4
    if-ne v2, v12, :cond_d

    move-object/from16 p6, p2

    move/from16 p7, p3

    move/from16 p8, p4

    move-object/from16 p9, v10

    move-object/from16 p10, p14

    .line 16
    invoke-static/range {p5 .. p10}, Lcom/google/protobuf/i;->g(I[BIILcom/google/protobuf/u1;Lcom/google/android/gms/internal/ads/SG;)I

    move-result v1

    goto/16 :goto_3

    :pswitch_5
    if-ne v2, v12, :cond_d

    .line 17
    invoke-virtual {p0, v8}, Lcom/google/protobuf/T1;->q(I)Lcom/google/protobuf/j2;

    move-result-object v1

    move-object/from16 p6, v1

    move/from16 p7, p5

    move-object/from16 p8, p2

    move/from16 p9, p3

    move/from16 p10, p4

    move-object/from16 p11, v10

    move-object/from16 p12, p14

    .line 18
    invoke-static/range {p6 .. p12}, Lcom/google/protobuf/i;->u(Lcom/google/protobuf/j2;I[BIILcom/google/protobuf/u1;Lcom/google/android/gms/internal/ads/SG;)I

    move-result v1

    goto/16 :goto_3

    :pswitch_6
    if-ne v2, v12, :cond_d

    const-wide/32 v1, 0x20000000

    and-long v1, p9, v1

    const-wide/16 v5, 0x0

    cmp-long v8, v1, v5

    if-nez v8, :cond_5

    move-object/from16 p6, p2

    move/from16 p7, p3

    move/from16 p8, p4

    move-object/from16 p9, v10

    move-object/from16 p10, p14

    .line 19
    invoke-static/range {p5 .. p10}, Lcom/google/protobuf/i;->H(I[BIILcom/google/protobuf/u1;Lcom/google/android/gms/internal/ads/SG;)I

    move-result v1

    goto/16 :goto_3

    :cond_5
    move-object/from16 p6, p2

    move/from16 p7, p3

    move/from16 p8, p4

    move-object/from16 p9, v10

    move-object/from16 p10, p14

    .line 20
    invoke-static/range {p5 .. p10}, Lcom/google/protobuf/i;->I(I[BIILcom/google/protobuf/u1;Lcom/google/android/gms/internal/ads/SG;)I

    move-result v1

    goto/16 :goto_3

    :pswitch_7
    if-ne v2, v12, :cond_6

    .line 21
    invoke-static {p2, v4, v10, v7}, Lcom/google/protobuf/i;->v([BILcom/google/protobuf/u1;Lcom/google/android/gms/internal/ads/SG;)I

    move-result v1

    goto/16 :goto_3

    :cond_6
    if-nez v2, :cond_d

    move-object/from16 p6, p2

    move/from16 p7, p3

    move/from16 p8, p4

    move-object/from16 p9, v10

    move-object/from16 p10, p14

    .line 22
    invoke-static/range {p5 .. p10}, Lcom/google/protobuf/i;->e(I[BIILcom/google/protobuf/u1;Lcom/google/android/gms/internal/ads/SG;)I

    move-result v1

    goto/16 :goto_3

    :pswitch_8
    if-ne v2, v12, :cond_7

    .line 23
    invoke-static {p2, v4, v10, v7}, Lcom/google/protobuf/i;->x([BILcom/google/protobuf/u1;Lcom/google/android/gms/internal/ads/SG;)I

    move-result v1

    goto/16 :goto_3

    :cond_7
    if-ne v2, v6, :cond_d

    move-object/from16 p6, p2

    move/from16 p7, p3

    move/from16 p8, p4

    move-object/from16 p9, v10

    move-object/from16 p10, p14

    .line 24
    invoke-static/range {p5 .. p10}, Lcom/google/protobuf/i;->m(I[BIILcom/google/protobuf/u1;Lcom/google/android/gms/internal/ads/SG;)I

    move-result v1

    goto/16 :goto_3

    :pswitch_9
    if-ne v2, v12, :cond_8

    .line 25
    invoke-static {p2, v4, v10, v7}, Lcom/google/protobuf/i;->y([BILcom/google/protobuf/u1;Lcom/google/android/gms/internal/ads/SG;)I

    move-result v1

    goto/16 :goto_3

    :cond_8
    if-ne v2, v5, :cond_d

    move-object/from16 p6, p2

    move/from16 p7, p3

    move/from16 p8, p4

    move-object/from16 p9, v10

    move-object/from16 p10, p14

    .line 26
    invoke-static/range {p5 .. p10}, Lcom/google/protobuf/i;->o(I[BIILcom/google/protobuf/u1;Lcom/google/android/gms/internal/ads/SG;)I

    move-result v1

    goto/16 :goto_3

    :pswitch_a
    if-ne v2, v12, :cond_9

    .line 27
    invoke-static {p2, v4, v10, v7}, Lcom/google/protobuf/i;->C([BILcom/google/protobuf/u1;Lcom/google/android/gms/internal/ads/SG;)I

    move-result v1

    goto/16 :goto_3

    :cond_9
    if-nez v2, :cond_d

    move-object/from16 p6, p2

    move/from16 p7, p3

    move/from16 p8, p4

    move-object/from16 p9, v10

    move-object/from16 p10, p14

    .line 28
    invoke-static/range {p5 .. p10}, Lcom/google/protobuf/i;->O(I[BIILcom/google/protobuf/u1;Lcom/google/android/gms/internal/ads/SG;)I

    move-result v1

    goto :goto_3

    :pswitch_b
    if-ne v2, v12, :cond_a

    .line 29
    invoke-static {p2, v4, v10, v7}, Lcom/google/protobuf/i;->D([BILcom/google/protobuf/u1;Lcom/google/android/gms/internal/ads/SG;)I

    move-result v1

    goto :goto_3

    :cond_a
    if-nez v2, :cond_d

    move-object/from16 p6, p2

    move/from16 p7, p3

    move/from16 p8, p4

    move-object/from16 p9, v10

    move-object/from16 p10, p14

    .line 30
    invoke-static/range {p5 .. p10}, Lcom/google/protobuf/i;->Q(I[BIILcom/google/protobuf/u1;Lcom/google/android/gms/internal/ads/SG;)I

    move-result v1

    goto :goto_3

    :pswitch_c
    if-ne v2, v12, :cond_b

    .line 31
    invoke-static {p2, v4, v10, v7}, Lcom/google/protobuf/i;->z([BILcom/google/protobuf/u1;Lcom/google/android/gms/internal/ads/SG;)I

    move-result v1

    goto :goto_3

    :cond_b
    if-ne v2, v6, :cond_d

    move-object/from16 p6, p2

    move/from16 p7, p3

    move/from16 p8, p4

    move-object/from16 p9, v10

    move-object/from16 p10, p14

    .line 32
    invoke-static/range {p5 .. p10}, Lcom/google/protobuf/i;->q(I[BIILcom/google/protobuf/u1;Lcom/google/android/gms/internal/ads/SG;)I

    move-result v1

    goto :goto_3

    :pswitch_d
    if-ne v2, v12, :cond_c

    .line 33
    invoke-static {p2, v4, v10, v7}, Lcom/google/protobuf/i;->w([BILcom/google/protobuf/u1;Lcom/google/android/gms/internal/ads/SG;)I

    move-result v1

    goto :goto_3

    :cond_c
    if-ne v2, v5, :cond_d

    move-object/from16 p6, p2

    move/from16 p7, p3

    move/from16 p8, p4

    move-object/from16 p9, v10

    move-object/from16 p10, p14

    .line 34
    invoke-static/range {p5 .. p10}, Lcom/google/protobuf/i;->i(I[BIILcom/google/protobuf/u1;Lcom/google/android/gms/internal/ads/SG;)I

    move-result v1

    goto :goto_3

    :cond_d
    :goto_2
    move v1, v4

    :goto_3
    return v1

    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_a
        :pswitch_3
        :pswitch_8
        :pswitch_9
        :pswitch_2
        :pswitch_1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_a
        :pswitch_3
        :pswitch_8
        :pswitch_9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final L(Ljava/lang/Object;JLcom/google/android/gms/internal/ads/CO;Lcom/google/protobuf/j2;Lcom/google/protobuf/O0;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/T1;->l:Lcom/google/protobuf/D1;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/protobuf/D1;->c(Ljava/lang/Object;J)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget p2, p4, Lcom/google/android/gms/internal/ads/CO;->a:I

    .line 8
    .line 9
    and-int/lit8 p3, p2, 0x7

    .line 10
    .line 11
    const/4 v0, 0x3

    .line 12
    if-ne p3, v0, :cond_3

    .line 13
    .line 14
    :cond_0
    invoke-interface {p5}, Lcom/google/protobuf/j2;->i()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p3

    .line 18
    invoke-virtual {p4, p3, p5, p6}, Lcom/google/android/gms/internal/ads/CO;->d(Ljava/lang/Object;Lcom/google/protobuf/j2;Lcom/google/protobuf/O0;)V

    .line 19
    .line 20
    .line 21
    invoke-interface {p5, p3}, Lcom/google/protobuf/j2;->d(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    iget-object p3, p4, Lcom/google/android/gms/internal/ads/CO;->d:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast p3, Lcom/google/protobuf/w;

    .line 30
    .line 31
    invoke-virtual {p3}, Lcom/google/protobuf/w;->g()Z

    .line 32
    .line 33
    .line 34
    move-result p3

    .line 35
    if-nez p3, :cond_2

    .line 36
    .line 37
    iget p3, p4, Lcom/google/android/gms/internal/ads/CO;->c:I

    .line 38
    .line 39
    if-eqz p3, :cond_1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    iget-object p3, p4, Lcom/google/android/gms/internal/ads/CO;->d:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast p3, Lcom/google/protobuf/w;

    .line 45
    .line 46
    invoke-virtual {p3}, Lcom/google/protobuf/w;->F()I

    .line 47
    .line 48
    .line 49
    move-result p3

    .line 50
    if-eq p3, p2, :cond_0

    .line 51
    .line 52
    iput p3, p4, Lcom/google/android/gms/internal/ads/CO;->c:I

    .line 53
    .line 54
    :cond_2
    :goto_0
    return-void

    .line 55
    :cond_3
    invoke-static {}, Lcom/google/protobuf/x1;->c()Lcom/google/protobuf/w1;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    throw p1
.end method

.method public final M(Ljava/lang/Object;ILcom/google/android/gms/internal/ads/CO;Lcom/google/protobuf/j2;Lcom/google/protobuf/O0;)V
    .locals 2

    .line 1
    const v0, 0xfffff

    .line 2
    .line 3
    .line 4
    and-int/2addr p2, v0

    .line 5
    int-to-long v0, p2

    .line 6
    iget-object p2, p0, Lcom/google/protobuf/T1;->l:Lcom/google/protobuf/D1;

    .line 7
    .line 8
    invoke-virtual {p2, p1, v0, v1}, Lcom/google/protobuf/D1;->c(Ljava/lang/Object;J)Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iget p2, p3, Lcom/google/android/gms/internal/ads/CO;->a:I

    .line 13
    .line 14
    and-int/lit8 v0, p2, 0x7

    .line 15
    .line 16
    const/4 v1, 0x2

    .line 17
    if-ne v0, v1, :cond_3

    .line 18
    .line 19
    :cond_0
    invoke-interface {p4}, Lcom/google/protobuf/j2;->i()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {p3, v0, p4, p5}, Lcom/google/android/gms/internal/ads/CO;->e(Ljava/lang/Object;Lcom/google/protobuf/j2;Lcom/google/protobuf/O0;)V

    .line 24
    .line 25
    .line 26
    invoke-interface {p4, v0}, Lcom/google/protobuf/j2;->d(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    iget-object v0, p3, Lcom/google/android/gms/internal/ads/CO;->d:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast v0, Lcom/google/protobuf/w;

    .line 35
    .line 36
    invoke-virtual {v0}, Lcom/google/protobuf/w;->g()Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-nez v0, :cond_2

    .line 41
    .line 42
    iget v0, p3, Lcom/google/android/gms/internal/ads/CO;->c:I

    .line 43
    .line 44
    if-eqz v0, :cond_1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    iget-object v0, p3, Lcom/google/android/gms/internal/ads/CO;->d:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast v0, Lcom/google/protobuf/w;

    .line 50
    .line 51
    invoke-virtual {v0}, Lcom/google/protobuf/w;->F()I

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-eq v0, p2, :cond_0

    .line 56
    .line 57
    iput v0, p3, Lcom/google/android/gms/internal/ads/CO;->c:I

    .line 58
    .line 59
    :cond_2
    :goto_0
    return-void

    .line 60
    :cond_3
    invoke-static {}, Lcom/google/protobuf/x1;->c()Lcom/google/protobuf/w1;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    throw p1
.end method

.method public final N(ILcom/google/android/gms/internal/ads/CO;Ljava/lang/Object;)V
    .locals 4

    .line 1
    const/high16 v0, 0x20000000

    .line 2
    .line 3
    and-int/2addr v0, p1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    const/4 v1, 0x2

    .line 10
    const v2, 0xfffff

    .line 11
    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    and-int/2addr p1, v2

    .line 16
    int-to-long v2, p1

    .line 17
    invoke-virtual {p2, v1}, Lcom/google/android/gms/internal/ads/CO;->G(I)V

    .line 18
    .line 19
    .line 20
    iget-object p1, p2, Lcom/google/android/gms/internal/ads/CO;->d:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast p1, Lcom/google/protobuf/w;

    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/google/protobuf/w;->E()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-static {p3, v2, v3, p1}, Lcom/google/protobuf/H2;->s(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_1
    iget-boolean v0, p0, Lcom/google/protobuf/T1;->g:Z

    .line 33
    .line 34
    if-eqz v0, :cond_2

    .line 35
    .line 36
    and-int/2addr p1, v2

    .line 37
    int-to-long v2, p1

    .line 38
    invoke-virtual {p2, v1}, Lcom/google/android/gms/internal/ads/CO;->G(I)V

    .line 39
    .line 40
    .line 41
    iget-object p1, p2, Lcom/google/android/gms/internal/ads/CO;->d:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast p1, Lcom/google/protobuf/w;

    .line 44
    .line 45
    invoke-virtual {p1}, Lcom/google/protobuf/w;->D()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-static {p3, v2, v3, p1}, Lcom/google/protobuf/H2;->s(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_2
    and-int/2addr p1, v2

    .line 54
    int-to-long v0, p1

    .line 55
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/CO;->g()Lcom/google/protobuf/r;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-static {p3, v0, v1, p1}, Lcom/google/protobuf/H2;->s(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    :goto_1
    return-void
.end method

.method public final O(ILcom/google/android/gms/internal/ads/CO;Ljava/lang/Object;)V
    .locals 5

    .line 1
    const/high16 v0, 0x20000000

    .line 2
    .line 3
    and-int/2addr v0, p1

    .line 4
    const/4 v1, 0x0

    .line 5
    const/4 v2, 0x1

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    const v3, 0xfffff

    .line 12
    .line 13
    .line 14
    iget-object v4, p0, Lcom/google/protobuf/T1;->l:Lcom/google/protobuf/D1;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    and-int/2addr p1, v3

    .line 19
    int-to-long v0, p1

    .line 20
    invoke-virtual {v4, p3, v0, v1}, Lcom/google/protobuf/D1;->c(Ljava/lang/Object;J)Ljava/util/List;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {p2, p1, v2}, Lcom/google/android/gms/internal/ads/CO;->z(Ljava/util/List;Z)V

    .line 25
    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_1
    and-int/2addr p1, v3

    .line 29
    int-to-long v2, p1

    .line 30
    invoke-virtual {v4, p3, v2, v3}, Lcom/google/protobuf/D1;->c(Ljava/lang/Object;J)Ljava/util/List;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {p2, p1, v1}, Lcom/google/android/gms/internal/ads/CO;->z(Ljava/util/List;Z)V

    .line 35
    .line 36
    .line 37
    :goto_1
    return-void
.end method

.method public final Q(ILjava/lang/Object;)V
    .locals 5

    .line 1
    add-int/lit8 p1, p1, 0x2

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/protobuf/T1;->a:[I

    .line 4
    .line 5
    aget p1, v0, p1

    .line 6
    .line 7
    const v0, 0xfffff

    .line 8
    .line 9
    .line 10
    and-int/2addr v0, p1

    .line 11
    int-to-long v0, v0

    .line 12
    const-wide/32 v2, 0xfffff

    .line 13
    .line 14
    .line 15
    cmp-long v4, v0, v2

    .line 16
    .line 17
    if-nez v4, :cond_0

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    ushr-int/lit8 p1, p1, 0x14

    .line 21
    .line 22
    const/4 v2, 0x1

    .line 23
    shl-int p1, v2, p1

    .line 24
    .line 25
    sget-object v2, Lcom/google/protobuf/H2;->c:Lcom/google/protobuf/G2;

    .line 26
    .line 27
    invoke-virtual {v2, p2, v0, v1}, Lcom/google/protobuf/G2;->i(Ljava/lang/Object;J)I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    or-int/2addr p1, v2

    .line 32
    invoke-static {p2, p1, v0, v1}, Lcom/google/protobuf/H2;->q(Ljava/lang/Object;IJ)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public final R(ILjava/lang/Object;I)V
    .locals 2

    .line 1
    add-int/lit8 p3, p3, 0x2

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/protobuf/T1;->a:[I

    .line 4
    .line 5
    aget p3, v0, p3

    .line 6
    .line 7
    const v0, 0xfffff

    .line 8
    .line 9
    .line 10
    and-int/2addr p3, v0

    .line 11
    int-to-long v0, p3

    .line 12
    invoke-static {p2, p1, v0, v1}, Lcom/google/protobuf/H2;->q(Ljava/lang/Object;IJ)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final S(II)I
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/T1;->a:[I

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    div-int/lit8 v1, v1, 0x3

    .line 5
    .line 6
    add-int/lit8 v1, v1, -0x1

    .line 7
    .line 8
    :goto_0
    if-gt p2, v1, :cond_2

    .line 9
    .line 10
    add-int v2, v1, p2

    .line 11
    .line 12
    ushr-int/lit8 v2, v2, 0x1

    .line 13
    .line 14
    mul-int/lit8 v3, v2, 0x3

    .line 15
    .line 16
    aget v4, v0, v3

    .line 17
    .line 18
    if-ne p1, v4, :cond_0

    .line 19
    .line 20
    return v3

    .line 21
    :cond_0
    if-ge p1, v4, :cond_1

    .line 22
    .line 23
    add-int/lit8 v2, v2, -0x1

    .line 24
    .line 25
    move v1, v2

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 28
    .line 29
    move p2, v2

    .line 30
    goto :goto_0

    .line 31
    :cond_2
    const/4 p1, -0x1

    .line 32
    return p1
.end method

.method public final T(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/protobuf/T1;->W(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const v1, 0xfffff

    .line 6
    .line 7
    .line 8
    and-int/2addr v0, v1

    .line 9
    int-to-long v0, v0

    .line 10
    sget-object v2, Lcom/google/protobuf/T1;->q:Lsun/misc/Unsafe;

    .line 11
    .line 12
    invoke-virtual {v2, p2, v0, v1, p3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/T1;->Q(ILjava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final U(Ljava/lang/Object;IILjava/lang/Object;)V
    .locals 3

    .line 1
    invoke-virtual {p0, p3}, Lcom/google/protobuf/T1;->W(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const v1, 0xfffff

    .line 6
    .line 7
    .line 8
    and-int/2addr v0, v1

    .line 9
    int-to-long v0, v0

    .line 10
    sget-object v2, Lcom/google/protobuf/T1;->q:Lsun/misc/Unsafe;

    .line 11
    .line 12
    invoke-virtual {v2, p1, v0, v1, p4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, p2, p1, p3}, Lcom/google/protobuf/T1;->R(ILjava/lang/Object;I)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final W(I)I
    .locals 1

    .line 1
    add-int/lit8 p1, p1, 0x1

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/protobuf/T1;->a:[I

    .line 4
    .line 5
    aget p1, v0, p1

    .line 6
    .line 7
    return p1
.end method

.method public final X(Ljava/lang/Object;LZ3/o;)V
    .locals 25

    .line 1
    move-object/from16 v6, p0

    .line 2
    .line 3
    move-object/from16 v7, p1

    .line 4
    .line 5
    move-object/from16 v8, p2

    .line 6
    .line 7
    iget-boolean v0, v6, Lcom/google/protobuf/T1;->f:Z

    .line 8
    .line 9
    iget-object v9, v6, Lcom/google/protobuf/T1;->n:Lcom/google/protobuf/P0;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    invoke-static/range {p1 .. p1}, Lcom/google/protobuf/P0;->b(Ljava/lang/Object;)Lcom/google/protobuf/W0;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Lcom/google/protobuf/W0;->i()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-nez v1, :cond_0

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/google/protobuf/W0;->l()Ljava/util/Iterator;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    check-cast v1, Ljava/util/Map$Entry;

    .line 35
    .line 36
    move-object v11, v0

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    const/4 v1, 0x0

    .line 39
    const/4 v11, 0x0

    .line 40
    :goto_0
    iget-object v12, v6, Lcom/google/protobuf/T1;->a:[I

    .line 41
    .line 42
    array-length v13, v12

    .line 43
    const v0, 0xfffff

    .line 44
    .line 45
    .line 46
    const/4 v2, 0x0

    .line 47
    const/4 v5, 0x0

    .line 48
    :goto_1
    if-ge v5, v13, :cond_a

    .line 49
    .line 50
    invoke-virtual {v6, v5}, Lcom/google/protobuf/T1;->W(I)I

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    aget v4, v12, v5

    .line 55
    .line 56
    invoke-static {v3}, Lcom/google/protobuf/T1;->V(I)I

    .line 57
    .line 58
    .line 59
    move-result v10

    .line 60
    const/16 v15, 0x11

    .line 61
    .line 62
    sget-object v14, Lcom/google/protobuf/T1;->q:Lsun/misc/Unsafe;

    .line 63
    .line 64
    if-gt v10, v15, :cond_3

    .line 65
    .line 66
    add-int/lit8 v15, v5, 0x2

    .line 67
    .line 68
    aget v15, v12, v15

    .line 69
    .line 70
    move-object/from16 v19, v1

    .line 71
    .line 72
    move/from16 v20, v2

    .line 73
    .line 74
    const v1, 0xfffff

    .line 75
    .line 76
    .line 77
    and-int v2, v15, v1

    .line 78
    .line 79
    if-eq v2, v0, :cond_2

    .line 80
    .line 81
    if-ne v2, v1, :cond_1

    .line 82
    .line 83
    const/4 v0, 0x0

    .line 84
    goto :goto_2

    .line 85
    :cond_1
    int-to-long v0, v2

    .line 86
    invoke-virtual {v14, v7, v0, v1}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    :goto_2
    move/from16 v24, v2

    .line 91
    .line 92
    move v2, v0

    .line 93
    move/from16 v0, v24

    .line 94
    .line 95
    goto :goto_3

    .line 96
    :cond_2
    move/from16 v2, v20

    .line 97
    .line 98
    :goto_3
    ushr-int/lit8 v1, v15, 0x14

    .line 99
    .line 100
    const/4 v15, 0x1

    .line 101
    shl-int v1, v15, v1

    .line 102
    .line 103
    move v15, v0

    .line 104
    move/from16 v20, v2

    .line 105
    .line 106
    move-object/from16 v2, v19

    .line 107
    .line 108
    move/from16 v19, v1

    .line 109
    .line 110
    goto :goto_4

    .line 111
    :cond_3
    move-object/from16 v19, v1

    .line 112
    .line 113
    move/from16 v20, v2

    .line 114
    .line 115
    move v15, v0

    .line 116
    move-object/from16 v2, v19

    .line 117
    .line 118
    const/16 v19, 0x0

    .line 119
    .line 120
    :goto_4
    if-eqz v2, :cond_5

    .line 121
    .line 122
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 123
    .line 124
    .line 125
    invoke-static {v2}, Lcom/google/protobuf/P0;->a(Ljava/util/Map$Entry;)I

    .line 126
    .line 127
    .line 128
    move-result v0

    .line 129
    if-gt v0, v4, :cond_5

    .line 130
    .line 131
    invoke-static {v8, v2}, Lcom/google/protobuf/P0;->e(LZ3/o;Ljava/util/Map$Entry;)V

    .line 132
    .line 133
    .line 134
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    .line 135
    .line 136
    .line 137
    move-result v0

    .line 138
    if-eqz v0, :cond_4

    .line 139
    .line 140
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    check-cast v0, Ljava/util/Map$Entry;

    .line 145
    .line 146
    move-object v2, v0

    .line 147
    goto :goto_4

    .line 148
    :cond_4
    const/4 v2, 0x0

    .line 149
    goto :goto_4

    .line 150
    :cond_5
    const v17, 0xfffff

    .line 151
    .line 152
    .line 153
    and-int v0, v3, v17

    .line 154
    .line 155
    int-to-long v0, v0

    .line 156
    packed-switch v10, :pswitch_data_0

    .line 157
    .line 158
    .line 159
    :cond_6
    :goto_5
    move-object/from16 v21, v2

    .line 160
    .line 161
    move-object/from16 v16, v11

    .line 162
    .line 163
    move-object/from16 v22, v12

    .line 164
    .line 165
    move/from16 v23, v13

    .line 166
    .line 167
    move v13, v5

    .line 168
    goto/16 :goto_7

    .line 169
    .line 170
    :pswitch_0
    invoke-virtual {v6, v4, v7, v5}, Lcom/google/protobuf/T1;->v(ILjava/lang/Object;I)Z

    .line 171
    .line 172
    .line 173
    move-result v3

    .line 174
    if-eqz v3, :cond_6

    .line 175
    .line 176
    invoke-virtual {v14, v7, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    invoke-virtual {v6, v5}, Lcom/google/protobuf/T1;->q(I)Lcom/google/protobuf/j2;

    .line 181
    .line 182
    .line 183
    move-result-object v1

    .line 184
    invoke-virtual {v8, v4, v1, v0}, LZ3/o;->o(ILcom/google/protobuf/j2;Ljava/lang/Object;)V

    .line 185
    .line 186
    .line 187
    goto :goto_5

    .line 188
    :pswitch_1
    invoke-virtual {v6, v4, v7, v5}, Lcom/google/protobuf/T1;->v(ILjava/lang/Object;I)Z

    .line 189
    .line 190
    .line 191
    move-result v3

    .line 192
    if-eqz v3, :cond_6

    .line 193
    .line 194
    invoke-static {v7, v0, v1}, Lcom/google/protobuf/T1;->G(Ljava/lang/Object;J)J

    .line 195
    .line 196
    .line 197
    move-result-wide v0

    .line 198
    invoke-virtual {v8, v4, v0, v1}, LZ3/o;->v(IJ)V

    .line 199
    .line 200
    .line 201
    goto :goto_5

    .line 202
    :pswitch_2
    invoke-virtual {v6, v4, v7, v5}, Lcom/google/protobuf/T1;->v(ILjava/lang/Object;I)Z

    .line 203
    .line 204
    .line 205
    move-result v3

    .line 206
    if-eqz v3, :cond_6

    .line 207
    .line 208
    invoke-static {v7, v0, v1}, Lcom/google/protobuf/T1;->F(Ljava/lang/Object;J)I

    .line 209
    .line 210
    .line 211
    move-result v0

    .line 212
    invoke-virtual {v8, v4, v0}, LZ3/o;->u(II)V

    .line 213
    .line 214
    .line 215
    goto :goto_5

    .line 216
    :pswitch_3
    invoke-virtual {v6, v4, v7, v5}, Lcom/google/protobuf/T1;->v(ILjava/lang/Object;I)Z

    .line 217
    .line 218
    .line 219
    move-result v3

    .line 220
    if-eqz v3, :cond_6

    .line 221
    .line 222
    invoke-static {v7, v0, v1}, Lcom/google/protobuf/T1;->G(Ljava/lang/Object;J)J

    .line 223
    .line 224
    .line 225
    move-result-wide v0

    .line 226
    invoke-virtual {v8, v4, v0, v1}, LZ3/o;->t(IJ)V

    .line 227
    .line 228
    .line 229
    goto :goto_5

    .line 230
    :pswitch_4
    invoke-virtual {v6, v4, v7, v5}, Lcom/google/protobuf/T1;->v(ILjava/lang/Object;I)Z

    .line 231
    .line 232
    .line 233
    move-result v3

    .line 234
    if-eqz v3, :cond_6

    .line 235
    .line 236
    invoke-static {v7, v0, v1}, Lcom/google/protobuf/T1;->F(Ljava/lang/Object;J)I

    .line 237
    .line 238
    .line 239
    move-result v0

    .line 240
    invoke-virtual {v8, v4, v0}, LZ3/o;->s(II)V

    .line 241
    .line 242
    .line 243
    goto :goto_5

    .line 244
    :pswitch_5
    invoke-virtual {v6, v4, v7, v5}, Lcom/google/protobuf/T1;->v(ILjava/lang/Object;I)Z

    .line 245
    .line 246
    .line 247
    move-result v3

    .line 248
    if-eqz v3, :cond_6

    .line 249
    .line 250
    invoke-static {v7, v0, v1}, Lcom/google/protobuf/T1;->F(Ljava/lang/Object;J)I

    .line 251
    .line 252
    .line 253
    move-result v0

    .line 254
    invoke-virtual {v8, v4, v0}, LZ3/o;->k(II)V

    .line 255
    .line 256
    .line 257
    goto :goto_5

    .line 258
    :pswitch_6
    invoke-virtual {v6, v4, v7, v5}, Lcom/google/protobuf/T1;->v(ILjava/lang/Object;I)Z

    .line 259
    .line 260
    .line 261
    move-result v3

    .line 262
    if-eqz v3, :cond_6

    .line 263
    .line 264
    invoke-static {v7, v0, v1}, Lcom/google/protobuf/T1;->F(Ljava/lang/Object;J)I

    .line 265
    .line 266
    .line 267
    move-result v0

    .line 268
    invoke-virtual {v8, v4, v0}, LZ3/o;->w(II)V

    .line 269
    .line 270
    .line 271
    goto :goto_5

    .line 272
    :pswitch_7
    invoke-virtual {v6, v4, v7, v5}, Lcom/google/protobuf/T1;->v(ILjava/lang/Object;I)Z

    .line 273
    .line 274
    .line 275
    move-result v3

    .line 276
    if-eqz v3, :cond_6

    .line 277
    .line 278
    invoke-virtual {v14, v7, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 279
    .line 280
    .line 281
    move-result-object v0

    .line 282
    check-cast v0, Lcom/google/protobuf/r;

    .line 283
    .line 284
    invoke-virtual {v8, v4, v0}, LZ3/o;->i(ILcom/google/protobuf/r;)V

    .line 285
    .line 286
    .line 287
    goto/16 :goto_5

    .line 288
    .line 289
    :pswitch_8
    invoke-virtual {v6, v4, v7, v5}, Lcom/google/protobuf/T1;->v(ILjava/lang/Object;I)Z

    .line 290
    .line 291
    .line 292
    move-result v3

    .line 293
    if-eqz v3, :cond_6

    .line 294
    .line 295
    invoke-virtual {v14, v7, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 296
    .line 297
    .line 298
    move-result-object v0

    .line 299
    invoke-virtual {v6, v5}, Lcom/google/protobuf/T1;->q(I)Lcom/google/protobuf/j2;

    .line 300
    .line 301
    .line 302
    move-result-object v1

    .line 303
    invoke-virtual {v8, v4, v1, v0}, LZ3/o;->r(ILcom/google/protobuf/j2;Ljava/lang/Object;)V

    .line 304
    .line 305
    .line 306
    goto/16 :goto_5

    .line 307
    .line 308
    :pswitch_9
    invoke-virtual {v6, v4, v7, v5}, Lcom/google/protobuf/T1;->v(ILjava/lang/Object;I)Z

    .line 309
    .line 310
    .line 311
    move-result v3

    .line 312
    if-eqz v3, :cond_6

    .line 313
    .line 314
    invoke-virtual {v14, v7, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 315
    .line 316
    .line 317
    move-result-object v0

    .line 318
    instance-of v1, v0, Ljava/lang/String;

    .line 319
    .line 320
    if-eqz v1, :cond_7

    .line 321
    .line 322
    check-cast v0, Ljava/lang/String;

    .line 323
    .line 324
    iget-object v1, v8, LZ3/o;->H:Ljava/lang/Object;

    .line 325
    .line 326
    check-cast v1, Lcom/google/protobuf/z;

    .line 327
    .line 328
    invoke-virtual {v1, v4, v0}, Lcom/google/protobuf/z;->M0(ILjava/lang/String;)V

    .line 329
    .line 330
    .line 331
    goto/16 :goto_5

    .line 332
    .line 333
    :cond_7
    check-cast v0, Lcom/google/protobuf/r;

    .line 334
    .line 335
    invoke-virtual {v8, v4, v0}, LZ3/o;->i(ILcom/google/protobuf/r;)V

    .line 336
    .line 337
    .line 338
    goto/16 :goto_5

    .line 339
    .line 340
    :pswitch_a
    invoke-virtual {v6, v4, v7, v5}, Lcom/google/protobuf/T1;->v(ILjava/lang/Object;I)Z

    .line 341
    .line 342
    .line 343
    move-result v3

    .line 344
    if-eqz v3, :cond_6

    .line 345
    .line 346
    sget-object v3, Lcom/google/protobuf/H2;->c:Lcom/google/protobuf/G2;

    .line 347
    .line 348
    invoke-virtual {v3, v7, v0, v1}, Lcom/google/protobuf/G2;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 349
    .line 350
    .line 351
    move-result-object v0

    .line 352
    check-cast v0, Ljava/lang/Boolean;

    .line 353
    .line 354
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 355
    .line 356
    .line 357
    move-result v0

    .line 358
    invoke-virtual {v8, v4, v0}, LZ3/o;->h(IZ)V

    .line 359
    .line 360
    .line 361
    goto/16 :goto_5

    .line 362
    .line 363
    :pswitch_b
    invoke-virtual {v6, v4, v7, v5}, Lcom/google/protobuf/T1;->v(ILjava/lang/Object;I)Z

    .line 364
    .line 365
    .line 366
    move-result v3

    .line 367
    if-eqz v3, :cond_6

    .line 368
    .line 369
    invoke-static {v7, v0, v1}, Lcom/google/protobuf/T1;->F(Ljava/lang/Object;J)I

    .line 370
    .line 371
    .line 372
    move-result v0

    .line 373
    invoke-virtual {v8, v4, v0}, LZ3/o;->l(II)V

    .line 374
    .line 375
    .line 376
    goto/16 :goto_5

    .line 377
    .line 378
    :pswitch_c
    invoke-virtual {v6, v4, v7, v5}, Lcom/google/protobuf/T1;->v(ILjava/lang/Object;I)Z

    .line 379
    .line 380
    .line 381
    move-result v3

    .line 382
    if-eqz v3, :cond_6

    .line 383
    .line 384
    invoke-static {v7, v0, v1}, Lcom/google/protobuf/T1;->G(Ljava/lang/Object;J)J

    .line 385
    .line 386
    .line 387
    move-result-wide v0

    .line 388
    invoke-virtual {v8, v4, v0, v1}, LZ3/o;->m(IJ)V

    .line 389
    .line 390
    .line 391
    goto/16 :goto_5

    .line 392
    .line 393
    :pswitch_d
    invoke-virtual {v6, v4, v7, v5}, Lcom/google/protobuf/T1;->v(ILjava/lang/Object;I)Z

    .line 394
    .line 395
    .line 396
    move-result v3

    .line 397
    if-eqz v3, :cond_6

    .line 398
    .line 399
    invoke-static {v7, v0, v1}, Lcom/google/protobuf/T1;->F(Ljava/lang/Object;J)I

    .line 400
    .line 401
    .line 402
    move-result v0

    .line 403
    invoke-virtual {v8, v4, v0}, LZ3/o;->p(II)V

    .line 404
    .line 405
    .line 406
    goto/16 :goto_5

    .line 407
    .line 408
    :pswitch_e
    invoke-virtual {v6, v4, v7, v5}, Lcom/google/protobuf/T1;->v(ILjava/lang/Object;I)Z

    .line 409
    .line 410
    .line 411
    move-result v3

    .line 412
    if-eqz v3, :cond_6

    .line 413
    .line 414
    invoke-static {v7, v0, v1}, Lcom/google/protobuf/T1;->G(Ljava/lang/Object;J)J

    .line 415
    .line 416
    .line 417
    move-result-wide v0

    .line 418
    invoke-virtual {v8, v4, v0, v1}, LZ3/o;->x(IJ)V

    .line 419
    .line 420
    .line 421
    goto/16 :goto_5

    .line 422
    .line 423
    :pswitch_f
    invoke-virtual {v6, v4, v7, v5}, Lcom/google/protobuf/T1;->v(ILjava/lang/Object;I)Z

    .line 424
    .line 425
    .line 426
    move-result v3

    .line 427
    if-eqz v3, :cond_6

    .line 428
    .line 429
    invoke-static {v7, v0, v1}, Lcom/google/protobuf/T1;->G(Ljava/lang/Object;J)J

    .line 430
    .line 431
    .line 432
    move-result-wide v0

    .line 433
    invoke-virtual {v8, v4, v0, v1}, LZ3/o;->q(IJ)V

    .line 434
    .line 435
    .line 436
    goto/16 :goto_5

    .line 437
    .line 438
    :pswitch_10
    invoke-virtual {v6, v4, v7, v5}, Lcom/google/protobuf/T1;->v(ILjava/lang/Object;I)Z

    .line 439
    .line 440
    .line 441
    move-result v3

    .line 442
    if-eqz v3, :cond_6

    .line 443
    .line 444
    sget-object v3, Lcom/google/protobuf/H2;->c:Lcom/google/protobuf/G2;

    .line 445
    .line 446
    invoke-virtual {v3, v7, v0, v1}, Lcom/google/protobuf/G2;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 447
    .line 448
    .line 449
    move-result-object v0

    .line 450
    check-cast v0, Ljava/lang/Float;

    .line 451
    .line 452
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 453
    .line 454
    .line 455
    move-result v0

    .line 456
    invoke-virtual {v8, v4, v0}, LZ3/o;->n(IF)V

    .line 457
    .line 458
    .line 459
    goto/16 :goto_5

    .line 460
    .line 461
    :pswitch_11
    invoke-virtual {v6, v4, v7, v5}, Lcom/google/protobuf/T1;->v(ILjava/lang/Object;I)Z

    .line 462
    .line 463
    .line 464
    move-result v3

    .line 465
    if-eqz v3, :cond_6

    .line 466
    .line 467
    sget-object v3, Lcom/google/protobuf/H2;->c:Lcom/google/protobuf/G2;

    .line 468
    .line 469
    invoke-virtual {v3, v7, v0, v1}, Lcom/google/protobuf/G2;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 470
    .line 471
    .line 472
    move-result-object v0

    .line 473
    check-cast v0, Ljava/lang/Double;

    .line 474
    .line 475
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    .line 476
    .line 477
    .line 478
    move-result-wide v0

    .line 479
    invoke-virtual {v8, v4, v0, v1}, LZ3/o;->j(ID)V

    .line 480
    .line 481
    .line 482
    goto/16 :goto_5

    .line 483
    .line 484
    :pswitch_12
    invoke-virtual {v14, v7, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 485
    .line 486
    .line 487
    move-result-object v0

    .line 488
    if-eqz v0, :cond_6

    .line 489
    .line 490
    invoke-virtual {v6, v5}, Lcom/google/protobuf/T1;->p(I)Ljava/lang/Object;

    .line 491
    .line 492
    .line 493
    move-result-object v1

    .line 494
    iget-object v3, v6, Lcom/google/protobuf/T1;->o:Lcom/google/protobuf/L1;

    .line 495
    .line 496
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 497
    .line 498
    .line 499
    check-cast v1, Lcom/google/protobuf/J1;

    .line 500
    .line 501
    iget-object v1, v1, Lcom/google/protobuf/J1;->a:Lm2/i;

    .line 502
    .line 503
    check-cast v0, Lcom/google/protobuf/K1;

    .line 504
    .line 505
    iget-object v3, v8, LZ3/o;->H:Ljava/lang/Object;

    .line 506
    .line 507
    check-cast v3, Lcom/google/protobuf/z;

    .line 508
    .line 509
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 510
    .line 511
    .line 512
    invoke-virtual {v0}, Lcom/google/protobuf/K1;->entrySet()Ljava/util/Set;

    .line 513
    .line 514
    .line 515
    move-result-object v0

    .line 516
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 517
    .line 518
    .line 519
    move-result-object v0

    .line 520
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 521
    .line 522
    .line 523
    move-result v3

    .line 524
    if-eqz v3, :cond_6

    .line 525
    .line 526
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 527
    .line 528
    .line 529
    move-result-object v3

    .line 530
    check-cast v3, Ljava/util/Map$Entry;

    .line 531
    .line 532
    iget-object v10, v8, LZ3/o;->H:Ljava/lang/Object;

    .line 533
    .line 534
    check-cast v10, Lcom/google/protobuf/z;

    .line 535
    .line 536
    const/4 v14, 0x2

    .line 537
    invoke-virtual {v10, v4, v14}, Lcom/google/protobuf/z;->O0(II)V

    .line 538
    .line 539
    .line 540
    iget-object v10, v8, LZ3/o;->H:Ljava/lang/Object;

    .line 541
    .line 542
    check-cast v10, Lcom/google/protobuf/z;

    .line 543
    .line 544
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 545
    .line 546
    .line 547
    move-result-object v14

    .line 548
    move-object/from16 v18, v0

    .line 549
    .line 550
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 551
    .line 552
    .line 553
    move-result-object v0

    .line 554
    invoke-static {v1, v14, v0}, Lcom/google/protobuf/J1;->a(Lm2/i;Ljava/lang/Object;Ljava/lang/Object;)I

    .line 555
    .line 556
    .line 557
    move-result v0

    .line 558
    invoke-virtual {v10, v0}, Lcom/google/protobuf/z;->Q0(I)V

    .line 559
    .line 560
    .line 561
    iget-object v0, v8, LZ3/o;->H:Ljava/lang/Object;

    .line 562
    .line 563
    check-cast v0, Lcom/google/protobuf/z;

    .line 564
    .line 565
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 566
    .line 567
    .line 568
    move-result-object v10

    .line 569
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 570
    .line 571
    .line 572
    move-result-object v3

    .line 573
    invoke-static {v0, v1, v10, v3}, Lcom/google/protobuf/J1;->b(Lcom/google/protobuf/z;Lm2/i;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 574
    .line 575
    .line 576
    move-object/from16 v0, v18

    .line 577
    .line 578
    goto :goto_6

    .line 579
    :pswitch_13
    aget v3, v12, v5

    .line 580
    .line 581
    invoke-virtual {v14, v7, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 582
    .line 583
    .line 584
    move-result-object v0

    .line 585
    check-cast v0, Ljava/util/List;

    .line 586
    .line 587
    invoke-virtual {v6, v5}, Lcom/google/protobuf/T1;->q(I)Lcom/google/protobuf/j2;

    .line 588
    .line 589
    .line 590
    move-result-object v1

    .line 591
    invoke-static {v3, v0, v8, v1}, Lcom/google/protobuf/k2;->L(ILjava/util/List;LZ3/o;Lcom/google/protobuf/j2;)V

    .line 592
    .line 593
    .line 594
    goto/16 :goto_5

    .line 595
    .line 596
    :pswitch_14
    aget v3, v12, v5

    .line 597
    .line 598
    invoke-virtual {v14, v7, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 599
    .line 600
    .line 601
    move-result-object v0

    .line 602
    check-cast v0, Ljava/util/List;

    .line 603
    .line 604
    const/4 v4, 0x1

    .line 605
    invoke-static {v3, v0, v8, v4}, Lcom/google/protobuf/k2;->S(ILjava/util/List;LZ3/o;Z)V

    .line 606
    .line 607
    .line 608
    goto/16 :goto_5

    .line 609
    .line 610
    :pswitch_15
    const/4 v4, 0x1

    .line 611
    aget v3, v12, v5

    .line 612
    .line 613
    invoke-virtual {v14, v7, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 614
    .line 615
    .line 616
    move-result-object v0

    .line 617
    check-cast v0, Ljava/util/List;

    .line 618
    .line 619
    invoke-static {v3, v0, v8, v4}, Lcom/google/protobuf/k2;->R(ILjava/util/List;LZ3/o;Z)V

    .line 620
    .line 621
    .line 622
    goto/16 :goto_5

    .line 623
    .line 624
    :pswitch_16
    const/4 v4, 0x1

    .line 625
    aget v3, v12, v5

    .line 626
    .line 627
    invoke-virtual {v14, v7, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 628
    .line 629
    .line 630
    move-result-object v0

    .line 631
    check-cast v0, Ljava/util/List;

    .line 632
    .line 633
    invoke-static {v3, v0, v8, v4}, Lcom/google/protobuf/k2;->Q(ILjava/util/List;LZ3/o;Z)V

    .line 634
    .line 635
    .line 636
    goto/16 :goto_5

    .line 637
    .line 638
    :pswitch_17
    const/4 v4, 0x1

    .line 639
    aget v3, v12, v5

    .line 640
    .line 641
    invoke-virtual {v14, v7, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 642
    .line 643
    .line 644
    move-result-object v0

    .line 645
    check-cast v0, Ljava/util/List;

    .line 646
    .line 647
    invoke-static {v3, v0, v8, v4}, Lcom/google/protobuf/k2;->P(ILjava/util/List;LZ3/o;Z)V

    .line 648
    .line 649
    .line 650
    goto/16 :goto_5

    .line 651
    .line 652
    :pswitch_18
    const/4 v4, 0x1

    .line 653
    aget v3, v12, v5

    .line 654
    .line 655
    invoke-virtual {v14, v7, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 656
    .line 657
    .line 658
    move-result-object v0

    .line 659
    check-cast v0, Ljava/util/List;

    .line 660
    .line 661
    invoke-static {v3, v0, v8, v4}, Lcom/google/protobuf/k2;->H(ILjava/util/List;LZ3/o;Z)V

    .line 662
    .line 663
    .line 664
    goto/16 :goto_5

    .line 665
    .line 666
    :pswitch_19
    const/4 v4, 0x1

    .line 667
    aget v3, v12, v5

    .line 668
    .line 669
    invoke-virtual {v14, v7, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 670
    .line 671
    .line 672
    move-result-object v0

    .line 673
    check-cast v0, Ljava/util/List;

    .line 674
    .line 675
    invoke-static {v3, v0, v8, v4}, Lcom/google/protobuf/k2;->U(ILjava/util/List;LZ3/o;Z)V

    .line 676
    .line 677
    .line 678
    goto/16 :goto_5

    .line 679
    .line 680
    :pswitch_1a
    const/4 v4, 0x1

    .line 681
    aget v3, v12, v5

    .line 682
    .line 683
    invoke-virtual {v14, v7, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 684
    .line 685
    .line 686
    move-result-object v0

    .line 687
    check-cast v0, Ljava/util/List;

    .line 688
    .line 689
    invoke-static {v3, v0, v8, v4}, Lcom/google/protobuf/k2;->E(ILjava/util/List;LZ3/o;Z)V

    .line 690
    .line 691
    .line 692
    goto/16 :goto_5

    .line 693
    .line 694
    :pswitch_1b
    const/4 v4, 0x1

    .line 695
    aget v3, v12, v5

    .line 696
    .line 697
    invoke-virtual {v14, v7, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 698
    .line 699
    .line 700
    move-result-object v0

    .line 701
    check-cast v0, Ljava/util/List;

    .line 702
    .line 703
    invoke-static {v3, v0, v8, v4}, Lcom/google/protobuf/k2;->I(ILjava/util/List;LZ3/o;Z)V

    .line 704
    .line 705
    .line 706
    goto/16 :goto_5

    .line 707
    .line 708
    :pswitch_1c
    const/4 v4, 0x1

    .line 709
    aget v3, v12, v5

    .line 710
    .line 711
    invoke-virtual {v14, v7, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 712
    .line 713
    .line 714
    move-result-object v0

    .line 715
    check-cast v0, Ljava/util/List;

    .line 716
    .line 717
    invoke-static {v3, v0, v8, v4}, Lcom/google/protobuf/k2;->J(ILjava/util/List;LZ3/o;Z)V

    .line 718
    .line 719
    .line 720
    goto/16 :goto_5

    .line 721
    .line 722
    :pswitch_1d
    const/4 v4, 0x1

    .line 723
    aget v3, v12, v5

    .line 724
    .line 725
    invoke-virtual {v14, v7, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 726
    .line 727
    .line 728
    move-result-object v0

    .line 729
    check-cast v0, Ljava/util/List;

    .line 730
    .line 731
    invoke-static {v3, v0, v8, v4}, Lcom/google/protobuf/k2;->M(ILjava/util/List;LZ3/o;Z)V

    .line 732
    .line 733
    .line 734
    goto/16 :goto_5

    .line 735
    .line 736
    :pswitch_1e
    const/4 v4, 0x1

    .line 737
    aget v3, v12, v5

    .line 738
    .line 739
    invoke-virtual {v14, v7, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 740
    .line 741
    .line 742
    move-result-object v0

    .line 743
    check-cast v0, Ljava/util/List;

    .line 744
    .line 745
    invoke-static {v3, v0, v8, v4}, Lcom/google/protobuf/k2;->V(ILjava/util/List;LZ3/o;Z)V

    .line 746
    .line 747
    .line 748
    goto/16 :goto_5

    .line 749
    .line 750
    :pswitch_1f
    const/4 v4, 0x1

    .line 751
    aget v3, v12, v5

    .line 752
    .line 753
    invoke-virtual {v14, v7, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 754
    .line 755
    .line 756
    move-result-object v0

    .line 757
    check-cast v0, Ljava/util/List;

    .line 758
    .line 759
    invoke-static {v3, v0, v8, v4}, Lcom/google/protobuf/k2;->N(ILjava/util/List;LZ3/o;Z)V

    .line 760
    .line 761
    .line 762
    goto/16 :goto_5

    .line 763
    .line 764
    :pswitch_20
    const/4 v4, 0x1

    .line 765
    aget v3, v12, v5

    .line 766
    .line 767
    invoke-virtual {v14, v7, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 768
    .line 769
    .line 770
    move-result-object v0

    .line 771
    check-cast v0, Ljava/util/List;

    .line 772
    .line 773
    invoke-static {v3, v0, v8, v4}, Lcom/google/protobuf/k2;->K(ILjava/util/List;LZ3/o;Z)V

    .line 774
    .line 775
    .line 776
    goto/16 :goto_5

    .line 777
    .line 778
    :pswitch_21
    const/4 v4, 0x1

    .line 779
    aget v3, v12, v5

    .line 780
    .line 781
    invoke-virtual {v14, v7, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 782
    .line 783
    .line 784
    move-result-object v0

    .line 785
    check-cast v0, Ljava/util/List;

    .line 786
    .line 787
    invoke-static {v3, v0, v8, v4}, Lcom/google/protobuf/k2;->G(ILjava/util/List;LZ3/o;Z)V

    .line 788
    .line 789
    .line 790
    goto/16 :goto_5

    .line 791
    .line 792
    :pswitch_22
    aget v3, v12, v5

    .line 793
    .line 794
    invoke-virtual {v14, v7, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 795
    .line 796
    .line 797
    move-result-object v0

    .line 798
    check-cast v0, Ljava/util/List;

    .line 799
    .line 800
    const/4 v4, 0x0

    .line 801
    invoke-static {v3, v0, v8, v4}, Lcom/google/protobuf/k2;->S(ILjava/util/List;LZ3/o;Z)V

    .line 802
    .line 803
    .line 804
    goto/16 :goto_5

    .line 805
    .line 806
    :pswitch_23
    const/4 v4, 0x0

    .line 807
    aget v3, v12, v5

    .line 808
    .line 809
    invoke-virtual {v14, v7, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 810
    .line 811
    .line 812
    move-result-object v0

    .line 813
    check-cast v0, Ljava/util/List;

    .line 814
    .line 815
    invoke-static {v3, v0, v8, v4}, Lcom/google/protobuf/k2;->R(ILjava/util/List;LZ3/o;Z)V

    .line 816
    .line 817
    .line 818
    goto/16 :goto_5

    .line 819
    .line 820
    :pswitch_24
    const/4 v4, 0x0

    .line 821
    aget v3, v12, v5

    .line 822
    .line 823
    invoke-virtual {v14, v7, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 824
    .line 825
    .line 826
    move-result-object v0

    .line 827
    check-cast v0, Ljava/util/List;

    .line 828
    .line 829
    invoke-static {v3, v0, v8, v4}, Lcom/google/protobuf/k2;->Q(ILjava/util/List;LZ3/o;Z)V

    .line 830
    .line 831
    .line 832
    goto/16 :goto_5

    .line 833
    .line 834
    :pswitch_25
    const/4 v4, 0x0

    .line 835
    aget v3, v12, v5

    .line 836
    .line 837
    invoke-virtual {v14, v7, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 838
    .line 839
    .line 840
    move-result-object v0

    .line 841
    check-cast v0, Ljava/util/List;

    .line 842
    .line 843
    invoke-static {v3, v0, v8, v4}, Lcom/google/protobuf/k2;->P(ILjava/util/List;LZ3/o;Z)V

    .line 844
    .line 845
    .line 846
    goto/16 :goto_5

    .line 847
    .line 848
    :pswitch_26
    const/4 v4, 0x0

    .line 849
    aget v3, v12, v5

    .line 850
    .line 851
    invoke-virtual {v14, v7, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 852
    .line 853
    .line 854
    move-result-object v0

    .line 855
    check-cast v0, Ljava/util/List;

    .line 856
    .line 857
    invoke-static {v3, v0, v8, v4}, Lcom/google/protobuf/k2;->H(ILjava/util/List;LZ3/o;Z)V

    .line 858
    .line 859
    .line 860
    goto/16 :goto_5

    .line 861
    .line 862
    :pswitch_27
    const/4 v4, 0x0

    .line 863
    aget v3, v12, v5

    .line 864
    .line 865
    invoke-virtual {v14, v7, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 866
    .line 867
    .line 868
    move-result-object v0

    .line 869
    check-cast v0, Ljava/util/List;

    .line 870
    .line 871
    invoke-static {v3, v0, v8, v4}, Lcom/google/protobuf/k2;->U(ILjava/util/List;LZ3/o;Z)V

    .line 872
    .line 873
    .line 874
    goto/16 :goto_5

    .line 875
    .line 876
    :pswitch_28
    aget v3, v12, v5

    .line 877
    .line 878
    invoke-virtual {v14, v7, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 879
    .line 880
    .line 881
    move-result-object v0

    .line 882
    check-cast v0, Ljava/util/List;

    .line 883
    .line 884
    invoke-static {v3, v0, v8}, Lcom/google/protobuf/k2;->F(ILjava/util/List;LZ3/o;)V

    .line 885
    .line 886
    .line 887
    goto/16 :goto_5

    .line 888
    .line 889
    :pswitch_29
    aget v3, v12, v5

    .line 890
    .line 891
    invoke-virtual {v14, v7, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 892
    .line 893
    .line 894
    move-result-object v0

    .line 895
    check-cast v0, Ljava/util/List;

    .line 896
    .line 897
    invoke-virtual {v6, v5}, Lcom/google/protobuf/T1;->q(I)Lcom/google/protobuf/j2;

    .line 898
    .line 899
    .line 900
    move-result-object v1

    .line 901
    invoke-static {v3, v0, v8, v1}, Lcom/google/protobuf/k2;->O(ILjava/util/List;LZ3/o;Lcom/google/protobuf/j2;)V

    .line 902
    .line 903
    .line 904
    goto/16 :goto_5

    .line 905
    .line 906
    :pswitch_2a
    aget v3, v12, v5

    .line 907
    .line 908
    invoke-virtual {v14, v7, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 909
    .line 910
    .line 911
    move-result-object v0

    .line 912
    check-cast v0, Ljava/util/List;

    .line 913
    .line 914
    invoke-static {v3, v0, v8}, Lcom/google/protobuf/k2;->T(ILjava/util/List;LZ3/o;)V

    .line 915
    .line 916
    .line 917
    goto/16 :goto_5

    .line 918
    .line 919
    :pswitch_2b
    aget v3, v12, v5

    .line 920
    .line 921
    invoke-virtual {v14, v7, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 922
    .line 923
    .line 924
    move-result-object v0

    .line 925
    check-cast v0, Ljava/util/List;

    .line 926
    .line 927
    const/4 v10, 0x0

    .line 928
    invoke-static {v3, v0, v8, v10}, Lcom/google/protobuf/k2;->E(ILjava/util/List;LZ3/o;Z)V

    .line 929
    .line 930
    .line 931
    goto/16 :goto_5

    .line 932
    .line 933
    :pswitch_2c
    const/4 v10, 0x0

    .line 934
    aget v3, v12, v5

    .line 935
    .line 936
    invoke-virtual {v14, v7, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 937
    .line 938
    .line 939
    move-result-object v0

    .line 940
    check-cast v0, Ljava/util/List;

    .line 941
    .line 942
    invoke-static {v3, v0, v8, v10}, Lcom/google/protobuf/k2;->I(ILjava/util/List;LZ3/o;Z)V

    .line 943
    .line 944
    .line 945
    goto/16 :goto_5

    .line 946
    .line 947
    :pswitch_2d
    const/4 v10, 0x0

    .line 948
    aget v3, v12, v5

    .line 949
    .line 950
    invoke-virtual {v14, v7, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 951
    .line 952
    .line 953
    move-result-object v0

    .line 954
    check-cast v0, Ljava/util/List;

    .line 955
    .line 956
    invoke-static {v3, v0, v8, v10}, Lcom/google/protobuf/k2;->J(ILjava/util/List;LZ3/o;Z)V

    .line 957
    .line 958
    .line 959
    goto/16 :goto_5

    .line 960
    .line 961
    :pswitch_2e
    const/4 v10, 0x0

    .line 962
    aget v3, v12, v5

    .line 963
    .line 964
    invoke-virtual {v14, v7, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 965
    .line 966
    .line 967
    move-result-object v0

    .line 968
    check-cast v0, Ljava/util/List;

    .line 969
    .line 970
    invoke-static {v3, v0, v8, v10}, Lcom/google/protobuf/k2;->M(ILjava/util/List;LZ3/o;Z)V

    .line 971
    .line 972
    .line 973
    goto/16 :goto_5

    .line 974
    .line 975
    :pswitch_2f
    const/4 v10, 0x0

    .line 976
    aget v3, v12, v5

    .line 977
    .line 978
    invoke-virtual {v14, v7, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 979
    .line 980
    .line 981
    move-result-object v0

    .line 982
    check-cast v0, Ljava/util/List;

    .line 983
    .line 984
    invoke-static {v3, v0, v8, v10}, Lcom/google/protobuf/k2;->V(ILjava/util/List;LZ3/o;Z)V

    .line 985
    .line 986
    .line 987
    goto/16 :goto_5

    .line 988
    .line 989
    :pswitch_30
    const/4 v10, 0x0

    .line 990
    aget v3, v12, v5

    .line 991
    .line 992
    invoke-virtual {v14, v7, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 993
    .line 994
    .line 995
    move-result-object v0

    .line 996
    check-cast v0, Ljava/util/List;

    .line 997
    .line 998
    invoke-static {v3, v0, v8, v10}, Lcom/google/protobuf/k2;->N(ILjava/util/List;LZ3/o;Z)V

    .line 999
    .line 1000
    .line 1001
    goto/16 :goto_5

    .line 1002
    .line 1003
    :pswitch_31
    const/4 v10, 0x0

    .line 1004
    aget v3, v12, v5

    .line 1005
    .line 1006
    invoke-virtual {v14, v7, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1007
    .line 1008
    .line 1009
    move-result-object v0

    .line 1010
    check-cast v0, Ljava/util/List;

    .line 1011
    .line 1012
    invoke-static {v3, v0, v8, v10}, Lcom/google/protobuf/k2;->K(ILjava/util/List;LZ3/o;Z)V

    .line 1013
    .line 1014
    .line 1015
    goto/16 :goto_5

    .line 1016
    .line 1017
    :pswitch_32
    const/4 v10, 0x0

    .line 1018
    aget v3, v12, v5

    .line 1019
    .line 1020
    invoke-virtual {v14, v7, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1021
    .line 1022
    .line 1023
    move-result-object v0

    .line 1024
    check-cast v0, Ljava/util/List;

    .line 1025
    .line 1026
    invoke-static {v3, v0, v8, v10}, Lcom/google/protobuf/k2;->G(ILjava/util/List;LZ3/o;Z)V

    .line 1027
    .line 1028
    .line 1029
    goto/16 :goto_5

    .line 1030
    .line 1031
    :pswitch_33
    move-object/from16 v16, v11

    .line 1032
    .line 1033
    move-wide v10, v0

    .line 1034
    move-object/from16 v0, p0

    .line 1035
    .line 1036
    move-object/from16 v1, p1

    .line 1037
    .line 1038
    move-object/from16 v21, v2

    .line 1039
    .line 1040
    move v2, v5

    .line 1041
    move v3, v15

    .line 1042
    move-object/from16 v22, v12

    .line 1043
    .line 1044
    move v12, v4

    .line 1045
    move/from16 v4, v20

    .line 1046
    .line 1047
    move/from16 v23, v13

    .line 1048
    .line 1049
    move v13, v5

    .line 1050
    move/from16 v5, v19

    .line 1051
    .line 1052
    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/T1;->t(Ljava/lang/Object;IIII)Z

    .line 1053
    .line 1054
    .line 1055
    move-result v0

    .line 1056
    if-eqz v0, :cond_9

    .line 1057
    .line 1058
    invoke-virtual {v14, v7, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1059
    .line 1060
    .line 1061
    move-result-object v0

    .line 1062
    invoke-virtual {v6, v13}, Lcom/google/protobuf/T1;->q(I)Lcom/google/protobuf/j2;

    .line 1063
    .line 1064
    .line 1065
    move-result-object v1

    .line 1066
    invoke-virtual {v8, v12, v1, v0}, LZ3/o;->o(ILcom/google/protobuf/j2;Ljava/lang/Object;)V

    .line 1067
    .line 1068
    .line 1069
    goto/16 :goto_7

    .line 1070
    .line 1071
    :pswitch_34
    move-object/from16 v21, v2

    .line 1072
    .line 1073
    move-object/from16 v16, v11

    .line 1074
    .line 1075
    move-object/from16 v22, v12

    .line 1076
    .line 1077
    move/from16 v23, v13

    .line 1078
    .line 1079
    move-wide v10, v0

    .line 1080
    move v12, v4

    .line 1081
    move v13, v5

    .line 1082
    move-object/from16 v0, p0

    .line 1083
    .line 1084
    move-object/from16 v1, p1

    .line 1085
    .line 1086
    move v2, v13

    .line 1087
    move v3, v15

    .line 1088
    move/from16 v4, v20

    .line 1089
    .line 1090
    move/from16 v5, v19

    .line 1091
    .line 1092
    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/T1;->t(Ljava/lang/Object;IIII)Z

    .line 1093
    .line 1094
    .line 1095
    move-result v0

    .line 1096
    if-eqz v0, :cond_9

    .line 1097
    .line 1098
    invoke-virtual {v14, v7, v10, v11}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 1099
    .line 1100
    .line 1101
    move-result-wide v0

    .line 1102
    invoke-virtual {v8, v12, v0, v1}, LZ3/o;->v(IJ)V

    .line 1103
    .line 1104
    .line 1105
    goto/16 :goto_7

    .line 1106
    .line 1107
    :pswitch_35
    move-object/from16 v21, v2

    .line 1108
    .line 1109
    move-object/from16 v16, v11

    .line 1110
    .line 1111
    move-object/from16 v22, v12

    .line 1112
    .line 1113
    move/from16 v23, v13

    .line 1114
    .line 1115
    move-wide v10, v0

    .line 1116
    move v12, v4

    .line 1117
    move v13, v5

    .line 1118
    move-object/from16 v0, p0

    .line 1119
    .line 1120
    move-object/from16 v1, p1

    .line 1121
    .line 1122
    move v2, v13

    .line 1123
    move v3, v15

    .line 1124
    move/from16 v4, v20

    .line 1125
    .line 1126
    move/from16 v5, v19

    .line 1127
    .line 1128
    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/T1;->t(Ljava/lang/Object;IIII)Z

    .line 1129
    .line 1130
    .line 1131
    move-result v0

    .line 1132
    if-eqz v0, :cond_9

    .line 1133
    .line 1134
    invoke-virtual {v14, v7, v10, v11}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 1135
    .line 1136
    .line 1137
    move-result v0

    .line 1138
    invoke-virtual {v8, v12, v0}, LZ3/o;->u(II)V

    .line 1139
    .line 1140
    .line 1141
    goto/16 :goto_7

    .line 1142
    .line 1143
    :pswitch_36
    move-object/from16 v21, v2

    .line 1144
    .line 1145
    move-object/from16 v16, v11

    .line 1146
    .line 1147
    move-object/from16 v22, v12

    .line 1148
    .line 1149
    move/from16 v23, v13

    .line 1150
    .line 1151
    move-wide v10, v0

    .line 1152
    move v12, v4

    .line 1153
    move v13, v5

    .line 1154
    move-object/from16 v0, p0

    .line 1155
    .line 1156
    move-object/from16 v1, p1

    .line 1157
    .line 1158
    move v2, v13

    .line 1159
    move v3, v15

    .line 1160
    move/from16 v4, v20

    .line 1161
    .line 1162
    move/from16 v5, v19

    .line 1163
    .line 1164
    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/T1;->t(Ljava/lang/Object;IIII)Z

    .line 1165
    .line 1166
    .line 1167
    move-result v0

    .line 1168
    if-eqz v0, :cond_9

    .line 1169
    .line 1170
    invoke-virtual {v14, v7, v10, v11}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 1171
    .line 1172
    .line 1173
    move-result-wide v0

    .line 1174
    invoke-virtual {v8, v12, v0, v1}, LZ3/o;->t(IJ)V

    .line 1175
    .line 1176
    .line 1177
    goto/16 :goto_7

    .line 1178
    .line 1179
    :pswitch_37
    move-object/from16 v21, v2

    .line 1180
    .line 1181
    move-object/from16 v16, v11

    .line 1182
    .line 1183
    move-object/from16 v22, v12

    .line 1184
    .line 1185
    move/from16 v23, v13

    .line 1186
    .line 1187
    move-wide v10, v0

    .line 1188
    move v12, v4

    .line 1189
    move v13, v5

    .line 1190
    move-object/from16 v0, p0

    .line 1191
    .line 1192
    move-object/from16 v1, p1

    .line 1193
    .line 1194
    move v2, v13

    .line 1195
    move v3, v15

    .line 1196
    move/from16 v4, v20

    .line 1197
    .line 1198
    move/from16 v5, v19

    .line 1199
    .line 1200
    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/T1;->t(Ljava/lang/Object;IIII)Z

    .line 1201
    .line 1202
    .line 1203
    move-result v0

    .line 1204
    if-eqz v0, :cond_9

    .line 1205
    .line 1206
    invoke-virtual {v14, v7, v10, v11}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 1207
    .line 1208
    .line 1209
    move-result v0

    .line 1210
    invoke-virtual {v8, v12, v0}, LZ3/o;->s(II)V

    .line 1211
    .line 1212
    .line 1213
    goto/16 :goto_7

    .line 1214
    .line 1215
    :pswitch_38
    move-object/from16 v21, v2

    .line 1216
    .line 1217
    move-object/from16 v16, v11

    .line 1218
    .line 1219
    move-object/from16 v22, v12

    .line 1220
    .line 1221
    move/from16 v23, v13

    .line 1222
    .line 1223
    move-wide v10, v0

    .line 1224
    move v12, v4

    .line 1225
    move v13, v5

    .line 1226
    move-object/from16 v0, p0

    .line 1227
    .line 1228
    move-object/from16 v1, p1

    .line 1229
    .line 1230
    move v2, v13

    .line 1231
    move v3, v15

    .line 1232
    move/from16 v4, v20

    .line 1233
    .line 1234
    move/from16 v5, v19

    .line 1235
    .line 1236
    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/T1;->t(Ljava/lang/Object;IIII)Z

    .line 1237
    .line 1238
    .line 1239
    move-result v0

    .line 1240
    if-eqz v0, :cond_9

    .line 1241
    .line 1242
    invoke-virtual {v14, v7, v10, v11}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 1243
    .line 1244
    .line 1245
    move-result v0

    .line 1246
    invoke-virtual {v8, v12, v0}, LZ3/o;->k(II)V

    .line 1247
    .line 1248
    .line 1249
    goto/16 :goto_7

    .line 1250
    .line 1251
    :pswitch_39
    move-object/from16 v21, v2

    .line 1252
    .line 1253
    move-object/from16 v16, v11

    .line 1254
    .line 1255
    move-object/from16 v22, v12

    .line 1256
    .line 1257
    move/from16 v23, v13

    .line 1258
    .line 1259
    move-wide v10, v0

    .line 1260
    move v12, v4

    .line 1261
    move v13, v5

    .line 1262
    move-object/from16 v0, p0

    .line 1263
    .line 1264
    move-object/from16 v1, p1

    .line 1265
    .line 1266
    move v2, v13

    .line 1267
    move v3, v15

    .line 1268
    move/from16 v4, v20

    .line 1269
    .line 1270
    move/from16 v5, v19

    .line 1271
    .line 1272
    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/T1;->t(Ljava/lang/Object;IIII)Z

    .line 1273
    .line 1274
    .line 1275
    move-result v0

    .line 1276
    if-eqz v0, :cond_9

    .line 1277
    .line 1278
    invoke-virtual {v14, v7, v10, v11}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 1279
    .line 1280
    .line 1281
    move-result v0

    .line 1282
    invoke-virtual {v8, v12, v0}, LZ3/o;->w(II)V

    .line 1283
    .line 1284
    .line 1285
    goto/16 :goto_7

    .line 1286
    .line 1287
    :pswitch_3a
    move-object/from16 v21, v2

    .line 1288
    .line 1289
    move-object/from16 v16, v11

    .line 1290
    .line 1291
    move-object/from16 v22, v12

    .line 1292
    .line 1293
    move/from16 v23, v13

    .line 1294
    .line 1295
    move-wide v10, v0

    .line 1296
    move v12, v4

    .line 1297
    move v13, v5

    .line 1298
    move-object/from16 v0, p0

    .line 1299
    .line 1300
    move-object/from16 v1, p1

    .line 1301
    .line 1302
    move v2, v13

    .line 1303
    move v3, v15

    .line 1304
    move/from16 v4, v20

    .line 1305
    .line 1306
    move/from16 v5, v19

    .line 1307
    .line 1308
    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/T1;->t(Ljava/lang/Object;IIII)Z

    .line 1309
    .line 1310
    .line 1311
    move-result v0

    .line 1312
    if-eqz v0, :cond_9

    .line 1313
    .line 1314
    invoke-virtual {v14, v7, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1315
    .line 1316
    .line 1317
    move-result-object v0

    .line 1318
    check-cast v0, Lcom/google/protobuf/r;

    .line 1319
    .line 1320
    invoke-virtual {v8, v12, v0}, LZ3/o;->i(ILcom/google/protobuf/r;)V

    .line 1321
    .line 1322
    .line 1323
    goto/16 :goto_7

    .line 1324
    .line 1325
    :pswitch_3b
    move-object/from16 v21, v2

    .line 1326
    .line 1327
    move-object/from16 v16, v11

    .line 1328
    .line 1329
    move-object/from16 v22, v12

    .line 1330
    .line 1331
    move/from16 v23, v13

    .line 1332
    .line 1333
    move-wide v10, v0

    .line 1334
    move v12, v4

    .line 1335
    move v13, v5

    .line 1336
    move-object/from16 v0, p0

    .line 1337
    .line 1338
    move-object/from16 v1, p1

    .line 1339
    .line 1340
    move v2, v13

    .line 1341
    move v3, v15

    .line 1342
    move/from16 v4, v20

    .line 1343
    .line 1344
    move/from16 v5, v19

    .line 1345
    .line 1346
    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/T1;->t(Ljava/lang/Object;IIII)Z

    .line 1347
    .line 1348
    .line 1349
    move-result v0

    .line 1350
    if-eqz v0, :cond_9

    .line 1351
    .line 1352
    invoke-virtual {v14, v7, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1353
    .line 1354
    .line 1355
    move-result-object v0

    .line 1356
    invoke-virtual {v6, v13}, Lcom/google/protobuf/T1;->q(I)Lcom/google/protobuf/j2;

    .line 1357
    .line 1358
    .line 1359
    move-result-object v1

    .line 1360
    invoke-virtual {v8, v12, v1, v0}, LZ3/o;->r(ILcom/google/protobuf/j2;Ljava/lang/Object;)V

    .line 1361
    .line 1362
    .line 1363
    goto/16 :goto_7

    .line 1364
    .line 1365
    :pswitch_3c
    move-object/from16 v21, v2

    .line 1366
    .line 1367
    move-object/from16 v16, v11

    .line 1368
    .line 1369
    move-object/from16 v22, v12

    .line 1370
    .line 1371
    move/from16 v23, v13

    .line 1372
    .line 1373
    move-wide v10, v0

    .line 1374
    move v12, v4

    .line 1375
    move v13, v5

    .line 1376
    move-object/from16 v0, p0

    .line 1377
    .line 1378
    move-object/from16 v1, p1

    .line 1379
    .line 1380
    move v2, v13

    .line 1381
    move v3, v15

    .line 1382
    move/from16 v4, v20

    .line 1383
    .line 1384
    move/from16 v5, v19

    .line 1385
    .line 1386
    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/T1;->t(Ljava/lang/Object;IIII)Z

    .line 1387
    .line 1388
    .line 1389
    move-result v0

    .line 1390
    if-eqz v0, :cond_9

    .line 1391
    .line 1392
    invoke-virtual {v14, v7, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1393
    .line 1394
    .line 1395
    move-result-object v0

    .line 1396
    instance-of v1, v0, Ljava/lang/String;

    .line 1397
    .line 1398
    if-eqz v1, :cond_8

    .line 1399
    .line 1400
    check-cast v0, Ljava/lang/String;

    .line 1401
    .line 1402
    iget-object v1, v8, LZ3/o;->H:Ljava/lang/Object;

    .line 1403
    .line 1404
    check-cast v1, Lcom/google/protobuf/z;

    .line 1405
    .line 1406
    invoke-virtual {v1, v12, v0}, Lcom/google/protobuf/z;->M0(ILjava/lang/String;)V

    .line 1407
    .line 1408
    .line 1409
    goto/16 :goto_7

    .line 1410
    .line 1411
    :cond_8
    check-cast v0, Lcom/google/protobuf/r;

    .line 1412
    .line 1413
    invoke-virtual {v8, v12, v0}, LZ3/o;->i(ILcom/google/protobuf/r;)V

    .line 1414
    .line 1415
    .line 1416
    goto/16 :goto_7

    .line 1417
    .line 1418
    :pswitch_3d
    move-object/from16 v21, v2

    .line 1419
    .line 1420
    move-object/from16 v16, v11

    .line 1421
    .line 1422
    move-object/from16 v22, v12

    .line 1423
    .line 1424
    move/from16 v23, v13

    .line 1425
    .line 1426
    move-wide v10, v0

    .line 1427
    move v12, v4

    .line 1428
    move v13, v5

    .line 1429
    move-object/from16 v0, p0

    .line 1430
    .line 1431
    move-object/from16 v1, p1

    .line 1432
    .line 1433
    move v2, v13

    .line 1434
    move v3, v15

    .line 1435
    move/from16 v4, v20

    .line 1436
    .line 1437
    move/from16 v5, v19

    .line 1438
    .line 1439
    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/T1;->t(Ljava/lang/Object;IIII)Z

    .line 1440
    .line 1441
    .line 1442
    move-result v0

    .line 1443
    if-eqz v0, :cond_9

    .line 1444
    .line 1445
    sget-object v0, Lcom/google/protobuf/H2;->c:Lcom/google/protobuf/G2;

    .line 1446
    .line 1447
    invoke-virtual {v0, v7, v10, v11}, Lcom/google/protobuf/G2;->d(Ljava/lang/Object;J)Z

    .line 1448
    .line 1449
    .line 1450
    move-result v0

    .line 1451
    invoke-virtual {v8, v12, v0}, LZ3/o;->h(IZ)V

    .line 1452
    .line 1453
    .line 1454
    goto/16 :goto_7

    .line 1455
    .line 1456
    :pswitch_3e
    move-object/from16 v21, v2

    .line 1457
    .line 1458
    move-object/from16 v16, v11

    .line 1459
    .line 1460
    move-object/from16 v22, v12

    .line 1461
    .line 1462
    move/from16 v23, v13

    .line 1463
    .line 1464
    move-wide v10, v0

    .line 1465
    move v12, v4

    .line 1466
    move v13, v5

    .line 1467
    move-object/from16 v0, p0

    .line 1468
    .line 1469
    move-object/from16 v1, p1

    .line 1470
    .line 1471
    move v2, v13

    .line 1472
    move v3, v15

    .line 1473
    move/from16 v4, v20

    .line 1474
    .line 1475
    move/from16 v5, v19

    .line 1476
    .line 1477
    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/T1;->t(Ljava/lang/Object;IIII)Z

    .line 1478
    .line 1479
    .line 1480
    move-result v0

    .line 1481
    if-eqz v0, :cond_9

    .line 1482
    .line 1483
    invoke-virtual {v14, v7, v10, v11}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 1484
    .line 1485
    .line 1486
    move-result v0

    .line 1487
    invoke-virtual {v8, v12, v0}, LZ3/o;->l(II)V

    .line 1488
    .line 1489
    .line 1490
    goto/16 :goto_7

    .line 1491
    .line 1492
    :pswitch_3f
    move-object/from16 v21, v2

    .line 1493
    .line 1494
    move-object/from16 v16, v11

    .line 1495
    .line 1496
    move-object/from16 v22, v12

    .line 1497
    .line 1498
    move/from16 v23, v13

    .line 1499
    .line 1500
    move-wide v10, v0

    .line 1501
    move v12, v4

    .line 1502
    move v13, v5

    .line 1503
    move-object/from16 v0, p0

    .line 1504
    .line 1505
    move-object/from16 v1, p1

    .line 1506
    .line 1507
    move v2, v13

    .line 1508
    move v3, v15

    .line 1509
    move/from16 v4, v20

    .line 1510
    .line 1511
    move/from16 v5, v19

    .line 1512
    .line 1513
    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/T1;->t(Ljava/lang/Object;IIII)Z

    .line 1514
    .line 1515
    .line 1516
    move-result v0

    .line 1517
    if-eqz v0, :cond_9

    .line 1518
    .line 1519
    invoke-virtual {v14, v7, v10, v11}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 1520
    .line 1521
    .line 1522
    move-result-wide v0

    .line 1523
    invoke-virtual {v8, v12, v0, v1}, LZ3/o;->m(IJ)V

    .line 1524
    .line 1525
    .line 1526
    goto/16 :goto_7

    .line 1527
    .line 1528
    :pswitch_40
    move-object/from16 v21, v2

    .line 1529
    .line 1530
    move-object/from16 v16, v11

    .line 1531
    .line 1532
    move-object/from16 v22, v12

    .line 1533
    .line 1534
    move/from16 v23, v13

    .line 1535
    .line 1536
    move-wide v10, v0

    .line 1537
    move v12, v4

    .line 1538
    move v13, v5

    .line 1539
    move-object/from16 v0, p0

    .line 1540
    .line 1541
    move-object/from16 v1, p1

    .line 1542
    .line 1543
    move v2, v13

    .line 1544
    move v3, v15

    .line 1545
    move/from16 v4, v20

    .line 1546
    .line 1547
    move/from16 v5, v19

    .line 1548
    .line 1549
    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/T1;->t(Ljava/lang/Object;IIII)Z

    .line 1550
    .line 1551
    .line 1552
    move-result v0

    .line 1553
    if-eqz v0, :cond_9

    .line 1554
    .line 1555
    invoke-virtual {v14, v7, v10, v11}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 1556
    .line 1557
    .line 1558
    move-result v0

    .line 1559
    invoke-virtual {v8, v12, v0}, LZ3/o;->p(II)V

    .line 1560
    .line 1561
    .line 1562
    goto/16 :goto_7

    .line 1563
    .line 1564
    :pswitch_41
    move-object/from16 v21, v2

    .line 1565
    .line 1566
    move-object/from16 v16, v11

    .line 1567
    .line 1568
    move-object/from16 v22, v12

    .line 1569
    .line 1570
    move/from16 v23, v13

    .line 1571
    .line 1572
    move-wide v10, v0

    .line 1573
    move v12, v4

    .line 1574
    move v13, v5

    .line 1575
    move-object/from16 v0, p0

    .line 1576
    .line 1577
    move-object/from16 v1, p1

    .line 1578
    .line 1579
    move v2, v13

    .line 1580
    move v3, v15

    .line 1581
    move/from16 v4, v20

    .line 1582
    .line 1583
    move/from16 v5, v19

    .line 1584
    .line 1585
    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/T1;->t(Ljava/lang/Object;IIII)Z

    .line 1586
    .line 1587
    .line 1588
    move-result v0

    .line 1589
    if-eqz v0, :cond_9

    .line 1590
    .line 1591
    invoke-virtual {v14, v7, v10, v11}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 1592
    .line 1593
    .line 1594
    move-result-wide v0

    .line 1595
    invoke-virtual {v8, v12, v0, v1}, LZ3/o;->x(IJ)V

    .line 1596
    .line 1597
    .line 1598
    goto/16 :goto_7

    .line 1599
    .line 1600
    :pswitch_42
    move-object/from16 v21, v2

    .line 1601
    .line 1602
    move-object/from16 v16, v11

    .line 1603
    .line 1604
    move-object/from16 v22, v12

    .line 1605
    .line 1606
    move/from16 v23, v13

    .line 1607
    .line 1608
    move-wide v10, v0

    .line 1609
    move v12, v4

    .line 1610
    move v13, v5

    .line 1611
    move-object/from16 v0, p0

    .line 1612
    .line 1613
    move-object/from16 v1, p1

    .line 1614
    .line 1615
    move v2, v13

    .line 1616
    move v3, v15

    .line 1617
    move/from16 v4, v20

    .line 1618
    .line 1619
    move/from16 v5, v19

    .line 1620
    .line 1621
    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/T1;->t(Ljava/lang/Object;IIII)Z

    .line 1622
    .line 1623
    .line 1624
    move-result v0

    .line 1625
    if-eqz v0, :cond_9

    .line 1626
    .line 1627
    invoke-virtual {v14, v7, v10, v11}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 1628
    .line 1629
    .line 1630
    move-result-wide v0

    .line 1631
    invoke-virtual {v8, v12, v0, v1}, LZ3/o;->q(IJ)V

    .line 1632
    .line 1633
    .line 1634
    goto :goto_7

    .line 1635
    :pswitch_43
    move-object/from16 v21, v2

    .line 1636
    .line 1637
    move-object/from16 v16, v11

    .line 1638
    .line 1639
    move-object/from16 v22, v12

    .line 1640
    .line 1641
    move/from16 v23, v13

    .line 1642
    .line 1643
    move-wide v10, v0

    .line 1644
    move v12, v4

    .line 1645
    move v13, v5

    .line 1646
    move-object/from16 v0, p0

    .line 1647
    .line 1648
    move-object/from16 v1, p1

    .line 1649
    .line 1650
    move v2, v13

    .line 1651
    move v3, v15

    .line 1652
    move/from16 v4, v20

    .line 1653
    .line 1654
    move/from16 v5, v19

    .line 1655
    .line 1656
    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/T1;->t(Ljava/lang/Object;IIII)Z

    .line 1657
    .line 1658
    .line 1659
    move-result v0

    .line 1660
    if-eqz v0, :cond_9

    .line 1661
    .line 1662
    sget-object v0, Lcom/google/protobuf/H2;->c:Lcom/google/protobuf/G2;

    .line 1663
    .line 1664
    invoke-virtual {v0, v7, v10, v11}, Lcom/google/protobuf/G2;->h(Ljava/lang/Object;J)F

    .line 1665
    .line 1666
    .line 1667
    move-result v0

    .line 1668
    invoke-virtual {v8, v12, v0}, LZ3/o;->n(IF)V

    .line 1669
    .line 1670
    .line 1671
    goto :goto_7

    .line 1672
    :pswitch_44
    move-object/from16 v21, v2

    .line 1673
    .line 1674
    move-object/from16 v16, v11

    .line 1675
    .line 1676
    move-object/from16 v22, v12

    .line 1677
    .line 1678
    move/from16 v23, v13

    .line 1679
    .line 1680
    move-wide v10, v0

    .line 1681
    move v12, v4

    .line 1682
    move v13, v5

    .line 1683
    move-object/from16 v0, p0

    .line 1684
    .line 1685
    move-object/from16 v1, p1

    .line 1686
    .line 1687
    move v2, v13

    .line 1688
    move v3, v15

    .line 1689
    move/from16 v4, v20

    .line 1690
    .line 1691
    move/from16 v5, v19

    .line 1692
    .line 1693
    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/T1;->t(Ljava/lang/Object;IIII)Z

    .line 1694
    .line 1695
    .line 1696
    move-result v0

    .line 1697
    if-eqz v0, :cond_9

    .line 1698
    .line 1699
    sget-object v0, Lcom/google/protobuf/H2;->c:Lcom/google/protobuf/G2;

    .line 1700
    .line 1701
    invoke-virtual {v0, v7, v10, v11}, Lcom/google/protobuf/G2;->g(Ljava/lang/Object;J)D

    .line 1702
    .line 1703
    .line 1704
    move-result-wide v0

    .line 1705
    invoke-virtual {v8, v12, v0, v1}, LZ3/o;->j(ID)V

    .line 1706
    .line 1707
    .line 1708
    :cond_9
    :goto_7
    add-int/lit8 v5, v13, 0x3

    .line 1709
    .line 1710
    move v0, v15

    .line 1711
    move-object/from16 v11, v16

    .line 1712
    .line 1713
    move/from16 v2, v20

    .line 1714
    .line 1715
    move-object/from16 v1, v21

    .line 1716
    .line 1717
    move-object/from16 v12, v22

    .line 1718
    .line 1719
    move/from16 v13, v23

    .line 1720
    .line 1721
    goto/16 :goto_1

    .line 1722
    .line 1723
    :cond_a
    move-object/from16 v19, v1

    .line 1724
    .line 1725
    move-object/from16 v16, v11

    .line 1726
    .line 1727
    :goto_8
    if-eqz v1, :cond_c

    .line 1728
    .line 1729
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1730
    .line 1731
    .line 1732
    invoke-static {v8, v1}, Lcom/google/protobuf/P0;->e(LZ3/o;Ljava/util/Map$Entry;)V

    .line 1733
    .line 1734
    .line 1735
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    .line 1736
    .line 1737
    .line 1738
    move-result v0

    .line 1739
    if-eqz v0, :cond_b

    .line 1740
    .line 1741
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1742
    .line 1743
    .line 1744
    move-result-object v0

    .line 1745
    check-cast v0, Ljava/util/Map$Entry;

    .line 1746
    .line 1747
    move-object v1, v0

    .line 1748
    goto :goto_8

    .line 1749
    :cond_b
    const/4 v1, 0x0

    .line 1750
    goto :goto_8

    .line 1751
    :cond_c
    iget-object v0, v6, Lcom/google/protobuf/T1;->m:Lcom/google/protobuf/B2;

    .line 1752
    .line 1753
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1754
    .line 1755
    .line 1756
    move-object v0, v7

    .line 1757
    check-cast v0, Lcom/google/protobuf/i1;

    .line 1758
    .line 1759
    iget-object v0, v0, Lcom/google/protobuf/i1;->unknownFields:Lcom/google/protobuf/A2;

    .line 1760
    .line 1761
    invoke-virtual {v0, v8}, Lcom/google/protobuf/A2;->g(LZ3/o;)V

    .line 1762
    .line 1763
    .line 1764
    return-void

    .line 1765
    :pswitch_data_0
    .packed-switch 0x0
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

.method public final a(Ljava/lang/Object;[BIILcom/google/android/gms/internal/ads/SG;)V
    .locals 7

    .line 1
    const/4 v5, 0x0

    .line 2
    move-object v0, p0

    .line 3
    move-object v1, p1

    .line 4
    move-object v2, p2

    .line 5
    move v3, p3

    .line 6
    move v4, p4

    .line 7
    move-object v6, p5

    .line 8
    invoke-virtual/range {v0 .. v6}, Lcom/google/protobuf/T1;->I(Ljava/lang/Object;[BIIILcom/google/android/gms/internal/ads/SG;)I

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final b(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6

    .line 1
    invoke-static {p1}, Lcom/google/protobuf/T1;->l(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    :goto_0
    iget-object v1, p0, Lcom/google/protobuf/T1;->a:[I

    .line 9
    .line 10
    array-length v2, v1

    .line 11
    if-ge v0, v2, :cond_1

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Lcom/google/protobuf/T1;->W(I)I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    const v3, 0xfffff

    .line 18
    .line 19
    .line 20
    and-int/2addr v3, v2

    .line 21
    int-to-long v3, v3

    .line 22
    aget v1, v1, v0

    .line 23
    .line 24
    invoke-static {v2}, Lcom/google/protobuf/T1;->V(I)I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    packed-switch v2, :pswitch_data_0

    .line 29
    .line 30
    .line 31
    goto/16 :goto_1

    .line 32
    .line 33
    :pswitch_0
    invoke-virtual {p0, v0, p1, p2}, Lcom/google/protobuf/T1;->z(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    goto/16 :goto_1

    .line 37
    .line 38
    :pswitch_1
    invoke-virtual {p0, v1, p2, v0}, Lcom/google/protobuf/T1;->v(ILjava/lang/Object;I)Z

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    if-eqz v2, :cond_0

    .line 43
    .line 44
    sget-object v2, Lcom/google/protobuf/H2;->c:Lcom/google/protobuf/G2;

    .line 45
    .line 46
    invoke-virtual {v2, p2, v3, v4}, Lcom/google/protobuf/G2;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    invoke-static {p1, v3, v4, v2}, Lcom/google/protobuf/H2;->s(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, v1, p1, v0}, Lcom/google/protobuf/T1;->R(ILjava/lang/Object;I)V

    .line 54
    .line 55
    .line 56
    goto/16 :goto_1

    .line 57
    .line 58
    :pswitch_2
    invoke-virtual {p0, v0, p1, p2}, Lcom/google/protobuf/T1;->z(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    goto/16 :goto_1

    .line 62
    .line 63
    :pswitch_3
    invoke-virtual {p0, v1, p2, v0}, Lcom/google/protobuf/T1;->v(ILjava/lang/Object;I)Z

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    if-eqz v2, :cond_0

    .line 68
    .line 69
    sget-object v2, Lcom/google/protobuf/H2;->c:Lcom/google/protobuf/G2;

    .line 70
    .line 71
    invoke-virtual {v2, p2, v3, v4}, Lcom/google/protobuf/G2;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    invoke-static {p1, v3, v4, v2}, Lcom/google/protobuf/H2;->s(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0, v1, p1, v0}, Lcom/google/protobuf/T1;->R(ILjava/lang/Object;I)V

    .line 79
    .line 80
    .line 81
    goto/16 :goto_1

    .line 82
    .line 83
    :pswitch_4
    sget-object v1, Lcom/google/protobuf/k2;->a:Ljava/lang/Class;

    .line 84
    .line 85
    sget-object v1, Lcom/google/protobuf/H2;->c:Lcom/google/protobuf/G2;

    .line 86
    .line 87
    invoke-virtual {v1, p1, v3, v4}, Lcom/google/protobuf/G2;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    invoke-virtual {v1, p2, v3, v4}, Lcom/google/protobuf/G2;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    iget-object v5, p0, Lcom/google/protobuf/T1;->o:Lcom/google/protobuf/L1;

    .line 96
    .line 97
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 98
    .line 99
    .line 100
    invoke-static {v2, v1}, Lcom/google/protobuf/L1;->e(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/protobuf/K1;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    invoke-static {p1, v3, v4, v1}, Lcom/google/protobuf/H2;->s(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 105
    .line 106
    .line 107
    goto/16 :goto_1

    .line 108
    .line 109
    :pswitch_5
    iget-object v1, p0, Lcom/google/protobuf/T1;->l:Lcom/google/protobuf/D1;

    .line 110
    .line 111
    invoke-virtual {v1, p1, v3, v4, p2}, Lcom/google/protobuf/D1;->b(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 112
    .line 113
    .line 114
    goto/16 :goto_1

    .line 115
    .line 116
    :pswitch_6
    invoke-virtual {p0, v0, p1, p2}, Lcom/google/protobuf/T1;->y(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 117
    .line 118
    .line 119
    goto/16 :goto_1

    .line 120
    .line 121
    :pswitch_7
    invoke-virtual {p0, v0, p2}, Lcom/google/protobuf/T1;->s(ILjava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    move-result v1

    .line 125
    if-eqz v1, :cond_0

    .line 126
    .line 127
    sget-object v1, Lcom/google/protobuf/H2;->c:Lcom/google/protobuf/G2;

    .line 128
    .line 129
    invoke-virtual {v1, p2, v3, v4}, Lcom/google/protobuf/G2;->j(Ljava/lang/Object;J)J

    .line 130
    .line 131
    .line 132
    move-result-wide v1

    .line 133
    invoke-static {p1, v3, v4, v1, v2}, Lcom/google/protobuf/H2;->r(Ljava/lang/Object;JJ)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {p0, v0, p1}, Lcom/google/protobuf/T1;->Q(ILjava/lang/Object;)V

    .line 137
    .line 138
    .line 139
    goto/16 :goto_1

    .line 140
    .line 141
    :pswitch_8
    invoke-virtual {p0, v0, p2}, Lcom/google/protobuf/T1;->s(ILjava/lang/Object;)Z

    .line 142
    .line 143
    .line 144
    move-result v1

    .line 145
    if-eqz v1, :cond_0

    .line 146
    .line 147
    sget-object v1, Lcom/google/protobuf/H2;->c:Lcom/google/protobuf/G2;

    .line 148
    .line 149
    invoke-virtual {v1, p2, v3, v4}, Lcom/google/protobuf/G2;->i(Ljava/lang/Object;J)I

    .line 150
    .line 151
    .line 152
    move-result v1

    .line 153
    invoke-static {p1, v1, v3, v4}, Lcom/google/protobuf/H2;->q(Ljava/lang/Object;IJ)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {p0, v0, p1}, Lcom/google/protobuf/T1;->Q(ILjava/lang/Object;)V

    .line 157
    .line 158
    .line 159
    goto/16 :goto_1

    .line 160
    .line 161
    :pswitch_9
    invoke-virtual {p0, v0, p2}, Lcom/google/protobuf/T1;->s(ILjava/lang/Object;)Z

    .line 162
    .line 163
    .line 164
    move-result v1

    .line 165
    if-eqz v1, :cond_0

    .line 166
    .line 167
    sget-object v1, Lcom/google/protobuf/H2;->c:Lcom/google/protobuf/G2;

    .line 168
    .line 169
    invoke-virtual {v1, p2, v3, v4}, Lcom/google/protobuf/G2;->j(Ljava/lang/Object;J)J

    .line 170
    .line 171
    .line 172
    move-result-wide v1

    .line 173
    invoke-static {p1, v3, v4, v1, v2}, Lcom/google/protobuf/H2;->r(Ljava/lang/Object;JJ)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {p0, v0, p1}, Lcom/google/protobuf/T1;->Q(ILjava/lang/Object;)V

    .line 177
    .line 178
    .line 179
    goto/16 :goto_1

    .line 180
    .line 181
    :pswitch_a
    invoke-virtual {p0, v0, p2}, Lcom/google/protobuf/T1;->s(ILjava/lang/Object;)Z

    .line 182
    .line 183
    .line 184
    move-result v1

    .line 185
    if-eqz v1, :cond_0

    .line 186
    .line 187
    sget-object v1, Lcom/google/protobuf/H2;->c:Lcom/google/protobuf/G2;

    .line 188
    .line 189
    invoke-virtual {v1, p2, v3, v4}, Lcom/google/protobuf/G2;->i(Ljava/lang/Object;J)I

    .line 190
    .line 191
    .line 192
    move-result v1

    .line 193
    invoke-static {p1, v1, v3, v4}, Lcom/google/protobuf/H2;->q(Ljava/lang/Object;IJ)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {p0, v0, p1}, Lcom/google/protobuf/T1;->Q(ILjava/lang/Object;)V

    .line 197
    .line 198
    .line 199
    goto/16 :goto_1

    .line 200
    .line 201
    :pswitch_b
    invoke-virtual {p0, v0, p2}, Lcom/google/protobuf/T1;->s(ILjava/lang/Object;)Z

    .line 202
    .line 203
    .line 204
    move-result v1

    .line 205
    if-eqz v1, :cond_0

    .line 206
    .line 207
    sget-object v1, Lcom/google/protobuf/H2;->c:Lcom/google/protobuf/G2;

    .line 208
    .line 209
    invoke-virtual {v1, p2, v3, v4}, Lcom/google/protobuf/G2;->i(Ljava/lang/Object;J)I

    .line 210
    .line 211
    .line 212
    move-result v1

    .line 213
    invoke-static {p1, v1, v3, v4}, Lcom/google/protobuf/H2;->q(Ljava/lang/Object;IJ)V

    .line 214
    .line 215
    .line 216
    invoke-virtual {p0, v0, p1}, Lcom/google/protobuf/T1;->Q(ILjava/lang/Object;)V

    .line 217
    .line 218
    .line 219
    goto/16 :goto_1

    .line 220
    .line 221
    :pswitch_c
    invoke-virtual {p0, v0, p2}, Lcom/google/protobuf/T1;->s(ILjava/lang/Object;)Z

    .line 222
    .line 223
    .line 224
    move-result v1

    .line 225
    if-eqz v1, :cond_0

    .line 226
    .line 227
    sget-object v1, Lcom/google/protobuf/H2;->c:Lcom/google/protobuf/G2;

    .line 228
    .line 229
    invoke-virtual {v1, p2, v3, v4}, Lcom/google/protobuf/G2;->i(Ljava/lang/Object;J)I

    .line 230
    .line 231
    .line 232
    move-result v1

    .line 233
    invoke-static {p1, v1, v3, v4}, Lcom/google/protobuf/H2;->q(Ljava/lang/Object;IJ)V

    .line 234
    .line 235
    .line 236
    invoke-virtual {p0, v0, p1}, Lcom/google/protobuf/T1;->Q(ILjava/lang/Object;)V

    .line 237
    .line 238
    .line 239
    goto/16 :goto_1

    .line 240
    .line 241
    :pswitch_d
    invoke-virtual {p0, v0, p2}, Lcom/google/protobuf/T1;->s(ILjava/lang/Object;)Z

    .line 242
    .line 243
    .line 244
    move-result v1

    .line 245
    if-eqz v1, :cond_0

    .line 246
    .line 247
    sget-object v1, Lcom/google/protobuf/H2;->c:Lcom/google/protobuf/G2;

    .line 248
    .line 249
    invoke-virtual {v1, p2, v3, v4}, Lcom/google/protobuf/G2;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 250
    .line 251
    .line 252
    move-result-object v1

    .line 253
    invoke-static {p1, v3, v4, v1}, Lcom/google/protobuf/H2;->s(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 254
    .line 255
    .line 256
    invoke-virtual {p0, v0, p1}, Lcom/google/protobuf/T1;->Q(ILjava/lang/Object;)V

    .line 257
    .line 258
    .line 259
    goto/16 :goto_1

    .line 260
    .line 261
    :pswitch_e
    invoke-virtual {p0, v0, p1, p2}, Lcom/google/protobuf/T1;->y(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 262
    .line 263
    .line 264
    goto/16 :goto_1

    .line 265
    .line 266
    :pswitch_f
    invoke-virtual {p0, v0, p2}, Lcom/google/protobuf/T1;->s(ILjava/lang/Object;)Z

    .line 267
    .line 268
    .line 269
    move-result v1

    .line 270
    if-eqz v1, :cond_0

    .line 271
    .line 272
    sget-object v1, Lcom/google/protobuf/H2;->c:Lcom/google/protobuf/G2;

    .line 273
    .line 274
    invoke-virtual {v1, p2, v3, v4}, Lcom/google/protobuf/G2;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 275
    .line 276
    .line 277
    move-result-object v1

    .line 278
    invoke-static {p1, v3, v4, v1}, Lcom/google/protobuf/H2;->s(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 279
    .line 280
    .line 281
    invoke-virtual {p0, v0, p1}, Lcom/google/protobuf/T1;->Q(ILjava/lang/Object;)V

    .line 282
    .line 283
    .line 284
    goto/16 :goto_1

    .line 285
    .line 286
    :pswitch_10
    invoke-virtual {p0, v0, p2}, Lcom/google/protobuf/T1;->s(ILjava/lang/Object;)Z

    .line 287
    .line 288
    .line 289
    move-result v1

    .line 290
    if-eqz v1, :cond_0

    .line 291
    .line 292
    sget-object v1, Lcom/google/protobuf/H2;->c:Lcom/google/protobuf/G2;

    .line 293
    .line 294
    invoke-virtual {v1, p2, v3, v4}, Lcom/google/protobuf/G2;->d(Ljava/lang/Object;J)Z

    .line 295
    .line 296
    .line 297
    move-result v1

    .line 298
    invoke-static {p1, v3, v4, v1}, Lcom/google/protobuf/H2;->k(Ljava/lang/Object;JZ)V

    .line 299
    .line 300
    .line 301
    invoke-virtual {p0, v0, p1}, Lcom/google/protobuf/T1;->Q(ILjava/lang/Object;)V

    .line 302
    .line 303
    .line 304
    goto/16 :goto_1

    .line 305
    .line 306
    :pswitch_11
    invoke-virtual {p0, v0, p2}, Lcom/google/protobuf/T1;->s(ILjava/lang/Object;)Z

    .line 307
    .line 308
    .line 309
    move-result v1

    .line 310
    if-eqz v1, :cond_0

    .line 311
    .line 312
    sget-object v1, Lcom/google/protobuf/H2;->c:Lcom/google/protobuf/G2;

    .line 313
    .line 314
    invoke-virtual {v1, p2, v3, v4}, Lcom/google/protobuf/G2;->i(Ljava/lang/Object;J)I

    .line 315
    .line 316
    .line 317
    move-result v1

    .line 318
    invoke-static {p1, v1, v3, v4}, Lcom/google/protobuf/H2;->q(Ljava/lang/Object;IJ)V

    .line 319
    .line 320
    .line 321
    invoke-virtual {p0, v0, p1}, Lcom/google/protobuf/T1;->Q(ILjava/lang/Object;)V

    .line 322
    .line 323
    .line 324
    goto/16 :goto_1

    .line 325
    .line 326
    :pswitch_12
    invoke-virtual {p0, v0, p2}, Lcom/google/protobuf/T1;->s(ILjava/lang/Object;)Z

    .line 327
    .line 328
    .line 329
    move-result v1

    .line 330
    if-eqz v1, :cond_0

    .line 331
    .line 332
    sget-object v1, Lcom/google/protobuf/H2;->c:Lcom/google/protobuf/G2;

    .line 333
    .line 334
    invoke-virtual {v1, p2, v3, v4}, Lcom/google/protobuf/G2;->j(Ljava/lang/Object;J)J

    .line 335
    .line 336
    .line 337
    move-result-wide v1

    .line 338
    invoke-static {p1, v3, v4, v1, v2}, Lcom/google/protobuf/H2;->r(Ljava/lang/Object;JJ)V

    .line 339
    .line 340
    .line 341
    invoke-virtual {p0, v0, p1}, Lcom/google/protobuf/T1;->Q(ILjava/lang/Object;)V

    .line 342
    .line 343
    .line 344
    goto :goto_1

    .line 345
    :pswitch_13
    invoke-virtual {p0, v0, p2}, Lcom/google/protobuf/T1;->s(ILjava/lang/Object;)Z

    .line 346
    .line 347
    .line 348
    move-result v1

    .line 349
    if-eqz v1, :cond_0

    .line 350
    .line 351
    sget-object v1, Lcom/google/protobuf/H2;->c:Lcom/google/protobuf/G2;

    .line 352
    .line 353
    invoke-virtual {v1, p2, v3, v4}, Lcom/google/protobuf/G2;->i(Ljava/lang/Object;J)I

    .line 354
    .line 355
    .line 356
    move-result v1

    .line 357
    invoke-static {p1, v1, v3, v4}, Lcom/google/protobuf/H2;->q(Ljava/lang/Object;IJ)V

    .line 358
    .line 359
    .line 360
    invoke-virtual {p0, v0, p1}, Lcom/google/protobuf/T1;->Q(ILjava/lang/Object;)V

    .line 361
    .line 362
    .line 363
    goto :goto_1

    .line 364
    :pswitch_14
    invoke-virtual {p0, v0, p2}, Lcom/google/protobuf/T1;->s(ILjava/lang/Object;)Z

    .line 365
    .line 366
    .line 367
    move-result v1

    .line 368
    if-eqz v1, :cond_0

    .line 369
    .line 370
    sget-object v1, Lcom/google/protobuf/H2;->c:Lcom/google/protobuf/G2;

    .line 371
    .line 372
    invoke-virtual {v1, p2, v3, v4}, Lcom/google/protobuf/G2;->j(Ljava/lang/Object;J)J

    .line 373
    .line 374
    .line 375
    move-result-wide v1

    .line 376
    invoke-static {p1, v3, v4, v1, v2}, Lcom/google/protobuf/H2;->r(Ljava/lang/Object;JJ)V

    .line 377
    .line 378
    .line 379
    invoke-virtual {p0, v0, p1}, Lcom/google/protobuf/T1;->Q(ILjava/lang/Object;)V

    .line 380
    .line 381
    .line 382
    goto :goto_1

    .line 383
    :pswitch_15
    invoke-virtual {p0, v0, p2}, Lcom/google/protobuf/T1;->s(ILjava/lang/Object;)Z

    .line 384
    .line 385
    .line 386
    move-result v1

    .line 387
    if-eqz v1, :cond_0

    .line 388
    .line 389
    sget-object v1, Lcom/google/protobuf/H2;->c:Lcom/google/protobuf/G2;

    .line 390
    .line 391
    invoke-virtual {v1, p2, v3, v4}, Lcom/google/protobuf/G2;->j(Ljava/lang/Object;J)J

    .line 392
    .line 393
    .line 394
    move-result-wide v1

    .line 395
    invoke-static {p1, v3, v4, v1, v2}, Lcom/google/protobuf/H2;->r(Ljava/lang/Object;JJ)V

    .line 396
    .line 397
    .line 398
    invoke-virtual {p0, v0, p1}, Lcom/google/protobuf/T1;->Q(ILjava/lang/Object;)V

    .line 399
    .line 400
    .line 401
    goto :goto_1

    .line 402
    :pswitch_16
    invoke-virtual {p0, v0, p2}, Lcom/google/protobuf/T1;->s(ILjava/lang/Object;)Z

    .line 403
    .line 404
    .line 405
    move-result v1

    .line 406
    if-eqz v1, :cond_0

    .line 407
    .line 408
    sget-object v1, Lcom/google/protobuf/H2;->c:Lcom/google/protobuf/G2;

    .line 409
    .line 410
    invoke-virtual {v1, p2, v3, v4}, Lcom/google/protobuf/G2;->h(Ljava/lang/Object;J)F

    .line 411
    .line 412
    .line 413
    move-result v1

    .line 414
    invoke-static {p1, v3, v4, v1}, Lcom/google/protobuf/H2;->p(Ljava/lang/Object;JF)V

    .line 415
    .line 416
    .line 417
    invoke-virtual {p0, v0, p1}, Lcom/google/protobuf/T1;->Q(ILjava/lang/Object;)V

    .line 418
    .line 419
    .line 420
    goto :goto_1

    .line 421
    :pswitch_17
    invoke-virtual {p0, v0, p2}, Lcom/google/protobuf/T1;->s(ILjava/lang/Object;)Z

    .line 422
    .line 423
    .line 424
    move-result v1

    .line 425
    if-eqz v1, :cond_0

    .line 426
    .line 427
    sget-object v1, Lcom/google/protobuf/H2;->c:Lcom/google/protobuf/G2;

    .line 428
    .line 429
    invoke-virtual {v1, p2, v3, v4}, Lcom/google/protobuf/G2;->g(Ljava/lang/Object;J)D

    .line 430
    .line 431
    .line 432
    move-result-wide v1

    .line 433
    invoke-static {p1, v3, v4, v1, v2}, Lcom/google/protobuf/H2;->o(Ljava/lang/Object;JD)V

    .line 434
    .line 435
    .line 436
    invoke-virtual {p0, v0, p1}, Lcom/google/protobuf/T1;->Q(ILjava/lang/Object;)V

    .line 437
    .line 438
    .line 439
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x3

    .line 440
    .line 441
    goto/16 :goto_0

    .line 442
    .line 443
    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/T1;->m:Lcom/google/protobuf/B2;

    .line 444
    .line 445
    invoke-static {v0, p1, p2}, Lcom/google/protobuf/k2;->B(Lcom/google/protobuf/B2;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 446
    .line 447
    .line 448
    iget-boolean v0, p0, Lcom/google/protobuf/T1;->f:Z

    .line 449
    .line 450
    if-eqz v0, :cond_2

    .line 451
    .line 452
    iget-object v0, p0, Lcom/google/protobuf/T1;->n:Lcom/google/protobuf/P0;

    .line 453
    .line 454
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 455
    .line 456
    .line 457
    check-cast p2, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;

    .line 458
    .line 459
    iget-object p2, p2, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/google/protobuf/W0;

    .line 460
    .line 461
    iget-object v0, p2, Lcom/google/protobuf/W0;->a:Lcom/google/protobuf/l2;

    .line 462
    .line 463
    invoke-virtual {v0}, Ljava/util/AbstractMap;->isEmpty()Z

    .line 464
    .line 465
    .line 466
    move-result v0

    .line 467
    if-nez v0, :cond_2

    .line 468
    .line 469
    check-cast p1, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;

    .line 470
    .line 471
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;->ensureExtensionsAreMutable()Lcom/google/protobuf/W0;

    .line 472
    .line 473
    .line 474
    move-result-object p1

    .line 475
    invoke-virtual {p1, p2}, Lcom/google/protobuf/W0;->n(Lcom/google/protobuf/W0;)V

    .line 476
    .line 477
    .line 478
    :cond_2
    return-void

    .line 479
    :pswitch_data_0
    .packed-switch 0x0
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
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final c(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/CO;Lcom/google/protobuf/O0;)V
    .locals 6

    .line 1
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lcom/google/protobuf/T1;->l(Ljava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    iget-object v1, p0, Lcom/google/protobuf/T1;->m:Lcom/google/protobuf/B2;

    .line 8
    .line 9
    iget-object v2, p0, Lcom/google/protobuf/T1;->n:Lcom/google/protobuf/P0;

    .line 10
    .line 11
    move-object v0, p0

    .line 12
    move-object v3, p1

    .line 13
    move-object v4, p2

    .line 14
    move-object v5, p3

    .line 15
    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/T1;->w(Lcom/google/protobuf/B2;Lcom/google/protobuf/P0;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/CO;Lcom/google/protobuf/O0;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final d(Ljava/lang/Object;)V
    .locals 8

    .line 1
    invoke-static {p1}, Lcom/google/protobuf/T1;->u(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    instance-of v0, p1, Lcom/google/protobuf/i1;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    move-object v0, p1

    .line 13
    check-cast v0, Lcom/google/protobuf/i1;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/google/protobuf/i1;->clearMemoizedSerializedSize()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/google/protobuf/i1;->clearMemoizedHashCode()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/google/protobuf/i1;->markImmutable()V

    .line 22
    .line 23
    .line 24
    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/T1;->a:[I

    .line 25
    .line 26
    array-length v1, v0

    .line 27
    const/4 v2, 0x0

    .line 28
    :goto_0
    if-ge v2, v1, :cond_5

    .line 29
    .line 30
    invoke-virtual {p0, v2}, Lcom/google/protobuf/T1;->W(I)I

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    const v4, 0xfffff

    .line 35
    .line 36
    .line 37
    and-int/2addr v4, v3

    .line 38
    int-to-long v4, v4

    .line 39
    invoke-static {v3}, Lcom/google/protobuf/T1;->V(I)I

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    const/16 v6, 0x9

    .line 44
    .line 45
    sget-object v7, Lcom/google/protobuf/T1;->q:Lsun/misc/Unsafe;

    .line 46
    .line 47
    if-eq v3, v6, :cond_3

    .line 48
    .line 49
    const/16 v6, 0x3c

    .line 50
    .line 51
    if-eq v3, v6, :cond_2

    .line 52
    .line 53
    const/16 v6, 0x44

    .line 54
    .line 55
    if-eq v3, v6, :cond_2

    .line 56
    .line 57
    packed-switch v3, :pswitch_data_0

    .line 58
    .line 59
    .line 60
    goto :goto_1

    .line 61
    :pswitch_0
    invoke-virtual {v7, p1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    if-eqz v3, :cond_4

    .line 66
    .line 67
    iget-object v6, p0, Lcom/google/protobuf/T1;->o:Lcom/google/protobuf/L1;

    .line 68
    .line 69
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 70
    .line 71
    .line 72
    invoke-static {v3}, Lcom/google/protobuf/L1;->g(Ljava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v7, p1, v4, v5, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    goto :goto_1

    .line 79
    :pswitch_1
    iget-object v3, p0, Lcom/google/protobuf/T1;->l:Lcom/google/protobuf/D1;

    .line 80
    .line 81
    invoke-virtual {v3, p1, v4, v5}, Lcom/google/protobuf/D1;->a(Ljava/lang/Object;J)V

    .line 82
    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_2
    aget v3, v0, v2

    .line 86
    .line 87
    invoke-virtual {p0, v3, p1, v2}, Lcom/google/protobuf/T1;->v(ILjava/lang/Object;I)Z

    .line 88
    .line 89
    .line 90
    move-result v3

    .line 91
    if-eqz v3, :cond_4

    .line 92
    .line 93
    invoke-virtual {p0, v2}, Lcom/google/protobuf/T1;->q(I)Lcom/google/protobuf/j2;

    .line 94
    .line 95
    .line 96
    move-result-object v3

    .line 97
    invoke-virtual {v7, p1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v4

    .line 101
    invoke-interface {v3, v4}, Lcom/google/protobuf/j2;->d(Ljava/lang/Object;)V

    .line 102
    .line 103
    .line 104
    goto :goto_1

    .line 105
    :cond_3
    :pswitch_2
    invoke-virtual {p0, v2, p1}, Lcom/google/protobuf/T1;->s(ILjava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result v3

    .line 109
    if-eqz v3, :cond_4

    .line 110
    .line 111
    invoke-virtual {p0, v2}, Lcom/google/protobuf/T1;->q(I)Lcom/google/protobuf/j2;

    .line 112
    .line 113
    .line 114
    move-result-object v3

    .line 115
    invoke-virtual {v7, p1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v4

    .line 119
    invoke-interface {v3, v4}, Lcom/google/protobuf/j2;->d(Ljava/lang/Object;)V

    .line 120
    .line 121
    .line 122
    :cond_4
    :goto_1
    add-int/lit8 v2, v2, 0x3

    .line 123
    .line 124
    goto :goto_0

    .line 125
    :cond_5
    iget-object v0, p0, Lcom/google/protobuf/T1;->m:Lcom/google/protobuf/B2;

    .line 126
    .line 127
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 128
    .line 129
    .line 130
    invoke-static {p1}, Lcom/google/protobuf/B2;->b(Ljava/lang/Object;)V

    .line 131
    .line 132
    .line 133
    iget-boolean v0, p0, Lcom/google/protobuf/T1;->f:Z

    .line 134
    .line 135
    if-eqz v0, :cond_6

    .line 136
    .line 137
    iget-object v0, p0, Lcom/google/protobuf/T1;->n:Lcom/google/protobuf/P0;

    .line 138
    .line 139
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 140
    .line 141
    .line 142
    invoke-static {p1}, Lcom/google/protobuf/P0;->c(Ljava/lang/Object;)V

    .line 143
    .line 144
    .line 145
    :cond_6
    return-void

    .line 146
    nop

    .line 147
    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final e(Ljava/lang/Object;)Z
    .locals 17

    .line 1
    move-object/from16 v6, p0

    .line 2
    .line 3
    move-object/from16 v7, p1

    .line 4
    .line 5
    const v8, 0xfffff

    .line 6
    .line 7
    .line 8
    const/4 v9, 0x0

    .line 9
    const v0, 0xfffff

    .line 10
    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    const/4 v10, 0x0

    .line 14
    :goto_0
    iget v2, v6, Lcom/google/protobuf/T1;->i:I

    .line 15
    .line 16
    const/4 v3, 0x1

    .line 17
    if-ge v10, v2, :cond_e

    .line 18
    .line 19
    iget-object v2, v6, Lcom/google/protobuf/T1;->h:[I

    .line 20
    .line 21
    aget v11, v2, v10

    .line 22
    .line 23
    iget-object v2, v6, Lcom/google/protobuf/T1;->a:[I

    .line 24
    .line 25
    aget v12, v2, v11

    .line 26
    .line 27
    invoke-virtual {v6, v11}, Lcom/google/protobuf/T1;->W(I)I

    .line 28
    .line 29
    .line 30
    move-result v13

    .line 31
    add-int/lit8 v4, v11, 0x2

    .line 32
    .line 33
    aget v2, v2, v4

    .line 34
    .line 35
    and-int v4, v2, v8

    .line 36
    .line 37
    ushr-int/lit8 v2, v2, 0x14

    .line 38
    .line 39
    shl-int v14, v3, v2

    .line 40
    .line 41
    if-eq v4, v0, :cond_1

    .line 42
    .line 43
    if-eq v4, v8, :cond_0

    .line 44
    .line 45
    sget-object v0, Lcom/google/protobuf/T1;->q:Lsun/misc/Unsafe;

    .line 46
    .line 47
    int-to-long v1, v4

    .line 48
    invoke-virtual {v0, v7, v1, v2}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    :cond_0
    move/from16 v16, v1

    .line 53
    .line 54
    move v15, v4

    .line 55
    goto :goto_1

    .line 56
    :cond_1
    move v15, v0

    .line 57
    move/from16 v16, v1

    .line 58
    .line 59
    :goto_1
    const/high16 v0, 0x10000000

    .line 60
    .line 61
    and-int/2addr v0, v13

    .line 62
    if-eqz v0, :cond_2

    .line 63
    .line 64
    move-object/from16 v0, p0

    .line 65
    .line 66
    move-object/from16 v1, p1

    .line 67
    .line 68
    move v2, v11

    .line 69
    move v3, v15

    .line 70
    move/from16 v4, v16

    .line 71
    .line 72
    move v5, v14

    .line 73
    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/T1;->t(Ljava/lang/Object;IIII)Z

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    if-nez v0, :cond_2

    .line 78
    .line 79
    return v9

    .line 80
    :cond_2
    invoke-static {v13}, Lcom/google/protobuf/T1;->V(I)I

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    const/16 v1, 0x9

    .line 85
    .line 86
    if-eq v0, v1, :cond_c

    .line 87
    .line 88
    const/16 v1, 0x11

    .line 89
    .line 90
    if-eq v0, v1, :cond_c

    .line 91
    .line 92
    const/16 v1, 0x1b

    .line 93
    .line 94
    if-eq v0, v1, :cond_9

    .line 95
    .line 96
    const/16 v1, 0x3c

    .line 97
    .line 98
    if-eq v0, v1, :cond_8

    .line 99
    .line 100
    const/16 v1, 0x44

    .line 101
    .line 102
    if-eq v0, v1, :cond_8

    .line 103
    .line 104
    const/16 v1, 0x31

    .line 105
    .line 106
    if-eq v0, v1, :cond_9

    .line 107
    .line 108
    const/16 v1, 0x32

    .line 109
    .line 110
    if-eq v0, v1, :cond_3

    .line 111
    .line 112
    goto/16 :goto_3

    .line 113
    .line 114
    :cond_3
    and-int v0, v13, v8

    .line 115
    .line 116
    int-to-long v0, v0

    .line 117
    sget-object v2, Lcom/google/protobuf/H2;->c:Lcom/google/protobuf/G2;

    .line 118
    .line 119
    invoke-virtual {v2, v7, v0, v1}, Lcom/google/protobuf/G2;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    iget-object v1, v6, Lcom/google/protobuf/T1;->o:Lcom/google/protobuf/L1;

    .line 124
    .line 125
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 126
    .line 127
    .line 128
    check-cast v0, Lcom/google/protobuf/K1;

    .line 129
    .line 130
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    .line 131
    .line 132
    .line 133
    move-result v1

    .line 134
    if-eqz v1, :cond_4

    .line 135
    .line 136
    goto/16 :goto_3

    .line 137
    .line 138
    :cond_4
    invoke-virtual {v6, v11}, Lcom/google/protobuf/T1;->p(I)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    check-cast v1, Lcom/google/protobuf/J1;

    .line 143
    .line 144
    iget-object v1, v1, Lcom/google/protobuf/J1;->a:Lm2/i;

    .line 145
    .line 146
    iget-object v1, v1, Lm2/i;->J:Ljava/lang/Object;

    .line 147
    .line 148
    check-cast v1, Lcom/google/protobuf/S2;

    .line 149
    .line 150
    iget-object v1, v1, Lcom/google/protobuf/S2;->G:Lcom/google/protobuf/T2;

    .line 151
    .line 152
    sget-object v2, Lcom/google/protobuf/T2;->P:Lcom/google/protobuf/T2;

    .line 153
    .line 154
    if-eq v1, v2, :cond_5

    .line 155
    .line 156
    goto/16 :goto_3

    .line 157
    .line 158
    :cond_5
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    const/4 v1, 0x0

    .line 167
    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 168
    .line 169
    .line 170
    move-result v2

    .line 171
    if-eqz v2, :cond_d

    .line 172
    .line 173
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    move-result-object v2

    .line 177
    if-nez v1, :cond_7

    .line 178
    .line 179
    sget-object v1, Lcom/google/protobuf/g2;->c:Lcom/google/protobuf/g2;

    .line 180
    .line 181
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 182
    .line 183
    .line 184
    move-result-object v3

    .line 185
    invoke-virtual {v1, v3}, Lcom/google/protobuf/g2;->a(Ljava/lang/Class;)Lcom/google/protobuf/j2;

    .line 186
    .line 187
    .line 188
    move-result-object v1

    .line 189
    :cond_7
    invoke-interface {v1, v2}, Lcom/google/protobuf/j2;->e(Ljava/lang/Object;)Z

    .line 190
    .line 191
    .line 192
    move-result v2

    .line 193
    if-nez v2, :cond_6

    .line 194
    .line 195
    return v9

    .line 196
    :cond_8
    invoke-virtual {v6, v12, v7, v11}, Lcom/google/protobuf/T1;->v(ILjava/lang/Object;I)Z

    .line 197
    .line 198
    .line 199
    move-result v0

    .line 200
    if-eqz v0, :cond_d

    .line 201
    .line 202
    invoke-virtual {v6, v11}, Lcom/google/protobuf/T1;->q(I)Lcom/google/protobuf/j2;

    .line 203
    .line 204
    .line 205
    move-result-object v0

    .line 206
    and-int v1, v13, v8

    .line 207
    .line 208
    int-to-long v1, v1

    .line 209
    sget-object v3, Lcom/google/protobuf/H2;->c:Lcom/google/protobuf/G2;

    .line 210
    .line 211
    invoke-virtual {v3, v7, v1, v2}, Lcom/google/protobuf/G2;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 212
    .line 213
    .line 214
    move-result-object v1

    .line 215
    invoke-interface {v0, v1}, Lcom/google/protobuf/j2;->e(Ljava/lang/Object;)Z

    .line 216
    .line 217
    .line 218
    move-result v0

    .line 219
    if-nez v0, :cond_d

    .line 220
    .line 221
    return v9

    .line 222
    :cond_9
    and-int v0, v13, v8

    .line 223
    .line 224
    int-to-long v0, v0

    .line 225
    sget-object v2, Lcom/google/protobuf/H2;->c:Lcom/google/protobuf/G2;

    .line 226
    .line 227
    invoke-virtual {v2, v7, v0, v1}, Lcom/google/protobuf/G2;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 228
    .line 229
    .line 230
    move-result-object v0

    .line 231
    check-cast v0, Ljava/util/List;

    .line 232
    .line 233
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 234
    .line 235
    .line 236
    move-result v1

    .line 237
    if-eqz v1, :cond_a

    .line 238
    .line 239
    goto :goto_3

    .line 240
    :cond_a
    invoke-virtual {v6, v11}, Lcom/google/protobuf/T1;->q(I)Lcom/google/protobuf/j2;

    .line 241
    .line 242
    .line 243
    move-result-object v1

    .line 244
    const/4 v2, 0x0

    .line 245
    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 246
    .line 247
    .line 248
    move-result v3

    .line 249
    if-ge v2, v3, :cond_d

    .line 250
    .line 251
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 252
    .line 253
    .line 254
    move-result-object v3

    .line 255
    invoke-interface {v1, v3}, Lcom/google/protobuf/j2;->e(Ljava/lang/Object;)Z

    .line 256
    .line 257
    .line 258
    move-result v3

    .line 259
    if-nez v3, :cond_b

    .line 260
    .line 261
    return v9

    .line 262
    :cond_b
    add-int/lit8 v2, v2, 0x1

    .line 263
    .line 264
    goto :goto_2

    .line 265
    :cond_c
    move-object/from16 v0, p0

    .line 266
    .line 267
    move-object/from16 v1, p1

    .line 268
    .line 269
    move v2, v11

    .line 270
    move v3, v15

    .line 271
    move/from16 v4, v16

    .line 272
    .line 273
    move v5, v14

    .line 274
    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/T1;->t(Ljava/lang/Object;IIII)Z

    .line 275
    .line 276
    .line 277
    move-result v0

    .line 278
    if-eqz v0, :cond_d

    .line 279
    .line 280
    invoke-virtual {v6, v11}, Lcom/google/protobuf/T1;->q(I)Lcom/google/protobuf/j2;

    .line 281
    .line 282
    .line 283
    move-result-object v0

    .line 284
    and-int v1, v13, v8

    .line 285
    .line 286
    int-to-long v1, v1

    .line 287
    sget-object v3, Lcom/google/protobuf/H2;->c:Lcom/google/protobuf/G2;

    .line 288
    .line 289
    invoke-virtual {v3, v7, v1, v2}, Lcom/google/protobuf/G2;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 290
    .line 291
    .line 292
    move-result-object v1

    .line 293
    invoke-interface {v0, v1}, Lcom/google/protobuf/j2;->e(Ljava/lang/Object;)Z

    .line 294
    .line 295
    .line 296
    move-result v0

    .line 297
    if-nez v0, :cond_d

    .line 298
    .line 299
    return v9

    .line 300
    :cond_d
    :goto_3
    add-int/lit8 v10, v10, 0x1

    .line 301
    .line 302
    move v0, v15

    .line 303
    move/from16 v1, v16

    .line 304
    .line 305
    goto/16 :goto_0

    .line 306
    .line 307
    :cond_e
    iget-boolean v0, v6, Lcom/google/protobuf/T1;->f:Z

    .line 308
    .line 309
    if-eqz v0, :cond_f

    .line 310
    .line 311
    iget-object v0, v6, Lcom/google/protobuf/T1;->n:Lcom/google/protobuf/P0;

    .line 312
    .line 313
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 314
    .line 315
    .line 316
    invoke-static/range {p1 .. p1}, Lcom/google/protobuf/P0;->b(Ljava/lang/Object;)Lcom/google/protobuf/W0;

    .line 317
    .line 318
    .line 319
    move-result-object v0

    .line 320
    invoke-virtual {v0}, Lcom/google/protobuf/W0;->j()Z

    .line 321
    .line 322
    .line 323
    move-result v0

    .line 324
    if-nez v0, :cond_f

    .line 325
    .line 326
    return v9

    .line 327
    :cond_f
    return v3
.end method

.method public final f(Ljava/lang/Object;LZ3/o;)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/T1;->X(Ljava/lang/Object;LZ3/o;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final g(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/T1;->a:[I

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x0

    .line 6
    :goto_0
    if-ge v3, v1, :cond_2

    .line 7
    .line 8
    invoke-virtual {p0, v3}, Lcom/google/protobuf/T1;->W(I)I

    .line 9
    .line 10
    .line 11
    move-result v4

    .line 12
    const v5, 0xfffff

    .line 13
    .line 14
    .line 15
    and-int v6, v4, v5

    .line 16
    .line 17
    int-to-long v6, v6

    .line 18
    invoke-static {v4}, Lcom/google/protobuf/T1;->V(I)I

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    packed-switch v4, :pswitch_data_0

    .line 23
    .line 24
    .line 25
    goto/16 :goto_2

    .line 26
    .line 27
    :pswitch_0
    add-int/lit8 v4, v3, 0x2

    .line 28
    .line 29
    aget v4, v0, v4

    .line 30
    .line 31
    and-int/2addr v4, v5

    .line 32
    int-to-long v4, v4

    .line 33
    sget-object v8, Lcom/google/protobuf/H2;->c:Lcom/google/protobuf/G2;

    .line 34
    .line 35
    invoke-virtual {v8, p1, v4, v5}, Lcom/google/protobuf/G2;->i(Ljava/lang/Object;J)I

    .line 36
    .line 37
    .line 38
    move-result v9

    .line 39
    invoke-virtual {v8, p2, v4, v5}, Lcom/google/protobuf/G2;->i(Ljava/lang/Object;J)I

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    if-ne v9, v4, :cond_1

    .line 44
    .line 45
    invoke-virtual {v8, p1, v6, v7}, Lcom/google/protobuf/G2;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    invoke-virtual {v8, p2, v6, v7}, Lcom/google/protobuf/G2;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    invoke-static {v4, v5}, Lcom/google/protobuf/k2;->C(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v4

    .line 57
    if-eqz v4, :cond_1

    .line 58
    .line 59
    goto/16 :goto_2

    .line 60
    .line 61
    :pswitch_1
    sget-object v4, Lcom/google/protobuf/H2;->c:Lcom/google/protobuf/G2;

    .line 62
    .line 63
    invoke-virtual {v4, p1, v6, v7}, Lcom/google/protobuf/G2;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v5

    .line 67
    invoke-virtual {v4, p2, v6, v7}, Lcom/google/protobuf/G2;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    invoke-static {v5, v4}, Lcom/google/protobuf/k2;->C(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v4

    .line 75
    goto :goto_1

    .line 76
    :pswitch_2
    sget-object v4, Lcom/google/protobuf/H2;->c:Lcom/google/protobuf/G2;

    .line 77
    .line 78
    invoke-virtual {v4, p1, v6, v7}, Lcom/google/protobuf/G2;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v5

    .line 82
    invoke-virtual {v4, p2, v6, v7}, Lcom/google/protobuf/G2;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v4

    .line 86
    invoke-static {v5, v4}, Lcom/google/protobuf/k2;->C(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result v4

    .line 90
    :goto_1
    if-nez v4, :cond_0

    .line 91
    .line 92
    goto/16 :goto_3

    .line 93
    .line 94
    :pswitch_3
    invoke-virtual {p0, v3, p1, p2}, Lcom/google/protobuf/T1;->k(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result v4

    .line 98
    if-eqz v4, :cond_1

    .line 99
    .line 100
    sget-object v4, Lcom/google/protobuf/H2;->c:Lcom/google/protobuf/G2;

    .line 101
    .line 102
    invoke-virtual {v4, p1, v6, v7}, Lcom/google/protobuf/G2;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v5

    .line 106
    invoke-virtual {v4, p2, v6, v7}, Lcom/google/protobuf/G2;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v4

    .line 110
    invoke-static {v5, v4}, Lcom/google/protobuf/k2;->C(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    move-result v4

    .line 114
    if-eqz v4, :cond_1

    .line 115
    .line 116
    goto/16 :goto_2

    .line 117
    .line 118
    :pswitch_4
    invoke-virtual {p0, v3, p1, p2}, Lcom/google/protobuf/T1;->k(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    move-result v4

    .line 122
    if-eqz v4, :cond_1

    .line 123
    .line 124
    sget-object v4, Lcom/google/protobuf/H2;->c:Lcom/google/protobuf/G2;

    .line 125
    .line 126
    invoke-virtual {v4, p1, v6, v7}, Lcom/google/protobuf/G2;->j(Ljava/lang/Object;J)J

    .line 127
    .line 128
    .line 129
    move-result-wide v8

    .line 130
    invoke-virtual {v4, p2, v6, v7}, Lcom/google/protobuf/G2;->j(Ljava/lang/Object;J)J

    .line 131
    .line 132
    .line 133
    move-result-wide v4

    .line 134
    cmp-long v6, v8, v4

    .line 135
    .line 136
    if-nez v6, :cond_1

    .line 137
    .line 138
    goto/16 :goto_2

    .line 139
    .line 140
    :pswitch_5
    invoke-virtual {p0, v3, p1, p2}, Lcom/google/protobuf/T1;->k(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 141
    .line 142
    .line 143
    move-result v4

    .line 144
    if-eqz v4, :cond_1

    .line 145
    .line 146
    sget-object v4, Lcom/google/protobuf/H2;->c:Lcom/google/protobuf/G2;

    .line 147
    .line 148
    invoke-virtual {v4, p1, v6, v7}, Lcom/google/protobuf/G2;->i(Ljava/lang/Object;J)I

    .line 149
    .line 150
    .line 151
    move-result v5

    .line 152
    invoke-virtual {v4, p2, v6, v7}, Lcom/google/protobuf/G2;->i(Ljava/lang/Object;J)I

    .line 153
    .line 154
    .line 155
    move-result v4

    .line 156
    if-ne v5, v4, :cond_1

    .line 157
    .line 158
    goto/16 :goto_2

    .line 159
    .line 160
    :pswitch_6
    invoke-virtual {p0, v3, p1, p2}, Lcom/google/protobuf/T1;->k(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 161
    .line 162
    .line 163
    move-result v4

    .line 164
    if-eqz v4, :cond_1

    .line 165
    .line 166
    sget-object v4, Lcom/google/protobuf/H2;->c:Lcom/google/protobuf/G2;

    .line 167
    .line 168
    invoke-virtual {v4, p1, v6, v7}, Lcom/google/protobuf/G2;->j(Ljava/lang/Object;J)J

    .line 169
    .line 170
    .line 171
    move-result-wide v8

    .line 172
    invoke-virtual {v4, p2, v6, v7}, Lcom/google/protobuf/G2;->j(Ljava/lang/Object;J)J

    .line 173
    .line 174
    .line 175
    move-result-wide v4

    .line 176
    cmp-long v6, v8, v4

    .line 177
    .line 178
    if-nez v6, :cond_1

    .line 179
    .line 180
    goto/16 :goto_2

    .line 181
    .line 182
    :pswitch_7
    invoke-virtual {p0, v3, p1, p2}, Lcom/google/protobuf/T1;->k(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 183
    .line 184
    .line 185
    move-result v4

    .line 186
    if-eqz v4, :cond_1

    .line 187
    .line 188
    sget-object v4, Lcom/google/protobuf/H2;->c:Lcom/google/protobuf/G2;

    .line 189
    .line 190
    invoke-virtual {v4, p1, v6, v7}, Lcom/google/protobuf/G2;->i(Ljava/lang/Object;J)I

    .line 191
    .line 192
    .line 193
    move-result v5

    .line 194
    invoke-virtual {v4, p2, v6, v7}, Lcom/google/protobuf/G2;->i(Ljava/lang/Object;J)I

    .line 195
    .line 196
    .line 197
    move-result v4

    .line 198
    if-ne v5, v4, :cond_1

    .line 199
    .line 200
    goto/16 :goto_2

    .line 201
    .line 202
    :pswitch_8
    invoke-virtual {p0, v3, p1, p2}, Lcom/google/protobuf/T1;->k(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 203
    .line 204
    .line 205
    move-result v4

    .line 206
    if-eqz v4, :cond_1

    .line 207
    .line 208
    sget-object v4, Lcom/google/protobuf/H2;->c:Lcom/google/protobuf/G2;

    .line 209
    .line 210
    invoke-virtual {v4, p1, v6, v7}, Lcom/google/protobuf/G2;->i(Ljava/lang/Object;J)I

    .line 211
    .line 212
    .line 213
    move-result v5

    .line 214
    invoke-virtual {v4, p2, v6, v7}, Lcom/google/protobuf/G2;->i(Ljava/lang/Object;J)I

    .line 215
    .line 216
    .line 217
    move-result v4

    .line 218
    if-ne v5, v4, :cond_1

    .line 219
    .line 220
    goto/16 :goto_2

    .line 221
    .line 222
    :pswitch_9
    invoke-virtual {p0, v3, p1, p2}, Lcom/google/protobuf/T1;->k(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 223
    .line 224
    .line 225
    move-result v4

    .line 226
    if-eqz v4, :cond_1

    .line 227
    .line 228
    sget-object v4, Lcom/google/protobuf/H2;->c:Lcom/google/protobuf/G2;

    .line 229
    .line 230
    invoke-virtual {v4, p1, v6, v7}, Lcom/google/protobuf/G2;->i(Ljava/lang/Object;J)I

    .line 231
    .line 232
    .line 233
    move-result v5

    .line 234
    invoke-virtual {v4, p2, v6, v7}, Lcom/google/protobuf/G2;->i(Ljava/lang/Object;J)I

    .line 235
    .line 236
    .line 237
    move-result v4

    .line 238
    if-ne v5, v4, :cond_1

    .line 239
    .line 240
    goto/16 :goto_2

    .line 241
    .line 242
    :pswitch_a
    invoke-virtual {p0, v3, p1, p2}, Lcom/google/protobuf/T1;->k(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 243
    .line 244
    .line 245
    move-result v4

    .line 246
    if-eqz v4, :cond_1

    .line 247
    .line 248
    sget-object v4, Lcom/google/protobuf/H2;->c:Lcom/google/protobuf/G2;

    .line 249
    .line 250
    invoke-virtual {v4, p1, v6, v7}, Lcom/google/protobuf/G2;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 251
    .line 252
    .line 253
    move-result-object v5

    .line 254
    invoke-virtual {v4, p2, v6, v7}, Lcom/google/protobuf/G2;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 255
    .line 256
    .line 257
    move-result-object v4

    .line 258
    invoke-static {v5, v4}, Lcom/google/protobuf/k2;->C(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 259
    .line 260
    .line 261
    move-result v4

    .line 262
    if-eqz v4, :cond_1

    .line 263
    .line 264
    goto/16 :goto_2

    .line 265
    .line 266
    :pswitch_b
    invoke-virtual {p0, v3, p1, p2}, Lcom/google/protobuf/T1;->k(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 267
    .line 268
    .line 269
    move-result v4

    .line 270
    if-eqz v4, :cond_1

    .line 271
    .line 272
    sget-object v4, Lcom/google/protobuf/H2;->c:Lcom/google/protobuf/G2;

    .line 273
    .line 274
    invoke-virtual {v4, p1, v6, v7}, Lcom/google/protobuf/G2;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 275
    .line 276
    .line 277
    move-result-object v5

    .line 278
    invoke-virtual {v4, p2, v6, v7}, Lcom/google/protobuf/G2;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 279
    .line 280
    .line 281
    move-result-object v4

    .line 282
    invoke-static {v5, v4}, Lcom/google/protobuf/k2;->C(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 283
    .line 284
    .line 285
    move-result v4

    .line 286
    if-eqz v4, :cond_1

    .line 287
    .line 288
    goto/16 :goto_2

    .line 289
    .line 290
    :pswitch_c
    invoke-virtual {p0, v3, p1, p2}, Lcom/google/protobuf/T1;->k(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 291
    .line 292
    .line 293
    move-result v4

    .line 294
    if-eqz v4, :cond_1

    .line 295
    .line 296
    sget-object v4, Lcom/google/protobuf/H2;->c:Lcom/google/protobuf/G2;

    .line 297
    .line 298
    invoke-virtual {v4, p1, v6, v7}, Lcom/google/protobuf/G2;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 299
    .line 300
    .line 301
    move-result-object v5

    .line 302
    invoke-virtual {v4, p2, v6, v7}, Lcom/google/protobuf/G2;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 303
    .line 304
    .line 305
    move-result-object v4

    .line 306
    invoke-static {v5, v4}, Lcom/google/protobuf/k2;->C(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 307
    .line 308
    .line 309
    move-result v4

    .line 310
    if-eqz v4, :cond_1

    .line 311
    .line 312
    goto/16 :goto_2

    .line 313
    .line 314
    :pswitch_d
    invoke-virtual {p0, v3, p1, p2}, Lcom/google/protobuf/T1;->k(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 315
    .line 316
    .line 317
    move-result v4

    .line 318
    if-eqz v4, :cond_1

    .line 319
    .line 320
    sget-object v4, Lcom/google/protobuf/H2;->c:Lcom/google/protobuf/G2;

    .line 321
    .line 322
    invoke-virtual {v4, p1, v6, v7}, Lcom/google/protobuf/G2;->d(Ljava/lang/Object;J)Z

    .line 323
    .line 324
    .line 325
    move-result v5

    .line 326
    invoke-virtual {v4, p2, v6, v7}, Lcom/google/protobuf/G2;->d(Ljava/lang/Object;J)Z

    .line 327
    .line 328
    .line 329
    move-result v4

    .line 330
    if-ne v5, v4, :cond_1

    .line 331
    .line 332
    goto/16 :goto_2

    .line 333
    .line 334
    :pswitch_e
    invoke-virtual {p0, v3, p1, p2}, Lcom/google/protobuf/T1;->k(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 335
    .line 336
    .line 337
    move-result v4

    .line 338
    if-eqz v4, :cond_1

    .line 339
    .line 340
    sget-object v4, Lcom/google/protobuf/H2;->c:Lcom/google/protobuf/G2;

    .line 341
    .line 342
    invoke-virtual {v4, p1, v6, v7}, Lcom/google/protobuf/G2;->i(Ljava/lang/Object;J)I

    .line 343
    .line 344
    .line 345
    move-result v5

    .line 346
    invoke-virtual {v4, p2, v6, v7}, Lcom/google/protobuf/G2;->i(Ljava/lang/Object;J)I

    .line 347
    .line 348
    .line 349
    move-result v4

    .line 350
    if-ne v5, v4, :cond_1

    .line 351
    .line 352
    goto/16 :goto_2

    .line 353
    .line 354
    :pswitch_f
    invoke-virtual {p0, v3, p1, p2}, Lcom/google/protobuf/T1;->k(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 355
    .line 356
    .line 357
    move-result v4

    .line 358
    if-eqz v4, :cond_1

    .line 359
    .line 360
    sget-object v4, Lcom/google/protobuf/H2;->c:Lcom/google/protobuf/G2;

    .line 361
    .line 362
    invoke-virtual {v4, p1, v6, v7}, Lcom/google/protobuf/G2;->j(Ljava/lang/Object;J)J

    .line 363
    .line 364
    .line 365
    move-result-wide v8

    .line 366
    invoke-virtual {v4, p2, v6, v7}, Lcom/google/protobuf/G2;->j(Ljava/lang/Object;J)J

    .line 367
    .line 368
    .line 369
    move-result-wide v4

    .line 370
    cmp-long v6, v8, v4

    .line 371
    .line 372
    if-nez v6, :cond_1

    .line 373
    .line 374
    goto/16 :goto_2

    .line 375
    .line 376
    :pswitch_10
    invoke-virtual {p0, v3, p1, p2}, Lcom/google/protobuf/T1;->k(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 377
    .line 378
    .line 379
    move-result v4

    .line 380
    if-eqz v4, :cond_1

    .line 381
    .line 382
    sget-object v4, Lcom/google/protobuf/H2;->c:Lcom/google/protobuf/G2;

    .line 383
    .line 384
    invoke-virtual {v4, p1, v6, v7}, Lcom/google/protobuf/G2;->i(Ljava/lang/Object;J)I

    .line 385
    .line 386
    .line 387
    move-result v5

    .line 388
    invoke-virtual {v4, p2, v6, v7}, Lcom/google/protobuf/G2;->i(Ljava/lang/Object;J)I

    .line 389
    .line 390
    .line 391
    move-result v4

    .line 392
    if-ne v5, v4, :cond_1

    .line 393
    .line 394
    goto :goto_2

    .line 395
    :pswitch_11
    invoke-virtual {p0, v3, p1, p2}, Lcom/google/protobuf/T1;->k(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 396
    .line 397
    .line 398
    move-result v4

    .line 399
    if-eqz v4, :cond_1

    .line 400
    .line 401
    sget-object v4, Lcom/google/protobuf/H2;->c:Lcom/google/protobuf/G2;

    .line 402
    .line 403
    invoke-virtual {v4, p1, v6, v7}, Lcom/google/protobuf/G2;->j(Ljava/lang/Object;J)J

    .line 404
    .line 405
    .line 406
    move-result-wide v8

    .line 407
    invoke-virtual {v4, p2, v6, v7}, Lcom/google/protobuf/G2;->j(Ljava/lang/Object;J)J

    .line 408
    .line 409
    .line 410
    move-result-wide v4

    .line 411
    cmp-long v6, v8, v4

    .line 412
    .line 413
    if-nez v6, :cond_1

    .line 414
    .line 415
    goto :goto_2

    .line 416
    :pswitch_12
    invoke-virtual {p0, v3, p1, p2}, Lcom/google/protobuf/T1;->k(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 417
    .line 418
    .line 419
    move-result v4

    .line 420
    if-eqz v4, :cond_1

    .line 421
    .line 422
    sget-object v4, Lcom/google/protobuf/H2;->c:Lcom/google/protobuf/G2;

    .line 423
    .line 424
    invoke-virtual {v4, p1, v6, v7}, Lcom/google/protobuf/G2;->j(Ljava/lang/Object;J)J

    .line 425
    .line 426
    .line 427
    move-result-wide v8

    .line 428
    invoke-virtual {v4, p2, v6, v7}, Lcom/google/protobuf/G2;->j(Ljava/lang/Object;J)J

    .line 429
    .line 430
    .line 431
    move-result-wide v4

    .line 432
    cmp-long v6, v8, v4

    .line 433
    .line 434
    if-nez v6, :cond_1

    .line 435
    .line 436
    goto :goto_2

    .line 437
    :pswitch_13
    invoke-virtual {p0, v3, p1, p2}, Lcom/google/protobuf/T1;->k(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 438
    .line 439
    .line 440
    move-result v4

    .line 441
    if-eqz v4, :cond_1

    .line 442
    .line 443
    sget-object v4, Lcom/google/protobuf/H2;->c:Lcom/google/protobuf/G2;

    .line 444
    .line 445
    invoke-virtual {v4, p1, v6, v7}, Lcom/google/protobuf/G2;->h(Ljava/lang/Object;J)F

    .line 446
    .line 447
    .line 448
    move-result v5

    .line 449
    invoke-static {v5}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 450
    .line 451
    .line 452
    move-result v5

    .line 453
    invoke-virtual {v4, p2, v6, v7}, Lcom/google/protobuf/G2;->h(Ljava/lang/Object;J)F

    .line 454
    .line 455
    .line 456
    move-result v4

    .line 457
    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 458
    .line 459
    .line 460
    move-result v4

    .line 461
    if-ne v5, v4, :cond_1

    .line 462
    .line 463
    goto :goto_2

    .line 464
    :pswitch_14
    invoke-virtual {p0, v3, p1, p2}, Lcom/google/protobuf/T1;->k(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 465
    .line 466
    .line 467
    move-result v4

    .line 468
    if-eqz v4, :cond_1

    .line 469
    .line 470
    sget-object v4, Lcom/google/protobuf/H2;->c:Lcom/google/protobuf/G2;

    .line 471
    .line 472
    invoke-virtual {v4, p1, v6, v7}, Lcom/google/protobuf/G2;->g(Ljava/lang/Object;J)D

    .line 473
    .line 474
    .line 475
    move-result-wide v8

    .line 476
    invoke-static {v8, v9}, Ljava/lang/Double;->doubleToLongBits(D)J

    .line 477
    .line 478
    .line 479
    move-result-wide v8

    .line 480
    invoke-virtual {v4, p2, v6, v7}, Lcom/google/protobuf/G2;->g(Ljava/lang/Object;J)D

    .line 481
    .line 482
    .line 483
    move-result-wide v4

    .line 484
    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    .line 485
    .line 486
    .line 487
    move-result-wide v4

    .line 488
    cmp-long v6, v8, v4

    .line 489
    .line 490
    if-nez v6, :cond_1

    .line 491
    .line 492
    :cond_0
    :goto_2
    add-int/lit8 v3, v3, 0x3

    .line 493
    .line 494
    goto/16 :goto_0

    .line 495
    .line 496
    :cond_1
    :goto_3
    return v2

    .line 497
    :cond_2
    iget-object v0, p0, Lcom/google/protobuf/T1;->m:Lcom/google/protobuf/B2;

    .line 498
    .line 499
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 500
    .line 501
    .line 502
    move-object v0, p1

    .line 503
    check-cast v0, Lcom/google/protobuf/i1;

    .line 504
    .line 505
    iget-object v0, v0, Lcom/google/protobuf/i1;->unknownFields:Lcom/google/protobuf/A2;

    .line 506
    .line 507
    move-object v1, p2

    .line 508
    check-cast v1, Lcom/google/protobuf/i1;

    .line 509
    .line 510
    iget-object v1, v1, Lcom/google/protobuf/i1;->unknownFields:Lcom/google/protobuf/A2;

    .line 511
    .line 512
    invoke-virtual {v0, v1}, Lcom/google/protobuf/A2;->equals(Ljava/lang/Object;)Z

    .line 513
    .line 514
    .line 515
    move-result v0

    .line 516
    if-nez v0, :cond_3

    .line 517
    .line 518
    return v2

    .line 519
    :cond_3
    iget-boolean v0, p0, Lcom/google/protobuf/T1;->f:Z

    .line 520
    .line 521
    if-eqz v0, :cond_4

    .line 522
    .line 523
    iget-object v0, p0, Lcom/google/protobuf/T1;->n:Lcom/google/protobuf/P0;

    .line 524
    .line 525
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 526
    .line 527
    .line 528
    check-cast p1, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;

    .line 529
    .line 530
    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/google/protobuf/W0;

    .line 531
    .line 532
    check-cast p2, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;

    .line 533
    .line 534
    iget-object p2, p2, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/google/protobuf/W0;

    .line 535
    .line 536
    invoke-virtual {p1, p2}, Lcom/google/protobuf/W0;->equals(Ljava/lang/Object;)Z

    .line 537
    .line 538
    .line 539
    move-result p1

    .line 540
    return p1

    .line 541
    :cond_4
    const/4 p1, 0x1

    .line 542
    return p1

    .line 543
    :pswitch_data_0
    .packed-switch 0x0
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
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final h(Ljava/lang/Object;)I
    .locals 16

    .line 1
    move-object/from16 v6, p0

    .line 2
    .line 3
    move-object/from16 v7, p1

    .line 4
    .line 5
    const v9, 0xfffff

    .line 6
    .line 7
    .line 8
    const v0, 0xfffff

    .line 9
    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    const/4 v10, 0x0

    .line 13
    const/4 v11, 0x0

    .line 14
    :goto_0
    iget-object v2, v6, Lcom/google/protobuf/T1;->a:[I

    .line 15
    .line 16
    array-length v3, v2

    .line 17
    if-ge v10, v3, :cond_7

    .line 18
    .line 19
    invoke-virtual {v6, v10}, Lcom/google/protobuf/T1;->W(I)I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    invoke-static {v3}, Lcom/google/protobuf/T1;->V(I)I

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    aget v12, v2, v10

    .line 28
    .line 29
    add-int/lit8 v5, v10, 0x2

    .line 30
    .line 31
    aget v2, v2, v5

    .line 32
    .line 33
    and-int v5, v2, v9

    .line 34
    .line 35
    const/16 v13, 0x11

    .line 36
    .line 37
    sget-object v14, Lcom/google/protobuf/T1;->q:Lsun/misc/Unsafe;

    .line 38
    .line 39
    if-gt v4, v13, :cond_2

    .line 40
    .line 41
    if-eq v5, v0, :cond_1

    .line 42
    .line 43
    if-ne v5, v9, :cond_0

    .line 44
    .line 45
    const/4 v1, 0x0

    .line 46
    goto :goto_1

    .line 47
    :cond_0
    int-to-long v0, v5

    .line 48
    invoke-virtual {v14, v7, v0, v1}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    move v1, v0

    .line 53
    :goto_1
    move v0, v5

    .line 54
    :cond_1
    ushr-int/lit8 v2, v2, 0x14

    .line 55
    .line 56
    const/4 v5, 0x1

    .line 57
    shl-int v2, v5, v2

    .line 58
    .line 59
    move v13, v0

    .line 60
    move v15, v1

    .line 61
    move v5, v2

    .line 62
    goto :goto_2

    .line 63
    :cond_2
    move v13, v0

    .line 64
    move v15, v1

    .line 65
    const/4 v5, 0x0

    .line 66
    :goto_2
    and-int v0, v3, v9

    .line 67
    .line 68
    int-to-long v2, v0

    .line 69
    sget-object v0, Lcom/google/protobuf/X0;->H:Lcom/google/protobuf/X0;

    .line 70
    .line 71
    invoke-virtual {v0}, Lcom/google/protobuf/X0;->a()I

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    if-lt v4, v0, :cond_3

    .line 76
    .line 77
    sget-object v0, Lcom/google/protobuf/X0;->I:Lcom/google/protobuf/X0;

    .line 78
    .line 79
    invoke-virtual {v0}, Lcom/google/protobuf/X0;->a()I

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    :cond_3
    packed-switch v4, :pswitch_data_0

    .line 84
    .line 85
    .line 86
    goto/16 :goto_6

    .line 87
    .line 88
    :pswitch_0
    invoke-virtual {v6, v12, v7, v10}, Lcom/google/protobuf/T1;->v(ILjava/lang/Object;I)Z

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    if-eqz v0, :cond_6

    .line 93
    .line 94
    invoke-virtual {v14, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    check-cast v0, Lcom/google/protobuf/Q1;

    .line 99
    .line 100
    invoke-virtual {v6, v10}, Lcom/google/protobuf/T1;->q(I)Lcom/google/protobuf/j2;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    invoke-static {v12, v0, v1}, Lcom/google/protobuf/z;->g0(ILcom/google/protobuf/Q1;Lcom/google/protobuf/j2;)I

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    :goto_3
    add-int/2addr v11, v0

    .line 109
    goto/16 :goto_6

    .line 110
    .line 111
    :pswitch_1
    invoke-virtual {v6, v12, v7, v10}, Lcom/google/protobuf/T1;->v(ILjava/lang/Object;I)Z

    .line 112
    .line 113
    .line 114
    move-result v0

    .line 115
    if-eqz v0, :cond_6

    .line 116
    .line 117
    invoke-static {v7, v2, v3}, Lcom/google/protobuf/T1;->G(Ljava/lang/Object;J)J

    .line 118
    .line 119
    .line 120
    move-result-wide v0

    .line 121
    invoke-static {v12, v0, v1}, Lcom/google/protobuf/z;->n0(IJ)I

    .line 122
    .line 123
    .line 124
    move-result v0

    .line 125
    goto :goto_3

    .line 126
    :pswitch_2
    invoke-virtual {v6, v12, v7, v10}, Lcom/google/protobuf/T1;->v(ILjava/lang/Object;I)Z

    .line 127
    .line 128
    .line 129
    move-result v0

    .line 130
    if-eqz v0, :cond_6

    .line 131
    .line 132
    invoke-static {v7, v2, v3}, Lcom/google/protobuf/T1;->F(Ljava/lang/Object;J)I

    .line 133
    .line 134
    .line 135
    move-result v0

    .line 136
    invoke-static {v12, v0}, Lcom/google/protobuf/z;->m0(II)I

    .line 137
    .line 138
    .line 139
    move-result v0

    .line 140
    goto :goto_3

    .line 141
    :pswitch_3
    invoke-virtual {v6, v12, v7, v10}, Lcom/google/protobuf/T1;->v(ILjava/lang/Object;I)Z

    .line 142
    .line 143
    .line 144
    move-result v0

    .line 145
    if-eqz v0, :cond_6

    .line 146
    .line 147
    invoke-static {v12}, Lcom/google/protobuf/z;->l0(I)I

    .line 148
    .line 149
    .line 150
    move-result v0

    .line 151
    goto :goto_3

    .line 152
    :pswitch_4
    invoke-virtual {v6, v12, v7, v10}, Lcom/google/protobuf/T1;->v(ILjava/lang/Object;I)Z

    .line 153
    .line 154
    .line 155
    move-result v0

    .line 156
    if-eqz v0, :cond_6

    .line 157
    .line 158
    invoke-static {v12}, Lcom/google/protobuf/z;->k0(I)I

    .line 159
    .line 160
    .line 161
    move-result v0

    .line 162
    goto :goto_3

    .line 163
    :pswitch_5
    invoke-virtual {v6, v12, v7, v10}, Lcom/google/protobuf/T1;->v(ILjava/lang/Object;I)Z

    .line 164
    .line 165
    .line 166
    move-result v0

    .line 167
    if-eqz v0, :cond_6

    .line 168
    .line 169
    invoke-static {v7, v2, v3}, Lcom/google/protobuf/T1;->F(Ljava/lang/Object;J)I

    .line 170
    .line 171
    .line 172
    move-result v0

    .line 173
    invoke-static {v12, v0}, Lcom/google/protobuf/z;->c0(II)I

    .line 174
    .line 175
    .line 176
    move-result v0

    .line 177
    goto :goto_3

    .line 178
    :pswitch_6
    invoke-virtual {v6, v12, v7, v10}, Lcom/google/protobuf/T1;->v(ILjava/lang/Object;I)Z

    .line 179
    .line 180
    .line 181
    move-result v0

    .line 182
    if-eqz v0, :cond_6

    .line 183
    .line 184
    invoke-static {v7, v2, v3}, Lcom/google/protobuf/T1;->F(Ljava/lang/Object;J)I

    .line 185
    .line 186
    .line 187
    move-result v0

    .line 188
    invoke-static {v12, v0}, Lcom/google/protobuf/z;->r0(II)I

    .line 189
    .line 190
    .line 191
    move-result v0

    .line 192
    goto :goto_3

    .line 193
    :pswitch_7
    invoke-virtual {v6, v12, v7, v10}, Lcom/google/protobuf/T1;->v(ILjava/lang/Object;I)Z

    .line 194
    .line 195
    .line 196
    move-result v0

    .line 197
    if-eqz v0, :cond_6

    .line 198
    .line 199
    invoke-virtual {v14, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    move-result-object v0

    .line 203
    check-cast v0, Lcom/google/protobuf/r;

    .line 204
    .line 205
    invoke-static {v12, v0}, Lcom/google/protobuf/z;->Z(ILcom/google/protobuf/r;)I

    .line 206
    .line 207
    .line 208
    move-result v0

    .line 209
    goto :goto_3

    .line 210
    :pswitch_8
    invoke-virtual {v6, v12, v7, v10}, Lcom/google/protobuf/T1;->v(ILjava/lang/Object;I)Z

    .line 211
    .line 212
    .line 213
    move-result v0

    .line 214
    if-eqz v0, :cond_6

    .line 215
    .line 216
    invoke-virtual {v14, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 217
    .line 218
    .line 219
    move-result-object v0

    .line 220
    invoke-virtual {v6, v10}, Lcom/google/protobuf/T1;->q(I)Lcom/google/protobuf/j2;

    .line 221
    .line 222
    .line 223
    move-result-object v1

    .line 224
    invoke-static {v12, v1, v0}, Lcom/google/protobuf/k2;->o(ILcom/google/protobuf/j2;Ljava/lang/Object;)I

    .line 225
    .line 226
    .line 227
    move-result v0

    .line 228
    goto :goto_3

    .line 229
    :pswitch_9
    invoke-virtual {v6, v12, v7, v10}, Lcom/google/protobuf/T1;->v(ILjava/lang/Object;I)Z

    .line 230
    .line 231
    .line 232
    move-result v0

    .line 233
    if-eqz v0, :cond_6

    .line 234
    .line 235
    invoke-virtual {v14, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 236
    .line 237
    .line 238
    move-result-object v0

    .line 239
    instance-of v1, v0, Lcom/google/protobuf/r;

    .line 240
    .line 241
    if-eqz v1, :cond_4

    .line 242
    .line 243
    check-cast v0, Lcom/google/protobuf/r;

    .line 244
    .line 245
    invoke-static {v12, v0}, Lcom/google/protobuf/z;->Z(ILcom/google/protobuf/r;)I

    .line 246
    .line 247
    .line 248
    move-result v0

    .line 249
    :goto_4
    add-int/2addr v0, v11

    .line 250
    move v11, v0

    .line 251
    goto/16 :goto_6

    .line 252
    .line 253
    :cond_4
    check-cast v0, Ljava/lang/String;

    .line 254
    .line 255
    invoke-static {v12, v0}, Lcom/google/protobuf/z;->o0(ILjava/lang/String;)I

    .line 256
    .line 257
    .line 258
    move-result v0

    .line 259
    goto :goto_4

    .line 260
    :pswitch_a
    invoke-virtual {v6, v12, v7, v10}, Lcom/google/protobuf/T1;->v(ILjava/lang/Object;I)Z

    .line 261
    .line 262
    .line 263
    move-result v0

    .line 264
    if-eqz v0, :cond_6

    .line 265
    .line 266
    invoke-static {v12}, Lcom/google/protobuf/z;->Y(I)I

    .line 267
    .line 268
    .line 269
    move-result v0

    .line 270
    goto/16 :goto_3

    .line 271
    .line 272
    :pswitch_b
    invoke-virtual {v6, v12, v7, v10}, Lcom/google/protobuf/T1;->v(ILjava/lang/Object;I)Z

    .line 273
    .line 274
    .line 275
    move-result v0

    .line 276
    if-eqz v0, :cond_6

    .line 277
    .line 278
    invoke-static {v12}, Lcom/google/protobuf/z;->d0(I)I

    .line 279
    .line 280
    .line 281
    move-result v0

    .line 282
    goto/16 :goto_3

    .line 283
    .line 284
    :pswitch_c
    invoke-virtual {v6, v12, v7, v10}, Lcom/google/protobuf/T1;->v(ILjava/lang/Object;I)Z

    .line 285
    .line 286
    .line 287
    move-result v0

    .line 288
    if-eqz v0, :cond_6

    .line 289
    .line 290
    invoke-static {v12}, Lcom/google/protobuf/z;->e0(I)I

    .line 291
    .line 292
    .line 293
    move-result v0

    .line 294
    goto/16 :goto_3

    .line 295
    .line 296
    :pswitch_d
    invoke-virtual {v6, v12, v7, v10}, Lcom/google/protobuf/T1;->v(ILjava/lang/Object;I)Z

    .line 297
    .line 298
    .line 299
    move-result v0

    .line 300
    if-eqz v0, :cond_6

    .line 301
    .line 302
    invoke-static {v7, v2, v3}, Lcom/google/protobuf/T1;->F(Ljava/lang/Object;J)I

    .line 303
    .line 304
    .line 305
    move-result v0

    .line 306
    invoke-static {v12, v0}, Lcom/google/protobuf/z;->h0(II)I

    .line 307
    .line 308
    .line 309
    move-result v0

    .line 310
    goto/16 :goto_3

    .line 311
    .line 312
    :pswitch_e
    invoke-virtual {v6, v12, v7, v10}, Lcom/google/protobuf/T1;->v(ILjava/lang/Object;I)Z

    .line 313
    .line 314
    .line 315
    move-result v0

    .line 316
    if-eqz v0, :cond_6

    .line 317
    .line 318
    invoke-static {v7, v2, v3}, Lcom/google/protobuf/T1;->G(Ljava/lang/Object;J)J

    .line 319
    .line 320
    .line 321
    move-result-wide v0

    .line 322
    invoke-static {v12, v0, v1}, Lcom/google/protobuf/z;->t0(IJ)I

    .line 323
    .line 324
    .line 325
    move-result v0

    .line 326
    goto/16 :goto_3

    .line 327
    .line 328
    :pswitch_f
    invoke-virtual {v6, v12, v7, v10}, Lcom/google/protobuf/T1;->v(ILjava/lang/Object;I)Z

    .line 329
    .line 330
    .line 331
    move-result v0

    .line 332
    if-eqz v0, :cond_6

    .line 333
    .line 334
    invoke-static {v7, v2, v3}, Lcom/google/protobuf/T1;->G(Ljava/lang/Object;J)J

    .line 335
    .line 336
    .line 337
    move-result-wide v0

    .line 338
    invoke-static {v12, v0, v1}, Lcom/google/protobuf/z;->j0(IJ)I

    .line 339
    .line 340
    .line 341
    move-result v0

    .line 342
    goto/16 :goto_3

    .line 343
    .line 344
    :pswitch_10
    invoke-virtual {v6, v12, v7, v10}, Lcom/google/protobuf/T1;->v(ILjava/lang/Object;I)Z

    .line 345
    .line 346
    .line 347
    move-result v0

    .line 348
    if-eqz v0, :cond_6

    .line 349
    .line 350
    invoke-static {v12}, Lcom/google/protobuf/z;->f0(I)I

    .line 351
    .line 352
    .line 353
    move-result v0

    .line 354
    goto/16 :goto_3

    .line 355
    .line 356
    :pswitch_11
    invoke-virtual {v6, v12, v7, v10}, Lcom/google/protobuf/T1;->v(ILjava/lang/Object;I)Z

    .line 357
    .line 358
    .line 359
    move-result v0

    .line 360
    if-eqz v0, :cond_6

    .line 361
    .line 362
    invoke-static {v12}, Lcom/google/protobuf/z;->b0(I)I

    .line 363
    .line 364
    .line 365
    move-result v0

    .line 366
    goto/16 :goto_3

    .line 367
    .line 368
    :pswitch_12
    invoke-virtual {v14, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 369
    .line 370
    .line 371
    move-result-object v0

    .line 372
    invoke-virtual {v6, v10}, Lcom/google/protobuf/T1;->p(I)Ljava/lang/Object;

    .line 373
    .line 374
    .line 375
    move-result-object v1

    .line 376
    iget-object v2, v6, Lcom/google/protobuf/T1;->o:Lcom/google/protobuf/L1;

    .line 377
    .line 378
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 379
    .line 380
    .line 381
    invoke-static {v12, v0, v1}, Lcom/google/protobuf/L1;->c(ILjava/lang/Object;Ljava/lang/Object;)I

    .line 382
    .line 383
    .line 384
    move-result v0

    .line 385
    goto/16 :goto_3

    .line 386
    .line 387
    :pswitch_13
    invoke-virtual {v14, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 388
    .line 389
    .line 390
    move-result-object v0

    .line 391
    check-cast v0, Ljava/util/List;

    .line 392
    .line 393
    invoke-virtual {v6, v10}, Lcom/google/protobuf/T1;->q(I)Lcom/google/protobuf/j2;

    .line 394
    .line 395
    .line 396
    move-result-object v1

    .line 397
    invoke-static {v12, v0, v1}, Lcom/google/protobuf/k2;->j(ILjava/util/List;Lcom/google/protobuf/j2;)I

    .line 398
    .line 399
    .line 400
    move-result v0

    .line 401
    goto/16 :goto_3

    .line 402
    .line 403
    :pswitch_14
    invoke-virtual {v14, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 404
    .line 405
    .line 406
    move-result-object v0

    .line 407
    check-cast v0, Ljava/util/List;

    .line 408
    .line 409
    invoke-static {v0}, Lcom/google/protobuf/k2;->t(Ljava/util/List;)I

    .line 410
    .line 411
    .line 412
    move-result v0

    .line 413
    if-lez v0, :cond_6

    .line 414
    .line 415
    invoke-static {v12}, Lcom/google/protobuf/z;->q0(I)I

    .line 416
    .line 417
    .line 418
    move-result v1

    .line 419
    invoke-static {v0}, Lcom/google/protobuf/z;->s0(I)I

    .line 420
    .line 421
    .line 422
    move-result v2

    .line 423
    :goto_5
    add-int/2addr v2, v1

    .line 424
    add-int/2addr v2, v0

    .line 425
    add-int/2addr v11, v2

    .line 426
    goto/16 :goto_6

    .line 427
    .line 428
    :pswitch_15
    invoke-virtual {v14, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 429
    .line 430
    .line 431
    move-result-object v0

    .line 432
    check-cast v0, Ljava/util/List;

    .line 433
    .line 434
    invoke-static {v0}, Lcom/google/protobuf/k2;->r(Ljava/util/List;)I

    .line 435
    .line 436
    .line 437
    move-result v0

    .line 438
    if-lez v0, :cond_6

    .line 439
    .line 440
    invoke-static {v12}, Lcom/google/protobuf/z;->q0(I)I

    .line 441
    .line 442
    .line 443
    move-result v1

    .line 444
    invoke-static {v0}, Lcom/google/protobuf/z;->s0(I)I

    .line 445
    .line 446
    .line 447
    move-result v2

    .line 448
    goto :goto_5

    .line 449
    :pswitch_16
    invoke-virtual {v14, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 450
    .line 451
    .line 452
    move-result-object v0

    .line 453
    check-cast v0, Ljava/util/List;

    .line 454
    .line 455
    invoke-static {v0}, Lcom/google/protobuf/k2;->i(Ljava/util/List;)I

    .line 456
    .line 457
    .line 458
    move-result v0

    .line 459
    if-lez v0, :cond_6

    .line 460
    .line 461
    invoke-static {v12}, Lcom/google/protobuf/z;->q0(I)I

    .line 462
    .line 463
    .line 464
    move-result v1

    .line 465
    invoke-static {v0}, Lcom/google/protobuf/z;->s0(I)I

    .line 466
    .line 467
    .line 468
    move-result v2

    .line 469
    goto :goto_5

    .line 470
    :pswitch_17
    invoke-virtual {v14, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 471
    .line 472
    .line 473
    move-result-object v0

    .line 474
    check-cast v0, Ljava/util/List;

    .line 475
    .line 476
    invoke-static {v0}, Lcom/google/protobuf/k2;->g(Ljava/util/List;)I

    .line 477
    .line 478
    .line 479
    move-result v0

    .line 480
    if-lez v0, :cond_6

    .line 481
    .line 482
    invoke-static {v12}, Lcom/google/protobuf/z;->q0(I)I

    .line 483
    .line 484
    .line 485
    move-result v1

    .line 486
    invoke-static {v0}, Lcom/google/protobuf/z;->s0(I)I

    .line 487
    .line 488
    .line 489
    move-result v2

    .line 490
    goto :goto_5

    .line 491
    :pswitch_18
    invoke-virtual {v14, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 492
    .line 493
    .line 494
    move-result-object v0

    .line 495
    check-cast v0, Ljava/util/List;

    .line 496
    .line 497
    invoke-static {v0}, Lcom/google/protobuf/k2;->e(Ljava/util/List;)I

    .line 498
    .line 499
    .line 500
    move-result v0

    .line 501
    if-lez v0, :cond_6

    .line 502
    .line 503
    invoke-static {v12}, Lcom/google/protobuf/z;->q0(I)I

    .line 504
    .line 505
    .line 506
    move-result v1

    .line 507
    invoke-static {v0}, Lcom/google/protobuf/z;->s0(I)I

    .line 508
    .line 509
    .line 510
    move-result v2

    .line 511
    goto :goto_5

    .line 512
    :pswitch_19
    invoke-virtual {v14, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 513
    .line 514
    .line 515
    move-result-object v0

    .line 516
    check-cast v0, Ljava/util/List;

    .line 517
    .line 518
    invoke-static {v0}, Lcom/google/protobuf/k2;->w(Ljava/util/List;)I

    .line 519
    .line 520
    .line 521
    move-result v0

    .line 522
    if-lez v0, :cond_6

    .line 523
    .line 524
    invoke-static {v12}, Lcom/google/protobuf/z;->q0(I)I

    .line 525
    .line 526
    .line 527
    move-result v1

    .line 528
    invoke-static {v0}, Lcom/google/protobuf/z;->s0(I)I

    .line 529
    .line 530
    .line 531
    move-result v2

    .line 532
    goto :goto_5

    .line 533
    :pswitch_1a
    invoke-virtual {v14, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 534
    .line 535
    .line 536
    move-result-object v0

    .line 537
    check-cast v0, Ljava/util/List;

    .line 538
    .line 539
    invoke-static {v0}, Lcom/google/protobuf/k2;->b(Ljava/util/List;)I

    .line 540
    .line 541
    .line 542
    move-result v0

    .line 543
    if-lez v0, :cond_6

    .line 544
    .line 545
    invoke-static {v12}, Lcom/google/protobuf/z;->q0(I)I

    .line 546
    .line 547
    .line 548
    move-result v1

    .line 549
    invoke-static {v0}, Lcom/google/protobuf/z;->s0(I)I

    .line 550
    .line 551
    .line 552
    move-result v2

    .line 553
    goto/16 :goto_5

    .line 554
    .line 555
    :pswitch_1b
    invoke-virtual {v14, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 556
    .line 557
    .line 558
    move-result-object v0

    .line 559
    check-cast v0, Ljava/util/List;

    .line 560
    .line 561
    invoke-static {v0}, Lcom/google/protobuf/k2;->g(Ljava/util/List;)I

    .line 562
    .line 563
    .line 564
    move-result v0

    .line 565
    if-lez v0, :cond_6

    .line 566
    .line 567
    invoke-static {v12}, Lcom/google/protobuf/z;->q0(I)I

    .line 568
    .line 569
    .line 570
    move-result v1

    .line 571
    invoke-static {v0}, Lcom/google/protobuf/z;->s0(I)I

    .line 572
    .line 573
    .line 574
    move-result v2

    .line 575
    goto/16 :goto_5

    .line 576
    .line 577
    :pswitch_1c
    invoke-virtual {v14, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 578
    .line 579
    .line 580
    move-result-object v0

    .line 581
    check-cast v0, Ljava/util/List;

    .line 582
    .line 583
    invoke-static {v0}, Lcom/google/protobuf/k2;->i(Ljava/util/List;)I

    .line 584
    .line 585
    .line 586
    move-result v0

    .line 587
    if-lez v0, :cond_6

    .line 588
    .line 589
    invoke-static {v12}, Lcom/google/protobuf/z;->q0(I)I

    .line 590
    .line 591
    .line 592
    move-result v1

    .line 593
    invoke-static {v0}, Lcom/google/protobuf/z;->s0(I)I

    .line 594
    .line 595
    .line 596
    move-result v2

    .line 597
    goto/16 :goto_5

    .line 598
    .line 599
    :pswitch_1d
    invoke-virtual {v14, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 600
    .line 601
    .line 602
    move-result-object v0

    .line 603
    check-cast v0, Ljava/util/List;

    .line 604
    .line 605
    invoke-static {v0}, Lcom/google/protobuf/k2;->l(Ljava/util/List;)I

    .line 606
    .line 607
    .line 608
    move-result v0

    .line 609
    if-lez v0, :cond_6

    .line 610
    .line 611
    invoke-static {v12}, Lcom/google/protobuf/z;->q0(I)I

    .line 612
    .line 613
    .line 614
    move-result v1

    .line 615
    invoke-static {v0}, Lcom/google/protobuf/z;->s0(I)I

    .line 616
    .line 617
    .line 618
    move-result v2

    .line 619
    goto/16 :goto_5

    .line 620
    .line 621
    :pswitch_1e
    invoke-virtual {v14, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 622
    .line 623
    .line 624
    move-result-object v0

    .line 625
    check-cast v0, Ljava/util/List;

    .line 626
    .line 627
    invoke-static {v0}, Lcom/google/protobuf/k2;->y(Ljava/util/List;)I

    .line 628
    .line 629
    .line 630
    move-result v0

    .line 631
    if-lez v0, :cond_6

    .line 632
    .line 633
    invoke-static {v12}, Lcom/google/protobuf/z;->q0(I)I

    .line 634
    .line 635
    .line 636
    move-result v1

    .line 637
    invoke-static {v0}, Lcom/google/protobuf/z;->s0(I)I

    .line 638
    .line 639
    .line 640
    move-result v2

    .line 641
    goto/16 :goto_5

    .line 642
    .line 643
    :pswitch_1f
    invoke-virtual {v14, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 644
    .line 645
    .line 646
    move-result-object v0

    .line 647
    check-cast v0, Ljava/util/List;

    .line 648
    .line 649
    invoke-static {v0}, Lcom/google/protobuf/k2;->n(Ljava/util/List;)I

    .line 650
    .line 651
    .line 652
    move-result v0

    .line 653
    if-lez v0, :cond_6

    .line 654
    .line 655
    invoke-static {v12}, Lcom/google/protobuf/z;->q0(I)I

    .line 656
    .line 657
    .line 658
    move-result v1

    .line 659
    invoke-static {v0}, Lcom/google/protobuf/z;->s0(I)I

    .line 660
    .line 661
    .line 662
    move-result v2

    .line 663
    goto/16 :goto_5

    .line 664
    .line 665
    :pswitch_20
    invoke-virtual {v14, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 666
    .line 667
    .line 668
    move-result-object v0

    .line 669
    check-cast v0, Ljava/util/List;

    .line 670
    .line 671
    invoke-static {v0}, Lcom/google/protobuf/k2;->g(Ljava/util/List;)I

    .line 672
    .line 673
    .line 674
    move-result v0

    .line 675
    if-lez v0, :cond_6

    .line 676
    .line 677
    invoke-static {v12}, Lcom/google/protobuf/z;->q0(I)I

    .line 678
    .line 679
    .line 680
    move-result v1

    .line 681
    invoke-static {v0}, Lcom/google/protobuf/z;->s0(I)I

    .line 682
    .line 683
    .line 684
    move-result v2

    .line 685
    goto/16 :goto_5

    .line 686
    .line 687
    :pswitch_21
    invoke-virtual {v14, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 688
    .line 689
    .line 690
    move-result-object v0

    .line 691
    check-cast v0, Ljava/util/List;

    .line 692
    .line 693
    invoke-static {v0}, Lcom/google/protobuf/k2;->i(Ljava/util/List;)I

    .line 694
    .line 695
    .line 696
    move-result v0

    .line 697
    if-lez v0, :cond_6

    .line 698
    .line 699
    invoke-static {v12}, Lcom/google/protobuf/z;->q0(I)I

    .line 700
    .line 701
    .line 702
    move-result v1

    .line 703
    invoke-static {v0}, Lcom/google/protobuf/z;->s0(I)I

    .line 704
    .line 705
    .line 706
    move-result v2

    .line 707
    goto/16 :goto_5

    .line 708
    .line 709
    :pswitch_22
    invoke-virtual {v14, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 710
    .line 711
    .line 712
    move-result-object v0

    .line 713
    check-cast v0, Ljava/util/List;

    .line 714
    .line 715
    invoke-static {v12, v0}, Lcom/google/protobuf/k2;->s(ILjava/util/List;)I

    .line 716
    .line 717
    .line 718
    move-result v0

    .line 719
    goto/16 :goto_3

    .line 720
    .line 721
    :pswitch_23
    invoke-virtual {v14, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 722
    .line 723
    .line 724
    move-result-object v0

    .line 725
    check-cast v0, Ljava/util/List;

    .line 726
    .line 727
    invoke-static {v12, v0}, Lcom/google/protobuf/k2;->q(ILjava/util/List;)I

    .line 728
    .line 729
    .line 730
    move-result v0

    .line 731
    goto/16 :goto_3

    .line 732
    .line 733
    :pswitch_24
    invoke-virtual {v14, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 734
    .line 735
    .line 736
    move-result-object v0

    .line 737
    check-cast v0, Ljava/util/List;

    .line 738
    .line 739
    invoke-static {v12, v0}, Lcom/google/protobuf/k2;->h(ILjava/util/List;)I

    .line 740
    .line 741
    .line 742
    move-result v0

    .line 743
    goto/16 :goto_3

    .line 744
    .line 745
    :pswitch_25
    invoke-virtual {v14, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 746
    .line 747
    .line 748
    move-result-object v0

    .line 749
    check-cast v0, Ljava/util/List;

    .line 750
    .line 751
    invoke-static {v12, v0}, Lcom/google/protobuf/k2;->f(ILjava/util/List;)I

    .line 752
    .line 753
    .line 754
    move-result v0

    .line 755
    goto/16 :goto_3

    .line 756
    .line 757
    :pswitch_26
    invoke-virtual {v14, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 758
    .line 759
    .line 760
    move-result-object v0

    .line 761
    check-cast v0, Ljava/util/List;

    .line 762
    .line 763
    invoke-static {v12, v0}, Lcom/google/protobuf/k2;->d(ILjava/util/List;)I

    .line 764
    .line 765
    .line 766
    move-result v0

    .line 767
    goto/16 :goto_3

    .line 768
    .line 769
    :pswitch_27
    invoke-virtual {v14, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 770
    .line 771
    .line 772
    move-result-object v0

    .line 773
    check-cast v0, Ljava/util/List;

    .line 774
    .line 775
    invoke-static {v12, v0}, Lcom/google/protobuf/k2;->v(ILjava/util/List;)I

    .line 776
    .line 777
    .line 778
    move-result v0

    .line 779
    goto/16 :goto_3

    .line 780
    .line 781
    :pswitch_28
    invoke-virtual {v14, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 782
    .line 783
    .line 784
    move-result-object v0

    .line 785
    check-cast v0, Ljava/util/List;

    .line 786
    .line 787
    invoke-static {v12, v0}, Lcom/google/protobuf/k2;->c(ILjava/util/List;)I

    .line 788
    .line 789
    .line 790
    move-result v0

    .line 791
    goto/16 :goto_3

    .line 792
    .line 793
    :pswitch_29
    invoke-virtual {v14, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 794
    .line 795
    .line 796
    move-result-object v0

    .line 797
    check-cast v0, Ljava/util/List;

    .line 798
    .line 799
    invoke-virtual {v6, v10}, Lcom/google/protobuf/T1;->q(I)Lcom/google/protobuf/j2;

    .line 800
    .line 801
    .line 802
    move-result-object v1

    .line 803
    invoke-static {v12, v0, v1}, Lcom/google/protobuf/k2;->p(ILjava/util/List;Lcom/google/protobuf/j2;)I

    .line 804
    .line 805
    .line 806
    move-result v0

    .line 807
    goto/16 :goto_3

    .line 808
    .line 809
    :pswitch_2a
    invoke-virtual {v14, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 810
    .line 811
    .line 812
    move-result-object v0

    .line 813
    check-cast v0, Ljava/util/List;

    .line 814
    .line 815
    invoke-static {v12, v0}, Lcom/google/protobuf/k2;->u(ILjava/util/List;)I

    .line 816
    .line 817
    .line 818
    move-result v0

    .line 819
    goto/16 :goto_3

    .line 820
    .line 821
    :pswitch_2b
    invoke-virtual {v14, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 822
    .line 823
    .line 824
    move-result-object v0

    .line 825
    check-cast v0, Ljava/util/List;

    .line 826
    .line 827
    invoke-static {v12, v0}, Lcom/google/protobuf/k2;->a(ILjava/util/List;)I

    .line 828
    .line 829
    .line 830
    move-result v0

    .line 831
    goto/16 :goto_3

    .line 832
    .line 833
    :pswitch_2c
    invoke-virtual {v14, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 834
    .line 835
    .line 836
    move-result-object v0

    .line 837
    check-cast v0, Ljava/util/List;

    .line 838
    .line 839
    invoke-static {v12, v0}, Lcom/google/protobuf/k2;->f(ILjava/util/List;)I

    .line 840
    .line 841
    .line 842
    move-result v0

    .line 843
    goto/16 :goto_3

    .line 844
    .line 845
    :pswitch_2d
    invoke-virtual {v14, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 846
    .line 847
    .line 848
    move-result-object v0

    .line 849
    check-cast v0, Ljava/util/List;

    .line 850
    .line 851
    invoke-static {v12, v0}, Lcom/google/protobuf/k2;->h(ILjava/util/List;)I

    .line 852
    .line 853
    .line 854
    move-result v0

    .line 855
    goto/16 :goto_3

    .line 856
    .line 857
    :pswitch_2e
    invoke-virtual {v14, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 858
    .line 859
    .line 860
    move-result-object v0

    .line 861
    check-cast v0, Ljava/util/List;

    .line 862
    .line 863
    invoke-static {v12, v0}, Lcom/google/protobuf/k2;->k(ILjava/util/List;)I

    .line 864
    .line 865
    .line 866
    move-result v0

    .line 867
    goto/16 :goto_3

    .line 868
    .line 869
    :pswitch_2f
    invoke-virtual {v14, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 870
    .line 871
    .line 872
    move-result-object v0

    .line 873
    check-cast v0, Ljava/util/List;

    .line 874
    .line 875
    invoke-static {v12, v0}, Lcom/google/protobuf/k2;->x(ILjava/util/List;)I

    .line 876
    .line 877
    .line 878
    move-result v0

    .line 879
    goto/16 :goto_3

    .line 880
    .line 881
    :pswitch_30
    invoke-virtual {v14, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 882
    .line 883
    .line 884
    move-result-object v0

    .line 885
    check-cast v0, Ljava/util/List;

    .line 886
    .line 887
    invoke-static {v12, v0}, Lcom/google/protobuf/k2;->m(ILjava/util/List;)I

    .line 888
    .line 889
    .line 890
    move-result v0

    .line 891
    goto/16 :goto_3

    .line 892
    .line 893
    :pswitch_31
    invoke-virtual {v14, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 894
    .line 895
    .line 896
    move-result-object v0

    .line 897
    check-cast v0, Ljava/util/List;

    .line 898
    .line 899
    invoke-static {v12, v0}, Lcom/google/protobuf/k2;->f(ILjava/util/List;)I

    .line 900
    .line 901
    .line 902
    move-result v0

    .line 903
    goto/16 :goto_3

    .line 904
    .line 905
    :pswitch_32
    invoke-virtual {v14, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 906
    .line 907
    .line 908
    move-result-object v0

    .line 909
    check-cast v0, Ljava/util/List;

    .line 910
    .line 911
    invoke-static {v12, v0}, Lcom/google/protobuf/k2;->h(ILjava/util/List;)I

    .line 912
    .line 913
    .line 914
    move-result v0

    .line 915
    goto/16 :goto_3

    .line 916
    .line 917
    :pswitch_33
    move-object/from16 v0, p0

    .line 918
    .line 919
    move-object/from16 v1, p1

    .line 920
    .line 921
    move-wide v3, v2

    .line 922
    move v2, v10

    .line 923
    move-wide v8, v3

    .line 924
    move v3, v13

    .line 925
    move v4, v15

    .line 926
    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/T1;->t(Ljava/lang/Object;IIII)Z

    .line 927
    .line 928
    .line 929
    move-result v0

    .line 930
    if-eqz v0, :cond_6

    .line 931
    .line 932
    invoke-virtual {v14, v7, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 933
    .line 934
    .line 935
    move-result-object v0

    .line 936
    check-cast v0, Lcom/google/protobuf/Q1;

    .line 937
    .line 938
    invoke-virtual {v6, v10}, Lcom/google/protobuf/T1;->q(I)Lcom/google/protobuf/j2;

    .line 939
    .line 940
    .line 941
    move-result-object v1

    .line 942
    invoke-static {v12, v0, v1}, Lcom/google/protobuf/z;->g0(ILcom/google/protobuf/Q1;Lcom/google/protobuf/j2;)I

    .line 943
    .line 944
    .line 945
    move-result v0

    .line 946
    goto/16 :goto_3

    .line 947
    .line 948
    :pswitch_34
    move-wide v8, v2

    .line 949
    move-object/from16 v0, p0

    .line 950
    .line 951
    move-object/from16 v1, p1

    .line 952
    .line 953
    move v2, v10

    .line 954
    move v3, v13

    .line 955
    move v4, v15

    .line 956
    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/T1;->t(Ljava/lang/Object;IIII)Z

    .line 957
    .line 958
    .line 959
    move-result v0

    .line 960
    if-eqz v0, :cond_6

    .line 961
    .line 962
    invoke-virtual {v14, v7, v8, v9}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 963
    .line 964
    .line 965
    move-result-wide v0

    .line 966
    invoke-static {v12, v0, v1}, Lcom/google/protobuf/z;->n0(IJ)I

    .line 967
    .line 968
    .line 969
    move-result v0

    .line 970
    goto/16 :goto_3

    .line 971
    .line 972
    :pswitch_35
    move-wide v8, v2

    .line 973
    move-object/from16 v0, p0

    .line 974
    .line 975
    move-object/from16 v1, p1

    .line 976
    .line 977
    move v2, v10

    .line 978
    move v3, v13

    .line 979
    move v4, v15

    .line 980
    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/T1;->t(Ljava/lang/Object;IIII)Z

    .line 981
    .line 982
    .line 983
    move-result v0

    .line 984
    if-eqz v0, :cond_6

    .line 985
    .line 986
    invoke-virtual {v14, v7, v8, v9}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 987
    .line 988
    .line 989
    move-result v0

    .line 990
    invoke-static {v12, v0}, Lcom/google/protobuf/z;->m0(II)I

    .line 991
    .line 992
    .line 993
    move-result v0

    .line 994
    goto/16 :goto_3

    .line 995
    .line 996
    :pswitch_36
    move-object/from16 v0, p0

    .line 997
    .line 998
    move-object/from16 v1, p1

    .line 999
    .line 1000
    move v2, v10

    .line 1001
    move v3, v13

    .line 1002
    move v4, v15

    .line 1003
    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/T1;->t(Ljava/lang/Object;IIII)Z

    .line 1004
    .line 1005
    .line 1006
    move-result v0

    .line 1007
    if-eqz v0, :cond_6

    .line 1008
    .line 1009
    invoke-static {v12}, Lcom/google/protobuf/z;->l0(I)I

    .line 1010
    .line 1011
    .line 1012
    move-result v0

    .line 1013
    goto/16 :goto_3

    .line 1014
    .line 1015
    :pswitch_37
    move-object/from16 v0, p0

    .line 1016
    .line 1017
    move-object/from16 v1, p1

    .line 1018
    .line 1019
    move v2, v10

    .line 1020
    move v3, v13

    .line 1021
    move v4, v15

    .line 1022
    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/T1;->t(Ljava/lang/Object;IIII)Z

    .line 1023
    .line 1024
    .line 1025
    move-result v0

    .line 1026
    if-eqz v0, :cond_6

    .line 1027
    .line 1028
    invoke-static {v12}, Lcom/google/protobuf/z;->k0(I)I

    .line 1029
    .line 1030
    .line 1031
    move-result v0

    .line 1032
    goto/16 :goto_3

    .line 1033
    .line 1034
    :pswitch_38
    move-wide v8, v2

    .line 1035
    move-object/from16 v0, p0

    .line 1036
    .line 1037
    move-object/from16 v1, p1

    .line 1038
    .line 1039
    move v2, v10

    .line 1040
    move v3, v13

    .line 1041
    move v4, v15

    .line 1042
    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/T1;->t(Ljava/lang/Object;IIII)Z

    .line 1043
    .line 1044
    .line 1045
    move-result v0

    .line 1046
    if-eqz v0, :cond_6

    .line 1047
    .line 1048
    invoke-virtual {v14, v7, v8, v9}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 1049
    .line 1050
    .line 1051
    move-result v0

    .line 1052
    invoke-static {v12, v0}, Lcom/google/protobuf/z;->c0(II)I

    .line 1053
    .line 1054
    .line 1055
    move-result v0

    .line 1056
    goto/16 :goto_3

    .line 1057
    .line 1058
    :pswitch_39
    move-wide v8, v2

    .line 1059
    move-object/from16 v0, p0

    .line 1060
    .line 1061
    move-object/from16 v1, p1

    .line 1062
    .line 1063
    move v2, v10

    .line 1064
    move v3, v13

    .line 1065
    move v4, v15

    .line 1066
    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/T1;->t(Ljava/lang/Object;IIII)Z

    .line 1067
    .line 1068
    .line 1069
    move-result v0

    .line 1070
    if-eqz v0, :cond_6

    .line 1071
    .line 1072
    invoke-virtual {v14, v7, v8, v9}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 1073
    .line 1074
    .line 1075
    move-result v0

    .line 1076
    invoke-static {v12, v0}, Lcom/google/protobuf/z;->r0(II)I

    .line 1077
    .line 1078
    .line 1079
    move-result v0

    .line 1080
    goto/16 :goto_3

    .line 1081
    .line 1082
    :pswitch_3a
    move-wide v8, v2

    .line 1083
    move-object/from16 v0, p0

    .line 1084
    .line 1085
    move-object/from16 v1, p1

    .line 1086
    .line 1087
    move v2, v10

    .line 1088
    move v3, v13

    .line 1089
    move v4, v15

    .line 1090
    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/T1;->t(Ljava/lang/Object;IIII)Z

    .line 1091
    .line 1092
    .line 1093
    move-result v0

    .line 1094
    if-eqz v0, :cond_6

    .line 1095
    .line 1096
    invoke-virtual {v14, v7, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1097
    .line 1098
    .line 1099
    move-result-object v0

    .line 1100
    check-cast v0, Lcom/google/protobuf/r;

    .line 1101
    .line 1102
    invoke-static {v12, v0}, Lcom/google/protobuf/z;->Z(ILcom/google/protobuf/r;)I

    .line 1103
    .line 1104
    .line 1105
    move-result v0

    .line 1106
    goto/16 :goto_3

    .line 1107
    .line 1108
    :pswitch_3b
    move-wide v8, v2

    .line 1109
    move-object/from16 v0, p0

    .line 1110
    .line 1111
    move-object/from16 v1, p1

    .line 1112
    .line 1113
    move v2, v10

    .line 1114
    move v3, v13

    .line 1115
    move v4, v15

    .line 1116
    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/T1;->t(Ljava/lang/Object;IIII)Z

    .line 1117
    .line 1118
    .line 1119
    move-result v0

    .line 1120
    if-eqz v0, :cond_6

    .line 1121
    .line 1122
    invoke-virtual {v14, v7, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1123
    .line 1124
    .line 1125
    move-result-object v0

    .line 1126
    invoke-virtual {v6, v10}, Lcom/google/protobuf/T1;->q(I)Lcom/google/protobuf/j2;

    .line 1127
    .line 1128
    .line 1129
    move-result-object v1

    .line 1130
    invoke-static {v12, v1, v0}, Lcom/google/protobuf/k2;->o(ILcom/google/protobuf/j2;Ljava/lang/Object;)I

    .line 1131
    .line 1132
    .line 1133
    move-result v0

    .line 1134
    goto/16 :goto_3

    .line 1135
    .line 1136
    :pswitch_3c
    move-wide v8, v2

    .line 1137
    move-object/from16 v0, p0

    .line 1138
    .line 1139
    move-object/from16 v1, p1

    .line 1140
    .line 1141
    move v2, v10

    .line 1142
    move v3, v13

    .line 1143
    move v4, v15

    .line 1144
    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/T1;->t(Ljava/lang/Object;IIII)Z

    .line 1145
    .line 1146
    .line 1147
    move-result v0

    .line 1148
    if-eqz v0, :cond_6

    .line 1149
    .line 1150
    invoke-virtual {v14, v7, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1151
    .line 1152
    .line 1153
    move-result-object v0

    .line 1154
    instance-of v1, v0, Lcom/google/protobuf/r;

    .line 1155
    .line 1156
    if-eqz v1, :cond_5

    .line 1157
    .line 1158
    check-cast v0, Lcom/google/protobuf/r;

    .line 1159
    .line 1160
    invoke-static {v12, v0}, Lcom/google/protobuf/z;->Z(ILcom/google/protobuf/r;)I

    .line 1161
    .line 1162
    .line 1163
    move-result v0

    .line 1164
    goto/16 :goto_4

    .line 1165
    .line 1166
    :cond_5
    check-cast v0, Ljava/lang/String;

    .line 1167
    .line 1168
    invoke-static {v12, v0}, Lcom/google/protobuf/z;->o0(ILjava/lang/String;)I

    .line 1169
    .line 1170
    .line 1171
    move-result v0

    .line 1172
    goto/16 :goto_4

    .line 1173
    .line 1174
    :pswitch_3d
    move-object/from16 v0, p0

    .line 1175
    .line 1176
    move-object/from16 v1, p1

    .line 1177
    .line 1178
    move v2, v10

    .line 1179
    move v3, v13

    .line 1180
    move v4, v15

    .line 1181
    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/T1;->t(Ljava/lang/Object;IIII)Z

    .line 1182
    .line 1183
    .line 1184
    move-result v0

    .line 1185
    if-eqz v0, :cond_6

    .line 1186
    .line 1187
    invoke-static {v12}, Lcom/google/protobuf/z;->Y(I)I

    .line 1188
    .line 1189
    .line 1190
    move-result v0

    .line 1191
    goto/16 :goto_3

    .line 1192
    .line 1193
    :pswitch_3e
    move-object/from16 v0, p0

    .line 1194
    .line 1195
    move-object/from16 v1, p1

    .line 1196
    .line 1197
    move v2, v10

    .line 1198
    move v3, v13

    .line 1199
    move v4, v15

    .line 1200
    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/T1;->t(Ljava/lang/Object;IIII)Z

    .line 1201
    .line 1202
    .line 1203
    move-result v0

    .line 1204
    if-eqz v0, :cond_6

    .line 1205
    .line 1206
    invoke-static {v12}, Lcom/google/protobuf/z;->d0(I)I

    .line 1207
    .line 1208
    .line 1209
    move-result v0

    .line 1210
    goto/16 :goto_3

    .line 1211
    .line 1212
    :pswitch_3f
    move-object/from16 v0, p0

    .line 1213
    .line 1214
    move-object/from16 v1, p1

    .line 1215
    .line 1216
    move v2, v10

    .line 1217
    move v3, v13

    .line 1218
    move v4, v15

    .line 1219
    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/T1;->t(Ljava/lang/Object;IIII)Z

    .line 1220
    .line 1221
    .line 1222
    move-result v0

    .line 1223
    if-eqz v0, :cond_6

    .line 1224
    .line 1225
    invoke-static {v12}, Lcom/google/protobuf/z;->e0(I)I

    .line 1226
    .line 1227
    .line 1228
    move-result v0

    .line 1229
    goto/16 :goto_3

    .line 1230
    .line 1231
    :pswitch_40
    move-wide v8, v2

    .line 1232
    move-object/from16 v0, p0

    .line 1233
    .line 1234
    move-object/from16 v1, p1

    .line 1235
    .line 1236
    move v2, v10

    .line 1237
    move v3, v13

    .line 1238
    move v4, v15

    .line 1239
    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/T1;->t(Ljava/lang/Object;IIII)Z

    .line 1240
    .line 1241
    .line 1242
    move-result v0

    .line 1243
    if-eqz v0, :cond_6

    .line 1244
    .line 1245
    invoke-virtual {v14, v7, v8, v9}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 1246
    .line 1247
    .line 1248
    move-result v0

    .line 1249
    invoke-static {v12, v0}, Lcom/google/protobuf/z;->h0(II)I

    .line 1250
    .line 1251
    .line 1252
    move-result v0

    .line 1253
    goto/16 :goto_3

    .line 1254
    .line 1255
    :pswitch_41
    move-wide v8, v2

    .line 1256
    move-object/from16 v0, p0

    .line 1257
    .line 1258
    move-object/from16 v1, p1

    .line 1259
    .line 1260
    move v2, v10

    .line 1261
    move v3, v13

    .line 1262
    move v4, v15

    .line 1263
    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/T1;->t(Ljava/lang/Object;IIII)Z

    .line 1264
    .line 1265
    .line 1266
    move-result v0

    .line 1267
    if-eqz v0, :cond_6

    .line 1268
    .line 1269
    invoke-virtual {v14, v7, v8, v9}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 1270
    .line 1271
    .line 1272
    move-result-wide v0

    .line 1273
    invoke-static {v12, v0, v1}, Lcom/google/protobuf/z;->t0(IJ)I

    .line 1274
    .line 1275
    .line 1276
    move-result v0

    .line 1277
    goto/16 :goto_3

    .line 1278
    .line 1279
    :pswitch_42
    move-wide v8, v2

    .line 1280
    move-object/from16 v0, p0

    .line 1281
    .line 1282
    move-object/from16 v1, p1

    .line 1283
    .line 1284
    move v2, v10

    .line 1285
    move v3, v13

    .line 1286
    move v4, v15

    .line 1287
    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/T1;->t(Ljava/lang/Object;IIII)Z

    .line 1288
    .line 1289
    .line 1290
    move-result v0

    .line 1291
    if-eqz v0, :cond_6

    .line 1292
    .line 1293
    invoke-virtual {v14, v7, v8, v9}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 1294
    .line 1295
    .line 1296
    move-result-wide v0

    .line 1297
    invoke-static {v12, v0, v1}, Lcom/google/protobuf/z;->j0(IJ)I

    .line 1298
    .line 1299
    .line 1300
    move-result v0

    .line 1301
    goto/16 :goto_3

    .line 1302
    .line 1303
    :pswitch_43
    move-object/from16 v0, p0

    .line 1304
    .line 1305
    move-object/from16 v1, p1

    .line 1306
    .line 1307
    move v2, v10

    .line 1308
    move v3, v13

    .line 1309
    move v4, v15

    .line 1310
    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/T1;->t(Ljava/lang/Object;IIII)Z

    .line 1311
    .line 1312
    .line 1313
    move-result v0

    .line 1314
    if-eqz v0, :cond_6

    .line 1315
    .line 1316
    invoke-static {v12}, Lcom/google/protobuf/z;->f0(I)I

    .line 1317
    .line 1318
    .line 1319
    move-result v0

    .line 1320
    goto/16 :goto_3

    .line 1321
    .line 1322
    :pswitch_44
    move-object/from16 v0, p0

    .line 1323
    .line 1324
    move-object/from16 v1, p1

    .line 1325
    .line 1326
    move v2, v10

    .line 1327
    move v3, v13

    .line 1328
    move v4, v15

    .line 1329
    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/T1;->t(Ljava/lang/Object;IIII)Z

    .line 1330
    .line 1331
    .line 1332
    move-result v0

    .line 1333
    if-eqz v0, :cond_6

    .line 1334
    .line 1335
    invoke-static {v12}, Lcom/google/protobuf/z;->b0(I)I

    .line 1336
    .line 1337
    .line 1338
    move-result v0

    .line 1339
    goto/16 :goto_3

    .line 1340
    .line 1341
    :cond_6
    :goto_6
    add-int/lit8 v10, v10, 0x3

    .line 1342
    .line 1343
    move v0, v13

    .line 1344
    move v1, v15

    .line 1345
    const v9, 0xfffff

    .line 1346
    .line 1347
    .line 1348
    goto/16 :goto_0

    .line 1349
    .line 1350
    :cond_7
    iget-object v0, v6, Lcom/google/protobuf/T1;->m:Lcom/google/protobuf/B2;

    .line 1351
    .line 1352
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1353
    .line 1354
    .line 1355
    move-object v0, v7

    .line 1356
    check-cast v0, Lcom/google/protobuf/i1;

    .line 1357
    .line 1358
    iget-object v0, v0, Lcom/google/protobuf/i1;->unknownFields:Lcom/google/protobuf/A2;

    .line 1359
    .line 1360
    invoke-virtual {v0}, Lcom/google/protobuf/A2;->c()I

    .line 1361
    .line 1362
    .line 1363
    move-result v0

    .line 1364
    add-int/2addr v0, v11

    .line 1365
    iget-boolean v1, v6, Lcom/google/protobuf/T1;->f:Z

    .line 1366
    .line 1367
    if-eqz v1, :cond_8

    .line 1368
    .line 1369
    iget-object v1, v6, Lcom/google/protobuf/T1;->n:Lcom/google/protobuf/P0;

    .line 1370
    .line 1371
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1372
    .line 1373
    .line 1374
    invoke-static/range {p1 .. p1}, Lcom/google/protobuf/P0;->b(Ljava/lang/Object;)Lcom/google/protobuf/W0;

    .line 1375
    .line 1376
    .line 1377
    move-result-object v1

    .line 1378
    invoke-virtual {v1}, Lcom/google/protobuf/W0;->h()I

    .line 1379
    .line 1380
    .line 1381
    move-result v1

    .line 1382
    add-int/2addr v0, v1

    .line 1383
    :cond_8
    return v0

    .line 1384
    nop

    .line 1385
    :pswitch_data_0
    .packed-switch 0x0
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

.method public final i()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/T1;->k:Lcom/google/protobuf/Z1;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/protobuf/T1;->e:Lcom/google/protobuf/Q1;

    .line 7
    .line 8
    check-cast v0, Lcom/google/protobuf/i1;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/google/protobuf/i1;->newMutableInstance()Lcom/google/protobuf/i1;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    return-object v0
.end method

.method public final j(Ljava/lang/Object;)I
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/T1;->a:[I

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x0

    .line 6
    :goto_0
    if-ge v2, v1, :cond_3

    .line 7
    .line 8
    invoke-virtual {p0, v2}, Lcom/google/protobuf/T1;->W(I)I

    .line 9
    .line 10
    .line 11
    move-result v4

    .line 12
    aget v5, v0, v2

    .line 13
    .line 14
    const v6, 0xfffff

    .line 15
    .line 16
    .line 17
    and-int/2addr v6, v4

    .line 18
    int-to-long v6, v6

    .line 19
    invoke-static {v4}, Lcom/google/protobuf/T1;->V(I)I

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    const/16 v8, 0x4d5

    .line 24
    .line 25
    const/16 v9, 0x4cf

    .line 26
    .line 27
    const/16 v10, 0x25

    .line 28
    .line 29
    packed-switch v4, :pswitch_data_0

    .line 30
    .line 31
    .line 32
    goto/16 :goto_4

    .line 33
    .line 34
    :pswitch_0
    invoke-virtual {p0, v5, p1, v2}, Lcom/google/protobuf/T1;->v(ILjava/lang/Object;I)Z

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    if-eqz v4, :cond_2

    .line 39
    .line 40
    sget-object v4, Lcom/google/protobuf/H2;->c:Lcom/google/protobuf/G2;

    .line 41
    .line 42
    invoke-virtual {v4, p1, v6, v7}, Lcom/google/protobuf/G2;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    mul-int/lit8 v3, v3, 0x35

    .line 47
    .line 48
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    :goto_1
    add-int/2addr v4, v3

    .line 53
    move v3, v4

    .line 54
    goto/16 :goto_4

    .line 55
    .line 56
    :pswitch_1
    invoke-virtual {p0, v5, p1, v2}, Lcom/google/protobuf/T1;->v(ILjava/lang/Object;I)Z

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    if-eqz v4, :cond_2

    .line 61
    .line 62
    mul-int/lit8 v3, v3, 0x35

    .line 63
    .line 64
    invoke-static {p1, v6, v7}, Lcom/google/protobuf/T1;->G(Ljava/lang/Object;J)J

    .line 65
    .line 66
    .line 67
    move-result-wide v4

    .line 68
    invoke-static {v4, v5}, Lcom/google/protobuf/v1;->b(J)I

    .line 69
    .line 70
    .line 71
    move-result v4

    .line 72
    goto :goto_1

    .line 73
    :pswitch_2
    invoke-virtual {p0, v5, p1, v2}, Lcom/google/protobuf/T1;->v(ILjava/lang/Object;I)Z

    .line 74
    .line 75
    .line 76
    move-result v4

    .line 77
    if-eqz v4, :cond_2

    .line 78
    .line 79
    mul-int/lit8 v3, v3, 0x35

    .line 80
    .line 81
    invoke-static {p1, v6, v7}, Lcom/google/protobuf/T1;->F(Ljava/lang/Object;J)I

    .line 82
    .line 83
    .line 84
    move-result v4

    .line 85
    goto :goto_1

    .line 86
    :pswitch_3
    invoke-virtual {p0, v5, p1, v2}, Lcom/google/protobuf/T1;->v(ILjava/lang/Object;I)Z

    .line 87
    .line 88
    .line 89
    move-result v4

    .line 90
    if-eqz v4, :cond_2

    .line 91
    .line 92
    mul-int/lit8 v3, v3, 0x35

    .line 93
    .line 94
    invoke-static {p1, v6, v7}, Lcom/google/protobuf/T1;->G(Ljava/lang/Object;J)J

    .line 95
    .line 96
    .line 97
    move-result-wide v4

    .line 98
    invoke-static {v4, v5}, Lcom/google/protobuf/v1;->b(J)I

    .line 99
    .line 100
    .line 101
    move-result v4

    .line 102
    goto :goto_1

    .line 103
    :pswitch_4
    invoke-virtual {p0, v5, p1, v2}, Lcom/google/protobuf/T1;->v(ILjava/lang/Object;I)Z

    .line 104
    .line 105
    .line 106
    move-result v4

    .line 107
    if-eqz v4, :cond_2

    .line 108
    .line 109
    mul-int/lit8 v3, v3, 0x35

    .line 110
    .line 111
    invoke-static {p1, v6, v7}, Lcom/google/protobuf/T1;->F(Ljava/lang/Object;J)I

    .line 112
    .line 113
    .line 114
    move-result v4

    .line 115
    goto :goto_1

    .line 116
    :pswitch_5
    invoke-virtual {p0, v5, p1, v2}, Lcom/google/protobuf/T1;->v(ILjava/lang/Object;I)Z

    .line 117
    .line 118
    .line 119
    move-result v4

    .line 120
    if-eqz v4, :cond_2

    .line 121
    .line 122
    mul-int/lit8 v3, v3, 0x35

    .line 123
    .line 124
    invoke-static {p1, v6, v7}, Lcom/google/protobuf/T1;->F(Ljava/lang/Object;J)I

    .line 125
    .line 126
    .line 127
    move-result v4

    .line 128
    goto :goto_1

    .line 129
    :pswitch_6
    invoke-virtual {p0, v5, p1, v2}, Lcom/google/protobuf/T1;->v(ILjava/lang/Object;I)Z

    .line 130
    .line 131
    .line 132
    move-result v4

    .line 133
    if-eqz v4, :cond_2

    .line 134
    .line 135
    mul-int/lit8 v3, v3, 0x35

    .line 136
    .line 137
    invoke-static {p1, v6, v7}, Lcom/google/protobuf/T1;->F(Ljava/lang/Object;J)I

    .line 138
    .line 139
    .line 140
    move-result v4

    .line 141
    goto :goto_1

    .line 142
    :pswitch_7
    invoke-virtual {p0, v5, p1, v2}, Lcom/google/protobuf/T1;->v(ILjava/lang/Object;I)Z

    .line 143
    .line 144
    .line 145
    move-result v4

    .line 146
    if-eqz v4, :cond_2

    .line 147
    .line 148
    mul-int/lit8 v3, v3, 0x35

    .line 149
    .line 150
    sget-object v4, Lcom/google/protobuf/H2;->c:Lcom/google/protobuf/G2;

    .line 151
    .line 152
    invoke-virtual {v4, p1, v6, v7}, Lcom/google/protobuf/G2;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object v4

    .line 156
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    .line 157
    .line 158
    .line 159
    move-result v4

    .line 160
    goto :goto_1

    .line 161
    :pswitch_8
    invoke-virtual {p0, v5, p1, v2}, Lcom/google/protobuf/T1;->v(ILjava/lang/Object;I)Z

    .line 162
    .line 163
    .line 164
    move-result v4

    .line 165
    if-eqz v4, :cond_2

    .line 166
    .line 167
    sget-object v4, Lcom/google/protobuf/H2;->c:Lcom/google/protobuf/G2;

    .line 168
    .line 169
    invoke-virtual {v4, p1, v6, v7}, Lcom/google/protobuf/G2;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object v4

    .line 173
    mul-int/lit8 v3, v3, 0x35

    .line 174
    .line 175
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    .line 176
    .line 177
    .line 178
    move-result v4

    .line 179
    goto :goto_1

    .line 180
    :pswitch_9
    invoke-virtual {p0, v5, p1, v2}, Lcom/google/protobuf/T1;->v(ILjava/lang/Object;I)Z

    .line 181
    .line 182
    .line 183
    move-result v4

    .line 184
    if-eqz v4, :cond_2

    .line 185
    .line 186
    mul-int/lit8 v3, v3, 0x35

    .line 187
    .line 188
    sget-object v4, Lcom/google/protobuf/H2;->c:Lcom/google/protobuf/G2;

    .line 189
    .line 190
    invoke-virtual {v4, p1, v6, v7}, Lcom/google/protobuf/G2;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    move-result-object v4

    .line 194
    check-cast v4, Ljava/lang/String;

    .line 195
    .line 196
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    .line 197
    .line 198
    .line 199
    move-result v4

    .line 200
    goto/16 :goto_1

    .line 201
    .line 202
    :pswitch_a
    invoke-virtual {p0, v5, p1, v2}, Lcom/google/protobuf/T1;->v(ILjava/lang/Object;I)Z

    .line 203
    .line 204
    .line 205
    move-result v4

    .line 206
    if-eqz v4, :cond_2

    .line 207
    .line 208
    mul-int/lit8 v3, v3, 0x35

    .line 209
    .line 210
    sget-object v4, Lcom/google/protobuf/H2;->c:Lcom/google/protobuf/G2;

    .line 211
    .line 212
    invoke-virtual {v4, p1, v6, v7}, Lcom/google/protobuf/G2;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 213
    .line 214
    .line 215
    move-result-object v4

    .line 216
    check-cast v4, Ljava/lang/Boolean;

    .line 217
    .line 218
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 219
    .line 220
    .line 221
    move-result v4

    .line 222
    sget-object v5, Lcom/google/protobuf/v1;->a:Ljava/nio/charset/Charset;

    .line 223
    .line 224
    if-eqz v4, :cond_0

    .line 225
    .line 226
    :goto_2
    const/16 v8, 0x4cf

    .line 227
    .line 228
    :cond_0
    add-int/2addr v8, v3

    .line 229
    move v3, v8

    .line 230
    goto/16 :goto_4

    .line 231
    .line 232
    :pswitch_b
    invoke-virtual {p0, v5, p1, v2}, Lcom/google/protobuf/T1;->v(ILjava/lang/Object;I)Z

    .line 233
    .line 234
    .line 235
    move-result v4

    .line 236
    if-eqz v4, :cond_2

    .line 237
    .line 238
    mul-int/lit8 v3, v3, 0x35

    .line 239
    .line 240
    invoke-static {p1, v6, v7}, Lcom/google/protobuf/T1;->F(Ljava/lang/Object;J)I

    .line 241
    .line 242
    .line 243
    move-result v4

    .line 244
    goto/16 :goto_1

    .line 245
    .line 246
    :pswitch_c
    invoke-virtual {p0, v5, p1, v2}, Lcom/google/protobuf/T1;->v(ILjava/lang/Object;I)Z

    .line 247
    .line 248
    .line 249
    move-result v4

    .line 250
    if-eqz v4, :cond_2

    .line 251
    .line 252
    mul-int/lit8 v3, v3, 0x35

    .line 253
    .line 254
    invoke-static {p1, v6, v7}, Lcom/google/protobuf/T1;->G(Ljava/lang/Object;J)J

    .line 255
    .line 256
    .line 257
    move-result-wide v4

    .line 258
    invoke-static {v4, v5}, Lcom/google/protobuf/v1;->b(J)I

    .line 259
    .line 260
    .line 261
    move-result v4

    .line 262
    goto/16 :goto_1

    .line 263
    .line 264
    :pswitch_d
    invoke-virtual {p0, v5, p1, v2}, Lcom/google/protobuf/T1;->v(ILjava/lang/Object;I)Z

    .line 265
    .line 266
    .line 267
    move-result v4

    .line 268
    if-eqz v4, :cond_2

    .line 269
    .line 270
    mul-int/lit8 v3, v3, 0x35

    .line 271
    .line 272
    invoke-static {p1, v6, v7}, Lcom/google/protobuf/T1;->F(Ljava/lang/Object;J)I

    .line 273
    .line 274
    .line 275
    move-result v4

    .line 276
    goto/16 :goto_1

    .line 277
    .line 278
    :pswitch_e
    invoke-virtual {p0, v5, p1, v2}, Lcom/google/protobuf/T1;->v(ILjava/lang/Object;I)Z

    .line 279
    .line 280
    .line 281
    move-result v4

    .line 282
    if-eqz v4, :cond_2

    .line 283
    .line 284
    mul-int/lit8 v3, v3, 0x35

    .line 285
    .line 286
    invoke-static {p1, v6, v7}, Lcom/google/protobuf/T1;->G(Ljava/lang/Object;J)J

    .line 287
    .line 288
    .line 289
    move-result-wide v4

    .line 290
    invoke-static {v4, v5}, Lcom/google/protobuf/v1;->b(J)I

    .line 291
    .line 292
    .line 293
    move-result v4

    .line 294
    goto/16 :goto_1

    .line 295
    .line 296
    :pswitch_f
    invoke-virtual {p0, v5, p1, v2}, Lcom/google/protobuf/T1;->v(ILjava/lang/Object;I)Z

    .line 297
    .line 298
    .line 299
    move-result v4

    .line 300
    if-eqz v4, :cond_2

    .line 301
    .line 302
    mul-int/lit8 v3, v3, 0x35

    .line 303
    .line 304
    invoke-static {p1, v6, v7}, Lcom/google/protobuf/T1;->G(Ljava/lang/Object;J)J

    .line 305
    .line 306
    .line 307
    move-result-wide v4

    .line 308
    invoke-static {v4, v5}, Lcom/google/protobuf/v1;->b(J)I

    .line 309
    .line 310
    .line 311
    move-result v4

    .line 312
    goto/16 :goto_1

    .line 313
    .line 314
    :pswitch_10
    invoke-virtual {p0, v5, p1, v2}, Lcom/google/protobuf/T1;->v(ILjava/lang/Object;I)Z

    .line 315
    .line 316
    .line 317
    move-result v4

    .line 318
    if-eqz v4, :cond_2

    .line 319
    .line 320
    mul-int/lit8 v3, v3, 0x35

    .line 321
    .line 322
    sget-object v4, Lcom/google/protobuf/H2;->c:Lcom/google/protobuf/G2;

    .line 323
    .line 324
    invoke-virtual {v4, p1, v6, v7}, Lcom/google/protobuf/G2;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 325
    .line 326
    .line 327
    move-result-object v4

    .line 328
    check-cast v4, Ljava/lang/Float;

    .line 329
    .line 330
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    .line 331
    .line 332
    .line 333
    move-result v4

    .line 334
    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 335
    .line 336
    .line 337
    move-result v4

    .line 338
    goto/16 :goto_1

    .line 339
    .line 340
    :pswitch_11
    invoke-virtual {p0, v5, p1, v2}, Lcom/google/protobuf/T1;->v(ILjava/lang/Object;I)Z

    .line 341
    .line 342
    .line 343
    move-result v4

    .line 344
    if-eqz v4, :cond_2

    .line 345
    .line 346
    mul-int/lit8 v3, v3, 0x35

    .line 347
    .line 348
    sget-object v4, Lcom/google/protobuf/H2;->c:Lcom/google/protobuf/G2;

    .line 349
    .line 350
    invoke-virtual {v4, p1, v6, v7}, Lcom/google/protobuf/G2;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 351
    .line 352
    .line 353
    move-result-object v4

    .line 354
    check-cast v4, Ljava/lang/Double;

    .line 355
    .line 356
    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    .line 357
    .line 358
    .line 359
    move-result-wide v4

    .line 360
    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    .line 361
    .line 362
    .line 363
    move-result-wide v4

    .line 364
    invoke-static {v4, v5}, Lcom/google/protobuf/v1;->b(J)I

    .line 365
    .line 366
    .line 367
    move-result v4

    .line 368
    goto/16 :goto_1

    .line 369
    .line 370
    :pswitch_12
    mul-int/lit8 v3, v3, 0x35

    .line 371
    .line 372
    sget-object v4, Lcom/google/protobuf/H2;->c:Lcom/google/protobuf/G2;

    .line 373
    .line 374
    invoke-virtual {v4, p1, v6, v7}, Lcom/google/protobuf/G2;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 375
    .line 376
    .line 377
    move-result-object v4

    .line 378
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    .line 379
    .line 380
    .line 381
    move-result v4

    .line 382
    goto/16 :goto_1

    .line 383
    .line 384
    :pswitch_13
    mul-int/lit8 v3, v3, 0x35

    .line 385
    .line 386
    sget-object v4, Lcom/google/protobuf/H2;->c:Lcom/google/protobuf/G2;

    .line 387
    .line 388
    invoke-virtual {v4, p1, v6, v7}, Lcom/google/protobuf/G2;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 389
    .line 390
    .line 391
    move-result-object v4

    .line 392
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    .line 393
    .line 394
    .line 395
    move-result v4

    .line 396
    goto/16 :goto_1

    .line 397
    .line 398
    :pswitch_14
    sget-object v4, Lcom/google/protobuf/H2;->c:Lcom/google/protobuf/G2;

    .line 399
    .line 400
    invoke-virtual {v4, p1, v6, v7}, Lcom/google/protobuf/G2;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 401
    .line 402
    .line 403
    move-result-object v4

    .line 404
    if-eqz v4, :cond_1

    .line 405
    .line 406
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    .line 407
    .line 408
    .line 409
    move-result v10

    .line 410
    :cond_1
    :goto_3
    mul-int/lit8 v3, v3, 0x35

    .line 411
    .line 412
    add-int/2addr v3, v10

    .line 413
    goto/16 :goto_4

    .line 414
    .line 415
    :pswitch_15
    mul-int/lit8 v3, v3, 0x35

    .line 416
    .line 417
    sget-object v4, Lcom/google/protobuf/H2;->c:Lcom/google/protobuf/G2;

    .line 418
    .line 419
    invoke-virtual {v4, p1, v6, v7}, Lcom/google/protobuf/G2;->j(Ljava/lang/Object;J)J

    .line 420
    .line 421
    .line 422
    move-result-wide v4

    .line 423
    invoke-static {v4, v5}, Lcom/google/protobuf/v1;->b(J)I

    .line 424
    .line 425
    .line 426
    move-result v4

    .line 427
    goto/16 :goto_1

    .line 428
    .line 429
    :pswitch_16
    mul-int/lit8 v3, v3, 0x35

    .line 430
    .line 431
    sget-object v4, Lcom/google/protobuf/H2;->c:Lcom/google/protobuf/G2;

    .line 432
    .line 433
    invoke-virtual {v4, p1, v6, v7}, Lcom/google/protobuf/G2;->i(Ljava/lang/Object;J)I

    .line 434
    .line 435
    .line 436
    move-result v4

    .line 437
    goto/16 :goto_1

    .line 438
    .line 439
    :pswitch_17
    mul-int/lit8 v3, v3, 0x35

    .line 440
    .line 441
    sget-object v4, Lcom/google/protobuf/H2;->c:Lcom/google/protobuf/G2;

    .line 442
    .line 443
    invoke-virtual {v4, p1, v6, v7}, Lcom/google/protobuf/G2;->j(Ljava/lang/Object;J)J

    .line 444
    .line 445
    .line 446
    move-result-wide v4

    .line 447
    invoke-static {v4, v5}, Lcom/google/protobuf/v1;->b(J)I

    .line 448
    .line 449
    .line 450
    move-result v4

    .line 451
    goto/16 :goto_1

    .line 452
    .line 453
    :pswitch_18
    mul-int/lit8 v3, v3, 0x35

    .line 454
    .line 455
    sget-object v4, Lcom/google/protobuf/H2;->c:Lcom/google/protobuf/G2;

    .line 456
    .line 457
    invoke-virtual {v4, p1, v6, v7}, Lcom/google/protobuf/G2;->i(Ljava/lang/Object;J)I

    .line 458
    .line 459
    .line 460
    move-result v4

    .line 461
    goto/16 :goto_1

    .line 462
    .line 463
    :pswitch_19
    mul-int/lit8 v3, v3, 0x35

    .line 464
    .line 465
    sget-object v4, Lcom/google/protobuf/H2;->c:Lcom/google/protobuf/G2;

    .line 466
    .line 467
    invoke-virtual {v4, p1, v6, v7}, Lcom/google/protobuf/G2;->i(Ljava/lang/Object;J)I

    .line 468
    .line 469
    .line 470
    move-result v4

    .line 471
    goto/16 :goto_1

    .line 472
    .line 473
    :pswitch_1a
    mul-int/lit8 v3, v3, 0x35

    .line 474
    .line 475
    sget-object v4, Lcom/google/protobuf/H2;->c:Lcom/google/protobuf/G2;

    .line 476
    .line 477
    invoke-virtual {v4, p1, v6, v7}, Lcom/google/protobuf/G2;->i(Ljava/lang/Object;J)I

    .line 478
    .line 479
    .line 480
    move-result v4

    .line 481
    goto/16 :goto_1

    .line 482
    .line 483
    :pswitch_1b
    mul-int/lit8 v3, v3, 0x35

    .line 484
    .line 485
    sget-object v4, Lcom/google/protobuf/H2;->c:Lcom/google/protobuf/G2;

    .line 486
    .line 487
    invoke-virtual {v4, p1, v6, v7}, Lcom/google/protobuf/G2;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 488
    .line 489
    .line 490
    move-result-object v4

    .line 491
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    .line 492
    .line 493
    .line 494
    move-result v4

    .line 495
    goto/16 :goto_1

    .line 496
    .line 497
    :pswitch_1c
    sget-object v4, Lcom/google/protobuf/H2;->c:Lcom/google/protobuf/G2;

    .line 498
    .line 499
    invoke-virtual {v4, p1, v6, v7}, Lcom/google/protobuf/G2;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 500
    .line 501
    .line 502
    move-result-object v4

    .line 503
    if-eqz v4, :cond_1

    .line 504
    .line 505
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    .line 506
    .line 507
    .line 508
    move-result v10

    .line 509
    goto :goto_3

    .line 510
    :pswitch_1d
    mul-int/lit8 v3, v3, 0x35

    .line 511
    .line 512
    sget-object v4, Lcom/google/protobuf/H2;->c:Lcom/google/protobuf/G2;

    .line 513
    .line 514
    invoke-virtual {v4, p1, v6, v7}, Lcom/google/protobuf/G2;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 515
    .line 516
    .line 517
    move-result-object v4

    .line 518
    check-cast v4, Ljava/lang/String;

    .line 519
    .line 520
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    .line 521
    .line 522
    .line 523
    move-result v4

    .line 524
    goto/16 :goto_1

    .line 525
    .line 526
    :pswitch_1e
    mul-int/lit8 v3, v3, 0x35

    .line 527
    .line 528
    sget-object v4, Lcom/google/protobuf/H2;->c:Lcom/google/protobuf/G2;

    .line 529
    .line 530
    invoke-virtual {v4, p1, v6, v7}, Lcom/google/protobuf/G2;->d(Ljava/lang/Object;J)Z

    .line 531
    .line 532
    .line 533
    move-result v4

    .line 534
    sget-object v5, Lcom/google/protobuf/v1;->a:Ljava/nio/charset/Charset;

    .line 535
    .line 536
    if-eqz v4, :cond_0

    .line 537
    .line 538
    goto/16 :goto_2

    .line 539
    .line 540
    :pswitch_1f
    mul-int/lit8 v3, v3, 0x35

    .line 541
    .line 542
    sget-object v4, Lcom/google/protobuf/H2;->c:Lcom/google/protobuf/G2;

    .line 543
    .line 544
    invoke-virtual {v4, p1, v6, v7}, Lcom/google/protobuf/G2;->i(Ljava/lang/Object;J)I

    .line 545
    .line 546
    .line 547
    move-result v4

    .line 548
    goto/16 :goto_1

    .line 549
    .line 550
    :pswitch_20
    mul-int/lit8 v3, v3, 0x35

    .line 551
    .line 552
    sget-object v4, Lcom/google/protobuf/H2;->c:Lcom/google/protobuf/G2;

    .line 553
    .line 554
    invoke-virtual {v4, p1, v6, v7}, Lcom/google/protobuf/G2;->j(Ljava/lang/Object;J)J

    .line 555
    .line 556
    .line 557
    move-result-wide v4

    .line 558
    invoke-static {v4, v5}, Lcom/google/protobuf/v1;->b(J)I

    .line 559
    .line 560
    .line 561
    move-result v4

    .line 562
    goto/16 :goto_1

    .line 563
    .line 564
    :pswitch_21
    mul-int/lit8 v3, v3, 0x35

    .line 565
    .line 566
    sget-object v4, Lcom/google/protobuf/H2;->c:Lcom/google/protobuf/G2;

    .line 567
    .line 568
    invoke-virtual {v4, p1, v6, v7}, Lcom/google/protobuf/G2;->i(Ljava/lang/Object;J)I

    .line 569
    .line 570
    .line 571
    move-result v4

    .line 572
    goto/16 :goto_1

    .line 573
    .line 574
    :pswitch_22
    mul-int/lit8 v3, v3, 0x35

    .line 575
    .line 576
    sget-object v4, Lcom/google/protobuf/H2;->c:Lcom/google/protobuf/G2;

    .line 577
    .line 578
    invoke-virtual {v4, p1, v6, v7}, Lcom/google/protobuf/G2;->j(Ljava/lang/Object;J)J

    .line 579
    .line 580
    .line 581
    move-result-wide v4

    .line 582
    invoke-static {v4, v5}, Lcom/google/protobuf/v1;->b(J)I

    .line 583
    .line 584
    .line 585
    move-result v4

    .line 586
    goto/16 :goto_1

    .line 587
    .line 588
    :pswitch_23
    mul-int/lit8 v3, v3, 0x35

    .line 589
    .line 590
    sget-object v4, Lcom/google/protobuf/H2;->c:Lcom/google/protobuf/G2;

    .line 591
    .line 592
    invoke-virtual {v4, p1, v6, v7}, Lcom/google/protobuf/G2;->j(Ljava/lang/Object;J)J

    .line 593
    .line 594
    .line 595
    move-result-wide v4

    .line 596
    invoke-static {v4, v5}, Lcom/google/protobuf/v1;->b(J)I

    .line 597
    .line 598
    .line 599
    move-result v4

    .line 600
    goto/16 :goto_1

    .line 601
    .line 602
    :pswitch_24
    mul-int/lit8 v3, v3, 0x35

    .line 603
    .line 604
    sget-object v4, Lcom/google/protobuf/H2;->c:Lcom/google/protobuf/G2;

    .line 605
    .line 606
    invoke-virtual {v4, p1, v6, v7}, Lcom/google/protobuf/G2;->h(Ljava/lang/Object;J)F

    .line 607
    .line 608
    .line 609
    move-result v4

    .line 610
    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 611
    .line 612
    .line 613
    move-result v4

    .line 614
    goto/16 :goto_1

    .line 615
    .line 616
    :pswitch_25
    mul-int/lit8 v3, v3, 0x35

    .line 617
    .line 618
    sget-object v4, Lcom/google/protobuf/H2;->c:Lcom/google/protobuf/G2;

    .line 619
    .line 620
    invoke-virtual {v4, p1, v6, v7}, Lcom/google/protobuf/G2;->g(Ljava/lang/Object;J)D

    .line 621
    .line 622
    .line 623
    move-result-wide v4

    .line 624
    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    .line 625
    .line 626
    .line 627
    move-result-wide v4

    .line 628
    invoke-static {v4, v5}, Lcom/google/protobuf/v1;->b(J)I

    .line 629
    .line 630
    .line 631
    move-result v4

    .line 632
    goto/16 :goto_1

    .line 633
    .line 634
    :cond_2
    :goto_4
    add-int/lit8 v2, v2, 0x3

    .line 635
    .line 636
    goto/16 :goto_0

    .line 637
    .line 638
    :cond_3
    mul-int/lit8 v3, v3, 0x35

    .line 639
    .line 640
    iget-object v0, p0, Lcom/google/protobuf/T1;->m:Lcom/google/protobuf/B2;

    .line 641
    .line 642
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 643
    .line 644
    .line 645
    move-object v0, p1

    .line 646
    check-cast v0, Lcom/google/protobuf/i1;

    .line 647
    .line 648
    iget-object v0, v0, Lcom/google/protobuf/i1;->unknownFields:Lcom/google/protobuf/A2;

    .line 649
    .line 650
    invoke-virtual {v0}, Lcom/google/protobuf/A2;->hashCode()I

    .line 651
    .line 652
    .line 653
    move-result v0

    .line 654
    add-int/2addr v0, v3

    .line 655
    iget-boolean v1, p0, Lcom/google/protobuf/T1;->f:Z

    .line 656
    .line 657
    if-eqz v1, :cond_4

    .line 658
    .line 659
    mul-int/lit8 v0, v0, 0x35

    .line 660
    .line 661
    iget-object v1, p0, Lcom/google/protobuf/T1;->n:Lcom/google/protobuf/P0;

    .line 662
    .line 663
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 664
    .line 665
    .line 666
    check-cast p1, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;

    .line 667
    .line 668
    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/google/protobuf/W0;

    .line 669
    .line 670
    iget-object p1, p1, Lcom/google/protobuf/W0;->a:Lcom/google/protobuf/l2;

    .line 671
    .line 672
    invoke-virtual {p1}, Lcom/google/protobuf/l2;->k()I

    .line 673
    .line 674
    .line 675
    move-result p1

    .line 676
    add-int/2addr v0, p1

    .line 677
    :cond_4
    return v0

    .line 678
    nop

    .line 679
    :pswitch_data_0
    .packed-switch 0x0
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
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
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

.method public final k(ILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/T1;->s(ILjava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    invoke-virtual {p0, p1, p3}, Lcom/google/protobuf/T1;->s(ILjava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-ne p2, p1, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p1, 0x0

    .line 14
    :goto_0
    return p1
.end method

.method public final n(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/protobuf/B2;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/T1;->a:[I

    .line 2
    .line 3
    aget v0, v0, p2

    .line 4
    .line 5
    invoke-virtual {p0, p2}, Lcom/google/protobuf/T1;->W(I)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const v2, 0xfffff

    .line 10
    .line 11
    .line 12
    and-int/2addr v1, v2

    .line 13
    int-to-long v1, v1

    .line 14
    sget-object v3, Lcom/google/protobuf/H2;->c:Lcom/google/protobuf/G2;

    .line 15
    .line 16
    invoke-virtual {v3, p1, v1, v2}, Lcom/google/protobuf/G2;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    if-nez p1, :cond_0

    .line 21
    .line 22
    return-object p3

    .line 23
    :cond_0
    invoke-virtual {p0, p2}, Lcom/google/protobuf/T1;->o(I)Lcom/google/protobuf/q1;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    if-nez v1, :cond_1

    .line 28
    .line 29
    return-object p3

    .line 30
    :cond_1
    iget-object v2, p0, Lcom/google/protobuf/T1;->o:Lcom/google/protobuf/L1;

    .line 31
    .line 32
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    check-cast p1, Lcom/google/protobuf/K1;

    .line 36
    .line 37
    invoke-virtual {p0, p2}, Lcom/google/protobuf/T1;->p(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    check-cast p2, Lcom/google/protobuf/J1;

    .line 42
    .line 43
    iget-object p2, p2, Lcom/google/protobuf/J1;->a:Lm2/i;

    .line 44
    .line 45
    invoke-virtual {p1}, Lcom/google/protobuf/K1;->entrySet()Ljava/util/Set;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    if-eqz v2, :cond_5

    .line 58
    .line 59
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    check-cast v2, Ljava/util/Map$Entry;

    .line 64
    .line 65
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    check-cast v3, Ljava/lang/Integer;

    .line 70
    .line 71
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 72
    .line 73
    .line 74
    move-result v3

    .line 75
    invoke-interface {v1, v3}, Lcom/google/protobuf/q1;->a(I)Z

    .line 76
    .line 77
    .line 78
    move-result v3

    .line 79
    if-nez v3, :cond_2

    .line 80
    .line 81
    if-nez p3, :cond_3

    .line 82
    .line 83
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 84
    .line 85
    .line 86
    invoke-static {p5}, Lcom/google/protobuf/B2;->a(Ljava/lang/Object;)Lcom/google/protobuf/A2;

    .line 87
    .line 88
    .line 89
    move-result-object p3

    .line 90
    :cond_3
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v4

    .line 98
    invoke-static {p2, v3, v4}, Lcom/google/protobuf/J1;->a(Lm2/i;Ljava/lang/Object;Ljava/lang/Object;)I

    .line 99
    .line 100
    .line 101
    move-result v3

    .line 102
    new-array v4, v3, [B

    .line 103
    .line 104
    sget-object v5, Lcom/google/protobuf/z;->d:Ljava/util/logging/Logger;

    .line 105
    .line 106
    new-instance v5, Lcom/google/protobuf/x;

    .line 107
    .line 108
    const/4 v6, 0x0

    .line 109
    invoke-direct {v5, v4, v6, v3}, Lcom/google/protobuf/x;-><init>([BII)V

    .line 110
    .line 111
    .line 112
    :try_start_0
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v3

    .line 116
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    invoke-static {v5, p2, v3, v2}, Lcom/google/protobuf/J1;->b(Lcom/google/protobuf/z;Lm2/i;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    .line 122
    .line 123
    invoke-virtual {v5}, Lcom/google/protobuf/z;->w0()I

    .line 124
    .line 125
    .line 126
    move-result v2

    .line 127
    if-nez v2, :cond_4

    .line 128
    .line 129
    new-instance v2, Lcom/google/protobuf/q;

    .line 130
    .line 131
    invoke-direct {v2, v4}, Lcom/google/protobuf/q;-><init>([B)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 135
    .line 136
    .line 137
    move-object v3, p3

    .line 138
    check-cast v3, Lcom/google/protobuf/A2;

    .line 139
    .line 140
    shl-int/lit8 v4, v0, 0x3

    .line 141
    .line 142
    or-int/lit8 v4, v4, 0x2

    .line 143
    .line 144
    invoke-virtual {v3, v4, v2}, Lcom/google/protobuf/A2;->f(ILjava/lang/Object;)V

    .line 145
    .line 146
    .line 147
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    .line 148
    .line 149
    .line 150
    goto :goto_0

    .line 151
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 152
    .line 153
    const-string p2, "Did not write as much data as expected."

    .line 154
    .line 155
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    throw p1

    .line 159
    :catch_0
    move-exception p1

    .line 160
    new-instance p2, Ljava/lang/RuntimeException;

    .line 161
    .line 162
    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 163
    .line 164
    .line 165
    throw p2

    .line 166
    :cond_5
    return-object p3
.end method

.method public final o(I)Lcom/google/protobuf/q1;
    .locals 1

    .line 1
    div-int/lit8 p1, p1, 0x3

    .line 2
    .line 3
    mul-int/lit8 p1, p1, 0x2

    .line 4
    .line 5
    add-int/lit8 p1, p1, 0x1

    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/protobuf/T1;->b:[Ljava/lang/Object;

    .line 8
    .line 9
    aget-object p1, v0, p1

    .line 10
    .line 11
    check-cast p1, Lcom/google/protobuf/q1;

    .line 12
    .line 13
    return-object p1
.end method

.method public final p(I)Ljava/lang/Object;
    .locals 1

    .line 1
    div-int/lit8 p1, p1, 0x3

    .line 2
    .line 3
    mul-int/lit8 p1, p1, 0x2

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/protobuf/T1;->b:[Ljava/lang/Object;

    .line 6
    .line 7
    aget-object p1, v0, p1

    .line 8
    .line 9
    return-object p1
.end method

.method public final q(I)Lcom/google/protobuf/j2;
    .locals 3

    .line 1
    div-int/lit8 p1, p1, 0x3

    .line 2
    .line 3
    mul-int/lit8 p1, p1, 0x2

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/protobuf/T1;->b:[Ljava/lang/Object;

    .line 6
    .line 7
    aget-object v1, v0, p1

    .line 8
    .line 9
    check-cast v1, Lcom/google/protobuf/j2;

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    return-object v1

    .line 14
    :cond_0
    sget-object v1, Lcom/google/protobuf/g2;->c:Lcom/google/protobuf/g2;

    .line 15
    .line 16
    add-int/lit8 v2, p1, 0x1

    .line 17
    .line 18
    aget-object v2, v0, v2

    .line 19
    .line 20
    check-cast v2, Ljava/lang/Class;

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Lcom/google/protobuf/g2;->a(Ljava/lang/Class;)Lcom/google/protobuf/j2;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    aput-object v1, v0, p1

    .line 27
    .line 28
    return-object v1
.end method

.method public final s(ILjava/lang/Object;)Z
    .locals 9

    .line 1
    add-int/lit8 v0, p1, 0x2

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/protobuf/T1;->a:[I

    .line 4
    .line 5
    aget v0, v1, v0

    .line 6
    .line 7
    const v1, 0xfffff

    .line 8
    .line 9
    .line 10
    and-int v2, v0, v1

    .line 11
    .line 12
    int-to-long v2, v2

    .line 13
    const-wide/32 v4, 0xfffff

    .line 14
    .line 15
    .line 16
    const/4 v6, 0x0

    .line 17
    const/4 v7, 0x1

    .line 18
    cmp-long v8, v2, v4

    .line 19
    .line 20
    if-nez v8, :cond_11

    .line 21
    .line 22
    invoke-virtual {p0, p1}, Lcom/google/protobuf/T1;->W(I)I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    and-int v0, p1, v1

    .line 27
    .line 28
    int-to-long v0, v0

    .line 29
    invoke-static {p1}, Lcom/google/protobuf/T1;->V(I)I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    const-wide/16 v2, 0x0

    .line 34
    .line 35
    packed-switch p1, :pswitch_data_0

    .line 36
    .line 37
    .line 38
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 39
    .line 40
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 41
    .line 42
    .line 43
    throw p1

    .line 44
    :pswitch_0
    sget-object p1, Lcom/google/protobuf/H2;->c:Lcom/google/protobuf/G2;

    .line 45
    .line 46
    invoke-virtual {p1, p2, v0, v1}, Lcom/google/protobuf/G2;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    if-eqz p1, :cond_0

    .line 51
    .line 52
    const/4 v6, 0x1

    .line 53
    :cond_0
    return v6

    .line 54
    :pswitch_1
    sget-object p1, Lcom/google/protobuf/H2;->c:Lcom/google/protobuf/G2;

    .line 55
    .line 56
    invoke-virtual {p1, p2, v0, v1}, Lcom/google/protobuf/G2;->j(Ljava/lang/Object;J)J

    .line 57
    .line 58
    .line 59
    move-result-wide p1

    .line 60
    cmp-long v0, p1, v2

    .line 61
    .line 62
    if-eqz v0, :cond_1

    .line 63
    .line 64
    const/4 v6, 0x1

    .line 65
    :cond_1
    return v6

    .line 66
    :pswitch_2
    sget-object p1, Lcom/google/protobuf/H2;->c:Lcom/google/protobuf/G2;

    .line 67
    .line 68
    invoke-virtual {p1, p2, v0, v1}, Lcom/google/protobuf/G2;->i(Ljava/lang/Object;J)I

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    if-eqz p1, :cond_2

    .line 73
    .line 74
    const/4 v6, 0x1

    .line 75
    :cond_2
    return v6

    .line 76
    :pswitch_3
    sget-object p1, Lcom/google/protobuf/H2;->c:Lcom/google/protobuf/G2;

    .line 77
    .line 78
    invoke-virtual {p1, p2, v0, v1}, Lcom/google/protobuf/G2;->j(Ljava/lang/Object;J)J

    .line 79
    .line 80
    .line 81
    move-result-wide p1

    .line 82
    cmp-long v0, p1, v2

    .line 83
    .line 84
    if-eqz v0, :cond_3

    .line 85
    .line 86
    const/4 v6, 0x1

    .line 87
    :cond_3
    return v6

    .line 88
    :pswitch_4
    sget-object p1, Lcom/google/protobuf/H2;->c:Lcom/google/protobuf/G2;

    .line 89
    .line 90
    invoke-virtual {p1, p2, v0, v1}, Lcom/google/protobuf/G2;->i(Ljava/lang/Object;J)I

    .line 91
    .line 92
    .line 93
    move-result p1

    .line 94
    if-eqz p1, :cond_4

    .line 95
    .line 96
    const/4 v6, 0x1

    .line 97
    :cond_4
    return v6

    .line 98
    :pswitch_5
    sget-object p1, Lcom/google/protobuf/H2;->c:Lcom/google/protobuf/G2;

    .line 99
    .line 100
    invoke-virtual {p1, p2, v0, v1}, Lcom/google/protobuf/G2;->i(Ljava/lang/Object;J)I

    .line 101
    .line 102
    .line 103
    move-result p1

    .line 104
    if-eqz p1, :cond_5

    .line 105
    .line 106
    const/4 v6, 0x1

    .line 107
    :cond_5
    return v6

    .line 108
    :pswitch_6
    sget-object p1, Lcom/google/protobuf/H2;->c:Lcom/google/protobuf/G2;

    .line 109
    .line 110
    invoke-virtual {p1, p2, v0, v1}, Lcom/google/protobuf/G2;->i(Ljava/lang/Object;J)I

    .line 111
    .line 112
    .line 113
    move-result p1

    .line 114
    if-eqz p1, :cond_6

    .line 115
    .line 116
    const/4 v6, 0x1

    .line 117
    :cond_6
    return v6

    .line 118
    :pswitch_7
    sget-object p1, Lcom/google/protobuf/r;->H:Lcom/google/protobuf/q;

    .line 119
    .line 120
    sget-object v2, Lcom/google/protobuf/H2;->c:Lcom/google/protobuf/G2;

    .line 121
    .line 122
    invoke-virtual {v2, p2, v0, v1}, Lcom/google/protobuf/G2;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object p2

    .line 126
    invoke-virtual {p1, p2}, Lcom/google/protobuf/q;->equals(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    move-result p1

    .line 130
    xor-int/2addr p1, v7

    .line 131
    return p1

    .line 132
    :pswitch_8
    sget-object p1, Lcom/google/protobuf/H2;->c:Lcom/google/protobuf/G2;

    .line 133
    .line 134
    invoke-virtual {p1, p2, v0, v1}, Lcom/google/protobuf/G2;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    if-eqz p1, :cond_7

    .line 139
    .line 140
    const/4 v6, 0x1

    .line 141
    :cond_7
    return v6

    .line 142
    :pswitch_9
    sget-object p1, Lcom/google/protobuf/H2;->c:Lcom/google/protobuf/G2;

    .line 143
    .line 144
    invoke-virtual {p1, p2, v0, v1}, Lcom/google/protobuf/G2;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    instance-of p2, p1, Ljava/lang/String;

    .line 149
    .line 150
    if-eqz p2, :cond_8

    .line 151
    .line 152
    check-cast p1, Ljava/lang/String;

    .line 153
    .line 154
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 155
    .line 156
    .line 157
    move-result p1

    .line 158
    xor-int/2addr p1, v7

    .line 159
    return p1

    .line 160
    :cond_8
    instance-of p2, p1, Lcom/google/protobuf/r;

    .line 161
    .line 162
    if-eqz p2, :cond_9

    .line 163
    .line 164
    sget-object p2, Lcom/google/protobuf/r;->H:Lcom/google/protobuf/q;

    .line 165
    .line 166
    invoke-virtual {p2, p1}, Lcom/google/protobuf/q;->equals(Ljava/lang/Object;)Z

    .line 167
    .line 168
    .line 169
    move-result p1

    .line 170
    xor-int/2addr p1, v7

    .line 171
    return p1

    .line 172
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 173
    .line 174
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 175
    .line 176
    .line 177
    throw p1

    .line 178
    :pswitch_a
    sget-object p1, Lcom/google/protobuf/H2;->c:Lcom/google/protobuf/G2;

    .line 179
    .line 180
    invoke-virtual {p1, p2, v0, v1}, Lcom/google/protobuf/G2;->d(Ljava/lang/Object;J)Z

    .line 181
    .line 182
    .line 183
    move-result p1

    .line 184
    return p1

    .line 185
    :pswitch_b
    sget-object p1, Lcom/google/protobuf/H2;->c:Lcom/google/protobuf/G2;

    .line 186
    .line 187
    invoke-virtual {p1, p2, v0, v1}, Lcom/google/protobuf/G2;->i(Ljava/lang/Object;J)I

    .line 188
    .line 189
    .line 190
    move-result p1

    .line 191
    if-eqz p1, :cond_a

    .line 192
    .line 193
    const/4 v6, 0x1

    .line 194
    :cond_a
    return v6

    .line 195
    :pswitch_c
    sget-object p1, Lcom/google/protobuf/H2;->c:Lcom/google/protobuf/G2;

    .line 196
    .line 197
    invoke-virtual {p1, p2, v0, v1}, Lcom/google/protobuf/G2;->j(Ljava/lang/Object;J)J

    .line 198
    .line 199
    .line 200
    move-result-wide p1

    .line 201
    cmp-long v0, p1, v2

    .line 202
    .line 203
    if-eqz v0, :cond_b

    .line 204
    .line 205
    const/4 v6, 0x1

    .line 206
    :cond_b
    return v6

    .line 207
    :pswitch_d
    sget-object p1, Lcom/google/protobuf/H2;->c:Lcom/google/protobuf/G2;

    .line 208
    .line 209
    invoke-virtual {p1, p2, v0, v1}, Lcom/google/protobuf/G2;->i(Ljava/lang/Object;J)I

    .line 210
    .line 211
    .line 212
    move-result p1

    .line 213
    if-eqz p1, :cond_c

    .line 214
    .line 215
    const/4 v6, 0x1

    .line 216
    :cond_c
    return v6

    .line 217
    :pswitch_e
    sget-object p1, Lcom/google/protobuf/H2;->c:Lcom/google/protobuf/G2;

    .line 218
    .line 219
    invoke-virtual {p1, p2, v0, v1}, Lcom/google/protobuf/G2;->j(Ljava/lang/Object;J)J

    .line 220
    .line 221
    .line 222
    move-result-wide p1

    .line 223
    cmp-long v0, p1, v2

    .line 224
    .line 225
    if-eqz v0, :cond_d

    .line 226
    .line 227
    const/4 v6, 0x1

    .line 228
    :cond_d
    return v6

    .line 229
    :pswitch_f
    sget-object p1, Lcom/google/protobuf/H2;->c:Lcom/google/protobuf/G2;

    .line 230
    .line 231
    invoke-virtual {p1, p2, v0, v1}, Lcom/google/protobuf/G2;->j(Ljava/lang/Object;J)J

    .line 232
    .line 233
    .line 234
    move-result-wide p1

    .line 235
    cmp-long v0, p1, v2

    .line 236
    .line 237
    if-eqz v0, :cond_e

    .line 238
    .line 239
    const/4 v6, 0x1

    .line 240
    :cond_e
    return v6

    .line 241
    :pswitch_10
    sget-object p1, Lcom/google/protobuf/H2;->c:Lcom/google/protobuf/G2;

    .line 242
    .line 243
    invoke-virtual {p1, p2, v0, v1}, Lcom/google/protobuf/G2;->h(Ljava/lang/Object;J)F

    .line 244
    .line 245
    .line 246
    move-result p1

    .line 247
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 248
    .line 249
    .line 250
    move-result p1

    .line 251
    if-eqz p1, :cond_f

    .line 252
    .line 253
    const/4 v6, 0x1

    .line 254
    :cond_f
    return v6

    .line 255
    :pswitch_11
    sget-object p1, Lcom/google/protobuf/H2;->c:Lcom/google/protobuf/G2;

    .line 256
    .line 257
    invoke-virtual {p1, p2, v0, v1}, Lcom/google/protobuf/G2;->g(Ljava/lang/Object;J)D

    .line 258
    .line 259
    .line 260
    move-result-wide p1

    .line 261
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    .line 262
    .line 263
    .line 264
    move-result-wide p1

    .line 265
    cmp-long v0, p1, v2

    .line 266
    .line 267
    if-eqz v0, :cond_10

    .line 268
    .line 269
    const/4 v6, 0x1

    .line 270
    :cond_10
    return v6

    .line 271
    :cond_11
    ushr-int/lit8 p1, v0, 0x14

    .line 272
    .line 273
    shl-int p1, v7, p1

    .line 274
    .line 275
    sget-object v0, Lcom/google/protobuf/H2;->c:Lcom/google/protobuf/G2;

    .line 276
    .line 277
    invoke-virtual {v0, p2, v2, v3}, Lcom/google/protobuf/G2;->i(Ljava/lang/Object;J)I

    .line 278
    .line 279
    .line 280
    move-result p2

    .line 281
    and-int/2addr p1, p2

    .line 282
    if-eqz p1, :cond_12

    .line 283
    .line 284
    const/4 v6, 0x1

    .line 285
    :cond_12
    return v6

    .line 286
    nop

    .line 287
    :pswitch_data_0
    .packed-switch 0x0
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

.method public final t(Ljava/lang/Object;IIII)Z
    .locals 1

    .line 1
    const v0, 0xfffff

    .line 2
    .line 3
    .line 4
    if-ne p3, v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0, p2, p1}, Lcom/google/protobuf/T1;->s(ILjava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    return p1

    .line 11
    :cond_0
    and-int p1, p4, p5

    .line 12
    .line 13
    if-eqz p1, :cond_1

    .line 14
    .line 15
    const/4 p1, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_1
    const/4 p1, 0x0

    .line 18
    :goto_0
    return p1
.end method

.method public final v(ILjava/lang/Object;I)Z
    .locals 2

    .line 1
    add-int/lit8 p3, p3, 0x2

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/protobuf/T1;->a:[I

    .line 4
    .line 5
    aget p3, v0, p3

    .line 6
    .line 7
    const v0, 0xfffff

    .line 8
    .line 9
    .line 10
    and-int/2addr p3, v0

    .line 11
    int-to-long v0, p3

    .line 12
    sget-object p3, Lcom/google/protobuf/H2;->c:Lcom/google/protobuf/G2;

    .line 13
    .line 14
    invoke-virtual {p3, p2, v0, v1}, Lcom/google/protobuf/G2;->i(Ljava/lang/Object;J)I

    .line 15
    .line 16
    .line 17
    move-result p2

    .line 18
    if-ne p2, p1, :cond_0

    .line 19
    .line 20
    const/4 p1, 0x1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 p1, 0x0

    .line 23
    :goto_0
    return p1
.end method

.method public final w(Lcom/google/protobuf/B2;Lcom/google/protobuf/P0;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/CO;Lcom/google/protobuf/O0;)V
    .locals 20

    .line 1
    move-object/from16 v8, p0

    .line 2
    .line 3
    move-object/from16 v9, p1

    .line 4
    .line 5
    move-object/from16 v10, p3

    .line 6
    .line 7
    move-object/from16 v0, p4

    .line 8
    .line 9
    move-object/from16 v11, p5

    .line 10
    .line 11
    iget-object v12, v8, Lcom/google/protobuf/T1;->h:[I

    .line 12
    .line 13
    iget v13, v8, Lcom/google/protobuf/T1;->j:I

    .line 14
    .line 15
    iget v14, v8, Lcom/google/protobuf/T1;->i:I

    .line 16
    .line 17
    const/4 v7, 0x0

    .line 18
    const/16 v16, 0x0

    .line 19
    .line 20
    :goto_0
    :try_start_0
    invoke-virtual/range {p4 .. p4}, Lcom/google/android/gms/internal/ads/CO;->b()I

    .line 21
    .line 22
    .line 23
    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 24
    :try_start_1
    iget v1, v8, Lcom/google/protobuf/T1;->c:I

    .line 25
    .line 26
    const/4 v6, 0x0

    .line 27
    if-lt v2, v1, :cond_0

    .line 28
    .line 29
    iget v1, v8, Lcom/google/protobuf/T1;->d:I

    .line 30
    .line 31
    if-gt v2, v1, :cond_0

    .line 32
    .line 33
    invoke-virtual {v8, v2, v6}, Lcom/google/protobuf/T1;->S(II)I

    .line 34
    .line 35
    .line 36
    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    .line 37
    move v3, v1

    .line 38
    goto :goto_2

    .line 39
    :goto_1
    move-object v15, v7

    .line 40
    goto/16 :goto_7

    .line 41
    .line 42
    :cond_0
    const/4 v1, -0x1

    .line 43
    const/4 v3, -0x1

    .line 44
    :goto_2
    if-gez v3, :cond_b

    .line 45
    .line 46
    const v1, 0x7fffffff

    .line 47
    .line 48
    .line 49
    if-ne v2, v1, :cond_3

    .line 50
    .line 51
    move-object v4, v7

    .line 52
    :goto_3
    if-ge v14, v13, :cond_1

    .line 53
    .line 54
    aget v3, v12, v14

    .line 55
    .line 56
    move-object/from16 v1, p0

    .line 57
    .line 58
    move-object/from16 v2, p3

    .line 59
    .line 60
    move-object/from16 v5, p1

    .line 61
    .line 62
    move-object/from16 v6, p3

    .line 63
    .line 64
    invoke-virtual/range {v1 .. v6}, Lcom/google/protobuf/T1;->n(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/protobuf/B2;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    add-int/lit8 v14, v14, 0x1

    .line 69
    .line 70
    goto :goto_3

    .line 71
    :cond_1
    if-eqz v4, :cond_2

    .line 72
    .line 73
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 74
    .line 75
    .line 76
    invoke-static {v10, v4}, Lcom/google/protobuf/B2;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    :cond_2
    return-void

    .line 80
    :cond_3
    :try_start_2
    iget-boolean v1, v8, Lcom/google/protobuf/T1;->f:Z

    .line 81
    .line 82
    if-nez v1, :cond_4

    .line 83
    .line 84
    const/4 v3, 0x0

    .line 85
    goto :goto_4

    .line 86
    :cond_4
    iget-object v1, v8, Lcom/google/protobuf/T1;->e:Lcom/google/protobuf/Q1;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 87
    .line 88
    :try_start_3
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v11, v2, v1}, Lcom/google/protobuf/O0;->a(ILcom/google/protobuf/Q1;)Lcom/google/protobuf/g1;

    .line 92
    .line 93
    .line 94
    move-result-object v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 95
    move-object v3, v1

    .line 96
    :goto_4
    if-eqz v3, :cond_6

    .line 97
    .line 98
    if-nez v16, :cond_5

    .line 99
    .line 100
    :try_start_4
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 101
    .line 102
    .line 103
    move-object v1, v10

    .line 104
    check-cast v1, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;

    .line 105
    .line 106
    invoke-virtual {v1}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;->ensureExtensionsAreMutable()Lcom/google/protobuf/W0;

    .line 107
    .line 108
    .line 109
    move-result-object v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 110
    move-object/from16 v16, v1

    .line 111
    .line 112
    goto :goto_6

    .line 113
    :catchall_0
    move-exception v0

    .line 114
    :goto_5
    move/from16 v19, v14

    .line 115
    .line 116
    goto/16 :goto_18

    .line 117
    .line 118
    :cond_5
    :goto_6
    :try_start_5
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 119
    .line 120
    .line 121
    move-object/from16 v1, p3

    .line 122
    .line 123
    move-object/from16 v2, p4

    .line 124
    .line 125
    move-object/from16 v4, p5

    .line 126
    .line 127
    move-object/from16 v5, v16

    .line 128
    .line 129
    move-object v6, v7

    .line 130
    move-object v15, v7

    .line 131
    move-object/from16 v7, p1

    .line 132
    .line 133
    :try_start_6
    invoke-static/range {v1 .. v7}, Lcom/google/protobuf/P0;->d(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/CO;Lcom/google/protobuf/g1;Lcom/google/protobuf/O0;Lcom/google/protobuf/W0;Ljava/lang/Object;Lcom/google/protobuf/B2;)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v7

    .line 137
    goto :goto_0

    .line 138
    :catchall_1
    move-exception v0

    .line 139
    move-object v15, v7

    .line 140
    :goto_7
    move/from16 v19, v14

    .line 141
    .line 142
    :goto_8
    move-object v7, v15

    .line 143
    goto/16 :goto_18

    .line 144
    .line 145
    :cond_6
    move-object v15, v7

    .line 146
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 147
    .line 148
    .line 149
    if-nez v15, :cond_7

    .line 150
    .line 151
    invoke-static/range {p3 .. p3}, Lcom/google/protobuf/B2;->a(Ljava/lang/Object;)Lcom/google/protobuf/A2;

    .line 152
    .line 153
    .line 154
    move-result-object v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 155
    goto :goto_9

    .line 156
    :cond_7
    move-object v7, v15

    .line 157
    :goto_9
    :try_start_7
    invoke-static {v6, v0, v7}, Lcom/google/protobuf/B2;->c(ILcom/google/android/gms/internal/ads/CO;Ljava/lang/Object;)Z

    .line 158
    .line 159
    .line 160
    move-result v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 161
    if-eqz v1, :cond_8

    .line 162
    .line 163
    goto/16 :goto_0

    .line 164
    .line 165
    :cond_8
    move-object v4, v7

    .line 166
    :goto_a
    if-ge v14, v13, :cond_9

    .line 167
    .line 168
    aget v3, v12, v14

    .line 169
    .line 170
    move-object/from16 v1, p0

    .line 171
    .line 172
    move-object/from16 v2, p3

    .line 173
    .line 174
    move-object/from16 v5, p1

    .line 175
    .line 176
    move-object/from16 v6, p3

    .line 177
    .line 178
    invoke-virtual/range {v1 .. v6}, Lcom/google/protobuf/T1;->n(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/protobuf/B2;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    move-result-object v4

    .line 182
    add-int/lit8 v14, v14, 0x1

    .line 183
    .line 184
    goto :goto_a

    .line 185
    :cond_9
    if-eqz v4, :cond_a

    .line 186
    .line 187
    invoke-static {v10, v4}, Lcom/google/protobuf/B2;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 188
    .line 189
    .line 190
    :cond_a
    return-void

    .line 191
    :catchall_2
    move-exception v0

    .line 192
    move-object v15, v7

    .line 193
    goto :goto_5

    .line 194
    :cond_b
    move-object v15, v7

    .line 195
    :try_start_8
    invoke-virtual {v8, v3}, Lcom/google/protobuf/T1;->W(I)I

    .line 196
    .line 197
    .line 198
    move-result v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 199
    :try_start_9
    invoke-static {v4}, Lcom/google/protobuf/T1;->V(I)I

    .line 200
    .line 201
    .line 202
    move-result v1
    :try_end_9
    .catch Lcom/google/protobuf/w1; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 203
    const/4 v5, 0x1

    .line 204
    iget-object v7, v8, Lcom/google/protobuf/T1;->l:Lcom/google/protobuf/D1;

    .line 205
    .line 206
    packed-switch v1, :pswitch_data_0

    .line 207
    .line 208
    .line 209
    if-nez v15, :cond_c

    .line 210
    .line 211
    :try_start_a
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 212
    .line 213
    .line 214
    invoke-static/range {p3 .. p3}, Lcom/google/protobuf/B2;->a(Ljava/lang/Object;)Lcom/google/protobuf/A2;

    .line 215
    .line 216
    .line 217
    move-result-object v7
    :try_end_a
    .catch Lcom/google/protobuf/w1; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 218
    goto :goto_c

    .line 219
    :catch_0
    move/from16 v19, v14

    .line 220
    .line 221
    move-object v7, v15

    .line 222
    :goto_b
    const/4 v14, 0x0

    .line 223
    goto/16 :goto_14

    .line 224
    .line 225
    :cond_c
    move-object v7, v15

    .line 226
    :goto_c
    :try_start_b
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 227
    .line 228
    .line 229
    invoke-static {v6, v0, v7}, Lcom/google/protobuf/B2;->c(ILcom/google/android/gms/internal/ads/CO;Ljava/lang/Object;)Z

    .line 230
    .line 231
    .line 232
    move-result v1
    :try_end_b
    .catch Lcom/google/protobuf/w1; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 233
    if-nez v1, :cond_f

    .line 234
    .line 235
    move-object v4, v7

    .line 236
    :goto_d
    if-ge v14, v13, :cond_d

    .line 237
    .line 238
    aget v3, v12, v14

    .line 239
    .line 240
    move-object/from16 v1, p0

    .line 241
    .line 242
    move-object/from16 v2, p3

    .line 243
    .line 244
    move-object/from16 v5, p1

    .line 245
    .line 246
    move-object/from16 v6, p3

    .line 247
    .line 248
    invoke-virtual/range {v1 .. v6}, Lcom/google/protobuf/T1;->n(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/protobuf/B2;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    .line 250
    .line 251
    move-result-object v4

    .line 252
    add-int/lit8 v14, v14, 0x1

    .line 253
    .line 254
    goto :goto_d

    .line 255
    :cond_d
    if-eqz v4, :cond_e

    .line 256
    .line 257
    invoke-static {v10, v4}, Lcom/google/protobuf/B2;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 258
    .line 259
    .line 260
    :cond_e
    return-void

    .line 261
    :cond_f
    :goto_e
    move/from16 v19, v14

    .line 262
    .line 263
    goto/16 :goto_17

    .line 264
    .line 265
    :catch_1
    move/from16 v19, v14

    .line 266
    .line 267
    goto :goto_b

    .line 268
    :pswitch_0
    :try_start_c
    invoke-virtual {v8, v2, v10, v3}, Lcom/google/protobuf/T1;->B(ILjava/lang/Object;I)Ljava/lang/Object;

    .line 269
    .line 270
    .line 271
    move-result-object v1

    .line 272
    check-cast v1, Lcom/google/protobuf/Q1;

    .line 273
    .line 274
    invoke-virtual {v8, v3}, Lcom/google/protobuf/T1;->q(I)Lcom/google/protobuf/j2;

    .line 275
    .line 276
    .line 277
    move-result-object v4

    .line 278
    invoke-virtual {v0, v1, v4, v11}, Lcom/google/android/gms/internal/ads/CO;->c(Ljava/lang/Object;Lcom/google/protobuf/j2;Lcom/google/protobuf/O0;)V

    .line 279
    .line 280
    .line 281
    invoke-virtual {v8, v10, v2, v3, v1}, Lcom/google/protobuf/T1;->U(Ljava/lang/Object;IILjava/lang/Object;)V

    .line 282
    .line 283
    .line 284
    :goto_f
    move/from16 v19, v14

    .line 285
    .line 286
    goto/16 :goto_13

    .line 287
    .line 288
    :catchall_3
    move-exception v0

    .line 289
    goto/16 :goto_7

    .line 290
    .line 291
    :pswitch_1
    invoke-static {v4}, Lcom/google/protobuf/T1;->E(I)J

    .line 292
    .line 293
    .line 294
    move-result-wide v4

    .line 295
    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/ads/CO;->G(I)V

    .line 296
    .line 297
    .line 298
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/CO;->d:Ljava/lang/Object;

    .line 299
    .line 300
    check-cast v1, Lcom/google/protobuf/w;

    .line 301
    .line 302
    invoke-virtual {v1}, Lcom/google/protobuf/w;->C()J

    .line 303
    .line 304
    .line 305
    move-result-wide v17

    .line 306
    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 307
    .line 308
    .line 309
    move-result-object v1

    .line 310
    invoke-static {v10, v4, v5, v1}, Lcom/google/protobuf/H2;->s(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 311
    .line 312
    .line 313
    invoke-virtual {v8, v2, v10, v3}, Lcom/google/protobuf/T1;->R(ILjava/lang/Object;I)V

    .line 314
    .line 315
    .line 316
    goto :goto_f

    .line 317
    :pswitch_2
    invoke-static {v4}, Lcom/google/protobuf/T1;->E(I)J

    .line 318
    .line 319
    .line 320
    move-result-wide v4

    .line 321
    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/ads/CO;->G(I)V

    .line 322
    .line 323
    .line 324
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/CO;->d:Ljava/lang/Object;

    .line 325
    .line 326
    check-cast v1, Lcom/google/protobuf/w;

    .line 327
    .line 328
    invoke-virtual {v1}, Lcom/google/protobuf/w;->B()I

    .line 329
    .line 330
    .line 331
    move-result v1

    .line 332
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 333
    .line 334
    .line 335
    move-result-object v1

    .line 336
    invoke-static {v10, v4, v5, v1}, Lcom/google/protobuf/H2;->s(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 337
    .line 338
    .line 339
    invoke-virtual {v8, v2, v10, v3}, Lcom/google/protobuf/T1;->R(ILjava/lang/Object;I)V

    .line 340
    .line 341
    .line 342
    goto :goto_f

    .line 343
    :pswitch_3
    invoke-static {v4}, Lcom/google/protobuf/T1;->E(I)J

    .line 344
    .line 345
    .line 346
    move-result-wide v6

    .line 347
    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/CO;->G(I)V

    .line 348
    .line 349
    .line 350
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/CO;->d:Ljava/lang/Object;

    .line 351
    .line 352
    check-cast v1, Lcom/google/protobuf/w;

    .line 353
    .line 354
    invoke-virtual {v1}, Lcom/google/protobuf/w;->A()J

    .line 355
    .line 356
    .line 357
    move-result-wide v4

    .line 358
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 359
    .line 360
    .line 361
    move-result-object v1

    .line 362
    invoke-static {v10, v6, v7, v1}, Lcom/google/protobuf/H2;->s(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 363
    .line 364
    .line 365
    invoke-virtual {v8, v2, v10, v3}, Lcom/google/protobuf/T1;->R(ILjava/lang/Object;I)V

    .line 366
    .line 367
    .line 368
    goto :goto_f

    .line 369
    :pswitch_4
    invoke-static {v4}, Lcom/google/protobuf/T1;->E(I)J

    .line 370
    .line 371
    .line 372
    move-result-wide v4

    .line 373
    const/4 v1, 0x5

    .line 374
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/CO;->G(I)V

    .line 375
    .line 376
    .line 377
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/CO;->d:Ljava/lang/Object;

    .line 378
    .line 379
    check-cast v1, Lcom/google/protobuf/w;

    .line 380
    .line 381
    invoke-virtual {v1}, Lcom/google/protobuf/w;->z()I

    .line 382
    .line 383
    .line 384
    move-result v1

    .line 385
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 386
    .line 387
    .line 388
    move-result-object v1

    .line 389
    invoke-static {v10, v4, v5, v1}, Lcom/google/protobuf/H2;->s(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 390
    .line 391
    .line 392
    invoke-virtual {v8, v2, v10, v3}, Lcom/google/protobuf/T1;->R(ILjava/lang/Object;I)V

    .line 393
    .line 394
    .line 395
    goto :goto_f

    .line 396
    :pswitch_5
    const/4 v1, 0x0

    .line 397
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/CO;->G(I)V

    .line 398
    .line 399
    .line 400
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/CO;->d:Ljava/lang/Object;

    .line 401
    .line 402
    check-cast v1, Lcom/google/protobuf/w;

    .line 403
    .line 404
    invoke-virtual {v1}, Lcom/google/protobuf/w;->p()I

    .line 405
    .line 406
    .line 407
    move-result v1

    .line 408
    invoke-virtual {v8, v3}, Lcom/google/protobuf/T1;->o(I)Lcom/google/protobuf/q1;

    .line 409
    .line 410
    .line 411
    move-result-object v5

    .line 412
    if-eqz v5, :cond_11

    .line 413
    .line 414
    invoke-interface {v5, v1}, Lcom/google/protobuf/q1;->a(I)Z

    .line 415
    .line 416
    .line 417
    move-result v5

    .line 418
    if-eqz v5, :cond_10

    .line 419
    .line 420
    goto :goto_10

    .line 421
    :cond_10
    invoke-static {v10, v2, v1, v15, v9}, Lcom/google/protobuf/k2;->D(Ljava/lang/Object;IILjava/lang/Object;Lcom/google/protobuf/B2;)Ljava/lang/Object;

    .line 422
    .line 423
    .line 424
    move-result-object v7

    .line 425
    goto/16 :goto_e

    .line 426
    .line 427
    :cond_11
    :goto_10
    invoke-static {v4}, Lcom/google/protobuf/T1;->E(I)J

    .line 428
    .line 429
    .line 430
    move-result-wide v4

    .line 431
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 432
    .line 433
    .line 434
    move-result-object v1

    .line 435
    invoke-static {v10, v4, v5, v1}, Lcom/google/protobuf/H2;->s(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 436
    .line 437
    .line 438
    invoke-virtual {v8, v2, v10, v3}, Lcom/google/protobuf/T1;->R(ILjava/lang/Object;I)V

    .line 439
    .line 440
    .line 441
    goto/16 :goto_f

    .line 442
    .line 443
    :pswitch_6
    invoke-static {v4}, Lcom/google/protobuf/T1;->E(I)J

    .line 444
    .line 445
    .line 446
    move-result-wide v4

    .line 447
    invoke-virtual/range {p4 .. p4}, Lcom/google/android/gms/internal/ads/CO;->A()I

    .line 448
    .line 449
    .line 450
    move-result v1

    .line 451
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 452
    .line 453
    .line 454
    move-result-object v1

    .line 455
    invoke-static {v10, v4, v5, v1}, Lcom/google/protobuf/H2;->s(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 456
    .line 457
    .line 458
    invoke-virtual {v8, v2, v10, v3}, Lcom/google/protobuf/T1;->R(ILjava/lang/Object;I)V

    .line 459
    .line 460
    .line 461
    goto/16 :goto_f

    .line 462
    .line 463
    :pswitch_7
    invoke-static {v4}, Lcom/google/protobuf/T1;->E(I)J

    .line 464
    .line 465
    .line 466
    move-result-wide v4

    .line 467
    invoke-virtual/range {p4 .. p4}, Lcom/google/android/gms/internal/ads/CO;->g()Lcom/google/protobuf/r;

    .line 468
    .line 469
    .line 470
    move-result-object v1

    .line 471
    invoke-static {v10, v4, v5, v1}, Lcom/google/protobuf/H2;->s(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 472
    .line 473
    .line 474
    invoke-virtual {v8, v2, v10, v3}, Lcom/google/protobuf/T1;->R(ILjava/lang/Object;I)V

    .line 475
    .line 476
    .line 477
    goto/16 :goto_f

    .line 478
    .line 479
    :pswitch_8
    invoke-virtual {v8, v2, v10, v3}, Lcom/google/protobuf/T1;->B(ILjava/lang/Object;I)Ljava/lang/Object;

    .line 480
    .line 481
    .line 482
    move-result-object v1

    .line 483
    check-cast v1, Lcom/google/protobuf/Q1;

    .line 484
    .line 485
    invoke-virtual {v8, v3}, Lcom/google/protobuf/T1;->q(I)Lcom/google/protobuf/j2;

    .line 486
    .line 487
    .line 488
    move-result-object v4

    .line 489
    const/4 v5, 0x2

    .line 490
    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/CO;->G(I)V

    .line 491
    .line 492
    .line 493
    invoke-virtual {v0, v1, v4, v11}, Lcom/google/android/gms/internal/ads/CO;->e(Ljava/lang/Object;Lcom/google/protobuf/j2;Lcom/google/protobuf/O0;)V

    .line 494
    .line 495
    .line 496
    invoke-virtual {v8, v10, v2, v3, v1}, Lcom/google/protobuf/T1;->U(Ljava/lang/Object;IILjava/lang/Object;)V

    .line 497
    .line 498
    .line 499
    goto/16 :goto_f

    .line 500
    .line 501
    :pswitch_9
    invoke-virtual {v8, v4, v0, v10}, Lcom/google/protobuf/T1;->N(ILcom/google/android/gms/internal/ads/CO;Ljava/lang/Object;)V

    .line 502
    .line 503
    .line 504
    invoke-virtual {v8, v2, v10, v3}, Lcom/google/protobuf/T1;->R(ILjava/lang/Object;I)V

    .line 505
    .line 506
    .line 507
    goto/16 :goto_f

    .line 508
    .line 509
    :pswitch_a
    invoke-static {v4}, Lcom/google/protobuf/T1;->E(I)J

    .line 510
    .line 511
    .line 512
    move-result-wide v4

    .line 513
    const/4 v1, 0x0

    .line 514
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/CO;->G(I)V

    .line 515
    .line 516
    .line 517
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/CO;->d:Ljava/lang/Object;

    .line 518
    .line 519
    check-cast v1, Lcom/google/protobuf/w;

    .line 520
    .line 521
    invoke-virtual {v1}, Lcom/google/protobuf/w;->m()Z

    .line 522
    .line 523
    .line 524
    move-result v1

    .line 525
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 526
    .line 527
    .line 528
    move-result-object v1

    .line 529
    invoke-static {v10, v4, v5, v1}, Lcom/google/protobuf/H2;->s(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 530
    .line 531
    .line 532
    invoke-virtual {v8, v2, v10, v3}, Lcom/google/protobuf/T1;->R(ILjava/lang/Object;I)V

    .line 533
    .line 534
    .line 535
    goto/16 :goto_f

    .line 536
    .line 537
    :pswitch_b
    invoke-static {v4}, Lcom/google/protobuf/T1;->E(I)J

    .line 538
    .line 539
    .line 540
    move-result-wide v4

    .line 541
    invoke-virtual/range {p4 .. p4}, Lcom/google/android/gms/internal/ads/CO;->l()I

    .line 542
    .line 543
    .line 544
    move-result v1

    .line 545
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 546
    .line 547
    .line 548
    move-result-object v1

    .line 549
    invoke-static {v10, v4, v5, v1}, Lcom/google/protobuf/H2;->s(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 550
    .line 551
    .line 552
    invoke-virtual {v8, v2, v10, v3}, Lcom/google/protobuf/T1;->R(ILjava/lang/Object;I)V

    .line 553
    .line 554
    .line 555
    goto/16 :goto_f

    .line 556
    .line 557
    :pswitch_c
    invoke-static {v4}, Lcom/google/protobuf/T1;->E(I)J

    .line 558
    .line 559
    .line 560
    move-result-wide v4

    .line 561
    invoke-virtual/range {p4 .. p4}, Lcom/google/android/gms/internal/ads/CO;->n()J

    .line 562
    .line 563
    .line 564
    move-result-wide v6

    .line 565
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 566
    .line 567
    .line 568
    move-result-object v1

    .line 569
    invoke-static {v10, v4, v5, v1}, Lcom/google/protobuf/H2;->s(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 570
    .line 571
    .line 572
    invoke-virtual {v8, v2, v10, v3}, Lcom/google/protobuf/T1;->R(ILjava/lang/Object;I)V

    .line 573
    .line 574
    .line 575
    goto/16 :goto_f

    .line 576
    .line 577
    :pswitch_d
    invoke-static {v4}, Lcom/google/protobuf/T1;->E(I)J

    .line 578
    .line 579
    .line 580
    move-result-wide v4

    .line 581
    invoke-virtual/range {p4 .. p4}, Lcom/google/android/gms/internal/ads/CO;->q()I

    .line 582
    .line 583
    .line 584
    move-result v1

    .line 585
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 586
    .line 587
    .line 588
    move-result-object v1

    .line 589
    invoke-static {v10, v4, v5, v1}, Lcom/google/protobuf/H2;->s(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 590
    .line 591
    .line 592
    invoke-virtual {v8, v2, v10, v3}, Lcom/google/protobuf/T1;->R(ILjava/lang/Object;I)V

    .line 593
    .line 594
    .line 595
    goto/16 :goto_f

    .line 596
    .line 597
    :pswitch_e
    invoke-static {v4}, Lcom/google/protobuf/T1;->E(I)J

    .line 598
    .line 599
    .line 600
    move-result-wide v4

    .line 601
    const/4 v6, 0x0

    .line 602
    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/ads/CO;->G(I)V

    .line 603
    .line 604
    .line 605
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/CO;->d:Ljava/lang/Object;

    .line 606
    .line 607
    check-cast v1, Lcom/google/protobuf/w;

    .line 608
    .line 609
    invoke-virtual {v1}, Lcom/google/protobuf/w;->H()J

    .line 610
    .line 611
    .line 612
    move-result-wide v17

    .line 613
    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 614
    .line 615
    .line 616
    move-result-object v1

    .line 617
    invoke-static {v10, v4, v5, v1}, Lcom/google/protobuf/H2;->s(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 618
    .line 619
    .line 620
    invoke-virtual {v8, v2, v10, v3}, Lcom/google/protobuf/T1;->R(ILjava/lang/Object;I)V

    .line 621
    .line 622
    .line 623
    goto/16 :goto_f

    .line 624
    .line 625
    :pswitch_f
    invoke-static {v4}, Lcom/google/protobuf/T1;->E(I)J

    .line 626
    .line 627
    .line 628
    move-result-wide v4

    .line 629
    invoke-virtual/range {p4 .. p4}, Lcom/google/android/gms/internal/ads/CO;->s()J

    .line 630
    .line 631
    .line 632
    move-result-wide v17

    .line 633
    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 634
    .line 635
    .line 636
    move-result-object v1

    .line 637
    invoke-static {v10, v4, v5, v1}, Lcom/google/protobuf/H2;->s(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 638
    .line 639
    .line 640
    invoke-virtual {v8, v2, v10, v3}, Lcom/google/protobuf/T1;->R(ILjava/lang/Object;I)V

    .line 641
    .line 642
    .line 643
    goto/16 :goto_f

    .line 644
    .line 645
    :pswitch_10
    invoke-static {v4}, Lcom/google/protobuf/T1;->E(I)J

    .line 646
    .line 647
    .line 648
    move-result-wide v4

    .line 649
    const/4 v1, 0x5

    .line 650
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/CO;->G(I)V

    .line 651
    .line 652
    .line 653
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/CO;->d:Ljava/lang/Object;

    .line 654
    .line 655
    check-cast v1, Lcom/google/protobuf/w;

    .line 656
    .line 657
    invoke-virtual {v1}, Lcom/google/protobuf/w;->s()F

    .line 658
    .line 659
    .line 660
    move-result v1

    .line 661
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 662
    .line 663
    .line 664
    move-result-object v1

    .line 665
    invoke-static {v10, v4, v5, v1}, Lcom/google/protobuf/H2;->s(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 666
    .line 667
    .line 668
    invoke-virtual {v8, v2, v10, v3}, Lcom/google/protobuf/T1;->R(ILjava/lang/Object;I)V

    .line 669
    .line 670
    .line 671
    goto/16 :goto_f

    .line 672
    .line 673
    :pswitch_11
    invoke-static {v4}, Lcom/google/protobuf/T1;->E(I)J

    .line 674
    .line 675
    .line 676
    move-result-wide v6

    .line 677
    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/CO;->G(I)V

    .line 678
    .line 679
    .line 680
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/CO;->d:Ljava/lang/Object;

    .line 681
    .line 682
    check-cast v1, Lcom/google/protobuf/w;

    .line 683
    .line 684
    invoke-virtual {v1}, Lcom/google/protobuf/w;->o()D

    .line 685
    .line 686
    .line 687
    move-result-wide v4

    .line 688
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 689
    .line 690
    .line 691
    move-result-object v1

    .line 692
    invoke-static {v10, v6, v7, v1}, Lcom/google/protobuf/H2;->s(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 693
    .line 694
    .line 695
    invoke-virtual {v8, v2, v10, v3}, Lcom/google/protobuf/T1;->R(ILjava/lang/Object;I)V

    .line 696
    .line 697
    .line 698
    goto/16 :goto_f

    .line 699
    .line 700
    :pswitch_12
    invoke-virtual {v8, v3}, Lcom/google/protobuf/T1;->p(I)Ljava/lang/Object;

    .line 701
    .line 702
    .line 703
    move-result-object v4

    .line 704
    move-object/from16 v1, p0

    .line 705
    .line 706
    move-object/from16 v2, p3

    .line 707
    .line 708
    move-object/from16 v5, p5

    .line 709
    .line 710
    const/4 v7, 0x0

    .line 711
    move-object/from16 v6, p4

    .line 712
    .line 713
    invoke-virtual/range {v1 .. v6}, Lcom/google/protobuf/T1;->x(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/protobuf/O0;Lcom/google/android/gms/internal/ads/CO;)V
    :try_end_c
    .catch Lcom/google/protobuf/w1; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 714
    .line 715
    .line 716
    goto/16 :goto_f

    .line 717
    .line 718
    :pswitch_13
    const/4 v7, 0x0

    .line 719
    :try_start_d
    invoke-static {v4}, Lcom/google/protobuf/T1;->E(I)J

    .line 720
    .line 721
    .line 722
    move-result-wide v4

    .line 723
    invoke-virtual {v8, v3}, Lcom/google/protobuf/T1;->q(I)Lcom/google/protobuf/j2;

    .line 724
    .line 725
    .line 726
    move-result-object v6
    :try_end_d
    .catch Lcom/google/protobuf/w1; {:try_start_d .. :try_end_d} :catch_3
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    .line 727
    move-object/from16 v1, p0

    .line 728
    .line 729
    move-object/from16 v2, p3

    .line 730
    .line 731
    move-wide v3, v4

    .line 732
    move-object/from16 v5, p4

    .line 733
    .line 734
    move/from16 v19, v14

    .line 735
    .line 736
    const/4 v14, 0x0

    .line 737
    move-object/from16 v7, p5

    .line 738
    .line 739
    :try_start_e
    invoke-virtual/range {v1 .. v7}, Lcom/google/protobuf/T1;->L(Ljava/lang/Object;JLcom/google/android/gms/internal/ads/CO;Lcom/google/protobuf/j2;Lcom/google/protobuf/O0;)V

    .line 740
    .line 741
    .line 742
    goto/16 :goto_13

    .line 743
    .line 744
    :catchall_4
    move-exception v0

    .line 745
    goto/16 :goto_8

    .line 746
    .line 747
    :catch_2
    :goto_11
    move-object v7, v15

    .line 748
    goto/16 :goto_14

    .line 749
    .line 750
    :catch_3
    move/from16 v19, v14

    .line 751
    .line 752
    const/4 v14, 0x0

    .line 753
    goto :goto_11

    .line 754
    :pswitch_14
    move/from16 v19, v14

    .line 755
    .line 756
    const/4 v14, 0x0

    .line 757
    invoke-static {v4}, Lcom/google/protobuf/T1;->E(I)J

    .line 758
    .line 759
    .line 760
    move-result-wide v1

    .line 761
    invoke-virtual {v7, v10, v1, v2}, Lcom/google/protobuf/D1;->c(Ljava/lang/Object;J)Ljava/util/List;

    .line 762
    .line 763
    .line 764
    move-result-object v1

    .line 765
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/CO;->y(Ljava/util/List;)V

    .line 766
    .line 767
    .line 768
    goto/16 :goto_13

    .line 769
    .line 770
    :pswitch_15
    move/from16 v19, v14

    .line 771
    .line 772
    const/4 v14, 0x0

    .line 773
    invoke-static {v4}, Lcom/google/protobuf/T1;->E(I)J

    .line 774
    .line 775
    .line 776
    move-result-wide v1

    .line 777
    invoke-virtual {v7, v10, v1, v2}, Lcom/google/protobuf/D1;->c(Ljava/lang/Object;J)Ljava/util/List;

    .line 778
    .line 779
    .line 780
    move-result-object v1

    .line 781
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/CO;->x(Ljava/util/List;)V

    .line 782
    .line 783
    .line 784
    goto/16 :goto_13

    .line 785
    .line 786
    :pswitch_16
    move/from16 v19, v14

    .line 787
    .line 788
    const/4 v14, 0x0

    .line 789
    invoke-static {v4}, Lcom/google/protobuf/T1;->E(I)J

    .line 790
    .line 791
    .line 792
    move-result-wide v1

    .line 793
    invoke-virtual {v7, v10, v1, v2}, Lcom/google/protobuf/D1;->c(Ljava/lang/Object;J)Ljava/util/List;

    .line 794
    .line 795
    .line 796
    move-result-object v1

    .line 797
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/CO;->w(Ljava/util/List;)V

    .line 798
    .line 799
    .line 800
    goto/16 :goto_13

    .line 801
    .line 802
    :pswitch_17
    move/from16 v19, v14

    .line 803
    .line 804
    const/4 v14, 0x0

    .line 805
    invoke-static {v4}, Lcom/google/protobuf/T1;->E(I)J

    .line 806
    .line 807
    .line 808
    move-result-wide v1

    .line 809
    invoke-virtual {v7, v10, v1, v2}, Lcom/google/protobuf/D1;->c(Ljava/lang/Object;J)Ljava/util/List;

    .line 810
    .line 811
    .line 812
    move-result-object v1

    .line 813
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/CO;->v(Ljava/util/List;)V

    .line 814
    .line 815
    .line 816
    goto/16 :goto_13

    .line 817
    .line 818
    :pswitch_18
    move/from16 v19, v14

    .line 819
    .line 820
    const/4 v14, 0x0

    .line 821
    invoke-static {v4}, Lcom/google/protobuf/T1;->E(I)J

    .line 822
    .line 823
    .line 824
    move-result-wide v4

    .line 825
    invoke-virtual {v7, v10, v4, v5}, Lcom/google/protobuf/D1;->c(Ljava/lang/Object;J)Ljava/util/List;

    .line 826
    .line 827
    .line 828
    move-result-object v4

    .line 829
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/CO;->j(Ljava/util/List;)V

    .line 830
    .line 831
    .line 832
    invoke-virtual {v8, v3}, Lcom/google/protobuf/T1;->o(I)Lcom/google/protobuf/q1;

    .line 833
    .line 834
    .line 835
    move-result-object v5

    .line 836
    move-object/from16 v1, p3

    .line 837
    .line 838
    move-object v3, v4

    .line 839
    move-object v4, v5

    .line 840
    move-object v5, v15

    .line 841
    move-object/from16 v6, p1

    .line 842
    .line 843
    invoke-static/range {v1 .. v6}, Lcom/google/protobuf/k2;->A(Ljava/lang/Object;ILjava/util/List;Lcom/google/protobuf/q1;Ljava/lang/Object;Lcom/google/protobuf/B2;)Ljava/lang/Object;

    .line 844
    .line 845
    .line 846
    move-result-object v7

    .line 847
    goto/16 :goto_17

    .line 848
    .line 849
    :pswitch_19
    move/from16 v19, v14

    .line 850
    .line 851
    const/4 v14, 0x0

    .line 852
    invoke-static {v4}, Lcom/google/protobuf/T1;->E(I)J

    .line 853
    .line 854
    .line 855
    move-result-wide v1

    .line 856
    invoke-virtual {v7, v10, v1, v2}, Lcom/google/protobuf/D1;->c(Ljava/lang/Object;J)Ljava/util/List;

    .line 857
    .line 858
    .line 859
    move-result-object v1

    .line 860
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/CO;->B(Ljava/util/List;)V

    .line 861
    .line 862
    .line 863
    goto/16 :goto_13

    .line 864
    .line 865
    :pswitch_1a
    move/from16 v19, v14

    .line 866
    .line 867
    const/4 v14, 0x0

    .line 868
    invoke-static {v4}, Lcom/google/protobuf/T1;->E(I)J

    .line 869
    .line 870
    .line 871
    move-result-wide v1

    .line 872
    invoke-virtual {v7, v10, v1, v2}, Lcom/google/protobuf/D1;->c(Ljava/lang/Object;J)Ljava/util/List;

    .line 873
    .line 874
    .line 875
    move-result-object v1

    .line 876
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/CO;->f(Ljava/util/List;)V

    .line 877
    .line 878
    .line 879
    goto/16 :goto_13

    .line 880
    .line 881
    :pswitch_1b
    move/from16 v19, v14

    .line 882
    .line 883
    const/4 v14, 0x0

    .line 884
    invoke-static {v4}, Lcom/google/protobuf/T1;->E(I)J

    .line 885
    .line 886
    .line 887
    move-result-wide v1

    .line 888
    invoke-virtual {v7, v10, v1, v2}, Lcom/google/protobuf/D1;->c(Ljava/lang/Object;J)Ljava/util/List;

    .line 889
    .line 890
    .line 891
    move-result-object v1

    .line 892
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/CO;->m(Ljava/util/List;)V

    .line 893
    .line 894
    .line 895
    goto/16 :goto_13

    .line 896
    .line 897
    :pswitch_1c
    move/from16 v19, v14

    .line 898
    .line 899
    const/4 v14, 0x0

    .line 900
    invoke-static {v4}, Lcom/google/protobuf/T1;->E(I)J

    .line 901
    .line 902
    .line 903
    move-result-wide v1

    .line 904
    invoke-virtual {v7, v10, v1, v2}, Lcom/google/protobuf/D1;->c(Ljava/lang/Object;J)Ljava/util/List;

    .line 905
    .line 906
    .line 907
    move-result-object v1

    .line 908
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/CO;->o(Ljava/util/List;)V

    .line 909
    .line 910
    .line 911
    goto/16 :goto_13

    .line 912
    .line 913
    :pswitch_1d
    move/from16 v19, v14

    .line 914
    .line 915
    const/4 v14, 0x0

    .line 916
    invoke-static {v4}, Lcom/google/protobuf/T1;->E(I)J

    .line 917
    .line 918
    .line 919
    move-result-wide v1

    .line 920
    invoke-virtual {v7, v10, v1, v2}, Lcom/google/protobuf/D1;->c(Ljava/lang/Object;J)Ljava/util/List;

    .line 921
    .line 922
    .line 923
    move-result-object v1

    .line 924
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/CO;->r(Ljava/util/List;)V

    .line 925
    .line 926
    .line 927
    goto/16 :goto_13

    .line 928
    .line 929
    :pswitch_1e
    move/from16 v19, v14

    .line 930
    .line 931
    const/4 v14, 0x0

    .line 932
    invoke-static {v4}, Lcom/google/protobuf/T1;->E(I)J

    .line 933
    .line 934
    .line 935
    move-result-wide v1

    .line 936
    invoke-virtual {v7, v10, v1, v2}, Lcom/google/protobuf/D1;->c(Ljava/lang/Object;J)Ljava/util/List;

    .line 937
    .line 938
    .line 939
    move-result-object v1

    .line 940
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/CO;->C(Ljava/util/List;)V

    .line 941
    .line 942
    .line 943
    goto/16 :goto_13

    .line 944
    .line 945
    :pswitch_1f
    move/from16 v19, v14

    .line 946
    .line 947
    const/4 v14, 0x0

    .line 948
    invoke-static {v4}, Lcom/google/protobuf/T1;->E(I)J

    .line 949
    .line 950
    .line 951
    move-result-wide v1

    .line 952
    invoke-virtual {v7, v10, v1, v2}, Lcom/google/protobuf/D1;->c(Ljava/lang/Object;J)Ljava/util/List;

    .line 953
    .line 954
    .line 955
    move-result-object v1

    .line 956
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/CO;->t(Ljava/util/List;)V

    .line 957
    .line 958
    .line 959
    goto/16 :goto_13

    .line 960
    .line 961
    :pswitch_20
    move/from16 v19, v14

    .line 962
    .line 963
    const/4 v14, 0x0

    .line 964
    invoke-static {v4}, Lcom/google/protobuf/T1;->E(I)J

    .line 965
    .line 966
    .line 967
    move-result-wide v1

    .line 968
    invoke-virtual {v7, v10, v1, v2}, Lcom/google/protobuf/D1;->c(Ljava/lang/Object;J)Ljava/util/List;

    .line 969
    .line 970
    .line 971
    move-result-object v1

    .line 972
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/CO;->p(Ljava/util/List;)V

    .line 973
    .line 974
    .line 975
    goto/16 :goto_13

    .line 976
    .line 977
    :pswitch_21
    move/from16 v19, v14

    .line 978
    .line 979
    const/4 v14, 0x0

    .line 980
    invoke-static {v4}, Lcom/google/protobuf/T1;->E(I)J

    .line 981
    .line 982
    .line 983
    move-result-wide v1

    .line 984
    invoke-virtual {v7, v10, v1, v2}, Lcom/google/protobuf/D1;->c(Ljava/lang/Object;J)Ljava/util/List;

    .line 985
    .line 986
    .line 987
    move-result-object v1

    .line 988
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/CO;->i(Ljava/util/List;)V

    .line 989
    .line 990
    .line 991
    goto/16 :goto_13

    .line 992
    .line 993
    :pswitch_22
    move/from16 v19, v14

    .line 994
    .line 995
    const/4 v14, 0x0

    .line 996
    invoke-static {v4}, Lcom/google/protobuf/T1;->E(I)J

    .line 997
    .line 998
    .line 999
    move-result-wide v1

    .line 1000
    invoke-virtual {v7, v10, v1, v2}, Lcom/google/protobuf/D1;->c(Ljava/lang/Object;J)Ljava/util/List;

    .line 1001
    .line 1002
    .line 1003
    move-result-object v1

    .line 1004
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/CO;->y(Ljava/util/List;)V

    .line 1005
    .line 1006
    .line 1007
    goto/16 :goto_13

    .line 1008
    .line 1009
    :pswitch_23
    move/from16 v19, v14

    .line 1010
    .line 1011
    const/4 v14, 0x0

    .line 1012
    invoke-static {v4}, Lcom/google/protobuf/T1;->E(I)J

    .line 1013
    .line 1014
    .line 1015
    move-result-wide v1

    .line 1016
    invoke-virtual {v7, v10, v1, v2}, Lcom/google/protobuf/D1;->c(Ljava/lang/Object;J)Ljava/util/List;

    .line 1017
    .line 1018
    .line 1019
    move-result-object v1

    .line 1020
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/CO;->x(Ljava/util/List;)V

    .line 1021
    .line 1022
    .line 1023
    goto/16 :goto_13

    .line 1024
    .line 1025
    :pswitch_24
    move/from16 v19, v14

    .line 1026
    .line 1027
    const/4 v14, 0x0

    .line 1028
    invoke-static {v4}, Lcom/google/protobuf/T1;->E(I)J

    .line 1029
    .line 1030
    .line 1031
    move-result-wide v1

    .line 1032
    invoke-virtual {v7, v10, v1, v2}, Lcom/google/protobuf/D1;->c(Ljava/lang/Object;J)Ljava/util/List;

    .line 1033
    .line 1034
    .line 1035
    move-result-object v1

    .line 1036
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/CO;->w(Ljava/util/List;)V

    .line 1037
    .line 1038
    .line 1039
    goto/16 :goto_13

    .line 1040
    .line 1041
    :pswitch_25
    move/from16 v19, v14

    .line 1042
    .line 1043
    const/4 v14, 0x0

    .line 1044
    invoke-static {v4}, Lcom/google/protobuf/T1;->E(I)J

    .line 1045
    .line 1046
    .line 1047
    move-result-wide v1

    .line 1048
    invoke-virtual {v7, v10, v1, v2}, Lcom/google/protobuf/D1;->c(Ljava/lang/Object;J)Ljava/util/List;

    .line 1049
    .line 1050
    .line 1051
    move-result-object v1

    .line 1052
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/CO;->v(Ljava/util/List;)V

    .line 1053
    .line 1054
    .line 1055
    goto/16 :goto_13

    .line 1056
    .line 1057
    :pswitch_26
    move/from16 v19, v14

    .line 1058
    .line 1059
    const/4 v14, 0x0

    .line 1060
    invoke-static {v4}, Lcom/google/protobuf/T1;->E(I)J

    .line 1061
    .line 1062
    .line 1063
    move-result-wide v4

    .line 1064
    invoke-virtual {v7, v10, v4, v5}, Lcom/google/protobuf/D1;->c(Ljava/lang/Object;J)Ljava/util/List;

    .line 1065
    .line 1066
    .line 1067
    move-result-object v4

    .line 1068
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/CO;->j(Ljava/util/List;)V

    .line 1069
    .line 1070
    .line 1071
    invoke-virtual {v8, v3}, Lcom/google/protobuf/T1;->o(I)Lcom/google/protobuf/q1;

    .line 1072
    .line 1073
    .line 1074
    move-result-object v5

    .line 1075
    move-object/from16 v1, p3

    .line 1076
    .line 1077
    move-object v3, v4

    .line 1078
    move-object v4, v5

    .line 1079
    move-object v5, v15

    .line 1080
    move-object/from16 v6, p1

    .line 1081
    .line 1082
    invoke-static/range {v1 .. v6}, Lcom/google/protobuf/k2;->A(Ljava/lang/Object;ILjava/util/List;Lcom/google/protobuf/q1;Ljava/lang/Object;Lcom/google/protobuf/B2;)Ljava/lang/Object;

    .line 1083
    .line 1084
    .line 1085
    move-result-object v7

    .line 1086
    goto/16 :goto_17

    .line 1087
    .line 1088
    :pswitch_27
    move/from16 v19, v14

    .line 1089
    .line 1090
    const/4 v14, 0x0

    .line 1091
    invoke-static {v4}, Lcom/google/protobuf/T1;->E(I)J

    .line 1092
    .line 1093
    .line 1094
    move-result-wide v1

    .line 1095
    invoke-virtual {v7, v10, v1, v2}, Lcom/google/protobuf/D1;->c(Ljava/lang/Object;J)Ljava/util/List;

    .line 1096
    .line 1097
    .line 1098
    move-result-object v1

    .line 1099
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/CO;->B(Ljava/util/List;)V

    .line 1100
    .line 1101
    .line 1102
    goto/16 :goto_13

    .line 1103
    .line 1104
    :pswitch_28
    move/from16 v19, v14

    .line 1105
    .line 1106
    const/4 v14, 0x0

    .line 1107
    invoke-static {v4}, Lcom/google/protobuf/T1;->E(I)J

    .line 1108
    .line 1109
    .line 1110
    move-result-wide v1

    .line 1111
    invoke-virtual {v7, v10, v1, v2}, Lcom/google/protobuf/D1;->c(Ljava/lang/Object;J)Ljava/util/List;

    .line 1112
    .line 1113
    .line 1114
    move-result-object v1

    .line 1115
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/CO;->h(Ljava/util/List;)V

    .line 1116
    .line 1117
    .line 1118
    goto/16 :goto_13

    .line 1119
    .line 1120
    :pswitch_29
    move/from16 v19, v14

    .line 1121
    .line 1122
    const/4 v14, 0x0

    .line 1123
    invoke-virtual {v8, v3}, Lcom/google/protobuf/T1;->q(I)Lcom/google/protobuf/j2;

    .line 1124
    .line 1125
    .line 1126
    move-result-object v5

    .line 1127
    move-object/from16 v1, p0

    .line 1128
    .line 1129
    move-object/from16 v2, p3

    .line 1130
    .line 1131
    move v3, v4

    .line 1132
    move-object/from16 v4, p4

    .line 1133
    .line 1134
    move-object/from16 v6, p5

    .line 1135
    .line 1136
    invoke-virtual/range {v1 .. v6}, Lcom/google/protobuf/T1;->M(Ljava/lang/Object;ILcom/google/android/gms/internal/ads/CO;Lcom/google/protobuf/j2;Lcom/google/protobuf/O0;)V

    .line 1137
    .line 1138
    .line 1139
    goto/16 :goto_13

    .line 1140
    .line 1141
    :pswitch_2a
    move/from16 v19, v14

    .line 1142
    .line 1143
    const/4 v14, 0x0

    .line 1144
    invoke-virtual {v8, v4, v0, v10}, Lcom/google/protobuf/T1;->O(ILcom/google/android/gms/internal/ads/CO;Ljava/lang/Object;)V

    .line 1145
    .line 1146
    .line 1147
    goto/16 :goto_13

    .line 1148
    .line 1149
    :pswitch_2b
    move/from16 v19, v14

    .line 1150
    .line 1151
    const/4 v14, 0x0

    .line 1152
    invoke-static {v4}, Lcom/google/protobuf/T1;->E(I)J

    .line 1153
    .line 1154
    .line 1155
    move-result-wide v1

    .line 1156
    invoke-virtual {v7, v10, v1, v2}, Lcom/google/protobuf/D1;->c(Ljava/lang/Object;J)Ljava/util/List;

    .line 1157
    .line 1158
    .line 1159
    move-result-object v1

    .line 1160
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/CO;->f(Ljava/util/List;)V

    .line 1161
    .line 1162
    .line 1163
    goto/16 :goto_13

    .line 1164
    .line 1165
    :pswitch_2c
    move/from16 v19, v14

    .line 1166
    .line 1167
    const/4 v14, 0x0

    .line 1168
    invoke-static {v4}, Lcom/google/protobuf/T1;->E(I)J

    .line 1169
    .line 1170
    .line 1171
    move-result-wide v1

    .line 1172
    invoke-virtual {v7, v10, v1, v2}, Lcom/google/protobuf/D1;->c(Ljava/lang/Object;J)Ljava/util/List;

    .line 1173
    .line 1174
    .line 1175
    move-result-object v1

    .line 1176
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/CO;->m(Ljava/util/List;)V

    .line 1177
    .line 1178
    .line 1179
    goto/16 :goto_13

    .line 1180
    .line 1181
    :pswitch_2d
    move/from16 v19, v14

    .line 1182
    .line 1183
    const/4 v14, 0x0

    .line 1184
    invoke-static {v4}, Lcom/google/protobuf/T1;->E(I)J

    .line 1185
    .line 1186
    .line 1187
    move-result-wide v1

    .line 1188
    invoke-virtual {v7, v10, v1, v2}, Lcom/google/protobuf/D1;->c(Ljava/lang/Object;J)Ljava/util/List;

    .line 1189
    .line 1190
    .line 1191
    move-result-object v1

    .line 1192
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/CO;->o(Ljava/util/List;)V

    .line 1193
    .line 1194
    .line 1195
    goto/16 :goto_13

    .line 1196
    .line 1197
    :pswitch_2e
    move/from16 v19, v14

    .line 1198
    .line 1199
    const/4 v14, 0x0

    .line 1200
    invoke-static {v4}, Lcom/google/protobuf/T1;->E(I)J

    .line 1201
    .line 1202
    .line 1203
    move-result-wide v1

    .line 1204
    invoke-virtual {v7, v10, v1, v2}, Lcom/google/protobuf/D1;->c(Ljava/lang/Object;J)Ljava/util/List;

    .line 1205
    .line 1206
    .line 1207
    move-result-object v1

    .line 1208
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/CO;->r(Ljava/util/List;)V

    .line 1209
    .line 1210
    .line 1211
    goto/16 :goto_13

    .line 1212
    .line 1213
    :pswitch_2f
    move/from16 v19, v14

    .line 1214
    .line 1215
    const/4 v14, 0x0

    .line 1216
    invoke-static {v4}, Lcom/google/protobuf/T1;->E(I)J

    .line 1217
    .line 1218
    .line 1219
    move-result-wide v1

    .line 1220
    invoke-virtual {v7, v10, v1, v2}, Lcom/google/protobuf/D1;->c(Ljava/lang/Object;J)Ljava/util/List;

    .line 1221
    .line 1222
    .line 1223
    move-result-object v1

    .line 1224
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/CO;->C(Ljava/util/List;)V

    .line 1225
    .line 1226
    .line 1227
    goto/16 :goto_13

    .line 1228
    .line 1229
    :pswitch_30
    move/from16 v19, v14

    .line 1230
    .line 1231
    const/4 v14, 0x0

    .line 1232
    invoke-static {v4}, Lcom/google/protobuf/T1;->E(I)J

    .line 1233
    .line 1234
    .line 1235
    move-result-wide v1

    .line 1236
    invoke-virtual {v7, v10, v1, v2}, Lcom/google/protobuf/D1;->c(Ljava/lang/Object;J)Ljava/util/List;

    .line 1237
    .line 1238
    .line 1239
    move-result-object v1

    .line 1240
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/CO;->t(Ljava/util/List;)V

    .line 1241
    .line 1242
    .line 1243
    goto/16 :goto_13

    .line 1244
    .line 1245
    :pswitch_31
    move/from16 v19, v14

    .line 1246
    .line 1247
    const/4 v14, 0x0

    .line 1248
    invoke-static {v4}, Lcom/google/protobuf/T1;->E(I)J

    .line 1249
    .line 1250
    .line 1251
    move-result-wide v1

    .line 1252
    invoke-virtual {v7, v10, v1, v2}, Lcom/google/protobuf/D1;->c(Ljava/lang/Object;J)Ljava/util/List;

    .line 1253
    .line 1254
    .line 1255
    move-result-object v1

    .line 1256
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/CO;->p(Ljava/util/List;)V

    .line 1257
    .line 1258
    .line 1259
    goto/16 :goto_13

    .line 1260
    .line 1261
    :pswitch_32
    move/from16 v19, v14

    .line 1262
    .line 1263
    const/4 v14, 0x0

    .line 1264
    invoke-static {v4}, Lcom/google/protobuf/T1;->E(I)J

    .line 1265
    .line 1266
    .line 1267
    move-result-wide v1

    .line 1268
    invoke-virtual {v7, v10, v1, v2}, Lcom/google/protobuf/D1;->c(Ljava/lang/Object;J)Ljava/util/List;

    .line 1269
    .line 1270
    .line 1271
    move-result-object v1

    .line 1272
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/CO;->i(Ljava/util/List;)V

    .line 1273
    .line 1274
    .line 1275
    goto/16 :goto_13

    .line 1276
    .line 1277
    :pswitch_33
    move/from16 v19, v14

    .line 1278
    .line 1279
    const/4 v14, 0x0

    .line 1280
    invoke-virtual {v8, v3, v10}, Lcom/google/protobuf/T1;->A(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1281
    .line 1282
    .line 1283
    move-result-object v1

    .line 1284
    check-cast v1, Lcom/google/protobuf/Q1;

    .line 1285
    .line 1286
    invoke-virtual {v8, v3}, Lcom/google/protobuf/T1;->q(I)Lcom/google/protobuf/j2;

    .line 1287
    .line 1288
    .line 1289
    move-result-object v2

    .line 1290
    invoke-virtual {v0, v1, v2, v11}, Lcom/google/android/gms/internal/ads/CO;->c(Ljava/lang/Object;Lcom/google/protobuf/j2;Lcom/google/protobuf/O0;)V

    .line 1291
    .line 1292
    .line 1293
    invoke-virtual {v8, v3, v10, v1}, Lcom/google/protobuf/T1;->T(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1294
    .line 1295
    .line 1296
    goto/16 :goto_13

    .line 1297
    .line 1298
    :pswitch_34
    move/from16 v19, v14

    .line 1299
    .line 1300
    const/4 v14, 0x0

    .line 1301
    invoke-static {v4}, Lcom/google/protobuf/T1;->E(I)J

    .line 1302
    .line 1303
    .line 1304
    move-result-wide v1

    .line 1305
    invoke-virtual {v0, v14}, Lcom/google/android/gms/internal/ads/CO;->G(I)V

    .line 1306
    .line 1307
    .line 1308
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/CO;->d:Ljava/lang/Object;

    .line 1309
    .line 1310
    check-cast v4, Lcom/google/protobuf/w;

    .line 1311
    .line 1312
    invoke-virtual {v4}, Lcom/google/protobuf/w;->C()J

    .line 1313
    .line 1314
    .line 1315
    move-result-wide v4

    .line 1316
    invoke-static {v10, v1, v2, v4, v5}, Lcom/google/protobuf/H2;->r(Ljava/lang/Object;JJ)V

    .line 1317
    .line 1318
    .line 1319
    invoke-virtual {v8, v3, v10}, Lcom/google/protobuf/T1;->Q(ILjava/lang/Object;)V

    .line 1320
    .line 1321
    .line 1322
    goto/16 :goto_13

    .line 1323
    .line 1324
    :pswitch_35
    move/from16 v19, v14

    .line 1325
    .line 1326
    const/4 v14, 0x0

    .line 1327
    invoke-static {v4}, Lcom/google/protobuf/T1;->E(I)J

    .line 1328
    .line 1329
    .line 1330
    move-result-wide v1

    .line 1331
    invoke-virtual {v0, v14}, Lcom/google/android/gms/internal/ads/CO;->G(I)V

    .line 1332
    .line 1333
    .line 1334
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/CO;->d:Ljava/lang/Object;

    .line 1335
    .line 1336
    check-cast v4, Lcom/google/protobuf/w;

    .line 1337
    .line 1338
    invoke-virtual {v4}, Lcom/google/protobuf/w;->B()I

    .line 1339
    .line 1340
    .line 1341
    move-result v4

    .line 1342
    invoke-static {v10, v4, v1, v2}, Lcom/google/protobuf/H2;->q(Ljava/lang/Object;IJ)V

    .line 1343
    .line 1344
    .line 1345
    invoke-virtual {v8, v3, v10}, Lcom/google/protobuf/T1;->Q(ILjava/lang/Object;)V

    .line 1346
    .line 1347
    .line 1348
    goto/16 :goto_13

    .line 1349
    .line 1350
    :pswitch_36
    move/from16 v19, v14

    .line 1351
    .line 1352
    const/4 v14, 0x0

    .line 1353
    invoke-static {v4}, Lcom/google/protobuf/T1;->E(I)J

    .line 1354
    .line 1355
    .line 1356
    move-result-wide v1

    .line 1357
    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/CO;->G(I)V

    .line 1358
    .line 1359
    .line 1360
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/CO;->d:Ljava/lang/Object;

    .line 1361
    .line 1362
    check-cast v4, Lcom/google/protobuf/w;

    .line 1363
    .line 1364
    invoke-virtual {v4}, Lcom/google/protobuf/w;->A()J

    .line 1365
    .line 1366
    .line 1367
    move-result-wide v4

    .line 1368
    invoke-static {v10, v1, v2, v4, v5}, Lcom/google/protobuf/H2;->r(Ljava/lang/Object;JJ)V

    .line 1369
    .line 1370
    .line 1371
    invoke-virtual {v8, v3, v10}, Lcom/google/protobuf/T1;->Q(ILjava/lang/Object;)V

    .line 1372
    .line 1373
    .line 1374
    goto/16 :goto_13

    .line 1375
    .line 1376
    :pswitch_37
    move/from16 v19, v14

    .line 1377
    .line 1378
    const/4 v14, 0x0

    .line 1379
    invoke-static {v4}, Lcom/google/protobuf/T1;->E(I)J

    .line 1380
    .line 1381
    .line 1382
    move-result-wide v1

    .line 1383
    const/4 v4, 0x5

    .line 1384
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/CO;->G(I)V

    .line 1385
    .line 1386
    .line 1387
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/CO;->d:Ljava/lang/Object;

    .line 1388
    .line 1389
    check-cast v4, Lcom/google/protobuf/w;

    .line 1390
    .line 1391
    invoke-virtual {v4}, Lcom/google/protobuf/w;->z()I

    .line 1392
    .line 1393
    .line 1394
    move-result v4

    .line 1395
    invoke-static {v10, v4, v1, v2}, Lcom/google/protobuf/H2;->q(Ljava/lang/Object;IJ)V

    .line 1396
    .line 1397
    .line 1398
    invoke-virtual {v8, v3, v10}, Lcom/google/protobuf/T1;->Q(ILjava/lang/Object;)V

    .line 1399
    .line 1400
    .line 1401
    goto/16 :goto_13

    .line 1402
    .line 1403
    :pswitch_38
    move/from16 v19, v14

    .line 1404
    .line 1405
    const/4 v14, 0x0

    .line 1406
    invoke-virtual {v0, v14}, Lcom/google/android/gms/internal/ads/CO;->G(I)V

    .line 1407
    .line 1408
    .line 1409
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/CO;->d:Ljava/lang/Object;

    .line 1410
    .line 1411
    check-cast v1, Lcom/google/protobuf/w;

    .line 1412
    .line 1413
    invoke-virtual {v1}, Lcom/google/protobuf/w;->p()I

    .line 1414
    .line 1415
    .line 1416
    move-result v1

    .line 1417
    invoke-virtual {v8, v3}, Lcom/google/protobuf/T1;->o(I)Lcom/google/protobuf/q1;

    .line 1418
    .line 1419
    .line 1420
    move-result-object v5

    .line 1421
    if-eqz v5, :cond_13

    .line 1422
    .line 1423
    invoke-interface {v5, v1}, Lcom/google/protobuf/q1;->a(I)Z

    .line 1424
    .line 1425
    .line 1426
    move-result v5

    .line 1427
    if-eqz v5, :cond_12

    .line 1428
    .line 1429
    goto :goto_12

    .line 1430
    :cond_12
    invoke-static {v10, v2, v1, v15, v9}, Lcom/google/protobuf/k2;->D(Ljava/lang/Object;IILjava/lang/Object;Lcom/google/protobuf/B2;)Ljava/lang/Object;

    .line 1431
    .line 1432
    .line 1433
    move-result-object v7

    .line 1434
    goto/16 :goto_17

    .line 1435
    .line 1436
    :cond_13
    :goto_12
    invoke-static {v4}, Lcom/google/protobuf/T1;->E(I)J

    .line 1437
    .line 1438
    .line 1439
    move-result-wide v4

    .line 1440
    invoke-static {v10, v1, v4, v5}, Lcom/google/protobuf/H2;->q(Ljava/lang/Object;IJ)V

    .line 1441
    .line 1442
    .line 1443
    invoke-virtual {v8, v3, v10}, Lcom/google/protobuf/T1;->Q(ILjava/lang/Object;)V

    .line 1444
    .line 1445
    .line 1446
    goto/16 :goto_13

    .line 1447
    .line 1448
    :pswitch_39
    move/from16 v19, v14

    .line 1449
    .line 1450
    const/4 v14, 0x0

    .line 1451
    invoke-static {v4}, Lcom/google/protobuf/T1;->E(I)J

    .line 1452
    .line 1453
    .line 1454
    move-result-wide v1

    .line 1455
    invoke-virtual/range {p4 .. p4}, Lcom/google/android/gms/internal/ads/CO;->A()I

    .line 1456
    .line 1457
    .line 1458
    move-result v4

    .line 1459
    invoke-static {v10, v4, v1, v2}, Lcom/google/protobuf/H2;->q(Ljava/lang/Object;IJ)V

    .line 1460
    .line 1461
    .line 1462
    invoke-virtual {v8, v3, v10}, Lcom/google/protobuf/T1;->Q(ILjava/lang/Object;)V

    .line 1463
    .line 1464
    .line 1465
    goto/16 :goto_13

    .line 1466
    .line 1467
    :pswitch_3a
    move/from16 v19, v14

    .line 1468
    .line 1469
    const/4 v14, 0x0

    .line 1470
    invoke-static {v4}, Lcom/google/protobuf/T1;->E(I)J

    .line 1471
    .line 1472
    .line 1473
    move-result-wide v1

    .line 1474
    invoke-virtual/range {p4 .. p4}, Lcom/google/android/gms/internal/ads/CO;->g()Lcom/google/protobuf/r;

    .line 1475
    .line 1476
    .line 1477
    move-result-object v4

    .line 1478
    invoke-static {v10, v1, v2, v4}, Lcom/google/protobuf/H2;->s(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 1479
    .line 1480
    .line 1481
    invoke-virtual {v8, v3, v10}, Lcom/google/protobuf/T1;->Q(ILjava/lang/Object;)V

    .line 1482
    .line 1483
    .line 1484
    goto/16 :goto_13

    .line 1485
    .line 1486
    :pswitch_3b
    move/from16 v19, v14

    .line 1487
    .line 1488
    const/4 v14, 0x0

    .line 1489
    invoke-virtual {v8, v3, v10}, Lcom/google/protobuf/T1;->A(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1490
    .line 1491
    .line 1492
    move-result-object v1

    .line 1493
    check-cast v1, Lcom/google/protobuf/Q1;

    .line 1494
    .line 1495
    invoke-virtual {v8, v3}, Lcom/google/protobuf/T1;->q(I)Lcom/google/protobuf/j2;

    .line 1496
    .line 1497
    .line 1498
    move-result-object v2

    .line 1499
    const/4 v4, 0x2

    .line 1500
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/CO;->G(I)V

    .line 1501
    .line 1502
    .line 1503
    invoke-virtual {v0, v1, v2, v11}, Lcom/google/android/gms/internal/ads/CO;->e(Ljava/lang/Object;Lcom/google/protobuf/j2;Lcom/google/protobuf/O0;)V

    .line 1504
    .line 1505
    .line 1506
    invoke-virtual {v8, v3, v10, v1}, Lcom/google/protobuf/T1;->T(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1507
    .line 1508
    .line 1509
    goto/16 :goto_13

    .line 1510
    .line 1511
    :pswitch_3c
    move/from16 v19, v14

    .line 1512
    .line 1513
    const/4 v14, 0x0

    .line 1514
    invoke-virtual {v8, v4, v0, v10}, Lcom/google/protobuf/T1;->N(ILcom/google/android/gms/internal/ads/CO;Ljava/lang/Object;)V

    .line 1515
    .line 1516
    .line 1517
    invoke-virtual {v8, v3, v10}, Lcom/google/protobuf/T1;->Q(ILjava/lang/Object;)V

    .line 1518
    .line 1519
    .line 1520
    goto/16 :goto_13

    .line 1521
    .line 1522
    :pswitch_3d
    move/from16 v19, v14

    .line 1523
    .line 1524
    const/4 v14, 0x0

    .line 1525
    invoke-static {v4}, Lcom/google/protobuf/T1;->E(I)J

    .line 1526
    .line 1527
    .line 1528
    move-result-wide v1

    .line 1529
    invoke-virtual {v0, v14}, Lcom/google/android/gms/internal/ads/CO;->G(I)V

    .line 1530
    .line 1531
    .line 1532
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/CO;->d:Ljava/lang/Object;

    .line 1533
    .line 1534
    check-cast v4, Lcom/google/protobuf/w;

    .line 1535
    .line 1536
    invoke-virtual {v4}, Lcom/google/protobuf/w;->m()Z

    .line 1537
    .line 1538
    .line 1539
    move-result v4

    .line 1540
    invoke-static {v10, v1, v2, v4}, Lcom/google/protobuf/H2;->k(Ljava/lang/Object;JZ)V

    .line 1541
    .line 1542
    .line 1543
    invoke-virtual {v8, v3, v10}, Lcom/google/protobuf/T1;->Q(ILjava/lang/Object;)V

    .line 1544
    .line 1545
    .line 1546
    goto/16 :goto_13

    .line 1547
    .line 1548
    :pswitch_3e
    move/from16 v19, v14

    .line 1549
    .line 1550
    const/4 v14, 0x0

    .line 1551
    invoke-static {v4}, Lcom/google/protobuf/T1;->E(I)J

    .line 1552
    .line 1553
    .line 1554
    move-result-wide v1

    .line 1555
    invoke-virtual/range {p4 .. p4}, Lcom/google/android/gms/internal/ads/CO;->l()I

    .line 1556
    .line 1557
    .line 1558
    move-result v4

    .line 1559
    invoke-static {v10, v4, v1, v2}, Lcom/google/protobuf/H2;->q(Ljava/lang/Object;IJ)V

    .line 1560
    .line 1561
    .line 1562
    invoke-virtual {v8, v3, v10}, Lcom/google/protobuf/T1;->Q(ILjava/lang/Object;)V

    .line 1563
    .line 1564
    .line 1565
    goto/16 :goto_13

    .line 1566
    .line 1567
    :pswitch_3f
    move/from16 v19, v14

    .line 1568
    .line 1569
    const/4 v14, 0x0

    .line 1570
    invoke-static {v4}, Lcom/google/protobuf/T1;->E(I)J

    .line 1571
    .line 1572
    .line 1573
    move-result-wide v1

    .line 1574
    invoke-virtual/range {p4 .. p4}, Lcom/google/android/gms/internal/ads/CO;->n()J

    .line 1575
    .line 1576
    .line 1577
    move-result-wide v4

    .line 1578
    invoke-static {v10, v1, v2, v4, v5}, Lcom/google/protobuf/H2;->r(Ljava/lang/Object;JJ)V

    .line 1579
    .line 1580
    .line 1581
    invoke-virtual {v8, v3, v10}, Lcom/google/protobuf/T1;->Q(ILjava/lang/Object;)V

    .line 1582
    .line 1583
    .line 1584
    goto :goto_13

    .line 1585
    :pswitch_40
    move/from16 v19, v14

    .line 1586
    .line 1587
    const/4 v14, 0x0

    .line 1588
    invoke-static {v4}, Lcom/google/protobuf/T1;->E(I)J

    .line 1589
    .line 1590
    .line 1591
    move-result-wide v1

    .line 1592
    invoke-virtual/range {p4 .. p4}, Lcom/google/android/gms/internal/ads/CO;->q()I

    .line 1593
    .line 1594
    .line 1595
    move-result v4

    .line 1596
    invoke-static {v10, v4, v1, v2}, Lcom/google/protobuf/H2;->q(Ljava/lang/Object;IJ)V

    .line 1597
    .line 1598
    .line 1599
    invoke-virtual {v8, v3, v10}, Lcom/google/protobuf/T1;->Q(ILjava/lang/Object;)V

    .line 1600
    .line 1601
    .line 1602
    goto :goto_13

    .line 1603
    :pswitch_41
    move/from16 v19, v14

    .line 1604
    .line 1605
    const/4 v14, 0x0

    .line 1606
    invoke-static {v4}, Lcom/google/protobuf/T1;->E(I)J

    .line 1607
    .line 1608
    .line 1609
    move-result-wide v1

    .line 1610
    invoke-virtual {v0, v14}, Lcom/google/android/gms/internal/ads/CO;->G(I)V

    .line 1611
    .line 1612
    .line 1613
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/CO;->d:Ljava/lang/Object;

    .line 1614
    .line 1615
    check-cast v4, Lcom/google/protobuf/w;

    .line 1616
    .line 1617
    invoke-virtual {v4}, Lcom/google/protobuf/w;->H()J

    .line 1618
    .line 1619
    .line 1620
    move-result-wide v4

    .line 1621
    invoke-static {v10, v1, v2, v4, v5}, Lcom/google/protobuf/H2;->r(Ljava/lang/Object;JJ)V

    .line 1622
    .line 1623
    .line 1624
    invoke-virtual {v8, v3, v10}, Lcom/google/protobuf/T1;->Q(ILjava/lang/Object;)V

    .line 1625
    .line 1626
    .line 1627
    goto :goto_13

    .line 1628
    :pswitch_42
    move/from16 v19, v14

    .line 1629
    .line 1630
    const/4 v14, 0x0

    .line 1631
    invoke-static {v4}, Lcom/google/protobuf/T1;->E(I)J

    .line 1632
    .line 1633
    .line 1634
    move-result-wide v1

    .line 1635
    invoke-virtual/range {p4 .. p4}, Lcom/google/android/gms/internal/ads/CO;->s()J

    .line 1636
    .line 1637
    .line 1638
    move-result-wide v4

    .line 1639
    invoke-static {v10, v1, v2, v4, v5}, Lcom/google/protobuf/H2;->r(Ljava/lang/Object;JJ)V

    .line 1640
    .line 1641
    .line 1642
    invoke-virtual {v8, v3, v10}, Lcom/google/protobuf/T1;->Q(ILjava/lang/Object;)V

    .line 1643
    .line 1644
    .line 1645
    goto :goto_13

    .line 1646
    :pswitch_43
    move/from16 v19, v14

    .line 1647
    .line 1648
    const/4 v14, 0x0

    .line 1649
    invoke-static {v4}, Lcom/google/protobuf/T1;->E(I)J

    .line 1650
    .line 1651
    .line 1652
    move-result-wide v1

    .line 1653
    const/4 v4, 0x5

    .line 1654
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/CO;->G(I)V

    .line 1655
    .line 1656
    .line 1657
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/CO;->d:Ljava/lang/Object;

    .line 1658
    .line 1659
    check-cast v4, Lcom/google/protobuf/w;

    .line 1660
    .line 1661
    invoke-virtual {v4}, Lcom/google/protobuf/w;->s()F

    .line 1662
    .line 1663
    .line 1664
    move-result v4

    .line 1665
    invoke-static {v10, v1, v2, v4}, Lcom/google/protobuf/H2;->p(Ljava/lang/Object;JF)V

    .line 1666
    .line 1667
    .line 1668
    invoke-virtual {v8, v3, v10}, Lcom/google/protobuf/T1;->Q(ILjava/lang/Object;)V

    .line 1669
    .line 1670
    .line 1671
    goto :goto_13

    .line 1672
    :pswitch_44
    move/from16 v19, v14

    .line 1673
    .line 1674
    const/4 v14, 0x0

    .line 1675
    invoke-static {v4}, Lcom/google/protobuf/T1;->E(I)J

    .line 1676
    .line 1677
    .line 1678
    move-result-wide v1

    .line 1679
    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/CO;->G(I)V

    .line 1680
    .line 1681
    .line 1682
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/CO;->d:Ljava/lang/Object;

    .line 1683
    .line 1684
    check-cast v4, Lcom/google/protobuf/w;

    .line 1685
    .line 1686
    invoke-virtual {v4}, Lcom/google/protobuf/w;->o()D

    .line 1687
    .line 1688
    .line 1689
    move-result-wide v4

    .line 1690
    invoke-static {v10, v1, v2, v4, v5}, Lcom/google/protobuf/H2;->o(Ljava/lang/Object;JD)V

    .line 1691
    .line 1692
    .line 1693
    invoke-virtual {v8, v3, v10}, Lcom/google/protobuf/T1;->Q(ILjava/lang/Object;)V
    :try_end_e
    .catch Lcom/google/protobuf/w1; {:try_start_e .. :try_end_e} :catch_2
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    .line 1694
    .line 1695
    .line 1696
    :goto_13
    move-object v7, v15

    .line 1697
    goto :goto_17

    .line 1698
    :goto_14
    :try_start_f
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1699
    .line 1700
    .line 1701
    if-nez v7, :cond_14

    .line 1702
    .line 1703
    invoke-static/range {p3 .. p3}, Lcom/google/protobuf/B2;->a(Ljava/lang/Object;)Lcom/google/protobuf/A2;

    .line 1704
    .line 1705
    .line 1706
    move-result-object v1

    .line 1707
    move-object v7, v1

    .line 1708
    goto :goto_15

    .line 1709
    :catchall_5
    move-exception v0

    .line 1710
    goto :goto_18

    .line 1711
    :cond_14
    :goto_15
    invoke-static {v14, v0, v7}, Lcom/google/protobuf/B2;->c(ILcom/google/android/gms/internal/ads/CO;Ljava/lang/Object;)Z

    .line 1712
    .line 1713
    .line 1714
    move-result v1
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    .line 1715
    if-nez v1, :cond_17

    .line 1716
    .line 1717
    move-object v4, v7

    .line 1718
    move/from16 v14, v19

    .line 1719
    .line 1720
    :goto_16
    if-ge v14, v13, :cond_15

    .line 1721
    .line 1722
    aget v3, v12, v14

    .line 1723
    .line 1724
    move-object/from16 v1, p0

    .line 1725
    .line 1726
    move-object/from16 v2, p3

    .line 1727
    .line 1728
    move-object/from16 v5, p1

    .line 1729
    .line 1730
    move-object/from16 v6, p3

    .line 1731
    .line 1732
    invoke-virtual/range {v1 .. v6}, Lcom/google/protobuf/T1;->n(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/protobuf/B2;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1733
    .line 1734
    .line 1735
    move-result-object v4

    .line 1736
    add-int/lit8 v14, v14, 0x1

    .line 1737
    .line 1738
    goto :goto_16

    .line 1739
    :cond_15
    if-eqz v4, :cond_16

    .line 1740
    .line 1741
    invoke-static {v10, v4}, Lcom/google/protobuf/B2;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1742
    .line 1743
    .line 1744
    :cond_16
    return-void

    .line 1745
    :cond_17
    :goto_17
    move/from16 v14, v19

    .line 1746
    .line 1747
    goto/16 :goto_0

    .line 1748
    .line 1749
    :catchall_6
    move-exception v0

    .line 1750
    goto/16 :goto_1

    .line 1751
    .line 1752
    :goto_18
    move-object v4, v7

    .line 1753
    move/from16 v14, v19

    .line 1754
    .line 1755
    :goto_19
    if-ge v14, v13, :cond_18

    .line 1756
    .line 1757
    aget v3, v12, v14

    .line 1758
    .line 1759
    move-object/from16 v1, p0

    .line 1760
    .line 1761
    move-object/from16 v2, p3

    .line 1762
    .line 1763
    move-object/from16 v5, p1

    .line 1764
    .line 1765
    move-object/from16 v6, p3

    .line 1766
    .line 1767
    invoke-virtual/range {v1 .. v6}, Lcom/google/protobuf/T1;->n(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/protobuf/B2;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1768
    .line 1769
    .line 1770
    move-result-object v4

    .line 1771
    add-int/lit8 v14, v14, 0x1

    .line 1772
    .line 1773
    goto :goto_19

    .line 1774
    :cond_18
    if-eqz v4, :cond_19

    .line 1775
    .line 1776
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1777
    .line 1778
    .line 1779
    invoke-static {v10, v4}, Lcom/google/protobuf/B2;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1780
    .line 1781
    .line 1782
    :cond_19
    throw v0

    :pswitch_data_0
    .packed-switch 0x0
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

.method public final x(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/protobuf/O0;Lcom/google/android/gms/internal/ads/CO;)V
    .locals 6

    .line 1
    invoke-virtual {p0, p2}, Lcom/google/protobuf/T1;->W(I)I

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    const v0, 0xfffff

    .line 6
    .line 7
    .line 8
    and-int/2addr p2, v0

    .line 9
    int-to-long v0, p2

    .line 10
    sget-object p2, Lcom/google/protobuf/H2;->c:Lcom/google/protobuf/G2;

    .line 11
    .line 12
    invoke-virtual {p2, p1, v0, v1}, Lcom/google/protobuf/G2;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    iget-object v2, p0, Lcom/google/protobuf/T1;->o:Lcom/google/protobuf/L1;

    .line 17
    .line 18
    if-nez p2, :cond_0

    .line 19
    .line 20
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    sget-object p2, Lcom/google/protobuf/K1;->H:Lcom/google/protobuf/K1;

    .line 24
    .line 25
    invoke-virtual {p2}, Lcom/google/protobuf/K1;->c()Lcom/google/protobuf/K1;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    invoke-static {p1, v0, v1, p2}, Lcom/google/protobuf/H2;->s(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    invoke-static {p2}, Lcom/google/protobuf/L1;->d(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    if-eqz v3, :cond_1

    .line 41
    .line 42
    sget-object v3, Lcom/google/protobuf/K1;->H:Lcom/google/protobuf/K1;

    .line 43
    .line 44
    invoke-virtual {v3}, Lcom/google/protobuf/K1;->c()Lcom/google/protobuf/K1;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    invoke-static {v3, p2}, Lcom/google/protobuf/L1;->e(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/protobuf/K1;

    .line 49
    .line 50
    .line 51
    invoke-static {p1, v0, v1, v3}, Lcom/google/protobuf/H2;->s(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    move-object p2, v3

    .line 55
    :cond_1
    :goto_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    .line 57
    .line 58
    check-cast p2, Lcom/google/protobuf/K1;

    .line 59
    .line 60
    check-cast p3, Lcom/google/protobuf/J1;

    .line 61
    .line 62
    iget-object p1, p3, Lcom/google/protobuf/J1;->a:Lm2/i;

    .line 63
    .line 64
    const/4 p3, 0x2

    .line 65
    invoke-virtual {p5, p3}, Lcom/google/android/gms/internal/ads/CO;->G(I)V

    .line 66
    .line 67
    .line 68
    iget-object v0, p5, Lcom/google/android/gms/internal/ads/CO;->d:Ljava/lang/Object;

    .line 69
    .line 70
    check-cast v0, Lcom/google/protobuf/w;

    .line 71
    .line 72
    invoke-virtual {v0}, Lcom/google/protobuf/w;->G()I

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    iget-object v1, p5, Lcom/google/android/gms/internal/ads/CO;->d:Ljava/lang/Object;

    .line 77
    .line 78
    check-cast v1, Lcom/google/protobuf/w;

    .line 79
    .line 80
    invoke-virtual {v1, v0}, Lcom/google/protobuf/w;->l(I)I

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    iget-object v1, p1, Lm2/i;->I:Ljava/lang/Object;

    .line 85
    .line 86
    iget-object v2, p1, Lm2/i;->K:Ljava/lang/Object;

    .line 87
    .line 88
    :goto_1
    :try_start_0
    invoke-virtual {p5}, Lcom/google/android/gms/internal/ads/CO;->b()I

    .line 89
    .line 90
    .line 91
    move-result v3

    .line 92
    const v4, 0x7fffffff

    .line 93
    .line 94
    .line 95
    if-eq v3, v4, :cond_7

    .line 96
    .line 97
    iget-object v4, p5, Lcom/google/android/gms/internal/ads/CO;->d:Ljava/lang/Object;

    .line 98
    .line 99
    check-cast v4, Lcom/google/protobuf/w;

    .line 100
    .line 101
    invoke-virtual {v4}, Lcom/google/protobuf/w;->g()Z

    .line 102
    .line 103
    .line 104
    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    if-eqz v4, :cond_2

    .line 106
    .line 107
    goto :goto_2

    .line 108
    :cond_2
    const/4 v4, 0x1

    .line 109
    const-string v5, "Unable to parse map entry."

    .line 110
    .line 111
    if-eq v3, v4, :cond_5

    .line 112
    .line 113
    if-eq v3, p3, :cond_4

    .line 114
    .line 115
    :try_start_1
    invoke-virtual {p5}, Lcom/google/android/gms/internal/ads/CO;->I()Z

    .line 116
    .line 117
    .line 118
    move-result v3

    .line 119
    if-eqz v3, :cond_3

    .line 120
    .line 121
    goto :goto_1

    .line 122
    :cond_3
    new-instance v3, Lcom/google/protobuf/x1;

    .line 123
    .line 124
    invoke-direct {v3, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    throw v3

    .line 128
    :catchall_0
    move-exception p1

    .line 129
    goto :goto_3

    .line 130
    :cond_4
    iget-object v3, p1, Lm2/i;->J:Ljava/lang/Object;

    .line 131
    .line 132
    check-cast v3, Lcom/google/protobuf/S2;

    .line 133
    .line 134
    iget-object v4, p1, Lm2/i;->K:Ljava/lang/Object;

    .line 135
    .line 136
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 137
    .line 138
    .line 139
    move-result-object v4

    .line 140
    invoke-virtual {p5, v3, v4, p4}, Lcom/google/android/gms/internal/ads/CO;->k(Lcom/google/protobuf/S2;Ljava/lang/Class;Lcom/google/protobuf/O0;)Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object v2

    .line 144
    goto :goto_1

    .line 145
    :cond_5
    iget-object v3, p1, Lm2/i;->H:Ljava/lang/Object;

    .line 146
    .line 147
    check-cast v3, Lcom/google/protobuf/S2;

    .line 148
    .line 149
    const/4 v4, 0x0

    .line 150
    invoke-virtual {p5, v3, v4, v4}, Lcom/google/android/gms/internal/ads/CO;->k(Lcom/google/protobuf/S2;Ljava/lang/Class;Lcom/google/protobuf/O0;)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object v1
    :try_end_1
    .catch Lcom/google/protobuf/w1; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 154
    goto :goto_1

    .line 155
    :catch_0
    :try_start_2
    invoke-virtual {p5}, Lcom/google/android/gms/internal/ads/CO;->I()Z

    .line 156
    .line 157
    .line 158
    move-result v3

    .line 159
    if-eqz v3, :cond_6

    .line 160
    .line 161
    goto :goto_1

    .line 162
    :cond_6
    new-instance p1, Lcom/google/protobuf/x1;

    .line 163
    .line 164
    invoke-direct {p1, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    throw p1

    .line 168
    :cond_7
    :goto_2
    invoke-virtual {p2, v1, v2}, Lcom/google/protobuf/K1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 169
    .line 170
    .line 171
    iget-object p1, p5, Lcom/google/android/gms/internal/ads/CO;->d:Ljava/lang/Object;

    .line 172
    .line 173
    check-cast p1, Lcom/google/protobuf/w;

    .line 174
    .line 175
    invoke-virtual {p1, v0}, Lcom/google/protobuf/w;->k(I)V

    .line 176
    .line 177
    .line 178
    return-void

    .line 179
    :goto_3
    iget-object p2, p5, Lcom/google/android/gms/internal/ads/CO;->d:Ljava/lang/Object;

    .line 180
    .line 181
    check-cast p2, Lcom/google/protobuf/w;

    .line 182
    .line 183
    invoke-virtual {p2, v0}, Lcom/google/protobuf/w;->k(I)V

    .line 184
    .line 185
    .line 186
    throw p1
.end method

.method public final y(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 5

    .line 1
    invoke-virtual {p0, p1, p3}, Lcom/google/protobuf/T1;->s(ILjava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/protobuf/T1;->W(I)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const v1, 0xfffff

    .line 13
    .line 14
    .line 15
    and-int/2addr v0, v1

    .line 16
    int-to-long v0, v0

    .line 17
    sget-object v2, Lcom/google/protobuf/T1;->q:Lsun/misc/Unsafe;

    .line 18
    .line 19
    invoke-virtual {v2, p3, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    if-eqz v3, :cond_4

    .line 24
    .line 25
    invoke-virtual {p0, p1}, Lcom/google/protobuf/T1;->q(I)Lcom/google/protobuf/j2;

    .line 26
    .line 27
    .line 28
    move-result-object p3

    .line 29
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/T1;->s(ILjava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    if-nez v4, :cond_2

    .line 34
    .line 35
    invoke-static {v3}, Lcom/google/protobuf/T1;->u(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    if-nez v4, :cond_1

    .line 40
    .line 41
    invoke-virtual {v2, p2, v0, v1, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    invoke-interface {p3}, Lcom/google/protobuf/j2;->i()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    invoke-interface {p3, v4, v3}, Lcom/google/protobuf/j2;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v2, p2, v0, v1, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/T1;->Q(ILjava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :cond_2
    invoke-virtual {v2, p2, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-static {p1}, Lcom/google/protobuf/T1;->u(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v4

    .line 67
    if-nez v4, :cond_3

    .line 68
    .line 69
    invoke-interface {p3}, Lcom/google/protobuf/j2;->i()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    invoke-interface {p3, v4, p1}, Lcom/google/protobuf/j2;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v2, p2, v0, v1, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    move-object p1, v4

    .line 80
    :cond_3
    invoke-interface {p3, p1, v3}, Lcom/google/protobuf/j2;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    return-void

    .line 84
    :cond_4
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 85
    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    .line 87
    .line 88
    const-string v1, "Source subfield "

    .line 89
    .line 90
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    iget-object v1, p0, Lcom/google/protobuf/T1;->a:[I

    .line 94
    .line 95
    aget p1, v1, p1

    .line 96
    .line 97
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    const-string p1, " is present but null: "

    .line 101
    .line 102
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    throw p2
.end method

.method public final z(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/T1;->a:[I

    .line 2
    .line 3
    aget v1, v0, p1

    .line 4
    .line 5
    invoke-virtual {p0, v1, p3, p1}, Lcom/google/protobuf/T1;->v(ILjava/lang/Object;I)Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-nez v2, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/protobuf/T1;->W(I)I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    const v3, 0xfffff

    .line 17
    .line 18
    .line 19
    and-int/2addr v2, v3

    .line 20
    int-to-long v2, v2

    .line 21
    sget-object v4, Lcom/google/protobuf/T1;->q:Lsun/misc/Unsafe;

    .line 22
    .line 23
    invoke-virtual {v4, p3, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v5

    .line 27
    if-eqz v5, :cond_4

    .line 28
    .line 29
    invoke-virtual {p0, p1}, Lcom/google/protobuf/T1;->q(I)Lcom/google/protobuf/j2;

    .line 30
    .line 31
    .line 32
    move-result-object p3

    .line 33
    invoke-virtual {p0, v1, p2, p1}, Lcom/google/protobuf/T1;->v(ILjava/lang/Object;I)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-nez v0, :cond_2

    .line 38
    .line 39
    invoke-static {v5}, Lcom/google/protobuf/T1;->u(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-nez v0, :cond_1

    .line 44
    .line 45
    invoke-virtual {v4, p2, v2, v3, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    invoke-interface {p3}, Lcom/google/protobuf/j2;->i()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-interface {p3, v0, v5}, Lcom/google/protobuf/j2;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v4, p2, v2, v3, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    :goto_0
    invoke-virtual {p0, v1, p2, p1}, Lcom/google/protobuf/T1;->R(ILjava/lang/Object;I)V

    .line 60
    .line 61
    .line 62
    return-void

    .line 63
    :cond_2
    invoke-virtual {v4, p2, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-static {p1}, Lcom/google/protobuf/T1;->u(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    if-nez v0, :cond_3

    .line 72
    .line 73
    invoke-interface {p3}, Lcom/google/protobuf/j2;->i()Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-interface {p3, v0, p1}, Lcom/google/protobuf/j2;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v4, p2, v2, v3, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    move-object p1, v0

    .line 84
    :cond_3
    invoke-interface {p3, p1, v5}, Lcom/google/protobuf/j2;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    return-void

    .line 88
    :cond_4
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 89
    .line 90
    new-instance v1, Ljava/lang/StringBuilder;

    .line 91
    .line 92
    const-string v2, "Source subfield "

    .line 93
    .line 94
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    aget p1, v0, p1

    .line 98
    .line 99
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    const-string p1, " is present but null: "

    .line 103
    .line 104
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    throw p2
.end method
