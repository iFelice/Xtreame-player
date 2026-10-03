.class public final Lcom/google/android/gms/internal/ads/Eh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/O5;


# instance fields
.field public final a:Ljava/util/concurrent/ScheduledExecutorService;

.field public final b:LP3/a;

.field public c:Ljava/util/concurrent/ScheduledFuture;

.field public d:J

.field public e:J

.field public f:Ljava/lang/Runnable;

.field public g:Z


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ScheduledExecutorService;LP3/b;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, -0x1

    .line 5
    .line 6
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/Eh;->d:J

    .line 7
    .line 8
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/Eh;->e:J

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Eh;->f:Ljava/lang/Runnable;

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/Eh;->g:Z

    .line 15
    .line 16
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Eh;->a:Ljava/util/concurrent/ScheduledExecutorService;

    .line 17
    .line 18
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Eh;->b:LP3/a;

    .line 19
    .line 20
    sget-object p1, Lk3/l;->A:Lk3/l;

    .line 21
    .line 22
    iget-object p1, p1, Lk3/l;->f:LJ2/t;

    .line 23
    .line 24
    invoke-virtual {p1, p0}, LJ2/t;->n(Lcom/google/android/gms/internal/ads/O5;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 4

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/Eh;->g:Z

    .line 5
    .line 6
    if-eqz p1, :cond_1

    .line 7
    .line 8
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/Eh;->e:J

    .line 9
    .line 10
    const-wide/16 v2, 0x0

    .line 11
    .line 12
    cmp-long p1, v0, v2

    .line 13
    .line 14
    if-lez p1, :cond_0

    .line 15
    .line 16
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Eh;->c:Ljava/util/concurrent/ScheduledFuture;

    .line 17
    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    invoke-interface {p1}, Ljava/util/concurrent/Future;->isCancelled()Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-eqz p1, :cond_0

    .line 25
    .line 26
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Eh;->a:Ljava/util/concurrent/ScheduledExecutorService;

    .line 27
    .line 28
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Eh;->f:Ljava/lang/Runnable;

    .line 29
    .line 30
    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/Eh;->e:J

    .line 31
    .line 32
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 33
    .line 34
    invoke-interface {p1, v0, v1, v2, v3}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Eh;->c:Ljava/util/concurrent/ScheduledFuture;

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :catchall_0
    move-exception p1

    .line 42
    goto :goto_1

    .line 43
    :cond_0
    :goto_0
    const/4 p1, 0x0

    .line 44
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/Eh;->g:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    .line 46
    :cond_1
    monitor-exit p0

    .line 47
    return-void

    .line 48
    :goto_1
    monitor-exit p0

    .line 49
    throw p1

    .line 50
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/Eh;->b()V

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method public final declared-synchronized b()V
    .locals 6

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/Eh;->g:Z

    .line 3
    .line 4
    if-nez v0, :cond_1

    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Eh;->c:Ljava/util/concurrent/ScheduledFuture;

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Eh;->c:Ljava/util/concurrent/ScheduledFuture;

    .line 18
    .line 19
    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 20
    .line 21
    .line 22
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/Eh;->d:J

    .line 23
    .line 24
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Eh;->b:LP3/a;

    .line 25
    .line 26
    check-cast v0, LP3/b;

    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 32
    .line 33
    .line 34
    move-result-wide v4

    .line 35
    sub-long/2addr v2, v4

    .line 36
    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/Eh;->e:J

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :catchall_0
    move-exception v0

    .line 40
    goto :goto_1

    .line 41
    :cond_0
    const-wide/16 v2, -0x1

    .line 42
    .line 43
    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/Eh;->e:J

    .line 44
    .line 45
    :goto_0
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/Eh;->g:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    .line 47
    monitor-exit p0

    .line 48
    return-void

    .line 49
    :cond_1
    monitor-exit p0

    .line 50
    return-void

    .line 51
    :goto_1
    monitor-exit p0

    .line 52
    throw v0
.end method

.method public final declared-synchronized c(ILcom/google/android/gms/internal/ads/cv;)V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Eh;->f:Ljava/lang/Runnable;

    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Eh;->b:LP3/a;

    .line 5
    .line 6
    check-cast v0, LP3/b;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    int-to-long v2, p1

    .line 16
    add-long/2addr v0, v2

    .line 17
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/Eh;->d:J

    .line 18
    .line 19
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 20
    .line 21
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Eh;->a:Ljava/util/concurrent/ScheduledExecutorService;

    .line 22
    .line 23
    invoke-interface {v0, p2, v2, v3, p1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Eh;->c:Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    .line 29
    monitor-exit p0

    .line 30
    return-void

    .line 31
    :catchall_0
    move-exception p1

    .line 32
    monitor-exit p0

    .line 33
    throw p1
.end method
