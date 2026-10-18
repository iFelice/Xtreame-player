.class public final Lcom/google/android/gms/internal/ads/n3;
.super Ljava/lang/Thread;
.source "SourceFile"


# static fields
.field public static final M:Z


# instance fields
.field public final G:Ljava/util/concurrent/BlockingQueue;

.field public final H:Ljava/util/concurrent/BlockingQueue;

.field public final I:LA0/w;

.field public volatile J:Z

.field public final K:Lcom/google/android/gms/internal/ads/xc;

.field public final L:Lcom/google/android/gms/internal/ads/K4;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/google/android/gms/internal/ads/B3;->a:Z

    .line 2
    .line 3
    sput-boolean v0, Lcom/google/android/gms/internal/ads/n3;->M:Z

    .line 4
    .line 5
    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/PriorityBlockingQueue;Ljava/util/concurrent/PriorityBlockingQueue;LA0/w;Lcom/google/android/gms/internal/ads/K4;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/n3;->J:Z

    .line 6
    .line 7
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/n3;->G:Ljava/util/concurrent/BlockingQueue;

    .line 8
    .line 9
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/n3;->H:Ljava/util/concurrent/BlockingQueue;

    .line 10
    .line 11
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/n3;->I:LA0/w;

    .line 12
    .line 13
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/n3;->L:Lcom/google/android/gms/internal/ads/K4;

    .line 14
    .line 15
    new-instance p1, Lcom/google/android/gms/internal/ads/xc;

    .line 16
    .line 17
    invoke-direct {p1, p0, p2, p4}, Lcom/google/android/gms/internal/ads/xc;-><init>(Lcom/google/android/gms/internal/ads/n3;Ljava/util/concurrent/PriorityBlockingQueue;Lcom/google/android/gms/internal/ads/K4;)V

    .line 18
    .line 19
    .line 20
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/n3;->K:Lcom/google/android/gms/internal/ads/xc;

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/n3;->G:Ljava/util/concurrent/BlockingQueue;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/google/android/gms/internal/ads/v3;

    .line 8
    .line 9
    const-string v1, "cache-queue-take"

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/v3;->d(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/v3;->i(I)V

    .line 16
    .line 17
    .line 18
    const/4 v2, 0x2

    .line 19
    :try_start_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/v3;->l()V

    .line 20
    .line 21
    .line 22
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/n3;->I:LA0/w;

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/v3;->b()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    invoke-virtual {v3, v4}, LA0/w;->a(Ljava/lang/String;)Lr2/b;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    if-nez v3, :cond_0

    .line 33
    .line 34
    const-string v1, "cache-miss"

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/v3;->d(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/n3;->K:Lcom/google/android/gms/internal/ads/xc;

    .line 40
    .line 41
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/xc;->w(Lcom/google/android/gms/internal/ads/v3;)Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-nez v1, :cond_7

    .line 46
    .line 47
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/n3;->H:Ljava/util/concurrent/BlockingQueue;

    .line 48
    .line 49
    invoke-interface {v1, v0}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    goto/16 :goto_3

    .line 53
    .line 54
    :catchall_0
    move-exception v1

    .line 55
    goto/16 :goto_4

    .line 56
    .line 57
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 58
    .line 59
    .line 60
    move-result-wide v4

    .line 61
    iget-wide v6, v3, Lr2/b;->e:J

    .line 62
    .line 63
    cmp-long v8, v6, v4

    .line 64
    .line 65
    if-gez v8, :cond_1

    .line 66
    .line 67
    const-string v1, "cache-hit-expired"

    .line 68
    .line 69
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/v3;->d(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    iput-object v3, v0, Lcom/google/android/gms/internal/ads/v3;->P:Lr2/b;

    .line 73
    .line 74
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/n3;->K:Lcom/google/android/gms/internal/ads/xc;

    .line 75
    .line 76
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/xc;->w(Lcom/google/android/gms/internal/ads/v3;)Z

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    if-nez v1, :cond_7

    .line 81
    .line 82
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/n3;->H:Ljava/util/concurrent/BlockingQueue;

    .line 83
    .line 84
    invoke-interface {v1, v0}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    goto/16 :goto_3

    .line 88
    .line 89
    :cond_1
    const-string v6, "cache-hit"

    .line 90
    .line 91
    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/ads/v3;->d(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    new-instance v6, Lcom/google/android/gms/internal/ads/u3;

    .line 95
    .line 96
    iget-object v9, v3, Lr2/b;->a:[B

    .line 97
    .line 98
    iget-object v10, v3, Lr2/b;->g:Ljava/util/Map;

    .line 99
    .line 100
    invoke-static {v10}, Lcom/google/android/gms/internal/ads/u3;->a(Ljava/util/Map;)Ljava/util/List;

    .line 101
    .line 102
    .line 103
    move-result-object v11

    .line 104
    const/16 v8, 0xc8

    .line 105
    .line 106
    const/4 v12, 0x0

    .line 107
    move-object v7, v6

    .line 108
    invoke-direct/range {v7 .. v12}, Lcom/google/android/gms/internal/ads/u3;-><init>(I[BLjava/util/Map;Ljava/util/List;Z)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/ads/v3;->a(Lcom/google/android/gms/internal/ads/u3;)Lcom/google/android/gms/internal/ads/x3;

    .line 112
    .line 113
    .line 114
    move-result-object v6

    .line 115
    const-string v7, "cache-hit-parsed"

    .line 116
    .line 117
    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ads/v3;->d(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    iget-object v7, v6, Lcom/google/android/gms/internal/ads/x3;->J:Ljava/lang/Object;

    .line 121
    .line 122
    check-cast v7, Lcom/google/android/gms/internal/ads/y3;

    .line 123
    .line 124
    if-nez v7, :cond_2

    .line 125
    .line 126
    const/4 v7, 0x1

    .line 127
    goto :goto_0

    .line 128
    :cond_2
    const/4 v7, 0x0

    .line 129
    :goto_0
    const/4 v8, 0x0

    .line 130
    if-nez v7, :cond_4

    .line 131
    .line 132
    const-string v1, "cache-parsing-failed"

    .line 133
    .line 134
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/v3;->d(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/n3;->I:LA0/w;

    .line 138
    .line 139
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/v3;->b()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v3

    .line 143
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    :try_start_1
    invoke-virtual {v1, v3}, LA0/w;->a(Ljava/lang/String;)Lr2/b;

    .line 145
    .line 146
    .line 147
    move-result-object v4

    .line 148
    if-eqz v4, :cond_3

    .line 149
    .line 150
    const-wide/16 v5, 0x0

    .line 151
    .line 152
    iput-wide v5, v4, Lr2/b;->f:J

    .line 153
    .line 154
    iput-wide v5, v4, Lr2/b;->e:J

    .line 155
    .line 156
    invoke-virtual {v1, v3, v4}, LA0/w;->c(Ljava/lang/String;Lr2/b;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 157
    .line 158
    .line 159
    :cond_3
    :try_start_2
    monitor-exit v1

    .line 160
    goto :goto_1

    .line 161
    :catchall_1
    move-exception v3

    .line 162
    goto :goto_2

    .line 163
    :goto_1
    iput-object v8, v0, Lcom/google/android/gms/internal/ads/v3;->P:Lr2/b;

    .line 164
    .line 165
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/n3;->K:Lcom/google/android/gms/internal/ads/xc;

    .line 166
    .line 167
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/xc;->w(Lcom/google/android/gms/internal/ads/v3;)Z

    .line 168
    .line 169
    .line 170
    move-result v1

    .line 171
    if-nez v1, :cond_7

    .line 172
    .line 173
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/n3;->H:Ljava/util/concurrent/BlockingQueue;

    .line 174
    .line 175
    invoke-interface {v1, v0}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    .line 176
    .line 177
    .line 178
    goto :goto_3

    .line 179
    :goto_2
    monitor-exit v1

    .line 180
    throw v3

    .line 181
    :cond_4
    iget-wide v9, v3, Lr2/b;->f:J

    .line 182
    .line 183
    cmp-long v7, v9, v4

    .line 184
    .line 185
    if-gez v7, :cond_6

    .line 186
    .line 187
    const-string v4, "cache-hit-refresh-needed"

    .line 188
    .line 189
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/v3;->d(Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    iput-object v3, v0, Lcom/google/android/gms/internal/ads/v3;->P:Lr2/b;

    .line 193
    .line 194
    iput-boolean v1, v6, Lcom/google/android/gms/internal/ads/x3;->G:Z

    .line 195
    .line 196
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/n3;->K:Lcom/google/android/gms/internal/ads/xc;

    .line 197
    .line 198
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/xc;->w(Lcom/google/android/gms/internal/ads/v3;)Z

    .line 199
    .line 200
    .line 201
    move-result v1

    .line 202
    if-nez v1, :cond_5

    .line 203
    .line 204
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/n3;->L:Lcom/google/android/gms/internal/ads/K4;

    .line 205
    .line 206
    new-instance v3, Lcom/google/android/gms/internal/ads/Ha;

    .line 207
    .line 208
    const/4 v4, 0x4

    .line 209
    invoke-direct {v3, p0, v0, v4}, Lcom/google/android/gms/internal/ads/Ha;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {v1, v0, v6, v3}, Lcom/google/android/gms/internal/ads/K4;->f(Lcom/google/android/gms/internal/ads/v3;Lcom/google/android/gms/internal/ads/x3;Lcom/google/android/gms/internal/ads/Ha;)V

    .line 213
    .line 214
    .line 215
    goto :goto_3

    .line 216
    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/n3;->L:Lcom/google/android/gms/internal/ads/K4;

    .line 217
    .line 218
    invoke-virtual {v1, v0, v6, v8}, Lcom/google/android/gms/internal/ads/K4;->f(Lcom/google/android/gms/internal/ads/v3;Lcom/google/android/gms/internal/ads/x3;Lcom/google/android/gms/internal/ads/Ha;)V

    .line 219
    .line 220
    .line 221
    goto :goto_3

    .line 222
    :cond_6
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/n3;->L:Lcom/google/android/gms/internal/ads/K4;

    .line 223
    .line 224
    invoke-virtual {v1, v0, v6, v8}, Lcom/google/android/gms/internal/ads/K4;->f(Lcom/google/android/gms/internal/ads/v3;Lcom/google/android/gms/internal/ads/x3;Lcom/google/android/gms/internal/ads/Ha;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 225
    .line 226
    .line 227
    :cond_7
    :goto_3
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/v3;->i(I)V

    .line 228
    .line 229
    .line 230
    return-void

    .line 231
    :goto_4
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/v3;->i(I)V

    .line 232
    .line 233
    .line 234
    throw v1
.end method

.method public final run()V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/google/android/gms/internal/ads/n3;->M:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    new-array v0, v1, [Ljava/lang/Object;

    .line 7
    .line 8
    const-string v2, "start new dispatcher"

    .line 9
    .line 10
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/B3;->c(Ljava/lang/String;[Ljava/lang/Object;)V

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
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/n3;->I:LA0/w;

    .line 19
    .line 20
    invoke-virtual {v0}, LA0/w;->b()V

    .line 21
    .line 22
    .line 23
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/n3;->a()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catch_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/n3;->J:Z

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
    new-array v0, v1, [Ljava/lang/Object;

    .line 40
    .line 41
    const-string v2, "Ignoring spurious interrupt of CacheDispatcher thread; use quit() to terminate it"

    .line 42
    .line 43
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/B3;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    goto :goto_0
.end method
