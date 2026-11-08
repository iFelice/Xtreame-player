.class public final Lp1/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LW0/s;


# instance fields
.field public a:LW0/u;

.field public b:Lp1/j;

.field public c:Z


# virtual methods
.method public final a(LW0/t;)Z
    .locals 8

    .line 1
    new-instance v0, Lp1/g;

    .line 2
    .line 3
    invoke-direct {v0}, Lp1/g;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-virtual {v0, p1, v1}, Lp1/g;->a(LW0/t;Z)Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const/4 v3, 0x0

    .line 12
    if-eqz v2, :cond_3

    .line 13
    .line 14
    iget v2, v0, Lp1/g;->a:I

    .line 15
    .line 16
    const/4 v4, 0x2

    .line 17
    and-int/2addr v2, v4

    .line 18
    if-eq v2, v4, :cond_0

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_0
    iget v0, v0, Lp1/g;->e:I

    .line 22
    .line 23
    const/16 v2, 0x8

    .line 24
    .line 25
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    new-instance v2, Lp0/E;

    .line 30
    .line 31
    invoke-direct {v2, v0}, Lp0/E;-><init>(I)V

    .line 32
    .line 33
    .line 34
    iget-object v4, v2, Lp0/E;->a:[B

    .line 35
    .line 36
    invoke-interface {p1, v3, v4, v0}, LW0/t;->c(I[BI)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2, v3}, Lp0/E;->L(I)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2}, Lp0/E;->a()I

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    const/4 v0, 0x5

    .line 47
    if-lt p1, v0, :cond_1

    .line 48
    .line 49
    invoke-virtual {v2}, Lp0/E;->z()I

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    const/16 v0, 0x7f

    .line 54
    .line 55
    if-ne p1, v0, :cond_1

    .line 56
    .line 57
    invoke-virtual {v2}, Lp0/E;->B()J

    .line 58
    .line 59
    .line 60
    move-result-wide v4

    .line 61
    const-wide/32 v6, 0x464c4143

    .line 62
    .line 63
    .line 64
    cmp-long p1, v4, v6

    .line 65
    .line 66
    if-nez p1, :cond_1

    .line 67
    .line 68
    new-instance p1, Lp1/d;

    .line 69
    .line 70
    invoke-direct {p1, v3}, Lp1/j;-><init>(I)V

    .line 71
    .line 72
    .line 73
    iput-object p1, p0, Lp1/e;->b:Lp1/j;

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_1
    invoke-virtual {v2, v3}, Lp0/E;->L(I)V

    .line 77
    .line 78
    .line 79
    :try_start_0
    invoke-static {v1, v2, v1}, Lcom/google/android/gms/internal/measurement/H1;->A(ILp0/E;Z)Z

    .line 80
    .line 81
    .line 82
    move-result p1
    :try_end_0
    .catch Lm0/P; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    if-eqz p1, :cond_2

    .line 84
    .line 85
    new-instance p1, Lp1/l;

    .line 86
    .line 87
    invoke-direct {p1, v3}, Lp1/j;-><init>(I)V

    .line 88
    .line 89
    .line 90
    iput-object p1, p0, Lp1/e;->b:Lp1/j;

    .line 91
    .line 92
    goto :goto_0

    .line 93
    :catch_0
    :cond_2
    invoke-virtual {v2, v3}, Lp0/E;->L(I)V

    .line 94
    .line 95
    .line 96
    sget-object p1, Lp1/i;->o:[B

    .line 97
    .line 98
    invoke-static {v2, p1}, Lp1/i;->i(Lp0/E;[B)Z

    .line 99
    .line 100
    .line 101
    move-result p1

    .line 102
    if-eqz p1, :cond_3

    .line 103
    .line 104
    new-instance p1, Lp1/i;

    .line 105
    .line 106
    invoke-direct {p1, v3}, Lp1/j;-><init>(I)V

    .line 107
    .line 108
    .line 109
    iput-object p1, p0, Lp1/e;->b:Lp1/j;

    .line 110
    .line 111
    :goto_0
    return v1

    .line 112
    :cond_3
    :goto_1
    return v3
.end method

.method public final b()LW0/s;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final d(LW0/u;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lp1/e;->a:LW0/u;

    .line 2
    .line 3
    return-void
.end method

.method public final g(LW0/t;)Z
    .locals 0

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Lp1/e;->a(LW0/t;)Z

    .line 2
    .line 3
    .line 4
    move-result p1
    :try_end_0
    .catch Lm0/P; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    return p1

    .line 6
    :catch_0
    const/4 p1, 0x0

    .line 7
    return p1
.end method

.method public final h(LW0/t;LW0/w;)I
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Lp1/e;->a:LW0/u;

    .line 6
    .line 7
    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/H1;->j(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    iget-object v2, v0, Lp1/e;->b:Lp1/j;

    .line 11
    .line 12
    if-nez v2, :cond_1

    .line 13
    .line 14
    invoke-virtual/range {p0 .. p1}, Lp1/e;->a(LW0/t;)Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    invoke-interface/range {p1 .. p1}, LW0/t;->m()V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const-string v1, "Failed to determine bitstream type"

    .line 25
    .line 26
    const/4 v2, 0x0

    .line 27
    invoke-static {v1, v2}, Lm0/P;->a(Ljava/lang/String;Ljava/lang/RuntimeException;)Lm0/P;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    throw v1

    .line 32
    :cond_1
    :goto_0
    iget-boolean v2, v0, Lp1/e;->c:Z

    .line 33
    .line 34
    const/4 v3, 0x0

    .line 35
    const/4 v4, 0x1

    .line 36
    if-nez v2, :cond_2

    .line 37
    .line 38
    iget-object v2, v0, Lp1/e;->a:LW0/u;

    .line 39
    .line 40
    invoke-interface {v2, v3, v4}, LW0/u;->t(II)LW0/L;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    iget-object v5, v0, Lp1/e;->a:LW0/u;

    .line 45
    .line 46
    invoke-interface {v5}, LW0/u;->j()V

    .line 47
    .line 48
    .line 49
    iget-object v5, v0, Lp1/e;->b:Lp1/j;

    .line 50
    .line 51
    iget-object v6, v0, Lp1/e;->a:LW0/u;

    .line 52
    .line 53
    iput-object v6, v5, Lp1/j;->k:Ljava/lang/Object;

    .line 54
    .line 55
    iput-object v2, v5, Lp1/j;->j:Ljava/lang/Object;

    .line 56
    .line 57
    invoke-virtual {v5, v4}, Lp1/j;->d(Z)V

    .line 58
    .line 59
    .line 60
    iput-boolean v4, v0, Lp1/e;->c:Z

    .line 61
    .line 62
    :cond_2
    iget-object v2, v0, Lp1/e;->b:Lp1/j;

    .line 63
    .line 64
    iget-object v5, v2, Lp1/j;->j:Ljava/lang/Object;

    .line 65
    .line 66
    check-cast v5, LW0/L;

    .line 67
    .line 68
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/H1;->j(Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    sget-object v5, Lp0/M;->a:Ljava/lang/String;

    .line 72
    .line 73
    iget v5, v2, Lp1/j;->d:I

    .line 74
    .line 75
    iget-object v6, v2, Lp1/j;->i:Lp1/f;

    .line 76
    .line 77
    const-wide/16 v7, -0x1

    .line 78
    .line 79
    const/4 v9, -0x1

    .line 80
    const/4 v10, 0x3

    .line 81
    const/4 v15, 0x2

    .line 82
    if-eqz v5, :cond_c

    .line 83
    .line 84
    if-eq v5, v4, :cond_b

    .line 85
    .line 86
    if-eq v5, v15, :cond_4

    .line 87
    .line 88
    if-ne v5, v10, :cond_3

    .line 89
    .line 90
    :goto_1
    const/4 v3, -0x1

    .line 91
    goto/16 :goto_7

    .line 92
    .line 93
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 94
    .line 95
    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 96
    .line 97
    .line 98
    throw v1

    .line 99
    :cond_4
    iget-object v5, v2, Lp1/j;->l:Ljava/lang/Object;

    .line 100
    .line 101
    check-cast v5, Lp1/h;

    .line 102
    .line 103
    invoke-interface {v5, v1}, Lp1/h;->J(LW0/t;)J

    .line 104
    .line 105
    .line 106
    move-result-wide v11

    .line 107
    const-wide/16 v13, 0x0

    .line 108
    .line 109
    cmp-long v5, v11, v13

    .line 110
    .line 111
    if-ltz v5, :cond_5

    .line 112
    .line 113
    move-object/from16 v5, p2

    .line 114
    .line 115
    iput-wide v11, v5, LW0/w;->a:J

    .line 116
    .line 117
    const/4 v3, 0x1

    .line 118
    goto/16 :goto_7

    .line 119
    .line 120
    :cond_5
    cmp-long v5, v11, v7

    .line 121
    .line 122
    if-gez v5, :cond_6

    .line 123
    .line 124
    const-wide/16 v15, 0x2

    .line 125
    .line 126
    add-long/2addr v11, v15

    .line 127
    neg-long v11, v11

    .line 128
    invoke-virtual {v2, v11, v12}, Lp1/j;->a(J)V

    .line 129
    .line 130
    .line 131
    :cond_6
    iget-boolean v5, v2, Lp1/j;->g:Z

    .line 132
    .line 133
    if-nez v5, :cond_7

    .line 134
    .line 135
    iget-object v5, v2, Lp1/j;->l:Ljava/lang/Object;

    .line 136
    .line 137
    check-cast v5, Lp1/h;

    .line 138
    .line 139
    invoke-interface {v5}, Lp1/h;->w()LW0/F;

    .line 140
    .line 141
    .line 142
    move-result-object v5

    .line 143
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/H1;->j(Ljava/lang/Object;)V

    .line 144
    .line 145
    .line 146
    iget-object v11, v2, Lp1/j;->k:Ljava/lang/Object;

    .line 147
    .line 148
    check-cast v11, LW0/u;

    .line 149
    .line 150
    invoke-interface {v11, v5}, LW0/u;->r(LW0/F;)V

    .line 151
    .line 152
    .line 153
    iget-object v11, v2, Lp1/j;->j:Ljava/lang/Object;

    .line 154
    .line 155
    check-cast v11, LW0/L;

    .line 156
    .line 157
    invoke-interface {v5}, LW0/F;->m()J

    .line 158
    .line 159
    .line 160
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 161
    .line 162
    .line 163
    iput-boolean v4, v2, Lp1/j;->g:Z

    .line 164
    .line 165
    :cond_7
    iget-wide v4, v2, Lp1/j;->f:J

    .line 166
    .line 167
    cmp-long v11, v4, v13

    .line 168
    .line 169
    if-gtz v11, :cond_9

    .line 170
    .line 171
    invoke-virtual {v6, v1}, Lp1/f;->b(LW0/t;)Z

    .line 172
    .line 173
    .line 174
    move-result v1

    .line 175
    if-eqz v1, :cond_8

    .line 176
    .line 177
    goto :goto_2

    .line 178
    :cond_8
    iput v10, v2, Lp1/j;->d:I

    .line 179
    .line 180
    goto :goto_1

    .line 181
    :cond_9
    :goto_2
    iput-wide v13, v2, Lp1/j;->f:J

    .line 182
    .line 183
    iget-object v1, v6, Lp1/f;->e:Ljava/lang/Object;

    .line 184
    .line 185
    check-cast v1, Lp0/E;

    .line 186
    .line 187
    invoke-virtual {v2, v1}, Lp1/j;->b(Lp0/E;)J

    .line 188
    .line 189
    .line 190
    move-result-wide v4

    .line 191
    cmp-long v6, v4, v13

    .line 192
    .line 193
    if-ltz v6, :cond_a

    .line 194
    .line 195
    iget-wide v9, v2, Lp1/j;->c:J

    .line 196
    .line 197
    add-long v11, v9, v4

    .line 198
    .line 199
    iget-wide v13, v2, Lp1/j;->a:J

    .line 200
    .line 201
    cmp-long v6, v11, v13

    .line 202
    .line 203
    if-ltz v6, :cond_a

    .line 204
    .line 205
    const-wide/32 v11, 0xf4240

    .line 206
    .line 207
    .line 208
    mul-long v9, v9, v11

    .line 209
    .line 210
    iget v6, v2, Lp1/j;->e:I

    .line 211
    .line 212
    int-to-long v11, v6

    .line 213
    div-long v14, v9, v11

    .line 214
    .line 215
    iget-object v6, v2, Lp1/j;->j:Ljava/lang/Object;

    .line 216
    .line 217
    check-cast v6, LW0/L;

    .line 218
    .line 219
    iget v9, v1, Lp0/E;->c:I

    .line 220
    .line 221
    invoke-interface {v6, v9, v1}, LW0/L;->e(ILp0/E;)V

    .line 222
    .line 223
    .line 224
    iget-object v6, v2, Lp1/j;->j:Ljava/lang/Object;

    .line 225
    .line 226
    move-object v13, v6

    .line 227
    check-cast v13, LW0/L;

    .line 228
    .line 229
    iget v1, v1, Lp0/E;->c:I

    .line 230
    .line 231
    const/16 v18, 0x0

    .line 232
    .line 233
    const/16 v19, 0x0

    .line 234
    .line 235
    const/16 v16, 0x1

    .line 236
    .line 237
    move/from16 v17, v1

    .line 238
    .line 239
    invoke-interface/range {v13 .. v19}, LW0/L;->d(JIIILW0/K;)V

    .line 240
    .line 241
    .line 242
    iput-wide v7, v2, Lp1/j;->a:J

    .line 243
    .line 244
    :cond_a
    iget-wide v6, v2, Lp1/j;->c:J

    .line 245
    .line 246
    add-long/2addr v6, v4

    .line 247
    iput-wide v6, v2, Lp1/j;->c:J

    .line 248
    .line 249
    goto/16 :goto_7

    .line 250
    .line 251
    :cond_b
    iget-wide v4, v2, Lp1/j;->b:J

    .line 252
    .line 253
    long-to-int v5, v4

    .line 254
    invoke-interface {v1, v5}, LW0/t;->n(I)V

    .line 255
    .line 256
    .line 257
    iput v15, v2, Lp1/j;->d:I

    .line 258
    .line 259
    goto/16 :goto_7

    .line 260
    .line 261
    :cond_c
    :goto_3
    invoke-virtual {v6, v1}, Lp1/f;->b(LW0/t;)Z

    .line 262
    .line 263
    .line 264
    move-result v5

    .line 265
    if-nez v5, :cond_d

    .line 266
    .line 267
    iput v10, v2, Lp1/j;->d:I

    .line 268
    .line 269
    goto/16 :goto_1

    .line 270
    .line 271
    :cond_d
    invoke-interface/range {p1 .. p1}, LW0/t;->r()J

    .line 272
    .line 273
    .line 274
    move-result-wide v11

    .line 275
    iget-wide v13, v2, Lp1/j;->b:J

    .line 276
    .line 277
    sub-long/2addr v11, v13

    .line 278
    iput-wide v11, v2, Lp1/j;->f:J

    .line 279
    .line 280
    iget-object v5, v6, Lp1/f;->e:Ljava/lang/Object;

    .line 281
    .line 282
    check-cast v5, Lp0/E;

    .line 283
    .line 284
    iget-object v11, v2, Lp1/j;->m:Ljava/lang/Object;

    .line 285
    .line 286
    check-cast v11, Lm2/c;

    .line 287
    .line 288
    invoke-virtual {v2, v5, v13, v14, v11}, Lp1/j;->c(Lp0/E;JLm2/c;)Z

    .line 289
    .line 290
    .line 291
    move-result v11

    .line 292
    if-eqz v11, :cond_e

    .line 293
    .line 294
    invoke-interface/range {p1 .. p1}, LW0/t;->r()J

    .line 295
    .line 296
    .line 297
    move-result-wide v11

    .line 298
    iput-wide v11, v2, Lp1/j;->b:J

    .line 299
    .line 300
    goto :goto_3

    .line 301
    :cond_e
    iget-object v9, v2, Lp1/j;->m:Ljava/lang/Object;

    .line 302
    .line 303
    check-cast v9, Lm2/c;

    .line 304
    .line 305
    iget-object v9, v9, Lm2/c;->H:Ljava/lang/Object;

    .line 306
    .line 307
    check-cast v9, Lm0/t;

    .line 308
    .line 309
    iget v10, v9, Lm0/t;->H:I

    .line 310
    .line 311
    iput v10, v2, Lp1/j;->e:I

    .line 312
    .line 313
    iget-boolean v10, v2, Lp1/j;->h:Z

    .line 314
    .line 315
    if-nez v10, :cond_f

    .line 316
    .line 317
    iget-object v10, v2, Lp1/j;->j:Ljava/lang/Object;

    .line 318
    .line 319
    check-cast v10, LW0/L;

    .line 320
    .line 321
    invoke-interface {v10, v9}, LW0/L;->b(Lm0/t;)V

    .line 322
    .line 323
    .line 324
    iput-boolean v4, v2, Lp1/j;->h:Z

    .line 325
    .line 326
    :cond_f
    iget-object v9, v2, Lp1/j;->m:Ljava/lang/Object;

    .line 327
    .line 328
    check-cast v9, Lm2/c;

    .line 329
    .line 330
    iget-object v9, v9, Lm2/c;->I:Ljava/lang/Object;

    .line 331
    .line 332
    check-cast v9, Lp1/h;

    .line 333
    .line 334
    if-eqz v9, :cond_10

    .line 335
    .line 336
    iput-object v9, v2, Lp1/j;->l:Ljava/lang/Object;

    .line 337
    .line 338
    :goto_4
    const/4 v1, 0x2

    .line 339
    goto :goto_6

    .line 340
    :cond_10
    invoke-interface/range {p1 .. p1}, LW0/t;->j()J

    .line 341
    .line 342
    .line 343
    move-result-wide v9

    .line 344
    cmp-long v11, v9, v7

    .line 345
    .line 346
    if-nez v11, :cond_11

    .line 347
    .line 348
    new-instance v1, LU4/b;

    .line 349
    .line 350
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 351
    .line 352
    .line 353
    iput-object v1, v2, Lp1/j;->l:Ljava/lang/Object;

    .line 354
    .line 355
    goto :goto_4

    .line 356
    :cond_11
    iget-object v6, v6, Lp1/f;->d:Ljava/lang/Object;

    .line 357
    .line 358
    check-cast v6, Lp1/g;

    .line 359
    .line 360
    iget v7, v6, Lp1/g;->a:I

    .line 361
    .line 362
    and-int/lit8 v7, v7, 0x4

    .line 363
    .line 364
    if-eqz v7, :cond_12

    .line 365
    .line 366
    const/16 v17, 0x1

    .line 367
    .line 368
    goto :goto_5

    .line 369
    :cond_12
    const/16 v17, 0x0

    .line 370
    .line 371
    :goto_5
    new-instance v4, Lp1/b;

    .line 372
    .line 373
    iget-wide v9, v2, Lp1/j;->b:J

    .line 374
    .line 375
    invoke-interface/range {p1 .. p1}, LW0/t;->j()J

    .line 376
    .line 377
    .line 378
    move-result-wide v11

    .line 379
    iget v1, v6, Lp1/g;->d:I

    .line 380
    .line 381
    iget v7, v6, Lp1/g;->e:I

    .line 382
    .line 383
    add-int/2addr v1, v7

    .line 384
    int-to-long v13, v1

    .line 385
    iget-wide v6, v6, Lp1/g;->b:J

    .line 386
    .line 387
    move-wide/from16 v18, v6

    .line 388
    .line 389
    move-object v7, v4

    .line 390
    move-object v8, v2

    .line 391
    const/4 v1, 0x2

    .line 392
    move-wide/from16 v15, v18

    .line 393
    .line 394
    invoke-direct/range {v7 .. v17}, Lp1/b;-><init>(Lp1/j;JJJJZ)V

    .line 395
    .line 396
    .line 397
    iput-object v4, v2, Lp1/j;->l:Ljava/lang/Object;

    .line 398
    .line 399
    :goto_6
    iput v1, v2, Lp1/j;->d:I

    .line 400
    .line 401
    iget-object v1, v5, Lp0/E;->a:[B

    .line 402
    .line 403
    array-length v2, v1

    .line 404
    const v4, 0xfe01

    .line 405
    .line 406
    .line 407
    if-ne v2, v4, :cond_13

    .line 408
    .line 409
    goto :goto_7

    .line 410
    :cond_13
    iget v2, v5, Lp0/E;->c:I

    .line 411
    .line 412
    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    .line 413
    .line 414
    .line 415
    move-result v2

    .line 416
    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 417
    .line 418
    .line 419
    move-result-object v1

    .line 420
    iget v2, v5, Lp0/E;->c:I

    .line 421
    .line 422
    invoke-virtual {v5, v2, v1}, Lp0/E;->J(I[B)V

    .line 423
    .line 424
    .line 425
    :goto_7
    return v3
.end method

.method public final i(JJ)V
    .locals 6

    .line 1
    iget-object v0, p0, Lp1/e;->b:Lp1/j;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v1, v0, Lp1/j;->i:Lp1/f;

    .line 6
    .line 7
    iget-object v2, v1, Lp1/f;->d:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v2, Lp1/g;

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    iput v3, v2, Lp1/g;->a:I

    .line 13
    .line 14
    const-wide/16 v4, 0x0

    .line 15
    .line 16
    iput-wide v4, v2, Lp1/g;->b:J

    .line 17
    .line 18
    iput v3, v2, Lp1/g;->c:I

    .line 19
    .line 20
    iput v3, v2, Lp1/g;->d:I

    .line 21
    .line 22
    iput v3, v2, Lp1/g;->e:I

    .line 23
    .line 24
    iget-object v2, v1, Lp1/f;->e:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v2, Lp0/E;

    .line 27
    .line 28
    invoke-virtual {v2, v3}, Lp0/E;->I(I)V

    .line 29
    .line 30
    .line 31
    const/4 v2, -0x1

    .line 32
    iput v2, v1, Lp1/f;->a:I

    .line 33
    .line 34
    iput-boolean v3, v1, Lp1/f;->c:Z

    .line 35
    .line 36
    cmp-long v1, p1, v4

    .line 37
    .line 38
    if-nez v1, :cond_0

    .line 39
    .line 40
    iget-boolean p1, v0, Lp1/j;->g:Z

    .line 41
    .line 42
    xor-int/lit8 p1, p1, 0x1

    .line 43
    .line 44
    invoke-virtual {v0, p1}, Lp1/j;->d(Z)V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    iget p1, v0, Lp1/j;->d:I

    .line 49
    .line 50
    if-eqz p1, :cond_1

    .line 51
    .line 52
    iget p1, v0, Lp1/j;->e:I

    .line 53
    .line 54
    int-to-long p1, p1

    .line 55
    mul-long p1, p1, p3

    .line 56
    .line 57
    const-wide/32 p3, 0xf4240

    .line 58
    .line 59
    .line 60
    div-long/2addr p1, p3

    .line 61
    iput-wide p1, v0, Lp1/j;->a:J

    .line 62
    .line 63
    iget-object p3, v0, Lp1/j;->l:Ljava/lang/Object;

    .line 64
    .line 65
    check-cast p3, Lp1/h;

    .line 66
    .line 67
    sget-object p4, Lp0/M;->a:Ljava/lang/String;

    .line 68
    .line 69
    invoke-interface {p3, p1, p2}, Lp1/h;->L(J)V

    .line 70
    .line 71
    .line 72
    const/4 p1, 0x2

    .line 73
    iput p1, v0, Lp1/j;->d:I

    .line 74
    .line 75
    :cond_1
    :goto_0
    return-void
.end method

.method public final j()Ljava/util/List;
    .locals 1

    .line 1
    sget-object v0, Lz4/H;->H:Lz4/F;

    .line 2
    .line 3
    sget-object v0, Lz4/d0;->K:Lz4/d0;

    .line 4
    .line 5
    return-object v0
.end method

.method public final release()V
    .locals 0

    .line 1
    return-void
.end method
