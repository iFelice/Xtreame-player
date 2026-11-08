.class public final Lcom/google/android/gms/internal/ads/QN;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/jr;

.field public b:Lcom/google/android/gms/internal/ads/PN;

.field public c:Lcom/google/android/gms/internal/ads/PN;

.field public d:Lcom/google/android/gms/internal/ads/PN;

.field public e:J

.field public final f:Lcom/google/android/gms/internal/ads/CO;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/CO;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/QN;->f:Lcom/google/android/gms/internal/ads/CO;

    .line 5
    .line 6
    new-instance p1, Lcom/google/android/gms/internal/ads/jr;

    .line 7
    .line 8
    const/16 v0, 0x20

    .line 9
    .line 10
    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/jr;-><init>(I)V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/QN;->a:Lcom/google/android/gms/internal/ads/jr;

    .line 14
    .line 15
    new-instance p1, Lcom/google/android/gms/internal/ads/PN;

    .line 16
    .line 17
    const-wide/16 v0, 0x0

    .line 18
    .line 19
    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/ads/PN;-><init>(J)V

    .line 20
    .line 21
    .line 22
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/QN;->b:Lcom/google/android/gms/internal/ads/PN;

    .line 23
    .line 24
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/QN;->c:Lcom/google/android/gms/internal/ads/PN;

    .line 25
    .line 26
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/QN;->d:Lcom/google/android/gms/internal/ads/PN;

    .line 27
    .line 28
    return-void
.end method

