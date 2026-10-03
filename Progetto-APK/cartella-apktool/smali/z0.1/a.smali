.class public Lz0/a;
.super LU0/a;
.source "SourceFile"


# instance fields
.field public final m0:I

.field public final n0:I

.field public final o0:I

.field public p0:Landroidx/media3/decoder/vp9/VpxDecoder;


# direct methods
.method public constructor <init>(JLandroid/os/Handler;LU0/N;I)V
    .locals 1

    .line 1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-direct/range {p0 .. p5}, LU0/a;-><init>(JLandroid/os/Handler;LU0/N;I)V

    .line 10
    .line 11
    .line 12
    iput v0, p0, Lz0/a;->o0:I

    .line 13
    .line 14
    const/4 p1, 0x4

    .line 15
    iput p1, p0, Lz0/a;->m0:I

    .line 16
    .line 17
    iput p1, p0, Lz0/a;->n0:I

    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public final canReuseDecoder(Ljava/lang/String;Lm0/t;Lm0/t;)LB0/j;
    .locals 7

    .line 1
    new-instance v6, LB0/j;

    .line 2
    .line 3
    const/4 v4, 0x3

    .line 4
    const/4 v5, 0x0

    .line 5
    move-object v0, v6

    .line 6
    move-object v1, p1

    .line 7
    move-object v2, p2

    .line 8
    move-object v3, p3

    .line 9
    invoke-direct/range {v0 .. v5}, LB0/j;-><init>(Ljava/lang/String;Lm0/t;Lm0/t;II)V

    .line 10
    .line 11
    .line 12
    return-object v6
.end method

.method public final createDecoder(Lm0/t;Landroidx/media3/decoder/CryptoConfig;)Lw0/d;
    .locals 6

    .line 1
    const-string v0, "createVpxDecoder"

    .line 2
    .line 3
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, -0x1

    .line 7
    iget p1, p1, Lm0/t;->p:I

    .line 8
    .line 9
    if-eq p1, v0, :cond_0

    .line 10
    .line 11
    move v3, p1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/high16 p1, 0xc0000

    .line 14
    .line 15
    const/high16 v3, 0xc0000

    .line 16
    .line 17
    :goto_0
    new-instance p1, Landroidx/media3/decoder/vp9/VpxDecoder;

    .line 18
    .line 19
    iget v1, p0, Lz0/a;->m0:I

    .line 20
    .line 21
    iget v2, p0, Lz0/a;->n0:I

    .line 22
    .line 23
    iget v5, p0, Lz0/a;->o0:I

    .line 24
    .line 25
    move-object v0, p1

    .line 26
    move-object v4, p2

    .line 27
    invoke-direct/range {v0 .. v5}, Landroidx/media3/decoder/vp9/VpxDecoder;-><init>(IIILandroidx/media3/decoder/CryptoConfig;I)V

    .line 28
    .line 29
    .line 30
    iput-object p1, p0, Lz0/a;->p0:Landroidx/media3/decoder/vp9/VpxDecoder;

    .line 31
    .line 32
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 33
    .line 34
    .line 35
    return-object p1
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "LibvpxVideoRenderer"

    .line 2
    .line 3
    return-object v0
.end method

.method public final h(Landroidx/media3/decoder/VideoDecoderOutputBuffer;Landroid/view/Surface;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lz0/a;->p0:Landroidx/media3/decoder/vp9/VpxDecoder;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Landroidx/media3/decoder/vp9/VpxDecoder;->d(Landroidx/media3/decoder/VideoDecoderOutputBuffer;Landroid/view/Surface;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Landroidx/media3/decoder/VideoDecoderOutputBuffer;->release()V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    new-instance p1, Lx0/a;

    .line 13
    .line 14
    const-string p2, "Failed to render output buffer to surface: decoder is not initialized."

    .line 15
    .line 16
    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw p1
.end method

.method public final i(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lz0/a;->p0:Landroidx/media3/decoder/vp9/VpxDecoder;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iput p1, v0, Landroidx/media3/decoder/vp9/VpxDecoder;->d:I

    .line 6
    .line 7
    :cond_0
    return-void
.end method

.method public final supportsFormat(Lm0/t;)I
    .locals 3

    .line 1
    sget-object v0, Landroidx/media3/decoder/vp9/VpxLibrary;->a:Lx0/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Lp0/r;->isAvailable()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_3

    .line 9
    .line 10
    iget-object v0, p1, Lm0/t;->o:Ljava/lang/String;

    .line 11
    .line 12
    const-string v2, "video/x-vnd.on2.vp9"

    .line 13
    .line 14
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_0
    iget p1, p1, Lm0/t;->P:I

    .line 22
    .line 23
    if-eqz p1, :cond_2

    .line 24
    .line 25
    const/4 v0, 0x1

    .line 26
    if-eq p1, v0, :cond_1

    .line 27
    .line 28
    sget v0, Landroidx/media3/decoder/vp9/VpxLibrary;->b:I

    .line 29
    .line 30
    if-ne p1, v0, :cond_1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    const/4 p1, 0x2

    .line 34
    invoke-static {p1, v1, v1, v1}, LA0/O;->o(IIII)I

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    return p1

    .line 39
    :cond_2
    :goto_0
    const/16 p1, 0x94

    .line 40
    .line 41
    return p1

    .line 42
    :cond_3
    :goto_1
    invoke-static {v1, v1, v1, v1}, LA0/O;->o(IIII)I

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    return p1
.end method
