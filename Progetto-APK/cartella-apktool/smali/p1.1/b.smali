.class public final Lp1/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp1/h;


# instance fields
.field public final G:Lp1/g;

.field public final H:J

.field public final I:J

.field public final J:Lp1/j;

.field public K:I

.field public L:J

.field public M:J

.field public N:J

.field public O:J

.field public P:J

.field public Q:J

.field public R:J


# direct methods
.method public constructor <init>(Lp1/j;JJJJZ)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    cmp-long v3, p2, v0

    .line 8
    .line 9
    if-ltz v3, :cond_0

    .line 10
    .line 11
    cmp-long v0, p4, p2

    .line 12
    .line 13
    if-lez v0, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/H1;->d(Z)V

    .line 19
    .line 20
    .line 21
    iput-object p1, p0, Lp1/b;->J:Lp1/j;

    .line 22
    .line 23
    iput-wide p2, p0, Lp1/b;->H:J

    .line 24
    .line 25
    iput-wide p4, p0, Lp1/b;->I:J

    .line 26
    .line 27
    sub-long/2addr p4, p2

    .line 28
    cmp-long p1, p6, p4

    .line 29
    .line 30
    if-eqz p1, :cond_2

    .line 31
    .line 32
    if-eqz p10, :cond_1

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_1
    iput v2, p0, Lp1/b;->K:I

    .line 36
    .line 37
    goto :goto_2

    .line 38
    :cond_2
    :goto_1
    iput-wide p8, p0, Lp1/b;->L:J

    .line 39
    .line 40
    const/4 p1, 0x4

    .line 41
    iput p1, p0, Lp1/b;->K:I

    .line 42
    .line 43
    :goto_2
    new-instance p1, Lp1/g;

    .line 44
    .line 45
    invoke-direct {p1}, Lp1/g;-><init>()V

    .line 46
    .line 47
    .line 48
    iput-object p1, p0, Lp1/b;->G:Lp1/g;

    .line 49
    .line 50
    return-void
.end method


