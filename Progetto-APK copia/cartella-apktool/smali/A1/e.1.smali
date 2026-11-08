.class public final LA1/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LW0/s;


# instance fields
.field public final a:I

.field public final b:LA1/f;

.field public final c:Lp0/E;

.field public final d:Lp0/E;

.field public final e:Lp0/D;

.field public f:LW0/u;

.field public g:J

.field public h:J

.field public i:I

.field public j:Z

.field public k:Z

.field public l:Z


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, LA1/e;->a:I

    .line 6
    .line 7
    new-instance v1, LA1/f;

    .line 8
    .line 9
    const-string v2, "audio/mp4a-latm"

    .line 10
    .line 11
    const/4 v3, 0x1

    .line 12
    const/4 v4, 0x0

    .line 13
    invoke-direct {v1, v4, v0, v2, v3}, LA1/f;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    .line 14
    .line 15
    .line 16
    iput-object v1, p0, LA1/e;->b:LA1/f;

    .line 17
    .line 18
    new-instance v1, Lp0/E;

    .line 19
    .line 20
    const/16 v2, 0x800

    .line 21
    .line 22
    invoke-direct {v1, v2}, Lp0/E;-><init>(I)V

    .line 23
    .line 24
    .line 25
    iput-object v1, p0, LA1/e;->c:Lp0/E;

    .line 26
    .line 27
    const/4 v1, -0x1

    .line 28
    iput v1, p0, LA1/e;->i:I

    .line 29
    .line 30
    const-wide/16 v1, -0x1

    .line 31
    .line 32
    iput-wide v1, p0, LA1/e;->h:J

    .line 33
    .line 34
    new-instance v1, Lp0/E;

    .line 35
    .line 36
    const/16 v2, 0xa

    .line 37
    .line 38
    invoke-direct {v1, v2}, Lp0/E;-><init>(I)V

    .line 39
    .line 40
    .line 41
    iput-object v1, p0, LA1/e;->d:Lp0/E;

    .line 42
    .line 43
    new-instance v2, Lp0/D;

    .line 44
    .line 45
    iget-object v1, v1, Lp0/E;->a:[B

    .line 46
    .line 47
    invoke-direct {v2, v1, v0, v4}, Lp0/D;-><init>([BILjava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    iput-object v2, p0, LA1/e;->e:Lp0/D;

    .line 51
    .line 52
    return-void
.end method


# virtual methods
.method public final a(LW0/t;)I
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_0
    iget-object v2, p0, LA1/e;->d:Lp0/E;

    .line 4
    .line 5
    iget-object v3, v2, Lp0/E;->a:[B

    .line 6
    .line 7
    const/16 v4, 0xa

    .line 8
    .line 9
    invoke-interface {p1, v0, v3, v4}, LW0/t;->c(I[BI)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v2, v0}, Lp0/E;->L(I)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v2}, Lp0/E;->C()I

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    const v4, 0x494433

    .line 20
    .line 21
    .line 22
    if-eq v3, v4, :cond_1

    .line 23
    .line 24
    invoke-interface {p1}, LW0/t;->m()V

    .line 25
    .line 26
    .line 27
    invoke-interface {p1, v1}, LW0/t;->g(I)V

    .line 28
    .line 29
    .line 30
    iget-wide v2, p0, LA1/e;->h:J

    .line 31
    .line 32
    const-wide/16 v4, -0x1

    .line 33
    .line 34
    cmp-long p1, v2, v4

    .line 35
    .line 36
    if-nez p1, :cond_0

    .line 37
    .line 38
    int-to-long v2, v1

    .line 39
    iput-wide v2, p0, LA1/e;->h:J

    .line 40
    .line 41
    :cond_0
    return v1

    .line 42
    :cond_1
    const/4 v3, 0x3

    .line 43
    invoke-virtual {v2, v3}, Lp0/E;->M(I)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2}, Lp0/E;->y()I

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    add-int/lit8 v3, v2, 0xa

    .line 51
    .line 52
    add-int/2addr v1, v3

    .line 53
    invoke-interface {p1, v2}, LW0/t;->g(I)V

    .line 54
    .line 55
    .line 56
    goto :goto_0
.end method

.method public final b()LW0/s;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final d(LW0/u;)V
    .locals 3

    .line 1
    iput-object p1, p0, LA1/e;->f:LW0/u;

    .line 2
    .line 3
    new-instance v0, LA1/I;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    invoke-direct {v0, v1, v2}, LA1/I;-><init>(II)V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, LA1/e;->b:LA1/f;

    .line 11
    .line 12
    invoke-virtual {v1, p1, v0}, LA1/f;->c(LW0/u;LA1/I;)V

    .line 13
    .line 14
    .line 15
    invoke-interface {p1}, LW0/u;->j()V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final g(LW0/t;)Z
    .locals 9

    .line 1
    invoke-virtual {p0, p1}, LA1/e;->a(LW0/t;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    move v3, v0

    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v4, 0x0

    .line 9
    :cond_0
    iget-object v5, p0, LA1/e;->d:Lp0/E;

    .line 10
    .line 11
    iget-object v6, v5, Lp0/E;->a:[B

    .line 12
    .line 13
    const/4 v7, 0x2

    .line 14
    invoke-interface {p1, v1, v6, v7}, LW0/t;->c(I[BI)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v5, v1}, Lp0/E;->L(I)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v5}, Lp0/E;->F()I

    .line 21
    .line 22
    .line 23
    move-result v6

    .line 24
    const v7, 0xfff6

    .line 25
    .line 26
    .line 27
    and-int/2addr v6, v7

    .line 28
    const v7, 0xfff0

    .line 29
    .line 30
    .line 31
    if-ne v6, v7, :cond_3

    .line 32
    .line 33
    const/4 v6, 0x1

    .line 34
    add-int/2addr v2, v6

    .line 35
    const/4 v7, 0x4

    .line 36
    if-lt v2, v7, :cond_1

    .line 37
    .line 38
    const/16 v8, 0xbc

    .line 39
    .line 40
    if-le v4, v8, :cond_1

    .line 41
    .line 42
    return v6

    .line 43
    :cond_1
    iget-object v5, v5, Lp0/E;->a:[B

    .line 44
    .line 45
    invoke-interface {p1, v1, v5, v7}, LW0/t;->c(I[BI)V

    .line 46
    .line 47
    .line 48
    iget-object v5, p0, LA1/e;->e:Lp0/D;

    .line 49
    .line 50
    const/16 v6, 0xe

    .line 51
    .line 52
    invoke-virtual {v5, v6}, Lp0/D;->r(I)V

    .line 53
    .line 54
    .line 55
    const/16 v6, 0xd

    .line 56
    .line 57
    invoke-virtual {v5, v6}, Lp0/D;->i(I)I

    .line 58
    .line 59
    .line 60
    move-result v5

    .line 61
    const/4 v6, 0x6

    .line 62
    if-gt v5, v6, :cond_2

    .line 63
    .line 64
    add-int/lit8 v3, v3, 0x1

    .line 65
    .line 66
    invoke-interface {p1}, LW0/t;->m()V

    .line 67
    .line 68
    .line 69
    invoke-interface {p1, v3}, LW0/t;->g(I)V

    .line 70
    .line 71
    .line 72
    :goto_0
    const/4 v2, 0x0

    .line 73
    const/4 v4, 0x0

    .line 74
    goto :goto_1

    .line 75
    :cond_2
    add-int/lit8 v6, v5, -0x6

    .line 76
    .line 77
    invoke-interface {p1, v6}, LW0/t;->g(I)V

    .line 78
    .line 79
    .line 80
    add-int/2addr v4, v5

    .line 81
    goto :goto_1

    .line 82
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 83
    .line 84
    invoke-interface {p1}, LW0/t;->m()V

    .line 85
    .line 86
    .line 87
    invoke-interface {p1, v3}, LW0/t;->g(I)V

    .line 88
    .line 89
    .line 90
    goto :goto_0

    .line 91
    :goto_1
    sub-int v5, v3, v0

    .line 92
    .line 93
    const/16 v6, 0x2000

    .line 94
    .line 95
    if-lt v5, v6, :cond_0

    .line 96
    .line 97
    return v1
.end method

.method public final h(LW0/t;LW0/w;)I
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, LA1/e;->f:LW0/u;

    .line 6
    .line 7
    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/H1;->j(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    invoke-interface/range {p1 .. p1}, LW0/t;->j()J

    .line 11
    .line 12
    .line 13
    move-result-wide v6

    .line 14
    iget v2, v0, LA1/e;->a:I

    .line 15
    .line 16
    and-int/lit8 v3, v2, 0x2

    .line 17
    .line 18
    const/4 v11, -0x1

    .line 19
    const/4 v12, 0x0

    .line 20
    const/4 v13, 0x1

    .line 21
    if-nez v3, :cond_1

    .line 22
    .line 23
    and-int/lit8 v4, v2, 0x1

    .line 24
    .line 25
    if-eqz v4, :cond_0

    .line 26
    .line 27
    const-wide/16 v4, -0x1

    .line 28
    .line 29
    cmp-long v8, v6, v4

    .line 30
    .line 31
    if-eqz v8, :cond_0

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_0
    :goto_0
    const/4 v4, -0x1

    .line 35
    goto/16 :goto_5

    .line 36
    .line 37
    :cond_1
    :goto_1
    iget-object v4, v0, LA1/e;->e:Lp0/D;

    .line 38
    .line 39
    iget-object v5, v0, LA1/e;->d:Lp0/E;

    .line 40
    .line 41
    iget-boolean v8, v0, LA1/e;->j:Z

    .line 42
    .line 43
    if-eqz v8, :cond_2

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    iput v11, v0, LA1/e;->i:I

    .line 47
    .line 48
    invoke-interface/range {p1 .. p1}, LW0/t;->m()V

    .line 49
    .line 50
    .line 51
    invoke-interface/range {p1 .. p1}, LW0/t;->r()J

    .line 52
    .line 53
    .line 54
    move-result-wide v8

    .line 55
    const-wide/16 v14, 0x0

    .line 56
    .line 57
    cmp-long v10, v8, v14

    .line 58
    .line 59
    if-nez v10, :cond_3

    .line 60
    .line 61
    invoke-virtual/range {p0 .. p1}, LA1/e;->a(LW0/t;)I

    .line 62
    .line 63
    .line 64
    :cond_3
    const/4 v8, 0x0

    .line 65
    :goto_2
    :try_start_0
    iget-object v9, v5, Lp0/E;->a:[B

    .line 66
    .line 67
    const/4 v10, 0x2

    .line 68
    invoke-interface {v1, v9, v12, v10, v13}, LW0/t;->e([BIIZ)Z

    .line 69
    .line 70
    .line 71
    move-result v9

    .line 72
    if-eqz v9, :cond_9

    .line 73
    .line 74
    invoke-virtual {v5, v12}, Lp0/E;->L(I)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v5}, Lp0/E;->F()I

    .line 78
    .line 79
    .line 80
    move-result v9

    .line 81
    const v10, 0xfff6

    .line 82
    .line 83
    .line 84
    and-int/2addr v9, v10

    .line 85
    const v10, 0xfff0

    .line 86
    .line 87
    .line 88
    if-ne v9, v10, :cond_8

    .line 89
    .line 90
    iget-object v9, v5, Lp0/E;->a:[B

    .line 91
    .line 92
    const/4 v10, 0x4

    .line 93
    invoke-interface {v1, v9, v12, v10, v13}, LW0/t;->e([BIIZ)Z

    .line 94
    .line 95
    .line 96
    move-result v9

    .line 97
    if-nez v9, :cond_4

    .line 98
    .line 99
    goto :goto_3

    .line 100
    :cond_4
    const/16 v9, 0xe

    .line 101
    .line 102
    invoke-virtual {v4, v9}, Lp0/D;->r(I)V

    .line 103
    .line 104
    .line 105
    const/16 v9, 0xd

    .line 106
    .line 107
    invoke-virtual {v4, v9}, Lp0/D;->i(I)I

    .line 108
    .line 109
    .line 110
    move-result v9

    .line 111
    const/4 v10, 0x6

    .line 112
    if-le v9, v10, :cond_7

    .line 113
    .line 114
    int-to-long v11, v9

    .line 115
    add-long/2addr v14, v11

    .line 116
    add-int/lit8 v8, v8, 0x1

    .line 117
    .line 118
    const/16 v10, 0x3e8

    .line 119
    .line 120
    if-ne v8, v10, :cond_5

    .line 121
    .line 122
    goto :goto_3

    .line 123
    :cond_5
    add-int/lit8 v9, v9, -0x6

    .line 124
    .line 125
    invoke-interface {v1, v9, v13}, LW0/t;->o(IZ)Z

    .line 126
    .line 127
    .line 128
    move-result v9

    .line 129
    if-nez v9, :cond_6

    .line 130
    .line 131
    goto :goto_3

    .line 132
    :cond_6
    const/4 v11, -0x1

    .line 133
    const/4 v12, 0x0

    .line 134
    goto :goto_2

    .line 135
    :catch_0
    nop

    .line 136
    goto :goto_3

    .line 137
    :cond_7
    iput-boolean v13, v0, LA1/e;->j:Z

    .line 138
    .line 139
    const-string v4, "Malformed ADTS stream"

    .line 140
    .line 141
    const/4 v5, 0x0

    .line 142
    invoke-static {v4, v5}, Lm0/P;->a(Ljava/lang/String;Ljava/lang/RuntimeException;)Lm0/P;

    .line 143
    .line 144
    .line 145
    move-result-object v4

    .line 146
    throw v4
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    :cond_8
    const/4 v8, 0x0

    .line 148
    :cond_9
    :goto_3
    invoke-interface/range {p1 .. p1}, LW0/t;->m()V

    .line 149
    .line 150
    .line 151
    if-lez v8, :cond_a

    .line 152
    .line 153
    int-to-long v4, v8

    .line 154
    div-long/2addr v14, v4

    .line 155
    long-to-int v4, v14

    .line 156
    iput v4, v0, LA1/e;->i:I

    .line 157
    .line 158
    const/4 v4, -0x1

    .line 159
    goto :goto_4

    .line 160
    :cond_a
    const/4 v4, -0x1

    .line 161
    iput v4, v0, LA1/e;->i:I

    .line 162
    .line 163
    :goto_4
    iput-boolean v13, v0, LA1/e;->j:Z

    .line 164
    .line 165
    :goto_5
    iget-object v11, v0, LA1/e;->c:Lp0/E;

    .line 166
    .line 167
    iget-object v5, v11, Lp0/E;->a:[B

    .line 168
    .line 169
    const/16 v8, 0x800

    .line 170
    .line 171
    const/4 v9, 0x0

    .line 172
    invoke-interface {v1, v5, v9, v8}, Lm0/j;->q([BII)I

    .line 173
    .line 174
    .line 175
    move-result v1

    .line 176
    if-ne v1, v4, :cond_b

    .line 177
    .line 178
    const/4 v12, 0x1

    .line 179
    goto :goto_6

    .line 180
    :cond_b
    const/4 v12, 0x0

    .line 181
    :goto_6
    iget-boolean v4, v0, LA1/e;->l:Z

    .line 182
    .line 183
    iget-object v14, v0, LA1/e;->b:LA1/f;

    .line 184
    .line 185
    if-eqz v4, :cond_c

    .line 186
    .line 187
    goto :goto_a

    .line 188
    :cond_c
    and-int/2addr v2, v13

    .line 189
    if-eqz v2, :cond_d

    .line 190
    .line 191
    iget v2, v0, LA1/e;->i:I

    .line 192
    .line 193
    if-lez v2, :cond_d

    .line 194
    .line 195
    const/4 v2, 0x1

    .line 196
    goto :goto_7

    .line 197
    :cond_d
    const/4 v2, 0x0

    .line 198
    :goto_7
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    if-eqz v2, :cond_e

    .line 204
    .line 205
    iget-wide v8, v14, LA1/f;->s:J

    .line 206
    .line 207
    cmp-long v10, v8, v4

    .line 208
    .line 209
    if-nez v10, :cond_e

    .line 210
    .line 211
    if-nez v12, :cond_e

    .line 212
    .line 213
    goto :goto_a

    .line 214
    :cond_e
    if-eqz v2, :cond_10

    .line 215
    .line 216
    iget-wide v8, v14, LA1/f;->s:J

    .line 217
    .line 218
    cmp-long v2, v8, v4

    .line 219
    .line 220
    if-eqz v2, :cond_10

    .line 221
    .line 222
    iget-object v2, v0, LA1/e;->f:LW0/u;

    .line 223
    .line 224
    if-eqz v3, :cond_f

    .line 225
    .line 226
    const/4 v10, 0x1

    .line 227
    goto :goto_8

    .line 228
    :cond_f
    const/4 v10, 0x0

    .line 229
    :goto_8
    iget v5, v0, LA1/e;->i:I

    .line 230
    .line 231
    int-to-long v3, v5

    .line 232
    const-wide/32 v16, 0x7a1200

    .line 233
    .line 234
    .line 235
    mul-long v3, v3, v16

    .line 236
    .line 237
    div-long/2addr v3, v8

    .line 238
    long-to-int v4, v3

    .line 239
    new-instance v15, LW0/m;

    .line 240
    .line 241
    iget-wide v8, v0, LA1/e;->h:J

    .line 242
    .line 243
    move-object v3, v15

    .line 244
    invoke-direct/range {v3 .. v10}, LW0/m;-><init>(IIJJZ)V

    .line 245
    .line 246
    .line 247
    invoke-interface {v2, v15}, LW0/u;->r(LW0/F;)V

    .line 248
    .line 249
    .line 250
    goto :goto_9

    .line 251
    :cond_10
    iget-object v2, v0, LA1/e;->f:LW0/u;

    .line 252
    .line 253
    new-instance v3, LW0/x;

    .line 254
    .line 255
    invoke-direct {v3, v4, v5}, LW0/x;-><init>(J)V

    .line 256
    .line 257
    .line 258
    invoke-interface {v2, v3}, LW0/u;->r(LW0/F;)V

    .line 259
    .line 260
    .line 261
    :goto_9
    iput-boolean v13, v0, LA1/e;->l:Z

    .line 262
    .line 263
    :goto_a
    if-eqz v12, :cond_11

    .line 264
    .line 265
    const/4 v2, -0x1

    .line 266
    return v2

    .line 267
    :cond_11
    const/4 v2, 0x0

    .line 268
    invoke-virtual {v11, v2}, Lp0/E;->L(I)V

    .line 269
    .line 270
    .line 271
    invoke-virtual {v11, v1}, Lp0/E;->K(I)V

    .line 272
    .line 273
    .line 274
    iget-boolean v1, v0, LA1/e;->k:Z

    .line 275
    .line 276
    if-nez v1, :cond_12

    .line 277
    .line 278
    iget-wide v1, v0, LA1/e;->g:J

    .line 279
    .line 280
    iput-wide v1, v14, LA1/f;->u:J

    .line 281
    .line 282
    iput-boolean v13, v0, LA1/e;->k:Z

    .line 283
    .line 284
    :cond_12
    invoke-virtual {v14, v11}, LA1/f;->b(Lp0/E;)V

    .line 285
    .line 286
    .line 287
    const/4 v1, 0x0

    .line 288
    return v1
.end method

.method public final i(JJ)V
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, LA1/e;->k:Z

    .line 3
    .line 4
    iget-object p1, p0, LA1/e;->b:LA1/f;

    .line 5
    .line 6
    invoke-virtual {p1}, LA1/f;->a()V

    .line 7
    .line 8
    .line 9
    iput-wide p3, p0, LA1/e;->g:J

    .line 10
    .line 11
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
