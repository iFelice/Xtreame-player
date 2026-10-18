.class public final LA1/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LA1/j;


# instance fields
.field public final a:Lp0/D;

.field public final b:Lp0/E;

.field public final c:Ljava/lang/String;

.field public final d:I

.field public final e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:LW0/L;

.field public h:I

.field public i:I

.field public j:Z

.field public k:J

.field public l:Lm0/t;

.field public m:I

.field public n:J


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lp0/D;

    .line 5
    .line 6
    const/16 v1, 0x10

    .line 7
    .line 8
    new-array v1, v1, [B

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    const/4 v3, 0x0

    .line 12
    invoke-direct {v0, v1, v3, v2}, Lp0/D;-><init>([BILjava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, LA1/d;->a:Lp0/D;

    .line 16
    .line 17
    new-instance v1, Lp0/E;

    .line 18
    .line 19
    iget-object v0, v0, Lp0/D;->b:[B

    .line 20
    .line 21
    invoke-direct {v1, v0}, Lp0/E;-><init>([B)V

    .line 22
    .line 23
    .line 24
    iput-object v1, p0, LA1/d;->b:Lp0/E;

    .line 25
    .line 26
    iput v3, p0, LA1/d;->h:I

    .line 27
    .line 28
    iput v3, p0, LA1/d;->i:I

    .line 29
    .line 30
    iput-boolean v3, p0, LA1/d;->j:Z

    .line 31
    .line 32
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    iput-wide v0, p0, LA1/d;->n:J

    .line 38
    .line 39
    iput-object p1, p0, LA1/d;->c:Ljava/lang/String;

    .line 40
    .line 41
    iput p2, p0, LA1/d;->d:I

    .line 42
    .line 43
    iput-object p3, p0, LA1/d;->e:Ljava/lang/String;

    .line 44
    .line 45
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, LA1/d;->h:I

    .line 3
    .line 4
    iput v0, p0, LA1/d;->i:I

    .line 5
    .line 6
    iput-boolean v0, p0, LA1/d;->j:Z

    .line 7
    .line 8
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    iput-wide v0, p0, LA1/d;->n:J

    .line 14
    .line 15
    return-void
.end method

.method public final b(Lp0/E;)V
    .locals 12

    .line 1
    iget-object v0, p0, LA1/d;->g:LW0/L;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/H1;->j(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lp0/E;->a()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-lez v0, :cond_d

    .line 11
    .line 12
    iget v0, p0, LA1/d;->h:I

    .line 13
    .line 14
    const/4 v1, 0x2

    .line 15
    iget-object v2, p0, LA1/d;->b:Lp0/E;

    .line 16
    .line 17
    const/4 v3, 0x1

    .line 18
    const/4 v4, 0x0

    .line 19
    if-eqz v0, :cond_6

    .line 20
    .line 21
    if-eq v0, v3, :cond_3

    .line 22
    .line 23
    if-eq v0, v1, :cond_1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    invoke-virtual {p1}, Lp0/E;->a()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    iget v1, p0, LA1/d;->m:I

    .line 31
    .line 32
    iget v2, p0, LA1/d;->i:I

    .line 33
    .line 34
    sub-int/2addr v1, v2

    .line 35
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    iget-object v1, p0, LA1/d;->g:LW0/L;

    .line 40
    .line 41
    invoke-interface {v1, v0, p1}, LW0/L;->e(ILp0/E;)V

    .line 42
    .line 43
    .line 44
    iget v1, p0, LA1/d;->i:I

    .line 45
    .line 46
    add-int/2addr v1, v0

    .line 47
    iput v1, p0, LA1/d;->i:I

    .line 48
    .line 49
    iget v0, p0, LA1/d;->m:I

    .line 50
    .line 51
    if-ne v1, v0, :cond_0

    .line 52
    .line 53
    iget-wide v0, p0, LA1/d;->n:J

    .line 54
    .line 55
    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    cmp-long v2, v0, v5

    .line 61
    .line 62
    if-eqz v2, :cond_2

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_2
    const/4 v3, 0x0

    .line 66
    :goto_1
    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/H1;->i(Z)V

    .line 67
    .line 68
    .line 69
    iget-object v5, p0, LA1/d;->g:LW0/L;

    .line 70
    .line 71
    iget-wide v6, p0, LA1/d;->n:J

    .line 72
    .line 73
    iget v9, p0, LA1/d;->m:I

    .line 74
    .line 75
    const/4 v11, 0x0

    .line 76
    const/4 v8, 0x1

    .line 77
    const/4 v10, 0x0

    .line 78
    invoke-interface/range {v5 .. v11}, LW0/L;->d(JIIILW0/K;)V

    .line 79
    .line 80
    .line 81
    iget-wide v0, p0, LA1/d;->n:J

    .line 82
    .line 83
    iget-wide v2, p0, LA1/d;->k:J

    .line 84
    .line 85
    add-long/2addr v0, v2

    .line 86
    iput-wide v0, p0, LA1/d;->n:J

    .line 87
    .line 88
    iput v4, p0, LA1/d;->h:I

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_3
    iget-object v0, v2, Lp0/E;->a:[B

    .line 92
    .line 93
    invoke-virtual {p1}, Lp0/E;->a()I

    .line 94
    .line 95
    .line 96
    move-result v3

    .line 97
    iget v5, p0, LA1/d;->i:I

    .line 98
    .line 99
    const/16 v6, 0x10

    .line 100
    .line 101
    rsub-int/lit8 v5, v5, 0x10

    .line 102
    .line 103
    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    .line 104
    .line 105
    .line 106
    move-result v3

    .line 107
    iget v5, p0, LA1/d;->i:I

    .line 108
    .line 109
    invoke-virtual {p1, v5, v0, v3}, Lp0/E;->j(I[BI)V

    .line 110
    .line 111
    .line 112
    iget v0, p0, LA1/d;->i:I

    .line 113
    .line 114
    add-int/2addr v0, v3

    .line 115
    iput v0, p0, LA1/d;->i:I

    .line 116
    .line 117
    if-ne v0, v6, :cond_0

    .line 118
    .line 119
    iget-object v0, p0, LA1/d;->a:Lp0/D;

    .line 120
    .line 121
    invoke-virtual {v0, v4}, Lp0/D;->r(I)V

    .line 122
    .line 123
    .line 124
    invoke-static {v0}, LW0/a;->f(Lp0/D;)LW0/d;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    iget-object v3, p0, LA1/d;->l:Lm0/t;

    .line 129
    .line 130
    const-string v5, "audio/ac4"

    .line 131
    .line 132
    if-eqz v3, :cond_4

    .line 133
    .line 134
    iget v7, v0, LW0/d;->d:I

    .line 135
    .line 136
    iget v8, v3, Lm0/t;->G:I

    .line 137
    .line 138
    if-ne v7, v8, :cond_4

    .line 139
    .line 140
    iget v7, v0, LW0/d;->c:I

    .line 141
    .line 142
    iget v8, v3, Lm0/t;->H:I

    .line 143
    .line 144
    if-ne v7, v8, :cond_4

    .line 145
    .line 146
    iget-object v3, v3, Lm0/t;->o:Ljava/lang/String;

    .line 147
    .line 148
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 149
    .line 150
    .line 151
    move-result v3

    .line 152
    if-nez v3, :cond_5

    .line 153
    .line 154
    :cond_4
    new-instance v3, Lm0/s;

    .line 155
    .line 156
    invoke-direct {v3}, Lm0/s;-><init>()V

    .line 157
    .line 158
    .line 159
    iget-object v7, p0, LA1/d;->f:Ljava/lang/String;

    .line 160
    .line 161
    iput-object v7, v3, Lm0/s;->a:Ljava/lang/String;

    .line 162
    .line 163
    iget-object v7, p0, LA1/d;->e:Ljava/lang/String;

    .line 164
    .line 165
    invoke-static {v7}, Lm0/O;->p(Ljava/lang/String;)Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v7

    .line 169
    iput-object v7, v3, Lm0/s;->m:Ljava/lang/String;

    .line 170
    .line 171
    invoke-static {v5}, Lm0/O;->p(Ljava/lang/String;)Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v5

    .line 175
    iput-object v5, v3, Lm0/s;->n:Ljava/lang/String;

    .line 176
    .line 177
    iget v5, v0, LW0/d;->d:I

    .line 178
    .line 179
    iput v5, v3, Lm0/s;->F:I

    .line 180
    .line 181
    iget v5, v0, LW0/d;->c:I

    .line 182
    .line 183
    iput v5, v3, Lm0/s;->G:I

    .line 184
    .line 185
    iget-object v5, p0, LA1/d;->c:Ljava/lang/String;

    .line 186
    .line 187
    iput-object v5, v3, Lm0/s;->d:Ljava/lang/String;

    .line 188
    .line 189
    iget v5, p0, LA1/d;->d:I

    .line 190
    .line 191
    iput v5, v3, Lm0/s;->f:I

    .line 192
    .line 193
    new-instance v5, Lm0/t;

    .line 194
    .line 195
    invoke-direct {v5, v3}, Lm0/t;-><init>(Lm0/s;)V

    .line 196
    .line 197
    .line 198
    iput-object v5, p0, LA1/d;->l:Lm0/t;

    .line 199
    .line 200
    iget-object v3, p0, LA1/d;->g:LW0/L;

    .line 201
    .line 202
    invoke-interface {v3, v5}, LW0/L;->b(Lm0/t;)V

    .line 203
    .line 204
    .line 205
    :cond_5
    iget v3, v0, LW0/d;->e:I

    .line 206
    .line 207
    iput v3, p0, LA1/d;->m:I

    .line 208
    .line 209
    iget v0, v0, LW0/d;->f:I

    .line 210
    .line 211
    int-to-long v7, v0

    .line 212
    const-wide/32 v9, 0xf4240

    .line 213
    .line 214
    .line 215
    mul-long v7, v7, v9

    .line 216
    .line 217
    iget-object v0, p0, LA1/d;->l:Lm0/t;

    .line 218
    .line 219
    iget v0, v0, Lm0/t;->H:I

    .line 220
    .line 221
    int-to-long v9, v0

    .line 222
    div-long/2addr v7, v9

    .line 223
    iput-wide v7, p0, LA1/d;->k:J

    .line 224
    .line 225
    invoke-virtual {v2, v4}, Lp0/E;->L(I)V

    .line 226
    .line 227
    .line 228
    iget-object v0, p0, LA1/d;->g:LW0/L;

    .line 229
    .line 230
    invoke-interface {v0, v6, v2}, LW0/L;->e(ILp0/E;)V

    .line 231
    .line 232
    .line 233
    iput v1, p0, LA1/d;->h:I

    .line 234
    .line 235
    goto/16 :goto_0

    .line 236
    .line 237
    :cond_6
    :goto_2
    invoke-virtual {p1}, Lp0/E;->a()I

    .line 238
    .line 239
    .line 240
    move-result v0

    .line 241
    if-lez v0, :cond_0

    .line 242
    .line 243
    iget-boolean v0, p0, LA1/d;->j:Z

    .line 244
    .line 245
    const/16 v5, 0xac

    .line 246
    .line 247
    if-nez v0, :cond_8

    .line 248
    .line 249
    invoke-virtual {p1}, Lp0/E;->z()I

    .line 250
    .line 251
    .line 252
    move-result v0

    .line 253
    if-ne v0, v5, :cond_7

    .line 254
    .line 255
    const/4 v0, 0x1

    .line 256
    goto :goto_3

    .line 257
    :cond_7
    const/4 v0, 0x0

    .line 258
    :goto_3
    iput-boolean v0, p0, LA1/d;->j:Z

    .line 259
    .line 260
    goto :goto_2

    .line 261
    :cond_8
    invoke-virtual {p1}, Lp0/E;->z()I

    .line 262
    .line 263
    .line 264
    move-result v0

    .line 265
    if-ne v0, v5, :cond_9

    .line 266
    .line 267
    const/4 v5, 0x1

    .line 268
    goto :goto_4

    .line 269
    :cond_9
    const/4 v5, 0x0

    .line 270
    :goto_4
    iput-boolean v5, p0, LA1/d;->j:Z

    .line 271
    .line 272
    const/16 v5, 0x41

    .line 273
    .line 274
    const/16 v6, 0x40

    .line 275
    .line 276
    if-eq v0, v6, :cond_a

    .line 277
    .line 278
    if-ne v0, v5, :cond_6

    .line 279
    .line 280
    :cond_a
    if-ne v0, v5, :cond_b

    .line 281
    .line 282
    const/4 v0, 0x1

    .line 283
    goto :goto_5

    .line 284
    :cond_b
    const/4 v0, 0x0

    .line 285
    :goto_5
    iput v3, p0, LA1/d;->h:I

    .line 286
    .line 287
    iget-object v2, v2, Lp0/E;->a:[B

    .line 288
    .line 289
    const/16 v7, -0x54

    .line 290
    .line 291
    aput-byte v7, v2, v4

    .line 292
    .line 293
    if-eqz v0, :cond_c

    .line 294
    .line 295
    goto :goto_6

    .line 296
    :cond_c
    const/16 v5, 0x40

    .line 297
    .line 298
    :goto_6
    int-to-byte v0, v5

    .line 299
    aput-byte v0, v2, v3

    .line 300
    .line 301
    iput v1, p0, LA1/d;->i:I

    .line 302
    .line 303
    goto/16 :goto_0

    .line 304
    .line 305
    :cond_d
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
    iput-object v0, p0, LA1/d;->f:Ljava/lang/String;

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
    iput-object p1, p0, LA1/d;->g:LW0/L;

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
    iput-wide p2, p0, LA1/d;->n:J

    .line 2
    .line 3
    return-void
.end method
