.class public final LA1/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LA1/j;


# static fields
.field public static final l:[F


# instance fields
.field public final a:LA1/K;

.field public final b:Lp0/E;

.field public final c:[Z

.field public final d:LA1/m;

.field public final e:LA1/x;

.field public f:LA1/n;

.field public g:J

.field public h:Ljava/lang/String;

.field public i:LW0/L;

.field public j:Z

.field public k:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x7

    .line 2
    new-array v0, v0, [F

    .line 3
    .line 4
    fill-array-data v0, :array_0

    .line 5
    .line 6
    .line 7
    sput-object v0, LA1/o;->l:[F

    .line 8
    .line 9
    return-void

    .line 10
    nop

    .line 11
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f8ba2e9
        0x3f68ba2f
        0x3fba2e8c
        0x3f9b26ca
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(LA1/K;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LA1/o;->a:LA1/K;

    .line 5
    .line 6
    const/4 p1, 0x4

    .line 7
    new-array p1, p1, [Z

    .line 8
    .line 9
    iput-object p1, p0, LA1/o;->c:[Z

    .line 10
    .line 11
    new-instance p1, LA1/m;

    .line 12
    .line 13
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    const/16 v0, 0x80

    .line 17
    .line 18
    new-array v0, v0, [B

    .line 19
    .line 20
    iput-object v0, p1, LA1/m;->e:[B

    .line 21
    .line 22
    iput-object p1, p0, LA1/o;->d:LA1/m;

    .line 23
    .line 24
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    iput-wide v0, p0, LA1/o;->k:J

    .line 30
    .line 31
    new-instance p1, LA1/x;

    .line 32
    .line 33
    const/16 v0, 0xb2

    .line 34
    .line 35
    const/4 v1, 0x0

    .line 36
    invoke-direct {p1, v0, v1}, LA1/x;-><init>(II)V

    .line 37
    .line 38
    .line 39
    iput-object p1, p0, LA1/o;->e:LA1/x;

    .line 40
    .line 41
    new-instance p1, Lp0/E;

    .line 42
    .line 43
    invoke-direct {p1}, Lp0/E;-><init>()V

    .line 44
    .line 45
    .line 46
    iput-object p1, p0, LA1/o;->b:Lp0/E;

    .line 47
    .line 48
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget-object v0, p0, LA1/o;->c:[Z

    .line 2
    .line 3
    invoke-static {v0}, Lq0/p;->a([Z)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, LA1/o;->d:LA1/m;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    iput-boolean v1, v0, LA1/m;->a:Z

    .line 10
    .line 11
    iput v1, v0, LA1/m;->c:I

    .line 12
    .line 13
    iput v1, v0, LA1/m;->b:I

    .line 14
    .line 15
    iget-object v0, p0, LA1/o;->f:LA1/n;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iput-boolean v1, v0, LA1/n;->a:Z

    .line 20
    .line 21
    iput-boolean v1, v0, LA1/n;->b:Z

    .line 22
    .line 23
    iput-boolean v1, v0, LA1/n;->c:Z

    .line 24
    .line 25
    const/4 v1, -0x1

    .line 26
    iput v1, v0, LA1/n;->d:I

    .line 27
    .line 28
    :cond_0
    iget-object v0, p0, LA1/o;->e:LA1/x;

    .line 29
    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    invoke-virtual {v0}, LA1/x;->c()V

    .line 33
    .line 34
    .line 35
    :cond_1
    const-wide/16 v0, 0x0

    .line 36
    .line 37
    iput-wide v0, p0, LA1/o;->g:J

    .line 38
    .line 39
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    iput-wide v0, p0, LA1/o;->k:J

    .line 45
    .line 46
    return-void
.end method

.method public final b(Lp0/E;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, LA1/o;->f:LA1/n;

    .line 6
    .line 7
    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/H1;->j(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    iget-object v2, v0, LA1/o;->i:LW0/L;

    .line 11
    .line 12
    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/H1;->j(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    iget v2, v1, Lp0/E;->b:I

    .line 16
    .line 17
    iget v3, v1, Lp0/E;->c:I

    .line 18
    .line 19
    iget-object v4, v1, Lp0/E;->a:[B

    .line 20
    .line 21
    iget-wide v5, v0, LA1/o;->g:J

    .line 22
    .line 23
    invoke-virtual/range {p1 .. p1}, Lp0/E;->a()I

    .line 24
    .line 25
    .line 26
    move-result v7

    .line 27
    int-to-long v7, v7

    .line 28
    add-long/2addr v5, v7

    .line 29
    iput-wide v5, v0, LA1/o;->g:J

    .line 30
    .line 31
    iget-object v5, v0, LA1/o;->i:LW0/L;

    .line 32
    .line 33
    invoke-virtual/range {p1 .. p1}, Lp0/E;->a()I

    .line 34
    .line 35
    .line 36
    move-result v6

    .line 37
    invoke-interface {v5, v6, v1}, LW0/L;->e(ILp0/E;)V

    .line 38
    .line 39
    .line 40
    :goto_0
    iget-object v5, v0, LA1/o;->c:[Z

    .line 41
    .line 42
    invoke-static {v4, v2, v3, v5}, Lq0/p;->b([BII[Z)I

    .line 43
    .line 44
    .line 45
    move-result v5

    .line 46
    iget-object v6, v0, LA1/o;->d:LA1/m;

    .line 47
    .line 48
    iget-object v7, v0, LA1/o;->e:LA1/x;

    .line 49
    .line 50
    if-ne v5, v3, :cond_2

    .line 51
    .line 52
    iget-boolean v1, v0, LA1/o;->j:Z

    .line 53
    .line 54
    if-nez v1, :cond_0

    .line 55
    .line 56
    invoke-virtual {v6, v2, v4, v3}, LA1/m;->a(I[BI)V

    .line 57
    .line 58
    .line 59
    :cond_0
    iget-object v1, v0, LA1/o;->f:LA1/n;

    .line 60
    .line 61
    invoke-virtual {v1, v2, v4, v3}, LA1/n;->a(I[BI)V

    .line 62
    .line 63
    .line 64
    if-eqz v7, :cond_1

    .line 65
    .line 66
    invoke-virtual {v7, v2, v4, v3}, LA1/x;->a(I[BI)V

    .line 67
    .line 68
    .line 69
    :cond_1
    return-void

    .line 70
    :cond_2
    iget-object v8, v1, Lp0/E;->a:[B

    .line 71
    .line 72
    add-int/lit8 v9, v5, 0x3

    .line 73
    .line 74
    aget-byte v8, v8, v9

    .line 75
    .line 76
    and-int/lit16 v10, v8, 0xff

    .line 77
    .line 78
    sub-int v11, v5, v2

    .line 79
    .line 80
    iget-boolean v12, v0, LA1/o;->j:Z

    .line 81
    .line 82
    const/4 v13, 0x1

    .line 83
    if-nez v12, :cond_18

    .line 84
    .line 85
    if-lez v11, :cond_3

    .line 86
    .line 87
    invoke-virtual {v6, v2, v4, v5}, LA1/m;->a(I[BI)V

    .line 88
    .line 89
    .line 90
    :cond_3
    if-gez v11, :cond_4

    .line 91
    .line 92
    neg-int v12, v11

    .line 93
    goto :goto_1

    .line 94
    :cond_4
    const/4 v12, 0x0

    .line 95
    :goto_1
    iget v14, v6, LA1/m;->b:I

    .line 96
    .line 97
    if-eqz v14, :cond_16

    .line 98
    .line 99
    const-string v15, "H263Reader"

    .line 100
    .line 101
    move/from16 v16, v9

    .line 102
    .line 103
    const-string v9, "Unexpected start code value"

    .line 104
    .line 105
    if-eq v14, v13, :cond_14

    .line 106
    .line 107
    const/4 v13, 0x2

    .line 108
    if-eq v14, v13, :cond_12

    .line 109
    .line 110
    const/4 v13, 0x4

    .line 111
    move/from16 v17, v3

    .line 112
    .line 113
    const/4 v3, 0x3

    .line 114
    if-eq v14, v3, :cond_10

    .line 115
    .line 116
    if-ne v14, v13, :cond_f

    .line 117
    .line 118
    const/16 v3, 0xb3

    .line 119
    .line 120
    if-eq v10, v3, :cond_5

    .line 121
    .line 122
    const/16 v3, 0xb5

    .line 123
    .line 124
    if-ne v10, v3, :cond_17

    .line 125
    .line 126
    :cond_5
    iget v3, v6, LA1/m;->c:I

    .line 127
    .line 128
    sub-int/2addr v3, v12

    .line 129
    iput v3, v6, LA1/m;->c:I

    .line 130
    .line 131
    const/4 v3, 0x0

    .line 132
    iput-boolean v3, v6, LA1/m;->a:Z

    .line 133
    .line 134
    iget-object v3, v0, LA1/o;->i:LW0/L;

    .line 135
    .line 136
    iget v8, v6, LA1/m;->d:I

    .line 137
    .line 138
    iget-object v9, v0, LA1/o;->h:Ljava/lang/String;

    .line 139
    .line 140
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 141
    .line 142
    .line 143
    iget-object v12, v6, LA1/m;->e:[B

    .line 144
    .line 145
    iget v6, v6, LA1/m;->c:I

    .line 146
    .line 147
    invoke-static {v12, v6}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 148
    .line 149
    .line 150
    move-result-object v6

    .line 151
    new-instance v12, Lp0/D;

    .line 152
    .line 153
    const/4 v14, 0x0

    .line 154
    const/4 v13, 0x0

    .line 155
    invoke-direct {v12, v6, v13, v14}, Lp0/D;-><init>([BILjava/lang/Object;)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {v12, v8}, Lp0/D;->v(I)V

    .line 159
    .line 160
    .line 161
    const/4 v8, 0x4

    .line 162
    invoke-virtual {v12, v8}, Lp0/D;->v(I)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {v12}, Lp0/D;->t()V

    .line 166
    .line 167
    .line 168
    const/16 v13, 0x8

    .line 169
    .line 170
    invoke-virtual {v12, v13}, Lp0/D;->u(I)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v12}, Lp0/D;->h()Z

    .line 174
    .line 175
    .line 176
    move-result v14

    .line 177
    if-eqz v14, :cond_6

    .line 178
    .line 179
    invoke-virtual {v12, v8}, Lp0/D;->u(I)V

    .line 180
    .line 181
    .line 182
    const/4 v14, 0x3

    .line 183
    invoke-virtual {v12, v14}, Lp0/D;->u(I)V

    .line 184
    .line 185
    .line 186
    :cond_6
    invoke-virtual {v12, v8}, Lp0/D;->i(I)I

    .line 187
    .line 188
    .line 189
    move-result v8

    .line 190
    const-string v14, "Invalid aspect ratio"

    .line 191
    .line 192
    const/16 v1, 0xf

    .line 193
    .line 194
    if-ne v8, v1, :cond_8

    .line 195
    .line 196
    invoke-virtual {v12, v13}, Lp0/D;->i(I)I

    .line 197
    .line 198
    .line 199
    move-result v8

    .line 200
    invoke-virtual {v12, v13}, Lp0/D;->i(I)I

    .line 201
    .line 202
    .line 203
    move-result v13

    .line 204
    if-nez v13, :cond_7

    .line 205
    .line 206
    invoke-static {v15, v14}, Lp0/x;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    goto :goto_2

    .line 210
    :cond_7
    int-to-float v8, v8

    .line 211
    int-to-float v13, v13

    .line 212
    div-float v14, v8, v13

    .line 213
    .line 214
    goto :goto_3

    .line 215
    :cond_8
    const/4 v13, 0x7

    .line 216
    if-ge v8, v13, :cond_9

    .line 217
    .line 218
    sget-object v13, LA1/o;->l:[F

    .line 219
    .line 220
    aget v14, v13, v8

    .line 221
    .line 222
    goto :goto_3

    .line 223
    :cond_9
    invoke-static {v15, v14}, Lp0/x;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    :goto_2
    const/high16 v14, 0x3f800000    # 1.0f

    .line 227
    .line 228
    :goto_3
    invoke-virtual {v12}, Lp0/D;->h()Z

    .line 229
    .line 230
    .line 231
    move-result v8

    .line 232
    if-eqz v8, :cond_a

    .line 233
    .line 234
    const/4 v8, 0x2

    .line 235
    invoke-virtual {v12, v8}, Lp0/D;->u(I)V

    .line 236
    .line 237
    .line 238
    const/4 v8, 0x1

    .line 239
    invoke-virtual {v12, v8}, Lp0/D;->u(I)V

    .line 240
    .line 241
    .line 242
    invoke-virtual {v12}, Lp0/D;->h()Z

    .line 243
    .line 244
    .line 245
    move-result v8

    .line 246
    if-eqz v8, :cond_a

    .line 247
    .line 248
    invoke-virtual {v12, v1}, Lp0/D;->u(I)V

    .line 249
    .line 250
    .line 251
    invoke-virtual {v12}, Lp0/D;->t()V

    .line 252
    .line 253
    .line 254
    invoke-virtual {v12, v1}, Lp0/D;->u(I)V

    .line 255
    .line 256
    .line 257
    invoke-virtual {v12}, Lp0/D;->t()V

    .line 258
    .line 259
    .line 260
    invoke-virtual {v12, v1}, Lp0/D;->u(I)V

    .line 261
    .line 262
    .line 263
    invoke-virtual {v12}, Lp0/D;->t()V

    .line 264
    .line 265
    .line 266
    const/4 v8, 0x3

    .line 267
    invoke-virtual {v12, v8}, Lp0/D;->u(I)V

    .line 268
    .line 269
    .line 270
    const/16 v8, 0xb

    .line 271
    .line 272
    invoke-virtual {v12, v8}, Lp0/D;->u(I)V

    .line 273
    .line 274
    .line 275
    invoke-virtual {v12}, Lp0/D;->t()V

    .line 276
    .line 277
    .line 278
    invoke-virtual {v12, v1}, Lp0/D;->u(I)V

    .line 279
    .line 280
    .line 281
    invoke-virtual {v12}, Lp0/D;->t()V

    .line 282
    .line 283
    .line 284
    :cond_a
    const/4 v1, 0x2

    .line 285
    invoke-virtual {v12, v1}, Lp0/D;->i(I)I

    .line 286
    .line 287
    .line 288
    move-result v1

    .line 289
    if-eqz v1, :cond_b

    .line 290
    .line 291
    const-string v1, "Unhandled video object layer shape"

    .line 292
    .line 293
    invoke-static {v15, v1}, Lp0/x;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    .line 295
    .line 296
    :cond_b
    invoke-virtual {v12}, Lp0/D;->t()V

    .line 297
    .line 298
    .line 299
    const/16 v1, 0x10

    .line 300
    .line 301
    invoke-virtual {v12, v1}, Lp0/D;->i(I)I

    .line 302
    .line 303
    .line 304
    move-result v1

    .line 305
    invoke-virtual {v12}, Lp0/D;->t()V

    .line 306
    .line 307
    .line 308
    invoke-virtual {v12}, Lp0/D;->h()Z

    .line 309
    .line 310
    .line 311
    move-result v8

    .line 312
    if-eqz v8, :cond_e

    .line 313
    .line 314
    if-nez v1, :cond_c

    .line 315
    .line 316
    const-string v1, "Invalid vop_increment_time_resolution"

    .line 317
    .line 318
    invoke-static {v15, v1}, Lp0/x;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    .line 320
    .line 321
    goto :goto_5

    .line 322
    :cond_c
    add-int/lit8 v1, v1, -0x1

    .line 323
    .line 324
    const/4 v8, 0x0

    .line 325
    :goto_4
    if-lez v1, :cond_d

    .line 326
    .line 327
    add-int/lit8 v8, v8, 0x1

    .line 328
    .line 329
    shr-int/lit8 v1, v1, 0x1

    .line 330
    .line 331
    goto :goto_4

    .line 332
    :cond_d
    invoke-virtual {v12, v8}, Lp0/D;->u(I)V

    .line 333
    .line 334
    .line 335
    :cond_e
    :goto_5
    invoke-virtual {v12}, Lp0/D;->t()V

    .line 336
    .line 337
    .line 338
    const/16 v1, 0xd

    .line 339
    .line 340
    invoke-virtual {v12, v1}, Lp0/D;->i(I)I

    .line 341
    .line 342
    .line 343
    move-result v8

    .line 344
    invoke-virtual {v12}, Lp0/D;->t()V

    .line 345
    .line 346
    .line 347
    invoke-virtual {v12, v1}, Lp0/D;->i(I)I

    .line 348
    .line 349
    .line 350
    move-result v1

    .line 351
    invoke-virtual {v12}, Lp0/D;->t()V

    .line 352
    .line 353
    .line 354
    invoke-virtual {v12}, Lp0/D;->t()V

    .line 355
    .line 356
    .line 357
    new-instance v12, Lm0/s;

    .line 358
    .line 359
    invoke-direct {v12}, Lm0/s;-><init>()V

    .line 360
    .line 361
    .line 362
    iput-object v9, v12, Lm0/s;->a:Ljava/lang/String;

    .line 363
    .line 364
    const-string v9, "video/mp2t"

    .line 365
    .line 366
    invoke-static {v9}, Lm0/O;->p(Ljava/lang/String;)Ljava/lang/String;

    .line 367
    .line 368
    .line 369
    move-result-object v9

    .line 370
    iput-object v9, v12, Lm0/s;->m:Ljava/lang/String;

    .line 371
    .line 372
    const-string v9, "video/mp4v-es"

    .line 373
    .line 374
    invoke-static {v9}, Lm0/O;->p(Ljava/lang/String;)Ljava/lang/String;

    .line 375
    .line 376
    .line 377
    move-result-object v9

    .line 378
    iput-object v9, v12, Lm0/s;->n:Ljava/lang/String;

    .line 379
    .line 380
    iput v8, v12, Lm0/s;->u:I

    .line 381
    .line 382
    iput v1, v12, Lm0/s;->v:I

    .line 383
    .line 384
    iput v14, v12, Lm0/s;->A:F

    .line 385
    .line 386
    invoke-static {v6}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 387
    .line 388
    .line 389
    move-result-object v1

    .line 390
    iput-object v1, v12, Lm0/s;->q:Ljava/util/List;

    .line 391
    .line 392
    new-instance v1, Lm0/t;

    .line 393
    .line 394
    invoke-direct {v1, v12}, Lm0/t;-><init>(Lm0/s;)V

    .line 395
    .line 396
    .line 397
    invoke-interface {v3, v1}, LW0/L;->b(Lm0/t;)V

    .line 398
    .line 399
    .line 400
    const/4 v1, 0x1

    .line 401
    iput-boolean v1, v0, LA1/o;->j:Z

    .line 402
    .line 403
    goto :goto_7

    .line 404
    :cond_f
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 405
    .line 406
    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 407
    .line 408
    .line 409
    throw v1

    .line 410
    :cond_10
    and-int/lit16 v1, v8, 0xf0

    .line 411
    .line 412
    const/16 v3, 0x20

    .line 413
    .line 414
    if-eq v1, v3, :cond_11

    .line 415
    .line 416
    invoke-static {v15, v9}, Lp0/x;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    .line 418
    .line 419
    const/4 v1, 0x0

    .line 420
    iput-boolean v1, v6, LA1/m;->a:Z

    .line 421
    .line 422
    iput v1, v6, LA1/m;->c:I

    .line 423
    .line 424
    iput v1, v6, LA1/m;->b:I

    .line 425
    .line 426
    goto :goto_6

    .line 427
    :cond_11
    const/4 v1, 0x0

    .line 428
    iget v3, v6, LA1/m;->c:I

    .line 429
    .line 430
    iput v3, v6, LA1/m;->d:I

    .line 431
    .line 432
    const/4 v3, 0x4

    .line 433
    iput v3, v6, LA1/m;->b:I

    .line 434
    .line 435
    goto :goto_6

    .line 436
    :cond_12
    move/from16 v17, v3

    .line 437
    .line 438
    const/4 v1, 0x0

    .line 439
    const/16 v3, 0x1f

    .line 440
    .line 441
    if-le v10, v3, :cond_13

    .line 442
    .line 443
    invoke-static {v15, v9}, Lp0/x;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    .line 445
    .line 446
    iput-boolean v1, v6, LA1/m;->a:Z

    .line 447
    .line 448
    iput v1, v6, LA1/m;->c:I

    .line 449
    .line 450
    iput v1, v6, LA1/m;->b:I

    .line 451
    .line 452
    goto :goto_6

    .line 453
    :cond_13
    const/4 v3, 0x3

    .line 454
    iput v3, v6, LA1/m;->b:I

    .line 455
    .line 456
    goto :goto_6

    .line 457
    :cond_14
    move/from16 v17, v3

    .line 458
    .line 459
    const/4 v1, 0x0

    .line 460
    const/16 v3, 0xb5

    .line 461
    .line 462
    if-eq v10, v3, :cond_15

    .line 463
    .line 464
    invoke-static {v15, v9}, Lp0/x;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    .line 466
    .line 467
    iput-boolean v1, v6, LA1/m;->a:Z

    .line 468
    .line 469
    iput v1, v6, LA1/m;->c:I

    .line 470
    .line 471
    iput v1, v6, LA1/m;->b:I

    .line 472
    .line 473
    goto :goto_6

    .line 474
    :cond_15
    const/4 v1, 0x2

    .line 475
    iput v1, v6, LA1/m;->b:I

    .line 476
    .line 477
    goto :goto_6

    .line 478
    :cond_16
    move/from16 v17, v3

    .line 479
    .line 480
    move/from16 v16, v9

    .line 481
    .line 482
    const/16 v1, 0xb0

    .line 483
    .line 484
    if-ne v10, v1, :cond_17

    .line 485
    .line 486
    const/4 v1, 0x1

    .line 487
    iput v1, v6, LA1/m;->b:I

    .line 488
    .line 489
    iput-boolean v1, v6, LA1/m;->a:Z

    .line 490
    .line 491
    :cond_17
    :goto_6
    sget-object v1, LA1/m;->f:[B

    .line 492
    .line 493
    const/4 v3, 0x0

    .line 494
    const/4 v8, 0x3

    .line 495
    invoke-virtual {v6, v3, v1, v8}, LA1/m;->a(I[BI)V

    .line 496
    .line 497
    .line 498
    goto :goto_7

    .line 499
    :cond_18
    move/from16 v17, v3

    .line 500
    .line 501
    move/from16 v16, v9

    .line 502
    .line 503
    :goto_7
    iget-object v1, v0, LA1/o;->f:LA1/n;

    .line 504
    .line 505
    invoke-virtual {v1, v2, v4, v5}, LA1/n;->a(I[BI)V

    .line 506
    .line 507
    .line 508
    if-eqz v7, :cond_1b

    .line 509
    .line 510
    if-lez v11, :cond_19

    .line 511
    .line 512
    invoke-virtual {v7, v2, v4, v5}, LA1/x;->a(I[BI)V

    .line 513
    .line 514
    .line 515
    const/4 v1, 0x0

    .line 516
    goto :goto_8

    .line 517
    :cond_19
    neg-int v1, v11

    .line 518
    :goto_8
    invoke-virtual {v7, v1}, LA1/x;->b(I)Z

    .line 519
    .line 520
    .line 521
    move-result v1

    .line 522
    if-eqz v1, :cond_1a

    .line 523
    .line 524
    iget-object v1, v7, LA1/x;->d:[B

    .line 525
    .line 526
    iget v2, v7, LA1/x;->e:I

    .line 527
    .line 528
    invoke-static {v2, v1}, Lq0/p;->m(I[B)I

    .line 529
    .line 530
    .line 531
    move-result v1

    .line 532
    sget-object v2, Lp0/M;->a:Ljava/lang/String;

    .line 533
    .line 534
    iget-object v2, v7, LA1/x;->d:[B

    .line 535
    .line 536
    iget-object v3, v0, LA1/o;->b:Lp0/E;

    .line 537
    .line 538
    invoke-virtual {v3, v1, v2}, Lp0/E;->J(I[B)V

    .line 539
    .line 540
    .line 541
    iget-wide v1, v0, LA1/o;->k:J

    .line 542
    .line 543
    iget-object v6, v0, LA1/o;->a:LA1/K;

    .line 544
    .line 545
    invoke-virtual {v6, v1, v2, v3}, LA1/K;->a(JLp0/E;)V

    .line 546
    .line 547
    .line 548
    :cond_1a
    const/16 v1, 0xb2

    .line 549
    .line 550
    if-ne v10, v1, :cond_1b

    .line 551
    .line 552
    move-object/from16 v1, p1

    .line 553
    .line 554
    iget-object v2, v1, Lp0/E;->a:[B

    .line 555
    .line 556
    add-int/lit8 v3, v5, 0x2

    .line 557
    .line 558
    aget-byte v2, v2, v3

    .line 559
    .line 560
    const/4 v3, 0x1

    .line 561
    if-ne v2, v3, :cond_1c

    .line 562
    .line 563
    invoke-virtual {v7, v10}, LA1/x;->d(I)V

    .line 564
    .line 565
    .line 566
    goto :goto_9

    .line 567
    :cond_1b
    move-object/from16 v1, p1

    .line 568
    .line 569
    const/4 v3, 0x1

    .line 570
    :cond_1c
    :goto_9
    sub-int v2, v17, v5

    .line 571
    .line 572
    iget-wide v5, v0, LA1/o;->g:J

    .line 573
    .line 574
    int-to-long v7, v2

    .line 575
    sub-long/2addr v5, v7

    .line 576
    iget-object v7, v0, LA1/o;->f:LA1/n;

    .line 577
    .line 578
    iget-boolean v8, v0, LA1/o;->j:Z

    .line 579
    .line 580
    invoke-virtual {v7, v2, v5, v6, v8}, LA1/n;->b(IJZ)V

    .line 581
    .line 582
    .line 583
    iget-object v2, v0, LA1/o;->f:LA1/n;

    .line 584
    .line 585
    iget-wide v5, v0, LA1/o;->k:J

    .line 586
    .line 587
    iput v10, v2, LA1/n;->d:I

    .line 588
    .line 589
    const/4 v7, 0x0

    .line 590
    iput-boolean v7, v2, LA1/n;->c:Z

    .line 591
    .line 592
    const/16 v7, 0xb6

    .line 593
    .line 594
    if-eq v10, v7, :cond_1e

    .line 595
    .line 596
    const/16 v8, 0xb3

    .line 597
    .line 598
    if-ne v10, v8, :cond_1d

    .line 599
    .line 600
    goto :goto_a

    .line 601
    :cond_1d
    const/4 v8, 0x0

    .line 602
    goto :goto_b

    .line 603
    :cond_1e
    :goto_a
    const/4 v8, 0x1

    .line 604
    :goto_b
    iput-boolean v8, v2, LA1/n;->a:Z

    .line 605
    .line 606
    if-ne v10, v7, :cond_1f

    .line 607
    .line 608
    const/4 v13, 0x1

    .line 609
    goto :goto_c

    .line 610
    :cond_1f
    const/4 v13, 0x0

    .line 611
    :goto_c
    iput-boolean v13, v2, LA1/n;->b:Z

    .line 612
    .line 613
    const/4 v3, 0x0

    .line 614
    iput v3, v2, LA1/n;->e:I

    .line 615
    .line 616
    iput-wide v5, v2, LA1/n;->g:J

    .line 617
    .line 618
    move/from16 v2, v16

    .line 619
    .line 620
    move/from16 v3, v17

    .line 621
    .line 622
    goto/16 :goto_0
.end method

.method public final c(LW0/u;LA1/I;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, LA1/I;->a()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, LA1/I;->b()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p2, LA1/I;->e:Ljava/lang/String;

    .line 8
    .line 9
    iput-object v0, p0, LA1/o;->h:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {p2}, LA1/I;->b()V

    .line 12
    .line 13
    .line 14
    iget v0, p2, LA1/I;->d:I

    .line 15
    .line 16
    const/4 v1, 0x2

    .line 17
    invoke-interface {p1, v0, v1}, LW0/u;->t(II)LW0/L;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iput-object v0, p0, LA1/o;->i:LW0/L;

    .line 22
    .line 23
    new-instance v1, LA1/n;

    .line 24
    .line 25
    invoke-direct {v1, v0}, LA1/n;-><init>(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    iput-object v1, p0, LA1/o;->f:LA1/n;

    .line 29
    .line 30
    iget-object v0, p0, LA1/o;->a:LA1/K;

    .line 31
    .line 32
    if-eqz v0, :cond_0

    .line 33
    .line 34
    invoke-virtual {v0, p1, p2}, LA1/K;->b(LW0/u;LA1/I;)V

    .line 35
    .line 36
    .line 37
    :cond_0
    return-void
.end method

.method public final d(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, LA1/o;->f:LA1/n;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/H1;->j(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    iget-object p1, p0, LA1/o;->f:LA1/n;

    .line 9
    .line 10
    iget-wide v0, p0, LA1/o;->g:J

    .line 11
    .line 12
    iget-boolean v2, p0, LA1/o;->j:Z

    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    invoke-virtual {p1, v3, v0, v1, v2}, LA1/n;->b(IJZ)V

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, LA1/o;->f:LA1/n;

    .line 19
    .line 20
    iput-boolean v3, p1, LA1/n;->a:Z

    .line 21
    .line 22
    iput-boolean v3, p1, LA1/n;->b:Z

    .line 23
    .line 24
    iput-boolean v3, p1, LA1/n;->c:Z

    .line 25
    .line 26
    const/4 v0, -0x1

    .line 27
    iput v0, p1, LA1/n;->d:I

    .line 28
    .line 29
    :cond_0
    return-void
.end method

.method public final e(IJ)V
    .locals 0

    .line 1
    iput-wide p2, p0, LA1/o;->k:J

    .line 2
    .line 3
    return-void
.end method
