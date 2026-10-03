.class final Landroidx/media3/decoder/ffmpeg/FfmpegAudioDecoder;
.super Lw0/k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lw0/k;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:[B

.field public final c:I

.field public d:I

.field public e:J

.field public f:Z

.field public volatile g:I

.field public volatile h:I


# direct methods
.method public constructor <init>(Lm0/t;IZ)V
    .locals 10

    .line 1
    const/16 v0, 0x10

    .line 2
    .line 3
    new-array v1, v0, [Lw0/g;

    .line 4
    .line 5
    new-array v0, v0, [Landroidx/media3/decoder/SimpleDecoderOutputBuffer;

    .line 6
    .line 7
    invoke-direct {p0, v1, v0}, Lw0/k;-><init>([Lw0/g;[Lw0/i;)V

    .line 8
    .line 9
    .line 10
    sget-object v0, Landroidx/media3/decoder/ffmpeg/FfmpegLibrary;->a:Lx0/b;

    .line 11
    .line 12
    invoke-virtual {v0}, Lp0/r;->isAvailable()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_a

    .line 17
    .line 18
    iget-object v0, p1, Lm0/t;->o:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    iget-object v0, p1, Lm0/t;->o:Ljava/lang/String;

    .line 24
    .line 25
    invoke-static {v0}, Landroidx/media3/decoder/ffmpeg/FfmpegLibrary;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    iput-object v2, p0, Landroidx/media3/decoder/ffmpeg/FfmpegAudioDecoder;->a:Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    const/4 v3, 0x2

    .line 39
    const/4 v4, 0x3

    .line 40
    const/4 v5, 0x1

    .line 41
    const/4 v6, 0x0

    .line 42
    const/4 v7, -0x1

    .line 43
    sparse-switch v1, :sswitch_data_0

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :sswitch_0
    const-string v1, "audio/opus"

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-nez v0, :cond_0

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_0
    const/4 v7, 0x3

    .line 57
    goto :goto_0

    .line 58
    :sswitch_1
    const-string v1, "audio/alac"

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    if-nez v0, :cond_1

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_1
    const/4 v7, 0x2

    .line 68
    goto :goto_0

    .line 69
    :sswitch_2
    const-string v1, "audio/mp4a-latm"

    .line 70
    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    if-nez v0, :cond_2

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_2
    const/4 v7, 0x1

    .line 79
    goto :goto_0

    .line 80
    :sswitch_3
    const-string v1, "audio/vorbis"

    .line 81
    .line 82
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    if-nez v0, :cond_3

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_3
    const/4 v7, 0x0

    .line 90
    :goto_0
    const/4 v0, 0x4

    .line 91
    iget-object v1, p1, Lm0/t;->r:Ljava/util/List;

    .line 92
    .line 93
    if-eqz v7, :cond_6

    .line 94
    .line 95
    if-eq v7, v5, :cond_5

    .line 96
    .line 97
    if-eq v7, v3, :cond_4

    .line 98
    .line 99
    if-eq v7, v4, :cond_5

    .line 100
    .line 101
    const/4 v1, 0x0

    .line 102
    :goto_1
    move-object v8, v1

    .line 103
    goto :goto_2

    .line 104
    :cond_4
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    check-cast v1, [B

    .line 109
    .line 110
    array-length v4, v1

    .line 111
    add-int/lit8 v4, v4, 0xc

    .line 112
    .line 113
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 114
    .line 115
    .line 116
    move-result-object v5

    .line 117
    invoke-virtual {v5, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 118
    .line 119
    .line 120
    const v4, 0x616c6163

    .line 121
    .line 122
    .line 123
    invoke-virtual {v5, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 127
    .line 128
    .line 129
    array-length v4, v1

    .line 130
    invoke-virtual {v5, v1, v6, v4}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->array()[B

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    goto :goto_1

    .line 138
    :cond_5
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    check-cast v1, [B

    .line 143
    .line 144
    goto :goto_1

    .line 145
    :cond_6
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object v7

    .line 149
    check-cast v7, [B

    .line 150
    .line 151
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object v1

    .line 155
    check-cast v1, [B

    .line 156
    .line 157
    array-length v8, v7

    .line 158
    array-length v9, v1

    .line 159
    add-int/2addr v8, v9

    .line 160
    add-int/lit8 v8, v8, 0x6

    .line 161
    .line 162
    new-array v8, v8, [B

    .line 163
    .line 164
    array-length v9, v7

    .line 165
    shr-int/lit8 v9, v9, 0x8

    .line 166
    .line 167
    int-to-byte v9, v9

    .line 168
    aput-byte v9, v8, v6

    .line 169
    .line 170
    array-length v9, v7

    .line 171
    and-int/lit16 v9, v9, 0xff

    .line 172
    .line 173
    int-to-byte v9, v9

    .line 174
    aput-byte v9, v8, v5

    .line 175
    .line 176
    array-length v5, v7

    .line 177
    invoke-static {v7, v6, v8, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 178
    .line 179
    .line 180
    array-length v5, v7

    .line 181
    add-int/2addr v5, v3

    .line 182
    aput-byte v6, v8, v5

    .line 183
    .line 184
    array-length v5, v7

    .line 185
    add-int/2addr v5, v4

    .line 186
    aput-byte v6, v8, v5

    .line 187
    .line 188
    array-length v4, v7

    .line 189
    add-int/2addr v4, v0

    .line 190
    array-length v5, v1

    .line 191
    shr-int/lit8 v5, v5, 0x8

    .line 192
    .line 193
    int-to-byte v5, v5

    .line 194
    aput-byte v5, v8, v4

    .line 195
    .line 196
    array-length v4, v7

    .line 197
    add-int/lit8 v4, v4, 0x5

    .line 198
    .line 199
    array-length v5, v1

    .line 200
    and-int/lit16 v5, v5, 0xff

    .line 201
    .line 202
    int-to-byte v5, v5

    .line 203
    aput-byte v5, v8, v4

    .line 204
    .line 205
    array-length v4, v7

    .line 206
    add-int/lit8 v4, v4, 0x6

    .line 207
    .line 208
    array-length v5, v1

    .line 209
    invoke-static {v1, v6, v8, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 210
    .line 211
    .line 212
    :goto_2
    iput-object v8, p0, Landroidx/media3/decoder/ffmpeg/FfmpegAudioDecoder;->b:[B

    .line 213
    .line 214
    if-eqz p3, :cond_7

    .line 215
    .line 216
    const/4 v3, 0x4

    .line 217
    :cond_7
    iput v3, p0, Landroidx/media3/decoder/ffmpeg/FfmpegAudioDecoder;->c:I

    .line 218
    .line 219
    if-eqz p3, :cond_8

    .line 220
    .line 221
    const v0, 0x1fffe

    .line 222
    .line 223
    .line 224
    goto :goto_3

    .line 225
    :cond_8
    const v0, 0xffff

    .line 226
    .line 227
    .line 228
    :goto_3
    iput v0, p0, Landroidx/media3/decoder/ffmpeg/FfmpegAudioDecoder;->d:I

    .line 229
    .line 230
    iget v5, p1, Lm0/t;->H:I

    .line 231
    .line 232
    iget v6, p1, Lm0/t;->G:I

    .line 233
    .line 234
    move-object v1, p0

    .line 235
    move-object v3, v8

    .line 236
    move v4, p3

    .line 237
    invoke-direct/range {v1 .. v6}, Landroidx/media3/decoder/ffmpeg/FfmpegAudioDecoder;->ffmpegInitialize(Ljava/lang/String;[BZII)J

    .line 238
    .line 239
    .line 240
    move-result-wide v0

    .line 241
    iput-wide v0, p0, Landroidx/media3/decoder/ffmpeg/FfmpegAudioDecoder;->e:J

    .line 242
    .line 243
    const-wide/16 v2, 0x0

    .line 244
    .line 245
    cmp-long p1, v0, v2

    .line 246
    .line 247
    if-eqz p1, :cond_9

    .line 248
    .line 249
    invoke-virtual {p0, p2}, Lw0/k;->setInitialInputBufferSize(I)V

    .line 250
    .line 251
    .line 252
    return-void

    .line 253
    :cond_9
    new-instance p1, Lx0/a;

    .line 254
    .line 255
    const-string p2, "Initialization failed."

    .line 256
    .line 257
    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 258
    .line 259
    .line 260
    throw p1

    .line 261
    :cond_a
    new-instance p1, Lx0/a;

    .line 262
    .line 263
    const-string p2, "Failed to load decoder native libraries."

    .line 264
    .line 265
    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 266
    .line 267
    .line 268
    throw p1

    .line 269
    :sswitch_data_0
    .sparse-switch
        -0x3bd43e14 -> :sswitch_3
        -0x3313c2e -> :sswitch_2
        0x59ac6426 -> :sswitch_1
        0x59b2d2d8 -> :sswitch_0
    .end sparse-switch
.end method

.method private native ffmpegDecode(JLjava/nio/ByteBuffer;ILandroidx/media3/decoder/SimpleDecoderOutputBuffer;Ljava/nio/ByteBuffer;I)I
.end method

.method private native ffmpegGetChannelCount(J)I
.end method

.method private native ffmpegGetSampleRate(J)I
.end method

.method private native ffmpegInitialize(Ljava/lang/String;[BZII)J
.end method

.method private native ffmpegRelease(J)V
.end method

.method private native ffmpegReset(J[B)J
.end method

.method private growOutputBuffer(Landroidx/media3/decoder/SimpleDecoderOutputBuffer;I)Ljava/nio/ByteBuffer;
    .locals 0

    .line 1
    iput p2, p0, Landroidx/media3/decoder/ffmpeg/FfmpegAudioDecoder;->d:I

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroidx/media3/decoder/SimpleDecoderOutputBuffer;->grow(I)Ljava/nio/ByteBuffer;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method


# virtual methods
.method public final createInputBuffer()Lw0/g;
    .locals 3

    .line 1
    new-instance v0, Lw0/g;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-static {}, Landroidx/media3/decoder/ffmpeg/FfmpegLibrary;->b()I

    .line 5
    .line 6
    .line 7
    move-result v2

    .line 8
    invoke-direct {v0, v1, v2}, Lw0/g;-><init>(II)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method public final createOutputBuffer()Lw0/i;
    .locals 2

    .line 1
    new-instance v0, Landroidx/media3/decoder/SimpleDecoderOutputBuffer;

    .line 2
    .line 3
    new-instance v1, Landroidx/media3/decoder/ffmpeg/b;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Landroidx/media3/decoder/ffmpeg/b;-><init>(Landroidx/media3/decoder/ffmpeg/FfmpegAudioDecoder;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1}, Landroidx/media3/decoder/SimpleDecoderOutputBuffer;-><init>(Lw0/h;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method public final createUnexpectedDecodeException(Ljava/lang/Throwable;)Lw0/e;
    .locals 2

    .line 1
    new-instance v0, Lx0/a;

    .line 2
    .line 3
    const-string v1, "Unexpected decode error"

    .line 4
    .line 5
    invoke-direct {v0, v1, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public final decode(Lw0/g;Lw0/i;Z)Lw0/e;
    .locals 8

    .line 1
    check-cast p2, Landroidx/media3/decoder/SimpleDecoderOutputBuffer;

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    iget-wide v0, p0, Landroidx/media3/decoder/ffmpeg/FfmpegAudioDecoder;->e:J

    .line 6
    .line 7
    iget-object p3, p0, Landroidx/media3/decoder/ffmpeg/FfmpegAudioDecoder;->b:[B

    .line 8
    .line 9
    invoke-direct {p0, v0, v1, p3}, Landroidx/media3/decoder/ffmpeg/FfmpegAudioDecoder;->ffmpegReset(J[B)J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    iput-wide v0, p0, Landroidx/media3/decoder/ffmpeg/FfmpegAudioDecoder;->e:J

    .line 14
    .line 15
    const-wide/16 v2, 0x0

    .line 16
    .line 17
    cmp-long p3, v0, v2

    .line 18
    .line 19
    if-nez p3, :cond_0

    .line 20
    .line 21
    new-instance p1, Lx0/a;

    .line 22
    .line 23
    const-string p2, "Error resetting (see logcat)."

    .line 24
    .line 25
    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    goto/16 :goto_1

    .line 29
    .line 30
    :cond_0
    iget-object v3, p1, Lw0/g;->I:Ljava/nio/ByteBuffer;

    .line 31
    .line 32
    sget-object p3, Lp0/M;->a:Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {v3}, Ljava/nio/Buffer;->limit()I

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    iget-wide v0, p1, Lw0/g;->K:J

    .line 39
    .line 40
    iget p1, p0, Landroidx/media3/decoder/ffmpeg/FfmpegAudioDecoder;->d:I

    .line 41
    .line 42
    invoke-virtual {p2, v0, v1, p1}, Landroidx/media3/decoder/SimpleDecoderOutputBuffer;->init(JI)Ljava/nio/ByteBuffer;

    .line 43
    .line 44
    .line 45
    move-result-object v6

    .line 46
    iget-wide v1, p0, Landroidx/media3/decoder/ffmpeg/FfmpegAudioDecoder;->e:J

    .line 47
    .line 48
    iget v7, p0, Landroidx/media3/decoder/ffmpeg/FfmpegAudioDecoder;->d:I

    .line 49
    .line 50
    move-object v0, p0

    .line 51
    move-object v5, p2

    .line 52
    invoke-direct/range {v0 .. v7}, Landroidx/media3/decoder/ffmpeg/FfmpegAudioDecoder;->ffmpegDecode(JLjava/nio/ByteBuffer;ILandroidx/media3/decoder/SimpleDecoderOutputBuffer;Ljava/nio/ByteBuffer;I)I

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    const/4 p3, -0x2

    .line 57
    if-ne p1, p3, :cond_1

    .line 58
    .line 59
    new-instance p1, Lx0/a;

    .line 60
    .line 61
    const-string p2, "Error decoding (see logcat)."

    .line 62
    .line 63
    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_1
    const/4 p3, -0x1

    .line 68
    const/4 v0, 0x0

    .line 69
    const/4 v1, 0x1

    .line 70
    if-ne p1, p3, :cond_2

    .line 71
    .line 72
    iput-boolean v1, p2, Lw0/i;->shouldBeSkipped:Z

    .line 73
    .line 74
    :goto_0
    move-object p1, v0

    .line 75
    goto :goto_1

    .line 76
    :cond_2
    if-nez p1, :cond_3

    .line 77
    .line 78
    iput-boolean v1, p2, Lw0/i;->shouldBeSkipped:Z

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_3
    iget-boolean p3, p0, Landroidx/media3/decoder/ffmpeg/FfmpegAudioDecoder;->f:Z

    .line 82
    .line 83
    if-nez p3, :cond_5

    .line 84
    .line 85
    iget-wide v2, p0, Landroidx/media3/decoder/ffmpeg/FfmpegAudioDecoder;->e:J

    .line 86
    .line 87
    invoke-direct {p0, v2, v3}, Landroidx/media3/decoder/ffmpeg/FfmpegAudioDecoder;->ffmpegGetChannelCount(J)I

    .line 88
    .line 89
    .line 90
    move-result p3

    .line 91
    iput p3, p0, Landroidx/media3/decoder/ffmpeg/FfmpegAudioDecoder;->g:I

    .line 92
    .line 93
    iget-wide v2, p0, Landroidx/media3/decoder/ffmpeg/FfmpegAudioDecoder;->e:J

    .line 94
    .line 95
    invoke-direct {p0, v2, v3}, Landroidx/media3/decoder/ffmpeg/FfmpegAudioDecoder;->ffmpegGetSampleRate(J)I

    .line 96
    .line 97
    .line 98
    move-result p3

    .line 99
    iput p3, p0, Landroidx/media3/decoder/ffmpeg/FfmpegAudioDecoder;->h:I

    .line 100
    .line 101
    iget p3, p0, Landroidx/media3/decoder/ffmpeg/FfmpegAudioDecoder;->h:I

    .line 102
    .line 103
    if-nez p3, :cond_4

    .line 104
    .line 105
    const-string p3, "alac"

    .line 106
    .line 107
    iget-object v2, p0, Landroidx/media3/decoder/ffmpeg/FfmpegAudioDecoder;->a:Ljava/lang/String;

    .line 108
    .line 109
    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    move-result p3

    .line 113
    if-eqz p3, :cond_4

    .line 114
    .line 115
    iget-object p3, p0, Landroidx/media3/decoder/ffmpeg/FfmpegAudioDecoder;->b:[B

    .line 116
    .line 117
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 118
    .line 119
    .line 120
    new-instance p3, Lp0/E;

    .line 121
    .line 122
    iget-object v2, p0, Landroidx/media3/decoder/ffmpeg/FfmpegAudioDecoder;->b:[B

    .line 123
    .line 124
    invoke-direct {p3, v2}, Lp0/E;-><init>([B)V

    .line 125
    .line 126
    .line 127
    iget-object v2, p0, Landroidx/media3/decoder/ffmpeg/FfmpegAudioDecoder;->b:[B

    .line 128
    .line 129
    array-length v2, v2

    .line 130
    add-int/lit8 v2, v2, -0x4

    .line 131
    .line 132
    invoke-virtual {p3, v2}, Lp0/E;->L(I)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {p3}, Lp0/E;->D()I

    .line 136
    .line 137
    .line 138
    move-result p3

    .line 139
    iput p3, p0, Landroidx/media3/decoder/ffmpeg/FfmpegAudioDecoder;->h:I

    .line 140
    .line 141
    :cond_4
    iput-boolean v1, p0, Landroidx/media3/decoder/ffmpeg/FfmpegAudioDecoder;->f:Z

    .line 142
    .line 143
    :cond_5
    iget-object p2, p2, Landroidx/media3/decoder/SimpleDecoderOutputBuffer;->data:Ljava/nio/ByteBuffer;

    .line 144
    .line 145
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 146
    .line 147
    .line 148
    const/4 p3, 0x0

    .line 149
    invoke-virtual {p2, p3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 150
    .line 151
    .line 152
    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 153
    .line 154
    .line 155
    goto :goto_0

    .line 156
    :goto_1
    return-object p1
.end method

.method public final getName()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "ffmpeg"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Landroidx/media3/decoder/ffmpeg/FfmpegLibrary;->c()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v1, "-"

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    iget-object v1, p0, Landroidx/media3/decoder/ffmpeg/FfmpegAudioDecoder;->a:Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    return-object v0
.end method

.method public final release()V
    .locals 2

    .line 1
    invoke-super {p0}, Lw0/k;->release()V

    .line 2
    .line 3
    .line 4
    iget-wide v0, p0, Landroidx/media3/decoder/ffmpeg/FfmpegAudioDecoder;->e:J

    .line 5
    .line 6
    invoke-direct {p0, v0, v1}, Landroidx/media3/decoder/ffmpeg/FfmpegAudioDecoder;->ffmpegRelease(J)V

    .line 7
    .line 8
    .line 9
    const-wide/16 v0, 0x0

    .line 10
    .line 11
    iput-wide v0, p0, Landroidx/media3/decoder/ffmpeg/FfmpegAudioDecoder;->e:J

    .line 12
    .line 13
    return-void
.end method
