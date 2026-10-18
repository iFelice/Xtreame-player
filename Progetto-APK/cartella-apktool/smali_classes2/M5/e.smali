.class public final LM5/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final f:LM5/d;


# instance fields
.field public final a:Lw5/b;

.field public final b:Ljava/util/ArrayList;

.field public c:Z

.field public final d:[I

.field public final e:Lq5/p;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, LM5/d;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, LM5/e;->f:LM5/d;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Lw5/b;Lq5/p;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LM5/e;->a:Lw5/b;

    .line 5
    .line 6
    new-instance p1, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, LM5/e;->b:Ljava/util/ArrayList;

    .line 12
    .line 13
    const/4 p1, 0x5

    .line 14
    new-array p1, p1, [I

    .line 15
    .line 16
    iput-object p1, p0, LM5/e;->d:[I

    .line 17
    .line 18
    iput-object p2, p0, LM5/e;->e:Lq5/p;

    .line 19
    .line 20
    return-void
.end method

.method public static a([II)F
    .locals 1

    .line 1
    const/4 v0, 0x4

    .line 2
    aget v0, p0, v0

    .line 3
    .line 4
    sub-int/2addr p1, v0

    .line 5
    const/4 v0, 0x3

    .line 6
    aget v0, p0, v0

    .line 7
    .line 8
    sub-int/2addr p1, v0

    .line 9
    int-to-float p1, p1

    .line 10
    const/4 v0, 0x2

    .line 11
    aget p0, p0, v0

    .line 12
    .line 13
    int-to-float p0, p0

    .line 14
    const/high16 v0, 0x40000000    # 2.0f

    .line 15
    .line 16
    div-float/2addr p0, v0

    .line 17
    sub-float/2addr p1, p0

    .line 18
    return p1
.end method

.method public static b([I)Z
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x0

    .line 4
    :goto_0
    const/4 v3, 0x5

    .line 5
    if-ge v1, v3, :cond_1

    .line 6
    .line 7
    aget v3, p0, v1

    .line 8
    .line 9
    if-nez v3, :cond_0

    .line 10
    .line 11
    return v0

    .line 12
    :cond_0
    add-int/2addr v2, v3

    .line 13
    add-int/lit8 v1, v1, 0x1

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_1
    const/4 v1, 0x7

    .line 17
    if-ge v2, v1, :cond_2

    .line 18
    .line 19
    return v0

    .line 20
    :cond_2
    int-to-float v1, v2

    .line 21
    const/high16 v2, 0x40e00000    # 7.0f

    .line 22
    .line 23
    div-float/2addr v1, v2

    .line 24
    const/high16 v2, 0x40000000    # 2.0f

    .line 25
    .line 26
    div-float v2, v1, v2

    .line 27
    .line 28
    aget v3, p0, v0

    .line 29
    .line 30
    int-to-float v3, v3

    .line 31
    sub-float v3, v1, v3

    .line 32
    .line 33
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    cmpg-float v3, v3, v2

    .line 38
    .line 39
    if-gez v3, :cond_3

    .line 40
    .line 41
    const/4 v3, 0x1

    .line 42
    aget v4, p0, v3

    .line 43
    .line 44
    int-to-float v4, v4

    .line 45
    sub-float v4, v1, v4

    .line 46
    .line 47
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    .line 48
    .line 49
    .line 50
    move-result v4

    .line 51
    cmpg-float v4, v4, v2

    .line 52
    .line 53
    if-gez v4, :cond_3

    .line 54
    .line 55
    const/high16 v4, 0x40400000    # 3.0f

    .line 56
    .line 57
    mul-float v5, v1, v4

    .line 58
    .line 59
    const/4 v6, 0x2

    .line 60
    aget v6, p0, v6

    .line 61
    .line 62
    int-to-float v6, v6

    .line 63
    sub-float/2addr v5, v6

    .line 64
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    .line 65
    .line 66
    .line 67
    move-result v5

    .line 68
    mul-float v4, v4, v2

    .line 69
    .line 70
    cmpg-float v4, v5, v4

    .line 71
    .line 72
    if-gez v4, :cond_3

    .line 73
    .line 74
    const/4 v4, 0x3

    .line 75
    aget v4, p0, v4

    .line 76
    .line 77
    int-to-float v4, v4

    .line 78
    sub-float v4, v1, v4

    .line 79
    .line 80
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    .line 81
    .line 82
    .line 83
    move-result v4

    .line 84
    cmpg-float v4, v4, v2

    .line 85
    .line 86
    if-gez v4, :cond_3

    .line 87
    .line 88
    const/4 v4, 0x4

    .line 89
    aget p0, p0, v4

    .line 90
    .line 91
    int-to-float p0, p0

    .line 92
    sub-float/2addr v1, p0

    .line 93
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 94
    .line 95
    .line 96
    move-result p0

    .line 97
    cmpg-float p0, p0, v2

    .line 98
    .line 99
    if-gez p0, :cond_3

    .line 100
    .line 101
    return v3

    .line 102
    :cond_3
    return v0
.end method

.method public static e(LM5/c;LM5/c;)D
    .locals 2

    .line 1
    iget v0, p1, Lq5/o;->a:F

    .line 2
    .line 3
    iget v1, p0, Lq5/o;->a:F

    .line 4
    .line 5
    sub-float/2addr v1, v0

    .line 6
    float-to-double v0, v1

    .line 7
    iget p0, p0, Lq5/o;->b:F

    .line 8
    .line 9
    iget p1, p1, Lq5/o;->b:F

    .line 10
    .line 11
    sub-float/2addr p0, p1

    .line 12
    float-to-double p0, p0

    .line 13
    mul-double v0, v0, v0

    .line 14
    .line 15
    mul-double p0, p0, p0

    .line 16
    .line 17
    add-double/2addr p0, v0

    .line 18
    return-wide p0
.end method


# virtual methods
.method public final c(II[I)Z
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p3

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    aget v3, v1, v2

    .line 7
    .line 8
    const/4 v4, 0x1

    .line 9
    aget v5, v1, v4

    .line 10
    .line 11
    add-int/2addr v3, v5

    .line 12
    const/4 v5, 0x2

    .line 13
    aget v6, v1, v5

    .line 14
    .line 15
    add-int/2addr v3, v6

    .line 16
    const/4 v6, 0x3

    .line 17
    aget v7, v1, v6

    .line 18
    .line 19
    add-int/2addr v3, v7

    .line 20
    const/4 v7, 0x4

    .line 21
    aget v8, v1, v7

    .line 22
    .line 23
    add-int/2addr v3, v8

    .line 24
    move/from16 v8, p2

    .line 25
    .line 26
    invoke-static {v1, v8}, LM5/e;->a([II)F

    .line 27
    .line 28
    .line 29
    move-result v8

    .line 30
    float-to-int v8, v8

    .line 31
    aget v9, v1, v5

    .line 32
    .line 33
    iget-object v10, v0, LM5/e;->a:Lw5/b;

    .line 34
    .line 35
    iget v11, v10, Lw5/b;->H:I

    .line 36
    .line 37
    iget-object v12, v0, LM5/e;->d:[I

    .line 38
    .line 39
    invoke-static {v12, v2}, Ljava/util/Arrays;->fill([II)V

    .line 40
    .line 41
    .line 42
    move/from16 v13, p1

    .line 43
    .line 44
    :goto_0
    if-ltz v13, :cond_0

    .line 45
    .line 46
    invoke-virtual {v10, v8, v13}, Lw5/b;->b(II)Z

    .line 47
    .line 48
    .line 49
    move-result v14

    .line 50
    if-eqz v14, :cond_0

    .line 51
    .line 52
    aget v14, v12, v5

    .line 53
    .line 54
    add-int/2addr v14, v4

    .line 55
    aput v14, v12, v5

    .line 56
    .line 57
    add-int/lit8 v13, v13, -0x1

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_0
    const/4 v15, 0x5

    .line 61
    if-gez v13, :cond_2

    .line 62
    .line 63
    :cond_1
    :goto_1
    const/high16 v9, 0x7fc00000    # Float.NaN

    .line 64
    .line 65
    goto/16 :goto_7

    .line 66
    .line 67
    :cond_2
    :goto_2
    if-ltz v13, :cond_3

    .line 68
    .line 69
    invoke-virtual {v10, v8, v13}, Lw5/b;->b(II)Z

    .line 70
    .line 71
    .line 72
    move-result v16

    .line 73
    if-nez v16, :cond_3

    .line 74
    .line 75
    aget v14, v12, v4

    .line 76
    .line 77
    if-gt v14, v9, :cond_3

    .line 78
    .line 79
    add-int/lit8 v14, v14, 0x1

    .line 80
    .line 81
    aput v14, v12, v4

    .line 82
    .line 83
    add-int/lit8 v13, v13, -0x1

    .line 84
    .line 85
    goto :goto_2

    .line 86
    :cond_3
    if-ltz v13, :cond_1

    .line 87
    .line 88
    aget v14, v12, v4

    .line 89
    .line 90
    if-le v14, v9, :cond_4

    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_4
    :goto_3
    if-ltz v13, :cond_5

    .line 94
    .line 95
    invoke-virtual {v10, v8, v13}, Lw5/b;->b(II)Z

    .line 96
    .line 97
    .line 98
    move-result v14

    .line 99
    if-eqz v14, :cond_5

    .line 100
    .line 101
    aget v14, v12, v2

    .line 102
    .line 103
    if-gt v14, v9, :cond_5

    .line 104
    .line 105
    add-int/lit8 v14, v14, 0x1

    .line 106
    .line 107
    aput v14, v12, v2

    .line 108
    .line 109
    add-int/lit8 v13, v13, -0x1

    .line 110
    .line 111
    goto :goto_3

    .line 112
    :cond_5
    aget v13, v12, v2

    .line 113
    .line 114
    if-le v13, v9, :cond_6

    .line 115
    .line 116
    goto :goto_1

    .line 117
    :cond_6
    add-int/lit8 v13, p1, 0x1

    .line 118
    .line 119
    :goto_4
    if-ge v13, v11, :cond_7

    .line 120
    .line 121
    invoke-virtual {v10, v8, v13}, Lw5/b;->b(II)Z

    .line 122
    .line 123
    .line 124
    move-result v14

    .line 125
    if-eqz v14, :cond_7

    .line 126
    .line 127
    aget v14, v12, v5

    .line 128
    .line 129
    add-int/2addr v14, v4

    .line 130
    aput v14, v12, v5

    .line 131
    .line 132
    add-int/lit8 v13, v13, 0x1

    .line 133
    .line 134
    goto :goto_4

    .line 135
    :cond_7
    if-ne v13, v11, :cond_8

    .line 136
    .line 137
    goto :goto_1

    .line 138
    :cond_8
    :goto_5
    if-ge v13, v11, :cond_9

    .line 139
    .line 140
    invoke-virtual {v10, v8, v13}, Lw5/b;->b(II)Z

    .line 141
    .line 142
    .line 143
    move-result v14

    .line 144
    if-nez v14, :cond_9

    .line 145
    .line 146
    aget v14, v12, v6

    .line 147
    .line 148
    if-ge v14, v9, :cond_9

    .line 149
    .line 150
    add-int/lit8 v14, v14, 0x1

    .line 151
    .line 152
    aput v14, v12, v6

    .line 153
    .line 154
    add-int/lit8 v13, v13, 0x1

    .line 155
    .line 156
    goto :goto_5

    .line 157
    :cond_9
    if-eq v13, v11, :cond_1

    .line 158
    .line 159
    aget v14, v12, v6

    .line 160
    .line 161
    if-lt v14, v9, :cond_a

    .line 162
    .line 163
    goto :goto_1

    .line 164
    :cond_a
    :goto_6
    if-ge v13, v11, :cond_b

    .line 165
    .line 166
    invoke-virtual {v10, v8, v13}, Lw5/b;->b(II)Z

    .line 167
    .line 168
    .line 169
    move-result v14

    .line 170
    if-eqz v14, :cond_b

    .line 171
    .line 172
    aget v14, v12, v7

    .line 173
    .line 174
    if-ge v14, v9, :cond_b

    .line 175
    .line 176
    add-int/lit8 v14, v14, 0x1

    .line 177
    .line 178
    aput v14, v12, v7

    .line 179
    .line 180
    add-int/lit8 v13, v13, 0x1

    .line 181
    .line 182
    goto :goto_6

    .line 183
    :cond_b
    aget v11, v12, v7

    .line 184
    .line 185
    if-lt v11, v9, :cond_c

    .line 186
    .line 187
    goto :goto_1

    .line 188
    :cond_c
    aget v9, v12, v2

    .line 189
    .line 190
    aget v14, v12, v4

    .line 191
    .line 192
    add-int/2addr v9, v14

    .line 193
    aget v14, v12, v5

    .line 194
    .line 195
    add-int/2addr v9, v14

    .line 196
    aget v14, v12, v6

    .line 197
    .line 198
    add-int/2addr v9, v14

    .line 199
    add-int/2addr v9, v11

    .line 200
    sub-int/2addr v9, v3

    .line 201
    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    .line 202
    .line 203
    .line 204
    move-result v9

    .line 205
    mul-int/lit8 v9, v9, 0x5

    .line 206
    .line 207
    mul-int/lit8 v11, v3, 0x2

    .line 208
    .line 209
    if-lt v9, v11, :cond_d

    .line 210
    .line 211
    goto/16 :goto_1

    .line 212
    .line 213
    :cond_d
    invoke-static {v12}, LM5/e;->b([I)Z

    .line 214
    .line 215
    .line 216
    move-result v9

    .line 217
    if-eqz v9, :cond_1

    .line 218
    .line 219
    invoke-static {v12, v13}, LM5/e;->a([II)F

    .line 220
    .line 221
    .line 222
    move-result v9

    .line 223
    :goto_7
    invoke-static {v9}, Ljava/lang/Float;->isNaN(F)Z

    .line 224
    .line 225
    .line 226
    move-result v11

    .line 227
    if-nez v11, :cond_2e

    .line 228
    .line 229
    float-to-int v11, v9

    .line 230
    aget v1, v1, v5

    .line 231
    .line 232
    invoke-static {v12, v2}, Ljava/util/Arrays;->fill([II)V

    .line 233
    .line 234
    .line 235
    move v13, v8

    .line 236
    :goto_8
    if-ltz v13, :cond_e

    .line 237
    .line 238
    invoke-virtual {v10, v13, v11}, Lw5/b;->b(II)Z

    .line 239
    .line 240
    .line 241
    move-result v14

    .line 242
    if-eqz v14, :cond_e

    .line 243
    .line 244
    aget v14, v12, v5

    .line 245
    .line 246
    add-int/2addr v14, v4

    .line 247
    aput v14, v12, v5

    .line 248
    .line 249
    add-int/lit8 v13, v13, -0x1

    .line 250
    .line 251
    goto :goto_8

    .line 252
    :cond_e
    iget v14, v10, Lw5/b;->G:I

    .line 253
    .line 254
    if-gez v13, :cond_10

    .line 255
    .line 256
    :cond_f
    :goto_9
    const/high16 v1, 0x7fc00000    # Float.NaN

    .line 257
    .line 258
    goto/16 :goto_f

    .line 259
    .line 260
    :cond_10
    :goto_a
    if-ltz v13, :cond_11

    .line 261
    .line 262
    invoke-virtual {v10, v13, v11}, Lw5/b;->b(II)Z

    .line 263
    .line 264
    .line 265
    move-result v16

    .line 266
    if-nez v16, :cond_11

    .line 267
    .line 268
    aget v15, v12, v4

    .line 269
    .line 270
    if-gt v15, v1, :cond_11

    .line 271
    .line 272
    add-int/lit8 v15, v15, 0x1

    .line 273
    .line 274
    aput v15, v12, v4

    .line 275
    .line 276
    add-int/lit8 v13, v13, -0x1

    .line 277
    .line 278
    const/4 v15, 0x5

    .line 279
    goto :goto_a

    .line 280
    :cond_11
    if-ltz v13, :cond_f

    .line 281
    .line 282
    aget v15, v12, v4

    .line 283
    .line 284
    if-le v15, v1, :cond_12

    .line 285
    .line 286
    goto :goto_9

    .line 287
    :cond_12
    :goto_b
    if-ltz v13, :cond_13

    .line 288
    .line 289
    invoke-virtual {v10, v13, v11}, Lw5/b;->b(II)Z

    .line 290
    .line 291
    .line 292
    move-result v15

    .line 293
    if-eqz v15, :cond_13

    .line 294
    .line 295
    aget v15, v12, v2

    .line 296
    .line 297
    if-gt v15, v1, :cond_13

    .line 298
    .line 299
    add-int/lit8 v15, v15, 0x1

    .line 300
    .line 301
    aput v15, v12, v2

    .line 302
    .line 303
    add-int/lit8 v13, v13, -0x1

    .line 304
    .line 305
    goto :goto_b

    .line 306
    :cond_13
    aget v13, v12, v2

    .line 307
    .line 308
    if-le v13, v1, :cond_14

    .line 309
    .line 310
    goto :goto_9

    .line 311
    :cond_14
    add-int/2addr v8, v4

    .line 312
    :goto_c
    if-ge v8, v14, :cond_15

    .line 313
    .line 314
    invoke-virtual {v10, v8, v11}, Lw5/b;->b(II)Z

    .line 315
    .line 316
    .line 317
    move-result v13

    .line 318
    if-eqz v13, :cond_15

    .line 319
    .line 320
    aget v13, v12, v5

    .line 321
    .line 322
    add-int/2addr v13, v4

    .line 323
    aput v13, v12, v5

    .line 324
    .line 325
    add-int/lit8 v8, v8, 0x1

    .line 326
    .line 327
    goto :goto_c

    .line 328
    :cond_15
    if-ne v8, v14, :cond_16

    .line 329
    .line 330
    goto :goto_9

    .line 331
    :cond_16
    :goto_d
    if-ge v8, v14, :cond_17

    .line 332
    .line 333
    invoke-virtual {v10, v8, v11}, Lw5/b;->b(II)Z

    .line 334
    .line 335
    .line 336
    move-result v13

    .line 337
    if-nez v13, :cond_17

    .line 338
    .line 339
    aget v13, v12, v6

    .line 340
    .line 341
    if-ge v13, v1, :cond_17

    .line 342
    .line 343
    add-int/lit8 v13, v13, 0x1

    .line 344
    .line 345
    aput v13, v12, v6

    .line 346
    .line 347
    add-int/lit8 v8, v8, 0x1

    .line 348
    .line 349
    goto :goto_d

    .line 350
    :cond_17
    if-eq v8, v14, :cond_f

    .line 351
    .line 352
    aget v13, v12, v6

    .line 353
    .line 354
    if-lt v13, v1, :cond_18

    .line 355
    .line 356
    goto :goto_9

    .line 357
    :cond_18
    :goto_e
    if-ge v8, v14, :cond_19

    .line 358
    .line 359
    invoke-virtual {v10, v8, v11}, Lw5/b;->b(II)Z

    .line 360
    .line 361
    .line 362
    move-result v13

    .line 363
    if-eqz v13, :cond_19

    .line 364
    .line 365
    aget v13, v12, v7

    .line 366
    .line 367
    if-ge v13, v1, :cond_19

    .line 368
    .line 369
    add-int/lit8 v13, v13, 0x1

    .line 370
    .line 371
    aput v13, v12, v7

    .line 372
    .line 373
    add-int/lit8 v8, v8, 0x1

    .line 374
    .line 375
    goto :goto_e

    .line 376
    :cond_19
    aget v13, v12, v7

    .line 377
    .line 378
    if-lt v13, v1, :cond_1a

    .line 379
    .line 380
    goto :goto_9

    .line 381
    :cond_1a
    aget v1, v12, v2

    .line 382
    .line 383
    aget v15, v12, v4

    .line 384
    .line 385
    add-int/2addr v1, v15

    .line 386
    aget v15, v12, v5

    .line 387
    .line 388
    add-int/2addr v1, v15

    .line 389
    aget v15, v12, v6

    .line 390
    .line 391
    add-int/2addr v1, v15

    .line 392
    add-int/2addr v1, v13

    .line 393
    sub-int/2addr v1, v3

    .line 394
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    .line 395
    .line 396
    .line 397
    move-result v1

    .line 398
    const/4 v13, 0x5

    .line 399
    mul-int/lit8 v1, v1, 0x5

    .line 400
    .line 401
    if-lt v1, v3, :cond_1b

    .line 402
    .line 403
    goto/16 :goto_9

    .line 404
    .line 405
    :cond_1b
    invoke-static {v12}, LM5/e;->b([I)Z

    .line 406
    .line 407
    .line 408
    move-result v1

    .line 409
    if-eqz v1, :cond_f

    .line 410
    .line 411
    invoke-static {v12, v8}, LM5/e;->a([II)F

    .line 412
    .line 413
    .line 414
    move-result v1

    .line 415
    :goto_f
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    .line 416
    .line 417
    .line 418
    move-result v8

    .line 419
    if-nez v8, :cond_2e

    .line 420
    .line 421
    float-to-int v8, v1

    .line 422
    invoke-static {v12, v2}, Ljava/util/Arrays;->fill([II)V

    .line 423
    .line 424
    .line 425
    const/4 v13, 0x0

    .line 426
    :goto_10
    if-lt v11, v13, :cond_1c

    .line 427
    .line 428
    if-lt v8, v13, :cond_1c

    .line 429
    .line 430
    sub-int v15, v8, v13

    .line 431
    .line 432
    sub-int v7, v11, v13

    .line 433
    .line 434
    invoke-virtual {v10, v15, v7}, Lw5/b;->b(II)Z

    .line 435
    .line 436
    .line 437
    move-result v7

    .line 438
    if-eqz v7, :cond_1c

    .line 439
    .line 440
    aget v7, v12, v5

    .line 441
    .line 442
    add-int/2addr v7, v4

    .line 443
    aput v7, v12, v5

    .line 444
    .line 445
    add-int/lit8 v13, v13, 0x1

    .line 446
    .line 447
    const/4 v7, 0x4

    .line 448
    goto :goto_10

    .line 449
    :cond_1c
    aget v7, v12, v5

    .line 450
    .line 451
    if-nez v7, :cond_1d

    .line 452
    .line 453
    goto/16 :goto_19

    .line 454
    .line 455
    :cond_1d
    :goto_11
    if-lt v11, v13, :cond_1e

    .line 456
    .line 457
    if-lt v8, v13, :cond_1e

    .line 458
    .line 459
    sub-int v7, v8, v13

    .line 460
    .line 461
    sub-int v15, v11, v13

    .line 462
    .line 463
    invoke-virtual {v10, v7, v15}, Lw5/b;->b(II)Z

    .line 464
    .line 465
    .line 466
    move-result v7

    .line 467
    if-nez v7, :cond_1e

    .line 468
    .line 469
    aget v7, v12, v4

    .line 470
    .line 471
    add-int/2addr v7, v4

    .line 472
    aput v7, v12, v4

    .line 473
    .line 474
    add-int/lit8 v13, v13, 0x1

    .line 475
    .line 476
    goto :goto_11

    .line 477
    :cond_1e
    aget v7, v12, v4

    .line 478
    .line 479
    if-nez v7, :cond_1f

    .line 480
    .line 481
    goto/16 :goto_19

    .line 482
    .line 483
    :cond_1f
    :goto_12
    if-lt v11, v13, :cond_20

    .line 484
    .line 485
    if-lt v8, v13, :cond_20

    .line 486
    .line 487
    sub-int v7, v8, v13

    .line 488
    .line 489
    sub-int v15, v11, v13

    .line 490
    .line 491
    invoke-virtual {v10, v7, v15}, Lw5/b;->b(II)Z

    .line 492
    .line 493
    .line 494
    move-result v7

    .line 495
    if-eqz v7, :cond_20

    .line 496
    .line 497
    aget v7, v12, v2

    .line 498
    .line 499
    add-int/2addr v7, v4

    .line 500
    aput v7, v12, v2

    .line 501
    .line 502
    add-int/lit8 v13, v13, 0x1

    .line 503
    .line 504
    goto :goto_12

    .line 505
    :cond_20
    aget v7, v12, v2

    .line 506
    .line 507
    if-nez v7, :cond_21

    .line 508
    .line 509
    goto/16 :goto_19

    .line 510
    .line 511
    :cond_21
    const/4 v7, 0x1

    .line 512
    :goto_13
    add-int v13, v11, v7

    .line 513
    .line 514
    iget v15, v10, Lw5/b;->H:I

    .line 515
    .line 516
    if-ge v13, v15, :cond_22

    .line 517
    .line 518
    add-int v2, v8, v7

    .line 519
    .line 520
    if-ge v2, v14, :cond_22

    .line 521
    .line 522
    invoke-virtual {v10, v2, v13}, Lw5/b;->b(II)Z

    .line 523
    .line 524
    .line 525
    move-result v2

    .line 526
    if-eqz v2, :cond_22

    .line 527
    .line 528
    aget v2, v12, v5

    .line 529
    .line 530
    add-int/2addr v2, v4

    .line 531
    aput v2, v12, v5

    .line 532
    .line 533
    add-int/lit8 v7, v7, 0x1

    .line 534
    .line 535
    const/4 v2, 0x0

    .line 536
    goto :goto_13

    .line 537
    :cond_22
    :goto_14
    add-int v2, v11, v7

    .line 538
    .line 539
    if-ge v2, v15, :cond_23

    .line 540
    .line 541
    add-int v13, v8, v7

    .line 542
    .line 543
    if-ge v13, v14, :cond_23

    .line 544
    .line 545
    invoke-virtual {v10, v13, v2}, Lw5/b;->b(II)Z

    .line 546
    .line 547
    .line 548
    move-result v2

    .line 549
    if-nez v2, :cond_23

    .line 550
    .line 551
    aget v2, v12, v6

    .line 552
    .line 553
    add-int/2addr v2, v4

    .line 554
    aput v2, v12, v6

    .line 555
    .line 556
    add-int/lit8 v7, v7, 0x1

    .line 557
    .line 558
    goto :goto_14

    .line 559
    :cond_23
    aget v2, v12, v6

    .line 560
    .line 561
    if-nez v2, :cond_24

    .line 562
    .line 563
    goto/16 :goto_19

    .line 564
    .line 565
    :cond_24
    :goto_15
    add-int v2, v11, v7

    .line 566
    .line 567
    if-ge v2, v15, :cond_25

    .line 568
    .line 569
    add-int v13, v8, v7

    .line 570
    .line 571
    if-ge v13, v14, :cond_25

    .line 572
    .line 573
    invoke-virtual {v10, v13, v2}, Lw5/b;->b(II)Z

    .line 574
    .line 575
    .line 576
    move-result v2

    .line 577
    if-eqz v2, :cond_25

    .line 578
    .line 579
    const/4 v2, 0x4

    .line 580
    aget v13, v12, v2

    .line 581
    .line 582
    add-int/2addr v13, v4

    .line 583
    aput v13, v12, v2

    .line 584
    .line 585
    add-int/lit8 v7, v7, 0x1

    .line 586
    .line 587
    goto :goto_15

    .line 588
    :cond_25
    const/4 v2, 0x4

    .line 589
    aget v7, v12, v2

    .line 590
    .line 591
    if-nez v7, :cond_26

    .line 592
    .line 593
    goto/16 :goto_19

    .line 594
    .line 595
    :cond_26
    const/4 v2, 0x0

    .line 596
    const/4 v7, 0x0

    .line 597
    const/4 v8, 0x5

    .line 598
    :goto_16
    if-ge v2, v8, :cond_28

    .line 599
    .line 600
    aget v10, v12, v2

    .line 601
    .line 602
    if-nez v10, :cond_27

    .line 603
    .line 604
    goto/16 :goto_19

    .line 605
    .line 606
    :cond_27
    add-int/2addr v7, v10

    .line 607
    add-int/lit8 v2, v2, 0x1

    .line 608
    .line 609
    goto :goto_16

    .line 610
    :cond_28
    const/4 v2, 0x7

    .line 611
    if-ge v7, v2, :cond_29

    .line 612
    .line 613
    goto/16 :goto_19

    .line 614
    .line 615
    :cond_29
    int-to-float v2, v7

    .line 616
    const/high16 v7, 0x40e00000    # 7.0f

    .line 617
    .line 618
    div-float/2addr v2, v7

    .line 619
    const v8, 0x3faa9fbe    # 1.333f

    .line 620
    .line 621
    .line 622
    div-float v8, v2, v8

    .line 623
    .line 624
    const/4 v10, 0x0

    .line 625
    aget v11, v12, v10

    .line 626
    .line 627
    int-to-float v10, v11

    .line 628
    sub-float v10, v2, v10

    .line 629
    .line 630
    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    .line 631
    .line 632
    .line 633
    move-result v10

    .line 634
    cmpg-float v10, v10, v8

    .line 635
    .line 636
    if-gez v10, :cond_2e

    .line 637
    .line 638
    aget v10, v12, v4

    .line 639
    .line 640
    int-to-float v10, v10

    .line 641
    sub-float v10, v2, v10

    .line 642
    .line 643
    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    .line 644
    .line 645
    .line 646
    move-result v10

    .line 647
    cmpg-float v10, v10, v8

    .line 648
    .line 649
    if-gez v10, :cond_2e

    .line 650
    .line 651
    const/high16 v10, 0x40400000    # 3.0f

    .line 652
    .line 653
    mul-float v11, v2, v10

    .line 654
    .line 655
    aget v5, v12, v5

    .line 656
    .line 657
    int-to-float v5, v5

    .line 658
    sub-float/2addr v11, v5

    .line 659
    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    .line 660
    .line 661
    .line 662
    move-result v5

    .line 663
    mul-float v10, v10, v8

    .line 664
    .line 665
    cmpg-float v5, v5, v10

    .line 666
    .line 667
    if-gez v5, :cond_2e

    .line 668
    .line 669
    aget v5, v12, v6

    .line 670
    .line 671
    int-to-float v5, v5

    .line 672
    sub-float v5, v2, v5

    .line 673
    .line 674
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    .line 675
    .line 676
    .line 677
    move-result v5

    .line 678
    cmpg-float v5, v5, v8

    .line 679
    .line 680
    if-gez v5, :cond_2e

    .line 681
    .line 682
    const/4 v5, 0x4

    .line 683
    aget v5, v12, v5

    .line 684
    .line 685
    int-to-float v5, v5

    .line 686
    sub-float/2addr v2, v5

    .line 687
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    .line 688
    .line 689
    .line 690
    move-result v2

    .line 691
    cmpg-float v2, v2, v8

    .line 692
    .line 693
    if-gez v2, :cond_2e

    .line 694
    .line 695
    int-to-float v2, v3

    .line 696
    div-float/2addr v2, v7

    .line 697
    const/4 v3, 0x0

    .line 698
    :goto_17
    iget-object v5, v0, LM5/e;->b:Ljava/util/ArrayList;

    .line 699
    .line 700
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 701
    .line 702
    .line 703
    move-result v6

    .line 704
    if-ge v3, v6, :cond_2c

    .line 705
    .line 706
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 707
    .line 708
    .line 709
    move-result-object v6

    .line 710
    check-cast v6, LM5/c;

    .line 711
    .line 712
    iget v7, v6, Lq5/o;->b:F

    .line 713
    .line 714
    sub-float v7, v9, v7

    .line 715
    .line 716
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    .line 717
    .line 718
    .line 719
    move-result v7

    .line 720
    cmpg-float v7, v7, v2

    .line 721
    .line 722
    if-gtz v7, :cond_2b

    .line 723
    .line 724
    iget v7, v6, Lq5/o;->a:F

    .line 725
    .line 726
    sub-float v8, v1, v7

    .line 727
    .line 728
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    .line 729
    .line 730
    .line 731
    move-result v8

    .line 732
    cmpg-float v8, v8, v2

    .line 733
    .line 734
    if-gtz v8, :cond_2b

    .line 735
    .line 736
    iget v8, v6, LM5/c;->c:F

    .line 737
    .line 738
    sub-float v10, v2, v8

    .line 739
    .line 740
    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    .line 741
    .line 742
    .line 743
    move-result v10

    .line 744
    const/high16 v11, 0x3f800000    # 1.0f

    .line 745
    .line 746
    cmpg-float v11, v10, v11

    .line 747
    .line 748
    if-lez v11, :cond_2a

    .line 749
    .line 750
    cmpg-float v10, v10, v8

    .line 751
    .line 752
    if-gtz v10, :cond_2b

    .line 753
    .line 754
    :cond_2a
    iget v10, v6, LM5/c;->d:I

    .line 755
    .line 756
    add-int/lit8 v11, v10, 0x1

    .line 757
    .line 758
    int-to-float v10, v10

    .line 759
    mul-float v7, v7, v10

    .line 760
    .line 761
    add-float/2addr v7, v1

    .line 762
    int-to-float v1, v11

    .line 763
    div-float/2addr v7, v1

    .line 764
    iget v6, v6, Lq5/o;->b:F

    .line 765
    .line 766
    mul-float v6, v6, v10

    .line 767
    .line 768
    add-float/2addr v6, v9

    .line 769
    div-float/2addr v6, v1

    .line 770
    mul-float v10, v10, v8

    .line 771
    .line 772
    add-float/2addr v10, v2

    .line 773
    div-float/2addr v10, v1

    .line 774
    new-instance v1, LM5/c;

    .line 775
    .line 776
    invoke-direct {v1, v7, v6, v10, v11}, LM5/c;-><init>(FFFI)V

    .line 777
    .line 778
    .line 779
    invoke-virtual {v5, v3, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 780
    .line 781
    .line 782
    goto :goto_18

    .line 783
    :cond_2b
    add-int/lit8 v3, v3, 0x1

    .line 784
    .line 785
    goto :goto_17

    .line 786
    :cond_2c
    new-instance v3, LM5/c;

    .line 787
    .line 788
    invoke-direct {v3, v1, v9, v2, v4}, LM5/c;-><init>(FFFI)V

    .line 789
    .line 790
    .line 791
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 792
    .line 793
    .line 794
    iget-object v1, v0, LM5/e;->e:Lq5/p;

    .line 795
    .line 796
    if-eqz v1, :cond_2d

    .line 797
    .line 798
    invoke-interface {v1, v3}, Lq5/p;->a(Lq5/o;)V

    .line 799
    .line 800
    .line 801
    :cond_2d
    :goto_18
    return v4

    .line 802
    :cond_2e
    :goto_19
    const/4 v1, 0x0

    .line 803
    return v1
.end method

.method public final d()Z
    .locals 10

    .line 1
    iget-object v0, p0, LM5/e;->b:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    const/4 v3, 0x0

    .line 12
    const/4 v4, 0x0

    .line 13
    const/4 v5, 0x0

    .line 14
    const/4 v6, 0x0

    .line 15
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v7

    .line 19
    if-eqz v7, :cond_1

    .line 20
    .line 21
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v7

    .line 25
    check-cast v7, LM5/c;

    .line 26
    .line 27
    iget v8, v7, LM5/c;->d:I

    .line 28
    .line 29
    const/4 v9, 0x2

    .line 30
    if-lt v8, v9, :cond_0

    .line 31
    .line 32
    add-int/lit8 v5, v5, 0x1

    .line 33
    .line 34
    iget v7, v7, LM5/c;->c:F

    .line 35
    .line 36
    add-float/2addr v6, v7

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    const/4 v2, 0x3

    .line 39
    if-ge v5, v2, :cond_2

    .line 40
    .line 41
    return v3

    .line 42
    :cond_2
    int-to-float v1, v1

    .line 43
    div-float v1, v6, v1

    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    if-eqz v2, :cond_3

    .line 54
    .line 55
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    check-cast v2, LM5/c;

    .line 60
    .line 61
    iget v2, v2, LM5/c;->c:F

    .line 62
    .line 63
    sub-float/2addr v2, v1

    .line 64
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    add-float/2addr v4, v2

    .line 69
    goto :goto_1

    .line 70
    :cond_3
    const v0, 0x3d4ccccd    # 0.05f

    .line 71
    .line 72
    .line 73
    mul-float v6, v6, v0

    .line 74
    .line 75
    cmpg-float v0, v4, v6

    .line 76
    .line 77
    if-gtz v0, :cond_4

    .line 78
    .line 79
    const/4 v0, 0x1

    .line 80
    return v0

    .line 81
    :cond_4
    return v3
.end method
