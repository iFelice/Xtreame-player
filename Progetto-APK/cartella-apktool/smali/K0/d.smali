.class public final LK0/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LK0/m;


# static fields
.field public static final M:Ljava/util/ArrayDeque;

.field public static final N:Ljava/lang/Object;


# instance fields
.field public final G:Landroid/media/MediaCodec;

.field public final H:Landroid/os/HandlerThread;

.field public I:Li0/a;

.field public final J:Ljava/util/concurrent/atomic/AtomicReference;

.field public final K:Lp0/i;

.field public L:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/ArrayDeque;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, LK0/d;->M:Ljava/util/ArrayDeque;

    .line 7
    .line 8
    new-instance v0, Ljava/lang/Object;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, LK0/d;->N:Ljava/lang/Object;

    .line 14
    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/media/MediaCodec;Landroid/os/HandlerThread;)V
    .locals 1

    .line 1
    new-instance v0, Lp0/i;

    .line 2
    .line 3
    invoke-direct {v0}, Lp0/i;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, LK0/d;->G:Landroid/media/MediaCodec;

    .line 10
    .line 11
    iput-object p2, p0, LK0/d;->H:Landroid/os/HandlerThread;

    .line 12
    .line 13
    iput-object v0, p0, LK0/d;->K:Lp0/i;

    .line 14
    .line 15
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    .line 16
    .line 17
    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object p1, p0, LK0/d;->J:Ljava/util/concurrent/atomic/AtomicReference;

    .line 21
    .line 22
    return-void
.end method

.method public static a()LK0/c;
    .locals 2

    .line 1
    sget-object v0, LK0/d;->M:Ljava/util/ArrayDeque;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    new-instance v1, LK0/c;

    .line 11
    .line 12
    invoke-direct {v1}, LK0/c;-><init>()V

    .line 13
    .line 14
    .line 15
    monitor-exit v0

    .line 16
    return-object v1

    .line 17
    :catchall_0
    move-exception v1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, LK0/c;

    .line 24
    .line 25
    monitor-exit v0

    .line 26
    return-object v1

    .line 27
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    throw v1
.end method

