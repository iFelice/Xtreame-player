.class public final Lcom/google/android/gms/internal/ads/I1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/O1;


# instance fields
.field public final G:Lcom/google/android/gms/internal/ads/N1;

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
    invoke-static {v0}, Lo3/r;->J(Z)V

    .line 19
    .line 20
    .line 21
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/I1;->J:Lp1/j;

    .line 22
    .line 23
    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/I1;->H:J

    .line 24
    .line 25
    iput-wide p4, p0, Lcom/google/android/gms/internal/ads/I1;->I:J

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
    iput v2, p0, Lcom/google/android/gms/internal/ads/I1;->K:I

    .line 36
    .line 37
    goto :goto_2

    .line 38
    :cond_2
    :goto_1
    iput-wide p8, p0, Lcom/google/android/gms/internal/ads/I1;->L:J

    .line 39
    .line 40
    const/4 p1, 0x4

    .line 41
    iput p1, p0, Lcom/google/android/gms/internal/ads/I1;->K:I

    .line 42
    .line 43
    :goto_2
    new-instance p1, Lcom/google/android/gms/internal/ads/N1;

    .line 44
    .line 45
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/N1;-><init>()V

    .line 46
    .line 47
    .line 48
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/I1;->G:Lcom/google/android/gms/internal/ads/N1;

    .line 49
    .line 50
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/M;)J
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget v2, v0, Lcom/google/android/gms/internal/ads/I1;->K:I

    .line 6
    .line 7
    const-wide/16 v3, 0x0

    .line 8
    .line 9
    const/4 v5, 0x0

    .line 10
    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/I1;->I:J

    .line 11
    .line 12
    const/4 v8, 0x1

    .line 13
    const-wide/16 v10, -0x1

    .line 14
    .line 15
    iget-object v12, v0, Lcom/google/android/gms/internal/ads/I1;->G:Lcom/google/android/gms/internal/ads/N1;

    .line 16
    .line 17
    if-eqz v2, :cond_b

    .line 18
    .line 19
    if-eq v2, v8, :cond_c

    .line 20
    .line 21
    const/4 v6, 0x2

    .line 22
    const/4 v7, 0x3

    .line 23
    if-eq v2, v6, :cond_1

    .line 24
    .line 25
    if-eq v2, v7, :cond_0

    .line 26
    .line 27
    return-wide v10

    .line 28
    :cond_0
    move-wide v2, v10

    .line 29
    goto/16 :goto_3

    .line 30
    .line 31
    :cond_1
    iget-wide v13, v0, Lcom/google/android/gms/internal/ads/I1;->O:J

    .line 32
    .line 33
    iget-wide v7, v0, Lcom/google/android/gms/internal/ads/I1;->P:J

    .line 34
    .line 35
    cmp-long v6, v13, v7

    .line 36
    .line 37
    if-nez v6, :cond_2

    .line 38
    .line 39
    move-wide v2, v10

    .line 40
    move-wide v15, v2

    .line 41
    goto/16 :goto_2

    .line 42
    .line 43
    :cond_2
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/M;->zzf()J

    .line 44
    .line 45
    .line 46
    move-result-wide v13

    .line 47
    invoke-virtual {v12, v1, v7, v8}, Lcom/google/android/gms/internal/ads/N1;->b(Lcom/google/android/gms/internal/ads/M;J)Z

    .line 48
    .line 49
    .line 50
    move-result v6

    .line 51
    if-nez v6, :cond_4

    .line 52
    .line 53
    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/I1;->O:J

    .line 54
    .line 55
    cmp-long v6, v3, v13

    .line 56
    .line 57
    if-eqz v6, :cond_3

    .line 58
    .line 59
    move-wide v15, v3

    .line 60
    move-wide v2, v10

    .line 61
    goto/16 :goto_2

    .line 62
    .line 63
    :cond_3
    new-instance v1, Ljava/io/IOException;

    .line 64
    .line 65
    const-string v2, "No ogg page can be found."

    .line 66
    .line 67
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    throw v1

    .line 71
    :cond_4
    invoke-virtual {v12, v1, v5}, Lcom/google/android/gms/internal/ads/N1;->a(Lcom/google/android/gms/internal/ads/M;Z)Z

    .line 72
    .line 73
    .line 74
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/M;->zzj()V

    .line 75
    .line 76
    .line 77
    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/I1;->N:J

    .line 78
    .line 79
    iget-wide v9, v12, Lcom/google/android/gms/internal/ads/N1;->b:J

    .line 80
    .line 81
    sub-long/2addr v6, v9

    .line 82
    iget v8, v12, Lcom/google/android/gms/internal/ads/N1;->d:I

    .line 83
    .line 84
    iget v11, v12, Lcom/google/android/gms/internal/ads/N1;->e:I

    .line 85
    .line 86
    add-int/2addr v8, v11

    .line 87
    cmp-long v11, v6, v3

    .line 88
    .line 89
    if-ltz v11, :cond_5

    .line 90
    .line 91
    const-wide/32 v3, 0x11940

    .line 92
    .line 93
    .line 94
    cmp-long v17, v6, v3

    .line 95
    .line 96
    if-gez v17, :cond_5

    .line 97
    .line 98
    const-wide/16 v2, -0x1

    .line 99
    .line 100
    const-wide/16 v15, -0x1

    .line 101
    .line 102
    goto :goto_2

    .line 103
    :cond_5
    if-gez v11, :cond_6

    .line 104
    .line 105
    iput-wide v13, v0, Lcom/google/android/gms/internal/ads/I1;->P:J

    .line 106
    .line 107
    iput-wide v9, v0, Lcom/google/android/gms/internal/ads/I1;->R:J

    .line 108
    .line 109
    goto :goto_0

    .line 110
    :cond_6
    int-to-long v3, v8

    .line 111
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/M;->zzf()J

    .line 112
    .line 113
    .line 114
    move-result-wide v13

    .line 115
    add-long/2addr v13, v3

    .line 116
    iput-wide v13, v0, Lcom/google/android/gms/internal/ads/I1;->O:J

    .line 117
    .line 118
    iput-wide v9, v0, Lcom/google/android/gms/internal/ads/I1;->Q:J

    .line 119
    .line 120
    :goto_0
    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/I1;->P:J

    .line 121
    .line 122
    iget-wide v9, v0, Lcom/google/android/gms/internal/ads/I1;->O:J

    .line 123
    .line 124
    sub-long v13, v3, v9

    .line 125
    .line 126
    const-wide/32 v17, 0x186a0

    .line 127
    .line 128
    .line 129
    cmp-long v19, v13, v17

    .line 130
    .line 131
    if-gez v19, :cond_7

    .line 132
    .line 133
    iput-wide v9, v0, Lcom/google/android/gms/internal/ads/I1;->P:J

    .line 134
    .line 135
    move-wide v15, v9

    .line 136
    const-wide/16 v2, -0x1

    .line 137
    .line 138
    goto :goto_2

    .line 139
    :cond_7
    move-wide/from16 v18, v3

    .line 140
    .line 141
    int-to-long v2, v8

    .line 142
    if-gtz v11, :cond_8

    .line 143
    .line 144
    const-wide/16 v20, 0x2

    .line 145
    .line 146
    goto :goto_1

    .line 147
    :cond_8
    const-wide/16 v20, 0x1

    .line 148
    .line 149
    :goto_1
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/M;->zzf()J

    .line 150
    .line 151
    .line 152
    move-result-wide v22

    .line 153
    mul-long v2, v2, v20

    .line 154
    .line 155
    sub-long v22, v22, v2

    .line 156
    .line 157
    mul-long v6, v6, v13

    .line 158
    .line 159
    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/I1;->R:J

    .line 160
    .line 161
    iget-wide v13, v0, Lcom/google/android/gms/internal/ads/I1;->Q:J

    .line 162
    .line 163
    sub-long/2addr v2, v13

    .line 164
    div-long/2addr v6, v2

    .line 165
    add-long v6, v6, v22

    .line 166
    .line 167
    const-wide/16 v2, -0x1

    .line 168
    .line 169
    add-long v13, v18, v2

    .line 170
    .line 171
    invoke-static {v6, v7, v13, v14}, Ljava/lang/Math;->min(JJ)J

    .line 172
    .line 173
    .line 174
    move-result-wide v6

    .line 175
    invoke-static {v9, v10, v6, v7}, Ljava/lang/Math;->max(JJ)J

    .line 176
    .line 177
    .line 178
    move-result-wide v6

    .line 179
    move-wide v15, v6

    .line 180
    :goto_2
    cmp-long v4, v15, v2

    .line 181
    .line 182
    if-eqz v4, :cond_9

    .line 183
    .line 184
    return-wide v15

    .line 185
    :cond_9
    const/4 v4, 0x3

    .line 186
    iput v4, v0, Lcom/google/android/gms/internal/ads/I1;->K:I

    .line 187
    .line 188
    :goto_3
    invoke-virtual {v12, v1, v2, v3}, Lcom/google/android/gms/internal/ads/N1;->b(Lcom/google/android/gms/internal/ads/M;J)Z

    .line 189
    .line 190
    .line 191
    invoke-virtual {v12, v1, v5}, Lcom/google/android/gms/internal/ads/N1;->a(Lcom/google/android/gms/internal/ads/M;Z)Z

    .line 192
    .line 193
    .line 194
    iget-wide v2, v12, Lcom/google/android/gms/internal/ads/N1;->b:J

    .line 195
    .line 196
    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/I1;->N:J

    .line 197
    .line 198
    cmp-long v4, v2, v6

    .line 199
    .line 200
    if-lez v4, :cond_a

    .line 201
    .line 202
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/M;->zzj()V

    .line 203
    .line 204
    .line 205
    const/4 v1, 0x4

    .line 206
    iput v1, v0, Lcom/google/android/gms/internal/ads/I1;->K:I

    .line 207
    .line 208
    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/I1;->Q:J

    .line 209
    .line 210
    const-wide/16 v9, 0x2

    .line 211
    .line 212
    add-long/2addr v1, v9

    .line 213
    neg-long v1, v1

    .line 214
    return-wide v1

    .line 215
    :cond_a
    const-wide/16 v9, 0x2

    .line 216
    .line 217
    iget v2, v12, Lcom/google/android/gms/internal/ads/N1;->d:I

    .line 218
    .line 219
    iget v3, v12, Lcom/google/android/gms/internal/ads/N1;->e:I

    .line 220
    .line 221
    add-int/2addr v2, v3

    .line 222
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/M;->q(I)V

    .line 223
    .line 224
    .line 225
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/M;->zzf()J

    .line 226
    .line 227
    .line 228
    move-result-wide v2

    .line 229
    iput-wide v2, v0, Lcom/google/android/gms/internal/ads/I1;->O:J

    .line 230
    .line 231
    iget-wide v2, v12, Lcom/google/android/gms/internal/ads/N1;->b:J

    .line 232
    .line 233
    iput-wide v2, v0, Lcom/google/android/gms/internal/ads/I1;->Q:J

    .line 234
    .line 235
    const-wide/16 v2, -0x1

    .line 236
    .line 237
    goto :goto_3

    .line 238
    :cond_b
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/M;->zzf()J

    .line 239
    .line 240
    .line 241
    move-result-wide v9

    .line 242
    iput-wide v9, v0, Lcom/google/android/gms/internal/ads/I1;->M:J

    .line 243
    .line 244
    iput v8, v0, Lcom/google/android/gms/internal/ads/I1;->K:I

    .line 245
    .line 246
    const-wide/32 v13, -0xff1b

    .line 247
    .line 248
    .line 249
    add-long/2addr v13, v6

    .line 250
    cmp-long v2, v13, v9

    .line 251
    .line 252
    if-lez v2, :cond_c

    .line 253
    .line 254
    return-wide v13

    .line 255
    :cond_c
    iput v5, v12, Lcom/google/android/gms/internal/ads/N1;->a:I

    .line 256
    .line 257
    iput-wide v3, v12, Lcom/google/android/gms/internal/ads/N1;->b:J

    .line 258
    .line 259
    iput v5, v12, Lcom/google/android/gms/internal/ads/N1;->c:I

    .line 260
    .line 261
    iput v5, v12, Lcom/google/android/gms/internal/ads/N1;->d:I

    .line 262
    .line 263
    iput v5, v12, Lcom/google/android/gms/internal/ads/N1;->e:I

    .line 264
    .line 265
    const-wide/16 v2, -0x1

    .line 266
    .line 267
    invoke-virtual {v12, v1, v2, v3}, Lcom/google/android/gms/internal/ads/N1;->b(Lcom/google/android/gms/internal/ads/M;J)Z

    .line 268
    .line 269
    .line 270
    move-result v4

    .line 271
    if-eqz v4, :cond_e

    .line 272
    .line 273
    invoke-virtual {v12, v1, v5}, Lcom/google/android/gms/internal/ads/N1;->a(Lcom/google/android/gms/internal/ads/M;Z)Z

    .line 274
    .line 275
    .line 276
    iget v2, v12, Lcom/google/android/gms/internal/ads/N1;->d:I

    .line 277
    .line 278
    iget v3, v12, Lcom/google/android/gms/internal/ads/N1;->e:I

    .line 279
    .line 280
    add-int/2addr v2, v3

    .line 281
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/M;->q(I)V

    .line 282
    .line 283
    .line 284
    iget-wide v2, v12, Lcom/google/android/gms/internal/ads/N1;->b:J

    .line 285
    .line 286
    :goto_4
    iget v4, v12, Lcom/google/android/gms/internal/ads/N1;->a:I

    .line 287
    .line 288
    const/4 v5, 0x4

    .line 289
    and-int/2addr v4, v5

    .line 290
    if-eq v4, v5, :cond_d

    .line 291
    .line 292
    const-wide/16 v4, -0x1

    .line 293
    .line 294
    invoke-virtual {v12, v1, v4, v5}, Lcom/google/android/gms/internal/ads/N1;->b(Lcom/google/android/gms/internal/ads/M;J)Z

    .line 295
    .line 296
    .line 297
    move-result v9

    .line 298
    if-eqz v9, :cond_d

    .line 299
    .line 300
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/M;->zzf()J

    .line 301
    .line 302
    .line 303
    move-result-wide v9

    .line 304
    cmp-long v11, v9, v6

    .line 305
    .line 306
    if-gez v11, :cond_d

    .line 307
    .line 308
    invoke-virtual {v12, v1, v8}, Lcom/google/android/gms/internal/ads/N1;->a(Lcom/google/android/gms/internal/ads/M;Z)Z

    .line 309
    .line 310
    .line 311
    move-result v9

    .line 312
    if-eqz v9, :cond_d

    .line 313
    .line 314
    iget v9, v12, Lcom/google/android/gms/internal/ads/N1;->d:I

    .line 315
    .line 316
    iget v10, v12, Lcom/google/android/gms/internal/ads/N1;->e:I

    .line 317
    .line 318
    add-int/2addr v9, v10

    .line 319
    :try_start_0
    invoke-interface {v1, v9}, Lcom/google/android/gms/internal/ads/M;->q(I)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 320
    .line 321
    .line 322
    iget-wide v2, v12, Lcom/google/android/gms/internal/ads/N1;->b:J

    .line 323
    .line 324
    goto :goto_4

    .line 325
    :catch_0
    :cond_d
    iput-wide v2, v0, Lcom/google/android/gms/internal/ads/I1;->L:J

    .line 326
    .line 327
    const/4 v1, 0x4

    .line 328
    iput v1, v0, Lcom/google/android/gms/internal/ads/I1;->K:I

    .line 329
    .line 330
    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/I1;->M:J

    .line 331
    .line 332
    return-wide v1

    .line 333
    :cond_e
    new-instance v1, Ljava/io/EOFException;

    .line 334
    .line 335
    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    .line 336
    .line 337
    .line 338
    throw v1
