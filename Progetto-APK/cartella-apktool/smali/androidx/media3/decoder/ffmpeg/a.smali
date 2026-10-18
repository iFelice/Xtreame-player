.class public final Landroidx/media3/decoder/ffmpeg/a;
.super LU0/a;
.source "SourceFile"


# direct methods
.method public constructor <init>(JLandroid/os/Handler;LU0/N;I)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, LU0/a;-><init>(JLandroid/os/Handler;LU0/N;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final canReuseDecoder(Ljava/lang/String;Lm0/t;Lm0/t;)LB0/j;
    .locals 8

    .line 1
    iget-object v0, p2, Lm0/t;->o:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p3, Lm0/t;->o:Ljava/lang/String;

    .line 4
    .line 5
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    new-instance v7, LB0/j;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    const/4 v2, 0x3

    .line 15
    const/4 v5, 0x3

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v5, 0x0

    .line 18
    :goto_0
    if-eqz v0, :cond_1

    .line 19
    .line 20
    const/4 v6, 0x0

    .line 21
    goto :goto_1

    .line 22
    :cond_1
    const/16 v0, 0x8

    .line 23
    .line 24
    const/16 v6, 0x8

    .line 25
    .line 26
    :goto_1
    move-object v1, v7

    .line 27
    move-object v2, p1

    .line 28
    move-object v3, p2

    .line 29
    move-object v4, p3

    .line 30
    invoke-direct/range {v1 .. v6}, LB0/j;-><init>(Ljava/lang/String;Lm0/t;Lm0/t;II)V

    .line 31
    .line 32
    .line 33
    return-object v7
.end method

.method public final createDecoder(Lm0/t;Landroidx/media3/decoder/CryptoConfig;)Lw0/d;
    .locals 0

    .line 1
    const-string p1, "createFfmpegVideoDecoder"

    .line 2
    .line 3
    invoke-static {p1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 7
    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    return-object p1
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "ExperimentalFfmpegVideoRenderer"

    .line 2
    .line 3
    return-object v0
.end method

.method public final h(Landroidx/media3/decoder/VideoDecoderOutputBuffer;Landroid/view/Surface;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final i(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final supportsFormat(Lm0/t;)I
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    invoke-static {p1, p1, p1, p1}, LA0/O;->o(IIII)I

    .line 3
    .line 4
    .line 5
    move-result p1

    .line 6
    return p1
.end method