.method public static c(LK0/c;)V
    .locals 1

    .line 1
    sget-object v0, LK0/d;->M:Ljava/util/ArrayDeque;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {v0, p0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 5
    .line 6
    .line 7
    monitor-exit v0

    .line 8
    return-void

    .line 9
    :catchall_0
    move-exception p0

    .line 10
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    throw p0
.end method


# virtual methods
.method public final b(ILw0/c;JI)V
    .locals 3

    .line 1
    invoke-virtual {p0}, LK0/d;->x()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, LK0/d;->a()LK0/c;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput p1, v0, LK0/c;->a:I

    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    iput p1, v0, LK0/c;->b:I

    .line 12
    .line 13
    iput p1, v0, LK0/c;->c:I

    .line 14
    .line 15
    iput-wide p3, v0, LK0/c;->e:J

    .line 16
    .line 17
    iput p5, v0, LK0/c;->f:I

    .line 18
    .line 19
    iget p3, p2, Lw0/c;->f:I

    .line 20
    .line 21
    iget-object p4, v0, LK0/c;->d:Landroid/media/MediaCodec$CryptoInfo;

    .line 22
    .line 23
    iput p3, p4, Landroid/media/MediaCodec$CryptoInfo;->numSubSamples:I

    .line 24
    .line 25
    iget-object p3, p2, Lw0/c;->d:[I

    .line 26
    .line 27
    iget-object p5, p4, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    .line 28
    .line 29
    if-nez p3, :cond_0

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_0
    if-eqz p5, :cond_2

    .line 33
    .line 34
    array-length v1, p5

    .line 35
    array-length v2, p3

    .line 36
    if-ge v1, v2, :cond_1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    array-length v1, p3

    .line 40
    invoke-static {p3, p1, p5, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 41
    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_2
    :goto_0
    array-length p5, p3

    .line 45
    invoke-static {p3, p5}, Ljava/util/Arrays;->copyOf([II)[I

    .line 46
    .line 47
    .line 48
    move-result-object p5

    .line 49
    :goto_1
    iput-object p5, p4, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    .line 50
    .line 51
    iget-object p3, p2, Lw0/c;->e:[I

    .line 52
    .line 53
    iget-object p5, p4, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfEncryptedData:[I

    .line 54
    .line 55
    if-nez p3, :cond_3

    .line 56
    .line 57
    goto :goto_3

    .line 58
    :cond_3
    if-eqz p5, :cond_5

    .line 59
    .line 60
    array-length v1, p5

    .line 61
    array-length v2, p3

    .line 62
    if-ge v1, v2, :cond_4

    .line 63
    .line 64
    goto :goto_2

    .line 65
    :cond_4
    array-length v1, p3

    .line 66
    invoke-static {p3, p1, p5, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 67
    .line 68
    .line 69
    goto :goto_3

    .line 70
    :cond_5
    :goto_2
    array-length p5, p3

    .line 71
    invoke-static {p3, p5}, Ljava/util/Arrays;->copyOf([II)[I

    .line 72
    .line 73
    .line 74
    move-result-object p5

    .line 75
    :goto_3
    iput-object p5, p4, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfEncryptedData:[I

    .line 76
    .line 77
    iget-object p3, p2, Lw0/c;->b:[B

    .line 78
    .line 79
    iget-object p5, p4, Landroid/media/MediaCodec$CryptoInfo;->key:[B

    .line 80
    .line 81
    if-nez p3, :cond_6

    .line 82
    .line 83
    goto :goto_5

    .line 84
    :cond_6
    if-eqz p5, :cond_8

    .line 85
    .line 86
    array-length v1, p5

    .line 87
    array-length v2, p3

    .line 88
    if-ge v1, v2, :cond_7

    .line 89
    .line 90
    goto :goto_4

    .line 91
    :cond_7
    array-length v1, p3

    .line 92
    invoke-static {p3, p1, p5, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 93
    .line 94
    .line 95
    goto :goto_5

    .line 96
    :cond_8
    :goto_4
    array-length p5, p3

    .line 97
    invoke-static {p3, p5}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 98
    .line 99
    .line 100
    move-result-object p5

    .line 101
    :goto_5
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 102
    .line 103
    .line 104
    iput-object p5, p4, Landroid/media/MediaCodec$CryptoInfo;->key:[B

    .line 105
    .line 106
    iget-object p3, p2, Lw0/c;->a:[B

    .line 107
    .line 108
    iget-object p5, p4, Landroid/media/MediaCodec$CryptoInfo;->iv:[B

    .line 109
    .line 110
    if-nez p3, :cond_9

    .line 111
    .line 112
    goto :goto_7

    .line 113
    :cond_9
    if-eqz p5, :cond_b

    .line 114
    .line 115
    array-length v1, p5

    .line 116
    array-length v2, p3

    .line 117
    if-ge v1, v2, :cond_a

    .line 118
    .line 119
    goto :goto_6

    .line 120
    :cond_a
    array-length v1, p3

    .line 121
    invoke-static {p3, p1, p5, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 122
    .line 123
    .line 124
    goto :goto_7

    .line 125
    :cond_b
    :goto_6
    array-length p1, p3

    .line 126
    invoke-static {p3, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 127
    .line 128
    .line 129
    move-result-object p5

    .line 130
    :goto_7
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 131
    .line 132
    .line 133
    iput-object p5, p4, Landroid/media/MediaCodec$CryptoInfo;->iv:[B

    .line 134
    .line 135
    iget p1, p2, Lw0/c;->c:I

    .line 136
    .line 137
    iput p1, p4, Landroid/media/MediaCodec$CryptoInfo;->mode:I

    .line 138
    .line 139
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 140
    .line 141
    const/16 p3, 0x18

    .line 142
    .line 143
    if-lt p1, p3, :cond_c

    .line 144
    .line 145
    invoke-static {}, LD0/y;->p()V

    .line 146
    .line 147
    .line 148
    iget p1, p2, Lw0/c;->g:I

    .line 149
    .line 150
    iget p2, p2, Lw0/c;->h:I

    .line 151
    .line 152
    invoke-static {p1, p2}, LD0/y;->g(II)Landroid/media/MediaCodec$CryptoInfo$Pattern;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    invoke-static {p4, p1}, LD0/y;->s(Landroid/media/MediaCodec$CryptoInfo;Landroid/media/MediaCodec$CryptoInfo$Pattern;)V

    .line 157
    .line 158
    .line 159
    :cond_c
    iget-object p1, p0, LK0/d;->I:Li0/a;

    .line 160
    .line 161
    sget-object p2, Lp0/M;->a:Ljava/lang/String;

    .line 162
    .line 163
    const/4 p2, 0x2

    .line 164
    invoke-virtual {p1, p2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 165
    .line 166
    .line 167
    move-result-object p1

    .line 168
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 169
    .line 170
    .line 171
    return-void
.end method

.method public final d(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, LK0/d;->x()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, LK0/d;->I:Li0/a;

    .line 5
    .line 6
    sget-object v1, Lp0/M;->a:Ljava/lang/String;

    .line 7
    .line 8
    const/4 v1, 0x4

    .line 9
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final e(JIII)V
    .locals 1

    .line 1
    invoke-virtual {p0}, LK0/d;->x()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, LK0/d;->a()LK0/c;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput p3, v0, LK0/c;->a:I

    .line 9
    .line 10
    const/4 p3, 0x0

    .line 11
    iput p3, v0, LK0/c;->b:I

    .line 12
    .line 13
    iput p4, v0, LK0/c;->c:I

    .line 14
    .line 15
    iput-wide p1, v0, LK0/c;->e:J

    .line 16
    .line 17
    iput p5, v0, LK0/c;->f:I

    .line 18
    .line 19
    iget-object p1, p0, LK0/d;->I:Li0/a;

    .line 20
    .line 21
    sget-object p2, Lp0/M;->a:Ljava/lang/String;

    .line 22
    .line 23
    const/4 p2, 0x1

    .line 24
    invoke-virtual {p1, p2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public final flush()V
    .locals 3

    .line 1
    iget-boolean v0, p0, LK0/d;->L:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    iget-object v0, p0, LK0/d;->I:Li0/a;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, LK0/d;->K:Lp0/i;

    .line 15
    .line 16
    invoke-virtual {v0}, Lp0/i;->e()V

    .line 17
    .line 18
    .line 19
    iget-object v1, p0, LK0/d;->I:Li0/a;

    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    const/4 v2, 0x3

    .line 25
    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Lp0/i;->a()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :catch_0
    move-exception v0

    .line 37
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 42
    .line 43
    .line 44
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 45
    .line 46
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 47
    .line 48
    .line 49
    throw v1

    .line 50
    :cond_0
    :goto_0
    return-void
.end method

.method public final shutdown()V
    .locals 1

    .line 1
    iget-boolean v0, p0, LK0/d;->L:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, LK0/d;->flush()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, LK0/d;->H:Landroid/os/HandlerThread;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 11
    .line 12
    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    iput-boolean v0, p0, LK0/d;->L:Z

    .line 15
    .line 16
    return-void
.end method

.method public final start()V
    .locals 3

    .line 1
    iget-boolean v0, p0, LK0/d;->L:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, LK0/d;->H:Landroid/os/HandlerThread;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 8
    .line 9
    .line 10
    new-instance v1, Li0/a;

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const/4 v2, 0x1

    .line 17
    invoke-direct {v1, p0, v0, v2}, Li0/a;-><init>(Ljava/lang/Object;Landroid/os/Looper;I)V

    .line 18
    .line 19
    .line 20
    iput-object v1, p0, LK0/d;->I:Li0/a;

    .line 21
    .line 22
    iput-boolean v2, p0, LK0/d;->L:Z

    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method public final x()V
    .locals 2

    .line 1
    iget-object v0, p0, LK0/d;->J:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Ljava/lang/RuntimeException;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    throw v0
.end method
