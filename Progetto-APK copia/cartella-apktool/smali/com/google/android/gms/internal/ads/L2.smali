.class public final Lcom/google/android/gms/internal/ads/L2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/F2;


# instance fields
.field public final a:La3/b;

.field public final b:LA1/x;

.field public final c:LA1/x;

.field public final d:LA1/x;

.field public e:J

.field public final f:[Z

.field public g:Ljava/lang/String;

.field public h:Lcom/google/android/gms/internal/ads/e0;

.field public i:Lcom/google/android/gms/internal/ads/K2;

.field public j:Z

.field public k:J

.field public l:Z

.field public final m:Lcom/google/android/gms/internal/ads/jr;


# direct methods
.method public constructor <init>(La3/b;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/L2;->a:La3/b;

    .line 5
    .line 6
    const/4 p1, 0x3

    .line 7
    new-array p1, p1, [Z

    .line 8
    .line 9
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/L2;->f:[Z

    .line 10
    .line 11
    new-instance p1, LA1/x;

    .line 12
    .line 13
    const/4 v0, 0x7

    .line 14
    const/4 v1, 0x1

    .line 15
    invoke-direct {p1, v0, v1}, LA1/x;-><init>(II)V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/L2;->b:LA1/x;

    .line 19
    .line 20
    new-instance p1, LA1/x;

    .line 21
    .line 22
    const/16 v0, 0x8

    .line 23
    .line 24
    invoke-direct {p1, v0, v1}, LA1/x;-><init>(II)V

    .line 25
    .line 26
    .line 27
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/L2;->c:LA1/x;

    .line 28
    .line 29
    new-instance p1, LA1/x;

    .line 30
    .line 31
    const/4 v0, 0x6

    .line 32
    invoke-direct {p1, v0, v1}, LA1/x;-><init>(II)V

    .line 33
    .line 34
    .line 35
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/L2;->d:LA1/x;

    .line 36
    .line 37
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/L2;->k:J

    .line 43
    .line 44
    new-instance p1, Lcom/google/android/gms/internal/ads/jr;

    .line 45
    .line 46
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/jr;-><init>()V

    .line 47
    .line 48
    .line 49
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/L2;->m:Lcom/google/android/gms/internal/ads/jr;

    .line 50
    .line 51
    return-void
.end method


# virtual methods
.method public final b(Lcom/google/android/gms/internal/ads/jr;)V
    .locals 33

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const/4 v4, 0x3

    .line 6
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/L2;->h:Lcom/google/android/gms/internal/ads/e0;

    .line 7
    .line 8
    invoke-static {v5}, Lo3/r;->x(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    sget v5, Lcom/google/android/gms/internal/ads/Et;->a:I

    .line 12
    .line 13
    iget v5, v1, Lcom/google/android/gms/internal/ads/jr;->b:I

    .line 14
    .line 15
    iget v6, v1, Lcom/google/android/gms/internal/ads/jr;->c:I

    .line 16
    .line 17
    iget-object v7, v1, Lcom/google/android/gms/internal/ads/jr;->a:[B

    .line 18
    .line 19
    iget-wide v8, v0, Lcom/google/android/gms/internal/ads/L2;->e:J

    .line 20
    .line 21
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/jr;->o()I

    .line 22
    .line 23
    .line 24
    move-result v10

    .line 25
    int-to-long v10, v10

    .line 26
    add-long/2addr v8, v10

    .line 27
    iput-wide v8, v0, Lcom/google/android/gms/internal/ads/L2;->e:J

    .line 28
    .line 29
    iget-object v8, v0, Lcom/google/android/gms/internal/ads/L2;->h:Lcom/google/android/gms/internal/ads/e0;

    .line 30
    .line 31
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/jr;->o()I

    .line 32
    .line 33
    .line 34
    move-result v9

    .line 35
    invoke-interface {v8, v9, v1}, Lcom/google/android/gms/internal/ads/e0;->f(ILcom/google/android/gms/internal/ads/jr;)V

    .line 36
    .line 37
    .line 38
    :goto_0
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/L2;->f:[Z

    .line 39
    .line 40
    invoke-static {v7, v5, v6, v1}, Lcom/google/android/gms/internal/ads/sy;->a([BII[Z)I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    iget-object v8, v0, Lcom/google/android/gms/internal/ads/L2;->d:LA1/x;

    .line 45
    .line 46
    iget-object v9, v0, Lcom/google/android/gms/internal/ads/L2;->c:LA1/x;

    .line 47
    .line 48
    iget-object v10, v0, Lcom/google/android/gms/internal/ads/L2;->b:LA1/x;

    .line 49
    .line 50
    if-eq v1, v6, :cond_11

    .line 51
    .line 52
    add-int/lit8 v11, v1, 0x3

    .line 53
    .line 54
    aget-byte v12, v7, v11

    .line 55
    .line 56
    and-int/lit8 v12, v12, 0x1f

    .line 57
    .line 58
    sub-int v13, v1, v5

    .line 59
    .line 60
    if-lez v13, :cond_1

    .line 61
    .line 62
    iget-boolean v14, v0, Lcom/google/android/gms/internal/ads/L2;->j:Z

    .line 63
    .line 64
    if-nez v14, :cond_0

    .line 65
    .line 66
    invoke-virtual {v10, v5, v7, v1}, LA1/x;->e(I[BI)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v9, v5, v7, v1}, LA1/x;->e(I[BI)V

    .line 70
    .line 71
    .line 72
    :cond_0
    invoke-virtual {v8, v5, v7, v1}, LA1/x;->e(I[BI)V

    .line 73
    .line 74
    .line 75
    :cond_1
    sub-int v1, v6, v1

    .line 76
    .line 77
    iget-wide v14, v0, Lcom/google/android/gms/internal/ads/L2;->e:J

    .line 78
    .line 79
    int-to-long v2, v1

    .line 80
    sub-long/2addr v14, v2

    .line 81
    if-gez v13, :cond_2

    .line 82
    .line 83
    neg-int v2, v13

    .line 84
    goto :goto_1

    .line 85
    :cond_2
    const/4 v2, 0x0

    .line 86
    :goto_1
    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/L2;->k:J

    .line 87
    .line 88
    iget-boolean v13, v0, Lcom/google/android/gms/internal/ads/L2;->j:Z

    .line 89
    .line 90
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/L2;->a:La3/b;

    .line 91
    .line 92
    if-eqz v13, :cond_3

    .line 93
    .line 94
    move/from16 v21, v1

    .line 95
    .line 96
    move-wide/from16 v31, v4

    .line 97
    .line 98
    move/from16 v18, v6

    .line 99
    .line 100
    move-object/from16 v19, v7

    .line 101
    .line 102
    move/from16 v17, v11

    .line 103
    .line 104
    :goto_2
    move/from16 v20, v12

    .line 105
    .line 106
    move-wide/from16 v22, v14

    .line 107
    .line 108
    goto/16 :goto_4

    .line 109
    .line 110
    :cond_3
    invoke-virtual {v10, v2}, LA1/x;->h(I)Z

    .line 111
    .line 112
    .line 113
    invoke-virtual {v9, v2}, LA1/x;->h(I)Z

    .line 114
    .line 115
    .line 116
    iget-boolean v13, v0, Lcom/google/android/gms/internal/ads/L2;->j:Z

    .line 117
    .line 118
    move/from16 v17, v11

    .line 119
    .line 120
    if-nez v13, :cond_5

    .line 121
    .line 122
    iget-boolean v13, v10, LA1/x;->c:Z

    .line 123
    .line 124
    if-eqz v13, :cond_4

    .line 125
    .line 126
    iget-boolean v13, v9, LA1/x;->c:Z

    .line 127
    .line 128
    if-eqz v13, :cond_4

    .line 129
    .line 130
    new-instance v13, Ljava/util/ArrayList;

    .line 131
    .line 132
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 133
    .line 134
    .line 135
    iget-object v11, v10, LA1/x;->d:[B

    .line 136
    .line 137
    move/from16 v18, v6

    .line 138
    .line 139
    iget v6, v10, LA1/x;->e:I

    .line 140
    .line 141
    invoke-static {v11, v6}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 142
    .line 143
    .line 144
    move-result-object v6

    .line 145
    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    iget-object v6, v9, LA1/x;->d:[B

    .line 149
    .line 150
    iget v11, v9, LA1/x;->e:I

    .line 151
    .line 152
    invoke-static {v6, v11}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 153
    .line 154
    .line 155
    move-result-object v6

    .line 156
    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    .line 158
    .line 159
    iget-object v6, v10, LA1/x;->d:[B

    .line 160
    .line 161
    iget v11, v10, LA1/x;->e:I

    .line 162
    .line 163
    move-object/from16 v19, v7

    .line 164
    .line 165
    const/4 v7, 0x4

    .line 166
    invoke-static {v7, v6, v11}, Lcom/google/android/gms/internal/ads/sy;->e(I[BI)Lcom/google/android/gms/internal/ads/dy;

    .line 167
    .line 168
    .line 169
    move-result-object v6

    .line 170
    iget-object v11, v9, LA1/x;->d:[B

    .line 171
    .line 172
    iget v7, v9, LA1/x;->e:I

    .line 173
    .line 174
    move/from16 v20, v12

    .line 175
    .line 176
    new-instance v12, Lcom/google/android/gms/internal/ads/f0;

    .line 177
    .line 178
    move/from16 v21, v1

    .line 179
    .line 180
    const/4 v1, 0x4

    .line 181
    invoke-direct {v12, v11, v1, v7}, Lcom/google/android/gms/internal/ads/f0;-><init>([BII)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/f0;->e()I

    .line 185
    .line 186
    .line 187
    move-result v1

    .line 188
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/f0;->e()I

    .line 189
    .line 190
    .line 191
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/f0;->k()V

    .line 192
    .line 193
    .line 194
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/f0;->p()Z

    .line 195
    .line 196
    .line 197
    new-instance v7, Landroidx/leanback/widget/j;

    .line 198
    .line 199
    const/4 v11, 0x0

    .line 200
    invoke-direct {v7, v1, v11}, Landroidx/leanback/widget/j;-><init>(ILa/r;)V

    .line 201
    .line 202
    .line 203
    iget v1, v6, Lcom/google/android/gms/internal/ads/dy;->a:I

    .line 204
    .line 205
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 206
    .line 207
    .line 208
    move-result-object v1

    .line 209
    iget v11, v6, Lcom/google/android/gms/internal/ads/dy;->b:I

    .line 210
    .line 211
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 212
    .line 213
    .line 214
    move-result-object v11

    .line 215
    iget v12, v6, Lcom/google/android/gms/internal/ads/dy;->c:I

    .line 216
    .line 217
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 218
    .line 219
    .line 220
    move-result-object v12

    .line 221
    move-wide/from16 v22, v14

    .line 222
    .line 223
    const/4 v14, 0x3

    .line 224
    new-array v15, v14, [Ljava/lang/Object;

    .line 225
    .line 226
    const/16 v16, 0x0

    .line 227
    .line 228
    aput-object v1, v15, v16

    .line 229
    .line 230
    const/4 v1, 0x1

    .line 231
    aput-object v11, v15, v1

    .line 232
    .line 233
    const/4 v1, 0x2

    .line 234
    aput-object v12, v15, v1

    .line 235
    .line 236
    const-string v1, "avc1.%02X%02X%02X"

    .line 237
    .line 238
    invoke-static {v1, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v1

    .line 242
    iget-object v11, v0, Lcom/google/android/gms/internal/ads/L2;->h:Lcom/google/android/gms/internal/ads/e0;

    .line 243
    .line 244
    new-instance v12, Lcom/google/android/gms/internal/ads/K;

    .line 245
    .line 246
    invoke-direct {v12}, Lcom/google/android/gms/internal/ads/K;-><init>()V

    .line 247
    .line 248
    .line 249
    iget-object v15, v0, Lcom/google/android/gms/internal/ads/L2;->g:Ljava/lang/String;

    .line 250
    .line 251
    iput-object v15, v12, Lcom/google/android/gms/internal/ads/K;->a:Ljava/lang/String;

    .line 252
    .line 253
    const-string v15, "video/avc"

    .line 254
    .line 255
    invoke-virtual {v12, v15}, Lcom/google/android/gms/internal/ads/K;->f(Ljava/lang/String;)V

    .line 256
    .line 257
    .line 258
    iput-object v1, v12, Lcom/google/android/gms/internal/ads/K;->i:Ljava/lang/String;

    .line 259
    .line 260
    iget v1, v6, Lcom/google/android/gms/internal/ads/dy;->e:I

    .line 261
    .line 262
    iput v1, v12, Lcom/google/android/gms/internal/ads/K;->r:I

    .line 263
    .line 264
    iget v1, v6, Lcom/google/android/gms/internal/ads/dy;->f:I

    .line 265
    .line 266
    iput v1, v12, Lcom/google/android/gms/internal/ads/K;->s:I

    .line 267
    .line 268
    iget v1, v6, Lcom/google/android/gms/internal/ads/dy;->h:I

    .line 269
    .line 270
    add-int/lit8 v29, v1, 0x8

    .line 271
    .line 272
    iget v1, v6, Lcom/google/android/gms/internal/ads/dy;->i:I

    .line 273
    .line 274
    add-int/lit8 v30, v1, 0x8

    .line 275
    .line 276
    new-instance v1, Lcom/google/android/gms/internal/ads/rL;

    .line 277
    .line 278
    iget v15, v6, Lcom/google/android/gms/internal/ads/dy;->l:I

    .line 279
    .line 280
    const/16 v28, 0x0

    .line 281
    .line 282
    iget v14, v6, Lcom/google/android/gms/internal/ads/dy;->j:I

    .line 283
    .line 284
    move-wide/from16 v31, v4

    .line 285
    .line 286
    iget v4, v6, Lcom/google/android/gms/internal/ads/dy;->k:I

    .line 287
    .line 288
    move-object/from16 v24, v1

    .line 289
    .line 290
    move/from16 v25, v14

    .line 291
    .line 292
    move/from16 v26, v4

    .line 293
    .line 294
    move/from16 v27, v15

    .line 295
    .line 296
    invoke-direct/range {v24 .. v30}, Lcom/google/android/gms/internal/ads/rL;-><init>(III[BII)V

    .line 297
    .line 298
    .line 299
    iput-object v1, v12, Lcom/google/android/gms/internal/ads/K;->y:Lcom/google/android/gms/internal/ads/rL;

    .line 300
    .line 301
    iget v1, v6, Lcom/google/android/gms/internal/ads/dy;->g:F

    .line 302
    .line 303
    iput v1, v12, Lcom/google/android/gms/internal/ads/K;->v:F

    .line 304
    .line 305
    iput-object v13, v12, Lcom/google/android/gms/internal/ads/K;->o:Ljava/util/List;

    .line 306
    .line 307
    iget v1, v6, Lcom/google/android/gms/internal/ads/dy;->m:I

    .line 308
    .line 309
    iput v1, v12, Lcom/google/android/gms/internal/ads/K;->n:I

    .line 310
    .line 311
    new-instance v1, Lcom/google/android/gms/internal/ads/p0;

    .line 312
    .line 313
    invoke-direct {v1, v12}, Lcom/google/android/gms/internal/ads/p0;-><init>(Lcom/google/android/gms/internal/ads/K;)V

    .line 314
    .line 315
    .line 316
    invoke-interface {v11, v1}, Lcom/google/android/gms/internal/ads/e0;->d(Lcom/google/android/gms/internal/ads/p0;)V

    .line 317
    .line 318
    .line 319
    const/4 v1, 0x1

    .line 320
    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/L2;->j:Z

    .line 321
    .line 322
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/L2;->i:Lcom/google/android/gms/internal/ads/K2;

    .line 323
    .line 324
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/K2;->b:Landroid/util/SparseArray;

    .line 325
    .line 326
    iget v4, v6, Lcom/google/android/gms/internal/ads/dy;->d:I

    .line 327
    .line 328
    invoke-virtual {v1, v4, v6}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 329
    .line 330
    .line 331
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/L2;->i:Lcom/google/android/gms/internal/ads/K2;

    .line 332
    .line 333
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/K2;->c:Landroid/util/SparseArray;

    .line 334
    .line 335
    iget v4, v7, Landroidx/leanback/widget/j;->H:I

    .line 336
    .line 337
    invoke-virtual {v1, v4, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 338
    .line 339
    .line 340
    invoke-virtual {v10}, LA1/x;->f()V

    .line 341
    .line 342
    .line 343
    invoke-virtual {v9}, LA1/x;->f()V

    .line 344
    .line 345
    .line 346
    goto/16 :goto_4

    .line 347
    .line 348
    :cond_4
    move/from16 v21, v1

    .line 349
    .line 350
    move-wide/from16 v31, v4

    .line 351
    .line 352
    move/from16 v18, v6

    .line 353
    .line 354
    move-object/from16 v19, v7

    .line 355
    .line 356
    goto/16 :goto_2

    .line 357
    .line 358
    :cond_5
    move/from16 v21, v1

    .line 359
    .line 360
    move-wide/from16 v31, v4

    .line 361
    .line 362
    move/from16 v18, v6

    .line 363
    .line 364
    move-object/from16 v19, v7

    .line 365
    .line 366
    move/from16 v20, v12

    .line 367
    .line 368
    move-wide/from16 v22, v14

    .line 369
    .line 370
    iget-boolean v1, v10, LA1/x;->c:Z

    .line 371
    .line 372
    if-eqz v1, :cond_7

    .line 373
    .line 374
    iget-object v1, v10, LA1/x;->d:[B

    .line 375
    .line 376
    iget v4, v10, LA1/x;->e:I

    .line 377
    .line 378
    const/4 v5, 0x4

    .line 379
    invoke-static {v5, v1, v4}, Lcom/google/android/gms/internal/ads/sy;->e(I[BI)Lcom/google/android/gms/internal/ads/dy;

    .line 380
    .line 381
    .line 382
    move-result-object v1

    .line 383
    iget-object v4, v3, La3/b;->J:Ljava/lang/Object;

    .line 384
    .line 385
    check-cast v4, Lcom/google/android/gms/internal/ads/W2;

    .line 386
    .line 387
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 388
    .line 389
    .line 390
    iget v5, v1, Lcom/google/android/gms/internal/ads/dy;->m:I

    .line 391
    .line 392
    if-ltz v5, :cond_6

    .line 393
    .line 394
    const/4 v6, 0x1

    .line 395
    goto :goto_3

    .line 396
    :cond_6
    const/4 v6, 0x0

    .line 397
    :goto_3
    invoke-static {v6}, Lo3/r;->M(Z)V

    .line 398
    .line 399
    .line 400
    iput v5, v4, Lcom/google/android/gms/internal/ads/W2;->G:I

    .line 401
    .line 402
    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/ads/W2;->d(I)V

    .line 403
    .line 404
    .line 405
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/L2;->i:Lcom/google/android/gms/internal/ads/K2;

    .line 406
    .line 407
    iget-object v4, v4, Lcom/google/android/gms/internal/ads/K2;->b:Landroid/util/SparseArray;

    .line 408
    .line 409
    iget v5, v1, Lcom/google/android/gms/internal/ads/dy;->d:I

    .line 410
    .line 411
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 412
    .line 413
    .line 414
    invoke-virtual {v10}, LA1/x;->f()V

    .line 415
    .line 416
    .line 417
    goto :goto_4

    .line 418
    :cond_7
    iget-boolean v1, v9, LA1/x;->c:Z

    .line 419
    .line 420
    if-eqz v1, :cond_8

    .line 421
    .line 422
    iget-object v1, v9, LA1/x;->d:[B

    .line 423
    .line 424
    iget v4, v9, LA1/x;->e:I

    .line 425
    .line 426
    new-instance v5, Lcom/google/android/gms/internal/ads/f0;

    .line 427
    .line 428
    const/4 v6, 0x4

    .line 429
    invoke-direct {v5, v1, v6, v4}, Lcom/google/android/gms/internal/ads/f0;-><init>([BII)V

    .line 430
    .line 431
    .line 432
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/f0;->e()I

    .line 433
    .line 434
    .line 435
    move-result v1

    .line 436
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/f0;->e()I

    .line 437
    .line 438
    .line 439
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/f0;->k()V

    .line 440
    .line 441
    .line 442
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/f0;->p()Z

    .line 443
    .line 444
    .line 445
    new-instance v4, Landroidx/leanback/widget/j;

    .line 446
    .line 447
    const/4 v5, 0x0

    .line 448
    invoke-direct {v4, v1, v5}, Landroidx/leanback/widget/j;-><init>(ILa/r;)V

    .line 449
    .line 450
    .line 451
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/L2;->i:Lcom/google/android/gms/internal/ads/K2;

    .line 452
    .line 453
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/K2;->c:Landroid/util/SparseArray;

    .line 454
    .line 455
    iget v5, v4, Landroidx/leanback/widget/j;->H:I

    .line 456
    .line 457
    invoke-virtual {v1, v5, v4}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 458
    .line 459
    .line 460
    invoke-virtual {v9}, LA1/x;->f()V

    .line 461
    .line 462
    .line 463
    :cond_8
    :goto_4
    invoke-virtual {v8, v2}, LA1/x;->h(I)Z

    .line 464
    .line 465
    .line 466
    move-result v1

    .line 467
    if-eqz v1, :cond_9

    .line 468
    .line 469
    iget-object v1, v8, LA1/x;->d:[B

    .line 470
    .line 471
    iget v2, v8, LA1/x;->e:I

    .line 472
    .line 473
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/sy;->b([BI)I

    .line 474
    .line 475
    .line 476
    move-result v1

    .line 477
    iget-object v2, v8, LA1/x;->d:[B

    .line 478
    .line 479
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/L2;->m:Lcom/google/android/gms/internal/ads/jr;

    .line 480
    .line 481
    invoke-virtual {v4, v1, v2}, Lcom/google/android/gms/internal/ads/jr;->h(I[B)V

    .line 482
    .line 483
    .line 484
    const/4 v1, 0x4

    .line 485
    invoke-virtual {v4, v1}, Lcom/google/android/gms/internal/ads/jr;->j(I)V

    .line 486
    .line 487
    .line 488
    iget-object v1, v3, La3/b;->J:Ljava/lang/Object;

    .line 489
    .line 490
    check-cast v1, Lcom/google/android/gms/internal/ads/W2;

    .line 491
    .line 492
    move-wide/from16 v2, v31

    .line 493
    .line 494
    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/W2;->c(JLcom/google/android/gms/internal/ads/jr;)V

    .line 495
    .line 496
    .line 497
    :cond_9
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/L2;->i:Lcom/google/android/gms/internal/ads/K2;

    .line 498
    .line 499
    iget-boolean v2, v0, Lcom/google/android/gms/internal/ads/L2;->j:Z

    .line 500
    .line 501
    iget v3, v1, Lcom/google/android/gms/internal/ads/K2;->d:I

    .line 502
    .line 503
    const/16 v4, 0x9

    .line 504
    .line 505
    if-eq v3, v4, :cond_a

    .line 506
    .line 507
    const/4 v2, 0x1

    .line 508
    goto :goto_6

    .line 509
    :cond_a
    if-eqz v2, :cond_c

    .line 510
    .line 511
    iget-boolean v2, v1, Lcom/google/android/gms/internal/ads/K2;->g:Z

    .line 512
    .line 513
    if-eqz v2, :cond_c

    .line 514
    .line 515
    iget-wide v2, v1, Lcom/google/android/gms/internal/ads/K2;->e:J

    .line 516
    .line 517
    sub-long v14, v22, v2

    .line 518
    .line 519
    long-to-int v4, v14

    .line 520
    add-int v29, v21, v4

    .line 521
    .line 522
    iget-wide v4, v1, Lcom/google/android/gms/internal/ads/K2;->i:J

    .line 523
    .line 524
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    .line 525
    .line 526
    .line 527
    .line 528
    .line 529
    cmp-long v11, v4, v6

    .line 530
    .line 531
    if-nez v11, :cond_b

    .line 532
    .line 533
    goto :goto_5

    .line 534
    :cond_b
    iget-boolean v6, v1, Lcom/google/android/gms/internal/ads/K2;->j:Z

    .line 535
    .line 536
    iget-wide v11, v1, Lcom/google/android/gms/internal/ads/K2;->h:J

    .line 537
    .line 538
    sub-long/2addr v2, v11

    .line 539
    long-to-int v3, v2

    .line 540
    const/16 v30, 0x0

    .line 541
    .line 542
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/K2;->a:Lcom/google/android/gms/internal/ads/e0;

    .line 543
    .line 544
    move-object/from16 v24, v2

    .line 545
    .line 546
    move-wide/from16 v25, v4

    .line 547
    .line 548
    move/from16 v27, v6

    .line 549
    .line 550
    move/from16 v28, v3

    .line 551
    .line 552
    invoke-interface/range {v24 .. v30}, Lcom/google/android/gms/internal/ads/e0;->b(JIIILcom/google/android/gms/internal/ads/d0;)V

    .line 553
    .line 554
    .line 555
    :cond_c
    :goto_5
    iget-wide v2, v1, Lcom/google/android/gms/internal/ads/K2;->e:J

    .line 556
    .line 557
    iput-wide v2, v1, Lcom/google/android/gms/internal/ads/K2;->h:J

    .line 558
    .line 559
    iget-wide v2, v1, Lcom/google/android/gms/internal/ads/K2;->f:J

    .line 560
    .line 561
    iput-wide v2, v1, Lcom/google/android/gms/internal/ads/K2;->i:J

    .line 562
    .line 563
    const/4 v2, 0x0

    .line 564
    iput-boolean v2, v1, Lcom/google/android/gms/internal/ads/K2;->j:Z

    .line 565
    .line 566
    const/4 v2, 0x1

    .line 567
    iput-boolean v2, v1, Lcom/google/android/gms/internal/ads/K2;->g:Z

    .line 568
    .line 569
    :goto_6
    iget-boolean v3, v1, Lcom/google/android/gms/internal/ads/K2;->k:Z

    .line 570
    .line 571
    iget-boolean v4, v1, Lcom/google/android/gms/internal/ads/K2;->j:Z

    .line 572
    .line 573
    iget v5, v1, Lcom/google/android/gms/internal/ads/K2;->d:I

    .line 574
    .line 575
    const/4 v6, 0x5

    .line 576
    if-eq v5, v6, :cond_d

    .line 577
    .line 578
    if-eqz v3, :cond_e

    .line 579
    .line 580
    if-ne v5, v2, :cond_e

    .line 581
    .line 582
    :cond_d
    const/4 v3, 0x1

    .line 583
    goto :goto_7

    .line 584
    :cond_e
    const/4 v3, 0x0

    .line 585
    :goto_7
    or-int/2addr v3, v4

    .line 586
    iput-boolean v3, v1, Lcom/google/android/gms/internal/ads/K2;->j:Z

    .line 587
    .line 588
    const/4 v1, 0x0

    .line 589
    if-eqz v3, :cond_f

    .line 590
    .line 591
    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/L2;->l:Z

    .line 592
    .line 593
    :cond_f
    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/L2;->k:J

    .line 594
    .line 595
    iget-boolean v5, v0, Lcom/google/android/gms/internal/ads/L2;->j:Z

    .line 596
    .line 597
    if-nez v5, :cond_10

    .line 598
    .line 599
    move/from16 v5, v20

    .line 600
    .line 601
    invoke-virtual {v10, v5}, LA1/x;->g(I)V

    .line 602
    .line 603
    .line 604
    invoke-virtual {v9, v5}, LA1/x;->g(I)V

    .line 605
    .line 606
    .line 607
    goto :goto_8

    .line 608
    :cond_10
    move/from16 v5, v20

    .line 609
    .line 610
    :goto_8
    invoke-virtual {v8, v5}, LA1/x;->g(I)V

    .line 611
    .line 612
    .line 613
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/L2;->i:Lcom/google/android/gms/internal/ads/K2;

    .line 614
    .line 615
    iget-boolean v7, v0, Lcom/google/android/gms/internal/ads/L2;->l:Z

    .line 616
    .line 617
    iput v5, v6, Lcom/google/android/gms/internal/ads/K2;->d:I

    .line 618
    .line 619
    iput-wide v3, v6, Lcom/google/android/gms/internal/ads/K2;->f:J

    .line 620
    .line 621
    move-wide/from16 v14, v22

    .line 622
    .line 623
    iput-wide v14, v6, Lcom/google/android/gms/internal/ads/K2;->e:J

    .line 624
    .line 625
    iput-boolean v7, v6, Lcom/google/android/gms/internal/ads/K2;->k:Z

    .line 626
    .line 627
    move/from16 v5, v17

    .line 628
    .line 629
    move/from16 v6, v18

    .line 630
    .line 631
    move-object/from16 v7, v19

    .line 632
    .line 633
    const/4 v4, 0x3

    .line 634
    goto/16 :goto_0

    .line 635
    .line 636
    :cond_11
    move/from16 v18, v6

    .line 637
    .line 638
    move-object/from16 v19, v7

    .line 639
    .line 640
    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/L2;->j:Z

    .line 641
    .line 642
    if-nez v1, :cond_12

    .line 643
    .line 644
    move/from16 v1, v18

    .line 645
    .line 646
    move-object/from16 v2, v19

    .line 647
    .line 648
    invoke-virtual {v10, v5, v2, v1}, LA1/x;->e(I[BI)V

    .line 649
    .line 650
    .line 651
    invoke-virtual {v9, v5, v2, v1}, LA1/x;->e(I[BI)V

    .line 652
    .line 653
    .line 654
    goto :goto_9

    .line 655
    :cond_12
    move/from16 v1, v18

    .line 656
    .line 657
    move-object/from16 v2, v19

    .line 658
    .line 659
    :goto_9
    invoke-virtual {v8, v5, v2, v1}, LA1/x;->e(I[BI)V

    .line 660
    .line 661
    .line 662
    return-void
.end method

.method public final c(Lcom/google/android/gms/internal/ads/N;LA1/I;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, LA1/I;->c()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, LA1/I;->d()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p2, LA1/I;->e:Ljava/lang/String;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/L2;->g:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {p2}, LA1/I;->d()V

    .line 12
    .line 13
    .line 14
    iget v0, p2, LA1/I;->d:I

    .line 15
    .line 16
    const/4 v1, 0x2

    .line 17
    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/N;->h(II)Lcom/google/android/gms/internal/ads/e0;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/L2;->h:Lcom/google/android/gms/internal/ads/e0;

    .line 22
    .line 23
    new-instance v1, Lcom/google/android/gms/internal/ads/K2;

    .line 24
    .line 25
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/K2;-><init>(Lcom/google/android/gms/internal/ads/e0;)V

    .line 26
    .line 27
    .line 28
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/L2;->i:Lcom/google/android/gms/internal/ads/K2;

    .line 29
    .line 30
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/L2;->a:La3/b;

    .line 31
    .line 32
    invoke-virtual {v0, p1, p2}, La3/b;->q(Lcom/google/android/gms/internal/ads/N;LA1/I;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public final d(IJ)V
    .locals 0

    .line 1
    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/L2;->k:J

    .line 2
    .line 3
    and-int/lit8 p1, p1, 0x2

    .line 4
    .line 5
    iget-boolean p2, p0, Lcom/google/android/gms/internal/ads/L2;->l:Z

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p1, 0x0

    .line 12
    :goto_0
    or-int/2addr p1, p2

    .line 13
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/L2;->l:Z

    .line 14
    .line 15
    return-void
.end method

.method public final zzc(Z)V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/L2;->h:Lcom/google/android/gms/internal/ads/e0;

    .line 2
    .line 3
    invoke-static {v0}, Lo3/r;->x(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    sget v0, Lcom/google/android/gms/internal/ads/Et;->a:I

    .line 7
    .line 8
    if-eqz p1, :cond_3

    .line 9
    .line 10
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/L2;->a:La3/b;

    .line 11
    .line 12
    iget-object p1, p1, La3/b;->J:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast p1, Lcom/google/android/gms/internal/ads/W2;

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/W2;->d(I)V

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/L2;->i:Lcom/google/android/gms/internal/ads/K2;

    .line 21
    .line 22
    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/L2;->e:J

    .line 23
    .line 24
    iget-boolean v3, p1, Lcom/google/android/gms/internal/ads/K2;->k:Z

    .line 25
    .line 26
    iget-boolean v4, p1, Lcom/google/android/gms/internal/ads/K2;->j:Z

    .line 27
    .line 28
    iget v5, p1, Lcom/google/android/gms/internal/ads/K2;->d:I

    .line 29
    .line 30
    const/4 v6, 0x5

    .line 31
    const/4 v7, 0x1

    .line 32
    if-eq v5, v6, :cond_0

    .line 33
    .line 34
    if-eqz v3, :cond_1

    .line 35
    .line 36
    if-ne v5, v7, :cond_1

    .line 37
    .line 38
    :cond_0
    const/4 v0, 0x1

    .line 39
    :cond_1
    or-int v8, v4, v0

    .line 40
    .line 41
    iput-boolean v8, p1, Lcom/google/android/gms/internal/ads/K2;->j:Z

    .line 42
    .line 43
    iput-wide v1, p1, Lcom/google/android/gms/internal/ads/K2;->e:J

    .line 44
    .line 45
    iget-wide v6, p1, Lcom/google/android/gms/internal/ads/K2;->i:J

    .line 46
    .line 47
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    const/4 v0, 0x0

    .line 53
    cmp-long v5, v6, v3

    .line 54
    .line 55
    if-nez v5, :cond_2

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_2
    iget-wide v3, p1, Lcom/google/android/gms/internal/ads/K2;->h:J

    .line 59
    .line 60
    sub-long/2addr v1, v3

    .line 61
    long-to-int v9, v1

    .line 62
    const/4 v11, 0x0

    .line 63
    iget-object v5, p1, Lcom/google/android/gms/internal/ads/K2;->a:Lcom/google/android/gms/internal/ads/e0;

    .line 64
    .line 65
    move v10, v0

    .line 66
    invoke-interface/range {v5 .. v11}, Lcom/google/android/gms/internal/ads/e0;->b(JIIILcom/google/android/gms/internal/ads/d0;)V

    .line 67
    .line 68
    .line 69
    :goto_0
    iput-boolean v0, p1, Lcom/google/android/gms/internal/ads/K2;->g:Z

    .line 70
    .line 71
    :cond_3
    return-void
.end method

.method public final zze()V
    .locals 3

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/L2;->e:J

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/L2;->l:Z

    .line 7
    .line 8
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/L2;->k:J

    .line 14
    .line 15
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/L2;->f:[Z

    .line 16
    .line 17
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/sy;->g([Z)V

    .line 18
    .line 19
    .line 20
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/L2;->b:LA1/x;

    .line 21
    .line 22
    invoke-virtual {v1}, LA1/x;->f()V

    .line 23
    .line 24
    .line 25
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/L2;->c:LA1/x;

    .line 26
    .line 27
    invoke-virtual {v1}, LA1/x;->f()V

    .line 28
    .line 29
    .line 30
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/L2;->d:LA1/x;

    .line 31
    .line 32
    invoke-virtual {v1}, LA1/x;->f()V

    .line 33
    .line 34
    .line 35
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/L2;->a:La3/b;

    .line 36
    .line 37
    iget-object v1, v1, La3/b;->J:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast v1, Lcom/google/android/gms/internal/ads/W2;

    .line 40
    .line 41
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/W2;->d(I)V

    .line 42
    .line 43
    .line 44
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/L2;->i:Lcom/google/android/gms/internal/ads/K2;

    .line 45
    .line 46
    if-eqz v1, :cond_0

    .line 47
    .line 48
    iput-boolean v0, v1, Lcom/google/android/gms/internal/ads/K2;->g:Z

    .line 49
    .line 50
    :cond_0
    return-void
.end method
