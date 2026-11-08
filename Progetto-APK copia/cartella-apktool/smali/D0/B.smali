.class public abstract LD0/B;
.super LB0/h;
.source "SourceFile"

# interfaces
.implements LB0/e0;


# static fields
.field private static final MAX_PENDING_OUTPUT_STREAM_OFFSET_COUNT:I = 0xa

.field private static final REINITIALIZATION_STATE_NONE:I = 0x0

.field private static final REINITIALIZATION_STATE_SIGNAL_END_OF_STREAM:I = 0x1

.field private static final REINITIALIZATION_STATE_WAIT_END_OF_STREAM:I = 0x2

.field private static final TAG:Ljava/lang/String; = "DecoderAudioRenderer"


# instance fields
.field private allowPositionDiscontinuity:Z

.field private final audioSink:LD0/v;

.field private audioTrackNeedsConfigure:Z

.field private currentPositionUs:J

.field private decoder:Lw0/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw0/d;"
        }
    .end annotation
.end field

.field private decoderCounters:LB0/i;

.field private decoderDrmSession:LG0/l;

.field private decoderReceivedBuffers:Z

.field private decoderReinitializationState:I

.field private encoderDelay:I

.field private encoderPadding:I

.field private final eventDispatcher:LD0/n;

.field private firstStreamSampleRead:Z

.field private final flagsOnlyBuffer:Lw0/g;

.field private hasPendingReportedSkippedSilence:Z

.field private inputBuffer:Lw0/g;

.field private inputFormat:Lm0/t;

.field private inputStreamEnded:Z

.field private isStarted:Z

.field private largestQueuedPresentationTimeUs:J

.field private lastBufferInStreamPresentationTimeUs:J

.field private nextBufferToWritePresentationTimeUs:J

.field private outputBuffer:Landroidx/media3/decoder/SimpleDecoderOutputBuffer;

.field private outputStreamEnded:Z

.field private outputStreamOffsetUs:J

.field private pendingOutputStreamOffsetCount:I

