.class public final Lcom/google/android/gms/internal/ads/X2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/L;


# instance fields
.field public final a:Ljava/util/List;

.field public final b:Lcom/google/android/gms/internal/ads/jr;

.field public final c:Landroid/util/SparseIntArray;

.field public final d:LI2/c;

.field public final e:Lcom/google/android/gms/internal/ads/V1;

.field public final f:Landroid/util/SparseArray;

.field public final g:Landroid/util/SparseBooleanArray;

.field public final h:Landroid/util/SparseBooleanArray;

.field public final i:Lcom/google/android/gms/internal/ads/R2;

.field public j:Lb1/a;

.field public k:Lcom/google/android/gms/internal/ads/N;

.field public l:I

.field public m:Z

.field public n:Z

.field public o:Z

.field public p:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/kH;Lcom/google/android/gms/internal/ads/Ys;LI2/c;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/X2;->d:LI2/c;

    .line 5
    .line 6
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/X2;->e:Lcom/google/android/gms/internal/ads/V1;

    .line 7
    .line 8
    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/X2;->a:Ljava/util/List;

    .line 13
    .line 14
    new-instance p1, Lcom/google/android/gms/internal/ads/jr;

    .line 15
    .line 16
    const/16 p2, 0x24b8

    .line 17
    .line 18
    new-array p2, p2, [B

    .line 19
    .line 20
    const/4 p3, 0x0

    .line 21
    invoke-direct {p1, p2, p3}, Lcom/google/android/gms/internal/ads/jr;-><init>([BI)V

    .line 22
    .line 23
    .line 24
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/X2;->b:Lcom/google/android/gms/internal/ads/jr;

    .line 25
    .line 26
    new-instance p1, Landroid/util/SparseBooleanArray;

    .line 27
    .line 28
    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 29
    .line 30
    .line 31
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/X2;->g:Landroid/util/SparseBooleanArray;

    .line 32
    .line 33
    new-instance p2, Landroid/util/SparseBooleanArray;

    .line 34
    .line 35
    invoke-direct {p2}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 36
    .line 37
    .line 38
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/X2;->h:Landroid/util/SparseBooleanArray;

    .line 39
    .line 40
    new-instance p2, Landroid/util/SparseArray;

    .line 41
    .line 42
    invoke-direct {p2}, Landroid/util/SparseArray;-><init>()V

    .line 43
    .line 44
    .line 45
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/X2;->f:Landroid/util/SparseArray;

    .line 46
    .line 47
    new-instance v0, Landroid/util/SparseIntArray;

    .line 48
    .line 49
    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 50
    .line 51
    .line 52
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/X2;->c:Landroid/util/SparseIntArray;

    .line 53
    .line 54
    new-instance v0, Lcom/google/android/gms/internal/ads/R2;

    .line 55
    .line 56
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/R2;-><init>()V

    .line 57
    .line 58
    .line 59
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/X2;->i:Lcom/google/android/gms/internal/ads/R2;

    .line 60
    .line 61
    sget-object v0, Lcom/google/android/gms/internal/ads/N;->n:LF2/G;

    .line 62
    .line 63
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/X2;->k:Lcom/google/android/gms/internal/ads/N;

    .line 64
    .line 65
    const/4 v0, -0x1

    .line 66
    iput v0, p0, Lcom/google/android/gms/internal/ads/X2;->p:I

    .line 67
    .line 68
    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->clear()V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p2}, Landroid/util/SparseArray;->clear()V

    .line 72
    .line 73
    .line 74
    new-instance p1, Landroid/util/SparseArray;

    .line 75
    .line 76
    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    .line 80
    .line 81
    .line 82
    move-result p2

    .line 83
    const/4 v0, 0x0

    .line 84
    :goto_0
    if-ge v0, p2, :cond_0

    .line 85
    .line 86
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/X2;->f:Landroid/util/SparseArray;

    .line 87
    .line 88
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    .line 89
    .line 90
    .line 91
    move-result v2

    .line 92
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    check-cast v3, Lcom/google/android/gms/internal/ads/a3;

    .line 97
    .line 98
    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    add-int/lit8 v0, v0, 0x1

    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/X2;->f:Landroid/util/SparseArray;

    .line 105
    .line 106
    new-instance p2, Lcom/google/android/gms/internal/ads/V2;

    .line 107
    .line 108
    new-instance v0, Lcom/google/android/gms/internal/ads/x;

    .line 109
    .line 110
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/x;-><init>(Lcom/google/android/gms/internal/ads/X2;)V

    .line 111
    .line 112
    .line 113
    invoke-direct {p2, v0}, Lcom/google/android/gms/internal/ads/V2;-><init>(Lcom/google/android/gms/internal/ads/U2;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {p1, p3, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 117
    .line 118
    .line 119
    return-void
.end method


# virtual methods
.method public final c(Lcom/google/android/gms/internal/ads/M;LW0/w;)I
    .locals 28

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
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/M;->zzd()J

    .line 8
    .line 9
    .line 10
    move-result-wide v17

    .line 11
    iget-boolean v3, v0, Lcom/google/android/gms/internal/ads/X2;->m:Z

    .line 12
    .line 13
    const/16 v14, 0x47

    .line 14
    .line 15
    const/4 v15, 0x2

    .line 16
    const-wide/16 v19, -0x1

    .line 17
    .line 18
    const/4 v12, 0x1

    .line 19
    const/4 v13, 0x0

    .line 20
    if-eqz v3, :cond_15

    .line 21
    .line 22
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/X2;->i:Lcom/google/android/gms/internal/ads/R2;

    .line 23
    .line 24
    const-wide/16 v10, 0x0

    .line 25
    .line 26
    cmp-long v6, v17, v19

    .line 27
    .line 28
    if-eqz v6, :cond_10

    .line 29
    .line 30
    iget-boolean v6, v5, Lcom/google/android/gms/internal/ads/R2;->d:Z

    .line 31
    .line 32
    if-eqz v6, :cond_0

    .line 33
    .line 34
    goto/16 :goto_a

    .line 35
    .line 36
    :cond_0
    iget v6, v0, Lcom/google/android/gms/internal/ads/X2;->p:I

    .line 37
    .line 38
    if-gtz v6, :cond_1

    .line 39
    .line 40
    invoke-virtual {v5, v1}, Lcom/google/android/gms/internal/ads/R2;->f(Lcom/google/android/gms/internal/ads/M;)V

    .line 41
    .line 42
    .line 43
    goto/16 :goto_9

    .line 44
    .line 45
    :cond_1
    iget-boolean v7, v5, Lcom/google/android/gms/internal/ads/R2;->f:Z

    .line 46
    .line 47
    const-wide/32 v8, 0x1b8a0

    .line 48
    .line 49
    .line 50
    iget-object v15, v5, Lcom/google/android/gms/internal/ads/R2;->c:Ljava/lang/Object;

    .line 51
    .line 52
    if-nez v7, :cond_8

    .line 53
    .line 54
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/M;->zzd()J

    .line 55
    .line 56
    .line 57
    move-result-wide v10

    .line 58
    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(JJ)J

    .line 59
    .line 60
    .line 61
    move-result-wide v7

    .line 62
    long-to-int v8, v7

    .line 63
    int-to-long v3, v8

    .line 64
    sub-long/2addr v10, v3

    .line 65
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/M;->zzf()J

    .line 66
    .line 67
    .line 68
    move-result-wide v3

    .line 69
    cmp-long v7, v3, v10

    .line 70
    .line 71
    if-eqz v7, :cond_2

    .line 72
    .line 73
    iput-wide v10, v2, LW0/w;->a:J

    .line 74
    .line 75
    goto/16 :goto_8

    .line 76
    .line 77
    :cond_2
    check-cast v15, Lcom/google/android/gms/internal/ads/jr;

    .line 78
    .line 79
    invoke-virtual {v15, v8}, Lcom/google/android/gms/internal/ads/jr;->g(I)V

    .line 80
    .line 81
    .line 82
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/M;->zzj()V

    .line 83
    .line 84
    .line 85
    iget-object v2, v15, Lcom/google/android/gms/internal/ads/jr;->a:[B

    .line 86
    .line 87
    invoke-interface {v1, v13, v2, v8}, Lcom/google/android/gms/internal/ads/M;->g(I[BI)V

    .line 88
    .line 89
    .line 90
    iget v1, v15, Lcom/google/android/gms/internal/ads/jr;->b:I

    .line 91
    .line 92
    iget v2, v15, Lcom/google/android/gms/internal/ads/jr;->c:I

    .line 93
    .line 94
    add-int/lit16 v3, v2, -0xbc

    .line 95
    .line 96
    :goto_0
    if-lt v3, v1, :cond_7

    .line 97
    .line 98
    iget-object v4, v15, Lcom/google/android/gms/internal/ads/jr;->a:[B

    .line 99
    .line 100
    const/4 v7, -0x4

    .line 101
    const/4 v8, 0x0

    .line 102
    :goto_1
    const/4 v9, 0x4

    .line 103
    if-gt v7, v9, :cond_6

    .line 104
    .line 105
    mul-int/lit16 v9, v7, 0xbc

    .line 106
    .line 107
    add-int/2addr v9, v3

    .line 108
    if-lt v9, v1, :cond_3

    .line 109
    .line 110
    if-ge v9, v2, :cond_3

    .line 111
    .line 112
    aget-byte v9, v4, v9

    .line 113
    .line 114
    if-eq v9, v14, :cond_4

    .line 115
    .line 116
    :cond_3
    const/4 v8, 0x0

    .line 117
    goto :goto_2

    .line 118
    :cond_4
    add-int/2addr v8, v12

    .line 119
    const/4 v9, 0x5

    .line 120
    if-ne v8, v9, :cond_5

    .line 121
    .line 122
    invoke-static {v15, v3, v6}, LS3/e;->x(Lcom/google/android/gms/internal/ads/jr;II)J

    .line 123
    .line 124
    .line 125
    move-result-wide v7

    .line 126
    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    cmp-long v4, v7, v9

    .line 132
    .line 133
    if-eqz v4, :cond_6

    .line 134
    .line 135
    move-wide v3, v7

    .line 136
    goto :goto_3

    .line 137
    :cond_5
    :goto_2
    add-int/lit8 v7, v7, 0x1

    .line 138
    .line 139
    goto :goto_1

    .line 140
    :cond_6
    add-int/lit8 v3, v3, -0x1

    .line 141
    .line 142
    goto :goto_0

    .line 143
    :cond_7
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    :goto_3
    iput-wide v3, v5, Lcom/google/android/gms/internal/ads/R2;->h:J

    .line 149
    .line 150
    iput-boolean v12, v5, Lcom/google/android/gms/internal/ads/R2;->f:Z

    .line 151
    .line 152
    :goto_4
    const/4 v12, 0x0

    .line 153
    goto :goto_8

    .line 154
    :cond_8
    iget-wide v3, v5, Lcom/google/android/gms/internal/ads/R2;->h:J

    .line 155
    .line 156
    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    cmp-long v7, v3, v16

    .line 162
    .line 163
    if-nez v7, :cond_9

    .line 164
    .line 165
    invoke-virtual {v5, v1}, Lcom/google/android/gms/internal/ads/R2;->f(Lcom/google/android/gms/internal/ads/M;)V

    .line 166
    .line 167
    .line 168
    goto/16 :goto_9

    .line 169
    .line 170
    :cond_9
    iget-boolean v3, v5, Lcom/google/android/gms/internal/ads/R2;->e:Z

    .line 171
    .line 172
    if-nez v3, :cond_e

    .line 173
    .line 174
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/M;->zzd()J

    .line 175
    .line 176
    .line 177
    move-result-wide v3

    .line 178
    invoke-static {v8, v9, v3, v4}, Ljava/lang/Math;->min(JJ)J

    .line 179
    .line 180
    .line 181
    move-result-wide v3

    .line 182
    long-to-int v4, v3

    .line 183
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/M;->zzf()J

    .line 184
    .line 185
    .line 186
    move-result-wide v7

    .line 187
    cmp-long v3, v7, v10

    .line 188
    .line 189
    if-eqz v3, :cond_a

    .line 190
    .line 191
    iput-wide v10, v2, LW0/w;->a:J

    .line 192
    .line 193
    goto :goto_8

    .line 194
    :cond_a
    check-cast v15, Lcom/google/android/gms/internal/ads/jr;

    .line 195
    .line 196
    invoke-virtual {v15, v4}, Lcom/google/android/gms/internal/ads/jr;->g(I)V

    .line 197
    .line 198
    .line 199
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/M;->zzj()V

    .line 200
    .line 201
    .line 202
    iget-object v2, v15, Lcom/google/android/gms/internal/ads/jr;->a:[B

    .line 203
    .line 204
    invoke-interface {v1, v13, v2, v4}, Lcom/google/android/gms/internal/ads/M;->g(I[BI)V

    .line 205
    .line 206
    .line 207
    iget v1, v15, Lcom/google/android/gms/internal/ads/jr;->b:I

    .line 208
    .line 209
    iget v2, v15, Lcom/google/android/gms/internal/ads/jr;->c:I

    .line 210
    .line 211
    :goto_5
    if-ge v1, v2, :cond_d

    .line 212
    .line 213
    iget-object v3, v15, Lcom/google/android/gms/internal/ads/jr;->a:[B

    .line 214
    .line 215
    aget-byte v3, v3, v1

    .line 216
    .line 217
    if-eq v3, v14, :cond_b

    .line 218
    .line 219
    goto :goto_6

    .line 220
    :cond_b
    invoke-static {v15, v1, v6}, LS3/e;->x(Lcom/google/android/gms/internal/ads/jr;II)J

    .line 221
    .line 222
    .line 223
    move-result-wide v3

    .line 224
    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    cmp-long v9, v3, v7

    .line 230
    .line 231
    if-eqz v9, :cond_c

    .line 232
    .line 233
    goto :goto_7

    .line 234
    :cond_c
    :goto_6
    add-int/lit8 v1, v1, 0x1

    .line 235
    .line 236
    goto :goto_5

    .line 237
    :cond_d
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    :goto_7
    iput-wide v3, v5, Lcom/google/android/gms/internal/ads/R2;->g:J

    .line 243
    .line 244
    iput-boolean v12, v5, Lcom/google/android/gms/internal/ads/R2;->e:Z

    .line 245
    .line 246
    goto :goto_4

    .line 247
    :goto_8
    move v13, v12

    .line 248
    goto :goto_9

    .line 249
    :cond_e
    iget-wide v2, v5, Lcom/google/android/gms/internal/ads/R2;->g:J

    .line 250
    .line 251
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    cmp-long v4, v2, v6

    .line 257
    .line 258
    if-nez v4, :cond_f

    .line 259
    .line 260
    invoke-virtual {v5, v1}, Lcom/google/android/gms/internal/ads/R2;->f(Lcom/google/android/gms/internal/ads/M;)V

    .line 261
    .line 262
    .line 263
    goto :goto_9

    .line 264
    :cond_f
    iget-object v4, v5, Lcom/google/android/gms/internal/ads/R2;->b:Ljava/lang/Object;

    .line 265
    .line 266
    check-cast v4, Lcom/google/android/gms/internal/ads/Ys;

    .line 267
    .line 268
    invoke-virtual {v4, v2, v3}, Lcom/google/android/gms/internal/ads/Ys;->b(J)J

    .line 269
    .line 270
    .line 271
    move-result-wide v2

    .line 272
    iget-wide v6, v5, Lcom/google/android/gms/internal/ads/R2;->h:J

    .line 273
    .line 274
    invoke-virtual {v4, v6, v7}, Lcom/google/android/gms/internal/ads/Ys;->c(J)J

    .line 275
    .line 276
    .line 277
    move-result-wide v6

    .line 278
    sub-long/2addr v6, v2

    .line 279
    iput-wide v6, v5, Lcom/google/android/gms/internal/ads/R2;->i:J

    .line 280
    .line 281
    invoke-virtual {v5, v1}, Lcom/google/android/gms/internal/ads/R2;->f(Lcom/google/android/gms/internal/ads/M;)V

    .line 282
    .line 283
    .line 284
    :goto_9
    return v13

    .line 285
    :cond_10
    :goto_a
    iget-boolean v3, v0, Lcom/google/android/gms/internal/ads/X2;->n:Z

    .line 286
    .line 287
    if-nez v3, :cond_12

    .line 288
    .line 289
    iput-boolean v12, v0, Lcom/google/android/gms/internal/ads/X2;->n:Z

    .line 290
    .line 291
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/R2;->d()J

    .line 292
    .line 293
    .line 294
    move-result-wide v3

    .line 295
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    cmp-long v8, v3, v6

    .line 301
    .line 302
    if-eqz v8, :cond_11

    .line 303
    .line 304
    new-instance v8, Lb1/a;

    .line 305
    .line 306
    iget-object v3, v5, Lcom/google/android/gms/internal/ads/R2;->b:Ljava/lang/Object;

    .line 307
    .line 308
    check-cast v3, Lcom/google/android/gms/internal/ads/Ys;

    .line 309
    .line 310
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/R2;->d()J

    .line 311
    .line 312
    .line 313
    move-result-wide v6

    .line 314
    iget v4, v0, Lcom/google/android/gms/internal/ads/X2;->p:I

    .line 315
    .line 316
    new-instance v5, Lcom/google/android/gms/internal/ads/kH;

    .line 317
    .line 318
    invoke-direct {v5, v15}, Lcom/google/android/gms/internal/ads/kH;-><init>(I)V

    .line 319
    .line 320
    .line 321
    new-instance v9, Lcom/google/android/gms/internal/ads/f8;

    .line 322
    .line 323
    invoke-direct {v9, v4, v3}, Lcom/google/android/gms/internal/ads/f8;-><init>(ILcom/google/android/gms/internal/ads/Ys;)V

    .line 324
    .line 325
    .line 326
    const-wide/16 v3, 0x1

    .line 327
    .line 328
    add-long v21, v6, v3

    .line 329
    .line 330
    const-wide/16 v23, 0xbc

    .line 331
    .line 332
    const/16 v16, 0x3ac

    .line 333
    .line 334
    const-wide/16 v25, 0x0

    .line 335
    .line 336
    move-object v3, v8

    .line 337
    move-object v4, v5

    .line 338
    move-object v5, v9

    .line 339
    move-object/from16 v27, v8

    .line 340
    .line 341
    move-wide/from16 v8, v21

    .line 342
    .line 343
    move-wide/from16 v10, v25

    .line 344
    .line 345
    move-wide/from16 v12, v17

    .line 346
    .line 347
    const/16 v21, 0x2

    .line 348
    .line 349
    move-wide/from16 v14, v23

    .line 350
    .line 351
    invoke-direct/range {v3 .. v16}, LW0/k;-><init>(Lcom/google/android/gms/internal/ads/B;Lcom/google/android/gms/internal/ads/D;JJJJJI)V

    .line 352
    .line 353
    .line 354
    move-object/from16 v3, v27

    .line 355
    .line 356
    iput-object v3, v0, Lcom/google/android/gms/internal/ads/X2;->j:Lb1/a;

    .line 357
    .line 358
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/X2;->k:Lcom/google/android/gms/internal/ads/N;

    .line 359
    .line 360
    iget-object v3, v3, LW0/k;->b:Ljava/lang/Object;

    .line 361
    .line 362
    check-cast v3, Lcom/google/android/gms/internal/ads/A;

    .line 363
    .line 364
    invoke-interface {v4, v3}, Lcom/google/android/gms/internal/ads/N;->g(Lcom/google/android/gms/internal/ads/Y;)V

    .line 365
    .line 366
    .line 367
    const-wide/16 v7, 0x0

    .line 368
    .line 369
    goto :goto_b

    .line 370
    :cond_11
    const/16 v21, 0x2

    .line 371
    .line 372
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/X2;->k:Lcom/google/android/gms/internal/ads/N;

    .line 373
    .line 374
    new-instance v4, Lcom/google/android/gms/internal/ads/P;

    .line 375
    .line 376
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/R2;->d()J

    .line 377
    .line 378
    .line 379
    move-result-wide v5

    .line 380
    const-wide/16 v7, 0x0

    .line 381
    .line 382
    invoke-direct {v4, v5, v6, v7, v8}, Lcom/google/android/gms/internal/ads/P;-><init>(JJ)V

    .line 383
    .line 384
    .line 385
    invoke-interface {v3, v4}, Lcom/google/android/gms/internal/ads/N;->g(Lcom/google/android/gms/internal/ads/Y;)V

    .line 386
    .line 387
    .line 388
    goto :goto_b

    .line 389
    :cond_12
    move-wide v7, v10

    .line 390
    const/16 v21, 0x2

    .line 391
    .line 392
    :goto_b
    iget-boolean v3, v0, Lcom/google/android/gms/internal/ads/X2;->o:Z

    .line 393
    .line 394
    if-eqz v3, :cond_14

    .line 395
    .line 396
    const/4 v3, 0x0

    .line 397
    iput-boolean v3, v0, Lcom/google/android/gms/internal/ads/X2;->o:Z

    .line 398
    .line 399
    invoke-virtual {v0, v7, v8, v7, v8}, Lcom/google/android/gms/internal/ads/X2;->e(JJ)V

    .line 400
    .line 401
    .line 402
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/M;->zzf()J

    .line 403
    .line 404
    .line 405
    move-result-wide v4

    .line 406
    cmp-long v6, v4, v7

    .line 407
    .line 408
    if-nez v6, :cond_13

    .line 409
    .line 410
    :goto_c
    const/4 v4, 0x1

    .line 411
    goto :goto_d

    .line 412
    :cond_13
    iput-wide v7, v2, LW0/w;->a:J

    .line 413
    .line 414
    const/4 v4, 0x1

    .line 415
    return v4

    .line 416
    :cond_14
    const/4 v3, 0x0

    .line 417
    goto :goto_c

    .line 418
    :goto_d
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/X2;->j:Lb1/a;

    .line 419
    .line 420
    if-eqz v5, :cond_16

    .line 421
    .line 422
    iget-object v6, v5, LW0/k;->d:Ljava/lang/Object;

    .line 423
    .line 424
    check-cast v6, LW0/g;

    .line 425
    .line 426
    if-eqz v6, :cond_16

    .line 427
    .line 428
    invoke-virtual {v5, v1, v2}, LW0/k;->e(Lcom/google/android/gms/internal/ads/M;LW0/w;)I

    .line 429
    .line 430
    .line 431
    move-result v1

    .line 432
    return v1

    .line 433
    :cond_15
    const/4 v3, 0x0

    .line 434
    const/4 v4, 0x1

    .line 435
    const/16 v21, 0x2

    .line 436
    .line 437
    :cond_16
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/X2;->b:Lcom/google/android/gms/internal/ads/jr;

    .line 438
    .line 439
    iget-object v5, v2, Lcom/google/android/gms/internal/ads/jr;->a:[B

    .line 440
    .line 441
    iget v6, v2, Lcom/google/android/gms/internal/ads/jr;->b:I

    .line 442
    .line 443
    rsub-int v6, v6, 0x24b8

    .line 444
    .line 445
    const/16 v7, 0xbc

    .line 446
    .line 447
    if-lt v6, v7, :cond_17

    .line 448
    .line 449
    goto :goto_e

    .line 450
    :cond_17
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/jr;->o()I

    .line 451
    .line 452
    .line 453
    move-result v6

    .line 454
    if-lez v6, :cond_18

    .line 455
    .line 456
    iget v8, v2, Lcom/google/android/gms/internal/ads/jr;->b:I

    .line 457
    .line 458
    invoke-static {v5, v8, v5, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 459
    .line 460
    .line 461
    :cond_18
    invoke-virtual {v2, v6, v5}, Lcom/google/android/gms/internal/ads/jr;->h(I[B)V

    .line 462
    .line 463
    .line 464
    :goto_e
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/jr;->o()I

    .line 465
    .line 466
    .line 467
    move-result v6

    .line 468
    iget-object v8, v0, Lcom/google/android/gms/internal/ads/X2;->f:Landroid/util/SparseArray;

    .line 469
    .line 470
    const/4 v9, -0x1

    .line 471
    if-ge v6, v7, :cond_1c

    .line 472
    .line 473
    iget v6, v2, Lcom/google/android/gms/internal/ads/jr;->c:I

    .line 474
    .line 475
    rsub-int v10, v6, 0x24b8

    .line 476
    .line 477
    invoke-interface {v1, v5, v6, v10}, Lcom/google/android/gms/internal/ads/HL;->e([BII)I

    .line 478
    .line 479
    .line 480
    move-result v10

    .line 481
    if-ne v10, v9, :cond_1b

    .line 482
    .line 483
    const/4 v13, 0x0

    .line 484
    :goto_f
    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    .line 485
    .line 486
    .line 487
    move-result v1

    .line 488
    if-ge v13, v1, :cond_1a

    .line 489
    .line 490
    invoke-virtual {v8, v13}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 491
    .line 492
    .line 493
    move-result-object v1

    .line 494
    check-cast v1, Lcom/google/android/gms/internal/ads/a3;

    .line 495
    .line 496
    instance-of v2, v1, Lcom/google/android/gms/internal/ads/Q2;

    .line 497
    .line 498
    if-eqz v2, :cond_19

    .line 499
    .line 500
    check-cast v1, Lcom/google/android/gms/internal/ads/Q2;

    .line 501
    .line 502
    iget v2, v1, Lcom/google/android/gms/internal/ads/Q2;->c:I

    .line 503
    .line 504
    const/4 v3, 0x3

    .line 505
    if-ne v2, v3, :cond_19

    .line 506
    .line 507
    iget v2, v1, Lcom/google/android/gms/internal/ads/Q2;->j:I

    .line 508
    .line 509
    if-ne v2, v9, :cond_19

    .line 510
    .line 511
    new-instance v2, Lcom/google/android/gms/internal/ads/jr;

    .line 512
    .line 513
    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/jr;-><init>()V

    .line 514
    .line 515
    .line 516
    invoke-virtual {v1, v4, v2}, Lcom/google/android/gms/internal/ads/Q2;->b(ILcom/google/android/gms/internal/ads/jr;)V

    .line 517
    .line 518
    .line 519
    :cond_19
    add-int/lit8 v13, v13, 0x1

    .line 520
    .line 521
    goto :goto_f

    .line 522
    :cond_1a
    return v9

    .line 523
    :cond_1b
    add-int/2addr v6, v10

    .line 524
    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/ads/jr;->i(I)V

    .line 525
    .line 526
    .line 527
    goto :goto_e

    .line 528
    :cond_1c
    iget v1, v2, Lcom/google/android/gms/internal/ads/jr;->b:I

    .line 529
    .line 530
    iget v5, v2, Lcom/google/android/gms/internal/ads/jr;->c:I

    .line 531
    .line 532
    iget-object v6, v2, Lcom/google/android/gms/internal/ads/jr;->a:[B

    .line 533
    .line 534
    :goto_10
    if-ge v1, v5, :cond_1d

    .line 535
    .line 536
    aget-byte v10, v6, v1

    .line 537
    .line 538
    const/16 v11, 0x47

    .line 539
    .line 540
    if-eq v10, v11, :cond_1d

    .line 541
    .line 542
    add-int/lit8 v1, v1, 0x1

    .line 543
    .line 544
    goto :goto_10

    .line 545
    :cond_1d
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/jr;->j(I)V

    .line 546
    .line 547
    .line 548
    add-int/2addr v1, v7

    .line 549
    iget v5, v2, Lcom/google/android/gms/internal/ads/jr;->c:I

    .line 550
    .line 551
    if-le v1, v5, :cond_1e

    .line 552
    .line 553
    return v3

    .line 554
    :cond_1e
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/jr;->r()I

    .line 555
    .line 556
    .line 557
    move-result v6

    .line 558
    const/high16 v7, 0x800000

    .line 559
    .line 560
    and-int/2addr v7, v6

    .line 561
    if-eqz v7, :cond_1f

    .line 562
    .line 563
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/jr;->j(I)V

    .line 564
    .line 565
    .line 566
    return v3

    .line 567
    :cond_1f
    const/high16 v7, 0x400000

    .line 568
    .line 569
    and-int/2addr v7, v6

    .line 570
    if-eqz v7, :cond_20

    .line 571
    .line 572
    const/4 v12, 0x1

    .line 573
    goto :goto_11

    .line 574
    :cond_20
    const/4 v12, 0x0

    .line 575
    :goto_11
    shr-int/lit8 v7, v6, 0x8

    .line 576
    .line 577
    and-int/lit8 v10, v6, 0x20

    .line 578
    .line 579
    and-int/lit8 v11, v6, 0x10

    .line 580
    .line 581
    and-int/lit16 v7, v7, 0x1fff

    .line 582
    .line 583
    if-eqz v11, :cond_21

    .line 584
    .line 585
    invoke-virtual {v8, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 586
    .line 587
    .line 588
    move-result-object v8

    .line 589
    check-cast v8, Lcom/google/android/gms/internal/ads/a3;

    .line 590
    .line 591
    goto :goto_12

    .line 592
    :cond_21
    const/4 v8, 0x0

    .line 593
    :goto_12
    if-nez v8, :cond_22

    .line 594
    .line 595
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/jr;->j(I)V

    .line 596
    .line 597
    .line 598
    return v3

    .line 599
    :cond_22
    and-int/lit8 v6, v6, 0xf

    .line 600
    .line 601
    iget-object v11, v0, Lcom/google/android/gms/internal/ads/X2;->c:Landroid/util/SparseIntArray;

    .line 602
    .line 603
    add-int/lit8 v13, v6, -0x1

    .line 604
    .line 605
    invoke-virtual {v11, v7, v13}, Landroid/util/SparseIntArray;->get(II)I

    .line 606
    .line 607
    .line 608
    move-result v13

    .line 609
    invoke-virtual {v11, v7, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 610
    .line 611
    .line 612
    if-ne v13, v6, :cond_23

    .line 613
    .line 614
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/jr;->j(I)V

    .line 615
    .line 616
    .line 617
    return v3

    .line 618
    :cond_23
    add-int/2addr v13, v4

    .line 619
    and-int/lit8 v11, v13, 0xf

    .line 620
    .line 621
    if-eq v6, v11, :cond_24

    .line 622
    .line 623
    invoke-interface {v8}, Lcom/google/android/gms/internal/ads/a3;->zzc()V

    .line 624
    .line 625
    .line 626
    :cond_24
    if-eqz v10, :cond_26

    .line 627
    .line 628
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/jr;->w()I

    .line 629
    .line 630
    .line 631
    move-result v6

    .line 632
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/jr;->w()I

    .line 633
    .line 634
    .line 635
    move-result v10

    .line 636
    and-int/lit8 v10, v10, 0x40

    .line 637
    .line 638
    if-eqz v10, :cond_25

    .line 639
    .line 640
    const/4 v15, 0x2

    .line 641
    goto :goto_13

    .line 642
    :cond_25
    const/4 v15, 0x0

    .line 643
    :goto_13
    or-int/2addr v12, v15

    .line 644
    add-int/2addr v6, v9

    .line 645
    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/ads/jr;->k(I)V

    .line 646
    .line 647
    .line 648
    :cond_26
    iget-boolean v6, v0, Lcom/google/android/gms/internal/ads/X2;->m:Z

    .line 649
    .line 650
    if-nez v6, :cond_27

    .line 651
    .line 652
    iget-object v9, v0, Lcom/google/android/gms/internal/ads/X2;->h:Landroid/util/SparseBooleanArray;

    .line 653
    .line 654
    invoke-virtual {v9, v7, v3}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    .line 655
    .line 656
    .line 657
    move-result v7

    .line 658
    if-nez v7, :cond_28

    .line 659
    .line 660
    :cond_27
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/jr;->i(I)V

    .line 661
    .line 662
    .line 663
    invoke-interface {v8, v12, v2}, Lcom/google/android/gms/internal/ads/a3;->b(ILcom/google/android/gms/internal/ads/jr;)V

    .line 664
    .line 665
    .line 666
    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/jr;->i(I)V

    .line 667
    .line 668
    .line 669
    if-nez v6, :cond_29

    .line 670
    .line 671
    :cond_28
    iget-boolean v5, v0, Lcom/google/android/gms/internal/ads/X2;->m:Z

    .line 672
    .line 673
    if-eqz v5, :cond_29

    .line 674
    .line 675
    cmp-long v5, v17, v19

    .line 676
    .line 677
    if-eqz v5, :cond_29

    .line 678
    .line 679
    iput-boolean v4, v0, Lcom/google/android/gms/internal/ads/X2;->o:Z

    .line 680
    .line 681
    :cond_29
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/jr;->j(I)V

    .line 682
    .line 683
    .line 684
    return v3
.end method

.method public final d(Lcom/google/android/gms/internal/ads/M;)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/X2;->b:Lcom/google/android/gms/internal/ads/jr;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/jr;->a:[B

    .line 4
    .line 5
    check-cast p1, Lcom/google/android/gms/internal/ads/F;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    const/16 v2, 0x3ac

    .line 9
    .line 10
    invoke-virtual {p1, v0, v1, v2, v1}, Lcom/google/android/gms/internal/ads/F;->d([BIIZ)Z

    .line 11
    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    :goto_0
    const/16 v3, 0xbc

    .line 15
    .line 16
    if-ge v2, v3, :cond_2

    .line 17
    .line 18
    const/4 v3, 0x0

    .line 19
    :goto_1
    const/4 v4, 0x5

    .line 20
    if-ge v3, v4, :cond_1

    .line 21
    .line 22
    mul-int/lit16 v4, v3, 0xbc

    .line 23
    .line 24
    add-int/2addr v4, v2

    .line 25
    aget-byte v4, v0, v4

    .line 26
    .line 27
    const/16 v5, 0x47

    .line 28
    .line 29
    if-eq v4, v5, :cond_0

    .line 30
    .line 31
    add-int/lit8 v2, v2, 0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_1
    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/ads/F;->j(I)V

    .line 38
    .line 39
    .line 40
    const/4 p1, 0x1

    .line 41
    return p1

    .line 42
    :cond_2
    return v1
.end method

.method public final e(JJ)V
    .locals 10

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/X2;->a:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result p2

    .line 7
    const/4 v0, 0x0

    .line 8
    const/4 v1, 0x0

    .line 9
    :goto_0
    const-wide/16 v2, 0x0

    .line 10
    .line 11
    if-ge v1, p2, :cond_2

    .line 12
    .line 13
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v4

    .line 17
    check-cast v4, Lcom/google/android/gms/internal/ads/Ys;

    .line 18
    .line 19
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/Ys;->e()J

    .line 20
    .line 21
    .line 22
    move-result-wide v5

    .line 23
    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    cmp-long v9, v5, v7

    .line 29
    .line 30
    if-eqz v9, :cond_0

    .line 31
    .line 32
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/Ys;->d()J

    .line 33
    .line 34
    .line 35
    move-result-wide v5

    .line 36
    cmp-long v9, v5, v7

    .line 37
    .line 38
    if-eqz v9, :cond_1

    .line 39
    .line 40
    cmp-long v7, v5, v2

    .line 41
    .line 42
    if-eqz v7, :cond_1

    .line 43
    .line 44
    cmp-long v2, v5, p3

    .line 45
    .line 46
    if-eqz v2, :cond_1

    .line 47
    .line 48
    :cond_0
    invoke-virtual {v4, p3, p4}, Lcom/google/android/gms/internal/ads/Ys;->f(J)V

    .line 49
    .line 50
    .line 51
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_2
    cmp-long p1, p3, v2

    .line 55
    .line 56
    if-eqz p1, :cond_3

    .line 57
    .line 58
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/X2;->j:Lb1/a;

    .line 59
    .line 60
    if-eqz p1, :cond_3

    .line 61
    .line 62
    invoke-virtual {p1, p3, p4}, LW0/k;->f(J)V

    .line 63
    .line 64
    .line 65
    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/X2;->b:Lcom/google/android/gms/internal/ads/jr;

    .line 66
    .line 67
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/jr;->g(I)V

    .line 68
    .line 69
    .line 70
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/X2;->c:Landroid/util/SparseIntArray;

    .line 71
    .line 72
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->clear()V

    .line 73
    .line 74
    .line 75
    :goto_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/X2;->f:Landroid/util/SparseArray;

    .line 76
    .line 77
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    .line 78
    .line 79
    .line 80
    move-result p2

    .line 81
    if-ge v0, p2, :cond_4

    .line 82
    .line 83
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    check-cast p1, Lcom/google/android/gms/internal/ads/a3;

    .line 88
    .line 89
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/a3;->zzc()V

    .line 90
    .line 91
    .line 92
    add-int/lit8 v0, v0, 0x1

    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_4
    return-void
.end method

.method public final f(Lcom/google/android/gms/internal/ads/N;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/X1;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/X2;->e:Lcom/google/android/gms/internal/ads/V1;

    .line 4
    .line 5
    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/ads/X1;-><init>(Lcom/google/android/gms/internal/ads/N;Lcom/google/android/gms/internal/ads/V1;)V

    .line 6
    .line 7
    .line 8
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/X2;->k:Lcom/google/android/gms/internal/ads/N;

    .line 9
    .line 10
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
