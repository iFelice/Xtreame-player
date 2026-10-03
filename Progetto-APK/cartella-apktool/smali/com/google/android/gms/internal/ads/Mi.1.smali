.class public final Lcom/google/android/gms/internal/ads/Mi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/Ij;
.implements Ll3/a;
.implements Lcom/google/android/gms/internal/ads/Zj;
.implements Lcom/google/android/gms/internal/ads/Aj;
.implements Lcom/google/android/gms/internal/ads/pj;
.implements Lcom/google/android/gms/internal/ads/ok;


# instance fields
.field public final G:LP3/a;

.field public final H:Lcom/google/android/gms/internal/ads/fe;


# direct methods
.method public constructor <init>(LP3/a;Lcom/google/android/gms/internal/ads/fe;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Mi;->G:LP3/a;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Mi;->H:Lcom/google/android/gms/internal/ads/fe;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final C(Lcom/google/android/gms/internal/ads/Tv;)V
    .locals 6

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Mi;->G:LP3/a;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Mi;->H:Lcom/google/android/gms/internal/ads/fe;

    .line 4
    .line 5
    check-cast p1, LP3/b;

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 11
    .line 12
    .line 13
    move-result-wide v1

    .line 14
    iget-object p1, v0, Lcom/google/android/gms/internal/ads/fe;->d:Ljava/lang/Object;

    .line 15
    .line 16
    monitor-enter p1

    .line 17
    :try_start_0
    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/fe;->k:J

    .line 18
    .line 19
    const-wide/16 v3, -0x1

    .line 20
    .line 21
    cmp-long v5, v1, v3

    .line 22
    .line 23
    if-eqz v5, :cond_0

    .line 24
    .line 25
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/fe;->b:Lcom/google/android/gms/internal/ads/oe;

    .line 26
    .line 27
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/oe;->b(Lcom/google/android/gms/internal/ads/fe;)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catchall_0
    move-exception v0

    .line 32
    goto :goto_1

    .line 33
    :cond_0
    :goto_0
    monitor-exit p1

    .line 34
    return-void

    .line 35
    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    throw v0
.end method

.method public final E(Lcom/google/android/gms/internal/ads/h7;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Mi;->H:Lcom/google/android/gms/internal/ads/fe;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/fe;->d:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/fe;->b:Lcom/google/android/gms/internal/ads/oe;

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/oe;->e()V

    .line 9
    .line 10
    .line 11
    monitor-exit v0

    .line 12
    return-void

    .line 13
    :catchall_0
    move-exception p1

    .line 14
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    throw p1
.end method

.method public final a()V
    .locals 0

    .line 1
    return-void
.end method

.method public final b()V
    .locals 0

    .line 1
    return-void
.end method

.method public final c(Ll3/b1;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Mi;->H:Lcom/google/android/gms/internal/ads/fe;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/fe;->d:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/fe;->a:LP3/a;

    .line 7
    .line 8
    check-cast v2, LP3/b;

    .line 9
    .line 10
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 14
    .line 15
    .line 16
    move-result-wide v2

    .line 17
    iput-wide v2, v0, Lcom/google/android/gms/internal/ads/fe;->j:J

    .line 18
    .line 19
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/fe;->b:Lcom/google/android/gms/internal/ads/oe;

    .line 20
    .line 21
    invoke-virtual {v0, p1, v2, v3}, Lcom/google/android/gms/internal/ads/oe;->g(Ll3/b1;J)V

    .line 22
    .line 23
    .line 24
    monitor-exit v1

    .line 25
    return-void

    .line 26
    :catchall_0
    move-exception p1

    .line 27
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    throw p1
.end method

.method public final g(Lcom/google/android/gms/internal/ads/dd;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final m(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public final n()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Mi;->H:Lcom/google/android/gms/internal/ads/fe;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/fe;->d:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/fe;->k:J

    .line 7
    .line 8
    const-wide/16 v4, -0x1

    .line 9
    .line 10
    cmp-long v6, v2, v4

    .line 11
    .line 12
    if-eqz v6, :cond_0

    .line 13
    .line 14
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/fe;->a:LP3/a;

    .line 15
    .line 16
    check-cast v2, LP3/b;

    .line 17
    .line 18
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 22
    .line 23
    .line 24
    move-result-wide v2

    .line 25
    iput-wide v2, v0, Lcom/google/android/gms/internal/ads/fe;->h:J

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :catchall_0
    move-exception v0

    .line 29
    goto :goto_1

    .line 30
    :cond_0
    :goto_0
    monitor-exit v1

    .line 31
    return-void

    .line 32
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    throw v0
.end method

.method public final p(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public final t(Lcom/google/android/gms/internal/ads/h7;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Mi;->H:Lcom/google/android/gms/internal/ads/fe;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/fe;->d:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/fe;->b:Lcom/google/android/gms/internal/ads/oe;

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/oe;->f()V

    .line 9
    .line 10
    .line 11
    monitor-exit v0

    .line 12
    return-void

    .line 13
    :catchall_0
    move-exception p1

    .line 14
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    throw p1
.end method

.method public final w(Lcom/google/android/gms/internal/ads/h7;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final x()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Mi;->H:Lcom/google/android/gms/internal/ads/fe;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/fe;->d:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/fe;->k:J

    .line 7
    .line 8
    const-wide/16 v4, -0x1

    .line 9
    .line 10
    cmp-long v6, v2, v4

    .line 11
    .line 12
    if-eqz v6, :cond_0

    .line 13
    .line 14
    new-instance v2, Lcom/google/android/gms/internal/ads/ee;

    .line 15
    .line 16
    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/ee;-><init>(Lcom/google/android/gms/internal/ads/fe;)V

    .line 17
    .line 18
    .line 19
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/fe;->a:LP3/a;

    .line 20
    .line 21
    check-cast v3, LP3/b;

    .line 22
    .line 23
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 27
    .line 28
    .line 29
    move-result-wide v3

    .line 30
    iput-wide v3, v2, Lcom/google/android/gms/internal/ads/ee;->a:J

    .line 31
    .line 32
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/fe;->c:Ljava/util/LinkedList;

    .line 33
    .line 34
    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/fe;->i:J

    .line 38
    .line 39
    const-wide/16 v4, 0x1

    .line 40
    .line 41
    add-long/2addr v2, v4

    .line 42
    iput-wide v2, v0, Lcom/google/android/gms/internal/ads/fe;->i:J

    .line 43
    .line 44
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/fe;->b:Lcom/google/android/gms/internal/ads/oe;

    .line 45
    .line 46
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/oe;->c()V

    .line 47
    .line 48
    .line 49
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/fe;->b:Lcom/google/android/gms/internal/ads/oe;

    .line 50
    .line 51
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/oe;->b(Lcom/google/android/gms/internal/ads/fe;)V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :catchall_0
    move-exception v0

    .line 56
    goto :goto_1

    .line 57
    :cond_0
    :goto_0
    monitor-exit v1

    .line 58
    return-void

    .line 59
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    throw v0
.end method

.method public final z(Lcom/google/android/gms/internal/ads/Wc;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final zza()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Mi;->H:Lcom/google/android/gms/internal/ads/fe;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/fe;->d:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/fe;->k:J

    .line 7
    .line 8
    const-wide/16 v4, -0x1

    .line 9
    .line 10
    cmp-long v6, v2, v4

    .line 11
    .line 12
    if-eqz v6, :cond_0

    .line 13
    .line 14
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/fe;->c:Ljava/util/LinkedList;

    .line 15
    .line 16
    invoke-virtual {v2}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-nez v2, :cond_0

    .line 21
    .line 22
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/fe;->c:Ljava/util/LinkedList;

    .line 23
    .line 24
    invoke-virtual {v2}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    check-cast v2, Lcom/google/android/gms/internal/ads/ee;

    .line 29
    .line 30
    iget-wide v6, v2, Lcom/google/android/gms/internal/ads/ee;->b:J

    .line 31
    .line 32
    cmp-long v3, v6, v4

    .line 33
    .line 34
    if-nez v3, :cond_0

    .line 35
    .line 36
    iget-object v3, v2, Lcom/google/android/gms/internal/ads/ee;->c:Lcom/google/android/gms/internal/ads/fe;

    .line 37
    .line 38
    iget-object v3, v3, Lcom/google/android/gms/internal/ads/fe;->a:LP3/a;

    .line 39
    .line 40
    check-cast v3, LP3/b;

    .line 41
    .line 42
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 46
    .line 47
    .line 48
    move-result-wide v3

    .line 49
    iput-wide v3, v2, Lcom/google/android/gms/internal/ads/ee;->b:J

    .line 50
    .line 51
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/fe;->b:Lcom/google/android/gms/internal/ads/oe;

    .line 52
    .line 53
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/oe;->b(Lcom/google/android/gms/internal/ads/fe;)V

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :catchall_0
    move-exception v0

    .line 58
    goto :goto_1

    .line 59
    :cond_0
    :goto_0
    monitor-exit v1

    .line 60
    return-void

    .line 61
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    throw v0
.end method

.method public final zzb()V
    .locals 0

    return-void
.end method

.method public final zzc()V
    .locals 0

    return-void
.end method

.method public final zzh()V
    .locals 0

    return-void
.end method

.method public final zzr()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Mi;->H:Lcom/google/android/gms/internal/ads/fe;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/fe;->d:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/fe;->k:J

    .line 7
    .line 8
    const-wide/16 v4, -0x1

    .line 9
    .line 10
    cmp-long v6, v2, v4

    .line 11
    .line 12
    if-eqz v6, :cond_0

    .line 13
    .line 14
    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/fe;->g:J

    .line 15
    .line 16
    cmp-long v6, v2, v4

    .line 17
    .line 18
    if-nez v6, :cond_0

    .line 19
    .line 20
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/fe;->a:LP3/a;

    .line 21
    .line 22
    check-cast v2, LP3/b;

    .line 23
    .line 24
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 28
    .line 29
    .line 30
    move-result-wide v2

    .line 31
    iput-wide v2, v0, Lcom/google/android/gms/internal/ads/fe;->g:J

    .line 32
    .line 33
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/fe;->b:Lcom/google/android/gms/internal/ads/oe;

    .line 34
    .line 35
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/oe;->b(Lcom/google/android/gms/internal/ads/fe;)V

    .line 36
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
    :goto_0
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/fe;->b:Lcom/google/android/gms/internal/ads/oe;

    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/oe;->d()V

    .line 44
    .line 45
    .line 46
    monitor-exit v1

    .line 47
    return-void

    .line 48
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    throw v0
.end method
