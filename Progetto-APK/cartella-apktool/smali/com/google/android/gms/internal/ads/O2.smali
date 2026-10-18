.class public final Lcom/google/android/gms/internal/ads/O2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/F2;


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/jr;

.field public final b:LW0/b;

.field public final c:Ljava/lang/String;

.field public final d:I

.field public e:Lcom/google/android/gms/internal/ads/e0;

.field public f:Ljava/lang/String;

.field public g:I

.field public h:I

.field public i:Z

.field public j:Z

.field public k:J

.field public l:I

.field public m:J


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/google/android/gms/internal/ads/O2;->g:I

    .line 6
    .line 7
    new-instance v1, Lcom/google/android/gms/internal/ads/jr;

    .line 8
    .line 9
    const/4 v2, 0x4

    .line 10
    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/jr;-><init>(I)V

    .line 11
    .line 12
    .line 13
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/O2;->a:Lcom/google/android/gms/internal/ads/jr;

    .line 14
    .line 15
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/jr;->a:[B

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
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/O2;->b:LW0/b;

    .line 26
    .line 27
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/O2;->m:J

    .line 33
    .line 34
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/O2;->c:Ljava/lang/String;

    .line 35
    .line 36
    iput p2, p0, Lcom/google/android/gms/internal/ads/O2;->d:I

    .line 37
    .line 38
    return-void
.end method


# virtual methods
.method public final b(Lcom/google/android/gms/internal/ads/jr;)V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/O2;->e:Lcom/google/android/gms/internal/ads/e0;

    .line 2
    .line 3
    invoke-static {v0}, Lo3/r;->x(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/jr;->o()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-lez v0, :cond_a

    .line 11
    .line 12
    iget v0, p0, Lcom/google/android/gms/internal/ads/O2;->g:I

    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    const/4 v2, 0x2

    .line 16
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/O2;->a:Lcom/google/android/gms/internal/ads/jr;

    .line 17
    .line 18
    const/4 v4, 0x0

    .line 19
    if-eqz v0, :cond_5

    .line 20
    .line 21
    if-eq v0, v1, :cond_2

    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/jr;->o()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    iget v2, p0, Lcom/google/android/gms/internal/ads/O2;->l:I

    .line 28
    .line 29
    iget v3, p0, Lcom/google/android/gms/internal/ads/O2;->h:I

    .line 30
    .line 31
    sub-int/2addr v2, v3

    .line 32
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/O2;->e:Lcom/google/android/gms/internal/ads/e0;

    .line 37
    .line 38
    invoke-interface {v2, v0, p1}, Lcom/google/android/gms/internal/ads/e0;->f(ILcom/google/android/gms/internal/ads/jr;)V

    .line 39
    .line 40
    .line 41
    iget v2, p0, Lcom/google/android/gms/internal/ads/O2;->h:I

    .line 42
    .line 43
    add-int/2addr v2, v0

    .line 44
    iput v2, p0, Lcom/google/android/gms/internal/ads/O2;->h:I

    .line 45
    .line 46
    iget v0, p0, Lcom/google/android/gms/internal/ads/O2;->l:I

    .line 47
    .line 48
    if-lt v2, v0, :cond_0

    .line 49
    .line 50
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/O2;->m:J

    .line 51
    .line 52
    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    cmp-long v0, v2, v5

    .line 58
    .line 59
    if-eqz v0, :cond_1

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_1
    const/4 v1, 0x0

    .line 63
    :goto_1
    invoke-static {v1}, Lo3/r;->M(Z)V

    .line 64
    .line 65
    .line 66
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/O2;->e:Lcom/google/android/gms/internal/ads/e0;

    .line 67
    .line 68
    iget-wide v6, p0, Lcom/google/android/gms/internal/ads/O2;->m:J

    .line 69
    .line 70
    iget v9, p0, Lcom/google/android/gms/internal/ads/O2;->l:I

    .line 71
    .line 72
    const/4 v11, 0x0

    .line 73
    const/4 v8, 0x1

    .line 74
    const/4 v10, 0x0

    .line 75
    invoke-interface/range {v5 .. v11}, Lcom/google/android/gms/internal/ads/e0;->b(JIIILcom/google/android/gms/internal/ads/d0;)V

    .line 76
    .line 77
    .line 78
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/O2;->m:J

    .line 79
    .line 80
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/O2;->k:J

    .line 81
    .line 82
    add-long/2addr v0, v2

    .line 83
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/O2;->m:J

    .line 84
    .line 85
    iput v4, p0, Lcom/google/android/gms/internal/ads/O2;->h:I

    .line 86
    .line 87
    iput v4, p0, Lcom/google/android/gms/internal/ads/O2;->g:I

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/jr;->o()I

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    iget v5, p0, Lcom/google/android/gms/internal/ads/O2;->h:I

    .line 95
    .line 96
    const/4 v6, 0x4

    .line 97
    rsub-int/lit8 v5, v5, 0x4

    .line 98
    .line 99
    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    iget-object v5, v3, Lcom/google/android/gms/internal/ads/jr;->a:[B

    .line 104
    .line 105
    iget v7, p0, Lcom/google/android/gms/internal/ads/O2;->h:I

    .line 106
    .line 107
    invoke-virtual {p1, v7, v5, v0}, Lcom/google/android/gms/internal/ads/jr;->f(I[BI)V

    .line 108
    .line 109
    .line 110
    iget v5, p0, Lcom/google/android/gms/internal/ads/O2;->h:I

    .line 111
    .line 112
    add-int/2addr v5, v0

    .line 113
    iput v5, p0, Lcom/google/android/gms/internal/ads/O2;->h:I

    .line 114
    .line 115
    if-lt v5, v6, :cond_0

    .line 116
    .line 117
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/jr;->j(I)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/jr;->r()I

    .line 121
    .line 122
    .line 123
    move-result v0

    .line 124
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/O2;->b:LW0/b;

    .line 125
    .line 126
    invoke-virtual {v5, v0}, LW0/b;->b(I)Z

    .line 127
    .line 128
    .line 129
    move-result v0

    .line 130
    if-nez v0, :cond_3

    .line 131
    .line 132
    iput v4, p0, Lcom/google/android/gms/internal/ads/O2;->h:I

    .line 133
    .line 134
    iput v1, p0, Lcom/google/android/gms/internal/ads/O2;->g:I

    .line 135
    .line 136
    goto/16 :goto_0

    .line 137
    .line 138
    :cond_3
    iget v0, v5, LW0/b;->c:I

    .line 139
    .line 140
    iput v0, p0, Lcom/google/android/gms/internal/ads/O2;->l:I

    .line 141
    .line 142
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/O2;->i:Z

    .line 143
    .line 144
    if-nez v0, :cond_4

    .line 145
    .line 146
    iget v0, v5, LW0/b;->g:I

    .line 147
    .line 148
    int-to-long v7, v0

    .line 149
    iget v0, v5, LW0/b;->d:I

    .line 150
    .line 151
    const-wide/32 v9, 0xf4240

    .line 152
    .line 153
    .line 154
    mul-long v7, v7, v9

    .line 155
    .line 156
    int-to-long v9, v0

    .line 157
    div-long/2addr v7, v9

    .line 158
    iput-wide v7, p0, Lcom/google/android/gms/internal/ads/O2;->k:J

    .line 159
    .line 160
    new-instance v0, Lcom/google/android/gms/internal/ads/K;

    .line 161
    .line 162
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/K;-><init>()V

    .line 163
    .line 164
    .line 165
    iget-object v7, p0, Lcom/google/android/gms/internal/ads/O2;->f:Ljava/lang/String;

    .line 166
    .line 167
    iput-object v7, v0, Lcom/google/android/gms/internal/ads/K;->a:Ljava/lang/String;

    .line 168
    .line 169
    iget-object v7, v5, LW0/b;->b:Ljava/lang/String;

    .line 170
    .line 171
    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ads/K;->f(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    const/16 v7, 0x1000

    .line 175
    .line 176
    iput v7, v0, Lcom/google/android/gms/internal/ads/K;->m:I

    .line 177
    .line 178
    iget v7, v5, LW0/b;->e:I

    .line 179
    .line 180
    iput v7, v0, Lcom/google/android/gms/internal/ads/K;->z:I

    .line 181
    .line 182
    iget v5, v5, LW0/b;->d:I

    .line 183
    .line 184
    iput v5, v0, Lcom/google/android/gms/internal/ads/K;->A:I

    .line 185
    .line 186
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/O2;->c:Ljava/lang/String;

    .line 187
    .line 188
    iput-object v5, v0, Lcom/google/android/gms/internal/ads/K;->d:Ljava/lang/String;

    .line 189
    .line 190
    iget v5, p0, Lcom/google/android/gms/internal/ads/O2;->d:I

    .line 191
    .line 192
    iput v5, v0, Lcom/google/android/gms/internal/ads/K;->f:I

    .line 193
    .line 194
    new-instance v5, Lcom/google/android/gms/internal/ads/p0;

    .line 195
    .line 196
    invoke-direct {v5, v0}, Lcom/google/android/gms/internal/ads/p0;-><init>(Lcom/google/android/gms/internal/ads/K;)V

    .line 197
    .line 198
    .line 199
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/O2;->e:Lcom/google/android/gms/internal/ads/e0;

    .line 200
    .line 201
    invoke-interface {v0, v5}, Lcom/google/android/gms/internal/ads/e0;->d(Lcom/google/android/gms/internal/ads/p0;)V

    .line 202
    .line 203
    .line 204
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/O2;->i:Z

    .line 205
    .line 206
    :cond_4
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/jr;->j(I)V

    .line 207
    .line 208
    .line 209
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/O2;->e:Lcom/google/android/gms/internal/ads/e0;

    .line 210
    .line 211
    invoke-interface {v0, v6, v3}, Lcom/google/android/gms/internal/ads/e0;->f(ILcom/google/android/gms/internal/ads/jr;)V

    .line 212
    .line 213
    .line 214
    iput v2, p0, Lcom/google/android/gms/internal/ads/O2;->g:I

    .line 215
    .line 216
    goto/16 :goto_0

    .line 217
    .line 218
    :cond_5
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/jr;->a:[B

    .line 219
    .line 220
    iget v5, p1, Lcom/google/android/gms/internal/ads/jr;->b:I

    .line 221
    .line 222
    iget v6, p1, Lcom/google/android/gms/internal/ads/jr;->c:I

    .line 223
    .line 224
    :goto_2
    if-ge v5, v6, :cond_9

    .line 225
    .line 226
    add-int/lit8 v7, v5, 0x1

    .line 227
    .line 228
    aget-byte v8, v0, v5

    .line 229
    .line 230
    and-int/lit16 v9, v8, 0xff

    .line 231
    .line 232
    const/16 v10, 0xff

    .line 233
    .line 234
    if-ne v9, v10, :cond_6

    .line 235
    .line 236
    const/4 v9, 0x1

    .line 237
    goto :goto_3

    .line 238
    :cond_6
    const/4 v9, 0x0

    .line 239
    :goto_3
    iget-boolean v10, p0, Lcom/google/android/gms/internal/ads/O2;->j:Z

    .line 240
    .line 241
    if-eqz v10, :cond_7

    .line 242
    .line 243
    and-int/lit16 v8, v8, 0xe0

    .line 244
    .line 245
    const/16 v10, 0xe0

    .line 246
    .line 247
    if-ne v8, v10, :cond_7

    .line 248
    .line 249
    const/4 v8, 0x1

    .line 250
    goto :goto_4

    .line 251
    :cond_7
    const/4 v8, 0x0

    .line 252
    :goto_4
    iput-boolean v9, p0, Lcom/google/android/gms/internal/ads/O2;->j:Z

    .line 253
    .line 254
    if-eqz v8, :cond_8

    .line 255
    .line 256
    invoke-virtual {p1, v7}, Lcom/google/android/gms/internal/ads/jr;->j(I)V

    .line 257
    .line 258
    .line 259
    iput-boolean v4, p0, Lcom/google/android/gms/internal/ads/O2;->j:Z

    .line 260
    .line 261
    iget-object v3, v3, Lcom/google/android/gms/internal/ads/jr;->a:[B

    .line 262
    .line 263
    aget-byte v0, v0, v5

    .line 264
    .line 265
    aput-byte v0, v3, v1

    .line 266
    .line 267
    iput v2, p0, Lcom/google/android/gms/internal/ads/O2;->h:I

    .line 268
    .line 269
    iput v1, p0, Lcom/google/android/gms/internal/ads/O2;->g:I

    .line 270
    .line 271
    goto/16 :goto_0

    .line 272
    .line 273
    :cond_8
    move v5, v7

    .line 274
    goto :goto_2

    .line 275
    :cond_9
    invoke-virtual {p1, v6}, Lcom/google/android/gms/internal/ads/jr;->j(I)V

    .line 276
    .line 277
    .line 278
    goto/16 :goto_0

    .line 279
    .line 280
    :cond_a
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
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/O2;->f:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/O2;->e:Lcom/google/android/gms/internal/ads/e0;

    .line 22
    .line 23
    return-void
.end method

.method public final d(IJ)V
    .locals 0

    .line 1
    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/O2;->m:J

    .line 2
    .line 3
    return-void
.end method

.method public final zzc(Z)V
    .locals 0

    return-void
.end method

.method public final zze()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/O2;->g:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/O2;->h:I

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/O2;->j:Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/O2;->m:J

    return-void
.end method