# virtual methods
.method public final J(LW0/t;)J
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget v2, v0, Lp1/b;->K:I

    .line 6
    .line 7
    const-wide/16 v3, 0x0

    .line 8
    .line 9
    const-wide/16 v5, -0x1

    .line 10
    .line 11
    const/4 v7, 0x0

    .line 12
    iget-wide v8, v0, Lp1/b;->I:J

    .line 13
    .line 14
    iget-object v10, v0, Lp1/b;->G:Lp1/g;

    .line 15
    .line 16
    const/4 v11, 0x1

    .line 17
    const/4 v12, 0x4

    .line 18
    if-eqz v2, :cond_e

    .line 19
    .line 20
    if-eq v2, v11, :cond_c

    .line 21
    .line 22
    const/4 v8, 0x2

    .line 23
    const/4 v9, 0x3

    .line 24
    if-eq v2, v8, :cond_2

    .line 25
    .line 26
    if-eq v2, v9, :cond_1

    .line 27
    .line 28
    if-ne v2, v12, :cond_0

    .line 29
    .line 30
    return-wide v5

    .line 31
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 32
    .line 33
    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 34
    .line 35
    .line 36
    throw v1

    .line 37
    :cond_1
    move-wide v2, v5

    .line 38
    move-object/from16 v23, v10

    .line 39
    .line 40
    goto/16 :goto_6

    .line 41
    .line 42
    :cond_2
    iget-wide v13, v0, Lp1/b;->O:J

    .line 43
    .line 44
    iget-wide v5, v0, Lp1/b;->P:J

    .line 45
    .line 46
    cmp-long v2, v13, v5

    .line 47
    .line 48
    if-nez v2, :cond_3

    .line 49
    .line 50
    :goto_0
    move-object/from16 v23, v10

    .line 51
    .line 52
    const-wide/16 v2, -0x1

    .line 53
    .line 54
    const-wide/16 v15, -0x1

    .line 55
    .line 56
    goto/16 :goto_5

    .line 57
    .line 58
    :cond_3
    invoke-interface/range {p1 .. p1}, LW0/t;->r()J

    .line 59
    .line 60
    .line 61
    move-result-wide v5

    .line 62
    iget-wide v13, v0, Lp1/b;->P:J

    .line 63
    .line 64
    invoke-virtual {v10, v1, v13, v14}, Lp1/g;->b(LW0/t;J)Z

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    if-nez v2, :cond_5

    .line 69
    .line 70
    iget-wide v2, v0, Lp1/b;->O:J

    .line 71
    .line 72
    cmp-long v4, v2, v5

    .line 73
    .line 74
    if-eqz v4, :cond_4

    .line 75
    .line 76
    move-wide v15, v2

    .line 77
    :goto_1
    move-object/from16 v23, v10

    .line 78
    .line 79
    :goto_2
    const-wide/16 v2, -0x1

    .line 80
    .line 81
    goto/16 :goto_5

    .line 82
    .line 83
    :cond_4
    new-instance v1, Ljava/io/IOException;

    .line 84
    .line 85
    const-string v2, "No ogg page can be found."

    .line 86
    .line 87
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    throw v1

    .line 91
    :cond_5
    invoke-virtual {v10, v1, v7}, Lp1/g;->a(LW0/t;Z)Z

    .line 92
    .line 93
    .line 94
    invoke-interface/range {p1 .. p1}, LW0/t;->m()V

    .line 95
    .line 96
    .line 97
    iget-wide v13, v0, Lp1/b;->N:J

    .line 98
    .line 99
    iget-wide v7, v10, Lp1/g;->b:J

    .line 100
    .line 101
    sub-long/2addr v13, v7

    .line 102
    iget v11, v10, Lp1/g;->d:I

    .line 103
    .line 104
    iget v2, v10, Lp1/g;->e:I

    .line 105
    .line 106
    add-int/2addr v11, v2

    .line 107
    cmp-long v2, v3, v13

    .line 108
    .line 109
    if-gtz v2, :cond_6

    .line 110
    .line 111
    const-wide/32 v17, 0x11940

    .line 112
    .line 113
    .line 114
    cmp-long v2, v13, v17

    .line 115
    .line 116
    if-gez v2, :cond_6

    .line 117
    .line 118
    goto :goto_0

    .line 119
    :cond_6
    cmp-long v2, v13, v3

    .line 120
    .line 121
    if-gez v2, :cond_7

    .line 122
    .line 123
    iput-wide v5, v0, Lp1/b;->P:J

    .line 124
    .line 125
    iput-wide v7, v0, Lp1/b;->R:J

    .line 126
    .line 127
    goto :goto_3

    .line 128
    :cond_7
    invoke-interface/range {p1 .. p1}, LW0/t;->r()J

    .line 129
    .line 130
    .line 131
    move-result-wide v3

    .line 132
    int-to-long v5, v11

    .line 133
    add-long/2addr v3, v5

    .line 134
    iput-wide v3, v0, Lp1/b;->O:J

    .line 135
    .line 136
    iget-wide v3, v10, Lp1/g;->b:J

    .line 137
    .line 138
    iput-wide v3, v0, Lp1/b;->Q:J

    .line 139
    .line 140
    :goto_3
    iget-wide v3, v0, Lp1/b;->P:J

    .line 141
    .line 142
    iget-wide v5, v0, Lp1/b;->O:J

    .line 143
    .line 144
    sub-long/2addr v3, v5

    .line 145
    const-wide/32 v7, 0x186a0

    .line 146
    .line 147
    .line 148
    cmp-long v17, v3, v7

    .line 149
    .line 150
    if-gez v17, :cond_8

    .line 151
    .line 152
    iput-wide v5, v0, Lp1/b;->P:J

    .line 153
    .line 154
    move-wide v15, v5

    .line 155
    goto :goto_1

    .line 156
    :cond_8
    int-to-long v3, v11

    .line 157
    const-wide/16 v5, 0x1

    .line 158
    .line 159
    if-gtz v2, :cond_9

    .line 160
    .line 161
    const-wide/16 v7, 0x2

    .line 162
    .line 163
    goto :goto_4

    .line 164
    :cond_9
    move-wide v7, v5

    .line 165
    :goto_4
    mul-long v3, v3, v7

    .line 166
    .line 167
    invoke-interface/range {p1 .. p1}, LW0/t;->r()J

    .line 168
    .line 169
    .line 170
    move-result-wide v7

    .line 171
    sub-long/2addr v7, v3

    .line 172
    iget-wide v2, v0, Lp1/b;->P:J

    .line 173
    .line 174
    move-object/from16 v23, v10

    .line 175
    .line 176
    iget-wide v9, v0, Lp1/b;->O:J

    .line 177
    .line 178
    sub-long v17, v2, v9

    .line 179
    .line 180
    mul-long v17, v17, v13

    .line 181
    .line 182
    iget-wide v13, v0, Lp1/b;->R:J

    .line 183
    .line 184
    iget-wide v11, v0, Lp1/b;->Q:J

    .line 185
    .line 186
    sub-long/2addr v13, v11

    .line 187
    div-long v17, v17, v13

    .line 188
    .line 189
    add-long v17, v17, v7

    .line 190
    .line 191
    sub-long v21, v2, v5

    .line 192
    .line 193
    move-wide/from16 v19, v9

    .line 194
    .line 195
    invoke-static/range {v17 .. v22}, Lp0/M;->j(JJJ)J

    .line 196
    .line 197
    .line 198
    move-result-wide v2

    .line 199
    move-wide v15, v2

    .line 200
    goto :goto_2

    .line 201
    :goto_5
    cmp-long v5, v15, v2

    .line 202
    .line 203
    if-eqz v5, :cond_a

    .line 204
    .line 205
    return-wide v15

    .line 206
    :cond_a
    const/4 v4, 0x3

    .line 207
    iput v4, v0, Lp1/b;->K:I

    .line 208
    .line 209
    :goto_6
    move-object/from16 v5, v23

    .line 210
    .line 211
    :goto_7
    invoke-virtual {v5, v1, v2, v3}, Lp1/g;->b(LW0/t;J)Z

    .line 212
    .line 213
    .line 214
    const/4 v2, 0x0

    .line 215
    invoke-virtual {v5, v1, v2}, Lp1/g;->a(LW0/t;Z)Z

    .line 216
    .line 217
    .line 218
    iget-wide v3, v5, Lp1/g;->b:J

    .line 219
    .line 220
    iget-wide v6, v0, Lp1/b;->N:J

    .line 221
    .line 222
    cmp-long v8, v3, v6

    .line 223
    .line 224
    if-lez v8, :cond_b

    .line 225
    .line 226
    invoke-interface/range {p1 .. p1}, LW0/t;->m()V

    .line 227
    .line 228
    .line 229
    const/4 v1, 0x4

    .line 230
    iput v1, v0, Lp1/b;->K:I

    .line 231
    .line 232
    iget-wide v1, v0, Lp1/b;->Q:J

    .line 233
    .line 234
    const-wide/16 v6, 0x2

    .line 235
    .line 236
    add-long/2addr v1, v6

    .line 237
    neg-long v1, v1

    .line 238
    return-wide v1

    .line 239
    :cond_b
    const-wide/16 v6, 0x2

    .line 240
    .line 241
    iget v3, v5, Lp1/g;->d:I

    .line 242
    .line 243
    iget v4, v5, Lp1/g;->e:I

    .line 244
    .line 245
    add-int/2addr v3, v4

    .line 246
    invoke-interface {v1, v3}, LW0/t;->n(I)V

    .line 247
    .line 248
    .line 249
    invoke-interface/range {p1 .. p1}, LW0/t;->r()J

    .line 250
    .line 251
    .line 252
    move-result-wide v3

    .line 253
    iput-wide v3, v0, Lp1/b;->O:J

    .line 254
    .line 255
    iget-wide v3, v5, Lp1/g;->b:J

    .line 256
    .line 257
    iput-wide v3, v0, Lp1/b;->Q:J

    .line 258
    .line 259
    const-wide/16 v2, -0x1

    .line 260
    .line 261
    goto :goto_7

    .line 262
    :cond_c
    move-object v5, v10

    .line 263
    :cond_d
    const/4 v2, 0x0

    .line 264
    goto :goto_8

    .line 265
    :cond_e
    move-object v5, v10

    .line 266
    invoke-interface/range {p1 .. p1}, LW0/t;->r()J

    .line 267
    .line 268
    .line 269
    move-result-wide v6

    .line 270
    iput-wide v6, v0, Lp1/b;->M:J

    .line 271
    .line 272
    iput v11, v0, Lp1/b;->K:I

    .line 273
    .line 274
    const-wide/32 v12, 0xff1b

    .line 275
    .line 276
    .line 277
    sub-long v12, v8, v12

    .line 278
    .line 279
    cmp-long v10, v12, v6

    .line 280
    .line 281
    if-lez v10, :cond_d

    .line 282
    .line 283
    return-wide v12

    .line 284
    :goto_8
    iput v2, v5, Lp1/g;->a:I

    .line 285
    .line 286
    iput-wide v3, v5, Lp1/g;->b:J

    .line 287
    .line 288
    iput v2, v5, Lp1/g;->c:I

    .line 289
    .line 290
    iput v2, v5, Lp1/g;->d:I

    .line 291
    .line 292
    iput v2, v5, Lp1/g;->e:I

    .line 293
    .line 294
    const-wide/16 v3, -0x1

    .line 295
    .line 296
    invoke-virtual {v5, v1, v3, v4}, Lp1/g;->b(LW0/t;J)Z

    .line 297
    .line 298
    .line 299
    move-result v6

    .line 300
    if-eqz v6, :cond_10

    .line 301
    .line 302
    invoke-virtual {v5, v1, v2}, Lp1/g;->a(LW0/t;Z)Z

    .line 303
    .line 304
    .line 305
    iget v2, v5, Lp1/g;->d:I

    .line 306
    .line 307
    iget v3, v5, Lp1/g;->e:I

    .line 308
    .line 309
    add-int/2addr v2, v3

    .line 310
    invoke-interface {v1, v2}, LW0/t;->n(I)V

    .line 311
    .line 312
    .line 313
    iget-wide v2, v5, Lp1/g;->b:J

    .line 314
    .line 315
    :goto_9
    iget v4, v5, Lp1/g;->a:I

    .line 316
    .line 317
    const/4 v6, 0x4

    .line 318
    and-int/2addr v4, v6

    .line 319
    if-eq v4, v6, :cond_f

    .line 320
    .line 321
    const-wide/16 v6, -0x1

    .line 322
    .line 323
    invoke-virtual {v5, v1, v6, v7}, Lp1/g;->b(LW0/t;J)Z

    .line 324
    .line 325
    .line 326
    move-result v4

    .line 327
    if-eqz v4, :cond_f

    .line 328
    .line 329
    invoke-interface/range {p1 .. p1}, LW0/t;->r()J

    .line 330
    .line 331
    .line 332
    move-result-wide v12

    .line 333
    cmp-long v4, v12, v8

    .line 334
    .line 335
    if-gez v4, :cond_f

    .line 336
    .line 337
    invoke-virtual {v5, v1, v11}, Lp1/g;->a(LW0/t;Z)Z

    .line 338
    .line 339
    .line 340
    move-result v4

    .line 341
    if-eqz v4, :cond_f

    .line 342
    .line 343
    iget v4, v5, Lp1/g;->d:I

    .line 344
    .line 345
    iget v10, v5, Lp1/g;->e:I

    .line 346
    .line 347
    add-int/2addr v4, v10

    .line 348
    :try_start_0
    invoke-interface {v1, v4}, LW0/t;->n(I)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 349
    .line 350
    .line 351
    iget-wide v2, v5, Lp1/g;->b:J

    .line 352
    .line 353
    goto :goto_9

    .line 354
    :catch_0
    :cond_f
    iput-wide v2, v0, Lp1/b;->L:J

    .line 355
    .line 356
    const/4 v1, 0x4

    .line 357
    iput v1, v0, Lp1/b;->K:I

    .line 358
    .line 359
    iget-wide v1, v0, Lp1/b;->M:J

    .line 360
    .line 361
    return-wide v1

    .line 362
    :cond_10
    new-instance v1, Ljava/io/EOFException;

    .line 363
    .line 364
    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    .line 365
    .line 366
    .line 367
    throw v1
