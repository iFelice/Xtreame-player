.class public final Lcom/google/android/gms/internal/ads/N3;
.super Lcom/google/android/gms/internal/ads/xJ;
.source "SourceFile"


# instance fields
.field public O:I

.field public P:Ljava/util/Date;

.field public Q:Ljava/util/Date;

.field public R:J

.field public S:J

.field public T:D

.field public U:F

.field public V:Lcom/google/android/gms/internal/ads/DJ;

.field public W:J


# virtual methods
.method public final b(Ljava/nio/ByteBuffer;)V
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-gez v1, :cond_0

    .line 8
    .line 9
    add-int/lit16 v1, v1, 0x100

    .line 10
    .line 11
    :cond_0
    iput v1, v0, Lcom/google/android/gms/internal/ads/N3;->O:I

    .line 12
    .line 13
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    .line 14
    .line 15
    .line 16
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    .line 17
    .line 18
    .line 19
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    .line 20
    .line 21
    .line 22
    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/xJ;->H:Z

    .line 23
    .line 24
    if-nez v1, :cond_1

    .line 25
    .line 26
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/xJ;->c()V

    .line 27
    .line 28
    .line 29
    :cond_1
    iget v1, v0, Lcom/google/android/gms/internal/ads/N3;->O:I

    .line 30
    .line 31
    const/4 v2, 0x1

    .line 32
    if-ne v1, v2, :cond_2

    .line 33
    .line 34
    invoke-static/range {p1 .. p1}, LU2/m;->q(Ljava/nio/ByteBuffer;)J

    .line 35
    .line 36
    .line 37
    move-result-wide v3

    .line 38
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/Cw;->S(J)Ljava/util/Date;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/N3;->P:Ljava/util/Date;

    .line 43
    .line 44
    invoke-static/range {p1 .. p1}, LU2/m;->q(Ljava/nio/ByteBuffer;)J

    .line 45
    .line 46
    .line 47
    move-result-wide v3

    .line 48
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/Cw;->S(J)Ljava/util/Date;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/N3;->Q:Ljava/util/Date;

    .line 53
    .line 54
    invoke-static/range {p1 .. p1}, LU2/m;->o(Ljava/nio/ByteBuffer;)J

    .line 55
    .line 56
    .line 57
    move-result-wide v3

    .line 58
    iput-wide v3, v0, Lcom/google/android/gms/internal/ads/N3;->R:J

    .line 59
    .line 60
    invoke-static/range {p1 .. p1}, LU2/m;->q(Ljava/nio/ByteBuffer;)J

    .line 61
    .line 62
    .line 63
    move-result-wide v3

    .line 64
    iput-wide v3, v0, Lcom/google/android/gms/internal/ads/N3;->S:J

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_2
    invoke-static/range {p1 .. p1}, LU2/m;->o(Ljava/nio/ByteBuffer;)J

    .line 68
    .line 69
    .line 70
    move-result-wide v3

    .line 71
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/Cw;->S(J)Ljava/util/Date;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/N3;->P:Ljava/util/Date;

    .line 76
    .line 77
    invoke-static/range {p1 .. p1}, LU2/m;->o(Ljava/nio/ByteBuffer;)J

    .line 78
    .line 79
    .line 80
    move-result-wide v3

    .line 81
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/Cw;->S(J)Ljava/util/Date;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/N3;->Q:Ljava/util/Date;

    .line 86
    .line 87
    invoke-static/range {p1 .. p1}, LU2/m;->o(Ljava/nio/ByteBuffer;)J

    .line 88
    .line 89
    .line 90
    move-result-wide v3

    .line 91
    iput-wide v3, v0, Lcom/google/android/gms/internal/ads/N3;->R:J

    .line 92
    .line 93
    invoke-static/range {p1 .. p1}, LU2/m;->o(Ljava/nio/ByteBuffer;)J

    .line 94
    .line 95
    .line 96
    move-result-wide v3

    .line 97
    iput-wide v3, v0, Lcom/google/android/gms/internal/ads/N3;->S:J

    .line 98
    .line 99
    :goto_0
    invoke-static/range {p1 .. p1}, LU2/m;->g(Ljava/nio/ByteBuffer;)D

    .line 100
    .line 101
    .line 102
    move-result-wide v3

    .line 103
    iput-wide v3, v0, Lcom/google/android/gms/internal/ads/N3;->T:D

    .line 104
    .line 105
    const/4 v1, 0x2

    .line 106
    new-array v1, v1, [B

    .line 107
    .line 108
    move-object/from16 v3, p1

    .line 109
    .line 110
    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 111
    .line 112
    .line 113
    const/4 v4, 0x0

    .line 114
    aget-byte v4, v1, v4

    .line 115
    .line 116
    shl-int/lit8 v4, v4, 0x8

    .line 117
    .line 118
    aget-byte v1, v1, v2

    .line 119
    .line 120
    and-int/lit16 v1, v1, 0xff

    .line 121
    .line 122
    const v2, 0xff00

    .line 123
    .line 124
    .line 125
    and-int/2addr v2, v4

    .line 126
    int-to-short v2, v2

    .line 127
    or-int/2addr v1, v2

    .line 128
    int-to-short v1, v1

    .line 129
    int-to-float v1, v1

    .line 130
    const/high16 v2, 0x43800000    # 256.0f

    .line 131
    .line 132
    div-float/2addr v1, v2

    .line 133
    iput v1, v0, Lcom/google/android/gms/internal/ads/N3;->U:F

    .line 134
    .line 135
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    .line 136
    .line 137
    .line 138
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    .line 139
    .line 140
    .line 141
    invoke-static/range {p1 .. p1}, LU2/m;->o(Ljava/nio/ByteBuffer;)J

    .line 142
    .line 143
    .line 144
    invoke-static/range {p1 .. p1}, LU2/m;->o(Ljava/nio/ByteBuffer;)J

    .line 145
    .line 146
    .line 147
    invoke-static/range {p1 .. p1}, LU2/m;->g(Ljava/nio/ByteBuffer;)D

    .line 148
    .line 149
    .line 150
    move-result-wide v5

    .line 151
    invoke-static/range {p1 .. p1}, LU2/m;->g(Ljava/nio/ByteBuffer;)D

    .line 152
    .line 153
    .line 154
    move-result-wide v7

    .line 155
    invoke-static/range {p1 .. p1}, LU2/m;->c(Ljava/nio/ByteBuffer;)D

    .line 156
    .line 157
    .line 158
    move-result-wide v13

    .line 159
    invoke-static/range {p1 .. p1}, LU2/m;->g(Ljava/nio/ByteBuffer;)D

    .line 160
    .line 161
    .line 162
    move-result-wide v9

    .line 163
    invoke-static/range {p1 .. p1}, LU2/m;->g(Ljava/nio/ByteBuffer;)D

    .line 164
    .line 165
    .line 166
    move-result-wide v11

    .line 167
    invoke-static/range {p1 .. p1}, LU2/m;->c(Ljava/nio/ByteBuffer;)D

    .line 168
    .line 169
    .line 170
    move-result-wide v15

    .line 171
    invoke-static/range {p1 .. p1}, LU2/m;->g(Ljava/nio/ByteBuffer;)D

    .line 172
    .line 173
    .line 174
    move-result-wide v19

    .line 175
    invoke-static/range {p1 .. p1}, LU2/m;->g(Ljava/nio/ByteBuffer;)D

    .line 176
    .line 177
    .line 178
    move-result-wide v21

    .line 179
    invoke-static/range {p1 .. p1}, LU2/m;->c(Ljava/nio/ByteBuffer;)D

    .line 180
    .line 181
    .line 182
    move-result-wide v17

    .line 183
    new-instance v1, Lcom/google/android/gms/internal/ads/DJ;

    .line 184
    .line 185
    move-object v4, v1

    .line 186
    invoke-direct/range {v4 .. v22}, Lcom/google/android/gms/internal/ads/DJ;-><init>(DDDDDDDDD)V

    .line 187
    .line 188
    .line 189
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/N3;->V:Lcom/google/android/gms/internal/ads/DJ;

    .line 190
    .line 191
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->getInt()I

    .line 192
    .line 193
    .line 194
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->getInt()I

    .line 195
    .line 196
    .line 197
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->getInt()I

    .line 198
    .line 199
    .line 200
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->getInt()I

    .line 201
    .line 202
    .line 203
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->getInt()I

    .line 204
    .line 205
    .line 206
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->getInt()I

    .line 207
    .line 208
    .line 209
    invoke-static/range {p1 .. p1}, LU2/m;->o(Ljava/nio/ByteBuffer;)J

    .line 210
    .line 211
    .line 212
    move-result-wide v1

    .line 213
    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/N3;->W:J

    .line 214
    .line 215
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "MovieHeaderBox[creationTime="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/N3;->P:Ljava/util/Date;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ";modificationTime="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/N3;->Q:Ljava/util/Date;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ";timescale="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/N3;->R:J

    .line 29
    .line 30
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ";duration="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/N3;->S:J

    .line 39
    .line 40
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, ";rate="

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/N3;->T:D

    .line 49
    .line 50
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v1, ";volume="

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget v1, p0, Lcom/google/android/gms/internal/ads/N3;->U:F

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v1, ";matrix="

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/N3;->V:Lcom/google/android/gms/internal/ads/DJ;

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string v1, ";nextTrackId="

    .line 74
    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/N3;->W:J

    .line 79
    .line 80
    const-string v3, "]"

    .line 81
    .line 82
    invoke-static {v0, v1, v2, v3}, La/r;->i(Ljava/lang/StringBuilder;JLjava/lang/String;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    return-object v0
.end method
