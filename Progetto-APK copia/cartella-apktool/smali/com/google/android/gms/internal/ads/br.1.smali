.class public final Lcom/google/android/gms/internal/ads/br;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/concurrent/Executor;

.field public final b:Ljava/util/concurrent/ScheduledExecutorService;

.field public final c:Lcom/google/android/gms/internal/ads/zi;

.field public final d:Lcom/google/android/gms/internal/ads/mr;

.field public final e:Lcom/google/android/gms/internal/ads/hx;

.field public final f:Lcom/google/android/gms/internal/ads/pC;

.field public final g:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public h:Lcom/google/android/gms/internal/ads/cr;

.field public i:Lcom/google/android/gms/internal/ads/Tv;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/re;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/internal/ads/zi;Lcom/google/android/gms/internal/ads/mr;Lcom/google/android/gms/internal/ads/hx;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/pC;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/br;->f:Lcom/google/android/gms/internal/ads/pC;

    .line 10
    .line 11
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/br;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 17
    .line 18
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/br;->a:Ljava/util/concurrent/Executor;

    .line 19
    .line 20
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/br;->b:Ljava/util/concurrent/ScheduledExecutorService;

    .line 21
    .line 22
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/br;->c:Lcom/google/android/gms/internal/ads/zi;

    .line 23
    .line 24
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/br;->d:Lcom/google/android/gms/internal/ads/mr;

    .line 25
    .line 26
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/br;->e:Lcom/google/android/gms/internal/ads/hx;

    .line 27
    .line 28
    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Lcom/google/android/gms/internal/ads/Tv;)Lcom/google/android/gms/internal/ads/pC;
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/br;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    .line 4
    const/4 v1, 0x1

    .line 5
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/Tv;->b:Lcom/google/android/gms/internal/ads/xc;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/xc;->H:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v0, Ljava/util/List;

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/br;->f:Lcom/google/android/gms/internal/ads/pC;

    .line 24
    .line 25
    new-instance v1, Lcom/google/android/gms/internal/ads/qr;

    .line 26
    .line 27
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/rr;->a(Lcom/google/android/gms/internal/ads/Tv;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    const/4 v2, 0x3

    .line 32
    invoke-direct {v1, v2, p1}, Lcom/google/android/gms/internal/ads/Bo;-><init>(ILjava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/pC;->g(Ljava/lang/Throwable;)Z

    .line 36
    .line 37
    .line 38
    goto :goto_1

    .line 39
    :catchall_0
    move-exception p1

    .line 40
    goto :goto_2

    .line 41
    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/br;->i:Lcom/google/android/gms/internal/ads/Tv;

    .line 42
    .line 43
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/br;->d:Lcom/google/android/gms/internal/ads/mr;

    .line 44
    .line 45
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/br;->f:Lcom/google/android/gms/internal/ads/pC;

    .line 46
    .line 47
    new-instance v2, Lcom/google/android/gms/internal/ads/cr;

    .line 48
    .line 49
    invoke-direct {v2, p1, v0, v1}, Lcom/google/android/gms/internal/ads/cr;-><init>(Lcom/google/android/gms/internal/ads/Tv;Lcom/google/android/gms/internal/ads/mr;Lcom/google/android/gms/internal/ads/pC;)V

    .line 50
    .line 51
    .line 52
    iput-object v2, p0, Lcom/google/android/gms/internal/ads/br;->h:Lcom/google/android/gms/internal/ads/cr;

    .line 53
    .line 54
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/br;->d:Lcom/google/android/gms/internal/ads/mr;

    .line 55
    .line 56
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/Tv;->b:Lcom/google/android/gms/internal/ads/xc;

    .line 57
    .line 58
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/xc;->H:Ljava/lang/Object;

    .line 59
    .line 60
    check-cast p1, Ljava/util/List;

    .line 61
    .line 62
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/mr;->e(Ljava/util/List;)V

    .line 63
    .line 64
    .line 65
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/br;->h:Lcom/google/android/gms/internal/ads/cr;

    .line 66
    .line 67
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/cr;->a()Lcom/google/android/gms/internal/ads/Ov;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    :goto_0
    if-eqz p1, :cond_1

    .line 72
    .line 73
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/br;->b(Lcom/google/android/gms/internal/ads/Ov;)V

    .line 74
    .line 75
    .line 76
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/br;->h:Lcom/google/android/gms/internal/ads/cr;

    .line 77
    .line 78
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/cr;->a()Lcom/google/android/gms/internal/ads/Ov;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    goto :goto_0

    .line 83
    :cond_1
    :goto_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/br;->f:Lcom/google/android/gms/internal/ads/pC;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    .line 85
    monitor-exit p0

    .line 86
    return-object p1

    .line 87
    :goto_2
    monitor-exit p0

    .line 88
    throw p1
.end method

.method public final b(Lcom/google/android/gms/internal/ads/Ov;)V
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/Ov;->a:Ljava/util/List;

    .line 3
    .line 4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    :cond_0
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
    check-cast v1, Ljava/lang/String;

    .line 19
    .line 20
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/br;->c:Lcom/google/android/gms/internal/ads/zi;

    .line 21
    .line 22
    iget v3, p1, Lcom/google/android/gms/internal/ads/Ov;->b:I

    .line 23
    .line 24
    invoke-interface {v2, v3, v1}, Lcom/google/android/gms/internal/ads/zi;->a(ILjava/lang/String;)Lcom/google/android/gms/internal/ads/pq;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    if-eqz v1, :cond_0

    .line 29
    .line 30
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/br;->i:Lcom/google/android/gms/internal/ads/Tv;

    .line 31
    .line 32
    invoke-interface {v1, v2, p1}, Lcom/google/android/gms/internal/ads/pq;->b(Lcom/google/android/gms/internal/ads/Tv;Lcom/google/android/gms/internal/ads/Ov;)Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-eqz v2, :cond_0

    .line 37
    .line 38
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/br;->i:Lcom/google/android/gms/internal/ads/Tv;

    .line 39
    .line 40
    invoke-interface {v1, v0, p1}, Lcom/google/android/gms/internal/ads/pq;->a(Lcom/google/android/gms/internal/ads/Tv;Lcom/google/android/gms/internal/ads/Ov;)LD4/b;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    iget v1, p1, Lcom/google/android/gms/internal/ads/Ov;->R:I

    .line 45
    .line 46
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/br;->b:Ljava/util/concurrent/ScheduledExecutorService;

    .line 47
    .line 48
    int-to-long v3, v1

    .line 49
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 50
    .line 51
    invoke-static {v0, v3, v4, v1, v2}, Lcom/google/android/gms/internal/ads/Cw;->e2(LD4/b;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)LD4/b;

    .line 52
    .line 53
    .line 54
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    monitor-exit p0

    .line 56
    goto :goto_0

    .line 57
    :catchall_0
    move-exception p1

    .line 58
    goto :goto_1

    .line 59
    :cond_1
    :try_start_1
    new-instance v0, Lcom/google/android/gms/internal/ads/Bo;

    .line 60
    .line 61
    const/4 v1, 0x3

    .line 62
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/Bo;-><init>(I)V

    .line 63
    .line 64
    .line 65
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Cw;->H1(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/eC;

    .line 66
    .line 67
    .line 68
    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 69
    monitor-exit p0

    .line 70
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/br;->e:Lcom/google/android/gms/internal/ads/hx;

    .line 71
    .line 72
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/br;->d:Lcom/google/android/gms/internal/ads/mr;

    .line 73
    .line 74
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/br;->i:Lcom/google/android/gms/internal/ads/Tv;

    .line 75
    .line 76
    invoke-virtual {v2, v3, p1, v0, v1}, Lcom/google/android/gms/internal/ads/mr;->b(Lcom/google/android/gms/internal/ads/Tv;Lcom/google/android/gms/internal/ads/Ov;LD4/b;Lcom/google/android/gms/internal/ads/hx;)V

    .line 77
    .line 78
    .line 79
    new-instance v1, Lcom/google/android/gms/internal/ads/Om;

    .line 80
    .line 81
    const/16 v2, 0x9

    .line 82
    .line 83
    invoke-direct {v1, p0, p1, v2}, Lcom/google/android/gms/internal/ads/Om;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 84
    .line 85
    .line 86
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/br;->a:Ljava/util/concurrent/Executor;

    .line 87
    .line 88
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/Cw;->h2(LD4/b;Lcom/google/android/gms/internal/ads/dC;Ljava/util/concurrent/Executor;)V

    .line 89
    .line 90
    .line 91
    return-void

    .line 92
    :goto_1
    monitor-exit p0

    .line 93
    throw p1
.end method
