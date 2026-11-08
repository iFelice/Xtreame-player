.class public Ly0/a;
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
    .locals 4

    .line 1
    const-string v0, "createOpusDecoder"

    .line 2
    .line 3
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget v0, p1, Lm0/t;->G:I

    .line 7
    .line 8
    iget v1, p1, Lm0/t;->H:I

    .line 9
    .line 10
    const/4 v2, 0x4

    .line 11
    invoke-static {v2, v0, v1}, Lp0/M;->B(III)Lm0/t;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {p0, v0}, LD0/B;->getSinkFormatSupport(Lm0/t;)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const/4 v1, 0x2

    .line 20
    const/4 v2, 0x0

    .line 21
    if-ne v0, v1, :cond_0

    .line 22
    .line 23
    const/4 v0, 0x1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 v0, 0x0

    .line 26
    :goto_0
    const/4 v1, -0x1

    .line 27
    iget v3, p1, Lm0/t;->p:I

    .line 28
    .line 29
    if-eq v3, v1, :cond_1

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_1
    const/16 v3, 0x1680

    .line 33
    .line 34
    :goto_1
    new-instance v1, Landroidx/media3/decoder/opus/OpusDecoder;

    .line 35
    .line 36
    iget-object p1, p1, Lm0/t;->r:Ljava/util/List;

    .line 37
    .line 38
    invoke-direct {v1, v3, p1, p2, v0}, Landroidx/media3/decoder/opus/OpusDecoder;-><init>(ILjava/util/List;Landroidx/media3/decoder/CryptoConfig;Z)V

    .line 39
    .line 40
    .line 41
    iput-boolean v2, v1, Landroidx/media3/decoder/opus/OpusDecoder;->g:Z

    .line 42
    .line 43
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 44
    .line 45
    .line 46
    return-object v1
.end method

.method public final getChannelMapping(Lw0/d;)[I
    .locals 0

    .line 1
    check-cast p1, Landroidx/media3/decoder/opus/OpusDecoder;

    .line 2
    .line 3
    iget p1, p1, Landroidx/media3/decoder/opus/OpusDecoder;->b:I

    .line 4
    .line 5
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/H1;->q(I)[I

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "LibopusAudioRenderer"

    .line 2
    .line 3
    return-object v0
.end method

.method public final getOutputFormat(Lw0/d;)Lm0/t;
    .locals 2

    .line 1
    check-cast p1, Landroidx/media3/decoder/opus/OpusDecoder;

    .line 2
    .line 3
    iget-boolean v0, p1, Landroidx/media3/decoder/opus/OpusDecoder;->a:Z

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x4

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x2

    .line 10
    :goto_0
    iget p1, p1, Landroidx/media3/decoder/opus/OpusDecoder;->b:I

    .line 11
    .line 12
    const v1, 0xbb80

    .line 13
    .line 14
    .line 15
    invoke-static {v0, p1, v1}, Lp0/M;->B(III)Lm0/t;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    return-object p1
.end method

.method public final supportsFormatInternal(Lm0/t;)I
    .locals 5

    .line 1
    iget v0, p1, Lm0/t;->P:I

    .line 2
    .line 3
    sget-object v1, Landroidx/media3/decoder/opus/OpusLibrary;->a:Lx0/b;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    if-eq v0, v2, :cond_0

    .line 10
    .line 11
    sget v3, Landroidx/media3/decoder/opus/OpusLibrary;->b:I

    .line 12
    .line 13
    if-ne v0, v3, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 19
    :goto_1
    sget-object v3, Landroidx/media3/decoder/opus/OpusLibrary;->a:Lx0/b;

    .line 20
    .line 21
    invoke-virtual {v3}, Lp0/r;->isAvailable()Z

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    if-eqz v3, :cond_5

    .line 26
    .line 27
    const-string v3, "audio/opus"

    .line 28
    .line 29
    iget-object v4, p1, Lm0/t;->o:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    if-nez v3, :cond_2

    .line 36
    .line 37
    goto :goto_2

    .line 38
    :cond_2
    const/4 v1, 0x2

    .line 39
    iget v3, p1, Lm0/t;->G:I

    .line 40
    .line 41
    iget p1, p1, Lm0/t;->H:I

    .line 42
    .line 43
    invoke-static {v1, v3, p1}, Lp0/M;->B(III)Lm0/t;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-virtual {p0, p1}, LD0/B;->sinkSupportsFormat(Lm0/t;)Z

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    if-nez p1, :cond_3

    .line 52
    .line 53
    return v2

    .line 54
    :cond_3
    if-nez v0, :cond_4

    .line 55
    .line 56
    return v1

    .line 57
    :cond_4
    const/4 p1, 0x4

    .line 58
    return p1

    .line 59
    :cond_5
    :goto_2
    return v1
.end method
