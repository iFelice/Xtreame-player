.class public final LA1/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LA1/j;


# instance fields
.field public final a:Lp0/E;

.field public final b:LW0/b;

.field public final c:Ljava/lang/String;

.field public final d:I

.field public final e:Ljava/lang/String;

.field public f:LW0/L;

.field public g:Ljava/lang/String;

.field public h:I

.field public i:I

.field public j:Z

.field public k:Z

.field public l:J

.field public m:I

.field public n:J


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, LA1/v;->h:I

    .line 6
    .line 7
    new-instance v1, Lp0/E;

    .line 8
    .line 9
    const/4 v2, 0x4

    .line 10
    invoke-direct {v1, v2}, Lp0/E;-><init>(I)V

    .line 11
    .line 12
    .line 13
    iput-object v1, p0, LA1/v;->a:Lp0/E;

    .line 14
    .line 15
    iget-object v1, v1, Lp0/E;->a:[B

    .line 16
    .line 17
    const/4 v2, -0x1

    .line 18
    aput-byte v2, v1, v0

    .line 19
    .line 20
    new-instance v0, LW0/b;

    .line 21
    .line 22
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, LA1/v;->b:LW0/b;

    .line 26
    .line 27
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    iput-wide v0, p0, LA1/v;->n:J

    .line 33
    .line 34
    iput-object p1, p0, LA1/v;->c:Ljava/lang/String;

    .line 35
    .line 36
    iput p2, p0, LA1/v;->d:I

    .line 37
    .line 38
    iput-object p3, p0, LA1/v;->e:Ljava/lang/String;

    .line 39
    .line 40
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, LA1/v;->h:I

    .line 3
    .line 4
    iput v0, p0, LA1/v;->i:I

    .line 5
    .line 6
    iput-boolean v0, p0, LA1/v;->k:Z

    .line 7
    .line 8
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    iput-wide v0, p0, LA1/v;->n:J

    .line 14
    .line 15
    return-void
.end method

.method public final b(Lp0/E;)V
    .locals 11

    .line 1
    iget-object v0, p0, LA1/v;->f:LW0/L;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/H1;->j(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    :goto_0
    invoke-virtual {p1}, Lp0/E;->a()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-lez v0, :cond_c

    .line 11
    .line 12
    iget v0, p0, LA1/v;->h:I

    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    iget-object v2, p0, LA1/v;->a:Lp0/E;

    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    const/4 v4, 0x2

    .line 19
    if-eqz v0, :cond_7

    .line 20
    .line 21
    if-eq v0, v1, :cond_3

    .line 22
    .line 23
    if-ne v0, v4, :cond_2

    .line 24
    .line 25
    invoke-virtual {p1}, Lp0/E;->a()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    iget v2, p0, LA1/v;->m:I

    .line 30
    .line 31
    iget v4, p0, LA1/v;->i:I

    .line 32
    .line 33
    sub-int/2addr v2, v4

    .line 34
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    iget-object v2, p0, LA1/v;->f:LW0/L;

    .line 39
    .line 40
    invoke-interface {v2, v0, p1}, LW0/L;->e(ILp0/E;)V

    .line 41
    .line 42
    .line 43
    iget v2, p0, LA1/v;->i:I

    .line 44
    .line 45
    add-int/2addr v2, v0

    .line 46
    iput v2, p0, LA1/v;->i:I

    .line 47
    .line 48
    iget v0, p0, LA1/v;->m:I

    .line 49
    .line 50
    if-ge v2, v0, :cond_0

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_0
    iget-wide v4, p0, LA1/v;->n:J

    .line 54
    .line 55
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    cmp-long v0, v4, v6

    .line 61
    .line 62
    if-eqz v0, :cond_1

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_1
    const/4 v1, 0x0

    .line 66
    :goto_1
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/H1;->i(Z)V

    .line 67
    .line 68
    .line 69
    iget-object v4, p0, LA1/v;->f:LW0/L;

    .line 70
    .line 71
    iget-wide v5, p0, LA1/v;->n:J

    .line 72
    .line 73
    iget v8, p0, LA1/v;->m:I

    .line 74
    .line 75
    const/4 v7, 0x1

    .line 76
    const/4 v9, 0x0

    .line 77
    const/4 v10, 0x0

    .line 78
    invoke-interface/range {v4 .. v10}, LW0/L;->d(JIIILW0/K;)V

    .line 79
    .line 80
    .line 81
    iget-wide v0, p0, LA1/v;->n:J

    .line 82
    .line 83
    iget-wide v4, p0, LA1/v;->l:J

    .line 84
    .line 85
    add-long/2addr v0, v4

    .line 86
    iput-wide v0, p0, LA1/v;->n:J

    .line 87
    .line 88
    iput v3, p0, LA1/v;->i:I

    .line 89
    .line 90
    iput v3, p0, LA1/v;->h:I

    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 94
    .line 95
    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 96
    .line 97
    .line 98
    throw p1

    .line 99
    :cond_3
    invoke-virtual {p1}, Lp0/E;->a()I

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    iget v5, p0, LA1/v;->i:I

    .line 104
    .line 105
    const/4 v6, 0x4

    .line 106
    rsub-int/lit8 v5, v5, 0x4

    .line 107
    .line 108
    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    iget-object v5, v2, Lp0/E;->a:[B

    .line 113
    .line 114
    iget v7, p0, LA1/v;->i:I

    .line 115
    .line 116
    invoke-virtual {p1, v7, v5, v0}, Lp0/E;->j(I[BI)V

    .line 117
    .line 118
    .line 119
    iget v5, p0, LA1/v;->i:I

    .line 120
    .line 121
    add-int/2addr v5, v0

    .line 122
    iput v5, p0, LA1/v;->i:I

    .line 123
    .line 124
    if-ge v5, v6, :cond_4

    .line 125
    .line 126
    goto :goto_0

    .line 127
    :cond_4
    invoke-virtual {v2, v3}, Lp0/E;->L(I)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v2}, Lp0/E;->l()I

    .line 131
    .line 132
    .line 133
    move-result v0

    .line 134
    iget-object v5, p0, LA1/v;->b:LW0/b;

    .line 135
    .line 136
    invoke-virtual {v5, v0}, LW0/b;->a(I)Z

    .line 137
    .line 138
    .line 139
    move-result v0

    .line 140
    if-nez v0, :cond_5

    .line 141
    .line 142
    iput v3, p0, LA1/v;->i:I

    .line 143
    .line 144
    iput v1, p0, LA1/v;->h:I

    .line 145
    .line 146
    goto/16 :goto_0

    .line 147
    .line 148
    :cond_5
    iget v0, v5, LW0/b;->c:I

    .line 149
    .line 150
    iput v0, p0, LA1/v;->m:I

    .line 151
    .line 152
    iget-boolean v0, p0, LA1/v;->j:Z

    .line 153
    .line 154
    if-nez v0, :cond_6

    .line 155
    .line 156
    iget v0, v5, LW0/b;->g:I

    .line 157
    .line 158
    int-to-long v7, v0

    .line 159
    const-wide/32 v9, 0xf4240

    .line 160
    .line 161
    .line 162
    mul-long v7, v7, v9

    .line 163
    .line 164
    iget v0, v5, LW0/b;->d:I

    .line 165
    .line 166
    int-to-long v9, v0

    .line 167
    div-long/2addr v7, v9

    .line 168
    iput-wide v7, p0, LA1/v;->l:J

    .line 169
    .line 170
    new-instance v0, Lm0/s;

    .line 171
    .line 172
    invoke-direct {v0}, Lm0/s;-><init>()V

    .line 173
    .line 174
    .line 175
    iget-object v7, p0, LA1/v;->g:Ljava/lang/String;

    .line 176
    .line 177
    iput-object v7, v0, Lm0/s;->a:Ljava/lang/String;

    .line 178
    .line 179
    iget-object v7, p0, LA1/v;->e:Ljava/lang/String;

    .line 180
    .line 181
    invoke-static {v7}, Lm0/O;->p(Ljava/lang/String;)Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v7

    .line 185
    iput-object v7, v0, Lm0/s;->m:Ljava/lang/String;

    .line 186
    .line 187
    iget-object v7, v5, LW0/b;->b:Ljava/lang/String;

    .line 188
    .line 189
    invoke-static {v7}, Lm0/O;->p(Ljava/lang/String;)Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v7

    .line 193
    iput-object v7, v0, Lm0/s;->n:Ljava/lang/String;

    .line 194
    .line 195
    const/16 v7, 0x1000

    .line 196
    .line 197
    iput v7, v0, Lm0/s;->o:I

    .line 198
    .line 199
    iget v7, v5, LW0/b;->e:I

    .line 200
    .line 201
    iput v7, v0, Lm0/s;->F:I

    .line 202
    .line 203
    iget v5, v5, LW0/b;->d:I

    .line 204
    .line 205
    iput v5, v0, Lm0/s;->G:I

    .line 206
    .line 207
    iget-object v5, p0, LA1/v;->c:Ljava/lang/String;

    .line 208
    .line 209
    iput-object v5, v0, Lm0/s;->d:Ljava/lang/String;

    .line 210
    .line 211
    iget v5, p0, LA1/v;->d:I

    .line 212
    .line 213
    iput v5, v0, Lm0/s;->f:I

    .line 214
    .line 215
    new-instance v5, Lm0/t;

    .line 216
    .line 217
    invoke-direct {v5, v0}, Lm0/t;-><init>(Lm0/s;)V

    .line 218
    .line 219
    .line 220
    iget-object v0, p0, LA1/v;->f:LW0/L;

    .line 221
    .line 222
    invoke-interface {v0, v5}, LW0/L;->b(Lm0/t;)V

    .line 223
    .line 224
    .line 225
    iput-boolean v1, p0, LA1/v;->j:Z

    .line 226
    .line 227
    :cond_6
    invoke-virtual {v2, v3}, Lp0/E;->L(I)V

    .line 228
    .line 229
    .line 230
    iget-object v0, p0, LA1/v;->f:LW0/L;

    .line 231
    .line 232
    invoke-interface {v0, v6, v2}, LW0/L;->e(ILp0/E;)V

    .line 233
    .line 234
    .line 235
    iput v4, p0, LA1/v;->h:I

    .line 236
    .line 237
    goto/16 :goto_0

    .line 238
    .line 239
    :cond_7
    iget-object v0, p1, Lp0/E;->a:[B

    .line 240
    .line 241
    iget v5, p1, Lp0/E;->b:I

    .line 242
    .line 243
    iget v6, p1, Lp0/E;->c:I

    .line 244
    .line 245
    :goto_2
    if-ge v5, v6, :cond_b

    .line 246
    .line 247
    aget-byte v7, v0, v5

    .line 248
    .line 249
    and-int/lit16 v8, v7, 0xff

    .line 250
    .line 251
    const/16 v9, 0xff

    .line 252
    .line 253
    if-ne v8, v9, :cond_8

    .line 254
    .line 255
    const/4 v8, 0x1

    .line 256
    goto :goto_3

    .line 257
    :cond_8
    const/4 v8, 0x0

    .line 258
    :goto_3
    iget-boolean v9, p0, LA1/v;->k:Z

    .line 259
    .line 260
    if-eqz v9, :cond_9

    .line 261
    .line 262
    and-int/lit16 v7, v7, 0xe0

    .line 263
    .line 264
    const/16 v9, 0xe0

    .line 265
    .line 266
    if-ne v7, v9, :cond_9

    .line 267
    .line 268
    const/4 v7, 0x1

    .line 269
    goto :goto_4

    .line 270
    :cond_9
    const/4 v7, 0x0

    .line 271
    :goto_4
    iput-boolean v8, p0, LA1/v;->k:Z

    .line 272
    .line 273
    if-eqz v7, :cond_a

    .line 274
    .line 275
    add-int/lit8 v6, v5, 0x1

    .line 276
    .line 277
    invoke-virtual {p1, v6}, Lp0/E;->L(I)V

    .line 278
    .line 279
    .line 280
    iput-boolean v3, p0, LA1/v;->k:Z

    .line 281
    .line 282
    iget-object v2, v2, Lp0/E;->a:[B

    .line 283
    .line 284
    aget-byte v0, v0, v5

    .line 285
    .line 286
    aput-byte v0, v2, v1

    .line 287
    .line 288
    iput v4, p0, LA1/v;->i:I

    .line 289
    .line 290
    iput v1, p0, LA1/v;->h:I

    .line 291
    .line 292
    goto/16 :goto_0

    .line 293
    .line 294
    :cond_a
    add-int/lit8 v5, v5, 0x1

    .line 295
    .line 296
    goto :goto_2

    .line 297
    :cond_b
    invoke-virtual {p1, v6}, Lp0/E;->L(I)V

    .line 298
    .line 299
    .line 300
    goto/16 :goto_0

    .line 301
    .line 302
    :cond_c
    return-void
.end method

.method public final c(LW0/u;LA1/I;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, LA1/I;->a()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, LA1/I;->b()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p2, LA1/I;->e:Ljava/lang/String;

    .line 8
    .line 9
    iput-object v0, p0, LA1/v;->g:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {p2}, LA1/I;->b()V

    .line 12
    .line 13
    .line 14
    iget p2, p2, LA1/I;->d:I

    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    invoke-interface {p1, p2, v0}, LW0/u;->t(II)LW0/L;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iput-object p1, p0, LA1/v;->f:LW0/L;

    .line 22
    .line 23
    return-void
.end method

.method public final d(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public final e(IJ)V
    .locals 0

    .line 1
    iput-wide p2, p0, LA1/v;->n:J

    .line 2
    .line 3
    return-void
.end method
