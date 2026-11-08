.class final Landroidx/media3/decoder/flac/FlacDecoderJni;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TEMP_BUFFER_SIZE:I = 0x2000


# instance fields
.field private byteBufferData:Ljava/nio/ByteBuffer;

.field private endOfExtractorInput:Z

.field private extractorInput:LW0/t;

.field private final nativeDecoderContext:J

.field private tempBuffer:[B


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroidx/media3/decoder/flac/j;->isAvailable()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    invoke-direct {p0}, Landroidx/media3/decoder/flac/FlacDecoderJni;->flacInit()J

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    iput-wide v0, p0, Landroidx/media3/decoder/flac/FlacDecoderJni;->nativeDecoderContext:J

    .line 15
    .line 16
    const-wide/16 v2, 0x0

    .line 17
    .line 18
    cmp-long v4, v0, v2

    .line 19
    .line 20
    if-eqz v4, :cond_0

    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    new-instance v0, Landroidx/media3/decoder/flac/f;

    .line 24
    .line 25
    const-string v1, "Failed to initialize decoder"

    .line 26
    .line 27
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    throw v0

    .line 31
    :cond_1
    new-instance v0, Landroidx/media3/decoder/flac/f;

    .line 32
    .line 33
    const-string v1, "Failed to load decoder native libraries."

    .line 34
    .line 35
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    throw v0
.end method

.method private native flacDecodeMetadata(J)Landroidx/media3/extractor/FlacStreamMetadata;
.end method

.method private native flacDecodeToArray(J[B)I
.end method

.method private native flacDecodeToBuffer(JLjava/nio/ByteBuffer;)I
.end method

.method private native flacFlush(J)V
.end method

.method private native flacGetDecodePosition(J)J
.end method

.method private native flacGetLastFrameFirstSampleIndex(J)J
.end method

.method private native flacGetLastFrameTimestamp(J)J
.end method

.method private native flacGetNextFrameFirstSampleIndex(J)J
.end method

.method private native flacGetSeekPoints(JJ[J)Z
.end method

.method private native flacGetStateString(J)Ljava/lang/String;
.end method

.method private native flacInit()J
.end method

.method private native flacIsDecoderAtEndOfStream(J)Z
.end method

.method private native flacRelease(J)V
.end method

.method private native flacReset(JJ)V
.end method

.method private readFromExtractorInput(LW0/t;[BII)I
    .locals 0

    .line 1
    invoke-interface {p1, p2, p3, p4}, Lm0/j;->q([BII)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/4 p2, -0x1

    .line 6
    if-ne p1, p2, :cond_0

    .line 7
    .line 8
    const/4 p1, 0x1

    .line 9
    iput-boolean p1, p0, Landroidx/media3/decoder/flac/FlacDecoderJni;->endOfExtractorInput:Z

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    :cond_0
    return p1
.end method


# virtual methods
.method public clearData()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroidx/media3/decoder/flac/FlacDecoderJni;->byteBufferData:Ljava/nio/ByteBuffer;

    .line 3
    .line 4
    iput-object v0, p0, Landroidx/media3/decoder/flac/FlacDecoderJni;->extractorInput:LW0/t;

    .line 5
    .line 6
    return-void
.end method

.method public decodeSample(Ljava/nio/ByteBuffer;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-wide v0, p0, Landroidx/media3/decoder/flac/FlacDecoderJni;->nativeDecoderContext:J

    .line 11
    .line 12
    invoke-direct {p0, v0, v1, p1}, Landroidx/media3/decoder/flac/FlacDecoderJni;->flacDecodeToBuffer(JLjava/nio/ByteBuffer;)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget-wide v0, p0, Landroidx/media3/decoder/flac/FlacDecoderJni;->nativeDecoderContext:J

    .line 18
    .line 19
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-direct {p0, v0, v1, v2}, Landroidx/media3/decoder/flac/FlacDecoderJni;->flacDecodeToArray(J[B)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    :goto_0
    if-gez v0, :cond_2

    .line 28
    .line 29
    invoke-virtual {p0}, Landroidx/media3/decoder/flac/FlacDecoderJni;->isDecoderAtEndOfInput()Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    const/4 v0, 0x0

    .line 36
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 37
    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_1
    new-instance p1, Landroidx/media3/decoder/flac/g;

    .line 41
    .line 42
    const-string v0, "Cannot decode FLAC frame"

    .line 43
    .line 44
    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    throw p1

    .line 48
    :cond_2
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 49
    .line 50
    .line 51
    :goto_1
    return-void
.end method

.method public decodeSampleWithBacktrackPosition(Ljava/nio/ByteBuffer;J)V
    .locals 3

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Landroidx/media3/decoder/flac/FlacDecoderJni;->decodeSample(Ljava/nio/ByteBuffer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    .line 3
    .line 4
    return-void

    .line 5
    :catch_0
    move-exception p1

    .line 6
    const-wide/16 v0, 0x0

    .line 7
    .line 8
    cmp-long v2, p2, v0

    .line 9
    .line 10
    if-ltz v2, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0, p2, p3}, Landroidx/media3/decoder/flac/FlacDecoderJni;->reset(J)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Landroidx/media3/decoder/flac/FlacDecoderJni;->extractorInput:LW0/t;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-interface {v0, p2, p3, p1}, LW0/t;->l(JLjava/io/IOException;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    throw p1
.end method

.method public decodeStreamMetadata()Landroidx/media3/extractor/FlacStreamMetadata;
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/media3/decoder/flac/FlacDecoderJni;->nativeDecoderContext:J

    .line 2
    .line 3
    invoke-direct {p0, v0, v1}, Landroidx/media3/decoder/flac/FlacDecoderJni;->flacDecodeMetadata(J)Landroidx/media3/extractor/FlacStreamMetadata;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_0
    const-string v0, "Failed to decode stream metadata"

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-static {v0, v1}, Lm0/P;->a(Ljava/lang/String;Ljava/lang/RuntimeException;)Lm0/P;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    throw v0
.end method

.method public flush()V
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/media3/decoder/flac/FlacDecoderJni;->nativeDecoderContext:J

    .line 2
    .line 3
    invoke-direct {p0, v0, v1}, Landroidx/media3/decoder/flac/FlacDecoderJni;->flacFlush(J)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public getDecodePosition()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/media3/decoder/flac/FlacDecoderJni;->nativeDecoderContext:J

    .line 2
    .line 3
    invoke-direct {p0, v0, v1}, Landroidx/media3/decoder/flac/FlacDecoderJni;->flacGetDecodePosition(J)J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public getLastFrameFirstSampleIndex()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/media3/decoder/flac/FlacDecoderJni;->nativeDecoderContext:J

    .line 2
    .line 3
    invoke-direct {p0, v0, v1}, Landroidx/media3/decoder/flac/FlacDecoderJni;->flacGetLastFrameFirstSampleIndex(J)J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public getLastFrameTimestamp()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/media3/decoder/flac/FlacDecoderJni;->nativeDecoderContext:J

    .line 2
    .line 3
    invoke-direct {p0, v0, v1}, Landroidx/media3/decoder/flac/FlacDecoderJni;->flacGetLastFrameTimestamp(J)J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public getNextFrameFirstSampleIndex()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/media3/decoder/flac/FlacDecoderJni;->nativeDecoderContext:J

    .line 2
    .line 3
    invoke-direct {p0, v0, v1}, Landroidx/media3/decoder/flac/FlacDecoderJni;->flacGetNextFrameFirstSampleIndex(J)J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public getSeekPoints(J)LW0/E;
    .locals 7

    .line 1
    const/4 v0, 0x4

    .line 2
    new-array v0, v0, [J

    .line 3
    .line 4
    iget-wide v2, p0, Landroidx/media3/decoder/flac/FlacDecoderJni;->nativeDecoderContext:J

    .line 5
    .line 6
    move-object v1, p0

    .line 7
    move-wide v4, p1

    .line 8
    move-object v6, v0

    .line 9
    invoke-direct/range {v1 .. v6}, Landroidx/media3/decoder/flac/FlacDecoderJni;->flacGetSeekPoints(JJ[J)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    const/4 p1, 0x0

    .line 16
    return-object p1

    .line 17
    :cond_0
    new-instance p1, LW0/G;

    .line 18
    .line 19
    const/4 p2, 0x0

    .line 20
    aget-wide v1, v0, p2

    .line 21
    .line 22
    const/4 p2, 0x1

    .line 23
    aget-wide v3, v0, p2

    .line 24
    .line 25
    invoke-direct {p1, v1, v2, v3, v4}, LW0/G;-><init>(JJ)V

    .line 26
    .line 27
    .line 28
    const/4 p2, 0x2

    .line 29
    aget-wide v3, v0, p2

    .line 30
    .line 31
    cmp-long p2, v3, v1

    .line 32
    .line 33
    if-nez p2, :cond_1

    .line 34
    .line 35
    move-object p2, p1

    .line 36
    goto :goto_0

    .line 37
    :cond_1
    new-instance p2, LW0/G;

    .line 38
    .line 39
    const/4 v1, 0x3

    .line 40
    aget-wide v1, v0, v1

    .line 41
    .line 42
    invoke-direct {p2, v3, v4, v1, v2}, LW0/G;-><init>(JJ)V

    .line 43
    .line 44
    .line 45
    :goto_0
    new-instance v0, LW0/E;

    .line 46
    .line 47
    invoke-direct {v0, p1, p2}, LW0/E;-><init>(LW0/G;LW0/G;)V

    .line 48
    .line 49
    .line 50
    return-object v0
.end method

.method public getStateString()Ljava/lang/String;
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/media3/decoder/flac/FlacDecoderJni;->nativeDecoderContext:J

    .line 2
    .line 3
    invoke-direct {p0, v0, v1}, Landroidx/media3/decoder/flac/FlacDecoderJni;->flacGetStateString(J)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public isDecoderAtEndOfInput()Z
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/media3/decoder/flac/FlacDecoderJni;->nativeDecoderContext:J

    .line 2
    .line 3
    invoke-direct {p0, v0, v1}, Landroidx/media3/decoder/flac/FlacDecoderJni;->flacIsDecoderAtEndOfStream(J)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public isEndOfData()Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/decoder/flac/FlacDecoderJni;->byteBufferData:Ljava/nio/ByteBuffer;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v1, 0x0

    .line 14
    :goto_0
    return v1

    .line 15
    :cond_1
    iget-object v0, p0, Landroidx/media3/decoder/flac/FlacDecoderJni;->extractorInput:LW0/t;

    .line 16
    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    iget-boolean v0, p0, Landroidx/media3/decoder/flac/FlacDecoderJni;->endOfExtractorInput:Z

    .line 20
    .line 21
    return v0

    .line 22
    :cond_2
    return v1
.end method

.method public read(Ljava/nio/ByteBuffer;)I
    .locals 6

    .line 1
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Landroidx/media3/decoder/flac/FlacDecoderJni;->byteBufferData:Ljava/nio/ByteBuffer;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/nio/Buffer;->remaining()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    iget-object v1, p0, Landroidx/media3/decoder/flac/FlacDecoderJni;->byteBufferData:Ljava/nio/ByteBuffer;

    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/nio/Buffer;->limit()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    iget-object v2, p0, Landroidx/media3/decoder/flac/FlacDecoderJni;->byteBufferData:Ljava/nio/ByteBuffer;

    .line 24
    .line 25
    invoke-virtual {v2}, Ljava/nio/Buffer;->position()I

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    add-int/2addr v3, v0

    .line 30
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 31
    .line 32
    .line 33
    iget-object v2, p0, Landroidx/media3/decoder/flac/FlacDecoderJni;->byteBufferData:Ljava/nio/ByteBuffer;

    .line 34
    .line 35
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 36
    .line 37
    .line 38
    iget-object p1, p0, Landroidx/media3/decoder/flac/FlacDecoderJni;->byteBufferData:Ljava/nio/ByteBuffer;

    .line 39
    .line 40
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    iget-object v1, p0, Landroidx/media3/decoder/flac/FlacDecoderJni;->extractorInput:LW0/t;

    .line 45
    .line 46
    if-eqz v1, :cond_2

    .line 47
    .line 48
    iget-object v2, p0, Landroidx/media3/decoder/flac/FlacDecoderJni;->tempBuffer:[B

    .line 49
    .line 50
    sget-object v3, Lp0/M;->a:Ljava/lang/String;

    .line 51
    .line 52
    const/16 v3, 0x2000

    .line 53
    .line 54
    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    const/4 v3, 0x0

    .line 59
    invoke-direct {p0, v1, v2, v3, v0}, Landroidx/media3/decoder/flac/FlacDecoderJni;->readFromExtractorInput(LW0/t;[BII)I

    .line 60
    .line 61
    .line 62
    move-result v4

    .line 63
    const/4 v5, 0x4

    .line 64
    if-ge v4, v5, :cond_1

    .line 65
    .line 66
    sub-int/2addr v0, v4

    .line 67
    invoke-direct {p0, v1, v2, v4, v0}, Landroidx/media3/decoder/flac/FlacDecoderJni;->readFromExtractorInput(LW0/t;[BII)I

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    add-int/2addr v4, v0

    .line 72
    :cond_1
    move v0, v4

    .line 73
    invoke-virtual {p1, v2, v3, v0}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 74
    .line 75
    .line 76
    :goto_0
    return v0

    .line 77
    :cond_2
    const/4 p1, -0x1

    .line 78
    return p1
.end method

.method public release()V
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/media3/decoder/flac/FlacDecoderJni;->nativeDecoderContext:J

    .line 2
    .line 3
    invoke-direct {p0, v0, v1}, Landroidx/media3/decoder/flac/FlacDecoderJni;->flacRelease(J)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public reset(J)V
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/media3/decoder/flac/FlacDecoderJni;->nativeDecoderContext:J

    .line 2
    .line 3
    invoke-direct {p0, v0, v1, p1, p2}, Landroidx/media3/decoder/flac/FlacDecoderJni;->flacReset(JJ)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setData(LW0/t;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroidx/media3/decoder/flac/FlacDecoderJni;->byteBufferData:Ljava/nio/ByteBuffer;

    .line 3
    iput-object p1, p0, Landroidx/media3/decoder/flac/FlacDecoderJni;->extractorInput:LW0/t;

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Landroidx/media3/decoder/flac/FlacDecoderJni;->endOfExtractorInput:Z

    .line 5
    iget-object p1, p0, Landroidx/media3/decoder/flac/FlacDecoderJni;->tempBuffer:[B

    if-nez p1, :cond_0

    const/16 p1, 0x2000

    .line 6
    new-array p1, p1, [B

    iput-object p1, p0, Landroidx/media3/decoder/flac/FlacDecoderJni;->tempBuffer:[B

    :cond_0
    return-void
.end method

.method public setData(Ljava/nio/ByteBuffer;)V
    .locals 0

    .line 7
    iput-object p1, p0, Landroidx/media3/decoder/flac/FlacDecoderJni;->byteBufferData:Ljava/nio/ByteBuffer;

    const/4 p1, 0x0

    .line 8
    iput-object p1, p0, Landroidx/media3/decoder/flac/FlacDecoderJni;->extractorInput:LW0/t;

    return-void
.end method