.end method

.method public final b(J)V
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/I1;->L:J

    .line 2
    .line 3
    const-wide/16 v2, -0x1

    .line 4
    .line 5
    add-long/2addr v0, v2

    .line 6
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    .line 7
    .line 8
    .line 9
    move-result-wide p1

    .line 10
    const-wide/16 v0, 0x0

    .line 11
    .line 12
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    .line 13
    .line 14
    .line 15
    move-result-wide p1

    .line 16
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/I1;->N:J

    .line 17
    .line 18
    const/4 p1, 0x2

    .line 19
    iput p1, p0, Lcom/google/android/gms/internal/ads/I1;->K:I

    .line 20
    .line 21
    iget-wide p1, p0, Lcom/google/android/gms/internal/ads/I1;->H:J

    .line 22
    .line 23
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/I1;->O:J

    .line 24
    .line 25
    iget-wide p1, p0, Lcom/google/android/gms/internal/ads/I1;->I:J

    .line 26
    .line 27
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/I1;->P:J

    .line 28
    .line 29
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/I1;->Q:J

    .line 30
    .line 31
    iget-wide p1, p0, Lcom/google/android/gms/internal/ads/I1;->L:J

    .line 32
    .line 33
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/I1;->R:J

    .line 34
    .line 35
    return-void
.end method

.method public final bridge synthetic zze()Lcom/google/android/gms/internal/ads/Y;
    .locals 5

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/I1;->L:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/ads/H1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/H1;-><init>(Lcom/google/android/gms/internal/ads/I1;)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
