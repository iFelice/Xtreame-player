.class public final LB0/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:J

.field public l:I


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, LB0/i;->a:I

    .line 4
    .line 5
    iget v2, v0, LB0/i;->b:I

    .line 6
    .line 7
    iget v3, v0, LB0/i;->c:I

    .line 8
    .line 9
    iget v4, v0, LB0/i;->d:I

    .line 10
    .line 11
    iget v5, v0, LB0/i;->e:I

    .line 12
    .line 13
    iget v6, v0, LB0/i;->f:I

    .line 14
    .line 15
    iget v7, v0, LB0/i;->g:I

    .line 16
    .line 17
    iget v8, v0, LB0/i;->h:I

    .line 18
    .line 19
    iget v9, v0, LB0/i;->i:I

    .line 20
    .line 21
    iget v10, v0, LB0/i;->j:I

    .line 22
    .line 23
    iget-wide v11, v0, LB0/i;->k:J

    .line 24
    .line 25
    iget v13, v0, LB0/i;->l:I

    .line 26
    .line 27
    sget-object v14, Lp0/M;->a:Ljava/lang/String;

    .line 28
    .line 29
    sget-object v14, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 30
    .line 31
    const-string v14, "DecoderCounters {\n decoderInits="

    .line 32
    .line 33
    const-string v15, ",\n decoderReleases="

    .line 34
    .line 35
    const-string v0, "\n queuedInputBuffers="

    .line 36
    .line 37
    invoke-static {v14, v1, v15, v2, v0}, LA0/O;->D(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    const-string v1, "\n skippedInputBuffers="

    .line 42
    .line 43
    const-string v2, "\n renderedOutputBuffers="

    .line 44
    .line 45
    invoke-static {v0, v3, v1, v4, v2}, LA0/O;->J(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    .line 46
    .line 47
    .line 48
    const-string v1, "\n skippedOutputBuffers="

    .line 49
    .line 50
    const-string v2, "\n droppedBuffers="

    .line 51
    .line 52
    invoke-static {v0, v5, v1, v6, v2}, LA0/O;->J(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    .line 53
    .line 54
    .line 55
    const-string v1, "\n droppedInputBuffers="

    .line 56
    .line 57
    const-string v2, "\n maxConsecutiveDroppedBuffers="

    .line 58
    .line 59
    invoke-static {v0, v7, v1, v8, v2}, LA0/O;->J(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    .line 60
    .line 61
    .line 62
    const-string v1, "\n droppedToKeyframeEvents="

    .line 63
    .line 64
    const-string v2, "\n totalVideoFrameProcessingOffsetUs="

    .line 65
    .line 66
    invoke-static {v0, v9, v1, v10, v2}, LA0/O;->J(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    const-string v1, "\n videoFrameProcessingOffsetCount="

    .line 73
    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    const-string v1, "\n}"

    .line 81
    .line 82
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    return-object v0
.end method
