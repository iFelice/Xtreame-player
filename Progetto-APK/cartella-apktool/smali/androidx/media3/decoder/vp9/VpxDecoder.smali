.class public final Landroidx/media3/decoder/vp9/VpxDecoder;
.super Lw0/k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lw0/k;"
    }
.end annotation


# instance fields
.field public final a:Landroidx/media3/decoder/CryptoConfig;

.field public final b:J

.field public c:Ljava/nio/ByteBuffer;

.field public volatile d:I


# direct methods
.method public constructor <init>(IIILandroidx/media3/decoder/CryptoConfig;I)V
    .locals 1

    .line 1
    new-array p1, p1, [Lw0/g;

    .line 2
    .line 3
    new-array p2, p2, [Landroidx/media3/decoder/VideoDecoderOutputBuffer;

    .line 4
    .line 5
    invoke-direct {p0, p1, p2}, Lw0/k;-><init>([Lw0/g;[Lw0/i;)V

    .line 6
    .line 7
    .line 8
    sget-object p1, Landroidx/media3/decoder/vp9/VpxLibrary;->a:Lx0/b;

    .line 9
    .line 10
    invoke-virtual {p1}, Lp0/r;->isAvailable()Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    if-eqz p1, :cond_3

    .line 15
    .line 16
    iput-object p4, p0, Landroidx/media3/decoder/vp9/VpxDecoder;->a:Landroidx/media3/decoder/CryptoConfig;

    .line 17
    .line 18
    if-eqz p4, :cond_1

    .line 19
    .line 20
    invoke-static {}, Landroidx/media3/decoder/vp9/VpxLibrary;->vpxIsSecureDecodeSupported()Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-eqz p1, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    new-instance p1, Lx0/a;

    .line 28
    .line 29
    const-string p2, "Vpx decoder does not support secure decode."

    .line 30
    .line 31
    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    throw p1

    .line 35
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 36
    invoke-direct {p0, p1, p1, p5}, Landroidx/media3/decoder/vp9/VpxDecoder;->vpxInit(ZZI)J

    .line 37
    .line 38
    .line 39
    move-result-wide p1

    .line 40
    iput-wide p1, p0, Landroidx/media3/decoder/vp9/VpxDecoder;->b:J

    .line 41
    .line 42
    const-wide/16 p4, 0x0

    .line 43
    .line 44
    cmp-long v0, p1, p4

    .line 45
    .line 46
    if-eqz v0, :cond_2

    .line 47
    .line 48
    invoke-virtual {p0, p3}, Lw0/k;->setInitialInputBufferSize(I)V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :cond_2
    new-instance p1, Lx0/a;

    .line 53
    .line 54
    const-string p2, "Failed to initialize decoder"

    .line 55
    .line 56
    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    throw p1

    .line 60
    :cond_3
    new-instance p1, Lx0/a;

    .line 61
    .line 62
    const-string p2, "Failed to load decoder native libraries."

    .line 63
    .line 64
    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    throw p1
.end method

.method private native vpxClose(J)J
.end method

.method private native vpxDecode(JLjava/nio/ByteBuffer;I)J
.end method

.method private native vpxGetErrorCode(J)I
.end method

.method private native vpxGetErrorMessage(J)Ljava/lang/String;
.end method

.method private native vpxGetFrame(JLandroidx/media3/decoder/VideoDecoderOutputBuffer;)I
.end method

.method private native vpxInit(ZZI)J
.end method

.method private native vpxReleaseFrame(JLandroidx/media3/decoder/VideoDecoderOutputBuffer;)I
.end method

.method private native vpxRenderFrame(JLandroid/view/Surface;Landroidx/media3/decoder/VideoDecoderOutputBuffer;)I
.end method

.method private native vpxSecureDecode(JLjava/nio/ByteBuffer;ILandroidx/media3/decoder/CryptoConfig;I[B[BI[I[I)J
.end method


# virtual methods
.method public final c(Landroidx/media3/decoder/VideoDecoderOutputBuffer;)V
    .locals 2

    .line 1
    iget v0, p0, Landroidx/media3/decoder/vp9/VpxDecoder;->d:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    iget-boolean v0, p1, Lw0/i;->shouldBeSkipped:Z

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget-wide v0, p0, Landroidx/media3/decoder/vp9/VpxDecoder;->b:J

    .line 11
    .line 12
    invoke-direct {p0, v0, v1, p1}, Landroidx/media3/decoder/vp9/VpxDecoder;->vpxReleaseFrame(JLandroidx/media3/decoder/VideoDecoderOutputBuffer;)I

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-super {p0, p1}, Lw0/k;->releaseOutputBuffer(Lw0/i;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final createInputBuffer()Lw0/g;
    .locals 3

    .line 1
    new-instance v0, Lw0/g;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x2

    .line 5
    invoke-direct {v0, v2, v1}, Lw0/g;-><init>(II)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public final createOutputBuffer()Lw0/i;
    .locals 3

    .line 1
    new-instance v0, Landroidx/media3/decoder/VideoDecoderOutputBuffer;

    .line 2
    .line 3
    new-instance v1, LB0/x;

    .line 4
    .line 5
    const/4 v2, 0x5

    .line 6
    invoke-direct {v1, p0, v2}, LB0/x;-><init>(Ljava/lang/Object;I)V

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Landroidx/media3/decoder/VideoDecoderOutputBuffer;-><init>(Lw0/h;)V

    .line 10
    .line 11
    .line 12
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

.method public final d(Landroidx/media3/decoder/VideoDecoderOutputBuffer;Landroid/view/Surface;)V
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/media3/decoder/vp9/VpxDecoder;->b:J

    .line 2
    .line 3
    invoke-direct {p0, v0, v1, p2, p1}, Landroidx/media3/decoder/vp9/VpxDecoder;->vpxRenderFrame(JLandroid/view/Surface;Landroidx/media3/decoder/VideoDecoderOutputBuffer;)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    const/4 p2, -0x1

    .line 8
    if-eq p1, p2, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    new-instance p1, Lx0/a;

    .line 12
    .line 13
    const-string p2, "Buffer render failed."

    .line 14
    .line 15
    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    throw p1
.end method

.method public final decode(Lw0/g;Lw0/i;Z)Lw0/e;
    .locals 12

    .line 1
    check-cast p2, Landroidx/media3/decoder/VideoDecoderOutputBuffer;

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    iget-object p3, p0, Landroidx/media3/decoder/vp9/VpxDecoder;->c:Ljava/nio/ByteBuffer;

    .line 6
    .line 7
    if-eqz p3, :cond_0

    .line 8
    .line 9
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-object v3, p1, Lw0/g;->I:Ljava/nio/ByteBuffer;

    .line 13
    .line 14
    sget-object p3, Lp0/M;->a:Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {v3}, Ljava/nio/Buffer;->limit()I

    .line 17
    .line 18
    .line 19
    move-result v4

    .line 20
    iget-object p3, p1, Lw0/g;->H:Lw0/c;

    .line 21
    .line 22
    const/high16 v0, 0x40000000    # 2.0f

    .line 23
    .line 24
    invoke-virtual {p1, v0}, Lw0/a;->getFlag(I)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    iget-wide v1, p0, Landroidx/media3/decoder/vp9/VpxDecoder;->b:J

    .line 31
    .line 32
    iget-object v5, p0, Landroidx/media3/decoder/vp9/VpxDecoder;->a:Landroidx/media3/decoder/CryptoConfig;

    .line 33
    .line 34
    iget v6, p3, Lw0/c;->c:I

    .line 35
    .line 36
    iget-object v7, p3, Lw0/c;->b:[B

    .line 37
    .line 38
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    iget-object v8, p3, Lw0/c;->a:[B

    .line 42
    .line 43
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    iget v9, p3, Lw0/c;->f:I

    .line 47
    .line 48
    iget-object v10, p3, Lw0/c;->d:[I

    .line 49
    .line 50
    iget-object v11, p3, Lw0/c;->e:[I

    .line 51
    .line 52
    move-object v0, p0

    .line 53
    invoke-direct/range {v0 .. v11}, Landroidx/media3/decoder/vp9/VpxDecoder;->vpxSecureDecode(JLjava/nio/ByteBuffer;ILandroidx/media3/decoder/CryptoConfig;I[B[BI[I[I)J

    .line 54
    .line 55
    .line 56
    move-result-wide v0

    .line 57
    goto :goto_0

    .line 58
    :cond_1
    iget-wide v0, p0, Landroidx/media3/decoder/vp9/VpxDecoder;->b:J

    .line 59
    .line 60
    invoke-direct {p0, v0, v1, v3, v4}, Landroidx/media3/decoder/vp9/VpxDecoder;->vpxDecode(JLjava/nio/ByteBuffer;I)J

    .line 61
    .line 62
    .line 63
    move-result-wide v0

    .line 64
    :goto_0
    const-wide/16 v2, 0x0

    .line 65
    .line 66
    cmp-long p3, v0, v2

    .line 67
    .line 68
    if-eqz p3, :cond_3

    .line 69
    .line 70
    const-wide/16 p1, -0x2

    .line 71
    .line 72
    cmp-long p3, v0, p1

    .line 73
    .line 74
    if-nez p3, :cond_2

    .line 75
    .line 76
    new-instance p1, Ljava/lang/StringBuilder;

    .line 77
    .line 78
    const-string p2, "Drm error: "

    .line 79
    .line 80
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    iget-wide p2, p0, Landroidx/media3/decoder/vp9/VpxDecoder;->b:J

    .line 84
    .line 85
    invoke-direct {p0, p2, p3}, Landroidx/media3/decoder/vp9/VpxDecoder;->vpxGetErrorMessage(J)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p2

    .line 89
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    new-instance p2, LD0/t;

    .line 97
    .line 98
    iget-wide v0, p0, Landroidx/media3/decoder/vp9/VpxDecoder;->b:J

    .line 99
    .line 100
    invoke-direct {p0, v0, v1}, Landroidx/media3/decoder/vp9/VpxDecoder;->vpxGetErrorCode(J)I

    .line 101
    .line 102
    .line 103
    invoke-direct {p2, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    new-instance p3, Lx0/a;

    .line 107
    .line 108
    invoke-direct {p3, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 109
    .line 110
    .line 111
    goto/16 :goto_5

    .line 112
    .line 113
    :cond_2
    new-instance p3, Lx0/a;

    .line 114
    .line 115
    new-instance p1, Ljava/lang/StringBuilder;

    .line 116
    .line 117
    const-string p2, "Decode error: "

    .line 118
    .line 119
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    iget-wide v0, p0, Landroidx/media3/decoder/vp9/VpxDecoder;->b:J

    .line 123
    .line 124
    invoke-direct {p0, v0, v1}, Landroidx/media3/decoder/vp9/VpxDecoder;->vpxGetErrorMessage(J)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object p2

    .line 128
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    invoke-direct {p3, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    goto :goto_5

    .line 139
    :cond_3
    invoke-virtual {p1}, Lw0/a;->hasSupplementalData()Z

    .line 140
    .line 141
    .line 142
    move-result p3

    .line 143
    if-eqz p3, :cond_6

    .line 144
    .line 145
    iget-object p3, p1, Lw0/g;->L:Ljava/nio/ByteBuffer;

    .line 146
    .line 147
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 148
    .line 149
    .line 150
    invoke-virtual {p3}, Ljava/nio/Buffer;->remaining()I

    .line 151
    .line 152
    .line 153
    move-result v0

    .line 154
    if-lez v0, :cond_6

    .line 155
    .line 156
    iget-object v1, p0, Landroidx/media3/decoder/vp9/VpxDecoder;->c:Ljava/nio/ByteBuffer;

    .line 157
    .line 158
    if-eqz v1, :cond_5

    .line 159
    .line 160
    invoke-virtual {v1}, Ljava/nio/Buffer;->capacity()I

    .line 161
    .line 162
    .line 163
    move-result v1

    .line 164
    if-ge v1, v0, :cond_4

    .line 165
    .line 166
    goto :goto_1

    .line 167
    :cond_4
    iget-object v0, p0, Landroidx/media3/decoder/vp9/VpxDecoder;->c:Ljava/nio/ByteBuffer;

    .line 168
    .line 169
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 170
    .line 171
    .line 172
    goto :goto_2

    .line 173
    :cond_5
    :goto_1
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    iput-object v0, p0, Landroidx/media3/decoder/vp9/VpxDecoder;->c:Ljava/nio/ByteBuffer;

    .line 178
    .line 179
    :goto_2
    iget-object v0, p0, Landroidx/media3/decoder/vp9/VpxDecoder;->c:Ljava/nio/ByteBuffer;

    .line 180
    .line 181
    invoke-virtual {v0, p3}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 182
    .line 183
    .line 184
    iget-object p3, p0, Landroidx/media3/decoder/vp9/VpxDecoder;->c:Ljava/nio/ByteBuffer;

    .line 185
    .line 186
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 187
    .line 188
    .line 189
    :cond_6
    iget-wide v0, p1, Lw0/g;->K:J

    .line 190
    .line 191
    invoke-virtual {p0, v0, v1}, Lw0/k;->isAtLeastOutputStartTimeUs(J)Z

    .line 192
    .line 193
    .line 194
    move-result p3

    .line 195
    const/4 v0, 0x1

    .line 196
    if-eqz p3, :cond_9

    .line 197
    .line 198
    iget-wide v1, p1, Lw0/g;->K:J

    .line 199
    .line 200
    iget p3, p0, Landroidx/media3/decoder/vp9/VpxDecoder;->d:I

    .line 201
    .line 202
    iget-object v3, p0, Landroidx/media3/decoder/vp9/VpxDecoder;->c:Ljava/nio/ByteBuffer;

    .line 203
    .line 204
    invoke-virtual {p2, v1, v2, p3, v3}, Landroidx/media3/decoder/VideoDecoderOutputBuffer;->init(JILjava/nio/ByteBuffer;)V

    .line 205
    .line 206
    .line 207
    iget-wide v1, p0, Landroidx/media3/decoder/vp9/VpxDecoder;->b:J

    .line 208
    .line 209
    invoke-direct {p0, v1, v2, p2}, Landroidx/media3/decoder/vp9/VpxDecoder;->vpxGetFrame(JLandroidx/media3/decoder/VideoDecoderOutputBuffer;)I

    .line 210
    .line 211
    .line 212
    move-result p3

    .line 213
    if-ne p3, v0, :cond_7

    .line 214
    .line 215
    iput-boolean v0, p2, Lw0/i;->shouldBeSkipped:Z

    .line 216
    .line 217
    goto :goto_3

    .line 218
    :cond_7
    const/4 v0, -0x1

    .line 219
    if-ne p3, v0, :cond_8

    .line 220
    .line 221
    new-instance p3, Lx0/a;

    .line 222
    .line 223
    const-string p1, "Buffer initialization failed."

    .line 224
    .line 225
    invoke-direct {p3, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    goto :goto_5

    .line 229
    :cond_8
    :goto_3
    iget-object p1, p1, Lw0/g;->G:Lm0/t;

    .line 230
    .line 231
    iput-object p1, p2, Landroidx/media3/decoder/VideoDecoderOutputBuffer;->format:Lm0/t;

    .line 232
    .line 233
    goto :goto_4

    .line 234
    :cond_9
    iput-boolean v0, p2, Lw0/i;->shouldBeSkipped:Z

    .line 235
    .line 236
    :goto_4
    const/4 p3, 0x0

    .line 237
    :goto_5
    return-object p3
.end method

.method public final getName()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "libvpx"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Landroidx/media3/decoder/vp9/VpxLibrary;->a()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    return-object v0
.end method

.method public final release()V
    .locals 2

    .line 1
    invoke-super {p0}, Lw0/k;->release()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Landroidx/media3/decoder/vp9/VpxDecoder;->c:Ljava/nio/ByteBuffer;

    .line 6
    .line 7
    iget-wide v0, p0, Landroidx/media3/decoder/vp9/VpxDecoder;->b:J

    .line 8
    .line 9
    invoke-direct {p0, v0, v1}, Landroidx/media3/decoder/vp9/VpxDecoder;->vpxClose(J)J

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final bridge synthetic releaseOutputBuffer(Lw0/i;)V
    .locals 0

    .line 1
    check-cast p1, Landroidx/media3/decoder/VideoDecoderOutputBuffer;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroidx/media3/decoder/vp9/VpxDecoder;->c(Landroidx/media3/decoder/VideoDecoderOutputBuffer;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
