.class public final LO6/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Executor;
.implements Ljava/io/Closeable;


# static fields
.field public static final synthetic N:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

.field public static final synthetic O:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

.field public static final synthetic P:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

.field public static final Q:Lp3/e;


# instance fields
.field public final G:I

.field public final H:I

.field public final I:J

.field public final J:Ljava/lang/String;

.field public final K:LO6/f;

.field public final L:LO6/f;

.field public final M:LN6/s;

.field private volatile synthetic _isTerminated$volatile:I

.field private volatile synthetic controlState$volatile:J

.field private volatile synthetic parkedWorkersStack$volatile:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-string v0, "parkedWorkersStack$volatile"

    .line 2
    .line 3
    const-class v1, LO6/c;

    .line 4
    .line 5
    invoke-static {v1, v0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sput-object v0, LO6/c;->N:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 10
    .line 11
    const-string v0, "controlState$volatile"

    .line 12
    .line 13
    invoke-static {v1, v0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sput-object v0, LO6/c;->O:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 18
    .line 19
    const-string v0, "_isTerminated$volatile"

    .line 20
    .line 21
    invoke-static {v1, v0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    sput-object v0, LO6/c;->P:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 26
    .line 27
    new-instance v0, Lp3/e;

    .line 28
    .line 29
    const-string v1, "NOT_IN_STACK"

    .line 30
    .line 31
    const/4 v2, 0x5

    .line 32
    invoke-direct {v0, v1, v2}, Lp3/e;-><init>(Ljava/lang/String;I)V

    .line 33
    .line 34
    .line 35
    sput-object v0, LO6/c;->Q:Lp3/e;

    .line 36
    .line 37
    return-void
.end method

.method public constructor <init>(IIJLjava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, LO6/c;->G:I

    .line 5
    .line 6
    iput p2, p0, LO6/c;->H:I

    .line 7
    .line 8
    iput-wide p3, p0, LO6/c;->I:J

    .line 9
    .line 10
    iput-object p5, p0, LO6/c;->J:Ljava/lang/String;

    .line 11
    .line 12
    const/4 p5, 0x1

    .line 13
    if-lt p1, p5, :cond_3

    .line 14
    .line 15
    const-string p5, "Max pool size "

    .line 16
    .line 17
    if-lt p2, p1, :cond_2

    .line 18
    .line 19
    const v0, 0x1ffffe

    .line 20
    .line 21
    .line 22
    if-gt p2, v0, :cond_1

    .line 23
    .line 24
    const-wide/16 v0, 0x0

    .line 25
    .line 26
    cmp-long p2, p3, v0

    .line 27
    .line 28
    if-lez p2, :cond_0

    .line 29
    .line 30
    new-instance p2, LO6/f;

    .line 31
    .line 32
    invoke-direct {p2}, LN6/l;-><init>()V

    .line 33
    .line 34
    .line 35
    iput-object p2, p0, LO6/c;->K:LO6/f;

    .line 36
    .line 37
    new-instance p2, LO6/f;

    .line 38
    .line 39
    invoke-direct {p2}, LN6/l;-><init>()V

    .line 40
    .line 41
    .line 42
    iput-object p2, p0, LO6/c;->L:LO6/f;

    .line 43
    .line 44
    new-instance p2, LN6/s;

    .line 45
    .line 46
    add-int/lit8 p3, p1, 0x1

    .line 47
    .line 48
    mul-int/lit8 p3, p3, 0x2

    .line 49
    .line 50
    invoke-direct {p2, p3}, LN6/s;-><init>(I)V

    .line 51
    .line 52
    .line 53
    iput-object p2, p0, LO6/c;->M:LN6/s;

    .line 54
    .line 55
    int-to-long p1, p1

    .line 56
    const/16 p3, 0x2a

    .line 57
    .line 58
    shl-long/2addr p1, p3

    .line 59
    iput-wide p1, p0, LO6/c;->controlState$volatile:J

    .line 60
    .line 61
    const/4 p1, 0x0

    .line 62
    iput p1, p0, LO6/c;->_isTerminated$volatile:I

    .line 63
    .line 64
    return-void

    .line 65
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    const-string p2, "Idle worker keep alive time "

    .line 68
    .line 69
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    const-string p2, " must be positive"

    .line 76
    .line 77
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 85
    .line 86
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    throw p2

    .line 94
    :cond_1
    const-string p1, " should not exceed maximal supported number of threads 2097150"

    .line 95
    .line 96
    invoke-static {p5, p2, p1}, LA0/O;->y(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 101
    .line 102
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    throw p2

    .line 110
    :cond_2
    const-string p3, " should be greater than or equals to core pool size "

    .line 111
    .line 112
    invoke-static {p5, p2, p3, p1}, Lcom/google/protobuf/U2;->j(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 117
    .line 118
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    throw p2

    .line 126
    :cond_3
    const-string p2, "Core pool size "

    .line 127
    .line 128
    const-string p3, " should be at least 1"

    .line 129
    .line 130
    invoke-static {p2, p1, p3}, LA0/O;->y(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 135
    .line 136
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    throw p2
.end method


# virtual methods
.method public final E(Ljava/lang/Runnable;ZZ)V
    .locals 8

    .line 1
    sget-object v0, LO6/k;->f:LO6/g;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    instance-of v2, p1, LO6/i;

    .line 11
    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    check-cast p1, LO6/i;

    .line 15
    .line 16
    iput-wide v0, p1, LO6/i;->G:J

    .line 17
    .line 18
    iput-boolean p2, p1, LO6/i;->H:Z

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    new-instance v2, LO6/j;

    .line 22
    .line 23
    invoke-direct {v2, p1, v0, v1, p2}, LO6/j;-><init>(Ljava/lang/Runnable;JZ)V

    .line 24
    .line 25
    .line 26
    move-object p1, v2

    .line 27
    :goto_0
    iget-boolean p2, p1, LO6/i;->H:Z

    .line 28
    .line 29
    sget-object v0, LO6/c;->O:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 30
    .line 31
    if-eqz p2, :cond_1

    .line 32
    .line 33
    const-wide/32 v1, 0x200000

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->addAndGet(Ljava/lang/Object;J)J

    .line 37
    .line 38
    .line 39
    move-result-wide v1

    .line 40
    goto :goto_1

    .line 41
    :cond_1
    const-wide/16 v1, 0x0

    .line 42
    .line 43
    :goto_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    instance-of v4, v3, LO6/a;

    .line 48
    .line 49
    const/4 v5, 0x0

    .line 50
    if-eqz v4, :cond_2

    .line 51
    .line 52
    check-cast v3, LO6/a;

    .line 53
    .line 54
    goto :goto_2

    .line 55
    :cond_2
    move-object v3, v5

    .line 56
    :goto_2
    if-eqz v3, :cond_3

    .line 57
    .line 58
    iget-object v4, v3, LO6/a;->N:LO6/c;

    .line 59
    .line 60
    invoke-static {v4, p0}, Lz4/q0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v4

    .line 64
    if-eqz v4, :cond_3

    .line 65
    .line 66
    goto :goto_3

    .line 67
    :cond_3
    move-object v3, v5

    .line 68
    :goto_3
    const/4 v4, 0x1

    .line 69
    if-nez v3, :cond_4

    .line 70
    .line 71
    goto :goto_4

    .line 72
    :cond_4
    iget-object v6, v3, LO6/a;->I:LO6/b;

    .line 73
    .line 74
    sget-object v7, LO6/b;->K:LO6/b;

    .line 75
    .line 76
    if-ne v6, v7, :cond_5

    .line 77
    .line 78
    goto :goto_4

    .line 79
    :cond_5
    iget-boolean v7, p1, LO6/i;->H:Z

    .line 80
    .line 81
    if-nez v7, :cond_6

    .line 82
    .line 83
    sget-object v7, LO6/b;->H:LO6/b;

    .line 84
    .line 85
    if-ne v6, v7, :cond_6

    .line 86
    .line 87
    goto :goto_4

    .line 88
    :cond_6
    iput-boolean v4, v3, LO6/a;->M:Z

    .line 89
    .line 90
    iget-object v6, v3, LO6/a;->G:LO6/m;

    .line 91
    .line 92
    if-eqz p3, :cond_7

    .line 93
    .line 94
    invoke-virtual {v6, p1}, LO6/m;->a(LO6/i;)LO6/i;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    goto :goto_4

    .line 99
    :cond_7
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 100
    .line 101
    .line 102
    sget-object v7, LO6/m;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 103
    .line 104
    invoke-virtual {v7, v6, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    check-cast p1, LO6/i;

    .line 109
    .line 110
    if-nez p1, :cond_8

    .line 111
    .line 112
    move-object p1, v5

    .line 113
    goto :goto_4

    .line 114
    :cond_8
    invoke-virtual {v6, p1}, LO6/m;->a(LO6/i;)LO6/i;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    :goto_4
    if-eqz p1, :cond_b

    .line 119
    .line 120
    iget-boolean v5, p1, LO6/i;->H:Z

    .line 121
    .line 122
    if-eqz v5, :cond_9

    .line 123
    .line 124
    iget-object v5, p0, LO6/c;->L:LO6/f;

    .line 125
    .line 126
    invoke-virtual {v5, p1}, LN6/l;->a(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    move-result p1

    .line 130
    goto :goto_5

    .line 131
    :cond_9
    iget-object v5, p0, LO6/c;->K:LO6/f;

    .line 132
    .line 133
    invoke-virtual {v5, p1}, LN6/l;->a(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    move-result p1

    .line 137
    :goto_5
    if-eqz p1, :cond_a

    .line 138
    .line 139
    goto :goto_6

    .line 140
    :cond_a
    new-instance p1, Ljava/util/concurrent/RejectedExecutionException;

    .line 141
    .line 142
    new-instance p2, Ljava/lang/StringBuilder;

    .line 143
    .line 144
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 145
    .line 146
    .line 147
    iget-object p3, p0, LO6/c;->J:Ljava/lang/String;

    .line 148
    .line 149
    const-string v0, " was terminated"

    .line 150
    .line 151
    invoke-static {p2, p3, v0}, La/r;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object p2

    .line 155
    invoke-direct {p1, p2}, Ljava/util/concurrent/RejectedExecutionException;-><init>(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    throw p1

    .line 159
    :cond_b
    :goto_6
    if-eqz p3, :cond_c

    .line 160
    .line 161
    if-eqz v3, :cond_c

    .line 162
    .line 163
    goto :goto_7

    .line 164
    :cond_c
    const/4 v4, 0x0

    .line 165
    :goto_7
    if-eqz p2, :cond_10

    .line 166
    .line 167
    if-eqz v4, :cond_d

    .line 168
    .line 169
    goto :goto_8

    .line 170
    :cond_d
    invoke-virtual {p0}, LO6/c;->a0()Z

    .line 171
    .line 172
    .line 173
    move-result p1

    .line 174
    if-eqz p1, :cond_e

    .line 175
    .line 176
    goto :goto_8

    .line 177
    :cond_e
    invoke-virtual {p0, v1, v2}, LO6/c;->O(J)Z

    .line 178
    .line 179
    .line 180
    move-result p1

    .line 181
    if-eqz p1, :cond_f

    .line 182
    .line 183
    goto :goto_8

    .line 184
    :cond_f
    invoke-virtual {p0}, LO6/c;->a0()Z

    .line 185
    .line 186
    .line 187
    goto :goto_8

    .line 188
    :cond_10
    if-eqz v4, :cond_11

    .line 189
    .line 190
    return-void

    .line 191
    :cond_11
    invoke-virtual {p0}, LO6/c;->a0()Z

    .line 192
    .line 193
    .line 194
    move-result p1

    .line 195
    if-eqz p1, :cond_12

    .line 196
    .line 197
    goto :goto_8

    .line 198
    :cond_12
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 199
    .line 200
    .line 201
    move-result-wide p1

    .line 202
    invoke-virtual {p0, p1, p2}, LO6/c;->O(J)Z

    .line 203
    .line 204
    .line 205
    move-result p1

    .line 206
    if-eqz p1, :cond_13

    .line 207
    .line 208
    goto :goto_8

    .line 209
    :cond_13
    invoke-virtual {p0}, LO6/c;->a0()Z

    .line 210
    .line 211
    .line 212
    :goto_8
    return-void
.end method

.method public final N(LO6/a;II)V
    .locals 9

    .line 1
    :cond_0
    sget-object v0, LO6/c;->N:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 4
    .line 5
    .line 6
    move-result-wide v3

    .line 7
    const-wide/32 v0, 0x1fffff

    .line 8
    .line 9
    .line 10
    and-long/2addr v0, v3

    .line 11
    long-to-int v1, v0

    .line 12
    const-wide/32 v5, 0x200000

    .line 13
    .line 14
    .line 15
    add-long/2addr v5, v3

    .line 16
    const-wide/32 v7, -0x200000

    .line 17
    .line 18
    .line 19
    and-long/2addr v5, v7

    .line 20
    if-ne v1, p2, :cond_5

    .line 21
    .line 22
    if-nez p3, :cond_4

    .line 23
    .line 24
    invoke-virtual {p1}, LO6/a;->c()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    :goto_0
    sget-object v1, LO6/c;->Q:Lp3/e;

    .line 29
    .line 30
    if-ne v0, v1, :cond_1

    .line 31
    .line 32
    const/4 v0, -0x1

    .line 33
    const/4 v1, -0x1

    .line 34
    goto :goto_1

    .line 35
    :cond_1
    if-nez v0, :cond_2

    .line 36
    .line 37
    const/4 v0, 0x0

    .line 38
    const/4 v1, 0x0

    .line 39
    goto :goto_1

    .line 40
    :cond_2
    check-cast v0, LO6/a;

    .line 41
    .line 42
    invoke-virtual {v0}, LO6/a;->b()I

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-eqz v1, :cond_3

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_3
    invoke-virtual {v0}, LO6/a;->c()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    goto :goto_0

    .line 54
    :cond_4
    move v1, p3

    .line 55
    :cond_5
    :goto_1
    if-ltz v1, :cond_0

    .line 56
    .line 57
    int-to-long v0, v1

    .line 58
    or-long/2addr v5, v0

    .line 59
    sget-object v1, LO6/c;->N:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 60
    .line 61
    move-object v2, p0

    .line 62
    invoke-virtual/range {v1 .. v6}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-eqz v0, :cond_0

    .line 67
    .line 68
    return-void
.end method

.method public final O(J)Z
    .locals 4

    .line 1
    const-wide/32 v0, 0x1fffff

    .line 2
    .line 3
    .line 4
    and-long/2addr v0, p1

    .line 5
    long-to-int v1, v0

    .line 6
    const-wide v2, 0x3ffffe00000L

    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    and-long/2addr p1, v2

    .line 12
    const/16 v0, 0x15

    .line 13
    .line 14
    shr-long/2addr p1, v0

    .line 15
    long-to-int p2, p1

    .line 16
    sub-int/2addr v1, p2

    .line 17
    const/4 p1, 0x0

    .line 18
    if-gez v1, :cond_0

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    :cond_0
    iget p2, p0, LO6/c;->G:I

    .line 22
    .line 23
    if-ge v1, p2, :cond_2

    .line 24
    .line 25
    invoke-virtual {p0}, LO6/c;->k()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    const/4 v1, 0x1

    .line 30
    if-ne v0, v1, :cond_1

    .line 31
    .line 32
    if-le p2, v1, :cond_1

    .line 33
    .line 34
    invoke-virtual {p0}, LO6/c;->k()I

    .line 35
    .line 36
    .line 37
    :cond_1
    if-lez v0, :cond_2

    .line 38
    .line 39
    return v1

    .line 40
    :cond_2
    return p1
.end method

.method public final a0()Z
    .locals 12

    .line 1
    :cond_0
    sget-object v0, LO6/c;->N:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 4
    .line 5
    .line 6
    move-result-wide v2

    .line 7
    const-wide/32 v4, 0x1fffff

    .line 8
    .line 9
    .line 10
    and-long/2addr v4, v2

    .line 11
    long-to-int v1, v4

    .line 12
    iget-object v4, p0, LO6/c;->M:LN6/s;

    .line 13
    .line 14
    invoke-virtual {v4, v1}, LN6/s;->b(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    move-object v6, v1

    .line 19
    check-cast v6, LO6/a;

    .line 20
    .line 21
    const/4 v7, 0x0

    .line 22
    const/4 v8, -0x1

    .line 23
    if-nez v6, :cond_1

    .line 24
    .line 25
    const/4 v6, 0x0

    .line 26
    goto :goto_2

    .line 27
    :cond_1
    const-wide/32 v4, 0x200000

    .line 28
    .line 29
    .line 30
    add-long/2addr v4, v2

    .line 31
    const-wide/32 v9, -0x200000

    .line 32
    .line 33
    .line 34
    and-long/2addr v4, v9

    .line 35
    invoke-virtual {v6}, LO6/a;->c()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    :goto_0
    sget-object v9, LO6/c;->Q:Lp3/e;

    .line 40
    .line 41
    if-ne v1, v9, :cond_2

    .line 42
    .line 43
    const/4 v10, -0x1

    .line 44
    goto :goto_1

    .line 45
    :cond_2
    if-nez v1, :cond_3

    .line 46
    .line 47
    const/4 v10, 0x0

    .line 48
    goto :goto_1

    .line 49
    :cond_3
    check-cast v1, LO6/a;

    .line 50
    .line 51
    invoke-virtual {v1}, LO6/a;->b()I

    .line 52
    .line 53
    .line 54
    move-result v10

    .line 55
    if-eqz v10, :cond_5

    .line 56
    .line 57
    :goto_1
    if-ltz v10, :cond_0

    .line 58
    .line 59
    int-to-long v10, v10

    .line 60
    or-long/2addr v4, v10

    .line 61
    move-object v1, p0

    .line 62
    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-eqz v0, :cond_0

    .line 67
    .line 68
    invoke-virtual {v6, v9}, LO6/a;->g(Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    :goto_2
    if-nez v6, :cond_4

    .line 72
    .line 73
    return v7

    .line 74
    :cond_4
    sget-object v0, LO6/a;->O:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 75
    .line 76
    invoke-virtual {v0, v6, v8, v7}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    if-eqz v0, :cond_0

    .line 81
    .line 82
    invoke-static {v6}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    .line 83
    .line 84
    .line 85
    const/4 v0, 0x1

    .line 86
    return v0

    .line 87
    :cond_5
    invoke-virtual {v1}, LO6/a;->c()Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    goto :goto_0
.end method

.method public final close()V
    .locals 8

    .line 1
    sget-object v0, LO6/c;->P:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto/16 :goto_7

    .line 12
    .line 13
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    instance-of v1, v0, LO6/a;

    .line 18
    .line 19
    const/4 v3, 0x0

    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    check-cast v0, LO6/a;

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    move-object v0, v3

    .line 26
    :goto_0
    if-eqz v0, :cond_2

    .line 27
    .line 28
    iget-object v1, v0, LO6/a;->N:LO6/c;

    .line 29
    .line 30
    invoke-static {v1, p0}, Lz4/q0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_2

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_2
    move-object v0, v3

    .line 38
    :goto_1
    iget-object v1, p0, LO6/c;->M:LN6/s;

    .line 39
    .line 40
    monitor-enter v1

    .line 41
    :try_start_0
    sget-object v4, LO6/c;->O:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 42
    .line 43
    invoke-virtual {v4, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 44
    .line 45
    .line 46
    move-result-wide v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 47
    const-wide/32 v6, 0x1fffff

    .line 48
    .line 49
    .line 50
    and-long/2addr v4, v6

    .line 51
    long-to-int v5, v4

    .line 52
    monitor-exit v1

    .line 53
    if-gt v2, v5, :cond_7

    .line 54
    .line 55
    const/4 v1, 0x1

    .line 56
    :goto_2
    iget-object v4, p0, LO6/c;->M:LN6/s;

    .line 57
    .line 58
    invoke-virtual {v4, v1}, LN6/s;->b(I)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    invoke-static {v4}, Lz4/q0;->e(Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    check-cast v4, LO6/a;

    .line 66
    .line 67
    if-eq v4, v0, :cond_6

    .line 68
    .line 69
    :goto_3
    invoke-virtual {v4}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    .line 70
    .line 71
    .line 72
    move-result-object v6

    .line 73
    sget-object v7, Ljava/lang/Thread$State;->TERMINATED:Ljava/lang/Thread$State;

    .line 74
    .line 75
    if-eq v6, v7, :cond_3

    .line 76
    .line 77
    invoke-static {v4}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    .line 78
    .line 79
    .line 80
    const-wide/16 v6, 0x2710

    .line 81
    .line 82
    invoke-virtual {v4, v6, v7}, Ljava/lang/Thread;->join(J)V

    .line 83
    .line 84
    .line 85
    goto :goto_3

    .line 86
    :cond_3
    iget-object v4, v4, LO6/a;->G:LO6/m;

    .line 87
    .line 88
    iget-object v6, p0, LO6/c;->L:LO6/f;

    .line 89
    .line 90
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 91
    .line 92
    .line 93
    sget-object v7, LO6/m;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 94
    .line 95
    invoke-virtual {v7, v4, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v7

    .line 99
    check-cast v7, LO6/i;

    .line 100
    .line 101
    if-eqz v7, :cond_4

    .line 102
    .line 103
    invoke-virtual {v6, v7}, LN6/l;->a(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    :cond_4
    :goto_4
    invoke-virtual {v4}, LO6/m;->b()LO6/i;

    .line 107
    .line 108
    .line 109
    move-result-object v7

    .line 110
    if-nez v7, :cond_5

    .line 111
    .line 112
    goto :goto_5

    .line 113
    :cond_5
    invoke-virtual {v6, v7}, LN6/l;->a(Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    goto :goto_4

    .line 117
    :cond_6
    :goto_5
    if-eq v1, v5, :cond_7

    .line 118
    .line 119
    add-int/lit8 v1, v1, 0x1

    .line 120
    .line 121
    goto :goto_2

    .line 122
    :cond_7
    iget-object v1, p0, LO6/c;->L:LO6/f;

    .line 123
    .line 124
    invoke-virtual {v1}, LN6/l;->b()V

    .line 125
    .line 126
    .line 127
    iget-object v1, p0, LO6/c;->K:LO6/f;

    .line 128
    .line 129
    invoke-virtual {v1}, LN6/l;->b()V

    .line 130
    .line 131
    .line 132
    :goto_6
    if-eqz v0, :cond_8

    .line 133
    .line 134
    invoke-virtual {v0, v2}, LO6/a;->a(Z)LO6/i;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    if-nez v1, :cond_a

    .line 139
    .line 140
    :cond_8
    iget-object v1, p0, LO6/c;->K:LO6/f;

    .line 141
    .line 142
    invoke-virtual {v1}, LN6/l;->d()Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    check-cast v1, LO6/i;

    .line 147
    .line 148
    if-nez v1, :cond_a

    .line 149
    .line 150
    iget-object v1, p0, LO6/c;->L:LO6/f;

    .line 151
    .line 152
    invoke-virtual {v1}, LN6/l;->d()Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object v1

    .line 156
    check-cast v1, LO6/i;

    .line 157
    .line 158
    if-nez v1, :cond_a

    .line 159
    .line 160
    if-eqz v0, :cond_9

    .line 161
    .line 162
    sget-object v1, LO6/b;->K:LO6/b;

    .line 163
    .line 164
    invoke-virtual {v0, v1}, LO6/a;->h(LO6/b;)Z

    .line 165
    .line 166
    .line 167
    :cond_9
    sget-object v0, LO6/c;->N:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 168
    .line 169
    const-wide/16 v1, 0x0

    .line 170
    .line 171
    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->set(Ljava/lang/Object;J)V

    .line 172
    .line 173
    .line 174
    sget-object v0, LO6/c;->O:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 175
    .line 176
    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->set(Ljava/lang/Object;J)V

    .line 177
    .line 178
    .line 179
    :goto_7
    return-void

    .line 180
    :cond_a
    :try_start_1
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 181
    .line 182
    .line 183
    goto :goto_6

    .line 184
    :catchall_0
    move-exception v1

    .line 185
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 186
    .line 187
    .line 188
    move-result-object v3

    .line 189
    invoke-virtual {v3}, Ljava/lang/Thread;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 190
    .line 191
    .line 192
    move-result-object v4

    .line 193
    invoke-interface {v4, v3, v1}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 194
    .line 195
    .line 196
    goto :goto_6

    .line 197
    :catchall_1
    move-exception v0

    .line 198
    monitor-exit v1

    .line 199
    throw v0
.end method

.method public final execute(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0, v0}, LO6/c;->E(Ljava/lang/Runnable;ZZ)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public final k()I
    .locals 10

    .line 1
    iget-object v0, p0, LO6/c;->M:LN6/s;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, LO6/c;->P:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 5
    .line 6
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    .line 7
    .line 8
    .line 9
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    monitor-exit v0

    .line 13
    const/4 v0, -0x1

    .line 14
    return v0

    .line 15
    :cond_0
    :try_start_1
    sget-object v1, LO6/c;->O:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 16
    .line 17
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 18
    .line 19
    .line 20
    move-result-wide v2

    .line 21
    const-wide/32 v4, 0x1fffff

    .line 22
    .line 23
    .line 24
    and-long v6, v2, v4

    .line 25
    .line 26
    long-to-int v7, v6

    .line 27
    const-wide v8, 0x3ffffe00000L

    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    and-long/2addr v2, v8

    .line 33
    const/16 v6, 0x15

    .line 34
    .line 35
    shr-long/2addr v2, v6

    .line 36
    long-to-int v3, v2

    .line 37
    sub-int v2, v7, v3

    .line 38
    .line 39
    const/4 v3, 0x0

    .line 40
    if-gez v2, :cond_1

    .line 41
    .line 42
    const/4 v2, 0x0

    .line 43
    :cond_1
    iget v6, p0, LO6/c;->G:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 44
    .line 45
    if-lt v2, v6, :cond_2

    .line 46
    .line 47
    monitor-exit v0

    .line 48
    return v3

    .line 49
    :cond_2
    :try_start_2
    iget v6, p0, LO6/c;->H:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 50
    .line 51
    if-lt v7, v6, :cond_3

    .line 52
    .line 53
    monitor-exit v0

    .line 54
    return v3

    .line 55
    :cond_3
    :try_start_3
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 56
    .line 57
    .line 58
    move-result-wide v6

    .line 59
    and-long/2addr v6, v4

    .line 60
    long-to-int v3, v6

    .line 61
    add-int/lit8 v3, v3, 0x1

    .line 62
    .line 63
    if-lez v3, :cond_5

    .line 64
    .line 65
    iget-object v6, p0, LO6/c;->M:LN6/s;

    .line 66
    .line 67
    invoke-virtual {v6, v3}, LN6/s;->b(I)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v6

    .line 71
    if-nez v6, :cond_5

    .line 72
    .line 73
    new-instance v6, LO6/a;

    .line 74
    .line 75
    invoke-direct {v6, p0, v3}, LO6/a;-><init>(LO6/c;I)V

    .line 76
    .line 77
    .line 78
    iget-object v7, p0, LO6/c;->M:LN6/s;

    .line 79
    .line 80
    invoke-virtual {v7, v3, v6}, LN6/s;->c(ILO6/a;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->incrementAndGet(Ljava/lang/Object;)J

    .line 84
    .line 85
    .line 86
    move-result-wide v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 87
    and-long/2addr v4, v7

    .line 88
    long-to-int v1, v4

    .line 89
    if-ne v3, v1, :cond_4

    .line 90
    .line 91
    add-int/lit8 v2, v2, 0x1

    .line 92
    .line 93
    monitor-exit v0

    .line 94
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 95
    .line 96
    .line 97
    return v2

    .line 98
    :cond_4
    :try_start_4
    const-string v1, "Failed requirement."

    .line 99
    .line 100
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 101
    .line 102
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    throw v2

    .line 110
    :catchall_0
    move-exception v1

    .line 111
    goto :goto_0

    .line 112
    :cond_5
    const-string v1, "Failed requirement."

    .line 113
    .line 114
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 115
    .line 116
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 124
    :goto_0
    monitor-exit v0

    .line 125
    throw v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 14

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, LO6/c;->M:LN6/s;

    .line 7
    .line 8
    invoke-virtual {v1}, LN6/s;->a()I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    const/4 v3, 0x0

    .line 13
    const/4 v4, 0x1

    .line 14
    const/4 v5, 0x0

    .line 15
    const/4 v6, 0x0

    .line 16
    const/4 v7, 0x0

    .line 17
    const/4 v8, 0x0

    .line 18
    const/4 v9, 0x1

    .line 19
    :goto_0
    if-ge v9, v2, :cond_8

    .line 20
    .line 21
    invoke-virtual {v1, v9}, LN6/s;->b(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v10

    .line 25
    check-cast v10, LO6/a;

    .line 26
    .line 27
    if-nez v10, :cond_0

    .line 28
    .line 29
    goto/16 :goto_2

    .line 30
    .line 31
    :cond_0
    iget-object v11, v10, LO6/a;->G:LO6/m;

    .line 32
    .line 33
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    sget-object v12, LO6/m;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 37
    .line 38
    invoke-virtual {v12, v11}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v12

    .line 42
    if-eqz v12, :cond_1

    .line 43
    .line 44
    sget-object v12, LO6/m;->c:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 45
    .line 46
    invoke-virtual {v12, v11}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    .line 47
    .line 48
    .line 49
    move-result v12

    .line 50
    sget-object v13, LO6/m;->d:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 51
    .line 52
    invoke-virtual {v13, v11}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    .line 53
    .line 54
    .line 55
    move-result v11

    .line 56
    sub-int/2addr v12, v11

    .line 57
    add-int/2addr v12, v4

    .line 58
    goto :goto_1

    .line 59
    :cond_1
    sget-object v12, LO6/m;->c:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 60
    .line 61
    invoke-virtual {v12, v11}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    .line 62
    .line 63
    .line 64
    move-result v12

    .line 65
    sget-object v13, LO6/m;->d:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 66
    .line 67
    invoke-virtual {v13, v11}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    .line 68
    .line 69
    .line 70
    move-result v11

    .line 71
    sub-int/2addr v12, v11

    .line 72
    :goto_1
    iget-object v10, v10, LO6/a;->I:LO6/b;

    .line 73
    .line 74
    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    .line 75
    .line 76
    .line 77
    move-result v10

    .line 78
    if-eqz v10, :cond_6

    .line 79
    .line 80
    if-eq v10, v4, :cond_5

    .line 81
    .line 82
    const/4 v11, 0x2

    .line 83
    if-eq v10, v11, :cond_4

    .line 84
    .line 85
    const/4 v11, 0x3

    .line 86
    if-eq v10, v11, :cond_3

    .line 87
    .line 88
    const/4 v11, 0x4

    .line 89
    if-ne v10, v11, :cond_2

    .line 90
    .line 91
    add-int/lit8 v8, v8, 0x1

    .line 92
    .line 93
    goto :goto_2

    .line 94
    :cond_2
    new-instance v0, LY/r;

    .line 95
    .line 96
    const/16 v1, 0x10

    .line 97
    .line 98
    const/4 v2, 0x0

    .line 99
    invoke-direct {v0, v1, v2}, LY/r;-><init>(ILjava/lang/Object;)V

    .line 100
    .line 101
    .line 102
    throw v0

    .line 103
    :cond_3
    add-int/lit8 v7, v7, 0x1

    .line 104
    .line 105
    if-lez v12, :cond_7

    .line 106
    .line 107
    new-instance v10, Ljava/lang/StringBuilder;

    .line 108
    .line 109
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    const/16 v11, 0x64

    .line 116
    .line 117
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v10

    .line 124
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    goto :goto_2

    .line 128
    :cond_4
    add-int/lit8 v6, v6, 0x1

    .line 129
    .line 130
    goto :goto_2

    .line 131
    :cond_5
    add-int/lit8 v5, v5, 0x1

    .line 132
    .line 133
    new-instance v10, Ljava/lang/StringBuilder;

    .line 134
    .line 135
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    const/16 v11, 0x62

    .line 142
    .line 143
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v10

    .line 150
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    .line 152
    .line 153
    goto :goto_2

    .line 154
    :cond_6
    add-int/lit8 v3, v3, 0x1

    .line 155
    .line 156
    new-instance v10, Ljava/lang/StringBuilder;

    .line 157
    .line 158
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    const/16 v11, 0x63

    .line 165
    .line 166
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v10

    .line 173
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    .line 175
    .line 176
    :cond_7
    :goto_2
    add-int/lit8 v9, v9, 0x1

    .line 177
    .line 178
    goto/16 :goto_0

    .line 179
    .line 180
    :cond_8
    sget-object v1, LO6/c;->O:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 181
    .line 182
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 183
    .line 184
    .line 185
    move-result-wide v1

    .line 186
    new-instance v4, Ljava/lang/StringBuilder;

    .line 187
    .line 188
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 189
    .line 190
    .line 191
    iget-object v9, p0, LO6/c;->J:Ljava/lang/String;

    .line 192
    .line 193
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    const/16 v9, 0x40

    .line 197
    .line 198
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    invoke-static {p0}, LJ6/r;->i(Ljava/lang/Object;)Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v9

    .line 205
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    const-string v9, "[Pool Size {core = "

    .line 209
    .line 210
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    iget v9, p0, LO6/c;->G:I

    .line 214
    .line 215
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    const-string v10, ", max = "

    .line 219
    .line 220
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    iget v10, p0, LO6/c;->H:I

    .line 224
    .line 225
    const-string v11, "}, Worker States {CPU = "

    .line 226
    .line 227
    const-string v12, ", blocking = "

    .line 228
    .line 229
    invoke-static {v4, v10, v11, v3, v12}, LA0/O;->J(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    .line 230
    .line 231
    .line 232
    const-string v3, ", parked = "

    .line 233
    .line 234
    const-string v10, ", dormant = "

    .line 235
    .line 236
    invoke-static {v4, v5, v3, v6, v10}, LA0/O;->J(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    .line 237
    .line 238
    .line 239
    const-string v3, ", terminated = "

    .line 240
    .line 241
    const-string v5, "}, running workers queues = "

    .line 242
    .line 243
    invoke-static {v4, v7, v3, v8, v5}, LA0/O;->J(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    .line 244
    .line 245
    .line 246
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 247
    .line 248
    .line 249
    const-string v0, ", global CPU queue size = "

    .line 250
    .line 251
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    .line 253
    .line 254
    iget-object v0, p0, LO6/c;->K:LO6/f;

    .line 255
    .line 256
    invoke-virtual {v0}, LN6/l;->c()I

    .line 257
    .line 258
    .line 259
    move-result v0

    .line 260
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 261
    .line 262
    .line 263
    const-string v0, ", global blocking queue size = "

    .line 264
    .line 265
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    .line 267
    .line 268
    iget-object v0, p0, LO6/c;->L:LO6/f;

    .line 269
    .line 270
    invoke-virtual {v0}, LN6/l;->c()I

    .line 271
    .line 272
    .line 273
    move-result v0

    .line 274
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 275
    .line 276
    .line 277
    const-string v0, ", Control State {created workers= "

    .line 278
    .line 279
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    .line 281
    .line 282
    const-wide/32 v5, 0x1fffff

    .line 283
    .line 284
    .line 285
    and-long/2addr v5, v1

    .line 286
    long-to-int v0, v5

    .line 287
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 288
    .line 289
    .line 290
    const-string v0, ", blocking tasks = "

    .line 291
    .line 292
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    .line 294
    .line 295
    const-wide v5, 0x3ffffe00000L

    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    and-long/2addr v5, v1

    .line 301
    const/16 v0, 0x15

    .line 302
    .line 303
    shr-long/2addr v5, v0

    .line 304
    long-to-int v0, v5

    .line 305
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 306
    .line 307
    .line 308
    const-string v0, ", CPUs acquired = "

    .line 309
    .line 310
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    .line 312
    .line 313
    const-wide v5, 0x7ffffc0000000000L

    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    and-long v0, v1, v5

    .line 319
    .line 320
    const/16 v2, 0x2a

    .line 321
    .line 322
    shr-long/2addr v0, v2

    .line 323
    long-to-int v1, v0

    .line 324
    sub-int/2addr v9, v1

    .line 325
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 326
    .line 327
    .line 328
    const-string v0, "}]"

    .line 329
    .line 330
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    .line 332
    .line 333
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 334
    .line 335
    .line 336
    move-result-object v0

    .line 337
    return-object v0
.end method