.end method

.method public final L(J)V
    .locals 10

    .line 1
    iget-wide v0, p0, Lp1/b;->L:J

    .line 2
    .line 3
    const-wide/16 v2, 0x1

    .line 4
    .line 5
    sub-long v8, v0, v2

    .line 6
    .line 7
    const-wide/16 v6, 0x0

    .line 8
    .line 9
    move-wide v4, p1

    .line 10
    invoke-static/range {v4 .. v9}, Lp0/M;->j(JJJ)J

    .line 11
    .line 12
    .line 13
    move-result-wide p1

    .line 14
    iput-wide p1, p0, Lp1/b;->N:J

    .line 15
    .line 16
    const/4 p1, 0x2

    .line 17
    iput p1, p0, Lp1/b;->K:I

    .line 18
    .line 19
    iget-wide p1, p0, Lp1/b;->H:J

    .line 20
    .line 21
    iput-wide p1, p0, Lp1/b;->O:J

    .line 22
    .line 23
    iget-wide p1, p0, Lp1/b;->I:J

    .line 24
    .line 25
    iput-wide p1, p0, Lp1/b;->P:J

    .line 26
    .line 27
    const-wide/16 p1, 0x0

    .line 28
    .line 29
    iput-wide p1, p0, Lp1/b;->Q:J

    .line 30
    .line 31
    iget-wide p1, p0, Lp1/b;->L:J

    .line 32
    .line 33
    iput-wide p1, p0, Lp1/b;->R:J

    .line 34
    .line 35
    return-void
.end method

.method public final w()LW0/F;
    .locals 5

    .line 1
    iget-wide v0, p0, Lp1/b;->L:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v4, v0, v2

    .line 6
    .line 7
    if-eqz v4, :cond_0

    .line 8
    .line 9
    new-instance v0, Lp1/a;

    .line 10
    .line 11
    invoke-direct {v0, p0}, Lp1/a;-><init>(Lp1/b;)V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    return-object v0
.end method
