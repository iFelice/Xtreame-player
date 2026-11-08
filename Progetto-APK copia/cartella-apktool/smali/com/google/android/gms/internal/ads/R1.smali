.class public final Lcom/google/android/gms/internal/ads/R1;
.super Lp1/j;
.source "SourceFile"


# instance fields
.field public n:Lcom/google/android/gms/internal/ads/Q1;

.field public o:I

.field public p:Z

.field public q:LB1/e;

.field public r:Lcom/google/android/gms/internal/ads/K4;


# virtual methods
.method public final e(Lcom/google/android/gms/internal/ads/jr;)J
    .locals 11

    .line 1
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/jr;->a:[B

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    aget-byte v0, v0, v1

    .line 5
    .line 6
    and-int/lit8 v2, v0, 0x1

    .line 7
    .line 8
    const/4 v3, 0x1

    .line 9
    if-ne v2, v3, :cond_0

    .line 10
    .line 11
    const-wide/16 v0, -0x1

    .line 12
    .line 13
    return-wide v0

    .line 14
    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/R1;->n:Lcom/google/android/gms/internal/ads/Q1;

    .line 15
    .line 16
    invoke-static {v2}, Lo3/r;->x(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    shr-int/2addr v0, v3

    .line 20
    iget v4, v2, Lcom/google/android/gms/internal/ads/Q1;->e:I

    .line 21
    .line 22
    const/16 v5, 0x8

    .line 23
    .line 24
    rsub-int/lit8 v4, v4, 0x8

    .line 25
    .line 26
    const/16 v6, 0xff

    .line 27
    .line 28
    ushr-int v4, v6, v4

    .line 29
    .line 30
    and-int/2addr v0, v4

    .line 31
    iget-object v4, v2, Lcom/google/android/gms/internal/ads/Q1;->d:[LG/c;

    .line 32
    .line 33
    aget-object v0, v4, v0

    .line 34
    .line 35
    iget-boolean v0, v0, LG/c;->H:Z

    .line 36
    .line 37
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/Q1;->a:LB1/e;

    .line 38
    .line 39
    if-nez v0, :cond_1

    .line 40
    .line 41
    iget v0, v2, LB1/e;->e:I

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    iget v0, v2, LB1/e;->f:I

    .line 45
    .line 46
    :goto_0
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/R1;->p:Z

    .line 47
    .line 48
    if-eqz v2, :cond_2

    .line 49
    .line 50
    iget v1, p0, Lcom/google/android/gms/internal/ads/R1;->o:I

    .line 51
    .line 52
    add-int/2addr v1, v0

    .line 53
    div-int/lit8 v1, v1, 0x4

    .line 54
    .line 55
    :cond_2
    iget-object v2, p1, Lcom/google/android/gms/internal/ads/jr;->a:[B

    .line 56
    .line 57
    array-length v4, v2

    .line 58
    iget v6, p1, Lcom/google/android/gms/internal/ads/jr;->c:I

    .line 59
    .line 60
    add-int/lit8 v6, v6, 0x4

    .line 61
    .line 62
    if-ge v4, v6, :cond_3

    .line 63
    .line 64
    invoke-static {v2, v6}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    array-length v4, v2

    .line 69
    invoke-virtual {p1, v4, v2}, Lcom/google/android/gms/internal/ads/jr;->h(I[B)V

    .line 70
    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_3
    invoke-virtual {p1, v6}, Lcom/google/android/gms/internal/ads/jr;->i(I)V

    .line 74
    .line 75
    .line 76
    :goto_1
    int-to-long v1, v1

    .line 77
    iget-object v4, p1, Lcom/google/android/gms/internal/ads/jr;->a:[B

    .line 78
    .line 79
    iget p1, p1, Lcom/google/android/gms/internal/ads/jr;->c:I

    .line 80
    .line 81
    add-int/lit8 v6, p1, -0x4

    .line 82
    .line 83
    const-wide/16 v7, 0xff

    .line 84
    .line 85
    and-long v9, v1, v7

    .line 86
    .line 87
    long-to-int v10, v9

    .line 88
    int-to-byte v9, v10

    .line 89
    aput-byte v9, v4, v6

    .line 90
    .line 91
    add-int/lit8 v6, p1, -0x3

    .line 92
    .line 93
    ushr-long v9, v1, v5

    .line 94
    .line 95
    and-long/2addr v9, v7

    .line 96
    long-to-int v5, v9

    .line 97
    int-to-byte v5, v5

    .line 98
    aput-byte v5, v4, v6

    .line 99
    .line 100
    add-int/lit8 v5, p1, -0x2

    .line 101
    .line 102
    const/16 v6, 0x10

    .line 103
    .line 104
    ushr-long v9, v1, v6

    .line 105
    .line 106
    and-long/2addr v9, v7

    .line 107
    long-to-int v6, v9

    .line 108
    int-to-byte v6, v6

    .line 109
    aput-byte v6, v4, v5

    .line 110
    .line 111
    add-int/lit8 p1, p1, -0x1

    .line 112
    .line 113
    const/16 v5, 0x18

    .line 114
    .line 115
    ushr-long v5, v1, v5

    .line 116
    .line 117
    and-long/2addr v5, v7

    .line 118
    long-to-int v6, v5

    .line 119
    int-to-byte v5, v6

    .line 120
    aput-byte v5, v4, p1

    .line 121
    .line 122
    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/R1;->p:Z

    .line 123
    .line 124
    iput v0, p0, Lcom/google/android/gms/internal/ads/R1;->o:I

    .line 125
    .line 126
    return-wide v1
.end method

.method public final f(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lp1/j;->f(Z)V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/R1;->n:Lcom/google/android/gms/internal/ads/Q1;

    .line 8
    .line 9
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/R1;->q:LB1/e;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/R1;->r:Lcom/google/android/gms/internal/ads/K4;

    .line 12
    .line 13
    :cond_0
    const/4 p1, 0x0

    .line 14
    iput p1, p0, Lcom/google/android/gms/internal/ads/R1;->o:I

    .line 15
    .line 16
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/R1;->p:Z

    .line 17
    .line 18
    return-void
.end method

.method public final g(Lcom/google/android/gms/internal/ads/jr;JLcom/google/android/gms/internal/ads/x;)Z
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p4

    .line 6
    .line 7
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/R1;->n:Lcom/google/android/gms/internal/ads/Q1;

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    if-eqz v3, :cond_0

    .line 11
    .line 12
    iget-object v1, v2, Lcom/google/android/gms/internal/ads/x;->H:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v1, Lcom/google/android/gms/internal/ads/p0;

    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    return v4

    .line 20
    :cond_0
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/R1;->q:LB1/e;

    .line 21
    .line 22
    const/4 v11, 0x1

    .line 23
    const/4 v5, 0x4

    .line 24
    const/4 v7, 0x0

    .line 25
    if-nez v6, :cond_3

    .line 26
    .line 27
    invoke-static {v11, v1, v4}, La7/b;->u(ILcom/google/android/gms/internal/ads/jr;Z)Z

    .line 28
    .line 29
    .line 30
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/jr;->t()I

    .line 31
    .line 32
    .line 33
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/jr;->w()I

    .line 34
    .line 35
    .line 36
    move-result v13

    .line 37
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/jr;->t()I

    .line 38
    .line 39
    .line 40
    move-result v14

    .line 41
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/jr;->s()I

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    if-gtz v4, :cond_1

    .line 46
    .line 47
    const/4 v15, -0x1

    .line 48
    goto :goto_0

    .line 49
    :cond_1
    move v15, v4

    .line 50
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/jr;->s()I

    .line 51
    .line 52
    .line 53
    move-result v4

    .line 54
    if-gtz v4, :cond_2

    .line 55
    .line 56
    const/16 v16, -0x1

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_2
    move/from16 v16, v4

    .line 60
    .line 61
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/jr;->s()I

    .line 62
    .line 63
    .line 64
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/jr;->w()I

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    and-int/lit8 v4, v3, 0xf

    .line 69
    .line 70
    int-to-double v8, v4

    .line 71
    const-wide/high16 v11, 0x4000000000000000L    # 2.0

    .line 72
    .line 73
    invoke-static {v11, v12, v8, v9}, Ljava/lang/Math;->pow(DD)D

    .line 74
    .line 75
    .line 76
    move-result-wide v8

    .line 77
    double-to-int v4, v8

    .line 78
    and-int/lit16 v3, v3, 0xf0

    .line 79
    .line 80
    shr-int/2addr v3, v5

    .line 81
    int-to-double v5, v3

    .line 82
    invoke-static {v11, v12, v5, v6}, Ljava/lang/Math;->pow(DD)D

    .line 83
    .line 84
    .line 85
    move-result-wide v5

    .line 86
    double-to-int v3, v5

    .line 87
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/jr;->w()I

    .line 88
    .line 89
    .line 90
    iget-object v5, v1, Lcom/google/android/gms/internal/ads/jr;->a:[B

    .line 91
    .line 92
    iget v1, v1, Lcom/google/android/gms/internal/ads/jr;->c:I

    .line 93
    .line 94
    invoke-static {v5, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 95
    .line 96
    .line 97
    move-result-object v19

    .line 98
    new-instance v1, LB1/e;

    .line 99
    .line 100
    const/16 v20, 0x0

    .line 101
    .line 102
    move-object v12, v1

    .line 103
    move/from16 v17, v4

    .line 104
    .line 105
    move/from16 v18, v3

    .line 106
    .line 107
    invoke-direct/range {v12 .. v20}, LB1/e;-><init>(IIIIII[BI)V

    .line 108
    .line 109
    .line 110
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/R1;->q:LB1/e;

    .line 111
    .line 112
    goto/16 :goto_1d

    .line 113
    .line 114
    :cond_3
    iget-object v8, v0, Lcom/google/android/gms/internal/ads/R1;->r:Lcom/google/android/gms/internal/ads/K4;

    .line 115
    .line 116
    if-nez v8, :cond_4

    .line 117
    .line 118
    const/4 v9, 0x1

    .line 119
    invoke-static {v1, v9, v9}, La7/b;->r(Lcom/google/android/gms/internal/ads/jr;ZZ)Lcom/google/android/gms/internal/ads/K4;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/R1;->r:Lcom/google/android/gms/internal/ads/K4;

    .line 124
    .line 125
    goto/16 :goto_1d

    .line 126
    .line 127
    :cond_4
    iget v9, v1, Lcom/google/android/gms/internal/ads/jr;->c:I

    .line 128
    .line 129
    new-array v10, v9, [B

    .line 130
    .line 131
    iget-object v11, v1, Lcom/google/android/gms/internal/ads/jr;->a:[B

    .line 132
    .line 133
    invoke-static {v11, v4, v10, v4, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 134
    .line 135
    .line 136
    const/4 v9, 0x5

    .line 137
    invoke-static {v9, v1, v4}, La7/b;->u(ILcom/google/android/gms/internal/ads/jr;Z)Z

    .line 138
    .line 139
    .line 140
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/jr;->w()I

    .line 141
    .line 142
    .line 143
    move-result v11

    .line 144
    const/4 v12, 0x1

    .line 145
    add-int/2addr v11, v12

    .line 146
    new-instance v12, Lcom/google/android/gms/internal/ads/f0;

    .line 147
    .line 148
    iget-object v13, v1, Lcom/google/android/gms/internal/ads/jr;->a:[B

    .line 149
    .line 150
    invoke-direct {v12, v13}, Lcom/google/android/gms/internal/ads/f0;-><init>([B)V

    .line 151
    .line 152
    .line 153
    iget v1, v1, Lcom/google/android/gms/internal/ads/jr;->b:I

    .line 154
    .line 155
    const/16 v13, 0x8

    .line 156
    .line 157
    mul-int/lit8 v1, v1, 0x8

    .line 158
    .line 159
    invoke-virtual {v12, v1}, Lcom/google/android/gms/internal/ads/f0;->f(I)V

    .line 160
    .line 161
    .line 162
    const/4 v1, 0x0

    .line 163
    :goto_2
    const/16 v14, 0x18

    .line 164
    .line 165
    const/4 v15, 0x2

    .line 166
    const/16 v3, 0x10

    .line 167
    .line 168
    if-ge v1, v11, :cond_f

    .line 169
    .line 170
    invoke-virtual {v12, v14}, Lcom/google/android/gms/internal/ads/f0;->d(I)I

    .line 171
    .line 172
    .line 173
    move-result v4

    .line 174
    const v13, 0x564342

    .line 175
    .line 176
    .line 177
    if-ne v4, v13, :cond_e

    .line 178
    .line 179
    invoke-virtual {v12, v3}, Lcom/google/android/gms/internal/ads/f0;->d(I)I

    .line 180
    .line 181
    .line 182
    move-result v3

    .line 183
    invoke-virtual {v12, v14}, Lcom/google/android/gms/internal/ads/f0;->d(I)I

    .line 184
    .line 185
    .line 186
    move-result v4

    .line 187
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/f0;->i()Z

    .line 188
    .line 189
    .line 190
    move-result v13

    .line 191
    if-nez v13, :cond_7

    .line 192
    .line 193
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/f0;->i()Z

    .line 194
    .line 195
    .line 196
    move-result v13

    .line 197
    const/4 v14, 0x0

    .line 198
    :goto_3
    if-ge v14, v4, :cond_8

    .line 199
    .line 200
    if-eqz v13, :cond_5

    .line 201
    .line 202
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/f0;->i()Z

    .line 203
    .line 204
    .line 205
    move-result v17

    .line 206
    if-eqz v17, :cond_6

    .line 207
    .line 208
    invoke-virtual {v12, v9}, Lcom/google/android/gms/internal/ads/f0;->f(I)V

    .line 209
    .line 210
    .line 211
    goto :goto_4

    .line 212
    :cond_5
    invoke-virtual {v12, v9}, Lcom/google/android/gms/internal/ads/f0;->f(I)V

    .line 213
    .line 214
    .line 215
    :cond_6
    :goto_4
    add-int/lit8 v14, v14, 0x1

    .line 216
    .line 217
    goto :goto_3

    .line 218
    :cond_7
    invoke-virtual {v12, v9}, Lcom/google/android/gms/internal/ads/f0;->f(I)V

    .line 219
    .line 220
    .line 221
    const/4 v13, 0x0

    .line 222
    :goto_5
    if-ge v13, v4, :cond_8

    .line 223
    .line 224
    sub-int v14, v4, v13

    .line 225
    .line 226
    invoke-static {v14}, La7/b;->k(I)I

    .line 227
    .line 228
    .line 229
    move-result v14

    .line 230
    invoke-virtual {v12, v14}, Lcom/google/android/gms/internal/ads/f0;->d(I)I

    .line 231
    .line 232
    .line 233
    move-result v14

    .line 234
    add-int/2addr v13, v14

    .line 235
    goto :goto_5

    .line 236
    :cond_8
    invoke-virtual {v12, v5}, Lcom/google/android/gms/internal/ads/f0;->d(I)I

    .line 237
    .line 238
    .line 239
    move-result v13

    .line 240
    if-gt v13, v15, :cond_d

    .line 241
    .line 242
    const/4 v14, 0x1

    .line 243
    if-eq v13, v14, :cond_9

    .line 244
    .line 245
    if-ne v13, v15, :cond_c

    .line 246
    .line 247
    goto :goto_6

    .line 248
    :cond_9
    move v15, v13

    .line 249
    :goto_6
    const/16 v13, 0x20

    .line 250
    .line 251
    invoke-virtual {v12, v13}, Lcom/google/android/gms/internal/ads/f0;->f(I)V

    .line 252
    .line 253
    .line 254
    invoke-virtual {v12, v13}, Lcom/google/android/gms/internal/ads/f0;->f(I)V

    .line 255
    .line 256
    .line 257
    invoke-virtual {v12, v5}, Lcom/google/android/gms/internal/ads/f0;->d(I)I

    .line 258
    .line 259
    .line 260
    move-result v13

    .line 261
    add-int/2addr v13, v14

    .line 262
    invoke-virtual {v12, v14}, Lcom/google/android/gms/internal/ads/f0;->f(I)V

    .line 263
    .line 264
    .line 265
    if-ne v15, v14, :cond_b

    .line 266
    .line 267
    if-eqz v3, :cond_a

    .line 268
    .line 269
    int-to-long v14, v4

    .line 270
    int-to-long v3, v3

    .line 271
    long-to-double v3, v3

    .line 272
    long-to-double v14, v14

    .line 273
    const-wide/high16 v17, 0x3ff0000000000000L    # 1.0

    .line 274
    .line 275
    div-double v3, v17, v3

    .line 276
    .line 277
    invoke-static {v14, v15, v3, v4}, Ljava/lang/Math;->pow(DD)D

    .line 278
    .line 279
    .line 280
    move-result-wide v3

    .line 281
    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    .line 282
    .line 283
    .line 284
    move-result-wide v3

    .line 285
    double-to-long v3, v3

    .line 286
    goto :goto_7

    .line 287
    :cond_a
    const-wide/16 v3, 0x0

    .line 288
    .line 289
    goto :goto_7

    .line 290
    :cond_b
    int-to-long v14, v3

    .line 291
    int-to-long v3, v4

    .line 292
    mul-long v3, v3, v14

    .line 293
    .line 294
    :goto_7
    int-to-long v13, v13

    .line 295
    mul-long v3, v3, v13

    .line 296
    .line 297
    long-to-int v4, v3

    .line 298
    invoke-virtual {v12, v4}, Lcom/google/android/gms/internal/ads/f0;->f(I)V

    .line 299
    .line 300
    .line 301
    :cond_c
    add-int/lit8 v1, v1, 0x1

    .line 302
    .line 303
    const/4 v4, 0x0

    .line 304
    const/16 v13, 0x8

    .line 305
    .line 306
    goto/16 :goto_2

    .line 307
    .line 308
    :cond_d
    new-instance v1, Ljava/lang/StringBuilder;

    .line 309
    .line 310
    const-string v2, "lookup type greater than 2 not decodable: "

    .line 311
    .line 312
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 313
    .line 314
    .line 315
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 316
    .line 317
    .line 318
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 319
    .line 320
    .line 321
    move-result-object v1

    .line 322
    invoke-static {v1, v7}, Lcom/google/android/gms/internal/ads/Ka;->a(Ljava/lang/String;Ljava/lang/RuntimeException;)Lcom/google/android/gms/internal/ads/Ka;

    .line 323
    .line 324
    .line 325
    move-result-object v1

    .line 326
    throw v1

    .line 327
    :cond_e
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/f0;->a()I

    .line 328
    .line 329
    .line 330
    move-result v1

    .line 331
    new-instance v2, Ljava/lang/StringBuilder;

    .line 332
    .line 333
    const-string v3, "expected code book to start with [0x56, 0x43, 0x42] at "

    .line 334
    .line 335
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 336
    .line 337
    .line 338
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 339
    .line 340
    .line 341
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 342
    .line 343
    .line 344
    move-result-object v1

    .line 345
    invoke-static {v1, v7}, Lcom/google/android/gms/internal/ads/Ka;->a(Ljava/lang/String;Ljava/lang/RuntimeException;)Lcom/google/android/gms/internal/ads/Ka;

    .line 346
    .line 347
    .line 348
    move-result-object v1

    .line 349
    throw v1

    .line 350
    :cond_f
    const/4 v1, 0x6

    .line 351
    invoke-virtual {v12, v1}, Lcom/google/android/gms/internal/ads/f0;->d(I)I

    .line 352
    .line 353
    .line 354
    move-result v4

    .line 355
    const/4 v11, 0x1

    .line 356
    add-int/2addr v4, v11

    .line 357
    const/4 v11, 0x0

    .line 358
    :goto_8
    if-ge v11, v4, :cond_11

    .line 359
    .line 360
    invoke-virtual {v12, v3}, Lcom/google/android/gms/internal/ads/f0;->d(I)I

    .line 361
    .line 362
    .line 363
    move-result v13

    .line 364
    if-nez v13, :cond_10

    .line 365
    .line 366
    add-int/lit8 v11, v11, 0x1

    .line 367
    .line 368
    goto :goto_8

    .line 369
    :cond_10
    const-string v1, "placeholder of time domain transforms not zeroed out"

    .line 370
    .line 371
    invoke-static {v1, v7}, Lcom/google/android/gms/internal/ads/Ka;->a(Ljava/lang/String;Ljava/lang/RuntimeException;)Lcom/google/android/gms/internal/ads/Ka;

    .line 372
    .line 373
    .line 374
    move-result-object v1

    .line 375
    throw v1

    .line 376
    :cond_11
    invoke-virtual {v12, v1}, Lcom/google/android/gms/internal/ads/f0;->d(I)I

    .line 377
    .line 378
    .line 379
    move-result v4

    .line 380
    const/4 v11, 0x1

    .line 381
    add-int/2addr v4, v11

    .line 382
    const/4 v13, 0x0

    .line 383
    :goto_9
    const/4 v14, 0x3

    .line 384
    if-ge v13, v4, :cond_1b

    .line 385
    .line 386
    invoke-virtual {v12, v3}, Lcom/google/android/gms/internal/ads/f0;->d(I)I

    .line 387
    .line 388
    .line 389
    move-result v1

    .line 390
    if-eqz v1, :cond_19

    .line 391
    .line 392
    if-ne v1, v11, :cond_18

    .line 393
    .line 394
    invoke-virtual {v12, v9}, Lcom/google/android/gms/internal/ads/f0;->d(I)I

    .line 395
    .line 396
    .line 397
    move-result v1

    .line 398
    new-array v11, v1, [I

    .line 399
    .line 400
    const/4 v3, -0x1

    .line 401
    const/4 v9, 0x0

    .line 402
    :goto_a
    if-ge v9, v1, :cond_13

    .line 403
    .line 404
    invoke-virtual {v12, v5}, Lcom/google/android/gms/internal/ads/f0;->d(I)I

    .line 405
    .line 406
    .line 407
    move-result v7

    .line 408
    aput v7, v11, v9

    .line 409
    .line 410
    if-le v7, v3, :cond_12

    .line 411
    .line 412
    move v3, v7

    .line 413
    :cond_12
    add-int/lit8 v9, v9, 0x1

    .line 414
    .line 415
    const/4 v7, 0x0

    .line 416
    goto :goto_a

    .line 417
    :cond_13
    add-int/lit8 v3, v3, 0x1

    .line 418
    .line 419
    new-array v7, v3, [I

    .line 420
    .line 421
    const/4 v9, 0x0

    .line 422
    :goto_b
    if-ge v9, v3, :cond_16

    .line 423
    .line 424
    invoke-virtual {v12, v14}, Lcom/google/android/gms/internal/ads/f0;->d(I)I

    .line 425
    .line 426
    .line 427
    move-result v21

    .line 428
    const/16 v22, 0x1

    .line 429
    .line 430
    add-int/lit8 v21, v21, 0x1

    .line 431
    .line 432
    aput v21, v7, v9

    .line 433
    .line 434
    invoke-virtual {v12, v15}, Lcom/google/android/gms/internal/ads/f0;->d(I)I

    .line 435
    .line 436
    .line 437
    move-result v21

    .line 438
    if-lez v21, :cond_14

    .line 439
    .line 440
    const/16 v14, 0x8

    .line 441
    .line 442
    invoke-virtual {v12, v14}, Lcom/google/android/gms/internal/ads/f0;->f(I)V

    .line 443
    .line 444
    .line 445
    :goto_c
    const/4 v5, 0x0

    .line 446
    goto :goto_d

    .line 447
    :cond_14
    const/16 v14, 0x8

    .line 448
    .line 449
    goto :goto_c

    .line 450
    :goto_d
    shl-int v15, v22, v21

    .line 451
    .line 452
    if-ge v5, v15, :cond_15

    .line 453
    .line 454
    invoke-virtual {v12, v14}, Lcom/google/android/gms/internal/ads/f0;->f(I)V

    .line 455
    .line 456
    .line 457
    add-int/lit8 v5, v5, 0x1

    .line 458
    .line 459
    const/16 v14, 0x8

    .line 460
    .line 461
    const/16 v22, 0x1

    .line 462
    .line 463
    goto :goto_d

    .line 464
    :cond_15
    add-int/lit8 v9, v9, 0x1

    .line 465
    .line 466
    const/4 v5, 0x4

    .line 467
    const/4 v14, 0x3

    .line 468
    const/4 v15, 0x2

    .line 469
    goto :goto_b

    .line 470
    :cond_16
    const/4 v5, 0x2

    .line 471
    invoke-virtual {v12, v5}, Lcom/google/android/gms/internal/ads/f0;->f(I)V

    .line 472
    .line 473
    .line 474
    const/4 v3, 0x4

    .line 475
    invoke-virtual {v12, v3}, Lcom/google/android/gms/internal/ads/f0;->d(I)I

    .line 476
    .line 477
    .line 478
    move-result v5

    .line 479
    const/4 v3, 0x0

    .line 480
    const/4 v9, 0x0

    .line 481
    const/4 v14, 0x0

    .line 482
    :goto_e
    if-ge v3, v1, :cond_1a

    .line 483
    .line 484
    aget v15, v11, v3

    .line 485
    .line 486
    aget v15, v7, v15

    .line 487
    .line 488
    add-int/2addr v9, v15

    .line 489
    :goto_f
    if-ge v14, v9, :cond_17

    .line 490
    .line 491
    invoke-virtual {v12, v5}, Lcom/google/android/gms/internal/ads/f0;->f(I)V

    .line 492
    .line 493
    .line 494
    add-int/lit8 v14, v14, 0x1

    .line 495
    .line 496
    goto :goto_f

    .line 497
    :cond_17
    add-int/lit8 v3, v3, 0x1

    .line 498
    .line 499
    goto :goto_e

    .line 500
    :cond_18
    new-instance v2, Ljava/lang/StringBuilder;

    .line 501
    .line 502
    const-string v3, "floor type greater than 1 not decodable: "

    .line 503
    .line 504
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 505
    .line 506
    .line 507
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 508
    .line 509
    .line 510
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 511
    .line 512
    .line 513
    move-result-object v1

    .line 514
    const/4 v2, 0x0

    .line 515
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/Ka;->a(Ljava/lang/String;Ljava/lang/RuntimeException;)Lcom/google/android/gms/internal/ads/Ka;

    .line 516
    .line 517
    .line 518
    move-result-object v1

    .line 519
    throw v1

    .line 520
    :cond_19
    const/16 v1, 0x8

    .line 521
    .line 522
    invoke-virtual {v12, v1}, Lcom/google/android/gms/internal/ads/f0;->f(I)V

    .line 523
    .line 524
    .line 525
    const/16 v3, 0x10

    .line 526
    .line 527
    invoke-virtual {v12, v3}, Lcom/google/android/gms/internal/ads/f0;->f(I)V

    .line 528
    .line 529
    .line 530
    invoke-virtual {v12, v3}, Lcom/google/android/gms/internal/ads/f0;->f(I)V

    .line 531
    .line 532
    .line 533
    const/4 v3, 0x6

    .line 534
    invoke-virtual {v12, v3}, Lcom/google/android/gms/internal/ads/f0;->f(I)V

    .line 535
    .line 536
    .line 537
    invoke-virtual {v12, v1}, Lcom/google/android/gms/internal/ads/f0;->f(I)V

    .line 538
    .line 539
    .line 540
    const/4 v3, 0x4

    .line 541
    invoke-virtual {v12, v3}, Lcom/google/android/gms/internal/ads/f0;->d(I)I

    .line 542
    .line 543
    .line 544
    move-result v5

    .line 545
    const/4 v3, 0x1

    .line 546
    add-int/2addr v5, v3

    .line 547
    const/4 v3, 0x0

    .line 548
    :goto_10
    if-ge v3, v5, :cond_1a

    .line 549
    .line 550
    invoke-virtual {v12, v1}, Lcom/google/android/gms/internal/ads/f0;->f(I)V

    .line 551
    .line 552
    .line 553
    add-int/lit8 v3, v3, 0x1

    .line 554
    .line 555
    const/16 v1, 0x8

    .line 556
    .line 557
    goto :goto_10

    .line 558
    :cond_1a
    add-int/lit8 v13, v13, 0x1

    .line 559
    .line 560
    const/4 v1, 0x6

    .line 561
    const/16 v3, 0x10

    .line 562
    .line 563
    const/4 v5, 0x4

    .line 564
    const/4 v7, 0x0

    .line 565
    const/4 v9, 0x5

    .line 566
    const/4 v11, 0x1

    .line 567
    const/4 v15, 0x2

    .line 568
    goto/16 :goto_9

    .line 569
    .line 570
    :cond_1b
    invoke-virtual {v12, v1}, Lcom/google/android/gms/internal/ads/f0;->d(I)I

    .line 571
    .line 572
    .line 573
    move-result v3

    .line 574
    const/4 v4, 0x1

    .line 575
    add-int/2addr v3, v4

    .line 576
    const/4 v5, 0x0

    .line 577
    :goto_11
    if-ge v5, v3, :cond_22

    .line 578
    .line 579
    const/16 v7, 0x10

    .line 580
    .line 581
    invoke-virtual {v12, v7}, Lcom/google/android/gms/internal/ads/f0;->d(I)I

    .line 582
    .line 583
    .line 584
    move-result v9

    .line 585
    const/4 v7, 0x2

    .line 586
    if-gt v9, v7, :cond_21

    .line 587
    .line 588
    const/16 v7, 0x18

    .line 589
    .line 590
    invoke-virtual {v12, v7}, Lcom/google/android/gms/internal/ads/f0;->f(I)V

    .line 591
    .line 592
    .line 593
    invoke-virtual {v12, v7}, Lcom/google/android/gms/internal/ads/f0;->f(I)V

    .line 594
    .line 595
    .line 596
    invoke-virtual {v12, v7}, Lcom/google/android/gms/internal/ads/f0;->f(I)V

    .line 597
    .line 598
    .line 599
    invoke-virtual {v12, v1}, Lcom/google/android/gms/internal/ads/f0;->d(I)I

    .line 600
    .line 601
    .line 602
    move-result v9

    .line 603
    add-int/2addr v9, v4

    .line 604
    const/16 v1, 0x8

    .line 605
    .line 606
    invoke-virtual {v12, v1}, Lcom/google/android/gms/internal/ads/f0;->f(I)V

    .line 607
    .line 608
    .line 609
    new-array v4, v9, [I

    .line 610
    .line 611
    const/4 v11, 0x0

    .line 612
    :goto_12
    if-ge v11, v9, :cond_1d

    .line 613
    .line 614
    const/4 v13, 0x3

    .line 615
    invoke-virtual {v12, v13}, Lcom/google/android/gms/internal/ads/f0;->d(I)I

    .line 616
    .line 617
    .line 618
    move-result v14

    .line 619
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/f0;->i()Z

    .line 620
    .line 621
    .line 622
    move-result v15

    .line 623
    if-eqz v15, :cond_1c

    .line 624
    .line 625
    const/4 v15, 0x5

    .line 626
    invoke-virtual {v12, v15}, Lcom/google/android/gms/internal/ads/f0;->d(I)I

    .line 627
    .line 628
    .line 629
    move-result v17

    .line 630
    goto :goto_13

    .line 631
    :cond_1c
    const/4 v15, 0x5

    .line 632
    const/16 v17, 0x0

    .line 633
    .line 634
    :goto_13
    mul-int/lit8 v17, v17, 0x8

    .line 635
    .line 636
    add-int v17, v17, v14

    .line 637
    .line 638
    aput v17, v4, v11

    .line 639
    .line 640
    add-int/lit8 v11, v11, 0x1

    .line 641
    .line 642
    goto :goto_12

    .line 643
    :cond_1d
    const/4 v13, 0x3

    .line 644
    const/4 v15, 0x5

    .line 645
    const/4 v11, 0x0

    .line 646
    :goto_14
    if-ge v11, v9, :cond_20

    .line 647
    .line 648
    const/4 v14, 0x0

    .line 649
    :goto_15
    if-ge v14, v1, :cond_1f

    .line 650
    .line 651
    aget v17, v4, v11

    .line 652
    .line 653
    const/16 v19, 0x1

    .line 654
    .line 655
    shl-int v21, v19, v14

    .line 656
    .line 657
    and-int v17, v17, v21

    .line 658
    .line 659
    if-eqz v17, :cond_1e

    .line 660
    .line 661
    invoke-virtual {v12, v1}, Lcom/google/android/gms/internal/ads/f0;->f(I)V

    .line 662
    .line 663
    .line 664
    :cond_1e
    add-int/lit8 v14, v14, 0x1

    .line 665
    .line 666
    const/16 v1, 0x8

    .line 667
    .line 668
    goto :goto_15

    .line 669
    :cond_1f
    add-int/lit8 v11, v11, 0x1

    .line 670
    .line 671
    const/16 v1, 0x8

    .line 672
    .line 673
    goto :goto_14

    .line 674
    :cond_20
    add-int/lit8 v5, v5, 0x1

    .line 675
    .line 676
    const/4 v1, 0x6

    .line 677
    const/4 v4, 0x1

    .line 678
    goto :goto_11

    .line 679
    :cond_21
    const-string v1, "residueType greater than 2 is not decodable"

    .line 680
    .line 681
    const/4 v2, 0x0

    .line 682
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/Ka;->a(Ljava/lang/String;Ljava/lang/RuntimeException;)Lcom/google/android/gms/internal/ads/Ka;

    .line 683
    .line 684
    .line 685
    move-result-object v1

    .line 686
    throw v1

    .line 687
    :cond_22
    invoke-virtual {v12, v1}, Lcom/google/android/gms/internal/ads/f0;->d(I)I

    .line 688
    .line 689
    .line 690
    move-result v3

    .line 691
    const/4 v1, 0x1

    .line 692
    add-int/2addr v3, v1

    .line 693
    const/4 v1, 0x0

    .line 694
    :goto_16
    if-ge v1, v3, :cond_29

    .line 695
    .line 696
    const/16 v4, 0x10

    .line 697
    .line 698
    invoke-virtual {v12, v4}, Lcom/google/android/gms/internal/ads/f0;->d(I)I

    .line 699
    .line 700
    .line 701
    move-result v5

    .line 702
    if-eqz v5, :cond_23

    .line 703
    .line 704
    new-instance v4, Ljava/lang/StringBuilder;

    .line 705
    .line 706
    const-string v7, "mapping type other than 0 not supported: "

    .line 707
    .line 708
    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 709
    .line 710
    .line 711
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 712
    .line 713
    .line 714
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 715
    .line 716
    .line 717
    move-result-object v4

    .line 718
    const-string v5, "VorbisUtil"

    .line 719
    .line 720
    invoke-static {v5, v4}, Lcom/google/android/gms/internal/ads/Zo;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 721
    .line 722
    .line 723
    const/4 v4, 0x2

    .line 724
    const/4 v11, 0x4

    .line 725
    goto :goto_1b

    .line 726
    :cond_23
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/f0;->i()Z

    .line 727
    .line 728
    .line 729
    move-result v4

    .line 730
    if-eqz v4, :cond_24

    .line 731
    .line 732
    const/4 v4, 0x4

    .line 733
    invoke-virtual {v12, v4}, Lcom/google/android/gms/internal/ads/f0;->d(I)I

    .line 734
    .line 735
    .line 736
    move-result v5

    .line 737
    const/4 v4, 0x1

    .line 738
    add-int/2addr v5, v4

    .line 739
    goto :goto_17

    .line 740
    :cond_24
    const/4 v4, 0x1

    .line 741
    const/4 v5, 0x1

    .line 742
    :goto_17
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/f0;->i()Z

    .line 743
    .line 744
    .line 745
    move-result v7

    .line 746
    iget v9, v6, LB1/e;->a:I

    .line 747
    .line 748
    if-eqz v7, :cond_25

    .line 749
    .line 750
    const/16 v7, 0x8

    .line 751
    .line 752
    invoke-virtual {v12, v7}, Lcom/google/android/gms/internal/ads/f0;->d(I)I

    .line 753
    .line 754
    .line 755
    move-result v11

    .line 756
    add-int/2addr v11, v4

    .line 757
    const/4 v4, 0x0

    .line 758
    :goto_18
    if-ge v4, v11, :cond_25

    .line 759
    .line 760
    add-int/lit8 v7, v9, -0x1

    .line 761
    .line 762
    invoke-static {v7}, La7/b;->k(I)I

    .line 763
    .line 764
    .line 765
    move-result v13

    .line 766
    invoke-virtual {v12, v13}, Lcom/google/android/gms/internal/ads/f0;->f(I)V

    .line 767
    .line 768
    .line 769
    invoke-static {v7}, La7/b;->k(I)I

    .line 770
    .line 771
    .line 772
    move-result v7

    .line 773
    invoke-virtual {v12, v7}, Lcom/google/android/gms/internal/ads/f0;->f(I)V

    .line 774
    .line 775
    .line 776
    add-int/lit8 v4, v4, 0x1

    .line 777
    .line 778
    goto :goto_18

    .line 779
    :cond_25
    const/4 v4, 0x2

    .line 780
    invoke-virtual {v12, v4}, Lcom/google/android/gms/internal/ads/f0;->d(I)I

    .line 781
    .line 782
    .line 783
    move-result v7

    .line 784
    if-nez v7, :cond_28

    .line 785
    .line 786
    const/4 v7, 0x1

    .line 787
    if-le v5, v7, :cond_26

    .line 788
    .line 789
    const/4 v7, 0x0

    .line 790
    :goto_19
    if-ge v7, v9, :cond_26

    .line 791
    .line 792
    const/4 v11, 0x4

    .line 793
    invoke-virtual {v12, v11}, Lcom/google/android/gms/internal/ads/f0;->f(I)V

    .line 794
    .line 795
    .line 796
    add-int/lit8 v7, v7, 0x1

    .line 797
    .line 798
    goto :goto_19

    .line 799
    :cond_26
    const/4 v11, 0x4

    .line 800
    const/4 v7, 0x0

    .line 801
    :goto_1a
    if-ge v7, v5, :cond_27

    .line 802
    .line 803
    const/16 v9, 0x8

    .line 804
    .line 805
    invoke-virtual {v12, v9}, Lcom/google/android/gms/internal/ads/f0;->f(I)V

    .line 806
    .line 807
    .line 808
    invoke-virtual {v12, v9}, Lcom/google/android/gms/internal/ads/f0;->f(I)V

    .line 809
    .line 810
    .line 811
    invoke-virtual {v12, v9}, Lcom/google/android/gms/internal/ads/f0;->f(I)V

    .line 812
    .line 813
    .line 814
    add-int/lit8 v7, v7, 0x1

    .line 815
    .line 816
    goto :goto_1a

    .line 817
    :cond_27
    :goto_1b
    add-int/lit8 v1, v1, 0x1

    .line 818
    .line 819
    goto :goto_16

    .line 820
    :cond_28
    const-string v1, "to reserved bits must be zero after mapping coupling steps"

    .line 821
    .line 822
    const/4 v2, 0x0

    .line 823
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/Ka;->a(Ljava/lang/String;Ljava/lang/RuntimeException;)Lcom/google/android/gms/internal/ads/Ka;

    .line 824
    .line 825
    .line 826
    move-result-object v1

    .line 827
    throw v1

    .line 828
    :cond_29
    const/4 v1, 0x6

    .line 829
    invoke-virtual {v12, v1}, Lcom/google/android/gms/internal/ads/f0;->d(I)I

    .line 830
    .line 831
    .line 832
    move-result v1

    .line 833
    add-int/lit8 v3, v1, 0x1

    .line 834
    .line 835
    new-array v9, v3, [LG/c;

    .line 836
    .line 837
    const/4 v4, 0x0

    .line 838
    :goto_1c
    if-ge v4, v3, :cond_2a

    .line 839
    .line 840
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/f0;->i()Z

    .line 841
    .line 842
    .line 843
    move-result v5

    .line 844
    const/16 v7, 0x10

    .line 845
    .line 846
    invoke-virtual {v12, v7}, Lcom/google/android/gms/internal/ads/f0;->d(I)I

    .line 847
    .line 848
    .line 849
    invoke-virtual {v12, v7}, Lcom/google/android/gms/internal/ads/f0;->d(I)I

    .line 850
    .line 851
    .line 852
    const/16 v11, 0x8

    .line 853
    .line 854
    invoke-virtual {v12, v11}, Lcom/google/android/gms/internal/ads/f0;->d(I)I

    .line 855
    .line 856
    .line 857
    new-instance v13, LG/c;

    .line 858
    .line 859
    invoke-direct {v13, v5}, LG/c;-><init>(Z)V

    .line 860
    .line 861
    .line 862
    aput-object v13, v9, v4

    .line 863
    .line 864
    add-int/lit8 v4, v4, 0x1

    .line 865
    .line 866
    goto :goto_1c

    .line 867
    :cond_2a
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/f0;->i()Z

    .line 868
    .line 869
    .line 870
    move-result v3

    .line 871
    if-eqz v3, :cond_2c

    .line 872
    .line 873
    new-instance v3, Lcom/google/android/gms/internal/ads/Q1;

    .line 874
    .line 875
    invoke-static {v1}, La7/b;->k(I)I

    .line 876
    .line 877
    .line 878
    move-result v1

    .line 879
    move-object v5, v3

    .line 880
    move-object v7, v8

    .line 881
    move-object v8, v10

    .line 882
    move v10, v1

    .line 883
    invoke-direct/range {v5 .. v10}, Lcom/google/android/gms/internal/ads/Q1;-><init>(LB1/e;Lcom/google/android/gms/internal/ads/K4;[B[LG/c;I)V

    .line 884
    .line 885
    .line 886
    move-object v7, v3

    .line 887
    :goto_1d
    iput-object v7, v0, Lcom/google/android/gms/internal/ads/R1;->n:Lcom/google/android/gms/internal/ads/Q1;

    .line 888
    .line 889
    if-nez v7, :cond_2b

    .line 890
    .line 891
    const/4 v1, 0x1

    .line 892
    return v1

    .line 893
    :cond_2b
    new-instance v1, Ljava/util/ArrayList;

    .line 894
    .line 895
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 896
    .line 897
    .line 898
    iget-object v3, v7, Lcom/google/android/gms/internal/ads/Q1;->a:LB1/e;

    .line 899
    .line 900
    iget-object v4, v3, LB1/e;->g:[B

    .line 901
    .line 902
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 903
    .line 904
    .line 905
    iget-object v4, v7, Lcom/google/android/gms/internal/ads/Q1;->c:[B

    .line 906
    .line 907
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 908
    .line 909
    .line 910
    iget-object v4, v7, Lcom/google/android/gms/internal/ads/Q1;->b:Lcom/google/android/gms/internal/ads/K4;

    .line 911
    .line 912
    iget-object v4, v4, Lcom/google/android/gms/internal/ads/K4;->H:Ljava/lang/Object;

    .line 913
    .line 914
    check-cast v4, [Ljava/lang/String;

    .line 915
    .line 916
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/uA;->u([Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/PA;

    .line 917
    .line 918
    .line 919
    move-result-object v4

    .line 920
    invoke-static {v4}, La7/b;->p(Ljava/util/List;)Lcom/google/android/gms/internal/ads/Q9;

    .line 921
    .line 922
    .line 923
    move-result-object v4

    .line 924
    new-instance v5, Lcom/google/android/gms/internal/ads/K;

    .line 925
    .line 926
    invoke-direct {v5}, Lcom/google/android/gms/internal/ads/K;-><init>()V

    .line 927
    .line 928
    .line 929
    const-string v6, "audio/vorbis"

    .line 930
    .line 931
    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/ads/K;->f(Ljava/lang/String;)V

    .line 932
    .line 933
    .line 934
    iget v6, v3, LB1/e;->d:I

    .line 935
    .line 936
    iput v6, v5, Lcom/google/android/gms/internal/ads/K;->g:I

    .line 937
    .line 938
    iget v6, v3, LB1/e;->c:I

    .line 939
    .line 940
    iput v6, v5, Lcom/google/android/gms/internal/ads/K;->h:I

    .line 941
    .line 942
    iget v6, v3, LB1/e;->a:I

    .line 943
    .line 944
    iput v6, v5, Lcom/google/android/gms/internal/ads/K;->z:I

    .line 945
    .line 946
    iget v3, v3, LB1/e;->b:I

    .line 947
    .line 948
    iput v3, v5, Lcom/google/android/gms/internal/ads/K;->A:I

    .line 949
    .line 950
    iput-object v1, v5, Lcom/google/android/gms/internal/ads/K;->o:Ljava/util/List;

    .line 951
    .line 952
    iput-object v4, v5, Lcom/google/android/gms/internal/ads/K;->j:Lcom/google/android/gms/internal/ads/Q9;

    .line 953
    .line 954
    new-instance v1, Lcom/google/android/gms/internal/ads/p0;

    .line 955
    .line 956
    invoke-direct {v1, v5}, Lcom/google/android/gms/internal/ads/p0;-><init>(Lcom/google/android/gms/internal/ads/K;)V

    .line 957
    .line 958
    .line 959
    iput-object v1, v2, Lcom/google/android/gms/internal/ads/x;->H:Ljava/lang/Object;

    .line 960
    .line 961
    const/4 v1, 0x1

    .line 962
    return v1

    .line 963
    :cond_2c
    const-string v1, "framing bit after modes not set as expected"

    .line 964
    .line 965
    const/4 v2, 0x0

    .line 966
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/Ka;->a(Ljava/lang/String;Ljava/lang/RuntimeException;)Lcom/google/android/gms/internal/ads/Ka;

    .line 967
    .line 968
    .line 969
    move-result-object v1

    .line 970
    throw v1
.end method

.method public final h(J)V
    .locals 4

    .line 1
    iput-wide p1, p0, Lp1/j;->c:J

    .line 2
    .line 3
    const-wide/16 v0, 0x0

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    cmp-long v3, p1, v0

    .line 7
    .line 8
    if-eqz v3, :cond_0

    .line 9
    .line 10
    const/4 p1, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    :goto_0
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/R1;->p:Z

    .line 14
    .line 15
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/R1;->q:LB1/e;

    .line 16
    .line 17
    if-eqz p1, :cond_1

    .line 18
    .line 19
    iget v2, p1, LB1/e;->e:I

    .line 20
    .line 21
    :cond_1
    iput v2, p0, Lcom/google/android/gms/internal/ads/R1;->o:I

    .line 22
    .line 23
    return-void
.end method
