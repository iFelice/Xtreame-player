.class public final Landroidx/media3/decoder/flac/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LW0/s;


# instance fields
.field public final a:Lp0/E;

.field public final b:Z

.field public c:Landroidx/media3/decoder/flac/FlacDecoderJni;

.field public d:LW0/u;

.field public e:LW0/L;

.field public f:Z

.field public g:Landroidx/media3/extractor/FlacStreamMetadata;

.field public h:Landroidx/media3/decoder/flac/c;

.field public i:Lm0/N;

.field public j:Landroidx/media3/decoder/flac/d;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lp0/E;

    .line 5
    .line 6
    invoke-direct {v0}, Lp0/E;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroidx/media3/decoder/flac/i;->a:Lp0/E;

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    and-int/2addr p1, v0

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    :goto_0
    iput-boolean v0, p0, Landroidx/media3/decoder/flac/i;->b:Z

    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public final a(LW0/t;)V
    .locals 12

    .line 1
    iget-boolean v0, p0, Landroidx/media3/decoder/flac/i;->f:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v7, p0, Landroidx/media3/decoder/flac/i;->c:Landroidx/media3/decoder/flac/FlacDecoderJni;

    .line 7
    .line 8
    const-wide/16 v0, 0x0

    .line 9
    .line 10
    :try_start_0
    invoke-virtual {v7}, Landroidx/media3/decoder/flac/FlacDecoderJni;->decodeStreamMetadata()Landroidx/media3/extractor/FlacStreamMetadata;

    .line 11
    .line 12
    .line 13
    move-result-object v9
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    const/4 v2, 0x1

    .line 15
    iput-boolean v2, p0, Landroidx/media3/decoder/flac/i;->f:Z

    .line 16
    .line 17
    iget-object v3, p0, Landroidx/media3/decoder/flac/i;->g:Landroidx/media3/extractor/FlacStreamMetadata;

    .line 18
    .line 19
    if-nez v3, :cond_4

    .line 20
    .line 21
    iput-object v9, p0, Landroidx/media3/decoder/flac/i;->g:Landroidx/media3/extractor/FlacStreamMetadata;

    .line 22
    .line 23
    invoke-virtual {v9}, Landroidx/media3/extractor/FlacStreamMetadata;->getMaxDecodedFrameSize()I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    iget-object v4, p0, Landroidx/media3/decoder/flac/i;->a:Lp0/E;

    .line 28
    .line 29
    invoke-virtual {v4, v3}, Lp0/E;->I(I)V

    .line 30
    .line 31
    .line 32
    new-instance v3, Landroidx/media3/decoder/flac/c;

    .line 33
    .line 34
    iget-object v4, v4, Lp0/E;->a:[B

    .line 35
    .line 36
    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    invoke-direct {v3, v4}, Landroidx/media3/decoder/flac/c;-><init>(Ljava/nio/ByteBuffer;)V

    .line 41
    .line 42
    .line 43
    iput-object v3, p0, Landroidx/media3/decoder/flac/i;->h:Landroidx/media3/decoder/flac/c;

    .line 44
    .line 45
    invoke-interface {p1}, LW0/t;->j()J

    .line 46
    .line 47
    .line 48
    move-result-wide v5

    .line 49
    iget-object p1, p0, Landroidx/media3/decoder/flac/i;->d:LW0/u;

    .line 50
    .line 51
    iget-object v8, p0, Landroidx/media3/decoder/flac/i;->h:Landroidx/media3/decoder/flac/c;

    .line 52
    .line 53
    invoke-virtual {v7, v0, v1}, Landroidx/media3/decoder/flac/FlacDecoderJni;->getSeekPoints(J)LW0/E;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    if-eqz v3, :cond_1

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_1
    const/4 v2, 0x0

    .line 61
    :goto_0
    const/4 v3, 0x0

    .line 62
    if-eqz v2, :cond_2

    .line 63
    .line 64
    new-instance v0, Landroidx/media3/decoder/flac/h;

    .line 65
    .line 66
    invoke-virtual {v9}, Landroidx/media3/extractor/FlacStreamMetadata;->getDurationUs()J

    .line 67
    .line 68
    .line 69
    move-result-wide v1

    .line 70
    invoke-direct {v0, v1, v2, v7}, Landroidx/media3/decoder/flac/h;-><init>(JLandroidx/media3/decoder/flac/FlacDecoderJni;)V

    .line 71
    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_2
    const-wide/16 v10, -0x1

    .line 75
    .line 76
    cmp-long v2, v5, v10

    .line 77
    .line 78
    if-eqz v2, :cond_3

    .line 79
    .line 80
    iget-wide v10, v9, Landroidx/media3/extractor/FlacStreamMetadata;->totalSamples:J

    .line 81
    .line 82
    cmp-long v2, v10, v0

    .line 83
    .line 84
    if-lez v2, :cond_3

    .line 85
    .line 86
    invoke-virtual {v7}, Landroidx/media3/decoder/flac/FlacDecoderJni;->getDecodePosition()J

    .line 87
    .line 88
    .line 89
    move-result-wide v3

    .line 90
    new-instance v0, Landroidx/media3/decoder/flac/d;

    .line 91
    .line 92
    move-object v1, v0

    .line 93
    move-object v2, v9

    .line 94
    invoke-direct/range {v1 .. v8}, Landroidx/media3/decoder/flac/d;-><init>(Landroidx/media3/extractor/FlacStreamMetadata;JJLandroidx/media3/decoder/flac/FlacDecoderJni;Landroidx/media3/decoder/flac/c;)V

    .line 95
    .line 96
    .line 97
    iget-object v1, v0, LW0/k;->b:Ljava/lang/Object;

    .line 98
    .line 99
    check-cast v1, LW0/f;

    .line 100
    .line 101
    move-object v3, v0

    .line 102
    move-object v0, v1

    .line 103
    goto :goto_1

    .line 104
    :cond_3
    new-instance v0, LW0/x;

    .line 105
    .line 106
    invoke-virtual {v9}, Landroidx/media3/extractor/FlacStreamMetadata;->getDurationUs()J

    .line 107
    .line 108
    .line 109
    move-result-wide v1

    .line 110
    invoke-direct {v0, v1, v2}, LW0/x;-><init>(J)V

    .line 111
    .line 112
    .line 113
    :goto_1
    invoke-interface {p1, v0}, LW0/u;->r(LW0/F;)V

    .line 114
    .line 115
    .line 116
    iput-object v3, p0, Landroidx/media3/decoder/flac/i;->j:Landroidx/media3/decoder/flac/d;

    .line 117
    .line 118
    iget-object p1, p0, Landroidx/media3/decoder/flac/i;->i:Lm0/N;

    .line 119
    .line 120
    invoke-virtual {v9, p1}, Landroidx/media3/extractor/FlacStreamMetadata;->getMetadataCopyWithAppendedEntriesFrom(Lm0/N;)Lm0/N;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    iget-object v0, p0, Landroidx/media3/decoder/flac/i;->e:LW0/L;

    .line 125
    .line 126
    new-instance v1, Lm0/s;

    .line 127
    .line 128
    invoke-direct {v1}, Lm0/s;-><init>()V

    .line 129
    .line 130
    .line 131
    const-string v2, "audio/flac"

    .line 132
    .line 133
    invoke-static {v2}, Lm0/O;->p(Ljava/lang/String;)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v2

    .line 137
    iput-object v2, v1, Lm0/s;->m:Ljava/lang/String;

    .line 138
    .line 139
    const-string v2, "audio/raw"

    .line 140
    .line 141
    invoke-static {v2}, Lm0/O;->p(Ljava/lang/String;)Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v2

    .line 145
    iput-object v2, v1, Lm0/s;->n:Ljava/lang/String;

    .line 146
    .line 147
    invoke-virtual {v9}, Landroidx/media3/extractor/FlacStreamMetadata;->getDecodedBitrate()I

    .line 148
    .line 149
    .line 150
    move-result v2

    .line 151
    iput v2, v1, Lm0/s;->h:I

    .line 152
    .line 153
    invoke-virtual {v9}, Landroidx/media3/extractor/FlacStreamMetadata;->getDecodedBitrate()I

    .line 154
    .line 155
    .line 156
    move-result v2

    .line 157
    iput v2, v1, Lm0/s;->i:I

    .line 158
    .line 159
    invoke-virtual {v9}, Landroidx/media3/extractor/FlacStreamMetadata;->getMaxDecodedFrameSize()I

    .line 160
    .line 161
    .line 162
    move-result v2

    .line 163
    iput v2, v1, Lm0/s;->o:I

    .line 164
    .line 165
    iget v2, v9, Landroidx/media3/extractor/FlacStreamMetadata;->channels:I

    .line 166
    .line 167
    iput v2, v1, Lm0/s;->F:I

    .line 168
    .line 169
    iget v2, v9, Landroidx/media3/extractor/FlacStreamMetadata;->sampleRate:I

    .line 170
    .line 171
    iput v2, v1, Lm0/s;->G:I

    .line 172
    .line 173
    iget v2, v9, Landroidx/media3/extractor/FlacStreamMetadata;->bitsPerSample:I

    .line 174
    .line 175
    sget-object v3, Lp0/M;->a:Ljava/lang/String;

    .line 176
    .line 177
    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 178
    .line 179
    invoke-static {v2, v3}, Lp0/M;->A(ILjava/nio/ByteOrder;)I

    .line 180
    .line 181
    .line 182
    move-result v2

    .line 183
    iput v2, v1, Lm0/s;->H:I

    .line 184
    .line 185
    iput-object p1, v1, Lm0/s;->k:Lm0/N;

    .line 186
    .line 187
    new-instance p1, Lm0/t;

    .line 188
    .line 189
    invoke-direct {p1, v1}, Lm0/t;-><init>(Lm0/s;)V

    .line 190
    .line 191
    .line 192
    invoke-interface {v0, p1}, LW0/L;->b(Lm0/t;)V

    .line 193
    .line 194
    .line 195
    iget-object p1, p0, Landroidx/media3/decoder/flac/i;->e:LW0/L;

    .line 196
    .line 197
    invoke-virtual {v9}, Landroidx/media3/extractor/FlacStreamMetadata;->getDurationUs()J

    .line 198
    .line 199
    .line 200
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 201
    .line 202
    .line 203
    :cond_4
    return-void

    .line 204
    :catch_0
    move-exception v2

    .line 205
    invoke-virtual {v7, v0, v1}, Landroidx/media3/decoder/flac/FlacDecoderJni;->reset(J)V

    .line 206
    .line 207
    .line 208
    invoke-interface {p1, v0, v1, v2}, LW0/t;->l(JLjava/io/IOException;)V

    .line 209
    .line 210
    .line 211
    throw v2
.end method

.method public final b()LW0/s;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final d(LW0/u;)V
    .locals 2

    .line 1
    iput-object p1, p0, Landroidx/media3/decoder/flac/i;->d:LW0/u;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const/4 v1, 0x1

    .line 5
    invoke-interface {p1, v0, v1}, LW0/u;->t(II)LW0/L;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iput-object p1, p0, Landroidx/media3/decoder/flac/i;->e:LW0/L;

    .line 10
    .line 11
    iget-object p1, p0, Landroidx/media3/decoder/flac/i;->d:LW0/u;

    .line 12
    .line 13
    invoke-interface {p1}, LW0/u;->j()V

    .line 14
    .line 15
    .line 16
    :try_start_0
    new-instance p1, Landroidx/media3/decoder/flac/FlacDecoderJni;

    .line 17
    .line 18
    invoke-direct {p1}, Landroidx/media3/decoder/flac/FlacDecoderJni;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object p1, p0, Landroidx/media3/decoder/flac/i;->c:Landroidx/media3/decoder/flac/FlacDecoderJni;
    :try_end_0
    .catch Landroidx/media3/decoder/flac/f; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    .line 23
    return-void

    .line 24
    :catch_0
    move-exception p1

    .line 25
    new-instance v0, Ljava/lang/RuntimeException;

    .line 26
    .line 27
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 28
    .line 29
    .line 30
    throw v0
.end method

.method public final g(LW0/t;)Z
    .locals 7

    .line 1
    iget-boolean v0, p0, Landroidx/media3/decoder/flac/i;->b:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    xor-int/2addr v0, v1

    .line 5
    invoke-static {p1, v0}, LZ3/C;->g(LW0/t;Z)Lm0/N;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Landroidx/media3/decoder/flac/i;->i:Lm0/N;

    .line 10
    .line 11
    new-instance v0, Lp0/E;

    .line 12
    .line 13
    const/4 v2, 0x4

    .line 14
    invoke-direct {v0, v2}, Lp0/E;-><init>(I)V

    .line 15
    .line 16
    .line 17
    iget-object v3, v0, Lp0/E;->a:[B

    .line 18
    .line 19
    const/4 v4, 0x0

    .line 20
    invoke-interface {p1, v4, v3, v2}, LW0/t;->c(I[BI)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Lp0/E;->B()J

    .line 24
    .line 25
    .line 26
    move-result-wide v2

    .line 27
    const-wide/32 v5, 0x664c6143

    .line 28
    .line 29
    .line 30
    cmp-long p1, v2, v5

    .line 31
    .line 32
    if-nez p1, :cond_0

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const/4 v1, 0x0

    .line 36
    :goto_0
    return v1
.end method

.method public final h(LW0/t;LW0/w;)I
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    const-string v2, "Cannot read frame at position "

    .line 6
    .line 7
    invoke-interface/range {p1 .. p1}, LW0/t;->r()J

    .line 8
    .line 9
    .line 10
    move-result-wide v3

    .line 11
    const-wide/16 v5, 0x0

    .line 12
    .line 13
    cmp-long v7, v3, v5

    .line 14
    .line 15
    if-nez v7, :cond_0

    .line 16
    .line 17
    iget-boolean v3, v1, Landroidx/media3/decoder/flac/i;->b:Z

    .line 18
    .line 19
    if-nez v3, :cond_0

    .line 20
    .line 21
    iget-object v3, v1, Landroidx/media3/decoder/flac/i;->i:Lm0/N;

    .line 22
    .line 23
    if-nez v3, :cond_0

    .line 24
    .line 25
    const/4 v3, 0x1

    .line 26
    invoke-static {v0, v3}, LZ3/C;->g(LW0/t;Z)Lm0/N;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    iput-object v3, v1, Landroidx/media3/decoder/flac/i;->i:Lm0/N;

    .line 31
    .line 32
    :cond_0
    iget-object v3, v1, Landroidx/media3/decoder/flac/i;->c:Landroidx/media3/decoder/flac/FlacDecoderJni;

    .line 33
    .line 34
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v3, v0}, Landroidx/media3/decoder/flac/FlacDecoderJni;->setData(LW0/t;)V

    .line 38
    .line 39
    .line 40
    :try_start_0
    invoke-virtual/range {p0 .. p1}, Landroidx/media3/decoder/flac/i;->a(LW0/t;)V

    .line 41
    .line 42
    .line 43
    iget-object v4, v1, Landroidx/media3/decoder/flac/i;->j:Landroidx/media3/decoder/flac/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    .line 45
    const/4 v5, 0x0

    .line 46
    iget-object v6, v1, Landroidx/media3/decoder/flac/i;->a:Lp0/E;

    .line 47
    .line 48
    if-eqz v4, :cond_2

    .line 49
    .line 50
    :try_start_1
    iget-object v7, v4, LW0/k;->d:Ljava/lang/Object;

    .line 51
    .line 52
    check-cast v7, LW0/g;

    .line 53
    .line 54
    if-eqz v7, :cond_2

    .line 55
    .line 56
    iget-object v2, v1, Landroidx/media3/decoder/flac/i;->h:Landroidx/media3/decoder/flac/c;

    .line 57
    .line 58
    iget-object v7, v1, Landroidx/media3/decoder/flac/i;->e:LW0/L;

    .line 59
    .line 60
    move-object/from16 v8, p2

    .line 61
    .line 62
    invoke-virtual {v4, v0, v8}, LW0/k;->a(LW0/t;LW0/w;)I

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    iget-object v4, v2, Landroidx/media3/decoder/flac/c;->a:Ljava/nio/ByteBuffer;

    .line 67
    .line 68
    if-nez v0, :cond_1

    .line 69
    .line 70
    invoke-virtual {v4}, Ljava/nio/Buffer;->limit()I

    .line 71
    .line 72
    .line 73
    move-result v8

    .line 74
    if-lez v8, :cond_1

    .line 75
    .line 76
    invoke-virtual {v4}, Ljava/nio/Buffer;->limit()I

    .line 77
    .line 78
    .line 79
    move-result v11

    .line 80
    iget-wide v8, v2, Landroidx/media3/decoder/flac/c;->b:J

    .line 81
    .line 82
    invoke-virtual {v6, v5}, Lp0/E;->L(I)V

    .line 83
    .line 84
    .line 85
    invoke-interface {v7, v11, v6}, LW0/L;->e(ILp0/E;)V

    .line 86
    .line 87
    .line 88
    const/4 v10, 0x1

    .line 89
    const/4 v12, 0x0

    .line 90
    const/4 v13, 0x0

    .line 91
    invoke-interface/range {v7 .. v13}, LW0/L;->d(JIIILW0/K;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 92
    .line 93
    .line 94
    :cond_1
    invoke-virtual {v3}, Landroidx/media3/decoder/flac/FlacDecoderJni;->clearData()V

    .line 95
    .line 96
    .line 97
    return v0

    .line 98
    :catchall_0
    move-exception v0

    .line 99
    goto :goto_0

    .line 100
    :cond_2
    :try_start_2
    iget-object v0, v1, Landroidx/media3/decoder/flac/i;->h:Landroidx/media3/decoder/flac/c;

    .line 101
    .line 102
    iget-object v0, v0, Landroidx/media3/decoder/flac/c;->a:Ljava/nio/ByteBuffer;

    .line 103
    .line 104
    invoke-virtual {v3}, Landroidx/media3/decoder/flac/FlacDecoderJni;->getDecodePosition()J

    .line 105
    .line 106
    .line 107
    move-result-wide v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 108
    :try_start_3
    invoke-virtual {v3, v0, v7, v8}, Landroidx/media3/decoder/flac/FlacDecoderJni;->decodeSampleWithBacktrackPosition(Ljava/nio/ByteBuffer;J)V
    :try_end_3
    .catch Landroidx/media3/decoder/flac/g; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 109
    .line 110
    .line 111
    :try_start_4
    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    .line 112
    .line 113
    .line 114
    move-result v13
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 115
    const/4 v0, -0x1

    .line 116
    if-nez v13, :cond_3

    .line 117
    .line 118
    invoke-virtual {v3}, Landroidx/media3/decoder/flac/FlacDecoderJni;->clearData()V

    .line 119
    .line 120
    .line 121
    return v0

    .line 122
    :cond_3
    :try_start_5
    invoke-virtual {v3}, Landroidx/media3/decoder/flac/FlacDecoderJni;->getLastFrameTimestamp()J

    .line 123
    .line 124
    .line 125
    move-result-wide v10

    .line 126
    iget-object v9, v1, Landroidx/media3/decoder/flac/i;->e:LW0/L;

    .line 127
    .line 128
    invoke-virtual {v6, v5}, Lp0/E;->L(I)V

    .line 129
    .line 130
    .line 131
    invoke-interface {v9, v13, v6}, LW0/L;->e(ILp0/E;)V

    .line 132
    .line 133
    .line 134
    const/4 v12, 0x1

    .line 135
    const/4 v14, 0x0

    .line 136
    const/4 v15, 0x0

    .line 137
    invoke-interface/range {v9 .. v15}, LW0/L;->d(JIIILW0/K;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v3}, Landroidx/media3/decoder/flac/FlacDecoderJni;->isEndOfData()Z

    .line 141
    .line 142
    .line 143
    move-result v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 144
    if-eqz v2, :cond_4

    .line 145
    .line 146
    const/4 v5, -0x1

    .line 147
    :cond_4
    invoke-virtual {v3}, Landroidx/media3/decoder/flac/FlacDecoderJni;->clearData()V

    .line 148
    .line 149
    .line 150
    return v5

    .line 151
    :catch_0
    move-exception v0

    .line 152
    move-object v4, v0

    .line 153
    :try_start_6
    new-instance v0, Ljava/io/IOException;

    .line 154
    .line 155
    new-instance v5, Ljava/lang/StringBuilder;

    .line 156
    .line 157
    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v2

    .line 167
    invoke-direct {v0, v2, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 168
    .line 169
    .line 170
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 171
    :goto_0
    invoke-virtual {v3}, Landroidx/media3/decoder/flac/FlacDecoderJni;->clearData()V

    .line 172
    .line 173
    .line 174
    throw v0
.end method

.method public final i(JJ)V
    .locals 3

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v2, p1, v0

    .line 4
    .line 5
    if-nez v2, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Landroidx/media3/decoder/flac/i;->f:Z

    .line 9
    .line 10
    :cond_0
    iget-object v0, p0, Landroidx/media3/decoder/flac/i;->c:Landroidx/media3/decoder/flac/FlacDecoderJni;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-virtual {v0, p1, p2}, Landroidx/media3/decoder/flac/FlacDecoderJni;->reset(J)V

    .line 15
    .line 16
    .line 17
    :cond_1
    iget-object p1, p0, Landroidx/media3/decoder/flac/i;->j:Landroidx/media3/decoder/flac/d;

    .line 18
    .line 19
    if-eqz p1, :cond_2

    .line 20
    .line 21
    invoke-virtual {p1, p3, p4}, LW0/k;->d(J)V

    .line 22
    .line 23
    .line 24
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
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroidx/media3/decoder/flac/i;->j:Landroidx/media3/decoder/flac/d;

    .line 3
    .line 4
    iget-object v1, p0, Landroidx/media3/decoder/flac/i;->c:Landroidx/media3/decoder/flac/FlacDecoderJni;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {v1}, Landroidx/media3/decoder/flac/FlacDecoderJni;->release()V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Landroidx/media3/decoder/flac/i;->c:Landroidx/media3/decoder/flac/FlacDecoderJni;

    .line 12
    .line 13
    :cond_0
    return-void
.end method
