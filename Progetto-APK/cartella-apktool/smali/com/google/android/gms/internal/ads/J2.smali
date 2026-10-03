.class public final Lcom/google/android/gms/internal/ads/J2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/F2;


# static fields
.field public static final l:[F


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/b3;

.field public final b:Lcom/google/android/gms/internal/ads/jr;

.field public final c:[Z

.field public final d:Lcom/google/android/gms/internal/ads/I2;

.field public final e:LA1/x;

.field public f:LA1/n;

.field public g:J

.field public h:Ljava/lang/String;

.field public i:Lcom/google/android/gms/internal/ads/e0;

.field public j:Z

.field public k:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x7

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/gms/internal/ads/J2;->l:[F

    return-void

    nop

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

.method public constructor <init>(Lcom/google/android/gms/internal/ads/b3;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/J2;->a:Lcom/google/android/gms/internal/ads/b3;

    .line 5
    .line 6
    const/4 p1, 0x4

    .line 7
    new-array p1, p1, [Z

    .line 8
    .line 9
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/J2;->c:[Z

    .line 10
    .line 11
    new-instance p1, Lcom/google/android/gms/internal/ads/I2;

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
    iput-object v0, p1, Lcom/google/android/gms/internal/ads/I2;->e:[B

    .line 21
    .line 22
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/J2;->d:Lcom/google/android/gms/internal/ads/I2;

    .line 23
    .line 24
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/J2;->k:J

    .line 30
    .line 31
    new-instance p1, LA1/x;

    .line 32
    .line 33
    const/16 v0, 0xb2

    .line 34
    .line 35
    const/4 v1, 0x1

    .line 36
    invoke-direct {p1, v0, v1}, LA1/x;-><init>(II)V

    .line 37
    .line 38
    .line 39
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/J2;->e:LA1/x;

    .line 40
    .line 41
    new-instance p1, Lcom/google/android/gms/internal/ads/jr;

    .line 42
    .line 43
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/jr;-><init>()V

    .line 44
    .line 45
    .line 46
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/J2;->b:Lcom/google/android/gms/internal/ads/jr;

    .line 47
    .line 48
    return-void
.end method


# virtual methods
.method public final b(Lcom/google/android/gms/internal/ads/jr;)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/J2;->f:LA1/n;

    .line 6
    .line 7
    invoke-static {v2}, Lo3/r;->x(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/J2;->i:Lcom/google/android/gms/internal/ads/e0;

    .line 11
    .line 12
    invoke-static {v2}, Lo3/r;->x(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    iget v2, v1, Lcom/google/android/gms/internal/ads/jr;->b:I

    .line 16
    .line 17
    iget v3, v1, Lcom/google/android/gms/internal/ads/jr;->c:I

    .line 18
    .line 19
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/jr;->a:[B

    .line 20
    .line 21
    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/J2;->g:J

    .line 22
    .line 23
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/jr;->o()I

    .line 24
    .line 25
    .line 26
    move-result v7

    .line 27
    int-to-long v7, v7

    .line 28
    add-long/2addr v5, v7

    .line 29
    iput-wide v5, v0, Lcom/google/android/gms/internal/ads/J2;->g:J

    .line 30
    .line 31
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/J2;->i:Lcom/google/android/gms/internal/ads/e0;

    .line 32
    .line 33
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/jr;->o()I

    .line 34
    .line 35
    .line 36
    move-result v6

    .line 37
    invoke-interface {v5, v6, v1}, Lcom/google/android/gms/internal/ads/e0;->f(ILcom/google/android/gms/internal/ads/jr;)V

    .line 38
    .line 39
    .line 40
    :goto_0
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/J2;->c:[Z

    .line 41
    .line 42
    invoke-static {v4, v2, v3, v5}, Lcom/google/android/gms/internal/ads/sy;->a([BII[Z)I

    .line 43
    .line 44
    .line 45
    move-result v5

    .line 46
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/J2;->d:Lcom/google/android/gms/internal/ads/I2;

    .line 47
    .line 48
    iget-object v7, v0, Lcom/google/android/gms/internal/ads/J2;->e:LA1/x;

    .line 49
    .line 50
    if-ne v5, v3, :cond_2

    .line 51
    .line 52
    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/J2;->j:Z

    .line 53
    .line 54
    if-nez v1, :cond_0

    .line 55
    .line 56
    invoke-virtual {v6, v2, v4, v3}, Lcom/google/android/gms/internal/ads/I2;->a(I[BI)V

    .line 57
    .line 58
    .line 59
    :cond_0
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/J2;->f:LA1/n;

    .line 60
    .line 61
    invoke-virtual {v1, v2, v4, v3}, LA1/n;->c(I[BI)V

    .line 62
    .line 63
    .line 64
    if-eqz v7, :cond_1

    .line 65
    .line 66
    invoke-virtual {v7, v2, v4, v3}, LA1/x;->e(I[BI)V

    .line 67
    .line 68
    .line 69
    :cond_1
    return-void

    .line 70
    :cond_2
    iget-object v8, v1, Lcom/google/android/gms/internal/ads/jr;->a:[B

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
    iget-boolean v12, v0, Lcom/google/android/gms/internal/ads/J2;->j:Z

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
    invoke-virtual {v6, v2, v4, v5}, Lcom/google/android/gms/internal/ads/I2;->a(I[BI)V

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
    iget v14, v6, Lcom/google/android/gms/internal/ads/I2;->b:I

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
    const/4 v13, 0x3

    .line 111
    if-eq v14, v13, :cond_10

    .line 112
    .line 113
    const/16 v13, 0xb3

    .line 114
    .line 115
    if-eq v10, v13, :cond_6

    .line 116
    .line 117
    const/16 v8, 0xb5

    .line 118
    .line 119
    if-ne v10, v8, :cond_5

    .line 120
    .line 121
    goto :goto_2

    .line 122
    :cond_5
    move/from16 v18, v3

    .line 123
    .line 124
    goto/16 :goto_7

    .line 125
    .line 126
    :cond_6
    :goto_2
    iget v8, v6, Lcom/google/android/gms/internal/ads/I2;->c:I

    .line 127
    .line 128
    sub-int/2addr v8, v12

    .line 129
    iput v8, v6, Lcom/google/android/gms/internal/ads/I2;->c:I

    .line 130
    .line 131
    const/4 v8, 0x0

    .line 132
    iput-boolean v8, v6, Lcom/google/android/gms/internal/ads/I2;->a:Z

    .line 133
    .line 134
    iget-object v8, v0, Lcom/google/android/gms/internal/ads/J2;->i:Lcom/google/android/gms/internal/ads/e0;

    .line 135
    .line 136
    iget v9, v6, Lcom/google/android/gms/internal/ads/I2;->d:I

    .line 137
    .line 138
    iget-object v12, v0, Lcom/google/android/gms/internal/ads/J2;->h:Ljava/lang/String;

    .line 139
    .line 140
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 141
    .line 142
    .line 143
    iget-object v13, v6, Lcom/google/android/gms/internal/ads/I2;->e:[B

    .line 144
    .line 145
    iget v6, v6, Lcom/google/android/gms/internal/ads/I2;->c:I

    .line 146
    .line 147
    invoke-static {v13, v6}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 148
    .line 149
    .line 150
    move-result-object v6

    .line 151
    new-instance v13, Lcom/google/android/gms/internal/ads/f0;

    .line 152
    .line 153
    array-length v14, v6

    .line 154
    invoke-direct {v13, v6, v14}, Lcom/google/android/gms/internal/ads/f0;-><init>([BI)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v13, v9}, Lcom/google/android/gms/internal/ads/f0;->w(I)V

    .line 158
    .line 159
    .line 160
    const/4 v9, 0x4

    .line 161
    invoke-virtual {v13, v9}, Lcom/google/android/gms/internal/ads/f0;->w(I)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/f0;->u()V

    .line 165
    .line 166
    .line 167
    const/16 v14, 0x8

    .line 168
    .line 169
    invoke-virtual {v13, v14}, Lcom/google/android/gms/internal/ads/f0;->v(I)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/f0;->x()Z

    .line 173
    .line 174
    .line 175
    move-result v17

    .line 176
    if-eqz v17, :cond_7

    .line 177
    .line 178
    invoke-virtual {v13, v9}, Lcom/google/android/gms/internal/ads/f0;->v(I)V

    .line 179
    .line 180
    .line 181
    const/4 v14, 0x3

    .line 182
    invoke-virtual {v13, v14}, Lcom/google/android/gms/internal/ads/f0;->v(I)V

    .line 183
    .line 184
    .line 185
    :cond_7
    invoke-virtual {v13, v9}, Lcom/google/android/gms/internal/ads/f0;->g(I)I

    .line 186
    .line 187
    .line 188
    move-result v9

    .line 189
    const-string v14, "Invalid aspect ratio"

    .line 190
    .line 191
    move/from16 v18, v3

    .line 192
    .line 193
    const/16 v3, 0xf

    .line 194
    .line 195
    if-ne v9, v3, :cond_9

    .line 196
    .line 197
    const/16 v3, 0x8

    .line 198
    .line 199
    invoke-virtual {v13, v3}, Lcom/google/android/gms/internal/ads/f0;->g(I)I

    .line 200
    .line 201
    .line 202
    move-result v9

    .line 203
    invoke-virtual {v13, v3}, Lcom/google/android/gms/internal/ads/f0;->g(I)I

    .line 204
    .line 205
    .line 206
    move-result v3

    .line 207
    if-nez v3, :cond_8

    .line 208
    .line 209
    invoke-static {v15, v14}, Lcom/google/android/gms/internal/ads/Zo;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    :goto_3
    const/high16 v14, 0x3f800000    # 1.0f

    .line 213
    .line 214
    goto :goto_4

    .line 215
    :cond_8
    int-to-float v9, v9

    .line 216
    int-to-float v3, v3

    .line 217
    div-float v14, v9, v3

    .line 218
    .line 219
    goto :goto_4

    .line 220
    :cond_9
    const/4 v3, 0x7

    .line 221
    if-ge v9, v3, :cond_a

    .line 222
    .line 223
    sget-object v3, Lcom/google/android/gms/internal/ads/J2;->l:[F

    .line 224
    .line 225
    aget v14, v3, v9

    .line 226
    .line 227
    goto :goto_4

    .line 228
    :cond_a
    invoke-static {v15, v14}, Lcom/google/android/gms/internal/ads/Zo;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    .line 230
    .line 231
    goto :goto_3

    .line 232
    :goto_4
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/f0;->x()Z

    .line 233
    .line 234
    .line 235
    move-result v3

    .line 236
    if-eqz v3, :cond_b

    .line 237
    .line 238
    const/4 v3, 0x2

    .line 239
    invoke-virtual {v13, v3}, Lcom/google/android/gms/internal/ads/f0;->v(I)V

    .line 240
    .line 241
    .line 242
    const/4 v3, 0x1

    .line 243
    invoke-virtual {v13, v3}, Lcom/google/android/gms/internal/ads/f0;->v(I)V

    .line 244
    .line 245
    .line 246
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/f0;->x()Z

    .line 247
    .line 248
    .line 249
    move-result v3

    .line 250
    if-eqz v3, :cond_b

    .line 251
    .line 252
    const/16 v3, 0xf

    .line 253
    .line 254
    invoke-virtual {v13, v3}, Lcom/google/android/gms/internal/ads/f0;->v(I)V

    .line 255
    .line 256
    .line 257
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/f0;->u()V

    .line 258
    .line 259
    .line 260
    invoke-virtual {v13, v3}, Lcom/google/android/gms/internal/ads/f0;->v(I)V

    .line 261
    .line 262
    .line 263
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/f0;->u()V

    .line 264
    .line 265
    .line 266
    invoke-virtual {v13, v3}, Lcom/google/android/gms/internal/ads/f0;->v(I)V

    .line 267
    .line 268
    .line 269
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/f0;->u()V

    .line 270
    .line 271
    .line 272
    const/4 v9, 0x3

    .line 273
    invoke-virtual {v13, v9}, Lcom/google/android/gms/internal/ads/f0;->v(I)V

    .line 274
    .line 275
    .line 276
    const/16 v9, 0xb

    .line 277
    .line 278
    invoke-virtual {v13, v9}, Lcom/google/android/gms/internal/ads/f0;->v(I)V

    .line 279
    .line 280
    .line 281
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/f0;->u()V

    .line 282
    .line 283
    .line 284
    invoke-virtual {v13, v3}, Lcom/google/android/gms/internal/ads/f0;->v(I)V

    .line 285
    .line 286
    .line 287
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/f0;->u()V

    .line 288
    .line 289
    .line 290
    :cond_b
    const/4 v3, 0x2

    .line 291
    invoke-virtual {v13, v3}, Lcom/google/android/gms/internal/ads/f0;->g(I)I

    .line 292
    .line 293
    .line 294
    move-result v3

    .line 295
    if-eqz v3, :cond_c

    .line 296
    .line 297
    const-string v3, "Unhandled video object layer shape"

    .line 298
    .line 299
    invoke-static {v15, v3}, Lcom/google/android/gms/internal/ads/Zo;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    .line 301
    .line 302
    :cond_c
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/f0;->u()V

    .line 303
    .line 304
    .line 305
    const/16 v3, 0x10

    .line 306
    .line 307
    invoke-virtual {v13, v3}, Lcom/google/android/gms/internal/ads/f0;->g(I)I

    .line 308
    .line 309
    .line 310
    move-result v3

    .line 311
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/f0;->u()V

    .line 312
    .line 313
    .line 314
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/f0;->x()Z

    .line 315
    .line 316
    .line 317
    move-result v9

    .line 318
    if-eqz v9, :cond_f

    .line 319
    .line 320
    if-nez v3, :cond_d

    .line 321
    .line 322
    const-string v3, "Invalid vop_increment_time_resolution"

    .line 323
    .line 324
    invoke-static {v15, v3}, Lcom/google/android/gms/internal/ads/Zo;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    .line 326
    .line 327
    goto :goto_6

    .line 328
    :cond_d
    add-int/lit8 v3, v3, -0x1

    .line 329
    .line 330
    const/4 v9, 0x0

    .line 331
    :goto_5
    if-lez v3, :cond_e

    .line 332
    .line 333
    shr-int/lit8 v3, v3, 0x1

    .line 334
    .line 335
    add-int/lit8 v9, v9, 0x1

    .line 336
    .line 337
    goto :goto_5

    .line 338
    :cond_e
    invoke-virtual {v13, v9}, Lcom/google/android/gms/internal/ads/f0;->v(I)V

    .line 339
    .line 340
    .line 341
    :cond_f
    :goto_6
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/f0;->u()V

    .line 342
    .line 343
    .line 344
    const/16 v3, 0xd

    .line 345
    .line 346
    invoke-virtual {v13, v3}, Lcom/google/android/gms/internal/ads/f0;->g(I)I

    .line 347
    .line 348
    .line 349
    move-result v9

    .line 350
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/f0;->u()V

    .line 351
    .line 352
    .line 353
    invoke-virtual {v13, v3}, Lcom/google/android/gms/internal/ads/f0;->g(I)I

    .line 354
    .line 355
    .line 356
    move-result v3

    .line 357
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/f0;->u()V

    .line 358
    .line 359
    .line 360
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/f0;->u()V

    .line 361
    .line 362
    .line 363
    new-instance v13, Lcom/google/android/gms/internal/ads/K;

    .line 364
    .line 365
    invoke-direct {v13}, Lcom/google/android/gms/internal/ads/K;-><init>()V

    .line 366
    .line 367
    .line 368
    iput-object v12, v13, Lcom/google/android/gms/internal/ads/K;->a:Ljava/lang/String;

    .line 369
    .line 370
    const-string v12, "video/mp4v-es"

    .line 371
    .line 372
    invoke-virtual {v13, v12}, Lcom/google/android/gms/internal/ads/K;->f(Ljava/lang/String;)V

    .line 373
    .line 374
    .line 375
    iput v9, v13, Lcom/google/android/gms/internal/ads/K;->r:I

    .line 376
    .line 377
    iput v3, v13, Lcom/google/android/gms/internal/ads/K;->s:I

    .line 378
    .line 379
    iput v14, v13, Lcom/google/android/gms/internal/ads/K;->v:F

    .line 380
    .line 381
    invoke-static {v6}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 382
    .line 383
    .line 384
    move-result-object v3

    .line 385
    iput-object v3, v13, Lcom/google/android/gms/internal/ads/K;->o:Ljava/util/List;

    .line 386
    .line 387
    new-instance v3, Lcom/google/android/gms/internal/ads/p0;

    .line 388
    .line 389
    invoke-direct {v3, v13}, Lcom/google/android/gms/internal/ads/p0;-><init>(Lcom/google/android/gms/internal/ads/K;)V

    .line 390
    .line 391
    .line 392
    invoke-interface {v8, v3}, Lcom/google/android/gms/internal/ads/e0;->d(Lcom/google/android/gms/internal/ads/p0;)V

    .line 393
    .line 394
    .line 395
    const/4 v3, 0x1

    .line 396
    iput-boolean v3, v0, Lcom/google/android/gms/internal/ads/J2;->j:Z

    .line 397
    .line 398
    goto :goto_8

    .line 399
    :cond_10
    move/from16 v18, v3

    .line 400
    .line 401
    and-int/lit16 v3, v8, 0xf0

    .line 402
    .line 403
    const/16 v8, 0x20

    .line 404
    .line 405
    if-eq v3, v8, :cond_11

    .line 406
    .line 407
    invoke-static {v15, v9}, Lcom/google/android/gms/internal/ads/Zo;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    .line 409
    .line 410
    const/4 v3, 0x0

    .line 411
    iput-boolean v3, v6, Lcom/google/android/gms/internal/ads/I2;->a:Z

    .line 412
    .line 413
    iput v3, v6, Lcom/google/android/gms/internal/ads/I2;->c:I

    .line 414
    .line 415
    iput v3, v6, Lcom/google/android/gms/internal/ads/I2;->b:I

    .line 416
    .line 417
    goto :goto_7

    .line 418
    :cond_11
    const/4 v3, 0x0

    .line 419
    iget v8, v6, Lcom/google/android/gms/internal/ads/I2;->c:I

    .line 420
    .line 421
    iput v8, v6, Lcom/google/android/gms/internal/ads/I2;->d:I

    .line 422
    .line 423
    const/4 v8, 0x4

    .line 424
    iput v8, v6, Lcom/google/android/gms/internal/ads/I2;->b:I

    .line 425
    .line 426
    goto :goto_7

    .line 427
    :cond_12
    move/from16 v18, v3

    .line 428
    .line 429
    const/4 v3, 0x0

    .line 430
    const/16 v8, 0x1f

    .line 431
    .line 432
    if-le v10, v8, :cond_13

    .line 433
    .line 434
    invoke-static {v15, v9}, Lcom/google/android/gms/internal/ads/Zo;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    .line 436
    .line 437
    iput-boolean v3, v6, Lcom/google/android/gms/internal/ads/I2;->a:Z

    .line 438
    .line 439
    iput v3, v6, Lcom/google/android/gms/internal/ads/I2;->c:I

    .line 440
    .line 441
    iput v3, v6, Lcom/google/android/gms/internal/ads/I2;->b:I

    .line 442
    .line 443
    goto :goto_7

    .line 444
    :cond_13
    const/4 v8, 0x3

    .line 445
    iput v8, v6, Lcom/google/android/gms/internal/ads/I2;->b:I

    .line 446
    .line 447
    goto :goto_7

    .line 448
    :cond_14
    move/from16 v18, v3

    .line 449
    .line 450
    const/4 v3, 0x0

    .line 451
    const/16 v8, 0xb5

    .line 452
    .line 453
    if-eq v10, v8, :cond_15

    .line 454
    .line 455
    invoke-static {v15, v9}, Lcom/google/android/gms/internal/ads/Zo;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    .line 457
    .line 458
    iput-boolean v3, v6, Lcom/google/android/gms/internal/ads/I2;->a:Z

    .line 459
    .line 460
    iput v3, v6, Lcom/google/android/gms/internal/ads/I2;->c:I

    .line 461
    .line 462
    iput v3, v6, Lcom/google/android/gms/internal/ads/I2;->b:I

    .line 463
    .line 464
    goto :goto_7

    .line 465
    :cond_15
    const/4 v3, 0x2

    .line 466
    iput v3, v6, Lcom/google/android/gms/internal/ads/I2;->b:I

    .line 467
    .line 468
    goto :goto_7

    .line 469
    :cond_16
    move/from16 v18, v3

    .line 470
    .line 471
    move/from16 v16, v9

    .line 472
    .line 473
    const/16 v3, 0xb0

    .line 474
    .line 475
    if-ne v10, v3, :cond_17

    .line 476
    .line 477
    const/4 v3, 0x1

    .line 478
    iput v3, v6, Lcom/google/android/gms/internal/ads/I2;->b:I

    .line 479
    .line 480
    iput-boolean v3, v6, Lcom/google/android/gms/internal/ads/I2;->a:Z

    .line 481
    .line 482
    :cond_17
    :goto_7
    sget-object v3, Lcom/google/android/gms/internal/ads/I2;->f:[B

    .line 483
    .line 484
    const/4 v8, 0x0

    .line 485
    const/4 v9, 0x3

    .line 486
    invoke-virtual {v6, v8, v3, v9}, Lcom/google/android/gms/internal/ads/I2;->a(I[BI)V

    .line 487
    .line 488
    .line 489
    goto :goto_8

    .line 490
    :cond_18
    move/from16 v18, v3

    .line 491
    .line 492
    move/from16 v16, v9

    .line 493
    .line 494
    :goto_8
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/J2;->f:LA1/n;

    .line 495
    .line 496
    invoke-virtual {v3, v2, v4, v5}, LA1/n;->c(I[BI)V

    .line 497
    .line 498
    .line 499
    if-eqz v7, :cond_1c

    .line 500
    .line 501
    if-lez v11, :cond_19

    .line 502
    .line 503
    invoke-virtual {v7, v2, v4, v5}, LA1/x;->e(I[BI)V

    .line 504
    .line 505
    .line 506
    const/4 v2, 0x0

    .line 507
    goto :goto_9

    .line 508
    :cond_19
    neg-int v2, v11

    .line 509
    :goto_9
    invoke-virtual {v7, v2}, LA1/x;->h(I)Z

    .line 510
    .line 511
    .line 512
    move-result v2

    .line 513
    if-eqz v2, :cond_1a

    .line 514
    .line 515
    iget-object v2, v7, LA1/x;->d:[B

    .line 516
    .line 517
    iget v3, v7, LA1/x;->e:I

    .line 518
    .line 519
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/sy;->b([BI)I

    .line 520
    .line 521
    .line 522
    move-result v2

    .line 523
    sget v3, Lcom/google/android/gms/internal/ads/Et;->a:I

    .line 524
    .line 525
    iget-object v3, v7, LA1/x;->d:[B

    .line 526
    .line 527
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/J2;->b:Lcom/google/android/gms/internal/ads/jr;

    .line 528
    .line 529
    invoke-virtual {v6, v2, v3}, Lcom/google/android/gms/internal/ads/jr;->h(I[B)V

    .line 530
    .line 531
    .line 532
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/J2;->a:Lcom/google/android/gms/internal/ads/b3;

    .line 533
    .line 534
    iget-wide v8, v0, Lcom/google/android/gms/internal/ads/J2;->k:J

    .line 535
    .line 536
    invoke-virtual {v2, v8, v9, v6}, Lcom/google/android/gms/internal/ads/b3;->a(JLcom/google/android/gms/internal/ads/jr;)V

    .line 537
    .line 538
    .line 539
    :cond_1a
    const/16 v2, 0xb2

    .line 540
    .line 541
    if-ne v10, v2, :cond_1c

    .line 542
    .line 543
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/jr;->a:[B

    .line 544
    .line 545
    add-int/lit8 v6, v5, 0x2

    .line 546
    .line 547
    aget-byte v3, v3, v6

    .line 548
    .line 549
    const/4 v8, 0x1

    .line 550
    if-ne v3, v8, :cond_1b

    .line 551
    .line 552
    invoke-virtual {v7, v2}, LA1/x;->g(I)V

    .line 553
    .line 554
    .line 555
    :cond_1b
    const/16 v10, 0xb2

    .line 556
    .line 557
    goto :goto_a

    .line 558
    :cond_1c
    const/4 v8, 0x1

    .line 559
    :goto_a
    sub-int v3, v18, v5

    .line 560
    .line 561
    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/J2;->g:J

    .line 562
    .line 563
    int-to-long v11, v3

    .line 564
    sub-long/2addr v5, v11

    .line 565
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/J2;->f:LA1/n;

    .line 566
    .line 567
    iget-boolean v7, v0, Lcom/google/android/gms/internal/ads/J2;->j:Z

    .line 568
    .line 569
    invoke-virtual {v2, v3, v5, v6, v7}, LA1/n;->d(IJZ)V

    .line 570
    .line 571
    .line 572
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/J2;->f:LA1/n;

    .line 573
    .line 574
    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/J2;->k:J

    .line 575
    .line 576
    iput v10, v2, LA1/n;->d:I

    .line 577
    .line 578
    const/4 v3, 0x0

    .line 579
    iput-boolean v3, v2, LA1/n;->c:Z

    .line 580
    .line 581
    const/16 v3, 0xb6

    .line 582
    .line 583
    if-eq v10, v3, :cond_1e

    .line 584
    .line 585
    const/16 v7, 0xb3

    .line 586
    .line 587
    if-ne v10, v7, :cond_1d

    .line 588
    .line 589
    const/4 v7, 0x1

    .line 590
    const/16 v15, 0xb3

    .line 591
    .line 592
    goto :goto_b

    .line 593
    :cond_1d
    move v15, v10

    .line 594
    const/4 v7, 0x0

    .line 595
    goto :goto_b

    .line 596
    :cond_1e
    move v15, v10

    .line 597
    const/4 v7, 0x1

    .line 598
    :goto_b
    iput-boolean v7, v2, LA1/n;->a:Z

    .line 599
    .line 600
    if-ne v15, v3, :cond_1f

    .line 601
    .line 602
    const/4 v13, 0x1

    .line 603
    goto :goto_c

    .line 604
    :cond_1f
    const/4 v13, 0x0

    .line 605
    :goto_c
    iput-boolean v13, v2, LA1/n;->b:Z

    .line 606
    .line 607
    const/4 v3, 0x0

    .line 608
    iput v3, v2, LA1/n;->e:I

    .line 609
    .line 610
    iput-wide v5, v2, LA1/n;->g:J

    .line 611
    .line 612
    move/from16 v2, v16

    .line 613
    .line 614
    move/from16 v3, v18

    .line 615
    .line 616
    goto/16 :goto_0
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
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/J2;->h:Ljava/lang/String;

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
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/J2;->i:Lcom/google/android/gms/internal/ads/e0;

    .line 22
    .line 23
    new-instance v1, LA1/n;

    .line 24
    .line 25
    invoke-direct {v1, v0}, LA1/n;-><init>(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/J2;->f:LA1/n;

    .line 29
    .line 30
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/J2;->a:Lcom/google/android/gms/internal/ads/b3;

    .line 31
    .line 32
    if-eqz v0, :cond_0

    .line 33
    .line 34
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/b3;->b(Lcom/google/android/gms/internal/ads/N;LA1/I;)V

    .line 35
    .line 36
    .line 37
    :cond_0
    return-void
.end method

.method public final d(IJ)V
    .locals 0

    .line 1
    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/J2;->k:J

    .line 2
    .line 3
    return-void
.end method

.method public final zzc(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/J2;->f:LA1/n;

    .line 2
    .line 3
    invoke-static {v0}, Lo3/r;->x(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/J2;->f:LA1/n;

    .line 9
    .line 10
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/J2;->g:J

    .line 11
    .line 12
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/J2;->j:Z

    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    invoke-virtual {p1, v3, v0, v1, v2}, LA1/n;->d(IJZ)V

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/J2;->f:LA1/n;

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

.method public final zze()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/J2;->c:[Z

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/sy;->g([Z)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/J2;->d:Lcom/google/android/gms/internal/ads/I2;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/I2;->a:Z

    .line 10
    .line 11
    iput v1, v0, Lcom/google/android/gms/internal/ads/I2;->c:I

    .line 12
    .line 13
    iput v1, v0, Lcom/google/android/gms/internal/ads/I2;->b:I

    .line 14
    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/J2;->f:LA1/n;

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
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/J2;->e:LA1/x;

    .line 29
    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    invoke-virtual {v0}, LA1/x;->f()V

    .line 33
    .line 34
    .line 35
    :cond_1
    const-wide/16 v0, 0x0

    .line 36
    .line 37
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/J2;->g:J

    .line 38
    .line 39
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/J2;->k:J

    .line 45
    .line 46
    return-void
.end method
