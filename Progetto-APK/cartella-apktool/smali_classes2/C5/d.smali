.class public final LC5/d;
.super LC5/j;
.source "SourceFile"


# static fields
.field public static final c:[C

.field public static final d:[I

.field public static final e:I


# instance fields
.field public final a:Ljava/lang/StringBuilder;

.field public final b:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%abcd*"

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, LC5/d;->c:[C

    .line 8
    .line 9
    const/16 v0, 0x30

    .line 10
    .line 11
    new-array v0, v0, [I

    .line 12
    .line 13
    fill-array-data v0, :array_0

    .line 14
    .line 15
    .line 16
    sput-object v0, LC5/d;->d:[I

    .line 17
    .line 18
    const/16 v1, 0x2f

    .line 19
    .line 20
    aget v0, v0, v1

    .line 21
    .line 22
    sput v0, LC5/d;->e:I

    .line 23
    .line 24
    return-void

    .line 25
    :array_0
    .array-data 4
        0x114
        0x148
        0x144
        0x142
        0x128
        0x124
        0x122
        0x150
        0x112
        0x10a
        0x1a8
        0x1a4
        0x1a2
        0x194
        0x192
        0x18a
        0x168
        0x164
        0x162
        0x134
        0x11a
        0x158
        0x14c
        0x146
        0x12c
        0x116
        0x1b4
        0x1b2
        0x1ac
        0x1a6
        0x196
        0x19a
        0x16c
        0x166
        0x136
        0x13a
        0x12e
        0x1d4
        0x1d2
        0x1ca
        0x16e
        0x176
        0x1ae
        0x126
        0x1da
        0x1d6
        0x132
        0x15e
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    const/16 v1, 0x14

    .line 7
    .line 8
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, LC5/d;->a:Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const/4 v0, 0x6

    .line 14
    new-array v0, v0, [I

    .line 15
    .line 16
    iput-object v0, p0, LC5/d;->b:[I

    .line 17
    .line 18
    return-void
.end method

.method public static i(Ljava/lang/StringBuilder;II)V
    .locals 6

    .line 1
    add-int/lit8 v0, p1, -0x1

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x1

    .line 6
    :goto_0
    if-ltz v0, :cond_1

    .line 7
    .line 8
    const-string v4, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%abcd*"

    .line 9
    .line 10
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    .line 11
    .line 12
    .line 13
    move-result v5

    .line 14
    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    .line 15
    .line 16
    .line 17
    move-result v4

    .line 18
    mul-int v4, v4, v3

    .line 19
    .line 20
    add-int/2addr v2, v4

    .line 21
    add-int/2addr v3, v1

    .line 22
    if-le v3, p2, :cond_0

    .line 23
    .line 24
    const/4 v3, 0x1

    .line 25
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->charAt(I)C

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    rem-int/lit8 v2, v2, 0x2f

    .line 33
    .line 34
    sget-object p1, LC5/d;->c:[C

    .line 35
    .line 36
    aget-char p1, p1, v2

    .line 37
    .line 38
    if-ne p0, p1, :cond_2

    .line 39
    .line 40
    return-void

    .line 41
    :cond_2
    invoke-static {}, Lq5/b;->a()Lq5/b;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    throw p0
.end method

.method public static j([I)I
    .locals 7

    .line 1
    array-length v0, p0

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x0

    .line 4
    const/4 v3, 0x0

    .line 5
    :goto_0
    if-ge v2, v0, :cond_0

    .line 6
    .line 7
    aget v4, p0, v2

    .line 8
    .line 9
    add-int/2addr v3, v4

    .line 10
    add-int/lit8 v2, v2, 0x1

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    array-length v0, p0

    .line 14
    const/4 v2, 0x0

    .line 15
    const/4 v4, 0x0

    .line 16
    :goto_1
    if-ge v2, v0, :cond_5

    .line 17
    .line 18
    aget v5, p0, v2

    .line 19
    .line 20
    int-to-float v5, v5

    .line 21
    const/high16 v6, 0x41100000    # 9.0f

    .line 22
    .line 23
    mul-float v5, v5, v6

    .line 24
    .line 25
    int-to-float v6, v3

    .line 26
    div-float/2addr v5, v6

    .line 27
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    .line 28
    .line 29
    .line 30
    move-result v5

    .line 31
    if-lez v5, :cond_4

    .line 32
    .line 33
    const/4 v6, 0x4

    .line 34
    if-le v5, v6, :cond_1

    .line 35
    .line 36
    goto :goto_3

    .line 37
    :cond_1
    and-int/lit8 v6, v2, 0x1

    .line 38
    .line 39
    if-nez v6, :cond_2

    .line 40
    .line 41
    const/4 v6, 0x0

    .line 42
    :goto_2
    if-ge v6, v5, :cond_3

    .line 43
    .line 44
    shl-int/lit8 v4, v4, 0x1

    .line 45
    .line 46
    or-int/lit8 v4, v4, 0x1

    .line 47
    .line 48
    add-int/lit8 v6, v6, 0x1

    .line 49
    .line 50
    goto :goto_2

    .line 51
    :cond_2
    shl-int/2addr v4, v5

    .line 52
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_4
    :goto_3
    const/4 p0, -0x1

    .line 56
    return p0

    .line 57
    :cond_5
    return v4
.end method


# virtual methods
.method public final d(ILw5/a;Ljava/util/Map;)Lq5/m;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    const/16 v2, 0x40

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    const/4 v4, 0x2

    .line 9
    const/4 v5, 0x1

    .line 10
    iget v6, v1, Lw5/a;->H:I

    .line 11
    .line 12
    invoke-virtual {v1, v3}, Lw5/a;->e(I)I

    .line 13
    .line 14
    .line 15
    move-result v7

    .line 16
    iget-object v8, v0, LC5/d;->b:[I

    .line 17
    .line 18
    invoke-static {v8, v3}, Ljava/util/Arrays;->fill([II)V

    .line 19
    .line 20
    .line 21
    array-length v9, v8

    .line 22
    move v10, v7

    .line 23
    const/4 v11, 0x0

    .line 24
    const/4 v12, 0x0

    .line 25
    :goto_0
    if-ge v7, v6, :cond_1a

    .line 26
    .line 27
    invoke-virtual {v1, v7}, Lw5/a;->d(I)Z

    .line 28
    .line 29
    .line 30
    move-result v13

    .line 31
    if-eq v13, v11, :cond_0

    .line 32
    .line 33
    aget v13, v8, v12

    .line 34
    .line 35
    add-int/2addr v13, v5

    .line 36
    aput v13, v8, v12

    .line 37
    .line 38
    move/from16 v13, p1

    .line 39
    .line 40
    const/4 v14, 0x2

    .line 41
    goto/16 :goto_b

    .line 42
    .line 43
    :cond_0
    add-int/lit8 v13, v9, -0x1

    .line 44
    .line 45
    if-ne v12, v13, :cond_19

    .line 46
    .line 47
    invoke-static {v8}, LC5/d;->j([I)I

    .line 48
    .line 49
    .line 50
    move-result v13

    .line 51
    sget v14, LC5/d;->e:I

    .line 52
    .line 53
    if-ne v13, v14, :cond_18

    .line 54
    .line 55
    filled-new-array {v10, v7}, [I

    .line 56
    .line 57
    .line 58
    move-result-object v6

    .line 59
    aget v7, v6, v5

    .line 60
    .line 61
    invoke-virtual {v1, v7}, Lw5/a;->e(I)I

    .line 62
    .line 63
    .line 64
    move-result v7

    .line 65
    iget v9, v1, Lw5/a;->H:I

    .line 66
    .line 67
    invoke-static {v8, v3}, Ljava/util/Arrays;->fill([II)V

    .line 68
    .line 69
    .line 70
    iget-object v10, v0, LC5/d;->a:Ljava/lang/StringBuilder;

    .line 71
    .line 72
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 73
    .line 74
    .line 75
    :goto_1
    invoke-static {v7, v1, v8}, LC5/j;->g(ILw5/a;[I)V

    .line 76
    .line 77
    .line 78
    invoke-static {v8}, LC5/d;->j([I)I

    .line 79
    .line 80
    .line 81
    move-result v11

    .line 82
    if-ltz v11, :cond_17

    .line 83
    .line 84
    const/4 v12, 0x0

    .line 85
    :goto_2
    sget-object v13, LC5/d;->d:[I

    .line 86
    .line 87
    array-length v14, v13

    .line 88
    if-ge v12, v14, :cond_16

    .line 89
    .line 90
    aget v13, v13, v12

    .line 91
    .line 92
    if-ne v13, v11, :cond_15

    .line 93
    .line 94
    sget-object v11, LC5/d;->c:[C

    .line 95
    .line 96
    aget-char v11, v11, v12

    .line 97
    .line 98
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    array-length v12, v8

    .line 102
    move v14, v7

    .line 103
    const/4 v13, 0x0

    .line 104
    :goto_3
    if-ge v13, v12, :cond_1

    .line 105
    .line 106
    aget v15, v8, v13

    .line 107
    .line 108
    add-int/2addr v14, v15

    .line 109
    add-int/2addr v13, v5

    .line 110
    goto :goto_3

    .line 111
    :cond_1
    invoke-virtual {v1, v14}, Lw5/a;->e(I)I

    .line 112
    .line 113
    .line 114
    move-result v12

    .line 115
    const/16 v13, 0x2a

    .line 116
    .line 117
    if-ne v11, v13, :cond_14

    .line 118
    .line 119
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    .line 120
    .line 121
    .line 122
    move-result v11

    .line 123
    sub-int/2addr v11, v5

    .line 124
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    array-length v11, v8

    .line 128
    const/4 v13, 0x0

    .line 129
    const/4 v14, 0x0

    .line 130
    :goto_4
    if-ge v13, v11, :cond_2

    .line 131
    .line 132
    aget v15, v8, v13

    .line 133
    .line 134
    add-int/2addr v14, v15

    .line 135
    add-int/2addr v13, v5

    .line 136
    goto :goto_4

    .line 137
    :cond_2
    if-eq v12, v9, :cond_13

    .line 138
    .line 139
    invoke-virtual {v1, v12}, Lw5/a;->d(I)Z

    .line 140
    .line 141
    .line 142
    move-result v1

    .line 143
    if-eqz v1, :cond_13

    .line 144
    .line 145
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    .line 146
    .line 147
    .line 148
    move-result v1

    .line 149
    if-lt v1, v4, :cond_12

    .line 150
    .line 151
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    .line 152
    .line 153
    .line 154
    move-result v1

    .line 155
    add-int/lit8 v8, v1, -0x2

    .line 156
    .line 157
    const/16 v9, 0x14

    .line 158
    .line 159
    invoke-static {v10, v8, v9}, LC5/d;->i(Ljava/lang/StringBuilder;II)V

    .line 160
    .line 161
    .line 162
    sub-int/2addr v1, v5

    .line 163
    const/16 v8, 0xf

    .line 164
    .line 165
    invoke-static {v10, v1, v8}, LC5/d;->i(Ljava/lang/StringBuilder;II)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    .line 169
    .line 170
    .line 171
    move-result v1

    .line 172
    sub-int/2addr v1, v4

    .line 173
    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    .line 177
    .line 178
    .line 179
    move-result v1

    .line 180
    new-instance v8, Ljava/lang/StringBuilder;

    .line 181
    .line 182
    invoke-direct {v8, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 183
    .line 184
    .line 185
    const/4 v9, 0x0

    .line 186
    :goto_5
    if-ge v9, v1, :cond_11

    .line 187
    .line 188
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->charAt(I)C

    .line 189
    .line 190
    .line 191
    move-result v11

    .line 192
    const/16 v12, 0x61

    .line 193
    .line 194
    if-lt v11, v12, :cond_10

    .line 195
    .line 196
    const/16 v12, 0x64

    .line 197
    .line 198
    if-gt v11, v12, :cond_10

    .line 199
    .line 200
    add-int/lit8 v12, v1, -0x1

    .line 201
    .line 202
    if-ge v9, v12, :cond_f

    .line 203
    .line 204
    add-int/2addr v9, v5

    .line 205
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->charAt(I)C

    .line 206
    .line 207
    .line 208
    move-result v12

    .line 209
    const/16 v13, 0x4f

    .line 210
    .line 211
    const/16 v15, 0x5a

    .line 212
    .line 213
    const/16 v4, 0x41

    .line 214
    .line 215
    packed-switch v11, :pswitch_data_0

    .line 216
    .line 217
    .line 218
    :goto_6
    const/4 v4, 0x0

    .line 219
    goto/16 :goto_8

    .line 220
    .line 221
    :pswitch_0
    if-lt v12, v4, :cond_3

    .line 222
    .line 223
    if-gt v12, v15, :cond_3

    .line 224
    .line 225
    add-int/lit8 v12, v12, 0x20

    .line 226
    .line 227
    :goto_7
    int-to-char v4, v12

    .line 228
    goto/16 :goto_8

    .line 229
    .line 230
    :cond_3
    invoke-static {}, Lq5/e;->a()Lq5/e;

    .line 231
    .line 232
    .line 233
    move-result-object v1

    .line 234
    throw v1

    .line 235
    :pswitch_1
    if-lt v12, v4, :cond_4

    .line 236
    .line 237
    if-gt v12, v13, :cond_4

    .line 238
    .line 239
    add-int/lit8 v12, v12, -0x20

    .line 240
    .line 241
    goto :goto_7

    .line 242
    :cond_4
    if-ne v12, v15, :cond_5

    .line 243
    .line 244
    const/16 v4, 0x3a

    .line 245
    .line 246
    goto :goto_8

    .line 247
    :cond_5
    invoke-static {}, Lq5/e;->a()Lq5/e;

    .line 248
    .line 249
    .line 250
    move-result-object v1

    .line 251
    throw v1

    .line 252
    :pswitch_2
    if-lt v12, v4, :cond_6

    .line 253
    .line 254
    const/16 v4, 0x45

    .line 255
    .line 256
    if-gt v12, v4, :cond_6

    .line 257
    .line 258
    add-int/lit8 v12, v12, -0x26

    .line 259
    .line 260
    goto :goto_7

    .line 261
    :cond_6
    const/16 v4, 0x46

    .line 262
    .line 263
    if-lt v12, v4, :cond_7

    .line 264
    .line 265
    const/16 v4, 0x4a

    .line 266
    .line 267
    if-gt v12, v4, :cond_7

    .line 268
    .line 269
    add-int/lit8 v12, v12, -0xb

    .line 270
    .line 271
    goto :goto_7

    .line 272
    :cond_7
    const/16 v4, 0x4b

    .line 273
    .line 274
    if-lt v12, v4, :cond_8

    .line 275
    .line 276
    if-gt v12, v13, :cond_8

    .line 277
    .line 278
    add-int/lit8 v12, v12, 0x10

    .line 279
    .line 280
    goto :goto_7

    .line 281
    :cond_8
    const/16 v4, 0x50

    .line 282
    .line 283
    if-lt v12, v4, :cond_9

    .line 284
    .line 285
    const/16 v4, 0x54

    .line 286
    .line 287
    if-gt v12, v4, :cond_9

    .line 288
    .line 289
    add-int/lit8 v12, v12, 0x2b

    .line 290
    .line 291
    goto :goto_7

    .line 292
    :cond_9
    const/16 v4, 0x55

    .line 293
    .line 294
    if-ne v12, v4, :cond_a

    .line 295
    .line 296
    goto :goto_6

    .line 297
    :cond_a
    const/16 v4, 0x56

    .line 298
    .line 299
    if-ne v12, v4, :cond_b

    .line 300
    .line 301
    const/16 v4, 0x40

    .line 302
    .line 303
    goto :goto_8

    .line 304
    :cond_b
    const/16 v4, 0x57

    .line 305
    .line 306
    if-ne v12, v4, :cond_c

    .line 307
    .line 308
    const/16 v4, 0x60

    .line 309
    .line 310
    goto :goto_8

    .line 311
    :cond_c
    const/16 v4, 0x58

    .line 312
    .line 313
    if-lt v12, v4, :cond_d

    .line 314
    .line 315
    if-gt v12, v15, :cond_d

    .line 316
    .line 317
    const/16 v4, 0x7f

    .line 318
    .line 319
    goto :goto_8

    .line 320
    :cond_d
    invoke-static {}, Lq5/e;->a()Lq5/e;

    .line 321
    .line 322
    .line 323
    move-result-object v1

    .line 324
    throw v1

    .line 325
    :pswitch_3
    if-lt v12, v4, :cond_e

    .line 326
    .line 327
    if-gt v12, v15, :cond_e

    .line 328
    .line 329
    sub-int/2addr v12, v2

    .line 330
    goto :goto_7

    .line 331
    :goto_8
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 332
    .line 333
    .line 334
    goto :goto_9

    .line 335
    :cond_e
    invoke-static {}, Lq5/e;->a()Lq5/e;

    .line 336
    .line 337
    .line 338
    move-result-object v1

    .line 339
    throw v1

    .line 340
    :cond_f
    invoke-static {}, Lq5/e;->a()Lq5/e;

    .line 341
    .line 342
    .line 343
    move-result-object v1

    .line 344
    throw v1

    .line 345
    :cond_10
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 346
    .line 347
    .line 348
    :goto_9
    add-int/2addr v9, v5

    .line 349
    const/4 v4, 0x2

    .line 350
    goto/16 :goto_5

    .line 351
    .line 352
    :cond_11
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 353
    .line 354
    .line 355
    move-result-object v1

    .line 356
    aget v2, v6, v5

    .line 357
    .line 358
    aget v4, v6, v3

    .line 359
    .line 360
    add-int/2addr v2, v4

    .line 361
    int-to-float v2, v2

    .line 362
    const/high16 v4, 0x40000000    # 2.0f

    .line 363
    .line 364
    div-float/2addr v2, v4

    .line 365
    int-to-float v6, v7

    .line 366
    int-to-float v7, v14

    .line 367
    div-float/2addr v7, v4

    .line 368
    add-float/2addr v7, v6

    .line 369
    new-instance v4, Lq5/m;

    .line 370
    .line 371
    new-instance v6, Lq5/o;

    .line 372
    .line 373
    move/from16 v13, p1

    .line 374
    .line 375
    int-to-float v8, v13

    .line 376
    invoke-direct {v6, v2, v8}, Lq5/o;-><init>(FF)V

    .line 377
    .line 378
    .line 379
    new-instance v2, Lq5/o;

    .line 380
    .line 381
    invoke-direct {v2, v7, v8}, Lq5/o;-><init>(FF)V

    .line 382
    .line 383
    .line 384
    const/4 v7, 0x2

    .line 385
    new-array v7, v7, [Lq5/o;

    .line 386
    .line 387
    aput-object v6, v7, v3

    .line 388
    .line 389
    aput-object v2, v7, v5

    .line 390
    .line 391
    sget-object v2, Lq5/a;->J:Lq5/a;

    .line 392
    .line 393
    const/4 v3, 0x0

    .line 394
    invoke-direct {v4, v1, v3, v7, v2}, Lq5/m;-><init>(Ljava/lang/String;[B[Lq5/o;Lq5/a;)V

    .line 395
    .line 396
    .line 397
    return-object v4

    .line 398
    :cond_12
    sget-object v1, Lq5/i;->I:Lq5/i;

    .line 399
    .line 400
    throw v1

    .line 401
    :cond_13
    sget-object v1, Lq5/i;->I:Lq5/i;

    .line 402
    .line 403
    throw v1

    .line 404
    :cond_14
    move/from16 v13, p1

    .line 405
    .line 406
    move v7, v12

    .line 407
    goto/16 :goto_1

    .line 408
    .line 409
    :cond_15
    move/from16 v13, p1

    .line 410
    .line 411
    add-int/2addr v12, v5

    .line 412
    const/4 v4, 0x2

    .line 413
    goto/16 :goto_2

    .line 414
    .line 415
    :cond_16
    sget-object v1, Lq5/i;->I:Lq5/i;

    .line 416
    .line 417
    throw v1

    .line 418
    :cond_17
    sget-object v1, Lq5/i;->I:Lq5/i;

    .line 419
    .line 420
    throw v1

    .line 421
    :cond_18
    move/from16 v13, p1

    .line 422
    .line 423
    aget v4, v8, v3

    .line 424
    .line 425
    aget v14, v8, v5

    .line 426
    .line 427
    add-int/2addr v4, v14

    .line 428
    add-int/2addr v10, v4

    .line 429
    add-int/lit8 v4, v12, -0x1

    .line 430
    .line 431
    const/4 v14, 0x2

    .line 432
    invoke-static {v8, v14, v8, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 433
    .line 434
    .line 435
    aput v3, v8, v4

    .line 436
    .line 437
    aput v3, v8, v12

    .line 438
    .line 439
    add-int/lit8 v12, v12, -0x1

    .line 440
    .line 441
    goto :goto_a

    .line 442
    :cond_19
    move/from16 v13, p1

    .line 443
    .line 444
    const/4 v14, 0x2

    .line 445
    add-int/2addr v12, v5

    .line 446
    :goto_a
    aput v5, v8, v12

    .line 447
    .line 448
    xor-int/2addr v11, v5

    .line 449
    :goto_b
    add-int/2addr v7, v5

    .line 450
    const/4 v4, 0x2

    .line 451
    goto/16 :goto_0

    .line 452
    .line 453
    :cond_1a
    sget-object v1, Lq5/i;->I:Lq5/i;

    .line 454
    .line 455
    throw v1

    .line 456
    nop

    .line 457
    :pswitch_data_0
    .packed-switch 0x61
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
