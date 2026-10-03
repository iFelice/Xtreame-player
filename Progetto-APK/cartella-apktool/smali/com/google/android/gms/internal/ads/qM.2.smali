.class public final Lcom/google/android/gms/internal/ads/qM;
.super Lcom/google/android/gms/internal/ads/Hi;
.source "SourceFile"


# instance fields
.field public i:I

.field public j:Z

.field public k:I

.field public l:J

.field public m:I

.field public n:[B

.field public o:I

.field public p:I

.field public q:[B


# virtual methods
.method public final b(Ljava/nio/ByteBuffer;)V
    .locals 9

    .line 1
    :goto_0
    invoke-virtual {p1}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_b

    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Hi;->g:Ljava/nio/ByteBuffer;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_b

    .line 14
    .line 15
    iget v0, p0, Lcom/google/android/gms/internal/ads/qM;->k:I

    .line 16
    .line 17
    const/16 v1, 0x400

    .line 18
    .line 19
    const/4 v2, 0x1

    .line 20
    if-eqz v0, :cond_7

    .line 21
    .line 22
    iget v0, p0, Lcom/google/android/gms/internal/ads/qM;->o:I

    .line 23
    .line 24
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/qM;->n:[B

    .line 25
    .line 26
    array-length v3, v3

    .line 27
    const/4 v4, 0x0

    .line 28
    if-ge v0, v3, :cond_0

    .line 29
    .line 30
    const/4 v0, 0x1

    .line 31
    goto :goto_1

    .line 32
    :cond_0
    const/4 v0, 0x0

    .line 33
    :goto_1
    invoke-static {v0}, Lo3/r;->M(Z)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    add-int/2addr v3, v2

    .line 45
    :goto_2
    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    .line 46
    .line 47
    .line 48
    move-result v5

    .line 49
    if-ge v3, v5, :cond_2

    .line 50
    .line 51
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->get(I)B

    .line 52
    .line 53
    .line 54
    move-result v5

    .line 55
    add-int/lit8 v6, v3, -0x1

    .line 56
    .line 57
    invoke-virtual {p1, v6}, Ljava/nio/ByteBuffer;->get(I)B

    .line 58
    .line 59
    .line 60
    move-result v6

    .line 61
    and-int/lit16 v6, v6, 0xff

    .line 62
    .line 63
    shl-int/lit8 v5, v5, 0x8

    .line 64
    .line 65
    or-int/2addr v5, v6

    .line 66
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    .line 67
    .line 68
    .line 69
    move-result v5

    .line 70
    if-le v5, v1, :cond_1

    .line 71
    .line 72
    iget v1, p0, Lcom/google/android/gms/internal/ads/qM;->i:I

    .line 73
    .line 74
    div-int/2addr v3, v1

    .line 75
    mul-int v3, v3, v1

    .line 76
    .line 77
    goto :goto_3

    .line 78
    :cond_1
    add-int/lit8 v3, v3, 0x2

    .line 79
    .line 80
    goto :goto_2

    .line 81
    :cond_2
    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    .line 82
    .line 83
    .line 84
    move-result v3

    .line 85
    :goto_3
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    sub-int v1, v3, v1

    .line 90
    .line 91
    iget v5, p0, Lcom/google/android/gms/internal/ads/qM;->o:I

    .line 92
    .line 93
    iget v6, p0, Lcom/google/android/gms/internal/ads/qM;->p:I

    .line 94
    .line 95
    add-int v7, v5, v6

    .line 96
    .line 97
    iget-object v8, p0, Lcom/google/android/gms/internal/ads/qM;->n:[B

    .line 98
    .line 99
    array-length v8, v8

    .line 100
    if-ge v7, v8, :cond_3

    .line 101
    .line 102
    sub-int/2addr v8, v7

    .line 103
    goto :goto_4

    .line 104
    :cond_3
    sub-int/2addr v8, v5

    .line 105
    sub-int v7, v6, v8

    .line 106
    .line 107
    sub-int v8, v5, v7

    .line 108
    .line 109
    :goto_4
    invoke-static {v1, v8}, Ljava/lang/Math;->min(II)I

    .line 110
    .line 111
    .line 112
    move-result v5

    .line 113
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    .line 114
    .line 115
    .line 116
    move-result v6

    .line 117
    add-int/2addr v6, v5

    .line 118
    invoke-virtual {p1, v6}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 119
    .line 120
    .line 121
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/qM;->n:[B

    .line 122
    .line 123
    invoke-virtual {p1, v6, v7, v5}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 124
    .line 125
    .line 126
    iget v6, p0, Lcom/google/android/gms/internal/ads/qM;->p:I

    .line 127
    .line 128
    add-int/2addr v6, v5

    .line 129
    iput v6, p0, Lcom/google/android/gms/internal/ads/qM;->p:I

    .line 130
    .line 131
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/qM;->n:[B

    .line 132
    .line 133
    array-length v5, v5

    .line 134
    if-gt v6, v5, :cond_4

    .line 135
    .line 136
    const/4 v5, 0x1

    .line 137
    goto :goto_5

    .line 138
    :cond_4
    const/4 v5, 0x0

    .line 139
    :goto_5
    invoke-static {v5}, Lo3/r;->M(Z)V

    .line 140
    .line 141
    .line 142
    if-ge v3, v0, :cond_5

    .line 143
    .line 144
    if-ge v1, v8, :cond_5

    .line 145
    .line 146
    goto :goto_6

    .line 147
    :cond_5
    const/4 v2, 0x0

    .line 148
    :goto_6
    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/ads/qM;->i(Z)V

    .line 149
    .line 150
    .line 151
    if-eqz v2, :cond_6

    .line 152
    .line 153
    iput v4, p0, Lcom/google/android/gms/internal/ads/qM;->k:I

    .line 154
    .line 155
    iput v4, p0, Lcom/google/android/gms/internal/ads/qM;->m:I

    .line 156
    .line 157
    :cond_6
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 158
    .line 159
    .line 160
    goto/16 :goto_0

    .line 161
    .line 162
    :cond_7
    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    .line 163
    .line 164
    .line 165
    move-result v0

    .line 166
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    .line 167
    .line 168
    .line 169
    move-result v3

    .line 170
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/qM;->n:[B

    .line 171
    .line 172
    array-length v4, v4

    .line 173
    add-int/2addr v3, v4

    .line 174
    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    .line 175
    .line 176
    .line 177
    move-result v3

    .line 178
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 179
    .line 180
    .line 181
    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    .line 182
    .line 183
    .line 184
    move-result v3

    .line 185
    add-int/lit8 v3, v3, -0x1

    .line 186
    .line 187
    :goto_7
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    .line 188
    .line 189
    .line 190
    move-result v4

    .line 191
    if-lt v3, v4, :cond_9

    .line 192
    .line 193
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->get(I)B

    .line 194
    .line 195
    .line 196
    move-result v4

    .line 197
    add-int/lit8 v5, v3, -0x1

    .line 198
    .line 199
    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->get(I)B

    .line 200
    .line 201
    .line 202
    move-result v5

    .line 203
    and-int/lit16 v5, v5, 0xff

    .line 204
    .line 205
    shl-int/lit8 v4, v4, 0x8

    .line 206
    .line 207
    or-int/2addr v4, v5

    .line 208
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    .line 209
    .line 210
    .line 211
    move-result v4

    .line 212
    if-le v4, v1, :cond_8

    .line 213
    .line 214
    iget v1, p0, Lcom/google/android/gms/internal/ads/qM;->i:I

    .line 215
    .line 216
    div-int/2addr v3, v1

    .line 217
    mul-int v3, v3, v1

    .line 218
    .line 219
    add-int/2addr v3, v1

    .line 220
    goto :goto_8

    .line 221
    :cond_8
    add-int/lit8 v3, v3, -0x2

    .line 222
    .line 223
    goto :goto_7

    .line 224
    :cond_9
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    .line 225
    .line 226
    .line 227
    move-result v3

    .line 228
    :goto_8
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    .line 229
    .line 230
    .line 231
    move-result v1

    .line 232
    if-ne v3, v1, :cond_a

    .line 233
    .line 234
    iput v2, p0, Lcom/google/android/gms/internal/ads/qM;->k:I

    .line 235
    .line 236
    goto :goto_9

    .line 237
    :cond_a
    invoke-virtual {p1}, Ljava/nio/Buffer;->capacity()I

    .line 238
    .line 239
    .line 240
    move-result v1

    .line 241
    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    .line 242
    .line 243
    .line 244
    move-result v1

    .line 245
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 246
    .line 247
    .line 248
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    .line 249
    .line 250
    .line 251
    move-result v1

    .line 252
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/Hi;->d(I)Ljava/nio/ByteBuffer;

    .line 253
    .line 254
    .line 255
    move-result-object v1

    .line 256
    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 257
    .line 258
    .line 259
    move-result-object v1

    .line 260
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 261
    .line 262
    .line 263
    :goto_9
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 264
    .line 265
    .line 266
    goto/16 :goto_0

    .line 267
    .line 268
    :cond_b
    return-void
.end method

.method public final c(Lcom/google/android/gms/internal/ads/Th;)Lcom/google/android/gms/internal/ads/Th;
    .locals 2

    .line 1
    iget v0, p1, Lcom/google/android/gms/internal/ads/Th;->c:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-ne v0, v1, :cond_1

    .line 5
    .line 6
    iget v0, p1, Lcom/google/android/gms/internal/ads/Th;->a:I

    .line 7
    .line 8
    const/4 v1, -0x1

    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    sget-object p1, Lcom/google/android/gms/internal/ads/Th;->e:Lcom/google/android/gms/internal/ads/Th;

    .line 12
    .line 13
    :cond_0
    return-object p1

    .line 14
    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/ei;

    .line 15
    .line 16
    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/ei;-><init>(Lcom/google/android/gms/internal/ads/Th;)V

    .line 17
    .line 18
    .line 19
    throw v0
.end method

.method public final e()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/qM;->zzg()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Hi;->b:Lcom/google/android/gms/internal/ads/Th;

    .line 8
    .line 9
    iget v1, v0, Lcom/google/android/gms/internal/ads/Th;->b:I

    .line 10
    .line 11
    add-int/2addr v1, v1

    .line 12
    iput v1, p0, Lcom/google/android/gms/internal/ads/qM;->i:I

    .line 13
    .line 14
    iget v0, v0, Lcom/google/android/gms/internal/ads/Th;->a:I

    .line 15
    .line 16
    int-to-long v2, v0

    .line 17
    const-wide/32 v4, 0x186a0

    .line 18
    .line 19
    .line 20
    mul-long v4, v4, v2

    .line 21
    .line 22
    const-wide/32 v2, 0xf4240

    .line 23
    .line 24
    .line 25
    div-long/2addr v4, v2

    .line 26
    long-to-int v0, v4

    .line 27
    div-int/lit8 v0, v0, 0x2

    .line 28
    .line 29
    div-int/2addr v0, v1

    .line 30
    mul-int v0, v0, v1

    .line 31
    .line 32
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/qM;->n:[B

    .line 33
    .line 34
    array-length v1, v1

    .line 35
    add-int/2addr v0, v0

    .line 36
    if-eq v1, v0, :cond_0

    .line 37
    .line 38
    new-array v1, v0, [B

    .line 39
    .line 40
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/qM;->n:[B

    .line 41
    .line 42
    new-array v0, v0, [B

    .line 43
    .line 44
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/qM;->q:[B

    .line 45
    .line 46
    :cond_0
    const/4 v0, 0x0

    .line 47
    iput v0, p0, Lcom/google/android/gms/internal/ads/qM;->k:I

    .line 48
    .line 49
    const-wide/16 v1, 0x0

    .line 50
    .line 51
    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/qM;->l:J

    .line 52
    .line 53
    iput v0, p0, Lcom/google/android/gms/internal/ads/qM;->m:I

    .line 54
    .line 55
    iput v0, p0, Lcom/google/android/gms/internal/ads/qM;->o:I

    .line 56
    .line 57
    iput v0, p0, Lcom/google/android/gms/internal/ads/qM;->p:I

    .line 58
    .line 59
    return-void
.end method

.method public final f()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/qM;->p:I

    .line 2
    .line 3
    if-lez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/qM;->i(Z)V

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lcom/google/android/gms/internal/ads/qM;->m:I

    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public final g()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/qM;->j:Z

    .line 3
    .line 4
    sget-object v0, Lcom/google/android/gms/internal/ads/Et;->f:[B

    .line 5
    .line 6
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/qM;->n:[B

    .line 7
    .line 8
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/qM;->q:[B

    .line 9
    .line 10
    return-void
.end method

.method public final h(I)I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Hi;->b:Lcom/google/android/gms/internal/ads/Th;

    .line 2
    .line 3
    iget v0, v0, Lcom/google/android/gms/internal/ads/Th;->a:I

    .line 4
    .line 5
    int-to-long v0, v0

    .line 6
    const-wide/32 v2, 0x1e8480

    .line 7
    .line 8
    .line 9
    mul-long v2, v2, v0

    .line 10
    .line 11
    const-wide/32 v0, 0xf4240

    .line 12
    .line 13
    .line 14
    div-long/2addr v2, v0

    .line 15
    long-to-int v0, v2

    .line 16
    iget v1, p0, Lcom/google/android/gms/internal/ads/qM;->m:I

    .line 17
    .line 18
    sub-int/2addr v0, v1

    .line 19
    iget v1, p0, Lcom/google/android/gms/internal/ads/qM;->i:I

    .line 20
    .line 21
    mul-int v0, v0, v1

    .line 22
    .line 23
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/qM;->n:[B

    .line 24
    .line 25
    array-length v1, v1

    .line 26
    const/4 v2, 0x1

    .line 27
    shr-int/2addr v1, v2

    .line 28
    sub-int/2addr v0, v1

    .line 29
    if-ltz v0, :cond_0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const/4 v2, 0x0

    .line 33
    :goto_0
    invoke-static {v2}, Lo3/r;->M(Z)V

    .line 34
    .line 35
    .line 36
    int-to-float p1, p1

    .line 37
    const v1, 0x3e4ccccd    # 0.2f

    .line 38
    .line 39
    .line 40
    mul-float p1, p1, v1

    .line 41
    .line 42
    const/high16 v1, 0x3f000000    # 0.5f

    .line 43
    .line 44
    add-float/2addr p1, v1

    .line 45
    int-to-float v0, v0

    .line 46
    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    float-to-int p1, p1

    .line 51
    iget v0, p0, Lcom/google/android/gms/internal/ads/qM;->i:I

    .line 52
    .line 53
    div-int/2addr p1, v0

    .line 54
    mul-int p1, p1, v0

    .line 55
    .line 56
    return p1
.end method

.method public final i(Z)V
    .locals 7

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/qM;->p:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/qM;->n:[B

    .line 4
    .line 5
    array-length v1, v1

    .line 6
    const/4 v2, 0x1

    .line 7
    if-eq v0, v1, :cond_1

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    return-void

    .line 14
    :cond_1
    :goto_0
    iget v3, p0, Lcom/google/android/gms/internal/ads/qM;->m:I

    .line 15
    .line 16
    const/4 v4, 0x0

    .line 17
    if-nez v3, :cond_4

    .line 18
    .line 19
    if-eqz p1, :cond_2

    .line 20
    .line 21
    const/4 p1, 0x3

    .line 22
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/ads/qM;->j(II)V

    .line 23
    .line 24
    .line 25
    move p1, v0

    .line 26
    :goto_1
    move v1, p1

    .line 27
    goto :goto_3

    .line 28
    :cond_2
    shr-int/lit8 p1, v1, 0x1

    .line 29
    .line 30
    if-lt v0, p1, :cond_3

    .line 31
    .line 32
    const/4 p1, 0x1

    .line 33
    goto :goto_2

    .line 34
    :cond_3
    const/4 p1, 0x0

    .line 35
    :goto_2
    invoke-static {p1}, Lo3/r;->M(Z)V

    .line 36
    .line 37
    .line 38
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/qM;->n:[B

    .line 39
    .line 40
    array-length p1, p1

    .line 41
    shr-int/2addr p1, v2

    .line 42
    invoke-virtual {p0, p1, v4}, Lcom/google/android/gms/internal/ads/qM;->j(II)V

    .line 43
    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_4
    shr-int/2addr v1, v2

    .line 47
    sub-int v3, v0, v1

    .line 48
    .line 49
    if-eqz p1, :cond_5

    .line 50
    .line 51
    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/ads/qM;->h(I)I

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/qM;->n:[B

    .line 56
    .line 57
    array-length v5, v5

    .line 58
    shr-int/2addr v5, v2

    .line 59
    add-int/2addr p1, v5

    .line 60
    const/4 v5, 0x2

    .line 61
    invoke-virtual {p0, p1, v5}, Lcom/google/android/gms/internal/ads/qM;->j(II)V

    .line 62
    .line 63
    .line 64
    add-int/2addr v1, v3

    .line 65
    move v6, v1

    .line 66
    move v1, p1

    .line 67
    move p1, v6

    .line 68
    goto :goto_3

    .line 69
    :cond_5
    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/ads/qM;->h(I)I

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    invoke-virtual {p0, p1, v2}, Lcom/google/android/gms/internal/ads/qM;->j(II)V

    .line 74
    .line 75
    .line 76
    move v1, p1

    .line 77
    move p1, v3

    .line 78
    :goto_3
    iget v3, p0, Lcom/google/android/gms/internal/ads/qM;->i:I

    .line 79
    .line 80
    rem-int v3, p1, v3

    .line 81
    .line 82
    if-nez v3, :cond_6

    .line 83
    .line 84
    const/4 v3, 0x1

    .line 85
    goto :goto_4

    .line 86
    :cond_6
    const/4 v3, 0x0

    .line 87
    :goto_4
    const-string v5, "bytesConsumed is not aligned to frame size: %s"

    .line 88
    .line 89
    invoke-static {v5, p1}, La/r;->f(Ljava/lang/String;I)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v5

    .line 93
    if-eqz v3, :cond_8

    .line 94
    .line 95
    if-lt v0, v1, :cond_7

    .line 96
    .line 97
    goto :goto_5

    .line 98
    :cond_7
    const/4 v2, 0x0

    .line 99
    :goto_5
    invoke-static {v2}, Lo3/r;->M(Z)V

    .line 100
    .line 101
    .line 102
    iget v0, p0, Lcom/google/android/gms/internal/ads/qM;->p:I

    .line 103
    .line 104
    sub-int/2addr v0, p1

    .line 105
    iput v0, p0, Lcom/google/android/gms/internal/ads/qM;->p:I

    .line 106
    .line 107
    iget v0, p0, Lcom/google/android/gms/internal/ads/qM;->o:I

    .line 108
    .line 109
    add-int/2addr v0, p1

    .line 110
    iput v0, p0, Lcom/google/android/gms/internal/ads/qM;->o:I

    .line 111
    .line 112
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/qM;->n:[B

    .line 113
    .line 114
    array-length v2, v2

    .line 115
    rem-int/2addr v0, v2

    .line 116
    iput v0, p0, Lcom/google/android/gms/internal/ads/qM;->o:I

    .line 117
    .line 118
    iget v0, p0, Lcom/google/android/gms/internal/ads/qM;->m:I

    .line 119
    .line 120
    iget v2, p0, Lcom/google/android/gms/internal/ads/qM;->i:I

    .line 121
    .line 122
    div-int v3, v1, v2

    .line 123
    .line 124
    add-int/2addr v3, v0

    .line 125
    iput v3, p0, Lcom/google/android/gms/internal/ads/qM;->m:I

    .line 126
    .line 127
    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/qM;->l:J

    .line 128
    .line 129
    sub-int/2addr p1, v1

    .line 130
    div-int/2addr p1, v2

    .line 131
    int-to-long v0, p1

    .line 132
    add-long/2addr v3, v0

    .line 133
    iput-wide v3, p0, Lcom/google/android/gms/internal/ads/qM;->l:J

    .line 134
    .line 135
    return-void

    .line 136
    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 137
    .line 138
    invoke-direct {p1, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    throw p1
.end method

.method public final j(II)V
    .locals 9

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/qM;->p:I

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-lt v0, p1, :cond_1

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_1
    const/4 v0, 0x0

    .line 13
    :goto_0
    invoke-static {v0}, Lo3/r;->J(Z)V

    .line 14
    .line 15
    .line 16
    const/4 v0, 0x2

    .line 17
    if-ne p2, v0, :cond_4

    .line 18
    .line 19
    iget v3, p0, Lcom/google/android/gms/internal/ads/qM;->o:I

    .line 20
    .line 21
    iget v4, p0, Lcom/google/android/gms/internal/ads/qM;->p:I

    .line 22
    .line 23
    add-int v5, v3, v4

    .line 24
    .line 25
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/qM;->n:[B

    .line 26
    .line 27
    array-length v7, v6

    .line 28
    if-gt v5, v7, :cond_2

    .line 29
    .line 30
    sub-int/2addr v5, p1

    .line 31
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/qM;->q:[B

    .line 32
    .line 33
    invoke-static {v6, v5, v3, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 34
    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_2
    sub-int v3, v7, v3

    .line 38
    .line 39
    sub-int/2addr v4, v3

    .line 40
    if-lt v4, p1, :cond_3

    .line 41
    .line 42
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/qM;->q:[B

    .line 43
    .line 44
    sub-int/2addr v4, p1

    .line 45
    invoke-static {v6, v4, v3, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 46
    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_3
    sub-int v3, p1, v4

    .line 50
    .line 51
    sub-int/2addr v7, v3

    .line 52
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/qM;->q:[B

    .line 53
    .line 54
    invoke-static {v6, v7, v5, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 55
    .line 56
    .line 57
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/qM;->n:[B

    .line 58
    .line 59
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/qM;->q:[B

    .line 60
    .line 61
    invoke-static {v5, v2, v6, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 62
    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_4
    iget v3, p0, Lcom/google/android/gms/internal/ads/qM;->o:I

    .line 66
    .line 67
    add-int v4, v3, p1

    .line 68
    .line 69
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/qM;->n:[B

    .line 70
    .line 71
    array-length v6, v5

    .line 72
    if-gt v4, v6, :cond_5

    .line 73
    .line 74
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/qM;->q:[B

    .line 75
    .line 76
    invoke-static {v5, v3, v4, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 77
    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_5
    sub-int/2addr v6, v3

    .line 81
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/qM;->q:[B

    .line 82
    .line 83
    invoke-static {v5, v3, v4, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 84
    .line 85
    .line 86
    sub-int v3, p1, v6

    .line 87
    .line 88
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/qM;->n:[B

    .line 89
    .line 90
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/qM;->q:[B

    .line 91
    .line 92
    invoke-static {v4, v2, v5, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 93
    .line 94
    .line 95
    :goto_1
    iget v3, p0, Lcom/google/android/gms/internal/ads/qM;->i:I

    .line 96
    .line 97
    rem-int v3, p1, v3

    .line 98
    .line 99
    if-nez v3, :cond_6

    .line 100
    .line 101
    const/4 v3, 0x1

    .line 102
    goto :goto_2

    .line 103
    :cond_6
    const/4 v3, 0x0

    .line 104
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    .line 105
    .line 106
    const-string v5, "sizeToOutput is not aligned to frame size: "

    .line 107
    .line 108
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v4

    .line 118
    invoke-static {v3, v4}, Lo3/r;->L(ZLjava/lang/String;)V

    .line 119
    .line 120
    .line 121
    iget v3, p0, Lcom/google/android/gms/internal/ads/qM;->o:I

    .line 122
    .line 123
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/qM;->n:[B

    .line 124
    .line 125
    array-length v4, v4

    .line 126
    if-ge v3, v4, :cond_7

    .line 127
    .line 128
    const/4 v3, 0x1

    .line 129
    goto :goto_3

    .line 130
    :cond_7
    const/4 v3, 0x0

    .line 131
    :goto_3
    invoke-static {v3}, Lo3/r;->M(Z)V

    .line 132
    .line 133
    .line 134
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/qM;->q:[B

    .line 135
    .line 136
    iget v4, p0, Lcom/google/android/gms/internal/ads/qM;->i:I

    .line 137
    .line 138
    rem-int v4, p1, v4

    .line 139
    .line 140
    const-string v5, "byteOutput size is not aligned to frame size "

    .line 141
    .line 142
    invoke-static {v5, p1}, La/r;->f(Ljava/lang/String;I)Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v5

    .line 146
    if-nez v4, :cond_8

    .line 147
    .line 148
    goto :goto_4

    .line 149
    :cond_8
    const/4 v1, 0x0

    .line 150
    :goto_4
    invoke-static {v1, v5}, Lo3/r;->L(ZLjava/lang/String;)V

    .line 151
    .line 152
    .line 153
    const/4 v1, 0x3

    .line 154
    if-eq p2, v1, :cond_d

    .line 155
    .line 156
    const/4 v1, 0x0

    .line 157
    :goto_5
    if-ge v1, p1, :cond_d

    .line 158
    .line 159
    add-int/lit8 v4, v1, 0x1

    .line 160
    .line 161
    aget-byte v5, v3, v4

    .line 162
    .line 163
    aget-byte v6, v3, v1

    .line 164
    .line 165
    and-int/lit16 v6, v6, 0xff

    .line 166
    .line 167
    shl-int/lit8 v5, v5, 0x8

    .line 168
    .line 169
    or-int/2addr v5, v6

    .line 170
    if-nez p2, :cond_9

    .line 171
    .line 172
    add-int/lit8 v6, p1, -0x1

    .line 173
    .line 174
    mul-int/lit16 v7, v1, 0x3e8

    .line 175
    .line 176
    div-int/2addr v7, v6

    .line 177
    mul-int/lit8 v7, v7, -0x5a

    .line 178
    .line 179
    div-int/lit16 v7, v7, 0x3e8

    .line 180
    .line 181
    add-int/lit8 v7, v7, 0x64

    .line 182
    .line 183
    goto :goto_6

    .line 184
    :cond_9
    const/16 v7, 0xa

    .line 185
    .line 186
    if-ne p2, v0, :cond_a

    .line 187
    .line 188
    add-int/lit8 v6, p1, -0x1

    .line 189
    .line 190
    const v8, 0x15f90

    .line 191
    .line 192
    .line 193
    mul-int v8, v8, v1

    .line 194
    .line 195
    div-int/2addr v8, v6

    .line 196
    div-int/lit16 v8, v8, 0x3e8

    .line 197
    .line 198
    add-int/2addr v7, v8

    .line 199
    :cond_a
    :goto_6
    mul-int v5, v5, v7

    .line 200
    .line 201
    div-int/lit8 v5, v5, 0x64

    .line 202
    .line 203
    const/16 v6, 0x7fff

    .line 204
    .line 205
    if-lt v5, v6, :cond_b

    .line 206
    .line 207
    const/4 v5, -0x1

    .line 208
    aput-byte v5, v3, v1

    .line 209
    .line 210
    const/16 v5, 0x7f

    .line 211
    .line 212
    aput-byte v5, v3, v4

    .line 213
    .line 214
    goto :goto_7

    .line 215
    :cond_b
    const/16 v6, -0x8000

    .line 216
    .line 217
    if-gt v5, v6, :cond_c

    .line 218
    .line 219
    aput-byte v2, v3, v1

    .line 220
    .line 221
    const/16 v5, -0x80

    .line 222
    .line 223
    aput-byte v5, v3, v4

    .line 224
    .line 225
    goto :goto_7

    .line 226
    :cond_c
    and-int/lit16 v6, v5, 0xff

    .line 227
    .line 228
    int-to-byte v6, v6

    .line 229
    aput-byte v6, v3, v1

    .line 230
    .line 231
    shr-int/lit8 v5, v5, 0x8

    .line 232
    .line 233
    int-to-byte v5, v5

    .line 234
    aput-byte v5, v3, v4

    .line 235
    .line 236
    :goto_7
    add-int/lit8 v1, v1, 0x2

    .line 237
    .line 238
    goto :goto_5

    .line 239
    :cond_d
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/Hi;->d(I)Ljava/nio/ByteBuffer;

    .line 240
    .line 241
    .line 242
    move-result-object p2

    .line 243
    invoke-virtual {p2, v3, v2, p1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 244
    .line 245
    .line 246
    move-result-object p1

    .line 247
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 248
    .line 249
    .line 250
    return-void
.end method

.method public final zzg()Z
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/Hi;->zzg()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/qM;->j:Z

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    return v0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    return v0
.end method
