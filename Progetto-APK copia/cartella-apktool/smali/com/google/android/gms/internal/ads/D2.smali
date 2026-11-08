.class public final Lcom/google/android/gms/internal/ads/D2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/F2;


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/jr;

.field public final b:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final c:Ljava/lang/String;

.field public final d:I

.field public e:Ljava/lang/String;

.field public f:Lcom/google/android/gms/internal/ads/e0;

.field public g:I

.field public h:I

.field public i:I

.field public j:J

.field public k:Lcom/google/android/gms/internal/ads/p0;

.field public l:I

.field public m:I

.field public n:I

.field public o:I

.field public p:J


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/jr;

    .line 5
    .line 6
    new-array p3, p3, [B

    .line 7
    .line 8
    invoke-direct {v0, p3}, Lcom/google/android/gms/internal/ads/jr;-><init>([B)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/D2;->a:Lcom/google/android/gms/internal/ads/jr;

    .line 12
    .line 13
    const/4 p3, 0x0

    .line 14
    iput p3, p0, Lcom/google/android/gms/internal/ads/D2;->g:I

    .line 15
    .line 16
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/D2;->p:J

    .line 22
    .line 23
    new-instance p3, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 24
    .line 25
    invoke-direct {p3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 26
    .line 27
    .line 28
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/D2;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 29
    .line 30
    const/4 p3, -0x1

    .line 31
    iput p3, p0, Lcom/google/android/gms/internal/ads/D2;->n:I

    .line 32
    .line 33
    iput p3, p0, Lcom/google/android/gms/internal/ads/D2;->o:I

    .line 34
    .line 35
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/D2;->c:Ljava/lang/String;

    .line 36
    .line 37
    iput p2, p0, Lcom/google/android/gms/internal/ads/D2;->d:I

    .line 38
    .line 39
    return-void
.end method


# virtual methods
.method public final a(LW0/r;)V
    .locals 4

    .line 1
    const v0, -0x7fffffff

    .line 2
    .line 3
    .line 4
    iget v1, p1, LW0/r;->b:I

    .line 5
    .line 6
    if-eq v1, v0, :cond_3

    .line 7
    .line 8
    const/4 v0, -0x1

    .line 9
    iget v2, p1, LW0/r;->c:I

    .line 10
    .line 11
    if-ne v2, v0, :cond_0

    .line 12
    .line 13
    goto :goto_1

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/D2;->k:Lcom/google/android/gms/internal/ads/p0;

    .line 15
    .line 16
    iget-object p1, p1, LW0/r;->a:Ljava/lang/String;

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    iget v3, v0, Lcom/google/android/gms/internal/ads/p0;->A:I

    .line 21
    .line 22
    if-ne v2, v3, :cond_1

    .line 23
    .line 24
    iget v3, v0, Lcom/google/android/gms/internal/ads/p0;->B:I

    .line 25
    .line 26
    if-ne v1, v3, :cond_1

    .line 27
    .line 28
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/p0;->m:Ljava/lang/String;

    .line 29
    .line 30
    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-nez v0, :cond_3

    .line 35
    .line 36
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/D2;->k:Lcom/google/android/gms/internal/ads/p0;

    .line 37
    .line 38
    if-nez v0, :cond_2

    .line 39
    .line 40
    new-instance v0, Lcom/google/android/gms/internal/ads/K;

    .line 41
    .line 42
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/K;-><init>()V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    new-instance v3, Lcom/google/android/gms/internal/ads/K;

    .line 47
    .line 48
    invoke-direct {v3, v0}, Lcom/google/android/gms/internal/ads/K;-><init>(Lcom/google/android/gms/internal/ads/p0;)V

    .line 49
    .line 50
    .line 51
    move-object v0, v3

    .line 52
    :goto_0
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/D2;->e:Ljava/lang/String;

    .line 53
    .line 54
    iput-object v3, v0, Lcom/google/android/gms/internal/ads/K;->a:Ljava/lang/String;

    .line 55
    .line 56
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/K;->f(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    iput v2, v0, Lcom/google/android/gms/internal/ads/K;->z:I

    .line 60
    .line 61
    iput v1, v0, Lcom/google/android/gms/internal/ads/K;->A:I

    .line 62
    .line 63
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/D2;->c:Ljava/lang/String;

    .line 64
    .line 65
    iput-object p1, v0, Lcom/google/android/gms/internal/ads/K;->d:Ljava/lang/String;

    .line 66
    .line 67
    iget p1, p0, Lcom/google/android/gms/internal/ads/D2;->d:I

    .line 68
    .line 69
    iput p1, v0, Lcom/google/android/gms/internal/ads/K;->f:I

    .line 70
    .line 71
    new-instance p1, Lcom/google/android/gms/internal/ads/p0;

    .line 72
    .line 73
    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/p0;-><init>(Lcom/google/android/gms/internal/ads/K;)V

    .line 74
    .line 75
    .line 76
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/D2;->k:Lcom/google/android/gms/internal/ads/p0;

    .line 77
    .line 78
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/D2;->f:Lcom/google/android/gms/internal/ads/e0;

    .line 79
    .line 80
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/e0;->d(Lcom/google/android/gms/internal/ads/p0;)V

    .line 81
    .line 82
    .line 83
    :cond_3
    :goto_1
    return-void
.end method

.method public final b(Lcom/google/android/gms/internal/ads/jr;)V
    .locals 35

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/D2;->f:Lcom/google/android/gms/internal/ads/e0;

    .line 6
    .line 7
    invoke-static {v2}, Lo3/r;->x(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/jr;->o()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-lez v2, :cond_43

    .line 15
    .line 16
    iget v2, v0, Lcom/google/android/gms/internal/ads/D2;->g:I

    .line 17
    .line 18
    const/16 v3, 0x8

    .line 19
    .line 20
    const/4 v4, 0x4

    .line 21
    const/4 v5, 0x1

    .line 22
    const v6, 0x40411bf2

    .line 23
    .line 24
    .line 25
    const/4 v7, 0x3

    .line 26
    const/4 v8, 0x2

    .line 27
    const/4 v9, 0x0

    .line 28
    iget-object v10, v0, Lcom/google/android/gms/internal/ads/D2;->a:Lcom/google/android/gms/internal/ads/jr;

    .line 29
    .line 30
    if-eqz v2, :cond_37

    .line 31
    .line 32
    const/16 v15, 0x20

    .line 33
    .line 34
    const/4 v12, 0x5

    .line 35
    if-eq v2, v5, :cond_2c

    .line 36
    .line 37
    if-eq v2, v8, :cond_2a

    .line 38
    .line 39
    const-wide/16 v18, 0x0

    .line 40
    .line 41
    const v17, -0x7fffffff

    .line 42
    .line 43
    .line 44
    const/16 v20, 0x7d00

    .line 45
    .line 46
    const v21, 0xac44

    .line 47
    .line 48
    .line 49
    const v22, 0xbb80

    .line 50
    .line 51
    .line 52
    const-wide v23, -0x7fffffffffffffffL    # -4.9E-324

    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    if-eq v2, v7, :cond_18

    .line 58
    .line 59
    if-eq v2, v4, :cond_16

    .line 60
    .line 61
    if-eq v2, v12, :cond_3

    .line 62
    .line 63
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/jr;->o()I

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    iget v3, v0, Lcom/google/android/gms/internal/ads/D2;->l:I

    .line 68
    .line 69
    iget v6, v0, Lcom/google/android/gms/internal/ads/D2;->h:I

    .line 70
    .line 71
    sub-int/2addr v3, v6

    .line 72
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/D2;->f:Lcom/google/android/gms/internal/ads/e0;

    .line 77
    .line 78
    invoke-interface {v3, v2, v1}, Lcom/google/android/gms/internal/ads/e0;->f(ILcom/google/android/gms/internal/ads/jr;)V

    .line 79
    .line 80
    .line 81
    iget v3, v0, Lcom/google/android/gms/internal/ads/D2;->h:I

    .line 82
    .line 83
    add-int/2addr v3, v2

    .line 84
    iput v3, v0, Lcom/google/android/gms/internal/ads/D2;->h:I

    .line 85
    .line 86
    iget v2, v0, Lcom/google/android/gms/internal/ads/D2;->l:I

    .line 87
    .line 88
    if-ne v3, v2, :cond_0

    .line 89
    .line 90
    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/D2;->p:J

    .line 91
    .line 92
    cmp-long v6, v2, v23

    .line 93
    .line 94
    if-eqz v6, :cond_1

    .line 95
    .line 96
    const/4 v2, 0x1

    .line 97
    goto :goto_1

    .line 98
    :cond_1
    const/4 v2, 0x0

    .line 99
    :goto_1
    invoke-static {v2}, Lo3/r;->M(Z)V

    .line 100
    .line 101
    .line 102
    iget-object v10, v0, Lcom/google/android/gms/internal/ads/D2;->f:Lcom/google/android/gms/internal/ads/e0;

    .line 103
    .line 104
    iget-wide v11, v0, Lcom/google/android/gms/internal/ads/D2;->p:J

    .line 105
    .line 106
    iget v2, v0, Lcom/google/android/gms/internal/ads/D2;->m:I

    .line 107
    .line 108
    if-ne v2, v4, :cond_2

    .line 109
    .line 110
    const/4 v13, 0x0

    .line 111
    goto :goto_2

    .line 112
    :cond_2
    const/4 v13, 0x1

    .line 113
    :goto_2
    iget v14, v0, Lcom/google/android/gms/internal/ads/D2;->l:I

    .line 114
    .line 115
    const/4 v15, 0x0

    .line 116
    const/16 v16, 0x0

    .line 117
    .line 118
    invoke-interface/range {v10 .. v16}, Lcom/google/android/gms/internal/ads/e0;->b(JIIILcom/google/android/gms/internal/ads/d0;)V

    .line 119
    .line 120
    .line 121
    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/D2;->p:J

    .line 122
    .line 123
    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/D2;->j:J

    .line 124
    .line 125
    add-long/2addr v2, v4

    .line 126
    iput-wide v2, v0, Lcom/google/android/gms/internal/ads/D2;->p:J

    .line 127
    .line 128
    iput v9, v0, Lcom/google/android/gms/internal/ads/D2;->g:I

    .line 129
    .line 130
    goto :goto_0

    .line 131
    :cond_3
    iget-object v2, v10, Lcom/google/android/gms/internal/ads/jr;->a:[B

    .line 132
    .line 133
    iget v12, v0, Lcom/google/android/gms/internal/ads/D2;->o:I

    .line 134
    .line 135
    invoke-virtual {v0, v1, v2, v12}, Lcom/google/android/gms/internal/ads/D2;->e(Lcom/google/android/gms/internal/ads/jr;[BI)Z

    .line 136
    .line 137
    .line 138
    move-result v2

    .line 139
    if-eqz v2, :cond_0

    .line 140
    .line 141
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/D2;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 142
    .line 143
    iget-object v12, v10, Lcom/google/android/gms/internal/ads/jr;->a:[B

    .line 144
    .line 145
    invoke-static {v12}, Lcom/google/android/gms/internal/ads/nH;->q([B)Lcom/google/android/gms/internal/ads/f0;

    .line 146
    .line 147
    .line 148
    move-result-object v11

    .line 149
    invoke-virtual {v11, v15}, Lcom/google/android/gms/internal/ads/f0;->g(I)I

    .line 150
    .line 151
    .line 152
    move-result v15

    .line 153
    sget-object v9, Lcom/google/android/gms/internal/ads/nH;->n:[I

    .line 154
    .line 155
    invoke-static {v11, v9}, Lcom/google/android/gms/internal/ads/nH;->o(Lcom/google/android/gms/internal/ads/f0;[I)I

    .line 156
    .line 157
    .line 158
    move-result v9

    .line 159
    add-int/lit8 v16, v9, 0x1

    .line 160
    .line 161
    if-ne v15, v6, :cond_4

    .line 162
    .line 163
    const/4 v6, 0x1

    .line 164
    goto :goto_3

    .line 165
    :cond_4
    const/4 v6, 0x0

    .line 166
    :goto_3
    if-eqz v6, :cond_f

    .line 167
    .line 168
    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/f0;->x()Z

    .line 169
    .line 170
    .line 171
    move-result v15

    .line 172
    if-eqz v15, :cond_e

    .line 173
    .line 174
    add-int/lit8 v15, v9, -0x1

    .line 175
    .line 176
    aget-byte v17, v12, v15

    .line 177
    .line 178
    shl-int/lit8 v3, v17, 0x8

    .line 179
    .line 180
    aget-byte v9, v12, v9

    .line 181
    .line 182
    and-int/lit16 v9, v9, 0xff

    .line 183
    .line 184
    sget v17, Lcom/google/android/gms/internal/ads/Et;->a:I

    .line 185
    .line 186
    const v17, 0xffff

    .line 187
    .line 188
    .line 189
    const/4 v7, 0x0

    .line 190
    const v13, 0xffff

    .line 191
    .line 192
    .line 193
    :goto_4
    if-ge v7, v15, :cond_5

    .line 194
    .line 195
    aget-byte v14, v12, v7

    .line 196
    .line 197
    and-int/lit16 v5, v14, 0xff

    .line 198
    .line 199
    shr-int/2addr v5, v4

    .line 200
    shr-int/lit8 v17, v13, 0xc

    .line 201
    .line 202
    xor-int v5, v17, v5

    .line 203
    .line 204
    sget-object v17, Lcom/google/android/gms/internal/ads/Et;->l:[I

    .line 205
    .line 206
    aget v5, v17, v5

    .line 207
    .line 208
    shl-int/lit8 v13, v13, 0x4

    .line 209
    .line 210
    int-to-char v13, v13

    .line 211
    xor-int/2addr v5, v13

    .line 212
    int-to-char v5, v5

    .line 213
    and-int/lit8 v13, v14, 0xf

    .line 214
    .line 215
    shr-int/lit8 v14, v5, 0xc

    .line 216
    .line 217
    xor-int/2addr v13, v14

    .line 218
    aget v13, v17, v13

    .line 219
    .line 220
    shl-int/2addr v5, v4

    .line 221
    int-to-char v5, v5

    .line 222
    xor-int/2addr v5, v13

    .line 223
    int-to-char v13, v5

    .line 224
    add-int/lit8 v7, v7, 0x1

    .line 225
    .line 226
    const/4 v5, 0x1

    .line 227
    goto :goto_4

    .line 228
    :cond_5
    int-to-char v3, v3

    .line 229
    or-int/2addr v3, v9

    .line 230
    if-ne v3, v13, :cond_d

    .line 231
    .line 232
    invoke-virtual {v11, v8}, Lcom/google/android/gms/internal/ads/f0;->g(I)I

    .line 233
    .line 234
    .line 235
    move-result v3

    .line 236
    if-eqz v3, :cond_8

    .line 237
    .line 238
    const/4 v4, 0x1

    .line 239
    if-eq v3, v4, :cond_7

    .line 240
    .line 241
    if-ne v3, v8, :cond_6

    .line 242
    .line 243
    const/16 v3, 0x180

    .line 244
    .line 245
    :goto_5
    const/4 v4, 0x3

    .line 246
    goto :goto_6

    .line 247
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 248
    .line 249
    const-string v2, "Unsupported base duration index in DTS UHD header: "

    .line 250
    .line 251
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 252
    .line 253
    .line 254
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 255
    .line 256
    .line 257
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object v1

    .line 261
    const/4 v2, 0x0

    .line 262
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/Ka;->a(Ljava/lang/String;Ljava/lang/RuntimeException;)Lcom/google/android/gms/internal/ads/Ka;

    .line 263
    .line 264
    .line 265
    move-result-object v1

    .line 266
    throw v1

    .line 267
    :cond_7
    const/16 v3, 0x1e0

    .line 268
    .line 269
    goto :goto_5

    .line 270
    :cond_8
    const/16 v3, 0x200

    .line 271
    .line 272
    goto :goto_5

    .line 273
    :goto_6
    invoke-virtual {v11, v4}, Lcom/google/android/gms/internal/ads/f0;->g(I)I

    .line 274
    .line 275
    .line 276
    move-result v5

    .line 277
    const/4 v4, 0x1

    .line 278
    add-int/2addr v5, v4

    .line 279
    invoke-virtual {v11, v8}, Lcom/google/android/gms/internal/ads/f0;->g(I)I

    .line 280
    .line 281
    .line 282
    move-result v7

    .line 283
    if-eqz v7, :cond_b

    .line 284
    .line 285
    if-eq v7, v4, :cond_a

    .line 286
    .line 287
    if-ne v7, v8, :cond_9

    .line 288
    .line 289
    const v4, 0xbb80

    .line 290
    .line 291
    .line 292
    goto :goto_7

    .line 293
    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    .line 294
    .line 295
    const-string v2, "Unsupported clock rate index in DTS UHD header: "

    .line 296
    .line 297
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 298
    .line 299
    .line 300
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 301
    .line 302
    .line 303
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 304
    .line 305
    .line 306
    move-result-object v1

    .line 307
    const/4 v2, 0x0

    .line 308
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/Ka;->a(Ljava/lang/String;Ljava/lang/RuntimeException;)Lcom/google/android/gms/internal/ads/Ka;

    .line 309
    .line 310
    .line 311
    move-result-object v1

    .line 312
    throw v1

    .line 313
    :cond_a
    const v4, 0xac44

    .line 314
    .line 315
    .line 316
    goto :goto_7

    .line 317
    :cond_b
    const/16 v4, 0x7d00

    .line 318
    .line 319
    :goto_7
    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/f0;->x()Z

    .line 320
    .line 321
    .line 322
    move-result v7

    .line 323
    if-eqz v7, :cond_c

    .line 324
    .line 325
    const/16 v7, 0x24

    .line 326
    .line 327
    invoke-virtual {v11, v7}, Lcom/google/android/gms/internal/ads/f0;->v(I)V

    .line 328
    .line 329
    .line 330
    :cond_c
    mul-int v3, v3, v5

    .line 331
    .line 332
    invoke-virtual {v11, v8}, Lcom/google/android/gms/internal/ads/f0;->g(I)I

    .line 333
    .line 334
    .line 335
    move-result v5

    .line 336
    const/4 v7, 0x1

    .line 337
    shl-int v5, v7, v5

    .line 338
    .line 339
    mul-int v17, v4, v5

    .line 340
    .line 341
    int-to-long v4, v4

    .line 342
    int-to-long v7, v3

    .line 343
    const-wide/32 v30, 0xf4240

    .line 344
    .line 345
    .line 346
    sget-object v34, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    .line 347
    .line 348
    move-wide/from16 v28, v7

    .line 349
    .line 350
    move-wide/from16 v32, v4

    .line 351
    .line 352
    invoke-static/range {v28 .. v34}, Lcom/google/android/gms/internal/ads/Et;->v(JJJLjava/math/RoundingMode;)J

    .line 353
    .line 354
    .line 355
    move-result-wide v3

    .line 356
    move-wide v12, v3

    .line 357
    move/from16 v5, v17

    .line 358
    .line 359
    goto :goto_8

    .line 360
    :cond_d
    const-string v1, "CRC check failed"

    .line 361
    .line 362
    const/4 v2, 0x0

    .line 363
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/Ka;->a(Ljava/lang/String;Ljava/lang/RuntimeException;)Lcom/google/android/gms/internal/ads/Ka;

    .line 364
    .line 365
    .line 366
    move-result-object v1

    .line 367
    throw v1

    .line 368
    :cond_e
    const-string v1, "Only supports full channel mask-based audio presentation"

    .line 369
    .line 370
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/Ka;->b(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/Ka;

    .line 371
    .line 372
    .line 373
    move-result-object v1

    .line 374
    throw v1

    .line 375
    :cond_f
    move-wide/from16 v12, v23

    .line 376
    .line 377
    const v5, -0x7fffffff

    .line 378
    .line 379
    .line 380
    :goto_8
    const/4 v3, 0x0

    .line 381
    const/4 v4, 0x0

    .line 382
    :goto_9
    if-ge v3, v6, :cond_10

    .line 383
    .line 384
    sget-object v3, Lcom/google/android/gms/internal/ads/nH;->o:[I

    .line 385
    .line 386
    invoke-static {v11, v3}, Lcom/google/android/gms/internal/ads/nH;->o(Lcom/google/android/gms/internal/ads/f0;[I)I

    .line 387
    .line 388
    .line 389
    move-result v3

    .line 390
    add-int/2addr v4, v3

    .line 391
    const/4 v3, 0x1

    .line 392
    goto :goto_9

    .line 393
    :cond_10
    const/4 v3, 0x0

    .line 394
    :goto_a
    if-gtz v3, :cond_13

    .line 395
    .line 396
    if-eqz v6, :cond_11

    .line 397
    .line 398
    sget-object v7, Lcom/google/android/gms/internal/ads/nH;->p:[I

    .line 399
    .line 400
    invoke-static {v11, v7}, Lcom/google/android/gms/internal/ads/nH;->o(Lcom/google/android/gms/internal/ads/f0;[I)I

    .line 401
    .line 402
    .line 403
    move-result v7

    .line 404
    invoke-virtual {v2, v7}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 405
    .line 406
    .line 407
    :cond_11
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 408
    .line 409
    .line 410
    move-result v7

    .line 411
    if-eqz v7, :cond_12

    .line 412
    .line 413
    sget-object v7, Lcom/google/android/gms/internal/ads/nH;->q:[I

    .line 414
    .line 415
    invoke-static {v11, v7}, Lcom/google/android/gms/internal/ads/nH;->o(Lcom/google/android/gms/internal/ads/f0;[I)I

    .line 416
    .line 417
    .line 418
    move-result v7

    .line 419
    goto :goto_b

    .line 420
    :cond_12
    const/4 v7, 0x0

    .line 421
    :goto_b
    add-int/2addr v4, v7

    .line 422
    add-int/lit8 v3, v3, 0x1

    .line 423
    .line 424
    goto :goto_a

    .line 425
    :cond_13
    add-int v9, v16, v4

    .line 426
    .line 427
    new-instance v11, LW0/r;

    .line 428
    .line 429
    const-string v3, "audio/vnd.dts.uhd;profile=p2"

    .line 430
    .line 431
    const/4 v4, 0x2

    .line 432
    move-object v2, v11

    .line 433
    move v6, v9

    .line 434
    move-wide v7, v12

    .line 435
    invoke-direct/range {v2 .. v8}, LW0/r;-><init>(Ljava/lang/String;IIIJ)V

    .line 436
    .line 437
    .line 438
    iget v2, v0, Lcom/google/android/gms/internal/ads/D2;->m:I

    .line 439
    .line 440
    const/4 v3, 0x3

    .line 441
    if-ne v2, v3, :cond_14

    .line 442
    .line 443
    invoke-virtual {v0, v11}, Lcom/google/android/gms/internal/ads/D2;->a(LW0/r;)V

    .line 444
    .line 445
    .line 446
    :cond_14
    iput v9, v0, Lcom/google/android/gms/internal/ads/D2;->l:I

    .line 447
    .line 448
    cmp-long v2, v12, v23

    .line 449
    .line 450
    if-nez v2, :cond_15

    .line 451
    .line 452
    move-wide/from16 v12, v18

    .line 453
    .line 454
    :cond_15
    iput-wide v12, v0, Lcom/google/android/gms/internal/ads/D2;->j:J

    .line 455
    .line 456
    const/4 v2, 0x0

    .line 457
    invoke-virtual {v10, v2}, Lcom/google/android/gms/internal/ads/jr;->j(I)V

    .line 458
    .line 459
    .line 460
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/D2;->f:Lcom/google/android/gms/internal/ads/e0;

    .line 461
    .line 462
    iget v3, v0, Lcom/google/android/gms/internal/ads/D2;->o:I

    .line 463
    .line 464
    invoke-interface {v2, v3, v10}, Lcom/google/android/gms/internal/ads/e0;->f(ILcom/google/android/gms/internal/ads/jr;)V

    .line 465
    .line 466
    .line 467
    const/4 v2, 0x6

    .line 468
    iput v2, v0, Lcom/google/android/gms/internal/ads/D2;->g:I

    .line 469
    .line 470
    goto/16 :goto_0

    .line 471
    .line 472
    :cond_16
    const/4 v2, 0x6

    .line 473
    iget-object v3, v10, Lcom/google/android/gms/internal/ads/jr;->a:[B

    .line 474
    .line 475
    invoke-virtual {v0, v1, v3, v2}, Lcom/google/android/gms/internal/ads/D2;->e(Lcom/google/android/gms/internal/ads/jr;[BI)Z

    .line 476
    .line 477
    .line 478
    move-result v2

    .line 479
    if-eqz v2, :cond_0

    .line 480
    .line 481
    iget-object v2, v10, Lcom/google/android/gms/internal/ads/jr;->a:[B

    .line 482
    .line 483
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/nH;->q([B)Lcom/google/android/gms/internal/ads/f0;

    .line 484
    .line 485
    .line 486
    move-result-object v2

    .line 487
    invoke-virtual {v2, v15}, Lcom/google/android/gms/internal/ads/f0;->v(I)V

    .line 488
    .line 489
    .line 490
    sget-object v3, Lcom/google/android/gms/internal/ads/nH;->r:[I

    .line 491
    .line 492
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/nH;->o(Lcom/google/android/gms/internal/ads/f0;[I)I

    .line 493
    .line 494
    .line 495
    move-result v2

    .line 496
    const/4 v3, 0x1

    .line 497
    add-int/2addr v2, v3

    .line 498
    iput v2, v0, Lcom/google/android/gms/internal/ads/D2;->o:I

    .line 499
    .line 500
    iget v3, v0, Lcom/google/android/gms/internal/ads/D2;->h:I

    .line 501
    .line 502
    if-le v3, v2, :cond_17

    .line 503
    .line 504
    sub-int v2, v3, v2

    .line 505
    .line 506
    sub-int/2addr v3, v2

    .line 507
    iput v3, v0, Lcom/google/android/gms/internal/ads/D2;->h:I

    .line 508
    .line 509
    iget v3, v1, Lcom/google/android/gms/internal/ads/jr;->b:I

    .line 510
    .line 511
    sub-int/2addr v3, v2

    .line 512
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/jr;->j(I)V

    .line 513
    .line 514
    .line 515
    :cond_17
    iput v12, v0, Lcom/google/android/gms/internal/ads/D2;->g:I

    .line 516
    .line 517
    goto/16 :goto_0

    .line 518
    .line 519
    :cond_18
    iget-object v2, v10, Lcom/google/android/gms/internal/ads/jr;->a:[B

    .line 520
    .line 521
    iget v5, v0, Lcom/google/android/gms/internal/ads/D2;->n:I

    .line 522
    .line 523
    invoke-virtual {v0, v1, v2, v5}, Lcom/google/android/gms/internal/ads/D2;->e(Lcom/google/android/gms/internal/ads/jr;[BI)Z

    .line 524
    .line 525
    .line 526
    move-result v2

    .line 527
    if-eqz v2, :cond_0

    .line 528
    .line 529
    iget-object v2, v10, Lcom/google/android/gms/internal/ads/jr;->a:[B

    .line 530
    .line 531
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/nH;->q([B)Lcom/google/android/gms/internal/ads/f0;

    .line 532
    .line 533
    .line 534
    move-result-object v2

    .line 535
    const/16 v5, 0x28

    .line 536
    .line 537
    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/f0;->v(I)V

    .line 538
    .line 539
    .line 540
    invoke-virtual {v2, v8}, Lcom/google/android/gms/internal/ads/f0;->g(I)I

    .line 541
    .line 542
    .line 543
    move-result v5

    .line 544
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/f0;->x()Z

    .line 545
    .line 546
    .line 547
    move-result v6

    .line 548
    const/4 v7, 0x1

    .line 549
    if-eq v7, v6, :cond_19

    .line 550
    .line 551
    const/16 v9, 0x10

    .line 552
    .line 553
    goto :goto_c

    .line 554
    :cond_19
    const/16 v9, 0x14

    .line 555
    .line 556
    :goto_c
    if-eq v7, v6, :cond_1a

    .line 557
    .line 558
    const/16 v6, 0x8

    .line 559
    .line 560
    goto :goto_d

    .line 561
    :cond_1a
    const/16 v6, 0xc

    .line 562
    .line 563
    :goto_d
    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/ads/f0;->v(I)V

    .line 564
    .line 565
    .line 566
    invoke-virtual {v2, v9}, Lcom/google/android/gms/internal/ads/f0;->g(I)I

    .line 567
    .line 568
    .line 569
    move-result v6

    .line 570
    add-int/2addr v6, v7

    .line 571
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/f0;->x()Z

    .line 572
    .line 573
    .line 574
    move-result v11

    .line 575
    if-eqz v11, :cond_1f

    .line 576
    .line 577
    invoke-virtual {v2, v8}, Lcom/google/android/gms/internal/ads/f0;->g(I)I

    .line 578
    .line 579
    .line 580
    move-result v13

    .line 581
    const/4 v14, 0x3

    .line 582
    invoke-virtual {v2, v14}, Lcom/google/android/gms/internal/ads/f0;->g(I)I

    .line 583
    .line 584
    .line 585
    move-result v15

    .line 586
    add-int/2addr v15, v7

    .line 587
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/f0;->x()Z

    .line 588
    .line 589
    .line 590
    move-result v26

    .line 591
    if-eqz v26, :cond_1b

    .line 592
    .line 593
    const/16 v12, 0x24

    .line 594
    .line 595
    invoke-virtual {v2, v12}, Lcom/google/android/gms/internal/ads/f0;->v(I)V

    .line 596
    .line 597
    .line 598
    :cond_1b
    invoke-virtual {v2, v14}, Lcom/google/android/gms/internal/ads/f0;->g(I)I

    .line 599
    .line 600
    .line 601
    move-result v12

    .line 602
    add-int/2addr v12, v7

    .line 603
    invoke-virtual {v2, v14}, Lcom/google/android/gms/internal/ads/f0;->g(I)I

    .line 604
    .line 605
    .line 606
    move-result v14

    .line 607
    add-int/2addr v14, v7

    .line 608
    if-ne v12, v7, :cond_1e

    .line 609
    .line 610
    if-ne v14, v7, :cond_1e

    .line 611
    .line 612
    add-int/2addr v5, v7

    .line 613
    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/f0;->g(I)I

    .line 614
    .line 615
    .line 616
    move-result v12

    .line 617
    const/4 v14, 0x0

    .line 618
    :goto_e
    if-ge v14, v5, :cond_1d

    .line 619
    .line 620
    shr-int v25, v12, v14

    .line 621
    .line 622
    and-int/lit8 v4, v25, 0x1

    .line 623
    .line 624
    if-ne v4, v7, :cond_1c

    .line 625
    .line 626
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/f0;->v(I)V

    .line 627
    .line 628
    .line 629
    :cond_1c
    add-int/lit8 v14, v14, 0x1

    .line 630
    .line 631
    const/4 v4, 0x4

    .line 632
    const/4 v7, 0x1

    .line 633
    goto :goto_e

    .line 634
    :cond_1d
    const/16 v4, 0x200

    .line 635
    .line 636
    mul-int/lit16 v4, v15, 0x200

    .line 637
    .line 638
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/f0;->x()Z

    .line 639
    .line 640
    .line 641
    move-result v5

    .line 642
    if-eqz v5, :cond_20

    .line 643
    .line 644
    invoke-virtual {v2, v8}, Lcom/google/android/gms/internal/ads/f0;->v(I)V

    .line 645
    .line 646
    .line 647
    invoke-virtual {v2, v8}, Lcom/google/android/gms/internal/ads/f0;->g(I)I

    .line 648
    .line 649
    .line 650
    move-result v5

    .line 651
    const/4 v7, 0x1

    .line 652
    add-int/2addr v5, v7

    .line 653
    shl-int/2addr v5, v8

    .line 654
    invoke-virtual {v2, v8}, Lcom/google/android/gms/internal/ads/f0;->g(I)I

    .line 655
    .line 656
    .line 657
    move-result v12

    .line 658
    add-int/2addr v12, v7

    .line 659
    const/4 v7, 0x0

    .line 660
    :goto_f
    if-ge v7, v12, :cond_20

    .line 661
    .line 662
    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/f0;->v(I)V

    .line 663
    .line 664
    .line 665
    add-int/lit8 v7, v7, 0x1

    .line 666
    .line 667
    goto :goto_f

    .line 668
    :cond_1e
    const-string v1, "Multiple audio presentations or assets not supported"

    .line 669
    .line 670
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/Ka;->b(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/Ka;

    .line 671
    .line 672
    .line 673
    move-result-object v1

    .line 674
    throw v1

    .line 675
    :cond_1f
    const/4 v4, 0x0

    .line 676
    const/4 v13, -0x1

    .line 677
    :cond_20
    invoke-virtual {v2, v9}, Lcom/google/android/gms/internal/ads/f0;->v(I)V

    .line 678
    .line 679
    .line 680
    const/16 v5, 0xc

    .line 681
    .line 682
    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/f0;->v(I)V

    .line 683
    .line 684
    .line 685
    if-eqz v11, :cond_24

    .line 686
    .line 687
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/f0;->x()Z

    .line 688
    .line 689
    .line 690
    move-result v5

    .line 691
    if-eqz v5, :cond_21

    .line 692
    .line 693
    const/4 v5, 0x4

    .line 694
    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/f0;->v(I)V

    .line 695
    .line 696
    .line 697
    :cond_21
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/f0;->x()Z

    .line 698
    .line 699
    .line 700
    move-result v5

    .line 701
    if-eqz v5, :cond_22

    .line 702
    .line 703
    const/16 v5, 0x18

    .line 704
    .line 705
    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/f0;->v(I)V

    .line 706
    .line 707
    .line 708
    :cond_22
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/f0;->x()Z

    .line 709
    .line 710
    .line 711
    move-result v5

    .line 712
    if-eqz v5, :cond_23

    .line 713
    .line 714
    const/16 v5, 0xa

    .line 715
    .line 716
    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/f0;->g(I)I

    .line 717
    .line 718
    .line 719
    move-result v5

    .line 720
    const/4 v7, 0x1

    .line 721
    add-int/2addr v5, v7

    .line 722
    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/f0;->w(I)V

    .line 723
    .line 724
    .line 725
    :goto_10
    const/4 v5, 0x5

    .line 726
    goto :goto_11

    .line 727
    :cond_23
    const/4 v7, 0x1

    .line 728
    goto :goto_10

    .line 729
    :goto_11
    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/f0;->v(I)V

    .line 730
    .line 731
    .line 732
    sget-object v5, Lcom/google/android/gms/internal/ads/nH;->m:[I

    .line 733
    .line 734
    const/4 v9, 0x4

    .line 735
    invoke-virtual {v2, v9}, Lcom/google/android/gms/internal/ads/f0;->g(I)I

    .line 736
    .line 737
    .line 738
    move-result v9

    .line 739
    aget v17, v5, v9

    .line 740
    .line 741
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/f0;->g(I)I

    .line 742
    .line 743
    .line 744
    move-result v2

    .line 745
    add-int/lit8 v12, v2, 0x1

    .line 746
    .line 747
    move/from16 v29, v12

    .line 748
    .line 749
    move/from16 v30, v17

    .line 750
    .line 751
    goto :goto_12

    .line 752
    :cond_24
    const/4 v7, 0x1

    .line 753
    const/16 v29, -0x1

    .line 754
    .line 755
    const v30, -0x7fffffff

    .line 756
    .line 757
    .line 758
    :goto_12
    if-eqz v11, :cond_28

    .line 759
    .line 760
    if-eqz v13, :cond_27

    .line 761
    .line 762
    if-eq v13, v7, :cond_26

    .line 763
    .line 764
    if-ne v13, v8, :cond_25

    .line 765
    .line 766
    const v2, 0xbb80

    .line 767
    .line 768
    .line 769
    goto :goto_13

    .line 770
    :cond_25
    new-instance v1, Ljava/lang/StringBuilder;

    .line 771
    .line 772
    const-string v2, "Unsupported reference clock code in DTS HD header: "

    .line 773
    .line 774
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 775
    .line 776
    .line 777
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 778
    .line 779
    .line 780
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 781
    .line 782
    .line 783
    move-result-object v1

    .line 784
    const/4 v2, 0x0

    .line 785
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/Ka;->a(Ljava/lang/String;Ljava/lang/RuntimeException;)Lcom/google/android/gms/internal/ads/Ka;

    .line 786
    .line 787
    .line 788
    move-result-object v1

    .line 789
    throw v1

    .line 790
    :cond_26
    const v2, 0xac44

    .line 791
    .line 792
    .line 793
    goto :goto_13

    .line 794
    :cond_27
    const/16 v2, 0x7d00

    .line 795
    .line 796
    :goto_13
    int-to-long v11, v4

    .line 797
    int-to-long v2, v2

    .line 798
    sget-object v17, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    .line 799
    .line 800
    const-wide/32 v13, 0xf4240

    .line 801
    .line 802
    .line 803
    move-wide v15, v2

    .line 804
    invoke-static/range {v11 .. v17}, Lcom/google/android/gms/internal/ads/Et;->v(JJJLjava/math/RoundingMode;)J

    .line 805
    .line 806
    .line 807
    move-result-wide v2

    .line 808
    goto :goto_14

    .line 809
    :cond_28
    move-wide/from16 v2, v23

    .line 810
    .line 811
    :goto_14
    new-instance v4, LW0/r;

    .line 812
    .line 813
    const-string v28, "audio/vnd.dts.hd;profile=lbr"

    .line 814
    .line 815
    move-object/from16 v27, v4

    .line 816
    .line 817
    move/from16 v31, v6

    .line 818
    .line 819
    move-wide/from16 v32, v2

    .line 820
    .line 821
    invoke-direct/range {v27 .. v33}, LW0/r;-><init>(Ljava/lang/String;IIIJ)V

    .line 822
    .line 823
    .line 824
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/D2;->a(LW0/r;)V

    .line 825
    .line 826
    .line 827
    iput v6, v0, Lcom/google/android/gms/internal/ads/D2;->l:I

    .line 828
    .line 829
    cmp-long v4, v2, v23

    .line 830
    .line 831
    if-nez v4, :cond_29

    .line 832
    .line 833
    move-wide/from16 v2, v18

    .line 834
    .line 835
    :cond_29
    iput-wide v2, v0, Lcom/google/android/gms/internal/ads/D2;->j:J

    .line 836
    .line 837
    const/4 v2, 0x0

    .line 838
    invoke-virtual {v10, v2}, Lcom/google/android/gms/internal/ads/jr;->j(I)V

    .line 839
    .line 840
    .line 841
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/D2;->f:Lcom/google/android/gms/internal/ads/e0;

    .line 842
    .line 843
    iget v3, v0, Lcom/google/android/gms/internal/ads/D2;->n:I

    .line 844
    .line 845
    invoke-interface {v2, v3, v10}, Lcom/google/android/gms/internal/ads/e0;->f(ILcom/google/android/gms/internal/ads/jr;)V

    .line 846
    .line 847
    .line 848
    const/4 v2, 0x6

    .line 849
    iput v2, v0, Lcom/google/android/gms/internal/ads/D2;->g:I

    .line 850
    .line 851
    goto/16 :goto_0

    .line 852
    .line 853
    :cond_2a
    iget-object v2, v10, Lcom/google/android/gms/internal/ads/jr;->a:[B

    .line 854
    .line 855
    const/4 v4, 0x7

    .line 856
    invoke-virtual {v0, v1, v2, v4}, Lcom/google/android/gms/internal/ads/D2;->e(Lcom/google/android/gms/internal/ads/jr;[BI)Z

    .line 857
    .line 858
    .line 859
    move-result v2

    .line 860
    if-eqz v2, :cond_0

    .line 861
    .line 862
    iget-object v2, v10, Lcom/google/android/gms/internal/ads/jr;->a:[B

    .line 863
    .line 864
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/nH;->q([B)Lcom/google/android/gms/internal/ads/f0;

    .line 865
    .line 866
    .line 867
    move-result-object v2

    .line 868
    const/16 v4, 0x2a

    .line 869
    .line 870
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/f0;->v(I)V

    .line 871
    .line 872
    .line 873
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/f0;->x()Z

    .line 874
    .line 875
    .line 876
    move-result v4

    .line 877
    const/4 v5, 0x1

    .line 878
    if-eq v5, v4, :cond_2b

    .line 879
    .line 880
    goto :goto_15

    .line 881
    :cond_2b
    const/16 v3, 0xc

    .line 882
    .line 883
    :goto_15
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/f0;->g(I)I

    .line 884
    .line 885
    .line 886
    move-result v2

    .line 887
    add-int/2addr v2, v5

    .line 888
    iput v2, v0, Lcom/google/android/gms/internal/ads/D2;->n:I

    .line 889
    .line 890
    const/4 v2, 0x3

    .line 891
    iput v2, v0, Lcom/google/android/gms/internal/ads/D2;->g:I

    .line 892
    .line 893
    goto/16 :goto_0

    .line 894
    .line 895
    :cond_2c
    iget-object v2, v10, Lcom/google/android/gms/internal/ads/jr;->a:[B

    .line 896
    .line 897
    const/16 v4, 0x12

    .line 898
    .line 899
    invoke-virtual {v0, v1, v2, v4}, Lcom/google/android/gms/internal/ads/D2;->e(Lcom/google/android/gms/internal/ads/jr;[BI)Z

    .line 900
    .line 901
    .line 902
    move-result v2

    .line 903
    if-eqz v2, :cond_0

    .line 904
    .line 905
    iget-object v2, v10, Lcom/google/android/gms/internal/ads/jr;->a:[B

    .line 906
    .line 907
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/D2;->k:Lcom/google/android/gms/internal/ads/p0;

    .line 908
    .line 909
    const/16 v6, 0x3c

    .line 910
    .line 911
    if-nez v5, :cond_2f

    .line 912
    .line 913
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/D2;->e:Ljava/lang/String;

    .line 914
    .line 915
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/nH;->q([B)Lcom/google/android/gms/internal/ads/f0;

    .line 916
    .line 917
    .line 918
    move-result-object v7

    .line 919
    invoke-virtual {v7, v6}, Lcom/google/android/gms/internal/ads/f0;->v(I)V

    .line 920
    .line 921
    .line 922
    const/4 v9, 0x6

    .line 923
    invoke-virtual {v7, v9}, Lcom/google/android/gms/internal/ads/f0;->g(I)I

    .line 924
    .line 925
    .line 926
    move-result v11

    .line 927
    sget-object v9, Lcom/google/android/gms/internal/ads/nH;->j:[I

    .line 928
    .line 929
    aget v9, v9, v11

    .line 930
    .line 931
    const/4 v11, 0x4

    .line 932
    invoke-virtual {v7, v11}, Lcom/google/android/gms/internal/ads/f0;->g(I)I

    .line 933
    .line 934
    .line 935
    move-result v12

    .line 936
    sget-object v11, Lcom/google/android/gms/internal/ads/nH;->k:[I

    .line 937
    .line 938
    aget v11, v11, v12

    .line 939
    .line 940
    const/4 v12, 0x5

    .line 941
    invoke-virtual {v7, v12}, Lcom/google/android/gms/internal/ads/f0;->g(I)I

    .line 942
    .line 943
    .line 944
    move-result v13

    .line 945
    const/16 v12, 0x1d

    .line 946
    .line 947
    if-lt v13, v12, :cond_2d

    .line 948
    .line 949
    const/4 v12, -0x1

    .line 950
    :goto_16
    const/16 v13, 0xa

    .line 951
    .line 952
    goto :goto_17

    .line 953
    :cond_2d
    sget-object v12, Lcom/google/android/gms/internal/ads/nH;->l:[I

    .line 954
    .line 955
    aget v12, v12, v13

    .line 956
    .line 957
    mul-int/lit16 v12, v12, 0x3e8

    .line 958
    .line 959
    div-int/2addr v12, v8

    .line 960
    goto :goto_16

    .line 961
    :goto_17
    invoke-virtual {v7, v13}, Lcom/google/android/gms/internal/ads/f0;->v(I)V

    .line 962
    .line 963
    .line 964
    invoke-virtual {v7, v8}, Lcom/google/android/gms/internal/ads/f0;->g(I)I

    .line 965
    .line 966
    .line 967
    move-result v7

    .line 968
    if-lez v7, :cond_2e

    .line 969
    .line 970
    const/4 v7, 0x1

    .line 971
    goto :goto_18

    .line 972
    :cond_2e
    const/4 v7, 0x0

    .line 973
    :goto_18
    add-int/2addr v9, v7

    .line 974
    new-instance v7, Lcom/google/android/gms/internal/ads/K;

    .line 975
    .line 976
    invoke-direct {v7}, Lcom/google/android/gms/internal/ads/K;-><init>()V

    .line 977
    .line 978
    .line 979
    iput-object v5, v7, Lcom/google/android/gms/internal/ads/K;->a:Ljava/lang/String;

    .line 980
    .line 981
    const-string v5, "audio/vnd.dts"

    .line 982
    .line 983
    invoke-virtual {v7, v5}, Lcom/google/android/gms/internal/ads/K;->f(Ljava/lang/String;)V

    .line 984
    .line 985
    .line 986
    iput v12, v7, Lcom/google/android/gms/internal/ads/K;->g:I

    .line 987
    .line 988
    iput v9, v7, Lcom/google/android/gms/internal/ads/K;->z:I

    .line 989
    .line 990
    iput v11, v7, Lcom/google/android/gms/internal/ads/K;->A:I

    .line 991
    .line 992
    const/4 v5, 0x0

    .line 993
    iput-object v5, v7, Lcom/google/android/gms/internal/ads/K;->p:Lcom/google/android/gms/internal/ads/mO;

    .line 994
    .line 995
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/D2;->c:Ljava/lang/String;

    .line 996
    .line 997
    iput-object v5, v7, Lcom/google/android/gms/internal/ads/K;->d:Ljava/lang/String;

    .line 998
    .line 999
    iget v5, v0, Lcom/google/android/gms/internal/ads/D2;->d:I

    .line 1000
    .line 1001
    iput v5, v7, Lcom/google/android/gms/internal/ads/K;->f:I

    .line 1002
    .line 1003
    new-instance v5, Lcom/google/android/gms/internal/ads/p0;

    .line 1004
    .line 1005
    invoke-direct {v5, v7}, Lcom/google/android/gms/internal/ads/p0;-><init>(Lcom/google/android/gms/internal/ads/K;)V

    .line 1006
    .line 1007
    .line 1008
    iput-object v5, v0, Lcom/google/android/gms/internal/ads/D2;->k:Lcom/google/android/gms/internal/ads/p0;

    .line 1009
    .line 1010
    iget-object v7, v0, Lcom/google/android/gms/internal/ads/D2;->f:Lcom/google/android/gms/internal/ads/e0;

    .line 1011
    .line 1012
    invoke-interface {v7, v5}, Lcom/google/android/gms/internal/ads/e0;->d(Lcom/google/android/gms/internal/ads/p0;)V

    .line 1013
    .line 1014
    .line 1015
    :cond_2f
    const/4 v5, 0x0

    .line 1016
    aget-byte v7, v2, v5

    .line 1017
    .line 1018
    const/16 v5, 0x1f

    .line 1019
    .line 1020
    const/4 v9, -0x2

    .line 1021
    if-eq v7, v9, :cond_32

    .line 1022
    .line 1023
    const/4 v11, -0x1

    .line 1024
    if-eq v7, v11, :cond_31

    .line 1025
    .line 1026
    if-eq v7, v5, :cond_30

    .line 1027
    .line 1028
    const/4 v11, 0x5

    .line 1029
    aget-byte v3, v2, v11

    .line 1030
    .line 1031
    const/4 v11, 0x3

    .line 1032
    and-int/2addr v3, v11

    .line 1033
    const/16 v11, 0xc

    .line 1034
    .line 1035
    shl-int/2addr v3, v11

    .line 1036
    const/4 v11, 0x6

    .line 1037
    aget-byte v12, v2, v11

    .line 1038
    .line 1039
    and-int/lit16 v12, v12, 0xff

    .line 1040
    .line 1041
    const/4 v13, 0x4

    .line 1042
    shl-int/2addr v12, v13

    .line 1043
    const/4 v14, 0x7

    .line 1044
    aget-byte v4, v2, v14

    .line 1045
    .line 1046
    and-int/lit16 v4, v4, 0xf0

    .line 1047
    .line 1048
    shr-int/2addr v4, v13

    .line 1049
    or-int/2addr v3, v12

    .line 1050
    or-int/2addr v3, v4

    .line 1051
    :goto_19
    const/4 v4, 0x1

    .line 1052
    add-int/2addr v3, v4

    .line 1053
    const/4 v4, 0x0

    .line 1054
    goto :goto_1b

    .line 1055
    :cond_30
    const/4 v11, 0x6

    .line 1056
    const/4 v13, 0x4

    .line 1057
    const/4 v14, 0x7

    .line 1058
    aget-byte v4, v2, v11

    .line 1059
    .line 1060
    const/4 v11, 0x3

    .line 1061
    and-int/2addr v4, v11

    .line 1062
    const/16 v11, 0xc

    .line 1063
    .line 1064
    shl-int/2addr v4, v11

    .line 1065
    aget-byte v11, v2, v14

    .line 1066
    .line 1067
    and-int/lit16 v11, v11, 0xff

    .line 1068
    .line 1069
    shl-int/2addr v11, v13

    .line 1070
    aget-byte v3, v2, v3

    .line 1071
    .line 1072
    and-int/2addr v3, v6

    .line 1073
    shr-int/2addr v3, v8

    .line 1074
    or-int/2addr v4, v11

    .line 1075
    or-int/2addr v3, v4

    .line 1076
    :goto_1a
    const/4 v4, 0x1

    .line 1077
    add-int/2addr v3, v4

    .line 1078
    const/4 v4, 0x1

    .line 1079
    goto :goto_1b

    .line 1080
    :cond_31
    const/4 v14, 0x7

    .line 1081
    aget-byte v3, v2, v14

    .line 1082
    .line 1083
    const/4 v4, 0x3

    .line 1084
    and-int/2addr v3, v4

    .line 1085
    const/16 v4, 0xc

    .line 1086
    .line 1087
    shl-int/2addr v3, v4

    .line 1088
    const/4 v4, 0x6

    .line 1089
    aget-byte v11, v2, v4

    .line 1090
    .line 1091
    and-int/lit16 v4, v11, 0xff

    .line 1092
    .line 1093
    const/4 v11, 0x4

    .line 1094
    shl-int/2addr v4, v11

    .line 1095
    const/16 v12, 0x9

    .line 1096
    .line 1097
    aget-byte v12, v2, v12

    .line 1098
    .line 1099
    and-int/2addr v12, v6

    .line 1100
    shr-int/2addr v12, v8

    .line 1101
    or-int/2addr v3, v4

    .line 1102
    or-int/2addr v3, v12

    .line 1103
    goto :goto_1a

    .line 1104
    :cond_32
    const/4 v11, 0x4

    .line 1105
    aget-byte v3, v2, v11

    .line 1106
    .line 1107
    const/4 v4, 0x3

    .line 1108
    and-int/2addr v3, v4

    .line 1109
    const/16 v4, 0xc

    .line 1110
    .line 1111
    shl-int/2addr v3, v4

    .line 1112
    const/4 v4, 0x7

    .line 1113
    aget-byte v12, v2, v4

    .line 1114
    .line 1115
    and-int/lit16 v4, v12, 0xff

    .line 1116
    .line 1117
    shl-int/2addr v4, v11

    .line 1118
    const/4 v12, 0x6

    .line 1119
    aget-byte v13, v2, v12

    .line 1120
    .line 1121
    and-int/lit16 v12, v13, 0xf0

    .line 1122
    .line 1123
    shr-int/2addr v12, v11

    .line 1124
    or-int/2addr v3, v4

    .line 1125
    or-int/2addr v3, v12

    .line 1126
    goto :goto_19

    .line 1127
    :goto_1b
    if-eqz v4, :cond_33

    .line 1128
    .line 1129
    mul-int/lit8 v3, v3, 0x10

    .line 1130
    .line 1131
    div-int/lit8 v3, v3, 0xe

    .line 1132
    .line 1133
    :cond_33
    iput v3, v0, Lcom/google/android/gms/internal/ads/D2;->l:I

    .line 1134
    .line 1135
    if-eq v7, v9, :cond_36

    .line 1136
    .line 1137
    const/4 v3, -0x1

    .line 1138
    if-eq v7, v3, :cond_35

    .line 1139
    .line 1140
    if-eq v7, v5, :cond_34

    .line 1141
    .line 1142
    const/4 v3, 0x4

    .line 1143
    aget-byte v3, v2, v3

    .line 1144
    .line 1145
    const/4 v4, 0x1

    .line 1146
    and-int/2addr v3, v4

    .line 1147
    const/4 v4, 0x6

    .line 1148
    shl-int/2addr v3, v4

    .line 1149
    const/4 v5, 0x5

    .line 1150
    aget-byte v2, v2, v5

    .line 1151
    .line 1152
    and-int/lit16 v2, v2, 0xfc

    .line 1153
    .line 1154
    :goto_1c
    shr-int/2addr v2, v8

    .line 1155
    or-int/2addr v2, v3

    .line 1156
    const/4 v5, 0x1

    .line 1157
    goto :goto_1e

    .line 1158
    :cond_34
    const/4 v3, 0x4

    .line 1159
    const/4 v4, 0x6

    .line 1160
    const/4 v5, 0x5

    .line 1161
    aget-byte v5, v2, v5

    .line 1162
    .line 1163
    const/4 v7, 0x7

    .line 1164
    and-int/2addr v5, v7

    .line 1165
    shl-int/lit8 v3, v5, 0x4

    .line 1166
    .line 1167
    aget-byte v2, v2, v4

    .line 1168
    .line 1169
    :goto_1d
    and-int/2addr v2, v6

    .line 1170
    goto :goto_1c

    .line 1171
    :cond_35
    const/4 v3, 0x4

    .line 1172
    const/4 v7, 0x7

    .line 1173
    aget-byte v4, v2, v3

    .line 1174
    .line 1175
    and-int/2addr v4, v7

    .line 1176
    shl-int/lit8 v3, v4, 0x4

    .line 1177
    .line 1178
    aget-byte v2, v2, v7

    .line 1179
    .line 1180
    goto :goto_1d

    .line 1181
    :cond_36
    const/4 v3, 0x4

    .line 1182
    const/4 v4, 0x5

    .line 1183
    aget-byte v4, v2, v4

    .line 1184
    .line 1185
    const/4 v5, 0x1

    .line 1186
    and-int/2addr v4, v5

    .line 1187
    const/4 v6, 0x6

    .line 1188
    shl-int/2addr v4, v6

    .line 1189
    aget-byte v2, v2, v3

    .line 1190
    .line 1191
    and-int/lit16 v2, v2, 0xfc

    .line 1192
    .line 1193
    shr-int/2addr v2, v8

    .line 1194
    or-int/2addr v2, v4

    .line 1195
    :goto_1e
    add-int/2addr v2, v5

    .line 1196
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/D2;->k:Lcom/google/android/gms/internal/ads/p0;

    .line 1197
    .line 1198
    iget v3, v3, Lcom/google/android/gms/internal/ads/p0;->B:I

    .line 1199
    .line 1200
    mul-int/lit8 v2, v2, 0x20

    .line 1201
    .line 1202
    int-to-long v4, v2

    .line 1203
    invoke-static {v3, v4, v5}, Lcom/google/android/gms/internal/ads/Et;->u(IJ)J

    .line 1204
    .line 1205
    .line 1206
    move-result-wide v2

    .line 1207
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/Cw;->w0(J)I

    .line 1208
    .line 1209
    .line 1210
    move-result v2

    .line 1211
    int-to-long v2, v2

    .line 1212
    iput-wide v2, v0, Lcom/google/android/gms/internal/ads/D2;->j:J

    .line 1213
    .line 1214
    const/4 v2, 0x0

    .line 1215
    invoke-virtual {v10, v2}, Lcom/google/android/gms/internal/ads/jr;->j(I)V

    .line 1216
    .line 1217
    .line 1218
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/D2;->f:Lcom/google/android/gms/internal/ads/e0;

    .line 1219
    .line 1220
    const/16 v3, 0x12

    .line 1221
    .line 1222
    invoke-interface {v2, v3, v10}, Lcom/google/android/gms/internal/ads/e0;->f(ILcom/google/android/gms/internal/ads/jr;)V

    .line 1223
    .line 1224
    .line 1225
    const/4 v2, 0x6

    .line 1226
    iput v2, v0, Lcom/google/android/gms/internal/ads/D2;->g:I

    .line 1227
    .line 1228
    goto/16 :goto_0

    .line 1229
    .line 1230
    :cond_37
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/jr;->o()I

    .line 1231
    .line 1232
    .line 1233
    move-result v2

    .line 1234
    if-lez v2, :cond_0

    .line 1235
    .line 1236
    iget v2, v0, Lcom/google/android/gms/internal/ads/D2;->i:I

    .line 1237
    .line 1238
    shl-int/2addr v2, v3

    .line 1239
    iput v2, v0, Lcom/google/android/gms/internal/ads/D2;->i:I

    .line 1240
    .line 1241
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/jr;->w()I

    .line 1242
    .line 1243
    .line 1244
    move-result v4

    .line 1245
    or-int/2addr v2, v4

    .line 1246
    iput v2, v0, Lcom/google/android/gms/internal/ads/D2;->i:I

    .line 1247
    .line 1248
    const v4, 0x7ffe8001

    .line 1249
    .line 1250
    .line 1251
    if-eq v2, v4, :cond_38

    .line 1252
    .line 1253
    const v4, -0x180fe80

    .line 1254
    .line 1255
    .line 1256
    if-eq v2, v4, :cond_38

    .line 1257
    .line 1258
    const v4, 0x1fffe800

    .line 1259
    .line 1260
    .line 1261
    if-eq v2, v4, :cond_38

    .line 1262
    .line 1263
    const v4, -0xe0ff18

    .line 1264
    .line 1265
    .line 1266
    if-ne v2, v4, :cond_39

    .line 1267
    .line 1268
    :cond_38
    const/4 v4, 0x1

    .line 1269
    goto :goto_1f

    .line 1270
    :cond_39
    const v4, 0x64582025

    .line 1271
    .line 1272
    .line 1273
    if-eq v2, v4, :cond_3a

    .line 1274
    .line 1275
    const v4, 0x25205864

    .line 1276
    .line 1277
    .line 1278
    if-ne v2, v4, :cond_3b

    .line 1279
    .line 1280
    :cond_3a
    const/4 v4, 0x2

    .line 1281
    goto :goto_1f

    .line 1282
    :cond_3b
    if-eq v2, v6, :cond_3c

    .line 1283
    .line 1284
    const v4, -0xde4bec0

    .line 1285
    .line 1286
    .line 1287
    if-ne v2, v4, :cond_3d

    .line 1288
    .line 1289
    :cond_3c
    const/4 v4, 0x3

    .line 1290
    goto :goto_1f

    .line 1291
    :cond_3d
    const v4, 0x71c442e8

    .line 1292
    .line 1293
    .line 1294
    if-eq v2, v4, :cond_3e

    .line 1295
    .line 1296
    const v4, -0x17bd3b8f

    .line 1297
    .line 1298
    .line 1299
    if-ne v2, v4, :cond_3f

    .line 1300
    .line 1301
    :cond_3e
    const/4 v4, 0x4

    .line 1302
    goto :goto_1f

    .line 1303
    :cond_3f
    const/4 v4, 0x0

    .line 1304
    :goto_1f
    iput v4, v0, Lcom/google/android/gms/internal/ads/D2;->m:I

    .line 1305
    .line 1306
    if-eqz v4, :cond_37

    .line 1307
    .line 1308
    iget-object v3, v10, Lcom/google/android/gms/internal/ads/jr;->a:[B

    .line 1309
    .line 1310
    shr-int/lit8 v5, v2, 0x18

    .line 1311
    .line 1312
    and-int/lit16 v5, v5, 0xff

    .line 1313
    .line 1314
    int-to-byte v5, v5

    .line 1315
    const/4 v6, 0x0

    .line 1316
    aput-byte v5, v3, v6

    .line 1317
    .line 1318
    shr-int/lit8 v5, v2, 0x10

    .line 1319
    .line 1320
    and-int/lit16 v5, v5, 0xff

    .line 1321
    .line 1322
    int-to-byte v5, v5

    .line 1323
    const/4 v6, 0x1

    .line 1324
    aput-byte v5, v3, v6

    .line 1325
    .line 1326
    shr-int/lit8 v5, v2, 0x8

    .line 1327
    .line 1328
    and-int/lit16 v5, v5, 0xff

    .line 1329
    .line 1330
    int-to-byte v5, v5

    .line 1331
    aput-byte v5, v3, v8

    .line 1332
    .line 1333
    and-int/lit16 v2, v2, 0xff

    .line 1334
    .line 1335
    int-to-byte v2, v2

    .line 1336
    const/4 v5, 0x3

    .line 1337
    aput-byte v2, v3, v5

    .line 1338
    .line 1339
    const/4 v2, 0x4

    .line 1340
    iput v2, v0, Lcom/google/android/gms/internal/ads/D2;->h:I

    .line 1341
    .line 1342
    const/4 v7, 0x0

    .line 1343
    iput v7, v0, Lcom/google/android/gms/internal/ads/D2;->i:I

    .line 1344
    .line 1345
    if-eq v4, v5, :cond_42

    .line 1346
    .line 1347
    if-ne v4, v2, :cond_40

    .line 1348
    .line 1349
    goto :goto_20

    .line 1350
    :cond_40
    const/4 v9, 0x1

    .line 1351
    if-ne v4, v9, :cond_41

    .line 1352
    .line 1353
    iput v9, v0, Lcom/google/android/gms/internal/ads/D2;->g:I

    .line 1354
    .line 1355
    goto/16 :goto_0

    .line 1356
    .line 1357
    :cond_41
    iput v8, v0, Lcom/google/android/gms/internal/ads/D2;->g:I

    .line 1358
    .line 1359
    goto/16 :goto_0

    .line 1360
    .line 1361
    :cond_42
    :goto_20
    iput v2, v0, Lcom/google/android/gms/internal/ads/D2;->g:I

    .line 1362
    .line 1363
    goto/16 :goto_0

    .line 1364
    .line 1365
    :cond_43
    return-void
.end method

.method public final c(Lcom/google/android/gms/internal/ads/N;LA1/I;)V
    .locals 1

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
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/D2;->e:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {p2}, LA1/I;->d()V

    .line 12
    .line 13
    .line 14
    iget p2, p2, LA1/I;->d:I

    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    invoke-interface {p1, p2, v0}, Lcom/google/android/gms/internal/ads/N;->h(II)Lcom/google/android/gms/internal/ads/e0;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/D2;->f:Lcom/google/android/gms/internal/ads/e0;

    .line 22
    .line 23
    return-void
.end method

.method public final d(IJ)V
    .locals 0

    .line 1
    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/D2;->p:J

    .line 2
    .line 3
    return-void
.end method

.method public final e(Lcom/google/android/gms/internal/ads/jr;[BI)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/jr;->o()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget v1, p0, Lcom/google/android/gms/internal/ads/D2;->h:I

    .line 6
    .line 7
    sub-int v1, p3, v1

    .line 8
    .line 9
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    iget v1, p0, Lcom/google/android/gms/internal/ads/D2;->h:I

    .line 14
    .line 15
    invoke-virtual {p1, v1, p2, v0}, Lcom/google/android/gms/internal/ads/jr;->f(I[BI)V

    .line 16
    .line 17
    .line 18
    iget p1, p0, Lcom/google/android/gms/internal/ads/D2;->h:I

    .line 19
    .line 20
    add-int/2addr p1, v0

    .line 21
    iput p1, p0, Lcom/google/android/gms/internal/ads/D2;->h:I

    .line 22
    .line 23
    if-ne p1, p3, :cond_0

    .line 24
    .line 25
    const/4 p1, 0x1

    .line 26
    return p1

    .line 27
    :cond_0
    const/4 p1, 0x0

    .line 28
    return p1
.end method

.method public final zzc(Z)V
    .locals 0

    return-void
.end method

.method public final zze()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/google/android/gms/internal/ads/D2;->g:I

    .line 3
    .line 4
    iput v0, p0, Lcom/google/android/gms/internal/ads/D2;->h:I

    .line 5
    .line 6
    iput v0, p0, Lcom/google/android/gms/internal/ads/D2;->i:I

    .line 7
    .line 8
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/D2;->p:J

    .line 14
    .line 15
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/D2;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 16
    .line 17
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 18
    .line 19
    .line 20
    return-void
.end method
