.class public final Landroidx/media3/decoder/ffmpeg/c;
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
    .locals 6

    .line 1
    const-string p2, "createFfmpegAudioDecoder"

    .line 2
    .line 3
    invoke-static {p2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget p2, p1, Lm0/t;->p:I

    .line 7
    .line 8
    const/4 v0, -0x1

    .line 9
    if-eq p2, v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/16 p2, 0x1680

    .line 13
    .line 14
    :goto_0
    new-instance v0, Landroidx/media3/decoder/ffmpeg/FfmpegAudioDecoder;

    .line 15
    .line 16
    const/4 v1, 0x2

    .line 17
    iget v2, p1, Lm0/t;->G:I

    .line 18
    .line 19
    iget v3, p1, Lm0/t;->H:I

    .line 20
    .line 21
    invoke-static {v1, v2, v3}, Lp0/M;->B(III)Lm0/t;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    invoke-virtual {p0, v4}, LD0/B;->sinkSupportsFormat(Lm0/t;)Z

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    const/4 v5, 0x1

    .line 30
    if-nez v4, :cond_1

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_1
    const/4 v4, 0x4

    .line 34
    invoke-static {v4, v2, v3}, Lp0/M;->B(III)Lm0/t;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-virtual {p0, v2}, LD0/B;->getSinkFormatSupport(Lm0/t;)I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    if-eq v2, v1, :cond_2

    .line 43
    .line 44
    const/4 v5, 0x0

    .line 45
    goto :goto_1

    .line 46
    :cond_2
    const-string v1, "audio/ac3"

    .line 47
    .line 48
    iget-object v2, p1, Lm0/t;->o:Ljava/lang/String;

    .line 49
    .line 50
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    xor-int/2addr v5, v1

    .line 55
    :goto_1
    invoke-direct {v0, p1, p2, v5}, Landroidx/media3/decoder/ffmpeg/FfmpegAudioDecoder;-><init>(Lm0/t;IZ)V

    .line 56
    .line 57
    .line 58
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 59
    .line 60
    .line 61
    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "FfmpegAudioRenderer"

    .line 2
    .line 3
    return-object v0
.end method

.method public final getOutputFormat(Lw0/d;)Lm0/t;
    .locals 2

    .line 1
    check-cast p1, Landroidx/media3/decoder/ffmpeg/FfmpegAudioDecoder;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance v0, Lm0/s;

    .line 7
    .line 8
    invoke-direct {v0}, Lm0/s;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v1, "audio/raw"

    .line 12
    .line 13
    invoke-static {v1}, Lm0/O;->p(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    iput-object v1, v0, Lm0/s;->n:Ljava/lang/String;

    .line 18
    .line 19
    iget v1, p1, Landroidx/media3/decoder/ffmpeg/FfmpegAudioDecoder;->g:I

    .line 20
    .line 21
    iput v1, v0, Lm0/s;->F:I

    .line 22
    .line 23
    iget v1, p1, Landroidx/media3/decoder/ffmpeg/FfmpegAudioDecoder;->h:I

    .line 24
    .line 25
    iput v1, v0, Lm0/s;->G:I

    .line 26
    .line 27
    iget p1, p1, Landroidx/media3/decoder/ffmpeg/FfmpegAudioDecoder;->c:I

    .line 28
    .line 29
    iput p1, v0, Lm0/s;->H:I

    .line 30
    .line 31
    invoke-virtual {v0}, Lm0/s;->a()Lm0/t;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    return-object p1
.end method

.method public final supportsFormatInternal(Lm0/t;)I
    .locals 5

    .line 1
    iget-object v0, p1, Lm0/t;->o:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    sget-object v1, Landroidx/media3/decoder/ffmpeg/FfmpegLibrary;->a:Lx0/b;

    .line 7
    .line 8
    invoke-virtual {v1}, Lp0/r;->isAvailable()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_4

    .line 13
    .line 14
    invoke-static {v0}, Lm0/O;->k(Ljava/lang/String;)Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-nez v1, :cond_0

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_0
    invoke-static {v0}, Landroidx/media3/decoder/ffmpeg/FfmpegLibrary;->d(Ljava/lang/String;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_3

    .line 26
    .line 27
    const/4 v0, 0x2

    .line 28
    iget v1, p1, Lm0/t;->G:I

    .line 29
    .line 30
    iget v2, p1, Lm0/t;->H:I

    .line 31
    .line 32
    invoke-static {v0, v1, v2}, Lp0/M;->B(III)Lm0/t;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    invoke-virtual {p0, v3}, LD0/B;->sinkSupportsFormat(Lm0/t;)Z

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    const/4 v4, 0x4

    .line 41
    if-nez v3, :cond_1

    .line 42
    .line 43
    invoke-static {v4, v1, v2}, Lp0/M;->B(III)Lm0/t;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {p0, v1}, LD0/B;->sinkSupportsFormat(Lm0/t;)Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-nez v1, :cond_1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    iget p1, p1, Lm0/t;->P:I

    .line 55
    .line 56
    if-eqz p1, :cond_2

    .line 57
    .line 58
    return v0

    .line 59
    :cond_2
    return v4

    .line 60
    :cond_3
    :goto_0
    const/4 p1, 0x1

    .line 61
    return p1

    .line 62
    :cond_4
    :goto_1
    const/4 p1, 0x0

    .line 63
    return p1
.end method

.method public final supportsMixedMimeTypeAdaptation()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method
