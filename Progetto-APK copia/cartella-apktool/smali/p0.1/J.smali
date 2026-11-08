.class public final Lp0/J;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:J

.field public b:J

.field public c:J

.field public final d:Ljava/lang/ThreadLocal;


# direct methods
.method public constructor <init>(J)V
    .locals 1

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
    iput-object v0, p0, Lp0/J;->d:Ljava/lang/ThreadLocal;

    .line 10
    .line 11
    invoke-virtual {p0, p1, p2}, Lp0/J;->g(J)V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final declared-synchronized a(J)J
    .locals 5

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
    invoke-virtual {p0}, Lp0/J;->f()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_2

    .line 18
    .line 19
    iget-wide v0, p0, Lp0/J;->a:J

    .line 20
    .line 21
    const-wide v2, 0x7ffffffffffffffeL

    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    cmp-long v4, v0, v2

    .line 27
    .line 28
    if-nez v4, :cond_1

    .line 29
    .line 30
    iget-object v0, p0, Lp0/J;->d:Ljava/lang/ThreadLocal;

    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Ljava/lang/Long;

    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 42
    .line 43
    .line 44
    move-result-wide v0

    .line 45
    goto :goto_0

    .line 46
    :catchall_0
    move-exception p1

    .line 47
    goto :goto_1

    .line 48
    :cond_1
    :goto_0
    sub-long/2addr v0, p1

    .line 49
    iput-wide v0, p0, Lp0/J;->b:J

    .line 50
    .line 51
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 52
    .line 53
    .line 54
    :cond_2
    iput-wide p1, p0, Lp0/J;->c:J

    .line 55
    .line 56
    iget-wide v0, p0, Lp0/J;->b:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    .line 58
    add-long/2addr p1, v0

    .line 59
    monitor-exit p0

    .line 60
    return-wide p1

    .line 61
    :goto_1
    monitor-exit p0

    .line 62
    throw p1
.end method

.method public final declared-synchronized b(J)J
    .locals 10

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
    iget-wide v3, p0, Lp0/J;->c:J

    .line 14
    .line 15
    cmp-long v2, v3, v0

    .line 16
    .line 17
    if-eqz v2, :cond_2

    .line 18
    .line 19
    sget-object v0, Lp0/M;->a:Ljava/lang/String;

    .line 20
    .line 21
    sget-object v9, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    .line 22
    .line 23
    const-wide/32 v5, 0x15f90

    .line 24
    .line 25
    .line 26
    const-wide/32 v7, 0xf4240

    .line 27
    .line 28
    .line 29
    invoke-static/range {v3 .. v9}, Lp0/M;->Z(JJJLjava/math/RoundingMode;)J

    .line 30
    .line 31
    .line 32
    move-result-wide v0

    .line 33
    const-wide v2, 0x100000000L

    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    add-long/2addr v2, v0

    .line 39
    const-wide v4, 0x200000000L

    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    div-long/2addr v2, v4

    .line 45
    const-wide/16 v6, 0x1

    .line 46
    .line 47
    sub-long v6, v2, v6

    .line 48
    .line 49
    mul-long v6, v6, v4

    .line 50
    .line 51
    add-long/2addr v6, p1

    .line 52
    mul-long v2, v2, v4

    .line 53
    .line 54
    add-long/2addr v2, p1

    .line 55
    sub-long p1, v6, v0

    .line 56
    .line 57
    invoke-static {p1, p2}, Ljava/lang/Math;->abs(J)J

    .line 58
    .line 59
    .line 60
    move-result-wide p1

    .line 61
    sub-long v0, v2, v0

    .line 62
    .line 63
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    .line 64
    .line 65
    .line 66
    move-result-wide v0

    .line 67
    cmp-long v4, p1, v0

    .line 68
    .line 69
    if-gez v4, :cond_1

    .line 70
    .line 71
    move-wide p1, v6

    .line 72
    goto :goto_0

    .line 73
    :cond_1
    move-wide p1, v2

    .line 74
    :cond_2
    :goto_0
    move-wide v0, p1

    .line 75
    goto :goto_1

    .line 76
    :catchall_0
    move-exception p1

    .line 77
    goto :goto_2

    .line 78
    :goto_1
    sget-object p1, Lp0/M;->a:Ljava/lang/String;

    .line 79
    .line 80
    sget-object v6, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    .line 81
    .line 82
    const-wide/32 v2, 0xf4240

    .line 83
    .line 84
    .line 85
    const-wide/32 v4, 0x15f90

    .line 86
    .line 87
    .line 88
    invoke-static/range {v0 .. v6}, Lp0/M;->Z(JJJLjava/math/RoundingMode;)J

    .line 89
    .line 90
    .line 91
    move-result-wide p1

    .line 92
    invoke-virtual {p0, p1, p2}, Lp0/J;->a(J)J

    .line 93
    .line 94
    .line 95
    move-result-wide p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    monitor-exit p0

    .line 97
    return-wide p1

    .line 98
    :goto_2
    monitor-exit p0

    .line 99
    throw p1
