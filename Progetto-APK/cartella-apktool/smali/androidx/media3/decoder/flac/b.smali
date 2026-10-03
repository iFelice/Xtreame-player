.class public final Landroidx/media3/decoder/flac/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LW0/j;


# instance fields
.field public final G:Landroidx/media3/decoder/flac/FlacDecoderJni;

.field public final H:Landroidx/media3/decoder/flac/c;


# direct methods
.method public constructor <init>(Landroidx/media3/decoder/flac/FlacDecoderJni;Landroidx/media3/decoder/flac/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/media3/decoder/flac/b;->G:Landroidx/media3/decoder/flac/FlacDecoderJni;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/media3/decoder/flac/b;->H:Landroidx/media3/decoder/flac/c;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(LW0/t;J)LW0/i;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    sget-object v1, LW0/i;->d:LW0/i;

    .line 4
    .line 5
    iget-object v2, v0, Landroidx/media3/decoder/flac/b;->H:Landroidx/media3/decoder/flac/c;

    .line 6
    .line 7
    iget-object v3, v2, Landroidx/media3/decoder/flac/c;->a:Ljava/nio/ByteBuffer;

    .line 8
    .line 9
    invoke-interface/range {p1 .. p1}, LW0/t;->r()J

    .line 10
    .line 11
    .line 12
    move-result-wide v8

    .line 13
    iget-object v4, v0, Landroidx/media3/decoder/flac/b;->G:Landroidx/media3/decoder/flac/FlacDecoderJni;

    .line 14
    .line 15
    invoke-virtual {v4, v8, v9}, Landroidx/media3/decoder/flac/FlacDecoderJni;->reset(J)V

    .line 16
    .line 17
    .line 18
    :try_start_0
    invoke-virtual {v4, v3, v8, v9}, Landroidx/media3/decoder/flac/FlacDecoderJni;->decodeSampleWithBacktrackPosition(Ljava/nio/ByteBuffer;J)V
    :try_end_0
    .catch Landroidx/media3/decoder/flac/g; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    .line 20
    .line 21
    invoke-virtual {v3}, Ljava/nio/Buffer;->limit()I

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    if-nez v3, :cond_0

    .line 26
    .line 27
    return-object v1

    .line 28
    :cond_0
    invoke-virtual {v4}, Landroidx/media3/decoder/flac/FlacDecoderJni;->getLastFrameFirstSampleIndex()J

    .line 29
    .line 30
    .line 31
    move-result-wide v6

    .line 32
    invoke-virtual {v4}, Landroidx/media3/decoder/flac/FlacDecoderJni;->getNextFrameFirstSampleIndex()J

    .line 33
    .line 34
    .line 35
    move-result-wide v12

    .line 36
    invoke-virtual {v4}, Landroidx/media3/decoder/flac/FlacDecoderJni;->getDecodePosition()J

    .line 37
    .line 38
    .line 39
    move-result-wide v14

    .line 40
    cmp-long v1, v6, p2

    .line 41
    .line 42
    if-gtz v1, :cond_1

    .line 43
    .line 44
    cmp-long v1, v12, p2

    .line 45
    .line 46
    if-lez v1, :cond_1

    .line 47
    .line 48
    invoke-virtual {v4}, Landroidx/media3/decoder/flac/FlacDecoderJni;->getLastFrameTimestamp()J

    .line 49
    .line 50
    .line 51
    move-result-wide v3

    .line 52
    iput-wide v3, v2, Landroidx/media3/decoder/flac/c;->b:J

    .line 53
    .line 54
    invoke-interface/range {p1 .. p1}, LW0/t;->r()J

    .line 55
    .line 56
    .line 57
    move-result-wide v1

    .line 58
    invoke-static {v1, v2}, LW0/i;->a(J)LW0/i;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    return-object v1

    .line 63
    :cond_1
    cmp-long v1, v12, p2

    .line 64
    .line 65
    if-gtz v1, :cond_2

    .line 66
    .line 67
    new-instance v1, LW0/i;

    .line 68
    .line 69
    const/4 v11, -0x2

    .line 70
    move-object v10, v1

    .line 71
    invoke-direct/range {v10 .. v15}, LW0/i;-><init>(IJJ)V

    .line 72
    .line 73
    .line 74
    return-object v1

    .line 75
    :cond_2
    new-instance v1, LW0/i;

    .line 76
    .line 77
    const/4 v5, -0x1

    .line 78
    move-object v4, v1

    .line 79
    invoke-direct/range {v4 .. v9}, LW0/i;-><init>(IJJ)V

    .line 80
    .line 81
    .line 82
    :catch_0
    return-object v1
.end method

.method public final synthetic e()V
    .locals 0

    .line 1
    return-void
.end method
