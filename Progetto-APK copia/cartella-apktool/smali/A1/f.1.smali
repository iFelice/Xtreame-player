.class public final LA1/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LA1/j;


# static fields
.field public static final x:[B


# instance fields
.field public final a:Z

.field public final b:Lp0/D;

.field public final c:Lp0/E;

.field public final d:Ljava/lang/String;

.field public final e:I

.field public final f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:LW0/L;

.field public i:LW0/L;

.field public j:I

.field public k:I

.field public l:I

.field public m:Z

.field public n:Z

.field public o:I

.field public p:I

.field public q:I

.field public r:Z

.field public s:J

.field public t:I

.field public u:J

.field public v:LW0/L;

.field public w:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x3

    .line 2
    new-array v0, v0, [B

    .line 3
    .line 4
    fill-array-data v0, :array_0

    .line 5
    .line 6
    .line 7
    sput-object v0, LA1/f;->x:[B

    .line 8
    .line 9
    return-void

    .line 10
    nop

    .line 11
    :array_0
    .array-data 1
        0x49t
        0x44t
        0x33t
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lp0/D;

    .line 5
    .line 6
    const/4 v1, 0x7

    .line 7
    new-array v1, v1, [B

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    const/4 v3, 0x0

    .line 11
    invoke-direct {v0, v1, v3, v2}, Lp0/D;-><init>([BILjava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, LA1/f;->b:Lp0/D;

    .line 15
    .line 16
    new-instance v0, Lp0/E;

    .line 17
    .line 18
    sget-object v1, LA1/f;->x:[B

    .line 19
    .line 20
    const/16 v2, 0xa

    .line 21
    .line 22
    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-direct {v0, v1}, Lp0/E;-><init>([B)V

    .line 27
    .line 28
    .line 29
    iput-object v0, p0, LA1/f;->c:Lp0/E;

    .line 30
    .line 31
    const/4 v0, -0x1

    .line 32
    iput v0, p0, LA1/f;->o:I

    .line 33
    .line 34
    iput v0, p0, LA1/f;->p:I

    .line 35
    .line 36
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    iput-wide v0, p0, LA1/f;->s:J

    .line 42
    .line 43
    iput-wide v0, p0, LA1/f;->u:J

    .line 44
    .line 45
    iput-boolean p4, p0, LA1/f;->a:Z

    .line 46
    .line 47
    iput-object p1, p0, LA1/f;->d:Ljava/lang/String;

    .line 48
    .line 49
    iput p2, p0, LA1/f;->e:I

    .line 50
    .line 51
    iput-object p3, p0, LA1/f;->f:Ljava/lang/String;

    .line 52
    .line 53
    iput v3, p0, LA1/f;->j:I

    .line 54
    .line 55
    iput v3, p0, LA1/f;->k:I

    .line 56
    .line 57
    const/16 p1, 0x100

    .line 58
    .line 59
    iput p1, p0, LA1/f;->l:I

    .line 60
    .line 61
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    iput-wide v0, p0, LA1/f;->u:J

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, LA1/f;->n:Z

    .line 10
    .line 11
    iput v0, p0, LA1/f;->j:I

    .line 12
    .line 13
    iput v0, p0, LA1/f;->k:I

    .line 14
    .line 15
    const/16 v0, 0x100

    .line 16
    .line 17
    iput v0, p0, LA1/f;->l:I

    .line 18
    .line 19
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
    const/4 v2, 0x0

    .line 6
    const/4 v4, 0x7

    .line 7
    const/4 v5, 0x2

    .line 8
    const/4 v6, 0x1

    .line 9
    iget-object v7, v0, LA1/f;->h:LW0/L;

    .line 10
    .line 11
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    sget-object v7, Lp0/M;->a:Ljava/lang/String;

    .line 15
    .line 16
    :cond_0
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lp0/E;->a()I

    .line 17
    .line 18
    .line 19
    move-result v7

    .line 20
    if-lez v7, :cond_27

    .line 21
    .line 22
    iget v7, v0, LA1/f;->j:I

    .line 23
    .line 24
    const/16 v8, 0x100

    .line 25
    .line 26
    const/4 v9, 0x4

    .line 27
    const/4 v10, 0x3

    .line 28
    const/16 v11, 0xd

    .line 29
    .line 30
    iget-object v12, v0, LA1/f;->c:Lp0/E;

    .line 31
    .line 32
    iget-object v13, v0, LA1/f;->b:Lp0/D;

    .line 33
    .line 34
    if-eqz v7, :cond_d

    .line 35
    .line 36
    if-eq v7, v6, :cond_9

    .line 37
    .line 38
    const/16 v14, 0xa

    .line 39
    .line 40
    if-eq v7, v5, :cond_8

    .line 41
    .line 42
    if-eq v7, v10, :cond_3

    .line 43
    .line 44
    if-ne v7, v9, :cond_2

    .line 45
    .line 46
    invoke-virtual/range {p1 .. p1}, Lp0/E;->a()I

    .line 47
    .line 48
    .line 49
    move-result v7

    .line 50
    iget v9, v0, LA1/f;->t:I

    .line 51
    .line 52
    iget v10, v0, LA1/f;->k:I

    .line 53
    .line 54
    sub-int/2addr v9, v10

    .line 55
    invoke-static {v7, v9}, Ljava/lang/Math;->min(II)I

    .line 56
    .line 57
    .line 58
    move-result v7

    .line 59
    iget-object v9, v0, LA1/f;->v:LW0/L;

    .line 60
    .line 61
    invoke-interface {v9, v7, v1}, LW0/L;->e(ILp0/E;)V

    .line 62
    .line 63
    .line 64
    iget v9, v0, LA1/f;->k:I

    .line 65
    .line 66
    add-int/2addr v9, v7

    .line 67
    iput v9, v0, LA1/f;->k:I

    .line 68
    .line 69
    iget v7, v0, LA1/f;->t:I

    .line 70
    .line 71
    if-ne v9, v7, :cond_0

    .line 72
    .line 73
    iget-wide v9, v0, LA1/f;->u:J

    .line 74
    .line 75
    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    cmp-long v7, v9, v11

    .line 81
    .line 82
    if-eqz v7, :cond_1

    .line 83
    .line 84
    const/4 v7, 0x1

    .line 85
    goto :goto_1

    .line 86
    :cond_1
    const/4 v7, 0x0

    .line 87
    :goto_1
    invoke-static {v7}, Lcom/google/android/gms/internal/measurement/H1;->i(Z)V

    .line 88
    .line 89
    .line 90
    iget-object v9, v0, LA1/f;->v:LW0/L;

    .line 91
    .line 92
    iget-wide v10, v0, LA1/f;->u:J

    .line 93
    .line 94
    iget v13, v0, LA1/f;->t:I

    .line 95
    .line 96
    const/4 v12, 0x1

    .line 97
    const/4 v14, 0x0

    .line 98
    const/4 v15, 0x0

    .line 99
    invoke-interface/range {v9 .. v15}, LW0/L;->d(JIIILW0/K;)V

    .line 100
    .line 101
    .line 102
    iget-wide v9, v0, LA1/f;->u:J

    .line 103
    .line 104
    iget-wide v11, v0, LA1/f;->w:J

    .line 105
    .line 106
    add-long/2addr v9, v11

    .line 107
    iput-wide v9, v0, LA1/f;->u:J

    .line 108
    .line 109
    iput v2, v0, LA1/f;->j:I

    .line 110
    .line 111
    iput v2, v0, LA1/f;->k:I

    .line 112
    .line 113
    iput v8, v0, LA1/f;->l:I

    .line 114
    .line 115
    goto :goto_0

    .line 116
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 117
    .line 118
    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 119
    .line 120
    .line 121
    throw v1

    .line 122
    :cond_3
    iget-boolean v7, v0, LA1/f;->m:Z

    .line 123
    .line 124
    const/4 v8, 0x5

    .line 125
    if-eqz v7, :cond_4

    .line 126
    .line 127
    const/4 v7, 0x7

    .line 128
    goto :goto_2

    .line 129
    :cond_4
    const/4 v7, 0x5

    .line 130
    :goto_2
    iget-object v12, v13, Lp0/D;->b:[B

    .line 131
    .line 132
    invoke-virtual/range {p1 .. p1}, Lp0/E;->a()I

    .line 133
    .line 134
    .line 135
    move-result v15

    .line 136
    iget v3, v0, LA1/f;->k:I

    .line 137
    .line 138
    sub-int v3, v7, v3

    .line 139
    .line 140
    invoke-static {v15, v3}, Ljava/lang/Math;->min(II)I

    .line 141
    .line 142
    .line 143
    move-result v3

    .line 144
    iget v15, v0, LA1/f;->k:I

    .line 145
    .line 146
    invoke-virtual {v1, v15, v12, v3}, Lp0/E;->j(I[BI)V

    .line 147
    .line 148
    .line 149
    iget v12, v0, LA1/f;->k:I

    .line 150
    .line 151
    add-int/2addr v12, v3

    .line 152
    iput v12, v0, LA1/f;->k:I

    .line 153
    .line 154
    if-ne v12, v7, :cond_0

    .line 155
    .line 156
    invoke-virtual {v13, v2}, Lp0/D;->r(I)V

    .line 157
    .line 158
    .line 159
    iget-boolean v3, v0, LA1/f;->r:Z

    .line 160
    .line 161
    if-nez v3, :cond_6

    .line 162
    .line 163
    invoke-virtual {v13, v5}, Lp0/D;->i(I)I

    .line 164
    .line 165
    .line 166
    move-result v3

    .line 167
    add-int/2addr v3, v6

    .line 168
    if-eq v3, v5, :cond_5

    .line 169
    .line 170
    new-instance v7, Ljava/lang/StringBuilder;

    .line 171
    .line 172
    const-string v12, "Detected audio object type: "

    .line 173
    .line 174
    invoke-direct {v7, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    const-string v3, ", but assuming AAC LC."

    .line 181
    .line 182
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v3

    .line 189
    const-string v7, "AdtsReader"

    .line 190
    .line 191
    invoke-static {v7, v3}, Lp0/x;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    const/4 v3, 0x2

    .line 195
    :cond_5
    invoke-virtual {v13, v8}, Lp0/D;->u(I)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {v13, v10}, Lp0/D;->i(I)I

    .line 199
    .line 200
    .line 201
    move-result v7

    .line 202
    iget v8, v0, LA1/f;->p:I

    .line 203
    .line 204
    shl-int/2addr v3, v10

    .line 205
    and-int/lit16 v3, v3, 0xf8

    .line 206
    .line 207
    shr-int/lit8 v12, v8, 0x1

    .line 208
    .line 209
    and-int/2addr v12, v4

    .line 210
    or-int/2addr v3, v12

    .line 211
    int-to-byte v3, v3

    .line 212
    shl-int/2addr v8, v4

    .line 213
    and-int/lit16 v8, v8, 0x80

    .line 214
    .line 215
    shl-int/2addr v7, v10

    .line 216
    and-int/lit8 v7, v7, 0x78

    .line 217
    .line 218
    or-int/2addr v7, v8

    .line 219
    int-to-byte v7, v7

    .line 220
    new-array v8, v5, [B

    .line 221
    .line 222
    aput-byte v3, v8, v2

    .line 223
    .line 224
    aput-byte v7, v8, v6

    .line 225
    .line 226
    new-instance v3, Lp0/D;

    .line 227
    .line 228
    const/4 v7, 0x0

    .line 229
    invoke-direct {v3, v8, v2, v7}, Lp0/D;-><init>([BILjava/lang/Object;)V

    .line 230
    .line 231
    .line 232
    invoke-static {v3, v2}, LW0/a;->g(Lp0/D;Z)LW0/r;

    .line 233
    .line 234
    .line 235
    move-result-object v3

    .line 236
    new-instance v7, Lm0/s;

    .line 237
    .line 238
    invoke-direct {v7}, Lm0/s;-><init>()V

    .line 239
    .line 240
    .line 241
    iget-object v10, v0, LA1/f;->g:Ljava/lang/String;

    .line 242
    .line 243
    iput-object v10, v7, Lm0/s;->a:Ljava/lang/String;

    .line 244
    .line 245
    iget-object v10, v0, LA1/f;->f:Ljava/lang/String;

    .line 246
    .line 247
    invoke-static {v10}, Lm0/O;->p(Ljava/lang/String;)Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v10

    .line 251
    iput-object v10, v7, Lm0/s;->m:Ljava/lang/String;

    .line 252
    .line 253
    const-string v10, "audio/mp4a-latm"

    .line 254
    .line 255
    invoke-static {v10}, Lm0/O;->p(Ljava/lang/String;)Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object v10

    .line 259
    iput-object v10, v7, Lm0/s;->n:Ljava/lang/String;

    .line 260
    .line 261
    iget-object v10, v3, LW0/r;->a:Ljava/lang/String;

    .line 262
    .line 263
    iput-object v10, v7, Lm0/s;->j:Ljava/lang/String;

    .line 264
    .line 265
    iget v10, v3, LW0/r;->c:I

    .line 266
    .line 267
    iput v10, v7, Lm0/s;->F:I

    .line 268
    .line 269
    iget v3, v3, LW0/r;->b:I

    .line 270
    .line 271
    iput v3, v7, Lm0/s;->G:I

    .line 272
    .line 273
    invoke-static {v8}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 274
    .line 275
    .line 276
    move-result-object v3

    .line 277
    iput-object v3, v7, Lm0/s;->q:Ljava/util/List;

    .line 278
    .line 279
    iget-object v3, v0, LA1/f;->d:Ljava/lang/String;

    .line 280
    .line 281
    iput-object v3, v7, Lm0/s;->d:Ljava/lang/String;

    .line 282
    .line 283
    iget v3, v0, LA1/f;->e:I

    .line 284
    .line 285
    iput v3, v7, Lm0/s;->f:I

    .line 286
    .line 287
    new-instance v3, Lm0/t;

    .line 288
    .line 289
    invoke-direct {v3, v7}, Lm0/t;-><init>(Lm0/s;)V

    .line 290
    .line 291
    .line 292
    iget v7, v3, Lm0/t;->H:I

    .line 293
    .line 294
    int-to-long v7, v7

    .line 295
    const-wide/32 v14, 0x3d090000

    .line 296
    .line 297
    .line 298
    div-long/2addr v14, v7

    .line 299
    iput-wide v14, v0, LA1/f;->s:J

    .line 300
    .line 301
    iget-object v7, v0, LA1/f;->h:LW0/L;

    .line 302
    .line 303
    invoke-interface {v7, v3}, LW0/L;->b(Lm0/t;)V

    .line 304
    .line 305
    .line 306
    iput-boolean v6, v0, LA1/f;->r:Z

    .line 307
    .line 308
    goto :goto_3

    .line 309
    :cond_6
    invoke-virtual {v13, v14}, Lp0/D;->u(I)V

    .line 310
    .line 311
    .line 312
    :goto_3
    invoke-virtual {v13, v9}, Lp0/D;->u(I)V

    .line 313
    .line 314
    .line 315
    invoke-virtual {v13, v11}, Lp0/D;->i(I)I

    .line 316
    .line 317
    .line 318
    move-result v3

    .line 319
    add-int/lit8 v7, v3, -0x7

    .line 320
    .line 321
    iget-boolean v8, v0, LA1/f;->m:Z

    .line 322
    .line 323
    if-eqz v8, :cond_7

    .line 324
    .line 325
    add-int/lit8 v7, v3, -0x9

    .line 326
    .line 327
    :cond_7
    iget-object v3, v0, LA1/f;->h:LW0/L;

    .line 328
    .line 329
    iget-wide v10, v0, LA1/f;->s:J

    .line 330
    .line 331
    iput v9, v0, LA1/f;->j:I

    .line 332
    .line 333
    iput v2, v0, LA1/f;->k:I

    .line 334
    .line 335
    iput-object v3, v0, LA1/f;->v:LW0/L;

    .line 336
    .line 337
    iput-wide v10, v0, LA1/f;->w:J

    .line 338
    .line 339
    iput v7, v0, LA1/f;->t:I

    .line 340
    .line 341
    goto/16 :goto_0

    .line 342
    .line 343
    :cond_8
    iget-object v3, v12, Lp0/E;->a:[B

    .line 344
    .line 345
    invoke-virtual/range {p1 .. p1}, Lp0/E;->a()I

    .line 346
    .line 347
    .line 348
    move-result v7

    .line 349
    iget v8, v0, LA1/f;->k:I

    .line 350
    .line 351
    rsub-int/lit8 v8, v8, 0xa

    .line 352
    .line 353
    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    .line 354
    .line 355
    .line 356
    move-result v7

    .line 357
    iget v8, v0, LA1/f;->k:I

    .line 358
    .line 359
    invoke-virtual {v1, v8, v3, v7}, Lp0/E;->j(I[BI)V

    .line 360
    .line 361
    .line 362
    iget v3, v0, LA1/f;->k:I

    .line 363
    .line 364
    add-int/2addr v3, v7

    .line 365
    iput v3, v0, LA1/f;->k:I

    .line 366
    .line 367
    if-ne v3, v14, :cond_0

    .line 368
    .line 369
    iget-object v3, v0, LA1/f;->i:LW0/L;

    .line 370
    .line 371
    invoke-interface {v3, v14, v12}, LW0/L;->e(ILp0/E;)V

    .line 372
    .line 373
    .line 374
    const/4 v3, 0x6

    .line 375
    invoke-virtual {v12, v3}, Lp0/E;->L(I)V

    .line 376
    .line 377
    .line 378
    iget-object v3, v0, LA1/f;->i:LW0/L;

    .line 379
    .line 380
    invoke-virtual {v12}, Lp0/E;->y()I

    .line 381
    .line 382
    .line 383
    move-result v7

    .line 384
    add-int/2addr v7, v14

    .line 385
    iput v9, v0, LA1/f;->j:I

    .line 386
    .line 387
    iput v14, v0, LA1/f;->k:I

    .line 388
    .line 389
    iput-object v3, v0, LA1/f;->v:LW0/L;

    .line 390
    .line 391
    const-wide/16 v8, 0x0

    .line 392
    .line 393
    iput-wide v8, v0, LA1/f;->w:J

    .line 394
    .line 395
    iput v7, v0, LA1/f;->t:I

    .line 396
    .line 397
    goto/16 :goto_0

    .line 398
    .line 399
    :cond_9
    invoke-virtual/range {p1 .. p1}, Lp0/E;->a()I

    .line 400
    .line 401
    .line 402
    move-result v3

    .line 403
    if-nez v3, :cond_a

    .line 404
    .line 405
    goto/16 :goto_0

    .line 406
    .line 407
    :cond_a
    iget-object v3, v13, Lp0/D;->b:[B

    .line 408
    .line 409
    iget-object v7, v1, Lp0/E;->a:[B

    .line 410
    .line 411
    iget v11, v1, Lp0/E;->b:I

    .line 412
    .line 413
    aget-byte v7, v7, v11

    .line 414
    .line 415
    aput-byte v7, v3, v2

    .line 416
    .line 417
    invoke-virtual {v13, v5}, Lp0/D;->r(I)V

    .line 418
    .line 419
    .line 420
    invoke-virtual {v13, v9}, Lp0/D;->i(I)I

    .line 421
    .line 422
    .line 423
    move-result v3

    .line 424
    iget v7, v0, LA1/f;->p:I

    .line 425
    .line 426
    const/4 v9, -0x1

    .line 427
    if-eq v7, v9, :cond_b

    .line 428
    .line 429
    if-eq v3, v7, :cond_b

    .line 430
    .line 431
    iput-boolean v2, v0, LA1/f;->n:Z

    .line 432
    .line 433
    iput v2, v0, LA1/f;->j:I

    .line 434
    .line 435
    iput v2, v0, LA1/f;->k:I

    .line 436
    .line 437
    iput v8, v0, LA1/f;->l:I

    .line 438
    .line 439
    goto/16 :goto_0

    .line 440
    .line 441
    :cond_b
    iget-boolean v7, v0, LA1/f;->n:Z

    .line 442
    .line 443
    if-nez v7, :cond_c

    .line 444
    .line 445
    iput-boolean v6, v0, LA1/f;->n:Z

    .line 446
    .line 447
    iget v7, v0, LA1/f;->q:I

    .line 448
    .line 449
    iput v7, v0, LA1/f;->o:I

    .line 450
    .line 451
    iput v3, v0, LA1/f;->p:I

    .line 452
    .line 453
    :cond_c
    iput v10, v0, LA1/f;->j:I

    .line 454
    .line 455
    iput v2, v0, LA1/f;->k:I

    .line 456
    .line 457
    goto/16 :goto_0

    .line 458
    .line 459
    :cond_d
    iget-object v3, v1, Lp0/E;->a:[B

    .line 460
    .line 461
    iget v7, v1, Lp0/E;->b:I

    .line 462
    .line 463
    iget v14, v1, Lp0/E;->c:I

    .line 464
    .line 465
    :goto_4
    if-ge v7, v14, :cond_26

    .line 466
    .line 467
    add-int/lit8 v15, v7, 0x1

    .line 468
    .line 469
    aget-byte v8, v3, v7

    .line 470
    .line 471
    and-int/lit16 v10, v8, 0xff

    .line 472
    .line 473
    iget v4, v0, LA1/f;->l:I

    .line 474
    .line 475
    const/16 v11, 0x200

    .line 476
    .line 477
    if-ne v4, v11, :cond_1f

    .line 478
    .line 479
    int-to-byte v4, v10

    .line 480
    and-int/lit16 v4, v4, 0xff

    .line 481
    .line 482
    const v16, 0xff00

    .line 483
    .line 484
    .line 485
    or-int v4, v16, v4

    .line 486
    .line 487
    const v17, 0xfff6

    .line 488
    .line 489
    .line 490
    and-int v4, v4, v17

    .line 491
    .line 492
    const v11, 0xfff0

    .line 493
    .line 494
    .line 495
    if-ne v4, v11, :cond_1f

    .line 496
    .line 497
    iget-boolean v4, v0, LA1/f;->n:Z

    .line 498
    .line 499
    if-nez v4, :cond_1c

    .line 500
    .line 501
    const/4 v4, -0x1

    .line 502
    add-int/lit8 v18, v7, -0x1

    .line 503
    .line 504
    invoke-virtual {v1, v7}, Lp0/E;->L(I)V

    .line 505
    .line 506
    .line 507
    iget-object v4, v13, Lp0/D;->b:[B

    .line 508
    .line 509
    invoke-virtual/range {p1 .. p1}, Lp0/E;->a()I

    .line 510
    .line 511
    .line 512
    move-result v11

    .line 513
    if-ge v11, v6, :cond_e

    .line 514
    .line 515
    goto/16 :goto_a

    .line 516
    .line 517
    :cond_e
    invoke-virtual {v1, v2, v4, v6}, Lp0/E;->j(I[BI)V

    .line 518
    .line 519
    .line 520
    invoke-virtual {v13, v9}, Lp0/D;->r(I)V

    .line 521
    .line 522
    .line 523
    invoke-virtual {v13, v6}, Lp0/D;->i(I)I

    .line 524
    .line 525
    .line 526
    move-result v4

    .line 527
    iget v11, v0, LA1/f;->o:I

    .line 528
    .line 529
    const/4 v9, -0x1

    .line 530
    if-eq v11, v9, :cond_f

    .line 531
    .line 532
    if-eq v4, v11, :cond_f

    .line 533
    .line 534
    goto/16 :goto_a

    .line 535
    .line 536
    :cond_f
    iget v11, v0, LA1/f;->p:I

    .line 537
    .line 538
    if-eq v11, v9, :cond_12

    .line 539
    .line 540
    iget-object v9, v13, Lp0/D;->b:[B

    .line 541
    .line 542
    invoke-virtual/range {p1 .. p1}, Lp0/E;->a()I

    .line 543
    .line 544
    .line 545
    move-result v11

    .line 546
    if-ge v11, v6, :cond_10

    .line 547
    .line 548
    goto/16 :goto_6

    .line 549
    .line 550
    :cond_10
    invoke-virtual {v1, v2, v9, v6}, Lp0/E;->j(I[BI)V

    .line 551
    .line 552
    .line 553
    invoke-virtual {v13, v5}, Lp0/D;->r(I)V

    .line 554
    .line 555
    .line 556
    const/4 v9, 0x4

    .line 557
    invoke-virtual {v13, v9}, Lp0/D;->i(I)I

    .line 558
    .line 559
    .line 560
    move-result v11

    .line 561
    iget v5, v0, LA1/f;->p:I

    .line 562
    .line 563
    if-eq v11, v5, :cond_11

    .line 564
    .line 565
    goto/16 :goto_a

    .line 566
    .line 567
    :cond_11
    invoke-virtual {v1, v15}, Lp0/E;->L(I)V

    .line 568
    .line 569
    .line 570
    goto :goto_5

    .line 571
    :cond_12
    const/4 v9, 0x4

    .line 572
    :goto_5
    iget-object v5, v13, Lp0/D;->b:[B

    .line 573
    .line 574
    invoke-virtual/range {p1 .. p1}, Lp0/E;->a()I

    .line 575
    .line 576
    .line 577
    move-result v11

    .line 578
    if-ge v11, v9, :cond_13

    .line 579
    .line 580
    goto :goto_6

    .line 581
    :cond_13
    invoke-virtual {v1, v2, v5, v9}, Lp0/E;->j(I[BI)V

    .line 582
    .line 583
    .line 584
    const/16 v5, 0xe

    .line 585
    .line 586
    invoke-virtual {v13, v5}, Lp0/D;->r(I)V

    .line 587
    .line 588
    .line 589
    const/16 v5, 0xd

    .line 590
    .line 591
    invoke-virtual {v13, v5}, Lp0/D;->i(I)I

    .line 592
    .line 593
    .line 594
    move-result v11

    .line 595
    const/4 v5, 0x7

    .line 596
    if-ge v11, v5, :cond_14

    .line 597
    .line 598
    goto/16 :goto_a

    .line 599
    .line 600
    :cond_14
    iget-object v5, v1, Lp0/E;->a:[B

    .line 601
    .line 602
    iget v9, v1, Lp0/E;->c:I

    .line 603
    .line 604
    add-int v11, v18, v11

    .line 605
    .line 606
    if-lt v11, v9, :cond_15

    .line 607
    .line 608
    goto :goto_6

    .line 609
    :cond_15
    aget-byte v2, v5, v11

    .line 610
    .line 611
    move-object/from16 v19, v3

    .line 612
    .line 613
    const/4 v3, -0x1

    .line 614
    if-ne v2, v3, :cond_17

    .line 615
    .line 616
    add-int/2addr v11, v6

    .line 617
    if-ne v11, v9, :cond_16

    .line 618
    .line 619
    goto :goto_7

    .line 620
    :cond_16
    aget-byte v2, v5, v11

    .line 621
    .line 622
    and-int/lit16 v5, v2, 0xff

    .line 623
    .line 624
    or-int v5, v16, v5

    .line 625
    .line 626
    and-int v5, v5, v17

    .line 627
    .line 628
    const v9, 0xfff0

    .line 629
    .line 630
    .line 631
    if-ne v5, v9, :cond_20

    .line 632
    .line 633
    and-int/lit8 v2, v2, 0x8

    .line 634
    .line 635
    const/4 v5, 0x3

    .line 636
    shr-int/2addr v2, v5

    .line 637
    if-ne v2, v4, :cond_20

    .line 638
    .line 639
    goto :goto_7

    .line 640
    :cond_17
    const/16 v4, 0x49

    .line 641
    .line 642
    if-eq v2, v4, :cond_18

    .line 643
    .line 644
    goto :goto_b

    .line 645
    :cond_18
    add-int/lit8 v2, v11, 0x1

    .line 646
    .line 647
    if-ne v2, v9, :cond_19

    .line 648
    .line 649
    goto :goto_7

    .line 650
    :cond_19
    aget-byte v2, v5, v2

    .line 651
    .line 652
    const/16 v4, 0x44

    .line 653
    .line 654
    if-eq v2, v4, :cond_1a

    .line 655
    .line 656
    goto :goto_b

    .line 657
    :cond_1a
    const/4 v2, 0x2

    .line 658
    add-int/2addr v11, v2

    .line 659
    if-ne v11, v9, :cond_1b

    .line 660
    .line 661
    goto :goto_7

    .line 662
    :cond_1b
    aget-byte v2, v5, v11

    .line 663
    .line 664
    const/16 v4, 0x33

    .line 665
    .line 666
    if-ne v2, v4, :cond_20

    .line 667
    .line 668
    goto :goto_7

    .line 669
    :cond_1c
    :goto_6
    const/4 v3, -0x1

    .line 670
    :goto_7
    and-int/lit8 v2, v8, 0x8

    .line 671
    .line 672
    const/4 v4, 0x3

    .line 673
    shr-int/2addr v2, v4

    .line 674
    iput v2, v0, LA1/f;->q:I

    .line 675
    .line 676
    and-int/lit8 v2, v8, 0x1

    .line 677
    .line 678
    if-nez v2, :cond_1d

    .line 679
    .line 680
    const/4 v2, 0x1

    .line 681
    goto :goto_8

    .line 682
    :cond_1d
    const/4 v2, 0x0

    .line 683
    :goto_8
    iput-boolean v2, v0, LA1/f;->m:Z

    .line 684
    .line 685
    iget-boolean v2, v0, LA1/f;->n:Z

    .line 686
    .line 687
    if-nez v2, :cond_1e

    .line 688
    .line 689
    iput v6, v0, LA1/f;->j:I

    .line 690
    .line 691
    const/4 v2, 0x0

    .line 692
    iput v2, v0, LA1/f;->k:I

    .line 693
    .line 694
    goto :goto_9

    .line 695
    :cond_1e
    const/4 v2, 0x0

    .line 696
    const/4 v4, 0x3

    .line 697
    iput v4, v0, LA1/f;->j:I

    .line 698
    .line 699
    iput v2, v0, LA1/f;->k:I

    .line 700
    .line 701
    :goto_9
    invoke-virtual {v1, v15}, Lp0/E;->L(I)V

    .line 702
    .line 703
    .line 704
    const/4 v2, 0x2

    .line 705
    const/4 v8, 0x0

    .line 706
    goto :goto_e

    .line 707
    :cond_1f
    :goto_a
    move-object/from16 v19, v3

    .line 708
    .line 709
    const/4 v3, -0x1

    .line 710
    :cond_20
    :goto_b
    iget v2, v0, LA1/f;->l:I

    .line 711
    .line 712
    or-int v4, v2, v10

    .line 713
    .line 714
    const/16 v5, 0x149

    .line 715
    .line 716
    if-eq v4, v5, :cond_25

    .line 717
    .line 718
    const/16 v5, 0x1ff

    .line 719
    .line 720
    if-eq v4, v5, :cond_24

    .line 721
    .line 722
    const/16 v5, 0x344

    .line 723
    .line 724
    if-eq v4, v5, :cond_23

    .line 725
    .line 726
    const/16 v5, 0x433

    .line 727
    .line 728
    if-eq v4, v5, :cond_22

    .line 729
    .line 730
    const/16 v4, 0x100

    .line 731
    .line 732
    if-eq v2, v4, :cond_21

    .line 733
    .line 734
    iput v4, v0, LA1/f;->l:I

    .line 735
    .line 736
    const/4 v2, 0x2

    .line 737
    const/4 v5, 0x3

    .line 738
    const/4 v8, 0x0

    .line 739
    goto :goto_d

    .line 740
    :cond_21
    const/4 v2, 0x2

    .line 741
    const/4 v5, 0x3

    .line 742
    const/4 v8, 0x0

    .line 743
    goto :goto_c

    .line 744
    :cond_22
    const/4 v2, 0x2

    .line 745
    iput v2, v0, LA1/f;->j:I

    .line 746
    .line 747
    const/4 v5, 0x3

    .line 748
    iput v5, v0, LA1/f;->k:I

    .line 749
    .line 750
    const/4 v8, 0x0

    .line 751
    iput v8, v0, LA1/f;->t:I

    .line 752
    .line 753
    invoke-virtual {v12, v8}, Lp0/E;->L(I)V

    .line 754
    .line 755
    .line 756
    invoke-virtual {v1, v15}, Lp0/E;->L(I)V

    .line 757
    .line 758
    .line 759
    goto :goto_e

    .line 760
    :cond_23
    const/4 v2, 0x2

    .line 761
    const/16 v4, 0x100

    .line 762
    .line 763
    const/4 v5, 0x3

    .line 764
    const/4 v8, 0x0

    .line 765
    const/16 v7, 0x400

    .line 766
    .line 767
    iput v7, v0, LA1/f;->l:I

    .line 768
    .line 769
    goto :goto_c

    .line 770
    :cond_24
    const/4 v2, 0x2

    .line 771
    const/16 v4, 0x100

    .line 772
    .line 773
    const/4 v5, 0x3

    .line 774
    const/16 v7, 0x200

    .line 775
    .line 776
    const/4 v8, 0x0

    .line 777
    iput v7, v0, LA1/f;->l:I

    .line 778
    .line 779
    goto :goto_c

    .line 780
    :cond_25
    const/4 v2, 0x2

    .line 781
    const/16 v4, 0x100

    .line 782
    .line 783
    const/4 v5, 0x3

    .line 784
    const/4 v8, 0x0

    .line 785
    const/16 v7, 0x300

    .line 786
    .line 787
    iput v7, v0, LA1/f;->l:I

    .line 788
    .line 789
    :goto_c
    move v7, v15

    .line 790
    :goto_d
    move-object/from16 v3, v19

    .line 791
    .line 792
    const/4 v2, 0x0

    .line 793
    const/4 v4, 0x7

    .line 794
    const/4 v5, 0x2

    .line 795
    const/16 v8, 0x100

    .line 796
    .line 797
    const/4 v9, 0x4

    .line 798
    const/4 v10, 0x3

    .line 799
    const/16 v11, 0xd

    .line 800
    .line 801
    goto/16 :goto_4

    .line 802
    .line 803
    :cond_26
    const/4 v2, 0x2

    .line 804
    const/4 v3, -0x1

    .line 805
    const/4 v8, 0x0

    .line 806
    invoke-virtual {v1, v7}, Lp0/E;->L(I)V

    .line 807
    .line 808
    .line 809
    :goto_e
    const/4 v2, 0x0

    .line 810
    const/4 v4, 0x7

    .line 811
    const/4 v5, 0x2

    .line 812
    goto/16 :goto_0

    .line 813
    .line 814
    :cond_27
    return-void
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
    iput-object v0, p0, LA1/f;->g:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {p2}, LA1/I;->b()V

    .line 12
    .line 13
    .line 14
    iget v0, p2, LA1/I;->d:I

    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    invoke-interface {p1, v0, v1}, LW0/u;->t(II)LW0/L;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iput-object v0, p0, LA1/f;->h:LW0/L;

    .line 22
    .line 23
    iput-object v0, p0, LA1/f;->v:LW0/L;

    .line 24
    .line 25
    iget-boolean v0, p0, LA1/f;->a:Z

    .line 26
    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    invoke-virtual {p2}, LA1/I;->a()V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2}, LA1/I;->b()V

    .line 33
    .line 34
    .line 35
    iget v0, p2, LA1/I;->d:I

    .line 36
    .line 37
    const/4 v1, 0x5

    .line 38
    invoke-interface {p1, v0, v1}, LW0/u;->t(II)LW0/L;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    iput-object p1, p0, LA1/f;->i:LW0/L;

    .line 43
    .line 44
    new-instance v0, Lm0/s;

    .line 45
    .line 46
    invoke-direct {v0}, Lm0/s;-><init>()V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p2}, LA1/I;->b()V

    .line 50
    .line 51
    .line 52
    iget-object p2, p2, LA1/I;->e:Ljava/lang/String;

    .line 53
    .line 54
    iput-object p2, v0, Lm0/s;->a:Ljava/lang/String;

    .line 55
    .line 56
    iget-object p2, p0, LA1/f;->f:Ljava/lang/String;

    .line 57
    .line 58
    invoke-static {p2}, Lm0/O;->p(Ljava/lang/String;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p2

    .line 62
    iput-object p2, v0, Lm0/s;->m:Ljava/lang/String;

    .line 63
    .line 64
    const-string p2, "application/id3"

    .line 65
    .line 66
    invoke-static {p2}, Lm0/O;->p(Ljava/lang/String;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p2

    .line 70
    iput-object p2, v0, Lm0/s;->n:Ljava/lang/String;

    .line 71
    .line 72
    new-instance p2, Lm0/t;

    .line 73
    .line 74
    invoke-direct {p2, v0}, Lm0/t;-><init>(Lm0/s;)V

    .line 75
    .line 76
    .line 77
    invoke-interface {p1, p2}, LW0/L;->b(Lm0/t;)V

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_0
    new-instance p1, LW0/q;

    .line 82
    .line 83
    invoke-direct {p1}, LW0/q;-><init>()V

    .line 84
    .line 85
    .line 86
    iput-object p1, p0, LA1/f;->i:LW0/L;

    .line 87
    .line 88
    :goto_0
    return-void
.end method

.method public final d(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public final e(IJ)V
    .locals 0

    .line 1
    iput-wide p2, p0, LA1/f;->u:J

    .line 2
    .line 3
    return-void
.end method