.end method

.method public final declared-synchronized c(J)J
    .locals 10

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
    iget-wide v3, p0, Lp0/J;->c:J

    .line 14
    .line 15
    cmp-long v2, v3, v0

    .line 16
    .line 17
    if-eqz v2, :cond_2

    .line 18
    .line 19
    sget-object v0, Lp0/M;->a:Ljava/lang/String;

    .line 20
    .line 21
    sget-object v9, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    .line 22
    .line 23
    const-wide/32 v5, 0x15f90

    .line 24
    .line 25
    .line 26
    const-wide/32 v7, 0xf4240

    .line 27
    .line 28
    .line 29
    invoke-static/range {v3 .. v9}, Lp0/M;->Z(JJJLjava/math/RoundingMode;)J

    .line 30
    .line 31
    .line 32
    move-result-wide v0

    .line 33
    const-wide v2, 0x200000000L

    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    div-long v4, v0, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    .line 40
    invoke-static {v4, v5}, Ljava/lang/Long;->signum(J)I

    .line 41
    .line 42
    .line 43
    mul-long v6, v4, v2

    .line 44
    .line 45
    add-long/2addr v6, p1

    .line 46
    const-wide/16 v8, 0x1

    .line 47
    .line 48
    add-long/2addr v4, v8

    .line 49
    mul-long v4, v4, v2

    .line 50
    .line 51
    add-long/2addr v4, p1

    .line 52
    cmp-long p1, v6, v0

    .line 53
    .line 54
    if-ltz p1, :cond_1

    .line 55
    .line 56
    move-wide p1, v6

    .line 57
    goto :goto_0

    .line 58
    :cond_1
    move-wide p1, v4

    .line 59
    :cond_2
    :goto_0
    move-wide v0, p1

    .line 60
    goto :goto_1

    .line 61
    :catchall_0
    move-exception p1

    .line 62
    goto :goto_2

    .line 63
    :goto_1
    :try_start_1
    sget-object p1, Lp0/M;->a:Ljava/lang/String;

    .line 64
    .line 65
    sget-object v6, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    .line 66
    .line 67
    const-wide/32 v2, 0xf4240

    .line 68
    .line 69
    .line 70
    const-wide/32 v4, 0x15f90

    .line 71
    .line 72
    .line 73
    invoke-static/range {v0 .. v6}, Lp0/M;->Z(JJJLjava/math/RoundingMode;)J

    .line 74
    .line 75
    .line 76
    move-result-wide p1

    .line 77
    invoke-virtual {p0, p1, p2}, Lp0/J;->a(J)J

    .line 78
    .line 79
    .line 80
    move-result-wide p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 81
    monitor-exit p0

    .line 82
    return-wide p1

    .line 83
    :goto_2
    monitor-exit p0

    .line 84
    throw p1
.end method

.method public final declared-synchronized d()J
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v0, p0, Lp0/J;->a:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    const-wide v2, 0x7fffffffffffffffL

    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    cmp-long v4, v0, v2

    .line 10
    .line 11
    if-eqz v4, :cond_0

    .line 12
    .line 13
    const-wide v2, 0x7ffffffffffffffeL

    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    cmp-long v4, v0, v2

    .line 19
    .line 20
    if-nez v4, :cond_1

    .line 21
    .line 22
    :cond_0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    :cond_1
    monitor-exit p0

    .line 28
    return-wide v0

    .line 29
    :catchall_0
    move-exception v0

    .line 30
    monitor-exit p0

    .line 31
    throw v0
.end method

.method public final declared-synchronized e()J
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v0, p0, Lp0/J;->b:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return-wide v0

    .line 6
    :catchall_0
    move-exception v0

    .line 7
    monitor-exit p0

    .line 8
    throw v0
