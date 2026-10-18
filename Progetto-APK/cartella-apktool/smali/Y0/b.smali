.class public final LY0/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LW0/s;


# instance fields
.field public final a:Lp0/E;

.field public final b:LA2/i;

.field public final c:Z

.field public final d:Lq1/k;

.field public e:I

.field public f:LW0/u;

.field public g:LY0/c;

.field public h:J

.field public i:[LY0/e;

.field public j:J

.field public k:LY0/e;

.field public l:I

.field public m:J

.field public n:J

.field public o:I

.field public p:Z


# direct methods
.method public constructor <init>(LF2/G;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LY0/b;->d:Lq1/k;

    .line 5
    .line 6
    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, LY0/b;->c:Z

    .line 8
    .line 9
    new-instance v0, Lp0/E;

    .line 10
    .line 11
    const/16 v1, 0xc

    .line 12
    .line 13
    invoke-direct {v0, v1}, Lp0/E;-><init>(I)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, LY0/b;->a:Lp0/E;

    .line 17
    .line 18
    new-instance v0, LA2/i;

    .line 19
    .line 20
    invoke-direct {v0, p1}, LA2/i;-><init>(I)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, LY0/b;->b:LA2/i;

    .line 24
    .line 25
    new-instance v0, LF2/G;

    .line 26
    .line 27
    invoke-direct {v0, p1}, LF2/G;-><init>(I)V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, LY0/b;->f:LW0/u;

    .line 31
    .line 32
    const/4 p1, 0x0

    .line 33
    new-array p1, p1, [LY0/e;

    .line 34
    .line 35
    iput-object p1, p0, LY0/b;->i:[LY0/e;

    .line 36
    .line 37
    const-wide/16 v0, -0x1

    .line 38
    .line 39
    iput-wide v0, p0, LY0/b;->m:J

    .line 40
    .line 41
    iput-wide v0, p0, LY0/b;->n:J

    .line 42
    .line 43
    const/4 p1, -0x1

    .line 44
    iput p1, p0, LY0/b;->l:I

    .line 45
    .line 46
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    iput-wide v0, p0, LY0/b;->h:J

    .line 52
    .line 53
    return-void
.end method


# virtual methods
.method public final b()LW0/s;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final d(LW0/u;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, LY0/b;->e:I

    .line 3
    .line 4
    iget-boolean v0, p0, LY0/b;->c:Z

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    new-instance v0, Lq1/n;

    .line 9
    .line 10
    iget-object v1, p0, LY0/b;->d:Lq1/k;

    .line 11
    .line 12
    invoke-direct {v0, p1, v1}, Lq1/n;-><init>(LW0/u;Lq1/k;)V

    .line 13
    .line 14
    .line 15
    move-object p1, v0

    .line 16
    :cond_0
    iput-object p1, p0, LY0/b;->f:LW0/u;

    .line 17
    .line 18
    const-wide/16 v0, -0x1

    .line 19
    .line 20
    iput-wide v0, p0, LY0/b;->j:J

    .line 21
    .line 22
    return-void
.end method

.method public final g(LW0/t;)Z
    .locals 4

    .line 1
    iget-object v0, p0, LY0/b;->a:Lp0/E;

    .line 2
    .line 3
    iget-object v1, v0, Lp0/E;->a:[B

    .line 4
    .line 5
    const/16 v2, 0xc

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    invoke-interface {p1, v3, v1, v2}, LW0/t;->c(I[BI)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v3}, Lp0/E;->L(I)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lp0/E;->n()I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    const v1, 0x46464952

    .line 19
    .line 20
    .line 21
    if-eq p1, v1, :cond_0

    .line 22
    .line 23
    return v3

    .line 24
    :cond_0
    const/4 p1, 0x4

    .line 25
    invoke-virtual {v0, p1}, Lp0/E;->M(I)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Lp0/E;->n()I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    const v0, 0x20495641

    .line 33
    .line 34
    .line 35
    if-ne p1, v0, :cond_1

    .line 36
    .line 37
    const/4 v3, 0x1

    .line 38
    :cond_1
    return v3
.end method

.method public final h(LW0/t;LW0/w;)I
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-wide v2, v0, LY0/b;->j:J

    .line 6
    .line 7
    const/4 v4, 0x0

    .line 8
    const/4 v5, 0x1

    .line 9
    const-wide/16 v6, -0x1

    .line 10
    .line 11
    cmp-long v8, v2, v6

    .line 12
    .line 13
    if-eqz v8, :cond_2

    .line 14
    .line 15
    invoke-interface/range {p1 .. p1}, LW0/t;->r()J

    .line 16
    .line 17
    .line 18
    move-result-wide v2

    .line 19
    iget-wide v8, v0, LY0/b;->j:J

    .line 20
    .line 21
    cmp-long v10, v8, v2

    .line 22
    .line 23
    if-ltz v10, :cond_0

    .line 24
    .line 25
    const-wide/32 v10, 0x40000

    .line 26
    .line 27
    .line 28
    add-long/2addr v10, v2

    .line 29
    cmp-long v12, v8, v10

    .line 30
    .line 31
    if-lez v12, :cond_1

    .line 32
    .line 33
    :cond_0
    move-object/from16 v2, p2

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    sub-long/2addr v8, v2

    .line 37
    long-to-int v2, v8

    .line 38
    invoke-interface {v1, v2}, LW0/t;->n(I)V

    .line 39
    .line 40
    .line 41
    goto :goto_1

    .line 42
    :goto_0
    iput-wide v8, v2, LW0/w;->a:J

    .line 43
    .line 44
    const/4 v2, 0x1

    .line 45
    goto :goto_2

    .line 46
    :cond_2
    :goto_1
    const/4 v2, 0x0

    .line 47
    :goto_2
    iput-wide v6, v0, LY0/b;->j:J

    .line 48
    .line 49
    if-eqz v2, :cond_3

    .line 50
    .line 51
    return v5

    .line 52
    :cond_3
    iget v2, v0, LY0/b;->e:I

    .line 53
    .line 54
    const/4 v3, 0x0

    .line 55
    const/16 v11, 0x10

    .line 56
    .line 57
    const v12, 0x69766f6d

    .line 58
    .line 59
    .line 60
    const/4 v13, 0x4

    .line 61
    const/16 v15, 0x8

    .line 62
    .line 63
    const v8, 0x5453494c

    .line 64
    .line 65
    .line 66
    const-wide/16 v16, 0x8

    .line 67
    .line 68
    const/16 v9, 0xc

    .line 69
    .line 70
    iget-object v14, v0, LY0/b;->b:LA2/i;

    .line 71
    .line 72
    iget-object v10, v0, LY0/b;->a:Lp0/E;

    .line 73
    .line 74
    packed-switch v2, :pswitch_data_0

    .line 75
    .line 76
    .line 77
    new-instance v1, Ljava/lang/AssertionError;

    .line 78
    .line 79
    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    .line 80
    .line 81
    .line 82
    throw v1

    .line 83
    :pswitch_0
    invoke-interface/range {p1 .. p1}, LW0/t;->r()J

    .line 84
    .line 85
    .line 86
    move-result-wide v6

    .line 87
    iget-wide v13, v0, LY0/b;->n:J

    .line 88
    .line 89
    cmp-long v2, v6, v13

    .line 90
    .line 91
    if-ltz v2, :cond_4

    .line 92
    .line 93
    const/4 v4, -0x1

    .line 94
    goto/16 :goto_7

    .line 95
    .line 96
    :cond_4
    iget-object v2, v0, LY0/b;->k:LY0/e;

    .line 97
    .line 98
    if-eqz v2, :cond_9

    .line 99
    .line 100
    iget v6, v2, LY0/e;->h:I

    .line 101
    .line 102
    iget-object v7, v2, LY0/e;->b:LW0/L;

    .line 103
    .line 104
    invoke-interface {v7, v1, v6, v4}, LW0/L;->f(Lm0/j;IZ)I

    .line 105
    .line 106
    .line 107
    move-result v1

    .line 108
    sub-int/2addr v6, v1

    .line 109
    iput v6, v2, LY0/e;->h:I

    .line 110
    .line 111
    if-nez v6, :cond_5

    .line 112
    .line 113
    const/4 v1, 0x1

    .line 114
    goto :goto_3

    .line 115
    :cond_5
    const/4 v1, 0x0

    .line 116
    :goto_3
    if-eqz v1, :cond_8

    .line 117
    .line 118
    iget v6, v2, LY0/e;->g:I

    .line 119
    .line 120
    if-lez v6, :cond_7

    .line 121
    .line 122
    iget v6, v2, LY0/e;->i:I

    .line 123
    .line 124
    iget-wide v7, v2, LY0/e;->e:J

    .line 125
    .line 126
    int-to-long v9, v6

    .line 127
    mul-long v7, v7, v9

    .line 128
    .line 129
    iget v9, v2, LY0/e;->f:I

    .line 130
    .line 131
    int-to-long v9, v9

    .line 132
    div-long v12, v7, v9

    .line 133
    .line 134
    iget-object v7, v2, LY0/e;->n:[I

    .line 135
    .line 136
    invoke-static {v7, v6}, Ljava/util/Arrays;->binarySearch([II)I

    .line 137
    .line 138
    .line 139
    move-result v6

    .line 140
    if-ltz v6, :cond_6

    .line 141
    .line 142
    const/4 v14, 0x1

    .line 143
    goto :goto_4

    .line 144
    :cond_6
    const/4 v14, 0x0

    .line 145
    :goto_4
    iget v15, v2, LY0/e;->g:I

    .line 146
    .line 147
    const/16 v16, 0x0

    .line 148
    .line 149
    const/16 v17, 0x0

    .line 150
    .line 151
    iget-object v11, v2, LY0/e;->b:LW0/L;

    .line 152
    .line 153
    invoke-interface/range {v11 .. v17}, LW0/L;->d(JIIILW0/K;)V

    .line 154
    .line 155
    .line 156
    :cond_7
    iget v6, v2, LY0/e;->i:I

    .line 157
    .line 158
    add-int/2addr v6, v5

    .line 159
    iput v6, v2, LY0/e;->i:I

    .line 160
    .line 161
    :cond_8
    if-eqz v1, :cond_12

    .line 162
    .line 163
    iput-object v3, v0, LY0/b;->k:LY0/e;

    .line 164
    .line 165
    goto/16 :goto_7

    .line 166
    .line 167
    :cond_9
    invoke-interface/range {p1 .. p1}, LW0/t;->r()J

    .line 168
    .line 169
    .line 170
    move-result-wide v6

    .line 171
    const-wide/16 v13, 0x1

    .line 172
    .line 173
    and-long/2addr v6, v13

    .line 174
    cmp-long v2, v6, v13

    .line 175
    .line 176
    if-nez v2, :cond_a

    .line 177
    .line 178
    invoke-interface {v1, v5}, LW0/t;->n(I)V

    .line 179
    .line 180
    .line 181
    :cond_a
    iget-object v2, v10, Lp0/E;->a:[B

    .line 182
    .line 183
    invoke-interface {v1, v4, v2, v9}, LW0/t;->c(I[BI)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v10, v4}, Lp0/E;->L(I)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {v10}, Lp0/E;->n()I

    .line 190
    .line 191
    .line 192
    move-result v2

    .line 193
    if-ne v2, v8, :cond_c

    .line 194
    .line 195
    invoke-virtual {v10, v15}, Lp0/E;->L(I)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {v10}, Lp0/E;->n()I

    .line 199
    .line 200
    .line 201
    move-result v2

    .line 202
    if-ne v2, v12, :cond_b

    .line 203
    .line 204
    const/16 v15, 0xc

    .line 205
    .line 206
    :cond_b
    invoke-interface {v1, v15}, LW0/t;->n(I)V

    .line 207
    .line 208
    .line 209
    invoke-interface/range {p1 .. p1}, LW0/t;->m()V

    .line 210
    .line 211
    .line 212
    goto :goto_7

    .line 213
    :cond_c
    invoke-virtual {v10}, Lp0/E;->n()I

    .line 214
    .line 215
    .line 216
    move-result v5

    .line 217
    const v6, 0x4b4e554a    # 1.352225E7f

    .line 218
    .line 219
    .line 220
    if-ne v2, v6, :cond_d

    .line 221
    .line 222
    invoke-interface/range {p1 .. p1}, LW0/t;->r()J

    .line 223
    .line 224
    .line 225
    move-result-wide v1

    .line 226
    int-to-long v5, v5

    .line 227
    add-long/2addr v1, v5

    .line 228
    add-long v1, v1, v16

    .line 229
    .line 230
    iput-wide v1, v0, LY0/b;->j:J

    .line 231
    .line 232
    goto :goto_7

    .line 233
    :cond_d
    invoke-interface {v1, v15}, LW0/t;->n(I)V

    .line 234
    .line 235
    .line 236
    invoke-interface/range {p1 .. p1}, LW0/t;->m()V

    .line 237
    .line 238
    .line 239
    iget-object v6, v0, LY0/b;->i:[LY0/e;

    .line 240
    .line 241
    array-length v7, v6

    .line 242
    const/4 v8, 0x0

    .line 243
    :goto_5
    if-ge v8, v7, :cond_10

    .line 244
    .line 245
    aget-object v9, v6, v8

    .line 246
    .line 247
    iget v10, v9, LY0/e;->c:I

    .line 248
    .line 249
    if-eq v10, v2, :cond_f

    .line 250
    .line 251
    iget v10, v9, LY0/e;->d:I

    .line 252
    .line 253
    if-ne v10, v2, :cond_e

    .line 254
    .line 255
    goto :goto_6

    .line 256
    :cond_e
    add-int/lit8 v8, v8, 0x1

    .line 257
    .line 258
    goto :goto_5

    .line 259
    :cond_f
    :goto_6
    move-object v3, v9

    .line 260
    :cond_10
    if-nez v3, :cond_11

    .line 261
    .line 262
    invoke-interface/range {p1 .. p1}, LW0/t;->r()J

    .line 263
    .line 264
    .line 265
    move-result-wide v1

    .line 266
    int-to-long v5, v5

    .line 267
    add-long/2addr v1, v5

    .line 268
    iput-wide v1, v0, LY0/b;->j:J

    .line 269
    .line 270
    goto :goto_7

    .line 271
    :cond_11
    iput v5, v3, LY0/e;->g:I

    .line 272
    .line 273
    iput v5, v3, LY0/e;->h:I

    .line 274
    .line 275
    iput-object v3, v0, LY0/b;->k:LY0/e;

    .line 276
    .line 277
    :cond_12
    :goto_7
    return v4

    .line 278
    :pswitch_1
    new-instance v2, Lp0/E;

    .line 279
    .line 280
    iget v8, v0, LY0/b;->o:I

    .line 281
    .line 282
    invoke-direct {v2, v8}, Lp0/E;-><init>(I)V

    .line 283
    .line 284
    .line 285
    iget-object v8, v2, Lp0/E;->a:[B

    .line 286
    .line 287
    iget v9, v0, LY0/b;->o:I

    .line 288
    .line 289
    invoke-interface {v1, v8, v4, v9}, LW0/t;->readFully([BII)V

    .line 290
    .line 291
    .line 292
    invoke-virtual {v2}, Lp0/E;->a()I

    .line 293
    .line 294
    .line 295
    move-result v1

    .line 296
    if-ge v1, v11, :cond_13

    .line 297
    .line 298
    const-wide/16 v8, 0x0

    .line 299
    .line 300
    goto :goto_9

    .line 301
    :cond_13
    iget v1, v2, Lp0/E;->b:I

    .line 302
    .line 303
    invoke-virtual {v2, v15}, Lp0/E;->M(I)V

    .line 304
    .line 305
    .line 306
    invoke-virtual {v2}, Lp0/E;->n()I

    .line 307
    .line 308
    .line 309
    move-result v10

    .line 310
    int-to-long v14, v10

    .line 311
    iget-wide v8, v0, LY0/b;->m:J

    .line 312
    .line 313
    cmp-long v10, v14, v8

    .line 314
    .line 315
    if-lez v10, :cond_14

    .line 316
    .line 317
    const-wide/16 v8, 0x0

    .line 318
    .line 319
    goto :goto_8

    .line 320
    :cond_14
    add-long v8, v8, v16

    .line 321
    .line 322
    :goto_8
    invoke-virtual {v2, v1}, Lp0/E;->L(I)V

    .line 323
    .line 324
    .line 325
    :goto_9
    invoke-virtual {v2}, Lp0/E;->a()I

    .line 326
    .line 327
    .line 328
    move-result v1

    .line 329
    if-lt v1, v11, :cond_1d

    .line 330
    .line 331
    invoke-virtual {v2}, Lp0/E;->n()I

    .line 332
    .line 333
    .line 334
    move-result v1

    .line 335
    invoke-virtual {v2}, Lp0/E;->n()I

    .line 336
    .line 337
    .line 338
    move-result v10

    .line 339
    invoke-virtual {v2}, Lp0/E;->n()I

    .line 340
    .line 341
    .line 342
    move-result v12

    .line 343
    int-to-long v14, v12

    .line 344
    add-long/2addr v14, v8

    .line 345
    invoke-virtual {v2, v13}, Lp0/E;->M(I)V

    .line 346
    .line 347
    .line 348
    iget-object v12, v0, LY0/b;->i:[LY0/e;

    .line 349
    .line 350
    array-length v3, v12

    .line 351
    const/4 v13, 0x0

    .line 352
    :goto_a
    if-ge v13, v3, :cond_16

    .line 353
    .line 354
    aget-object v4, v12, v13

    .line 355
    .line 356
    iget v5, v4, LY0/e;->c:I

    .line 357
    .line 358
    if-eq v5, v1, :cond_17

    .line 359
    .line 360
    iget v5, v4, LY0/e;->d:I

    .line 361
    .line 362
    if-ne v5, v1, :cond_15

    .line 363
    .line 364
    goto :goto_b

    .line 365
    :cond_15
    add-int/lit8 v13, v13, 0x1

    .line 366
    .line 367
    const/4 v4, 0x0

    .line 368
    const/4 v5, 0x1

    .line 369
    goto :goto_a

    .line 370
    :cond_16
    const/4 v4, 0x0

    .line 371
    :cond_17
    :goto_b
    if-nez v4, :cond_18

    .line 372
    .line 373
    :goto_c
    const/4 v3, 0x0

    .line 374
    const/4 v4, 0x0

    .line 375
    const/4 v5, 0x1

    .line 376
    const/4 v13, 0x4

    .line 377
    goto :goto_9

    .line 378
    :cond_18
    and-int/lit8 v1, v10, 0x10

    .line 379
    .line 380
    if-ne v1, v11, :cond_19

    .line 381
    .line 382
    const/4 v1, 0x1

    .line 383
    goto :goto_d

    .line 384
    :cond_19
    const/4 v1, 0x0

    .line 385
    :goto_d
    iget-wide v12, v4, LY0/e;->l:J

    .line 386
    .line 387
    cmp-long v3, v12, v6

    .line 388
    .line 389
    if-nez v3, :cond_1a

    .line 390
    .line 391
    iput-wide v14, v4, LY0/e;->l:J

    .line 392
    .line 393
    :cond_1a
    if-eqz v1, :cond_1c

    .line 394
    .line 395
    iget v1, v4, LY0/e;->k:I

    .line 396
    .line 397
    iget-object v3, v4, LY0/e;->n:[I

    .line 398
    .line 399
    array-length v3, v3

    .line 400
    if-ne v1, v3, :cond_1b

    .line 401
    .line 402
    iget-object v1, v4, LY0/e;->m:[J

    .line 403
    .line 404
    array-length v3, v1

    .line 405
    const/4 v5, 0x3

    .line 406
    mul-int/lit8 v3, v3, 0x3

    .line 407
    .line 408
    const/4 v10, 0x2

    .line 409
    div-int/2addr v3, v10

    .line 410
    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([JI)[J

    .line 411
    .line 412
    .line 413
    move-result-object v1

    .line 414
    iput-object v1, v4, LY0/e;->m:[J

    .line 415
    .line 416
    iget-object v1, v4, LY0/e;->n:[I

    .line 417
    .line 418
    array-length v3, v1

    .line 419
    mul-int/lit8 v3, v3, 0x3

    .line 420
    .line 421
    div-int/2addr v3, v10

    .line 422
    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([II)[I

    .line 423
    .line 424
    .line 425
    move-result-object v1

    .line 426
    iput-object v1, v4, LY0/e;->n:[I

    .line 427
    .line 428
    :cond_1b
    iget-object v1, v4, LY0/e;->m:[J

    .line 429
    .line 430
    iget v3, v4, LY0/e;->k:I

    .line 431
    .line 432
    aput-wide v14, v1, v3

    .line 433
    .line 434
    iget-object v1, v4, LY0/e;->n:[I

    .line 435
    .line 436
    iget v5, v4, LY0/e;->j:I

    .line 437
    .line 438
    aput v5, v1, v3

    .line 439
    .line 440
    const/4 v1, 0x1

    .line 441
    add-int/2addr v3, v1

    .line 442
    iput v3, v4, LY0/e;->k:I

    .line 443
    .line 444
    goto :goto_e

    .line 445
    :cond_1c
    const/4 v1, 0x1

    .line 446
    :goto_e
    iget v3, v4, LY0/e;->j:I

    .line 447
    .line 448
    add-int/2addr v3, v1

    .line 449
    iput v3, v4, LY0/e;->j:I

    .line 450
    .line 451
    goto :goto_c

    .line 452
    :cond_1d
    iget-object v1, v0, LY0/b;->i:[LY0/e;

    .line 453
    .line 454
    array-length v2, v1

    .line 455
    const/4 v3, 0x0

    .line 456
    :goto_f
    if-ge v3, v2, :cond_1f

    .line 457
    .line 458
    aget-object v4, v1, v3

    .line 459
    .line 460
    iget-object v5, v4, LY0/e;->m:[J

    .line 461
    .line 462
    iget v6, v4, LY0/e;->k:I

    .line 463
    .line 464
    invoke-static {v5, v6}, Ljava/util/Arrays;->copyOf([JI)[J

    .line 465
    .line 466
    .line 467
    move-result-object v5

    .line 468
    iput-object v5, v4, LY0/e;->m:[J

    .line 469
    .line 470
    iget-object v5, v4, LY0/e;->n:[I

    .line 471
    .line 472
    iget v6, v4, LY0/e;->k:I

    .line 473
    .line 474
    invoke-static {v5, v6}, Ljava/util/Arrays;->copyOf([II)[I

    .line 475
    .line 476
    .line 477
    move-result-object v5

    .line 478
    iput-object v5, v4, LY0/e;->n:[I

    .line 479
    .line 480
    iget v5, v4, LY0/e;->c:I

    .line 481
    .line 482
    const/high16 v6, 0x62770000

    .line 483
    .line 484
    and-int/2addr v5, v6

    .line 485
    if-ne v5, v6, :cond_1e

    .line 486
    .line 487
    iget-object v5, v4, LY0/e;->a:LY0/d;

    .line 488
    .line 489
    iget v5, v5, LY0/d;->f:I

    .line 490
    .line 491
    if-eqz v5, :cond_1e

    .line 492
    .line 493
    iget v5, v4, LY0/e;->k:I

    .line 494
    .line 495
    if-lez v5, :cond_1e

    .line 496
    .line 497
    iput v5, v4, LY0/e;->f:I

    .line 498
    .line 499
    :cond_1e
    add-int/lit8 v3, v3, 0x1

    .line 500
    .line 501
    goto :goto_f

    .line 502
    :cond_1f
    const/4 v3, 0x1

    .line 503
    iput-boolean v3, v0, LY0/b;->p:Z

    .line 504
    .line 505
    iget-object v1, v0, LY0/b;->i:[LY0/e;

    .line 506
    .line 507
    array-length v1, v1

    .line 508
    if-nez v1, :cond_20

    .line 509
    .line 510
    iget-object v1, v0, LY0/b;->f:LW0/u;

    .line 511
    .line 512
    new-instance v2, LW0/x;

    .line 513
    .line 514
    iget-wide v3, v0, LY0/b;->h:J

    .line 515
    .line 516
    invoke-direct {v2, v3, v4}, LW0/x;-><init>(J)V

    .line 517
    .line 518
    .line 519
    invoke-interface {v1, v2}, LW0/u;->r(LW0/F;)V

    .line 520
    .line 521
    .line 522
    :goto_10
    const/4 v1, 0x6

    .line 523
    goto :goto_11

    .line 524
    :cond_20
    iget-object v1, v0, LY0/b;->f:LW0/u;

    .line 525
    .line 526
    new-instance v2, LW0/x;

    .line 527
    .line 528
    iget-wide v3, v0, LY0/b;->h:J

    .line 529
    .line 530
    const/4 v5, 0x2

    .line 531
    invoke-direct {v2, v0, v5, v3, v4}, LW0/x;-><init>(Ljava/lang/Object;IJ)V

    .line 532
    .line 533
    .line 534
    invoke-interface {v1, v2}, LW0/u;->r(LW0/F;)V

    .line 535
    .line 536
    .line 537
    goto :goto_10

    .line 538
    :goto_11
    iput v1, v0, LY0/b;->e:I

    .line 539
    .line 540
    iget-wide v1, v0, LY0/b;->m:J

    .line 541
    .line 542
    iput-wide v1, v0, LY0/b;->j:J

    .line 543
    .line 544
    const/4 v2, 0x0

    .line 545
    return v2

    .line 546
    :pswitch_2
    const/4 v2, 0x0

    .line 547
    iget-object v3, v10, Lp0/E;->a:[B

    .line 548
    .line 549
    invoke-interface {v1, v3, v2, v15}, LW0/t;->readFully([BII)V

    .line 550
    .line 551
    .line 552
    invoke-virtual {v10, v2}, Lp0/E;->L(I)V

    .line 553
    .line 554
    .line 555
    invoke-virtual {v10}, Lp0/E;->n()I

    .line 556
    .line 557
    .line 558
    move-result v2

    .line 559
    invoke-virtual {v10}, Lp0/E;->n()I

    .line 560
    .line 561
    .line 562
    move-result v3

    .line 563
    const v4, 0x31786469

    .line 564
    .line 565
    .line 566
    if-ne v2, v4, :cond_21

    .line 567
    .line 568
    const/4 v1, 0x5

    .line 569
    iput v1, v0, LY0/b;->e:I

    .line 570
    .line 571
    iput v3, v0, LY0/b;->o:I

    .line 572
    .line 573
    :goto_12
    const/4 v2, 0x0

    .line 574
    goto :goto_13

    .line 575
    :cond_21
    invoke-interface/range {p1 .. p1}, LW0/t;->r()J

    .line 576
    .line 577
    .line 578
    move-result-wide v1

    .line 579
    int-to-long v3, v3

    .line 580
    add-long/2addr v1, v3

    .line 581
    iput-wide v1, v0, LY0/b;->j:J

    .line 582
    .line 583
    goto :goto_12

    .line 584
    :goto_13
    return v2

    .line 585
    :pswitch_3
    const/4 v2, 0x0

    .line 586
    iget-wide v3, v0, LY0/b;->m:J

    .line 587
    .line 588
    cmp-long v5, v3, v6

    .line 589
    .line 590
    if-eqz v5, :cond_22

    .line 591
    .line 592
    invoke-interface/range {p1 .. p1}, LW0/t;->r()J

    .line 593
    .line 594
    .line 595
    move-result-wide v3

    .line 596
    iget-wide v5, v0, LY0/b;->m:J

    .line 597
    .line 598
    cmp-long v7, v3, v5

    .line 599
    .line 600
    if-eqz v7, :cond_22

    .line 601
    .line 602
    iput-wide v5, v0, LY0/b;->j:J

    .line 603
    .line 604
    return v2

    .line 605
    :cond_22
    iget-object v3, v10, Lp0/E;->a:[B

    .line 606
    .line 607
    invoke-interface {v1, v2, v3, v9}, LW0/t;->c(I[BI)V

    .line 608
    .line 609
    .line 610
    invoke-interface/range {p1 .. p1}, LW0/t;->m()V

    .line 611
    .line 612
    .line 613
    invoke-virtual {v10, v2}, Lp0/E;->L(I)V

    .line 614
    .line 615
    .line 616
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 617
    .line 618
    .line 619
    invoke-virtual {v10}, Lp0/E;->n()I

    .line 620
    .line 621
    .line 622
    move-result v3

    .line 623
    iput v3, v14, LA2/i;->a:I

    .line 624
    .line 625
    invoke-virtual {v10}, Lp0/E;->n()I

    .line 626
    .line 627
    .line 628
    move-result v3

    .line 629
    iput v3, v14, LA2/i;->b:I

    .line 630
    .line 631
    iput v2, v14, LA2/i;->c:I

    .line 632
    .line 633
    invoke-virtual {v10}, Lp0/E;->n()I

    .line 634
    .line 635
    .line 636
    move-result v3

    .line 637
    iget v4, v14, LA2/i;->a:I

    .line 638
    .line 639
    const v5, 0x46464952

    .line 640
    .line 641
    .line 642
    if-ne v4, v5, :cond_23

    .line 643
    .line 644
    invoke-interface {v1, v9}, LW0/t;->n(I)V

    .line 645
    .line 646
    .line 647
    return v2

    .line 648
    :cond_23
    if-ne v4, v8, :cond_24

    .line 649
    .line 650
    if-eq v3, v12, :cond_25

    .line 651
    .line 652
    :cond_24
    const/4 v2, 0x0

    .line 653
    goto :goto_15

    .line 654
    :cond_25
    invoke-interface/range {p1 .. p1}, LW0/t;->r()J

    .line 655
    .line 656
    .line 657
    move-result-wide v2

    .line 658
    iput-wide v2, v0, LY0/b;->m:J

    .line 659
    .line 660
    iget v4, v14, LA2/i;->b:I

    .line 661
    .line 662
    int-to-long v4, v4

    .line 663
    add-long/2addr v2, v4

    .line 664
    add-long v2, v2, v16

    .line 665
    .line 666
    iput-wide v2, v0, LY0/b;->n:J

    .line 667
    .line 668
    iget-boolean v2, v0, LY0/b;->p:Z

    .line 669
    .line 670
    if-nez v2, :cond_27

    .line 671
    .line 672
    iget-object v2, v0, LY0/b;->g:LY0/c;

    .line 673
    .line 674
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 675
    .line 676
    .line 677
    iget v2, v2, LY0/c;->b:I

    .line 678
    .line 679
    and-int/2addr v2, v11

    .line 680
    if-ne v2, v11, :cond_26

    .line 681
    .line 682
    const/4 v2, 0x4

    .line 683
    iput v2, v0, LY0/b;->e:I

    .line 684
    .line 685
    iget-wide v1, v0, LY0/b;->n:J

    .line 686
    .line 687
    iput-wide v1, v0, LY0/b;->j:J

    .line 688
    .line 689
    :goto_14
    const/4 v1, 0x0

    .line 690
    return v1

    .line 691
    :cond_26
    iget-object v2, v0, LY0/b;->f:LW0/u;

    .line 692
    .line 693
    new-instance v3, LW0/x;

    .line 694
    .line 695
    iget-wide v4, v0, LY0/b;->h:J

    .line 696
    .line 697
    invoke-direct {v3, v4, v5}, LW0/x;-><init>(J)V

    .line 698
    .line 699
    .line 700
    invoke-interface {v2, v3}, LW0/u;->r(LW0/F;)V

    .line 701
    .line 702
    .line 703
    const/4 v2, 0x1

    .line 704
    iput-boolean v2, v0, LY0/b;->p:Z

    .line 705
    .line 706
    :cond_27
    invoke-interface/range {p1 .. p1}, LW0/t;->r()J

    .line 707
    .line 708
    .line 709
    move-result-wide v1

    .line 710
    const-wide/16 v3, 0xc

    .line 711
    .line 712
    add-long/2addr v1, v3

    .line 713
    iput-wide v1, v0, LY0/b;->j:J

    .line 714
    .line 715
    const/4 v1, 0x6

    .line 716
    iput v1, v0, LY0/b;->e:I

    .line 717
    .line 718
    const/4 v2, 0x0

    .line 719
    return v2

    .line 720
    :goto_15
    invoke-interface/range {p1 .. p1}, LW0/t;->r()J

    .line 721
    .line 722
    .line 723
    move-result-wide v3

    .line 724
    iget v1, v14, LA2/i;->b:I

    .line 725
    .line 726
    int-to-long v5, v1

    .line 727
    add-long/2addr v3, v5

    .line 728
    add-long v3, v3, v16

    .line 729
    .line 730
    iput-wide v3, v0, LY0/b;->j:J

    .line 731
    .line 732
    return v2

    .line 733
    :pswitch_4
    const/4 v2, 0x0

    .line 734
    iget v3, v0, LY0/b;->l:I

    .line 735
    .line 736
    const/4 v4, 0x4

    .line 737
    sub-int/2addr v3, v4

    .line 738
    new-instance v4, Lp0/E;

    .line 739
    .line 740
    invoke-direct {v4, v3}, Lp0/E;-><init>(I)V

    .line 741
    .line 742
    .line 743
    iget-object v5, v4, Lp0/E;->a:[B

    .line 744
    .line 745
    invoke-interface {v1, v5, v2, v3}, LW0/t;->readFully([BII)V

    .line 746
    .line 747
    .line 748
    const v1, 0x6c726468

    .line 749
    .line 750
    .line 751
    invoke-static {v1, v4}, LY0/f;->b(ILp0/E;)LY0/f;

    .line 752
    .line 753
    .line 754
    move-result-object v2

    .line 755
    iget v3, v2, LY0/f;->b:I

    .line 756
    .line 757
    if-ne v3, v1, :cond_32

    .line 758
    .line 759
    const-class v1, LY0/c;

    .line 760
    .line 761
    invoke-virtual {v2, v1}, LY0/f;->a(Ljava/lang/Class;)LY0/a;

    .line 762
    .line 763
    .line 764
    move-result-object v1

    .line 765
    check-cast v1, LY0/c;

    .line 766
    .line 767
    if-eqz v1, :cond_31

    .line 768
    .line 769
    iput-object v1, v0, LY0/b;->g:LY0/c;

    .line 770
    .line 771
    iget v3, v1, LY0/c;->c:I

    .line 772
    .line 773
    int-to-long v3, v3

    .line 774
    iget v1, v1, LY0/c;->a:I

    .line 775
    .line 776
    int-to-long v5, v1

    .line 777
    mul-long v3, v3, v5

    .line 778
    .line 779
    iput-wide v3, v0, LY0/b;->h:J

    .line 780
    .line 781
    new-instance v1, Ljava/util/ArrayList;

    .line 782
    .line 783
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 784
    .line 785
    .line 786
    iget-object v2, v2, LY0/f;->a:Lz4/H;

    .line 787
    .line 788
    const/4 v3, 0x0

    .line 789
    invoke-virtual {v2, v3}, Lz4/H;->v(I)Lz4/F;

    .line 790
    .line 791
    .line 792
    move-result-object v2

    .line 793
    const/4 v3, 0x0

    .line 794
    :cond_28
    :goto_16
    invoke-virtual {v2}, Lz4/a;->hasNext()Z

    .line 795
    .line 796
    .line 797
    move-result v4

    .line 798
    if-eqz v4, :cond_30

    .line 799
    .line 800
    invoke-virtual {v2}, Lz4/a;->next()Ljava/lang/Object;

    .line 801
    .line 802
    .line 803
    move-result-object v4

    .line 804
    check-cast v4, LY0/a;

    .line 805
    .line 806
    invoke-interface {v4}, LY0/a;->getType()I

    .line 807
    .line 808
    .line 809
    move-result v5

    .line 810
    const v6, 0x6c727473

    .line 811
    .line 812
    .line 813
    if-ne v5, v6, :cond_28

    .line 814
    .line 815
    check-cast v4, LY0/f;

    .line 816
    .line 817
    add-int/lit8 v5, v3, 0x1

    .line 818
    .line 819
    const-class v6, LY0/d;

    .line 820
    .line 821
    invoke-virtual {v4, v6}, LY0/f;->a(Ljava/lang/Class;)LY0/a;

    .line 822
    .line 823
    .line 824
    move-result-object v6

    .line 825
    check-cast v6, LY0/d;

    .line 826
    .line 827
    const-class v7, LY0/g;

    .line 828
    .line 829
    invoke-virtual {v4, v7}, LY0/f;->a(Ljava/lang/Class;)LY0/a;

    .line 830
    .line 831
    .line 832
    move-result-object v7

    .line 833
    check-cast v7, LY0/g;

    .line 834
    .line 835
    const-string v8, "AviExtractor"

    .line 836
    .line 837
    if-nez v6, :cond_2a

    .line 838
    .line 839
    const-string v3, "Missing Stream Header"

    .line 840
    .line 841
    invoke-static {v8, v3}, Lp0/x;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 842
    .line 843
    .line 844
    :cond_29
    :goto_17
    const/4 v7, 0x0

    .line 845
    goto :goto_18

    .line 846
    :cond_2a
    if-nez v7, :cond_2b

    .line 847
    .line 848
    const-string v3, "Missing Stream Format"

    .line 849
    .line 850
    invoke-static {v8, v3}, Lp0/x;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 851
    .line 852
    .line 853
    goto :goto_17

    .line 854
    :cond_2b
    iget v8, v6, LY0/d;->d:I

    .line 855
    .line 856
    int-to-long v9, v8

    .line 857
    iget v8, v6, LY0/d;->b:I

    .line 858
    .line 859
    int-to-long v11, v8

    .line 860
    const-wide/32 v13, 0xf4240

    .line 861
    .line 862
    .line 863
    mul-long v11, v11, v13

    .line 864
    .line 865
    iget v8, v6, LY0/d;->c:I

    .line 866
    .line 867
    int-to-long v13, v8

    .line 868
    sget-object v8, Lp0/M;->a:Ljava/lang/String;

    .line 869
    .line 870
    sget-object v15, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    .line 871
    .line 872
    invoke-static/range {v9 .. v15}, Lp0/M;->Z(JJJLjava/math/RoundingMode;)J

    .line 873
    .line 874
    .line 875
    move-result-wide v8

    .line 876
    iget-object v7, v7, LY0/g;->a:Lm0/t;

    .line 877
    .line 878
    invoke-virtual {v7}, Lm0/t;->a()Lm0/s;

    .line 879
    .line 880
    .line 881
    move-result-object v10

    .line 882
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 883
    .line 884
    .line 885
    move-result-object v11

    .line 886
    iput-object v11, v10, Lm0/s;->a:Ljava/lang/String;

    .line 887
    .line 888
    iget v11, v6, LY0/d;->e:I

    .line 889
    .line 890
    if-eqz v11, :cond_2c

    .line 891
    .line 892
    iput v11, v10, Lm0/s;->o:I

    .line 893
    .line 894
    :cond_2c
    const-class v11, LY0/h;

    .line 895
    .line 896
    invoke-virtual {v4, v11}, LY0/f;->a(Ljava/lang/Class;)LY0/a;

    .line 897
    .line 898
    .line 899
    move-result-object v4

    .line 900
    check-cast v4, LY0/h;

    .line 901
    .line 902
    if-eqz v4, :cond_2d

    .line 903
    .line 904
    iget-object v4, v4, LY0/h;->a:Ljava/lang/String;

    .line 905
    .line 906
    iput-object v4, v10, Lm0/s;->b:Ljava/lang/String;

    .line 907
    .line 908
    :cond_2d
    iget-object v4, v7, Lm0/t;->o:Ljava/lang/String;

    .line 909
    .line 910
    invoke-static {v4}, Lm0/O;->i(Ljava/lang/String;)I

    .line 911
    .line 912
    .line 913
    move-result v4

    .line 914
    const/4 v7, 0x1

    .line 915
    if-eq v4, v7, :cond_2e

    .line 916
    .line 917
    const/4 v7, 0x2

    .line 918
    if-ne v4, v7, :cond_29

    .line 919
    .line 920
    :cond_2e
    iget-object v7, v0, LY0/b;->f:LW0/u;

    .line 921
    .line 922
    invoke-interface {v7, v3, v4}, LW0/u;->t(II)LW0/L;

    .line 923
    .line 924
    .line 925
    move-result-object v4

    .line 926
    new-instance v7, Lm0/t;

    .line 927
    .line 928
    invoke-direct {v7, v10}, Lm0/t;-><init>(Lm0/s;)V

    .line 929
    .line 930
    .line 931
    invoke-interface {v4, v7}, LW0/L;->b(Lm0/t;)V

    .line 932
    .line 933
    .line 934
    iget-wide v10, v0, LY0/b;->h:J

    .line 935
    .line 936
    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->max(JJ)J

    .line 937
    .line 938
    .line 939
    move-result-wide v7

    .line 940
    iput-wide v7, v0, LY0/b;->h:J

    .line 941
    .line 942
    new-instance v7, LY0/e;

    .line 943
    .line 944
    invoke-direct {v7, v3, v6, v4}, LY0/e;-><init>(ILY0/d;LW0/L;)V

    .line 945
    .line 946
    .line 947
    :goto_18
    if-eqz v7, :cond_2f

    .line 948
    .line 949
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 950
    .line 951
    .line 952
    :cond_2f
    move v3, v5

    .line 953
    goto/16 :goto_16

    .line 954
    .line 955
    :cond_30
    const/4 v3, 0x0

    .line 956
    new-array v2, v3, [LY0/e;

    .line 957
    .line 958
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 959
    .line 960
    .line 961
    move-result-object v1

    .line 962
    check-cast v1, [LY0/e;

    .line 963
    .line 964
    iput-object v1, v0, LY0/b;->i:[LY0/e;

    .line 965
    .line 966
    iget-object v1, v0, LY0/b;->f:LW0/u;

    .line 967
    .line 968
    invoke-interface {v1}, LW0/u;->j()V

    .line 969
    .line 970
    .line 971
    const/4 v1, 0x3

    .line 972
    iput v1, v0, LY0/b;->e:I

    .line 973
    .line 974
    return v3

    .line 975
    :cond_31
    const-string v1, "AviHeader not found"

    .line 976
    .line 977
    const/4 v2, 0x0

    .line 978
    invoke-static {v1, v2}, Lm0/P;->a(Ljava/lang/String;Ljava/lang/RuntimeException;)Lm0/P;

    .line 979
    .line 980
    .line 981
    move-result-object v1

    .line 982
    throw v1

    .line 983
    :cond_32
    const/4 v2, 0x0

    .line 984
    new-instance v1, Ljava/lang/StringBuilder;

    .line 985
    .line 986
    const-string v4, "Unexpected header list type "

    .line 987
    .line 988
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 989
    .line 990
    .line 991
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 992
    .line 993
    .line 994
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 995
    .line 996
    .line 997
    move-result-object v1

    .line 998
    invoke-static {v1, v2}, Lm0/P;->a(Ljava/lang/String;Ljava/lang/RuntimeException;)Lm0/P;

    .line 999
    .line 1000
    .line 1001
    move-result-object v1

    .line 1002
    throw v1

    .line 1003
    :pswitch_5
    iget-object v2, v10, Lp0/E;->a:[B

    .line 1004
    .line 1005
    const/4 v3, 0x0

    .line 1006
    invoke-interface {v1, v2, v3, v9}, LW0/t;->readFully([BII)V

    .line 1007
    .line 1008
    .line 1009
    invoke-virtual {v10, v3}, Lp0/E;->L(I)V

    .line 1010
    .line 1011
    .line 1012
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1013
    .line 1014
    .line 1015
    invoke-virtual {v10}, Lp0/E;->n()I

    .line 1016
    .line 1017
    .line 1018
    move-result v1

    .line 1019
    iput v1, v14, LA2/i;->a:I

    .line 1020
    .line 1021
    invoke-virtual {v10}, Lp0/E;->n()I

    .line 1022
    .line 1023
    .line 1024
    move-result v1

    .line 1025
    iput v1, v14, LA2/i;->b:I

    .line 1026
    .line 1027
    iput v3, v14, LA2/i;->c:I

    .line 1028
    .line 1029
    iget v1, v14, LA2/i;->a:I

    .line 1030
    .line 1031
    if-ne v1, v8, :cond_34

    .line 1032
    .line 1033
    invoke-virtual {v10}, Lp0/E;->n()I

    .line 1034
    .line 1035
    .line 1036
    move-result v1

    .line 1037
    iput v1, v14, LA2/i;->c:I

    .line 1038
    .line 1039
    const v2, 0x6c726468

    .line 1040
    .line 1041
    .line 1042
    if-ne v1, v2, :cond_33

    .line 1043
    .line 1044
    iget v1, v14, LA2/i;->b:I

    .line 1045
    .line 1046
    iput v1, v0, LY0/b;->l:I

    .line 1047
    .line 1048
    const/4 v1, 0x2

    .line 1049
    iput v1, v0, LY0/b;->e:I

    .line 1050
    .line 1051
    return v3

    .line 1052
    :cond_33
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1053
    .line 1054
    const-string v2, "hdrl expected, found: "

    .line 1055
    .line 1056
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1057
    .line 1058
    .line 1059
    iget v2, v14, LA2/i;->c:I

    .line 1060
    .line 1061
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1062
    .line 1063
    .line 1064
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1065
    .line 1066
    .line 1067
    move-result-object v1

    .line 1068
    const/4 v2, 0x0

    .line 1069
    invoke-static {v1, v2}, Lm0/P;->a(Ljava/lang/String;Ljava/lang/RuntimeException;)Lm0/P;

    .line 1070
    .line 1071
    .line 1072
    move-result-object v1

    .line 1073
    throw v1

    .line 1074
    :cond_34
    const/4 v2, 0x0

    .line 1075
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1076
    .line 1077
    const-string v3, "LIST expected, found: "

    .line 1078
    .line 1079
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1080
    .line 1081
    .line 1082
    iget v3, v14, LA2/i;->a:I

    .line 1083
    .line 1084
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1085
    .line 1086
    .line 1087
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1088
    .line 1089
    .line 1090
    move-result-object v1

    .line 1091
    invoke-static {v1, v2}, Lm0/P;->a(Ljava/lang/String;Ljava/lang/RuntimeException;)Lm0/P;

    .line 1092
    .line 1093
    .line 1094
    move-result-object v1

    .line 1095
    throw v1

    .line 1096
    :pswitch_6
    move-object v2, v3

    .line 1097
    invoke-virtual/range {p0 .. p1}, LY0/b;->g(LW0/t;)Z

    .line 1098
    .line 1099
    .line 1100
    move-result v3

    .line 1101
    if-eqz v3, :cond_35

    .line 1102
    .line 1103
    invoke-interface {v1, v9}, LW0/t;->n(I)V

    .line 1104
    .line 1105
    .line 1106
    const/4 v1, 0x1

    .line 1107
    iput v1, v0, LY0/b;->e:I

    .line 1108
    .line 1109
    goto/16 :goto_14

    .line 1110
    .line 1111
    :cond_35
    const-string v1, "AVI Header List not found"

    .line 1112
    .line 1113
    invoke-static {v1, v2}, Lm0/P;->a(Ljava/lang/String;Ljava/lang/RuntimeException;)Lm0/P;

    .line 1114
    .line 1115
    .line 1116
    move-result-object v1

    .line 1117
    throw v1

    .line 1118
    nop

    .line 1119
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final i(JJ)V
    .locals 5

    .line 1
    const-wide/16 p3, -0x1

    .line 2
    .line 3
    iput-wide p3, p0, LY0/b;->j:J

    .line 4
    .line 5
    const/4 p3, 0x0

    .line 6
    iput-object p3, p0, LY0/b;->k:LY0/e;

    .line 7
    .line 8
    iget-object p3, p0, LY0/b;->i:[LY0/e;

    .line 9
    .line 10
    array-length p4, p3

    .line 11
    const/4 v0, 0x0

    .line 12
    const/4 v1, 0x0

    .line 13
    :goto_0
    if-ge v1, p4, :cond_1

    .line 14
    .line 15
    aget-object v2, p3, v1

    .line 16
    .line 17
    iget v3, v2, LY0/e;->k:I

    .line 18
    .line 19
    if-nez v3, :cond_0

    .line 20
    .line 21
    iput v0, v2, LY0/e;->i:I

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_0
    iget-object v3, v2, LY0/e;->m:[J

    .line 25
    .line 26
    const/4 v4, 0x1

    .line 27
    invoke-static {v3, p1, p2, v4}, Lp0/M;->e([JJZ)I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    iget-object v4, v2, LY0/e;->n:[I

    .line 32
    .line 33
    aget v3, v4, v3

    .line 34
    .line 35
    iput v3, v2, LY0/e;->i:I

    .line 36
    .line 37
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    const-wide/16 p3, 0x0

    .line 41
    .line 42
    cmp-long v1, p1, p3

    .line 43
    .line 44
    if-nez v1, :cond_3

    .line 45
    .line 46
    iget-object p1, p0, LY0/b;->i:[LY0/e;

    .line 47
    .line 48
    array-length p1, p1

    .line 49
    if-nez p1, :cond_2

    .line 50
    .line 51
    iput v0, p0, LY0/b;->e:I

    .line 52
    .line 53
    goto :goto_2

    .line 54
    :cond_2
    const/4 p1, 0x3

    .line 55
    iput p1, p0, LY0/b;->e:I

    .line 56
    .line 57
    :goto_2
    return-void

    .line 58
    :cond_3
    const/4 p1, 0x6

    .line 59
    iput p1, p0, LY0/b;->e:I

    .line 60
    .line 61
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
