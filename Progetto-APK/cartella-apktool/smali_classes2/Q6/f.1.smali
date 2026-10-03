.class public LQ6/f;
.super LQ6/G;
.source "SourceFile"


# static fields
.field public static final Companion:LQ6/c;

.field private static final IDLE_TIMEOUT_MILLIS:J

.field private static final IDLE_TIMEOUT_NANOS:J

.field private static final TIMEOUT_WRITE_SIZE:I = 0x10000

.field private static final condition:Ljava/util/concurrent/locks/Condition;

.field private static head:LQ6/f;

.field private static final lock:Ljava/util/concurrent/locks/ReentrantLock;


# instance fields
.field private inQueue:Z

.field private next:LQ6/f;

.field private timeoutAt:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, LQ6/c;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, LQ6/f;->Companion:LQ6/c;

    .line 7
    .line 8
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, LQ6/f;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v1, "newCondition(...)"

    .line 20
    .line 21
    invoke-static {v0, v1}, Lz4/q0;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    sput-object v0, LQ6/f;->condition:Ljava/util/concurrent/locks/Condition;

    .line 25
    .line 26
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 27
    .line 28
    const-wide/16 v1, 0x3c

    .line 29
    .line 30
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 31
    .line 32
    .line 33
    move-result-wide v0

    .line 34
    sput-wide v0, LQ6/f;->IDLE_TIMEOUT_MILLIS:J

    .line 35
    .line 36
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 37
    .line 38
    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    .line 39
    .line 40
    .line 41
    move-result-wide v0

    .line 42
    sput-wide v0, LQ6/f;->IDLE_TIMEOUT_NANOS:J

    .line 43
    .line 44
    return-void
.end method