.end method

.method public final declared-synchronized f()Z
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v0, p0, Lp0/J;->b:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    cmp-long v4, v0, v2

    .line 10
    .line 11
    if-eqz v4, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    monitor-exit p0

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

.method public final declared-synchronized g(J)V
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iput-wide p1, p0, Lp0/J;->a:J

    .line 3
    .line 4
    const-wide v0, 0x7fffffffffffffffL

    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    cmp-long v4, p1, v0

    .line 15
    .line 16
    if-nez v4, :cond_0

    .line 17
    .line 18
    const-wide/16 p1, 0x0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move-wide p1, v2

    .line 22
    :goto_0
    iput-wide p1, p0, Lp0/J;->b:J

    .line 23
    .line 24
    iput-wide v2, p0, Lp0/J;->c:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    .line 26
    monitor-exit p0

    .line 27
    return-void

    .line 28
    :catchall_0
    move-exception p1

    .line 29
    monitor-exit p0

    .line 30
    throw p1
.end method

.method public final declared-synchronized h(JJZ)V
    .locals 8

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v0, p0, Lp0/J;->a:J

    .line 3
    .line 4
    const-wide v2, 0x7ffffffffffffffeL

    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    const/4 v5, 0x1

    .line 11
    cmp-long v6, v0, v2

    .line 12
    .line 13
    if-nez v6, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/H1;->i(Z)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lp0/J;->f()Z

    .line 22
    .line 23
    .line 24
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    monitor-exit p0

    .line 28
    return-void

    .line 29
    :cond_1
    if-eqz p5, :cond_2

    .line 30
    .line 31
    :try_start_1
    iget-object p3, p0, Lp0/J;->d:Ljava/lang/ThreadLocal;

    .line 32
    .line 33
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {p3, p1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    goto :goto_4

    .line 41
    :catchall_0
    move-exception p1

    .line 42
    goto :goto_5

    .line 43
    :cond_2
    const-wide/16 p1, 0x0

    .line 44
    .line 45
    move-wide v2, p1

    .line 46
    move-wide v0, p3

    .line 47
    :goto_1
    invoke-virtual {p0}, Lp0/J;->f()Z

    .line 48
    .line 49
    .line 50
    move-result p5

    .line 51
    if-nez p5, :cond_7

    .line 52
    .line 53
    cmp-long p5, p3, p1

    .line 54
    .line 55
    if-nez p5, :cond_3

    .line 56
    .line 57
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    .line 58
    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_3
    cmp-long p5, v0, p1

    .line 62
    .line 63
    if-lez p5, :cond_4

    .line 64
    .line 65
    const/4 p5, 0x1

    .line 66
    goto :goto_2

    .line 67
    :cond_4
    const/4 p5, 0x0

    .line 68
    :goto_2
    invoke-static {p5}, Lcom/google/android/gms/internal/measurement/H1;->i(Z)V

    .line 69
    .line 70
    .line 71
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 72
    .line 73
    .line 74
    move-result-wide v6

    .line 75
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V

    .line 76
    .line 77
    .line 78
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 79
    .line 80
    .line 81
    move-result-wide v0

    .line 82
    sub-long/2addr v0, v6

    .line 83
    add-long/2addr v2, v0

    .line 84
    cmp-long p5, v2, p3

    .line 85
    .line 86
    if-ltz p5, :cond_6

    .line 87
    .line 88
    invoke-virtual {p0}, Lp0/J;->f()Z

    .line 89
    .line 90
    .line 91
    move-result p5

    .line 92
    if-eqz p5, :cond_5

    .line 93
    .line 94
    goto :goto_3

    .line 95
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    .line 96
    .line 97
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 98
    .line 99
    .line 100
    const-string p2, "TimestampAdjuster failed to initialize in "

    .line 101
    .line 102
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {p1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    const-string p2, " milliseconds"

    .line 109
    .line 110
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    new-instance p2, Ljava/util/concurrent/TimeoutException;

    .line 118
    .line 119
    invoke-direct {p2, p1}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 123
    :cond_6
    :goto_3
    sub-long v0, p3, v2

    .line 124
    .line 125
    goto :goto_1

    .line 126
    :cond_7
    :goto_4
    monitor-exit p0

    .line 127
    return-void

    .line 128
    :goto_5
    monitor-exit p0

    .line 129
    throw p1
.end method
