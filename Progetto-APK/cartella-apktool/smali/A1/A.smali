.class public final LA1/A;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LW0/s;


# instance fields
.field public final a:Lp0/J;

.field public final b:Landroid/util/SparseArray;

.field public final c:Lp0/E;

.field public final d:Lcom/google/android/gms/internal/ads/R2;

.field public e:Z

.field public f:Z

.field public g:Z

.field public h:J

.field public i:Lb1/a;

.field public j:LW0/u;

.field public k:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    new-instance v0, Lp0/J;

    .line 2
    .line 3
    const-wide/16 v1, 0x0

    .line 4
    .line 5
    invoke-direct {v0, v1, v2}, Lp0/J;-><init>(J)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, LA1/A;->a:Lp0/J;

    .line 12
    .line 13
    new-instance v0, Lp0/E;

    .line 14
    .line 15
    const/16 v1, 0x1000

    .line 16
    .line 17
    invoke-direct {v0, v1}, Lp0/E;-><init>(I)V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, LA1/A;->c:Lp0/E;

    .line 21
    .line 22
    new-instance v0, Landroid/util/SparseArray;

    .line 23
    .line 24
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, LA1/A;->b:Landroid/util/SparseArray;

    .line 28
    .line 29
    new-instance v0, Lcom/google/android/gms/internal/ads/R2;

    .line 30
    .line 31
    const/4 v1, 0x2

    .line 32
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/R2;-><init>(I)V

    .line 33
    .line 34
    .line 35
    iput-object v0, p0, LA1/A;->d:Lcom/google/android/gms/internal/ads/R2;

    .line 36
    .line 37
    return-void
.end method


# virtual methods
.method public final b()LW0/s;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final d(LW0/u;)V
    .locals 0

    .line 1
    iput-object p1, p0, LA1/A;->j:LW0/u;

    .line 2
    .line 3
    return-void
.end method