.method public static final synthetic access$getCondition$cp()Ljava/util/concurrent/locks/Condition;
    .locals 1

    .line 1
    sget-object v0, LQ6/f;->condition:Ljava/util/concurrent/locks/Condition;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getHead$cp()LQ6/f;
    .locals 1

    .line 1
    sget-object v0, LQ6/f;->head:LQ6/f;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getIDLE_TIMEOUT_MILLIS$cp()J
    .locals 2

    .line 1
    sget-wide v0, LQ6/f;->IDLE_TIMEOUT_MILLIS:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public static final synthetic access$getIDLE_TIMEOUT_NANOS$cp()J
    .locals 2

    .line 1
    sget-wide v0, LQ6/f;->IDLE_TIMEOUT_NANOS:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public static final synthetic access$getInQueue$p(LQ6/f;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, LQ6/f;->inQueue:Z

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic access$getLock$cp()Ljava/util/concurrent/locks/ReentrantLock;
    .locals 1

    .line 1
    sget-object v0, LQ6/f;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getNext$p(LQ6/f;)LQ6/f;
    .locals 0

    .line 1
    iget-object p0, p0, LQ6/f;->next:LQ6/f;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final access$remainingNanos(LQ6/f;J)J
    .locals 2

    .line 1
    iget-wide v0, p0, LQ6/f;->timeoutAt:J

    .line 2
    .line 3
    sub-long/2addr v0, p1

    .line 4
    return-wide v0
.end method

.method public static final synthetic access$setHead$cp(LQ6/f;)V
    .locals 0

    .line 1
    sput-object p0, LQ6/f;->head:LQ6/f;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic access$setInQueue$p(LQ6/f;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, LQ6/f;->inQueue:Z

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic access$setNext$p(LQ6/f;LQ6/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, LQ6/f;->next:LQ6/f;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic access$setTimeoutAt$p(LQ6/f;J)V
    .locals 0

    .line 1
    iput-wide p1, p0, LQ6/f;->timeoutAt:J

    .line 2
    .line 3
    return-void
.end method


# virtual methods
.method public final access$newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, LQ6/f;->newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public final enter()V
    .locals 9

    .line 1
    invoke-virtual {p0}, LQ6/G;->timeoutNanos()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-virtual {p0}, LQ6/G;->hasDeadline()Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    const-wide/16 v3, 0x0

    .line 10
    .line 11
    cmp-long v5, v0, v3

    .line 12
    .line 13
    if-nez v5, :cond_0

    .line 14
    .line 15
    if-nez v2, :cond_0

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    sget-object v3, LQ6/f;->Companion:LQ6/c;

    .line 19
    .line 20
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    invoke-static {}, LQ6/f;->access$getLock$cp()Ljava/util/concurrent/locks/ReentrantLock;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 31
    .line 32
    .line 33
    :try_start_0
    invoke-static {p0}, LQ6/f;->access$getInQueue$p(LQ6/f;)Z

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    const/4 v6, 0x1

    .line 38
    xor-int/2addr v4, v6

    .line 39
    if-eqz v4, :cond_8

    .line 40
    .line 41
    invoke-static {p0, v6}, LQ6/f;->access$setInQueue$p(LQ6/f;Z)V

    .line 42
    .line 43
    .line 44
    invoke-static {}, LQ6/f;->access$getHead$cp()LQ6/f;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    if-nez v4, :cond_1

    .line 49
    .line 50
    new-instance v4, LQ6/f;

    .line 51
    .line 52
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 53
    .line 54
    .line 55
    invoke-static {v4}, LQ6/f;->access$setHead$cp(LQ6/f;)V

    .line 56
    .line 57
    .line 58
    new-instance v4, LS3/d;

    .line 59
    .line 60
    invoke-direct {v4}, LS3/d;-><init>()V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :catchall_0
    move-exception v0

    .line 68
    goto/16 :goto_4

    .line 69
    .line 70
    :cond_1
    :goto_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 71
    .line 72
    .line 73
    move-result-wide v6

    .line 74
    if-eqz v5, :cond_2

    .line 75
    .line 76
    if-eqz v2, :cond_2

    .line 77
    .line 78
    invoke-virtual {p0}, LQ6/G;->deadlineNanoTime()J

    .line 79
    .line 80
    .line 81
    move-result-wide v4

    .line 82
    sub-long/2addr v4, v6

    .line 83
    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(JJ)J

    .line 84
    .line 85
    .line 86
    move-result-wide v0

    .line 87
    add-long/2addr v0, v6

    .line 88
    invoke-static {p0, v0, v1}, LQ6/f;->access$setTimeoutAt$p(LQ6/f;J)V

    .line 89
    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_2
    if-eqz v5, :cond_3

    .line 93
    .line 94
    add-long/2addr v0, v6

    .line 95
    invoke-static {p0, v0, v1}, LQ6/f;->access$setTimeoutAt$p(LQ6/f;J)V

    .line 96
    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_3
    if-eqz v2, :cond_7

    .line 100
    .line 101
    invoke-virtual {p0}, LQ6/G;->deadlineNanoTime()J

    .line 102
    .line 103
    .line 104
    move-result-wide v0

    .line 105
    invoke-static {p0, v0, v1}, LQ6/f;->access$setTimeoutAt$p(LQ6/f;J)V

    .line 106
    .line 107
    .line 108
    :goto_1
    invoke-static {p0, v6, v7}, LQ6/f;->access$remainingNanos(LQ6/f;J)J

    .line 109
    .line 110
    .line 111
    move-result-wide v0

    .line 112
    invoke-static {}, LQ6/f;->access$getHead$cp()LQ6/f;

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    invoke-static {v2}, Lz4/q0;->e(Ljava/lang/Object;)V

    .line 117
    .line 118
    .line 119
    :goto_2
    invoke-static {v2}, LQ6/f;->access$getNext$p(LQ6/f;)LQ6/f;

    .line 120
    .line 121
    .line 122
    move-result-object v4

    .line 123
    if-eqz v4, :cond_5

    .line 124
    .line 125
    invoke-static {v2}, LQ6/f;->access$getNext$p(LQ6/f;)LQ6/f;

    .line 126
    .line 127
    .line 128
    move-result-object v4

    .line 129
    invoke-static {v4}, Lz4/q0;->e(Ljava/lang/Object;)V

    .line 130
    .line 131
    .line 132
    invoke-static {v4, v6, v7}, LQ6/f;->access$remainingNanos(LQ6/f;J)J

    .line 133
    .line 134
    .line 135
    move-result-wide v4

    .line 136
    cmp-long v8, v0, v4

    .line 137
    .line 138
    if-gez v8, :cond_4

    .line 139
    .line 140
    goto :goto_3

    .line 141
    :cond_4
    invoke-static {v2}, LQ6/f;->access$getNext$p(LQ6/f;)LQ6/f;

    .line 142
    .line 143
    .line 144
    move-result-object v2

    .line 145
    invoke-static {v2}, Lz4/q0;->e(Ljava/lang/Object;)V

    .line 146
    .line 147
    .line 148
    goto :goto_2

    .line 149
    :cond_5
    :goto_3
    invoke-static {v2}, LQ6/f;->access$getNext$p(LQ6/f;)LQ6/f;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    invoke-static {p0, v0}, LQ6/f;->access$setNext$p(LQ6/f;LQ6/f;)V

    .line 154
    .line 155
    .line 156
    invoke-static {v2, p0}, LQ6/f;->access$setNext$p(LQ6/f;LQ6/f;)V

    .line 157
    .line 158
    .line 159
    invoke-static {}, LQ6/f;->access$getHead$cp()LQ6/f;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    if-ne v2, v0, :cond_6

    .line 164
    .line 165
    sget-object v0, LQ6/f;->Companion:LQ6/c;

    .line 166
    .line 167
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 168
    .line 169
    .line 170
    invoke-static {}, LQ6/f;->access$getCondition$cp()Ljava/util/concurrent/locks/Condition;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 175
    .line 176
    .line 177
    :cond_6
    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 178
    .line 179
    .line 180
    return-void

    .line 181
    :cond_7
    :try_start_1
    new-instance v0, Ljava/lang/AssertionError;

    .line 182
    .line 183
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    .line 184
    .line 185
    .line 186
    throw v0

    .line 187
    :cond_8
    const-string v0, "Unbalanced enter/exit"

    .line 188
    .line 189
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 190
    .line 191
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 199
    :goto_4
    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 200
    .line 201
    .line 202
    throw v0
.end method

.method public final exit()Z
    .locals 4

    .line 1
    sget-object v0, LQ6/f;->Companion:LQ6/c;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    invoke-static {}, LQ6/f;->access$getLock$cp()Ljava/util/concurrent/locks/ReentrantLock;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 14
    .line 15
    .line 16
    :try_start_0
    invoke-static {p0}, LQ6/f;->access$getInQueue$p(LQ6/f;)Z

    .line 17
    .line 18
    .line 19
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    const/4 v2, 0x0

    .line 21
    if-nez v1, :cond_0

    .line 22
    .line 23
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 24
    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_0
    :try_start_1
    invoke-static {p0, v2}, LQ6/f;->access$setInQueue$p(LQ6/f;Z)V

    .line 28
    .line 29
    .line 30
    invoke-static {}, LQ6/f;->access$getHead$cp()LQ6/f;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    :goto_0
    if-eqz v1, :cond_2

    .line 35
    .line 36
    invoke-static {v1}, LQ6/f;->access$getNext$p(LQ6/f;)LQ6/f;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    if-ne v3, p0, :cond_1

    .line 41
    .line 42
    invoke-static {p0}, LQ6/f;->access$getNext$p(LQ6/f;)LQ6/f;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    invoke-static {v1, v3}, LQ6/f;->access$setNext$p(LQ6/f;LQ6/f;)V

    .line 47
    .line 48
    .line 49
    const/4 v1, 0x0

    .line 50
    invoke-static {p0, v1}, LQ6/f;->access$setNext$p(LQ6/f;LQ6/f;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 51
    .line 52
    .line 53
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 54
    .line 55
    .line 56
    goto :goto_1

    .line 57
    :catchall_0
    move-exception v1

    .line 58
    goto :goto_2

    .line 59
    :cond_1
    :try_start_2
    invoke-static {v1}, LQ6/f;->access$getNext$p(LQ6/f;)LQ6/f;

    .line 60
    .line 61
    .line 62
    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 63
    goto :goto_0

    .line 64
    :cond_2
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 65
    .line 66
    .line 67
    const/4 v2, 0x1

    .line 68
    :goto_1
    return v2

    .line 69
    :goto_2
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 70
    .line 71
    .line 72
    throw v1
.end method

.method public newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;
    .locals 2

    .line 1
    new-instance v0, Ljava/io/InterruptedIOException;

    .line 2
    .line 3
    const-string v1, "timeout"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 11
    .line 12
    .line 13
    :cond_0
    return-object v0
.end method

.method public final sink(LQ6/B;)LQ6/B;
    .locals 1

    .line 1
    const-string v0, "sink"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lz4/q0;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, LQ6/d;

    .line 7
    .line 8
    invoke-direct {v0, p0, p1}, LQ6/d;-><init>(LQ6/f;LQ6/B;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method public final source(LQ6/D;)LQ6/D;
    .locals 1

    .line 1
    const-string v0, "source"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lz4/q0;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, LQ6/e;

    .line 7
    .line 8
    invoke-direct {v0, p0, p1}, LQ6/e;-><init>(LQ6/f;LQ6/D;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method public timedOut()V
    .locals 0

    .line 1
    return-void
.end method

.method public final withTimeout(LC6/a;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LC6/a;",
            ")TT;"
        }
    .end annotation

    .line 1
    const-string v0, "block"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lz4/q0;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, LQ6/f;->enter()V

    .line 7
    .line 8
    .line 9
    :try_start_0
    invoke-interface {p1}, LC6/a;->invoke()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    invoke-virtual {p0}, LQ6/f;->exit()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    return-object p1

    .line 20
    :cond_0
    const/4 p1, 0x0

    .line 21
    invoke-virtual {p0, p1}, LQ6/f;->access$newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    throw p1

    .line 26
    :catchall_0
    move-exception p1

    .line 27
    goto :goto_1

    .line 28
    :catch_0
    move-exception p1

    .line 29
    :try_start_1
    invoke-virtual {p0}, LQ6/f;->exit()Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-nez v0, :cond_1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    invoke-virtual {p0, p1}, LQ6/f;->access$newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    :goto_0
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 41
    :goto_1
    invoke-virtual {p0}, LQ6/f;->exit()Z

    .line 42
    .line 43
    .line 44
    throw p1
.end method
