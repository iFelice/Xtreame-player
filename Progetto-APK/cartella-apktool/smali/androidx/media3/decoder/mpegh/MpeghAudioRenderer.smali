.class public final Landroidx/media3/decoder/mpegh/MpeghAudioRenderer;
.super LD0/B;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "LD0/B;"
    }
.end annotation


# static fields
.field private static final NUM_BUFFERS:I = 0x10

.field private static final TAG:Ljava/lang/String; = "MpeghAudioRenderer"


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    new-array v0, v0, [Ln0/g;

    const/4 v1, 0x0

    invoke-direct {p0, v1, v1, v0}, Landroidx/media3/decoder/mpegh/MpeghAudioRenderer;-><init>(Landroid/os/Handler;LD0/o;[Ln0/g;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;LD0/o;LD0/v;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, LD0/B;-><init>(Landroid/os/Handler;LD0/o;LD0/v;)V

    return-void
.end method

.method public varargs constructor <init>(Landroid/os/Handler;LD0/o;[Ln0/g;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, LD0/B;-><init>(Landroid/os/Handler;LD0/o;[Ln0/g;)V

    return-void
.end method


# virtual methods
.method public canReuseDecoder(Ljava/lang/String;Lm0/t;Lm0/t;)LB0/j;
    .locals 7

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
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p2, Lm0/t;->o:Ljava/lang/String;

    .line 12
    .line 13
    const-string v1, "audio/mhm1"

    .line 14
    .line 15
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    new-instance v0, LB0/j;

    .line 22
    .line 23
    const/4 v5, 0x3

    .line 24
    const/4 v6, 0x0

    .line 25
    move-object v1, v0

    .line 26
    move-object v2, p1

    .line 27
    move-object v3, p2

    .line 28
    move-object v4, p3

    .line 29
    invoke-direct/range {v1 .. v6}, LB0/j;-><init>(Ljava/lang/String;Lm0/t;Lm0/t;II)V

    .line 30
    .line 31
    .line 32
    return-object v0

    .line 33
    :cond_0
    invoke-super {p0, p1, p2, p3}, LD0/B;->canReuseDecoder(Ljava/lang/String;Lm0/t;Lm0/t;)LB0/j;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    return-object p1
.end method

.method public createDecoder(Lm0/t;Landroidx/media3/decoder/CryptoConfig;)Landroidx/media3/decoder/mpegh/MpeghDecoder;
    .locals 1

    .line 2
    const-string p2, "createMpeghDecoder"

    invoke-static {p2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 3
    new-instance p2, Landroidx/media3/decoder/mpegh/MpeghDecoder;

    const/16 v0, 0x10

    invoke-direct {p2, p1, v0, v0}, Landroidx/media3/decoder/mpegh/MpeghDecoder;-><init>(Lm0/t;II)V

    .line 4
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-object p2
.end method

.method public bridge synthetic createDecoder(Lm0/t;Landroidx/media3/decoder/CryptoConfig;)Lw0/d;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Landroidx/media3/decoder/mpegh/MpeghAudioRenderer;->createDecoder(Lm0/t;Landroidx/media3/decoder/CryptoConfig;)Landroidx/media3/decoder/mpegh/MpeghDecoder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic enableMayRenderStartOfStream()V
    .locals 0

    .line 1
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "MpeghAudioRenderer"

    .line 2
    .line 3
    return-object v0
.end method

.method public getOutputFormat(Landroidx/media3/decoder/mpegh/MpeghDecoder;)Lm0/t;
    .locals 2

    .line 2
    new-instance v0, Lm0/s;

    invoke-direct {v0}, Lm0/s;-><init>()V

    .line 3
    invoke-virtual {p1}, Landroidx/media3/decoder/mpegh/MpeghDecoder;->getChannelCount()I

    move-result v1

    .line 4
    iput v1, v0, Lm0/s;->F:I

    .line 5
    invoke-virtual {p1}, Landroidx/media3/decoder/mpegh/MpeghDecoder;->getSampleRate()I

    move-result p1

    .line 6
    iput p1, v0, Lm0/s;->G:I

    .line 7
    const-string p1, "audio/raw"

    invoke-static {p1}, Lm0/O;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lm0/s;->n:Ljava/lang/String;

    const/4 p1, 0x2

    .line 8
    iput p1, v0, Lm0/s;->H:I

    .line 9
    invoke-virtual {v0}, Lm0/s;->a()Lm0/t;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getOutputFormat(Lw0/d;)Lm0/t;
    .locals 0

    .line 1
    check-cast p1, Landroidx/media3/decoder/mpegh/MpeghDecoder;

    invoke-virtual {p0, p1}, Landroidx/media3/decoder/mpegh/MpeghAudioRenderer;->getOutputFormat(Landroidx/media3/decoder/mpegh/MpeghDecoder;)Lm0/t;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setPlaybackSpeed(FF)V
    .locals 0

    .line 1
    return-void
.end method

.method public supportsFormatInternal(Lm0/t;)I
    .locals 3

    .line 1
    invoke-static {}, Landroidx/media3/decoder/mpegh/MpeghLibrary;->isAvailable()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    iget-object v0, p1, Lm0/t;->o:Ljava/lang/String;

    .line 10
    .line 11
    const-string v2, "audio/mhm1"

    .line 12
    .line 13
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    iget-object p1, p1, Lm0/t;->o:Ljava/lang/String;

    .line 20
    .line 21
    const-string v0, "audio/mha1"

    .line 22
    .line 23
    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-nez p1, :cond_1

    .line 28
    .line 29
    return v1

    .line 30
    :cond_1
    const/4 p1, 0x4

    .line 31
    return p1
.end method
