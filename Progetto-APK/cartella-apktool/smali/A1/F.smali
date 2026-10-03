.class public final LA1/F;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LW0/s;


# instance fields
.field public final a:I

.field public final b:I

.field public final c:Ljava/util/List;

.field public final d:Lp0/E;

.field public final e:Landroid/util/SparseIntArray;

.field public final f:LA1/g;

.field public final g:Lq1/k;

.field public final h:Landroid/util/SparseArray;

.field public final i:Landroid/util/SparseBooleanArray;

.field public final j:Landroid/util/SparseBooleanArray;

.field public final k:LA1/D;

.field public l:Lb1/a;

.field public m:LW0/u;

.field public n:I

.field public o:Z

.field public p:Z

.field public q:Z

.field public r:LA1/J;

.field public s:I

.field public t:I


# direct methods
.method public constructor <init>(IILq1/k;Lp0/J;LA1/g;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p5, p0, LA1/F;->f:LA1/g;

    .line 5
    .line 6
    iput p1, p0, LA1/F;->a:I

    .line 7
    .line 8
    iput p2, p0, LA1/F;->b:I

    .line 9
    .line 10
    iput-object p3, p0, LA1/F;->g:Lq1/k;

    .line 11
    .line 12
    const/4 p2, 0x1

    .line 13
    if-eq p1, p2, :cond_1

    .line 14
    .line 15
    const/4 p2, 0x2

    .line 16
    if-ne p1, p2, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object p1, p0, LA1/F;->c:Ljava/util/List;

    .line 25
    .line 26
    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_1
    :goto_0
    invoke-static {p4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    iput-object p1, p0, LA1/F;->c:Ljava/util/List;

    .line 35
    .line 36
    :goto_1
    new-instance p1, Lp0/E;

    .line 37
    .line 38
    const/16 p2, 0x24b8

    .line 39
    .line 40
    new-array p2, p2, [B

    .line 41
    .line 42
    const/4 p3, 0x0

    .line 43
    invoke-direct {p1, p2, p3}, Lp0/E;-><init>([BI)V

    .line 44
    .line 45
    .line 46
    iput-object p1, p0, LA1/F;->d:Lp0/E;

    .line 47
    .line 48
    new-instance p1, Landroid/util/SparseBooleanArray;

    .line 49
    .line 50
    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 51
    .line 52
    .line 53
    iput-object p1, p0, LA1/F;->i:Landroid/util/SparseBooleanArray;

    .line 54
    .line 55
    new-instance p2, Landroid/util/SparseBooleanArray;

    .line 56
    .line 57
    invoke-direct {p2}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 58
    .line 59
    .line 60
    iput-object p2, p0, LA1/F;->j:Landroid/util/SparseBooleanArray;

    .line 61
    .line 62
    new-instance p2, Landroid/util/SparseArray;

    .line 63
    .line 64
    invoke-direct {p2}, Landroid/util/SparseArray;-><init>()V

    .line 65
    .line 66
    .line 67
    iput-object p2, p0, LA1/F;->h:Landroid/util/SparseArray;

    .line 68
    .line 69
    new-instance p4, Landroid/util/SparseIntArray;

    .line 70
    .line 71
    invoke-direct {p4}, Landroid/util/SparseIntArray;-><init>()V

    .line 72
    .line 73
    .line 74
    iput-object p4, p0, LA1/F;->e:Landroid/util/SparseIntArray;

    .line 75
    .line 76
    new-instance p4, LA1/D;

    .line 77
    .line 78
    invoke-direct {p4}, LA1/D;-><init>()V

    .line 79
    .line 80
    .line 81
    iput-object p4, p0, LA1/F;->k:LA1/D;

    .line 82
    .line 83
    sget-object p4, LW0/u;->l:LF2/G;

    .line 84
    .line 85
    iput-object p4, p0, LA1/F;->m:LW0/u;

    .line 86
    .line 87
    const/4 p4, -0x1

    .line 88
    iput p4, p0, LA1/F;->t:I

    .line 89
    .line 90
    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->clear()V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p2}, Landroid/util/SparseArray;->clear()V

    .line 94
    .line 95
    .line 96
    new-instance p1, Landroid/util/SparseArray;

    .line 97
    .line 98
    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    .line 102
    .line 103
    .line 104
    move-result p4

    .line 105
    const/4 p5, 0x0

    .line 106
    :goto_2
    if-ge p5, p4, :cond_2

    .line 107
    .line 108
    invoke-virtual {p1, p5}, Landroid/util/SparseArray;->keyAt(I)I

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    invoke-virtual {p1, p5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    check-cast v1, LA1/J;

    .line 117
    .line 118
    invoke-virtual {p2, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 119
    .line 120
    .line 121
    add-int/lit8 p5, p5, 0x1

    .line 122
    .line 123
    goto :goto_2

    .line 124
    :cond_2
    new-instance p1, LA1/C;

    .line 125
    .line 126
    new-instance p4, Lcom/google/android/gms/internal/atv_ads_framework/x0;

    .line 127
    .line 128
    invoke-direct {p4, p0}, Lcom/google/android/gms/internal/atv_ads_framework/x0;-><init>(LA1/F;)V

    .line 129
    .line 130
    .line 131
    invoke-direct {p1, p4}, LA1/C;-><init>(LA1/B;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {p2, p3, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 135
    .line 136
    .line 137
    const/4 p1, 0x0

    .line 138
    iput-object p1, p0, LA1/F;->r:LA1/J;

    .line 139
    .line 140
    return-void
.end method


# virtual methods
.method public final b()LW0/s;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final d(LW0/u;)V
    .locals 2

    .line 1
    iget v0, p0, LA1/F;->b:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Lq1/n;

    .line 8
    .line 9
    iget-object v1, p0, LA1/F;->g:Lq1/k;

    .line 10
    .line 11
    invoke-direct {v0, p1, v1}, Lq1/n;-><init>(LW0/u;Lq1/k;)V

    .line 12
    .line 13
    .line 14
    move-object p1, v0

    .line 15
    :cond_0
    iput-object p1, p0, LA1/F;->m:LW0/u;

    .line 16
    .line 17
    return-void
.end method

.method public final g(LW0/t;)Z
    .locals 6

    .line 1
    iget-object v0, p0, LA1/F;->d:Lp0/E;

    .line 2
    .line 3
    iget-object v0, v0, Lp0/E;->a:[B

    .line 4
    .line 5
    const/16 v1, 0x3ac

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-interface {p1, v2, v0, v1}, LW0/t;->c(I[BI)V

    .line 9
    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    :goto_0
    const/16 v3, 0xbc

    .line 13
    .line 14
    if-ge v1, v3, :cond_2

    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    :goto_1
    const/4 v4, 0x5

    .line 18
    if-ge v3, v4, :cond_1

    .line 19
    .line 20
    mul-int/lit16 v4, v3, 0xbc

    .line 21
    .line 22
    add-int/2addr v4, v1

    .line 23
    aget-byte v4, v0, v4

    .line 24
    .line 25
    const/16 v5, 0x47

    .line 26
    .line 27
    if-eq v4, v5, :cond_0

    .line 28
    .line 29
    add-int/lit8 v1, v1, 0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_1
    invoke-interface {p1, v1}, LW0/t;->n(I)V

    .line 36
    .line 37
    .line 38
    const/4 p1, 0x1

    .line 39
    return p1

    .line 40
    :cond_2
    return v2
.end method

.method public final h(LW0/t;LW0/w;)I
    .locals 30

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
    invoke-interface/range {p1 .. p1}, LW0/t;->j()J

    .line 8
    .line 9
    .line 10
    move-result-wide v17

    .line 11
    iget v12, v0, LA1/F;->a:I

    .line 12
    .line 13
    const/4 v13, 0x2

    .line 14
    if-ne v12, v13, :cond_0

    .line 15
    .line 16
    const/16 v19, 0x1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/16 v19, 0x0

    .line 20
    .line 21
    :goto_0
    iget-boolean v3, v0, LA1/F;->o:Z

    .line 22
    .line 23
    const/16 v10, 0x47

    .line 24
    .line 25
    const-wide/16 v20, -0x1

    .line 26
    .line 27
    if-eqz v3, :cond_15

    .line 28
    .line 29
    iget-object v5, v0, LA1/F;->k:LA1/D;

    .line 30
    .line 31
    cmp-long v6, v17, v20

    .line 32
    .line 33
    if-eqz v6, :cond_10

    .line 34
    .line 35
    if-nez v19, :cond_10

    .line 36
    .line 37
    iget-boolean v6, v5, LA1/D;->d:Z

    .line 38
    .line 39
    if-nez v6, :cond_10

    .line 40
    .line 41
    iget v6, v0, LA1/F;->t:I

    .line 42
    .line 43
    if-gtz v6, :cond_1

    .line 44
    .line 45
    invoke-virtual {v5, v1}, LA1/D;->a(LW0/t;)V

    .line 46
    .line 47
    .line 48
    :goto_1
    const/4 v15, 0x0

    .line 49
    goto/16 :goto_c

    .line 50
    .line 51
    :cond_1
    iget-boolean v7, v5, LA1/D;->f:Z

    .line 52
    .line 53
    iget-object v8, v5, LA1/D;->c:Lp0/E;

    .line 54
    .line 55
    iget v9, v5, LA1/D;->a:I

    .line 56
    .line 57
    if-nez v7, :cond_8

    .line 58
    .line 59
    invoke-interface/range {p1 .. p1}, LW0/t;->j()J

    .line 60
    .line 61
    .line 62
    move-result-wide v11

    .line 63
    int-to-long v3, v9

    .line 64
    invoke-static {v3, v4, v11, v12}, Ljava/lang/Math;->min(JJ)J

    .line 65
    .line 66
    .line 67
    move-result-wide v3

    .line 68
    long-to-int v4, v3

    .line 69
    int-to-long v14, v4

    .line 70
    sub-long/2addr v11, v14

    .line 71
    invoke-interface/range {p1 .. p1}, LW0/t;->r()J

    .line 72
    .line 73
    .line 74
    move-result-wide v13

    .line 75
    cmp-long v3, v13, v11

    .line 76
    .line 77
    if-eqz v3, :cond_2

    .line 78
    .line 79
    iput-wide v11, v2, LW0/w;->a:J

    .line 80
    .line 81
    :goto_2
    const/4 v14, 0x1

    .line 82
    goto :goto_8

    .line 83
    :cond_2
    invoke-virtual {v8, v4}, Lp0/E;->I(I)V

    .line 84
    .line 85
    .line 86
    invoke-interface/range {p1 .. p1}, LW0/t;->m()V

    .line 87
    .line 88
    .line 89
    iget-object v2, v8, Lp0/E;->a:[B

    .line 90
    .line 91
    const/4 v3, 0x0

    .line 92
    invoke-interface {v1, v3, v2, v4}, LW0/t;->c(I[BI)V

    .line 93
    .line 94
    .line 95
    iget v1, v8, Lp0/E;->b:I

    .line 96
    .line 97
    iget v2, v8, Lp0/E;->c:I

    .line 98
    .line 99
    add-int/lit16 v3, v2, -0xbc

    .line 100
    .line 101
    :goto_3
    if-lt v3, v1, :cond_7

    .line 102
    .line 103
    iget-object v4, v8, Lp0/E;->a:[B

    .line 104
    .line 105
    const/4 v7, -0x4

    .line 106
    const/4 v9, 0x0

    .line 107
    :goto_4
    const/4 v11, 0x4

    .line 108
    if-gt v7, v11, :cond_6

    .line 109
    .line 110
    mul-int/lit16 v11, v7, 0xbc

    .line 111
    .line 112
    add-int/2addr v11, v3

    .line 113
    if-lt v11, v1, :cond_4

    .line 114
    .line 115
    if-ge v11, v2, :cond_4

    .line 116
    .line 117
    aget-byte v11, v4, v11

    .line 118
    .line 119
    if-eq v11, v10, :cond_3

    .line 120
    .line 121
    goto :goto_5

    .line 122
    :cond_3
    const/4 v11, 0x1

    .line 123
    add-int/2addr v9, v11

    .line 124
    const/4 v11, 0x5

    .line 125
    if-ne v9, v11, :cond_5

    .line 126
    .line 127
    invoke-static {v3, v6, v8}, Lp0/b;->D(IILp0/E;)J

    .line 128
    .line 129
    .line 130
    move-result-wide v11

    .line 131
    const-wide v13, -0x7fffffffffffffffL    # -4.9E-324

    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    cmp-long v4, v11, v13

    .line 137
    .line 138
    if-eqz v4, :cond_6

    .line 139
    .line 140
    move-wide v3, v11

    .line 141
    goto :goto_6

    .line 142
    :cond_4
    :goto_5
    const/4 v9, 0x0

    .line 143
    :cond_5
    add-int/lit8 v7, v7, 0x1

    .line 144
    .line 145
    goto :goto_4

    .line 146
    :cond_6
    add-int/lit8 v3, v3, -0x1

    .line 147
    .line 148
    goto :goto_3

    .line 149
    :cond_7
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    :goto_6
    iput-wide v3, v5, LA1/D;->h:J

    .line 155
    .line 156
    const/4 v1, 0x1

    .line 157
    iput-boolean v1, v5, LA1/D;->f:Z

    .line 158
    .line 159
    :goto_7
    const/4 v14, 0x0

    .line 160
    :goto_8
    move v15, v14

    .line 161
    goto/16 :goto_c

    .line 162
    .line 163
    :cond_8
    iget-wide v3, v5, LA1/D;->h:J

    .line 164
    .line 165
    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    cmp-long v7, v3, v11

    .line 171
    .line 172
    if-nez v7, :cond_9

    .line 173
    .line 174
    invoke-virtual {v5, v1}, LA1/D;->a(LW0/t;)V

    .line 175
    .line 176
    .line 177
    goto/16 :goto_1

    .line 178
    .line 179
    :cond_9
    iget-boolean v3, v5, LA1/D;->e:Z

    .line 180
    .line 181
    if-nez v3, :cond_e

    .line 182
    .line 183
    int-to-long v3, v9

    .line 184
    invoke-interface/range {p1 .. p1}, LW0/t;->j()J

    .line 185
    .line 186
    .line 187
    move-result-wide v11

    .line 188
    invoke-static {v3, v4, v11, v12}, Ljava/lang/Math;->min(JJ)J

    .line 189
    .line 190
    .line 191
    move-result-wide v3

    .line 192
    long-to-int v4, v3

    .line 193
    invoke-interface/range {p1 .. p1}, LW0/t;->r()J

    .line 194
    .line 195
    .line 196
    move-result-wide v11

    .line 197
    const/4 v3, 0x0

    .line 198
    int-to-long v13, v3

    .line 199
    cmp-long v7, v11, v13

    .line 200
    .line 201
    if-eqz v7, :cond_a

    .line 202
    .line 203
    iput-wide v13, v2, LW0/w;->a:J

    .line 204
    .line 205
    goto :goto_2

    .line 206
    :cond_a
    invoke-virtual {v8, v4}, Lp0/E;->I(I)V

    .line 207
    .line 208
    .line 209
    invoke-interface/range {p1 .. p1}, LW0/t;->m()V

    .line 210
    .line 211
    .line 212
    iget-object v2, v8, Lp0/E;->a:[B

    .line 213
    .line 214
    invoke-interface {v1, v3, v2, v4}, LW0/t;->c(I[BI)V

    .line 215
    .line 216
    .line 217
    iget v1, v8, Lp0/E;->b:I

    .line 218
    .line 219
    iget v2, v8, Lp0/E;->c:I

    .line 220
    .line 221
    :goto_9
    if-ge v1, v2, :cond_d

    .line 222
    .line 223
    iget-object v3, v8, Lp0/E;->a:[B

    .line 224
    .line 225
    aget-byte v3, v3, v1

    .line 226
    .line 227
    if-eq v3, v10, :cond_b

    .line 228
    .line 229
    goto :goto_a

    .line 230
    :cond_b
    invoke-static {v1, v6, v8}, Lp0/b;->D(IILp0/E;)J

    .line 231
    .line 232
    .line 233
    move-result-wide v3

    .line 234
    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    cmp-long v7, v3, v11

    .line 240
    .line 241
    if-eqz v7, :cond_c

    .line 242
    .line 243
    goto :goto_b

    .line 244
    :cond_c
    :goto_a
    add-int/lit8 v1, v1, 0x1

    .line 245
    .line 246
    goto :goto_9

    .line 247
    :cond_d
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    :goto_b
    iput-wide v3, v5, LA1/D;->g:J

    .line 253
    .line 254
    const/4 v1, 0x1

    .line 255
    iput-boolean v1, v5, LA1/D;->e:Z

    .line 256
    .line 257
    goto :goto_7

    .line 258
    :cond_e
    iget-wide v2, v5, LA1/D;->g:J

    .line 259
    .line 260
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    cmp-long v4, v2, v6

    .line 266
    .line 267
    if-nez v4, :cond_f

    .line 268
    .line 269
    invoke-virtual {v5, v1}, LA1/D;->a(LW0/t;)V

    .line 270
    .line 271
    .line 272
    goto/16 :goto_1

    .line 273
    .line 274
    :cond_f
    iget-object v4, v5, LA1/D;->b:Lp0/J;

    .line 275
    .line 276
    invoke-virtual {v4, v2, v3}, Lp0/J;->b(J)J

    .line 277
    .line 278
    .line 279
    move-result-wide v2

    .line 280
    iget-wide v6, v5, LA1/D;->h:J

    .line 281
    .line 282
    invoke-virtual {v4, v6, v7}, Lp0/J;->c(J)J

    .line 283
    .line 284
    .line 285
    move-result-wide v6

    .line 286
    sub-long/2addr v6, v2

    .line 287
    iput-wide v6, v5, LA1/D;->i:J

    .line 288
    .line 289
    invoke-virtual {v5, v1}, LA1/D;->a(LW0/t;)V

    .line 290
    .line 291
    .line 292
    goto/16 :goto_1

    .line 293
    .line 294
    :goto_c
    return v15

    .line 295
    :cond_10
    iget-boolean v3, v0, LA1/F;->p:Z

    .line 296
    .line 297
    if-nez v3, :cond_12

    .line 298
    .line 299
    const/4 v14, 0x1

    .line 300
    iput-boolean v14, v0, LA1/F;->p:Z

    .line 301
    .line 302
    iget-wide v6, v5, LA1/D;->i:J

    .line 303
    .line 304
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    cmp-long v8, v6, v3

    .line 310
    .line 311
    if-eqz v8, :cond_11

    .line 312
    .line 313
    new-instance v15, Lb1/a;

    .line 314
    .line 315
    iget v3, v0, LA1/F;->t:I

    .line 316
    .line 317
    new-instance v4, LF2/G;

    .line 318
    .line 319
    const/4 v11, 0x0

    .line 320
    invoke-direct {v4, v11}, LF2/G;-><init>(I)V

    .line 321
    .line 322
    .line 323
    new-instance v8, Lc/g;

    .line 324
    .line 325
    const v9, 0x1b8a0

    .line 326
    .line 327
    .line 328
    iget-object v5, v5, LA1/D;->b:Lp0/J;

    .line 329
    .line 330
    invoke-direct {v8, v3, v5, v9}, Lc/g;-><init>(ILp0/J;I)V

    .line 331
    .line 332
    .line 333
    const-wide/16 v22, 0x1

    .line 334
    .line 335
    add-long v22, v6, v22

    .line 336
    .line 337
    const/16 v16, 0x3ac

    .line 338
    .line 339
    const-wide/16 v24, 0x0

    .line 340
    .line 341
    const-wide/16 v26, 0xbc

    .line 342
    .line 343
    move-object v3, v15

    .line 344
    move-object v5, v8

    .line 345
    move-wide/from16 v8, v22

    .line 346
    .line 347
    const/16 v22, 0x0

    .line 348
    .line 349
    move-wide/from16 v10, v24

    .line 350
    .line 351
    move/from16 v28, v12

    .line 352
    .line 353
    move-wide/from16 v12, v17

    .line 354
    .line 355
    move-object/from16 v29, v15

    .line 356
    .line 357
    move-wide/from16 v14, v26

    .line 358
    .line 359
    invoke-direct/range {v3 .. v16}, LW0/k;-><init>(LW0/h;LW0/j;JJJJJI)V

    .line 360
    .line 361
    .line 362
    move-object/from16 v3, v29

    .line 363
    .line 364
    iput-object v3, v0, LA1/F;->l:Lb1/a;

    .line 365
    .line 366
    iget-object v4, v0, LA1/F;->m:LW0/u;

    .line 367
    .line 368
    iget-object v3, v3, LW0/k;->b:Ljava/lang/Object;

    .line 369
    .line 370
    check-cast v3, LW0/f;

    .line 371
    .line 372
    invoke-interface {v4, v3}, LW0/u;->r(LW0/F;)V

    .line 373
    .line 374
    .line 375
    goto :goto_d

    .line 376
    :cond_11
    move/from16 v28, v12

    .line 377
    .line 378
    iget-object v3, v0, LA1/F;->m:LW0/u;

    .line 379
    .line 380
    new-instance v4, LW0/x;

    .line 381
    .line 382
    invoke-direct {v4, v6, v7}, LW0/x;-><init>(J)V

    .line 383
    .line 384
    .line 385
    invoke-interface {v3, v4}, LW0/u;->r(LW0/F;)V

    .line 386
    .line 387
    .line 388
    goto :goto_d

    .line 389
    :cond_12
    move/from16 v28, v12

    .line 390
    .line 391
    :goto_d
    iget-boolean v3, v0, LA1/F;->q:Z

    .line 392
    .line 393
    if-eqz v3, :cond_14

    .line 394
    .line 395
    const/4 v3, 0x0

    .line 396
    iput-boolean v3, v0, LA1/F;->q:Z

    .line 397
    .line 398
    const-wide/16 v4, 0x0

    .line 399
    .line 400
    invoke-virtual {v0, v4, v5, v4, v5}, LA1/F;->i(JJ)V

    .line 401
    .line 402
    .line 403
    invoke-interface/range {p1 .. p1}, LW0/t;->r()J

    .line 404
    .line 405
    .line 406
    move-result-wide v6

    .line 407
    cmp-long v8, v6, v4

    .line 408
    .line 409
    if-eqz v8, :cond_13

    .line 410
    .line 411
    iput-wide v4, v2, LW0/w;->a:J

    .line 412
    .line 413
    const/4 v4, 0x1

    .line 414
    return v4

    .line 415
    :cond_13
    :goto_e
    const/4 v4, 0x1

    .line 416
    goto :goto_f

    .line 417
    :cond_14
    const/4 v3, 0x0

    .line 418
    goto :goto_e

    .line 419
    :goto_f
    iget-object v5, v0, LA1/F;->l:Lb1/a;

    .line 420
    .line 421
    if-eqz v5, :cond_16

    .line 422
    .line 423
    iget-object v6, v5, LW0/k;->d:Ljava/lang/Object;

    .line 424
    .line 425
    check-cast v6, LW0/g;

    .line 426
    .line 427
    if-eqz v6, :cond_16

    .line 428
    .line 429
    invoke-virtual {v5, v1, v2}, LW0/k;->a(LW0/t;LW0/w;)I

    .line 430
    .line 431
    .line 432
    move-result v1

    .line 433
    return v1

    .line 434
    :cond_15
    move/from16 v28, v12

    .line 435
    .line 436
    const/4 v3, 0x0

    .line 437
    const/4 v4, 0x1

    .line 438
    :cond_16
    iget-object v2, v0, LA1/F;->d:Lp0/E;

    .line 439
    .line 440
    iget-object v5, v2, Lp0/E;->a:[B

    .line 441
    .line 442
    iget v6, v2, Lp0/E;->b:I

    .line 443
    .line 444
    rsub-int v6, v6, 0x24b8

    .line 445
    .line 446
    const/16 v7, 0xbc

    .line 447
    .line 448
    if-ge v6, v7, :cond_18

    .line 449
    .line 450
    invoke-virtual {v2}, Lp0/E;->a()I

    .line 451
    .line 452
    .line 453
    move-result v6

    .line 454
    if-lez v6, :cond_17

    .line 455
    .line 456
    iget v8, v2, Lp0/E;->b:I

    .line 457
    .line 458
    invoke-static {v5, v8, v5, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 459
    .line 460
    .line 461
    :cond_17
    invoke-virtual {v2, v6, v5}, Lp0/E;->J(I[B)V

    .line 462
    .line 463
    .line 464
    :cond_18
    :goto_10
    invoke-virtual {v2}, Lp0/E;->a()I

    .line 465
    .line 466
    .line 467
    move-result v6

    .line 468
    iget-object v8, v0, LA1/F;->h:Landroid/util/SparseArray;

    .line 469
    .line 470
    if-ge v6, v7, :cond_1f

    .line 471
    .line 472
    iget v6, v2, Lp0/E;->c:I

    .line 473
    .line 474
    rsub-int v9, v6, 0x24b8

    .line 475
    .line 476
    invoke-interface {v1, v5, v6, v9}, Lm0/j;->q([BII)I

    .line 477
    .line 478
    .line 479
    move-result v9

    .line 480
    const/4 v10, -0x1

    .line 481
    if-ne v9, v10, :cond_1e

    .line 482
    .line 483
    const/4 v15, 0x0

    .line 484
    :goto_11
    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    .line 485
    .line 486
    .line 487
    move-result v1

    .line 488
    if-ge v15, v1, :cond_1d

    .line 489
    .line 490
    invoke-virtual {v8, v15}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 491
    .line 492
    .line 493
    move-result-object v1

    .line 494
    check-cast v1, LA1/J;

    .line 495
    .line 496
    instance-of v2, v1, LA1/y;

    .line 497
    .line 498
    if-eqz v2, :cond_1c

    .line 499
    .line 500
    check-cast v1, LA1/y;

    .line 501
    .line 502
    if-eqz v19, :cond_1a

    .line 503
    .line 504
    invoke-virtual {v1}, LA1/y;->e()Z

    .line 505
    .line 506
    .line 507
    move-result v2

    .line 508
    if-eqz v2, :cond_19

    .line 509
    .line 510
    goto :goto_12

    .line 511
    :cond_19
    const/4 v14, 0x0

    .line 512
    goto :goto_13

    .line 513
    :cond_1a
    :goto_12
    const/4 v14, 0x1

    .line 514
    :goto_13
    iget v2, v1, LA1/y;->c:I

    .line 515
    .line 516
    const/4 v5, 0x3

    .line 517
    if-ne v2, v5, :cond_1c

    .line 518
    .line 519
    iget v2, v1, LA1/y;->j:I

    .line 520
    .line 521
    if-ne v2, v10, :cond_1c

    .line 522
    .line 523
    if-eqz v19, :cond_1b

    .line 524
    .line 525
    iget-object v2, v1, LA1/y;->a:LA1/j;

    .line 526
    .line 527
    instance-of v2, v2, LA1/l;

    .line 528
    .line 529
    if-nez v2, :cond_1c

    .line 530
    .line 531
    :cond_1b
    if-eqz v14, :cond_1c

    .line 532
    .line 533
    new-instance v2, Lp0/E;

    .line 534
    .line 535
    invoke-direct {v2}, Lp0/E;-><init>()V

    .line 536
    .line 537
    .line 538
    invoke-virtual {v1, v4, v2}, LA1/y;->b(ILp0/E;)V

    .line 539
    .line 540
    .line 541
    :cond_1c
    add-int/lit8 v15, v15, 0x1

    .line 542
    .line 543
    goto :goto_11

    .line 544
    :cond_1d
    return v10

    .line 545
    :cond_1e
    add-int/2addr v6, v9

    .line 546
    invoke-virtual {v2, v6}, Lp0/E;->K(I)V

    .line 547
    .line 548
    .line 549
    goto :goto_10

    .line 550
    :cond_1f
    iget v1, v2, Lp0/E;->b:I

    .line 551
    .line 552
    iget v5, v2, Lp0/E;->c:I

    .line 553
    .line 554
    iget-object v6, v2, Lp0/E;->a:[B

    .line 555
    .line 556
    move v7, v1

    .line 557
    :goto_14
    if-ge v7, v5, :cond_20

    .line 558
    .line 559
    aget-byte v9, v6, v7

    .line 560
    .line 561
    const/16 v10, 0x47

    .line 562
    .line 563
    if-eq v9, v10, :cond_20

    .line 564
    .line 565
    add-int/lit8 v7, v7, 0x1

    .line 566
    .line 567
    goto :goto_14

    .line 568
    :cond_20
    invoke-virtual {v2, v7}, Lp0/E;->L(I)V

    .line 569
    .line 570
    .line 571
    add-int/lit16 v6, v7, 0xbc

    .line 572
    .line 573
    const/4 v9, 0x0

    .line 574
    if-le v6, v5, :cond_22

    .line 575
    .line 576
    iget v5, v0, LA1/F;->s:I

    .line 577
    .line 578
    sub-int/2addr v7, v1

    .line 579
    add-int/2addr v7, v5

    .line 580
    iput v7, v0, LA1/F;->s:I

    .line 581
    .line 582
    move/from16 v1, v28

    .line 583
    .line 584
    const/4 v5, 0x2

    .line 585
    if-ne v1, v5, :cond_23

    .line 586
    .line 587
    const/16 v10, 0x178

    .line 588
    .line 589
    if-gt v7, v10, :cond_21

    .line 590
    .line 591
    goto :goto_15

    .line 592
    :cond_21
    const-string v1, "Cannot find sync byte. Most likely not a Transport Stream."

    .line 593
    .line 594
    invoke-static {v1, v9}, Lm0/P;->a(Ljava/lang/String;Ljava/lang/RuntimeException;)Lm0/P;

    .line 595
    .line 596
    .line 597
    move-result-object v1

    .line 598
    throw v1

    .line 599
    :cond_22
    move/from16 v1, v28

    .line 600
    .line 601
    const/4 v5, 0x2

    .line 602
    iput v3, v0, LA1/F;->s:I

    .line 603
    .line 604
    :cond_23
    :goto_15
    iget v7, v2, Lp0/E;->c:I

    .line 605
    .line 606
    if-le v6, v7, :cond_24

    .line 607
    .line 608
    return v3

    .line 609
    :cond_24
    invoke-virtual {v2}, Lp0/E;->l()I

    .line 610
    .line 611
    .line 612
    move-result v10

    .line 613
    const/high16 v11, 0x800000

    .line 614
    .line 615
    and-int/2addr v11, v10

    .line 616
    if-eqz v11, :cond_25

    .line 617
    .line 618
    invoke-virtual {v2, v6}, Lp0/E;->L(I)V

    .line 619
    .line 620
    .line 621
    return v3

    .line 622
    :cond_25
    const/high16 v11, 0x400000

    .line 623
    .line 624
    and-int/2addr v11, v10

    .line 625
    if-eqz v11, :cond_26

    .line 626
    .line 627
    const/4 v14, 0x1

    .line 628
    goto :goto_16

    .line 629
    :cond_26
    const/4 v14, 0x0

    .line 630
    :goto_16
    const v11, 0x1fff00

    .line 631
    .line 632
    .line 633
    and-int/2addr v11, v10

    .line 634
    shr-int/lit8 v11, v11, 0x8

    .line 635
    .line 636
    and-int/lit8 v12, v10, 0x20

    .line 637
    .line 638
    if-eqz v12, :cond_27

    .line 639
    .line 640
    const/4 v12, 0x1

    .line 641
    goto :goto_17

    .line 642
    :cond_27
    const/4 v12, 0x0

    .line 643
    :goto_17
    and-int/lit8 v13, v10, 0x10

    .line 644
    .line 645
    if-eqz v13, :cond_28

    .line 646
    .line 647
    invoke-virtual {v8, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 648
    .line 649
    .line 650
    move-result-object v8

    .line 651
    move-object v9, v8

    .line 652
    check-cast v9, LA1/J;

    .line 653
    .line 654
    :cond_28
    if-nez v9, :cond_29

    .line 655
    .line 656
    invoke-virtual {v2, v6}, Lp0/E;->L(I)V

    .line 657
    .line 658
    .line 659
    return v3

    .line 660
    :cond_29
    if-eq v1, v5, :cond_2b

    .line 661
    .line 662
    and-int/lit8 v8, v10, 0xf

    .line 663
    .line 664
    iget-object v10, v0, LA1/F;->e:Landroid/util/SparseIntArray;

    .line 665
    .line 666
    add-int/lit8 v13, v8, -0x1

    .line 667
    .line 668
    invoke-virtual {v10, v11, v13}, Landroid/util/SparseIntArray;->get(II)I

    .line 669
    .line 670
    .line 671
    move-result v13

    .line 672
    invoke-virtual {v10, v11, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 673
    .line 674
    .line 675
    if-ne v13, v8, :cond_2a

    .line 676
    .line 677
    invoke-virtual {v2, v6}, Lp0/E;->L(I)V

    .line 678
    .line 679
    .line 680
    return v3

    .line 681
    :cond_2a
    add-int/2addr v13, v4

    .line 682
    and-int/lit8 v10, v13, 0xf

    .line 683
    .line 684
    if-eq v8, v10, :cond_2b

    .line 685
    .line 686
    invoke-interface {v9}, LA1/J;->a()V

    .line 687
    .line 688
    .line 689
    :cond_2b
    if-eqz v12, :cond_2d

    .line 690
    .line 691
    invoke-virtual {v2}, Lp0/E;->z()I

    .line 692
    .line 693
    .line 694
    move-result v8

    .line 695
    invoke-virtual {v2}, Lp0/E;->z()I

    .line 696
    .line 697
    .line 698
    move-result v10

    .line 699
    and-int/lit8 v10, v10, 0x40

    .line 700
    .line 701
    if-eqz v10, :cond_2c

    .line 702
    .line 703
    const/4 v15, 0x2

    .line 704
    goto :goto_18

    .line 705
    :cond_2c
    const/4 v15, 0x0

    .line 706
    :goto_18
    or-int/2addr v14, v15

    .line 707
    sub-int/2addr v8, v4

    .line 708
    invoke-virtual {v2, v8}, Lp0/E;->M(I)V

    .line 709
    .line 710
    .line 711
    :cond_2d
    iget-boolean v8, v0, LA1/F;->o:Z

    .line 712
    .line 713
    if-eq v1, v5, :cond_2e

    .line 714
    .line 715
    if-nez v8, :cond_2e

    .line 716
    .line 717
    iget-object v10, v0, LA1/F;->j:Landroid/util/SparseBooleanArray;

    .line 718
    .line 719
    invoke-virtual {v10, v11, v3}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    .line 720
    .line 721
    .line 722
    move-result v10

    .line 723
    if-nez v10, :cond_2f

    .line 724
    .line 725
    :cond_2e
    invoke-virtual {v2, v6}, Lp0/E;->K(I)V

    .line 726
    .line 727
    .line 728
    invoke-interface {v9, v14, v2}, LA1/J;->b(ILp0/E;)V

    .line 729
    .line 730
    .line 731
    invoke-virtual {v2, v7}, Lp0/E;->K(I)V

    .line 732
    .line 733
    .line 734
    :cond_2f
    if-eq v1, v5, :cond_30

    .line 735
    .line 736
    if-nez v8, :cond_30

    .line 737
    .line 738
    iget-boolean v1, v0, LA1/F;->o:Z

    .line 739
    .line 740
    if-eqz v1, :cond_30

    .line 741
    .line 742
    cmp-long v1, v17, v20

    .line 743
    .line 744
    if-eqz v1, :cond_30

    .line 745
    .line 746
    iput-boolean v4, v0, LA1/F;->q:Z

    .line 747
    .line 748
    :cond_30
    invoke-virtual {v2, v6}, Lp0/E;->L(I)V

    .line 749
    .line 750
    .line 751
    return v3
.end method

.method public final i(JJ)V
    .locals 11

    .line 1
    iget p1, p0, LA1/F;->a:I

    .line 2
    .line 3
    const/4 p2, 0x2

    .line 4
    const/4 v0, 0x1

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eq p1, p2, :cond_0

    .line 7
    .line 8
    const/4 p1, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p1, 0x0

    .line 11
    :goto_0
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/H1;->i(Z)V

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, LA1/F;->c:Ljava/util/List;

    .line 15
    .line 16
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 17
    .line 18
    .line 19
    move-result p2

    .line 20
    const/4 v2, 0x0

    .line 21
    :goto_1
    const-wide/16 v3, 0x0

    .line 22
    .line 23
    if-ge v2, p2, :cond_4

    .line 24
    .line 25
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v5

    .line 29
    check-cast v5, Lp0/J;

    .line 30
    .line 31
    invoke-virtual {v5}, Lp0/J;->e()J

    .line 32
    .line 33
    .line 34
    move-result-wide v6

    .line 35
    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    cmp-long v10, v6, v8

    .line 41
    .line 42
    if-nez v10, :cond_1

    .line 43
    .line 44
    const/4 v6, 0x1

    .line 45
    goto :goto_2

    .line 46
    :cond_1
    const/4 v6, 0x0

    .line 47
    :goto_2
    if-nez v6, :cond_2

    .line 48
    .line 49
    invoke-virtual {v5}, Lp0/J;->d()J

    .line 50
    .line 51
    .line 52
    move-result-wide v6

    .line 53
    cmp-long v10, v6, v8

    .line 54
    .line 55
    if-eqz v10, :cond_3

    .line 56
    .line 57
    cmp-long v8, v6, v3

    .line 58
    .line 59
    if-eqz v8, :cond_3

    .line 60
    .line 61
    cmp-long v3, v6, p3

    .line 62
    .line 63
    if-eqz v3, :cond_3

    .line 64
    .line 65
    goto :goto_3

    .line 66
    :cond_2
    if-eqz v6, :cond_3

    .line 67
    .line 68
    :goto_3
    invoke-virtual {v5, p3, p4}, Lp0/J;->g(J)V

    .line 69
    .line 70
    .line 71
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_4
    cmp-long p1, p3, v3

    .line 75
    .line 76
    if-eqz p1, :cond_5

    .line 77
    .line 78
    iget-object p1, p0, LA1/F;->l:Lb1/a;

    .line 79
    .line 80
    if-eqz p1, :cond_5

    .line 81
    .line 82
    invoke-virtual {p1, p3, p4}, LW0/k;->d(J)V

    .line 83
    .line 84
    .line 85
    :cond_5
    iget-object p1, p0, LA1/F;->d:Lp0/E;

    .line 86
    .line 87
    invoke-virtual {p1, v1}, Lp0/E;->I(I)V

    .line 88
    .line 89
    .line 90
    iget-object p1, p0, LA1/F;->e:Landroid/util/SparseIntArray;

    .line 91
    .line 92
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->clear()V

    .line 93
    .line 94
    .line 95
    const/4 p1, 0x0

    .line 96
    :goto_4
    iget-object p2, p0, LA1/F;->h:Landroid/util/SparseArray;

    .line 97
    .line 98
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    .line 99
    .line 100
    .line 101
    move-result p3

    .line 102
    if-ge p1, p3, :cond_6

    .line 103
    .line 104
    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object p2

    .line 108
    check-cast p2, LA1/J;

    .line 109
    .line 110
    invoke-interface {p2}, LA1/J;->a()V

    .line 111
    .line 112
    .line 113
    add-int/lit8 p1, p1, 0x1

    .line 114
    .line 115
    goto :goto_4

    .line 116
    :cond_6
    iput v1, p0, LA1/F;->s:I

    .line 117
    .line 118
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
