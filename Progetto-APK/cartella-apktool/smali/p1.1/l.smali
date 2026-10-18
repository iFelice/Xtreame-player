.class public final Lp1/l;
.super Lp1/j;
.source "SourceFile"


# instance fields
.field public n:Lp1/k;

.field public o:I

.field public p:Z

.field public q:LB1/e;

.field public r:LF/d;


# virtual methods
.method public final a(J)V
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
    iput-boolean p1, p0, Lp1/l;->p:Z

    .line 14
    .line 15
    iget-object p1, p0, Lp1/l;->q:LB1/e;

    .line 16
    .line 17
    if-eqz p1, :cond_1

    .line 18
    .line 19
    iget v2, p1, LB1/e;->e:I

    .line 20
    .line 21
    :cond_1
    iput v2, p0, Lp1/l;->o:I

    .line 22
    .line 23
    return-void
.end method

.method public final b(Lp0/E;)J
    .locals 11

    .line 1
    iget-object v0, p1, Lp0/E;->a:[B

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
    iget-object v2, p0, Lp1/l;->n:Lp1/k;

    .line 15
    .line 16
    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/H1;->j(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    shr-int/2addr v0, v3

    .line 20
    iget v4, v2, Lp1/k;->e:I

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
    iget-object v4, v2, Lp1/k;->d:[LW0/N;

    .line 32
    .line 33
    aget-object v0, v4, v0

    .line 34
    .line 35
    iget-boolean v0, v0, LW0/N;->a:Z

    .line 36
    .line 37
    iget-object v2, v2, Lp1/k;->a:LB1/e;

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
    iget-boolean v2, p0, Lp1/l;->p:Z

    .line 47
    .line 48
    if-eqz v2, :cond_2

    .line 49
    .line 50
    iget v1, p0, Lp1/l;->o:I

    .line 51
    .line 52
    add-int/2addr v1, v0

    .line 53
    div-int/lit8 v1, v1, 0x4

    .line 54
    .line 55
    :cond_2
    int-to-long v1, v1

    .line 56
    iget-object v4, p1, Lp0/E;->a:[B

    .line 57
    .line 58
    array-length v6, v4

    .line 59
    iget v7, p1, Lp0/E;->c:I

    .line 60
    .line 61
    add-int/lit8 v7, v7, 0x4

    .line 62
    .line 63
    if-ge v6, v7, :cond_3

    .line 64
    .line 65
    invoke-static {v4, v7}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 66
    .line 67
    .line 68
    move-result-object v4

    .line 69
    array-length v6, v4

    .line 70
    invoke-virtual {p1, v6, v4}, Lp0/E;->J(I[B)V

    .line 71
    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_3
    invoke-virtual {p1, v7}, Lp0/E;->K(I)V

    .line 75
    .line 76
    .line 77
    :goto_1
    iget-object v4, p1, Lp0/E;->a:[B

    .line 78
    .line 79
    iget p1, p1, Lp0/E;->c:I

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
    sub-int/2addr p1, v3

    .line 112
    const/16 v5, 0x18

    .line 113
    .line 114
    ushr-long v5, v1, v5

    .line 115
    .line 116
    and-long/2addr v5, v7

    .line 117
    long-to-int v6, v5

    .line 118
    int-to-byte v5, v6

    .line 119
    aput-byte v5, v4, p1

    .line 120
    .line 121
    iput-boolean v3, p0, Lp1/l;->p:Z

    .line 122
    .line 123
    iput v0, p0, Lp1/l;->o:I

    .line 124
    .line 125
    return-wide v1
.end method

.method public final c(Lp0/E;JLm2/c;)Z
    .locals 22

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
    iget-object v3, v0, Lp1/l;->n:Lp1/k;

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    if-eqz v3, :cond_0

    .line 11
    .line 12
    iget-object v1, v2, Lm2/c;->H:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v1, Lm0/t;

    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    return v4

    .line 20
    :cond_0
    iget-object v6, v0, Lp1/l;->q:LB1/e;

    .line 21
    .line 22
    const/4 v3, 0x0

    .line 23
    const/4 v11, 0x1

    .line 24
    const/4 v5, 0x4

    .line 25
    if-nez v6, :cond_3

    .line 26
    .line 27
    invoke-static {v11, v1, v4}, Lcom/google/android/gms/internal/measurement/H1;->A(ILp0/E;Z)Z

    .line 28
    .line 29
    .line 30
    invoke-virtual/range {p1 .. p1}, Lp0/E;->r()I

    .line 31
    .line 32
    .line 33
    invoke-virtual/range {p1 .. p1}, Lp0/E;->z()I

    .line 34
    .line 35
    .line 36
    move-result v13

    .line 37
    invoke-virtual/range {p1 .. p1}, Lp0/E;->r()I

    .line 38
    .line 39
    .line 40
    move-result v14

    .line 41
    invoke-virtual/range {p1 .. p1}, Lp0/E;->n()I

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
    invoke-virtual/range {p1 .. p1}, Lp0/E;->n()I

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
    invoke-virtual/range {p1 .. p1}, Lp0/E;->n()I

    .line 62
    .line 63
    .line 64
    invoke-virtual/range {p1 .. p1}, Lp0/E;->z()I

    .line 65
    .line 66
    .line 67
    move-result v4

    .line 68
    and-int/lit8 v6, v4, 0xf

    .line 69
    .line 70
    int-to-double v6, v6

    .line 71
    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    .line 72
    .line 73
    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->pow(DD)D

    .line 74
    .line 75
    .line 76
    move-result-wide v6

    .line 77
    double-to-int v6, v6

    .line 78
    and-int/lit16 v4, v4, 0xf0

    .line 79
    .line 80
    shr-int/2addr v4, v5

    .line 81
    int-to-double v4, v4

    .line 82
    invoke-static {v8, v9, v4, v5}, Ljava/lang/Math;->pow(DD)D

    .line 83
    .line 84
    .line 85
    move-result-wide v4

    .line 86
    double-to-int v4, v4

    .line 87
    invoke-virtual/range {p1 .. p1}, Lp0/E;->z()I

    .line 88
    .line 89
    .line 90
    iget-object v5, v1, Lp0/E;->a:[B

    .line 91
    .line 92
    iget v1, v1, Lp0/E;->c:I

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
    move-object v12, v1

    .line 101
    move/from16 v17, v6

    .line 102
    .line 103
    move/from16 v18, v4

    .line 104
    .line 105
    invoke-direct/range {v12 .. v19}, LB1/e;-><init>(IIIIII[B)V

    .line 106
    .line 107
    .line 108
    iput-object v1, v0, Lp1/l;->q:LB1/e;

    .line 109
    .line 110
    goto/16 :goto_1d

    .line 111
    .line 112
    :cond_3
    iget-object v8, v0, Lp1/l;->r:LF/d;

    .line 113
    .line 114
    if-nez v8, :cond_4

    .line 115
    .line 116
    invoke-static {v1, v11, v11}, Lcom/google/android/gms/internal/measurement/H1;->u(Lp0/E;ZZ)LF/d;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    iput-object v1, v0, Lp1/l;->r:LF/d;

    .line 121
    .line 122
    goto/16 :goto_1d

    .line 123
    .line 124
    :cond_4
    iget v9, v1, Lp0/E;->c:I

    .line 125
    .line 126
    new-array v10, v9, [B

    .line 127
    .line 128
    iget-object v12, v1, Lp0/E;->a:[B

    .line 129
    .line 130
    invoke-static {v12, v4, v10, v4, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 131
    .line 132
    .line 133
    const/4 v9, 0x5

    .line 134
    invoke-static {v9, v1, v4}, Lcom/google/android/gms/internal/measurement/H1;->A(ILp0/E;Z)Z

    .line 135
    .line 136
    .line 137
    invoke-virtual/range {p1 .. p1}, Lp0/E;->z()I

    .line 138
    .line 139
    .line 140
    move-result v12

    .line 141
    add-int/2addr v12, v11

    .line 142
    new-instance v13, Lp0/D;

    .line 143
    .line 144
    iget-object v14, v1, Lp0/E;->a:[B

    .line 145
    .line 146
    const/4 v15, 0x2

    .line 147
    invoke-direct {v13, v14, v15, v3}, Lp0/D;-><init>([BILjava/lang/Object;)V

    .line 148
    .line 149
    .line 150
    iget v1, v1, Lp0/E;->b:I

    .line 151
    .line 152
    const/16 v14, 0x8

    .line 153
    .line 154
    mul-int/lit8 v1, v1, 0x8

    .line 155
    .line 156
    invoke-virtual {v13, v1}, Lp0/D;->u(I)V

    .line 157
    .line 158
    .line 159
    const/4 v1, 0x0

    .line 160
    :goto_2
    const/16 v4, 0x18

    .line 161
    .line 162
    const/16 v7, 0x10

    .line 163
    .line 164
    if-ge v1, v12, :cond_f

    .line 165
    .line 166
    invoke-virtual {v13, v4}, Lp0/D;->i(I)I

    .line 167
    .line 168
    .line 169
    move-result v14

    .line 170
    const v3, 0x564342

    .line 171
    .line 172
    .line 173
    if-ne v14, v3, :cond_e

    .line 174
    .line 175
    invoke-virtual {v13, v7}, Lp0/D;->i(I)I

    .line 176
    .line 177
    .line 178
    move-result v3

    .line 179
    invoke-virtual {v13, v4}, Lp0/D;->i(I)I

    .line 180
    .line 181
    .line 182
    move-result v4

    .line 183
    invoke-virtual {v13}, Lp0/D;->h()Z

    .line 184
    .line 185
    .line 186
    move-result v7

    .line 187
    if-nez v7, :cond_7

    .line 188
    .line 189
    invoke-virtual {v13}, Lp0/D;->h()Z

    .line 190
    .line 191
    .line 192
    move-result v7

    .line 193
    const/4 v14, 0x0

    .line 194
    :goto_3
    if-ge v14, v4, :cond_8

    .line 195
    .line 196
    if-eqz v7, :cond_5

    .line 197
    .line 198
    invoke-virtual {v13}, Lp0/D;->h()Z

    .line 199
    .line 200
    .line 201
    move-result v17

    .line 202
    if-eqz v17, :cond_6

    .line 203
    .line 204
    invoke-virtual {v13, v9}, Lp0/D;->u(I)V

    .line 205
    .line 206
    .line 207
    goto :goto_4

    .line 208
    :cond_5
    invoke-virtual {v13, v9}, Lp0/D;->u(I)V

    .line 209
    .line 210
    .line 211
    :cond_6
    :goto_4
    add-int/lit8 v14, v14, 0x1

    .line 212
    .line 213
    goto :goto_3

    .line 214
    :cond_7
    invoke-virtual {v13, v9}, Lp0/D;->u(I)V

    .line 215
    .line 216
    .line 217
    const/4 v7, 0x0

    .line 218
    :goto_5
    if-ge v7, v4, :cond_8

    .line 219
    .line 220
    sub-int v14, v4, v7

    .line 221
    .line 222
    invoke-static {v14}, Lcom/google/android/gms/internal/measurement/H1;->r(I)I

    .line 223
    .line 224
    .line 225
    move-result v14

    .line 226
    invoke-virtual {v13, v14}, Lp0/D;->i(I)I

    .line 227
    .line 228
    .line 229
    move-result v14

    .line 230
    add-int/2addr v7, v14

    .line 231
    goto :goto_5

    .line 232
    :cond_8
    invoke-virtual {v13, v5}, Lp0/D;->i(I)I

    .line 233
    .line 234
    .line 235
    move-result v7

    .line 236
    if-gt v7, v15, :cond_d

    .line 237
    .line 238
    if-eq v7, v11, :cond_a

    .line 239
    .line 240
    if-ne v7, v15, :cond_9

    .line 241
    .line 242
    goto :goto_6

    .line 243
    :cond_9
    move-object/from16 v17, v6

    .line 244
    .line 245
    goto :goto_8

    .line 246
    :cond_a
    :goto_6
    const/16 v14, 0x20

    .line 247
    .line 248
    invoke-virtual {v13, v14}, Lp0/D;->u(I)V

    .line 249
    .line 250
    .line 251
    invoke-virtual {v13, v14}, Lp0/D;->u(I)V

    .line 252
    .line 253
    .line 254
    invoke-virtual {v13, v5}, Lp0/D;->i(I)I

    .line 255
    .line 256
    .line 257
    move-result v14

    .line 258
    add-int/2addr v14, v11

    .line 259
    invoke-virtual {v13, v11}, Lp0/D;->u(I)V

    .line 260
    .line 261
    .line 262
    if-ne v7, v11, :cond_c

    .line 263
    .line 264
    if-eqz v3, :cond_b

    .line 265
    .line 266
    move-object/from16 v17, v6

    .line 267
    .line 268
    int-to-long v5, v4

    .line 269
    int-to-long v3, v3

    .line 270
    long-to-double v5, v5

    .line 271
    const-wide/high16 v19, 0x3ff0000000000000L    # 1.0

    .line 272
    .line 273
    long-to-double v3, v3

    .line 274
    div-double v3, v19, v3

    .line 275
    .line 276
    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->pow(DD)D

    .line 277
    .line 278
    .line 279
    move-result-wide v3

    .line 280
    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    .line 281
    .line 282
    .line 283
    move-result-wide v3

    .line 284
    double-to-long v3, v3

    .line 285
    goto :goto_7

    .line 286
    :cond_b
    move-object/from16 v17, v6

    .line 287
    .line 288
    const-wide/16 v3, 0x0

    .line 289
    .line 290
    goto :goto_7

    .line 291
    :cond_c
    move-object/from16 v17, v6

    .line 292
    .line 293
    int-to-long v4, v4

    .line 294
    int-to-long v6, v3

    .line 295
    mul-long v3, v4, v6

    .line 296
    .line 297
    :goto_7
    int-to-long v5, v14

    .line 298
    mul-long v3, v3, v5

    .line 299
    .line 300
    long-to-int v4, v3

    .line 301
    invoke-virtual {v13, v4}, Lp0/D;->u(I)V

    .line 302
    .line 303
    .line 304
    :goto_8
    add-int/lit8 v1, v1, 0x1

    .line 305
    .line 306
    move-object/from16 v6, v17

    .line 307
    .line 308
    const/4 v3, 0x0

    .line 309
    const/4 v5, 0x4

    .line 310
    const/16 v14, 0x8

    .line 311
    .line 312
    goto/16 :goto_2

    .line 313
    .line 314
    :cond_d
    new-instance v1, Ljava/lang/StringBuilder;

    .line 315
    .line 316
    const-string v2, "lookup type greater than 2 not decodable: "

    .line 317
    .line 318
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 319
    .line 320
    .line 321
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 322
    .line 323
    .line 324
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 325
    .line 326
    .line 327
    move-result-object v1

    .line 328
    const/4 v2, 0x0

    .line 329
    invoke-static {v1, v2}, Lm0/P;->a(Ljava/lang/String;Ljava/lang/RuntimeException;)Lm0/P;

    .line 330
    .line 331
    .line 332
    move-result-object v1

    .line 333
    throw v1

    .line 334
    :cond_e
    const/4 v2, 0x0

    .line 335
    new-instance v1, Ljava/lang/StringBuilder;

    .line 336
    .line 337
    const-string v3, "expected code book to start with [0x56, 0x43, 0x42] at "

    .line 338
    .line 339
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 340
    .line 341
    .line 342
    invoke-virtual {v13}, Lp0/D;->g()I

    .line 343
    .line 344
    .line 345
    move-result v3

    .line 346
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 347
    .line 348
    .line 349
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 350
    .line 351
    .line 352
    move-result-object v1

    .line 353
    invoke-static {v1, v2}, Lm0/P;->a(Ljava/lang/String;Ljava/lang/RuntimeException;)Lm0/P;

    .line 354
    .line 355
    .line 356
    move-result-object v1

    .line 357
    throw v1

    .line 358
    :cond_f
    move-object/from16 v17, v6

    .line 359
    .line 360
    const/4 v1, 0x6

    .line 361
    invoke-virtual {v13, v1}, Lp0/D;->i(I)I

    .line 362
    .line 363
    .line 364
    move-result v3

    .line 365
    add-int/2addr v3, v11

    .line 366
    const/4 v5, 0x0

    .line 367
    :goto_9
    if-ge v5, v3, :cond_11

    .line 368
    .line 369
    invoke-virtual {v13, v7}, Lp0/D;->i(I)I

    .line 370
    .line 371
    .line 372
    move-result v6

    .line 373
    if-nez v6, :cond_10

    .line 374
    .line 375
    add-int/lit8 v5, v5, 0x1

    .line 376
    .line 377
    goto :goto_9

    .line 378
    :cond_10
    const-string v1, "placeholder of time domain transforms not zeroed out"

    .line 379
    .line 380
    const/4 v2, 0x0

    .line 381
    invoke-static {v1, v2}, Lm0/P;->a(Ljava/lang/String;Ljava/lang/RuntimeException;)Lm0/P;

    .line 382
    .line 383
    .line 384
    move-result-object v1

    .line 385
    throw v1

    .line 386
    :cond_11
    invoke-virtual {v13, v1}, Lp0/D;->i(I)I

    .line 387
    .line 388
    .line 389
    move-result v3

    .line 390
    add-int/2addr v3, v11

    .line 391
    const/4 v5, 0x0

    .line 392
    :goto_a
    const/4 v6, 0x3

    .line 393
    if-ge v5, v3, :cond_1b

    .line 394
    .line 395
    invoke-virtual {v13, v7}, Lp0/D;->i(I)I

    .line 396
    .line 397
    .line 398
    move-result v12

    .line 399
    if-eqz v12, :cond_19

    .line 400
    .line 401
    if-ne v12, v11, :cond_18

    .line 402
    .line 403
    invoke-virtual {v13, v9}, Lp0/D;->i(I)I

    .line 404
    .line 405
    .line 406
    move-result v12

    .line 407
    new-array v14, v12, [I

    .line 408
    .line 409
    const/4 v4, -0x1

    .line 410
    const/4 v9, 0x0

    .line 411
    :goto_b
    if-ge v9, v12, :cond_13

    .line 412
    .line 413
    const/4 v1, 0x4

    .line 414
    invoke-virtual {v13, v1}, Lp0/D;->i(I)I

    .line 415
    .line 416
    .line 417
    move-result v7

    .line 418
    aput v7, v14, v9

    .line 419
    .line 420
    if-le v7, v4, :cond_12

    .line 421
    .line 422
    move v4, v7

    .line 423
    :cond_12
    add-int/lit8 v9, v9, 0x1

    .line 424
    .line 425
    const/4 v1, 0x6

    .line 426
    const/16 v7, 0x10

    .line 427
    .line 428
    goto :goto_b

    .line 429
    :cond_13
    add-int/lit8 v4, v4, 0x1

    .line 430
    .line 431
    new-array v1, v4, [I

    .line 432
    .line 433
    const/4 v7, 0x0

    .line 434
    :goto_c
    if-ge v7, v4, :cond_16

    .line 435
    .line 436
    invoke-virtual {v13, v6}, Lp0/D;->i(I)I

    .line 437
    .line 438
    .line 439
    move-result v9

    .line 440
    add-int/2addr v9, v11

    .line 441
    aput v9, v1, v7

    .line 442
    .line 443
    invoke-virtual {v13, v15}, Lp0/D;->i(I)I

    .line 444
    .line 445
    .line 446
    move-result v9

    .line 447
    const/16 v6, 0x8

    .line 448
    .line 449
    if-lez v9, :cond_14

    .line 450
    .line 451
    invoke-virtual {v13, v6}, Lp0/D;->u(I)V

    .line 452
    .line 453
    .line 454
    :cond_14
    move/from16 v21, v3

    .line 455
    .line 456
    const/4 v15, 0x0

    .line 457
    :goto_d
    shl-int v3, v11, v9

    .line 458
    .line 459
    if-ge v15, v3, :cond_15

    .line 460
    .line 461
    invoke-virtual {v13, v6}, Lp0/D;->u(I)V

    .line 462
    .line 463
    .line 464
    add-int/lit8 v15, v15, 0x1

    .line 465
    .line 466
    const/16 v6, 0x8

    .line 467
    .line 468
    goto :goto_d

    .line 469
    :cond_15
    add-int/lit8 v7, v7, 0x1

    .line 470
    .line 471
    move/from16 v3, v21

    .line 472
    .line 473
    const/4 v6, 0x3

    .line 474
    const/4 v15, 0x2

    .line 475
    goto :goto_c

    .line 476
    :cond_16
    move/from16 v21, v3

    .line 477
    .line 478
    const/4 v3, 0x2

    .line 479
    invoke-virtual {v13, v3}, Lp0/D;->u(I)V

    .line 480
    .line 481
    .line 482
    const/4 v3, 0x4

    .line 483
    invoke-virtual {v13, v3}, Lp0/D;->i(I)I

    .line 484
    .line 485
    .line 486
    move-result v4

    .line 487
    const/4 v3, 0x0

    .line 488
    const/4 v6, 0x0

    .line 489
    const/4 v7, 0x0

    .line 490
    :goto_e
    if-ge v3, v12, :cond_1a

    .line 491
    .line 492
    aget v9, v14, v3

    .line 493
    .line 494
    aget v9, v1, v9

    .line 495
    .line 496
    add-int/2addr v6, v9

    .line 497
    :goto_f
    if-ge v7, v6, :cond_17

    .line 498
    .line 499
    invoke-virtual {v13, v4}, Lp0/D;->u(I)V

    .line 500
    .line 501
    .line 502
    add-int/lit8 v7, v7, 0x1

    .line 503
    .line 504
    goto :goto_f

    .line 505
    :cond_17
    add-int/lit8 v3, v3, 0x1

    .line 506
    .line 507
    goto :goto_e

    .line 508
    :cond_18
    new-instance v1, Ljava/lang/StringBuilder;

    .line 509
    .line 510
    const-string v2, "floor type greater than 1 not decodable: "

    .line 511
    .line 512
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 513
    .line 514
    .line 515
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 516
    .line 517
    .line 518
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 519
    .line 520
    .line 521
    move-result-object v1

    .line 522
    const/4 v2, 0x0

    .line 523
    invoke-static {v1, v2}, Lm0/P;->a(Ljava/lang/String;Ljava/lang/RuntimeException;)Lm0/P;

    .line 524
    .line 525
    .line 526
    move-result-object v1

    .line 527
    throw v1

    .line 528
    :cond_19
    move/from16 v21, v3

    .line 529
    .line 530
    const/16 v1, 0x8

    .line 531
    .line 532
    invoke-virtual {v13, v1}, Lp0/D;->u(I)V

    .line 533
    .line 534
    .line 535
    const/16 v3, 0x10

    .line 536
    .line 537
    invoke-virtual {v13, v3}, Lp0/D;->u(I)V

    .line 538
    .line 539
    .line 540
    invoke-virtual {v13, v3}, Lp0/D;->u(I)V

    .line 541
    .line 542
    .line 543
    const/4 v3, 0x6

    .line 544
    invoke-virtual {v13, v3}, Lp0/D;->u(I)V

    .line 545
    .line 546
    .line 547
    invoke-virtual {v13, v1}, Lp0/D;->u(I)V

    .line 548
    .line 549
    .line 550
    const/4 v3, 0x4

    .line 551
    invoke-virtual {v13, v3}, Lp0/D;->i(I)I

    .line 552
    .line 553
    .line 554
    move-result v4

    .line 555
    add-int/2addr v4, v11

    .line 556
    const/4 v3, 0x0

    .line 557
    :goto_10
    if-ge v3, v4, :cond_1a

    .line 558
    .line 559
    invoke-virtual {v13, v1}, Lp0/D;->u(I)V

    .line 560
    .line 561
    .line 562
    add-int/lit8 v3, v3, 0x1

    .line 563
    .line 564
    const/16 v1, 0x8

    .line 565
    .line 566
    goto :goto_10

    .line 567
    :cond_1a
    add-int/lit8 v5, v5, 0x1

    .line 568
    .line 569
    move/from16 v3, v21

    .line 570
    .line 571
    const/4 v1, 0x6

    .line 572
    const/16 v4, 0x18

    .line 573
    .line 574
    const/16 v7, 0x10

    .line 575
    .line 576
    const/4 v9, 0x5

    .line 577
    const/4 v15, 0x2

    .line 578
    goto/16 :goto_a

    .line 579
    .line 580
    :cond_1b
    invoke-virtual {v13, v1}, Lp0/D;->i(I)I

    .line 581
    .line 582
    .line 583
    move-result v3

    .line 584
    add-int/2addr v3, v11

    .line 585
    const/4 v4, 0x0

    .line 586
    :goto_11
    if-ge v4, v3, :cond_22

    .line 587
    .line 588
    const/16 v5, 0x10

    .line 589
    .line 590
    invoke-virtual {v13, v5}, Lp0/D;->i(I)I

    .line 591
    .line 592
    .line 593
    move-result v6

    .line 594
    const/4 v5, 0x2

    .line 595
    if-gt v6, v5, :cond_21

    .line 596
    .line 597
    const/16 v5, 0x18

    .line 598
    .line 599
    invoke-virtual {v13, v5}, Lp0/D;->u(I)V

    .line 600
    .line 601
    .line 602
    invoke-virtual {v13, v5}, Lp0/D;->u(I)V

    .line 603
    .line 604
    .line 605
    invoke-virtual {v13, v5}, Lp0/D;->u(I)V

    .line 606
    .line 607
    .line 608
    invoke-virtual {v13, v1}, Lp0/D;->i(I)I

    .line 609
    .line 610
    .line 611
    move-result v6

    .line 612
    add-int/2addr v6, v11

    .line 613
    const/16 v1, 0x8

    .line 614
    .line 615
    invoke-virtual {v13, v1}, Lp0/D;->u(I)V

    .line 616
    .line 617
    .line 618
    new-array v7, v6, [I

    .line 619
    .line 620
    const/4 v9, 0x0

    .line 621
    :goto_12
    if-ge v9, v6, :cond_1d

    .line 622
    .line 623
    const/4 v12, 0x3

    .line 624
    invoke-virtual {v13, v12}, Lp0/D;->i(I)I

    .line 625
    .line 626
    .line 627
    move-result v14

    .line 628
    invoke-virtual {v13}, Lp0/D;->h()Z

    .line 629
    .line 630
    .line 631
    move-result v15

    .line 632
    if-eqz v15, :cond_1c

    .line 633
    .line 634
    const/4 v15, 0x5

    .line 635
    invoke-virtual {v13, v15}, Lp0/D;->i(I)I

    .line 636
    .line 637
    .line 638
    move-result v19

    .line 639
    goto :goto_13

    .line 640
    :cond_1c
    const/4 v15, 0x5

    .line 641
    const/16 v19, 0x0

    .line 642
    .line 643
    :goto_13
    mul-int/lit8 v19, v19, 0x8

    .line 644
    .line 645
    add-int v19, v19, v14

    .line 646
    .line 647
    aput v19, v7, v9

    .line 648
    .line 649
    add-int/lit8 v9, v9, 0x1

    .line 650
    .line 651
    goto :goto_12

    .line 652
    :cond_1d
    const/4 v12, 0x3

    .line 653
    const/4 v15, 0x5

    .line 654
    const/4 v9, 0x0

    .line 655
    :goto_14
    if-ge v9, v6, :cond_20

    .line 656
    .line 657
    const/4 v14, 0x0

    .line 658
    :goto_15
    if-ge v14, v1, :cond_1f

    .line 659
    .line 660
    aget v19, v7, v9

    .line 661
    .line 662
    shl-int v20, v11, v14

    .line 663
    .line 664
    and-int v19, v19, v20

    .line 665
    .line 666
    if-eqz v19, :cond_1e

    .line 667
    .line 668
    invoke-virtual {v13, v1}, Lp0/D;->u(I)V

    .line 669
    .line 670
    .line 671
    :cond_1e
    add-int/lit8 v14, v14, 0x1

    .line 672
    .line 673
    const/16 v1, 0x8

    .line 674
    .line 675
    goto :goto_15

    .line 676
    :cond_1f
    add-int/lit8 v9, v9, 0x1

    .line 677
    .line 678
    const/16 v1, 0x8

    .line 679
    .line 680
    goto :goto_14

    .line 681
    :cond_20
    add-int/lit8 v4, v4, 0x1

    .line 682
    .line 683
    const/4 v1, 0x6

    .line 684
    goto :goto_11

    .line 685
    :cond_21
    const-string v1, "residueType greater than 2 is not decodable"

    .line 686
    .line 687
    const/4 v2, 0x0

    .line 688
    invoke-static {v1, v2}, Lm0/P;->a(Ljava/lang/String;Ljava/lang/RuntimeException;)Lm0/P;

    .line 689
    .line 690
    .line 691
    move-result-object v1

    .line 692
    throw v1

    .line 693
    :cond_22
    invoke-virtual {v13, v1}, Lp0/D;->i(I)I

    .line 694
    .line 695
    .line 696
    move-result v3

    .line 697
    add-int/2addr v3, v11

    .line 698
    const/4 v1, 0x0

    .line 699
    :goto_16
    if-ge v1, v3, :cond_29

    .line 700
    .line 701
    const/16 v4, 0x10

    .line 702
    .line 703
    invoke-virtual {v13, v4}, Lp0/D;->i(I)I

    .line 704
    .line 705
    .line 706
    move-result v5

    .line 707
    if-eqz v5, :cond_23

    .line 708
    .line 709
    new-instance v4, Ljava/lang/StringBuilder;

    .line 710
    .line 711
    const-string v6, "mapping type other than 0 not supported: "

    .line 712
    .line 713
    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 714
    .line 715
    .line 716
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 717
    .line 718
    .line 719
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 720
    .line 721
    .line 722
    move-result-object v4

    .line 723
    const-string v5, "VorbisUtil"

    .line 724
    .line 725
    invoke-static {v5, v4}, Lp0/x;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 726
    .line 727
    .line 728
    move-object/from16 v6, v17

    .line 729
    .line 730
    const/4 v4, 0x2

    .line 731
    const/4 v12, 0x4

    .line 732
    goto :goto_1b

    .line 733
    :cond_23
    invoke-virtual {v13}, Lp0/D;->h()Z

    .line 734
    .line 735
    .line 736
    move-result v4

    .line 737
    if-eqz v4, :cond_24

    .line 738
    .line 739
    const/4 v4, 0x4

    .line 740
    invoke-virtual {v13, v4}, Lp0/D;->i(I)I

    .line 741
    .line 742
    .line 743
    move-result v5

    .line 744
    add-int/2addr v5, v11

    .line 745
    goto :goto_17

    .line 746
    :cond_24
    const/4 v5, 0x1

    .line 747
    :goto_17
    invoke-virtual {v13}, Lp0/D;->h()Z

    .line 748
    .line 749
    .line 750
    move-result v4

    .line 751
    move-object/from16 v6, v17

    .line 752
    .line 753
    iget v7, v6, LB1/e;->a:I

    .line 754
    .line 755
    if-eqz v4, :cond_25

    .line 756
    .line 757
    const/16 v4, 0x8

    .line 758
    .line 759
    invoke-virtual {v13, v4}, Lp0/D;->i(I)I

    .line 760
    .line 761
    .line 762
    move-result v9

    .line 763
    add-int/2addr v9, v11

    .line 764
    const/4 v4, 0x0

    .line 765
    :goto_18
    if-ge v4, v9, :cond_25

    .line 766
    .line 767
    add-int/lit8 v12, v7, -0x1

    .line 768
    .line 769
    invoke-static {v12}, Lcom/google/android/gms/internal/measurement/H1;->r(I)I

    .line 770
    .line 771
    .line 772
    move-result v14

    .line 773
    invoke-virtual {v13, v14}, Lp0/D;->u(I)V

    .line 774
    .line 775
    .line 776
    invoke-static {v12}, Lcom/google/android/gms/internal/measurement/H1;->r(I)I

    .line 777
    .line 778
    .line 779
    move-result v12

    .line 780
    invoke-virtual {v13, v12}, Lp0/D;->u(I)V

    .line 781
    .line 782
    .line 783
    add-int/lit8 v4, v4, 0x1

    .line 784
    .line 785
    goto :goto_18

    .line 786
    :cond_25
    const/4 v4, 0x2

    .line 787
    invoke-virtual {v13, v4}, Lp0/D;->i(I)I

    .line 788
    .line 789
    .line 790
    move-result v9

    .line 791
    if-nez v9, :cond_28

    .line 792
    .line 793
    if-le v5, v11, :cond_26

    .line 794
    .line 795
    const/4 v9, 0x0

    .line 796
    :goto_19
    if-ge v9, v7, :cond_26

    .line 797
    .line 798
    const/4 v12, 0x4

    .line 799
    invoke-virtual {v13, v12}, Lp0/D;->u(I)V

    .line 800
    .line 801
    .line 802
    add-int/lit8 v9, v9, 0x1

    .line 803
    .line 804
    goto :goto_19

    .line 805
    :cond_26
    const/4 v12, 0x4

    .line 806
    const/4 v7, 0x0

    .line 807
    :goto_1a
    if-ge v7, v5, :cond_27

    .line 808
    .line 809
    const/16 v9, 0x8

    .line 810
    .line 811
    invoke-virtual {v13, v9}, Lp0/D;->u(I)V

    .line 812
    .line 813
    .line 814
    invoke-virtual {v13, v9}, Lp0/D;->u(I)V

    .line 815
    .line 816
    .line 817
    invoke-virtual {v13, v9}, Lp0/D;->u(I)V

    .line 818
    .line 819
    .line 820
    add-int/lit8 v7, v7, 0x1

    .line 821
    .line 822
    goto :goto_1a

    .line 823
    :cond_27
    :goto_1b
    add-int/lit8 v1, v1, 0x1

    .line 824
    .line 825
    move-object/from16 v17, v6

    .line 826
    .line 827
    goto/16 :goto_16

    .line 828
    .line 829
    :cond_28
    const-string v1, "to reserved bits must be zero after mapping coupling steps"

    .line 830
    .line 831
    const/4 v2, 0x0

    .line 832
    invoke-static {v1, v2}, Lm0/P;->a(Ljava/lang/String;Ljava/lang/RuntimeException;)Lm0/P;

    .line 833
    .line 834
    .line 835
    move-result-object v1

    .line 836
    throw v1

    .line 837
    :cond_29
    move-object/from16 v6, v17

    .line 838
    .line 839
    const/4 v1, 0x6

    .line 840
    invoke-virtual {v13, v1}, Lp0/D;->i(I)I

    .line 841
    .line 842
    .line 843
    move-result v1

    .line 844
    add-int/lit8 v3, v1, 0x1

    .line 845
    .line 846
    new-array v9, v3, [LW0/N;

    .line 847
    .line 848
    const/4 v4, 0x0

    .line 849
    :goto_1c
    if-ge v4, v3, :cond_2a

    .line 850
    .line 851
    invoke-virtual {v13}, Lp0/D;->h()Z

    .line 852
    .line 853
    .line 854
    move-result v5

    .line 855
    const/16 v7, 0x10

    .line 856
    .line 857
    invoke-virtual {v13, v7}, Lp0/D;->i(I)I

    .line 858
    .line 859
    .line 860
    invoke-virtual {v13, v7}, Lp0/D;->i(I)I

    .line 861
    .line 862
    .line 863
    const/16 v12, 0x8

    .line 864
    .line 865
    invoke-virtual {v13, v12}, Lp0/D;->i(I)I

    .line 866
    .line 867
    .line 868
    new-instance v14, LW0/N;

    .line 869
    .line 870
    invoke-direct {v14, v5}, LW0/N;-><init>(Z)V

    .line 871
    .line 872
    .line 873
    aput-object v14, v9, v4

    .line 874
    .line 875
    add-int/lit8 v4, v4, 0x1

    .line 876
    .line 877
    goto :goto_1c

    .line 878
    :cond_2a
    invoke-virtual {v13}, Lp0/D;->h()Z

    .line 879
    .line 880
    .line 881
    move-result v3

    .line 882
    if-eqz v3, :cond_2c

    .line 883
    .line 884
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/H1;->r(I)I

    .line 885
    .line 886
    .line 887
    move-result v1

    .line 888
    new-instance v3, Lp1/k;

    .line 889
    .line 890
    move-object v5, v3

    .line 891
    move-object v7, v8

    .line 892
    move-object v8, v10

    .line 893
    move v10, v1

    .line 894
    invoke-direct/range {v5 .. v10}, Lp1/k;-><init>(LB1/e;LF/d;[B[LW0/N;I)V

    .line 895
    .line 896
    .line 897
    :goto_1d
    iput-object v3, v0, Lp1/l;->n:Lp1/k;

    .line 898
    .line 899
    if-nez v3, :cond_2b

    .line 900
    .line 901
    return v11

    .line 902
    :cond_2b
    new-instance v1, Ljava/util/ArrayList;

    .line 903
    .line 904
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 905
    .line 906
    .line 907
    iget-object v4, v3, Lp1/k;->a:LB1/e;

    .line 908
    .line 909
    iget-object v5, v4, LB1/e;->g:[B

    .line 910
    .line 911
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 912
    .line 913
    .line 914
    iget-object v5, v3, Lp1/k;->c:[B

    .line 915
    .line 916
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 917
    .line 918
    .line 919
    iget-object v3, v3, Lp1/k;->b:LF/d;

    .line 920
    .line 921
    iget-object v3, v3, LF/d;->J:Ljava/lang/Object;

    .line 922
    .line 923
    check-cast v3, [Ljava/lang/String;

    .line 924
    .line 925
    invoke-static {v3}, Lz4/H;->t([Ljava/lang/Object;)Lz4/d0;

    .line 926
    .line 927
    .line 928
    move-result-object v3

    .line 929
    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/H1;->t(Ljava/util/List;)Lm0/N;

    .line 930
    .line 931
    .line 932
    move-result-object v3

    .line 933
    new-instance v5, Lm0/s;

    .line 934
    .line 935
    invoke-direct {v5}, Lm0/s;-><init>()V

    .line 936
    .line 937
    .line 938
    const-string v6, "audio/ogg"

    .line 939
    .line 940
    invoke-static {v6}, Lm0/O;->p(Ljava/lang/String;)Ljava/lang/String;

    .line 941
    .line 942
    .line 943
    move-result-object v6

    .line 944
    iput-object v6, v5, Lm0/s;->m:Ljava/lang/String;

    .line 945
    .line 946
    const-string v6, "audio/vorbis"

    .line 947
    .line 948
    invoke-static {v6}, Lm0/O;->p(Ljava/lang/String;)Ljava/lang/String;

    .line 949
    .line 950
    .line 951
    move-result-object v6

    .line 952
    iput-object v6, v5, Lm0/s;->n:Ljava/lang/String;

    .line 953
    .line 954
    iget v6, v4, LB1/e;->d:I

    .line 955
    .line 956
    iput v6, v5, Lm0/s;->h:I

    .line 957
    .line 958
    iget v6, v4, LB1/e;->c:I

    .line 959
    .line 960
    iput v6, v5, Lm0/s;->i:I

    .line 961
    .line 962
    iget v6, v4, LB1/e;->a:I

    .line 963
    .line 964
    iput v6, v5, Lm0/s;->F:I

    .line 965
    .line 966
    iget v4, v4, LB1/e;->b:I

    .line 967
    .line 968
    iput v4, v5, Lm0/s;->G:I

    .line 969
    .line 970
    iput-object v1, v5, Lm0/s;->q:Ljava/util/List;

    .line 971
    .line 972
    iput-object v3, v5, Lm0/s;->k:Lm0/N;

    .line 973
    .line 974
    new-instance v1, Lm0/t;

    .line 975
    .line 976
    invoke-direct {v1, v5}, Lm0/t;-><init>(Lm0/s;)V

    .line 977
    .line 978
    .line 979
    iput-object v1, v2, Lm2/c;->H:Ljava/lang/Object;

    .line 980
    .line 981
    return v11

    .line 982
    :cond_2c
    const-string v1, "framing bit after modes not set as expected"

    .line 983
    .line 984
    const/4 v2, 0x0

    .line 985
    invoke-static {v1, v2}, Lm0/P;->a(Ljava/lang/String;Ljava/lang/RuntimeException;)Lm0/P;

    .line 986
    .line 987
    .line 988
    move-result-object v1

    .line 989
    throw v1
.end method

.method public final d(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lp1/j;->d(Z)V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lp1/l;->n:Lp1/k;

    .line 8
    .line 9
    iput-object p1, p0, Lp1/l;->q:LB1/e;

    .line 10
    .line 11
    iput-object p1, p0, Lp1/l;->r:LF/d;

    .line 12
    .line 13
    :cond_0
    const/4 p1, 0x0

    .line 14
    iput p1, p0, Lp1/l;->o:I

    .line 15
    .line 16
    iput-boolean p1, p0, Lp1/l;->p:Z

    .line 17
    .line 18
    return-void
.end method
