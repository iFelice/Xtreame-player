.class public final Li0/a;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(LE1/b;)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    iput v0, p0, Li0/a;->a:I

    .line 2
    iput-object p1, p0, Li0/a;->b:Ljava/lang/Object;

    .line 3
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method public constructor <init>(LE1/n;)V
    .locals 1

    .line 4
    const/4 v0, 0x3

    iput v0, p0, Li0/a;->a:I

    .line 5
    iput-object p1, p0, Li0/a;->b:Ljava/lang/Object;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Landroid/os/Looper;I)V
    .locals 0

    .line 6
    iput p3, p0, Li0/a;->a:I

    iput-object p1, p0, Li0/a;->b:Ljava/lang/Object;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method private a(Landroid/os/Message;)V
    .locals 10

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 7
    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object p1, p0, Li0/a;->b:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast p1, Li0/c;

    .line 13
    .line 14
    :cond_1
    iget-object v0, p1, Li0/c;->b:Ljava/util/HashMap;

    .line 15
    .line 16
    monitor-enter v0

    .line 17
    :try_start_0
    iget-object v1, p1, Li0/c;->d:Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-gtz v1, :cond_2

    .line 24
    .line 25
    monitor-exit v0

    .line 26
    :goto_0
    return-void

    .line 27
    :catchall_0
    move-exception p1

    .line 28
    goto :goto_3

    .line 29
    :cond_2
    new-array v2, v1, [Lm2/l;

    .line 30
    .line 31
    iget-object v3, p1, Li0/c;->d:Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    iget-object v3, p1, Li0/c;->d:Ljava/util/ArrayList;

    .line 37
    .line 38
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 39
    .line 40
    .line 41
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    const/4 v0, 0x0

    .line 43
    const/4 v3, 0x0

    .line 44
    :goto_1
    if-ge v3, v1, :cond_1

    .line 45
    .line 46
    aget-object v4, v2, v3

    .line 47
    .line 48
    iget-object v5, v4, Lm2/l;->I:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast v5, Ljava/util/ArrayList;

    .line 51
    .line 52
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 53
    .line 54
    .line 55
    move-result v5

    .line 56
    const/4 v6, 0x0

    .line 57
    :goto_2
    if-ge v6, v5, :cond_4

    .line 58
    .line 59
    iget-object v7, v4, Lm2/l;->I:Ljava/lang/Object;

    .line 60
    .line 61
    check-cast v7, Ljava/util/ArrayList;

    .line 62
    .line 63
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v7

    .line 67
    check-cast v7, Li0/b;

    .line 68
    .line 69
    iget-boolean v8, v7, Li0/b;->d:Z

    .line 70
    .line 71
    if-nez v8, :cond_3

    .line 72
    .line 73
    iget-object v7, v7, Li0/b;->b:Landroid/content/BroadcastReceiver;

    .line 74
    .line 75
    iget-object v8, p1, Li0/c;->a:Landroid/content/Context;

    .line 76
    .line 77
    iget-object v9, v4, Lm2/l;->H:Ljava/lang/Object;

    .line 78
    .line 79
    check-cast v9, Landroid/content/Intent;

    .line 80
    .line 81
    invoke-virtual {v7, v8, v9}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 82
    .line 83
    .line 84
    :cond_3
    add-int/lit8 v6, v6, 0x1

    .line 85
    .line 86
    goto :goto_2

    .line 87
    :cond_4
    add-int/lit8 v3, v3, 0x1

    .line 88
    .line 89
    goto :goto_1

    .line 90
    :goto_3
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 91
    throw p1
.end method

.method private b(Landroid/os/Message;)V
    .locals 11

    .line 1
    iget-object v0, p0, Li0/a;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, LK0/d;

    .line 4
    .line 5
    sget-object v1, LK0/d;->M:Ljava/util/ArrayDeque;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    iget v1, p1, Landroid/os/Message;->what:I

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    const/4 v3, 0x0

    .line 14
    if-eq v1, v2, :cond_9

    .line 15
    .line 16
    const/4 v2, 0x2

    .line 17
    if-eq v1, v2, :cond_6

    .line 18
    .line 19
    const/4 v2, 0x3

    .line 20
    if-eq v1, v2, :cond_5

    .line 21
    .line 22
    const/4 v2, 0x4

    .line 23
    if-eq v1, v2, :cond_2

    .line 24
    .line 25
    iget-object v1, v0, LK0/d;->J:Ljava/util/concurrent/atomic/AtomicReference;

    .line 26
    .line 27
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 28
    .line 29
    iget p1, p1, Landroid/os/Message;->what:I

    .line 30
    .line 31
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-direct {v2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    :cond_0
    invoke-virtual {v1, v3, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    if-eqz p1, :cond_1

    .line 43
    .line 44
    goto/16 :goto_2

    .line 45
    .line 46
    :cond_1
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    if-eqz p1, :cond_0

    .line 51
    .line 52
    goto/16 :goto_2

    .line 53
    .line 54
    :cond_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast p1, Landroid/os/Bundle;

    .line 57
    .line 58
    :try_start_0
    iget-object v1, v0, LK0/d;->G:Landroid/media/MediaCodec;

    .line 59
    .line 60
    invoke-virtual {v1, p1}, Landroid/media/MediaCodec;->setParameters(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    .line 62
    .line 63
    goto/16 :goto_2

    .line 64
    .line 65
    :catch_0
    move-exception p1

    .line 66
    iget-object v1, v0, LK0/d;->J:Ljava/util/concurrent/atomic/AtomicReference;

    .line 67
    .line 68
    :cond_3
    invoke-virtual {v1, v3, p1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    if-eqz v0, :cond_4

    .line 73
    .line 74
    goto :goto_2

    .line 75
    :cond_4
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    if-eqz v0, :cond_3

    .line 80
    .line 81
    goto :goto_2

    .line 82
    :cond_5
    iget-object p1, v0, LK0/d;->K:Lp0/i;

    .line 83
    .line 84
    invoke-virtual {p1}, Lp0/i;->f()Z

    .line 85
    .line 86
    .line 87
    goto :goto_2

    .line 88
    :cond_6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 89
    .line 90
    move-object v1, p1

    .line 91
    check-cast v1, LK0/c;

    .line 92
    .line 93
    iget v5, v1, LK0/c;->a:I

    .line 94
    .line 95
    iget v6, v1, LK0/c;->b:I

    .line 96
    .line 97
    iget-object v7, v1, LK0/c;->d:Landroid/media/MediaCodec$CryptoInfo;

    .line 98
    .line 99
    iget-wide v8, v1, LK0/c;->e:J

    .line 100
    .line 101
    iget v10, v1, LK0/c;->f:I

    .line 102
    .line 103
    :try_start_1
    sget-object p1, LK0/d;->N:Ljava/lang/Object;

    .line 104
    .line 105
    monitor-enter p1
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 106
    :try_start_2
    iget-object v4, v0, LK0/d;->G:Landroid/media/MediaCodec;

    .line 107
    .line 108
    invoke-virtual/range {v4 .. v10}, Landroid/media/MediaCodec;->queueSecureInputBuffer(IILandroid/media/MediaCodec$CryptoInfo;JI)V

    .line 109
    .line 110
    .line 111
    monitor-exit p1

    .line 112
    goto :goto_0

    .line 113
    :catchall_0
    move-exception v2

    .line 114
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 115
    :try_start_3
    throw v2
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1

    .line 116
    :catch_1
    move-exception p1

    .line 117
    move-object v2, p1

    .line 118
    iget-object v4, v0, LK0/d;->J:Ljava/util/concurrent/atomic/AtomicReference;

    .line 119
    .line 120
    :cond_7
    invoke-virtual {v4, v3, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    move-result p1

    .line 124
    if-eqz p1, :cond_8

    .line 125
    .line 126
    goto :goto_0

    .line 127
    :cond_8
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    if-eqz p1, :cond_7

    .line 132
    .line 133
    :goto_0
    move-object v3, v1

    .line 134
    goto :goto_2

    .line 135
    :cond_9
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 136
    .line 137
    check-cast p1, LK0/c;

    .line 138
    .line 139
    iget v5, p1, LK0/c;->a:I

    .line 140
    .line 141
    iget v6, p1, LK0/c;->b:I

    .line 142
    .line 143
    iget v7, p1, LK0/c;->c:I

    .line 144
    .line 145
    iget-wide v8, p1, LK0/c;->e:J

    .line 146
    .line 147
    iget v10, p1, LK0/c;->f:I

    .line 148
    .line 149
    :try_start_4
    iget-object v4, v0, LK0/d;->G:Landroid/media/MediaCodec;

    .line 150
    .line 151
    invoke-virtual/range {v4 .. v10}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_2

    .line 152
    .line 153
    .line 154
    goto :goto_1

    .line 155
    :catch_2
    move-exception v1

    .line 156
    iget-object v0, v0, LK0/d;->J:Ljava/util/concurrent/atomic/AtomicReference;

    .line 157
    .line 158
    :cond_a
    invoke-virtual {v0, v3, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 159
    .line 160
    .line 161
    move-result v2

    .line 162
    if-eqz v2, :cond_b

    .line 163
    .line 164
    goto :goto_1

    .line 165
    :cond_b
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object v2

    .line 169
    if-eqz v2, :cond_a

    .line 170
    .line 171
    :goto_1
    move-object v3, p1

    .line 172
    :goto_2
    if-eqz v3, :cond_c

    .line 173
    .line 174
    invoke-static {v3}, LK0/d;->c(LK0/c;)V

    .line 175
    .line 176
    .line 177
    :cond_c
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 12

    .line 1
    iget v0, p0, Li0/a;->a:I

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    const/4 v2, 0x3

    .line 5
    const/4 v3, 0x2

    .line 6
    const/4 v4, 0x0

    .line 7
    const/4 v5, 0x1

    .line 8
    packed-switch v0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Li0/a;->b:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v0, Lcom/google/android/gms/internal/ads/FM;

    .line 14
    .line 15
    sget-object v6, Lcom/google/android/gms/internal/ads/FM;->M:Ljava/util/ArrayDeque;

    .line 16
    .line 17
    iget v6, p1, Landroid/os/Message;->what:I

    .line 18
    .line 19
    if-eq v6, v5, :cond_3

    .line 20
    .line 21
    if-eq v6, v3, :cond_2

    .line 22
    .line 23
    if-eq v6, v2, :cond_1

    .line 24
    .line 25
    if-eq v6, v1, :cond_0

    .line 26
    .line 27
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/FM;->J:Ljava/util/concurrent/atomic/AtomicReference;

    .line 28
    .line 29
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 30
    .line 31
    iget p1, p1, Landroid/os/Message;->what:I

    .line 32
    .line 33
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-direct {v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/Cw;->d0(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/RuntimeException;)V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast p1, Landroid/os/Bundle;

    .line 47
    .line 48
    :try_start_0
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/FM;->G:Landroid/media/MediaCodec;

    .line 49
    .line 50
    invoke-virtual {v1, p1}, Landroid/media/MediaCodec;->setParameters(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :catch_0
    move-exception p1

    .line 55
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/FM;->J:Ljava/util/concurrent/atomic/AtomicReference;

    .line 56
    .line 57
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/Cw;->d0(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/RuntimeException;)V

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_1
    iget-object p1, v0, Lcom/google/android/gms/internal/ads/FM;->K:LG/c;

    .line 62
    .line 63
    invoke-virtual {p1}, LG/c;->e()Z

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 68
    .line 69
    move-object v4, p1

    .line 70
    check-cast v4, Lcom/google/android/gms/internal/ads/EM;

    .line 71
    .line 72
    iget v6, v4, Lcom/google/android/gms/internal/ads/EM;->a:I

    .line 73
    .line 74
    iget-object v8, v4, Lcom/google/android/gms/internal/ads/EM;->c:Landroid/media/MediaCodec$CryptoInfo;

    .line 75
    .line 76
    iget-wide v9, v4, Lcom/google/android/gms/internal/ads/EM;->d:J

    .line 77
    .line 78
    iget v11, v4, Lcom/google/android/gms/internal/ads/EM;->e:I

    .line 79
    .line 80
    :try_start_1
    sget-object p1, Lcom/google/android/gms/internal/ads/FM;->N:Ljava/lang/Object;

    .line 81
    .line 82
    monitor-enter p1
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 83
    :try_start_2
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/FM;->G:Landroid/media/MediaCodec;

    .line 84
    .line 85
    const/4 v7, 0x0

    .line 86
    invoke-virtual/range {v5 .. v11}, Landroid/media/MediaCodec;->queueSecureInputBuffer(IILandroid/media/MediaCodec$CryptoInfo;JI)V

    .line 87
    .line 88
    .line 89
    monitor-exit p1

    .line 90
    goto :goto_0

    .line 91
    :catchall_0
    move-exception v1

    .line 92
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 93
    :try_start_3
    throw v1
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1

    .line 94
    :catch_1
    move-exception p1

    .line 95
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/FM;->J:Ljava/util/concurrent/atomic/AtomicReference;

    .line 96
    .line 97
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/Cw;->d0(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/RuntimeException;)V

    .line 98
    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 102
    .line 103
    move-object v4, p1

    .line 104
    check-cast v4, Lcom/google/android/gms/internal/ads/EM;

    .line 105
    .line 106
    iget v6, v4, Lcom/google/android/gms/internal/ads/EM;->a:I

    .line 107
    .line 108
    iget v8, v4, Lcom/google/android/gms/internal/ads/EM;->b:I

    .line 109
    .line 110
    iget-wide v9, v4, Lcom/google/android/gms/internal/ads/EM;->d:J

    .line 111
    .line 112
    iget v11, v4, Lcom/google/android/gms/internal/ads/EM;->e:I

    .line 113
    .line 114
    :try_start_4
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/FM;->G:Landroid/media/MediaCodec;

    .line 115
    .line 116
    const/4 v7, 0x0

    .line 117
    invoke-virtual/range {v5 .. v11}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_2

    .line 118
    .line 119
    .line 120
    goto :goto_0

    .line 121
    :catch_2
    move-exception p1

    .line 122
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/FM;->J:Ljava/util/concurrent/atomic/AtomicReference;

    .line 123
    .line 124
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/Cw;->d0(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/RuntimeException;)V

    .line 125
    .line 126
    .line 127
    :goto_0
    if-eqz v4, :cond_4

    .line 128
    .line 129
    sget-object p1, Lcom/google/android/gms/internal/ads/FM;->M:Ljava/util/ArrayDeque;

    .line 130
    .line 131
    monitor-enter p1

    .line 132
    :try_start_5
    invoke-virtual {p1, v4}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    monitor-exit p1

    .line 136
    goto :goto_1

    .line 137
    :catchall_1
    move-exception v0

    .line 138
    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 139
    throw v0

    .line 140
    :cond_4
    :goto_1
    return-void

    .line 141
    :pswitch_0
    iget p1, p1, Landroid/os/Message;->what:I

    .line 142
    .line 143
    iget-object v0, p0, Li0/a;->b:Ljava/lang/Object;

    .line 144
    .line 145
    const/4 v1, 0x0

    .line 146
    if-eq p1, v5, :cond_6

    .line 147
    .line 148
    if-eq p1, v3, :cond_5

    .line 149
    .line 150
    goto :goto_2

    .line 151
    :cond_5
    check-cast v0, LE1/n;

    .line 152
    .line 153
    iput-boolean v1, v0, LE1/n;->f:Z

    .line 154
    .line 155
    iget-object p1, v0, LE1/n;->e:LE1/i;

    .line 156
    .line 157
    invoke-virtual {v0, p1}, LE1/n;->f(LE1/i;)V

    .line 158
    .line 159
    .line 160
    goto :goto_2

    .line 161
    :cond_6
    check-cast v0, LE1/n;

    .line 162
    .line 163
    iput-boolean v1, v0, LE1/n;->h:Z

    .line 164
    .line 165
    iget-object p1, v0, LE1/n;->d:LE1/u;

    .line 166
    .line 167
    if-eqz p1, :cond_7

    .line 168
    .line 169
    iget-object v1, v0, LE1/n;->g:LE1/o;

    .line 170
    .line 171
    iget-object p1, p1, LE1/u;->a:LE1/A;

    .line 172
    .line 173
    invoke-virtual {p1, v0}, LE1/A;->e(LE1/n;)LE1/E;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    if-eqz v0, :cond_7

    .line 178
    .line 179
    invoke-virtual {p1, v0, v1}, LE1/A;->o(LE1/E;LE1/o;)V

    .line 180
    .line 181
    .line 182
    :cond_7
    :goto_2
    return-void

    .line 183
    :pswitch_1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 184
    .line 185
    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 186
    .line 187
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 188
    .line 189
    invoke-virtual {p1}, Landroid/os/Message;->peekData()Landroid/os/Bundle;

    .line 190
    .line 191
    .line 192
    move-result-object p1

    .line 193
    iget-object v6, p0, Li0/a;->b:Ljava/lang/Object;

    .line 194
    .line 195
    check-cast v6, LE1/b;

    .line 196
    .line 197
    iget-object v7, v6, LE1/b;->j:Landroid/util/SparseArray;

    .line 198
    .line 199
    invoke-virtual {v7, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    move-result-object v7

    .line 203
    check-cast v7, LE1/X;

    .line 204
    .line 205
    if-nez v7, :cond_8

    .line 206
    .line 207
    const-string p1, "MR2Provider"

    .line 208
    .line 209
    const-string v0, "Pending callback not found for control request."

    .line 210
    .line 211
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    .line 213
    .line 214
    goto :goto_4

    .line 215
    :cond_8
    iget-object v6, v6, LE1/b;->j:Landroid/util/SparseArray;

    .line 216
    .line 217
    invoke-virtual {v6, v3}, Landroid/util/SparseArray;->remove(I)V

    .line 218
    .line 219
    .line 220
    if-eq v0, v2, :cond_b

    .line 221
    .line 222
    if-eq v0, v1, :cond_9

    .line 223
    .line 224
    goto :goto_4

    .line 225
    :cond_9
    if-nez p1, :cond_a

    .line 226
    .line 227
    goto :goto_3

    .line 228
    :cond_a
    const-string v0, "error"

    .line 229
    .line 230
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v4

    .line 234
    :goto_3
    check-cast v5, Landroid/os/Bundle;

    .line 235
    .line 236
    invoke-static {v4, v5}, LE1/X;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 237
    .line 238
    .line 239
    goto :goto_4

    .line 240
    :cond_b
    check-cast v5, Landroid/os/Bundle;

    .line 241
    .line 242
    invoke-virtual {v7, v5}, LE1/X;->b(Landroid/os/Bundle;)V

    .line 243
    .line 244
    .line 245
    :goto_4
    return-void

    .line 246
    :pswitch_2
    invoke-direct {p0, p1}, Li0/a;->b(Landroid/os/Message;)V

    .line 247
    .line 248
    .line 249
    return-void

    .line 250
    :pswitch_3
    invoke-direct {p0, p1}, Li0/a;->a(Landroid/os/Message;)V

    .line 251
    .line 252
    .line 253
    return-void

    .line 254
    nop

    .line 255
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
