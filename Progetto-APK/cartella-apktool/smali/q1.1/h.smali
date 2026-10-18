.class public final Lq1/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LW0/s;


# instance fields
.field public final a:Lq1/m;

.field public final b:LF2/G;

.field public final c:Lm0/t;

.field public final d:Ljava/util/ArrayList;

.field public final e:Lp0/E;

.field public f:[B

.field public g:LW0/L;

.field public h:I

.field public i:I

.field public j:[J

.field public k:J


# direct methods
.method public constructor <init>(Lq1/m;Lm0/t;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lq1/h;->a:Lq1/m;

    .line 5
    .line 6
    new-instance v0, LF2/G;

    .line 7
    .line 8
    const/4 v1, 0x2

    .line 9
    invoke-direct {v0, v1}, LF2/G;-><init>(I)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lq1/h;->b:LF2/G;

    .line 13
    .line 14
    sget-object v0, Lp0/M;->b:[B

    .line 15
    .line 16
    iput-object v0, p0, Lq1/h;->f:[B

    .line 17
    .line 18
    new-instance v0, Lp0/E;

    .line 19
    .line 20
    invoke-direct {v0}, Lp0/E;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lq1/h;->e:Lp0/E;

    .line 24
    .line 25
    if-eqz p2, :cond_0

    .line 26
    .line 27
    invoke-virtual {p2}, Lm0/t;->a()Lm0/s;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    const-string v1, "application/x-media3-cues"

    .line 32
    .line 33
    invoke-static {v1}, Lm0/O;->p(Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    iput-object v1, v0, Lm0/s;->n:Ljava/lang/String;

    .line 38
    .line 39
    iget-object p2, p2, Lm0/t;->o:Ljava/lang/String;

    .line 40
    .line 41
    iput-object p2, v0, Lm0/s;->j:Ljava/lang/String;

    .line 42
    .line 43
    invoke-interface {p1}, Lq1/m;->g()I

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    iput p1, v0, Lm0/s;->L:I

    .line 48
    .line 49
    new-instance p1, Lm0/t;

    .line 50
    .line 51
    invoke-direct {p1, v0}, Lm0/t;-><init>(Lm0/s;)V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_0
    const/4 p1, 0x0

    .line 56
    :goto_0
    iput-object p1, p0, Lq1/h;->c:Lm0/t;

    .line 57
    .line 58
    new-instance p1, Ljava/util/ArrayList;

    .line 59
    .line 60
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 61
    .line 62
    .line 63
    iput-object p1, p0, Lq1/h;->d:Ljava/util/ArrayList;

    .line 64
    .line 65
    const/4 p1, 0x0

    .line 66
    iput p1, p0, Lq1/h;->i:I

    .line 67
    .line 68
    sget-object p1, Lp0/M;->c:[J

    .line 69
    .line 70
    iput-object p1, p0, Lq1/h;->j:[J

    .line 71
    .line 72
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    iput-wide p1, p0, Lq1/h;->k:J

    .line 78
    .line 79
    return-void
.end method


# virtual methods
.method public final a(Lq1/g;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lq1/h;->g:LW0/L;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/H1;->j(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p1, Lq1/g;->H:[B

    .line 7
    .line 8
    array-length v5, v0

    .line 9
    iget-object v1, p0, Lq1/h;->e:Lp0/E;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    array-length v2, v0

    .line 15
    invoke-virtual {v1, v2, v0}, Lp0/E;->J(I[B)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lq1/h;->g:LW0/L;

    .line 19
    .line 20
    invoke-interface {v0, v5, v1}, LW0/L;->e(ILp0/E;)V

    .line 21
    .line 22
    .line 23
    iget-object v1, p0, Lq1/h;->g:LW0/L;

    .line 24
    .line 25
    iget-wide v2, p1, Lq1/g;->G:J

    .line 26
    .line 27
    const/4 v4, 0x1

    .line 28
    const/4 v6, 0x0

    .line 29
    const/4 v7, 0x0

    .line 30
    invoke-interface/range {v1 .. v7}, LW0/L;->d(JIIILW0/K;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public final b()LW0/s;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final d(LW0/u;)V
    .locals 7

    .line 1
    iget v0, p0, Lq1/h;->i:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/H1;->i(Z)V

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x3

    .line 14
    invoke-interface {p1, v1, v0}, LW0/u;->t(II)LW0/L;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iput-object v0, p0, Lq1/h;->g:LW0/L;

    .line 19
    .line 20
    iget-object v3, p0, Lq1/h;->c:Lm0/t;

    .line 21
    .line 22
    if-eqz v3, :cond_1

    .line 23
    .line 24
    invoke-interface {v0, v3}, LW0/L;->b(Lm0/t;)V

    .line 25
    .line 26
    .line 27
    invoke-interface {p1}, LW0/u;->j()V

    .line 28
    .line 29
    .line 30
    new-instance v0, LW0/D;

    .line 31
    .line 32
    const-wide/16 v3, 0x0

    .line 33
    .line 34
    new-array v5, v2, [J

    .line 35
    .line 36
    aput-wide v3, v5, v1

    .line 37
    .line 38
    new-array v6, v2, [J

    .line 39
    .line 40
    aput-wide v3, v6, v1

    .line 41
    .line 42
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    invoke-direct {v0, v3, v4, v5, v6}, LW0/D;-><init>(J[J[J)V

    .line 48
    .line 49
    .line 50
    invoke-interface {p1, v0}, LW0/u;->r(LW0/F;)V

    .line 51
    .line 52
    .line 53
    :cond_1
    iput v2, p0, Lq1/h;->i:I

    .line 54
    .line 55
    return-void
.end method

.method public final g(LW0/t;)Z
    .locals 0

    .line 1
    const/4 p1, 0x1

    .line 2
    return p1
.end method

.method public final h(LW0/t;LW0/w;)I
    .locals 22

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    iget v2, v1, Lq1/h;->i:I

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    const/4 v4, 0x1

    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    const/4 v5, 0x5

    .line 12
    if-eq v2, v5, :cond_0

    .line 13
    .line 14
    const/4 v2, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v2, 0x0

    .line 17
    :goto_0
    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/H1;->i(Z)V

    .line 18
    .line 19
    .line 20
    iget v2, v1, Lq1/h;->i:I

    .line 21
    .line 22
    const/4 v5, 0x2

    .line 23
    const/16 v6, 0x400

    .line 24
    .line 25
    const-wide/16 v7, -0x1

    .line 26
    .line 27
    if-ne v2, v4, :cond_3

    .line 28
    .line 29
    invoke-interface/range {p1 .. p1}, LW0/t;->j()J

    .line 30
    .line 31
    .line 32
    move-result-wide v9

    .line 33
    cmp-long v2, v9, v7

    .line 34
    .line 35
    if-eqz v2, :cond_1

    .line 36
    .line 37
    invoke-interface/range {p1 .. p1}, LW0/t;->j()J

    .line 38
    .line 39
    .line 40
    move-result-wide v9

    .line 41
    invoke-static {v9, v10}, Ly4/k;->y(J)I

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    goto :goto_1

    .line 46
    :cond_1
    const/16 v2, 0x400

    .line 47
    .line 48
    :goto_1
    iget-object v9, v1, Lq1/h;->f:[B

    .line 49
    .line 50
    array-length v9, v9

    .line 51
    if-le v2, v9, :cond_2

    .line 52
    .line 53
    new-array v2, v2, [B

    .line 54
    .line 55
    iput-object v2, v1, Lq1/h;->f:[B

    .line 56
    .line 57
    :cond_2
    iput v3, v1, Lq1/h;->h:I

    .line 58
    .line 59
    iput v5, v1, Lq1/h;->i:I

    .line 60
    .line 61
    :cond_3
    iget v2, v1, Lq1/h;->i:I

    .line 62
    .line 63
    iget-object v9, v1, Lq1/h;->d:Ljava/util/ArrayList;

    .line 64
    .line 65
    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    const/4 v12, 0x4

    .line 71
    const/4 v13, -0x1

    .line 72
    if-ne v2, v5, :cond_a

    .line 73
    .line 74
    iget-object v2, v1, Lq1/h;->f:[B

    .line 75
    .line 76
    array-length v5, v2

    .line 77
    iget v14, v1, Lq1/h;->h:I

    .line 78
    .line 79
    if-ne v5, v14, :cond_4

    .line 80
    .line 81
    array-length v5, v2

    .line 82
    add-int/2addr v5, v6

    .line 83
    invoke-static {v2, v5}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    iput-object v2, v1, Lq1/h;->f:[B

    .line 88
    .line 89
    :cond_4
    iget-object v2, v1, Lq1/h;->f:[B

    .line 90
    .line 91
    iget v5, v1, Lq1/h;->h:I

    .line 92
    .line 93
    array-length v14, v2

    .line 94
    sub-int/2addr v14, v5

    .line 95
    invoke-interface {v0, v2, v5, v14}, Lm0/j;->q([BII)I

    .line 96
    .line 97
    .line 98
    move-result v2

    .line 99
    if-eq v2, v13, :cond_5

    .line 100
    .line 101
    iget v5, v1, Lq1/h;->h:I

    .line 102
    .line 103
    add-int/2addr v5, v2

    .line 104
    iput v5, v1, Lq1/h;->h:I

    .line 105
    .line 106
    :cond_5
    invoke-interface/range {p1 .. p1}, LW0/t;->j()J

    .line 107
    .line 108
    .line 109
    move-result-wide v14

    .line 110
    cmp-long v5, v14, v7

    .line 111
    .line 112
    if-eqz v5, :cond_6

    .line 113
    .line 114
    iget v5, v1, Lq1/h;->h:I

    .line 115
    .line 116
    int-to-long v6, v5

    .line 117
    cmp-long v5, v6, v14

    .line 118
    .line 119
    if-eqz v5, :cond_7

    .line 120
    .line 121
    :cond_6
    if-ne v2, v13, :cond_a

    .line 122
    .line 123
    :cond_7
    :try_start_0
    iget-wide v5, v1, Lq1/h;->k:J

    .line 124
    .line 125
    cmp-long v2, v5, v10

    .line 126
    .line 127
    if-eqz v2, :cond_8

    .line 128
    .line 129
    new-instance v2, Lq1/l;

    .line 130
    .line 131
    invoke-direct {v2, v5, v6, v4}, Lq1/l;-><init>(JZ)V

    .line 132
    .line 133
    .line 134
    :goto_2
    move-object/from16 v20, v2

    .line 135
    .line 136
    goto :goto_3

    .line 137
    :cond_8
    sget-object v2, Lq1/l;->c:Lq1/l;

    .line 138
    .line 139
    goto :goto_2

    .line 140
    :goto_3
    iget-object v2, v1, Lq1/h;->a:Lq1/m;

    .line 141
    .line 142
    iget-object v5, v1, Lq1/h;->f:[B

    .line 143
    .line 144
    iget v6, v1, Lq1/h;->h:I

    .line 145
    .line 146
    new-instance v7, LB0/x;

    .line 147
    .line 148
    const/16 v8, 0x16

    .line 149
    .line 150
    invoke-direct {v7, v1, v8}, LB0/x;-><init>(Ljava/lang/Object;I)V

    .line 151
    .line 152
    .line 153
    const/16 v18, 0x0

    .line 154
    .line 155
    move-object/from16 v16, v2

    .line 156
    .line 157
    move-object/from16 v17, v5

    .line 158
    .line 159
    move/from16 v19, v6

    .line 160
    .line 161
    move-object/from16 v21, v7

    .line 162
    .line 163
    invoke-interface/range {v16 .. v21}, Lq1/m;->b([BIILq1/l;Lp0/j;)V

    .line 164
    .line 165
    .line 166
    invoke-static {v9}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 170
    .line 171
    .line 172
    move-result v2

    .line 173
    new-array v2, v2, [J

    .line 174
    .line 175
    iput-object v2, v1, Lq1/h;->j:[J

    .line 176
    .line 177
    const/4 v2, 0x0

    .line 178
    :goto_4
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 179
    .line 180
    .line 181
    move-result v5

    .line 182
    if-ge v2, v5, :cond_9

    .line 183
    .line 184
    iget-object v5, v1, Lq1/h;->j:[J

    .line 185
    .line 186
    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    move-result-object v6

    .line 190
    check-cast v6, Lq1/g;

    .line 191
    .line 192
    iget-wide v6, v6, Lq1/g;->G:J

    .line 193
    .line 194
    aput-wide v6, v5, v2

    .line 195
    .line 196
    add-int/lit8 v2, v2, 0x1

    .line 197
    .line 198
    goto :goto_4

    .line 199
    :catch_0
    move-exception v0

    .line 200
    goto :goto_5

    .line 201
    :cond_9
    sget-object v2, Lp0/M;->b:[B

    .line 202
    .line 203
    iput-object v2, v1, Lq1/h;->f:[B
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    .line 205
    iput v12, v1, Lq1/h;->i:I

    .line 206
    .line 207
    goto :goto_6

    .line 208
    :goto_5
    const-string v2, "SubtitleParser failed."

    .line 209
    .line 210
    invoke-static {v2, v0}, Lm0/P;->a(Ljava/lang/String;Ljava/lang/RuntimeException;)Lm0/P;

    .line 211
    .line 212
    .line 213
    move-result-object v0

    .line 214
    throw v0

    .line 215
    :cond_a
    :goto_6
    iget v2, v1, Lq1/h;->i:I

    .line 216
    .line 217
    const/4 v5, 0x3

    .line 218
    if-ne v2, v5, :cond_e

    .line 219
    .line 220
    invoke-interface/range {p1 .. p1}, LW0/t;->j()J

    .line 221
    .line 222
    .line 223
    move-result-wide v5

    .line 224
    const-wide/16 v7, -0x1

    .line 225
    .line 226
    cmp-long v2, v5, v7

    .line 227
    .line 228
    if-eqz v2, :cond_b

    .line 229
    .line 230
    invoke-interface/range {p1 .. p1}, LW0/t;->j()J

    .line 231
    .line 232
    .line 233
    move-result-wide v5

    .line 234
    invoke-static {v5, v6}, Ly4/k;->y(J)I

    .line 235
    .line 236
    .line 237
    move-result v6

    .line 238
    goto :goto_7

    .line 239
    :cond_b
    const/16 v6, 0x400

    .line 240
    .line 241
    :goto_7
    invoke-interface {v0, v6}, LW0/t;->i(I)I

    .line 242
    .line 243
    .line 244
    move-result v0

    .line 245
    if-ne v0, v13, :cond_e

    .line 246
    .line 247
    iget-wide v5, v1, Lq1/h;->k:J

    .line 248
    .line 249
    cmp-long v0, v5, v10

    .line 250
    .line 251
    if-nez v0, :cond_c

    .line 252
    .line 253
    const/4 v0, 0x0

    .line 254
    goto :goto_8

    .line 255
    :cond_c
    iget-object v0, v1, Lq1/h;->j:[J

    .line 256
    .line 257
    invoke-static {v0, v5, v6, v4}, Lp0/M;->e([JJZ)I

    .line 258
    .line 259
    .line 260
    move-result v0

    .line 261
    :goto_8
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 262
    .line 263
    .line 264
    move-result v2

    .line 265
    if-ge v0, v2, :cond_d

    .line 266
    .line 267
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 268
    .line 269
    .line 270
    move-result-object v2

    .line 271
    check-cast v2, Lq1/g;

    .line 272
    .line 273
    invoke-virtual {v1, v2}, Lq1/h;->a(Lq1/g;)V

    .line 274
    .line 275
    .line 276
    add-int/lit8 v0, v0, 0x1

    .line 277
    .line 278
    goto :goto_8

    .line 279
    :cond_d
    iput v12, v1, Lq1/h;->i:I

    .line 280
    .line 281
    :cond_e
    iget v0, v1, Lq1/h;->i:I

    .line 282
    .line 283
    if-ne v0, v12, :cond_f

    .line 284
    .line 285
    return v13

    .line 286
    :cond_f
    return v3
.end method

.method public final i(JJ)V
    .locals 1

    .line 1
    iget p1, p0, Lq1/h;->i:I

    .line 2
    .line 3
    const/4 p2, 0x1

    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x5

    .line 7
    if-eq p1, v0, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p1, 0x0

    .line 12
    :goto_0
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/H1;->i(Z)V

    .line 13
    .line 14
    .line 15
    iput-wide p3, p0, Lq1/h;->k:J

    .line 16
    .line 17
    iget p1, p0, Lq1/h;->i:I

    .line 18
    .line 19
    const/4 p3, 0x2

    .line 20
    if-ne p1, p3, :cond_1

    .line 21
    .line 22
    iput p2, p0, Lq1/h;->i:I

    .line 23
    .line 24
    :cond_1
    iget p1, p0, Lq1/h;->i:I

    .line 25
    .line 26
    const/4 p2, 0x4

    .line 27
    if-ne p1, p2, :cond_2

    .line 28
    .line 29
    const/4 p1, 0x3

    .line 30
    iput p1, p0, Lq1/h;->i:I

    .line 31
    .line 32
    :cond_2
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
    .locals 2

    .line 1
    iget v0, p0, Lq1/h;->i:I

    .line 2
    .line 3
    const/4 v1, 0x5

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    iget-object v0, p0, Lq1/h;->a:Lq1/m;

    .line 8
    .line 9
    invoke-interface {v0}, Lq1/m;->a()V

    .line 10
    .line 11
    .line 12
    iput v1, p0, Lq1/h;->i:I

    .line 13
    .line 14
    return-void
.end method
