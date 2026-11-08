.class public final LA1/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LA1/J;


# instance fields
.field public final a:LA1/j;

.field public final b:Lp0/D;

.field public c:I

.field public d:I

.field public e:Lp0/J;

.field public f:Z

.field public g:Z

.field public h:Z

.field public i:I

.field public j:I

.field public k:Z

.field public l:J


# direct methods
.method public constructor <init>(LA1/j;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LA1/y;->a:LA1/j;

    .line 5
    .line 6
    new-instance p1, Lp0/D;

    .line 7
    .line 8
    const/16 v0, 0xa

    .line 9
    .line 10
    new-array v0, v0, [B

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-direct {p1, v0, v2, v1}, Lp0/D;-><init>([BILjava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    iput-object p1, p0, LA1/y;->b:Lp0/D;

    .line 18
    .line 19
    iput v2, p0, LA1/y;->c:I

    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, LA1/y;->c:I

    .line 3
    .line 4
    iput v0, p0, LA1/y;->d:I

    .line 5
    .line 6
    iput-boolean v0, p0, LA1/y;->h:Z

    .line 7
    .line 8
    iget-object v0, p0, LA1/y;->a:LA1/j;

    .line 9
    .line 10
    invoke-interface {v0}, LA1/j;->a()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final b(ILp0/E;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    iget-object v2, v0, LA1/y;->e:Lp0/J;

    .line 6
    .line 7
    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/H1;->j(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    and-int/lit8 v2, p1, 0x1

    .line 11
    .line 12
    const/4 v3, 0x1

    .line 13
    const/4 v4, -0x1

    .line 14
    const/4 v5, 0x2

    .line 15
    iget-object v6, v0, LA1/y;->a:LA1/j;

    .line 16
    .line 17
    const/4 v7, 0x3

    .line 18
    const/4 v8, 0x0

    .line 19
    if-eqz v2, :cond_5

    .line 20
    .line 21
    iget v2, v0, LA1/y;->c:I

    .line 22
    .line 23
    if-eqz v2, :cond_4

    .line 24
    .line 25
    if-eq v2, v3, :cond_4

    .line 26
    .line 27
    const-string v9, "PesReader"

    .line 28
    .line 29
    if-eq v2, v5, :cond_3

    .line 30
    .line 31
    if-ne v2, v7, :cond_2

    .line 32
    .line 33
    iget v2, v0, LA1/y;->j:I

    .line 34
    .line 35
    if-eq v2, v4, :cond_0

    .line 36
    .line 37
    new-instance v2, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    const-string v10, "Unexpected start indicator: expected "

    .line 40
    .line 41
    invoke-direct {v2, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    iget v10, v0, LA1/y;->j:I

    .line 45
    .line 46
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    const-string v10, " more bytes"

    .line 50
    .line 51
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    invoke-static {v9, v2}, Lp0/x;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    :cond_0
    iget v2, v1, Lp0/E;->c:I

    .line 62
    .line 63
    if-nez v2, :cond_1

    .line 64
    .line 65
    const/4 v2, 0x1

    .line 66
    goto :goto_0

    .line 67
    :cond_1
    const/4 v2, 0x0

    .line 68
    :goto_0
    invoke-interface {v6, v2}, LA1/j;->d(Z)V

    .line 69
    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 73
    .line 74
    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 75
    .line 76
    .line 77
    throw v1

    .line 78
    :cond_3
    const-string v2, "Unexpected start indicator reading extended header"

    .line 79
    .line 80
    invoke-static {v9, v2}, Lp0/x;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    :cond_4
    :goto_1
    iput v3, v0, LA1/y;->c:I

    .line 84
    .line 85
    iput v8, v0, LA1/y;->d:I

    .line 86
    .line 87
    :cond_5
    move/from16 v2, p1

    .line 88
    .line 89
    :goto_2
    invoke-virtual/range {p2 .. p2}, Lp0/E;->a()I

    .line 90
    .line 91
    .line 92
    move-result v9

    .line 93
    if-lez v9, :cond_11

    .line 94
    .line 95
    iget v9, v0, LA1/y;->c:I

    .line 96
    .line 97
    if-eqz v9, :cond_10

    .line 98
    .line 99
    iget-object v10, v0, LA1/y;->b:Lp0/D;

    .line 100
    .line 101
    if-eq v9, v3, :cond_e

    .line 102
    .line 103
    if-eq v9, v5, :cond_a

    .line 104
    .line 105
    if-ne v9, v7, :cond_9

    .line 106
    .line 107
    invoke-virtual/range {p2 .. p2}, Lp0/E;->a()I

    .line 108
    .line 109
    .line 110
    move-result v9

    .line 111
    iget v10, v0, LA1/y;->j:I

    .line 112
    .line 113
    if-ne v10, v4, :cond_6

    .line 114
    .line 115
    const/4 v10, 0x0

    .line 116
    goto :goto_3

    .line 117
    :cond_6
    sub-int v10, v9, v10

    .line 118
    .line 119
    :goto_3
    if-lez v10, :cond_7

    .line 120
    .line 121
    sub-int/2addr v9, v10

    .line 122
    iget v10, v1, Lp0/E;->b:I

    .line 123
    .line 124
    add-int/2addr v10, v9

    .line 125
    invoke-virtual {v1, v10}, Lp0/E;->K(I)V

    .line 126
    .line 127
    .line 128
    :cond_7
    invoke-interface {v6, v1}, LA1/j;->b(Lp0/E;)V

    .line 129
    .line 130
    .line 131
    iget v10, v0, LA1/y;->j:I

    .line 132
    .line 133
    if-eq v10, v4, :cond_8

    .line 134
    .line 135
    sub-int/2addr v10, v9

    .line 136
    iput v10, v0, LA1/y;->j:I

    .line 137
    .line 138
    if-nez v10, :cond_8

    .line 139
    .line 140
    invoke-interface {v6, v8}, LA1/j;->d(Z)V

    .line 141
    .line 142
    .line 143
    iput v3, v0, LA1/y;->c:I

    .line 144
    .line 145
    iput v8, v0, LA1/y;->d:I

    .line 146
    .line 147
    :cond_8
    const/4 v4, 0x0

    .line 148
    goto/16 :goto_5

    .line 149
    .line 150
    :cond_9
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 151
    .line 152
    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 153
    .line 154
    .line 155
    throw v1

    .line 156
    :cond_a
    const/16 v9, 0xa

    .line 157
    .line 158
    iget v11, v0, LA1/y;->i:I

    .line 159
    .line 160
    invoke-static {v9, v11}, Ljava/lang/Math;->min(II)I

    .line 161
    .line 162
    .line 163
    move-result v9

    .line 164
    iget-object v11, v10, Lp0/D;->b:[B

    .line 165
    .line 166
    invoke-virtual {v0, v9, v1, v11}, LA1/y;->c(ILp0/E;[B)Z

    .line 167
    .line 168
    .line 169
    move-result v9

    .line 170
    if-eqz v9, :cond_8

    .line 171
    .line 172
    const/4 v9, 0x0

    .line 173
    iget v11, v0, LA1/y;->i:I

    .line 174
    .line 175
    invoke-virtual {v0, v11, v1, v9}, LA1/y;->c(ILp0/E;[B)Z

    .line 176
    .line 177
    .line 178
    move-result v9

    .line 179
    if-eqz v9, :cond_8

    .line 180
    .line 181
    invoke-virtual {v10, v8}, Lp0/D;->r(I)V

    .line 182
    .line 183
    .line 184
    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    iput-wide v11, v0, LA1/y;->l:J

    .line 190
    .line 191
    iget-boolean v9, v0, LA1/y;->f:Z

    .line 192
    .line 193
    const/4 v11, 0x4

    .line 194
    if-eqz v9, :cond_c

    .line 195
    .line 196
    invoke-virtual {v10, v11}, Lp0/D;->u(I)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {v10, v7}, Lp0/D;->i(I)I

    .line 200
    .line 201
    .line 202
    move-result v9

    .line 203
    int-to-long v12, v9

    .line 204
    const/16 v9, 0x1e

    .line 205
    .line 206
    shl-long/2addr v12, v9

    .line 207
    invoke-virtual {v10, v3}, Lp0/D;->u(I)V

    .line 208
    .line 209
    .line 210
    const/16 v14, 0xf

    .line 211
    .line 212
    invoke-virtual {v10, v14}, Lp0/D;->i(I)I

    .line 213
    .line 214
    .line 215
    move-result v15

    .line 216
    shl-int/2addr v15, v14

    .line 217
    int-to-long v4, v15

    .line 218
    or-long/2addr v4, v12

    .line 219
    invoke-virtual {v10, v3}, Lp0/D;->u(I)V

    .line 220
    .line 221
    .line 222
    invoke-virtual {v10, v14}, Lp0/D;->i(I)I

    .line 223
    .line 224
    .line 225
    move-result v12

    .line 226
    int-to-long v12, v12

    .line 227
    or-long/2addr v4, v12

    .line 228
    invoke-virtual {v10, v3}, Lp0/D;->u(I)V

    .line 229
    .line 230
    .line 231
    iget-boolean v12, v0, LA1/y;->h:Z

    .line 232
    .line 233
    if-nez v12, :cond_b

    .line 234
    .line 235
    iget-boolean v12, v0, LA1/y;->g:Z

    .line 236
    .line 237
    if-eqz v12, :cond_b

    .line 238
    .line 239
    invoke-virtual {v10, v11}, Lp0/D;->u(I)V

    .line 240
    .line 241
    .line 242
    invoke-virtual {v10, v7}, Lp0/D;->i(I)I

    .line 243
    .line 244
    .line 245
    move-result v12

    .line 246
    int-to-long v12, v12

    .line 247
    shl-long/2addr v12, v9

    .line 248
    invoke-virtual {v10, v3}, Lp0/D;->u(I)V

    .line 249
    .line 250
    .line 251
    invoke-virtual {v10, v14}, Lp0/D;->i(I)I

    .line 252
    .line 253
    .line 254
    move-result v9

    .line 255
    shl-int/2addr v9, v14

    .line 256
    int-to-long v8, v9

    .line 257
    or-long/2addr v8, v12

    .line 258
    invoke-virtual {v10, v3}, Lp0/D;->u(I)V

    .line 259
    .line 260
    .line 261
    invoke-virtual {v10, v14}, Lp0/D;->i(I)I

    .line 262
    .line 263
    .line 264
    move-result v12

    .line 265
    int-to-long v12, v12

    .line 266
    or-long/2addr v8, v12

    .line 267
    invoke-virtual {v10, v3}, Lp0/D;->u(I)V

    .line 268
    .line 269
    .line 270
    iget-object v10, v0, LA1/y;->e:Lp0/J;

    .line 271
    .line 272
    invoke-virtual {v10, v8, v9}, Lp0/J;->b(J)J

    .line 273
    .line 274
    .line 275
    iput-boolean v3, v0, LA1/y;->h:Z

    .line 276
    .line 277
    :cond_b
    iget-object v8, v0, LA1/y;->e:Lp0/J;

    .line 278
    .line 279
    invoke-virtual {v8, v4, v5}, Lp0/J;->b(J)J

    .line 280
    .line 281
    .line 282
    move-result-wide v4

    .line 283
    iput-wide v4, v0, LA1/y;->l:J

    .line 284
    .line 285
    :cond_c
    iget-boolean v4, v0, LA1/y;->k:Z

    .line 286
    .line 287
    if-eqz v4, :cond_d

    .line 288
    .line 289
    goto :goto_4

    .line 290
    :cond_d
    const/4 v11, 0x0

    .line 291
    :goto_4
    or-int/2addr v2, v11

    .line 292
    iget-wide v4, v0, LA1/y;->l:J

    .line 293
    .line 294
    invoke-interface {v6, v2, v4, v5}, LA1/j;->e(IJ)V

    .line 295
    .line 296
    .line 297
    iput v7, v0, LA1/y;->c:I

    .line 298
    .line 299
    const/4 v4, 0x0

    .line 300
    iput v4, v0, LA1/y;->d:I

    .line 301
    .line 302
    :goto_5
    const/4 v4, -0x1

    .line 303
    const/4 v5, 0x2

    .line 304
    const/4 v8, 0x0

    .line 305
    goto/16 :goto_2

    .line 306
    .line 307
    :cond_e
    iget-object v4, v10, Lp0/D;->b:[B

    .line 308
    .line 309
    const/16 v5, 0x9

    .line 310
    .line 311
    invoke-virtual {v0, v5, v1, v4}, LA1/y;->c(ILp0/E;[B)Z

    .line 312
    .line 313
    .line 314
    move-result v4

    .line 315
    if-eqz v4, :cond_8

    .line 316
    .line 317
    invoke-virtual/range {p0 .. p0}, LA1/y;->e()Z

    .line 318
    .line 319
    .line 320
    move-result v4

    .line 321
    if-eqz v4, :cond_f

    .line 322
    .line 323
    const/4 v4, 0x2

    .line 324
    goto :goto_6

    .line 325
    :cond_f
    const/4 v4, 0x0

    .line 326
    :goto_6
    iput v4, v0, LA1/y;->c:I

    .line 327
    .line 328
    const/4 v4, 0x0

    .line 329
    iput v4, v0, LA1/y;->d:I

    .line 330
    .line 331
    goto :goto_5

    .line 332
    :cond_10
    const/4 v4, 0x0

    .line 333
    invoke-virtual/range {p2 .. p2}, Lp0/E;->a()I

    .line 334
    .line 335
    .line 336
    move-result v5

    .line 337
    invoke-virtual {v1, v5}, Lp0/E;->M(I)V

    .line 338
    .line 339
    .line 340
    goto :goto_5

    .line 341
    :cond_11
    return-void
.end method

.method public final c(ILp0/E;[B)Z
    .locals 3

    .line 1
    invoke-virtual {p2}, Lp0/E;->a()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget v1, p0, LA1/y;->d:I

    .line 6
    .line 7
    sub-int v1, p1, v1

    .line 8
    .line 9
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x1

    .line 14
    if-gtz v0, :cond_0

    .line 15
    .line 16
    return v1

    .line 17
    :cond_0
    if-nez p3, :cond_1

    .line 18
    .line 19
    invoke-virtual {p2, v0}, Lp0/E;->M(I)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    iget v2, p0, LA1/y;->d:I

    .line 24
    .line 25
    invoke-virtual {p2, v2, p3, v0}, Lp0/E;->j(I[BI)V

    .line 26
    .line 27
    .line 28
    :goto_0
    iget p2, p0, LA1/y;->d:I

    .line 29
    .line 30
    add-int/2addr p2, v0

    .line 31
    iput p2, p0, LA1/y;->d:I

    .line 32
    .line 33
    if-ne p2, p1, :cond_2

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_2
    const/4 v1, 0x0

    .line 37
    :goto_1
    return v1
.end method

.method public final d(Lp0/J;LW0/u;LA1/I;)V
    .locals 0

    .line 1
    iput-object p1, p0, LA1/y;->e:Lp0/J;

    .line 2
    .line 3
    iget-object p1, p0, LA1/y;->a:LA1/j;

    .line 4
    .line 5
    invoke-interface {p1, p2, p3}, LA1/j;->c(LW0/u;LA1/I;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final e()Z
    .locals 7

    .line 1
    iget-object v0, p0, LA1/y;->b:Lp0/D;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Lp0/D;->r(I)V

    .line 5
    .line 6
    .line 7
    const/16 v2, 0x18

    .line 8
    .line 9
    invoke-virtual {v0, v2}, Lp0/D;->i(I)I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    const-string v3, "PesReader"

    .line 14
    .line 15
    const/4 v4, -0x1

    .line 16
    const/4 v5, 0x1

    .line 17
    if-eq v2, v5, :cond_0

    .line 18
    .line 19
    const-string v0, "Unexpected start code prefix: "

    .line 20
    .line 21
    invoke-static {v0, v2, v3}, Lcom/google/protobuf/U2;->v(Ljava/lang/String;ILjava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iput v4, p0, LA1/y;->j:I

    .line 25
    .line 26
    return v1

    .line 27
    :cond_0
    const/16 v1, 0x8

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Lp0/D;->u(I)V

    .line 30
    .line 31
    .line 32
    const/16 v2, 0x10

    .line 33
    .line 34
    invoke-virtual {v0, v2}, Lp0/D;->i(I)I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    const/4 v6, 0x5

    .line 39
    invoke-virtual {v0, v6}, Lp0/D;->u(I)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Lp0/D;->h()Z

    .line 43
    .line 44
    .line 45
    move-result v6

    .line 46
    iput-boolean v6, p0, LA1/y;->k:Z

    .line 47
    .line 48
    const/4 v6, 0x2

    .line 49
    invoke-virtual {v0, v6}, Lp0/D;->u(I)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Lp0/D;->h()Z

    .line 53
    .line 54
    .line 55
    move-result v6

    .line 56
    iput-boolean v6, p0, LA1/y;->f:Z

    .line 57
    .line 58
    invoke-virtual {v0}, Lp0/D;->h()Z

    .line 59
    .line 60
    .line 61
    move-result v6

    .line 62
    iput-boolean v6, p0, LA1/y;->g:Z

    .line 63
    .line 64
    const/4 v6, 0x6

    .line 65
    invoke-virtual {v0, v6}, Lp0/D;->u(I)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, v1}, Lp0/D;->i(I)I

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    iput v0, p0, LA1/y;->i:I

    .line 73
    .line 74
    if-nez v2, :cond_1

    .line 75
    .line 76
    iput v4, p0, LA1/y;->j:I

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_1
    add-int/lit8 v2, v2, -0x3

    .line 80
    .line 81
    sub-int/2addr v2, v0

    .line 82
    iput v2, p0, LA1/y;->j:I

    .line 83
    .line 84
    if-gez v2, :cond_2

    .line 85
    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    .line 87
    .line 88
    const-string v1, "Found negative packet payload size: "

    .line 89
    .line 90
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    iget v1, p0, LA1/y;->j:I

    .line 94
    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    invoke-static {v3, v0}, Lp0/x;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    iput v4, p0, LA1/y;->j:I

    .line 106
    .line 107
    :cond_2
    :goto_0
    return v5
.end method
