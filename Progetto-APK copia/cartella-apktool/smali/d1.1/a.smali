.class public final Ld1/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LW0/s;


# instance fields
.field public final a:Lp0/E;

.field public b:LW0/u;

.field public c:I

.field public d:I

.field public e:I

.field public f:J

.field public g:Lj1/a;

.field public h:LW0/t;

.field public i:Ld1/c;

.field public j:Lo1/l;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lp0/E;

    .line 5
    .line 6
    const/4 v1, 0x2

    .line 7
    invoke-direct {v0, v1}, Lp0/E;-><init>(I)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Ld1/a;->a:Lp0/E;

    .line 11
    .line 12
    const-wide/16 v0, -0x1

    .line 13
    .line 14
    iput-wide v0, p0, Ld1/a;->f:J

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 1
    iget-object v0, p0, Ld1/a;->b:LW0/u;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-interface {v0}, LW0/u;->j()V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Ld1/a;->b:LW0/u;

    .line 10
    .line 11
    new-instance v1, LW0/x;

    .line 12
    .line 13
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    invoke-direct {v1, v2, v3}, LW0/x;-><init>(J)V

    .line 19
    .line 20
    .line 21
    invoke-interface {v0, v1}, LW0/u;->r(LW0/F;)V

    .line 22
    .line 23
    .line 24
    const/4 v0, 0x6

    .line 25
    iput v0, p0, Ld1/a;->c:I

    .line 26
    .line 27
    return-void
.end method

