.class public final Lr2/c;
.super Ljava/lang/Thread;
.source "SourceFile"


# static fields
.field public static final M:Z


# instance fields
.field public final G:Ljava/util/concurrent/BlockingQueue;

.field public final H:Ljava/util/concurrent/BlockingQueue;

.field public final I:Ls2/d;

.field public final J:LD0/U;

.field public volatile K:Z

.field public final L:Lr2/s;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-boolean v0, Lr2/r;->a:Z

    .line 2
    .line 3
    sput-boolean v0, Lr2/c;->M:Z

    .line 4
    .line 5
    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/PriorityBlockingQueue;Ljava/util/concurrent/PriorityBlockingQueue;Ls2/d;LD0/U;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lr2/c;->K:Z

    .line 6
    .line 7
    iput-object p1, p0, Lr2/c;->G:Ljava/util/concurrent/BlockingQueue;

    .line 8
    .line 9
    iput-object p2, p0, Lr2/c;->H:Ljava/util/concurrent/BlockingQueue;

    .line 10
    .line 11
    iput-object p3, p0, Lr2/c;->I:Ls2/d;

    .line 12
    .line 13
    iput-object p4, p0, Lr2/c;->J:LD0/U;

    .line 14
    .line 15
    new-instance p1, Lr2/s;

    .line 16
    .line 17
    invoke-direct {p1, p0, p2, p4}, Lr2/s;-><init>(Lr2/c;Ljava/util/concurrent/PriorityBlockingQueue;LD0/U;)V

    .line 18
    .line 19
    .line 20
    iput-object p1, p0, Lr2/c;->L:Lr2/s;

    .line 21
    .line 22
    return-void
.end method

