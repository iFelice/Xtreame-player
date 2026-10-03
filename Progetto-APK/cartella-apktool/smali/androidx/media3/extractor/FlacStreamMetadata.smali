.class public final Landroidx/media3/extractor/FlacStreamMetadata;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final NOT_IN_LOOKUP_TABLE:I = -0x1

.field private static final TAG:Ljava/lang/String; = "FlacStreamMetadata"


# instance fields
.field public final bitsPerSample:I

.field public final bitsPerSampleLookupKey:I

.field public final channels:I

.field public final maxBlockSizeSamples:I

.field public final maxFrameSize:I

.field private final metadata:Lm0/N;

.field public final minBlockSizeSamples:I

.field public final minFrameSize:I

.field public final sampleRate:I

.field public final sampleRateLookupKey:I

.field public final seekTable:LW0/y;

.field public final totalSamples:J


# direct methods
.method private constructor <init>(IIIIIIIJLW0/y;Lm0/N;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput p1, p0, Landroidx/media3/extractor/FlacStreamMetadata;->minBlockSizeSamples:I

    .line 20
    iput p2, p0, Landroidx/media3/extractor/FlacStreamMetadata;->maxBlockSizeSamples:I

    .line 21
    iput p3, p0, Landroidx/media3/extractor/FlacStreamMetadata;->minFrameSize:I

    .line 22
    iput p4, p0, Landroidx/media3/extractor/FlacStreamMetadata;->maxFrameSize:I

    .line 23
    iput p5, p0, Landroidx/media3/extractor/FlacStreamMetadata;->sampleRate:I

    .line 24
    invoke-static {p5}, Landroidx/media3/extractor/FlacStreamMetadata;->getSampleRateLookupKey(I)I

    move-result p1

    iput p1, p0, Landroidx/media3/extractor/FlacStreamMetadata;->sampleRateLookupKey:I

    .line 25
    iput p6, p0, Landroidx/media3/extractor/FlacStreamMetadata;->channels:I

    .line 26
    iput p7, p0, Landroidx/media3/extractor/FlacStreamMetadata;->bitsPerSample:I

    .line 27
    invoke-static {p7}, Landroidx/media3/extractor/FlacStreamMetadata;->getBitsPerSampleLookupKey(I)I

    move-result p1

    iput p1, p0, Landroidx/media3/extractor/FlacStreamMetadata;->bitsPerSampleLookupKey:I

    .line 28
    iput-wide p8, p0, Landroidx/media3/extractor/FlacStreamMetadata;->totalSamples:J

    .line 29
    iput-object p10, p0, Landroidx/media3/extractor/FlacStreamMetadata;->seekTable:LW0/y;

    .line 30
    iput-object p11, p0, Landroidx/media3/extractor/FlacStreamMetadata;->metadata:Lm0/N;

    return-void
.end method

.method public constructor <init>(IIIIIIIJLjava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIIIIIJ",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroidx/media3/extractor/metadata/flac/PictureFrame;",
            ">;)V"
        }
    .end annotation

    const/4 v10, 0x0

    .line 16
    invoke-static/range {p10 .. p11}, Landroidx/media3/extractor/FlacStreamMetadata;->concatenateVorbisMetadata(Ljava/util/List;Ljava/util/List;)Lm0/N;

    move-result-object v11

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-wide/from16 v8, p8

    .line 17
    invoke-direct/range {v0 .. v11}, Landroidx/media3/extractor/FlacStreamMetadata;-><init>(IIIIIIIJLW0/y;Lm0/N;)V

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lp0/D;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lp0/D;-><init>([BILjava/lang/Object;)V

    mul-int/lit8 p2, p2, 0x8

    .line 3
    invoke-virtual {v0, p2}, Lp0/D;->r(I)V

    const/16 p1, 0x10

    .line 4
    invoke-virtual {v0, p1}, Lp0/D;->i(I)I

    move-result p2

    iput p2, p0, Landroidx/media3/extractor/FlacStreamMetadata;->minBlockSizeSamples:I

    .line 5
    invoke-virtual {v0, p1}, Lp0/D;->i(I)I

    move-result p1

    iput p1, p0, Landroidx/media3/extractor/FlacStreamMetadata;->maxBlockSizeSamples:I

    const/16 p1, 0x18

    .line 6
    invoke-virtual {v0, p1}, Lp0/D;->i(I)I

    move-result p2

    iput p2, p0, Landroidx/media3/extractor/FlacStreamMetadata;->minFrameSize:I

    .line 7
    invoke-virtual {v0, p1}, Lp0/D;->i(I)I

    move-result p1

    iput p1, p0, Landroidx/media3/extractor/FlacStreamMetadata;->maxFrameSize:I

    const/16 p1, 0x14

    .line 8
    invoke-virtual {v0, p1}, Lp0/D;->i(I)I

    move-result p1

    iput p1, p0, Landroidx/media3/extractor/FlacStreamMetadata;->sampleRate:I

    .line 9
    invoke-static {p1}, Landroidx/media3/extractor/FlacStreamMetadata;->getSampleRateLookupKey(I)I

    move-result p1

    iput p1, p0, Landroidx/media3/extractor/FlacStreamMetadata;->sampleRateLookupKey:I

    const/4 p1, 0x3

    .line 10
    invoke-virtual {v0, p1}, Lp0/D;->i(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroidx/media3/extractor/FlacStreamMetadata;->channels:I

    const/4 p1, 0x5

    .line 11
    invoke-virtual {v0, p1}, Lp0/D;->i(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroidx/media3/extractor/FlacStreamMetadata;->bitsPerSample:I

    .line 12
    invoke-static {p1}, Landroidx/media3/extractor/FlacStreamMetadata;->getBitsPerSampleLookupKey(I)I

    move-result p1

    iput p1, p0, Landroidx/media3/extractor/FlacStreamMetadata;->bitsPerSampleLookupKey:I

    const/16 p1, 0x24

    .line 13
    invoke-virtual {v0, p1}, Lp0/D;->k(I)J

    move-result-wide p1

    iput-wide p1, p0, Landroidx/media3/extractor/FlacStreamMetadata;->totalSamples:J

    .line 14
    iput-object v2, p0, Landroidx/media3/extractor/FlacStreamMetadata;->seekTable:LW0/y;

    .line 15
    iput-object v2, p0, Landroidx/media3/extractor/FlacStreamMetadata;->metadata:Lm0/N;

    return-void
.end method

.method private static concatenateVorbisMetadata(Ljava/util/List;Ljava/util/List;)Lm0/N;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Landroidx/media3/extractor/metadata/flac/PictureFrame;",
            ">;)",
            "Lm0/N;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/H1;->t(Ljava/util/List;)Lm0/N;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x0

    .line 14
    return-object p0

    .line 15
    :cond_0
    new-instance v0, Lm0/N;

    .line 16
    .line 17
    invoke-direct {v0, p1}, Lm0/N;-><init>(Ljava/util/List;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p0}, Lm0/N;->b(Lm0/N;)Lm0/N;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    return-object p0
.end method

.method private static getBitsPerSampleLookupKey(I)I
    .locals 1

    const/16 v0, 0x8

    if-eq p0, v0, :cond_5

    const/16 v0, 0xc

    if-eq p0, v0, :cond_4

    const/16 v0, 0x10

    if-eq p0, v0, :cond_3

    const/16 v0, 0x14

    if-eq p0, v0, :cond_2

    const/16 v0, 0x18

    if-eq p0, v0, :cond_1

    const/16 v0, 0x20

    if-eq p0, v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    const/4 p0, 0x7

    return p0

    :cond_1
    const/4 p0, 0x6

    return p0

    :cond_2
    const/4 p0, 0x5

    return p0

    :cond_3
    const/4 p0, 0x4

    return p0

    :cond_4
    const/4 p0, 0x2

    return p0

    :cond_5
    const/4 p0, 0x1

    return p0
.end method

.method private static getSampleRateLookupKey(I)I
    .locals 0

    sparse-switch p0, :sswitch_data_0

    const/4 p0, -0x1

    return p0

    :sswitch_0
    const/4 p0, 0x3

    return p0

    :sswitch_1
    const/4 p0, 0x2

    return p0

    :sswitch_2
    const/16 p0, 0xb

    return p0

    :sswitch_3
    const/4 p0, 0x1

    return p0

    :sswitch_4
    const/16 p0, 0xa

    return p0

    :sswitch_5
    const/16 p0, 0x9

    return p0

    :sswitch_6
    const/16 p0, 0x8

    return p0

    :sswitch_7
    const/4 p0, 0x7

    return p0

    :sswitch_8
    const/4 p0, 0x6

    return p0

    :sswitch_9
    const/4 p0, 0x5

    return p0

    :sswitch_a
    const/4 p0, 0x4

    return p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1f40 -> :sswitch_a
        0x3e80 -> :sswitch_9
        0x5622 -> :sswitch_8
        0x5dc0 -> :sswitch_7
        0x7d00 -> :sswitch_6
        0xac44 -> :sswitch_5
        0xbb80 -> :sswitch_4
        0x15888 -> :sswitch_3
        0x17700 -> :sswitch_2
        0x2b110 -> :sswitch_1
        0x2ee00 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public copyWithPictureFrames(Ljava/util/List;)Landroidx/media3/extractor/FlacStreamMetadata;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/extractor/metadata/flac/PictureFrame;",
            ">;)",
            "Landroidx/media3/extractor/FlacStreamMetadata;"
        }
    .end annotation

    .line 1
    new-instance v0, Lm0/N;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lm0/N;-><init>(Ljava/util/List;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroidx/media3/extractor/FlacStreamMetadata;->getMetadataCopyWithAppendedEntriesFrom(Lm0/N;)Lm0/N;

    .line 7
    .line 8
    .line 9
    move-result-object v12

    .line 10
    new-instance p1, Landroidx/media3/extractor/FlacStreamMetadata;

    .line 11
    .line 12
    iget v2, p0, Landroidx/media3/extractor/FlacStreamMetadata;->minBlockSizeSamples:I

    .line 13
    .line 14
    iget v3, p0, Landroidx/media3/extractor/FlacStreamMetadata;->maxBlockSizeSamples:I

    .line 15
    .line 16
    iget v4, p0, Landroidx/media3/extractor/FlacStreamMetadata;->minFrameSize:I

    .line 17
    .line 18
    iget v5, p0, Landroidx/media3/extractor/FlacStreamMetadata;->maxFrameSize:I

    .line 19
    .line 20
    iget v6, p0, Landroidx/media3/extractor/FlacStreamMetadata;->sampleRate:I

    .line 21
    .line 22
    iget v7, p0, Landroidx/media3/extractor/FlacStreamMetadata;->channels:I

    .line 23
    .line 24
    iget v8, p0, Landroidx/media3/extractor/FlacStreamMetadata;->bitsPerSample:I

    .line 25
    .line 26
    iget-wide v9, p0, Landroidx/media3/extractor/FlacStreamMetadata;->totalSamples:J

    .line 27
    .line 28
    iget-object v11, p0, Landroidx/media3/extractor/FlacStreamMetadata;->seekTable:LW0/y;

    .line 29
    .line 30
    move-object v1, p1

    .line 31
    invoke-direct/range {v1 .. v12}, Landroidx/media3/extractor/FlacStreamMetadata;-><init>(IIIIIIIJLW0/y;Lm0/N;)V

    .line 32
    .line 33
    .line 34
    return-object p1
.end method

.method public copyWithSeekTable(LW0/y;)Landroidx/media3/extractor/FlacStreamMetadata;
    .locals 13

    .line 1
    new-instance v12, Landroidx/media3/extractor/FlacStreamMetadata;

    .line 2
    .line 3
    iget v1, p0, Landroidx/media3/extractor/FlacStreamMetadata;->minBlockSizeSamples:I

    .line 4
    .line 5
    iget v2, p0, Landroidx/media3/extractor/FlacStreamMetadata;->maxBlockSizeSamples:I

    .line 6
    .line 7
    iget v3, p0, Landroidx/media3/extractor/FlacStreamMetadata;->minFrameSize:I

    .line 8
    .line 9
    iget v4, p0, Landroidx/media3/extractor/FlacStreamMetadata;->maxFrameSize:I

    .line 10
    .line 11
    iget v5, p0, Landroidx/media3/extractor/FlacStreamMetadata;->sampleRate:I

    .line 12
    .line 13
    iget v6, p0, Landroidx/media3/extractor/FlacStreamMetadata;->channels:I

    .line 14
    .line 15
    iget v7, p0, Landroidx/media3/extractor/FlacStreamMetadata;->bitsPerSample:I

    .line 16
    .line 17
    iget-wide v8, p0, Landroidx/media3/extractor/FlacStreamMetadata;->totalSamples:J

    .line 18
    .line 19
    iget-object v11, p0, Landroidx/media3/extractor/FlacStreamMetadata;->metadata:Lm0/N;

    .line 20
    .line 21
    move-object v0, v12

    .line 22
    move-object v10, p1

    .line 23
    invoke-direct/range {v0 .. v11}, Landroidx/media3/extractor/FlacStreamMetadata;-><init>(IIIIIIIJLW0/y;Lm0/N;)V

    .line 24
    .line 25
    .line 26
    return-object v12
.end method

.method public copyWithVorbisComments(Ljava/util/List;)Landroidx/media3/extractor/FlacStreamMetadata;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Landroidx/media3/extractor/FlacStreamMetadata;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/H1;->t(Ljava/util/List;)Lm0/N;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Landroidx/media3/extractor/FlacStreamMetadata;->getMetadataCopyWithAppendedEntriesFrom(Lm0/N;)Lm0/N;

    .line 6
    .line 7
    .line 8
    move-result-object v11

    .line 9
    new-instance p1, Landroidx/media3/extractor/FlacStreamMetadata;

    .line 10
    .line 11
    iget v1, p0, Landroidx/media3/extractor/FlacStreamMetadata;->minBlockSizeSamples:I

    .line 12
    .line 13
    iget v2, p0, Landroidx/media3/extractor/FlacStreamMetadata;->maxBlockSizeSamples:I

    .line 14
    .line 15
    iget v3, p0, Landroidx/media3/extractor/FlacStreamMetadata;->minFrameSize:I

    .line 16
    .line 17
    iget v4, p0, Landroidx/media3/extractor/FlacStreamMetadata;->maxFrameSize:I

    .line 18
    .line 19
    iget v5, p0, Landroidx/media3/extractor/FlacStreamMetadata;->sampleRate:I

    .line 20
    .line 21
    iget v6, p0, Landroidx/media3/extractor/FlacStreamMetadata;->channels:I

    .line 22
    .line 23
    iget v7, p0, Landroidx/media3/extractor/FlacStreamMetadata;->bitsPerSample:I

    .line 24
    .line 25
    iget-wide v8, p0, Landroidx/media3/extractor/FlacStreamMetadata;->totalSamples:J

    .line 26
    .line 27
    iget-object v10, p0, Landroidx/media3/extractor/FlacStreamMetadata;->seekTable:LW0/y;

    .line 28
    .line 29
    move-object v0, p1

    .line 30
    invoke-direct/range {v0 .. v11}, Landroidx/media3/extractor/FlacStreamMetadata;-><init>(IIIIIIIJLW0/y;Lm0/N;)V

    .line 31
    .line 32
    .line 33
    return-object p1
.end method

.method public getApproxBytesPerFrame()J
    .locals 4

    .line 1
    iget v0, p0, Landroidx/media3/extractor/FlacStreamMetadata;->maxFrameSize:I

    .line 2
    .line 3
    if-lez v0, :cond_0

    .line 4
    .line 5
    int-to-long v0, v0

    .line 6
    iget v2, p0, Landroidx/media3/extractor/FlacStreamMetadata;->minFrameSize:I

    .line 7
    .line 8
    int-to-long v2, v2

    .line 9
    add-long/2addr v0, v2

    .line 10
    const-wide/16 v2, 0x2

    .line 11
    .line 12
    div-long/2addr v0, v2

    .line 13
    const-wide/16 v2, 0x1

    .line 14
    .line 15
    :goto_0
    add-long/2addr v0, v2

    .line 16
    goto :goto_2

    .line 17
    :cond_0
    iget v0, p0, Landroidx/media3/extractor/FlacStreamMetadata;->minBlockSizeSamples:I

    .line 18
    .line 19
    iget v1, p0, Landroidx/media3/extractor/FlacStreamMetadata;->maxBlockSizeSamples:I

    .line 20
    .line 21
    if-ne v0, v1, :cond_1

    .line 22
    .line 23
    if-lez v0, :cond_1

    .line 24
    .line 25
    int-to-long v0, v0

    .line 26
    goto :goto_1

    .line 27
    :cond_1
    const-wide/16 v0, 0x1000

    .line 28
    .line 29
    :goto_1
    iget v2, p0, Landroidx/media3/extractor/FlacStreamMetadata;->channels:I

    .line 30
    .line 31
    int-to-long v2, v2

    .line 32
    mul-long v0, v0, v2

    .line 33
    .line 34
    iget v2, p0, Landroidx/media3/extractor/FlacStreamMetadata;->bitsPerSample:I

    .line 35
    .line 36
    int-to-long v2, v2

    .line 37
    mul-long v0, v0, v2

    .line 38
    .line 39
    const-wide/16 v2, 0x8

    .line 40
    .line 41
    div-long/2addr v0, v2

    .line 42
    const-wide/16 v2, 0x40

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :goto_2
    return-wide v0
.end method

.method public getDecodedBitrate()I
    .locals 2

    .line 1
    iget v0, p0, Landroidx/media3/extractor/FlacStreamMetadata;->bitsPerSample:I

    .line 2
    .line 3
    iget v1, p0, Landroidx/media3/extractor/FlacStreamMetadata;->sampleRate:I

    .line 4
    .line 5
    mul-int v0, v0, v1

    .line 6
    .line 7
    iget v1, p0, Landroidx/media3/extractor/FlacStreamMetadata;->channels:I

    .line 8
    .line 9
    mul-int v0, v0, v1

    .line 10
    .line 11
    return v0
.end method

.method public getDurationUs()J
    .locals 5

    .line 1
    iget-wide v0, p0, Landroidx/media3/extractor/FlacStreamMetadata;->totalSamples:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v4, v0, v2

    .line 6
    .line 7
    if-nez v4, :cond_0

    .line 8
    .line 9
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const-wide/32 v2, 0xf4240

    .line 16
    .line 17
    .line 18
    mul-long v0, v0, v2

    .line 19
    .line 20
    iget v2, p0, Landroidx/media3/extractor/FlacStreamMetadata;->sampleRate:I

    .line 21
    .line 22
    int-to-long v2, v2

    .line 23
    div-long/2addr v0, v2

    .line 24
    :goto_0
    return-wide v0
.end method

.method public getFormat([BLm0/N;)Lm0/t;
    .locals 3

    .line 1
    const/4 v0, 0x4

    .line 2
    const/16 v1, -0x80

    .line 3
    .line 4
    aput-byte v1, p1, v0

    .line 5
    .line 6
    iget v0, p0, Landroidx/media3/extractor/FlacStreamMetadata;->maxFrameSize:I

    .line 7
    .line 8
    if-lez v0, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, -0x1

    .line 12
    :goto_0
    invoke-virtual {p0, p2}, Landroidx/media3/extractor/FlacStreamMetadata;->getMetadataCopyWithAppendedEntriesFrom(Lm0/N;)Lm0/N;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    new-instance v1, Lm0/s;

    .line 17
    .line 18
    invoke-direct {v1}, Lm0/s;-><init>()V

    .line 19
    .line 20
    .line 21
    const-string v2, "audio/flac"

    .line 22
    .line 23
    invoke-static {v2}, Lm0/O;->p(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    iput-object v2, v1, Lm0/s;->n:Ljava/lang/String;

    .line 28
    .line 29
    iput v0, v1, Lm0/s;->o:I

    .line 30
    .line 31
    iget v0, p0, Landroidx/media3/extractor/FlacStreamMetadata;->channels:I

    .line 32
    .line 33
    iput v0, v1, Lm0/s;->F:I

    .line 34
    .line 35
    iget v0, p0, Landroidx/media3/extractor/FlacStreamMetadata;->sampleRate:I

    .line 36
    .line 37
    iput v0, v1, Lm0/s;->G:I

    .line 38
    .line 39
    iget v0, p0, Landroidx/media3/extractor/FlacStreamMetadata;->bitsPerSample:I

    .line 40
    .line 41
    sget-object v2, Lp0/M;->a:Ljava/lang/String;

    .line 42
    .line 43
    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 44
    .line 45
    invoke-static {v0, v2}, Lp0/M;->A(ILjava/nio/ByteOrder;)I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    iput v0, v1, Lm0/s;->H:I

    .line 50
    .line 51
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    iput-object p1, v1, Lm0/s;->q:Ljava/util/List;

    .line 56
    .line 57
    iput-object p2, v1, Lm0/s;->k:Lm0/N;

    .line 58
    .line 59
    invoke-virtual {v1}, Lm0/s;->a()Lm0/t;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    return-object p1
.end method

.method public getMaxDecodedFrameSize()I
    .locals 2

    .line 1
    iget v0, p0, Landroidx/media3/extractor/FlacStreamMetadata;->maxBlockSizeSamples:I

    .line 2
    .line 3
    iget v1, p0, Landroidx/media3/extractor/FlacStreamMetadata;->channels:I

    .line 4
    .line 5
    mul-int v0, v0, v1

    .line 6
    .line 7
    iget v1, p0, Landroidx/media3/extractor/FlacStreamMetadata;->bitsPerSample:I

    .line 8
    .line 9
    div-int/lit8 v1, v1, 0x8

    .line 10
    .line 11
    mul-int v1, v1, v0

    .line 12
    .line 13
    return v1
.end method

.method public getMetadataCopyWithAppendedEntriesFrom(Lm0/N;)Lm0/N;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/extractor/FlacStreamMetadata;->metadata:Lm0/N;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0, p1}, Lm0/N;->b(Lm0/N;)Lm0/N;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    :goto_0
    return-object p1
.end method

.method public getSampleNumber(J)J
    .locals 8

    .line 1
    iget v0, p0, Landroidx/media3/extractor/FlacStreamMetadata;->sampleRate:I

    .line 2
    .line 3
    int-to-long v0, v0

    .line 4
    mul-long p1, p1, v0

    .line 5
    .line 6
    const-wide/32 v0, 0xf4240

    .line 7
    .line 8
    .line 9
    div-long v2, p1, v0

    .line 10
    .line 11
    iget-wide p1, p0, Landroidx/media3/extractor/FlacStreamMetadata;->totalSamples:J

    .line 12
    .line 13
    const-wide/16 v0, 0x1

    .line 14
    .line 15
    sub-long v6, p1, v0

    .line 16
    .line 17
    const-wide/16 v4, 0x0

    .line 18
    .line 19
    invoke-static/range {v2 .. v7}, Lp0/M;->j(JJJ)J

    .line 20
    .line 21
    .line 22
    move-result-wide p1

    .line 23
    return-wide p1
.end method
