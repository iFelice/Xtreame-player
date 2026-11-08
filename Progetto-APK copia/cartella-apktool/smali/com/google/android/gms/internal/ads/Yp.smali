.class public final Lcom/google/android/gms/internal/ads/Yp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/Lw;


# instance fields
.field public final G:Lcom/google/android/gms/internal/ads/Up;

.field public final H:LF5/g;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/Up;LF5/g;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Yp;->G:Lcom/google/android/gms/internal/ads/Up;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Yp;->H:LF5/g;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final c(Lcom/google/android/gms/internal/ads/Iw;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    .line 1
    sget-object p2, Lcom/google/android/gms/internal/ads/Q7;->J5:Lcom/google/android/gms/internal/ads/J7;

    .line 2
    .line 3
    sget-object p3, Ll3/q;->d:Ll3/q;

    .line 4
    .line 5
    iget-object p3, p3, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 6
    .line 7
    invoke-virtual {p3, p2}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    check-cast p2, Ljava/lang/Boolean;

    .line 12
    .line 13
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 14
    .line 15
    .line 16
    move-result p2

    .line 17
    if-eqz p2, :cond_0

    .line 18
    .line 19
    sget-object p2, Lcom/google/android/gms/internal/ads/Iw;->K:Lcom/google/android/gms/internal/ads/Iw;

    .line 20
    .line 21
    if-ne p2, p1, :cond_0

    .line 22
    .line 23
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Yp;->G:Lcom/google/android/gms/internal/ads/Up;

    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Up;->c()J

    .line 26
    .line 27
    .line 28
    move-result-wide p2

    .line 29
    const-wide/16 v0, 0x0

    .line 30
    .line 31
    cmp-long v2, p2, v0

    .line 32
    .line 33
    if-eqz v2, :cond_0

    .line 34
    .line 35
    sget-object p2, Lk3/l;->A:Lk3/l;

    .line 36
    .line 37
    iget-object p2, p2, Lk3/l;->j:LP3/b;

    .line 38
    .line 39
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 43
    .line 44
    .line 45
    move-result-wide p2

    .line 46
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Up;->c()J

    .line 47
    .line 48
    .line 49
    move-result-wide v0

    .line 50
    sub-long/2addr p2, v0

    .line 51
    monitor-enter p1

    .line 52
    :try_start_0
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/Up;->j:Ljava/lang/Object;

    .line 53
    .line 54
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 55
    :try_start_1
    iput-wide p2, p1, Lcom/google/android/gms/internal/ads/Up;->e:J

    .line 56
    .line 57
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 58
    monitor-exit p1

    .line 59
    return-void

    .line 60
    :catchall_0
    move-exception p2

    .line 61
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 62
    :try_start_3
    throw p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 63
    :catchall_1
    move-exception p2

    .line 64
    monitor-exit p1

    .line 65
    throw p2

    .line 66
    :cond_0
    return-void
.end method

.method public final d(Lcom/google/android/gms/internal/ads/Iw;Ljava/lang/String;)V
    .locals 4

    .line 1
    sget-object p2, Lcom/google/android/gms/internal/ads/Q7;->J5:Lcom/google/android/gms/internal/ads/J7;

    .line 2
    .line 3
    sget-object v0, Ll3/q;->d:Ll3/q;

    .line 4
    .line 5
    iget-object v0, v0, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 6
    .line 7
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    check-cast p2, Ljava/lang/Boolean;

    .line 12
    .line 13
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 14
    .line 15
    .line 16
    move-result p2

    .line 17
    if-eqz p2, :cond_0

    .line 18
    .line 19
    sget-object p2, Lcom/google/android/gms/internal/ads/Iw;->K:Lcom/google/android/gms/internal/ads/Iw;

    .line 20
    .line 21
    if-ne p2, p1, :cond_0

    .line 22
    .line 23
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Yp;->G:Lcom/google/android/gms/internal/ads/Up;

    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Up;->c()J

    .line 26
    .line 27
    .line 28
    move-result-wide v0

    .line 29
    const-wide/16 v2, 0x0

    .line 30
    .line 31
    cmp-long p2, v0, v2

    .line 32
    .line 33
    if-eqz p2, :cond_0

    .line 34
    .line 35
    sget-object p2, Lk3/l;->A:Lk3/l;

    .line 36
    .line 37
    iget-object p2, p2, Lk3/l;->j:LP3/b;

    .line 38
    .line 39
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 43
    .line 44
    .line 45
    move-result-wide v0

    .line 46
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Up;->c()J

    .line 47
    .line 48
    .line 49
    move-result-wide v2

    .line 50
    sub-long/2addr v0, v2

    .line 51
    monitor-enter p1

    .line 52
    :try_start_0
    iget-object p2, p1, Lcom/google/android/gms/internal/ads/Up;->j:Ljava/lang/Object;

    .line 53
    .line 54
    monitor-enter p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 55
    :try_start_1
    iput-wide v0, p1, Lcom/google/android/gms/internal/ads/Up;->e:J

    .line 56
    .line 57
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 58
    monitor-exit p1

    .line 59
    return-void

    .line 60
    :catchall_0
    move-exception v0

    .line 61
    :try_start_2
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 62
    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 63
    :catchall_1
    move-exception p2

    .line 64
    monitor-exit p1

    .line 65
    throw p2

    .line 66
    :cond_0
    return-void
.end method

.method public final e(Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final i(Lcom/google/android/gms/internal/ads/Iw;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object p2, Lcom/google/android/gms/internal/ads/Q7;->J5:Lcom/google/android/gms/internal/ads/J7;

    .line 2
    .line 3
    sget-object v0, Ll3/q;->d:Ll3/q;

    .line 4
    .line 5
    iget-object v0, v0, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 6
    .line 7
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    check-cast p2, Ljava/lang/Boolean;

    .line 12
    .line 13
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 14
    .line 15
    .line 16
    move-result p2

    .line 17
    if-nez p2, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    sget-object p2, Lcom/google/android/gms/internal/ads/Iw;->K:Lcom/google/android/gms/internal/ads/Iw;

    .line 21
    .line 22
    if-ne p2, p1, :cond_1

    .line 23
    .line 24
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Yp;->G:Lcom/google/android/gms/internal/ads/Up;

    .line 25
    .line 26
    sget-object p2, Lk3/l;->A:Lk3/l;

    .line 27
    .line 28
    iget-object p2, p2, Lk3/l;->j:LP3/b;

    .line 29
    .line 30
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 34
    .line 35
    .line 36
    move-result-wide v0

    .line 37
    monitor-enter p1

    .line 38
    :try_start_0
    iget-object p2, p1, Lcom/google/android/gms/internal/ads/Up;->i:Ljava/lang/Object;

    .line 39
    .line 40
    monitor-enter p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 41
    :try_start_1
    iput-wide v0, p1, Lcom/google/android/gms/internal/ads/Up;->d:J

    .line 42
    .line 43
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 44
    monitor-exit p1

    .line 45
    return-void

    .line 46
    :catchall_0
    move-exception v0

    .line 47
    :try_start_2
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 48
    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 49
    :catchall_1
    move-exception p2

    .line 50
    monitor-exit p1

    .line 51
    throw p2

    .line 52
    :cond_1
    sget-object p2, Lcom/google/android/gms/internal/ads/Iw;->f0:Lcom/google/android/gms/internal/ads/Iw;

    .line 53
    .line 54
    if-eq p2, p1, :cond_3

    .line 55
    .line 56
    sget-object p2, Lcom/google/android/gms/internal/ads/Iw;->J:Lcom/google/android/gms/internal/ads/Iw;

    .line 57
    .line 58
    if-ne p2, p1, :cond_2

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_2
    :goto_0
    return-void

    .line 62
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Yp;->G:Lcom/google/android/gms/internal/ads/Up;

    .line 63
    .line 64
    sget-object p2, Lk3/l;->A:Lk3/l;

    .line 65
    .line 66
    iget-object p2, p2, Lk3/l;->j:LP3/b;

    .line 67
    .line 68
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 69
    .line 70
    .line 71
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 72
    .line 73
    .line 74
    move-result-wide v0

    .line 75
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ads/Up;->e(J)V

    .line 76
    .line 77
    .line 78
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Yp;->H:LF5/g;

    .line 79
    .line 80
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/Yp;->G:Lcom/google/android/gms/internal/ads/Up;

    .line 81
    .line 82
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/Up;->d()J

    .line 83
    .line 84
    .line 85
    move-result-wide v0

    .line 86
    new-instance p2, Lcom/google/android/gms/internal/ads/A0;

    .line 87
    .line 88
    invoke-direct {p2, p1, v0, v1}, Lcom/google/android/gms/internal/ads/A0;-><init>(LF5/g;J)V

    .line 89
    .line 90
    .line 91
    iget-object p1, p1, Lf/H;->b:Ljava/lang/Object;

    .line 92
    .line 93
    check-cast p1, Lcom/google/android/gms/internal/ads/Rp;

    .line 94
    .line 95
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/Rp;->a(Lcom/google/android/gms/internal/ads/Dw;)V

    .line 96
    .line 97
    .line 98
    return-void
.end method