.field private final pendingOutputStreamOffsetsUs:[J

.field private sourceDrmSession:LG0/l;


# direct methods
.method public constructor <init>(Landroid/os/Handler;LD0/o;LD0/v;)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, LB0/h;-><init>(I)V

    .line 3
    new-instance v1, LD0/n;

    invoke-direct {v1, p1, p2}, LD0/n;-><init>(Landroid/os/Handler;LD0/o;)V

    iput-object v1, p0, LD0/B;->eventDispatcher:LD0/n;

    .line 4
    iput-object p3, p0, LD0/B;->audioSink:LD0/v;

    .line 5
    new-instance p1, Lf/S;

    invoke-direct {p1, p0}, Lf/S;-><init>(LD0/B;)V

    check-cast p3, LD0/S;

    .line 6
    iput-object p1, p3, LD0/S;->u:LD0/s;

    .line 7
    new-instance p1, Lw0/g;

    const/4 p2, 0x0

    .line 8
    invoke-direct {p1, p2, p2}, Lw0/g;-><init>(II)V

    .line 9
    iput-object p1, p0, LD0/B;->flagsOnlyBuffer:Lw0/g;

    .line 10
    iput p2, p0, LD0/B;->decoderReinitializationState:I

    .line 11
    iput-boolean v0, p0, LD0/B;->audioTrackNeedsConfigure:Z

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 12
    invoke-virtual {p0, p1, p2}, LD0/B;->f(J)V

    const/16 p3, 0xa

    .line 13
    new-array p3, p3, [J

    iput-object p3, p0, LD0/B;->pendingOutputStreamOffsetsUs:[J

    .line 14
    iput-wide p1, p0, LD0/B;->largestQueuedPresentationTimeUs:J

    .line 15
    iput-wide p1, p0, LD0/B;->lastBufferInStreamPresentationTimeUs:J

    .line 16
    iput-wide p1, p0, LD0/B;->nextBufferToWritePresentationTimeUs:J

    return-void
.end method

.method public varargs constructor <init>(Landroid/os/Handler;LD0/o;[Ln0/g;)V
    .locals 2

    .line 17
    new-instance v0, LD0/I;

    invoke-direct {v0}, LD0/I;-><init>()V

    sget-object v1, LD0/d;->c:LD0/d;

    if-eqz v1, :cond_0

    .line 18
    iput-object v1, v0, LD0/I;->b:LD0/d;

    .line 19
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    new-instance v1, Lm2/u;

    invoke-direct {v1, p3}, Lm2/u;-><init>([Ln0/g;)V

    .line 21
    iput-object v1, v0, LD0/I;->c:Lm2/u;

    .line 22
    invoke-virtual {v0}, LD0/I;->a()LD0/S;

    move-result-object p3

    .line 23
    invoke-direct {p0, p1, p2, p3}, LD0/B;-><init>(Landroid/os/Handler;LD0/o;LD0/v;)V

    return-void

    .line 24
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Both parameters are null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic access$102(LD0/B;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, LD0/B;->hasPendingReportedSkippedSilence:Z

    .line 2
    .line 3
    return p1
.end method

.method public static synthetic access$200(LD0/B;)LD0/n;
    .locals 0

    .line 1
    iget-object p0, p0, LD0/B;->eventDispatcher:LD0/n;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$300(LD0/B;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, LB0/h;->onRendererCapabilitiesChanged()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 8

    .line 1
    iget-object v0, p0, LD0/B;->outputBuffer:Landroidx/media3/decoder/SimpleDecoderOutputBuffer;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-nez v0, :cond_2

    .line 6
    .line 7
    iget-object v0, p0, LD0/B;->decoder:Lw0/d;

    .line 8
    .line 9
    invoke-interface {v0}, Lw0/d;->dequeueOutputBuffer()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Landroidx/media3/decoder/SimpleDecoderOutputBuffer;

    .line 14
    .line 15
    iput-object v0, p0, LD0/B;->outputBuffer:Landroidx/media3/decoder/SimpleDecoderOutputBuffer;

    .line 16
    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    return v2

    .line 20
    :cond_0
    iget v3, v0, Lw0/i;->skippedOutputBufferCount:I

    .line 21
    .line 22
    if-lez v3, :cond_1

    .line 23
    .line 24
    iget-object v4, p0, LD0/B;->decoderCounters:LB0/i;

    .line 25
    .line 26
    iget v5, v4, LB0/i;->f:I

    .line 27
    .line 28
    add-int/2addr v5, v3

    .line 29
    iput v5, v4, LB0/i;->f:I

    .line 30
    .line 31
    iget-object v3, p0, LD0/B;->audioSink:LD0/v;

    .line 32
    .line 33
    check-cast v3, LD0/S;

    .line 34
    .line 35
    iput-boolean v1, v3, LD0/S;->O:Z

    .line 36
    .line 37
    :cond_1
    invoke-virtual {v0}, Lw0/a;->isFirstSample()Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_2

    .line 42
    .line 43
    iget-object v0, p0, LD0/B;->audioSink:LD0/v;

    .line 44
    .line 45
    check-cast v0, LD0/S;

    .line 46
    .line 47
    iput-boolean v1, v0, LD0/S;->O:Z

    .line 48
    .line 49
    iget v0, p0, LD0/B;->pendingOutputStreamOffsetCount:I

    .line 50
    .line 51
    if-eqz v0, :cond_2

    .line 52
    .line 53
    iget-object v0, p0, LD0/B;->pendingOutputStreamOffsetsUs:[J

    .line 54
    .line 55
    aget-wide v3, v0, v2

    .line 56
    .line 57
    invoke-virtual {p0, v3, v4}, LD0/B;->f(J)V

    .line 58
    .line 59
    .line 60
    iget v0, p0, LD0/B;->pendingOutputStreamOffsetCount:I

    .line 61
    .line 62
    sub-int/2addr v0, v1

    .line 63
    iput v0, p0, LD0/B;->pendingOutputStreamOffsetCount:I

    .line 64
    .line 65
    iget-object v3, p0, LD0/B;->pendingOutputStreamOffsetsUs:[J

    .line 66
    .line 67
    invoke-static {v3, v1, v3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 68
    .line 69
    .line 70
    :cond_2
    iget-object v0, p0, LD0/B;->outputBuffer:Landroidx/media3/decoder/SimpleDecoderOutputBuffer;

    .line 71
    .line 72
    invoke-virtual {v0}, Lw0/a;->isEndOfStream()Z

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    const/4 v3, 0x0

    .line 77
    if-eqz v0, :cond_4

    .line 78
    .line 79
    iget v0, p0, LD0/B;->decoderReinitializationState:I

    .line 80
    .line 81
    const/4 v4, 0x2

    .line 82
    if-ne v0, v4, :cond_3

    .line 83
    .line 84
    invoke-virtual {p0}, LD0/B;->e()V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0}, LD0/B;->c()V

    .line 88
    .line 89
    .line 90
    iput-boolean v1, p0, LD0/B;->audioTrackNeedsConfigure:Z

    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_3
    iget-object v0, p0, LD0/B;->outputBuffer:Landroidx/media3/decoder/SimpleDecoderOutputBuffer;

    .line 94
    .line 95
    invoke-virtual {v0}, Landroidx/media3/decoder/SimpleDecoderOutputBuffer;->release()V

    .line 96
    .line 97
    .line 98
    iput-object v3, p0, LD0/B;->outputBuffer:Landroidx/media3/decoder/SimpleDecoderOutputBuffer;

    .line 99
    .line 100
    :try_start_0
    iput-boolean v1, p0, LD0/B;->outputStreamEnded:Z

    .line 101
    .line 102
    iget-object v0, p0, LD0/B;->audioSink:LD0/v;

    .line 103
    .line 104
    check-cast v0, LD0/S;

    .line 105
    .line 106
    invoke-virtual {v0}, LD0/S;->w()V

    .line 107
    .line 108
    .line 109
    iget-wide v0, p0, LD0/B;->lastBufferInStreamPresentationTimeUs:J

    .line 110
    .line 111
    iput-wide v0, p0, LD0/B;->nextBufferToWritePresentationTimeUs:J
    :try_end_0
    .catch LD0/u; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    .line 113
    :goto_0
    return v2

    .line 114
    :catch_0
    move-exception v0

    .line 115
    const/16 v1, 0x138a

    .line 116
    .line 117
    iget-object v2, v0, LD0/u;->I:Lm0/t;

    .line 118
    .line 119
    iget-boolean v3, v0, LD0/u;->H:Z

    .line 120
    .line 121
    invoke-virtual {p0, v0, v2, v3, v1}, LB0/h;->createRendererException(Ljava/lang/Throwable;Lm0/t;ZI)LB0/w;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    throw v0

    .line 126
    :cond_4
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    iput-wide v4, p0, LD0/B;->nextBufferToWritePresentationTimeUs:J

    .line 132
    .line 133
    iget-boolean v0, p0, LD0/B;->audioTrackNeedsConfigure:Z

    .line 134
    .line 135
    if-eqz v0, :cond_5

    .line 136
    .line 137
    iget-object v0, p0, LD0/B;->decoder:Lw0/d;

    .line 138
    .line 139
    invoke-virtual {p0, v0}, LD0/B;->getOutputFormat(Lw0/d;)Lm0/t;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    invoke-virtual {v0}, Lm0/t;->a()Lm0/s;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    iget v4, p0, LD0/B;->encoderDelay:I

    .line 148
    .line 149
    iput v4, v0, Lm0/s;->I:I

    .line 150
    .line 151
    iget v4, p0, LD0/B;->encoderPadding:I

    .line 152
    .line 153
    iput v4, v0, Lm0/s;->J:I

    .line 154
    .line 155
    iget-object v4, p0, LD0/B;->inputFormat:Lm0/t;

    .line 156
    .line 157
    iget-object v5, v4, Lm0/t;->l:Lm0/N;

    .line 158
    .line 159
    iput-object v5, v0, Lm0/s;->k:Lm0/N;

    .line 160
    .line 161
    iget-object v5, v4, Lm0/t;->m:Ljava/lang/Object;

    .line 162
    .line 163
    iput-object v5, v0, Lm0/s;->l:Ljava/lang/Object;

    .line 164
    .line 165
    iget-object v5, v4, Lm0/t;->a:Ljava/lang/String;

    .line 166
    .line 167
    iput-object v5, v0, Lm0/s;->a:Ljava/lang/String;

    .line 168
    .line 169
    iget-object v5, v4, Lm0/t;->b:Ljava/lang/String;

    .line 170
    .line 171
    iput-object v5, v0, Lm0/s;->b:Ljava/lang/String;

    .line 172
    .line 173
    iget-object v4, v4, Lm0/t;->c:Ljava/util/List;

    .line 174
    .line 175
    invoke-static {v4}, Lz4/H;->s(Ljava/util/Collection;)Lz4/H;

    .line 176
    .line 177
    .line 178
    move-result-object v4

    .line 179
    iput-object v4, v0, Lm0/s;->c:Ljava/util/List;

    .line 180
    .line 181
    iget-object v4, p0, LD0/B;->inputFormat:Lm0/t;

    .line 182
    .line 183
    iget-object v5, v4, Lm0/t;->d:Ljava/lang/String;

    .line 184
    .line 185
    iput-object v5, v0, Lm0/s;->d:Ljava/lang/String;

    .line 186
    .line 187
    iget v5, v4, Lm0/t;->e:I

    .line 188
    .line 189
    iput v5, v0, Lm0/s;->e:I

    .line 190
    .line 191
    iget v4, v4, Lm0/t;->f:I

    .line 192
    .line 193
    iput v4, v0, Lm0/s;->f:I

    .line 194
    .line 195
    new-instance v4, Lm0/t;

    .line 196
    .line 197
    invoke-direct {v4, v0}, Lm0/t;-><init>(Lm0/s;)V

    .line 198
    .line 199
    .line 200
    iget-object v0, p0, LD0/B;->audioSink:LD0/v;

    .line 201
    .line 202
    iget-object v5, p0, LD0/B;->decoder:Lw0/d;

    .line 203
    .line 204
    invoke-virtual {p0, v5}, LD0/B;->getChannelMapping(Lw0/d;)[I

    .line 205
    .line 206
    .line 207
    move-result-object v5

    .line 208
    check-cast v0, LD0/S;

    .line 209
    .line 210
    invoke-virtual {v0, v4, v5}, LD0/S;->d(Lm0/t;[I)V

    .line 211
    .line 212
    .line 213
    iput-boolean v2, p0, LD0/B;->audioTrackNeedsConfigure:Z

    .line 214
    .line 215
    :cond_5
    iget-object v0, p0, LD0/B;->audioSink:LD0/v;

    .line 216
    .line 217
    iget-object v4, p0, LD0/B;->outputBuffer:Landroidx/media3/decoder/SimpleDecoderOutputBuffer;

    .line 218
    .line 219
    iget-object v5, v4, Landroidx/media3/decoder/SimpleDecoderOutputBuffer;->data:Ljava/nio/ByteBuffer;

    .line 220
    .line 221
    iget-wide v6, v4, Lw0/i;->timeUs:J

    .line 222
    .line 223
    check-cast v0, LD0/S;

    .line 224
    .line 225
    invoke-virtual {v0, v6, v7, v1, v5}, LD0/S;->n(JILjava/nio/ByteBuffer;)Z

    .line 226
    .line 227
    .line 228
    move-result v0

    .line 229
    if-eqz v0, :cond_6

    .line 230
    .line 231
    iget-object v0, p0, LD0/B;->decoderCounters:LB0/i;

    .line 232
    .line 233
    iget v2, v0, LB0/i;->e:I

    .line 234
    .line 235
    add-int/2addr v2, v1

    .line 236
    iput v2, v0, LB0/i;->e:I

    .line 237
    .line 238
    iget-object v0, p0, LD0/B;->outputBuffer:Landroidx/media3/decoder/SimpleDecoderOutputBuffer;

    .line 239
    .line 240
    invoke-virtual {v0}, Landroidx/media3/decoder/SimpleDecoderOutputBuffer;->release()V

    .line 241
    .line 242
    .line 243
    iput-object v3, p0, LD0/B;->outputBuffer:Landroidx/media3/decoder/SimpleDecoderOutputBuffer;

    .line 244
    .line 245
    return v1

    .line 246
    :cond_6
    iget-object v0, p0, LD0/B;->outputBuffer:Landroidx/media3/decoder/SimpleDecoderOutputBuffer;

    .line 247
    .line 248
    iget-wide v0, v0, Lw0/i;->timeUs:J

    .line 249
    .line 250
    iput-wide v0, p0, LD0/B;->nextBufferToWritePresentationTimeUs:J

    .line 251
    .line 252
    return v2
.end method

.method public final b()Z
    .locals 6

    .line 1
    iget-object v0, p0, LD0/B;->decoder:Lw0/d;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_b

    .line 5
    .line 6
    iget v2, p0, LD0/B;->decoderReinitializationState:I

    .line 7
    .line 8
    const/4 v3, 0x2

    .line 9
    if-eq v2, v3, :cond_b

    .line 10
    .line 11
    iget-boolean v2, p0, LD0/B;->inputStreamEnded:Z

    .line 12
    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    goto/16 :goto_0

    .line 16
    .line 17
    :cond_0
    iget-object v2, p0, LD0/B;->inputBuffer:Lw0/g;

    .line 18
    .line 19
    if-nez v2, :cond_1

    .line 20
    .line 21
    invoke-interface {v0}, Lw0/d;->dequeueInputBuffer()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Lw0/g;

    .line 26
    .line 27
    iput-object v0, p0, LD0/B;->inputBuffer:Lw0/g;

    .line 28
    .line 29
    if-nez v0, :cond_1

    .line 30
    .line 31
    return v1

    .line 32
    :cond_1
    iget v0, p0, LD0/B;->decoderReinitializationState:I

    .line 33
    .line 34
    const/4 v2, 0x0

    .line 35
    const/4 v4, 0x1

    .line 36
    if-ne v0, v4, :cond_2

    .line 37
    .line 38
    iget-object v0, p0, LD0/B;->inputBuffer:Lw0/g;

    .line 39
    .line 40
    const/4 v4, 0x4

    .line 41
    invoke-virtual {v0, v4}, Lw0/a;->setFlags(I)V

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, LD0/B;->decoder:Lw0/d;

    .line 45
    .line 46
    iget-object v4, p0, LD0/B;->inputBuffer:Lw0/g;

    .line 47
    .line 48
    invoke-interface {v0, v4}, Lw0/d;->queueInputBuffer(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    iput-object v2, p0, LD0/B;->inputBuffer:Lw0/g;

    .line 52
    .line 53
    iput v3, p0, LD0/B;->decoderReinitializationState:I

    .line 54
    .line 55
    return v1

    .line 56
    :cond_2
    invoke-virtual {p0}, LB0/h;->getFormatHolder()LB0/Z;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    iget-object v3, p0, LD0/B;->inputBuffer:Lw0/g;

    .line 61
    .line 62
    invoke-virtual {p0, v0, v3, v1}, LB0/h;->readSource(LB0/Z;Lw0/g;I)I

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    const/4 v5, -0x5

    .line 67
    if-eq v3, v5, :cond_a

    .line 68
    .line 69
    const/4 v0, -0x4

    .line 70
    if-eq v3, v0, :cond_5

    .line 71
    .line 72
    const/4 v0, -0x3

    .line 73
    if-ne v3, v0, :cond_4

    .line 74
    .line 75
    invoke-virtual {p0}, LB0/h;->hasReadStreamToEnd()Z

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    if-eqz v0, :cond_3

    .line 80
    .line 81
    iget-wide v2, p0, LD0/B;->largestQueuedPresentationTimeUs:J

    .line 82
    .line 83
    iput-wide v2, p0, LD0/B;->lastBufferInStreamPresentationTimeUs:J

    .line 84
    .line 85
    :cond_3
    return v1

    .line 86
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 87
    .line 88
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 89
    .line 90
    .line 91
    throw v0

    .line 92
    :cond_5
    iget-object v0, p0, LD0/B;->inputBuffer:Lw0/g;

    .line 93
    .line 94
    invoke-virtual {v0}, Lw0/a;->isEndOfStream()Z

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    if-eqz v0, :cond_6

    .line 99
    .line 100
    iput-boolean v4, p0, LD0/B;->inputStreamEnded:Z

    .line 101
    .line 102
    iget-wide v3, p0, LD0/B;->largestQueuedPresentationTimeUs:J

    .line 103
    .line 104
    iput-wide v3, p0, LD0/B;->lastBufferInStreamPresentationTimeUs:J

    .line 105
    .line 106
    iget-object v0, p0, LD0/B;->decoder:Lw0/d;

    .line 107
    .line 108
    iget-object v3, p0, LD0/B;->inputBuffer:Lw0/g;

    .line 109
    .line 110
    invoke-interface {v0, v3}, Lw0/d;->queueInputBuffer(Ljava/lang/Object;)V

    .line 111
    .line 112
    .line 113
    iput-object v2, p0, LD0/B;->inputBuffer:Lw0/g;

    .line 114
    .line 115
    return v1

    .line 116
    :cond_6
    iget-boolean v0, p0, LD0/B;->firstStreamSampleRead:Z

    .line 117
    .line 118
    if-nez v0, :cond_7

    .line 119
    .line 120
    iput-boolean v4, p0, LD0/B;->firstStreamSampleRead:Z

    .line 121
    .line 122
    iget-object v0, p0, LD0/B;->inputBuffer:Lw0/g;

    .line 123
    .line 124
    const/high16 v1, 0x8000000

    .line 125
    .line 126
    invoke-virtual {v0, v1}, Lw0/a;->addFlag(I)V

    .line 127
    .line 128
    .line 129
    :cond_7
    iget-object v0, p0, LD0/B;->inputBuffer:Lw0/g;

    .line 130
    .line 131
    iget-wide v0, v0, Lw0/g;->K:J

    .line 132
    .line 133
    iput-wide v0, p0, LD0/B;->largestQueuedPresentationTimeUs:J

    .line 134
    .line 135
    invoke-virtual {p0}, LB0/h;->hasReadStreamToEnd()Z

    .line 136
    .line 137
    .line 138
    move-result v0

    .line 139
    if-nez v0, :cond_8

    .line 140
    .line 141
    iget-object v0, p0, LD0/B;->inputBuffer:Lw0/g;

    .line 142
    .line 143
    invoke-virtual {v0}, Lw0/a;->isLastSample()Z

    .line 144
    .line 145
    .line 146
    move-result v0

    .line 147
    if-eqz v0, :cond_9

    .line 148
    .line 149
    :cond_8
    iget-wide v0, p0, LD0/B;->largestQueuedPresentationTimeUs:J

    .line 150
    .line 151
    iput-wide v0, p0, LD0/B;->lastBufferInStreamPresentationTimeUs:J

    .line 152
    .line 153
    :cond_9
    iget-object v0, p0, LD0/B;->inputBuffer:Lw0/g;

    .line 154
    .line 155
    invoke-virtual {v0}, Lw0/g;->g()V

    .line 156
    .line 157
    .line 158
    iget-object v0, p0, LD0/B;->inputBuffer:Lw0/g;

    .line 159
    .line 160
    iget-object v1, p0, LD0/B;->inputFormat:Lm0/t;

    .line 161
    .line 162
    iput-object v1, v0, Lw0/g;->G:Lm0/t;

    .line 163
    .line 164
    iget-object v1, p0, LD0/B;->decoder:Lw0/d;

    .line 165
    .line 166
    invoke-interface {v1, v0}, Lw0/d;->queueInputBuffer(Ljava/lang/Object;)V

    .line 167
    .line 168
    .line 169
    iput-boolean v4, p0, LD0/B;->decoderReceivedBuffers:Z

    .line 170
    .line 171
    iget-object v0, p0, LD0/B;->decoderCounters:LB0/i;

    .line 172
    .line 173
    iget v1, v0, LB0/i;->c:I

    .line 174
    .line 175
    add-int/2addr v1, v4

    .line 176
    iput v1, v0, LB0/i;->c:I

    .line 177
    .line 178
    iput-object v2, p0, LD0/B;->inputBuffer:Lw0/g;

    .line 179
    .line 180
    return v4

    .line 181
    :cond_a
    invoke-virtual {p0, v0}, LD0/B;->d(LB0/Z;)V

    .line 182
    .line 183
    .line 184
    return v4

    .line 185
    :cond_b
    :goto_0
    return v1
.end method

.method public final c()V
    .locals 14

    .line 1
    iget-object v0, p0, LD0/B;->decoder:Lw0/d;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, LD0/B;->sourceDrmSession:LG0/l;

    .line 7
    .line 8
    iget-object v1, p0, LD0/B;->decoderDrmSession:LG0/l;

    .line 9
    .line 10
    invoke-static {v1, v0}, LA0/O;->M(LG0/l;LG0/l;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, LD0/B;->decoderDrmSession:LG0/l;

    .line 14
    .line 15
    if-eqz v0, :cond_2

    .line 16
    .line 17
    invoke-interface {v0}, LG0/l;->f()Landroidx/media3/decoder/CryptoConfig;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    if-nez v0, :cond_3

    .line 22
    .line 23
    iget-object v1, p0, LD0/B;->decoderDrmSession:LG0/l;

    .line 24
    .line 25
    invoke-interface {v1}, LG0/l;->getError()LG0/k;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    return-void

    .line 33
    :cond_2
    const/4 v0, 0x0

    .line 34
    :cond_3
    :goto_0
    const/16 v1, 0xfa1

    .line 35
    .line 36
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 37
    .line 38
    .line 39
    move-result-wide v2

    .line 40
    const-string v4, "createAudioDecoder"

    .line 41
    .line 42
    invoke-static {v4}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    iget-object v4, p0, LD0/B;->inputFormat:Lm0/t;

    .line 46
    .line 47
    invoke-virtual {p0, v4, v0}, LD0/B;->createDecoder(Lm0/t;Landroidx/media3/decoder/CryptoConfig;)Lw0/d;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    iput-object v0, p0, LD0/B;->decoder:Lw0/d;

    .line 52
    .line 53
    invoke-virtual {p0}, LB0/h;->getLastResetPositionUs()J

    .line 54
    .line 55
    .line 56
    move-result-wide v4

    .line 57
    invoke-interface {v0, v4, v5}, Lw0/d;->setOutputStartTimeUs(J)V

    .line 58
    .line 59
    .line 60
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 61
    .line 62
    .line 63
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 64
    .line 65
    .line 66
    move-result-wide v9

    .line 67
    iget-object v7, p0, LD0/B;->eventDispatcher:LD0/n;

    .line 68
    .line 69
    iget-object v0, p0, LD0/B;->decoder:Lw0/d;

    .line 70
    .line 71
    invoke-interface {v0}, Lw0/d;->getName()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v8

    .line 75
    sub-long v11, v9, v2

    .line 76
    .line 77
    iget-object v0, v7, LD0/n;->a:Landroid/os/Handler;

    .line 78
    .line 79
    if-eqz v0, :cond_4

    .line 80
    .line 81
    new-instance v2, LD0/k;

    .line 82
    .line 83
    const/4 v13, 0x0

    .line 84
    move-object v6, v2

    .line 85
    invoke-direct/range {v6 .. v13}, LD0/k;-><init>(Ljava/lang/Object;Ljava/lang/String;JJI)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 89
    .line 90
    .line 91
    :cond_4
    iget-object v0, p0, LD0/B;->decoderCounters:LB0/i;

    .line 92
    .line 93
    iget v2, v0, LB0/i;->a:I

    .line 94
    .line 95
    add-int/lit8 v2, v2, 0x1

    .line 96
    .line 97
    iput v2, v0, LB0/i;->a:I
    :try_end_0
    .catch Lw0/e; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    .line 99
    return-void

    .line 100
    :catch_0
    move-exception v0

    .line 101
    goto :goto_1

    .line 102
    :catch_1
    move-exception v0

    .line 103
    goto :goto_2

    .line 104
    :goto_1
    iget-object v2, p0, LD0/B;->inputFormat:Lm0/t;

    .line 105
    .line 106
    invoke-virtual {p0, v0, v2, v1}, LB0/h;->createRendererException(Ljava/lang/Throwable;Lm0/t;I)LB0/w;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    throw v0

    .line 111
    :goto_2
    const-string v2, "DecoderAudioRenderer"

    .line 112
    .line 113
    const-string v3, "Audio codec error"

    .line 114
    .line 115
    invoke-static {v2, v3, v0}, Lp0/x;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 116
    .line 117
    .line 118
    iget-object v2, p0, LD0/B;->eventDispatcher:LD0/n;

    .line 119
    .line 120
    iget-object v3, v2, LD0/n;->a:Landroid/os/Handler;

    .line 121
    .line 122
    if-eqz v3, :cond_5

    .line 123
    .line 124
    new-instance v4, LD0/j;

    .line 125
    .line 126
    const/4 v5, 0x0

    .line 127
    invoke-direct {v4, v2, v0, v5}, LD0/j;-><init>(LD0/n;Ljava/lang/Exception;I)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 131
    .line 132
    .line 133
    :cond_5
    iget-object v2, p0, LD0/B;->inputFormat:Lm0/t;

    .line 134
    .line 135
    invoke-virtual {p0, v0, v2, v1}, LB0/h;->createRendererException(Ljava/lang/Throwable;Lm0/t;I)LB0/w;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    throw v0
.end method

.method public canReuseDecoder(Ljava/lang/String;Lm0/t;Lm0/t;)LB0/j;
    .locals 7

    .line 1
    new-instance v6, LB0/j;

    .line 2
    .line 3
    const/4 v4, 0x0

    .line 4
    const/4 v5, 0x1

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

.method public abstract createDecoder(Lm0/t;Landroidx/media3/decoder/CryptoConfig;)Lw0/d;
.end method

.method public final d(LB0/Z;)V
    .locals 7

    .line 1
    iget-object v3, p1, LB0/Z;->b:Lm0/t;

    .line 2
    .line 3
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object p1, p1, LB0/Z;->a:LG0/l;

    .line 7
    .line 8
    iget-object v0, p0, LD0/B;->sourceDrmSession:LG0/l;

    .line 9
    .line 10
    invoke-static {v0, p1}, LA0/O;->M(LG0/l;LG0/l;)V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, LD0/B;->sourceDrmSession:LG0/l;

    .line 14
    .line 15
    iget-object v2, p0, LD0/B;->inputFormat:Lm0/t;

    .line 16
    .line 17
    iput-object v3, p0, LD0/B;->inputFormat:Lm0/t;

    .line 18
    .line 19
    iget v0, v3, Lm0/t;->J:I

    .line 20
    .line 21
    iput v0, p0, LD0/B;->encoderDelay:I

    .line 22
    .line 23
    iget v0, v3, Lm0/t;->K:I

    .line 24
    .line 25
    iput v0, p0, LD0/B;->encoderPadding:I

    .line 26
    .line 27
    iget-object v0, p0, LD0/B;->decoder:Lw0/d;

    .line 28
    .line 29
    const/4 v6, 0x2

    .line 30
    if-nez v0, :cond_1

    .line 31
    .line 32
    invoke-virtual {p0}, LD0/B;->c()V

    .line 33
    .line 34
    .line 35
    iget-object p1, p0, LD0/B;->eventDispatcher:LD0/n;

    .line 36
    .line 37
    iget-object v0, p0, LD0/B;->inputFormat:Lm0/t;

    .line 38
    .line 39
    iget-object v1, p1, LD0/n;->a:Landroid/os/Handler;

    .line 40
    .line 41
    if-eqz v1, :cond_0

    .line 42
    .line 43
    new-instance v2, LB0/h0;

    .line 44
    .line 45
    const/4 v3, 0x0

    .line 46
    invoke-direct {v2, p1, v0, v3, v6}, LB0/h0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 50
    .line 51
    .line 52
    :cond_0
    return-void

    .line 53
    :cond_1
    iget-object v1, p0, LD0/B;->decoderDrmSession:LG0/l;

    .line 54
    .line 55
    if-eq p1, v1, :cond_2

    .line 56
    .line 57
    new-instance p1, LB0/j;

    .line 58
    .line 59
    invoke-interface {v0}, Lw0/d;->getName()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    const/4 v4, 0x0

    .line 64
    const/16 v5, 0x80

    .line 65
    .line 66
    move-object v0, p1

    .line 67
    invoke-direct/range {v0 .. v5}, LB0/j;-><init>(Ljava/lang/String;Lm0/t;Lm0/t;II)V

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_2
    invoke-interface {v0}, Lw0/d;->getName()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-virtual {p0, p1, v2, v3}, LD0/B;->canReuseDecoder(Ljava/lang/String;Lm0/t;Lm0/t;)LB0/j;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    :goto_0
    iget v0, p1, LB0/j;->d:I

    .line 80
    .line 81
    if-nez v0, :cond_4

    .line 82
    .line 83
    iget-boolean v0, p0, LD0/B;->decoderReceivedBuffers:Z

    .line 84
    .line 85
    const/4 v1, 0x1

    .line 86
    if-eqz v0, :cond_3

    .line 87
    .line 88
    iput v1, p0, LD0/B;->decoderReinitializationState:I

    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_3
    invoke-virtual {p0}, LD0/B;->e()V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p0}, LD0/B;->c()V

    .line 95
    .line 96
    .line 97
    iput-boolean v1, p0, LD0/B;->audioTrackNeedsConfigure:Z

    .line 98
    .line 99
    :cond_4
    :goto_1
    iget-object v0, p0, LD0/B;->eventDispatcher:LD0/n;

    .line 100
    .line 101
    iget-object v1, p0, LD0/B;->inputFormat:Lm0/t;

    .line 102
    .line 103
    iget-object v2, v0, LD0/n;->a:Landroid/os/Handler;

    .line 104
    .line 105
    if-eqz v2, :cond_5

    .line 106
    .line 107
    new-instance v3, LB0/h0;

    .line 108
    .line 109
    invoke-direct {v3, v0, v1, p1, v6}, LB0/h0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 113
    .line 114
    .line 115
    :cond_5
    return-void
.end method

.method public final e()V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, LD0/B;->inputBuffer:Lw0/g;

    .line 3
    .line 4
    iput-object v0, p0, LD0/B;->outputBuffer:Landroidx/media3/decoder/SimpleDecoderOutputBuffer;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    iput v1, p0, LD0/B;->decoderReinitializationState:I

    .line 8
    .line 9
    iput-boolean v1, p0, LD0/B;->decoderReceivedBuffers:Z

    .line 10
    .line 11
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    iput-wide v1, p0, LD0/B;->largestQueuedPresentationTimeUs:J

    .line 17
    .line 18
    iput-wide v1, p0, LD0/B;->lastBufferInStreamPresentationTimeUs:J

    .line 19
    .line 20
    iget-object v1, p0, LD0/B;->decoder:Lw0/d;

    .line 21
    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    iget-object v2, p0, LD0/B;->decoderCounters:LB0/i;

    .line 25
    .line 26
    iget v3, v2, LB0/i;->b:I

    .line 27
    .line 28
    add-int/lit8 v3, v3, 0x1

    .line 29
    .line 30
    iput v3, v2, LB0/i;->b:I

    .line 31
    .line 32
    invoke-interface {v1}, Lw0/d;->release()V

    .line 33
    .line 34
    .line 35
    iget-object v1, p0, LD0/B;->eventDispatcher:LD0/n;

    .line 36
    .line 37
    iget-object v2, p0, LD0/B;->decoder:Lw0/d;

    .line 38
    .line 39
    invoke-interface {v2}, Lw0/d;->getName()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    iget-object v3, v1, LD0/n;->a:Landroid/os/Handler;

    .line 44
    .line 45
    if-eqz v3, :cond_0

    .line 46
    .line 47
    new-instance v4, Lf/t;

    .line 48
    .line 49
    const/16 v5, 0x17

    .line 50
    .line 51
    invoke-direct {v4, v5, v1, v2}, Lf/t;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 55
    .line 56
    .line 57
    :cond_0
    iput-object v0, p0, LD0/B;->decoder:Lw0/d;

    .line 58
    .line 59
    :cond_1
    iget-object v1, p0, LD0/B;->decoderDrmSession:LG0/l;

    .line 60
    .line 61
    invoke-static {v1, v0}, LA0/O;->M(LG0/l;LG0/l;)V

    .line 62
    .line 63
    .line 64
    iput-object v0, p0, LD0/B;->decoderDrmSession:LG0/l;

    .line 65
    .line 66
    return-void
.end method

.method public final f(J)V
    .locals 3

    .line 1
    iput-wide p1, p0, LD0/B;->outputStreamOffsetUs:J

    .line 2
    .line 3
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    cmp-long v2, p1, v0

    .line 9
    .line 10
    if-eqz v2, :cond_0

    .line 11
    .line 12
    iget-object p1, p0, LD0/B;->audioSink:LD0/v;

    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public final g()V
    .locals 5

    .line 1
    iget-object v0, p0, LD0/B;->audioSink:LD0/v;

    .line 2
    .line 3
    invoke-virtual {p0}, LD0/B;->isEnded()Z

    .line 4
    .line 5
    .line 6
    check-cast v0, LD0/S;

    .line 7
    .line 8
    invoke-virtual {v0}, LD0/S;->i()J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    const-wide/high16 v2, -0x8000000000000000L

    .line 13
    .line 14
    cmp-long v4, v0, v2

    .line 15
    .line 16
    if-eqz v4, :cond_1

    .line 17
    .line 18
    iget-boolean v2, p0, LD0/B;->allowPositionDiscontinuity:Z

    .line 19
    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iget-wide v2, p0, LD0/B;->currentPositionUs:J

    .line 24
    .line 25
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    .line 26
    .line 27
    .line 28
    move-result-wide v0

    .line 29
    :goto_0
    iput-wide v0, p0, LD0/B;->currentPositionUs:J

    .line 30
    .line 31
    const/4 v0, 0x0

    .line 32
    iput-boolean v0, p0, LD0/B;->allowPositionDiscontinuity:Z

    .line 33
    .line 34
    :cond_1
    return-void
.end method

.method public getChannelMapping(Lw0/d;)[I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw0/d;",
            ")[I"
        }
    .end annotation

    .line 1
    const/4 p1, 0x0

    .line 2
    return-object p1
.end method

.method public getDurationToProgressUs(JJ)J
    .locals 8

    .line 1
    iget-wide v0, p0, LD0/B;->nextBufferToWritePresentationTimeUs:J

    .line 2
    .line 3
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    cmp-long v4, v0, v2

    .line 9
    .line 10
    if-eqz v4, :cond_0

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    :goto_0
    iget-boolean v1, p0, LD0/B;->isStarted:Z

    .line 16
    .line 17
    const-wide/16 v4, 0x2710

    .line 18
    .line 19
    if-nez v1, :cond_3

    .line 20
    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    iget-boolean p1, p0, LD0/B;->outputStreamEnded:Z

    .line 24
    .line 25
    if-eqz p1, :cond_2

    .line 26
    .line 27
    :cond_1
    const-wide/32 v4, 0xf4240

    .line 28
    .line 29
    .line 30
    :cond_2
    return-wide v4

    .line 31
    :cond_3
    iget-object v1, p0, LD0/B;->audioSink:LD0/v;

    .line 32
    .line 33
    check-cast v1, LD0/S;

    .line 34
    .line 35
    invoke-virtual {v1}, LD0/S;->h()J

    .line 36
    .line 37
    .line 38
    move-result-wide v6

    .line 39
    if-eqz v0, :cond_6

    .line 40
    .line 41
    cmp-long v0, v6, v2

    .line 42
    .line 43
    if-nez v0, :cond_4

    .line 44
    .line 45
    goto :goto_2

    .line 46
    :cond_4
    iget-wide v0, p0, LD0/B;->nextBufferToWritePresentationTimeUs:J

    .line 47
    .line 48
    sub-long/2addr v0, p1

    .line 49
    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->min(JJ)J

    .line 50
    .line 51
    .line 52
    move-result-wide p1

    .line 53
    long-to-float p1, p1

    .line 54
    invoke-virtual {p0}, LD0/B;->getPlaybackParameters()Lm0/S;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    if-eqz p2, :cond_5

    .line 59
    .line 60
    invoke-virtual {p0}, LD0/B;->getPlaybackParameters()Lm0/S;

    .line 61
    .line 62
    .line 63
    move-result-object p2

    .line 64
    iget p2, p2, Lm0/S;->a:F

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_5
    const/high16 p2, 0x3f800000    # 1.0f

    .line 68
    .line 69
    :goto_1
    div-float/2addr p1, p2

    .line 70
    const/high16 p2, 0x40000000    # 2.0f

    .line 71
    .line 72
    div-float/2addr p1, p2

    .line 73
    float-to-long p1, p1

    .line 74
    invoke-virtual {p0}, LB0/h;->getClock()Lp0/f;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    check-cast v0, Lp0/G;

    .line 79
    .line 80
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 81
    .line 82
    .line 83
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 84
    .line 85
    .line 86
    move-result-wide v0

    .line 87
    invoke-static {v0, v1}, Lp0/M;->R(J)J

    .line 88
    .line 89
    .line 90
    move-result-wide v0

    .line 91
    sub-long/2addr v0, p3

    .line 92
    sub-long/2addr p1, v0

    .line 93
    invoke-static {v4, v5, p1, p2}, Ljava/lang/Math;->max(JJ)J

    .line 94
    .line 95
    .line 96
    move-result-wide p1

    .line 97
    return-wide p1

    .line 98
    :cond_6
    :goto_2
    return-wide v4
.end method

.method public getMediaClock()LB0/e0;
    .locals 0

    .line 1
    return-object p0
.end method

.method public abstract getOutputFormat(Lw0/d;)Lm0/t;
.end method

.method public getPlaybackParameters()Lm0/S;
    .locals 1

    .line 1
    iget-object v0, p0, LD0/B;->audioSink:LD0/v;

    .line 2
    .line 3
    check-cast v0, LD0/S;

    .line 4
    .line 5
    iget-object v0, v0, LD0/S;->F:Lm0/S;

    .line 6
    .line 7
    return-object v0
.end method

.method public getPositionUs()J
    .locals 2

    .line 1
    invoke-virtual {p0}, LB0/h;->getState()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x2

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, LD0/B;->g()V

    .line 9
    .line 10
    .line 11
    :cond_0
    iget-wide v0, p0, LD0/B;->currentPositionUs:J

    .line 12
    .line 13
    return-wide v0
.end method

.method public final getSinkFormatSupport(Lm0/t;)I
    .locals 1

    .line 1
    iget-object v0, p0, LD0/B;->audioSink:LD0/v;

    .line 2
    .line 3
    check-cast v0, LD0/S;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, LD0/S;->k(Lm0/t;)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public handleMessage(ILjava/lang/Object;)V
    .locals 6

    .line 1
    const/4 v0, 0x2

    .line 2
    if-eq p1, v0, :cond_7

    .line 3
    .line 4
    const/4 v0, 0x3

    .line 5
    if-eq p1, v0, :cond_6

    .line 6
    .line 7
    const/4 v0, 0x6

    .line 8
    if-eq p1, v0, :cond_5

    .line 9
    .line 10
    const/16 v0, 0xc

    .line 11
    .line 12
    if-eq p1, v0, :cond_4

    .line 13
    .line 14
    const/16 v0, 0x9

    .line 15
    .line 16
    if-eq p1, v0, :cond_1

    .line 17
    .line 18
    const/16 v0, 0xa

    .line 19
    .line 20
    if-eq p1, v0, :cond_0

    .line 21
    .line 22
    goto/16 :goto_2

    .line 23
    .line 24
    :cond_0
    iget-object p1, p0, LD0/B;->audioSink:LD0/v;

    .line 25
    .line 26
    check-cast p2, Ljava/lang/Integer;

    .line 27
    .line 28
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 29
    .line 30
    .line 31
    move-result p2

    .line 32
    check-cast p1, LD0/S;

    .line 33
    .line 34
    invoke-virtual {p1, p2}, LD0/S;->A(I)V

    .line 35
    .line 36
    .line 37
    goto/16 :goto_2

    .line 38
    .line 39
    :cond_1
    iget-object p1, p0, LD0/B;->audioSink:LD0/v;

    .line 40
    .line 41
    check-cast p2, Ljava/lang/Boolean;

    .line 42
    .line 43
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 44
    .line 45
    .line 46
    move-result p2

    .line 47
    check-cast p1, LD0/S;

    .line 48
    .line 49
    iput-boolean p2, p1, LD0/S;->G:Z

    .line 50
    .line 51
    invoke-virtual {p1}, LD0/S;->H()Z

    .line 52
    .line 53
    .line 54
    move-result p2

    .line 55
    if-eqz p2, :cond_2

    .line 56
    .line 57
    sget-object p2, Lm0/S;->d:Lm0/S;

    .line 58
    .line 59
    :goto_0
    move-object v1, p2

    .line 60
    goto :goto_1

    .line 61
    :cond_2
    iget-object p2, p1, LD0/S;->F:Lm0/S;

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :goto_1
    new-instance p2, LD0/K;

    .line 65
    .line 66
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    move-object v0, p2

    .line 77
    invoke-direct/range {v0 .. v5}, LD0/K;-><init>(Lm0/S;JJ)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1}, LD0/S;->q()Z

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    if-eqz v0, :cond_3

    .line 85
    .line 86
    iput-object p2, p1, LD0/S;->D:LD0/K;

    .line 87
    .line 88
    goto :goto_2

    .line 89
    :cond_3
    iput-object p2, p1, LD0/S;->E:LD0/K;

    .line 90
    .line 91
    goto :goto_2

    .line 92
    :cond_4
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 93
    .line 94
    const/16 v0, 0x17

    .line 95
    .line 96
    if-lt p1, v0, :cond_8

    .line 97
    .line 98
    iget-object p1, p0, LD0/B;->audioSink:LD0/v;

    .line 99
    .line 100
    invoke-static {p2}, LB0/q;->g(Ljava/lang/Object;)Landroid/media/AudioDeviceInfo;

    .line 101
    .line 102
    .line 103
    move-result-object p2

    .line 104
    check-cast p1, LD0/S;

    .line 105
    .line 106
    invoke-virtual {p1, p2}, LD0/S;->F(Landroid/media/AudioDeviceInfo;)V

    .line 107
    .line 108
    .line 109
    goto :goto_2

    .line 110
    :cond_5
    check-cast p2, Lm0/e;

    .line 111
    .line 112
    iget-object p1, p0, LD0/B;->audioSink:LD0/v;

    .line 113
    .line 114
    check-cast p1, LD0/S;

    .line 115
    .line 116
    invoke-virtual {p1, p2}, LD0/S;->C(Lm0/e;)V

    .line 117
    .line 118
    .line 119
    goto :goto_2

    .line 120
    :cond_6
    check-cast p2, Lm0/d;

    .line 121
    .line 122
    iget-object p1, p0, LD0/B;->audioSink:LD0/v;

    .line 123
    .line 124
    check-cast p1, LD0/S;

    .line 125
    .line 126
    invoke-virtual {p1, p2}, LD0/S;->z(Lm0/d;)V

    .line 127
    .line 128
    .line 129
    goto :goto_2

    .line 130
    :cond_7
    iget-object p1, p0, LD0/B;->audioSink:LD0/v;

    .line 131
    .line 132
    check-cast p2, Ljava/lang/Float;

    .line 133
    .line 134
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    .line 135
    .line 136
    .line 137
    move-result p2

    .line 138
    check-cast p1, LD0/S;

    .line 139
    .line 140
    iget v0, p1, LD0/S;->R:F

    .line 141
    .line 142
    cmpl-float v0, v0, p2

    .line 143
    .line 144
    if-eqz v0, :cond_8

    .line 145
    .line 146
    iput p2, p1, LD0/S;->R:F

    .line 147
    .line 148
    invoke-virtual {p1}, LD0/S;->q()Z

    .line 149
    .line 150
    .line 151
    move-result p2

    .line 152
    if-eqz p2, :cond_8

    .line 153
    .line 154
    iget-object p2, p1, LD0/S;->y:Landroid/media/AudioTrack;

    .line 155
    .line 156
    iget p1, p1, LD0/S;->R:F

    .line 157
    .line 158
    invoke-virtual {p2, p1}, Landroid/media/AudioTrack;->setVolume(F)I

    .line 159
    .line 160
    .line 161
    :cond_8
    :goto_2
    return-void
.end method

.method public hasSkippedSilenceSinceLastCall()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, LD0/B;->hasPendingReportedSkippedSilence:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iput-boolean v1, p0, LD0/B;->hasPendingReportedSkippedSilence:Z

    .line 5
    .line 6
    return v0
.end method

.method public isEnded()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, LD0/B;->outputStreamEnded:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, LD0/B;->audioSink:LD0/v;

    .line 6
    .line 7
    check-cast v0, LD0/S;

    .line 8
    .line 9
    invoke-virtual {v0}, LD0/S;->q()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    iget-boolean v1, v0, LD0/S;->V:Z

    .line 16
    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    invoke-virtual {v0}, LD0/S;->o()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    :cond_0
    const/4 v0, 0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const/4 v0, 0x0

    .line 28
    :goto_0
    return v0
.end method

.method public isReady()Z
    .locals 1

    .line 1
    iget-object v0, p0, LD0/B;->audioSink:LD0/v;

    .line 2
    .line 3
    check-cast v0, LD0/S;

    .line 4
    .line 5
    invoke-virtual {v0}, LD0/S;->o()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, LD0/B;->inputFormat:Lm0/t;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0}, LB0/h;->isSourceReady()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    iget-object v0, p0, LD0/B;->outputBuffer:Landroidx/media3/decoder/SimpleDecoderOutputBuffer;

    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 v0, 0x0

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 29
    :goto_1
    return v0
.end method

.method public onDisabled()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, LD0/B;->inputFormat:Lm0/t;

    .line 3
    .line 4
    const/4 v1, 0x1

    .line 5
    iput-boolean v1, p0, LD0/B;->audioTrackNeedsConfigure:Z

    .line 6
    .line 7
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v1, v2}, LD0/B;->f(J)V

    .line 13
    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    iput-boolean v3, p0, LD0/B;->hasPendingReportedSkippedSilence:Z

    .line 17
    .line 18
    iput-wide v1, p0, LD0/B;->nextBufferToWritePresentationTimeUs:J

    .line 19
    .line 20
    :try_start_0
    iget-object v1, p0, LD0/B;->sourceDrmSession:LG0/l;

    .line 21
    .line 22
    invoke-static {v1, v0}, LA0/O;->M(LG0/l;LG0/l;)V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, LD0/B;->sourceDrmSession:LG0/l;

    .line 26
    .line 27
    invoke-virtual {p0}, LD0/B;->e()V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, LD0/B;->audioSink:LD0/v;

    .line 31
    .line 32
    check-cast v0, LD0/S;

    .line 33
    .line 34
    invoke-virtual {v0}, LD0/S;->y()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, LD0/B;->eventDispatcher:LD0/n;

    .line 38
    .line 39
    iget-object v1, p0, LD0/B;->decoderCounters:LB0/i;

    .line 40
    .line 41
    invoke-virtual {v0, v1}, LD0/n;->a(LB0/i;)V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :catchall_0
    move-exception v0

    .line 46
    iget-object v1, p0, LD0/B;->eventDispatcher:LD0/n;

    .line 47
    .line 48
    iget-object v2, p0, LD0/B;->decoderCounters:LB0/i;

    .line 49
    .line 50
    invoke-virtual {v1, v2}, LD0/n;->a(LB0/i;)V

    .line 51
    .line 52
    .line 53
    throw v0
.end method

.method public onEnabled(ZZ)V
    .locals 3

    .line 1
    new-instance p1, LB0/i;

    .line 2
    .line 3
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, LD0/B;->decoderCounters:LB0/i;

    .line 7
    .line 8
    iget-object p2, p0, LD0/B;->eventDispatcher:LD0/n;

    .line 9
    .line 10
    iget-object v0, p2, LD0/n;->a:Landroid/os/Handler;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    new-instance v2, LD0/i;

    .line 16
    .line 17
    invoke-direct {v2, p2, p1, v1}, LD0/i;-><init>(LD0/n;LB0/i;I)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 21
    .line 22
    .line 23
    :cond_0
    invoke-virtual {p0}, LB0/h;->getConfiguration()LB0/E0;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    iget-boolean p1, p1, LB0/E0;->b:Z

    .line 28
    .line 29
    if-eqz p1, :cond_1

    .line 30
    .line 31
    iget-object p1, p0, LD0/B;->audioSink:LD0/v;

    .line 32
    .line 33
    check-cast p1, LD0/S;

    .line 34
    .line 35
    iget-boolean p2, p1, LD0/S;->Z:Z

    .line 36
    .line 37
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/H1;->i(Z)V

    .line 38
    .line 39
    .line 40
    iget-boolean p2, p1, LD0/S;->e0:Z

    .line 41
    .line 42
    if-nez p2, :cond_2

    .line 43
    .line 44
    const/4 p2, 0x1

    .line 45
    iput-boolean p2, p1, LD0/S;->e0:Z

    .line 46
    .line 47
    invoke-virtual {p1}, LD0/S;->g()V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    iget-object p1, p0, LD0/B;->audioSink:LD0/v;

    .line 52
    .line 53
    check-cast p1, LD0/S;

    .line 54
    .line 55
    iget-boolean p2, p1, LD0/S;->e0:Z

    .line 56
    .line 57
    if-eqz p2, :cond_2

    .line 58
    .line 59
    iput-boolean v1, p1, LD0/S;->e0:Z

    .line 60
    .line 61
    invoke-virtual {p1}, LD0/S;->g()V

    .line 62
    .line 63
    .line 64
    :cond_2
    :goto_0
    iget-object p1, p0, LD0/B;->audioSink:LD0/v;

    .line 65
    .line 66
    invoke-virtual {p0}, LB0/h;->getPlayerId()LC0/I;

    .line 67
    .line 68
    .line 69
    move-result-object p2

    .line 70
    check-cast p1, LD0/S;

    .line 71
    .line 72
    iput-object p2, p1, LD0/S;->t:LC0/I;

    .line 73
    .line 74
    iget-object p1, p0, LD0/B;->audioSink:LD0/v;

    .line 75
    .line 76
    invoke-virtual {p0}, LB0/h;->getClock()Lp0/f;

    .line 77
    .line 78
    .line 79
    move-result-object p2

    .line 80
    check-cast p1, LD0/S;

    .line 81
    .line 82
    iget-object p1, p1, LD0/S;->i:LD0/z;

    .line 83
    .line 84
    iput-object p2, p1, LD0/z;->I:Lp0/f;

    .line 85
    .line 86
    return-void
.end method

.method public onPositionDiscontinuity()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, LD0/B;->allowPositionDiscontinuity:Z

    .line 3
    .line 4
    return-void
.end method

.method public onPositionReset(JZ)V
    .locals 2

    .line 1
    iget-object p3, p0, LD0/B;->audioSink:LD0/v;

    .line 2
    .line 3
    check-cast p3, LD0/S;

    .line 4
    .line 5
    invoke-virtual {p3}, LD0/S;->g()V

    .line 6
    .line 7
    .line 8
    iput-wide p1, p0, LD0/B;->currentPositionUs:J

    .line 9
    .line 10
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    iput-wide p1, p0, LD0/B;->nextBufferToWritePresentationTimeUs:J

    .line 16
    .line 17
    const/4 p1, 0x0

    .line 18
    iput-boolean p1, p0, LD0/B;->hasPendingReportedSkippedSilence:Z

    .line 19
    .line 20
    const/4 p2, 0x1

    .line 21
    iput-boolean p2, p0, LD0/B;->allowPositionDiscontinuity:Z

    .line 22
    .line 23
    iput-boolean p1, p0, LD0/B;->inputStreamEnded:Z

    .line 24
    .line 25
    iput-boolean p1, p0, LD0/B;->outputStreamEnded:Z

    .line 26
    .line 27
    iget-object p2, p0, LD0/B;->decoder:Lw0/d;

    .line 28
    .line 29
    if-eqz p2, :cond_2

    .line 30
    .line 31
    iget p2, p0, LD0/B;->decoderReinitializationState:I

    .line 32
    .line 33
    if-eqz p2, :cond_0

    .line 34
    .line 35
    invoke-virtual {p0}, LD0/B;->e()V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, LD0/B;->c()V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    const/4 p2, 0x0

    .line 43
    iput-object p2, p0, LD0/B;->inputBuffer:Lw0/g;

    .line 44
    .line 45
    iget-object p3, p0, LD0/B;->outputBuffer:Landroidx/media3/decoder/SimpleDecoderOutputBuffer;

    .line 46
    .line 47
    if-eqz p3, :cond_1

    .line 48
    .line 49
    invoke-virtual {p3}, Landroidx/media3/decoder/SimpleDecoderOutputBuffer;->release()V

    .line 50
    .line 51
    .line 52
    iput-object p2, p0, LD0/B;->outputBuffer:Landroidx/media3/decoder/SimpleDecoderOutputBuffer;

    .line 53
    .line 54
    :cond_1
    iget-object p2, p0, LD0/B;->decoder:Lw0/d;

    .line 55
    .line 56
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    .line 58
    .line 59
    invoke-interface {p2}, Lw0/d;->flush()V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0}, LB0/h;->getLastResetPositionUs()J

    .line 63
    .line 64
    .line 65
    move-result-wide v0

    .line 66
    invoke-interface {p2, v0, v1}, Lw0/d;->setOutputStartTimeUs(J)V

    .line 67
    .line 68
    .line 69
    iput-boolean p1, p0, LD0/B;->decoderReceivedBuffers:Z

    .line 70
    .line 71
    :cond_2
    :goto_0
    return-void
.end method

.method public onStarted()V
    .locals 1

    .line 1
    iget-object v0, p0, LD0/B;->audioSink:LD0/v;

    .line 2
    .line 3
    check-cast v0, LD0/S;

    .line 4
    .line 5
    invoke-virtual {v0}, LD0/S;->u()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, LD0/B;->isStarted:Z

    .line 10
    .line 11
    return-void
.end method

.method public onStopped()V
    .locals 1

    .line 1
    invoke-virtual {p0}, LD0/B;->g()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, LD0/B;->audioSink:LD0/v;

    .line 5
    .line 6
    check-cast v0, LD0/S;

    .line 7
    .line 8
    invoke-virtual {v0}, LD0/S;->t()V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, LD0/B;->isStarted:Z

    .line 13
    .line 14
    return-void
.end method

.method public onStreamChanged([Lm0/t;JJLO0/y;)V
    .locals 2

    .line 1
    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, LD0/B;->firstStreamSampleRead:Z

    .line 3
    .line 4
    iget-wide p1, p0, LD0/B;->outputStreamOffsetUs:J

    .line 5
    .line 6
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    cmp-long p3, p1, v0

    .line 12
    .line 13
    if-nez p3, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0, p4, p5}, LD0/B;->f(J)V

    .line 16
    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_0
    iget p1, p0, LD0/B;->pendingOutputStreamOffsetCount:I

    .line 20
    .line 21
    iget-object p2, p0, LD0/B;->pendingOutputStreamOffsetsUs:[J

    .line 22
    .line 23
    array-length p2, p2

    .line 24
    if-ne p1, p2, :cond_1

    .line 25
    .line 26
    new-instance p1, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    const-string p2, "Too many stream changes, so dropping offset: "

    .line 29
    .line 30
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iget-object p2, p0, LD0/B;->pendingOutputStreamOffsetsUs:[J

    .line 34
    .line 35
    iget p3, p0, LD0/B;->pendingOutputStreamOffsetCount:I

    .line 36
    .line 37
    add-int/lit8 p3, p3, -0x1

    .line 38
    .line 39
    aget-wide v0, p2, p3

    .line 40
    .line 41
    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    const-string p2, "DecoderAudioRenderer"

    .line 49
    .line 50
    invoke-static {p2, p1}, Lp0/x;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    add-int/lit8 p1, p1, 0x1

    .line 55
    .line 56
    iput p1, p0, LD0/B;->pendingOutputStreamOffsetCount:I

    .line 57
    .line 58
    :goto_0
    iget-object p1, p0, LD0/B;->pendingOutputStreamOffsetsUs:[J

    .line 59
    .line 60
    iget p2, p0, LD0/B;->pendingOutputStreamOffsetCount:I

    .line 61
    .line 62
    add-int/lit8 p2, p2, -0x1

    .line 63
    .line 64
    aput-wide p4, p1, p2

    .line 65
    .line 66
    :goto_1
    return-void
.end method

.method public render(JJ)V
    .locals 1

    .line 1
    iget-boolean p1, p0, LD0/B;->outputStreamEnded:Z

    .line 2
    .line 3
    const/16 p2, 0x138a

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    :try_start_0
    iget-object p1, p0, LD0/B;->audioSink:LD0/v;

    .line 8
    .line 9
    check-cast p1, LD0/S;

    .line 10
    .line 11
    invoke-virtual {p1}, LD0/S;->w()V

    .line 12
    .line 13
    .line 14
    iget-wide p3, p0, LD0/B;->lastBufferInStreamPresentationTimeUs:J

    .line 15
    .line 16
    iput-wide p3, p0, LD0/B;->nextBufferToWritePresentationTimeUs:J
    :try_end_0
    .catch LD0/u; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    .line 18
    return-void

    .line 19
    :catch_0
    move-exception p1

    .line 20
    iget-object p3, p1, LD0/u;->I:Lm0/t;

    .line 21
    .line 22
    iget-boolean p4, p1, LD0/u;->H:Z

    .line 23
    .line 24
    invoke-virtual {p0, p1, p3, p4, p2}, LB0/h;->createRendererException(Ljava/lang/Throwable;Lm0/t;ZI)LB0/w;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    throw p1

    .line 29
    :cond_0
    iget-object p1, p0, LD0/B;->inputFormat:Lm0/t;

    .line 30
    .line 31
    if-nez p1, :cond_3

    .line 32
    .line 33
    invoke-virtual {p0}, LB0/h;->getFormatHolder()LB0/Z;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    iget-object p3, p0, LD0/B;->flagsOnlyBuffer:Lw0/g;

    .line 38
    .line 39
    invoke-virtual {p3}, Lw0/g;->clear()V

    .line 40
    .line 41
    .line 42
    iget-object p3, p0, LD0/B;->flagsOnlyBuffer:Lw0/g;

    .line 43
    .line 44
    const/4 p4, 0x2

    .line 45
    invoke-virtual {p0, p1, p3, p4}, LB0/h;->readSource(LB0/Z;Lw0/g;I)I

    .line 46
    .line 47
    .line 48
    move-result p3

    .line 49
    const/4 p4, -0x5

    .line 50
    if-ne p3, p4, :cond_1

    .line 51
    .line 52
    invoke-virtual {p0, p1}, LD0/B;->d(LB0/Z;)V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    const/4 p1, -0x4

    .line 57
    if-ne p3, p1, :cond_2

    .line 58
    .line 59
    iget-object p1, p0, LD0/B;->flagsOnlyBuffer:Lw0/g;

    .line 60
    .line 61
    invoke-virtual {p1}, Lw0/a;->isEndOfStream()Z

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/H1;->i(Z)V

    .line 66
    .line 67
    .line 68
    const/4 p1, 0x1

    .line 69
    iput-boolean p1, p0, LD0/B;->inputStreamEnded:Z

    .line 70
    .line 71
    :try_start_1
    iput-boolean p1, p0, LD0/B;->outputStreamEnded:Z

    .line 72
    .line 73
    iget-object p1, p0, LD0/B;->audioSink:LD0/v;

    .line 74
    .line 75
    check-cast p1, LD0/S;

    .line 76
    .line 77
    invoke-virtual {p1}, LD0/S;->w()V

    .line 78
    .line 79
    .line 80
    iget-wide p3, p0, LD0/B;->lastBufferInStreamPresentationTimeUs:J

    .line 81
    .line 82
    iput-wide p3, p0, LD0/B;->nextBufferToWritePresentationTimeUs:J
    :try_end_1
    .catch LD0/u; {:try_start_1 .. :try_end_1} :catch_1

    .line 83
    .line 84
    return-void

    .line 85
    :catch_1
    move-exception p1

    .line 86
    const/4 p3, 0x0

    .line 87
    invoke-virtual {p0, p1, p3, p2}, LB0/h;->createRendererException(Ljava/lang/Throwable;Lm0/t;I)LB0/w;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    throw p1

    .line 92
    :cond_2
    return-void

    .line 93
    :cond_3
    :goto_0
    invoke-virtual {p0}, LD0/B;->c()V

    .line 94
    .line 95
    .line 96
    iget-object p1, p0, LD0/B;->decoder:Lw0/d;

    .line 97
    .line 98
    if-eqz p1, :cond_7

    .line 99
    .line 100
    const/16 p1, 0x1389

    .line 101
    .line 102
    :try_start_2
    const-string p3, "drainAndFeed"

    .line 103
    .line 104
    invoke-static {p3}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    :goto_1
    invoke-virtual {p0}, LD0/B;->a()Z

    .line 108
    .line 109
    .line 110
    move-result p3

    .line 111
    if-eqz p3, :cond_4

    .line 112
    .line 113
    goto :goto_1

    .line 114
    :cond_4
    :goto_2
    invoke-virtual {p0}, LD0/B;->b()Z

    .line 115
    .line 116
    .line 117
    move-result p3

    .line 118
    if-eqz p3, :cond_5

    .line 119
    .line 120
    goto :goto_2

    .line 121
    :cond_5
    invoke-static {}, Landroid/os/Trace;->endSection()V
    :try_end_2
    .catch Lw0/e; {:try_start_2 .. :try_end_2} :catch_5
    .catch LD0/q; {:try_start_2 .. :try_end_2} :catch_4
    .catch LD0/r; {:try_start_2 .. :try_end_2} :catch_3
    .catch LD0/u; {:try_start_2 .. :try_end_2} :catch_2

    .line 122
    .line 123
    .line 124
    iget-object p1, p0, LD0/B;->decoderCounters:LB0/i;

    .line 125
    .line 126
    monitor-enter p1

    .line 127
    monitor-exit p1

    .line 128
    goto :goto_7

    .line 129
    :catch_2
    move-exception p1

    .line 130
    goto :goto_3

    .line 131
    :catch_3
    move-exception p2

    .line 132
    goto :goto_4

    .line 133
    :catch_4
    move-exception p2

    .line 134
    goto :goto_5

    .line 135
    :catch_5
    move-exception p1

    .line 136
    goto :goto_6

    .line 137
    :goto_3
    iget-object p3, p1, LD0/u;->I:Lm0/t;

    .line 138
    .line 139
    iget-boolean p4, p1, LD0/u;->H:Z

    .line 140
    .line 141
    invoke-virtual {p0, p1, p3, p4, p2}, LB0/h;->createRendererException(Ljava/lang/Throwable;Lm0/t;ZI)LB0/w;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    throw p1

    .line 146
    :goto_4
    iget-object p3, p2, LD0/r;->I:Lm0/t;

    .line 147
    .line 148
    iget-boolean p4, p2, LD0/r;->H:Z

    .line 149
    .line 150
    invoke-virtual {p0, p2, p3, p4, p1}, LB0/h;->createRendererException(Ljava/lang/Throwable;Lm0/t;ZI)LB0/w;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    throw p1

    .line 155
    :goto_5
    iget-object p3, p2, LD0/q;->G:Lm0/t;

    .line 156
    .line 157
    invoke-virtual {p0, p2, p3, p1}, LB0/h;->createRendererException(Ljava/lang/Throwable;Lm0/t;I)LB0/w;

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    throw p1

    .line 162
    :goto_6
    const-string p2, "DecoderAudioRenderer"

    .line 163
    .line 164
    const-string p3, "Audio codec error"

    .line 165
    .line 166
    invoke-static {p2, p3, p1}, Lp0/x;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 167
    .line 168
    .line 169
    iget-object p2, p0, LD0/B;->eventDispatcher:LD0/n;

    .line 170
    .line 171
    iget-object p3, p2, LD0/n;->a:Landroid/os/Handler;

    .line 172
    .line 173
    if-eqz p3, :cond_6

    .line 174
    .line 175
    new-instance p4, LD0/j;

    .line 176
    .line 177
    const/4 v0, 0x0

    .line 178
    invoke-direct {p4, p2, p1, v0}, LD0/j;-><init>(LD0/n;Ljava/lang/Exception;I)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {p3, p4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 182
    .line 183
    .line 184
    :cond_6
    iget-object p2, p0, LD0/B;->inputFormat:Lm0/t;

    .line 185
    .line 186
    const/16 p3, 0xfa3

    .line 187
    .line 188
    invoke-virtual {p0, p1, p2, p3}, LB0/h;->createRendererException(Ljava/lang/Throwable;Lm0/t;I)LB0/w;

    .line 189
    .line 190
    .line 191
    move-result-object p1

    .line 192
    throw p1

    .line 193
    :cond_7
    :goto_7
    return-void
.end method

.method public setPlaybackParameters(Lm0/S;)V
    .locals 1

    .line 1
    iget-object v0, p0, LD0/B;->audioSink:LD0/v;

    .line 2
    .line 3
    check-cast v0, LD0/S;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, LD0/S;->E(Lm0/S;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final sinkSupportsFormat(Lm0/t;)Z
    .locals 1

    .line 1
    iget-object v0, p0, LD0/B;->audioSink:LD0/v;

    .line 2
    .line 3
    check-cast v0, LD0/S;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, LD0/S;->G(Lm0/t;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public final supportsFormat(Lm0/t;)I
    .locals 2

    .line 1
    iget-object v0, p1, Lm0/t;->o:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Lm0/O;->k(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    invoke-static {v1, v1, v1, v1}, LA0/O;->o(IIII)I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    return p1

    .line 15
    :cond_0
    invoke-virtual {p0, p1}, LD0/B;->supportsFormatInternal(Lm0/t;)I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    const/4 v0, 0x2

    .line 20
    if-gt p1, v0, :cond_1

    .line 21
    .line 22
    invoke-static {p1, v1, v1, v1}, LA0/O;->o(IIII)I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    return p1

    .line 27
    :cond_1
    or-int/lit16 p1, p1, 0xa8

    .line 28
    .line 29
    return p1
.end method

.method public abstract supportsFormatInternal(Lm0/t;)I
.end method
