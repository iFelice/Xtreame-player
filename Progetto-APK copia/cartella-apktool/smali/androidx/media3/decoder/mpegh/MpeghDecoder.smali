.class public final Landroidx/media3/decoder/mpegh/MpeghDecoder;
.super Lw0/k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lw0/k;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INPUT_BUFFER_SIZE:I = 0x3000

.field private static final TARGET_LAYOUT_CICP:I = 0x2


# instance fields
.field private decoder:Landroidx/media3/decoder/mpegh/MpeghDecoderJni;

.field private outChannels:I

.field private outPtsUs:J

.field private outSampleRate:I

.field private final tmpOutputBuffer:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>(Lm0/t;II)V
    .locals 2

    .line 1
    new-array p2, p2, [Lw0/g;

    .line 2
    .line 3
    new-array p3, p3, [Landroidx/media3/decoder/SimpleDecoderOutputBuffer;

    .line 4
    .line 5
    invoke-direct {p0, p2, p3}, Lw0/k;-><init>([Lw0/g;[Lw0/i;)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Landroidx/media3/decoder/mpegh/MpeghLibrary;->isAvailable()Z

    .line 9
    .line 10
    .line 11
    move-result p2

    .line 12
    if-eqz p2, :cond_2

    .line 13
    .line 14
    const/4 p2, 0x0

    .line 15
    new-array p3, p2, [B

    .line 16
    .line 17
    iget-object v0, p1, Lm0/t;->r:Ljava/util/List;

    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_0

    .line 24
    .line 25
    iget-object v0, p1, Lm0/t;->o:Ljava/lang/String;

    .line 26
    .line 27
    const-string v1, "audio/mha1"

    .line 28
    .line 29
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_0

    .line 34
    .line 35
    iget-object p3, p1, Lm0/t;->r:Ljava/util/List;

    .line 36
    .line 37
    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    move-object p3, p2

    .line 42
    check-cast p3, [B

    .line 43
    .line 44
    :cond_0
    new-instance p2, Landroidx/media3/decoder/mpegh/MpeghDecoderJni;

    .line 45
    .line 46
    invoke-direct {p2}, Landroidx/media3/decoder/mpegh/MpeghDecoderJni;-><init>()V

    .line 47
    .line 48
    .line 49
    iput-object p2, p0, Landroidx/media3/decoder/mpegh/MpeghDecoder;->decoder:Landroidx/media3/decoder/mpegh/MpeghDecoderJni;

    .line 50
    .line 51
    array-length v0, p3

    .line 52
    const/4 v1, 0x2

    .line 53
    invoke-virtual {p2, v1, p3, v0}, Landroidx/media3/decoder/mpegh/MpeghDecoderJni;->init(I[BI)V

    .line 54
    .line 55
    .line 56
    const/4 p2, -0x1

    .line 57
    iget p1, p1, Lm0/t;->p:I

    .line 58
    .line 59
    if-eq p1, p2, :cond_1

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_1
    const/16 p1, 0x3000

    .line 63
    .line 64
    :goto_0
    invoke-virtual {p0, p1}, Lw0/k;->setInitialInputBufferSize(I)V

    .line 65
    .line 66
    .line 67
    const p1, 0xd8000

    .line 68
    .line 69
    .line 70
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    iput-object p1, p0, Landroidx/media3/decoder/mpegh/MpeghDecoder;->tmpOutputBuffer:Ljava/nio/ByteBuffer;

    .line 75
    .line 76
    return-void

    .line 77
    :cond_2
    new-instance p1, Landroidx/media3/decoder/mpegh/MpeghDecoderException;

    .line 78
    .line 79
    const-string p2, "Failed to load decoder native libraries."

    .line 80
    .line 81
    invoke-direct {p1, p2}, Landroidx/media3/decoder/mpegh/MpeghDecoderException;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    throw p1
.end method

.method public static synthetic c(Landroidx/media3/decoder/mpegh/MpeghDecoder;Lw0/i;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/media3/decoder/mpegh/MpeghDecoder;->lambda$createOutputBuffer$0(Landroidx/media3/decoder/mpegh/MpeghDecoder;Lw0/i;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic lambda$createOutputBuffer$0(Landroidx/media3/decoder/mpegh/MpeghDecoder;Lw0/i;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lw0/k;->releaseOutputBuffer(Lw0/i;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public createInputBuffer()Lw0/g;
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

.method public createOutputBuffer()Landroidx/media3/decoder/SimpleDecoderOutputBuffer;
    .locals 3

    .line 2
    new-instance v0, Landroidx/media3/decoder/SimpleDecoderOutputBuffer;

    new-instance v1, LB0/x;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, LB0/x;-><init>(Ljava/lang/Object;I)V

    invoke-direct {v0, v1}, Landroidx/media3/decoder/SimpleDecoderOutputBuffer;-><init>(Lw0/h;)V

    return-object v0
.end method

.method public bridge synthetic createOutputBuffer()Lw0/i;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/media3/decoder/mpegh/MpeghDecoder;->createOutputBuffer()Landroidx/media3/decoder/SimpleDecoderOutputBuffer;

    move-result-object v0

    return-object v0
.end method

.method public createUnexpectedDecodeException(Ljava/lang/Throwable;)Landroidx/media3/decoder/mpegh/MpeghDecoderException;
    .locals 2

    .line 2
    new-instance v0, Landroidx/media3/decoder/mpegh/MpeghDecoderException;

    const-string v1, "Unexpected decode error"

    invoke-direct {v0, v1, p1}, Landroidx/media3/decoder/mpegh/MpeghDecoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public bridge synthetic createUnexpectedDecodeException(Ljava/lang/Throwable;)Lw0/e;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/media3/decoder/mpegh/MpeghDecoder;->createUnexpectedDecodeException(Ljava/lang/Throwable;)Landroidx/media3/decoder/mpegh/MpeghDecoderException;

    move-result-object p1

    return-object p1
.end method

.method public decode(Lw0/g;Landroidx/media3/decoder/SimpleDecoderOutputBuffer;Z)Landroidx/media3/decoder/mpegh/MpeghDecoderException;
    .locals 3

    .line 1
    if-eqz p3, :cond_0

    .line 2
    :try_start_0
    iget-object p3, p0, Landroidx/media3/decoder/mpegh/MpeghDecoder;->decoder:Landroidx/media3/decoder/mpegh/MpeghDecoderJni;

    invoke-virtual {p3}, Landroidx/media3/decoder/mpegh/MpeghDecoderJni;->flush()V
    :try_end_0
    .catch Landroidx/media3/decoder/mpegh/MpeghDecoderException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    return-object p1

    .line 3
    :cond_0
    :goto_0
    iget-object p3, p1, Lw0/g;->I:Ljava/nio/ByteBuffer;

    sget-object v0, Lp0/M;->a:Ljava/lang/String;

    .line 4
    invoke-virtual {p3}, Ljava/nio/Buffer;->limit()I

    move-result v0

    .line 5
    iget-wide v1, p1, Lw0/g;->K:J

    .line 6
    :try_start_1
    iget-object p1, p0, Landroidx/media3/decoder/mpegh/MpeghDecoder;->decoder:Landroidx/media3/decoder/mpegh/MpeghDecoderJni;

    invoke-virtual {p1, p3, v0, v1, v2}, Landroidx/media3/decoder/mpegh/MpeghDecoderJni;->process(Ljava/nio/ByteBuffer;IJ)V
    :try_end_1
    .catch Landroidx/media3/decoder/mpegh/MpeghDecoderException; {:try_start_1 .. :try_end_1} :catch_2

    .line 7
    iget-object p1, p0, Landroidx/media3/decoder/mpegh/MpeghDecoder;->tmpOutputBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    const/4 p1, 0x0

    const/4 p3, 0x0

    .line 8
    :cond_1
    :try_start_2
    iget-object v0, p0, Landroidx/media3/decoder/mpegh/MpeghDecoder;->decoder:Landroidx/media3/decoder/mpegh/MpeghDecoderJni;

    iget-object v1, p0, Landroidx/media3/decoder/mpegh/MpeghDecoder;->tmpOutputBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1, p1}, Landroidx/media3/decoder/mpegh/MpeghDecoderJni;->getSamples(Ljava/nio/ByteBuffer;I)I

    move-result v0
    :try_end_2
    .catch Landroidx/media3/decoder/mpegh/MpeghDecoderException; {:try_start_2 .. :try_end_2} :catch_1

    add-int/2addr p1, v0

    if-nez p3, :cond_2

    if-lez v0, :cond_2

    .line 9
    iget-object v1, p0, Landroidx/media3/decoder/mpegh/MpeghDecoder;->decoder:Landroidx/media3/decoder/mpegh/MpeghDecoderJni;

    invoke-virtual {v1}, Landroidx/media3/decoder/mpegh/MpeghDecoderJni;->getPts()J

    move-result-wide v1

    iput-wide v1, p0, Landroidx/media3/decoder/mpegh/MpeghDecoder;->outPtsUs:J

    .line 10
    iget-object v1, p0, Landroidx/media3/decoder/mpegh/MpeghDecoder;->decoder:Landroidx/media3/decoder/mpegh/MpeghDecoderJni;

    invoke-virtual {v1}, Landroidx/media3/decoder/mpegh/MpeghDecoderJni;->getNumChannels()I

    move-result v1

    iput v1, p0, Landroidx/media3/decoder/mpegh/MpeghDecoder;->outChannels:I

    .line 11
    iget-object v1, p0, Landroidx/media3/decoder/mpegh/MpeghDecoder;->decoder:Landroidx/media3/decoder/mpegh/MpeghDecoderJni;

    invoke-virtual {v1}, Landroidx/media3/decoder/mpegh/MpeghDecoderJni;->getSamplerate()I

    move-result v1

    iput v1, p0, Landroidx/media3/decoder/mpegh/MpeghDecoder;->outSampleRate:I

    :cond_2
    add-int/lit8 p3, p3, 0x1

    if-gtz v0, :cond_1

    .line 12
    iget-object p3, p0, Landroidx/media3/decoder/mpegh/MpeghDecoder;->tmpOutputBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p3, p1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    if-lez p1, :cond_3

    .line 13
    invoke-virtual {p2}, Landroidx/media3/decoder/SimpleDecoderOutputBuffer;->clear()V

    .line 14
    iget-wide v0, p0, Landroidx/media3/decoder/mpegh/MpeghDecoder;->outPtsUs:J

    invoke-virtual {p2, v0, v1, p1}, Landroidx/media3/decoder/SimpleDecoderOutputBuffer;->init(JI)Ljava/nio/ByteBuffer;

    .line 15
    iget-object p1, p2, Landroidx/media3/decoder/SimpleDecoderOutputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object p1

    iget-object p3, p0, Landroidx/media3/decoder/mpegh/MpeghDecoder;->tmpOutputBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/nio/ShortBuffer;->put(Ljava/nio/ShortBuffer;)Ljava/nio/ShortBuffer;

    .line 16
    iget-object p1, p2, Landroidx/media3/decoder/SimpleDecoderOutputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    goto :goto_1

    :cond_3
    const/4 p1, 0x1

    .line 17
    iput-boolean p1, p2, Lw0/i;->shouldBeSkipped:Z

    :goto_1
    const/4 p1, 0x0

    return-object p1

    :catch_1
    move-exception p1

    return-object p1

    :catch_2
    move-exception p1

    return-object p1
.end method

.method public bridge synthetic decode(Lw0/g;Lw0/i;Z)Lw0/e;
    .locals 0

    .line 18
    check-cast p2, Landroidx/media3/decoder/SimpleDecoderOutputBuffer;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/media3/decoder/mpegh/MpeghDecoder;->decode(Lw0/g;Landroidx/media3/decoder/SimpleDecoderOutputBuffer;Z)Landroidx/media3/decoder/mpegh/MpeghDecoderException;

    move-result-object p1

    return-object p1
.end method

.method public getChannelCount()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/media3/decoder/mpegh/MpeghDecoder;->outChannels:I

    .line 2
    .line 3
    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "libmpegh"

    .line 2
    .line 3
    return-object v0
.end method

.method public getSampleRate()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/media3/decoder/mpegh/MpeghDecoder;->outSampleRate:I

    .line 2
    .line 3
    return v0
.end method

.method public release()V
    .locals 1

    .line 1
    invoke-super {p0}, Lw0/k;->release()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/media3/decoder/mpegh/MpeghDecoder;->decoder:Landroidx/media3/decoder/mpegh/MpeghDecoderJni;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/media3/decoder/mpegh/MpeghDecoderJni;->destroy()V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Landroidx/media3/decoder/mpegh/MpeghDecoder;->decoder:Landroidx/media3/decoder/mpegh/MpeghDecoderJni;

    .line 13
    .line 14
    :cond_0
    return-void
.end method
