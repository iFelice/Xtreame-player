.class public abstract Lcom/google/android/gms/internal/ads/tx;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/gms/ads/internal/ClientApi;

.field public final b:Landroid/content/Context;

.field public final c:I

.field public final d:Lcom/google/android/gms/internal/ads/cb;

.field public final e:Ll3/T0;

.field public final f:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final g:Ll3/O;

.field public final h:Ljava/util/concurrent/ConcurrentLinkedQueue;

.field public final i:Lcom/google/android/gms/internal/ads/mx;

.field public final j:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final k:Ljava/util/concurrent/ScheduledExecutorService;

.field public final l:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final m:LP3/a;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/internal/ClientApi;Landroid/content/Context;ILcom/google/android/gms/internal/ads/cb;Ll3/T0;Ll3/O;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/internal/ads/mx;LP3/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/tx;->a:Lcom/google/android/gms/ads/internal/ClientApi;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/tx;->b:Landroid/content/Context;

    .line 7
    .line 8
    iput p3, p0, Lcom/google/android/gms/internal/ads/tx;->c:I

    .line 9
    .line 10
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/tx;->d:Lcom/google/android/gms/internal/ads/cb;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/tx;->e:Ll3/T0;

    .line 13
    .line 14
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/tx;->g:Ll3/O;

    .line 15
    .line 16
    new-instance p1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 17
    .line 18
    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/tx;->h:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 22
    .line 23
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 24
    .line 25
    const/4 p2, 0x1

    .line 26
    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 27
    .line 28
    .line 29
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/tx;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 30
    .line 31
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 32
    .line 33
    const/4 p3, 0x0

    .line 34
    invoke-direct {p1, p3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 35
    .line 36
    .line 37
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/tx;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 38
    .line 39
    iput-object p7, p0, Lcom/google/android/gms/internal/ads/tx;->k:Ljava/util/concurrent/ScheduledExecutorService;

    .line 40
    .line 41
    iput-object p8, p0, Lcom/google/android/gms/internal/ads/tx;->i:Lcom/google/android/gms/internal/ads/mx;

    .line 42
    .line 43
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 44
    .line 45
    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 46
    .line 47
    .line 48
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/tx;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 49
    .line 50
    iput-object p9, p0, Lcom/google/android/gms/internal/ads/tx;->m:LP3/a;

    .line 51
    .line 52
    return-void
.end method

.method public static d(Lcom/google/android/gms/internal/ads/tx;Z)V
    .locals 10

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tx;->i:Lcom/google/android/gms/internal/ads/mx;

    .line 3
    .line 4
    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/mx;->c:J

    .line 5
    .line 6
    sget-object v3, Lcom/google/android/gms/internal/ads/Q7;->t:Lcom/google/android/gms/internal/ads/J7;

    .line 7
    .line 8
    sget-object v4, Ll3/q;->d:Ll3/q;

    .line 9
    .line 10
    iget-object v4, v4, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 11
    .line 12
    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    check-cast v3, Ljava/lang/Integer;

    .line 17
    .line 18
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    int-to-long v3, v3

    .line 23
    cmp-long v5, v1, v3

    .line 24
    .line 25
    if-lez v5, :cond_0

    .line 26
    .line 27
    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/mx;->d:J

    .line 28
    .line 29
    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/mx;->b:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    .line 31
    cmp-long v0, v1, v3

    .line 32
    .line 33
    if-ltz v0, :cond_0

    .line 34
    .line 35
    :goto_0
    monitor-exit p0

    .line 36
    goto :goto_2

    .line 37
    :cond_0
    const-wide/16 v0, 0x1

    .line 38
    .line 39
    if-eqz p1, :cond_1

    .line 40
    .line 41
    :try_start_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/tx;->i:Lcom/google/android/gms/internal/ads/mx;

    .line 42
    .line 43
    iget-wide v2, p1, Lcom/google/android/gms/internal/ads/mx;->d:J

    .line 44
    .line 45
    long-to-double v2, v2

    .line 46
    add-double/2addr v2, v2

    .line 47
    double-to-long v2, v2

    .line 48
    iget-wide v4, p1, Lcom/google/android/gms/internal/ads/mx;->b:J

    .line 49
    .line 50
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    .line 51
    .line 52
    .line 53
    move-result-wide v2

    .line 54
    iput-wide v2, p1, Lcom/google/android/gms/internal/ads/mx;->d:J

    .line 55
    .line 56
    iget-wide v2, p1, Lcom/google/android/gms/internal/ads/mx;->c:J

    .line 57
    .line 58
    add-long/2addr v2, v0

    .line 59
    iput-wide v2, p1, Lcom/google/android/gms/internal/ads/mx;->c:J

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :catchall_0
    move-exception p1

    .line 63
    goto :goto_3

    .line 64
    :cond_1
    :goto_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/tx;->k:Ljava/util/concurrent/ScheduledExecutorService;

    .line 65
    .line 66
    new-instance v2, Lcom/google/android/gms/internal/ads/sx;

    .line 67
    .line 68
    const/4 v3, 0x0

    .line 69
    invoke-direct {v2, p0, v3}, Lcom/google/android/gms/internal/ads/sx;-><init>(Lcom/google/android/gms/internal/ads/tx;I)V

    .line 70
    .line 71
    .line 72
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/tx;->i:Lcom/google/android/gms/internal/ads/mx;

    .line 73
    .line 74
    iget-wide v4, v3, Lcom/google/android/gms/internal/ads/mx;->d:J

    .line 75
    .line 76
    long-to-double v4, v4

    .line 77
    const-wide v6, 0x3fc999999999999aL    # 0.2

    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    mul-double v6, v6, v4

    .line 83
    .line 84
    add-double v8, v4, v6

    .line 85
    .line 86
    double-to-long v8, v8

    .line 87
    sub-double/2addr v4, v6

    .line 88
    double-to-long v4, v4

    .line 89
    sub-long/2addr v8, v4

    .line 90
    add-long/2addr v8, v0

    .line 91
    iget-object v0, v3, Lcom/google/android/gms/internal/ads/mx;->e:Ljava/util/Random;

    .line 92
    .line 93
    invoke-virtual {v0}, Ljava/util/Random;->nextDouble()D

    .line 94
    .line 95
    .line 96
    move-result-wide v0

    .line 97
    long-to-double v6, v8

    .line 98
    mul-double v0, v0, v6

    .line 99
    .line 100
    double-to-long v0, v0

    .line 101
    add-long/2addr v4, v0

    .line 102
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 103
    .line 104
    invoke-interface {p1, v2, v4, v5, v0}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 105
    .line 106
    .line 107
    goto :goto_0

    .line 108
    :goto_2
    return-void

    .line 109
    :goto_3
    monitor-exit p0

    .line 110
    throw p1
.end method


# virtual methods
.method public abstract a()Lcom/google/android/gms/internal/ads/pC;
.end method

.method public final declared-synchronized b()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/ads/sx;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/sx;-><init>(Lcom/google/android/gms/internal/ads/tx;I)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/tx;->k:Ljava/util/concurrent/ScheduledExecutorService;

    .line 9
    .line 10
    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    .line 13
    monitor-exit p0

    .line 14
    return-void

    .line 15
    :catchall_0
    move-exception v0

    .line 16
    monitor-exit p0

    .line 17
    throw v0
.end method

.method public final declared-synchronized c()Ljava/lang/Object;
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/tx;->g()V

    .line 3
    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tx;->i:Lcom/google/android/gms/internal/ads/mx;

    .line 6
    .line 7
    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/mx;->a:J

    .line 8
    .line 9
    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/mx;->d:J

    .line 10
    .line 11
    const-wide/16 v1, 0x0

    .line 12
    .line 13
    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/mx;->c:J

    .line 14
    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tx;->h:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lcom/google/android/gms/internal/ads/rx;

    .line 22
    .line 23
    const/4 v1, 0x1

    .line 24
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/tx;->e(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    .line 26
    .line 27
    if-nez v0, :cond_0

    .line 28
    .line 29
    monitor-exit p0

    .line 30
    const/4 v0, 0x0

    .line 31
    return-object v0

    .line 32
    :cond_0
    :try_start_1
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/rx;->a:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 33
    .line 34
    monitor-exit p0

    .line 35
    return-object v0

    .line 36
    :catchall_0
    move-exception v0

    .line 37
    monitor-exit p0

    .line 38
    throw v0
.end method

.method public final declared-synchronized e(Z)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/tx;->g()V

    .line 5
    .line 6
    .line 7
    goto :goto_0

    .line 8
    :catchall_0
    move-exception p1

    .line 9
    goto :goto_2

    .line 10
    :cond_0
    :goto_0
    new-instance p1, Lcom/google/android/gms/internal/ads/sx;

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    invoke-direct {p1, p0, v0}, Lcom/google/android/gms/internal/ads/sx;-><init>(Lcom/google/android/gms/internal/ads/tx;I)V

    .line 14
    .line 15
    .line 16
    sget-object v1, Lo3/O;->l:Lo3/J;

    .line 17
    .line 18
    invoke-virtual {v1, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/tx;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 22
    .line 23
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-nez p1, :cond_2

    .line 28
    .line 29
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/tx;->h:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 30
    .line 31
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/tx;->e:Ll3/T0;

    .line 32
    .line 33
    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    iget v1, v1, Ll3/T0;->J:I

    .line 38
    .line 39
    if-lt p1, v1, :cond_1

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/tx;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 43
    .line 44
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    if-eqz p1, :cond_2

    .line 49
    .line 50
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/tx;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 51
    .line 52
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/tx;->a()Lcom/google/android/gms/internal/ads/pC;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    new-instance v0, Lcom/google/android/gms/internal/ads/Xu;

    .line 60
    .line 61
    const/16 v1, 0xa

    .line 62
    .line 63
    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/Xu;-><init>(Ljava/lang/Object;I)V

    .line 64
    .line 65
    .line 66
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/tx;->k:Ljava/util/concurrent/ScheduledExecutorService;

    .line 67
    .line 68
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/Cw;->h2(LD4/b;Lcom/google/android/gms/internal/ads/dC;Ljava/util/concurrent/Executor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    .line 70
    .line 71
    monitor-exit p0

    .line 72
    return-void

    .line 73
    :cond_2
    :goto_1
    monitor-exit p0

    .line 74
    return-void

    .line 75
    :goto_2
    monitor-exit p0

    .line 76
    throw p1
.end method

.method public final declared-synchronized f()Z
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/tx;->g()V

    .line 3
    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tx;->h:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    .line 8
    .line 9
    .line 10
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    monitor-exit p0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    return v0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    return v0

    .line 18
    :catchall_0
    move-exception v0

    .line 19
    monitor-exit p0

    .line 20
    throw v0
.end method

.method public final declared-synchronized g()V
    .locals 8

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tx;->h:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 3
    .line 4
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Lcom/google/android/gms/internal/ads/rx;

    .line 19
    .line 20
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/rx;->c:LP3/a;

    .line 21
    .line 22
    check-cast v2, LP3/b;

    .line 23
    .line 24
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 28
    .line 29
    .line 30
    move-result-wide v2

    .line 31
    iget-wide v4, v1, Lcom/google/android/gms/internal/ads/rx;->b:J

    .line 32
    .line 33
    iget-wide v6, v1, Lcom/google/android/gms/internal/ads/rx;->d:J

    .line 34
    .line 35
    add-long/2addr v4, v6

    .line 36
    cmp-long v1, v2, v4

    .line 37
    .line 38
    if-ltz v1, :cond_0

    .line 39
    .line 40
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :catchall_0
    move-exception v0

    .line 45
    goto :goto_1

    .line 46
    :cond_1
    monitor-exit p0

    .line 47
    return-void

    .line 48
    :goto_1
    monitor-exit p0

    .line 49
    throw v0
.end method
