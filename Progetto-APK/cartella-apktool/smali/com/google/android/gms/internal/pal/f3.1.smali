.class public final Lcom/google/android/gms/internal/pal/f3;
.super Lcom/google/android/gms/internal/pal/y4;
.source "SourceFile"


# virtual methods
.method public E(Lcom/google/android/gms/internal/pal/j3;)Lcom/google/android/gms/internal/pal/i3;
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/pal/i3;->c:Lcom/google/android/gms/internal/pal/i3;

    .line 2
    .line 3
    monitor-enter p1

    .line 4
    :try_start_0
    iget-object v1, p1, Lcom/google/android/gms/internal/pal/j3;->S:Lcom/google/android/gms/internal/pal/i3;

    .line 5
    .line 6
    if-eq v1, v0, :cond_0

    .line 7
    .line 8
    iput-object v0, p1, Lcom/google/android/gms/internal/pal/j3;->S:Lcom/google/android/gms/internal/pal/i3;

    .line 9
    .line 10
    :cond_0
    monitor-exit p1

    .line 11
    return-object v1

    .line 12
    :catchall_0
    move-exception v0

    .line 13
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    throw v0
.end method

.method public W(Lcom/google/android/gms/internal/pal/i3;Lcom/google/android/gms/internal/pal/i3;)V
    .locals 0

    .line 1
    iput-object p2, p1, Lcom/google/android/gms/internal/pal/i3;->b:Lcom/google/android/gms/internal/pal/i3;

    return-void
.end method

.method public e0(Lcom/google/android/gms/internal/pal/i3;Ljava/lang/Thread;)V
    .locals 0

    .line 1
    iput-object p2, p1, Lcom/google/android/gms/internal/pal/i3;->a:Ljava/lang/Thread;

    return-void
.end method

.method public f(Lcom/google/android/gms/internal/pal/j3;)Lcom/google/android/gms/internal/pal/d3;
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/pal/d3;->b:Lcom/google/android/gms/internal/pal/d3;

    .line 2
    .line 3
    monitor-enter p1

    .line 4
    :try_start_0
    iget-object v1, p1, Lcom/google/android/gms/internal/pal/j3;->R:Lcom/google/android/gms/internal/pal/d3;

    .line 5
    .line 6
    if-eq v1, v0, :cond_0

    .line 7
    .line 8
    iput-object v0, p1, Lcom/google/android/gms/internal/pal/j3;->R:Lcom/google/android/gms/internal/pal/d3;

    .line 9
    .line 10
    :cond_0
    monitor-exit p1

    .line 11
    return-object v1

    .line 12
    :catchall_0
    move-exception v0

    .line 13
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    throw v0
.end method

.method public l0(Lcom/google/android/gms/internal/pal/j3;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .line 1
    monitor-enter p1

    .line 2
    :try_start_0
    iget-object v0, p1, Lcom/google/android/gms/internal/pal/j3;->Q:Ljava/lang/Object;

    .line 3
    .line 4
    if-ne v0, p2, :cond_0

    .line 5
    .line 6
    iput-object p3, p1, Lcom/google/android/gms/internal/pal/j3;->Q:Ljava/lang/Object;

    .line 7
    .line 8
    monitor-exit p1

    .line 9
    const/4 p1, 0x1

    .line 10
    return p1

    .line 11
    :catchall_0
    move-exception p2

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    monitor-exit p1

    .line 14
    const/4 p1, 0x0

    .line 15
    return p1

    .line 16
    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    throw p2
.end method

.method public p0(Lcom/google/android/gms/internal/pal/j3;Lcom/google/android/gms/internal/pal/i3;Lcom/google/android/gms/internal/pal/i3;)Z
    .locals 1

    .line 1
    monitor-enter p1

    .line 2
    :try_start_0
    iget-object v0, p1, Lcom/google/android/gms/internal/pal/j3;->S:Lcom/google/android/gms/internal/pal/i3;

    .line 3
    .line 4
    if-ne v0, p2, :cond_0

    .line 5
    .line 6
    iput-object p3, p1, Lcom/google/android/gms/internal/pal/j3;->S:Lcom/google/android/gms/internal/pal/i3;

    .line 7
    .line 8
    monitor-exit p1

    .line 9
    const/4 p1, 0x1

    .line 10
    return p1

    .line 11
    :catchall_0
    move-exception p2

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    monitor-exit p1

    .line 14
    const/4 p1, 0x0

    .line 15
    return p1

    .line 16
    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    throw p2
.end method