.method public final b()LW0/s;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final d(LW0/u;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld1/a;->b:LW0/u;

    .line 2
    .line 3
    return-void
.end method

.method public final g(LW0/t;)Z
    .locals 5

    .line 1
    iget-object v0, p0, Ld1/a;->a:Lp0/E;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-virtual {v0, v1}, Lp0/E;->I(I)V

    .line 5
    .line 6
    .line 7
    iget-object v2, v0, Lp0/E;->a:[B

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    invoke-interface {p1, v3, v2, v1}, LW0/t;->c(I[BI)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lp0/E;->F()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    const v4, 0xffd8

    .line 18
    .line 19
    .line 20
    if-eq v2, v4, :cond_0

    .line 21
    .line 22
    return v3

    .line 23
    :cond_0
    invoke-virtual {v0, v1}, Lp0/E;->I(I)V

    .line 24
    .line 25
    .line 26
    iget-object v2, v0, Lp0/E;->a:[B

    .line 27
    .line 28
    invoke-interface {p1, v3, v2, v1}, LW0/t;->c(I[BI)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Lp0/E;->F()I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    iput v2, p0, Ld1/a;->d:I

    .line 36
    .line 37
    const v4, 0xffe0

    .line 38
    .line 39
    .line 40
    if-ne v2, v4, :cond_1

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Lp0/E;->I(I)V

    .line 43
    .line 44
    .line 45
    iget-object v2, v0, Lp0/E;->a:[B

    .line 46
    .line 47
    invoke-interface {p1, v3, v2, v1}, LW0/t;->c(I[BI)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Lp0/E;->F()I

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    sub-int/2addr v2, v1

    .line 55
    invoke-interface {p1, v2}, LW0/t;->g(I)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v1}, Lp0/E;->I(I)V

    .line 59
    .line 60
    .line 61
    iget-object v2, v0, Lp0/E;->a:[B

    .line 62
    .line 63
    invoke-interface {p1, v3, v2, v1}, LW0/t;->c(I[BI)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0}, Lp0/E;->F()I

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    iput p1, p0, Ld1/a;->d:I

    .line 71
    .line 72
    :cond_1
    iget p1, p0, Ld1/a;->d:I

    .line 73
    .line 74
    const v0, 0xffe1

    .line 75
    .line 76
    .line 77
    if-ne p1, v0, :cond_2

    .line 78
    .line 79
    const/4 v3, 0x1

    .line 80
    :cond_2
    return v3
.end method

.method public final h(LW0/t;LW0/w;)I
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    const/4 v3, -0x1

    .line 8
    const/4 v4, 0x0

    .line 9
    const/4 v5, 0x1

    .line 10
    iget v6, v0, Ld1/a;->c:I

    .line 11
    .line 12
    const-wide/16 v7, -0x1

    .line 13
    .line 14
    iget-object v9, v0, Ld1/a;->a:Lp0/E;

    .line 15
    .line 16
    const/4 v10, 0x4

    .line 17
    const/4 v11, 0x2

    .line 18
    if-eqz v6, :cond_17

    .line 19
    .line 20
    if-eq v6, v5, :cond_16

    .line 21
    .line 22
    if-eq v6, v11, :cond_a

    .line 23
    .line 24
    const/4 v7, 0x5

    .line 25
    if-eq v6, v10, :cond_5

    .line 26
    .line 27
    if-eq v6, v7, :cond_1

    .line 28
    .line 29
    const/4 v1, 0x6

    .line 30
    if-ne v6, v1, :cond_0

    .line 31
    .line 32
    return v3

    .line 33
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 34
    .line 35
    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 36
    .line 37
    .line 38
    throw v1

    .line 39
    :cond_1
    iget-object v3, v0, Ld1/a;->i:Ld1/c;

    .line 40
    .line 41
    if-eqz v3, :cond_2

    .line 42
    .line 43
    iget-object v3, v0, Ld1/a;->h:LW0/t;

    .line 44
    .line 45
    if-eq v1, v3, :cond_3

    .line 46
    .line 47
    :cond_2
    iput-object v1, v0, Ld1/a;->h:LW0/t;

    .line 48
    .line 49
    new-instance v3, Ld1/c;

    .line 50
    .line 51
    iget-wide v6, v0, Ld1/a;->f:J

    .line 52
    .line 53
    invoke-direct {v3, v1, v6, v7}, Ld1/c;-><init>(LW0/t;J)V

    .line 54
    .line 55
    .line 56
    iput-object v3, v0, Ld1/a;->i:Ld1/c;

    .line 57
    .line 58
    :cond_3
    iget-object v1, v0, Ld1/a;->j:Lo1/l;

    .line 59
    .line 60
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    .line 62
    .line 63
    iget-object v3, v0, Ld1/a;->i:Ld1/c;

    .line 64
    .line 65
    invoke-virtual {v1, v3, v2}, Lo1/l;->h(LW0/t;LW0/w;)I

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    if-ne v1, v5, :cond_4

    .line 70
    .line 71
    iget-wide v3, v2, LW0/w;->a:J

    .line 72
    .line 73
    iget-wide v5, v0, Ld1/a;->f:J

    .line 74
    .line 75
    add-long/2addr v3, v5

    .line 76
    iput-wide v3, v2, LW0/w;->a:J

    .line 77
    .line 78
    :cond_4
    return v1

    .line 79
    :cond_5
    invoke-interface/range {p1 .. p1}, LW0/t;->r()J

    .line 80
    .line 81
    .line 82
    move-result-wide v11

    .line 83
    iget-wide v13, v0, Ld1/a;->f:J

    .line 84
    .line 85
    cmp-long v3, v11, v13

    .line 86
    .line 87
    if-eqz v3, :cond_6

    .line 88
    .line 89
    iput-wide v13, v2, LW0/w;->a:J

    .line 90
    .line 91
    return v5

    .line 92
    :cond_6
    iget-object v2, v9, Lp0/E;->a:[B

    .line 93
    .line 94
    invoke-interface {v1, v2, v4, v5, v5}, LW0/t;->e([BIIZ)Z

    .line 95
    .line 96
    .line 97
    move-result v2

    .line 98
    if-nez v2, :cond_7

    .line 99
    .line 100
    invoke-virtual/range {p0 .. p0}, Ld1/a;->a()V

    .line 101
    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_7
    invoke-interface/range {p1 .. p1}, LW0/t;->m()V

    .line 105
    .line 106
    .line 107
    iget-object v2, v0, Ld1/a;->j:Lo1/l;

    .line 108
    .line 109
    if-nez v2, :cond_8

    .line 110
    .line 111
    new-instance v2, Lo1/l;

    .line 112
    .line 113
    sget-object v3, Lq1/k;->E:LF2/G;

    .line 114
    .line 115
    const/16 v6, 0x8

    .line 116
    .line 117
    invoke-direct {v2, v6, v3}, Lo1/l;-><init>(ILF2/G;)V

    .line 118
    .line 119
    .line 120
    iput-object v2, v0, Ld1/a;->j:Lo1/l;

    .line 121
    .line 122
    :cond_8
    new-instance v2, Ld1/c;

    .line 123
    .line 124
    iget-wide v8, v0, Ld1/a;->f:J

    .line 125
    .line 126
    invoke-direct {v2, v1, v8, v9}, Ld1/c;-><init>(LW0/t;J)V

    .line 127
    .line 128
    .line 129
    iput-object v2, v0, Ld1/a;->i:Ld1/c;

    .line 130
    .line 131
    iget-object v1, v0, Ld1/a;->j:Lo1/l;

    .line 132
    .line 133
    invoke-virtual {v1, v2}, Lo1/l;->g(LW0/t;)Z

    .line 134
    .line 135
    .line 136
    move-result v1

    .line 137
    if-eqz v1, :cond_9

    .line 138
    .line 139
    iget-object v1, v0, Ld1/a;->j:Lo1/l;

    .line 140
    .line 141
    new-instance v2, Ld1/e;

    .line 142
    .line 143
    iget-wide v8, v0, Ld1/a;->f:J

    .line 144
    .line 145
    iget-object v3, v0, Ld1/a;->b:LW0/u;

    .line 146
    .line 147
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 148
    .line 149
    .line 150
    invoke-direct {v2, v8, v9, v3}, Ld1/e;-><init>(JLW0/u;)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v1, v2}, Lo1/l;->d(LW0/u;)V

    .line 154
    .line 155
    .line 156
    iget-object v1, v0, Ld1/a;->g:Lj1/a;

    .line 157
    .line 158
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 159
    .line 160
    .line 161
    iget-object v2, v0, Ld1/a;->b:LW0/u;

    .line 162
    .line 163
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 164
    .line 165
    .line 166
    const/16 v3, 0x400

    .line 167
    .line 168
    invoke-interface {v2, v3, v10}, LW0/u;->t(II)LW0/L;

    .line 169
    .line 170
    .line 171
    move-result-object v2

    .line 172
    new-instance v3, Lm0/s;

    .line 173
    .line 174
    invoke-direct {v3}, Lm0/s;-><init>()V

    .line 175
    .line 176
    .line 177
    const-string v6, "image/jpeg"

    .line 178
    .line 179
    invoke-static {v6}, Lm0/O;->p(Ljava/lang/String;)Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v6

    .line 183
    iput-object v6, v3, Lm0/s;->m:Ljava/lang/String;

    .line 184
    .line 185
    new-instance v6, Lm0/N;

    .line 186
    .line 187
    new-array v5, v5, [Lm0/M;

    .line 188
    .line 189
    aput-object v1, v5, v4

    .line 190
    .line 191
    invoke-direct {v6, v5}, Lm0/N;-><init>([Lm0/M;)V

    .line 192
    .line 193
    .line 194
    iput-object v6, v3, Lm0/s;->k:Lm0/N;

    .line 195
    .line 196
    new-instance v1, Lm0/t;

    .line 197
    .line 198
    invoke-direct {v1, v3}, Lm0/t;-><init>(Lm0/s;)V

    .line 199
    .line 200
    .line 201
    invoke-interface {v2, v1}, LW0/L;->b(Lm0/t;)V

    .line 202
    .line 203
    .line 204
    iput v7, v0, Ld1/a;->c:I

    .line 205
    .line 206
    goto :goto_0

    .line 207
    :cond_9
    invoke-virtual/range {p0 .. p0}, Ld1/a;->a()V

    .line 208
    .line 209
    .line 210
    :goto_0
    return v4

    .line 211
    :cond_a
    iget v2, v0, Ld1/a;->d:I

    .line 212
    .line 213
    const v6, 0xffe1

    .line 214
    .line 215
    .line 216
    if-ne v2, v6, :cond_15

    .line 217
    .line 218
    new-instance v2, Lp0/E;

    .line 219
    .line 220
    iget v6, v0, Ld1/a;->e:I

    .line 221
    .line 222
    invoke-direct {v2, v6}, Lp0/E;-><init>(I)V

    .line 223
    .line 224
    .line 225
    iget-object v6, v2, Lp0/E;->a:[B

    .line 226
    .line 227
    iget v9, v0, Ld1/a;->e:I

    .line 228
    .line 229
    invoke-interface {v1, v6, v4, v9}, LW0/t;->readFully([BII)V

    .line 230
    .line 231
    .line 232
    iget-object v6, v0, Ld1/a;->g:Lj1/a;

    .line 233
    .line 234
    if-nez v6, :cond_14

    .line 235
    .line 236
    const-string v6, "http://ns.adobe.com/xap/1.0/"

    .line 237
    .line 238
    invoke-virtual {v2}, Lp0/E;->u()Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v9

    .line 242
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 243
    .line 244
    .line 245
    move-result v6

    .line 246
    if-eqz v6, :cond_14

    .line 247
    .line 248
    invoke-virtual {v2}, Lp0/E;->u()Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object v2

    .line 252
    if-eqz v2, :cond_14

    .line 253
    .line 254
    invoke-interface/range {p1 .. p1}, LW0/t;->j()J

    .line 255
    .line 256
    .line 257
    move-result-wide v9

    .line 258
    cmp-long v6, v9, v7

    .line 259
    .line 260
    if-nez v6, :cond_c

    .line 261
    .line 262
    :cond_b
    :goto_1
    const/4 v1, 0x0

    .line 263
    goto/16 :goto_6

    .line 264
    .line 265
    :cond_c
    :try_start_0
    invoke-static {v2}, Ld1/f;->a(Ljava/lang/String;)Lf6/c;

    .line 266
    .line 267
    .line 268
    move-result-object v2
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lm0/P; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 269
    goto :goto_2

    .line 270
    :catch_0
    const-string v2, "MotionPhotoXmpParser"

    .line 271
    .line 272
    const-string v6, "Ignoring unexpected XMP metadata"

    .line 273
    .line 274
    invoke-static {v2, v6}, Lp0/x;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    .line 276
    .line 277
    const/4 v2, 0x0

    .line 278
    :goto_2
    if-nez v2, :cond_d

    .line 279
    .line 280
    goto :goto_1

    .line 281
    :cond_d
    iget-object v6, v2, Lf6/c;->I:Ljava/lang/Object;

    .line 282
    .line 283
    check-cast v6, Ljava/util/List;

    .line 284
    .line 285
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 286
    .line 287
    .line 288
    move-result v6

    .line 289
    if-ge v6, v11, :cond_e

    .line 290
    .line 291
    goto :goto_1

    .line 292
    :cond_e
    iget-object v6, v2, Lf6/c;->I:Ljava/lang/Object;

    .line 293
    .line 294
    check-cast v6, Ljava/util/List;

    .line 295
    .line 296
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 297
    .line 298
    .line 299
    move-result v6

    .line 300
    sub-int/2addr v6, v5

    .line 301
    move-wide v12, v7

    .line 302
    move-wide v14, v12

    .line 303
    move-wide/from16 v18, v14

    .line 304
    .line 305
    move-wide/from16 v20, v18

    .line 306
    .line 307
    const/4 v5, 0x0

    .line 308
    :goto_3
    if-ltz v6, :cond_12

    .line 309
    .line 310
    iget-object v11, v2, Lf6/c;->I:Ljava/lang/Object;

    .line 311
    .line 312
    check-cast v11, Ljava/util/List;

    .line 313
    .line 314
    invoke-interface {v11, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 315
    .line 316
    .line 317
    move-result-object v11

    .line 318
    check-cast v11, Ld1/b;

    .line 319
    .line 320
    iget-object v1, v11, Ld1/b;->a:Ljava/lang/String;

    .line 321
    .line 322
    const-string v4, "video/mp4"

    .line 323
    .line 324
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 325
    .line 326
    .line 327
    move-result v1

    .line 328
    or-int/2addr v1, v5

    .line 329
    if-nez v6, :cond_f

    .line 330
    .line 331
    iget-wide v4, v11, Ld1/b;->c:J

    .line 332
    .line 333
    sub-long/2addr v9, v4

    .line 334
    const-wide/16 v4, 0x0

    .line 335
    .line 336
    :goto_4
    move-wide/from16 v22, v4

    .line 337
    .line 338
    move-wide v4, v9

    .line 339
    move-wide/from16 v9, v22

    .line 340
    .line 341
    goto :goto_5

    .line 342
    :cond_f
    iget-wide v4, v11, Ld1/b;->b:J

    .line 343
    .line 344
    sub-long v4, v9, v4

    .line 345
    .line 346
    goto :goto_4

    .line 347
    :goto_5
    if-eqz v1, :cond_10

    .line 348
    .line 349
    cmp-long v11, v9, v4

    .line 350
    .line 351
    if-eqz v11, :cond_10

    .line 352
    .line 353
    sub-long v20, v4, v9

    .line 354
    .line 355
    move-wide/from16 v18, v9

    .line 356
    .line 357
    const/4 v1, 0x0

    .line 358
    :cond_10
    if-nez v6, :cond_11

    .line 359
    .line 360
    move-wide v14, v4

    .line 361
    move-wide v12, v9

    .line 362
    :cond_11
    add-int/2addr v6, v3

    .line 363
    move v5, v1

    .line 364
    const/4 v4, 0x0

    .line 365
    goto :goto_3

    .line 366
    :cond_12
    cmp-long v1, v18, v7

    .line 367
    .line 368
    if-eqz v1, :cond_b

    .line 369
    .line 370
    cmp-long v1, v20, v7

    .line 371
    .line 372
    if-eqz v1, :cond_b

    .line 373
    .line 374
    cmp-long v1, v12, v7

    .line 375
    .line 376
    if-eqz v1, :cond_b

    .line 377
    .line 378
    cmp-long v1, v14, v7

    .line 379
    .line 380
    if-nez v1, :cond_13

    .line 381
    .line 382
    goto :goto_1

    .line 383
    :cond_13
    new-instance v1, Lj1/a;

    .line 384
    .line 385
    iget-wide v2, v2, Lf6/c;->H:J

    .line 386
    .line 387
    move-object v11, v1

    .line 388
    move-wide/from16 v16, v2

    .line 389
    .line 390
    invoke-direct/range {v11 .. v21}, Lj1/a;-><init>(JJJJJ)V

    .line 391
    .line 392
    .line 393
    :goto_6
    iput-object v1, v0, Ld1/a;->g:Lj1/a;

    .line 394
    .line 395
    if-eqz v1, :cond_14

    .line 396
    .line 397
    iget-wide v1, v1, Lj1/a;->d:J

    .line 398
    .line 399
    iput-wide v1, v0, Ld1/a;->f:J

    .line 400
    .line 401
    :cond_14
    :goto_7
    const/4 v2, 0x0

    .line 402
    goto :goto_8

    .line 403
    :cond_15
    iget v2, v0, Ld1/a;->e:I

    .line 404
    .line 405
    invoke-interface {v1, v2}, LW0/t;->n(I)V

    .line 406
    .line 407
    .line 408
    goto :goto_7

    .line 409
    :goto_8
    iput v2, v0, Ld1/a;->c:I

    .line 410
    .line 411
    return v2

    .line 412
    :cond_16
    const/4 v2, 0x0

    .line 413
    invoke-virtual {v9, v11}, Lp0/E;->I(I)V

    .line 414
    .line 415
    .line 416
    iget-object v3, v9, Lp0/E;->a:[B

    .line 417
    .line 418
    invoke-interface {v1, v3, v2, v11}, LW0/t;->readFully([BII)V

    .line 419
    .line 420
    .line 421
    invoke-virtual {v9}, Lp0/E;->F()I

    .line 422
    .line 423
    .line 424
    move-result v1

    .line 425
    sub-int/2addr v1, v11

    .line 426
    iput v1, v0, Ld1/a;->e:I

    .line 427
    .line 428
    iput v11, v0, Ld1/a;->c:I

    .line 429
    .line 430
    return v2

    .line 431
    :cond_17
    const/4 v2, 0x0

    .line 432
    invoke-virtual {v9, v11}, Lp0/E;->I(I)V

    .line 433
    .line 434
    .line 435
    iget-object v3, v9, Lp0/E;->a:[B

    .line 436
    .line 437
    invoke-interface {v1, v3, v2, v11}, LW0/t;->readFully([BII)V

    .line 438
    .line 439
    .line 440
    invoke-virtual {v9}, Lp0/E;->F()I

    .line 441
    .line 442
    .line 443
    move-result v1

    .line 444
    iput v1, v0, Ld1/a;->d:I

    .line 445
    .line 446
    const v2, 0xffda

    .line 447
    .line 448
    .line 449
    if-ne v1, v2, :cond_1a

    .line 450
    .line 451
    iget-wide v1, v0, Ld1/a;->f:J

    .line 452
    .line 453
    cmp-long v3, v1, v7

    .line 454
    .line 455
    if-eqz v3, :cond_19

    .line 456
    .line 457
    iput v10, v0, Ld1/a;->c:I

    .line 458
    .line 459
    :cond_18
    :goto_9
    const/4 v1, 0x0

    .line 460
    goto :goto_a

    .line 461
    :cond_19
    invoke-virtual/range {p0 .. p0}, Ld1/a;->a()V

    .line 462
    .line 463
    .line 464
    goto :goto_9

    .line 465
    :cond_1a
    const v2, 0xffd0

    .line 466
    .line 467
    .line 468
    if-lt v1, v2, :cond_1b

    .line 469
    .line 470
    const v2, 0xffd9

    .line 471
    .line 472
    .line 473
    if-le v1, v2, :cond_18

    .line 474
    .line 475
    :cond_1b
    const v2, 0xff01

    .line 476
    .line 477
    .line 478
    if-eq v1, v2, :cond_18

    .line 479
    .line 480
    iput v5, v0, Ld1/a;->c:I

    .line 481
    .line 482
    goto :goto_9

    .line 483
    :goto_a
    return v1
.end method

.method public final i(JJ)V
    .locals 3

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v2, p1, v0

    .line 4
    .line 5
    if-nez v2, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    iput p1, p0, Ld1/a;->c:I

    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    iput-object p1, p0, Ld1/a;->j:Lo1/l;

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget v0, p0, Ld1/a;->c:I

    .line 15
    .line 16
    const/4 v1, 0x5

    .line 17
    if-ne v0, v1, :cond_1

    .line 18
    .line 19
    iget-object v0, p0, Ld1/a;->j:Lo1/l;

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p1, p2, p3, p4}, Lo1/l;->i(JJ)V

    .line 25
    .line 26
    .line 27
    :cond_1
    :goto_0
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
    .locals 1

    .line 1
    iget-object v0, p0, Ld1/a;->j:Lo1/l;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method