.method private a()V
    .locals 11

    .line 1
    iget-object v0, p0, Lr2/c;->G:Ljava/util/concurrent/BlockingQueue;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lr2/k;

    .line 8
    .line 9
    const-string v1, "cache-queue-take"

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lr2/k;->a(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    invoke-virtual {v0, v1}, Lr2/k;->n(I)V

    .line 16
    .line 17
    .line 18
    const/4 v2, 0x2

    .line 19
    :try_start_0
    invoke-virtual {v0}, Lr2/k;->j()V

    .line 20
    .line 21
    .line 22
    iget-object v3, p0, Lr2/c;->I:Ls2/d;

    .line 23
    .line 24
    invoke-virtual {v0}, Lr2/k;->f()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    invoke-virtual {v3, v4}, Ls2/d;->a(Ljava/lang/String;)Lr2/b;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    if-nez v3, :cond_1

    .line 33
    .line 34
    const-string v1, "cache-miss"

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Lr2/k;->a(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iget-object v1, p0, Lr2/c;->L:Lr2/s;

    .line 40
    .line 41
    invoke-virtual {v1, v0}, Lr2/s;->a(Lr2/k;)Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-nez v1, :cond_0

    .line 46
    .line 47
    iget-object v1, p0, Lr2/c;->H:Ljava/util/concurrent/BlockingQueue;

    .line 48
    .line 49
    invoke-interface {v1, v0}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :catchall_0
    move-exception v1

    .line 54
    goto/16 :goto_5

    .line 55
    .line 56
    :cond_0
    :goto_0
    invoke-virtual {v0, v2}, Lr2/k;->n(I)V

    .line 57
    .line 58
    .line 59
    goto/16 :goto_4

    .line 60
    .line 61
    :cond_1
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 62
    .line 63
    .line 64
    move-result-wide v4

    .line 65
    iget-wide v6, v3, Lr2/b;->e:J

    .line 66
    .line 67
    cmp-long v8, v6, v4

    .line 68
    .line 69
    if-gez v8, :cond_2

    .line 70
    .line 71
    const-string v1, "cache-hit-expired"

    .line 72
    .line 73
    invoke-virtual {v0, v1}, Lr2/k;->a(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    iput-object v3, v0, Lr2/k;->R:Lr2/b;

    .line 77
    .line 78
    iget-object v1, p0, Lr2/c;->L:Lr2/s;

    .line 79
    .line 80
    invoke-virtual {v1, v0}, Lr2/s;->a(Lr2/k;)Z

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    if-nez v1, :cond_0

    .line 85
    .line 86
    iget-object v1, p0, Lr2/c;->H:Ljava/util/concurrent/BlockingQueue;

    .line 87
    .line 88
    invoke-interface {v1, v0}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_2
    const-string v6, "cache-hit"

    .line 93
    .line 94
    invoke-virtual {v0, v6}, Lr2/k;->a(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    new-instance v6, Lr2/i;

    .line 98
    .line 99
    iget-object v7, v3, Lr2/b;->a:[B

    .line 100
    .line 101
    iget-object v8, v3, Lr2/b;->g:Ljava/util/Map;

    .line 102
    .line 103
    invoke-direct {v6, v7, v8}, Lr2/i;-><init>([BLjava/util/Map;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0, v6}, Lr2/k;->m(Lr2/i;)LB0/c;

    .line 107
    .line 108
    .line 109
    move-result-object v6

    .line 110
    const-string v7, "cache-hit-parsed"

    .line 111
    .line 112
    invoke-virtual {v0, v7}, Lr2/k;->a(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    iget-object v7, v6, LB0/c;->J:Ljava/lang/Object;

    .line 116
    .line 117
    check-cast v7, Lr2/o;

    .line 118
    .line 119
    if-nez v7, :cond_3

    .line 120
    .line 121
    const/4 v7, 0x1

    .line 122
    goto :goto_1

    .line 123
    :cond_3
    const/4 v7, 0x0

    .line 124
    :goto_1
    const/4 v8, 0x0

    .line 125
    if-nez v7, :cond_5

    .line 126
    .line 127
    const-string v1, "cache-parsing-failed"

    .line 128
    .line 129
    invoke-virtual {v0, v1}, Lr2/k;->a(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    iget-object v1, p0, Lr2/c;->I:Ls2/d;

    .line 133
    .line 134
    invoke-virtual {v0}, Lr2/k;->f()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v3

    .line 138
    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 139
    :try_start_2
    invoke-virtual {v1, v3}, Ls2/d;->a(Ljava/lang/String;)Lr2/b;

    .line 140
    .line 141
    .line 142
    move-result-object v4

    .line 143
    if-eqz v4, :cond_4

    .line 144
    .line 145
    const-wide/16 v5, 0x0

    .line 146
    .line 147
    iput-wide v5, v4, Lr2/b;->f:J

    .line 148
    .line 149
    iput-wide v5, v4, Lr2/b;->e:J

    .line 150
    .line 151
    invoke-virtual {v1, v3, v4}, Ls2/d;->f(Ljava/lang/String;Lr2/b;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 152
    .line 153
    .line 154
    goto :goto_2

    .line 155
    :catchall_1
    move-exception v3

    .line 156
    goto :goto_3

    .line 157
    :cond_4
    :goto_2
    :try_start_3
    monitor-exit v1

    .line 158
    iput-object v8, v0, Lr2/k;->R:Lr2/b;

    .line 159
    .line 160
    iget-object v1, p0, Lr2/c;->L:Lr2/s;

    .line 161
    .line 162
    invoke-virtual {v1, v0}, Lr2/s;->a(Lr2/k;)Z

    .line 163
    .line 164
    .line 165
    move-result v1

    .line 166
    if-nez v1, :cond_0

    .line 167
    .line 168
    iget-object v1, p0, Lr2/c;->H:Ljava/util/concurrent/BlockingQueue;

    .line 169
    .line 170
    invoke-interface {v1, v0}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    .line 171
    .line 172
    .line 173
    goto :goto_0

    .line 174
    :goto_3
    monitor-exit v1

    .line 175
    throw v3

    .line 176
    :cond_5
    iget-wide v9, v3, Lr2/b;->f:J

    .line 177
    .line 178
    cmp-long v7, v9, v4

    .line 179
    .line 180
    if-gez v7, :cond_7

    .line 181
    .line 182
    const-string v4, "cache-hit-refresh-needed"

    .line 183
    .line 184
    invoke-virtual {v0, v4}, Lr2/k;->a(Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    iput-object v3, v0, Lr2/k;->R:Lr2/b;

    .line 188
    .line 189
    iput-boolean v1, v6, LB0/c;->G:Z

    .line 190
    .line 191
    iget-object v1, p0, Lr2/c;->L:Lr2/s;

    .line 192
    .line 193
    invoke-virtual {v1, v0}, Lr2/s;->a(Lr2/k;)Z

    .line 194
    .line 195
    .line 196
    move-result v1

    .line 197
    if-nez v1, :cond_6

    .line 198
    .line 199
    iget-object v1, p0, Lr2/c;->J:LD0/U;

    .line 200
    .line 201
    new-instance v3, Ll/k;

    .line 202
    .line 203
    const/16 v4, 0xe

    .line 204
    .line 205
    invoke-direct {v3, v4, p0, v0}, Ll/k;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {v1, v0, v6, v3}, LD0/U;->J(Lr2/k;LB0/c;Ll/k;)V

    .line 209
    .line 210
    .line 211
    goto/16 :goto_0

    .line 212
    .line 213
    :cond_6
    iget-object v1, p0, Lr2/c;->J:LD0/U;

    .line 214
    .line 215
    invoke-virtual {v1, v0, v6, v8}, LD0/U;->J(Lr2/k;LB0/c;Ll/k;)V

    .line 216
    .line 217
    .line 218
    goto/16 :goto_0

    .line 219
    .line 220
    :cond_7
    iget-object v1, p0, Lr2/c;->J:LD0/U;

    .line 221
    .line 222
    invoke-virtual {v1, v0, v6, v8}, LD0/U;->J(Lr2/k;LB0/c;Ll/k;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 223
    .line 224
    .line 225
    goto/16 :goto_0

    .line 226
    .line 227
    :goto_4
    return-void

    .line 228
    :goto_5
    invoke-virtual {v0, v2}, Lr2/k;->n(I)V

    .line 229
    .line 230
    .line 231
    throw v1
.end method


# virtual methods
.method public final b()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lr2/c;->K:Z

    .line 3
    .line 4
    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final run()V
    .locals 3

    .line 1
    sget-boolean v0, Lr2/c;->M:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const-string v0, "start new dispatcher"

    .line 7
    .line 8
    new-array v2, v1, [Ljava/lang/Object;

    .line 9
    .line 10
    invoke-static {v0, v2}, Lr2/r;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    const/16 v0, 0xa

    .line 14
    .line 15
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lr2/c;->I:Ls2/d;

    .line 19
    .line 20
    invoke-virtual {v0}, Ls2/d;->d()V

    .line 21
    .line 22
    .line 23
    :goto_0
    :try_start_0
    invoke-direct {p0}, Lr2/c;->a()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catch_0
    iget-boolean v0, p0, Lr2/c;->K:Z

    .line 28
    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :cond_1
    const-string v0, "Ignoring spurious interrupt of CacheDispatcher thread; use quit() to terminate it"

    .line 40
    .line 41
    new-array v2, v1, [Ljava/lang/Object;

    .line 42
    .line 43
    invoke-static {v0, v2}, Lr2/r;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    goto :goto_0
.end method
