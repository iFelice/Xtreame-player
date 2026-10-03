.class public final LA1/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LA1/j;


# static fields
.field public static final r:[D


# instance fields
.field public a:Ljava/lang/String;

.field public b:LW0/L;

.field public final c:LA1/K;

.field public final d:Ljava/lang/String;

.field public final e:Lp0/E;

.field public final f:LA1/x;

.field public final g:[Z

.field public final h:LA1/k;

.field public i:J

.field public j:Z

.field public k:Z

.field public l:J

.field public m:J

.field public n:J

.field public o:J

.field public p:Z

.field public q:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    new-array v0, v0, [D

    .line 4
    .line 5
    fill-array-data v0, :array_0

    .line 6
    .line 7
    .line 8
    sput-object v0, LA1/l;->r:[D

    .line 9
    .line 10
    return-void

    .line 11
    :array_0
    .array-data 8
        0x4037f9dcb5112287L    # 23.976023976023978
        0x4038000000000000L    # 24.0
        0x4039000000000000L    # 25.0
        0x403df853e2556b28L    # 29.97002997002997
        0x403e000000000000L    # 30.0
        0x4049000000000000L    # 50.0
        0x404df853e2556b28L    # 59.94005994005994
        0x404e000000000000L    # 60.0
    .end array-data
.end method

.method public constructor <init>(LA1/K;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LA1/l;->c:LA1/K;

    .line 5
    .line 6
    iput-object p2, p0, LA1/l;->d:Ljava/lang/String;

    .line 7
    .line 8
    const/4 p2, 0x4

    .line 9
    new-array p2, p2, [Z

    .line 10
    .line 11
    iput-object p2, p0, LA1/l;->g:[Z

    .line 12
    .line 13
    new-instance p2, LA1/k;

    .line 14
    .line 15
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 16
    .line 17
    .line 18
    const/16 v0, 0x80

    .line 19
    .line 20
    new-array v0, v0, [B

    .line 21
    .line 22
    iput-object v0, p2, LA1/k;->d:[B

    .line 23
    .line 24
    iput-object p2, p0, LA1/l;->h:LA1/k;

    .line 25
    .line 26
    if-eqz p1, :cond_0

    .line 27
    .line 28
    new-instance p1, LA1/x;

    .line 29
    .line 30
    const/16 p2, 0xb2

    .line 31
    .line 32
    const/4 v0, 0x0

    .line 33
    invoke-direct {p1, p2, v0}, LA1/x;-><init>(II)V

    .line 34
    .line 35
    .line 36
    iput-object p1, p0, LA1/l;->f:LA1/x;

    .line 37
    .line 38
    new-instance p1, Lp0/E;

    .line 39
    .line 40
    invoke-direct {p1}, Lp0/E;-><init>()V

    .line 41
    .line 42
    .line 43
    iput-object p1, p0, LA1/l;->e:Lp0/E;

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    const/4 p1, 0x0

    .line 47
    iput-object p1, p0, LA1/l;->f:LA1/x;

    .line 48
    .line 49
    iput-object p1, p0, LA1/l;->e:Lp0/E;

    .line 50
    .line 51
    :goto_0
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    iput-wide p1, p0, LA1/l;->m:J

    .line 57
    .line 58
    iput-wide p1, p0, LA1/l;->o:J

    .line 59
    .line 60
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 1
    iget-object v0, p0, LA1/l;->g:[Z

    .line 2
    .line 3
    invoke-static {v0}, Lq0/p;->a([Z)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, LA1/l;->h:LA1/k;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    iput-boolean v1, v0, LA1/k;->a:Z

    .line 10
    .line 11
    iput v1, v0, LA1/k;->b:I

    .line 12
    .line 13
    iput v1, v0, LA1/k;->c:I

    .line 14
    .line 15
    iget-object v0, p0, LA1/l;->f:LA1/x;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {v0}, LA1/x;->c()V

    .line 20
    .line 21
    .line 22
    :cond_0
    const-wide/16 v2, 0x0

    .line 23
    .line 24
    iput-wide v2, p0, LA1/l;->i:J

    .line 25
    .line 26
    iput-boolean v1, p0, LA1/l;->j:Z

    .line 27
    .line 28
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    iput-wide v0, p0, LA1/l;->m:J

    .line 34
    .line 35
    iput-wide v0, p0, LA1/l;->o:J

    .line 36
    .line 37
    return-void
.end method

.method public final b(Lp0/E;)V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, LA1/l;->b:LW0/L;

    .line 6
    .line 7
    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/H1;->j(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    iget v2, v1, Lp0/E;->b:I

    .line 11
    .line 12
    iget v3, v1, Lp0/E;->c:I

    .line 13
    .line 14
    iget-object v4, v1, Lp0/E;->a:[B

    .line 15
    .line 16
    iget-wide v5, v0, LA1/l;->i:J

    .line 17
    .line 18
    invoke-virtual/range {p1 .. p1}, Lp0/E;->a()I

    .line 19
    .line 20
    .line 21
    move-result v7

    .line 22
    int-to-long v7, v7

    .line 23
    add-long/2addr v5, v7

    .line 24
    iput-wide v5, v0, LA1/l;->i:J

    .line 25
    .line 26
    iget-object v5, v0, LA1/l;->b:LW0/L;

    .line 27
    .line 28
    invoke-virtual/range {p1 .. p1}, Lp0/E;->a()I

    .line 29
    .line 30
    .line 31
    move-result v6

    .line 32
    invoke-interface {v5, v6, v1}, LW0/L;->e(ILp0/E;)V

    .line 33
    .line 34
    .line 35
    :goto_0
    iget-object v5, v0, LA1/l;->g:[Z

    .line 36
    .line 37
    invoke-static {v4, v2, v3, v5}, Lq0/p;->b([BII[Z)I

    .line 38
    .line 39
    .line 40
    move-result v5

    .line 41
    iget-object v6, v0, LA1/l;->h:LA1/k;

    .line 42
    .line 43
    iget-object v7, v0, LA1/l;->f:LA1/x;

    .line 44
    .line 45
    if-ne v5, v3, :cond_2

    .line 46
    .line 47
    iget-boolean v1, v0, LA1/l;->k:Z

    .line 48
    .line 49
    if-nez v1, :cond_0

    .line 50
    .line 51
    invoke-virtual {v6, v2, v4, v3}, LA1/k;->a(I[BI)V

    .line 52
    .line 53
    .line 54
    :cond_0
    if-eqz v7, :cond_1

    .line 55
    .line 56
    invoke-virtual {v7, v2, v4, v3}, LA1/x;->a(I[BI)V

    .line 57
    .line 58
    .line 59
    :cond_1
    return-void

    .line 60
    :cond_2
    iget-object v8, v1, Lp0/E;->a:[B

    .line 61
    .line 62
    add-int/lit8 v9, v5, 0x3

    .line 63
    .line 64
    aget-byte v8, v8, v9

    .line 65
    .line 66
    and-int/lit16 v8, v8, 0xff

    .line 67
    .line 68
    sub-int v10, v5, v2

    .line 69
    .line 70
    iget-boolean v11, v0, LA1/l;->k:Z

    .line 71
    .line 72
    const/4 v14, 0x0

    .line 73
    if-nez v11, :cond_d

    .line 74
    .line 75
    if-lez v10, :cond_3

    .line 76
    .line 77
    invoke-virtual {v6, v2, v4, v5}, LA1/k;->a(I[BI)V

    .line 78
    .line 79
    .line 80
    :cond_3
    if-gez v10, :cond_4

    .line 81
    .line 82
    neg-int v11, v10

    .line 83
    goto :goto_1

    .line 84
    :cond_4
    const/4 v11, 0x0

    .line 85
    :goto_1
    iget-boolean v15, v6, LA1/k;->a:Z

    .line 86
    .line 87
    if-eqz v15, :cond_b

    .line 88
    .line 89
    iget v15, v6, LA1/k;->b:I

    .line 90
    .line 91
    sub-int/2addr v15, v11

    .line 92
    iput v15, v6, LA1/k;->b:I

    .line 93
    .line 94
    iget v11, v6, LA1/k;->c:I

    .line 95
    .line 96
    if-nez v11, :cond_5

    .line 97
    .line 98
    const/16 v11, 0xb5

    .line 99
    .line 100
    if-ne v8, v11, :cond_5

    .line 101
    .line 102
    iput v15, v6, LA1/k;->c:I

    .line 103
    .line 104
    move/from16 v18, v3

    .line 105
    .line 106
    move/from16 v19, v9

    .line 107
    .line 108
    move v9, v2

    .line 109
    goto/16 :goto_6

    .line 110
    .line 111
    :cond_5
    iput-boolean v14, v6, LA1/k;->a:Z

    .line 112
    .line 113
    iget-object v11, v0, LA1/l;->a:Ljava/lang/String;

    .line 114
    .line 115
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 116
    .line 117
    .line 118
    iget-object v15, v6, LA1/k;->d:[B

    .line 119
    .line 120
    iget v14, v6, LA1/k;->b:I

    .line 121
    .line 122
    invoke-static {v15, v14}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 123
    .line 124
    .line 125
    move-result-object v14

    .line 126
    const/4 v15, 0x4

    .line 127
    aget-byte v12, v14, v15

    .line 128
    .line 129
    and-int/lit16 v12, v12, 0xff

    .line 130
    .line 131
    const/16 v16, 0x5

    .line 132
    .line 133
    aget-byte v13, v14, v16

    .line 134
    .line 135
    and-int/lit16 v15, v13, 0xff

    .line 136
    .line 137
    const/16 v18, 0x6

    .line 138
    .line 139
    move/from16 v19, v9

    .line 140
    .line 141
    aget-byte v9, v14, v18

    .line 142
    .line 143
    and-int/lit16 v9, v9, 0xff

    .line 144
    .line 145
    move/from16 v18, v3

    .line 146
    .line 147
    const/4 v3, 0x4

    .line 148
    shl-int/2addr v12, v3

    .line 149
    shr-int/2addr v15, v3

    .line 150
    or-int/2addr v12, v15

    .line 151
    and-int/lit8 v13, v13, 0xf

    .line 152
    .line 153
    const/16 v15, 0x8

    .line 154
    .line 155
    shl-int/2addr v13, v15

    .line 156
    or-int/2addr v9, v13

    .line 157
    const/4 v13, 0x7

    .line 158
    aget-byte v15, v14, v13

    .line 159
    .line 160
    and-int/lit16 v15, v15, 0xf0

    .line 161
    .line 162
    shr-int/2addr v15, v3

    .line 163
    const/4 v13, 0x2

    .line 164
    if-eq v15, v13, :cond_8

    .line 165
    .line 166
    const/4 v13, 0x3

    .line 167
    if-eq v15, v13, :cond_7

    .line 168
    .line 169
    if-eq v15, v3, :cond_6

    .line 170
    .line 171
    const/high16 v3, 0x3f800000    # 1.0f

    .line 172
    .line 173
    goto :goto_3

    .line 174
    :cond_6
    mul-int/lit8 v3, v9, 0x79

    .line 175
    .line 176
    int-to-float v3, v3

    .line 177
    mul-int/lit8 v13, v12, 0x64

    .line 178
    .line 179
    :goto_2
    int-to-float v13, v13

    .line 180
    div-float/2addr v3, v13

    .line 181
    goto :goto_3

    .line 182
    :cond_7
    mul-int/lit8 v3, v9, 0x10

    .line 183
    .line 184
    int-to-float v3, v3

    .line 185
    mul-int/lit8 v13, v12, 0x9

    .line 186
    .line 187
    goto :goto_2

    .line 188
    :cond_8
    mul-int/lit8 v3, v9, 0x4

    .line 189
    .line 190
    int-to-float v3, v3

    .line 191
    mul-int/lit8 v13, v12, 0x3

    .line 192
    .line 193
    goto :goto_2

    .line 194
    :goto_3
    new-instance v13, Lm0/s;

    .line 195
    .line 196
    invoke-direct {v13}, Lm0/s;-><init>()V

    .line 197
    .line 198
    .line 199
    iput-object v11, v13, Lm0/s;->a:Ljava/lang/String;

    .line 200
    .line 201
    iget-object v11, v0, LA1/l;->d:Ljava/lang/String;

    .line 202
    .line 203
    invoke-static {v11}, Lm0/O;->p(Ljava/lang/String;)Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v11

    .line 207
    iput-object v11, v13, Lm0/s;->m:Ljava/lang/String;

    .line 208
    .line 209
    const-string v11, "video/mpeg2"

    .line 210
    .line 211
    invoke-static {v11}, Lm0/O;->p(Ljava/lang/String;)Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v11

    .line 215
    iput-object v11, v13, Lm0/s;->n:Ljava/lang/String;

    .line 216
    .line 217
    iput v12, v13, Lm0/s;->u:I

    .line 218
    .line 219
    iput v9, v13, Lm0/s;->v:I

    .line 220
    .line 221
    iput v3, v13, Lm0/s;->A:F

    .line 222
    .line 223
    invoke-static {v14}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 224
    .line 225
    .line 226
    move-result-object v3

    .line 227
    iput-object v3, v13, Lm0/s;->q:Ljava/util/List;

    .line 228
    .line 229
    new-instance v3, Lm0/t;

    .line 230
    .line 231
    invoke-direct {v3, v13}, Lm0/t;-><init>(Lm0/s;)V

    .line 232
    .line 233
    .line 234
    const/4 v9, 0x7

    .line 235
    aget-byte v9, v14, v9

    .line 236
    .line 237
    and-int/lit8 v9, v9, 0xf

    .line 238
    .line 239
    const/4 v11, 0x1

    .line 240
    sub-int/2addr v9, v11

    .line 241
    if-ltz v9, :cond_a

    .line 242
    .line 243
    const/16 v11, 0x8

    .line 244
    .line 245
    if-ge v9, v11, :cond_a

    .line 246
    .line 247
    sget-object v11, LA1/l;->r:[D

    .line 248
    .line 249
    aget-wide v12, v11, v9

    .line 250
    .line 251
    iget v6, v6, LA1/k;->c:I

    .line 252
    .line 253
    add-int/lit8 v6, v6, 0x9

    .line 254
    .line 255
    aget-byte v6, v14, v6

    .line 256
    .line 257
    and-int/lit8 v9, v6, 0x60

    .line 258
    .line 259
    shr-int/lit8 v9, v9, 0x5

    .line 260
    .line 261
    and-int/lit8 v6, v6, 0x1f

    .line 262
    .line 263
    if-eq v9, v6, :cond_9

    .line 264
    .line 265
    int-to-double v14, v9

    .line 266
    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    .line 267
    .line 268
    add-double v14, v14, v16

    .line 269
    .line 270
    add-int/lit8 v6, v6, 0x1

    .line 271
    .line 272
    move v9, v2

    .line 273
    int-to-double v1, v6

    .line 274
    div-double/2addr v14, v1

    .line 275
    mul-double v12, v12, v14

    .line 276
    .line 277
    goto :goto_4

    .line 278
    :cond_9
    move v9, v2

    .line 279
    :goto_4
    const-wide v1, 0x412e848000000000L    # 1000000.0

    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    div-double/2addr v1, v12

    .line 285
    double-to-long v1, v1

    .line 286
    goto :goto_5

    .line 287
    :cond_a
    move v9, v2

    .line 288
    const-wide/16 v1, 0x0

    .line 289
    .line 290
    :goto_5
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 291
    .line 292
    .line 293
    move-result-object v1

    .line 294
    invoke-static {v3, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 295
    .line 296
    .line 297
    move-result-object v1

    .line 298
    iget-object v2, v0, LA1/l;->b:LW0/L;

    .line 299
    .line 300
    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 301
    .line 302
    check-cast v3, Lm0/t;

    .line 303
    .line 304
    invoke-interface {v2, v3}, LW0/L;->b(Lm0/t;)V

    .line 305
    .line 306
    .line 307
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 308
    .line 309
    check-cast v1, Ljava/lang/Long;

    .line 310
    .line 311
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 312
    .line 313
    .line 314
    move-result-wide v1

    .line 315
    iput-wide v1, v0, LA1/l;->l:J

    .line 316
    .line 317
    const/4 v1, 0x1

    .line 318
    iput-boolean v1, v0, LA1/l;->k:Z

    .line 319
    .line 320
    goto :goto_7

    .line 321
    :cond_b
    move/from16 v18, v3

    .line 322
    .line 323
    move/from16 v19, v9

    .line 324
    .line 325
    const/4 v1, 0x1

    .line 326
    move v9, v2

    .line 327
    const/16 v2, 0xb3

    .line 328
    .line 329
    if-ne v8, v2, :cond_c

    .line 330
    .line 331
    iput-boolean v1, v6, LA1/k;->a:Z

    .line 332
    .line 333
    :cond_c
    :goto_6
    sget-object v1, LA1/k;->e:[B

    .line 334
    .line 335
    const/4 v2, 0x0

    .line 336
    const/4 v3, 0x3

    .line 337
    invoke-virtual {v6, v2, v1, v3}, LA1/k;->a(I[BI)V

    .line 338
    .line 339
    .line 340
    goto :goto_7

    .line 341
    :cond_d
    move/from16 v18, v3

    .line 342
    .line 343
    move/from16 v19, v9

    .line 344
    .line 345
    move v9, v2

    .line 346
    :goto_7
    if-eqz v7, :cond_10

    .line 347
    .line 348
    if-lez v10, :cond_e

    .line 349
    .line 350
    invoke-virtual {v7, v9, v4, v5}, LA1/x;->a(I[BI)V

    .line 351
    .line 352
    .line 353
    const/4 v2, 0x0

    .line 354
    goto :goto_8

    .line 355
    :cond_e
    neg-int v2, v10

    .line 356
    :goto_8
    invoke-virtual {v7, v2}, LA1/x;->b(I)Z

    .line 357
    .line 358
    .line 359
    move-result v1

    .line 360
    if-eqz v1, :cond_f

    .line 361
    .line 362
    iget-object v1, v7, LA1/x;->d:[B

    .line 363
    .line 364
    iget v2, v7, LA1/x;->e:I

    .line 365
    .line 366
    invoke-static {v2, v1}, Lq0/p;->m(I[B)I

    .line 367
    .line 368
    .line 369
    move-result v1

    .line 370
    sget-object v2, Lp0/M;->a:Ljava/lang/String;

    .line 371
    .line 372
    iget-object v2, v7, LA1/x;->d:[B

    .line 373
    .line 374
    iget-object v3, v0, LA1/l;->e:Lp0/E;

    .line 375
    .line 376
    invoke-virtual {v3, v1, v2}, Lp0/E;->J(I[B)V

    .line 377
    .line 378
    .line 379
    iget-wide v1, v0, LA1/l;->o:J

    .line 380
    .line 381
    iget-object v6, v0, LA1/l;->c:LA1/K;

    .line 382
    .line 383
    invoke-virtual {v6, v1, v2, v3}, LA1/K;->a(JLp0/E;)V

    .line 384
    .line 385
    .line 386
    :cond_f
    const/16 v1, 0xb2

    .line 387
    .line 388
    if-ne v8, v1, :cond_10

    .line 389
    .line 390
    move-object/from16 v1, p1

    .line 391
    .line 392
    iget-object v2, v1, Lp0/E;->a:[B

    .line 393
    .line 394
    add-int/lit8 v3, v5, 0x2

    .line 395
    .line 396
    aget-byte v2, v2, v3

    .line 397
    .line 398
    const/4 v3, 0x1

    .line 399
    if-ne v2, v3, :cond_11

    .line 400
    .line 401
    invoke-virtual {v7, v8}, LA1/x;->d(I)V

    .line 402
    .line 403
    .line 404
    goto :goto_9

    .line 405
    :cond_10
    move-object/from16 v1, p1

    .line 406
    .line 407
    const/4 v3, 0x1

    .line 408
    :cond_11
    :goto_9
    if-eqz v8, :cond_13

    .line 409
    .line 410
    const/16 v2, 0xb3

    .line 411
    .line 412
    if-ne v8, v2, :cond_12

    .line 413
    .line 414
    goto :goto_a

    .line 415
    :cond_12
    const/16 v2, 0xb8

    .line 416
    .line 417
    if-ne v8, v2, :cond_1a

    .line 418
    .line 419
    iput-boolean v3, v0, LA1/l;->p:Z

    .line 420
    .line 421
    goto :goto_f

    .line 422
    :cond_13
    :goto_a
    sub-int v3, v18, v5

    .line 423
    .line 424
    iget-boolean v2, v0, LA1/l;->q:Z

    .line 425
    .line 426
    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    .line 427
    .line 428
    .line 429
    .line 430
    .line 431
    if-eqz v2, :cond_14

    .line 432
    .line 433
    iget-boolean v2, v0, LA1/l;->k:Z

    .line 434
    .line 435
    if-eqz v2, :cond_14

    .line 436
    .line 437
    iget-wide v10, v0, LA1/l;->o:J

    .line 438
    .line 439
    cmp-long v2, v10, v5

    .line 440
    .line 441
    if-eqz v2, :cond_14

    .line 442
    .line 443
    iget-boolean v12, v0, LA1/l;->p:Z

    .line 444
    .line 445
    iget-wide v13, v0, LA1/l;->i:J

    .line 446
    .line 447
    iget-wide v5, v0, LA1/l;->n:J

    .line 448
    .line 449
    sub-long/2addr v13, v5

    .line 450
    long-to-int v2, v13

    .line 451
    sub-int v13, v2, v3

    .line 452
    .line 453
    iget-object v9, v0, LA1/l;->b:LW0/L;

    .line 454
    .line 455
    const/4 v15, 0x0

    .line 456
    move v14, v3

    .line 457
    invoke-interface/range {v9 .. v15}, LW0/L;->d(JIIILW0/K;)V

    .line 458
    .line 459
    .line 460
    :cond_14
    iget-boolean v2, v0, LA1/l;->j:Z

    .line 461
    .line 462
    if-eqz v2, :cond_16

    .line 463
    .line 464
    iget-boolean v2, v0, LA1/l;->q:Z

    .line 465
    .line 466
    if-eqz v2, :cond_15

    .line 467
    .line 468
    goto :goto_b

    .line 469
    :cond_15
    const/4 v2, 0x0

    .line 470
    const/4 v3, 0x1

    .line 471
    goto :goto_d

    .line 472
    :cond_16
    :goto_b
    iget-wide v5, v0, LA1/l;->i:J

    .line 473
    .line 474
    int-to-long v2, v3

    .line 475
    sub-long/2addr v5, v2

    .line 476
    iput-wide v5, v0, LA1/l;->n:J

    .line 477
    .line 478
    iget-wide v2, v0, LA1/l;->m:J

    .line 479
    .line 480
    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    .line 481
    .line 482
    .line 483
    .line 484
    .line 485
    cmp-long v7, v2, v5

    .line 486
    .line 487
    if-eqz v7, :cond_17

    .line 488
    .line 489
    goto :goto_c

    .line 490
    :cond_17
    iget-wide v2, v0, LA1/l;->o:J

    .line 491
    .line 492
    cmp-long v7, v2, v5

    .line 493
    .line 494
    if-eqz v7, :cond_18

    .line 495
    .line 496
    iget-wide v9, v0, LA1/l;->l:J

    .line 497
    .line 498
    add-long/2addr v2, v9

    .line 499
    goto :goto_c

    .line 500
    :cond_18
    move-wide v2, v5

    .line 501
    :goto_c
    iput-wide v2, v0, LA1/l;->o:J

    .line 502
    .line 503
    const/4 v2, 0x0

    .line 504
    iput-boolean v2, v0, LA1/l;->p:Z

    .line 505
    .line 506
    iput-wide v5, v0, LA1/l;->m:J

    .line 507
    .line 508
    const/4 v3, 0x1

    .line 509
    iput-boolean v3, v0, LA1/l;->j:Z

    .line 510
    .line 511
    :goto_d
    if-nez v8, :cond_19

    .line 512
    .line 513
    const/4 v12, 0x1

    .line 514
    goto :goto_e

    .line 515
    :cond_19
    const/4 v12, 0x0

    .line 516
    :goto_e
    iput-boolean v12, v0, LA1/l;->q:Z

    .line 517
    .line 518
    :cond_1a
    :goto_f
    move/from16 v3, v18

    .line 519
    .line 520
    move/from16 v2, v19

    .line 521
    .line 522
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
    iput-object v0, p0, LA1/l;->a:Ljava/lang/String;

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
    iput-object v0, p0, LA1/l;->b:LW0/L;

    .line 22
    .line 23
    iget-object v0, p0, LA1/l;->c:LA1/K;

    .line 24
    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    invoke-virtual {v0, p1, p2}, LA1/K;->b(LW0/u;LA1/I;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    return-void
.end method

.method public final d(Z)V
    .locals 8

    .line 1
    iget-object v0, p0, LA1/l;->b:LW0/L;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/H1;->j(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    iget-boolean v4, p0, LA1/l;->p:Z

    .line 9
    .line 10
    iget-wide v0, p0, LA1/l;->i:J

    .line 11
    .line 12
    iget-wide v2, p0, LA1/l;->n:J

    .line 13
    .line 14
    sub-long/2addr v0, v2

    .line 15
    long-to-int v5, v0

    .line 16
    iget-object v1, p0, LA1/l;->b:LW0/L;

    .line 17
    .line 18
    iget-wide v2, p0, LA1/l;->o:J

    .line 19
    .line 20
    const/4 v6, 0x0

    .line 21
    const/4 v7, 0x0

    .line 22
    invoke-interface/range {v1 .. v7}, LW0/L;->d(JIIILW0/K;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method

.method public final e(IJ)V
    .locals 0

    .line 1
    iput-wide p2, p0, LA1/l;->m:J

    .line 2
    .line 3
    return-void
.end method
