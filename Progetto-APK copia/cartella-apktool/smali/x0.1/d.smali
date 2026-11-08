.class public Lx0/d;
.super LU0/a;
.source "SourceFile"


# static fields
.field public static final q0:I


# instance fields
.field public final m0:I

.field public final n0:I

.field public final o0:I

.field public p0:Landroidx/media3/decoder/av1/Gav1Decoder;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const/16 v0, 0x500

    .line 2
    .line 3
    const/16 v1, 0x40

    .line 4
    .line 5
    invoke-static {v0, v1}, Lp0/M;->f(II)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/16 v2, 0x2d0

    .line 10
    .line 11
    invoke-static {v2, v1}, Lp0/M;->f(II)I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    mul-int v1, v1, v0

    .line 16
    .line 17
    mul-int/lit16 v1, v1, 0x1800

    .line 18
    .line 19
    div-int/lit8 v1, v1, 0x2

    .line 20
    .line 21
    sput v1, Lx0/d;->q0:I

    .line 22
    .line 23
    return-void
.end method

.method public constructor <init>(JLandroid/os/Handler;LU0/N;I)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, LU0/a;-><init>(JLandroid/os/Handler;LU0/N;I)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lx0/d;->o0:I

    .line 6
    .line 7
    const/4 p1, 0x4

    .line 8
    iput p1, p0, Lx0/d;->m0:I

    .line 9
    .line 10
    iput p1, p0, Lx0/d;->n0:I

    .line 11
    .line 12
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
    .locals 3

    .line 1
    const-string p2, "createGav1Decoder"

    .line 2
    .line 3
    invoke-static {p2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 p2, -0x1

    .line 7
    iget p1, p1, Lm0/t;->p:I

    .line 8
    .line 9
    if-eq p1, p2, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    sget p1, Lx0/d;->q0:I

    .line 13
    .line 14
    :goto_0
    new-instance p2, Landroidx/media3/decoder/av1/Gav1Decoder;

    .line 15
    .line 16
    iget v0, p0, Lx0/d;->m0:I

    .line 17
    .line 18
    iget v1, p0, Lx0/d;->n0:I

    .line 19
    .line 20
    iget v2, p0, Lx0/d;->o0:I

    .line 21
    .line 22
    invoke-direct {p2, v0, v1, p1, v2}, Landroidx/media3/decoder/av1/Gav1Decoder;-><init>(IIII)V

    .line 23
    .line 24
    .line 25
    iput-object p2, p0, Lx0/d;->p0:Landroidx/media3/decoder/av1/Gav1Decoder;

    .line 26
    .line 27
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 28
    .line 29
    .line 30
    return-object p2
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Libgav1VideoRenderer"

    .line 2
    .line 3
    return-object v0
.end method

.method public final h(Landroidx/media3/decoder/VideoDecoderOutputBuffer;Landroid/view/Surface;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lx0/d;->p0:Landroidx/media3/decoder/av1/Gav1Decoder;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Landroidx/media3/decoder/av1/Gav1Decoder;->d(Landroidx/media3/decoder/VideoDecoderOutputBuffer;Landroid/view/Surface;)V

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
    iget-object v0, p0, Lx0/d;->p0:Landroidx/media3/decoder/av1/Gav1Decoder;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iput p1, v0, Landroidx/media3/decoder/av1/Gav1Decoder;->b:I

    .line 6
    .line 7
    :cond_0
    return-void
.end method

.method public final supportsFormat(Lm0/t;)I
    .locals 2

    .line 1
    iget-object v0, p1, Lm0/t;->o:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "video/av01"

    .line 4
    .line 5
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_2

    .line 11
    .line 12
    sget-object v0, Lx0/c;->a:Lx0/b;

    .line 13
    .line 14
    invoke-virtual {v0}, Lp0/r;->isAvailable()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget p1, p1, Lm0/t;->P:I

    .line 22
    .line 23
    if-eqz p1, :cond_1

    .line 24
    .line 25
    const/4 p1, 0x2

    .line 26
    invoke-static {p1, v1, v1, v1}, LA0/O;->o(IIII)I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    return p1

    .line 31
    :cond_1
    const/16 p1, 0x94

    .line 32
    .line 33
    return p1

    .line 34
    :cond_2
    :goto_0
    invoke-static {v1, v1, v1, v1}, LA0/O;->o(IIII)I

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    return p1
.end method
