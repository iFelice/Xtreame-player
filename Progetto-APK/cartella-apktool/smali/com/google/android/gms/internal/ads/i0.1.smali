.class public final Lcom/google/android/gms/internal/ads/i0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/L;


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/jr;

.field public final b:LA2/i;

.field public final c:Z

.field public final d:Lcom/google/android/gms/internal/ads/V1;

.field public e:I

.field public f:Lcom/google/android/gms/internal/ads/N;

.field public g:Lcom/google/android/gms/internal/ads/j0;

.field public h:J

.field public i:[Lcom/google/android/gms/internal/ads/l0;

.field public j:J

.field public k:Lcom/google/android/gms/internal/ads/l0;

.field public l:I

.field public m:J

.field public n:J

.field public o:I

.field public p:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/kH;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/i0;->d:Lcom/google/android/gms/internal/ads/V1;

    .line 5
    .line 6
    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/i0;->c:Z

    .line 8
    .line 9
    new-instance v0, Lcom/google/android/gms/internal/ads/jr;

    .line 10
    .line 11
    const/16 v1, 0xc

    .line 12
    .line 13
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/jr;-><init>(I)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/i0;->a:Lcom/google/android/gms/internal/ads/jr;

    .line 17
    .line 18
    new-instance v0, LA2/i;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/i0;->b:LA2/i;

    .line 24
    .line 25
    new-instance v0, LF2/G;

    .line 26
    .line 27
    invoke-direct {v0, p1}, LF2/G;-><init>(I)V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/i0;->f:Lcom/google/android/gms/internal/ads/N;

    .line 31
    .line 32
    const/4 p1, 0x0

    .line 33
    new-array p1, p1, [Lcom/google/android/gms/internal/ads/l0;

    .line 34
    .line 35
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/i0;->i:[Lcom/google/android/gms/internal/ads/l0;

    .line 36
    .line 37
    const-wide/16 v0, -0x1

    .line 38
    .line 39
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/i0;->m:J

    .line 40
    .line 41
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/i0;->n:J

    .line 42
    .line 43
    const/4 p1, -0x1

    .line 44
    iput p1, p0, Lcom/google/android/gms/internal/ads/i0;->l:I

    .line 45
    .line 46
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/i0;->h:J

    .line 52
    .line 53
    return-void
.end method


# virtual methods
.method public final c(Lcom/google/android/gms/internal/ads/M;LW0/w;)I
    .locals 29

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/i0;->j:J

    .line 6
    .line 7
    const/4 v4, 0x1

    .line 8
    const/4 v5, 0x0

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
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/M;->zzf()J

    .line 16
    .line 17
    .line 18
    move-result-wide v8

    .line 19
    cmp-long v10, v2, v8

    .line 20
    .line 21
    if-ltz v10, :cond_0

    .line 22
    .line 23
    const-wide/32 v10, 0x40000

    .line 24
    .line 25
    .line 26
    add-long/2addr v10, v8

    .line 27
    cmp-long v12, v2, v10

    .line 28
    .line 29
    if-lez v12, :cond_1

    .line 30
    .line 31
    :cond_0
    move-object/from16 v8, p2

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    sub-long/2addr v2, v8

    .line 35
    long-to-int v3, v2

    .line 36
    invoke-interface {v1, v3}, Lcom/google/android/gms/internal/ads/M;->q(I)V

    .line 37
    .line 38
    .line 39
    :cond_2
    const/4 v2, 0x0

    .line 40
    goto :goto_1

    .line 41
    :goto_0
    iput-wide v2, v8, LW0/w;->a:J

    .line 42
    .line 43
    const/4 v2, 0x1

    .line 44
    :goto_1
    iput-wide v6, v0, Lcom/google/android/gms/internal/ads/i0;->j:J

    .line 45
    .line 46
    if-eqz v2, :cond_3

    .line 47
    .line 48
    return v4

    .line 49
    :cond_3
    iget v2, v0, Lcom/google/android/gms/internal/ads/i0;->e:I

    .line 50
    .line 51
    const/4 v3, 0x0

    .line 52
    const/16 v8, 0xc

    .line 53
    .line 54
    if-eqz v2, :cond_39

    .line 55
    .line 56
    const v9, 0x6c726468

    .line 57
    .line 58
    .line 59
    const v10, 0x5453494c

    .line 60
    .line 61
    .line 62
    iget-object v11, v0, Lcom/google/android/gms/internal/ads/i0;->b:LA2/i;

    .line 63
    .line 64
    const/4 v12, 0x2

    .line 65
    iget-object v13, v0, Lcom/google/android/gms/internal/ads/i0;->a:Lcom/google/android/gms/internal/ads/jr;

    .line 66
    .line 67
    if-eq v2, v4, :cond_36

    .line 68
    .line 69
    const/4 v14, 0x3

    .line 70
    if-eq v2, v12, :cond_2a

    .line 71
    .line 72
    const v9, 0x69766f6d

    .line 73
    .line 74
    .line 75
    const/4 v15, 0x4

    .line 76
    const-wide/16 v18, 0x8

    .line 77
    .line 78
    const/16 v6, 0x10

    .line 79
    .line 80
    if-eq v2, v14, :cond_22

    .line 81
    .line 82
    const/4 v7, 0x5

    .line 83
    const/16 v11, 0x8

    .line 84
    .line 85
    if-eq v2, v15, :cond_20

    .line 86
    .line 87
    if-eq v2, v7, :cond_13

    .line 88
    .line 89
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/M;->zzf()J

    .line 90
    .line 91
    .line 92
    move-result-wide v6

    .line 93
    iget-wide v14, v0, Lcom/google/android/gms/internal/ads/i0;->n:J

    .line 94
    .line 95
    cmp-long v2, v6, v14

    .line 96
    .line 97
    if-ltz v2, :cond_4

    .line 98
    .line 99
    const/4 v5, -0x1

    .line 100
    goto/16 :goto_7

    .line 101
    .line 102
    :cond_4
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/i0;->k:Lcom/google/android/gms/internal/ads/l0;

    .line 103
    .line 104
    if-eqz v2, :cond_a

    .line 105
    .line 106
    iget v6, v2, Lcom/google/android/gms/internal/ads/l0;->g:I

    .line 107
    .line 108
    iget-object v7, v2, Lcom/google/android/gms/internal/ads/l0;->a:Lcom/google/android/gms/internal/ads/e0;

    .line 109
    .line 110
    invoke-interface {v7, v1, v6, v5}, Lcom/google/android/gms/internal/ads/e0;->e(Lcom/google/android/gms/internal/ads/HL;IZ)I

    .line 111
    .line 112
    .line 113
    move-result v1

    .line 114
    sub-int/2addr v6, v1

    .line 115
    iput v6, v2, Lcom/google/android/gms/internal/ads/l0;->g:I

    .line 116
    .line 117
    if-nez v6, :cond_5

    .line 118
    .line 119
    const/4 v1, 0x1

    .line 120
    goto :goto_2

    .line 121
    :cond_5
    const/4 v1, 0x0

    .line 122
    :goto_2
    if-eqz v1, :cond_8

    .line 123
    .line 124
    iget v6, v2, Lcom/google/android/gms/internal/ads/l0;->f:I

    .line 125
    .line 126
    if-lez v6, :cond_7

    .line 127
    .line 128
    iget v6, v2, Lcom/google/android/gms/internal/ads/l0;->h:I

    .line 129
    .line 130
    iget-wide v7, v2, Lcom/google/android/gms/internal/ads/l0;->d:J

    .line 131
    .line 132
    int-to-long v9, v6

    .line 133
    mul-long v7, v7, v9

    .line 134
    .line 135
    iget v9, v2, Lcom/google/android/gms/internal/ads/l0;->e:I

    .line 136
    .line 137
    int-to-long v9, v9

    .line 138
    div-long v12, v7, v9

    .line 139
    .line 140
    iget-object v7, v2, Lcom/google/android/gms/internal/ads/l0;->m:[I

    .line 141
    .line 142
    invoke-static {v7, v6}, Ljava/util/Arrays;->binarySearch([II)I

    .line 143
    .line 144
    .line 145
    move-result v6

    .line 146
    if-ltz v6, :cond_6

    .line 147
    .line 148
    const/4 v14, 0x1

    .line 149
    goto :goto_3

    .line 150
    :cond_6
    const/4 v14, 0x0

    .line 151
    :goto_3
    iget v15, v2, Lcom/google/android/gms/internal/ads/l0;->f:I

    .line 152
    .line 153
    iget-object v11, v2, Lcom/google/android/gms/internal/ads/l0;->a:Lcom/google/android/gms/internal/ads/e0;

    .line 154
    .line 155
    const/16 v16, 0x0

    .line 156
    .line 157
    const/16 v17, 0x0

    .line 158
    .line 159
    invoke-interface/range {v11 .. v17}, Lcom/google/android/gms/internal/ads/e0;->b(JIIILcom/google/android/gms/internal/ads/d0;)V

    .line 160
    .line 161
    .line 162
    :cond_7
    iget v6, v2, Lcom/google/android/gms/internal/ads/l0;->h:I

    .line 163
    .line 164
    add-int/2addr v6, v4

    .line 165
    iput v6, v2, Lcom/google/android/gms/internal/ads/l0;->h:I

    .line 166
    .line 167
    :cond_8
    if-nez v1, :cond_9

    .line 168
    .line 169
    goto/16 :goto_7

    .line 170
    .line 171
    :cond_9
    iput-object v3, v0, Lcom/google/android/gms/internal/ads/i0;->k:Lcom/google/android/gms/internal/ads/l0;

    .line 172
    .line 173
    return v5

    .line 174
    :cond_a
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/M;->zzf()J

    .line 175
    .line 176
    .line 177
    move-result-wide v6

    .line 178
    const-wide/16 v14, 0x1

    .line 179
    .line 180
    and-long/2addr v6, v14

    .line 181
    cmp-long v2, v6, v14

    .line 182
    .line 183
    if-nez v2, :cond_b

    .line 184
    .line 185
    invoke-interface {v1, v4}, Lcom/google/android/gms/internal/ads/M;->q(I)V

    .line 186
    .line 187
    .line 188
    :cond_b
    iget-object v2, v13, Lcom/google/android/gms/internal/ads/jr;->a:[B

    .line 189
    .line 190
    invoke-interface {v1, v5, v2, v8}, Lcom/google/android/gms/internal/ads/M;->g(I[BI)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {v13, v5}, Lcom/google/android/gms/internal/ads/jr;->j(I)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/jr;->s()I

    .line 197
    .line 198
    .line 199
    move-result v2

    .line 200
    if-ne v2, v10, :cond_d

    .line 201
    .line 202
    invoke-virtual {v13, v11}, Lcom/google/android/gms/internal/ads/jr;->j(I)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/jr;->s()I

    .line 206
    .line 207
    .line 208
    move-result v2

    .line 209
    if-ne v2, v9, :cond_c

    .line 210
    .line 211
    goto :goto_4

    .line 212
    :cond_c
    const/16 v8, 0x8

    .line 213
    .line 214
    :goto_4
    invoke-interface {v1, v8}, Lcom/google/android/gms/internal/ads/M;->q(I)V

    .line 215
    .line 216
    .line 217
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/M;->zzj()V

    .line 218
    .line 219
    .line 220
    goto :goto_7

    .line 221
    :cond_d
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/jr;->s()I

    .line 222
    .line 223
    .line 224
    move-result v4

    .line 225
    const v6, 0x4b4e554a    # 1.352225E7f

    .line 226
    .line 227
    .line 228
    if-ne v2, v6, :cond_e

    .line 229
    .line 230
    int-to-long v2, v4

    .line 231
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/M;->zzf()J

    .line 232
    .line 233
    .line 234
    move-result-wide v6

    .line 235
    add-long/2addr v6, v2

    .line 236
    add-long v6, v6, v18

    .line 237
    .line 238
    iput-wide v6, v0, Lcom/google/android/gms/internal/ads/i0;->j:J

    .line 239
    .line 240
    goto :goto_7

    .line 241
    :cond_e
    invoke-interface {v1, v11}, Lcom/google/android/gms/internal/ads/M;->q(I)V

    .line 242
    .line 243
    .line 244
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/M;->zzj()V

    .line 245
    .line 246
    .line 247
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/i0;->i:[Lcom/google/android/gms/internal/ads/l0;

    .line 248
    .line 249
    array-length v7, v6

    .line 250
    const/4 v8, 0x0

    .line 251
    :goto_5
    if-ge v8, v7, :cond_11

    .line 252
    .line 253
    aget-object v9, v6, v8

    .line 254
    .line 255
    iget v10, v9, Lcom/google/android/gms/internal/ads/l0;->b:I

    .line 256
    .line 257
    if-eq v10, v2, :cond_10

    .line 258
    .line 259
    iget v10, v9, Lcom/google/android/gms/internal/ads/l0;->c:I

    .line 260
    .line 261
    if-ne v10, v2, :cond_f

    .line 262
    .line 263
    goto :goto_6

    .line 264
    :cond_f
    add-int/lit8 v8, v8, 0x1

    .line 265
    .line 266
    goto :goto_5

    .line 267
    :cond_10
    :goto_6
    move-object v3, v9

    .line 268
    :cond_11
    if-nez v3, :cond_12

    .line 269
    .line 270
    int-to-long v2, v4

    .line 271
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/M;->zzf()J

    .line 272
    .line 273
    .line 274
    move-result-wide v6

    .line 275
    add-long/2addr v6, v2

    .line 276
    iput-wide v6, v0, Lcom/google/android/gms/internal/ads/i0;->j:J

    .line 277
    .line 278
    goto :goto_7

    .line 279
    :cond_12
    iput v4, v3, Lcom/google/android/gms/internal/ads/l0;->f:I

    .line 280
    .line 281
    iput v4, v3, Lcom/google/android/gms/internal/ads/l0;->g:I

    .line 282
    .line 283
    iput-object v3, v0, Lcom/google/android/gms/internal/ads/i0;->k:Lcom/google/android/gms/internal/ads/l0;

    .line 284
    .line 285
    :goto_7
    return v5

    .line 286
    :cond_13
    new-instance v2, Lcom/google/android/gms/internal/ads/jr;

    .line 287
    .line 288
    iget v7, v0, Lcom/google/android/gms/internal/ads/i0;->o:I

    .line 289
    .line 290
    invoke-direct {v2, v7}, Lcom/google/android/gms/internal/ads/jr;-><init>(I)V

    .line 291
    .line 292
    .line 293
    iget-object v7, v2, Lcom/google/android/gms/internal/ads/jr;->a:[B

    .line 294
    .line 295
    iget v8, v0, Lcom/google/android/gms/internal/ads/i0;->o:I

    .line 296
    .line 297
    invoke-interface {v1, v5, v7, v8}, Lcom/google/android/gms/internal/ads/M;->h(I[BI)V

    .line 298
    .line 299
    .line 300
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/jr;->o()I

    .line 301
    .line 302
    .line 303
    move-result v1

    .line 304
    if-ge v1, v6, :cond_14

    .line 305
    .line 306
    const-wide/16 v20, 0x0

    .line 307
    .line 308
    goto :goto_9

    .line 309
    :cond_14
    iget v1, v2, Lcom/google/android/gms/internal/ads/jr;->b:I

    .line 310
    .line 311
    invoke-virtual {v2, v11}, Lcom/google/android/gms/internal/ads/jr;->k(I)V

    .line 312
    .line 313
    .line 314
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/jr;->s()I

    .line 315
    .line 316
    .line 317
    move-result v7

    .line 318
    int-to-long v7, v7

    .line 319
    iget-wide v9, v0, Lcom/google/android/gms/internal/ads/i0;->m:J

    .line 320
    .line 321
    cmp-long v11, v7, v9

    .line 322
    .line 323
    if-lez v11, :cond_15

    .line 324
    .line 325
    const-wide/16 v20, 0x0

    .line 326
    .line 327
    goto :goto_8

    .line 328
    :cond_15
    add-long v7, v9, v18

    .line 329
    .line 330
    move-wide/from16 v20, v7

    .line 331
    .line 332
    :goto_8
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/jr;->j(I)V

    .line 333
    .line 334
    .line 335
    :goto_9
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/jr;->o()I

    .line 336
    .line 337
    .line 338
    move-result v1

    .line 339
    if-lt v1, v6, :cond_1e

    .line 340
    .line 341
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/jr;->s()I

    .line 342
    .line 343
    .line 344
    move-result v1

    .line 345
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/jr;->s()I

    .line 346
    .line 347
    .line 348
    move-result v7

    .line 349
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/jr;->s()I

    .line 350
    .line 351
    .line 352
    move-result v8

    .line 353
    int-to-long v8, v8

    .line 354
    add-long v8, v8, v20

    .line 355
    .line 356
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/jr;->s()I

    .line 357
    .line 358
    .line 359
    iget-object v10, v0, Lcom/google/android/gms/internal/ads/i0;->i:[Lcom/google/android/gms/internal/ads/l0;

    .line 360
    .line 361
    array-length v11, v10

    .line 362
    const/4 v13, 0x0

    .line 363
    :goto_a
    if-ge v13, v11, :cond_17

    .line 364
    .line 365
    aget-object v15, v10, v13

    .line 366
    .line 367
    iget v3, v15, Lcom/google/android/gms/internal/ads/l0;->b:I

    .line 368
    .line 369
    if-eq v3, v1, :cond_18

    .line 370
    .line 371
    iget v3, v15, Lcom/google/android/gms/internal/ads/l0;->c:I

    .line 372
    .line 373
    if-ne v3, v1, :cond_16

    .line 374
    .line 375
    goto :goto_b

    .line 376
    :cond_16
    add-int/lit8 v13, v13, 0x1

    .line 377
    .line 378
    const/4 v3, 0x0

    .line 379
    goto :goto_a

    .line 380
    :cond_17
    const/4 v15, 0x0

    .line 381
    :cond_18
    :goto_b
    if-eqz v15, :cond_1d

    .line 382
    .line 383
    and-int/lit8 v1, v7, 0x10

    .line 384
    .line 385
    if-ne v1, v6, :cond_19

    .line 386
    .line 387
    const/4 v1, 0x1

    .line 388
    goto :goto_c

    .line 389
    :cond_19
    const/4 v1, 0x0

    .line 390
    :goto_c
    iget-wide v10, v15, Lcom/google/android/gms/internal/ads/l0;->k:J

    .line 391
    .line 392
    const-wide/16 v16, -0x1

    .line 393
    .line 394
    cmp-long v3, v10, v16

    .line 395
    .line 396
    if-nez v3, :cond_1a

    .line 397
    .line 398
    iput-wide v8, v15, Lcom/google/android/gms/internal/ads/l0;->k:J

    .line 399
    .line 400
    :cond_1a
    if-eqz v1, :cond_1c

    .line 401
    .line 402
    iget v1, v15, Lcom/google/android/gms/internal/ads/l0;->j:I

    .line 403
    .line 404
    iget-object v3, v15, Lcom/google/android/gms/internal/ads/l0;->m:[I

    .line 405
    .line 406
    array-length v3, v3

    .line 407
    if-ne v1, v3, :cond_1b

    .line 408
    .line 409
    iget-object v1, v15, Lcom/google/android/gms/internal/ads/l0;->l:[J

    .line 410
    .line 411
    array-length v3, v1

    .line 412
    mul-int/lit8 v3, v3, 0x3

    .line 413
    .line 414
    div-int/2addr v3, v12

    .line 415
    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([JI)[J

    .line 416
    .line 417
    .line 418
    move-result-object v1

    .line 419
    iput-object v1, v15, Lcom/google/android/gms/internal/ads/l0;->l:[J

    .line 420
    .line 421
    iget-object v1, v15, Lcom/google/android/gms/internal/ads/l0;->m:[I

    .line 422
    .line 423
    array-length v3, v1

    .line 424
    mul-int/lit8 v3, v3, 0x3

    .line 425
    .line 426
    div-int/2addr v3, v12

    .line 427
    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([II)[I

    .line 428
    .line 429
    .line 430
    move-result-object v1

    .line 431
    iput-object v1, v15, Lcom/google/android/gms/internal/ads/l0;->m:[I

    .line 432
    .line 433
    :cond_1b
    iget-object v1, v15, Lcom/google/android/gms/internal/ads/l0;->l:[J

    .line 434
    .line 435
    iget v3, v15, Lcom/google/android/gms/internal/ads/l0;->j:I

    .line 436
    .line 437
    aput-wide v8, v1, v3

    .line 438
    .line 439
    iget-object v1, v15, Lcom/google/android/gms/internal/ads/l0;->m:[I

    .line 440
    .line 441
    iget v7, v15, Lcom/google/android/gms/internal/ads/l0;->i:I

    .line 442
    .line 443
    aput v7, v1, v3

    .line 444
    .line 445
    add-int/2addr v3, v4

    .line 446
    iput v3, v15, Lcom/google/android/gms/internal/ads/l0;->j:I

    .line 447
    .line 448
    :cond_1c
    iget v1, v15, Lcom/google/android/gms/internal/ads/l0;->i:I

    .line 449
    .line 450
    add-int/2addr v1, v4

    .line 451
    iput v1, v15, Lcom/google/android/gms/internal/ads/l0;->i:I

    .line 452
    .line 453
    :cond_1d
    const/4 v3, 0x0

    .line 454
    goto :goto_9

    .line 455
    :cond_1e
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/i0;->i:[Lcom/google/android/gms/internal/ads/l0;

    .line 456
    .line 457
    array-length v2, v1

    .line 458
    const/4 v3, 0x0

    .line 459
    :goto_d
    if-ge v3, v2, :cond_1f

    .line 460
    .line 461
    aget-object v6, v1, v3

    .line 462
    .line 463
    iget-object v7, v6, Lcom/google/android/gms/internal/ads/l0;->l:[J

    .line 464
    .line 465
    iget v8, v6, Lcom/google/android/gms/internal/ads/l0;->j:I

    .line 466
    .line 467
    invoke-static {v7, v8}, Ljava/util/Arrays;->copyOf([JI)[J

    .line 468
    .line 469
    .line 470
    move-result-object v7

    .line 471
    iput-object v7, v6, Lcom/google/android/gms/internal/ads/l0;->l:[J

    .line 472
    .line 473
    iget-object v7, v6, Lcom/google/android/gms/internal/ads/l0;->m:[I

    .line 474
    .line 475
    iget v8, v6, Lcom/google/android/gms/internal/ads/l0;->j:I

    .line 476
    .line 477
    invoke-static {v7, v8}, Ljava/util/Arrays;->copyOf([II)[I

    .line 478
    .line 479
    .line 480
    move-result-object v7

    .line 481
    iput-object v7, v6, Lcom/google/android/gms/internal/ads/l0;->m:[I

    .line 482
    .line 483
    add-int/lit8 v3, v3, 0x1

    .line 484
    .line 485
    goto :goto_d

    .line 486
    :cond_1f
    iput-boolean v4, v0, Lcom/google/android/gms/internal/ads/i0;->p:Z

    .line 487
    .line 488
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/i0;->f:Lcom/google/android/gms/internal/ads/N;

    .line 489
    .line 490
    new-instance v2, Lcom/google/android/gms/internal/ads/P;

    .line 491
    .line 492
    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/i0;->h:J

    .line 493
    .line 494
    invoke-direct {v2, v0, v12, v3, v4}, Lcom/google/android/gms/internal/ads/P;-><init>(Ljava/lang/Object;IJ)V

    .line 495
    .line 496
    .line 497
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/N;->g(Lcom/google/android/gms/internal/ads/Y;)V

    .line 498
    .line 499
    .line 500
    const/4 v1, 0x6

    .line 501
    iput v1, v0, Lcom/google/android/gms/internal/ads/i0;->e:I

    .line 502
    .line 503
    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/i0;->m:J

    .line 504
    .line 505
    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/i0;->j:J

    .line 506
    .line 507
    return v5

    .line 508
    :cond_20
    iget-object v2, v13, Lcom/google/android/gms/internal/ads/jr;->a:[B

    .line 509
    .line 510
    invoke-interface {v1, v5, v2, v11}, Lcom/google/android/gms/internal/ads/M;->h(I[BI)V

    .line 511
    .line 512
    .line 513
    invoke-virtual {v13, v5}, Lcom/google/android/gms/internal/ads/jr;->j(I)V

    .line 514
    .line 515
    .line 516
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/jr;->s()I

    .line 517
    .line 518
    .line 519
    move-result v2

    .line 520
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/jr;->s()I

    .line 521
    .line 522
    .line 523
    move-result v3

    .line 524
    const v4, 0x31786469

    .line 525
    .line 526
    .line 527
    if-ne v2, v4, :cond_21

    .line 528
    .line 529
    iput v7, v0, Lcom/google/android/gms/internal/ads/i0;->e:I

    .line 530
    .line 531
    iput v3, v0, Lcom/google/android/gms/internal/ads/i0;->o:I

    .line 532
    .line 533
    goto :goto_e

    .line 534
    :cond_21
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/M;->zzf()J

    .line 535
    .line 536
    .line 537
    move-result-wide v1

    .line 538
    int-to-long v3, v3

    .line 539
    add-long/2addr v1, v3

    .line 540
    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/i0;->j:J

    .line 541
    .line 542
    :goto_e
    return v5

    .line 543
    :cond_22
    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/i0;->m:J

    .line 544
    .line 545
    const-wide/16 v16, -0x1

    .line 546
    .line 547
    cmp-long v7, v2, v16

    .line 548
    .line 549
    if-eqz v7, :cond_24

    .line 550
    .line 551
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/M;->zzf()J

    .line 552
    .line 553
    .line 554
    move-result-wide v16

    .line 555
    cmp-long v7, v16, v2

    .line 556
    .line 557
    if-nez v7, :cond_23

    .line 558
    .line 559
    goto :goto_f

    .line 560
    :cond_23
    iput-wide v2, v0, Lcom/google/android/gms/internal/ads/i0;->j:J

    .line 561
    .line 562
    return v5

    .line 563
    :cond_24
    :goto_f
    iget-object v2, v13, Lcom/google/android/gms/internal/ads/jr;->a:[B

    .line 564
    .line 565
    invoke-interface {v1, v5, v2, v8}, Lcom/google/android/gms/internal/ads/M;->g(I[BI)V

    .line 566
    .line 567
    .line 568
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/M;->zzj()V

    .line 569
    .line 570
    .line 571
    invoke-virtual {v13, v5}, Lcom/google/android/gms/internal/ads/jr;->j(I)V

    .line 572
    .line 573
    .line 574
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 575
    .line 576
    .line 577
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/jr;->s()I

    .line 578
    .line 579
    .line 580
    move-result v2

    .line 581
    iput v2, v11, LA2/i;->a:I

    .line 582
    .line 583
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/jr;->s()I

    .line 584
    .line 585
    .line 586
    move-result v2

    .line 587
    iput v2, v11, LA2/i;->b:I

    .line 588
    .line 589
    iput v5, v11, LA2/i;->c:I

    .line 590
    .line 591
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/jr;->s()I

    .line 592
    .line 593
    .line 594
    move-result v2

    .line 595
    iget v3, v11, LA2/i;->a:I

    .line 596
    .line 597
    const v7, 0x46464952

    .line 598
    .line 599
    .line 600
    if-ne v3, v7, :cond_25

    .line 601
    .line 602
    invoke-interface {v1, v8}, Lcom/google/android/gms/internal/ads/M;->q(I)V

    .line 603
    .line 604
    .line 605
    return v5

    .line 606
    :cond_25
    if-ne v3, v10, :cond_29

    .line 607
    .line 608
    if-eq v2, v9, :cond_26

    .line 609
    .line 610
    goto :goto_11

    .line 611
    :cond_26
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/M;->zzf()J

    .line 612
    .line 613
    .line 614
    move-result-wide v2

    .line 615
    iput-wide v2, v0, Lcom/google/android/gms/internal/ads/i0;->m:J

    .line 616
    .line 617
    iget v7, v11, LA2/i;->b:I

    .line 618
    .line 619
    int-to-long v7, v7

    .line 620
    add-long/2addr v2, v7

    .line 621
    add-long v2, v2, v18

    .line 622
    .line 623
    iput-wide v2, v0, Lcom/google/android/gms/internal/ads/i0;->n:J

    .line 624
    .line 625
    iget-boolean v7, v0, Lcom/google/android/gms/internal/ads/i0;->p:Z

    .line 626
    .line 627
    if-nez v7, :cond_28

    .line 628
    .line 629
    iget-object v7, v0, Lcom/google/android/gms/internal/ads/i0;->g:Lcom/google/android/gms/internal/ads/j0;

    .line 630
    .line 631
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 632
    .line 633
    .line 634
    iget v7, v7, Lcom/google/android/gms/internal/ads/j0;->b:I

    .line 635
    .line 636
    and-int/2addr v7, v6

    .line 637
    if-eq v7, v6, :cond_27

    .line 638
    .line 639
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/i0;->f:Lcom/google/android/gms/internal/ads/N;

    .line 640
    .line 641
    new-instance v3, Lcom/google/android/gms/internal/ads/P;

    .line 642
    .line 643
    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/i0;->h:J

    .line 644
    .line 645
    const-wide/16 v8, 0x0

    .line 646
    .line 647
    invoke-direct {v3, v6, v7, v8, v9}, Lcom/google/android/gms/internal/ads/P;-><init>(JJ)V

    .line 648
    .line 649
    .line 650
    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/ads/N;->g(Lcom/google/android/gms/internal/ads/Y;)V

    .line 651
    .line 652
    .line 653
    iput-boolean v4, v0, Lcom/google/android/gms/internal/ads/i0;->p:Z

    .line 654
    .line 655
    goto :goto_10

    .line 656
    :cond_27
    iput v15, v0, Lcom/google/android/gms/internal/ads/i0;->e:I

    .line 657
    .line 658
    iput-wide v2, v0, Lcom/google/android/gms/internal/ads/i0;->j:J

    .line 659
    .line 660
    return v5

    .line 661
    :cond_28
    :goto_10
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/M;->zzf()J

    .line 662
    .line 663
    .line 664
    move-result-wide v1

    .line 665
    const-wide/16 v3, 0xc

    .line 666
    .line 667
    add-long/2addr v1, v3

    .line 668
    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/i0;->j:J

    .line 669
    .line 670
    const/4 v1, 0x6

    .line 671
    iput v1, v0, Lcom/google/android/gms/internal/ads/i0;->e:I

    .line 672
    .line 673
    return v5

    .line 674
    :cond_29
    :goto_11
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/M;->zzf()J

    .line 675
    .line 676
    .line 677
    move-result-wide v1

    .line 678
    iget v3, v11, LA2/i;->b:I

    .line 679
    .line 680
    int-to-long v3, v3

    .line 681
    add-long/2addr v1, v3

    .line 682
    add-long v1, v1, v18

    .line 683
    .line 684
    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/i0;->j:J

    .line 685
    .line 686
    return v5

    .line 687
    :cond_2a
    iget v2, v0, Lcom/google/android/gms/internal/ads/i0;->l:I

    .line 688
    .line 689
    add-int/lit8 v2, v2, -0x4

    .line 690
    .line 691
    new-instance v3, Lcom/google/android/gms/internal/ads/jr;

    .line 692
    .line 693
    invoke-direct {v3, v2}, Lcom/google/android/gms/internal/ads/jr;-><init>(I)V

    .line 694
    .line 695
    .line 696
    iget-object v6, v3, Lcom/google/android/gms/internal/ads/jr;->a:[B

    .line 697
    .line 698
    invoke-interface {v1, v5, v6, v2}, Lcom/google/android/gms/internal/ads/M;->h(I[BI)V

    .line 699
    .line 700
    .line 701
    invoke-static {v9, v3}, Lcom/google/android/gms/internal/ads/m0;->b(ILcom/google/android/gms/internal/ads/jr;)Lcom/google/android/gms/internal/ads/m0;

    .line 702
    .line 703
    .line 704
    move-result-object v1

    .line 705
    iget v2, v1, Lcom/google/android/gms/internal/ads/m0;->b:I

    .line 706
    .line 707
    if-ne v2, v9, :cond_35

    .line 708
    .line 709
    const-class v2, Lcom/google/android/gms/internal/ads/j0;

    .line 710
    .line 711
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/m0;->a(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/h0;

    .line 712
    .line 713
    .line 714
    move-result-object v2

    .line 715
    check-cast v2, Lcom/google/android/gms/internal/ads/j0;

    .line 716
    .line 717
    if-eqz v2, :cond_34

    .line 718
    .line 719
    iput-object v2, v0, Lcom/google/android/gms/internal/ads/i0;->g:Lcom/google/android/gms/internal/ads/j0;

    .line 720
    .line 721
    iget v3, v2, Lcom/google/android/gms/internal/ads/j0;->c:I

    .line 722
    .line 723
    int-to-long v6, v3

    .line 724
    iget v2, v2, Lcom/google/android/gms/internal/ads/j0;->a:I

    .line 725
    .line 726
    int-to-long v2, v2

    .line 727
    mul-long v6, v6, v2

    .line 728
    .line 729
    iput-wide v6, v0, Lcom/google/android/gms/internal/ads/i0;->h:J

    .line 730
    .line 731
    new-instance v2, Ljava/util/ArrayList;

    .line 732
    .line 733
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 734
    .line 735
    .line 736
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/m0;->a:Lcom/google/android/gms/internal/ads/uA;

    .line 737
    .line 738
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 739
    .line 740
    .line 741
    move-result v3

    .line 742
    const/4 v6, 0x0

    .line 743
    const/4 v7, 0x0

    .line 744
    :goto_12
    if-ge v6, v3, :cond_33

    .line 745
    .line 746
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 747
    .line 748
    .line 749
    move-result-object v8

    .line 750
    check-cast v8, Lcom/google/android/gms/internal/ads/h0;

    .line 751
    .line 752
    invoke-interface {v8}, Lcom/google/android/gms/internal/ads/h0;->zza()I

    .line 753
    .line 754
    .line 755
    move-result v9

    .line 756
    const v10, 0x6c727473

    .line 757
    .line 758
    .line 759
    if-ne v9, v10, :cond_32

    .line 760
    .line 761
    check-cast v8, Lcom/google/android/gms/internal/ads/m0;

    .line 762
    .line 763
    add-int/lit8 v9, v7, 0x1

    .line 764
    .line 765
    const-class v10, Lcom/google/android/gms/internal/ads/k0;

    .line 766
    .line 767
    invoke-virtual {v8, v10}, Lcom/google/android/gms/internal/ads/m0;->a(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/h0;

    .line 768
    .line 769
    .line 770
    move-result-object v10

    .line 771
    check-cast v10, Lcom/google/android/gms/internal/ads/k0;

    .line 772
    .line 773
    const-class v11, Lcom/google/android/gms/internal/ads/n0;

    .line 774
    .line 775
    invoke-virtual {v8, v11}, Lcom/google/android/gms/internal/ads/m0;->a(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/h0;

    .line 776
    .line 777
    .line 778
    move-result-object v11

    .line 779
    check-cast v11, Lcom/google/android/gms/internal/ads/n0;

    .line 780
    .line 781
    const-string v13, "AviExtractor"

    .line 782
    .line 783
    if-nez v10, :cond_2c

    .line 784
    .line 785
    const-string v7, "Missing Stream Header"

    .line 786
    .line 787
    invoke-static {v13, v7}, Lcom/google/android/gms/internal/ads/Zo;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 788
    .line 789
    .line 790
    :goto_13
    move/from16 p1, v6

    .line 791
    .line 792
    :cond_2b
    const/4 v13, 0x0

    .line 793
    goto/16 :goto_14

    .line 794
    .line 795
    :cond_2c
    if-nez v11, :cond_2d

    .line 796
    .line 797
    const-string v7, "Missing Stream Format"

    .line 798
    .line 799
    invoke-static {v13, v7}, Lcom/google/android/gms/internal/ads/Zo;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 800
    .line 801
    .line 802
    goto :goto_13

    .line 803
    :cond_2d
    iget v13, v10, Lcom/google/android/gms/internal/ads/k0;->b:I

    .line 804
    .line 805
    int-to-long v14, v13

    .line 806
    const-wide/32 v16, 0xf4240

    .line 807
    .line 808
    .line 809
    mul-long v24, v14, v16

    .line 810
    .line 811
    iget v13, v10, Lcom/google/android/gms/internal/ads/k0;->c:I

    .line 812
    .line 813
    int-to-long v13, v13

    .line 814
    sget-object v28, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    .line 815
    .line 816
    iget v15, v10, Lcom/google/android/gms/internal/ads/k0;->d:I

    .line 817
    .line 818
    move/from16 p1, v6

    .line 819
    .line 820
    int-to-long v5, v15

    .line 821
    move-wide/from16 v22, v5

    .line 822
    .line 823
    move-wide/from16 v26, v13

    .line 824
    .line 825
    invoke-static/range {v22 .. v28}, Lcom/google/android/gms/internal/ads/Et;->v(JJJLjava/math/RoundingMode;)J

    .line 826
    .line 827
    .line 828
    move-result-wide v5

    .line 829
    iget-object v11, v11, Lcom/google/android/gms/internal/ads/n0;->a:Lcom/google/android/gms/internal/ads/p0;

    .line 830
    .line 831
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 832
    .line 833
    .line 834
    new-instance v13, Lcom/google/android/gms/internal/ads/K;

    .line 835
    .line 836
    invoke-direct {v13, v11}, Lcom/google/android/gms/internal/ads/K;-><init>(Lcom/google/android/gms/internal/ads/p0;)V

    .line 837
    .line 838
    .line 839
    invoke-virtual {v13, v7}, Lcom/google/android/gms/internal/ads/K;->c(I)V

    .line 840
    .line 841
    .line 842
    iget v14, v10, Lcom/google/android/gms/internal/ads/k0;->e:I

    .line 843
    .line 844
    if-eqz v14, :cond_2e

    .line 845
    .line 846
    iput v14, v13, Lcom/google/android/gms/internal/ads/K;->m:I

    .line 847
    .line 848
    :cond_2e
    const-class v14, Lcom/google/android/gms/internal/ads/o0;

    .line 849
    .line 850
    invoke-virtual {v8, v14}, Lcom/google/android/gms/internal/ads/m0;->a(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/h0;

    .line 851
    .line 852
    .line 853
    move-result-object v8

    .line 854
    check-cast v8, Lcom/google/android/gms/internal/ads/o0;

    .line 855
    .line 856
    if-eqz v8, :cond_2f

    .line 857
    .line 858
    iget-object v8, v8, Lcom/google/android/gms/internal/ads/o0;->a:Ljava/lang/String;

    .line 859
    .line 860
    iput-object v8, v13, Lcom/google/android/gms/internal/ads/K;->b:Ljava/lang/String;

    .line 861
    .line 862
    :cond_2f
    iget-object v8, v11, Lcom/google/android/gms/internal/ads/p0;->m:Ljava/lang/String;

    .line 863
    .line 864
    invoke-static {v8}, Lcom/google/android/gms/internal/ads/va;->b(Ljava/lang/String;)I

    .line 865
    .line 866
    .line 867
    move-result v8

    .line 868
    if-eq v8, v4, :cond_30

    .line 869
    .line 870
    if-ne v8, v12, :cond_2b

    .line 871
    .line 872
    const/4 v8, 0x2

    .line 873
    :cond_30
    iget-object v11, v0, Lcom/google/android/gms/internal/ads/i0;->f:Lcom/google/android/gms/internal/ads/N;

    .line 874
    .line 875
    invoke-interface {v11, v7, v8}, Lcom/google/android/gms/internal/ads/N;->h(II)Lcom/google/android/gms/internal/ads/e0;

    .line 876
    .line 877
    .line 878
    move-result-object v11

    .line 879
    new-instance v14, Lcom/google/android/gms/internal/ads/p0;

    .line 880
    .line 881
    invoke-direct {v14, v13}, Lcom/google/android/gms/internal/ads/p0;-><init>(Lcom/google/android/gms/internal/ads/K;)V

    .line 882
    .line 883
    .line 884
    invoke-interface {v11, v14}, Lcom/google/android/gms/internal/ads/e0;->d(Lcom/google/android/gms/internal/ads/p0;)V

    .line 885
    .line 886
    .line 887
    new-instance v13, Lcom/google/android/gms/internal/ads/l0;

    .line 888
    .line 889
    iget v10, v10, Lcom/google/android/gms/internal/ads/k0;->d:I

    .line 890
    .line 891
    move-object v15, v13

    .line 892
    move/from16 v16, v7

    .line 893
    .line 894
    move/from16 v17, v8

    .line 895
    .line 896
    move-wide/from16 v18, v5

    .line 897
    .line 898
    move/from16 v20, v10

    .line 899
    .line 900
    move-object/from16 v21, v11

    .line 901
    .line 902
    invoke-direct/range {v15 .. v21}, Lcom/google/android/gms/internal/ads/l0;-><init>(IIJILcom/google/android/gms/internal/ads/e0;)V

    .line 903
    .line 904
    .line 905
    iput-wide v5, v0, Lcom/google/android/gms/internal/ads/i0;->h:J

    .line 906
    .line 907
    :goto_14
    if-eqz v13, :cond_31

    .line 908
    .line 909
    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 910
    .line 911
    .line 912
    :cond_31
    move v7, v9

    .line 913
    goto :goto_15

    .line 914
    :cond_32
    move/from16 p1, v6

    .line 915
    .line 916
    :goto_15
    add-int/lit8 v6, p1, 0x1

    .line 917
    .line 918
    const/4 v5, 0x0

    .line 919
    const/4 v14, 0x3

    .line 920
    goto/16 :goto_12

    .line 921
    .line 922
    :cond_33
    new-array v1, v5, [Lcom/google/android/gms/internal/ads/l0;

    .line 923
    .line 924
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 925
    .line 926
    .line 927
    move-result-object v1

    .line 928
    check-cast v1, [Lcom/google/android/gms/internal/ads/l0;

    .line 929
    .line 930
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/i0;->i:[Lcom/google/android/gms/internal/ads/l0;

    .line 931
    .line 932
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/i0;->f:Lcom/google/android/gms/internal/ads/N;

    .line 933
    .line 934
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/N;->f()V

    .line 935
    .line 936
    .line 937
    const/4 v1, 0x3

    .line 938
    iput v1, v0, Lcom/google/android/gms/internal/ads/i0;->e:I

    .line 939
    .line 940
    return v5

    .line 941
    :cond_34
    const-string v1, "AviHeader not found"

    .line 942
    .line 943
    const/4 v3, 0x0

    .line 944
    invoke-static {v1, v3}, Lcom/google/android/gms/internal/ads/Ka;->a(Ljava/lang/String;Ljava/lang/RuntimeException;)Lcom/google/android/gms/internal/ads/Ka;

    .line 945
    .line 946
    .line 947
    move-result-object v1

    .line 948
    throw v1

    .line 949
    :cond_35
    const/4 v3, 0x0

    .line 950
    new-instance v1, Ljava/lang/StringBuilder;

    .line 951
    .line 952
    const-string v4, "Unexpected header list type "

    .line 953
    .line 954
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 955
    .line 956
    .line 957
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 958
    .line 959
    .line 960
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 961
    .line 962
    .line 963
    move-result-object v1

    .line 964
    invoke-static {v1, v3}, Lcom/google/android/gms/internal/ads/Ka;->a(Ljava/lang/String;Ljava/lang/RuntimeException;)Lcom/google/android/gms/internal/ads/Ka;

    .line 965
    .line 966
    .line 967
    move-result-object v1

    .line 968
    throw v1

    .line 969
    :cond_36
    iget-object v2, v13, Lcom/google/android/gms/internal/ads/jr;->a:[B

    .line 970
    .line 971
    const/4 v3, 0x0

    .line 972
    invoke-interface {v1, v3, v2, v8}, Lcom/google/android/gms/internal/ads/M;->h(I[BI)V

    .line 973
    .line 974
    .line 975
    invoke-virtual {v13, v3}, Lcom/google/android/gms/internal/ads/jr;->j(I)V

    .line 976
    .line 977
    .line 978
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 979
    .line 980
    .line 981
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/jr;->s()I

    .line 982
    .line 983
    .line 984
    move-result v1

    .line 985
    iput v1, v11, LA2/i;->a:I

    .line 986
    .line 987
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/jr;->s()I

    .line 988
    .line 989
    .line 990
    move-result v1

    .line 991
    iput v1, v11, LA2/i;->b:I

    .line 992
    .line 993
    iput v3, v11, LA2/i;->c:I

    .line 994
    .line 995
    iget v1, v11, LA2/i;->a:I

    .line 996
    .line 997
    if-ne v1, v10, :cond_38

    .line 998
    .line 999
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/jr;->s()I

    .line 1000
    .line 1001
    .line 1002
    move-result v1

    .line 1003
    iput v1, v11, LA2/i;->c:I

    .line 1004
    .line 1005
    if-ne v1, v9, :cond_37

    .line 1006
    .line 1007
    iget v1, v11, LA2/i;->b:I

    .line 1008
    .line 1009
    iput v1, v0, Lcom/google/android/gms/internal/ads/i0;->l:I

    .line 1010
    .line 1011
    iput v12, v0, Lcom/google/android/gms/internal/ads/i0;->e:I

    .line 1012
    .line 1013
    return v3

    .line 1014
    :cond_37
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1015
    .line 1016
    const-string v3, "hdrl expected, found: "

    .line 1017
    .line 1018
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1019
    .line 1020
    .line 1021
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1022
    .line 1023
    .line 1024
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1025
    .line 1026
    .line 1027
    move-result-object v1

    .line 1028
    const/4 v2, 0x0

    .line 1029
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/Ka;->a(Ljava/lang/String;Ljava/lang/RuntimeException;)Lcom/google/android/gms/internal/ads/Ka;

    .line 1030
    .line 1031
    .line 1032
    move-result-object v1

    .line 1033
    throw v1

    .line 1034
    :cond_38
    const/4 v2, 0x0

    .line 1035
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1036
    .line 1037
    const-string v4, "LIST expected, found: "

    .line 1038
    .line 1039
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1040
    .line 1041
    .line 1042
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1043
    .line 1044
    .line 1045
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1046
    .line 1047
    .line 1048
    move-result-object v1

    .line 1049
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/Ka;->a(Ljava/lang/String;Ljava/lang/RuntimeException;)Lcom/google/android/gms/internal/ads/Ka;

    .line 1050
    .line 1051
    .line 1052
    move-result-object v1

    .line 1053
    throw v1

    .line 1054
    :cond_39
    move-object v2, v3

    .line 1055
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/internal/ads/i0;->d(Lcom/google/android/gms/internal/ads/M;)Z

    .line 1056
    .line 1057
    .line 1058
    move-result v3

    .line 1059
    if-eqz v3, :cond_3a

    .line 1060
    .line 1061
    invoke-interface {v1, v8}, Lcom/google/android/gms/internal/ads/M;->q(I)V

    .line 1062
    .line 1063
    .line 1064
    iput v4, v0, Lcom/google/android/gms/internal/ads/i0;->e:I

    .line 1065
    .line 1066
    const/4 v1, 0x0

    .line 1067
    return v1

    .line 1068
    :cond_3a
    const-string v1, "AVI Header List not found"

    .line 1069
    .line 1070
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/Ka;->a(Ljava/lang/String;Ljava/lang/RuntimeException;)Lcom/google/android/gms/internal/ads/Ka;

    .line 1071
    .line 1072
    .line 1073
    move-result-object v1

    .line 1074
    throw v1
.end method

.method public final d(Lcom/google/android/gms/internal/ads/M;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/i0;->a:Lcom/google/android/gms/internal/ads/jr;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/jr;->a:[B

    .line 4
    .line 5
    const/16 v2, 0xc

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    invoke-interface {p1, v3, v1, v2}, Lcom/google/android/gms/internal/ads/M;->g(I[BI)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/jr;->j(I)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/jr;->s()I

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
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/jr;->k(I)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/jr;->s()I

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
    const/4 p1, 0x1

    .line 38
    return p1

    .line 39
    :cond_1
    return v3
.end method

.method public final e(JJ)V
    .locals 5

    .line 1
    const-wide/16 p3, -0x1

    .line 2
    .line 3
    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/i0;->j:J

    .line 4
    .line 5
    const/4 p3, 0x0

    .line 6
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/i0;->k:Lcom/google/android/gms/internal/ads/l0;

    .line 7
    .line 8
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/i0;->i:[Lcom/google/android/gms/internal/ads/l0;

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
    iget v3, v2, Lcom/google/android/gms/internal/ads/l0;->j:I

    .line 18
    .line 19
    if-nez v3, :cond_0

    .line 20
    .line 21
    iput v0, v2, Lcom/google/android/gms/internal/ads/l0;->h:I

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_0
    iget-object v3, v2, Lcom/google/android/gms/internal/ads/l0;->l:[J

    .line 25
    .line 26
    const/4 v4, 0x1

    .line 27
    invoke-static {v3, p1, p2, v4}, Lcom/google/android/gms/internal/ads/Et;->k([JJZ)I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    iget-object v4, v2, Lcom/google/android/gms/internal/ads/l0;->m:[I

    .line 32
    .line 33
    aget v3, v4, v3

    .line 34
    .line 35
    iput v3, v2, Lcom/google/android/gms/internal/ads/l0;->h:I

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
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/i0;->i:[Lcom/google/android/gms/internal/ads/l0;

    .line 47
    .line 48
    array-length p1, p1

    .line 49
    if-nez p1, :cond_2

    .line 50
    .line 51
    goto :goto_2

    .line 52
    :cond_2
    const/4 v0, 0x3

    .line 53
    :goto_2
    iput v0, p0, Lcom/google/android/gms/internal/ads/i0;->e:I

    .line 54
    .line 55
    return-void

    .line 56
    :cond_3
    const/4 p1, 0x6

    .line 57
    iput p1, p0, Lcom/google/android/gms/internal/ads/i0;->e:I

    .line 58
    .line 59
    return-void
.end method

.method public final f(Lcom/google/android/gms/internal/ads/N;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/google/android/gms/internal/ads/i0;->e:I

    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/i0;->c:Z

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    new-instance v0, Lcom/google/android/gms/internal/ads/X1;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/i0;->d:Lcom/google/android/gms/internal/ads/V1;

    .line 11
    .line 12
    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/ads/X1;-><init>(Lcom/google/android/gms/internal/ads/N;Lcom/google/android/gms/internal/ads/V1;)V

    .line 13
    .line 14
    .line 15
    move-object p1, v0

    .line 16
    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/i0;->f:Lcom/google/android/gms/internal/ads/N;

    .line 17
    .line 18
    const-wide/16 v0, -0x1

    .line 19
    .line 20
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/i0;->j:J

    .line 21
    .line 22
    return-void
.end method

.method public final zzd()Ljava/util/List;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/uA;->H:Lcom/google/android/gms/internal/ads/sA;

    .line 2
    .line 3
    sget-object v0, Lcom/google/android/gms/internal/ads/PA;->K:Lcom/google/android/gms/internal/ads/PA;

    .line 4
    .line 5
    return-object v0
.end method
