.class public final Landroidx/media3/decoder/flac/k;
.super LD0/B;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/os/Handler;LD0/o;LD0/v;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, LD0/B;-><init>(Landroid/os/Handler;LD0/o;LD0/v;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final createDecoder(Lm0/t;Landroidx/media3/decoder/CryptoConfig;)Lw0/d;
    .locals 1

    .line 1
    const-string p2, "createFlacDecoder"

    .line 2
    .line 3
    invoke-static {p2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance p2, Landroidx/media3/decoder/flac/e;

    .line 7
    .line 8
    iget v0, p1, Lm0/t;->p:I

    .line 9
    .line 10
    iget-object p1, p1, Lm0/t;->r:Ljava/util/List;

    .line 11
    .line 12
    invoke-direct {p2, v0, p1}, Landroidx/media3/decoder/flac/e;-><init>(ILjava/util/List;)V

    .line 13
    .line 14
    .line 15
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 16
    .line 17
    .line 18
    return-object p2
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "LibflacAudioRenderer"

    .line 2
    .line 3
    return-object v0
.end method

.method public final getOutputFormat(Lw0/d;)Lm0/t;
    .locals 2

    .line 1
    check-cast p1, Landroidx/media3/decoder/flac/e;

    .line 2
    .line 3
    iget-object p1, p1, Landroidx/media3/decoder/flac/e;->a:Landroidx/media3/extractor/FlacStreamMetadata;

    .line 4
    .line 5
    iget v0, p1, Landroidx/media3/extractor/FlacStreamMetadata;->bitsPerSample:I

    .line 6
    .line 7
    sget-object v1, Lp0/M;->a:Ljava/lang/String;

    .line 8
    .line 9
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 10
    .line 11
    invoke-static {v0, v1}, Lp0/M;->A(ILjava/nio/ByteOrder;)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    iget v1, p1, Landroidx/media3/extractor/FlacStreamMetadata;->channels:I

    .line 16
    .line 17
    iget p1, p1, Landroidx/media3/extractor/FlacStreamMetadata;->sampleRate:I

    .line 18
    .line 19
    invoke-static {v0, v1, p1}, Lp0/M;->B(III)Lm0/t;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    return-object p1
.end method

.method public final supportsFormatInternal(Lm0/t;)I
    .locals 4

    .line 1
    invoke-static {}, Landroidx/media3/decoder/flac/j;->isAvailable()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_4

    .line 7
    .line 8
    iget-object v0, p1, Lm0/t;->o:Ljava/lang/String;

    .line 9
    .line 10
    const-string v2, "audio/flac"

    .line 11
    .line 12
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_0
    iget-object v0, p1, Lm0/t;->r:Ljava/util/List;

    .line 20
    .line 21
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    const/4 v3, 0x2

    .line 26
    if-eqz v2, :cond_1

    .line 27
    .line 28
    iget v0, p1, Lm0/t;->G:I

    .line 29
    .line 30
    iget v1, p1, Lm0/t;->H:I

    .line 31
    .line 32
    invoke-static {v3, v0, v1}, Lp0/M;->B(III)Lm0/t;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    goto :goto_0

    .line 37
    :cond_1
    new-instance v2, Landroidx/media3/extractor/FlacStreamMetadata;

    .line 38
    .line 39
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    check-cast v0, [B

    .line 44
    .line 45
    const/16 v1, 0x8

    .line 46
    .line 47
    invoke-direct {v2, v0, v1}, Landroidx/media3/extractor/FlacStreamMetadata;-><init>([BI)V

    .line 48
    .line 49
    .line 50
    iget v0, v2, Landroidx/media3/extractor/FlacStreamMetadata;->bitsPerSample:I

    .line 51
    .line 52
    sget-object v1, Lp0/M;->a:Ljava/lang/String;

    .line 53
    .line 54
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 55
    .line 56
    invoke-static {v0, v1}, Lp0/M;->A(ILjava/nio/ByteOrder;)I

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    iget v1, v2, Landroidx/media3/extractor/FlacStreamMetadata;->channels:I

    .line 61
    .line 62
    iget v2, v2, Landroidx/media3/extractor/FlacStreamMetadata;->sampleRate:I

    .line 63
    .line 64
    invoke-static {v0, v1, v2}, Lp0/M;->B(III)Lm0/t;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    :goto_0
    invoke-virtual {p0, v0}, LD0/B;->sinkSupportsFormat(Lm0/t;)Z

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    if-nez v0, :cond_2

    .line 73
    .line 74
    const/4 p1, 0x1

    .line 75
    return p1

    .line 76
    :cond_2
    iget p1, p1, Lm0/t;->P:I

    .line 77
    .line 78
    if-eqz p1, :cond_3

    .line 79
    .line 80
    return v3

    .line 81
    :cond_3
    const/4 p1, 0x4

    .line 82
    return p1

    .line 83
    :cond_4
    :goto_1
    return v1
.end method
