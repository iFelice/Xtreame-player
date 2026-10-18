.class public final Lx/n;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lw5/b;)V
    .locals 3

    .line 13
    iget v0, p1, Lw5/b;->G:I

    .line 14
    div-int/lit8 v0, v0, 0x2

    iget v1, p1, Lw5/b;->H:I

    div-int/lit8 v1, v1, 0x2

    const/16 v2, 0xa

    invoke-direct {p0, p1, v2, v0, v1}, Lx/n;-><init>(Lw5/b;III)V

    return-void
.end method

.method public constructor <init>(Lw5/b;III)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lx/n;->g:Ljava/lang/Object;

    .line 3
    iget v0, p1, Lw5/b;->H:I

    .line 4
    iput v0, p0, Lx/n;->a:I

    .line 5
    iget p1, p1, Lw5/b;->G:I

    iput p1, p0, Lx/n;->b:I

    .line 6
    div-int/lit8 p2, p2, 0x2

    sub-int v1, p3, p2

    .line 7
    iput v1, p0, Lx/n;->c:I

    add-int/2addr p3, p2

    .line 8
    iput p3, p0, Lx/n;->d:I

    sub-int v2, p4, p2

    .line 9
    iput v2, p0, Lx/n;->f:I

    add-int/2addr p4, p2

    .line 10
    iput p4, p0, Lx/n;->e:I

    if-ltz v2, :cond_0

    if-ltz v1, :cond_0

    if-ge p4, v0, :cond_0

    if-ge p3, p1, :cond_0

    return-void

    .line 11
    :cond_0
    sget-object p1, Lq5/i;->I:Lq5/i;

    .line 12
    throw p1
.end method


# virtual methods
.method public final a(IIIZ)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lx/n;->g:Ljava/lang/Object;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz p4, :cond_1

    .line 5
    .line 6
    :goto_0
    if-gt p1, p2, :cond_3

    .line 7
    .line 8
    move-object p4, v0

    .line 9
    check-cast p4, Lw5/b;

    .line 10
    .line 11
    invoke-virtual {p4, p1, p3}, Lw5/b;->b(II)Z

    .line 12
    .line 13
    .line 14
    move-result p4

    .line 15
    if-eqz p4, :cond_0

    .line 16
    .line 17
    return v1

    .line 18
    :cond_0
    add-int/lit8 p1, p1, 0x1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    :goto_1
    if-gt p1, p2, :cond_3

    .line 22
    .line 23
    move-object p4, v0

    .line 24
    check-cast p4, Lw5/b;

    .line 25
    .line 26
    invoke-virtual {p4, p3, p1}, Lw5/b;->b(II)Z

    .line 27
    .line 28
    .line 29
    move-result p4

    .line 30
    if-eqz p4, :cond_2

    .line 31
    .line 32
    return v1

    .line 33
    :cond_2
    add-int/lit8 p1, p1, 0x1

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_3
    const/4 p1, 0x0

    .line 37
    return p1
.end method