.method public final g(LW0/t;)Z
    .locals 9

    .line 1
    const/16 v0, 0xe

    .line 2
    .line 3
    new-array v1, v0, [B

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-interface {p1, v2, v1, v0}, LW0/t;->c(I[BI)V

    .line 7
    .line 8
    .line 9
    aget-byte v0, v1, v2

    .line 10
    .line 11
    and-int/lit16 v0, v0, 0xff

    .line 12
    .line 13
    shl-int/lit8 v0, v0, 0x18

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    aget-byte v4, v1, v3

    .line 17
    .line 18
    and-int/lit16 v4, v4, 0xff

    .line 19
    .line 20
    shl-int/lit8 v4, v4, 0x10

    .line 21
    .line 22
    or-int/2addr v0, v4

    .line 23
    const/4 v4, 0x2

    .line 24
    aget-byte v5, v1, v4

    .line 25
    .line 26
    and-int/lit16 v5, v5, 0xff

    .line 27
    .line 28
    const/16 v6, 0x8

    .line 29
    .line 30
    shl-int/2addr v5, v6

    .line 31
    or-int/2addr v0, v5

    .line 32
    const/4 v5, 0x3

    .line 33
    aget-byte v7, v1, v5

    .line 34
    .line 35
    and-int/lit16 v7, v7, 0xff

    .line 36
    .line 37
    or-int/2addr v0, v7

    .line 38
    const/16 v7, 0x1ba

    .line 39
    .line 40
    if-eq v7, v0, :cond_0

    .line 41
    .line 42
    return v2

    .line 43
    :cond_0
    const/4 v0, 0x4

    .line 44
    aget-byte v7, v1, v0

    .line 45
    .line 46
    and-int/lit16 v7, v7, 0xc4

    .line 47
    .line 48
    const/16 v8, 0x44

    .line 49
    .line 50
    if-eq v7, v8, :cond_1

    .line 51
    .line 52
    return v2

    .line 53
    :cond_1
    const/4 v7, 0x6

    .line 54
    aget-byte v7, v1, v7

    .line 55
    .line 56
    and-int/2addr v7, v0

    .line 57
    if-eq v7, v0, :cond_2

    .line 58
    .line 59
    return v2

    .line 60
    :cond_2
    aget-byte v7, v1, v6

    .line 61
    .line 62
    and-int/2addr v7, v0

    .line 63
    if-eq v7, v0, :cond_3

    .line 64
    .line 65
    return v2

    .line 66
    :cond_3
    const/16 v0, 0x9

    .line 67
    .line 68
    aget-byte v0, v1, v0

    .line 69
    .line 70
    and-int/2addr v0, v3

    .line 71
    if-eq v0, v3, :cond_4

    .line 72
    .line 73
    return v2

    .line 74
    :cond_4
    const/16 v0, 0xc

    .line 75
    .line 76
    aget-byte v0, v1, v0

    .line 77
    .line 78
    and-int/2addr v0, v5

    .line 79
    if-eq v0, v5, :cond_5

    .line 80
    .line 81
    return v2

    .line 82
    :cond_5
    const/16 v0, 0xd

    .line 83
    .line 84
    aget-byte v0, v1, v0

    .line 85
    .line 86
    and-int/lit8 v0, v0, 0x7

    .line 87
    .line 88
    invoke-interface {p1, v0}, LW0/t;->g(I)V

    .line 89
    .line 90
    .line 91
    invoke-interface {p1, v2, v1, v5}, LW0/t;->c(I[BI)V

    .line 92
    .line 93
    .line 94
    aget-byte p1, v1, v2

    .line 95
    .line 96
    and-int/lit16 p1, p1, 0xff

    .line 97
    .line 98
    shl-int/lit8 p1, p1, 0x10

    .line 99
    .line 100
    aget-byte v0, v1, v3

    .line 101
    .line 102
    and-int/lit16 v0, v0, 0xff

    .line 103
    .line 104
    shl-int/2addr v0, v6

    .line 105
    or-int/2addr p1, v0

    .line 106
    aget-byte v0, v1, v4

    .line 107
    .line 108
    and-int/lit16 v0, v0, 0xff

    .line 109
    .line 110
    or-int/2addr p1, v0

    .line 111
    if-ne v3, p1, :cond_6

    .line 112
    .line 113
    const/4 v2, 0x1

    .line 114
    :cond_6
    return v2
.end method

.method public final h(LW0/t;LW0/w;)I
    .locals 27

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
    iget-object v3, v0, LA1/A;->j:LW0/u;

    .line 8
    .line 9
    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/H1;->j(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    invoke-interface/range {p1 .. p1}, LW0/t;->j()J

    .line 13
    .line 14
    .line 15
    move-result-wide v18

    .line 16
    const/4 v3, 0x3

    .line 17
    const/16 v15, 0x1ba

    .line 18
    .line 19
    iget-object v6, v0, LA1/A;->d:Lcom/google/android/gms/internal/ads/R2;

    .line 20
    .line 21
    const/4 v13, 0x4

    .line 22
    const/4 v14, 0x1

    .line 23
    const/4 v11, 0x0

    .line 24
    const-wide/16 v20, -0x1

    .line 25
    .line 26
    cmp-long v22, v18, v20

    .line 27
    .line 28
    if-eqz v22, :cond_a

    .line 29
    .line 30
    iget-boolean v7, v6, Lcom/google/android/gms/internal/ads/R2;->d:Z

    .line 31
    .line 32
    if-nez v7, :cond_a

    .line 33
    .line 34
    iget-boolean v7, v6, Lcom/google/android/gms/internal/ads/R2;->f:Z

    .line 35
    .line 36
    iget-object v8, v6, Lcom/google/android/gms/internal/ads/R2;->c:Ljava/lang/Object;

    .line 37
    .line 38
    const-wide/16 v9, 0x4e20

    .line 39
    .line 40
    if-nez v7, :cond_3

    .line 41
    .line 42
    invoke-interface/range {p1 .. p1}, LW0/t;->j()J

    .line 43
    .line 44
    .line 45
    move-result-wide v4

    .line 46
    invoke-static {v9, v10, v4, v5}, Ljava/lang/Math;->min(JJ)J

    .line 47
    .line 48
    .line 49
    move-result-wide v9

    .line 50
    long-to-int v3, v9

    .line 51
    int-to-long v9, v3

    .line 52
    sub-long/2addr v4, v9

    .line 53
    invoke-interface/range {p1 .. p1}, LW0/t;->r()J

    .line 54
    .line 55
    .line 56
    move-result-wide v9

    .line 57
    cmp-long v7, v9, v4

    .line 58
    .line 59
    if-eqz v7, :cond_0

    .line 60
    .line 61
    iput-wide v4, v2, LW0/w;->a:J

    .line 62
    .line 63
    goto :goto_3

    .line 64
    :cond_0
    check-cast v8, Lp0/E;

    .line 65
    .line 66
    invoke-virtual {v8, v3}, Lp0/E;->I(I)V

    .line 67
    .line 68
    .line 69
    invoke-interface/range {p1 .. p1}, LW0/t;->m()V

    .line 70
    .line 71
    .line 72
    iget-object v2, v8, Lp0/E;->a:[B

    .line 73
    .line 74
    invoke-interface {v1, v11, v2, v3}, LW0/t;->c(I[BI)V

    .line 75
    .line 76
    .line 77
    iget v1, v8, Lp0/E;->b:I

    .line 78
    .line 79
    iget v2, v8, Lp0/E;->c:I

    .line 80
    .line 81
    sub-int/2addr v2, v13

    .line 82
    :goto_0
    if-lt v2, v1, :cond_2

    .line 83
    .line 84
    iget-object v3, v8, Lp0/E;->a:[B

    .line 85
    .line 86
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/R2;->b(I[B)I

    .line 87
    .line 88
    .line 89
    move-result v3

    .line 90
    if-ne v3, v15, :cond_1

    .line 91
    .line 92
    add-int/lit8 v3, v2, 0x4

    .line 93
    .line 94
    invoke-virtual {v8, v3}, Lp0/E;->L(I)V

    .line 95
    .line 96
    .line 97
    invoke-static {v8}, Lcom/google/android/gms/internal/ads/R2;->c(Lp0/E;)J

    .line 98
    .line 99
    .line 100
    move-result-wide v3

    .line 101
    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    cmp-long v5, v3, v9

    .line 107
    .line 108
    if-eqz v5, :cond_1

    .line 109
    .line 110
    move-wide v4, v3

    .line 111
    goto :goto_1

    .line 112
    :cond_1
    add-int/lit8 v2, v2, -0x1

    .line 113
    .line 114
    goto :goto_0

    .line 115
    :cond_2
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    :goto_1
    iput-wide v4, v6, Lcom/google/android/gms/internal/ads/R2;->h:J

    .line 121
    .line 122
    iput-boolean v14, v6, Lcom/google/android/gms/internal/ads/R2;->f:Z

    .line 123
    .line 124
    :goto_2
    const/4 v14, 0x0

    .line 125
    :goto_3
    move v11, v14

    .line 126
    goto/16 :goto_6

    .line 127
    .line 128
    :cond_3
    iget-wide v4, v6, Lcom/google/android/gms/internal/ads/R2;->h:J

    .line 129
    .line 130
    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    cmp-long v7, v4, v12

    .line 136
    .line 137
    if-nez v7, :cond_4

    .line 138
    .line 139
    invoke-virtual {v6, v1}, Lcom/google/android/gms/internal/ads/R2;->a(LW0/t;)V

    .line 140
    .line 141
    .line 142
    goto/16 :goto_6

    .line 143
    .line 144
    :cond_4
    iget-boolean v4, v6, Lcom/google/android/gms/internal/ads/R2;->e:Z

    .line 145
    .line 146
    if-nez v4, :cond_8

    .line 147
    .line 148
    invoke-interface/range {p1 .. p1}, LW0/t;->j()J

    .line 149
    .line 150
    .line 151
    move-result-wide v4

    .line 152
    invoke-static {v9, v10, v4, v5}, Ljava/lang/Math;->min(JJ)J

    .line 153
    .line 154
    .line 155
    move-result-wide v4

    .line 156
    long-to-int v5, v4

    .line 157
    invoke-interface/range {p1 .. p1}, LW0/t;->r()J

    .line 158
    .line 159
    .line 160
    move-result-wide v9

    .line 161
    int-to-long v12, v11

    .line 162
    cmp-long v4, v9, v12

    .line 163
    .line 164
    if-eqz v4, :cond_5

    .line 165
    .line 166
    iput-wide v12, v2, LW0/w;->a:J

    .line 167
    .line 168
    goto :goto_3

    .line 169
    :cond_5
    check-cast v8, Lp0/E;

    .line 170
    .line 171
    invoke-virtual {v8, v5}, Lp0/E;->I(I)V

    .line 172
    .line 173
    .line 174
    invoke-interface/range {p1 .. p1}, LW0/t;->m()V

    .line 175
    .line 176
    .line 177
    iget-object v2, v8, Lp0/E;->a:[B

    .line 178
    .line 179
    invoke-interface {v1, v11, v2, v5}, LW0/t;->c(I[BI)V

    .line 180
    .line 181
    .line 182
    iget v1, v8, Lp0/E;->b:I

    .line 183
    .line 184
    iget v2, v8, Lp0/E;->c:I

    .line 185
    .line 186
    :goto_4
    add-int/lit8 v4, v2, -0x3

    .line 187
    .line 188
    if-ge v1, v4, :cond_7

    .line 189
    .line 190
    iget-object v4, v8, Lp0/E;->a:[B

    .line 191
    .line 192
    invoke-static {v1, v4}, Lcom/google/android/gms/internal/ads/R2;->b(I[B)I

    .line 193
    .line 194
    .line 195
    move-result v4

    .line 196
    if-ne v4, v15, :cond_6

    .line 197
    .line 198
    add-int/lit8 v4, v1, 0x4

    .line 199
    .line 200
    invoke-virtual {v8, v4}, Lp0/E;->L(I)V

    .line 201
    .line 202
    .line 203
    invoke-static {v8}, Lcom/google/android/gms/internal/ads/R2;->c(Lp0/E;)J

    .line 204
    .line 205
    .line 206
    move-result-wide v4

    .line 207
    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    cmp-long v7, v4, v9

    .line 213
    .line 214
    if-eqz v7, :cond_6

    .line 215
    .line 216
    goto :goto_5

    .line 217
    :cond_6
    add-int/lit8 v1, v1, 0x1

    .line 218
    .line 219
    goto :goto_4

    .line 220
    :cond_7
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    :goto_5
    iput-wide v4, v6, Lcom/google/android/gms/internal/ads/R2;->g:J

    .line 226
    .line 227
    iput-boolean v14, v6, Lcom/google/android/gms/internal/ads/R2;->e:Z

    .line 228
    .line 229
    goto :goto_2

    .line 230
    :cond_8
    iget-wide v2, v6, Lcom/google/android/gms/internal/ads/R2;->g:J

    .line 231
    .line 232
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    cmp-long v7, v2, v4

    .line 238
    .line 239
    if-nez v7, :cond_9

    .line 240
    .line 241
    invoke-virtual {v6, v1}, Lcom/google/android/gms/internal/ads/R2;->a(LW0/t;)V

    .line 242
    .line 243
    .line 244
    goto :goto_6

    .line 245
    :cond_9
    iget-object v4, v6, Lcom/google/android/gms/internal/ads/R2;->b:Ljava/lang/Object;

    .line 246
    .line 247
    check-cast v4, Lp0/J;

    .line 248
    .line 249
    invoke-virtual {v4, v2, v3}, Lp0/J;->b(J)J

    .line 250
    .line 251
    .line 252
    move-result-wide v2

    .line 253
    iget-wide v7, v6, Lcom/google/android/gms/internal/ads/R2;->h:J

    .line 254
    .line 255
    invoke-virtual {v4, v7, v8}, Lp0/J;->c(J)J

    .line 256
    .line 257
    .line 258
    move-result-wide v4

    .line 259
    sub-long/2addr v4, v2

    .line 260
    iput-wide v4, v6, Lcom/google/android/gms/internal/ads/R2;->i:J

    .line 261
    .line 262
    invoke-virtual {v6, v1}, Lcom/google/android/gms/internal/ads/R2;->a(LW0/t;)V

    .line 263
    .line 264
    .line 265
    :goto_6
    return v11

    .line 266
    :cond_a
    iget-boolean v4, v0, LA1/A;->k:Z

    .line 267
    .line 268
    if-nez v4, :cond_c

    .line 269
    .line 270
    iput-boolean v14, v0, LA1/A;->k:Z

    .line 271
    .line 272
    iget-wide v7, v6, Lcom/google/android/gms/internal/ads/R2;->i:J

    .line 273
    .line 274
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    cmp-long v9, v7, v4

    .line 280
    .line 281
    if-eqz v9, :cond_b

    .line 282
    .line 283
    new-instance v12, Lb1/a;

    .line 284
    .line 285
    iget-object v4, v6, Lcom/google/android/gms/internal/ads/R2;->b:Ljava/lang/Object;

    .line 286
    .line 287
    check-cast v4, Lp0/J;

    .line 288
    .line 289
    new-instance v5, LF2/G;

    .line 290
    .line 291
    invoke-direct {v5, v11}, LF2/G;-><init>(I)V

    .line 292
    .line 293
    .line 294
    new-instance v6, Lm2/l;

    .line 295
    .line 296
    invoke-direct {v6, v4, v11}, Lm2/l;-><init>(Lp0/J;I)V

    .line 297
    .line 298
    .line 299
    const-wide/16 v9, 0x1

    .line 300
    .line 301
    add-long/2addr v9, v7

    .line 302
    const/16 v17, 0x3e8

    .line 303
    .line 304
    const-wide/16 v23, 0x0

    .line 305
    .line 306
    const-wide/16 v25, 0xbc

    .line 307
    .line 308
    move-object v4, v12

    .line 309
    move-object v3, v12

    .line 310
    move-wide/from16 v11, v23

    .line 311
    .line 312
    move-wide/from16 v13, v18

    .line 313
    .line 314
    move-wide/from16 v15, v25

    .line 315
    .line 316
    invoke-direct/range {v4 .. v17}, LW0/k;-><init>(LW0/h;LW0/j;JJJJJI)V

    .line 317
    .line 318
    .line 319
    iput-object v3, v0, LA1/A;->i:Lb1/a;

    .line 320
    .line 321
    iget-object v4, v0, LA1/A;->j:LW0/u;

    .line 322
    .line 323
    iget-object v3, v3, LW0/k;->b:Ljava/lang/Object;

    .line 324
    .line 325
    check-cast v3, LW0/f;

    .line 326
    .line 327
    invoke-interface {v4, v3}, LW0/u;->r(LW0/F;)V

    .line 328
    .line 329
    .line 330
    goto :goto_7

    .line 331
    :cond_b
    iget-object v3, v0, LA1/A;->j:LW0/u;

    .line 332
    .line 333
    new-instance v4, LW0/x;

    .line 334
    .line 335
    invoke-direct {v4, v7, v8}, LW0/x;-><init>(J)V

    .line 336
    .line 337
    .line 338
    invoke-interface {v3, v4}, LW0/u;->r(LW0/F;)V

    .line 339
    .line 340
    .line 341
    :cond_c
    :goto_7
    iget-object v3, v0, LA1/A;->i:Lb1/a;

    .line 342
    .line 343
    if-eqz v3, :cond_d

    .line 344
    .line 345
    iget-object v4, v3, LW0/k;->d:Ljava/lang/Object;

    .line 346
    .line 347
    check-cast v4, LW0/g;

    .line 348
    .line 349
    if-eqz v4, :cond_d

    .line 350
    .line 351
    invoke-virtual {v3, v1, v2}, LW0/k;->a(LW0/t;LW0/w;)I

    .line 352
    .line 353
    .line 354
    move-result v1

    .line 355
    return v1

    .line 356
    :cond_d
    invoke-interface/range {p1 .. p1}, LW0/t;->m()V

    .line 357
    .line 358
    .line 359
    if-eqz v22, :cond_e

    .line 360
    .line 361
    invoke-interface/range {p1 .. p1}, LW0/t;->f()J

    .line 362
    .line 363
    .line 364
    move-result-wide v2

    .line 365
    sub-long v18, v18, v2

    .line 366
    .line 367
    goto :goto_8

    .line 368
    :cond_e
    move-wide/from16 v18, v20

    .line 369
    .line 370
    :goto_8
    const/4 v2, -0x1

    .line 371
    cmp-long v3, v18, v20

    .line 372
    .line 373
    if-eqz v3, :cond_f

    .line 374
    .line 375
    const-wide/16 v3, 0x4

    .line 376
    .line 377
    cmp-long v5, v18, v3

    .line 378
    .line 379
    if-gez v5, :cond_f

    .line 380
    .line 381
    return v2

    .line 382
    :cond_f
    iget-object v3, v0, LA1/A;->c:Lp0/E;

    .line 383
    .line 384
    iget-object v4, v3, Lp0/E;->a:[B

    .line 385
    .line 386
    const/4 v5, 0x4

    .line 387
    const/4 v6, 0x1

    .line 388
    const/4 v7, 0x0

    .line 389
    invoke-interface {v1, v4, v7, v5, v6}, LW0/t;->e([BIIZ)Z

    .line 390
    .line 391
    .line 392
    move-result v4

    .line 393
    if-nez v4, :cond_10

    .line 394
    .line 395
    return v2

    .line 396
    :cond_10
    invoke-virtual {v3, v7}, Lp0/E;->L(I)V

    .line 397
    .line 398
    .line 399
    invoke-virtual {v3}, Lp0/E;->l()I

    .line 400
    .line 401
    .line 402
    move-result v4

    .line 403
    const/16 v8, 0x1b9

    .line 404
    .line 405
    if-ne v4, v8, :cond_11

    .line 406
    .line 407
    return v2

    .line 408
    :cond_11
    const/16 v2, 0x1ba

    .line 409
    .line 410
    if-ne v4, v2, :cond_12

    .line 411
    .line 412
    iget-object v2, v3, Lp0/E;->a:[B

    .line 413
    .line 414
    const/16 v4, 0xa

    .line 415
    .line 416
    invoke-interface {v1, v7, v2, v4}, LW0/t;->c(I[BI)V

    .line 417
    .line 418
    .line 419
    const/16 v2, 0x9

    .line 420
    .line 421
    invoke-virtual {v3, v2}, Lp0/E;->L(I)V

    .line 422
    .line 423
    .line 424
    invoke-virtual {v3}, Lp0/E;->z()I

    .line 425
    .line 426
    .line 427
    move-result v2

    .line 428
    and-int/lit8 v2, v2, 0x7

    .line 429
    .line 430
    add-int/lit8 v2, v2, 0xe

    .line 431
    .line 432
    invoke-interface {v1, v2}, LW0/t;->n(I)V

    .line 433
    .line 434
    .line 435
    return v7

    .line 436
    :cond_12
    const/16 v2, 0x1bb

    .line 437
    .line 438
    const/4 v8, 0x2

    .line 439
    const/4 v9, 0x6

    .line 440
    if-ne v4, v2, :cond_13

    .line 441
    .line 442
    iget-object v2, v3, Lp0/E;->a:[B

    .line 443
    .line 444
    invoke-interface {v1, v7, v2, v8}, LW0/t;->c(I[BI)V

    .line 445
    .line 446
    .line 447
    invoke-virtual {v3, v7}, Lp0/E;->L(I)V

    .line 448
    .line 449
    .line 450
    invoke-virtual {v3}, Lp0/E;->F()I

    .line 451
    .line 452
    .line 453
    move-result v2

    .line 454
    add-int/2addr v2, v9

    .line 455
    invoke-interface {v1, v2}, LW0/t;->n(I)V

    .line 456
    .line 457
    .line 458
    return v7

    .line 459
    :cond_13
    and-int/lit16 v2, v4, -0x100

    .line 460
    .line 461
    const/16 v10, 0x8

    .line 462
    .line 463
    shr-int/2addr v2, v10

    .line 464
    if-eq v2, v6, :cond_14

    .line 465
    .line 466
    invoke-interface {v1, v6}, LW0/t;->n(I)V

    .line 467
    .line 468
    .line 469
    return v7

    .line 470
    :cond_14
    and-int/lit16 v2, v4, 0xff

    .line 471
    .line 472
    iget-object v7, v0, LA1/A;->b:Landroid/util/SparseArray;

    .line 473
    .line 474
    invoke-virtual {v7, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 475
    .line 476
    .line 477
    move-result-object v11

    .line 478
    check-cast v11, LA1/z;

    .line 479
    .line 480
    iget-boolean v12, v0, LA1/A;->e:Z

    .line 481
    .line 482
    if-nez v12, :cond_1a

    .line 483
    .line 484
    if-nez v11, :cond_18

    .line 485
    .line 486
    const/16 v12, 0xbd

    .line 487
    .line 488
    const-string v13, "video/mp2p"

    .line 489
    .line 490
    if-ne v2, v12, :cond_15

    .line 491
    .line 492
    new-instance v4, LA1/b;

    .line 493
    .line 494
    invoke-direct {v4, v13}, LA1/b;-><init>(Ljava/lang/String;)V

    .line 495
    .line 496
    .line 497
    iput-boolean v6, v0, LA1/A;->f:Z

    .line 498
    .line 499
    invoke-interface/range {p1 .. p1}, LW0/t;->r()J

    .line 500
    .line 501
    .line 502
    move-result-wide v12

    .line 503
    iput-wide v12, v0, LA1/A;->h:J

    .line 504
    .line 505
    goto :goto_9

    .line 506
    :cond_15
    and-int/lit16 v12, v4, 0xe0

    .line 507
    .line 508
    const/16 v14, 0xc0

    .line 509
    .line 510
    const/4 v15, 0x0

    .line 511
    if-ne v12, v14, :cond_16

    .line 512
    .line 513
    new-instance v4, LA1/v;

    .line 514
    .line 515
    const/4 v12, 0x0

    .line 516
    invoke-direct {v4, v15, v12, v13}, LA1/v;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 517
    .line 518
    .line 519
    iput-boolean v6, v0, LA1/A;->f:Z

    .line 520
    .line 521
    invoke-interface/range {p1 .. p1}, LW0/t;->r()J

    .line 522
    .line 523
    .line 524
    move-result-wide v12

    .line 525
    iput-wide v12, v0, LA1/A;->h:J

    .line 526
    .line 527
    goto :goto_9

    .line 528
    :cond_16
    and-int/lit16 v4, v4, 0xf0

    .line 529
    .line 530
    const/16 v12, 0xe0

    .line 531
    .line 532
    if-ne v4, v12, :cond_17

    .line 533
    .line 534
    new-instance v4, LA1/l;

    .line 535
    .line 536
    invoke-direct {v4, v15, v13}, LA1/l;-><init>(LA1/K;Ljava/lang/String;)V

    .line 537
    .line 538
    .line 539
    iput-boolean v6, v0, LA1/A;->g:Z

    .line 540
    .line 541
    invoke-interface/range {p1 .. p1}, LW0/t;->r()J

    .line 542
    .line 543
    .line 544
    move-result-wide v12

    .line 545
    iput-wide v12, v0, LA1/A;->h:J

    .line 546
    .line 547
    goto :goto_9

    .line 548
    :cond_17
    move-object v4, v15

    .line 549
    :goto_9
    if-eqz v4, :cond_18

    .line 550
    .line 551
    new-instance v11, LA1/I;

    .line 552
    .line 553
    const/16 v12, 0x100

    .line 554
    .line 555
    invoke-direct {v11, v2, v12}, LA1/I;-><init>(II)V

    .line 556
    .line 557
    .line 558
    iget-object v12, v0, LA1/A;->j:LW0/u;

    .line 559
    .line 560
    invoke-interface {v4, v12, v11}, LA1/j;->c(LW0/u;LA1/I;)V

    .line 561
    .line 562
    .line 563
    new-instance v11, LA1/z;

    .line 564
    .line 565
    iget-object v12, v0, LA1/A;->a:Lp0/J;

    .line 566
    .line 567
    invoke-direct {v11, v4, v12}, LA1/z;-><init>(LA1/j;Lp0/J;)V

    .line 568
    .line 569
    .line 570
    invoke-virtual {v7, v2, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 571
    .line 572
    .line 573
    :cond_18
    iget-boolean v2, v0, LA1/A;->f:Z

    .line 574
    .line 575
    if-eqz v2, :cond_19

    .line 576
    .line 577
    iget-boolean v2, v0, LA1/A;->g:Z

    .line 578
    .line 579
    if-eqz v2, :cond_19

    .line 580
    .line 581
    iget-wide v12, v0, LA1/A;->h:J

    .line 582
    .line 583
    const-wide/16 v14, 0x2000

    .line 584
    .line 585
    add-long/2addr v12, v14

    .line 586
    goto :goto_a

    .line 587
    :cond_19
    const-wide/32 v12, 0x100000

    .line 588
    .line 589
    .line 590
    :goto_a
    invoke-interface/range {p1 .. p1}, LW0/t;->r()J

    .line 591
    .line 592
    .line 593
    move-result-wide v14

    .line 594
    cmp-long v2, v14, v12

    .line 595
    .line 596
    if-lez v2, :cond_1a

    .line 597
    .line 598
    iput-boolean v6, v0, LA1/A;->e:Z

    .line 599
    .line 600
    iget-object v2, v0, LA1/A;->j:LW0/u;

    .line 601
    .line 602
    invoke-interface {v2}, LW0/u;->j()V

    .line 603
    .line 604
    .line 605
    :cond_1a
    iget-object v2, v3, Lp0/E;->a:[B

    .line 606
    .line 607
    const/4 v4, 0x0

    .line 608
    invoke-interface {v1, v4, v2, v8}, LW0/t;->c(I[BI)V

    .line 609
    .line 610
    .line 611
    invoke-virtual {v3, v4}, Lp0/E;->L(I)V

    .line 612
    .line 613
    .line 614
    invoke-virtual {v3}, Lp0/E;->F()I

    .line 615
    .line 616
    .line 617
    move-result v2

    .line 618
    add-int/2addr v2, v9

    .line 619
    if-nez v11, :cond_1b

    .line 620
    .line 621
    invoke-interface {v1, v2}, LW0/t;->n(I)V

    .line 622
    .line 623
    .line 624
    const/4 v1, 0x0

    .line 625
    goto/16 :goto_b

    .line 626
    .line 627
    :cond_1b
    invoke-virtual {v3, v2}, Lp0/E;->I(I)V

    .line 628
    .line 629
    .line 630
    iget-object v7, v3, Lp0/E;->a:[B

    .line 631
    .line 632
    invoke-interface {v1, v7, v4, v2}, LW0/t;->readFully([BII)V

    .line 633
    .line 634
    .line 635
    invoke-virtual {v3, v9}, Lp0/E;->L(I)V

    .line 636
    .line 637
    .line 638
    iget-object v1, v11, LA1/z;->c:Lp0/D;

    .line 639
    .line 640
    iget-object v2, v1, Lp0/D;->b:[B

    .line 641
    .line 642
    const/4 v7, 0x3

    .line 643
    invoke-virtual {v3, v4, v2, v7}, Lp0/E;->j(I[BI)V

    .line 644
    .line 645
    .line 646
    invoke-virtual {v1, v4}, Lp0/D;->r(I)V

    .line 647
    .line 648
    .line 649
    invoke-virtual {v1, v10}, Lp0/D;->u(I)V

    .line 650
    .line 651
    .line 652
    invoke-virtual {v1}, Lp0/D;->h()Z

    .line 653
    .line 654
    .line 655
    move-result v2

    .line 656
    iput-boolean v2, v11, LA1/z;->d:Z

    .line 657
    .line 658
    invoke-virtual {v1}, Lp0/D;->h()Z

    .line 659
    .line 660
    .line 661
    move-result v2

    .line 662
    iput-boolean v2, v11, LA1/z;->e:Z

    .line 663
    .line 664
    invoke-virtual {v1, v9}, Lp0/D;->u(I)V

    .line 665
    .line 666
    .line 667
    invoke-virtual {v1, v10}, Lp0/D;->i(I)I

    .line 668
    .line 669
    .line 670
    move-result v2

    .line 671
    iget-object v7, v1, Lp0/D;->b:[B

    .line 672
    .line 673
    invoke-virtual {v3, v4, v7, v2}, Lp0/E;->j(I[BI)V

    .line 674
    .line 675
    .line 676
    invoke-virtual {v1, v4}, Lp0/D;->r(I)V

    .line 677
    .line 678
    .line 679
    const-wide/16 v7, 0x0

    .line 680
    .line 681
    iput-wide v7, v11, LA1/z;->g:J

    .line 682
    .line 683
    iget-boolean v2, v11, LA1/z;->d:Z

    .line 684
    .line 685
    if-eqz v2, :cond_1d

    .line 686
    .line 687
    invoke-virtual {v1, v5}, Lp0/D;->u(I)V

    .line 688
    .line 689
    .line 690
    const/4 v2, 0x3

    .line 691
    invoke-virtual {v1, v2}, Lp0/D;->i(I)I

    .line 692
    .line 693
    .line 694
    move-result v4

    .line 695
    int-to-long v7, v4

    .line 696
    const/16 v2, 0x1e

    .line 697
    .line 698
    shl-long/2addr v7, v2

    .line 699
    invoke-virtual {v1, v6}, Lp0/D;->u(I)V

    .line 700
    .line 701
    .line 702
    const/16 v4, 0xf

    .line 703
    .line 704
    invoke-virtual {v1, v4}, Lp0/D;->i(I)I

    .line 705
    .line 706
    .line 707
    move-result v9

    .line 708
    shl-int/2addr v9, v4

    .line 709
    int-to-long v9, v9

    .line 710
    or-long/2addr v7, v9

    .line 711
    invoke-virtual {v1, v6}, Lp0/D;->u(I)V

    .line 712
    .line 713
    .line 714
    invoke-virtual {v1, v4}, Lp0/D;->i(I)I

    .line 715
    .line 716
    .line 717
    move-result v9

    .line 718
    int-to-long v9, v9

    .line 719
    or-long/2addr v7, v9

    .line 720
    invoke-virtual {v1, v6}, Lp0/D;->u(I)V

    .line 721
    .line 722
    .line 723
    iget-boolean v9, v11, LA1/z;->f:Z

    .line 724
    .line 725
    iget-object v10, v11, LA1/z;->b:Lp0/J;

    .line 726
    .line 727
    if-nez v9, :cond_1c

    .line 728
    .line 729
    iget-boolean v9, v11, LA1/z;->e:Z

    .line 730
    .line 731
    if-eqz v9, :cond_1c

    .line 732
    .line 733
    invoke-virtual {v1, v5}, Lp0/D;->u(I)V

    .line 734
    .line 735
    .line 736
    const/4 v9, 0x3

    .line 737
    invoke-virtual {v1, v9}, Lp0/D;->i(I)I

    .line 738
    .line 739
    .line 740
    move-result v9

    .line 741
    int-to-long v12, v9

    .line 742
    shl-long/2addr v12, v2

    .line 743
    invoke-virtual {v1, v6}, Lp0/D;->u(I)V

    .line 744
    .line 745
    .line 746
    invoke-virtual {v1, v4}, Lp0/D;->i(I)I

    .line 747
    .line 748
    .line 749
    move-result v2

    .line 750
    shl-int/2addr v2, v4

    .line 751
    int-to-long v14, v2

    .line 752
    or-long/2addr v12, v14

    .line 753
    invoke-virtual {v1, v6}, Lp0/D;->u(I)V

    .line 754
    .line 755
    .line 756
    invoke-virtual {v1, v4}, Lp0/D;->i(I)I

    .line 757
    .line 758
    .line 759
    move-result v2

    .line 760
    int-to-long v14, v2

    .line 761
    or-long/2addr v12, v14

    .line 762
    invoke-virtual {v1, v6}, Lp0/D;->u(I)V

    .line 763
    .line 764
    .line 765
    invoke-virtual {v10, v12, v13}, Lp0/J;->b(J)J

    .line 766
    .line 767
    .line 768
    iput-boolean v6, v11, LA1/z;->f:Z

    .line 769
    .line 770
    :cond_1c
    invoke-virtual {v10, v7, v8}, Lp0/J;->b(J)J

    .line 771
    .line 772
    .line 773
    move-result-wide v1

    .line 774
    iput-wide v1, v11, LA1/z;->g:J

    .line 775
    .line 776
    :cond_1d
    iget-wide v1, v11, LA1/z;->g:J

    .line 777
    .line 778
    iget-object v4, v11, LA1/z;->a:LA1/j;

    .line 779
    .line 780
    invoke-interface {v4, v5, v1, v2}, LA1/j;->e(IJ)V

    .line 781
    .line 782
    .line 783
    invoke-interface {v4, v3}, LA1/j;->b(Lp0/E;)V

    .line 784
    .line 785
    .line 786
    const/4 v1, 0x0

    .line 787
    invoke-interface {v4, v1}, LA1/j;->d(Z)V

    .line 788
    .line 789
    .line 790
    iget-object v2, v3, Lp0/E;->a:[B

    .line 791
    .line 792
    array-length v2, v2

    .line 793
    invoke-virtual {v3, v2}, Lp0/E;->K(I)V

    .line 794
    .line 795
    .line 796
    :goto_b
    return v1
.end method

.method public final i(JJ)V
    .locals 5

    .line 1
    iget-object p1, p0, LA1/A;->a:Lp0/J;

    .line 2
    .line 3
    invoke-virtual {p1}, Lp0/J;->e()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    const/4 p2, 0x0

    .line 8
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    cmp-long v4, v0, v2

    .line 14
    .line 15
    if-nez v4, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    :goto_0
    if-nez v0, :cond_1

    .line 21
    .line 22
    invoke-virtual {p1}, Lp0/J;->d()J

    .line 23
    .line 24
    .line 25
    move-result-wide v0

    .line 26
    cmp-long v4, v0, v2

    .line 27
    .line 28
    if-eqz v4, :cond_2

    .line 29
    .line 30
    const-wide/16 v2, 0x0

    .line 31
    .line 32
    cmp-long v4, v0, v2

    .line 33
    .line 34
    if-eqz v4, :cond_2

    .line 35
    .line 36
    cmp-long v2, v0, p3

    .line 37
    .line 38
    if-eqz v2, :cond_2

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_1
    if-eqz v0, :cond_2

    .line 42
    .line 43
    :goto_1
    invoke-virtual {p1, p3, p4}, Lp0/J;->g(J)V

    .line 44
    .line 45
    .line 46
    :cond_2
    iget-object p1, p0, LA1/A;->i:Lb1/a;

    .line 47
    .line 48
    if-eqz p1, :cond_3

    .line 49
    .line 50
    invoke-virtual {p1, p3, p4}, LW0/k;->d(J)V

    .line 51
    .line 52
    .line 53
    :cond_3
    const/4 p1, 0x0

    .line 54
    :goto_2
    iget-object p3, p0, LA1/A;->b:Landroid/util/SparseArray;

    .line 55
    .line 56
    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    .line 57
    .line 58
    .line 59
    move-result p4

    .line 60
    if-ge p1, p4, :cond_4

    .line 61
    .line 62
    invoke-virtual {p3, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object p3

    .line 66
    check-cast p3, LA1/z;

    .line 67
    .line 68
    iput-boolean p2, p3, LA1/z;->f:Z

    .line 69
    .line 70
    iget-object p3, p3, LA1/z;->a:LA1/j;

    .line 71
    .line 72
    invoke-interface {p3}, LA1/j;->a()V

    .line 73
    .line 74
    .line 75
    add-int/lit8 p1, p1, 0x1

    .line 76
    .line 77
    goto :goto_2

    .line 78
    :cond_4
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
    .locals 0

    .line 1
    return-void
.end method
