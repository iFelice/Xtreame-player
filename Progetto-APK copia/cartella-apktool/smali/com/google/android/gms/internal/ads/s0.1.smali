.class public final Lcom/google/android/gms/internal/ads/s0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/L;


# instance fields
.field public final a:[B

.field public final b:Lcom/google/android/gms/internal/ads/jr;

.field public final c:LW0/w;

.field public d:Lcom/google/android/gms/internal/ads/N;

.field public e:Lcom/google/android/gms/internal/ads/e0;

.field public f:I

.field public g:Lcom/google/android/gms/internal/ads/Q9;

.field public h:Lcom/google/android/gms/internal/ads/Q;

.field public i:I

.field public j:I

.field public k:Lb1/a;

.field public l:I

.field public m:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x2a

    .line 5
    .line 6
    new-array v0, v0, [B

    .line 7
    .line 8
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/s0;->a:[B

    .line 9
    .line 10
    new-instance v0, Lcom/google/android/gms/internal/ads/jr;

    .line 11
    .line 12
    const v1, 0x8000

    .line 13
    .line 14
    .line 15
    new-array v1, v1, [B

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/jr;-><init>([BI)V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/s0;->b:Lcom/google/android/gms/internal/ads/jr;

    .line 22
    .line 23
    new-instance v0, LW0/w;

    .line 24
    .line 25
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/s0;->c:LW0/w;

    .line 29
    .line 30
    iput v2, p0, Lcom/google/android/gms/internal/ads/s0;->f:I

    .line 31
    .line 32
    return-void
.end method


# virtual methods
.method public final c(Lcom/google/android/gms/internal/ads/M;LW0/w;)I
    .locals 30

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget v2, v0, Lcom/google/android/gms/internal/ads/s0;->f:I

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    const/4 v4, 0x0

    .line 9
    const/4 v5, 0x1

    .line 10
    if-eqz v2, :cond_27

    .line 11
    .line 12
    const/4 v6, 0x2

    .line 13
    iget-object v7, v0, Lcom/google/android/gms/internal/ads/s0;->a:[B

    .line 14
    .line 15
    if-eq v2, v5, :cond_26

    .line 16
    .line 17
    const/4 v8, 0x3

    .line 18
    const/4 v9, 0x4

    .line 19
    if-eq v2, v6, :cond_24

    .line 20
    .line 21
    const/4 v10, 0x7

    .line 22
    const/4 v11, 0x6

    .line 23
    if-eq v2, v8, :cond_1b

    .line 24
    .line 25
    const-wide/16 v12, 0x0

    .line 26
    .line 27
    const-wide/16 v14, -0x1

    .line 28
    .line 29
    if-eq v2, v9, :cond_15

    .line 30
    .line 31
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/s0;->e:Lcom/google/android/gms/internal/ads/e0;

    .line 32
    .line 33
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/s0;->h:Lcom/google/android/gms/internal/ads/Q;

    .line 37
    .line 38
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    iget-object v7, v0, Lcom/google/android/gms/internal/ads/s0;->k:Lb1/a;

    .line 42
    .line 43
    if-eqz v7, :cond_0

    .line 44
    .line 45
    iget-object v8, v7, LW0/k;->d:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast v8, LW0/g;

    .line 48
    .line 49
    if-eqz v8, :cond_0

    .line 50
    .line 51
    move-object/from16 v8, p2

    .line 52
    .line 53
    invoke-virtual {v7, v1, v8}, LW0/k;->e(Lcom/google/android/gms/internal/ads/M;LW0/w;)I

    .line 54
    .line 55
    .line 56
    move-result v4

    .line 57
    goto/16 :goto_d

    .line 58
    .line 59
    :cond_0
    iget-wide v7, v0, Lcom/google/android/gms/internal/ads/s0;->m:J

    .line 60
    .line 61
    const/4 v9, -0x1

    .line 62
    cmp-long v16, v7, v14

    .line 63
    .line 64
    if-nez v16, :cond_7

    .line 65
    .line 66
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/M;->zzj()V

    .line 67
    .line 68
    .line 69
    invoke-interface {v1, v5}, Lcom/google/android/gms/internal/ads/M;->zzg(I)V

    .line 70
    .line 71
    .line 72
    new-array v7, v5, [B

    .line 73
    .line 74
    invoke-interface {v1, v4, v7, v5}, Lcom/google/android/gms/internal/ads/M;->g(I[BI)V

    .line 75
    .line 76
    .line 77
    aget-byte v7, v7, v4

    .line 78
    .line 79
    and-int/2addr v7, v5

    .line 80
    if-eq v5, v7, :cond_1

    .line 81
    .line 82
    const/4 v8, 0x0

    .line 83
    goto :goto_0

    .line 84
    :cond_1
    const/4 v8, 0x1

    .line 85
    :goto_0
    invoke-interface {v1, v6}, Lcom/google/android/gms/internal/ads/M;->zzg(I)V

    .line 86
    .line 87
    .line 88
    if-eq v5, v7, :cond_2

    .line 89
    .line 90
    const/4 v10, 0x6

    .line 91
    :cond_2
    new-instance v6, Lcom/google/android/gms/internal/ads/jr;

    .line 92
    .line 93
    invoke-direct {v6, v10}, Lcom/google/android/gms/internal/ads/jr;-><init>(I)V

    .line 94
    .line 95
    .line 96
    iget-object v7, v6, Lcom/google/android/gms/internal/ads/jr;->a:[B

    .line 97
    .line 98
    const/4 v11, 0x0

    .line 99
    :goto_1
    if-ge v11, v10, :cond_4

    .line 100
    .line 101
    sub-int v14, v10, v11

    .line 102
    .line 103
    invoke-interface {v1, v11, v7, v14}, Lcom/google/android/gms/internal/ads/M;->c(I[BI)I

    .line 104
    .line 105
    .line 106
    move-result v14

    .line 107
    if-ne v14, v9, :cond_3

    .line 108
    .line 109
    goto :goto_2

    .line 110
    :cond_3
    add-int/2addr v11, v14

    .line 111
    goto :goto_1

    .line 112
    :cond_4
    :goto_2
    invoke-virtual {v6, v11}, Lcom/google/android/gms/internal/ads/jr;->i(I)V

    .line 113
    .line 114
    .line 115
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/M;->zzj()V

    .line 116
    .line 117
    .line 118
    :try_start_0
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/jr;->G()J

    .line 119
    .line 120
    .line 121
    move-result-wide v6
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    if-eqz v8, :cond_5

    .line 123
    .line 124
    :goto_3
    move-wide v12, v6

    .line 125
    goto :goto_4

    .line 126
    :cond_5
    iget v1, v2, Lcom/google/android/gms/internal/ads/Q;->b:I

    .line 127
    .line 128
    int-to-long v1, v1

    .line 129
    mul-long v6, v6, v1

    .line 130
    .line 131
    goto :goto_3

    .line 132
    :catch_0
    nop

    .line 133
    const/4 v5, 0x0

    .line 134
    :goto_4
    if-eqz v5, :cond_6

    .line 135
    .line 136
    iput-wide v12, v0, Lcom/google/android/gms/internal/ads/s0;->m:J

    .line 137
    .line 138
    goto/16 :goto_d

    .line 139
    .line 140
    :cond_6
    invoke-static {v3, v3}, Lcom/google/android/gms/internal/ads/Ka;->a(Ljava/lang/String;Ljava/lang/RuntimeException;)Lcom/google/android/gms/internal/ads/Ka;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    throw v1

    .line 145
    :cond_7
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/s0;->b:Lcom/google/android/gms/internal/ads/jr;

    .line 146
    .line 147
    iget v3, v2, Lcom/google/android/gms/internal/ads/jr;->c:I

    .line 148
    .line 149
    const-wide/32 v6, 0xf4240

    .line 150
    .line 151
    .line 152
    const v8, 0x8000

    .line 153
    .line 154
    .line 155
    if-ge v3, v8, :cond_a

    .line 156
    .line 157
    iget-object v10, v2, Lcom/google/android/gms/internal/ads/jr;->a:[B

    .line 158
    .line 159
    sub-int/2addr v8, v3

    .line 160
    invoke-interface {v1, v10, v3, v8}, Lcom/google/android/gms/internal/ads/HL;->e([BII)I

    .line 161
    .line 162
    .line 163
    move-result v1

    .line 164
    if-ne v1, v9, :cond_8

    .line 165
    .line 166
    goto :goto_5

    .line 167
    :cond_8
    const/4 v5, 0x0

    .line 168
    :goto_5
    if-nez v5, :cond_9

    .line 169
    .line 170
    add-int/2addr v3, v1

    .line 171
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/jr;->i(I)V

    .line 172
    .line 173
    .line 174
    goto :goto_6

    .line 175
    :cond_9
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/jr;->o()I

    .line 176
    .line 177
    .line 178
    move-result v1

    .line 179
    if-nez v1, :cond_b

    .line 180
    .line 181
    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/s0;->m:J

    .line 182
    .line 183
    mul-long v1, v1, v6

    .line 184
    .line 185
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/s0;->h:Lcom/google/android/gms/internal/ads/Q;

    .line 186
    .line 187
    sget v4, Lcom/google/android/gms/internal/ads/Et;->a:I

    .line 188
    .line 189
    iget v3, v3, Lcom/google/android/gms/internal/ads/Q;->e:I

    .line 190
    .line 191
    int-to-long v3, v3

    .line 192
    div-long v11, v1, v3

    .line 193
    .line 194
    iget-object v10, v0, Lcom/google/android/gms/internal/ads/s0;->e:Lcom/google/android/gms/internal/ads/e0;

    .line 195
    .line 196
    iget v14, v0, Lcom/google/android/gms/internal/ads/s0;->l:I

    .line 197
    .line 198
    const/16 v16, 0x0

    .line 199
    .line 200
    const/4 v13, 0x1

    .line 201
    const/4 v15, 0x0

    .line 202
    invoke-interface/range {v10 .. v16}, Lcom/google/android/gms/internal/ads/e0;->b(JIIILcom/google/android/gms/internal/ads/d0;)V

    .line 203
    .line 204
    .line 205
    const/4 v4, -0x1

    .line 206
    goto/16 :goto_d

    .line 207
    .line 208
    :cond_a
    const/4 v5, 0x0

    .line 209
    :cond_b
    :goto_6
    iget v1, v2, Lcom/google/android/gms/internal/ads/jr;->b:I

    .line 210
    .line 211
    iget v3, v0, Lcom/google/android/gms/internal/ads/s0;->l:I

    .line 212
    .line 213
    iget v8, v0, Lcom/google/android/gms/internal/ads/s0;->i:I

    .line 214
    .line 215
    if-ge v3, v8, :cond_c

    .line 216
    .line 217
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/jr;->o()I

    .line 218
    .line 219
    .line 220
    move-result v9

    .line 221
    sub-int/2addr v8, v3

    .line 222
    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    .line 223
    .line 224
    .line 225
    move-result v3

    .line 226
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/jr;->k(I)V

    .line 227
    .line 228
    .line 229
    :cond_c
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/s0;->h:Lcom/google/android/gms/internal/ads/Q;

    .line 230
    .line 231
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 232
    .line 233
    .line 234
    iget v3, v2, Lcom/google/android/gms/internal/ads/jr;->b:I

    .line 235
    .line 236
    :goto_7
    iget v8, v2, Lcom/google/android/gms/internal/ads/jr;->c:I

    .line 237
    .line 238
    add-int/lit8 v8, v8, -0x10

    .line 239
    .line 240
    iget-object v9, v0, Lcom/google/android/gms/internal/ads/s0;->c:LW0/w;

    .line 241
    .line 242
    if-gt v3, v8, :cond_e

    .line 243
    .line 244
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/jr;->j(I)V

    .line 245
    .line 246
    .line 247
    iget-object v8, v0, Lcom/google/android/gms/internal/ads/s0;->h:Lcom/google/android/gms/internal/ads/Q;

    .line 248
    .line 249
    iget v10, v0, Lcom/google/android/gms/internal/ads/s0;->j:I

    .line 250
    .line 251
    invoke-static {v2, v8, v10, v9}, Lo3/r;->E(Lcom/google/android/gms/internal/ads/jr;Lcom/google/android/gms/internal/ads/Q;ILW0/w;)Z

    .line 252
    .line 253
    .line 254
    move-result v8

    .line 255
    if-eqz v8, :cond_d

    .line 256
    .line 257
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/jr;->j(I)V

    .line 258
    .line 259
    .line 260
    iget-wide v8, v9, LW0/w;->a:J

    .line 261
    .line 262
    goto :goto_c

    .line 263
    :cond_d
    add-int/lit8 v3, v3, 0x1

    .line 264
    .line 265
    goto :goto_7

    .line 266
    :cond_e
    if-eqz v5, :cond_12

    .line 267
    .line 268
    :goto_8
    iget v5, v2, Lcom/google/android/gms/internal/ads/jr;->c:I

    .line 269
    .line 270
    iget v8, v0, Lcom/google/android/gms/internal/ads/s0;->i:I

    .line 271
    .line 272
    sub-int v8, v5, v8

    .line 273
    .line 274
    if-gt v3, v8, :cond_11

    .line 275
    .line 276
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/jr;->j(I)V

    .line 277
    .line 278
    .line 279
    :try_start_1
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/s0;->h:Lcom/google/android/gms/internal/ads/Q;

    .line 280
    .line 281
    iget v8, v0, Lcom/google/android/gms/internal/ads/s0;->j:I

    .line 282
    .line 283
    invoke-static {v2, v5, v8, v9}, Lo3/r;->E(Lcom/google/android/gms/internal/ads/jr;Lcom/google/android/gms/internal/ads/Q;ILW0/w;)Z

    .line 284
    .line 285
    .line 286
    move-result v5
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    .line 287
    goto :goto_9

    .line 288
    :catch_1
    const/4 v5, 0x0

    .line 289
    :goto_9
    iget v8, v2, Lcom/google/android/gms/internal/ads/jr;->b:I

    .line 290
    .line 291
    iget v10, v2, Lcom/google/android/gms/internal/ads/jr;->c:I

    .line 292
    .line 293
    if-le v8, v10, :cond_f

    .line 294
    .line 295
    goto :goto_a

    .line 296
    :cond_f
    if-eqz v5, :cond_10

    .line 297
    .line 298
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/jr;->j(I)V

    .line 299
    .line 300
    .line 301
    iget-wide v8, v9, LW0/w;->a:J

    .line 302
    .line 303
    goto :goto_c

    .line 304
    :cond_10
    :goto_a
    add-int/lit8 v3, v3, 0x1

    .line 305
    .line 306
    goto :goto_8

    .line 307
    :cond_11
    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/jr;->j(I)V

    .line 308
    .line 309
    .line 310
    goto :goto_b

    .line 311
    :cond_12
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/jr;->j(I)V

    .line 312
    .line 313
    .line 314
    :goto_b
    move-wide v8, v14

    .line 315
    :goto_c
    iget v3, v2, Lcom/google/android/gms/internal/ads/jr;->b:I

    .line 316
    .line 317
    sub-int/2addr v3, v1

    .line 318
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/jr;->j(I)V

    .line 319
    .line 320
    .line 321
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/s0;->e:Lcom/google/android/gms/internal/ads/e0;

    .line 322
    .line 323
    invoke-interface {v1, v3, v2}, Lcom/google/android/gms/internal/ads/e0;->f(ILcom/google/android/gms/internal/ads/jr;)V

    .line 324
    .line 325
    .line 326
    iget v1, v0, Lcom/google/android/gms/internal/ads/s0;->l:I

    .line 327
    .line 328
    add-int/2addr v1, v3

    .line 329
    iput v1, v0, Lcom/google/android/gms/internal/ads/s0;->l:I

    .line 330
    .line 331
    cmp-long v3, v8, v14

    .line 332
    .line 333
    if-eqz v3, :cond_13

    .line 334
    .line 335
    iget-wide v10, v0, Lcom/google/android/gms/internal/ads/s0;->m:J

    .line 336
    .line 337
    mul-long v10, v10, v6

    .line 338
    .line 339
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/s0;->h:Lcom/google/android/gms/internal/ads/Q;

    .line 340
    .line 341
    sget v5, Lcom/google/android/gms/internal/ads/Et;->a:I

    .line 342
    .line 343
    iget v3, v3, Lcom/google/android/gms/internal/ads/Q;->e:I

    .line 344
    .line 345
    int-to-long v5, v3

    .line 346
    div-long v17, v10, v5

    .line 347
    .line 348
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/s0;->e:Lcom/google/android/gms/internal/ads/e0;

    .line 349
    .line 350
    const/16 v22, 0x0

    .line 351
    .line 352
    const/16 v19, 0x1

    .line 353
    .line 354
    const/16 v21, 0x0

    .line 355
    .line 356
    move-object/from16 v16, v3

    .line 357
    .line 358
    move/from16 v20, v1

    .line 359
    .line 360
    invoke-interface/range {v16 .. v22}, Lcom/google/android/gms/internal/ads/e0;->b(JIIILcom/google/android/gms/internal/ads/d0;)V

    .line 361
    .line 362
    .line 363
    iput v4, v0, Lcom/google/android/gms/internal/ads/s0;->l:I

    .line 364
    .line 365
    iput-wide v8, v0, Lcom/google/android/gms/internal/ads/s0;->m:J

    .line 366
    .line 367
    :cond_13
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/jr;->o()I

    .line 368
    .line 369
    .line 370
    move-result v1

    .line 371
    const/16 v3, 0x10

    .line 372
    .line 373
    if-lt v1, v3, :cond_14

    .line 374
    .line 375
    :goto_d
    return v4

    .line 376
    :cond_14
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/jr;->o()I

    .line 377
    .line 378
    .line 379
    move-result v1

    .line 380
    iget-object v3, v2, Lcom/google/android/gms/internal/ads/jr;->a:[B

    .line 381
    .line 382
    iget v5, v2, Lcom/google/android/gms/internal/ads/jr;->b:I

    .line 383
    .line 384
    invoke-static {v3, v5, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 385
    .line 386
    .line 387
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/jr;->j(I)V

    .line 388
    .line 389
    .line 390
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/jr;->i(I)V

    .line 391
    .line 392
    .line 393
    return v4

    .line 394
    :cond_15
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/M;->zzj()V

    .line 395
    .line 396
    .line 397
    new-instance v2, Lcom/google/android/gms/internal/ads/jr;

    .line 398
    .line 399
    invoke-direct {v2, v6}, Lcom/google/android/gms/internal/ads/jr;-><init>(I)V

    .line 400
    .line 401
    .line 402
    iget-object v5, v2, Lcom/google/android/gms/internal/ads/jr;->a:[B

    .line 403
    .line 404
    invoke-interface {v1, v4, v5, v6}, Lcom/google/android/gms/internal/ads/M;->g(I[BI)V

    .line 405
    .line 406
    .line 407
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/jr;->A()I

    .line 408
    .line 409
    .line 410
    move-result v2

    .line 411
    shr-int/lit8 v5, v2, 0x2

    .line 412
    .line 413
    const/16 v6, 0x3ffe

    .line 414
    .line 415
    if-ne v5, v6, :cond_1a

    .line 416
    .line 417
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/M;->zzj()V

    .line 418
    .line 419
    .line 420
    iput v2, v0, Lcom/google/android/gms/internal/ads/s0;->j:I

    .line 421
    .line 422
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/s0;->d:Lcom/google/android/gms/internal/ads/N;

    .line 423
    .line 424
    sget v3, Lcom/google/android/gms/internal/ads/Et;->a:I

    .line 425
    .line 426
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/M;->zzf()J

    .line 427
    .line 428
    .line 429
    move-result-wide v5

    .line 430
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/M;->zzd()J

    .line 431
    .line 432
    .line 433
    move-result-wide v25

    .line 434
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/s0;->h:Lcom/google/android/gms/internal/ads/Q;

    .line 435
    .line 436
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 437
    .line 438
    .line 439
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/Q;->k:Lcom/google/android/gms/internal/ads/x;

    .line 440
    .line 441
    if-eqz v3, :cond_16

    .line 442
    .line 443
    new-instance v3, Lcom/google/android/gms/internal/ads/P;

    .line 444
    .line 445
    invoke-direct {v3, v1, v4, v5, v6}, Lcom/google/android/gms/internal/ads/P;-><init>(Ljava/lang/Object;IJ)V

    .line 446
    .line 447
    .line 448
    goto/16 :goto_f

    .line 449
    .line 450
    :cond_16
    cmp-long v3, v25, v14

    .line 451
    .line 452
    if-eqz v3, :cond_19

    .line 453
    .line 454
    iget-wide v9, v1, Lcom/google/android/gms/internal/ads/Q;->j:J

    .line 455
    .line 456
    cmp-long v3, v9, v12

    .line 457
    .line 458
    if-lez v3, :cond_19

    .line 459
    .line 460
    new-instance v3, Lb1/a;

    .line 461
    .line 462
    iget v7, v0, Lcom/google/android/gms/internal/ads/s0;->j:I

    .line 463
    .line 464
    new-instance v9, Lcom/google/android/gms/internal/ads/K4;

    .line 465
    .line 466
    invoke-direct {v9, v1, v8}, Lcom/google/android/gms/internal/ads/K4;-><init>(Ljava/lang/Object;I)V

    .line 467
    .line 468
    .line 469
    new-instance v8, Lcom/google/android/gms/internal/ads/f8;

    .line 470
    .line 471
    invoke-direct {v8, v1, v7}, Lcom/google/android/gms/internal/ads/f8;-><init>(Lcom/google/android/gms/internal/ads/Q;I)V

    .line 472
    .line 473
    .line 474
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/Q;->a()J

    .line 475
    .line 476
    .line 477
    move-result-wide v19

    .line 478
    iget v7, v1, Lcom/google/android/gms/internal/ads/Q;->c:I

    .line 479
    .line 480
    iget v10, v1, Lcom/google/android/gms/internal/ads/Q;->d:I

    .line 481
    .line 482
    if-lez v10, :cond_17

    .line 483
    .line 484
    int-to-long v12, v7

    .line 485
    int-to-long v14, v10

    .line 486
    add-long/2addr v14, v12

    .line 487
    const-wide/16 v12, 0x2

    .line 488
    .line 489
    div-long/2addr v14, v12

    .line 490
    const-wide/16 v12, 0x1

    .line 491
    .line 492
    add-long/2addr v14, v12

    .line 493
    move-wide/from16 v23, v5

    .line 494
    .line 495
    move-wide/from16 v27, v14

    .line 496
    .line 497
    goto :goto_e

    .line 498
    :cond_17
    iget v10, v1, Lcom/google/android/gms/internal/ads/Q;->b:I

    .line 499
    .line 500
    const-wide/16 v12, 0x1000

    .line 501
    .line 502
    iget v14, v1, Lcom/google/android/gms/internal/ads/Q;->a:I

    .line 503
    .line 504
    if-ne v14, v10, :cond_18

    .line 505
    .line 506
    if-lez v14, :cond_18

    .line 507
    .line 508
    int-to-long v12, v14

    .line 509
    :cond_18
    iget v10, v1, Lcom/google/android/gms/internal/ads/Q;->g:I

    .line 510
    .line 511
    int-to-long v14, v10

    .line 512
    iget v10, v1, Lcom/google/android/gms/internal/ads/Q;->h:I

    .line 513
    .line 514
    move-wide/from16 v23, v5

    .line 515
    .line 516
    int-to-long v4, v10

    .line 517
    mul-long v12, v12, v14

    .line 518
    .line 519
    mul-long v12, v12, v4

    .line 520
    .line 521
    const-wide/16 v4, 0x8

    .line 522
    .line 523
    div-long/2addr v12, v4

    .line 524
    const-wide/16 v4, 0x40

    .line 525
    .line 526
    add-long/2addr v12, v4

    .line 527
    move-wide/from16 v27, v12

    .line 528
    .line 529
    :goto_e
    invoke-static {v11, v7}, Ljava/lang/Math;->max(II)I

    .line 530
    .line 531
    .line 532
    move-result v29

    .line 533
    iget-wide v4, v1, Lcom/google/android/gms/internal/ads/Q;->j:J

    .line 534
    .line 535
    move-object/from16 v16, v3

    .line 536
    .line 537
    move-object/from16 v17, v9

    .line 538
    .line 539
    move-object/from16 v18, v8

    .line 540
    .line 541
    move-wide/from16 v21, v4

    .line 542
    .line 543
    invoke-direct/range {v16 .. v29}, LW0/k;-><init>(Lcom/google/android/gms/internal/ads/B;Lcom/google/android/gms/internal/ads/D;JJJJJI)V

    .line 544
    .line 545
    .line 546
    iput-object v3, v0, Lcom/google/android/gms/internal/ads/s0;->k:Lb1/a;

    .line 547
    .line 548
    iget-object v1, v3, LW0/k;->b:Ljava/lang/Object;

    .line 549
    .line 550
    move-object v3, v1

    .line 551
    check-cast v3, Lcom/google/android/gms/internal/ads/A;

    .line 552
    .line 553
    goto :goto_f

    .line 554
    :cond_19
    new-instance v3, Lcom/google/android/gms/internal/ads/P;

    .line 555
    .line 556
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/Q;->a()J

    .line 557
    .line 558
    .line 559
    move-result-wide v4

    .line 560
    invoke-direct {v3, v4, v5, v12, v13}, Lcom/google/android/gms/internal/ads/P;-><init>(JJ)V

    .line 561
    .line 562
    .line 563
    :goto_f
    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/ads/N;->g(Lcom/google/android/gms/internal/ads/Y;)V

    .line 564
    .line 565
    .line 566
    const/4 v1, 0x5

    .line 567
    iput v1, v0, Lcom/google/android/gms/internal/ads/s0;->f:I

    .line 568
    .line 569
    :goto_10
    const/4 v1, 0x0

    .line 570
    return v1

    .line 571
    :cond_1a
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/M;->zzj()V

    .line 572
    .line 573
    .line 574
    const-string v1, "First frame does not start with sync code."

    .line 575
    .line 576
    invoke-static {v1, v3}, Lcom/google/android/gms/internal/ads/Ka;->a(Ljava/lang/String;Ljava/lang/RuntimeException;)Lcom/google/android/gms/internal/ads/Ka;

    .line 577
    .line 578
    .line 579
    move-result-object v1

    .line 580
    throw v1

    .line 581
    :cond_1b
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/s0;->h:Lcom/google/android/gms/internal/ads/Q;

    .line 582
    .line 583
    :goto_11
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/M;->zzj()V

    .line 584
    .line 585
    .line 586
    new-instance v3, Lcom/google/android/gms/internal/ads/f0;

    .line 587
    .line 588
    new-array v4, v9, [B

    .line 589
    .line 590
    invoke-direct {v3, v4, v9}, Lcom/google/android/gms/internal/ads/f0;-><init>([BI)V

    .line 591
    .line 592
    .line 593
    iget-object v4, v3, Lcom/google/android/gms/internal/ads/f0;->b:[B

    .line 594
    .line 595
    const/4 v5, 0x0

    .line 596
    invoke-interface {v1, v5, v4, v9}, Lcom/google/android/gms/internal/ads/M;->g(I[BI)V

    .line 597
    .line 598
    .line 599
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/f0;->x()Z

    .line 600
    .line 601
    .line 602
    move-result v4

    .line 603
    invoke-virtual {v3, v10}, Lcom/google/android/gms/internal/ads/f0;->g(I)I

    .line 604
    .line 605
    .line 606
    move-result v6

    .line 607
    const/16 v12, 0x18

    .line 608
    .line 609
    invoke-virtual {v3, v12}, Lcom/google/android/gms/internal/ads/f0;->g(I)I

    .line 610
    .line 611
    .line 612
    move-result v3

    .line 613
    add-int/2addr v3, v9

    .line 614
    if-nez v6, :cond_1c

    .line 615
    .line 616
    const/16 v2, 0x26

    .line 617
    .line 618
    new-array v3, v2, [B

    .line 619
    .line 620
    invoke-interface {v1, v5, v3, v2}, Lcom/google/android/gms/internal/ads/M;->h(I[BI)V

    .line 621
    .line 622
    .line 623
    new-instance v2, Lcom/google/android/gms/internal/ads/Q;

    .line 624
    .line 625
    invoke-direct {v2, v3, v9}, Lcom/google/android/gms/internal/ads/Q;-><init>([BI)V

    .line 626
    .line 627
    .line 628
    goto/16 :goto_17

    .line 629
    .line 630
    :cond_1c
    if-eqz v2, :cond_23

    .line 631
    .line 632
    if-ne v6, v8, :cond_1d

    .line 633
    .line 634
    new-instance v6, Lcom/google/android/gms/internal/ads/jr;

    .line 635
    .line 636
    invoke-direct {v6, v3}, Lcom/google/android/gms/internal/ads/jr;-><init>(I)V

    .line 637
    .line 638
    .line 639
    iget-object v12, v6, Lcom/google/android/gms/internal/ads/jr;->a:[B

    .line 640
    .line 641
    invoke-interface {v1, v5, v12, v3}, Lcom/google/android/gms/internal/ads/M;->h(I[BI)V

    .line 642
    .line 643
    .line 644
    invoke-static {v6}, LU2/m;->i(Lcom/google/android/gms/internal/ads/jr;)Lcom/google/android/gms/internal/ads/x;

    .line 645
    .line 646
    .line 647
    move-result-object v23

    .line 648
    new-instance v3, Lcom/google/android/gms/internal/ads/Q;

    .line 649
    .line 650
    iget v5, v2, Lcom/google/android/gms/internal/ads/Q;->h:I

    .line 651
    .line 652
    iget-wide v14, v2, Lcom/google/android/gms/internal/ads/Q;->j:J

    .line 653
    .line 654
    iget v6, v2, Lcom/google/android/gms/internal/ads/Q;->a:I

    .line 655
    .line 656
    iget v12, v2, Lcom/google/android/gms/internal/ads/Q;->b:I

    .line 657
    .line 658
    iget v13, v2, Lcom/google/android/gms/internal/ads/Q;->c:I

    .line 659
    .line 660
    iget v10, v2, Lcom/google/android/gms/internal/ads/Q;->d:I

    .line 661
    .line 662
    iget v8, v2, Lcom/google/android/gms/internal/ads/Q;->e:I

    .line 663
    .line 664
    iget v11, v2, Lcom/google/android/gms/internal/ads/Q;->g:I

    .line 665
    .line 666
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/Q;->l:Lcom/google/android/gms/internal/ads/Q9;

    .line 667
    .line 668
    move/from16 v16, v13

    .line 669
    .line 670
    move-object v13, v3

    .line 671
    move-wide/from16 v21, v14

    .line 672
    .line 673
    move v14, v6

    .line 674
    move v15, v12

    .line 675
    move/from16 v17, v10

    .line 676
    .line 677
    move/from16 v18, v8

    .line 678
    .line 679
    move/from16 v19, v11

    .line 680
    .line 681
    move/from16 v20, v5

    .line 682
    .line 683
    move-object/from16 v24, v2

    .line 684
    .line 685
    invoke-direct/range {v13 .. v24}, Lcom/google/android/gms/internal/ads/Q;-><init>(IIIIIIIJLcom/google/android/gms/internal/ads/x;Lcom/google/android/gms/internal/ads/Q9;)V

    .line 686
    .line 687
    .line 688
    :goto_12
    move-object v2, v3

    .line 689
    goto/16 :goto_17

    .line 690
    .line 691
    :cond_1d
    iget-object v5, v2, Lcom/google/android/gms/internal/ads/Q;->l:Lcom/google/android/gms/internal/ads/Q9;

    .line 692
    .line 693
    if-ne v6, v9, :cond_1f

    .line 694
    .line 695
    new-instance v6, Lcom/google/android/gms/internal/ads/jr;

    .line 696
    .line 697
    invoke-direct {v6, v3}, Lcom/google/android/gms/internal/ads/jr;-><init>(I)V

    .line 698
    .line 699
    .line 700
    iget-object v8, v6, Lcom/google/android/gms/internal/ads/jr;->a:[B

    .line 701
    .line 702
    const/4 v10, 0x0

    .line 703
    invoke-interface {v1, v10, v8, v3}, Lcom/google/android/gms/internal/ads/M;->h(I[BI)V

    .line 704
    .line 705
    .line 706
    invoke-virtual {v6, v9}, Lcom/google/android/gms/internal/ads/jr;->k(I)V

    .line 707
    .line 708
    .line 709
    invoke-static {v6, v10, v10}, La7/b;->r(Lcom/google/android/gms/internal/ads/jr;ZZ)Lcom/google/android/gms/internal/ads/K4;

    .line 710
    .line 711
    .line 712
    move-result-object v3

    .line 713
    iget-object v3, v3, Lcom/google/android/gms/internal/ads/K4;->H:Ljava/lang/Object;

    .line 714
    .line 715
    check-cast v3, [Ljava/lang/String;

    .line 716
    .line 717
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 718
    .line 719
    .line 720
    move-result-object v3

    .line 721
    invoke-static {v3}, La7/b;->p(Ljava/util/List;)Lcom/google/android/gms/internal/ads/Q9;

    .line 722
    .line 723
    .line 724
    move-result-object v3

    .line 725
    if-nez v5, :cond_1e

    .line 726
    .line 727
    :goto_13
    move-object/from16 v21, v3

    .line 728
    .line 729
    goto :goto_14

    .line 730
    :cond_1e
    invoke-virtual {v5, v3}, Lcom/google/android/gms/internal/ads/Q9;->e(Lcom/google/android/gms/internal/ads/Q9;)Lcom/google/android/gms/internal/ads/Q9;

    .line 731
    .line 732
    .line 733
    move-result-object v3

    .line 734
    goto :goto_13

    .line 735
    :goto_14
    new-instance v3, Lcom/google/android/gms/internal/ads/Q;

    .line 736
    .line 737
    iget-wide v5, v2, Lcom/google/android/gms/internal/ads/Q;->j:J

    .line 738
    .line 739
    iget-object v8, v2, Lcom/google/android/gms/internal/ads/Q;->k:Lcom/google/android/gms/internal/ads/x;

    .line 740
    .line 741
    iget v11, v2, Lcom/google/android/gms/internal/ads/Q;->a:I

    .line 742
    .line 743
    iget v12, v2, Lcom/google/android/gms/internal/ads/Q;->b:I

    .line 744
    .line 745
    iget v13, v2, Lcom/google/android/gms/internal/ads/Q;->c:I

    .line 746
    .line 747
    iget v14, v2, Lcom/google/android/gms/internal/ads/Q;->d:I

    .line 748
    .line 749
    iget v15, v2, Lcom/google/android/gms/internal/ads/Q;->e:I

    .line 750
    .line 751
    iget v10, v2, Lcom/google/android/gms/internal/ads/Q;->g:I

    .line 752
    .line 753
    iget v2, v2, Lcom/google/android/gms/internal/ads/Q;->h:I

    .line 754
    .line 755
    move/from16 v16, v10

    .line 756
    .line 757
    move-object v10, v3

    .line 758
    move/from16 v17, v2

    .line 759
    .line 760
    move-wide/from16 v18, v5

    .line 761
    .line 762
    move-object/from16 v20, v8

    .line 763
    .line 764
    invoke-direct/range {v10 .. v21}, Lcom/google/android/gms/internal/ads/Q;-><init>(IIIIIIIJLcom/google/android/gms/internal/ads/x;Lcom/google/android/gms/internal/ads/Q9;)V

    .line 765
    .line 766
    .line 767
    goto :goto_12

    .line 768
    :cond_1f
    const/4 v8, 0x6

    .line 769
    if-ne v6, v8, :cond_21

    .line 770
    .line 771
    new-instance v6, Lcom/google/android/gms/internal/ads/jr;

    .line 772
    .line 773
    invoke-direct {v6, v3}, Lcom/google/android/gms/internal/ads/jr;-><init>(I)V

    .line 774
    .line 775
    .line 776
    iget-object v8, v6, Lcom/google/android/gms/internal/ads/jr;->a:[B

    .line 777
    .line 778
    const/4 v10, 0x0

    .line 779
    invoke-interface {v1, v10, v8, v3}, Lcom/google/android/gms/internal/ads/M;->h(I[BI)V

    .line 780
    .line 781
    .line 782
    invoke-virtual {v6, v9}, Lcom/google/android/gms/internal/ads/jr;->k(I)V

    .line 783
    .line 784
    .line 785
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/G0;->a(Lcom/google/android/gms/internal/ads/jr;)Lcom/google/android/gms/internal/ads/G0;

    .line 786
    .line 787
    .line 788
    move-result-object v3

    .line 789
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/uA;->w(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/PA;

    .line 790
    .line 791
    .line 792
    move-result-object v3

    .line 793
    new-instance v6, Lcom/google/android/gms/internal/ads/Q9;

    .line 794
    .line 795
    invoke-direct {v6, v3}, Lcom/google/android/gms/internal/ads/Q9;-><init>(Ljava/util/List;)V

    .line 796
    .line 797
    .line 798
    if-nez v5, :cond_20

    .line 799
    .line 800
    :goto_15
    move-object/from16 v21, v6

    .line 801
    .line 802
    goto :goto_16

    .line 803
    :cond_20
    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/ads/Q9;->e(Lcom/google/android/gms/internal/ads/Q9;)Lcom/google/android/gms/internal/ads/Q9;

    .line 804
    .line 805
    .line 806
    move-result-object v6

    .line 807
    goto :goto_15

    .line 808
    :goto_16
    new-instance v3, Lcom/google/android/gms/internal/ads/Q;

    .line 809
    .line 810
    iget-wide v5, v2, Lcom/google/android/gms/internal/ads/Q;->j:J

    .line 811
    .line 812
    iget-object v8, v2, Lcom/google/android/gms/internal/ads/Q;->k:Lcom/google/android/gms/internal/ads/x;

    .line 813
    .line 814
    iget v11, v2, Lcom/google/android/gms/internal/ads/Q;->a:I

    .line 815
    .line 816
    iget v12, v2, Lcom/google/android/gms/internal/ads/Q;->b:I

    .line 817
    .line 818
    iget v13, v2, Lcom/google/android/gms/internal/ads/Q;->c:I

    .line 819
    .line 820
    iget v14, v2, Lcom/google/android/gms/internal/ads/Q;->d:I

    .line 821
    .line 822
    iget v15, v2, Lcom/google/android/gms/internal/ads/Q;->e:I

    .line 823
    .line 824
    iget v10, v2, Lcom/google/android/gms/internal/ads/Q;->g:I

    .line 825
    .line 826
    iget v2, v2, Lcom/google/android/gms/internal/ads/Q;->h:I

    .line 827
    .line 828
    move/from16 v16, v10

    .line 829
    .line 830
    move-object v10, v3

    .line 831
    move/from16 v17, v2

    .line 832
    .line 833
    move-wide/from16 v18, v5

    .line 834
    .line 835
    move-object/from16 v20, v8

    .line 836
    .line 837
    invoke-direct/range {v10 .. v21}, Lcom/google/android/gms/internal/ads/Q;-><init>(IIIIIIIJLcom/google/android/gms/internal/ads/x;Lcom/google/android/gms/internal/ads/Q9;)V

    .line 838
    .line 839
    .line 840
    goto/16 :goto_12

    .line 841
    .line 842
    :cond_21
    invoke-interface {v1, v3}, Lcom/google/android/gms/internal/ads/M;->q(I)V

    .line 843
    .line 844
    .line 845
    :goto_17
    sget v3, Lcom/google/android/gms/internal/ads/Et;->a:I

    .line 846
    .line 847
    iput-object v2, v0, Lcom/google/android/gms/internal/ads/s0;->h:Lcom/google/android/gms/internal/ads/Q;

    .line 848
    .line 849
    if-eqz v4, :cond_22

    .line 850
    .line 851
    iget v1, v2, Lcom/google/android/gms/internal/ads/Q;->c:I

    .line 852
    .line 853
    const/4 v3, 0x6

    .line 854
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    .line 855
    .line 856
    .line 857
    move-result v1

    .line 858
    iput v1, v0, Lcom/google/android/gms/internal/ads/s0;->i:I

    .line 859
    .line 860
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/s0;->e:Lcom/google/android/gms/internal/ads/e0;

    .line 861
    .line 862
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/s0;->h:Lcom/google/android/gms/internal/ads/Q;

    .line 863
    .line 864
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/s0;->g:Lcom/google/android/gms/internal/ads/Q9;

    .line 865
    .line 866
    invoke-virtual {v2, v7, v3}, Lcom/google/android/gms/internal/ads/Q;->b([BLcom/google/android/gms/internal/ads/Q9;)Lcom/google/android/gms/internal/ads/p0;

    .line 867
    .line 868
    .line 869
    move-result-object v2

    .line 870
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/e0;->d(Lcom/google/android/gms/internal/ads/p0;)V

    .line 871
    .line 872
    .line 873
    iput v9, v0, Lcom/google/android/gms/internal/ads/s0;->f:I

    .line 874
    .line 875
    const/4 v4, 0x0

    .line 876
    return v4

    .line 877
    :cond_22
    const/4 v8, 0x3

    .line 878
    const/4 v10, 0x7

    .line 879
    const/4 v11, 0x6

    .line 880
    goto/16 :goto_11

    .line 881
    .line 882
    :cond_23
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 883
    .line 884
    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 885
    .line 886
    .line 887
    throw v1

    .line 888
    :cond_24
    new-instance v2, Lcom/google/android/gms/internal/ads/jr;

    .line 889
    .line 890
    invoke-direct {v2, v9}, Lcom/google/android/gms/internal/ads/jr;-><init>(I)V

    .line 891
    .line 892
    .line 893
    iget-object v5, v2, Lcom/google/android/gms/internal/ads/jr;->a:[B

    .line 894
    .line 895
    invoke-interface {v1, v4, v5, v9}, Lcom/google/android/gms/internal/ads/M;->h(I[BI)V

    .line 896
    .line 897
    .line 898
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/jr;->E()J

    .line 899
    .line 900
    .line 901
    move-result-wide v1

    .line 902
    const-wide/32 v5, 0x664c6143

    .line 903
    .line 904
    .line 905
    cmp-long v7, v1, v5

    .line 906
    .line 907
    if-nez v7, :cond_25

    .line 908
    .line 909
    const/4 v1, 0x3

    .line 910
    iput v1, v0, Lcom/google/android/gms/internal/ads/s0;->f:I

    .line 911
    .line 912
    return v4

    .line 913
    :cond_25
    const-string v1, "Failed to read FLAC stream marker."

    .line 914
    .line 915
    invoke-static {v1, v3}, Lcom/google/android/gms/internal/ads/Ka;->a(Ljava/lang/String;Ljava/lang/RuntimeException;)Lcom/google/android/gms/internal/ads/Ka;

    .line 916
    .line 917
    .line 918
    move-result-object v1

    .line 919
    throw v1

    .line 920
    :cond_26
    const/16 v2, 0x2a

    .line 921
    .line 922
    invoke-interface {v1, v4, v7, v2}, Lcom/google/android/gms/internal/ads/M;->g(I[BI)V

    .line 923
    .line 924
    .line 925
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/M;->zzj()V

    .line 926
    .line 927
    .line 928
    iput v6, v0, Lcom/google/android/gms/internal/ads/s0;->f:I

    .line 929
    .line 930
    return v4

    .line 931
    :cond_27
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/M;->zzj()V

    .line 932
    .line 933
    .line 934
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/M;->zze()J

    .line 935
    .line 936
    .line 937
    move-result-wide v6

    .line 938
    new-instance v2, Lcom/google/android/gms/internal/ads/V;

    .line 939
    .line 940
    invoke-direct {v2, v4}, Lcom/google/android/gms/internal/ads/V;-><init>(I)V

    .line 941
    .line 942
    .line 943
    invoke-virtual {v2, v1, v3}, Lcom/google/android/gms/internal/ads/V;->a(Lcom/google/android/gms/internal/ads/M;Lcom/google/android/gms/internal/ads/kH;)Lcom/google/android/gms/internal/ads/Q9;

    .line 944
    .line 945
    .line 946
    move-result-object v2

    .line 947
    if-eqz v2, :cond_29

    .line 948
    .line 949
    iget-object v4, v2, Lcom/google/android/gms/internal/ads/Q9;->G:[Lcom/google/android/gms/internal/ads/K9;

    .line 950
    .line 951
    array-length v4, v4

    .line 952
    if-nez v4, :cond_28

    .line 953
    .line 954
    goto :goto_18

    .line 955
    :cond_28
    move-object v3, v2

    .line 956
    :cond_29
    :goto_18
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/M;->zze()J

    .line 957
    .line 958
    .line 959
    move-result-wide v8

    .line 960
    sub-long/2addr v8, v6

    .line 961
    long-to-int v2, v8

    .line 962
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/M;->q(I)V

    .line 963
    .line 964
    .line 965
    iput-object v3, v0, Lcom/google/android/gms/internal/ads/s0;->g:Lcom/google/android/gms/internal/ads/Q9;

    .line 966
    .line 967
    iput v5, v0, Lcom/google/android/gms/internal/ads/s0;->f:I

    .line 968
    .line 969
    goto/16 :goto_10
.end method

.method public final d(Lcom/google/android/gms/internal/ads/M;)Z
    .locals 5

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/nH;->C:Lcom/google/android/gms/internal/ads/kH;

    .line 2
    .line 3
    new-instance v1, Lcom/google/android/gms/internal/ads/V;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/V;-><init>(I)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v1, p1, v0}, Lcom/google/android/gms/internal/ads/V;->a(Lcom/google/android/gms/internal/ads/M;Lcom/google/android/gms/internal/ads/kH;)Lcom/google/android/gms/internal/ads/Q9;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/Q9;->G:[Lcom/google/android/gms/internal/ads/K9;

    .line 16
    .line 17
    array-length v0, v0

    .line 18
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/jr;

    .line 19
    .line 20
    const/4 v1, 0x4

    .line 21
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/jr;-><init>(I)V

    .line 22
    .line 23
    .line 24
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/jr;->a:[B

    .line 25
    .line 26
    check-cast p1, Lcom/google/android/gms/internal/ads/F;

    .line 27
    .line 28
    invoke-virtual {p1, v3, v2, v1, v2}, Lcom/google/android/gms/internal/ads/F;->d([BIIZ)Z

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/jr;->E()J

    .line 32
    .line 33
    .line 34
    move-result-wide v0

    .line 35
    const-wide/32 v3, 0x664c6143

    .line 36
    .line 37
    .line 38
    cmp-long p1, v0, v3

    .line 39
    .line 40
    if-nez p1, :cond_1

    .line 41
    .line 42
    const/4 p1, 0x1

    .line 43
    return p1

    .line 44
    :cond_1
    return v2
.end method

.method public final e(JJ)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const-wide/16 v1, 0x0

    .line 3
    .line 4
    cmp-long v3, p1, v1

    .line 5
    .line 6
    if-nez v3, :cond_0

    .line 7
    .line 8
    iput v0, p0, Lcom/google/android/gms/internal/ads/s0;->f:I

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/s0;->k:Lb1/a;

    .line 12
    .line 13
    if-eqz p1, :cond_1

    .line 14
    .line 15
    invoke-virtual {p1, p3, p4}, LW0/k;->f(J)V

    .line 16
    .line 17
    .line 18
    :cond_1
    :goto_0
    cmp-long p1, p3, v1

    .line 19
    .line 20
    if-nez p1, :cond_2

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_2
    const-wide/16 v1, -0x1

    .line 24
    .line 25
    :goto_1
    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/s0;->m:J

    .line 26
    .line 27
    iput v0, p0, Lcom/google/android/gms/internal/ads/s0;->l:I

    .line 28
    .line 29
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/s0;->b:Lcom/google/android/gms/internal/ads/jr;

    .line 30
    .line 31
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/jr;->g(I)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public final f(Lcom/google/android/gms/internal/ads/N;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/s0;->d:Lcom/google/android/gms/internal/ads/N;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const/4 v1, 0x1

    .line 5
    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/N;->h(II)Lcom/google/android/gms/internal/ads/e0;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/s0;->e:Lcom/google/android/gms/internal/ads/e0;

    .line 10
    .line 11
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/N;->f()V

    .line 12
    .line 13
    .line 14
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
