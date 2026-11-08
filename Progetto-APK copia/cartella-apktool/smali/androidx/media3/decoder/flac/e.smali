.class public final Landroidx/media3/decoder/flac/e;
.super Lw0/k;
.source "SourceFile"


# instance fields
.field public final a:Landroidx/media3/extractor/FlacStreamMetadata;

.field public final b:Landroidx/media3/decoder/flac/FlacDecoderJni;


# direct methods
.method public constructor <init>(ILjava/util/List;)V
    .locals 2

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
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/4 v1, 0x1

    .line 15
    if-ne v0, v1, :cond_1

    .line 16
    .line 17
    new-instance v0, Landroidx/media3/decoder/flac/FlacDecoderJni;

    .line 18
    .line 19
    invoke-direct {v0}, Landroidx/media3/decoder/flac/FlacDecoderJni;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Landroidx/media3/decoder/flac/e;->b:Landroidx/media3/decoder/flac/FlacDecoderJni;

    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    check-cast p2, [B

    .line 30
    .line 31
    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    invoke-virtual {v0, p2}, Landroidx/media3/decoder/flac/FlacDecoderJni;->setData(Ljava/nio/ByteBuffer;)V

    .line 36
    .line 37
    .line 38
    :try_start_0
    invoke-virtual {v0}, Landroidx/media3/decoder/flac/FlacDecoderJni;->decodeStreamMetadata()Landroidx/media3/extractor/FlacStreamMetadata;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    iput-object p2, p0, Landroidx/media3/decoder/flac/e;->a:Landroidx/media3/extractor/FlacStreamMetadata;
    :try_end_0
    .catch Lm0/P; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    .line 44
    const/4 v0, -0x1

    .line 45
    if-eq p1, v0, :cond_0

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    iget p1, p2, Landroidx/media3/extractor/FlacStreamMetadata;->maxFrameSize:I

    .line 49
    .line 50
    :goto_0
    invoke-virtual {p0, p1}, Lw0/k;->setInitialInputBufferSize(I)V

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :catch_0
    move-exception p1

    .line 55
    goto :goto_1

    .line 56
    :catch_1
    move-exception p1

    .line 57
    goto :goto_2

    .line 58
    :goto_1
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 59
    .line 60
    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 61
    .line 62
    .line 63
    throw p2

    .line 64
    :goto_2
    new-instance p2, Landroidx/media3/decoder/flac/f;

    .line 65
    .line 66
    const-string v0, "Failed to decode StreamInfo"

    .line 67
    .line 68
    invoke-direct {p2, v0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 69
    .line 70
    .line 71
    throw p2

    .line 72
    :cond_1
    new-instance p1, Landroidx/media3/decoder/flac/f;

    .line 73
    .line 74
    const-string p2, "Initialization data must be of length 1"

    .line 75
    .line 76
    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    throw p1
.end method


# virtual methods
.method public final createInputBuffer()Lw0/g;
    .locals 3

    .line 1
    new-instance v0, Lw0/g;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

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
    new-instance v0, Landroidx/media3/decoder/SimpleDecoderOutputBuffer;

    .line 2
    .line 3
    new-instance v1, LB0/x;

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    invoke-direct {v1, p0, v2}, LB0/x;-><init>(Ljava/lang/Object;I)V

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Landroidx/media3/decoder/SimpleDecoderOutputBuffer;-><init>(Lw0/h;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public final createUnexpectedDecodeException(Ljava/lang/Throwable;)Lw0/e;
    .locals 2

    .line 1
    new-instance v0, Landroidx/media3/decoder/flac/f;

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
    .locals 3

    .line 1
    check-cast p2, Landroidx/media3/decoder/SimpleDecoderOutputBuffer;

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/media3/decoder/flac/e;->b:Landroidx/media3/decoder/flac/FlacDecoderJni;

    .line 4
    .line 5
    if-eqz p3, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/media3/decoder/flac/FlacDecoderJni;->flush()V

    .line 8
    .line 9
    .line 10
    :cond_0
    iget-object p3, p1, Lw0/g;->I:Ljava/nio/ByteBuffer;

    .line 11
    .line 12
    sget-object v1, Lp0/M;->a:Ljava/lang/String;

    .line 13
    .line 14
    invoke-virtual {v0, p3}, Landroidx/media3/decoder/flac/FlacDecoderJni;->setData(Ljava/nio/ByteBuffer;)V

    .line 15
    .line 16
    .line 17
    iget-wide v1, p1, Lw0/g;->K:J

    .line 18
    .line 19
    iget-object p1, p0, Landroidx/media3/decoder/flac/e;->a:Landroidx/media3/extractor/FlacStreamMetadata;

    .line 20
    .line 21
    invoke-virtual {p1}, Landroidx/media3/extractor/FlacStreamMetadata;->getMaxDecodedFrameSize()I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    invoke-virtual {p2, v1, v2, p1}, Landroidx/media3/decoder/SimpleDecoderOutputBuffer;->init(JI)Ljava/nio/ByteBuffer;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    :try_start_0
    invoke-virtual {v0, p1}, Landroidx/media3/decoder/flac/FlacDecoderJni;->decodeSample(Ljava/nio/ByteBuffer;)V
    :try_end_0
    .catch Landroidx/media3/decoder/flac/g; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    .line 31
    .line 32
    const/4 p1, 0x0

    .line 33
    goto :goto_0

    .line 34
    :catch_0
    move-exception p1

    .line 35
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 36
    .line 37
    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 38
    .line 39
    .line 40
    throw p2

    .line 41
    :catch_1
    move-exception p1

    .line 42
    new-instance p2, Landroidx/media3/decoder/flac/f;

    .line 43
    .line 44
    const-string p3, "Frame decoding failed"

    .line 45
    .line 46
    invoke-direct {p2, p3, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 47
    .line 48
    .line 49
    move-object p1, p2

    .line 50
    :goto_0
    return-object p1
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "libflac"

    .line 2
    .line 3
    return-object v0
.end method

.method public final release()V
    .locals 1

    .line 1
    invoke-super {p0}, Lw0/k;->release()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/media3/decoder/flac/e;->b:Landroidx/media3/decoder/flac/FlacDecoderJni;

    .line 5
    .line 6
    invoke-virtual {v0}, Landroidx/media3/decoder/flac/FlacDecoderJni;->release()V

    .line 7
    .line 8
    .line 9
    return-void
.end method
