.class public abstract Lw0/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw0/d;


# instance fields
.field private availableInputBufferCount:I

.field private final availableInputBuffers:[Lw0/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lw0/g;"
        }
    .end annotation
.end field

.field private availableOutputBufferCount:I

.field private final availableOutputBuffers:[Lw0/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lw0/i;"
        }
    .end annotation
.end field

.field private final decodeThread:Ljava/lang/Thread;

.field private dequeuedInputBuffer:Lw0/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw0/g;"
        }
    .end annotation
.end field

.field private exception:Lw0/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw0/e;"
        }
    .end annotation
.end field

.field private flushed:Z

.field private final lock:Ljava/lang/Object;

.field private outputStartTimeUs:J

.field private final queuedInputBuffers:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lw0/g;",
            ">;"
        }
    .end annotation
.end field

.field private final queuedOutputBuffers:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lw0/i;",
            ">;"
        }
    .end annotation
.end field

.field private released:Z

.field private skippedOutputBufferCount:I


# direct methods
.method public constructor <init>([Lw0/g;[Lw0/i;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lw0/k;->lock:Ljava/lang/Object;

    .line 10
    .line 11
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    iput-wide v0, p0, Lw0/k;->outputStartTimeUs:J

    .line 17
    .line 18
    new-instance v0, Ljava/util/ArrayDeque;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lw0/k;->queuedInputBuffers:Ljava/util/ArrayDeque;

    .line 24
    .line 25
    new-instance v0, Ljava/util/ArrayDeque;

    .line 26
    .line 27
    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lw0/k;->queuedOutputBuffers:Ljava/util/ArrayDeque;

    .line 31
    .line 32
    iput-object p1, p0, Lw0/k;->availableInputBuffers:[Lw0/g;

    .line 33
    .line 34
    array-length p1, p1

    .line 35
    iput p1, p0, Lw0/k;->availableInputBufferCount:I

    .line 36
    .line 37
    const/4 p1, 0x0

    .line 38
    const/4 v0, 0x0

    .line 39
    :goto_0
    iget v1, p0, Lw0/k;->availableInputBufferCount:I

    .line 40
    .line 41
    if-ge v0, v1, :cond_0

    .line 42
    .line 43
    iget-object v1, p0, Lw0/k;->availableInputBuffers:[Lw0/g;

    .line 44
    .line 45
    invoke-virtual {p0}, Lw0/k;->createInputBuffer()Lw0/g;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    aput-object v2, v1, v0

    .line 50
    .line 51
    add-int/lit8 v0, v0, 0x1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_0
    iput-object p2, p0, Lw0/k;->availableOutputBuffers:[Lw0/i;

    .line 55
    .line 56
    array-length p2, p2

    .line 57
    iput p2, p0, Lw0/k;->availableOutputBufferCount:I

    .line 58
    .line 59
    :goto_1
    iget p2, p0, Lw0/k;->availableOutputBufferCount:I

    .line 60
    .line 61
    if-ge p1, p2, :cond_1

    .line 62
    .line 63
    iget-object p2, p0, Lw0/k;->availableOutputBuffers:[Lw0/i;

    .line 64
    .line 65
    invoke-virtual {p0}, Lw0/k;->createOutputBuffer()Lw0/i;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    aput-object v0, p2, p1

    .line 70
    .line 71
    add-int/lit8 p1, p1, 0x1

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_1
    new-instance p1, Lw0/j;

    .line 75
    .line 76
    invoke-direct {p1, p0}, Lw0/j;-><init>(Lw0/k;)V

    .line 77
    .line 78
    .line 79
    iput-object p1, p0, Lw0/k;->decodeThread:Ljava/lang/Thread;

    .line 80
    .line 81
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 82
    .line 83
    .line 84
    return-void
.end method

.method public static access$000(Lw0/k;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lw0/k;->b()Z

    .line 5
    .line 6
    .line 7
    move-result v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    return-void

    .line 12
    :catch_0
    move-exception p0

    .line 13
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 14
    .line 15
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 16
    .line 17
    .line 18
    throw v0
.end method


# virtual methods
.method public final b()Z
    .locals 8

    .line 1
    iget-object v0, p0, Lw0/k;->lock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :goto_0
    :try_start_0
    iget-boolean v1, p0, Lw0/k;->released:Z

    .line 5
    .line 6
    if-nez v1, :cond_1

    .line 7
    .line 8
    iget-object v1, p0, Lw0/k;->queuedInputBuffers:Ljava/util/ArrayDeque;

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    iget v1, p0, Lw0/k;->availableOutputBufferCount:I

    .line 17
    .line 18
    if-lez v1, :cond_0

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_0
    iget-object v1, p0, Lw0/k;->lock:Ljava/lang/Object;

    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    move-exception v1

    .line 28
    goto/16 :goto_6

    .line 29
    .line 30
    :cond_1
    :goto_1
    iget-boolean v1, p0, Lw0/k;->released:Z

    .line 31
    .line 32
    const/4 v2, 0x0

    .line 33
    if-eqz v1, :cond_2

    .line 34
    .line 35
    monitor-exit v0

    .line 36
    return v2

    .line 37
    :cond_2
    iget-object v1, p0, Lw0/k;->queuedInputBuffers:Ljava/util/ArrayDeque;

    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    check-cast v1, Lw0/g;

    .line 44
    .line 45
    iget-object v3, p0, Lw0/k;->availableOutputBuffers:[Lw0/i;

    .line 46
    .line 47
    iget v4, p0, Lw0/k;->availableOutputBufferCount:I

    .line 48
    .line 49
    const/4 v5, 0x1

    .line 50
    sub-int/2addr v4, v5

    .line 51
    iput v4, p0, Lw0/k;->availableOutputBufferCount:I

    .line 52
    .line 53
    aget-object v3, v3, v4

    .line 54
    .line 55
    iget-boolean v4, p0, Lw0/k;->flushed:Z

    .line 56
    .line 57
    iput-boolean v2, p0, Lw0/k;->flushed:Z

    .line 58
    .line 59
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    invoke-virtual {v1}, Lw0/a;->isEndOfStream()Z

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    if-eqz v0, :cond_3

    .line 65
    .line 66
    const/4 v0, 0x4

    .line 67
    invoke-virtual {v3, v0}, Lw0/a;->addFlag(I)V

    .line 68
    .line 69
    .line 70
    goto :goto_3

    .line 71
    :cond_3
    iget-wide v6, v1, Lw0/g;->K:J

    .line 72
    .line 73
    iput-wide v6, v3, Lw0/i;->timeUs:J

    .line 74
    .line 75
    invoke-virtual {v1}, Lw0/a;->isFirstSample()Z

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    if-eqz v0, :cond_4

    .line 80
    .line 81
    const/high16 v0, 0x8000000

    .line 82
    .line 83
    invoke-virtual {v3, v0}, Lw0/a;->addFlag(I)V

    .line 84
    .line 85
    .line 86
    :cond_4
    iget-wide v6, v1, Lw0/g;->K:J

    .line 87
    .line 88
    invoke-virtual {p0, v6, v7}, Lw0/k;->isAtLeastOutputStartTimeUs(J)Z

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    if-nez v0, :cond_5

    .line 93
    .line 94
    iput-boolean v5, v3, Lw0/i;->shouldBeSkipped:Z

    .line 95
    .line 96
    :cond_5
    :try_start_1
    invoke-virtual {p0, v1, v3, v4}, Lw0/k;->decode(Lw0/g;Lw0/i;Z)Lw0/e;

    .line 97
    .line 98
    .line 99
    move-result-object v0
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    .line 100
    goto :goto_2

    .line 101
    :catch_0
    move-exception v0

    .line 102
    invoke-virtual {p0, v0}, Lw0/k;->createUnexpectedDecodeException(Ljava/lang/Throwable;)Lw0/e;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    goto :goto_2

    .line 107
    :catch_1
    move-exception v0

    .line 108
    invoke-virtual {p0, v0}, Lw0/k;->createUnexpectedDecodeException(Ljava/lang/Throwable;)Lw0/e;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    :goto_2
    if-eqz v0, :cond_6

    .line 113
    .line 114
    iget-object v4, p0, Lw0/k;->lock:Ljava/lang/Object;

    .line 115
    .line 116
    monitor-enter v4

    .line 117
    :try_start_2
    iput-object v0, p0, Lw0/k;->exception:Lw0/e;

    .line 118
    .line 119
    monitor-exit v4

    .line 120
    return v2

    .line 121
    :catchall_1
    move-exception v0

    .line 122
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 123
    throw v0

    .line 124
    :cond_6
    :goto_3
    iget-object v4, p0, Lw0/k;->lock:Ljava/lang/Object;

    .line 125
    .line 126
    monitor-enter v4

    .line 127
    :try_start_3
    iget-boolean v0, p0, Lw0/k;->flushed:Z

    .line 128
    .line 129
    if-eqz v0, :cond_7

    .line 130
    .line 131
    invoke-virtual {v3}, Lw0/i;->release()V

    .line 132
    .line 133
    .line 134
    goto :goto_4

    .line 135
    :catchall_2
    move-exception v0

    .line 136
    goto :goto_5

    .line 137
    :cond_7
    iget-boolean v0, v3, Lw0/i;->shouldBeSkipped:Z

    .line 138
    .line 139
    if-eqz v0, :cond_8

    .line 140
    .line 141
    iget v0, p0, Lw0/k;->skippedOutputBufferCount:I

    .line 142
    .line 143
    add-int/2addr v0, v5

    .line 144
    iput v0, p0, Lw0/k;->skippedOutputBufferCount:I

    .line 145
    .line 146
    invoke-virtual {v3}, Lw0/i;->release()V

    .line 147
    .line 148
    .line 149
    goto :goto_4

    .line 150
    :cond_8
    iget v0, p0, Lw0/k;->skippedOutputBufferCount:I

    .line 151
    .line 152
    iput v0, v3, Lw0/i;->skippedOutputBufferCount:I

    .line 153
    .line 154
    iput v2, p0, Lw0/k;->skippedOutputBufferCount:I

    .line 155
    .line 156
    iget-object v0, p0, Lw0/k;->queuedOutputBuffers:Ljava/util/ArrayDeque;

    .line 157
    .line 158
    invoke-virtual {v0, v3}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 159
    .line 160
    .line 161
    :goto_4
    invoke-virtual {v1}, Lw0/g;->clear()V

    .line 162
    .line 163
    .line 164
    iget-object v0, p0, Lw0/k;->availableInputBuffers:[Lw0/g;

    .line 165
    .line 166
    iget v2, p0, Lw0/k;->availableInputBufferCount:I

    .line 167
    .line 168
    add-int/lit8 v3, v2, 0x1

    .line 169
    .line 170
    iput v3, p0, Lw0/k;->availableInputBufferCount:I

    .line 171
    .line 172
    aput-object v1, v0, v2

    .line 173
    .line 174
    monitor-exit v4

    .line 175
    return v5

    .line 176
    :goto_5
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 177
    throw v0

    .line 178
    :goto_6
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 179
    throw v1
.end method

.method public abstract createInputBuffer()Lw0/g;
.end method

.method public abstract createOutputBuffer()Lw0/i;
.end method

.method public abstract createUnexpectedDecodeException(Ljava/lang/Throwable;)Lw0/e;
.end method

.method public abstract decode(Lw0/g;Lw0/i;Z)Lw0/e;
.end method

.method public bridge synthetic dequeueInputBuffer()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lw0/k;->dequeueInputBuffer()Lw0/g;

    move-result-object v0

    return-object v0
.end method

.method public final dequeueInputBuffer()Lw0/g;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lw0/g;",
            "^",
            "Lw0/e;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lw0/k;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lw0/k;->exception:Lw0/e;

    if-nez v1, :cond_2

    .line 4
    iget-object v1, p0, Lw0/k;->dequeuedInputBuffer:Lw0/g;

    const/4 v2, 0x1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/H1;->i(Z)V

    .line 5
    iget v1, p0, Lw0/k;->availableInputBufferCount:I

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    .line 6
    :cond_1
    iget-object v3, p0, Lw0/k;->availableInputBuffers:[Lw0/g;

    sub-int/2addr v1, v2

    iput v1, p0, Lw0/k;->availableInputBufferCount:I

    aget-object v1, v3, v1

    :goto_1
    iput-object v1, p0, Lw0/k;->dequeuedInputBuffer:Lw0/g;

    .line 7
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    goto :goto_2

    .line 8
    :cond_2
    throw v1

    .line 9
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public bridge synthetic dequeueOutputBuffer()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lw0/k;->dequeueOutputBuffer()Lw0/i;

    move-result-object v0

    return-object v0
.end method

.method public final dequeueOutputBuffer()Lw0/i;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lw0/i;",
            "^",
            "Lw0/e;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lw0/k;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lw0/k;->exception:Lw0/e;

    if-nez v1, :cond_1

    .line 4
    iget-object v1, p0, Lw0/k;->queuedOutputBuffers:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    :catchall_0
    move-exception v1

    goto :goto_0

    .line 6
    :cond_0
    iget-object v1, p0, Lw0/k;->queuedOutputBuffers:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lw0/i;

    monitor-exit v0

    return-object v1

    .line 7
    :cond_1
    throw v1

    .line 8
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final flush()V
    .locals 5

    .line 1
    iget-object v0, p0, Lw0/k;->lock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x1

    .line 5
    :try_start_0
    iput-boolean v1, p0, Lw0/k;->flushed:Z

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    iput v1, p0, Lw0/k;->skippedOutputBufferCount:I

    .line 9
    .line 10
    iget-object v1, p0, Lw0/k;->dequeuedInputBuffer:Lw0/g;

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    invoke-virtual {v1}, Lw0/g;->clear()V

    .line 15
    .line 16
    .line 17
    iget-object v2, p0, Lw0/k;->availableInputBuffers:[Lw0/g;

    .line 18
    .line 19
    iget v3, p0, Lw0/k;->availableInputBufferCount:I

    .line 20
    .line 21
    add-int/lit8 v4, v3, 0x1

    .line 22
    .line 23
    iput v4, p0, Lw0/k;->availableInputBufferCount:I

    .line 24
    .line 25
    aput-object v1, v2, v3

    .line 26
    .line 27
    const/4 v1, 0x0

    .line 28
    iput-object v1, p0, Lw0/k;->dequeuedInputBuffer:Lw0/g;

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catchall_0
    move-exception v1

    .line 32
    goto :goto_2

    .line 33
    :cond_0
    :goto_0
    iget-object v1, p0, Lw0/k;->queuedInputBuffers:Ljava/util/ArrayDeque;

    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-nez v1, :cond_1

    .line 40
    .line 41
    iget-object v1, p0, Lw0/k;->queuedInputBuffers:Ljava/util/ArrayDeque;

    .line 42
    .line 43
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    check-cast v1, Lw0/g;

    .line 48
    .line 49
    invoke-virtual {v1}, Lw0/g;->clear()V

    .line 50
    .line 51
    .line 52
    iget-object v2, p0, Lw0/k;->availableInputBuffers:[Lw0/g;

    .line 53
    .line 54
    iget v3, p0, Lw0/k;->availableInputBufferCount:I

    .line 55
    .line 56
    add-int/lit8 v4, v3, 0x1

    .line 57
    .line 58
    iput v4, p0, Lw0/k;->availableInputBufferCount:I

    .line 59
    .line 60
    aput-object v1, v2, v3

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_1
    :goto_1
    iget-object v1, p0, Lw0/k;->queuedOutputBuffers:Ljava/util/ArrayDeque;

    .line 64
    .line 65
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    if-nez v1, :cond_2

    .line 70
    .line 71
    iget-object v1, p0, Lw0/k;->queuedOutputBuffers:Ljava/util/ArrayDeque;

    .line 72
    .line 73
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    check-cast v1, Lw0/i;

    .line 78
    .line 79
    invoke-virtual {v1}, Lw0/i;->release()V

    .line 80
    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_2
    monitor-exit v0

    .line 84
    return-void

    .line 85
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    throw v1
.end method

.method public final isAtLeastOutputStartTimeUs(J)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lw0/k;->lock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-wide v1, p0, Lw0/k;->outputStartTimeUs:J

    .line 5
    .line 6
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    cmp-long v5, v1, v3

    .line 12
    .line 13
    if-eqz v5, :cond_1

    .line 14
    .line 15
    cmp-long v3, p1, v1

    .line 16
    .line 17
    if-ltz v3, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 p1, 0x0

    .line 21
    goto :goto_1

    .line 22
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 23
    :goto_1
    monitor-exit v0

    .line 24
    return p1

    .line 25
    :catchall_0
    move-exception p1

    .line 26
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    throw p1
.end method

.method public bridge synthetic queueInputBuffer(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lw0/g;

    invoke-virtual {p0, p1}, Lw0/k;->queueInputBuffer(Lw0/g;)V

    return-void
.end method

.method public final queueInputBuffer(Lw0/g;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw0/g;",
            ")V^",
            "Lw0/e;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lw0/k;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lw0/k;->exception:Lw0/e;

    if-nez v1, :cond_2

    .line 4
    iget-object v1, p0, Lw0/k;->dequeuedInputBuffer:Lw0/g;

    if-ne p1, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/H1;->d(Z)V

    .line 5
    iget-object v1, p0, Lw0/k;->queuedInputBuffers:Ljava/util/ArrayDeque;

    invoke-virtual {v1, p1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 6
    iget-object p1, p0, Lw0/k;->queuedInputBuffers:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    iget p1, p0, Lw0/k;->availableOutputBufferCount:I

    if-lez p1, :cond_1

    .line 7
    iget-object p1, p0, Lw0/k;->lock:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notify()V

    :cond_1
    const/4 p1, 0x0

    .line 8
    iput-object p1, p0, Lw0/k;->dequeuedInputBuffer:Lw0/g;

    .line 9
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 10
    :cond_2
    throw v1

    .line 11
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public release()V
    .locals 2

    .line 1
    iget-object v0, p0, Lw0/k;->lock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x1

    .line 5
    :try_start_0
    iput-boolean v1, p0, Lw0/k;->released:Z

    .line 6
    .line 7
    iget-object v1, p0, Lw0/k;->lock:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 10
    .line 11
    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    :try_start_1
    iget-object v0, p0, Lw0/k;->decodeThread:Ljava/lang/Thread;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 24
    .line 25
    .line 26
    :goto_0
    return-void

    .line 27
    :catchall_0
    move-exception v1

    .line 28
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 29
    throw v1
.end method

.method public releaseOutputBuffer(Lw0/i;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw0/i;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lw0/k;->lock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p1}, Lw0/i;->clear()V

    .line 5
    .line 6
    .line 7
    iget-object v1, p0, Lw0/k;->availableOutputBuffers:[Lw0/i;

    .line 8
    .line 9
    iget v2, p0, Lw0/k;->availableOutputBufferCount:I

    .line 10
    .line 11
    add-int/lit8 v3, v2, 0x1

    .line 12
    .line 13
    iput v3, p0, Lw0/k;->availableOutputBufferCount:I

    .line 14
    .line 15
    aput-object p1, v1, v2

    .line 16
    .line 17
    iget-object p1, p0, Lw0/k;->queuedInputBuffers:Ljava/util/ArrayDeque;

    .line 18
    .line 19
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-nez p1, :cond_0

    .line 24
    .line 25
    iget p1, p0, Lw0/k;->availableOutputBufferCount:I

    .line 26
    .line 27
    if-lez p1, :cond_0

    .line 28
    .line 29
    iget-object p1, p0, Lw0/k;->lock:Ljava/lang/Object;

    .line 30
    .line 31
    invoke-virtual {p1}, Ljava/lang/Object;->notify()V

    .line 32
    .line 33
    .line 34
    :cond_0
    monitor-exit v0

    .line 35
    return-void

    .line 36
    :catchall_0
    move-exception p1

    .line 37
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    throw p1
.end method

.method public final setInitialInputBufferSize(I)V
    .locals 4

    .line 1
    iget v0, p0, Lw0/k;->availableInputBufferCount:I

    .line 2
    .line 3
    iget-object v1, p0, Lw0/k;->availableInputBuffers:[Lw0/g;

    .line 4
    .line 5
    array-length v1, v1

    .line 6
    const/4 v2, 0x0

    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/H1;->i(Z)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lw0/k;->availableInputBuffers:[Lw0/g;

    .line 16
    .line 17
    array-length v1, v0

    .line 18
    :goto_1
    if-ge v2, v1, :cond_1

    .line 19
    .line 20
    aget-object v3, v0, v2

    .line 21
    .line 22
    invoke-virtual {v3, p1}, Lw0/g;->f(I)V

    .line 23
    .line 24
    .line 25
    add-int/lit8 v2, v2, 0x1

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_1
    return-void
.end method

.method public final setOutputStartTimeUs(J)V
    .locals 3

    .line 1
    iget-object v0, p0, Lw0/k;->lock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget v1, p0, Lw0/k;->availableInputBufferCount:I

    .line 5
    .line 6
    iget-object v2, p0, Lw0/k;->availableInputBuffers:[Lw0/g;

    .line 7
    .line 8
    array-length v2, v2

    .line 9
    if-eq v1, v2, :cond_1

    .line 10
    .line 11
    iget-boolean v1, p0, Lw0/k;->flushed:Z

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v1, 0x0

    .line 17
    goto :goto_1

    .line 18
    :catchall_0
    move-exception p1

    .line 19
    goto :goto_2

    .line 20
    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 21
    :goto_1
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/H1;->i(Z)V

    .line 22
    .line 23
    .line 24
    iput-wide p1, p0, Lw0/k;->outputStartTimeUs:J

    .line 25
    .line 26
    monitor-exit v0

    .line 27
    return-void

    .line 28
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    throw p1
.end method
