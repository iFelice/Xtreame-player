.class public final Lcom/google/android/gms/internal/ads/Ys;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:J

.field public b:J

.field public c:J

.field public final d:Ljava/lang/ThreadLocal;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/ThreadLocal;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Ys;->d:Ljava/lang/ThreadLocal;

    .line 10
    .line 11
    const-wide/16 v0, 0x0

    .line 12
    .line 13
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/Ys;->f(J)V

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final declared-synchronized a(J)J
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/Ys;->g()Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/Ys;->a:J

    .line 9
    .line 10
    const-wide v2, 0x7ffffffffffffffeL

    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    cmp-long v4, v0, v2

    .line 16
    .line 17
    if-nez v4, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ys;->d:Ljava/lang/ThreadLocal;

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Ljava/lang/Long;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 31
    .line 32
    .line 33
    move-result-wide v0

    .line 34
    goto :goto_0

    .line 35
    :catchall_0
    move-exception p1

    .line 36
    goto :goto_1

    .line 37
    :cond_0
    :goto_0
    sub-long/2addr v0, p1

    .line 38
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/Ys;->b:J

    .line 39
    .line 40
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 41
    .line 42
    .line 43
    :cond_1
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/Ys;->c:J

    .line 44
    .line 45
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/Ys;->b:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 46
    .line 47
    add-long/2addr p1, v0

    .line 48
    monitor-exit p0

    .line 49
    return-wide p1

    .line 50
    :goto_1
    monitor-exit p0

    .line 51
    throw p1
.end method

.method public final declared-synchronized b(J)J
    .locals 12

    .line 1
    monitor-enter p0

    .line 2
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 3
    .line 4
    .line 5
    .line 6
    .line 7
    cmp-long v2, p1, v0

    .line 8
    .line 9
    if-nez v2, :cond_0

    .line 10
    .line 11
    monitor-exit p0

    .line 12
    return-wide v0

    .line 13
    :cond_0
    :try_start_0
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/Ys;->c:J

    .line 14
    .line 15
    const-wide/32 v4, 0xf4240

    .line 16
    .line 17
    .line 18
    const-wide/32 v6, 0x15f90

    .line 19
    .line 20
    .line 21
    cmp-long v8, v2, v0

    .line 22
    .line 23
    if-eqz v8, :cond_2

    .line 24
    .line 25
    mul-long v2, v2, v6

    .line 26
    .line 27
    div-long/2addr v2, v4

    .line 28
    const-wide v0, 0x100000000L

    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    add-long/2addr v0, v2

    .line 34
    const-wide v8, 0x200000000L

    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    div-long/2addr v0, v8

    .line 40
    const-wide/16 v10, -0x1

    .line 41
    .line 42
    add-long/2addr v10, v0

    .line 43
    mul-long v10, v10, v8

    .line 44
    .line 45
    add-long/2addr v10, p1

    .line 46
    mul-long v0, v0, v8

    .line 47
    .line 48
    add-long/2addr v0, p1

    .line 49
    sub-long p1, v0, v2

    .line 50
    .line 51
    sub-long v2, v10, v2

    .line 52
    .line 53
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    .line 54
    .line 55
    .line 56
    move-result-wide v2

    .line 57
    invoke-static {p1, p2}, Ljava/lang/Math;->abs(J)J

    .line 58
    .line 59
    .line 60
    move-result-wide p1

    .line 61
    cmp-long v8, v2, p1

    .line 62
    .line 63
    if-gez v8, :cond_1

    .line 64
    .line 65
    move-wide p1, v10

    .line 66
    goto :goto_0

    .line 67
    :cond_1
    move-wide p1, v0

    .line 68
    goto :goto_0

    .line 69
    :catchall_0
    move-exception p1

    .line 70
    goto :goto_1

    .line 71
    :cond_2
    :goto_0
    mul-long p1, p1, v4

    .line 72
    .line 73
    div-long/2addr p1, v6

    .line 74
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/Ys;->a(J)J

    .line 75
    .line 76
    .line 77
    move-result-wide p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    monitor-exit p0

    .line 79
    return-wide p1

    .line 80
    :goto_1
    monitor-exit p0

    .line 81
    throw p1
.end method

.method public final declared-synchronized c(J)J
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    cmp-long v0, p1, v2

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    monitor-exit p0

    .line 14
    return-wide v2

    .line 15
    :cond_0
    :try_start_0
    iget-wide v4, v1, Lcom/google/android/gms/internal/ads/Ys;->c:J

    .line 16
    .line 17
    const-wide/32 v6, 0xf4240

    .line 18
    .line 19
    .line 20
    const-wide/32 v8, 0x15f90

    .line 21
    .line 22
    .line 23
    cmp-long v0, v4, v2

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    mul-long v4, v4, v8

    .line 28
    .line 29
    div-long/2addr v4, v6

    .line 30
    const-wide v2, 0x200000000L

    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    div-long v10, v4, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    .line 37
    invoke-static {v10, v11}, Ljava/lang/Long;->signum(J)I

    .line 38
    .line 39
    .line 40
    mul-long v12, v10, v2

    .line 41
    .line 42
    add-long v12, v12, p1

    .line 43
    .line 44
    const-wide/16 v14, 0x1

    .line 45
    .line 46
    add-long/2addr v10, v14

    .line 47
    mul-long v10, v10, v2

    .line 48
    .line 49
    add-long v10, v10, p1

    .line 50
    .line 51
    cmp-long v0, v12, v4

    .line 52
    .line 53
    if-ltz v0, :cond_2

    .line 54
    .line 55
    move-wide v10, v12

    .line 56
    goto :goto_0

    .line 57
    :catchall_0
    move-exception v0

    .line 58
    goto :goto_1

    .line 59
    :cond_1
    move-wide/from16 v10, p1

    .line 60
    .line 61
    :cond_2
    :goto_0
    mul-long v10, v10, v6

    .line 62
    .line 63
    :try_start_1
    div-long/2addr v10, v8

    .line 64
    invoke-virtual {v1, v10, v11}, Lcom/google/android/gms/internal/ads/Ys;->a(J)J

    .line 65
    .line 66
    .line 67
    move-result-wide v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 68
    monitor-exit p0

    .line 69
    return-wide v2

    .line 70
    :goto_1
    monitor-exit p0

    .line 71
    throw v0
.end method

.method public final declared-synchronized d()J
    .locals 5

    .line 1
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/Ys;->a:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    const-wide v2, 0x7ffffffffffffffeL

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-wide v0

    :cond_1
    :goto_0
    monitor-exit p0

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized e()J
    .locals 2

    .line 1
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/Ys;->b:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized f(J)V
    .locals 5

    .line 1
    monitor-enter p0

    :try_start_0
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/Ys;->a:J

    const-wide v0, 0x7fffffffffffffffL

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, p1, v0

    if-nez v4, :cond_0

    const-wide/16 p1, 0x0

    goto :goto_0

    :cond_0
    move-wide p1, v2

    :goto_0
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/Ys;->b:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/Ys;->c:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized g()Z
    .locals 5

    .line 1
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/Ys;->b:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    monitor-exit p0

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
