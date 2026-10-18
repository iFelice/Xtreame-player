.class public final LA1/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LA1/j;


# instance fields
.field public final a:Lp0/E;

.field public final b:Lp0/D;

.field public final c:Lp0/E;

.field public d:I

.field public e:Ljava/lang/String;

.field public f:LW0/L;

.field public g:D

.field public h:D

.field public i:Z

.field public j:Z

.field public k:I

.field public l:I

.field public m:Z

.field public n:I

.field public o:I

.field public final p:Lo1/a;

.field public q:I

.field public r:I

.field public s:I

.field public t:J

.field public u:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, LA1/w;->d:I

    .line 6
    .line 7
    new-instance v0, Lp0/E;

    .line 8
    .line 9
    const/16 v1, 0xf

    .line 10
    .line 11
    new-array v1, v1, [B

    .line 12
    .line 13
    const/4 v2, 0x2

    .line 14
    invoke-direct {v0, v1, v2}, Lp0/E;-><init>([BI)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, LA1/w;->a:Lp0/E;

    .line 18
    .line 19
    new-instance v0, Lp0/D;

    .line 20
    .line 21
    invoke-direct {v0}, Lp0/D;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, LA1/w;->b:Lp0/D;

    .line 25
    .line 26
    new-instance v0, Lp0/E;

    .line 27
    .line 28
    invoke-direct {v0}, Lp0/E;-><init>()V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, LA1/w;->c:Lp0/E;

    .line 32
    .line 33
    new-instance v0, Lo1/a;

    .line 34
    .line 35
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 36
    .line 37
    .line 38
    iput-object v0, p0, LA1/w;->p:Lo1/a;

    .line 39
    .line 40
    const v0, -0x7fffffff

    .line 41
    .line 42
    .line 43
    iput v0, p0, LA1/w;->q:I

    .line 44
    .line 45
    const/4 v0, -0x1

    .line 46
    iput v0, p0, LA1/w;->r:I

    .line 47
    .line 48
    const-wide/16 v0, -0x1

    .line 49
    .line 50
    iput-wide v0, p0, LA1/w;->t:J

    .line 51
    .line 52
    const/4 v0, 0x1

    .line 53
    iput-boolean v0, p0, LA1/w;->j:Z

    .line 54
    .line 55
    iput-boolean v0, p0, LA1/w;->m:Z

    .line 56
    .line 57
    const-wide/high16 v0, -0x3c20000000000000L    # -9.223372036854776E18

    .line 58
    .line 59
    iput-wide v0, p0, LA1/w;->g:D

    .line 60
    .line 61
    iput-wide v0, p0, LA1/w;->h:D

    .line 62
    .line 63
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, LA1/w;->d:I

    .line 3
    .line 4
    iput v0, p0, LA1/w;->l:I

    .line 5
    .line 6
    iget-object v1, p0, LA1/w;->a:Lp0/E;

    .line 7
    .line 8
    const/4 v2, 0x2

    .line 9
    invoke-virtual {v1, v2}, Lp0/E;->I(I)V

    .line 10
    .line 11
    .line 12
    iput v0, p0, LA1/w;->n:I

    .line 13
    .line 14
    iput v0, p0, LA1/w;->o:I

    .line 15
    .line 16
    const v1, -0x7fffffff

    .line 17
    .line 18
    .line 19
    iput v1, p0, LA1/w;->q:I

    .line 20
    .line 21
    const/4 v1, -0x1

    .line 22
    iput v1, p0, LA1/w;->r:I

    .line 23
    .line 24
    iput v0, p0, LA1/w;->s:I

    .line 25
    .line 26
    const-wide/16 v1, -0x1

    .line 27
    .line 28
    iput-wide v1, p0, LA1/w;->t:J

    .line 29
    .line 30
    iput-boolean v0, p0, LA1/w;->u:Z

    .line 31
    .line 32
    iput-boolean v0, p0, LA1/w;->i:Z

    .line 33
    .line 34
    const/4 v0, 0x1

    .line 35
    iput-boolean v0, p0, LA1/w;->m:Z

    .line 36
    .line 37
    iput-boolean v0, p0, LA1/w;->j:Z

    .line 38
    .line 39
    const-wide/high16 v0, -0x3c20000000000000L    # -9.223372036854776E18

    .line 40
    .line 41
    iput-wide v0, p0, LA1/w;->g:D

    .line 42
    .line 43
    iput-wide v0, p0, LA1/w;->h:D

    .line 44
    .line 45
    return-void
.end method

.method public final b(Lp0/E;)V
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const/4 v2, 0x4

    .line 6
    const/4 v3, 0x2

    .line 7
    const/4 v4, 0x0

    .line 8
    const/16 v5, 0x8

    .line 9
    .line 10
    const/4 v6, 0x1

    .line 11
    iget-object v7, v0, LA1/w;->f:LW0/L;

    .line 12
    .line 13
    invoke-static {v7}, Lcom/google/android/gms/internal/measurement/H1;->j(Ljava/lang/Object;)V

    .line 14
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
    if-lez v7, :cond_44

    .line 21
    .line 22
    iget v7, v0, LA1/w;->d:I

    .line 23
    .line 24
    const/4 v8, 0x3

    .line 25
    if-eqz v7, :cond_3f

    .line 26
    .line 27
    iget-object v9, v0, LA1/w;->p:Lo1/a;

    .line 28
    .line 29
    const/4 v10, 0x0

    .line 30
    const/16 v12, 0x18

    .line 31
    .line 32
    const/16 v13, 0x11

    .line 33
    .line 34
    iget-object v14, v0, LA1/w;->c:Lp0/E;

    .line 35
    .line 36
    if-eq v7, v6, :cond_2e

    .line 37
    .line 38
    if-ne v7, v3, :cond_2d

    .line 39
    .line 40
    iget v7, v9, Lo1/a;->G:I

    .line 41
    .line 42
    if-eq v7, v6, :cond_1

    .line 43
    .line 44
    if-ne v7, v13, :cond_2

    .line 45
    .line 46
    :cond_1
    iget v7, v1, Lp0/E;->b:I

    .line 47
    .line 48
    invoke-virtual/range {p1 .. p1}, Lp0/E;->a()I

    .line 49
    .line 50
    .line 51
    move-result v15

    .line 52
    invoke-virtual {v14}, Lp0/E;->a()I

    .line 53
    .line 54
    .line 55
    move-result v13

    .line 56
    invoke-static {v15, v13}, Ljava/lang/Math;->min(II)I

    .line 57
    .line 58
    .line 59
    move-result v13

    .line 60
    iget-object v15, v14, Lp0/E;->a:[B

    .line 61
    .line 62
    iget v11, v14, Lp0/E;->b:I

    .line 63
    .line 64
    invoke-virtual {v1, v11, v15, v13}, Lp0/E;->j(I[BI)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v14, v13}, Lp0/E;->M(I)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1, v7}, Lp0/E;->L(I)V

    .line 71
    .line 72
    .line 73
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lp0/E;->a()I

    .line 74
    .line 75
    .line 76
    move-result v7

    .line 77
    iget v11, v9, Lo1/a;->I:I

    .line 78
    .line 79
    iget v13, v0, LA1/w;->n:I

    .line 80
    .line 81
    sub-int/2addr v11, v13

    .line 82
    invoke-static {v7, v11}, Ljava/lang/Math;->min(II)I

    .line 83
    .line 84
    .line 85
    move-result v7

    .line 86
    iget-object v11, v0, LA1/w;->f:LW0/L;

    .line 87
    .line 88
    invoke-interface {v11, v7, v1}, LW0/L;->e(ILp0/E;)V

    .line 89
    .line 90
    .line 91
    iget v11, v0, LA1/w;->n:I

    .line 92
    .line 93
    add-int/2addr v11, v7

    .line 94
    iput v11, v0, LA1/w;->n:I

    .line 95
    .line 96
    iget v7, v9, Lo1/a;->I:I

    .line 97
    .line 98
    if-ne v11, v7, :cond_0

    .line 99
    .line 100
    iget v7, v9, Lo1/a;->G:I

    .line 101
    .line 102
    if-ne v7, v6, :cond_27

    .line 103
    .line 104
    new-instance v7, Lp0/D;

    .line 105
    .line 106
    iget-object v13, v14, Lp0/E;->a:[B

    .line 107
    .line 108
    invoke-direct {v7, v13, v4, v10}, Lp0/D;-><init>([BILjava/lang/Object;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v7, v5}, Lp0/D;->i(I)I

    .line 112
    .line 113
    .line 114
    move-result v13

    .line 115
    const/4 v14, 0x5

    .line 116
    invoke-virtual {v7, v14}, Lp0/D;->i(I)I

    .line 117
    .line 118
    .line 119
    move-result v15

    .line 120
    const/16 v10, 0x1f

    .line 121
    .line 122
    if-ne v15, v10, :cond_3

    .line 123
    .line 124
    invoke-virtual {v7, v12}, Lp0/D;->i(I)I

    .line 125
    .line 126
    .line 127
    move-result v10

    .line 128
    goto/16 :goto_1

    .line 129
    .line 130
    :cond_3
    packed-switch v15, :pswitch_data_0

    .line 131
    .line 132
    .line 133
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 134
    .line 135
    const-string v2, "Unsupported sampling rate index "

    .line 136
    .line 137
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v1

    .line 147
    invoke-static {v1}, Lm0/P;->c(Ljava/lang/String;)Lm0/P;

    .line 148
    .line 149
    .line 150
    move-result-object v1

    .line 151
    throw v1

    .line 152
    :pswitch_1
    const/16 v10, 0x2580

    .line 153
    .line 154
    goto/16 :goto_1

    .line 155
    .line 156
    :pswitch_2
    const/16 v10, 0x3200

    .line 157
    .line 158
    goto/16 :goto_1

    .line 159
    .line 160
    :pswitch_3
    const/16 v10, 0x3840

    .line 161
    .line 162
    goto :goto_1

    .line 163
    :pswitch_4
    const/16 v10, 0x42b3

    .line 164
    .line 165
    goto :goto_1

    .line 166
    :pswitch_5
    const/16 v10, 0x4b00

    .line 167
    .line 168
    goto :goto_1

    .line 169
    :pswitch_6
    const/16 v10, 0x4e20

    .line 170
    .line 171
    goto :goto_1

    .line 172
    :pswitch_7
    const/16 v10, 0x6400

    .line 173
    .line 174
    goto :goto_1

    .line 175
    :pswitch_8
    const/16 v10, 0x7080

    .line 176
    .line 177
    goto :goto_1

    .line 178
    :pswitch_9
    const v10, 0x8566

    .line 179
    .line 180
    .line 181
    goto :goto_1

    .line 182
    :pswitch_a
    const v10, 0x9600

    .line 183
    .line 184
    .line 185
    goto :goto_1

    .line 186
    :pswitch_b
    const v10, 0x9c40

    .line 187
    .line 188
    .line 189
    goto :goto_1

    .line 190
    :pswitch_c
    const v10, 0xc800

    .line 191
    .line 192
    .line 193
    goto :goto_1

    .line 194
    :pswitch_d
    const v10, 0xe100

    .line 195
    .line 196
    .line 197
    goto :goto_1

    .line 198
    :pswitch_e
    const/16 v10, 0x1cb6

    .line 199
    .line 200
    goto :goto_1

    .line 201
    :pswitch_f
    const/16 v10, 0x1f40

    .line 202
    .line 203
    goto :goto_1

    .line 204
    :pswitch_10
    const/16 v10, 0x2b11

    .line 205
    .line 206
    goto :goto_1

    .line 207
    :pswitch_11
    const/16 v10, 0x2ee0

    .line 208
    .line 209
    goto :goto_1

    .line 210
    :pswitch_12
    const/16 v10, 0x3e80

    .line 211
    .line 212
    goto :goto_1

    .line 213
    :pswitch_13
    const/16 v10, 0x5622

    .line 214
    .line 215
    goto :goto_1

    .line 216
    :pswitch_14
    const/16 v10, 0x5dc0

    .line 217
    .line 218
    goto :goto_1

    .line 219
    :pswitch_15
    const/16 v10, 0x7d00

    .line 220
    .line 221
    goto :goto_1

    .line 222
    :pswitch_16
    const v10, 0xac44

    .line 223
    .line 224
    .line 225
    goto :goto_1

    .line 226
    :pswitch_17
    const v10, 0xbb80

    .line 227
    .line 228
    .line 229
    goto :goto_1

    .line 230
    :pswitch_18
    const v10, 0xfa00

    .line 231
    .line 232
    .line 233
    goto :goto_1

    .line 234
    :pswitch_19
    const v10, 0x15888

    .line 235
    .line 236
    .line 237
    goto :goto_1

    .line 238
    :pswitch_1a
    const v10, 0x17700

    .line 239
    .line 240
    .line 241
    :goto_1
    invoke-virtual {v7, v8}, Lp0/D;->i(I)I

    .line 242
    .line 243
    .line 244
    move-result v12

    .line 245
    const-string v15, "Unsupported coreSbrFrameLengthIndex "

    .line 246
    .line 247
    if-eqz v12, :cond_7

    .line 248
    .line 249
    if-eq v12, v6, :cond_6

    .line 250
    .line 251
    if-eq v12, v3, :cond_5

    .line 252
    .line 253
    if-eq v12, v8, :cond_5

    .line 254
    .line 255
    if-ne v12, v2, :cond_4

    .line 256
    .line 257
    const/16 v16, 0x1000

    .line 258
    .line 259
    const/16 v17, 0x1000

    .line 260
    .line 261
    goto :goto_2

    .line 262
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    .line 263
    .line 264
    invoke-direct {v1, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 265
    .line 266
    .line 267
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 268
    .line 269
    .line 270
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object v1

    .line 274
    invoke-static {v1}, Lm0/P;->c(Ljava/lang/String;)Lm0/P;

    .line 275
    .line 276
    .line 277
    move-result-object v1

    .line 278
    throw v1

    .line 279
    :cond_5
    const/16 v16, 0x800

    .line 280
    .line 281
    const/16 v17, 0x800

    .line 282
    .line 283
    goto :goto_2

    .line 284
    :cond_6
    const/16 v16, 0x400

    .line 285
    .line 286
    const/16 v17, 0x400

    .line 287
    .line 288
    goto :goto_2

    .line 289
    :cond_7
    const/16 v16, 0x300

    .line 290
    .line 291
    const/16 v17, 0x300

    .line 292
    .line 293
    :goto_2
    if-eqz v12, :cond_b

    .line 294
    .line 295
    if-eq v12, v6, :cond_b

    .line 296
    .line 297
    if-eq v12, v3, :cond_a

    .line 298
    .line 299
    if-eq v12, v8, :cond_9

    .line 300
    .line 301
    if-ne v12, v2, :cond_8

    .line 302
    .line 303
    const/4 v12, 0x1

    .line 304
    goto :goto_3

    .line 305
    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 306
    .line 307
    invoke-direct {v1, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 308
    .line 309
    .line 310
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 311
    .line 312
    .line 313
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 314
    .line 315
    .line 316
    move-result-object v1

    .line 317
    invoke-static {v1}, Lm0/P;->c(Ljava/lang/String;)Lm0/P;

    .line 318
    .line 319
    .line 320
    move-result-object v1

    .line 321
    throw v1

    .line 322
    :cond_9
    const/4 v12, 0x3

    .line 323
    goto :goto_3

    .line 324
    :cond_a
    const/4 v12, 0x2

    .line 325
    goto :goto_3

    .line 326
    :cond_b
    const/4 v12, 0x0

    .line 327
    :goto_3
    invoke-virtual {v7, v3}, Lp0/D;->u(I)V

    .line 328
    .line 329
    .line 330
    invoke-static {v7}, LJ6/r;->s(Lp0/D;)V

    .line 331
    .line 332
    .line 333
    invoke-virtual {v7, v14}, Lp0/D;->i(I)I

    .line 334
    .line 335
    .line 336
    move-result v15

    .line 337
    const/4 v11, 0x0

    .line 338
    const/16 v18, 0x0

    .line 339
    .line 340
    :goto_4
    add-int/lit8 v4, v15, 0x1

    .line 341
    .line 342
    const/16 v2, 0x10

    .line 343
    .line 344
    if-ge v11, v4, :cond_e

    .line 345
    .line 346
    invoke-virtual {v7, v8}, Lp0/D;->i(I)I

    .line 347
    .line 348
    .line 349
    move-result v4

    .line 350
    invoke-static {v7, v14, v5, v2}, LJ6/r;->p(Lp0/D;III)I

    .line 351
    .line 352
    .line 353
    move-result v2

    .line 354
    add-int/2addr v2, v6

    .line 355
    add-int v18, v2, v18

    .line 356
    .line 357
    if-eqz v4, :cond_c

    .line 358
    .line 359
    if-ne v4, v3, :cond_d

    .line 360
    .line 361
    :cond_c
    invoke-virtual {v7}, Lp0/D;->h()Z

    .line 362
    .line 363
    .line 364
    move-result v2

    .line 365
    if-eqz v2, :cond_d

    .line 366
    .line 367
    invoke-static {v7}, LJ6/r;->s(Lp0/D;)V

    .line 368
    .line 369
    .line 370
    :cond_d
    add-int/2addr v11, v6

    .line 371
    const/4 v2, 0x4

    .line 372
    goto :goto_4

    .line 373
    :cond_e
    const/4 v4, 0x4

    .line 374
    invoke-static {v7, v4, v5, v2}, LJ6/r;->p(Lp0/D;III)I

    .line 375
    .line 376
    .line 377
    move-result v11

    .line 378
    add-int/2addr v11, v6

    .line 379
    invoke-virtual {v7}, Lp0/D;->t()V

    .line 380
    .line 381
    .line 382
    const/4 v4, 0x0

    .line 383
    :goto_5
    const-wide/high16 v19, 0x4000000000000000L    # 2.0

    .line 384
    .line 385
    if-ge v4, v11, :cond_1e

    .line 386
    .line 387
    invoke-virtual {v7, v3}, Lp0/D;->i(I)I

    .line 388
    .line 389
    .line 390
    move-result v15

    .line 391
    if-eqz v15, :cond_1c

    .line 392
    .line 393
    if-eq v15, v6, :cond_12

    .line 394
    .line 395
    if-eq v15, v8, :cond_10

    .line 396
    .line 397
    :cond_f
    :goto_6
    const/4 v2, 0x1

    .line 398
    goto/16 :goto_8

    .line 399
    .line 400
    :cond_10
    const/4 v15, 0x4

    .line 401
    invoke-static {v7, v15, v5, v2}, LJ6/r;->p(Lp0/D;III)I

    .line 402
    .line 403
    .line 404
    invoke-static {v7, v15, v5, v2}, LJ6/r;->p(Lp0/D;III)I

    .line 405
    .line 406
    .line 407
    move-result v19

    .line 408
    invoke-virtual {v7}, Lp0/D;->h()Z

    .line 409
    .line 410
    .line 411
    move-result v15

    .line 412
    if-eqz v15, :cond_11

    .line 413
    .line 414
    const/4 v15, 0x0

    .line 415
    invoke-static {v7, v5, v2, v15}, LJ6/r;->p(Lp0/D;III)I

    .line 416
    .line 417
    .line 418
    :cond_11
    invoke-virtual {v7}, Lp0/D;->t()V

    .line 419
    .line 420
    .line 421
    if-lez v19, :cond_f

    .line 422
    .line 423
    mul-int/lit8 v15, v19, 0x8

    .line 424
    .line 425
    invoke-virtual {v7, v15}, Lp0/D;->u(I)V

    .line 426
    .line 427
    .line 428
    goto :goto_6

    .line 429
    :cond_12
    invoke-virtual {v7, v8}, Lp0/D;->u(I)V

    .line 430
    .line 431
    .line 432
    invoke-virtual {v7}, Lp0/D;->h()Z

    .line 433
    .line 434
    .line 435
    move-result v15

    .line 436
    if-eqz v15, :cond_13

    .line 437
    .line 438
    const/16 v2, 0xd

    .line 439
    .line 440
    invoke-virtual {v7, v2}, Lp0/D;->u(I)V

    .line 441
    .line 442
    .line 443
    :cond_13
    if-eqz v15, :cond_14

    .line 444
    .line 445
    invoke-virtual {v7}, Lp0/D;->t()V

    .line 446
    .line 447
    .line 448
    :cond_14
    if-lez v12, :cond_15

    .line 449
    .line 450
    invoke-static {v7}, LJ6/r;->r(Lp0/D;)V

    .line 451
    .line 452
    .line 453
    invoke-virtual {v7, v3}, Lp0/D;->i(I)I

    .line 454
    .line 455
    .line 456
    move-result v2

    .line 457
    goto :goto_7

    .line 458
    :cond_15
    const/4 v2, 0x0

    .line 459
    :goto_7
    if-lez v2, :cond_19

    .line 460
    .line 461
    const/4 v15, 0x6

    .line 462
    invoke-virtual {v7, v15}, Lp0/D;->u(I)V

    .line 463
    .line 464
    .line 465
    invoke-virtual {v7, v3}, Lp0/D;->i(I)I

    .line 466
    .line 467
    .line 468
    move-result v5

    .line 469
    const/4 v6, 0x4

    .line 470
    invoke-virtual {v7, v6}, Lp0/D;->u(I)V

    .line 471
    .line 472
    .line 473
    invoke-virtual {v7}, Lp0/D;->h()Z

    .line 474
    .line 475
    .line 476
    move-result v6

    .line 477
    if-eqz v6, :cond_16

    .line 478
    .line 479
    invoke-virtual {v7, v14}, Lp0/D;->u(I)V

    .line 480
    .line 481
    .line 482
    :cond_16
    if-eq v2, v3, :cond_17

    .line 483
    .line 484
    if-ne v2, v8, :cond_18

    .line 485
    .line 486
    :cond_17
    invoke-virtual {v7, v15}, Lp0/D;->u(I)V

    .line 487
    .line 488
    .line 489
    :cond_18
    if-ne v5, v3, :cond_19

    .line 490
    .line 491
    invoke-virtual {v7}, Lp0/D;->t()V

    .line 492
    .line 493
    .line 494
    :cond_19
    const/4 v2, 0x1

    .line 495
    add-int/lit8 v5, v18, -0x1

    .line 496
    .line 497
    int-to-double v5, v5

    .line 498
    invoke-static {v5, v6}, Ljava/lang/Math;->log(D)D

    .line 499
    .line 500
    .line 501
    move-result-wide v5

    .line 502
    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->log(D)D

    .line 503
    .line 504
    .line 505
    move-result-wide v19

    .line 506
    div-double v5, v5, v19

    .line 507
    .line 508
    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    .line 509
    .line 510
    .line 511
    move-result-wide v5

    .line 512
    double-to-int v5, v5

    .line 513
    add-int/2addr v5, v2

    .line 514
    invoke-virtual {v7, v3}, Lp0/D;->i(I)I

    .line 515
    .line 516
    .line 517
    move-result v2

    .line 518
    if-lez v2, :cond_1a

    .line 519
    .line 520
    invoke-virtual {v7}, Lp0/D;->h()Z

    .line 521
    .line 522
    .line 523
    move-result v6

    .line 524
    if-eqz v6, :cond_1a

    .line 525
    .line 526
    invoke-virtual {v7, v5}, Lp0/D;->u(I)V

    .line 527
    .line 528
    .line 529
    :cond_1a
    invoke-virtual {v7}, Lp0/D;->h()Z

    .line 530
    .line 531
    .line 532
    move-result v6

    .line 533
    if-eqz v6, :cond_1b

    .line 534
    .line 535
    invoke-virtual {v7, v5}, Lp0/D;->u(I)V

    .line 536
    .line 537
    .line 538
    :cond_1b
    if-nez v12, :cond_f

    .line 539
    .line 540
    if-nez v2, :cond_f

    .line 541
    .line 542
    invoke-virtual {v7}, Lp0/D;->t()V

    .line 543
    .line 544
    .line 545
    goto/16 :goto_6

    .line 546
    .line 547
    :cond_1c
    invoke-virtual {v7, v8}, Lp0/D;->u(I)V

    .line 548
    .line 549
    .line 550
    invoke-virtual {v7}, Lp0/D;->h()Z

    .line 551
    .line 552
    .line 553
    move-result v2

    .line 554
    if-eqz v2, :cond_1d

    .line 555
    .line 556
    const/16 v2, 0xd

    .line 557
    .line 558
    invoke-virtual {v7, v2}, Lp0/D;->u(I)V

    .line 559
    .line 560
    .line 561
    :cond_1d
    if-lez v12, :cond_f

    .line 562
    .line 563
    invoke-static {v7}, LJ6/r;->r(Lp0/D;)V

    .line 564
    .line 565
    .line 566
    goto/16 :goto_6

    .line 567
    .line 568
    :goto_8
    add-int/2addr v4, v2

    .line 569
    const/16 v2, 0x10

    .line 570
    .line 571
    const/16 v5, 0x8

    .line 572
    .line 573
    const/4 v6, 0x1

    .line 574
    goto/16 :goto_5

    .line 575
    .line 576
    :cond_1e
    const/4 v2, 0x1

    .line 577
    invoke-virtual {v7}, Lp0/D;->h()Z

    .line 578
    .line 579
    .line 580
    move-result v4

    .line 581
    if-eqz v4, :cond_21

    .line 582
    .line 583
    const/16 v4, 0x8

    .line 584
    .line 585
    const/4 v5, 0x4

    .line 586
    invoke-static {v7, v3, v5, v4}, LJ6/r;->p(Lp0/D;III)I

    .line 587
    .line 588
    .line 589
    move-result v6

    .line 590
    add-int/2addr v6, v2

    .line 591
    const/4 v8, 0x0

    .line 592
    const/4 v11, 0x0

    .line 593
    :goto_9
    if-ge v11, v6, :cond_22

    .line 594
    .line 595
    const/16 v12, 0x10

    .line 596
    .line 597
    invoke-static {v7, v5, v4, v12}, LJ6/r;->p(Lp0/D;III)I

    .line 598
    .line 599
    .line 600
    move-result v14

    .line 601
    invoke-static {v7, v5, v4, v12}, LJ6/r;->p(Lp0/D;III)I

    .line 602
    .line 603
    .line 604
    move-result v15

    .line 605
    const/4 v12, 0x7

    .line 606
    if-ne v14, v12, :cond_20

    .line 607
    .line 608
    invoke-virtual {v7, v5}, Lp0/D;->i(I)I

    .line 609
    .line 610
    .line 611
    move-result v8

    .line 612
    add-int/2addr v8, v2

    .line 613
    invoke-virtual {v7, v5}, Lp0/D;->u(I)V

    .line 614
    .line 615
    .line 616
    new-array v5, v8, [B

    .line 617
    .line 618
    const/4 v12, 0x0

    .line 619
    :goto_a
    if-ge v12, v8, :cond_1f

    .line 620
    .line 621
    invoke-virtual {v7, v4}, Lp0/D;->i(I)I

    .line 622
    .line 623
    .line 624
    move-result v14

    .line 625
    int-to-byte v14, v14

    .line 626
    aput-byte v14, v5, v12

    .line 627
    .line 628
    add-int/2addr v12, v2

    .line 629
    goto :goto_a

    .line 630
    :cond_1f
    move-object v8, v5

    .line 631
    goto :goto_b

    .line 632
    :cond_20
    mul-int/lit8 v15, v15, 0x8

    .line 633
    .line 634
    invoke-virtual {v7, v15}, Lp0/D;->u(I)V

    .line 635
    .line 636
    .line 637
    :goto_b
    add-int/2addr v11, v2

    .line 638
    const/16 v4, 0x8

    .line 639
    .line 640
    const/4 v5, 0x4

    .line 641
    goto :goto_9

    .line 642
    :cond_21
    const/4 v8, 0x0

    .line 643
    :cond_22
    sparse-switch v10, :sswitch_data_0

    .line 644
    .line 645
    .line 646
    new-instance v1, Ljava/lang/StringBuilder;

    .line 647
    .line 648
    const-string v2, "Unsupported sampling rate "

    .line 649
    .line 650
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 651
    .line 652
    .line 653
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 654
    .line 655
    .line 656
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 657
    .line 658
    .line 659
    move-result-object v1

    .line 660
    invoke-static {v1}, Lm0/P;->c(Ljava/lang/String;)Lm0/P;

    .line 661
    .line 662
    .line 663
    move-result-object v1

    .line 664
    throw v1

    .line 665
    :sswitch_0
    const-wide/high16 v19, 0x3ff0000000000000L    # 1.0

    .line 666
    .line 667
    goto :goto_c

    .line 668
    :sswitch_1
    const-wide/high16 v19, 0x3ff8000000000000L    # 1.5

    .line 669
    .line 670
    goto :goto_c

    .line 671
    :sswitch_2
    const-wide/high16 v19, 0x4008000000000000L    # 3.0

    .line 672
    .line 673
    :goto_c
    :sswitch_3
    int-to-double v4, v10

    .line 674
    mul-double v4, v4, v19

    .line 675
    .line 676
    double-to-int v2, v4

    .line 677
    move/from16 v4, v17

    .line 678
    .line 679
    int-to-double v4, v4

    .line 680
    mul-double v4, v4, v19

    .line 681
    .line 682
    double-to-int v4, v4

    .line 683
    iput v2, v0, LA1/w;->q:I

    .line 684
    .line 685
    iput v4, v0, LA1/w;->r:I

    .line 686
    .line 687
    iget-wide v4, v0, LA1/w;->t:J

    .line 688
    .line 689
    iget-wide v6, v9, Lo1/a;->H:J

    .line 690
    .line 691
    cmp-long v2, v4, v6

    .line 692
    .line 693
    if-eqz v2, :cond_25

    .line 694
    .line 695
    iput-wide v6, v0, LA1/w;->t:J

    .line 696
    .line 697
    const-string v2, "mhm1"

    .line 698
    .line 699
    const/4 v4, -0x1

    .line 700
    if-eq v13, v4, :cond_23

    .line 701
    .line 702
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 703
    .line 704
    .line 705
    move-result-object v4

    .line 706
    const/4 v5, 0x1

    .line 707
    new-array v6, v5, [Ljava/lang/Object;

    .line 708
    .line 709
    const/4 v5, 0x0

    .line 710
    aput-object v4, v6, v5

    .line 711
    .line 712
    const-string v4, ".%02X"

    .line 713
    .line 714
    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 715
    .line 716
    .line 717
    move-result-object v4

    .line 718
    invoke-virtual {v2, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 719
    .line 720
    .line 721
    move-result-object v2

    .line 722
    :cond_23
    if-eqz v8, :cond_24

    .line 723
    .line 724
    array-length v4, v8

    .line 725
    if-lez v4, :cond_24

    .line 726
    .line 727
    sget-object v4, Lp0/M;->b:[B

    .line 728
    .line 729
    invoke-static {v4, v8}, Lz4/H;->y(Ljava/lang/Object;Ljava/lang/Object;)Lz4/d0;

    .line 730
    .line 731
    .line 732
    move-result-object v10

    .line 733
    goto :goto_d

    .line 734
    :cond_24
    const/4 v10, 0x0

    .line 735
    :goto_d
    new-instance v4, Lm0/s;

    .line 736
    .line 737
    invoke-direct {v4}, Lm0/s;-><init>()V

    .line 738
    .line 739
    .line 740
    iget-object v5, v0, LA1/w;->e:Ljava/lang/String;

    .line 741
    .line 742
    iput-object v5, v4, Lm0/s;->a:Ljava/lang/String;

    .line 743
    .line 744
    const-string v5, "video/mp2t"

    .line 745
    .line 746
    invoke-static {v5}, Lm0/O;->p(Ljava/lang/String;)Ljava/lang/String;

    .line 747
    .line 748
    .line 749
    move-result-object v5

    .line 750
    iput-object v5, v4, Lm0/s;->m:Ljava/lang/String;

    .line 751
    .line 752
    const-string v5, "audio/mhm1"

    .line 753
    .line 754
    invoke-static {v5}, Lm0/O;->p(Ljava/lang/String;)Ljava/lang/String;

    .line 755
    .line 756
    .line 757
    move-result-object v5

    .line 758
    iput-object v5, v4, Lm0/s;->n:Ljava/lang/String;

    .line 759
    .line 760
    iget v5, v0, LA1/w;->q:I

    .line 761
    .line 762
    iput v5, v4, Lm0/s;->G:I

    .line 763
    .line 764
    iput-object v2, v4, Lm0/s;->j:Ljava/lang/String;

    .line 765
    .line 766
    iput-object v10, v4, Lm0/s;->q:Ljava/util/List;

    .line 767
    .line 768
    new-instance v2, Lm0/t;

    .line 769
    .line 770
    invoke-direct {v2, v4}, Lm0/t;-><init>(Lm0/s;)V

    .line 771
    .line 772
    .line 773
    iget-object v4, v0, LA1/w;->f:LW0/L;

    .line 774
    .line 775
    invoke-interface {v4, v2}, LW0/L;->b(Lm0/t;)V

    .line 776
    .line 777
    .line 778
    :cond_25
    const/4 v2, 0x1

    .line 779
    iput-boolean v2, v0, LA1/w;->u:Z

    .line 780
    .line 781
    :cond_26
    :goto_e
    const/4 v2, 0x1

    .line 782
    goto/16 :goto_12

    .line 783
    .line 784
    :cond_27
    const/16 v2, 0x11

    .line 785
    .line 786
    if-ne v7, v2, :cond_29

    .line 787
    .line 788
    new-instance v2, Lp0/D;

    .line 789
    .line 790
    iget-object v4, v14, Lp0/E;->a:[B

    .line 791
    .line 792
    const/4 v5, 0x0

    .line 793
    const/4 v6, 0x0

    .line 794
    invoke-direct {v2, v4, v6, v5}, Lp0/D;-><init>([BILjava/lang/Object;)V

    .line 795
    .line 796
    .line 797
    invoke-virtual {v2}, Lp0/D;->h()Z

    .line 798
    .line 799
    .line 800
    move-result v4

    .line 801
    if-eqz v4, :cond_28

    .line 802
    .line 803
    invoke-virtual {v2, v3}, Lp0/D;->u(I)V

    .line 804
    .line 805
    .line 806
    const/16 v4, 0xd

    .line 807
    .line 808
    invoke-virtual {v2, v4}, Lp0/D;->i(I)I

    .line 809
    .line 810
    .line 811
    move-result v2

    .line 812
    goto :goto_f

    .line 813
    :cond_28
    const/4 v2, 0x0

    .line 814
    :goto_f
    iput v2, v0, LA1/w;->s:I

    .line 815
    .line 816
    goto :goto_e

    .line 817
    :cond_29
    if-ne v7, v3, :cond_26

    .line 818
    .line 819
    iget-boolean v2, v0, LA1/w;->u:Z

    .line 820
    .line 821
    if-eqz v2, :cond_2a

    .line 822
    .line 823
    const/4 v2, 0x0

    .line 824
    iput-boolean v2, v0, LA1/w;->j:Z

    .line 825
    .line 826
    const/4 v7, 0x1

    .line 827
    goto :goto_10

    .line 828
    :cond_2a
    const/4 v7, 0x0

    .line 829
    :goto_10
    iget v2, v0, LA1/w;->r:I

    .line 830
    .line 831
    iget v4, v0, LA1/w;->s:I

    .line 832
    .line 833
    sub-int/2addr v2, v4

    .line 834
    int-to-double v4, v2

    .line 835
    const-wide v8, 0x412e848000000000L    # 1000000.0

    .line 836
    .line 837
    .line 838
    .line 839
    .line 840
    mul-double v4, v4, v8

    .line 841
    .line 842
    iget v2, v0, LA1/w;->q:I

    .line 843
    .line 844
    int-to-double v8, v2

    .line 845
    div-double/2addr v4, v8

    .line 846
    iget-wide v8, v0, LA1/w;->g:D

    .line 847
    .line 848
    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    .line 849
    .line 850
    .line 851
    move-result-wide v8

    .line 852
    iget-boolean v2, v0, LA1/w;->i:Z

    .line 853
    .line 854
    if-eqz v2, :cond_2b

    .line 855
    .line 856
    const/4 v2, 0x0

    .line 857
    iput-boolean v2, v0, LA1/w;->i:Z

    .line 858
    .line 859
    iget-wide v4, v0, LA1/w;->h:D

    .line 860
    .line 861
    iput-wide v4, v0, LA1/w;->g:D

    .line 862
    .line 863
    goto :goto_11

    .line 864
    :cond_2b
    iget-wide v10, v0, LA1/w;->g:D

    .line 865
    .line 866
    add-double/2addr v10, v4

    .line 867
    iput-wide v10, v0, LA1/w;->g:D

    .line 868
    .line 869
    :goto_11
    iget-object v4, v0, LA1/w;->f:LW0/L;

    .line 870
    .line 871
    iget v2, v0, LA1/w;->o:I

    .line 872
    .line 873
    const/4 v10, 0x0

    .line 874
    const/4 v11, 0x0

    .line 875
    move-wide v5, v8

    .line 876
    move v8, v2

    .line 877
    move v9, v10

    .line 878
    move-object v10, v11

    .line 879
    invoke-interface/range {v4 .. v10}, LW0/L;->d(JIIILW0/K;)V

    .line 880
    .line 881
    .line 882
    const/4 v2, 0x0

    .line 883
    iput-boolean v2, v0, LA1/w;->u:Z

    .line 884
    .line 885
    iput v2, v0, LA1/w;->s:I

    .line 886
    .line 887
    iput v2, v0, LA1/w;->o:I

    .line 888
    .line 889
    goto :goto_e

    .line 890
    :goto_12
    iput v2, v0, LA1/w;->d:I

    .line 891
    .line 892
    :cond_2c
    :goto_13
    const/4 v2, 0x4

    .line 893
    const/4 v4, 0x0

    .line 894
    const/16 v5, 0x8

    .line 895
    .line 896
    :goto_14
    const/4 v6, 0x1

    .line 897
    goto/16 :goto_0

    .line 898
    .line 899
    :cond_2d
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 900
    .line 901
    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 902
    .line 903
    .line 904
    throw v1

    .line 905
    :cond_2e
    invoke-virtual/range {p1 .. p1}, Lp0/E;->a()I

    .line 906
    .line 907
    .line 908
    move-result v2

    .line 909
    iget-object v4, v0, LA1/w;->a:Lp0/E;

    .line 910
    .line 911
    invoke-virtual {v4}, Lp0/E;->a()I

    .line 912
    .line 913
    .line 914
    move-result v5

    .line 915
    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    .line 916
    .line 917
    .line 918
    move-result v2

    .line 919
    iget-object v5, v4, Lp0/E;->a:[B

    .line 920
    .line 921
    iget v6, v4, Lp0/E;->b:I

    .line 922
    .line 923
    invoke-virtual {v1, v6, v5, v2}, Lp0/E;->j(I[BI)V

    .line 924
    .line 925
    .line 926
    invoke-virtual {v4, v2}, Lp0/E;->M(I)V

    .line 927
    .line 928
    .line 929
    invoke-virtual {v4}, Lp0/E;->a()I

    .line 930
    .line 931
    .line 932
    move-result v2

    .line 933
    if-nez v2, :cond_3e

    .line 934
    .line 935
    iget v2, v4, Lp0/E;->c:I

    .line 936
    .line 937
    iget-object v5, v4, Lp0/E;->a:[B

    .line 938
    .line 939
    iget-object v6, v0, LA1/w;->b:Lp0/D;

    .line 940
    .line 941
    invoke-virtual {v6, v2, v5}, Lp0/D;->p(I[B)V

    .line 942
    .line 943
    .line 944
    invoke-virtual {v6}, Lp0/D;->f()I

    .line 945
    .line 946
    .line 947
    const/16 v5, 0x8

    .line 948
    .line 949
    invoke-static {v6, v8, v5, v5}, LJ6/r;->p(Lp0/D;III)I

    .line 950
    .line 951
    .line 952
    move-result v7

    .line 953
    iput v7, v9, Lo1/a;->G:I

    .line 954
    .line 955
    const/4 v8, -0x1

    .line 956
    if-ne v7, v8, :cond_30

    .line 957
    .line 958
    :cond_2f
    :goto_15
    const/4 v5, 0x0

    .line 959
    goto/16 :goto_1a

    .line 960
    .line 961
    :cond_30
    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    .line 962
    .line 963
    .line 964
    move-result v7

    .line 965
    const/16 v5, 0x20

    .line 966
    .line 967
    invoke-static {v7, v5}, Ljava/lang/Math;->max(II)I

    .line 968
    .line 969
    .line 970
    move-result v7

    .line 971
    const/16 v8, 0x3f

    .line 972
    .line 973
    if-gt v7, v8, :cond_31

    .line 974
    .line 975
    const/4 v7, 0x1

    .line 976
    goto :goto_16

    .line 977
    :cond_31
    const/4 v7, 0x0

    .line 978
    :goto_16
    invoke-static {v7}, Lcom/google/android/gms/internal/measurement/H1;->d(Z)V

    .line 979
    .line 980
    .line 981
    const-wide/16 v7, 0x3

    .line 982
    .line 983
    const-wide/16 v10, 0xff

    .line 984
    .line 985
    invoke-static {v7, v8, v10, v11}, LQ3/b;->c(JJ)J

    .line 986
    .line 987
    .line 988
    move-result-wide v12

    .line 989
    const-wide v10, 0x100000000L

    .line 990
    .line 991
    .line 992
    .line 993
    .line 994
    invoke-static {v12, v13, v10, v11}, LQ3/b;->c(JJ)J

    .line 995
    .line 996
    .line 997
    invoke-virtual {v6}, Lp0/D;->b()I

    .line 998
    .line 999
    .line 1000
    move-result v10

    .line 1001
    const-wide/16 v11, -0x1

    .line 1002
    .line 1003
    if-ge v10, v3, :cond_32

    .line 1004
    .line 1005
    :goto_17
    move-wide v7, v11

    .line 1006
    goto :goto_18

    .line 1007
    :cond_32
    invoke-virtual {v6, v3}, Lp0/D;->k(I)J

    .line 1008
    .line 1009
    .line 1010
    move-result-wide v19

    .line 1011
    cmp-long v10, v19, v7

    .line 1012
    .line 1013
    if-nez v10, :cond_35

    .line 1014
    .line 1015
    invoke-virtual {v6}, Lp0/D;->b()I

    .line 1016
    .line 1017
    .line 1018
    move-result v7

    .line 1019
    const/16 v8, 0x8

    .line 1020
    .line 1021
    if-ge v7, v8, :cond_33

    .line 1022
    .line 1023
    goto :goto_17

    .line 1024
    :cond_33
    invoke-virtual {v6, v8}, Lp0/D;->k(I)J

    .line 1025
    .line 1026
    .line 1027
    move-result-wide v21

    .line 1028
    add-long v19, v19, v21

    .line 1029
    .line 1030
    const-wide/16 v7, 0xff

    .line 1031
    .line 1032
    cmp-long v10, v21, v7

    .line 1033
    .line 1034
    if-nez v10, :cond_35

    .line 1035
    .line 1036
    invoke-virtual {v6}, Lp0/D;->b()I

    .line 1037
    .line 1038
    .line 1039
    move-result v7

    .line 1040
    if-ge v7, v5, :cond_34

    .line 1041
    .line 1042
    goto :goto_17

    .line 1043
    :cond_34
    invoke-virtual {v6, v5}, Lp0/D;->k(I)J

    .line 1044
    .line 1045
    .line 1046
    move-result-wide v7

    .line 1047
    add-long v19, v7, v19

    .line 1048
    .line 1049
    :cond_35
    move-wide/from16 v7, v19

    .line 1050
    .line 1051
    :goto_18
    iput-wide v7, v9, Lo1/a;->H:J

    .line 1052
    .line 1053
    cmp-long v5, v7, v11

    .line 1054
    .line 1055
    if-nez v5, :cond_36

    .line 1056
    .line 1057
    goto :goto_15

    .line 1058
    :cond_36
    const-wide/16 v10, 0x10

    .line 1059
    .line 1060
    cmp-long v5, v7, v10

    .line 1061
    .line 1062
    if-gtz v5, :cond_3d

    .line 1063
    .line 1064
    const-wide/16 v10, 0x0

    .line 1065
    .line 1066
    cmp-long v5, v7, v10

    .line 1067
    .line 1068
    if-nez v5, :cond_3a

    .line 1069
    .line 1070
    iget v5, v9, Lo1/a;->G:I

    .line 1071
    .line 1072
    const/4 v7, 0x1

    .line 1073
    if-eq v5, v7, :cond_39

    .line 1074
    .line 1075
    if-eq v5, v3, :cond_38

    .line 1076
    .line 1077
    const/16 v7, 0x11

    .line 1078
    .line 1079
    if-eq v5, v7, :cond_37

    .line 1080
    .line 1081
    goto :goto_19

    .line 1082
    :cond_37
    const-string v1, "AudioTruncation packet with invalid packet label 0"

    .line 1083
    .line 1084
    const/4 v2, 0x0

    .line 1085
    invoke-static {v1, v2}, Lm0/P;->a(Ljava/lang/String;Ljava/lang/RuntimeException;)Lm0/P;

    .line 1086
    .line 1087
    .line 1088
    move-result-object v1

    .line 1089
    throw v1

    .line 1090
    :cond_38
    const/4 v2, 0x0

    .line 1091
    const-string v1, "Mpegh3daFrame packet with invalid packet label 0"

    .line 1092
    .line 1093
    invoke-static {v1, v2}, Lm0/P;->a(Ljava/lang/String;Ljava/lang/RuntimeException;)Lm0/P;

    .line 1094
    .line 1095
    .line 1096
    move-result-object v1

    .line 1097
    throw v1

    .line 1098
    :cond_39
    const/4 v2, 0x0

    .line 1099
    const-string v1, "Mpegh3daConfig packet with invalid packet label 0"

    .line 1100
    .line 1101
    invoke-static {v1, v2}, Lm0/P;->a(Ljava/lang/String;Ljava/lang/RuntimeException;)Lm0/P;

    .line 1102
    .line 1103
    .line 1104
    move-result-object v1

    .line 1105
    throw v1

    .line 1106
    :cond_3a
    :goto_19
    const/16 v5, 0xb

    .line 1107
    .line 1108
    const/16 v7, 0x18

    .line 1109
    .line 1110
    invoke-static {v6, v5, v7, v7}, LJ6/r;->p(Lp0/D;III)I

    .line 1111
    .line 1112
    .line 1113
    move-result v5

    .line 1114
    iput v5, v9, Lo1/a;->I:I

    .line 1115
    .line 1116
    const/4 v6, -0x1

    .line 1117
    if-eq v5, v6, :cond_2f

    .line 1118
    .line 1119
    const/4 v5, 0x1

    .line 1120
    :goto_1a
    const/4 v6, 0x0

    .line 1121
    if-eqz v5, :cond_3b

    .line 1122
    .line 1123
    iput v6, v0, LA1/w;->n:I

    .line 1124
    .line 1125
    iget v7, v0, LA1/w;->o:I

    .line 1126
    .line 1127
    iget v8, v9, Lo1/a;->I:I

    .line 1128
    .line 1129
    add-int/2addr v8, v2

    .line 1130
    add-int/2addr v8, v7

    .line 1131
    iput v8, v0, LA1/w;->o:I

    .line 1132
    .line 1133
    :cond_3b
    if-eqz v5, :cond_3c

    .line 1134
    .line 1135
    invoke-virtual {v4, v6}, Lp0/E;->L(I)V

    .line 1136
    .line 1137
    .line 1138
    iget-object v2, v0, LA1/w;->f:LW0/L;

    .line 1139
    .line 1140
    iget v5, v4, Lp0/E;->c:I

    .line 1141
    .line 1142
    invoke-interface {v2, v5, v4}, LW0/L;->e(ILp0/E;)V

    .line 1143
    .line 1144
    .line 1145
    invoke-virtual {v4, v3}, Lp0/E;->I(I)V

    .line 1146
    .line 1147
    .line 1148
    iget v2, v9, Lo1/a;->I:I

    .line 1149
    .line 1150
    invoke-virtual {v14, v2}, Lp0/E;->I(I)V

    .line 1151
    .line 1152
    .line 1153
    const/4 v2, 0x1

    .line 1154
    iput-boolean v2, v0, LA1/w;->m:Z

    .line 1155
    .line 1156
    iput v3, v0, LA1/w;->d:I

    .line 1157
    .line 1158
    goto/16 :goto_13

    .line 1159
    .line 1160
    :cond_3c
    const/4 v2, 0x1

    .line 1161
    iget v5, v4, Lp0/E;->c:I

    .line 1162
    .line 1163
    const/16 v6, 0xf

    .line 1164
    .line 1165
    if-ge v5, v6, :cond_2c

    .line 1166
    .line 1167
    add-int/2addr v5, v2

    .line 1168
    invoke-virtual {v4, v5}, Lp0/E;->K(I)V

    .line 1169
    .line 1170
    .line 1171
    const/4 v2, 0x0

    .line 1172
    iput-boolean v2, v0, LA1/w;->m:Z

    .line 1173
    .line 1174
    goto/16 :goto_13

    .line 1175
    .line 1176
    :cond_3d
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1177
    .line 1178
    const-string v2, "Contains sub-stream with an invalid packet label "

    .line 1179
    .line 1180
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1181
    .line 1182
    .line 1183
    iget-wide v2, v9, Lo1/a;->H:J

    .line 1184
    .line 1185
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1186
    .line 1187
    .line 1188
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1189
    .line 1190
    .line 1191
    move-result-object v1

    .line 1192
    invoke-static {v1}, Lm0/P;->c(Ljava/lang/String;)Lm0/P;

    .line 1193
    .line 1194
    .line 1195
    move-result-object v1

    .line 1196
    throw v1

    .line 1197
    :cond_3e
    const/4 v2, 0x0

    .line 1198
    iput-boolean v2, v0, LA1/w;->m:Z

    .line 1199
    .line 1200
    goto/16 :goto_13

    .line 1201
    .line 1202
    :cond_3f
    iget v2, v0, LA1/w;->k:I

    .line 1203
    .line 1204
    and-int/lit8 v4, v2, 0x2

    .line 1205
    .line 1206
    if-nez v4, :cond_40

    .line 1207
    .line 1208
    iget v2, v1, Lp0/E;->c:I

    .line 1209
    .line 1210
    invoke-virtual {v1, v2}, Lp0/E;->L(I)V

    .line 1211
    .line 1212
    .line 1213
    const/4 v2, 0x0

    .line 1214
    const/4 v4, 0x4

    .line 1215
    :goto_1b
    const/16 v5, 0x8

    .line 1216
    .line 1217
    goto :goto_1d

    .line 1218
    :cond_40
    const/4 v4, 0x4

    .line 1219
    and-int/2addr v2, v4

    .line 1220
    if-nez v2, :cond_43

    .line 1221
    .line 1222
    :cond_41
    invoke-virtual/range {p1 .. p1}, Lp0/E;->a()I

    .line 1223
    .line 1224
    .line 1225
    move-result v2

    .line 1226
    if-lez v2, :cond_42

    .line 1227
    .line 1228
    iget v2, v0, LA1/w;->l:I

    .line 1229
    .line 1230
    const/16 v5, 0x8

    .line 1231
    .line 1232
    shl-int/2addr v2, v5

    .line 1233
    iput v2, v0, LA1/w;->l:I

    .line 1234
    .line 1235
    invoke-virtual/range {p1 .. p1}, Lp0/E;->z()I

    .line 1236
    .line 1237
    .line 1238
    move-result v6

    .line 1239
    or-int/2addr v2, v6

    .line 1240
    iput v2, v0, LA1/w;->l:I

    .line 1241
    .line 1242
    const v6, 0xffffff

    .line 1243
    .line 1244
    .line 1245
    and-int/2addr v2, v6

    .line 1246
    const v6, 0xc001a5

    .line 1247
    .line 1248
    .line 1249
    if-ne v2, v6, :cond_41

    .line 1250
    .line 1251
    iget v2, v1, Lp0/E;->b:I

    .line 1252
    .line 1253
    sub-int/2addr v2, v8

    .line 1254
    invoke-virtual {v1, v2}, Lp0/E;->L(I)V

    .line 1255
    .line 1256
    .line 1257
    const/4 v2, 0x0

    .line 1258
    iput v2, v0, LA1/w;->l:I

    .line 1259
    .line 1260
    :goto_1c
    const/4 v6, 0x1

    .line 1261
    goto :goto_1e

    .line 1262
    :cond_42
    const/4 v2, 0x0

    .line 1263
    goto :goto_1b

    .line 1264
    :goto_1d
    const/4 v2, 0x4

    .line 1265
    const/4 v4, 0x0

    .line 1266
    goto/16 :goto_14

    .line 1267
    .line 1268
    :cond_43
    const/4 v2, 0x0

    .line 1269
    const/16 v5, 0x8

    .line 1270
    .line 1271
    goto :goto_1c

    .line 1272
    :goto_1e
    iput v6, v0, LA1/w;->d:I

    .line 1273
    .line 1274
    const/4 v2, 0x4

    .line 1275
    const/4 v4, 0x0

    .line 1276
    goto/16 :goto_0

    .line 1277
    .line 1278
    :cond_44
    return-void

    .line 1279
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_0
        :pswitch_0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    .line 1280
    .line 1281
    .line 1282
    .line 1283
    .line 1284
    .line 1285
    .line 1286
    .line 1287
    .line 1288
    .line 1289
    .line 1290
    .line 1291
    .line 1292
    .line 1293
    .line 1294
    .line 1295
    .line 1296
    .line 1297
    .line 1298
    .line 1299
    .line 1300
    .line 1301
    .line 1302
    .line 1303
    .line 1304
    .line 1305
    .line 1306
    .line 1307
    .line 1308
    .line 1309
    .line 1310
    .line 1311
    .line 1312
    .line 1313
    .line 1314
    .line 1315
    .line 1316
    .line 1317
    .line 1318
    .line 1319
    .line 1320
    .line 1321
    .line 1322
    .line 1323
    .line 1324
    .line 1325
    .line 1326
    .line 1327
    .line 1328
    .line 1329
    .line 1330
    .line 1331
    .line 1332
    .line 1333
    .line 1334
    .line 1335
    .line 1336
    .line 1337
    .line 1338
    .line 1339
    :sswitch_data_0
    .sparse-switch
        0x396c -> :sswitch_2
        0x3e80 -> :sswitch_2
        0x5622 -> :sswitch_3
        0x5dc0 -> :sswitch_3
        0x72d8 -> :sswitch_1
        0x7d00 -> :sswitch_1
        0xac44 -> :sswitch_0
        0xbb80 -> :sswitch_0
        0xe5b0 -> :sswitch_1
        0xfa00 -> :sswitch_1
        0x15888 -> :sswitch_0
        0x17700 -> :sswitch_0
    .end sparse-switch
.end method

.method public final c(LW0/u;LA1/I;)V
    .locals 1

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
    iput-object v0, p0, LA1/w;->e:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {p2}, LA1/I;->b()V

    .line 12
    .line 13
    .line 14
    iget p2, p2, LA1/I;->d:I

    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    invoke-interface {p1, p2, v0}, LW0/u;->t(II)LW0/L;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iput-object p1, p0, LA1/w;->f:LW0/L;

    .line 22
    .line 23
    return-void
.end method

.method public final d(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public final e(IJ)V
    .locals 2

    .line 1
    iput p1, p0, LA1/w;->k:I

    .line 2
    .line 3
    iget-boolean p1, p0, LA1/w;->j:Z

    .line 4
    .line 5
    if-nez p1, :cond_1

    .line 6
    .line 7
    iget p1, p0, LA1/w;->o:I

    .line 8
    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    iget-boolean p1, p0, LA1/w;->m:Z

    .line 12
    .line 13
    if-nez p1, :cond_1

    .line 14
    .line 15
    :cond_0
    const/4 p1, 0x1

    .line 16
    iput-boolean p1, p0, LA1/w;->i:Z

    .line 17
    .line 18
    :cond_1
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    cmp-long p1, p2, v0

    .line 24
    .line 25
    if-eqz p1, :cond_3

    .line 26
    .line 27
    iget-boolean p1, p0, LA1/w;->i:Z

    .line 28
    .line 29
    if-eqz p1, :cond_2

    .line 30
    .line 31
    long-to-double p1, p2

    .line 32
    iput-wide p1, p0, LA1/w;->h:D

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_2
    long-to-double p1, p2

    .line 36
    iput-wide p1, p0, LA1/w;->g:D

    .line 37
    .line 38
    :cond_3
    :goto_0
    return-void
.end method