.method public static c(Lcom/google/android/gms/internal/ads/PN;JLjava/nio/ByteBuffer;I)Lcom/google/android/gms/internal/ads/PN;
    .locals 3

    .line 1
    :goto_0
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/PN;->b:J

    .line 2
    .line 3
    cmp-long v2, p1, v0

    .line 4
    .line 5
    if-ltz v2, :cond_0

    .line 6
    .line 7
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/PN;->d:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast p0, Lcom/google/android/gms/internal/ads/PN;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    :goto_1
    if-lez p4, :cond_1

    .line 13
    .line 14
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/PN;->b:J

    .line 15
    .line 16
    sub-long/2addr v0, p1

    .line 17
    long-to-int v1, v0

    .line 18
    invoke-static {p4, v1}, Ljava/lang/Math;->min(II)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/PN;->c:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v1, Lcom/google/android/gms/internal/ads/zO;

    .line 25
    .line 26
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zO;->a:[B

    .line 27
    .line 28
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/PN;->a(J)I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    invoke-virtual {p3, v1, v2, v0}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 33
    .line 34
    .line 35
    sub-int/2addr p4, v0

    .line 36
    int-to-long v0, v0

    .line 37
    add-long/2addr p1, v0

    .line 38
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/PN;->b:J

    .line 39
    .line 40
    cmp-long v2, p1, v0

    .line 41
    .line 42
    if-nez v2, :cond_0

    .line 43
    .line 44
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/PN;->d:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast p0, Lcom/google/android/gms/internal/ads/PN;

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_1
    return-object p0
.end method

.method public static d(Lcom/google/android/gms/internal/ads/PN;J[BI)Lcom/google/android/gms/internal/ads/PN;
    .locals 5

    .line 1
    :goto_0
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/PN;->b:J

    .line 2
    .line 3
    cmp-long v2, p1, v0

    .line 4
    .line 5
    if-ltz v2, :cond_0

    .line 6
    .line 7
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/PN;->d:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast p0, Lcom/google/android/gms/internal/ads/PN;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move v0, p4

    .line 13
    :cond_1
    :goto_1
    if-lez v0, :cond_2

    .line 14
    .line 15
    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/PN;->b:J

    .line 16
    .line 17
    sub-long/2addr v1, p1

    .line 18
    long-to-int v2, v1

    .line 19
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/PN;->c:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v2, Lcom/google/android/gms/internal/ads/zO;

    .line 26
    .line 27
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zO;->a:[B

    .line 28
    .line 29
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/PN;->a(J)I

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    sub-int v4, p4, v0

    .line 34
    .line 35
    invoke-static {v2, v3, p3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 36
    .line 37
    .line 38
    sub-int/2addr v0, v1

    .line 39
    int-to-long v1, v1

    .line 40
    add-long/2addr p1, v1

    .line 41
    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/PN;->b:J

    .line 42
    .line 43
    cmp-long v3, p1, v1

    .line 44
    .line 45
    if-nez v3, :cond_1

    .line 46
    .line 47
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/PN;->d:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast p0, Lcom/google/android/gms/internal/ads/PN;

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_2
    return-object p0
.end method

.method public static e(Lcom/google/android/gms/internal/ads/PN;Lcom/google/android/gms/internal/ads/VJ;Lt0/d;Lcom/google/android/gms/internal/ads/jr;)Lcom/google/android/gms/internal/ads/PN;
    .locals 12

    .line 1
    const/high16 v0, 0x40000000    # 2.0f

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lq0/e;->b(I)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_a

    .line 8
    .line 9
    iget-wide v0, p2, Lt0/d;->I:J

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    invoke-virtual {p3, v2}, Lcom/google/android/gms/internal/ads/jr;->g(I)V

    .line 13
    .line 14
    .line 15
    iget-object v3, p3, Lcom/google/android/gms/internal/ads/jr;->a:[B

    .line 16
    .line 17
    invoke-static {p0, v0, v1, v3, v2}, Lcom/google/android/gms/internal/ads/QN;->d(Lcom/google/android/gms/internal/ads/PN;J[BI)Lcom/google/android/gms/internal/ads/PN;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    const-wide/16 v3, 0x1

    .line 22
    .line 23
    add-long/2addr v0, v3

    .line 24
    iget-object v3, p3, Lcom/google/android/gms/internal/ads/jr;->a:[B

    .line 25
    .line 26
    const/4 v4, 0x0

    .line 27
    aget-byte v3, v3, v4

    .line 28
    .line 29
    and-int/lit16 v5, v3, 0x80

    .line 30
    .line 31
    and-int/lit8 v3, v3, 0x7f

    .line 32
    .line 33
    iget-object v6, p1, Lcom/google/android/gms/internal/ads/VJ;->d:Lw0/c;

    .line 34
    .line 35
    iget-object v7, v6, Lw0/c;->a:[B

    .line 36
    .line 37
    if-nez v7, :cond_0

    .line 38
    .line 39
    const/16 v7, 0x10

    .line 40
    .line 41
    new-array v7, v7, [B

    .line 42
    .line 43
    iput-object v7, v6, Lw0/c;->a:[B

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    invoke-static {v7, v4}, Ljava/util/Arrays;->fill([BB)V

    .line 47
    .line 48
    .line 49
    :goto_0
    if-eqz v5, :cond_1

    .line 50
    .line 51
    const/4 v5, 0x1

    .line 52
    goto :goto_1

    .line 53
    :cond_1
    const/4 v5, 0x0

    .line 54
    :goto_1
    iget-object v7, v6, Lw0/c;->a:[B

    .line 55
    .line 56
    invoke-static {p0, v0, v1, v7, v3}, Lcom/google/android/gms/internal/ads/QN;->d(Lcom/google/android/gms/internal/ads/PN;J[BI)Lcom/google/android/gms/internal/ads/PN;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    int-to-long v7, v3

    .line 61
    add-long/2addr v0, v7

    .line 62
    if-eqz v5, :cond_2

    .line 63
    .line 64
    const/4 v2, 0x2

    .line 65
    invoke-virtual {p3, v2}, Lcom/google/android/gms/internal/ads/jr;->g(I)V

    .line 66
    .line 67
    .line 68
    iget-object v3, p3, Lcom/google/android/gms/internal/ads/jr;->a:[B

    .line 69
    .line 70
    invoke-static {p0, v0, v1, v3, v2}, Lcom/google/android/gms/internal/ads/QN;->d(Lcom/google/android/gms/internal/ads/PN;J[BI)Lcom/google/android/gms/internal/ads/PN;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    const-wide/16 v2, 0x2

    .line 75
    .line 76
    add-long/2addr v0, v2

    .line 77
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/jr;->A()I

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    :cond_2
    iget-object v3, v6, Lw0/c;->d:[I

    .line 82
    .line 83
    if-eqz v3, :cond_3

    .line 84
    .line 85
    array-length v7, v3

    .line 86
    if-ge v7, v2, :cond_4

    .line 87
    .line 88
    :cond_3
    new-array v3, v2, [I

    .line 89
    .line 90
    :cond_4
    iget-object v7, v6, Lw0/c;->e:[I

    .line 91
    .line 92
    if-eqz v7, :cond_5

    .line 93
    .line 94
    array-length v8, v7

    .line 95
    if-ge v8, v2, :cond_6

    .line 96
    .line 97
    :cond_5
    new-array v7, v2, [I

    .line 98
    .line 99
    :cond_6
    if-eqz v5, :cond_7

    .line 100
    .line 101
    mul-int/lit8 v5, v2, 0x6

    .line 102
    .line 103
    invoke-virtual {p3, v5}, Lcom/google/android/gms/internal/ads/jr;->g(I)V

    .line 104
    .line 105
    .line 106
    iget-object v8, p3, Lcom/google/android/gms/internal/ads/jr;->a:[B

    .line 107
    .line 108
    invoke-static {p0, v0, v1, v8, v5}, Lcom/google/android/gms/internal/ads/QN;->d(Lcom/google/android/gms/internal/ads/PN;J[BI)Lcom/google/android/gms/internal/ads/PN;

    .line 109
    .line 110
    .line 111
    move-result-object p0

    .line 112
    int-to-long v8, v5

    .line 113
    add-long/2addr v0, v8

    .line 114
    invoke-virtual {p3, v4}, Lcom/google/android/gms/internal/ads/jr;->j(I)V

    .line 115
    .line 116
    .line 117
    :goto_2
    if-ge v4, v2, :cond_8

    .line 118
    .line 119
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/jr;->A()I

    .line 120
    .line 121
    .line 122
    move-result v5

    .line 123
    aput v5, v3, v4

    .line 124
    .line 125
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/jr;->z()I

    .line 126
    .line 127
    .line 128
    move-result v5

    .line 129
    aput v5, v7, v4

    .line 130
    .line 131
    add-int/lit8 v4, v4, 0x1

    .line 132
    .line 133
    goto :goto_2

    .line 134
    :cond_7
    aput v4, v3, v4

    .line 135
    .line 136
    iget v5, p2, Lt0/d;->H:I

    .line 137
    .line 138
    iget-wide v8, p2, Lt0/d;->I:J

    .line 139
    .line 140
    sub-long v8, v0, v8

    .line 141
    .line 142
    long-to-int v9, v8

    .line 143
    sub-int/2addr v5, v9

    .line 144
    aput v5, v7, v4

    .line 145
    .line 146
    :cond_8
    iget-object v4, p2, Lt0/d;->J:Ljava/lang/Object;

    .line 147
    .line 148
    check-cast v4, Lcom/google/android/gms/internal/ads/d0;

    .line 149
    .line 150
    sget v5, Lcom/google/android/gms/internal/ads/Et;->a:I

    .line 151
    .line 152
    iget-object v5, v4, Lcom/google/android/gms/internal/ads/d0;->b:[B

    .line 153
    .line 154
    iget-object v8, v6, Lw0/c;->a:[B

    .line 155
    .line 156
    iput v2, v6, Lw0/c;->f:I

    .line 157
    .line 158
    iput-object v3, v6, Lw0/c;->d:[I

    .line 159
    .line 160
    iput-object v7, v6, Lw0/c;->e:[I

    .line 161
    .line 162
    iput-object v5, v6, Lw0/c;->b:[B

    .line 163
    .line 164
    iput-object v8, v6, Lw0/c;->a:[B

    .line 165
    .line 166
    iget v9, v4, Lcom/google/android/gms/internal/ads/d0;->a:I

    .line 167
    .line 168
    iput v9, v6, Lw0/c;->c:I

    .line 169
    .line 170
    iget v10, v4, Lcom/google/android/gms/internal/ads/d0;->c:I

    .line 171
    .line 172
    iput v10, v6, Lw0/c;->g:I

    .line 173
    .line 174
    iget v4, v4, Lcom/google/android/gms/internal/ads/d0;->d:I

    .line 175
    .line 176
    iput v4, v6, Lw0/c;->h:I

    .line 177
    .line 178
    iget-object v11, v6, Lw0/c;->i:Landroid/media/MediaCodec$CryptoInfo;

    .line 179
    .line 180
    iput v2, v11, Landroid/media/MediaCodec$CryptoInfo;->numSubSamples:I

    .line 181
    .line 182
    iput-object v3, v11, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    .line 183
    .line 184
    iput-object v7, v11, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfEncryptedData:[I

    .line 185
    .line 186
    iput-object v5, v11, Landroid/media/MediaCodec$CryptoInfo;->key:[B

    .line 187
    .line 188
    iput-object v8, v11, Landroid/media/MediaCodec$CryptoInfo;->iv:[B

    .line 189
    .line 190
    iput v9, v11, Landroid/media/MediaCodec$CryptoInfo;->mode:I

    .line 191
    .line 192
    sget v2, Lcom/google/android/gms/internal/ads/Et;->a:I

    .line 193
    .line 194
    const/16 v3, 0x18

    .line 195
    .line 196
    if-lt v2, v3, :cond_9

    .line 197
    .line 198
    iget-object v2, v6, Lw0/c;->j:Ljava/lang/Object;

    .line 199
    .line 200
    check-cast v2, Lcom/google/android/gms/internal/ads/SJ;

    .line 201
    .line 202
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 203
    .line 204
    .line 205
    iget-object v3, v2, Lcom/google/android/gms/internal/ads/SJ;->b:Landroid/media/MediaCodec$CryptoInfo$Pattern;

    .line 206
    .line 207
    invoke-static {v3, v10, v4}, Lh2/a;->i(Landroid/media/MediaCodec$CryptoInfo$Pattern;II)V

    .line 208
    .line 209
    .line 210
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/SJ;->a:Landroid/media/MediaCodec$CryptoInfo;

    .line 211
    .line 212
    invoke-static {v2, v3}, Lh2/a;->j(Landroid/media/MediaCodec$CryptoInfo;Landroid/media/MediaCodec$CryptoInfo$Pattern;)V

    .line 213
    .line 214
    .line 215
    :cond_9
    iget-wide v2, p2, Lt0/d;->I:J

    .line 216
    .line 217
    sub-long/2addr v0, v2

    .line 218
    long-to-int v1, v0

    .line 219
    int-to-long v4, v1

    .line 220
    add-long/2addr v2, v4

    .line 221
    iput-wide v2, p2, Lt0/d;->I:J

    .line 222
    .line 223
    iget v0, p2, Lt0/d;->H:I

    .line 224
    .line 225
    sub-int/2addr v0, v1

    .line 226
    iput v0, p2, Lt0/d;->H:I

    .line 227
    .line 228
    :cond_a
    const/high16 v0, 0x10000000

    .line 229
    .line 230
    invoke-virtual {p1, v0}, Lq0/e;->b(I)Z

    .line 231
    .line 232
    .line 233
    move-result v0

    .line 234
    if-eqz v0, :cond_d

    .line 235
    .line 236
    const/4 v0, 0x4

    .line 237
    invoke-virtual {p3, v0}, Lcom/google/android/gms/internal/ads/jr;->g(I)V

    .line 238
    .line 239
    .line 240
    iget-wide v1, p2, Lt0/d;->I:J

    .line 241
    .line 242
    iget-object v3, p3, Lcom/google/android/gms/internal/ads/jr;->a:[B

    .line 243
    .line 244
    invoke-static {p0, v1, v2, v3, v0}, Lcom/google/android/gms/internal/ads/QN;->d(Lcom/google/android/gms/internal/ads/PN;J[BI)Lcom/google/android/gms/internal/ads/PN;

    .line 245
    .line 246
    .line 247
    move-result-object p0

    .line 248
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/jr;->z()I

    .line 249
    .line 250
    .line 251
    move-result p3

    .line 252
    iget-wide v0, p2, Lt0/d;->I:J

    .line 253
    .line 254
    const-wide/16 v2, 0x4

    .line 255
    .line 256
    add-long/2addr v0, v2

    .line 257
    iput-wide v0, p2, Lt0/d;->I:J

    .line 258
    .line 259
    iget v0, p2, Lt0/d;->H:I

    .line 260
    .line 261
    add-int/lit8 v0, v0, -0x4

    .line 262
    .line 263
    iput v0, p2, Lt0/d;->H:I

    .line 264
    .line 265
    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/ads/VJ;->f(I)V

    .line 266
    .line 267
    .line 268
    iget-wide v0, p2, Lt0/d;->I:J

    .line 269
    .line 270
    iget-object v2, p1, Lcom/google/android/gms/internal/ads/VJ;->e:Ljava/nio/ByteBuffer;

    .line 271
    .line 272
    invoke-static {p0, v0, v1, v2, p3}, Lcom/google/android/gms/internal/ads/QN;->c(Lcom/google/android/gms/internal/ads/PN;JLjava/nio/ByteBuffer;I)Lcom/google/android/gms/internal/ads/PN;

    .line 273
    .line 274
    .line 275
    move-result-object p0

    .line 276
    iget-wide v0, p2, Lt0/d;->I:J

    .line 277
    .line 278
    int-to-long v2, p3

    .line 279
    add-long/2addr v0, v2

    .line 280
    iput-wide v0, p2, Lt0/d;->I:J

    .line 281
    .line 282
    iget v0, p2, Lt0/d;->H:I

    .line 283
    .line 284
    sub-int/2addr v0, p3

    .line 285
    iput v0, p2, Lt0/d;->H:I

    .line 286
    .line 287
    iget-object p3, p1, Lcom/google/android/gms/internal/ads/VJ;->h:Ljava/nio/ByteBuffer;

    .line 288
    .line 289
    if-eqz p3, :cond_c

    .line 290
    .line 291
    invoke-virtual {p3}, Ljava/nio/Buffer;->capacity()I

    .line 292
    .line 293
    .line 294
    move-result p3

    .line 295
    if-ge p3, v0, :cond_b

    .line 296
    .line 297
    goto :goto_3

    .line 298
    :cond_b
    iget-object p3, p1, Lcom/google/android/gms/internal/ads/VJ;->h:Ljava/nio/ByteBuffer;

    .line 299
    .line 300
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 301
    .line 302
    .line 303
    goto :goto_4

    .line 304
    :cond_c
    :goto_3
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 305
    .line 306
    .line 307
    move-result-object p3

    .line 308
    iput-object p3, p1, Lcom/google/android/gms/internal/ads/VJ;->h:Ljava/nio/ByteBuffer;

    .line 309
    .line 310
    :goto_4
    iget-wide v0, p2, Lt0/d;->I:J

    .line 311
    .line 312
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/VJ;->h:Ljava/nio/ByteBuffer;

    .line 313
    .line 314
    iget p2, p2, Lt0/d;->H:I

    .line 315
    .line 316
    invoke-static {p0, v0, v1, p1, p2}, Lcom/google/android/gms/internal/ads/QN;->c(Lcom/google/android/gms/internal/ads/PN;JLjava/nio/ByteBuffer;I)Lcom/google/android/gms/internal/ads/PN;

    .line 317
    .line 318
    .line 319
    move-result-object p0

    .line 320
    goto :goto_5

    .line 321
    :cond_d
    iget p3, p2, Lt0/d;->H:I

    .line 322
    .line 323
    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/ads/VJ;->f(I)V

    .line 324
    .line 325
    .line 326
    iget-wide v0, p2, Lt0/d;->I:J

    .line 327
    .line 328
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/VJ;->e:Ljava/nio/ByteBuffer;

    .line 329
    .line 330
    iget p2, p2, Lt0/d;->H:I

    .line 331
    .line 332
    invoke-static {p0, v0, v1, p1, p2}, Lcom/google/android/gms/internal/ads/QN;->c(Lcom/google/android/gms/internal/ads/PN;JLjava/nio/ByteBuffer;I)Lcom/google/android/gms/internal/ads/PN;

    .line 333
    .line 334
    .line 335
    move-result-object p0

    .line 336
    :goto_5
    return-object p0
.end method


# virtual methods
.method public final a(J)V
    .locals 5

    .line 1
    const-wide/16 v0, -0x1

    .line 2
    .line 3
    cmp-long v2, p1, v0

    .line 4
    .line 5
    if-eqz v2, :cond_1

    .line 6
    .line 7
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/QN;->b:Lcom/google/android/gms/internal/ads/PN;

    .line 8
    .line 9
    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/PN;->b:J

    .line 10
    .line 11
    cmp-long v3, p1, v1

    .line 12
    .line 13
    if-ltz v3, :cond_0

    .line 14
    .line 15
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/QN;->f:Lcom/google/android/gms/internal/ads/CO;

    .line 16
    .line 17
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/PN;->c:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v0, Lcom/google/android/gms/internal/ads/zO;

    .line 20
    .line 21
    monitor-enter v1

    .line 22
    :try_start_0
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/CO;->d:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v2, [Lcom/google/android/gms/internal/ads/zO;

    .line 25
    .line 26
    iget v3, v1, Lcom/google/android/gms/internal/ads/CO;->c:I

    .line 27
    .line 28
    add-int/lit8 v4, v3, 0x1

    .line 29
    .line 30
    iput v4, v1, Lcom/google/android/gms/internal/ads/CO;->c:I

    .line 31
    .line 32
    aput-object v0, v2, v3

    .line 33
    .line 34
    iget v0, v1, Lcom/google/android/gms/internal/ads/CO;->b:I

    .line 35
    .line 36
    add-int/lit8 v0, v0, -0x1

    .line 37
    .line 38
    iput v0, v1, Lcom/google/android/gms/internal/ads/CO;->b:I

    .line 39
    .line 40
    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    .line 42
    .line 43
    monitor-exit v1

    .line 44
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/QN;->b:Lcom/google/android/gms/internal/ads/PN;

    .line 45
    .line 46
    const/4 v1, 0x0

    .line 47
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/PN;->c:Ljava/lang/Object;

    .line 48
    .line 49
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/PN;->d:Ljava/lang/Object;

    .line 50
    .line 51
    check-cast v2, Lcom/google/android/gms/internal/ads/PN;

    .line 52
    .line 53
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/PN;->d:Ljava/lang/Object;

    .line 54
    .line 55
    iput-object v2, p0, Lcom/google/android/gms/internal/ads/QN;->b:Lcom/google/android/gms/internal/ads/PN;

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :catchall_0
    move-exception p1

    .line 59
    monitor-exit v1

    .line 60
    throw p1

    .line 61
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/QN;->c:Lcom/google/android/gms/internal/ads/PN;

    .line 62
    .line 63
    iget-wide p1, p1, Lcom/google/android/gms/internal/ads/PN;->a:J

    .line 64
    .line 65
    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/PN;->a:J

    .line 66
    .line 67
    cmp-long v3, p1, v1

    .line 68
    .line 69
    if-gez v3, :cond_1

    .line 70
    .line 71
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/QN;->c:Lcom/google/android/gms/internal/ads/PN;

    .line 72
    .line 73
    :cond_1
    return-void
.end method

.method public final b(I)I
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/QN;->d:Lcom/google/android/gms/internal/ads/PN;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/PN;->c:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Lcom/google/android/gms/internal/ads/zO;

    .line 6
    .line 7
    if-nez v1, :cond_2

    .line 8
    .line 9
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/QN;->f:Lcom/google/android/gms/internal/ads/CO;

    .line 10
    .line 11
    monitor-enter v1

    .line 12
    :try_start_0
    iget v2, v1, Lcom/google/android/gms/internal/ads/CO;->b:I

    .line 13
    .line 14
    add-int/lit8 v2, v2, 0x1

    .line 15
    .line 16
    iput v2, v1, Lcom/google/android/gms/internal/ads/CO;->b:I

    .line 17
    .line 18
    iget v3, v1, Lcom/google/android/gms/internal/ads/CO;->c:I

    .line 19
    .line 20
    if-lez v3, :cond_0

    .line 21
    .line 22
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/CO;->d:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v2, [Lcom/google/android/gms/internal/ads/zO;

    .line 25
    .line 26
    add-int/lit8 v3, v3, -0x1

    .line 27
    .line 28
    iput v3, v1, Lcom/google/android/gms/internal/ads/CO;->c:I

    .line 29
    .line 30
    aget-object v4, v2, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    .line 32
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    const/4 v5, 0x0

    .line 36
    :try_start_1
    aput-object v5, v2, v3

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :catchall_0
    move-exception p1

    .line 40
    goto :goto_2

    .line 41
    :cond_0
    new-instance v4, Lcom/google/android/gms/internal/ads/zO;

    .line 42
    .line 43
    const/high16 v3, 0x10000

    .line 44
    .line 45
    new-array v3, v3, [B

    .line 46
    .line 47
    invoke-direct {v4, v3}, Lcom/google/android/gms/internal/ads/zO;-><init>([B)V

    .line 48
    .line 49
    .line 50
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/CO;->d:Ljava/lang/Object;

    .line 51
    .line 52
    check-cast v3, [Lcom/google/android/gms/internal/ads/zO;

    .line 53
    .line 54
    array-length v5, v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 55
    if-gt v2, v5, :cond_1

    .line 56
    .line 57
    :goto_0
    monitor-exit v1

    .line 58
    goto :goto_1

    .line 59
    :cond_1
    add-int/2addr v5, v5

    .line 60
    :try_start_2
    invoke-static {v3, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    check-cast v2, [Lcom/google/android/gms/internal/ads/zO;

    .line 65
    .line 66
    iput-object v2, v1, Lcom/google/android/gms/internal/ads/CO;->d:Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 67
    .line 68
    monitor-exit v1

    .line 69
    :goto_1
    new-instance v1, Lcom/google/android/gms/internal/ads/PN;

    .line 70
    .line 71
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/QN;->d:Lcom/google/android/gms/internal/ads/PN;

    .line 72
    .line 73
    iget-wide v2, v2, Lcom/google/android/gms/internal/ads/PN;->b:J

    .line 74
    .line 75
    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/ads/PN;-><init>(J)V

    .line 76
    .line 77
    .line 78
    iput-object v4, v0, Lcom/google/android/gms/internal/ads/PN;->c:Ljava/lang/Object;

    .line 79
    .line 80
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/PN;->d:Ljava/lang/Object;

    .line 81
    .line 82
    goto :goto_3

    .line 83
    :goto_2
    monitor-exit v1

    .line 84
    throw p1

    .line 85
    :cond_2
    :goto_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/QN;->d:Lcom/google/android/gms/internal/ads/PN;

    .line 86
    .line 87
    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/PN;->b:J

    .line 88
    .line 89
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/QN;->e:J

    .line 90
    .line 91
    sub-long/2addr v0, v2

    .line 92
    long-to-int v1, v0

    .line 93
    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    .line 94
    .line 95
    .line 96
    move-result p1

    .line 97
    return p1
.end method
