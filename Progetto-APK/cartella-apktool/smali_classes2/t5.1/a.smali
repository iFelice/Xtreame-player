.class public final Lt5/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final g:[I


# instance fields
.field public final a:Lw5/b;

.field public b:Z

.field public c:I

.field public d:I

.field public e:I

.field public f:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    const/16 v0, 0x83b

    .line 2
    .line 3
    const/16 v1, 0x707

    .line 4
    .line 5
    const/16 v2, 0xee0

    .line 6
    .line 7
    const/16 v3, 0x1dc

    .line 8
    .line 9
    filled-new-array {v2, v3, v0, v1}, [I

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    sput-object v0, Lt5/a;->g:[I

    .line 14
    .line 15
    return-void
.end method

.method public constructor <init>(Lw5/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lt5/a;->a:Lw5/b;

    .line 5
    .line 6
    return-void
.end method

.method public static b([Lq5/o;II)[Lq5/o;
    .locals 11

    .line 1
    const/4 v0, 0x3

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x2

    .line 4
    int-to-float p2, p2

    .line 5
    int-to-float p1, p1

    .line 6
    const/high16 v3, 0x40000000    # 2.0f

    .line 7
    .line 8
    mul-float p1, p1, v3

    .line 9
    .line 10
    div-float/2addr p2, p1

    .line 11
    const/4 p1, 0x0

    .line 12
    aget-object v4, p0, p1

    .line 13
    .line 14
    iget v5, v4, Lq5/o;->a:F

    .line 15
    .line 16
    aget-object v6, p0, v2

    .line 17
    .line 18
    iget v7, v6, Lq5/o;->a:F

    .line 19
    .line 20
    sub-float v8, v5, v7

    .line 21
    .line 22
    iget v4, v4, Lq5/o;->b:F

    .line 23
    .line 24
    iget v6, v6, Lq5/o;->b:F

    .line 25
    .line 26
    sub-float v9, v4, v6

    .line 27
    .line 28
    add-float/2addr v5, v7

    .line 29
    div-float/2addr v5, v3

    .line 30
    add-float/2addr v4, v6

    .line 31
    div-float/2addr v4, v3

    .line 32
    new-instance v6, Lq5/o;

    .line 33
    .line 34
    mul-float v8, v8, p2

    .line 35
    .line 36
    add-float v7, v5, v8

    .line 37
    .line 38
    mul-float v9, v9, p2

    .line 39
    .line 40
    add-float v10, v4, v9

    .line 41
    .line 42
    invoke-direct {v6, v7, v10}, Lq5/o;-><init>(FF)V

    .line 43
    .line 44
    .line 45
    new-instance v7, Lq5/o;

    .line 46
    .line 47
    sub-float/2addr v5, v8

    .line 48
    sub-float/2addr v4, v9

    .line 49
    invoke-direct {v7, v5, v4}, Lq5/o;-><init>(FF)V

    .line 50
    .line 51
    .line 52
    aget-object v4, p0, v1

    .line 53
    .line 54
    iget v5, v4, Lq5/o;->a:F

    .line 55
    .line 56
    aget-object p0, p0, v0

    .line 57
    .line 58
    iget v8, p0, Lq5/o;->a:F

    .line 59
    .line 60
    sub-float v9, v5, v8

    .line 61
    .line 62
    iget v4, v4, Lq5/o;->b:F

    .line 63
    .line 64
    iget p0, p0, Lq5/o;->b:F

    .line 65
    .line 66
    sub-float v10, v4, p0

    .line 67
    .line 68
    add-float/2addr v5, v8

    .line 69
    div-float/2addr v5, v3

    .line 70
    add-float/2addr v4, p0

    .line 71
    div-float/2addr v4, v3

    .line 72
    new-instance p0, Lq5/o;

    .line 73
    .line 74
    mul-float v9, v9, p2

    .line 75
    .line 76
    add-float v3, v5, v9

    .line 77
    .line 78
    mul-float p2, p2, v10

    .line 79
    .line 80
    add-float v8, v4, p2

    .line 81
    .line 82
    invoke-direct {p0, v3, v8}, Lq5/o;-><init>(FF)V

    .line 83
    .line 84
    .line 85
    new-instance v3, Lq5/o;

    .line 86
    .line 87
    sub-float/2addr v5, v9

    .line 88
    sub-float/2addr v4, p2

    .line 89
    invoke-direct {v3, v5, v4}, Lq5/o;-><init>(FF)V

    .line 90
    .line 91
    .line 92
    const/4 p2, 0x4

    .line 93
    new-array p2, p2, [Lq5/o;

    .line 94
    .line 95
    aput-object v6, p2, p1

    .line 96
    .line 97
    aput-object p0, p2, v1

    .line 98
    .line 99
    aput-object v7, p2, v2

    .line 100
    .line 101
    aput-object v3, p2, v0

    .line 102
    .line 103
    return-object p2
.end method


# virtual methods
.method public final a(Z)Lr5/a;
    .locals 36

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, -0x1

    .line 5
    const/16 v3, 0xb

    .line 6
    .line 7
    const/4 v5, 0x3

    .line 8
    const/4 v6, 0x2

    .line 9
    const/4 v7, 0x7

    .line 10
    const/4 v8, 0x1

    .line 11
    iget-object v9, v0, Lt5/a;->a:Lw5/b;

    .line 12
    .line 13
    :try_start_0
    new-instance v10, Lx/n;

    .line 14
    .line 15
    invoke-direct {v10, v9}, Lx/n;-><init>(Lw5/b;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v10}, Lx/n;->b()[Lq5/o;

    .line 19
    .line 20
    .line 21
    move-result-object v10

    .line 22
    aget-object v11, v10, v1

    .line 23
    .line 24
    aget-object v12, v10, v8

    .line 25
    .line 26
    aget-object v13, v10, v6

    .line 27
    .line 28
    aget-object v10, v10, v5
    :try_end_0
    .catch Lq5/i; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catch_0
    iget v10, v9, Lw5/b;->G:I

    .line 32
    .line 33
    div-int/2addr v10, v6

    .line 34
    iget v11, v9, Lw5/b;->H:I

    .line 35
    .line 36
    div-int/2addr v11, v6

    .line 37
    new-instance v12, LN/r;

    .line 38
    .line 39
    add-int/lit8 v13, v10, 0x7

    .line 40
    .line 41
    add-int/lit8 v14, v11, -0x7

    .line 42
    .line 43
    invoke-direct {v12, v13, v14, v3, v1}, LN/r;-><init>(IIII)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v12, v1, v8, v2}, Lt5/a;->e(LN/r;ZII)LN/r;

    .line 47
    .line 48
    .line 49
    move-result-object v12

    .line 50
    invoke-virtual {v12}, LN/r;->c()Lq5/o;

    .line 51
    .line 52
    .line 53
    move-result-object v12

    .line 54
    new-instance v15, LN/r;

    .line 55
    .line 56
    add-int/2addr v11, v7

    .line 57
    invoke-direct {v15, v13, v11, v3, v1}, LN/r;-><init>(IIII)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v15, v1, v8, v8}, Lt5/a;->e(LN/r;ZII)LN/r;

    .line 61
    .line 62
    .line 63
    move-result-object v13

    .line 64
    invoke-virtual {v13}, LN/r;->c()Lq5/o;

    .line 65
    .line 66
    .line 67
    move-result-object v13

    .line 68
    new-instance v15, LN/r;

    .line 69
    .line 70
    sub-int/2addr v10, v7

    .line 71
    invoke-direct {v15, v10, v11, v3, v1}, LN/r;-><init>(IIII)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, v15, v1, v2, v8}, Lt5/a;->e(LN/r;ZII)LN/r;

    .line 75
    .line 76
    .line 77
    move-result-object v11

    .line 78
    invoke-virtual {v11}, LN/r;->c()Lq5/o;

    .line 79
    .line 80
    .line 81
    move-result-object v11

    .line 82
    new-instance v15, LN/r;

    .line 83
    .line 84
    invoke-direct {v15, v10, v14, v3, v1}, LN/r;-><init>(IIII)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0, v15, v1, v2, v2}, Lt5/a;->e(LN/r;ZII)LN/r;

    .line 88
    .line 89
    .line 90
    move-result-object v10

    .line 91
    invoke-virtual {v10}, LN/r;->c()Lq5/o;

    .line 92
    .line 93
    .line 94
    move-result-object v10

    .line 95
    move-object/from16 v35, v13

    .line 96
    .line 97
    move-object v13, v11

    .line 98
    move-object v11, v12

    .line 99
    move-object/from16 v12, v35

    .line 100
    .line 101
    :goto_0
    iget v14, v11, Lq5/o;->a:F

    .line 102
    .line 103
    iget v15, v10, Lq5/o;->a:F

    .line 104
    .line 105
    add-float/2addr v14, v15

    .line 106
    iget v15, v12, Lq5/o;->a:F

    .line 107
    .line 108
    add-float/2addr v14, v15

    .line 109
    iget v15, v13, Lq5/o;->a:F

    .line 110
    .line 111
    add-float/2addr v14, v15

    .line 112
    const/high16 v15, 0x40800000    # 4.0f

    .line 113
    .line 114
    div-float/2addr v14, v15

    .line 115
    invoke-static {v14}, Ld2/v;->s(F)I

    .line 116
    .line 117
    .line 118
    move-result v14

    .line 119
    iget v11, v11, Lq5/o;->b:F

    .line 120
    .line 121
    iget v10, v10, Lq5/o;->b:F

    .line 122
    .line 123
    add-float/2addr v11, v10

    .line 124
    iget v10, v12, Lq5/o;->b:F

    .line 125
    .line 126
    add-float/2addr v11, v10

    .line 127
    iget v10, v13, Lq5/o;->b:F

    .line 128
    .line 129
    add-float/2addr v11, v10

    .line 130
    div-float/2addr v11, v15

    .line 131
    invoke-static {v11}, Ld2/v;->s(F)I

    .line 132
    .line 133
    .line 134
    move-result v10

    .line 135
    const/16 v11, 0xf

    .line 136
    .line 137
    :try_start_1
    new-instance v12, Lx/n;

    .line 138
    .line 139
    invoke-direct {v12, v9, v11, v14, v10}, Lx/n;-><init>(Lw5/b;III)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v12}, Lx/n;->b()[Lq5/o;

    .line 143
    .line 144
    .line 145
    move-result-object v12

    .line 146
    aget-object v13, v12, v1

    .line 147
    .line 148
    aget-object v16, v12, v8

    .line 149
    .line 150
    aget-object v17, v12, v6

    .line 151
    .line 152
    aget-object v10, v12, v5
    :try_end_1
    .catch Lq5/i; {:try_start_1 .. :try_end_1} :catch_1

    .line 153
    .line 154
    move-object/from16 v4, v16

    .line 155
    .line 156
    move-object/from16 v11, v17

    .line 157
    .line 158
    goto :goto_1

    .line 159
    :catch_1
    new-instance v12, LN/r;

    .line 160
    .line 161
    add-int/lit8 v13, v14, 0x7

    .line 162
    .line 163
    add-int/lit8 v11, v10, -0x7

    .line 164
    .line 165
    invoke-direct {v12, v13, v11, v3, v1}, LN/r;-><init>(IIII)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v0, v12, v1, v8, v2}, Lt5/a;->e(LN/r;ZII)LN/r;

    .line 169
    .line 170
    .line 171
    move-result-object v12

    .line 172
    invoke-virtual {v12}, LN/r;->c()Lq5/o;

    .line 173
    .line 174
    .line 175
    move-result-object v12

    .line 176
    new-instance v4, LN/r;

    .line 177
    .line 178
    add-int/2addr v10, v7

    .line 179
    invoke-direct {v4, v13, v10, v3, v1}, LN/r;-><init>(IIII)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {v0, v4, v1, v8, v8}, Lt5/a;->e(LN/r;ZII)LN/r;

    .line 183
    .line 184
    .line 185
    move-result-object v4

    .line 186
    invoke-virtual {v4}, LN/r;->c()Lq5/o;

    .line 187
    .line 188
    .line 189
    move-result-object v4

    .line 190
    new-instance v13, LN/r;

    .line 191
    .line 192
    sub-int/2addr v14, v7

    .line 193
    invoke-direct {v13, v14, v10, v3, v1}, LN/r;-><init>(IIII)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {v0, v13, v1, v2, v8}, Lt5/a;->e(LN/r;ZII)LN/r;

    .line 197
    .line 198
    .line 199
    move-result-object v10

    .line 200
    invoke-virtual {v10}, LN/r;->c()Lq5/o;

    .line 201
    .line 202
    .line 203
    move-result-object v10

    .line 204
    new-instance v13, LN/r;

    .line 205
    .line 206
    invoke-direct {v13, v14, v11, v3, v1}, LN/r;-><init>(IIII)V

    .line 207
    .line 208
    .line 209
    invoke-virtual {v0, v13, v1, v2, v2}, Lt5/a;->e(LN/r;ZII)LN/r;

    .line 210
    .line 211
    .line 212
    move-result-object v11

    .line 213
    invoke-virtual {v11}, LN/r;->c()Lq5/o;

    .line 214
    .line 215
    .line 216
    move-result-object v11

    .line 217
    move-object v13, v12

    .line 218
    move-object/from16 v35, v11

    .line 219
    .line 220
    move-object v11, v10

    .line 221
    move-object/from16 v10, v35

    .line 222
    .line 223
    :goto_1
    iget v12, v13, Lq5/o;->a:F

    .line 224
    .line 225
    iget v14, v10, Lq5/o;->a:F

    .line 226
    .line 227
    add-float/2addr v12, v14

    .line 228
    iget v14, v4, Lq5/o;->a:F

    .line 229
    .line 230
    add-float/2addr v12, v14

    .line 231
    iget v14, v11, Lq5/o;->a:F

    .line 232
    .line 233
    add-float/2addr v12, v14

    .line 234
    div-float/2addr v12, v15

    .line 235
    invoke-static {v12}, Ld2/v;->s(F)I

    .line 236
    .line 237
    .line 238
    move-result v12

    .line 239
    iget v13, v13, Lq5/o;->b:F

    .line 240
    .line 241
    iget v10, v10, Lq5/o;->b:F

    .line 242
    .line 243
    add-float/2addr v13, v10

    .line 244
    iget v4, v4, Lq5/o;->b:F

    .line 245
    .line 246
    add-float/2addr v13, v4

    .line 247
    iget v4, v11, Lq5/o;->b:F

    .line 248
    .line 249
    add-float/2addr v13, v4

    .line 250
    div-float/2addr v13, v15

    .line 251
    invoke-static {v13}, Ld2/v;->s(F)I

    .line 252
    .line 253
    .line 254
    move-result v4

    .line 255
    new-instance v10, LN/r;

    .line 256
    .line 257
    invoke-direct {v10, v12, v4, v3, v1}, LN/r;-><init>(IIII)V

    .line 258
    .line 259
    .line 260
    iput v8, v0, Lt5/a;->e:I

    .line 261
    .line 262
    move-object v4, v10

    .line 263
    move-object v11, v4

    .line 264
    move-object v12, v11

    .line 265
    const/4 v13, 0x1

    .line 266
    :goto_2
    iget v14, v0, Lt5/a;->e:I

    .line 267
    .line 268
    const/16 v15, 0x9

    .line 269
    .line 270
    if-ge v14, v15, :cond_4

    .line 271
    .line 272
    invoke-virtual {v0, v10, v13, v8, v2}, Lt5/a;->e(LN/r;ZII)LN/r;

    .line 273
    .line 274
    .line 275
    move-result-object v14

    .line 276
    invoke-virtual {v0, v4, v13, v8, v8}, Lt5/a;->e(LN/r;ZII)LN/r;

    .line 277
    .line 278
    .line 279
    move-result-object v15

    .line 280
    invoke-virtual {v0, v11, v13, v2, v8}, Lt5/a;->e(LN/r;ZII)LN/r;

    .line 281
    .line 282
    .line 283
    move-result-object v7

    .line 284
    invoke-virtual {v0, v12, v13, v2, v2}, Lt5/a;->e(LN/r;ZII)LN/r;

    .line 285
    .line 286
    .line 287
    move-result-object v8

    .line 288
    iget v2, v0, Lt5/a;->e:I

    .line 289
    .line 290
    if-le v2, v6, :cond_3

    .line 291
    .line 292
    iget v2, v8, LN/r;->H:I

    .line 293
    .line 294
    iget v1, v8, LN/r;->I:I

    .line 295
    .line 296
    iget v3, v14, LN/r;->H:I

    .line 297
    .line 298
    iget v5, v14, LN/r;->I:I

    .line 299
    .line 300
    invoke-static {v2, v1, v3, v5}, Ld2/v;->i(IIII)F

    .line 301
    .line 302
    .line 303
    move-result v1

    .line 304
    iget v2, v0, Lt5/a;->e:I

    .line 305
    .line 306
    int-to-float v2, v2

    .line 307
    mul-float v1, v1, v2

    .line 308
    .line 309
    iget v2, v12, LN/r;->H:I

    .line 310
    .line 311
    iget v3, v12, LN/r;->I:I

    .line 312
    .line 313
    iget v5, v10, LN/r;->H:I

    .line 314
    .line 315
    iget v6, v10, LN/r;->I:I

    .line 316
    .line 317
    invoke-static {v2, v3, v5, v6}, Ld2/v;->i(IIII)F

    .line 318
    .line 319
    .line 320
    move-result v2

    .line 321
    iget v3, v0, Lt5/a;->e:I

    .line 322
    .line 323
    const/4 v5, 0x2

    .line 324
    add-int/2addr v3, v5

    .line 325
    int-to-float v3, v3

    .line 326
    mul-float v2, v2, v3

    .line 327
    .line 328
    div-float/2addr v1, v2

    .line 329
    float-to-double v1, v1

    .line 330
    const-wide/high16 v5, 0x3fe8000000000000L    # 0.75

    .line 331
    .line 332
    cmpg-double v3, v1, v5

    .line 333
    .line 334
    if-ltz v3, :cond_4

    .line 335
    .line 336
    const-wide/high16 v5, 0x3ff4000000000000L    # 1.25

    .line 337
    .line 338
    cmpl-double v3, v1, v5

    .line 339
    .line 340
    if-gtz v3, :cond_4

    .line 341
    .line 342
    new-instance v1, LN/r;

    .line 343
    .line 344
    iget v2, v14, LN/r;->H:I

    .line 345
    .line 346
    const/4 v3, 0x3

    .line 347
    sub-int/2addr v2, v3

    .line 348
    iget v5, v14, LN/r;->I:I

    .line 349
    .line 350
    add-int/2addr v5, v3

    .line 351
    const/4 v3, 0x0

    .line 352
    const/16 v6, 0xb

    .line 353
    .line 354
    invoke-direct {v1, v2, v5, v6, v3}, LN/r;-><init>(IIII)V

    .line 355
    .line 356
    .line 357
    new-instance v2, LN/r;

    .line 358
    .line 359
    iget v5, v15, LN/r;->H:I

    .line 360
    .line 361
    const/16 v18, 0x3

    .line 362
    .line 363
    add-int/lit8 v5, v5, -0x3

    .line 364
    .line 365
    iget v3, v15, LN/r;->I:I

    .line 366
    .line 367
    add-int/lit8 v3, v3, -0x3

    .line 368
    .line 369
    move-object/from16 v19, v14

    .line 370
    .line 371
    const/4 v14, 0x0

    .line 372
    invoke-direct {v2, v5, v3, v6, v14}, LN/r;-><init>(IIII)V

    .line 373
    .line 374
    .line 375
    new-instance v3, LN/r;

    .line 376
    .line 377
    iget v5, v7, LN/r;->H:I

    .line 378
    .line 379
    add-int/lit8 v5, v5, 0x3

    .line 380
    .line 381
    iget v6, v7, LN/r;->I:I

    .line 382
    .line 383
    add-int/lit8 v6, v6, -0x3

    .line 384
    .line 385
    move-object/from16 v20, v7

    .line 386
    .line 387
    const/16 v7, 0xb

    .line 388
    .line 389
    invoke-direct {v3, v5, v6, v7, v14}, LN/r;-><init>(IIII)V

    .line 390
    .line 391
    .line 392
    new-instance v5, LN/r;

    .line 393
    .line 394
    iget v6, v8, LN/r;->H:I

    .line 395
    .line 396
    add-int/lit8 v6, v6, 0x3

    .line 397
    .line 398
    iget v7, v8, LN/r;->I:I

    .line 399
    .line 400
    add-int/lit8 v7, v7, 0x3

    .line 401
    .line 402
    move-object/from16 v21, v8

    .line 403
    .line 404
    const/16 v8, 0xb

    .line 405
    .line 406
    invoke-direct {v5, v6, v7, v8, v14}, LN/r;-><init>(IIII)V

    .line 407
    .line 408
    .line 409
    invoke-virtual {v0, v5, v1}, Lt5/a;->c(LN/r;LN/r;)I

    .line 410
    .line 411
    .line 412
    move-result v6

    .line 413
    if-nez v6, :cond_0

    .line 414
    .line 415
    goto :goto_5

    .line 416
    :cond_0
    invoke-virtual {v0, v1, v2}, Lt5/a;->c(LN/r;LN/r;)I

    .line 417
    .line 418
    .line 419
    move-result v1

    .line 420
    if-eq v1, v6, :cond_1

    .line 421
    .line 422
    goto :goto_5

    .line 423
    :cond_1
    invoke-virtual {v0, v2, v3}, Lt5/a;->c(LN/r;LN/r;)I

    .line 424
    .line 425
    .line 426
    move-result v1

    .line 427
    if-eq v1, v6, :cond_2

    .line 428
    .line 429
    goto :goto_5

    .line 430
    :cond_2
    invoke-virtual {v0, v3, v5}, Lt5/a;->c(LN/r;LN/r;)I

    .line 431
    .line 432
    .line 433
    move-result v1

    .line 434
    if-ne v1, v6, :cond_4

    .line 435
    .line 436
    :goto_3
    const/4 v1, 0x1

    .line 437
    goto :goto_4

    .line 438
    :cond_3
    move-object/from16 v20, v7

    .line 439
    .line 440
    move-object/from16 v21, v8

    .line 441
    .line 442
    move-object/from16 v19, v14

    .line 443
    .line 444
    goto :goto_3

    .line 445
    :goto_4
    xor-int/2addr v13, v1

    .line 446
    iget v2, v0, Lt5/a;->e:I

    .line 447
    .line 448
    add-int/2addr v2, v1

    .line 449
    iput v2, v0, Lt5/a;->e:I

    .line 450
    .line 451
    move-object v4, v15

    .line 452
    move-object/from16 v10, v19

    .line 453
    .line 454
    move-object/from16 v11, v20

    .line 455
    .line 456
    move-object/from16 v12, v21

    .line 457
    .line 458
    const/4 v1, 0x0

    .line 459
    const/4 v2, -0x1

    .line 460
    const/16 v3, 0xb

    .line 461
    .line 462
    const/4 v5, 0x3

    .line 463
    const/4 v6, 0x2

    .line 464
    const/4 v7, 0x7

    .line 465
    const/4 v8, 0x1

    .line 466
    goto/16 :goto_2

    .line 467
    .line 468
    :cond_4
    :goto_5
    iget v1, v0, Lt5/a;->e:I

    .line 469
    .line 470
    const/4 v2, 0x5

    .line 471
    if-eq v1, v2, :cond_6

    .line 472
    .line 473
    const/4 v3, 0x7

    .line 474
    if-ne v1, v3, :cond_5

    .line 475
    .line 476
    goto :goto_6

    .line 477
    :cond_5
    sget-object v1, Lq5/i;->I:Lq5/i;

    .line 478
    .line 479
    throw v1

    .line 480
    :cond_6
    :goto_6
    if-ne v1, v2, :cond_7

    .line 481
    .line 482
    const/4 v2, 0x1

    .line 483
    goto :goto_7

    .line 484
    :cond_7
    const/4 v2, 0x0

    .line 485
    :goto_7
    iput-boolean v2, v0, Lt5/a;->b:Z

    .line 486
    .line 487
    new-instance v2, Lq5/o;

    .line 488
    .line 489
    iget v3, v10, LN/r;->H:I

    .line 490
    .line 491
    int-to-float v3, v3

    .line 492
    const/high16 v5, 0x3f000000    # 0.5f

    .line 493
    .line 494
    add-float/2addr v3, v5

    .line 495
    iget v6, v10, LN/r;->I:I

    .line 496
    .line 497
    int-to-float v6, v6

    .line 498
    sub-float/2addr v6, v5

    .line 499
    invoke-direct {v2, v3, v6}, Lq5/o;-><init>(FF)V

    .line 500
    .line 501
    .line 502
    new-instance v3, Lq5/o;

    .line 503
    .line 504
    iget v6, v4, LN/r;->H:I

    .line 505
    .line 506
    int-to-float v6, v6

    .line 507
    add-float/2addr v6, v5

    .line 508
    iget v4, v4, LN/r;->I:I

    .line 509
    .line 510
    int-to-float v4, v4

    .line 511
    add-float/2addr v4, v5

    .line 512
    invoke-direct {v3, v6, v4}, Lq5/o;-><init>(FF)V

    .line 513
    .line 514
    .line 515
    new-instance v4, Lq5/o;

    .line 516
    .line 517
    iget v6, v11, LN/r;->H:I

    .line 518
    .line 519
    int-to-float v6, v6

    .line 520
    sub-float/2addr v6, v5

    .line 521
    iget v7, v11, LN/r;->I:I

    .line 522
    .line 523
    int-to-float v7, v7

    .line 524
    add-float/2addr v7, v5

    .line 525
    invoke-direct {v4, v6, v7}, Lq5/o;-><init>(FF)V

    .line 526
    .line 527
    .line 528
    new-instance v6, Lq5/o;

    .line 529
    .line 530
    iget v7, v12, LN/r;->H:I

    .line 531
    .line 532
    int-to-float v7, v7

    .line 533
    sub-float/2addr v7, v5

    .line 534
    iget v8, v12, LN/r;->I:I

    .line 535
    .line 536
    int-to-float v8, v8

    .line 537
    sub-float/2addr v8, v5

    .line 538
    invoke-direct {v6, v7, v8}, Lq5/o;-><init>(FF)V

    .line 539
    .line 540
    .line 541
    const/4 v5, 0x4

    .line 542
    new-array v7, v5, [Lq5/o;

    .line 543
    .line 544
    const/4 v5, 0x0

    .line 545
    aput-object v2, v7, v5

    .line 546
    .line 547
    const/4 v2, 0x1

    .line 548
    aput-object v3, v7, v2

    .line 549
    .line 550
    const/4 v2, 0x2

    .line 551
    aput-object v4, v7, v2

    .line 552
    .line 553
    const/4 v3, 0x3

    .line 554
    aput-object v6, v7, v3

    .line 555
    .line 556
    mul-int/lit8 v1, v1, 0x2

    .line 557
    .line 558
    add-int/lit8 v4, v1, -0x3

    .line 559
    .line 560
    invoke-static {v7, v4, v1}, Lt5/a;->b([Lq5/o;II)[Lq5/o;

    .line 561
    .line 562
    .line 563
    move-result-object v1

    .line 564
    if-eqz p1, :cond_8

    .line 565
    .line 566
    aget-object v3, v1, v5

    .line 567
    .line 568
    aget-object v4, v1, v2

    .line 569
    .line 570
    aput-object v4, v1, v5

    .line 571
    .line 572
    aput-object v3, v1, v2

    .line 573
    .line 574
    :cond_8
    aget-object v3, v1, v5

    .line 575
    .line 576
    invoke-virtual {v0, v3}, Lt5/a;->g(Lq5/o;)Z

    .line 577
    .line 578
    .line 579
    move-result v3

    .line 580
    if-eqz v3, :cond_12

    .line 581
    .line 582
    const/4 v3, 0x1

    .line 583
    aget-object v4, v1, v3

    .line 584
    .line 585
    invoke-virtual {v0, v4}, Lt5/a;->g(Lq5/o;)Z

    .line 586
    .line 587
    .line 588
    move-result v3

    .line 589
    if-eqz v3, :cond_12

    .line 590
    .line 591
    aget-object v3, v1, v2

    .line 592
    .line 593
    invoke-virtual {v0, v3}, Lt5/a;->g(Lq5/o;)Z

    .line 594
    .line 595
    .line 596
    move-result v3

    .line 597
    if-eqz v3, :cond_12

    .line 598
    .line 599
    const/4 v3, 0x3

    .line 600
    aget-object v4, v1, v3

    .line 601
    .line 602
    invoke-virtual {v0, v4}, Lt5/a;->g(Lq5/o;)Z

    .line 603
    .line 604
    .line 605
    move-result v3

    .line 606
    if-eqz v3, :cond_12

    .line 607
    .line 608
    iget v3, v0, Lt5/a;->e:I

    .line 609
    .line 610
    mul-int/lit8 v3, v3, 0x2

    .line 611
    .line 612
    const/4 v4, 0x0

    .line 613
    aget-object v5, v1, v4

    .line 614
    .line 615
    const/4 v6, 0x1

    .line 616
    aget-object v7, v1, v6

    .line 617
    .line 618
    invoke-virtual {v0, v5, v7, v3}, Lt5/a;->h(Lq5/o;Lq5/o;I)I

    .line 619
    .line 620
    .line 621
    move-result v5

    .line 622
    aget-object v7, v1, v6

    .line 623
    .line 624
    aget-object v6, v1, v2

    .line 625
    .line 626
    invoke-virtual {v0, v7, v6, v3}, Lt5/a;->h(Lq5/o;Lq5/o;I)I

    .line 627
    .line 628
    .line 629
    move-result v6

    .line 630
    aget-object v7, v1, v2

    .line 631
    .line 632
    const/4 v8, 0x3

    .line 633
    aget-object v10, v1, v8

    .line 634
    .line 635
    invoke-virtual {v0, v7, v10, v3}, Lt5/a;->h(Lq5/o;Lq5/o;I)I

    .line 636
    .line 637
    .line 638
    move-result v7

    .line 639
    aget-object v10, v1, v8

    .line 640
    .line 641
    aget-object v8, v1, v4

    .line 642
    .line 643
    invoke-virtual {v0, v10, v8, v3}, Lt5/a;->h(Lq5/o;Lq5/o;I)I

    .line 644
    .line 645
    .line 646
    move-result v8

    .line 647
    filled-new-array {v5, v6, v7, v8}, [I

    .line 648
    .line 649
    .line 650
    move-result-object v5

    .line 651
    const/4 v6, 0x0

    .line 652
    const/4 v7, 0x0

    .line 653
    :goto_8
    const/4 v8, 0x4

    .line 654
    if-ge v6, v8, :cond_9

    .line 655
    .line 656
    aget v8, v5, v6

    .line 657
    .line 658
    add-int/lit8 v10, v3, -0x2

    .line 659
    .line 660
    shr-int v2, v8, v10

    .line 661
    .line 662
    const/4 v10, 0x1

    .line 663
    shl-int/2addr v2, v10

    .line 664
    and-int/2addr v8, v10

    .line 665
    add-int/2addr v2, v8

    .line 666
    const/4 v8, 0x3

    .line 667
    shl-int/2addr v7, v8

    .line 668
    add-int/2addr v7, v2

    .line 669
    add-int/2addr v6, v10

    .line 670
    const/4 v2, 0x2

    .line 671
    goto :goto_8

    .line 672
    :cond_9
    const/4 v10, 0x1

    .line 673
    and-int/lit8 v2, v7, 0x1

    .line 674
    .line 675
    const/16 v3, 0xb

    .line 676
    .line 677
    shl-int/2addr v2, v3

    .line 678
    shr-int/lit8 v3, v7, 0x1

    .line 679
    .line 680
    add-int/2addr v2, v3

    .line 681
    const/4 v3, 0x0

    .line 682
    :goto_9
    const/4 v6, 0x4

    .line 683
    if-ge v3, v6, :cond_11

    .line 684
    .line 685
    sget-object v7, Lt5/a;->g:[I

    .line 686
    .line 687
    aget v7, v7, v3

    .line 688
    .line 689
    xor-int/2addr v7, v2

    .line 690
    invoke-static {v7}, Ljava/lang/Integer;->bitCount(I)I

    .line 691
    .line 692
    .line 693
    move-result v7

    .line 694
    const/4 v8, 0x2

    .line 695
    if-gt v7, v8, :cond_10

    .line 696
    .line 697
    iput v3, v0, Lt5/a;->f:I

    .line 698
    .line 699
    const-wide/16 v2, 0x0

    .line 700
    .line 701
    const/4 v7, 0x0

    .line 702
    :goto_a
    const/16 v8, 0xa

    .line 703
    .line 704
    if-ge v7, v6, :cond_b

    .line 705
    .line 706
    iget v10, v0, Lt5/a;->f:I

    .line 707
    .line 708
    add-int/2addr v10, v7

    .line 709
    rem-int/2addr v10, v6

    .line 710
    aget v6, v5, v10

    .line 711
    .line 712
    iget-boolean v10, v0, Lt5/a;->b:Z

    .line 713
    .line 714
    if-eqz v10, :cond_a

    .line 715
    .line 716
    const/4 v10, 0x7

    .line 717
    shl-long/2addr v2, v10

    .line 718
    const/4 v11, 0x1

    .line 719
    shr-int/2addr v6, v11

    .line 720
    and-int/lit8 v6, v6, 0x7f

    .line 721
    .line 722
    int-to-long v12, v6

    .line 723
    :goto_b
    add-long/2addr v2, v12

    .line 724
    goto :goto_c

    .line 725
    :cond_a
    const/4 v10, 0x7

    .line 726
    const/4 v11, 0x1

    .line 727
    shl-long/2addr v2, v8

    .line 728
    const/4 v8, 0x2

    .line 729
    shr-int/lit8 v12, v6, 0x2

    .line 730
    .line 731
    and-int/lit16 v8, v12, 0x3e0

    .line 732
    .line 733
    shr-int/2addr v6, v11

    .line 734
    and-int/lit8 v6, v6, 0x1f

    .line 735
    .line 736
    add-int/2addr v8, v6

    .line 737
    int-to-long v12, v8

    .line 738
    goto :goto_b

    .line 739
    :goto_c
    add-int/2addr v7, v11

    .line 740
    const/4 v6, 0x4

    .line 741
    goto :goto_a

    .line 742
    :cond_b
    const/4 v10, 0x7

    .line 743
    const/4 v11, 0x1

    .line 744
    iget-boolean v5, v0, Lt5/a;->b:Z

    .line 745
    .line 746
    if-eqz v5, :cond_c

    .line 747
    .line 748
    const/4 v5, 0x2

    .line 749
    const/4 v7, 0x7

    .line 750
    goto :goto_d

    .line 751
    :cond_c
    const/4 v5, 0x4

    .line 752
    const/16 v7, 0xa

    .line 753
    .line 754
    :goto_d
    sub-int v6, v7, v5

    .line 755
    .line 756
    new-array v8, v7, [I

    .line 757
    .line 758
    sub-int/2addr v7, v11

    .line 759
    :goto_e
    if-ltz v7, :cond_d

    .line 760
    .line 761
    long-to-int v10, v2

    .line 762
    const/16 v11, 0xf

    .line 763
    .line 764
    and-int/2addr v10, v11

    .line 765
    aput v10, v8, v7

    .line 766
    .line 767
    const/4 v10, 0x4

    .line 768
    shr-long/2addr v2, v10

    .line 769
    const/4 v12, -0x1

    .line 770
    add-int/2addr v7, v12

    .line 771
    goto :goto_e

    .line 772
    :cond_d
    :try_start_2
    new-instance v2, LZ3/o;

    .line 773
    .line 774
    sget-object v3, Lx5/a;->k:Lx5/a;

    .line 775
    .line 776
    const/16 v7, 0x13

    .line 777
    .line 778
    invoke-direct {v2, v3, v7}, LZ3/o;-><init>(Ljava/lang/Object;I)V

    .line 779
    .line 780
    .line 781
    invoke-virtual {v2, v8, v6}, LZ3/o;->e([II)V
    :try_end_2
    .catch Lx5/c; {:try_start_2 .. :try_end_2} :catch_2

    .line 782
    .line 783
    .line 784
    const/4 v2, 0x0

    .line 785
    :goto_f
    if-ge v4, v5, :cond_e

    .line 786
    .line 787
    const/4 v3, 0x4

    .line 788
    shl-int/2addr v2, v3

    .line 789
    aget v3, v8, v4

    .line 790
    .line 791
    add-int/2addr v2, v3

    .line 792
    const/4 v3, 0x1

    .line 793
    add-int/2addr v4, v3

    .line 794
    goto :goto_f

    .line 795
    :cond_e
    const/4 v3, 0x1

    .line 796
    iget-boolean v4, v0, Lt5/a;->b:Z

    .line 797
    .line 798
    if-eqz v4, :cond_f

    .line 799
    .line 800
    shr-int/lit8 v4, v2, 0x6

    .line 801
    .line 802
    add-int/2addr v4, v3

    .line 803
    iput v4, v0, Lt5/a;->c:I

    .line 804
    .line 805
    and-int/lit8 v2, v2, 0x3f

    .line 806
    .line 807
    add-int/2addr v2, v3

    .line 808
    iput v2, v0, Lt5/a;->d:I

    .line 809
    .line 810
    goto :goto_10

    .line 811
    :cond_f
    const/16 v6, 0xb

    .line 812
    .line 813
    shr-int/lit8 v4, v2, 0xb

    .line 814
    .line 815
    add-int/2addr v4, v3

    .line 816
    iput v4, v0, Lt5/a;->c:I

    .line 817
    .line 818
    and-int/lit16 v2, v2, 0x7ff

    .line 819
    .line 820
    add-int/2addr v2, v3

    .line 821
    iput v2, v0, Lt5/a;->d:I

    .line 822
    .line 823
    :goto_10
    iget v2, v0, Lt5/a;->f:I

    .line 824
    .line 825
    const/4 v7, 0x4

    .line 826
    rem-int/lit8 v4, v2, 0x4

    .line 827
    .line 828
    aget-object v4, v1, v4

    .line 829
    .line 830
    add-int/lit8 v8, v2, 0x1

    .line 831
    .line 832
    rem-int/2addr v8, v7

    .line 833
    aget-object v3, v1, v8

    .line 834
    .line 835
    const/4 v5, 0x2

    .line 836
    add-int/lit8 v6, v2, 0x2

    .line 837
    .line 838
    rem-int/2addr v6, v7

    .line 839
    aget-object v5, v1, v6

    .line 840
    .line 841
    const/4 v8, 0x3

    .line 842
    add-int/2addr v2, v8

    .line 843
    rem-int/2addr v2, v7

    .line 844
    aget-object v2, v1, v2

    .line 845
    .line 846
    invoke-virtual/range {p0 .. p0}, Lt5/a;->d()I

    .line 847
    .line 848
    .line 849
    move-result v6

    .line 850
    int-to-float v7, v6

    .line 851
    const/high16 v8, 0x40000000    # 2.0f

    .line 852
    .line 853
    div-float/2addr v7, v8

    .line 854
    iget v8, v0, Lt5/a;->e:I

    .line 855
    .line 856
    int-to-float v8, v8

    .line 857
    sub-float v25, v7, v8

    .line 858
    .line 859
    add-float v26, v7, v8

    .line 860
    .line 861
    iget v7, v4, Lq5/o;->a:F

    .line 862
    .line 863
    iget v8, v3, Lq5/o;->a:F

    .line 864
    .line 865
    iget v10, v5, Lq5/o;->a:F

    .line 866
    .line 867
    iget v11, v2, Lq5/o;->a:F

    .line 868
    .line 869
    iget v4, v4, Lq5/o;->b:F

    .line 870
    .line 871
    iget v3, v3, Lq5/o;->b:F

    .line 872
    .line 873
    iget v5, v5, Lq5/o;->b:F

    .line 874
    .line 875
    iget v2, v2, Lq5/o;->b:F

    .line 876
    .line 877
    move/from16 v19, v25

    .line 878
    .line 879
    move/from16 v20, v25

    .line 880
    .line 881
    move/from16 v21, v26

    .line 882
    .line 883
    move/from16 v22, v25

    .line 884
    .line 885
    move/from16 v23, v26

    .line 886
    .line 887
    move/from16 v24, v26

    .line 888
    .line 889
    move/from16 v27, v7

    .line 890
    .line 891
    move/from16 v28, v4

    .line 892
    .line 893
    move/from16 v29, v8

    .line 894
    .line 895
    move/from16 v30, v3

    .line 896
    .line 897
    move/from16 v31, v10

    .line 898
    .line 899
    move/from16 v32, v5

    .line 900
    .line 901
    move/from16 v33, v11

    .line 902
    .line 903
    move/from16 v34, v2

    .line 904
    .line 905
    invoke-static/range {v19 .. v34}, LF/a;->c(FFFFFFFFFFFFFFFF)LF/a;

    .line 906
    .line 907
    .line 908
    move-result-object v2

    .line 909
    invoke-static {v9, v6, v6, v2}, Ln0/c;->k(Lw5/b;IILF/a;)Lw5/b;

    .line 910
    .line 911
    .line 912
    move-result-object v11

    .line 913
    iget v2, v0, Lt5/a;->e:I

    .line 914
    .line 915
    const/4 v13, 0x2

    .line 916
    mul-int/lit8 v2, v2, 0x2

    .line 917
    .line 918
    invoke-virtual/range {p0 .. p0}, Lt5/a;->d()I

    .line 919
    .line 920
    .line 921
    move-result v3

    .line 922
    invoke-static {v1, v2, v3}, Lt5/a;->b([Lq5/o;II)[Lq5/o;

    .line 923
    .line 924
    .line 925
    move-result-object v12

    .line 926
    new-instance v1, Lr5/a;

    .line 927
    .line 928
    iget-boolean v13, v0, Lt5/a;->b:Z

    .line 929
    .line 930
    iget v14, v0, Lt5/a;->d:I

    .line 931
    .line 932
    iget v15, v0, Lt5/a;->c:I

    .line 933
    .line 934
    move-object v10, v1

    .line 935
    invoke-direct/range {v10 .. v15}, Lr5/a;-><init>(Lw5/b;[Lq5/o;ZII)V

    .line 936
    .line 937
    .line 938
    return-object v1

    .line 939
    :catch_2
    sget-object v1, Lq5/i;->I:Lq5/i;

    .line 940
    .line 941
    throw v1

    .line 942
    :cond_10
    const/16 v6, 0xb

    .line 943
    .line 944
    const/4 v7, 0x4

    .line 945
    const/4 v8, 0x3

    .line 946
    const/4 v10, 0x7

    .line 947
    const/16 v11, 0xf

    .line 948
    .line 949
    const/4 v12, -0x1

    .line 950
    const/4 v13, 0x2

    .line 951
    const/4 v14, 0x1

    .line 952
    add-int/2addr v3, v14

    .line 953
    goto/16 :goto_9

    .line 954
    .line 955
    :cond_11
    sget-object v1, Lq5/i;->I:Lq5/i;

    .line 956
    .line 957
    throw v1

    .line 958
    :cond_12
    sget-object v1, Lq5/i;->I:Lq5/i;

    .line 959
    .line 960
    throw v1
.end method

.method public final c(LN/r;LN/r;)I
    .locals 11

    .line 1
    iget v0, p1, LN/r;->H:I

    .line 2
    .line 3
    iget v1, p1, LN/r;->I:I

    .line 4
    .line 5
    iget v2, p2, LN/r;->H:I

    .line 6
    .line 7
    iget v3, p2, LN/r;->I:I

    .line 8
    .line 9
    invoke-static {v0, v1, v2, v3}, Ld2/v;->i(IIII)F

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    iget v1, p2, LN/r;->H:I

    .line 14
    .line 15
    iget v2, p1, LN/r;->H:I

    .line 16
    .line 17
    sub-int/2addr v1, v2

    .line 18
    int-to-float v1, v1

    .line 19
    div-float/2addr v1, v0

    .line 20
    iget p2, p2, LN/r;->I:I

    .line 21
    .line 22
    iget p1, p1, LN/r;->I:I

    .line 23
    .line 24
    sub-int/2addr p2, p1

    .line 25
    int-to-float p2, p2

    .line 26
    div-float/2addr p2, v0

    .line 27
    int-to-float v3, v2

    .line 28
    int-to-float v4, p1

    .line 29
    iget-object v5, p0, Lt5/a;->a:Lw5/b;

    .line 30
    .line 31
    invoke-virtual {v5, v2, p1}, Lw5/b;->b(II)Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    float-to-double v6, v0

    .line 36
    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    .line 37
    .line 38
    .line 39
    move-result-wide v6

    .line 40
    double-to-int v2, v6

    .line 41
    const/4 v6, 0x0

    .line 42
    const/4 v7, 0x0

    .line 43
    const/4 v8, 0x0

    .line 44
    :goto_0
    if-ge v7, v2, :cond_1

    .line 45
    .line 46
    add-float/2addr v3, v1

    .line 47
    add-float/2addr v4, p2

    .line 48
    invoke-static {v3}, Ld2/v;->s(F)I

    .line 49
    .line 50
    .line 51
    move-result v9

    .line 52
    invoke-static {v4}, Ld2/v;->s(F)I

    .line 53
    .line 54
    .line 55
    move-result v10

    .line 56
    invoke-virtual {v5, v9, v10}, Lw5/b;->b(II)Z

    .line 57
    .line 58
    .line 59
    move-result v9

    .line 60
    if-eq v9, p1, :cond_0

    .line 61
    .line 62
    add-int/lit8 v8, v8, 0x1

    .line 63
    .line 64
    :cond_0
    add-int/lit8 v7, v7, 0x1

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_1
    int-to-float p2, v8

    .line 68
    div-float/2addr p2, v0

    .line 69
    const v0, 0x3dcccccd    # 0.1f

    .line 70
    .line 71
    .line 72
    cmpl-float v1, p2, v0

    .line 73
    .line 74
    if-lez v1, :cond_2

    .line 75
    .line 76
    const v1, 0x3f666666    # 0.9f

    .line 77
    .line 78
    .line 79
    cmpg-float v1, p2, v1

    .line 80
    .line 81
    if-gez v1, :cond_2

    .line 82
    .line 83
    return v6

    .line 84
    :cond_2
    const/4 v1, 0x1

    .line 85
    cmpg-float p2, p2, v0

    .line 86
    .line 87
    if-gtz p2, :cond_3

    .line 88
    .line 89
    const/4 v6, 0x1

    .line 90
    :cond_3
    if-ne v6, p1, :cond_4

    .line 91
    .line 92
    return v1

    .line 93
    :cond_4
    const/4 p1, -0x1

    .line 94
    return p1
.end method

.method public final d()I
    .locals 3

    .line 1
    iget-boolean v0, p0, Lt5/a;->b:Z

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget v0, p0, Lt5/a;->c:I

    .line 7
    .line 8
    mul-int/lit8 v0, v0, 0x4

    .line 9
    .line 10
    add-int/lit8 v0, v0, 0xb

    .line 11
    .line 12
    return v0

    .line 13
    :cond_0
    iget v0, p0, Lt5/a;->c:I

    .line 14
    .line 15
    if-gt v0, v1, :cond_1

    .line 16
    .line 17
    mul-int/lit8 v0, v0, 0x4

    .line 18
    .line 19
    add-int/lit8 v0, v0, 0xf

    .line 20
    .line 21
    return v0

    .line 22
    :cond_1
    mul-int/lit8 v2, v0, 0x4

    .line 23
    .line 24
    sub-int/2addr v0, v1

    .line 25
    div-int/lit8 v0, v0, 0x8

    .line 26
    .line 27
    add-int/lit8 v0, v0, 0x1

    .line 28
    .line 29
    mul-int/lit8 v0, v0, 0x2

    .line 30
    .line 31
    add-int/2addr v0, v2

    .line 32
    add-int/lit8 v0, v0, 0xf

    .line 33
    .line 34
    return v0
.end method

.method public final e(LN/r;ZII)LN/r;
    .locals 3

    .line 1
    iget v0, p1, LN/r;->H:I

    .line 2
    .line 3
    add-int/2addr v0, p3

    .line 4
    iget p1, p1, LN/r;->I:I

    .line 5
    .line 6
    :goto_0
    add-int/2addr p1, p4

    .line 7
    invoke-virtual {p0, v0, p1}, Lt5/a;->f(II)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    iget-object v2, p0, Lt5/a;->a:Lw5/b;

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-virtual {v2, v0, p1}, Lw5/b;->b(II)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-ne v1, p2, :cond_0

    .line 20
    .line 21
    add-int/2addr v0, p3

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    sub-int/2addr v0, p3

    .line 24
    sub-int/2addr p1, p4

    .line 25
    :goto_1
    invoke-virtual {p0, v0, p1}, Lt5/a;->f(II)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    invoke-virtual {v2, v0, p1}, Lw5/b;->b(II)Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-ne v1, p2, :cond_1

    .line 36
    .line 37
    add-int/2addr v0, p3

    .line 38
    goto :goto_1

    .line 39
    :cond_1
    sub-int/2addr v0, p3

    .line 40
    :goto_2
    invoke-virtual {p0, v0, p1}, Lt5/a;->f(II)Z

    .line 41
    .line 42
    .line 43
    move-result p3

    .line 44
    if-eqz p3, :cond_2

    .line 45
    .line 46
    invoke-virtual {v2, v0, p1}, Lw5/b;->b(II)Z

    .line 47
    .line 48
    .line 49
    move-result p3

    .line 50
    if-ne p3, p2, :cond_2

    .line 51
    .line 52
    add-int/2addr p1, p4

    .line 53
    goto :goto_2

    .line 54
    :cond_2
    sub-int/2addr p1, p4

    .line 55
    new-instance p2, LN/r;

    .line 56
    .line 57
    const/16 p3, 0xb

    .line 58
    .line 59
    const/4 p4, 0x0

    .line 60
    invoke-direct {p2, v0, p1, p3, p4}, LN/r;-><init>(IIII)V

    .line 61
    .line 62
    .line 63
    return-object p2
.end method

.method public final f(II)Z
    .locals 2

    .line 1
    if-ltz p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lt5/a;->a:Lw5/b;

    .line 4
    .line 5
    iget v1, v0, Lw5/b;->G:I

    .line 6
    .line 7
    if-ge p1, v1, :cond_0

    .line 8
    .line 9
    if-lez p2, :cond_0

    .line 10
    .line 11
    iget p1, v0, Lw5/b;->H:I

    .line 12
    .line 13
    if-ge p2, p1, :cond_0

    .line 14
    .line 15
    const/4 p1, 0x1

    .line 16
    return p1

    .line 17
    :cond_0
    const/4 p1, 0x0

    .line 18
    return p1
.end method

.method public final g(Lq5/o;)Z
    .locals 1

    .line 1
    iget v0, p1, Lq5/o;->a:F

    .line 2
    .line 3
    invoke-static {v0}, Ld2/v;->s(F)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget p1, p1, Lq5/o;->b:F

    .line 8
    .line 9
    invoke-static {p1}, Ld2/v;->s(F)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    invoke-virtual {p0, v0, p1}, Lt5/a;->f(II)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    return p1
.end method

.method public final h(Lq5/o;Lq5/o;I)I
    .locals 7

    .line 1
    iget v0, p1, Lq5/o;->a:F

    .line 2
    .line 3
    iget v1, p2, Lq5/o;->a:F

    .line 4
    .line 5
    iget v2, p1, Lq5/o;->b:F

    .line 6
    .line 7
    iget v3, p2, Lq5/o;->b:F

    .line 8
    .line 9
    invoke-static {v0, v2, v1, v3}, Ld2/v;->h(FFFF)F

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    int-to-float v1, p3

    .line 14
    div-float v1, v0, v1

    .line 15
    .line 16
    iget p2, p2, Lq5/o;->a:F

    .line 17
    .line 18
    iget p1, p1, Lq5/o;->a:F

    .line 19
    .line 20
    sub-float/2addr p2, p1

    .line 21
    mul-float p2, p2, v1

    .line 22
    .line 23
    div-float/2addr p2, v0

    .line 24
    sub-float/2addr v3, v2

    .line 25
    mul-float v3, v3, v1

    .line 26
    .line 27
    div-float/2addr v3, v0

    .line 28
    const/4 v0, 0x0

    .line 29
    const/4 v1, 0x0

    .line 30
    :goto_0
    if-ge v0, p3, :cond_1

    .line 31
    .line 32
    int-to-float v4, v0

    .line 33
    mul-float v5, v4, p2

    .line 34
    .line 35
    add-float/2addr v5, p1

    .line 36
    invoke-static {v5}, Ld2/v;->s(F)I

    .line 37
    .line 38
    .line 39
    move-result v5

    .line 40
    mul-float v4, v4, v3

    .line 41
    .line 42
    add-float/2addr v4, v2

    .line 43
    invoke-static {v4}, Ld2/v;->s(F)I

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    iget-object v6, p0, Lt5/a;->a:Lw5/b;

    .line 48
    .line 49
    invoke-virtual {v6, v5, v4}, Lw5/b;->b(II)Z

    .line 50
    .line 51
    .line 52
    move-result v4

    .line 53
    if-eqz v4, :cond_0

    .line 54
    .line 55
    sub-int v4, p3, v0

    .line 56
    .line 57
    const/4 v5, 0x1

    .line 58
    sub-int/2addr v4, v5

    .line 59
    shl-int v4, v5, v4

    .line 60
    .line 61
    or-int/2addr v1, v4

    .line 62
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_1
    return v1
.end method
