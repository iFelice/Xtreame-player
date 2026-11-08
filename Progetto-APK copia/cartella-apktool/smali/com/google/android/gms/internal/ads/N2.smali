.class public final Lcom/google/android/gms/internal/ads/N2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/F2;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I

.field public final c:Lcom/google/android/gms/internal/ads/jr;

.field public final d:Lcom/google/android/gms/internal/ads/f0;

.field public e:Lcom/google/android/gms/internal/ads/e0;

.field public f:Ljava/lang/String;

.field public g:Lcom/google/android/gms/internal/ads/p0;

.field public h:I

.field public i:I

.field public j:I

.field public k:I

.field public l:J

.field public m:Z

.field public n:I

.field public o:I

.field public p:I

.field public q:Z

.field public r:J

.field public s:I

.field public t:J

.field public u:I

.field public v:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/N2;->a:Ljava/lang/String;

    .line 5
    .line 6
    iput p2, p0, Lcom/google/android/gms/internal/ads/N2;->b:I

    .line 7
    .line 8
    new-instance p1, Lcom/google/android/gms/internal/ads/jr;

    .line 9
    .line 10
    const/16 p2, 0x400

    .line 11
    .line 12
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/jr;-><init>(I)V

    .line 13
    .line 14
    .line 15
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/N2;->c:Lcom/google/android/gms/internal/ads/jr;

    .line 16
    .line 17
    new-instance p2, Lcom/google/android/gms/internal/ads/f0;

    .line 18
    .line 19
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/jr;->a:[B

    .line 20
    .line 21
    array-length v0, p1

    .line 22
    invoke-direct {p2, p1, v0}, Lcom/google/android/gms/internal/ads/f0;-><init>([BI)V

    .line 23
    .line 24
    .line 25
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/N2;->d:Lcom/google/android/gms/internal/ads/f0;

    .line 26
    .line 27
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/N2;->l:J

    .line 33
    .line 34
    return-void
.end method


# virtual methods
.method public final b(Lcom/google/android/gms/internal/ads/jr;)V
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/N2;->e:Lcom/google/android/gms/internal/ads/e0;

    .line 4
    .line 5
    invoke-static {v1}, Lo3/r;->x(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/jr;->o()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-lez v1, :cond_1e

    .line 13
    .line 14
    iget v1, v0, Lcom/google/android/gms/internal/ads/N2;->h:I

    .line 15
    .line 16
    const/4 v2, 0x1

    .line 17
    const/16 v3, 0x56

    .line 18
    .line 19
    if-eqz v1, :cond_1d

    .line 20
    .line 21
    const/4 v4, 0x0

    .line 22
    const/4 v5, 0x2

    .line 23
    if-eq v1, v2, :cond_1b

    .line 24
    .line 25
    const/4 v3, 0x3

    .line 26
    const/16 v6, 0x8

    .line 27
    .line 28
    iget-object v7, v0, Lcom/google/android/gms/internal/ads/N2;->d:Lcom/google/android/gms/internal/ads/f0;

    .line 29
    .line 30
    iget-object v8, v0, Lcom/google/android/gms/internal/ads/N2;->c:Lcom/google/android/gms/internal/ads/jr;

    .line 31
    .line 32
    if-eq v1, v5, :cond_19

    .line 33
    .line 34
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/jr;->o()I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    iget v9, v0, Lcom/google/android/gms/internal/ads/N2;->j:I

    .line 39
    .line 40
    iget v10, v0, Lcom/google/android/gms/internal/ads/N2;->i:I

    .line 41
    .line 42
    sub-int/2addr v9, v10

    .line 43
    invoke-static {v1, v9}, Ljava/lang/Math;->min(II)I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    iget-object v9, v7, Lcom/google/android/gms/internal/ads/f0;->b:[B

    .line 48
    .line 49
    iget v10, v0, Lcom/google/android/gms/internal/ads/N2;->i:I

    .line 50
    .line 51
    move-object/from16 v11, p1

    .line 52
    .line 53
    invoke-virtual {v11, v10, v9, v1}, Lcom/google/android/gms/internal/ads/jr;->f(I[BI)V

    .line 54
    .line 55
    .line 56
    iget v9, v0, Lcom/google/android/gms/internal/ads/N2;->i:I

    .line 57
    .line 58
    add-int/2addr v9, v1

    .line 59
    iput v9, v0, Lcom/google/android/gms/internal/ads/N2;->i:I

    .line 60
    .line 61
    iget v1, v0, Lcom/google/android/gms/internal/ads/N2;->j:I

    .line 62
    .line 63
    if-ne v9, v1, :cond_0

    .line 64
    .line 65
    invoke-virtual {v7, v4}, Lcom/google/android/gms/internal/ads/f0;->t(I)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/f0;->x()Z

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    const/4 v9, 0x0

    .line 73
    if-nez v1, :cond_10

    .line 74
    .line 75
    iput-boolean v2, v0, Lcom/google/android/gms/internal/ads/N2;->m:Z

    .line 76
    .line 77
    invoke-virtual {v7, v2}, Lcom/google/android/gms/internal/ads/f0;->g(I)I

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    if-ne v1, v2, :cond_1

    .line 82
    .line 83
    invoke-virtual {v7, v2}, Lcom/google/android/gms/internal/ads/f0;->g(I)I

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    const/4 v10, 0x1

    .line 88
    goto :goto_1

    .line 89
    :cond_1
    move v10, v1

    .line 90
    const/4 v1, 0x0

    .line 91
    :goto_1
    iput v1, v0, Lcom/google/android/gms/internal/ads/N2;->n:I

    .line 92
    .line 93
    if-nez v1, :cond_f

    .line 94
    .line 95
    if-ne v10, v2, :cond_2

    .line 96
    .line 97
    invoke-virtual {v7, v5}, Lcom/google/android/gms/internal/ads/f0;->g(I)I

    .line 98
    .line 99
    .line 100
    move-result v1

    .line 101
    add-int/2addr v1, v2

    .line 102
    mul-int/lit8 v1, v1, 0x8

    .line 103
    .line 104
    invoke-virtual {v7, v1}, Lcom/google/android/gms/internal/ads/f0;->g(I)I

    .line 105
    .line 106
    .line 107
    const/4 v10, 0x1

    .line 108
    :cond_2
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/f0;->x()Z

    .line 109
    .line 110
    .line 111
    move-result v1

    .line 112
    if-eqz v1, :cond_e

    .line 113
    .line 114
    const/4 v1, 0x6

    .line 115
    invoke-virtual {v7, v1}, Lcom/google/android/gms/internal/ads/f0;->g(I)I

    .line 116
    .line 117
    .line 118
    move-result v12

    .line 119
    iput v12, v0, Lcom/google/android/gms/internal/ads/N2;->o:I

    .line 120
    .line 121
    const/4 v12, 0x4

    .line 122
    invoke-virtual {v7, v12}, Lcom/google/android/gms/internal/ads/f0;->g(I)I

    .line 123
    .line 124
    .line 125
    move-result v13

    .line 126
    invoke-virtual {v7, v3}, Lcom/google/android/gms/internal/ads/f0;->g(I)I

    .line 127
    .line 128
    .line 129
    move-result v14

    .line 130
    if-nez v13, :cond_d

    .line 131
    .line 132
    if-nez v14, :cond_d

    .line 133
    .line 134
    if-nez v10, :cond_3

    .line 135
    .line 136
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/f0;->e()I

    .line 137
    .line 138
    .line 139
    move-result v13

    .line 140
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/f0;->a()I

    .line 141
    .line 142
    .line 143
    move-result v14

    .line 144
    invoke-static {v7, v2}, Lcom/google/android/gms/internal/ads/nH;->c(Lcom/google/android/gms/internal/ads/f0;Z)LW0/r;

    .line 145
    .line 146
    .line 147
    move-result-object v15

    .line 148
    iget-object v4, v15, LW0/r;->a:Ljava/lang/String;

    .line 149
    .line 150
    iput-object v4, v0, Lcom/google/android/gms/internal/ads/N2;->v:Ljava/lang/String;

    .line 151
    .line 152
    iget v4, v15, LW0/r;->b:I

    .line 153
    .line 154
    iput v4, v0, Lcom/google/android/gms/internal/ads/N2;->s:I

    .line 155
    .line 156
    iget v4, v15, LW0/r;->c:I

    .line 157
    .line 158
    iput v4, v0, Lcom/google/android/gms/internal/ads/N2;->u:I

    .line 159
    .line 160
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/f0;->a()I

    .line 161
    .line 162
    .line 163
    move-result v4

    .line 164
    sub-int/2addr v14, v4

    .line 165
    invoke-virtual {v7, v13}, Lcom/google/android/gms/internal/ads/f0;->t(I)V

    .line 166
    .line 167
    .line 168
    add-int/lit8 v4, v14, 0x7

    .line 169
    .line 170
    div-int/2addr v4, v6

    .line 171
    new-array v4, v4, [B

    .line 172
    .line 173
    invoke-virtual {v7, v4, v14}, Lcom/google/android/gms/internal/ads/f0;->o([BI)V

    .line 174
    .line 175
    .line 176
    new-instance v13, Lcom/google/android/gms/internal/ads/K;

    .line 177
    .line 178
    invoke-direct {v13}, Lcom/google/android/gms/internal/ads/K;-><init>()V

    .line 179
    .line 180
    .line 181
    iget-object v14, v0, Lcom/google/android/gms/internal/ads/N2;->f:Ljava/lang/String;

    .line 182
    .line 183
    iput-object v14, v13, Lcom/google/android/gms/internal/ads/K;->a:Ljava/lang/String;

    .line 184
    .line 185
    const-string v14, "audio/mp4a-latm"

    .line 186
    .line 187
    invoke-virtual {v13, v14}, Lcom/google/android/gms/internal/ads/K;->f(Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    iget-object v14, v0, Lcom/google/android/gms/internal/ads/N2;->v:Ljava/lang/String;

    .line 191
    .line 192
    iput-object v14, v13, Lcom/google/android/gms/internal/ads/K;->i:Ljava/lang/String;

    .line 193
    .line 194
    iget v14, v0, Lcom/google/android/gms/internal/ads/N2;->u:I

    .line 195
    .line 196
    iput v14, v13, Lcom/google/android/gms/internal/ads/K;->z:I

    .line 197
    .line 198
    iget v14, v0, Lcom/google/android/gms/internal/ads/N2;->s:I

    .line 199
    .line 200
    iput v14, v13, Lcom/google/android/gms/internal/ads/K;->A:I

    .line 201
    .line 202
    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 203
    .line 204
    .line 205
    move-result-object v4

    .line 206
    iput-object v4, v13, Lcom/google/android/gms/internal/ads/K;->o:Ljava/util/List;

    .line 207
    .line 208
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/N2;->a:Ljava/lang/String;

    .line 209
    .line 210
    iput-object v4, v13, Lcom/google/android/gms/internal/ads/K;->d:Ljava/lang/String;

    .line 211
    .line 212
    iget v4, v0, Lcom/google/android/gms/internal/ads/N2;->b:I

    .line 213
    .line 214
    iput v4, v13, Lcom/google/android/gms/internal/ads/K;->f:I

    .line 215
    .line 216
    new-instance v4, Lcom/google/android/gms/internal/ads/p0;

    .line 217
    .line 218
    invoke-direct {v4, v13}, Lcom/google/android/gms/internal/ads/p0;-><init>(Lcom/google/android/gms/internal/ads/K;)V

    .line 219
    .line 220
    .line 221
    iget-object v13, v0, Lcom/google/android/gms/internal/ads/N2;->g:Lcom/google/android/gms/internal/ads/p0;

    .line 222
    .line 223
    invoke-virtual {v4, v13}, Lcom/google/android/gms/internal/ads/p0;->equals(Ljava/lang/Object;)Z

    .line 224
    .line 225
    .line 226
    move-result v13

    .line 227
    if-nez v13, :cond_4

    .line 228
    .line 229
    iput-object v4, v0, Lcom/google/android/gms/internal/ads/N2;->g:Lcom/google/android/gms/internal/ads/p0;

    .line 230
    .line 231
    iget v13, v4, Lcom/google/android/gms/internal/ads/p0;->B:I

    .line 232
    .line 233
    int-to-long v13, v13

    .line 234
    const-wide/32 v16, 0x3d090000

    .line 235
    .line 236
    .line 237
    div-long v13, v16, v13

    .line 238
    .line 239
    iput-wide v13, v0, Lcom/google/android/gms/internal/ads/N2;->t:J

    .line 240
    .line 241
    iget-object v13, v0, Lcom/google/android/gms/internal/ads/N2;->e:Lcom/google/android/gms/internal/ads/e0;

    .line 242
    .line 243
    invoke-interface {v13, v4}, Lcom/google/android/gms/internal/ads/e0;->d(Lcom/google/android/gms/internal/ads/p0;)V

    .line 244
    .line 245
    .line 246
    goto :goto_2

    .line 247
    :cond_3
    invoke-virtual {v7, v5}, Lcom/google/android/gms/internal/ads/f0;->g(I)I

    .line 248
    .line 249
    .line 250
    move-result v4

    .line 251
    add-int/2addr v4, v2

    .line 252
    mul-int/lit8 v4, v4, 0x8

    .line 253
    .line 254
    invoke-virtual {v7, v4}, Lcom/google/android/gms/internal/ads/f0;->g(I)I

    .line 255
    .line 256
    .line 257
    move-result v4

    .line 258
    int-to-long v13, v4

    .line 259
    long-to-int v4, v13

    .line 260
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/f0;->a()I

    .line 261
    .line 262
    .line 263
    move-result v13

    .line 264
    invoke-static {v7, v2}, Lcom/google/android/gms/internal/ads/nH;->c(Lcom/google/android/gms/internal/ads/f0;Z)LW0/r;

    .line 265
    .line 266
    .line 267
    move-result-object v14

    .line 268
    iget-object v15, v14, LW0/r;->a:Ljava/lang/String;

    .line 269
    .line 270
    iput-object v15, v0, Lcom/google/android/gms/internal/ads/N2;->v:Ljava/lang/String;

    .line 271
    .line 272
    iget v15, v14, LW0/r;->b:I

    .line 273
    .line 274
    iput v15, v0, Lcom/google/android/gms/internal/ads/N2;->s:I

    .line 275
    .line 276
    iget v14, v14, LW0/r;->c:I

    .line 277
    .line 278
    iput v14, v0, Lcom/google/android/gms/internal/ads/N2;->u:I

    .line 279
    .line 280
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/f0;->a()I

    .line 281
    .line 282
    .line 283
    move-result v14

    .line 284
    sub-int/2addr v13, v14

    .line 285
    sub-int/2addr v4, v13

    .line 286
    invoke-virtual {v7, v4}, Lcom/google/android/gms/internal/ads/f0;->v(I)V

    .line 287
    .line 288
    .line 289
    :cond_4
    :goto_2
    invoke-virtual {v7, v3}, Lcom/google/android/gms/internal/ads/f0;->g(I)I

    .line 290
    .line 291
    .line 292
    move-result v4

    .line 293
    iput v4, v0, Lcom/google/android/gms/internal/ads/N2;->p:I

    .line 294
    .line 295
    if-eqz v4, :cond_9

    .line 296
    .line 297
    if-eq v4, v2, :cond_8

    .line 298
    .line 299
    if-eq v4, v3, :cond_7

    .line 300
    .line 301
    if-eq v4, v12, :cond_7

    .line 302
    .line 303
    const/4 v3, 0x5

    .line 304
    if-eq v4, v3, :cond_7

    .line 305
    .line 306
    if-eq v4, v1, :cond_6

    .line 307
    .line 308
    const/4 v1, 0x7

    .line 309
    if-ne v4, v1, :cond_5

    .line 310
    .line 311
    goto :goto_3

    .line 312
    :cond_5
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 313
    .line 314
    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 315
    .line 316
    .line 317
    throw v1

    .line 318
    :cond_6
    :goto_3
    invoke-virtual {v7, v2}, Lcom/google/android/gms/internal/ads/f0;->v(I)V

    .line 319
    .line 320
    .line 321
    goto :goto_4

    .line 322
    :cond_7
    invoke-virtual {v7, v1}, Lcom/google/android/gms/internal/ads/f0;->v(I)V

    .line 323
    .line 324
    .line 325
    goto :goto_4

    .line 326
    :cond_8
    const/16 v1, 0x9

    .line 327
    .line 328
    invoke-virtual {v7, v1}, Lcom/google/android/gms/internal/ads/f0;->v(I)V

    .line 329
    .line 330
    .line 331
    goto :goto_4

    .line 332
    :cond_9
    invoke-virtual {v7, v6}, Lcom/google/android/gms/internal/ads/f0;->v(I)V

    .line 333
    .line 334
    .line 335
    :goto_4
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/f0;->x()Z

    .line 336
    .line 337
    .line 338
    move-result v1

    .line 339
    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/N2;->q:Z

    .line 340
    .line 341
    const-wide/16 v3, 0x0

    .line 342
    .line 343
    iput-wide v3, v0, Lcom/google/android/gms/internal/ads/N2;->r:J

    .line 344
    .line 345
    if-eqz v1, :cond_c

    .line 346
    .line 347
    if-eq v10, v2, :cond_b

    .line 348
    .line 349
    :cond_a
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/f0;->x()Z

    .line 350
    .line 351
    .line 352
    move-result v1

    .line 353
    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/N2;->r:J

    .line 354
    .line 355
    shl-long/2addr v3, v6

    .line 356
    invoke-virtual {v7, v6}, Lcom/google/android/gms/internal/ads/f0;->g(I)I

    .line 357
    .line 358
    .line 359
    move-result v5

    .line 360
    int-to-long v12, v5

    .line 361
    add-long/2addr v3, v12

    .line 362
    iput-wide v3, v0, Lcom/google/android/gms/internal/ads/N2;->r:J

    .line 363
    .line 364
    if-nez v1, :cond_a

    .line 365
    .line 366
    goto :goto_5

    .line 367
    :cond_b
    invoke-virtual {v7, v5}, Lcom/google/android/gms/internal/ads/f0;->g(I)I

    .line 368
    .line 369
    .line 370
    move-result v1

    .line 371
    add-int/2addr v1, v2

    .line 372
    mul-int/lit8 v1, v1, 0x8

    .line 373
    .line 374
    invoke-virtual {v7, v1}, Lcom/google/android/gms/internal/ads/f0;->g(I)I

    .line 375
    .line 376
    .line 377
    move-result v1

    .line 378
    int-to-long v3, v1

    .line 379
    iput-wide v3, v0, Lcom/google/android/gms/internal/ads/N2;->r:J

    .line 380
    .line 381
    :cond_c
    :goto_5
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/f0;->x()Z

    .line 382
    .line 383
    .line 384
    move-result v1

    .line 385
    if-eqz v1, :cond_12

    .line 386
    .line 387
    invoke-virtual {v7, v6}, Lcom/google/android/gms/internal/ads/f0;->v(I)V

    .line 388
    .line 389
    .line 390
    goto :goto_7

    .line 391
    :cond_d
    invoke-static {v9, v9}, Lcom/google/android/gms/internal/ads/Ka;->a(Ljava/lang/String;Ljava/lang/RuntimeException;)Lcom/google/android/gms/internal/ads/Ka;

    .line 392
    .line 393
    .line 394
    move-result-object v1

    .line 395
    throw v1

    .line 396
    :cond_e
    invoke-static {v9, v9}, Lcom/google/android/gms/internal/ads/Ka;->a(Ljava/lang/String;Ljava/lang/RuntimeException;)Lcom/google/android/gms/internal/ads/Ka;

    .line 397
    .line 398
    .line 399
    move-result-object v1

    .line 400
    throw v1

    .line 401
    :cond_f
    invoke-static {v9, v9}, Lcom/google/android/gms/internal/ads/Ka;->a(Ljava/lang/String;Ljava/lang/RuntimeException;)Lcom/google/android/gms/internal/ads/Ka;

    .line 402
    .line 403
    .line 404
    move-result-object v1

    .line 405
    throw v1

    .line 406
    :cond_10
    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/N2;->m:Z

    .line 407
    .line 408
    if-nez v1, :cond_12

    .line 409
    .line 410
    :cond_11
    :goto_6
    const/4 v1, 0x0

    .line 411
    goto :goto_a

    .line 412
    :cond_12
    :goto_7
    iget v1, v0, Lcom/google/android/gms/internal/ads/N2;->n:I

    .line 413
    .line 414
    if-nez v1, :cond_18

    .line 415
    .line 416
    iget v1, v0, Lcom/google/android/gms/internal/ads/N2;->o:I

    .line 417
    .line 418
    if-nez v1, :cond_17

    .line 419
    .line 420
    iget v1, v0, Lcom/google/android/gms/internal/ads/N2;->p:I

    .line 421
    .line 422
    if-nez v1, :cond_16

    .line 423
    .line 424
    const/4 v1, 0x0

    .line 425
    :cond_13
    invoke-virtual {v7, v6}, Lcom/google/android/gms/internal/ads/f0;->g(I)I

    .line 426
    .line 427
    .line 428
    move-result v3

    .line 429
    add-int/2addr v1, v3

    .line 430
    const/16 v4, 0xff

    .line 431
    .line 432
    if-eq v3, v4, :cond_13

    .line 433
    .line 434
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/f0;->e()I

    .line 435
    .line 436
    .line 437
    move-result v3

    .line 438
    and-int/lit8 v4, v3, 0x7

    .line 439
    .line 440
    if-nez v4, :cond_14

    .line 441
    .line 442
    shr-int/lit8 v3, v3, 0x3

    .line 443
    .line 444
    invoke-virtual {v8, v3}, Lcom/google/android/gms/internal/ads/jr;->j(I)V

    .line 445
    .line 446
    .line 447
    goto :goto_8

    .line 448
    :cond_14
    mul-int/lit8 v3, v1, 0x8

    .line 449
    .line 450
    iget-object v4, v8, Lcom/google/android/gms/internal/ads/jr;->a:[B

    .line 451
    .line 452
    invoke-virtual {v7, v4, v3}, Lcom/google/android/gms/internal/ads/f0;->o([BI)V

    .line 453
    .line 454
    .line 455
    const/4 v3, 0x0

    .line 456
    invoke-virtual {v8, v3}, Lcom/google/android/gms/internal/ads/jr;->j(I)V

    .line 457
    .line 458
    .line 459
    :goto_8
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/N2;->e:Lcom/google/android/gms/internal/ads/e0;

    .line 460
    .line 461
    invoke-interface {v3, v1, v8}, Lcom/google/android/gms/internal/ads/e0;->f(ILcom/google/android/gms/internal/ads/jr;)V

    .line 462
    .line 463
    .line 464
    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/N2;->l:J

    .line 465
    .line 466
    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    .line 467
    .line 468
    .line 469
    .line 470
    .line 471
    cmp-long v8, v3, v5

    .line 472
    .line 473
    if-eqz v8, :cond_15

    .line 474
    .line 475
    goto :goto_9

    .line 476
    :cond_15
    const/4 v2, 0x0

    .line 477
    :goto_9
    invoke-static {v2}, Lo3/r;->M(Z)V

    .line 478
    .line 479
    .line 480
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/N2;->e:Lcom/google/android/gms/internal/ads/e0;

    .line 481
    .line 482
    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/N2;->l:J

    .line 483
    .line 484
    const/16 v22, 0x0

    .line 485
    .line 486
    const/16 v19, 0x1

    .line 487
    .line 488
    const/16 v21, 0x0

    .line 489
    .line 490
    move-object/from16 v16, v2

    .line 491
    .line 492
    move-wide/from16 v17, v3

    .line 493
    .line 494
    move/from16 v20, v1

    .line 495
    .line 496
    invoke-interface/range {v16 .. v22}, Lcom/google/android/gms/internal/ads/e0;->b(JIIILcom/google/android/gms/internal/ads/d0;)V

    .line 497
    .line 498
    .line 499
    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/N2;->l:J

    .line 500
    .line 501
    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/N2;->t:J

    .line 502
    .line 503
    add-long/2addr v1, v3

    .line 504
    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/N2;->l:J

    .line 505
    .line 506
    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/N2;->q:Z

    .line 507
    .line 508
    if-eqz v1, :cond_11

    .line 509
    .line 510
    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/N2;->r:J

    .line 511
    .line 512
    long-to-int v2, v1

    .line 513
    invoke-virtual {v7, v2}, Lcom/google/android/gms/internal/ads/f0;->v(I)V

    .line 514
    .line 515
    .line 516
    goto :goto_6

    .line 517
    :goto_a
    iput v1, v0, Lcom/google/android/gms/internal/ads/N2;->h:I

    .line 518
    .line 519
    goto/16 :goto_0

    .line 520
    .line 521
    :cond_16
    invoke-static {v9, v9}, Lcom/google/android/gms/internal/ads/Ka;->a(Ljava/lang/String;Ljava/lang/RuntimeException;)Lcom/google/android/gms/internal/ads/Ka;

    .line 522
    .line 523
    .line 524
    move-result-object v1

    .line 525
    throw v1

    .line 526
    :cond_17
    invoke-static {v9, v9}, Lcom/google/android/gms/internal/ads/Ka;->a(Ljava/lang/String;Ljava/lang/RuntimeException;)Lcom/google/android/gms/internal/ads/Ka;

    .line 527
    .line 528
    .line 529
    move-result-object v1

    .line 530
    throw v1

    .line 531
    :cond_18
    invoke-static {v9, v9}, Lcom/google/android/gms/internal/ads/Ka;->a(Ljava/lang/String;Ljava/lang/RuntimeException;)Lcom/google/android/gms/internal/ads/Ka;

    .line 532
    .line 533
    .line 534
    move-result-object v1

    .line 535
    throw v1

    .line 536
    :cond_19
    move-object/from16 v11, p1

    .line 537
    .line 538
    iget v1, v0, Lcom/google/android/gms/internal/ads/N2;->k:I

    .line 539
    .line 540
    and-int/lit16 v1, v1, -0xe1

    .line 541
    .line 542
    shl-int/2addr v1, v6

    .line 543
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/jr;->w()I

    .line 544
    .line 545
    .line 546
    move-result v2

    .line 547
    or-int/2addr v1, v2

    .line 548
    iput v1, v0, Lcom/google/android/gms/internal/ads/N2;->j:I

    .line 549
    .line 550
    iget-object v2, v8, Lcom/google/android/gms/internal/ads/jr;->a:[B

    .line 551
    .line 552
    array-length v2, v2

    .line 553
    if-le v1, v2, :cond_1a

    .line 554
    .line 555
    invoke-virtual {v8, v1}, Lcom/google/android/gms/internal/ads/jr;->g(I)V

    .line 556
    .line 557
    .line 558
    iget-object v1, v8, Lcom/google/android/gms/internal/ads/jr;->a:[B

    .line 559
    .line 560
    array-length v2, v1

    .line 561
    iput-object v1, v7, Lcom/google/android/gms/internal/ads/f0;->b:[B

    .line 562
    .line 563
    const/4 v1, 0x0

    .line 564
    iput v1, v7, Lcom/google/android/gms/internal/ads/f0;->c:I

    .line 565
    .line 566
    iput v1, v7, Lcom/google/android/gms/internal/ads/f0;->d:I

    .line 567
    .line 568
    iput v2, v7, Lcom/google/android/gms/internal/ads/f0;->e:I

    .line 569
    .line 570
    goto :goto_b

    .line 571
    :cond_1a
    const/4 v1, 0x0

    .line 572
    :goto_b
    iput v1, v0, Lcom/google/android/gms/internal/ads/N2;->i:I

    .line 573
    .line 574
    iput v3, v0, Lcom/google/android/gms/internal/ads/N2;->h:I

    .line 575
    .line 576
    goto/16 :goto_0

    .line 577
    .line 578
    :cond_1b
    move-object/from16 v11, p1

    .line 579
    .line 580
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/jr;->w()I

    .line 581
    .line 582
    .line 583
    move-result v1

    .line 584
    and-int/lit16 v2, v1, 0xe0

    .line 585
    .line 586
    const/16 v4, 0xe0

    .line 587
    .line 588
    if-ne v2, v4, :cond_1c

    .line 589
    .line 590
    iput v1, v0, Lcom/google/android/gms/internal/ads/N2;->k:I

    .line 591
    .line 592
    iput v5, v0, Lcom/google/android/gms/internal/ads/N2;->h:I

    .line 593
    .line 594
    goto/16 :goto_0

    .line 595
    .line 596
    :cond_1c
    if-eq v1, v3, :cond_0

    .line 597
    .line 598
    const/4 v1, 0x0

    .line 599
    iput v1, v0, Lcom/google/android/gms/internal/ads/N2;->h:I

    .line 600
    .line 601
    goto/16 :goto_0

    .line 602
    .line 603
    :cond_1d
    move-object/from16 v11, p1

    .line 604
    .line 605
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/jr;->w()I

    .line 606
    .line 607
    .line 608
    move-result v1

    .line 609
    if-ne v1, v3, :cond_0

    .line 610
    .line 611
    iput v2, v0, Lcom/google/android/gms/internal/ads/N2;->h:I

    .line 612
    .line 613
    goto/16 :goto_0

    .line 614
    .line 615
    :cond_1e
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
    iget v0, p2, LA1/I;->d:I

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/N;->h(II)Lcom/google/android/gms/internal/ads/e0;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/N2;->e:Lcom/google/android/gms/internal/ads/e0;

    .line 15
    .line 16
    invoke-virtual {p2}, LA1/I;->d()V

    .line 17
    .line 18
    .line 19
    iget-object p1, p2, LA1/I;->e:Ljava/lang/String;

    .line 20
    .line 21
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/N2;->f:Ljava/lang/String;

    .line 22
    .line 23
    return-void
.end method

.method public final d(IJ)V
    .locals 0

    .line 1
    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/N2;->l:J

    .line 2
    .line 3
    return-void
.end method

.method public final zzc(Z)V
    .locals 0

    return-void
.end method

.method public final zze()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/N2;->h:I

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/N2;->l:J

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/N2;->m:Z

    return-void
.end method