.method public final b()[Lq5/o;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v3, 0x4

    .line 4
    iget v4, v0, Lx/n;->c:I

    .line 5
    .line 6
    iget v5, v0, Lx/n;->d:I

    .line 7
    .line 8
    iget v6, v0, Lx/n;->f:I

    .line 9
    .line 10
    iget v7, v0, Lx/n;->e:I

    .line 11
    .line 12
    const/4 v8, 0x0

    .line 13
    const/4 v9, 0x1

    .line 14
    const/4 v10, 0x1

    .line 15
    const/4 v11, 0x0

    .line 16
    const/4 v12, 0x0

    .line 17
    const/4 v13, 0x0

    .line 18
    const/4 v14, 0x0

    .line 19
    :cond_0
    iget v15, v0, Lx/n;->b:I

    .line 20
    .line 21
    if-eqz v10, :cond_14

    .line 22
    .line 23
    const/4 v10, 0x1

    .line 24
    const/16 v16, 0x0

    .line 25
    .line 26
    :cond_1
    :goto_0
    if-nez v10, :cond_2

    .line 27
    .line 28
    if-nez v11, :cond_4

    .line 29
    .line 30
    :cond_2
    if-ge v5, v15, :cond_4

    .line 31
    .line 32
    invoke-virtual {v0, v6, v7, v5, v8}, Lx/n;->a(IIIZ)Z

    .line 33
    .line 34
    .line 35
    move-result v10

    .line 36
    if-eqz v10, :cond_3

    .line 37
    .line 38
    add-int/2addr v5, v9

    .line 39
    const/4 v11, 0x1

    .line 40
    const/16 v16, 0x1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_3
    if-nez v11, :cond_1

    .line 44
    .line 45
    add-int/2addr v5, v9

    .line 46
    goto :goto_0

    .line 47
    :cond_4
    if-lt v5, v15, :cond_5

    .line 48
    .line 49
    :goto_1
    const/4 v1, 0x1

    .line 50
    goto :goto_5

    .line 51
    :cond_5
    const/4 v10, 0x1

    .line 52
    :cond_6
    :goto_2
    iget v1, v0, Lx/n;->a:I

    .line 53
    .line 54
    if-nez v10, :cond_7

    .line 55
    .line 56
    if-nez v12, :cond_9

    .line 57
    .line 58
    :cond_7
    if-ge v7, v1, :cond_9

    .line 59
    .line 60
    invoke-virtual {v0, v4, v5, v7, v9}, Lx/n;->a(IIIZ)Z

    .line 61
    .line 62
    .line 63
    move-result v10

    .line 64
    if-eqz v10, :cond_8

    .line 65
    .line 66
    add-int/2addr v7, v9

    .line 67
    const/4 v12, 0x1

    .line 68
    const/16 v16, 0x1

    .line 69
    .line 70
    goto :goto_2

    .line 71
    :cond_8
    if-nez v12, :cond_6

    .line 72
    .line 73
    add-int/2addr v7, v9

    .line 74
    goto :goto_2

    .line 75
    :cond_9
    if-lt v7, v1, :cond_a

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_a
    const/4 v1, 0x1

    .line 79
    :cond_b
    :goto_3
    if-nez v1, :cond_c

    .line 80
    .line 81
    if-nez v13, :cond_e

    .line 82
    .line 83
    :cond_c
    if-ltz v4, :cond_e

    .line 84
    .line 85
    invoke-virtual {v0, v6, v7, v4, v8}, Lx/n;->a(IIIZ)Z

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    if-eqz v1, :cond_d

    .line 90
    .line 91
    add-int/lit8 v4, v4, -0x1

    .line 92
    .line 93
    const/4 v13, 0x1

    .line 94
    const/16 v16, 0x1

    .line 95
    .line 96
    goto :goto_3

    .line 97
    :cond_d
    if-nez v13, :cond_b

    .line 98
    .line 99
    add-int/lit8 v4, v4, -0x1

    .line 100
    .line 101
    goto :goto_3

    .line 102
    :cond_e
    if-gez v4, :cond_f

    .line 103
    .line 104
    goto :goto_1

    .line 105
    :cond_f
    move/from16 v10, v16

    .line 106
    .line 107
    const/4 v1, 0x1

    .line 108
    :cond_10
    :goto_4
    if-nez v1, :cond_11

    .line 109
    .line 110
    if-nez v14, :cond_13

    .line 111
    .line 112
    :cond_11
    if-ltz v6, :cond_13

    .line 113
    .line 114
    invoke-virtual {v0, v4, v5, v6, v9}, Lx/n;->a(IIIZ)Z

    .line 115
    .line 116
    .line 117
    move-result v1

    .line 118
    if-eqz v1, :cond_12

    .line 119
    .line 120
    add-int/lit8 v6, v6, -0x1

    .line 121
    .line 122
    const/4 v10, 0x1

    .line 123
    const/4 v14, 0x1

    .line 124
    goto :goto_4

    .line 125
    :cond_12
    if-nez v14, :cond_10

    .line 126
    .line 127
    add-int/lit8 v6, v6, -0x1

    .line 128
    .line 129
    goto :goto_4

    .line 130
    :cond_13
    if-gez v6, :cond_0

    .line 131
    .line 132
    goto :goto_1

    .line 133
    :cond_14
    const/4 v1, 0x0

    .line 134
    :goto_5
    if-nez v1, :cond_1e

    .line 135
    .line 136
    sub-int v1, v5, v4

    .line 137
    .line 138
    const/4 v11, 0x0

    .line 139
    const/4 v12, 0x1

    .line 140
    :goto_6
    if-nez v11, :cond_15

    .line 141
    .line 142
    if-ge v12, v1, :cond_15

    .line 143
    .line 144
    int-to-float v11, v4

    .line 145
    sub-int v13, v7, v12

    .line 146
    .line 147
    int-to-float v13, v13

    .line 148
    add-int v14, v4, v12

    .line 149
    .line 150
    int-to-float v14, v14

    .line 151
    int-to-float v10, v7

    .line 152
    invoke-virtual {v0, v11, v13, v14, v10}, Lx/n;->c(FFFF)Lq5/o;

    .line 153
    .line 154
    .line 155
    move-result-object v11

    .line 156
    add-int/2addr v12, v9

    .line 157
    goto :goto_6

    .line 158
    :cond_15
    if-eqz v11, :cond_1d

    .line 159
    .line 160
    const/4 v10, 0x0

    .line 161
    const/4 v12, 0x1

    .line 162
    :goto_7
    if-nez v10, :cond_16

    .line 163
    .line 164
    if-ge v12, v1, :cond_16

    .line 165
    .line 166
    int-to-float v10, v4

    .line 167
    add-int v13, v6, v12

    .line 168
    .line 169
    int-to-float v13, v13

    .line 170
    add-int v14, v4, v12

    .line 171
    .line 172
    int-to-float v14, v14

    .line 173
    int-to-float v2, v6

    .line 174
    invoke-virtual {v0, v10, v13, v14, v2}, Lx/n;->c(FFFF)Lq5/o;

    .line 175
    .line 176
    .line 177
    move-result-object v10

    .line 178
    add-int/2addr v12, v9

    .line 179
    goto :goto_7

    .line 180
    :cond_16
    if-eqz v10, :cond_1c

    .line 181
    .line 182
    const/4 v2, 0x0

    .line 183
    const/4 v4, 0x1

    .line 184
    :goto_8
    if-nez v2, :cond_17

    .line 185
    .line 186
    if-ge v4, v1, :cond_17

    .line 187
    .line 188
    int-to-float v2, v5

    .line 189
    add-int v12, v6, v4

    .line 190
    .line 191
    int-to-float v12, v12

    .line 192
    sub-int v13, v5, v4

    .line 193
    .line 194
    int-to-float v13, v13

    .line 195
    int-to-float v14, v6

    .line 196
    invoke-virtual {v0, v2, v12, v13, v14}, Lx/n;->c(FFFF)Lq5/o;

    .line 197
    .line 198
    .line 199
    move-result-object v2

    .line 200
    add-int/2addr v4, v9

    .line 201
    goto :goto_8

    .line 202
    :cond_17
    if-eqz v2, :cond_1b

    .line 203
    .line 204
    const/4 v4, 0x0

    .line 205
    const/4 v6, 0x1

    .line 206
    :goto_9
    if-nez v4, :cond_18

    .line 207
    .line 208
    if-ge v6, v1, :cond_18

    .line 209
    .line 210
    int-to-float v4, v5

    .line 211
    sub-int v12, v7, v6

    .line 212
    .line 213
    int-to-float v12, v12

    .line 214
    sub-int v13, v5, v6

    .line 215
    .line 216
    int-to-float v13, v13

    .line 217
    int-to-float v14, v7

    .line 218
    invoke-virtual {v0, v4, v12, v13, v14}, Lx/n;->c(FFFF)Lq5/o;

    .line 219
    .line 220
    .line 221
    move-result-object v4

    .line 222
    add-int/2addr v6, v9

    .line 223
    goto :goto_9

    .line 224
    :cond_18
    if-eqz v4, :cond_1a

    .line 225
    .line 226
    int-to-float v1, v15

    .line 227
    const/high16 v5, 0x40000000    # 2.0f

    .line 228
    .line 229
    div-float/2addr v1, v5

    .line 230
    iget v5, v4, Lq5/o;->a:F

    .line 231
    .line 232
    iget v6, v11, Lq5/o;->a:F

    .line 233
    .line 234
    iget v7, v2, Lq5/o;->a:F

    .line 235
    .line 236
    iget v12, v10, Lq5/o;->a:F

    .line 237
    .line 238
    const/high16 v13, 0x3f800000    # 1.0f

    .line 239
    .line 240
    iget v4, v4, Lq5/o;->b:F

    .line 241
    .line 242
    iget v11, v11, Lq5/o;->b:F

    .line 243
    .line 244
    iget v2, v2, Lq5/o;->b:F

    .line 245
    .line 246
    iget v10, v10, Lq5/o;->b:F

    .line 247
    .line 248
    cmpg-float v1, v5, v1

    .line 249
    .line 250
    if-gez v1, :cond_19

    .line 251
    .line 252
    new-instance v1, Lq5/o;

    .line 253
    .line 254
    sub-float/2addr v12, v13

    .line 255
    add-float/2addr v10, v13

    .line 256
    invoke-direct {v1, v12, v10}, Lq5/o;-><init>(FF)V

    .line 257
    .line 258
    .line 259
    new-instance v10, Lq5/o;

    .line 260
    .line 261
    add-float/2addr v6, v13

    .line 262
    add-float/2addr v11, v13

    .line 263
    invoke-direct {v10, v6, v11}, Lq5/o;-><init>(FF)V

    .line 264
    .line 265
    .line 266
    new-instance v6, Lq5/o;

    .line 267
    .line 268
    sub-float/2addr v7, v13

    .line 269
    sub-float/2addr v2, v13

    .line 270
    invoke-direct {v6, v7, v2}, Lq5/o;-><init>(FF)V

    .line 271
    .line 272
    .line 273
    new-instance v2, Lq5/o;

    .line 274
    .line 275
    add-float/2addr v5, v13

    .line 276
    sub-float/2addr v4, v13

    .line 277
    invoke-direct {v2, v5, v4}, Lq5/o;-><init>(FF)V

    .line 278
    .line 279
    .line 280
    new-array v3, v3, [Lq5/o;

    .line 281
    .line 282
    aput-object v1, v3, v8

    .line 283
    .line 284
    aput-object v10, v3, v9

    .line 285
    .line 286
    const/4 v1, 0x2

    .line 287
    aput-object v6, v3, v1

    .line 288
    .line 289
    const/4 v1, 0x3

    .line 290
    aput-object v2, v3, v1

    .line 291
    .line 292
    goto :goto_a

    .line 293
    :cond_19
    new-instance v1, Lq5/o;

    .line 294
    .line 295
    add-float/2addr v12, v13

    .line 296
    add-float/2addr v10, v13

    .line 297
    invoke-direct {v1, v12, v10}, Lq5/o;-><init>(FF)V

    .line 298
    .line 299
    .line 300
    new-instance v10, Lq5/o;

    .line 301
    .line 302
    add-float/2addr v6, v13

    .line 303
    sub-float/2addr v11, v13

    .line 304
    invoke-direct {v10, v6, v11}, Lq5/o;-><init>(FF)V

    .line 305
    .line 306
    .line 307
    new-instance v6, Lq5/o;

    .line 308
    .line 309
    sub-float/2addr v7, v13

    .line 310
    add-float/2addr v2, v13

    .line 311
    invoke-direct {v6, v7, v2}, Lq5/o;-><init>(FF)V

    .line 312
    .line 313
    .line 314
    new-instance v2, Lq5/o;

    .line 315
    .line 316
    sub-float/2addr v5, v13

    .line 317
    sub-float/2addr v4, v13

    .line 318
    invoke-direct {v2, v5, v4}, Lq5/o;-><init>(FF)V

    .line 319
    .line 320
    .line 321
    new-array v3, v3, [Lq5/o;

    .line 322
    .line 323
    aput-object v1, v3, v8

    .line 324
    .line 325
    aput-object v10, v3, v9

    .line 326
    .line 327
    const/4 v1, 0x2

    .line 328
    aput-object v6, v3, v1

    .line 329
    .line 330
    const/4 v1, 0x3

    .line 331
    aput-object v2, v3, v1

    .line 332
    .line 333
    :goto_a
    return-object v3

    .line 334
    :cond_1a
    sget-object v1, Lq5/i;->I:Lq5/i;

    .line 335
    .line 336
    throw v1

    .line 337
    :cond_1b
    sget-object v1, Lq5/i;->I:Lq5/i;

    .line 338
    .line 339
    throw v1

    .line 340
    :cond_1c
    sget-object v1, Lq5/i;->I:Lq5/i;

    .line 341
    .line 342
    throw v1

    .line 343
    :cond_1d
    sget-object v1, Lq5/i;->I:Lq5/i;

    .line 344
    .line 345
    throw v1

    .line 346
    :cond_1e
    sget-object v1, Lq5/i;->I:Lq5/i;

    .line 347
    .line 348
    throw v1
.end method

.method public final c(FFFF)Lq5/o;
    .locals 5

    .line 1
    invoke-static {p1, p2, p3, p4}, Ld2/v;->h(FFFF)F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Ld2/v;->s(F)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    sub-float/2addr p3, p1

    .line 10
    int-to-float v1, v0

    .line 11
    div-float/2addr p3, v1

    .line 12
    sub-float/2addr p4, p2

    .line 13
    div-float/2addr p4, v1

    .line 14
    const/4 v1, 0x0

    .line 15
    :goto_0
    if-ge v1, v0, :cond_1

    .line 16
    .line 17
    int-to-float v2, v1

    .line 18
    mul-float v3, v2, p3

    .line 19
    .line 20
    add-float/2addr v3, p1

    .line 21
    invoke-static {v3}, Ld2/v;->s(F)I

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    mul-float v2, v2, p4

    .line 26
    .line 27
    add-float/2addr v2, p2

    .line 28
    invoke-static {v2}, Ld2/v;->s(F)I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    iget-object v4, p0, Lx/n;->g:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast v4, Lw5/b;

    .line 35
    .line 36
    invoke-virtual {v4, v3, v2}, Lw5/b;->b(II)Z

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    if-eqz v4, :cond_0

    .line 41
    .line 42
    new-instance p1, Lq5/o;

    .line 43
    .line 44
    int-to-float p2, v3

    .line 45
    int-to-float p3, v2

    .line 46
    invoke-direct {p1, p2, p3}, Lq5/o;-><init>(FF)V

    .line 47
    .line 48
    .line 49
    return-object p1

    .line 50
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    const/4 p1, 0x0

    .line 54
    return-object p1
.end method
