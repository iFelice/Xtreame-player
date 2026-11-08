.class public final Lcom/google/android/gms/internal/ads/Aw;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/iv;

.field public final b:Lcom/google/android/gms/internal/ads/rB;

.field public c:Z

.field public d:Z


# direct methods
.method public constructor <init>(La3/b;Lcom/google/android/gms/internal/ads/Xu;Lcom/google/android/gms/internal/ads/iv;)V
    .locals 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/Aw;->c:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/Aw;->d:Z

    .line 8
    .line 9
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/Aw;->a:Lcom/google/android/gms/internal/ads/iv;

    .line 10
    .line 11
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    iget-object v0, p3, Lcom/google/android/gms/internal/ads/iv;->b:Lcom/google/android/gms/internal/ads/Om;

    .line 15
    .line 16
    iget-object v1, p2, Lcom/google/android/gms/internal/ads/Xu;->H:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v1, Lcom/google/android/gms/internal/ads/vv;

    .line 19
    .line 20
    check-cast v1, Lcom/google/android/gms/internal/ads/gv;

    .line 21
    .line 22
    iget-object v2, p3, Lcom/google/android/gms/internal/ads/iv;->a:Lcom/google/android/gms/internal/ads/uv;

    .line 23
    .line 24
    const/4 v3, 0x0

    .line 25
    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/gms/internal/ads/gv;->b(Lcom/google/android/gms/internal/ads/Om;Lcom/google/android/gms/internal/ads/uv;Lcom/google/android/gms/internal/ads/cj;)LD4/b;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    new-instance v7, Lcom/google/android/gms/internal/ads/Sa;

    .line 30
    .line 31
    const/16 v6, 0x8

    .line 32
    .line 33
    move-object v1, v7

    .line 34
    move-object v2, p0

    .line 35
    move-object v3, p2

    .line 36
    move-object v4, p1

    .line 37
    move-object v5, p3

    .line 38
    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/Sa;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 39
    .line 40
    .line 41
    iget-object p1, p3, Lcom/google/android/gms/internal/ads/iv;->e:Ljava/util/concurrent/Executor;

    .line 42
    .line 43
    invoke-static {v0, v7, p1}, Lcom/google/android/gms/internal/ads/Cw;->d2(LD4/b;Lcom/google/android/gms/internal/ads/RB;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/JB;

    .line 44
    .line 45
    .line 46
    move-result-object p3

    .line 47
    new-instance v0, Lcom/google/android/gms/internal/ads/Va;

    .line 48
    .line 49
    const/16 v1, 0x10

    .line 50
    .line 51
    invoke-direct {v0, v1, p0, p2}, Lcom/google/android/gms/internal/ads/Va;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    const-class p2, Ljava/lang/Exception;

    .line 55
    .line 56
    invoke-static {p3, p2, v0, p1}, Lcom/google/android/gms/internal/ads/Cw;->D1(LD4/b;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/RB;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/rB;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Aw;->b:Lcom/google/android/gms/internal/ads/rB;

    .line 61
    .line 62
    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Lcom/google/android/gms/internal/ads/iv;)Lcom/google/android/gms/internal/ads/rB;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/Aw;->d:Z

    .line 3
    .line 4
    if-nez v0, :cond_1

    .line 5
    .line 6
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/Aw;->c:Z

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Aw;->a:Lcom/google/android/gms/internal/ads/iv;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/iv;->g:Lcom/google/android/gms/internal/ads/rw;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/iv;->g:Lcom/google/android/gms/internal/ads/rw;

    .line 18
    .line 19
    if-eqz p1, :cond_1

    .line 20
    .line 21
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    if-eqz p1, :cond_1

    .line 26
    .line 27
    const/4 p1, 0x1

    .line 28
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/Aw;->c:Z

    .line 29
    .line 30
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Aw;->b:Lcom/google/android/gms/internal/ads/rB;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    .line 32
    monitor-exit p0

    .line 33
    return-object p1

    .line 34
    :catchall_0
    move-exception p1

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    :goto_0
    monitor-exit p0

    .line 37
    const/4 p1, 0x0

    .line 38
    return-object p1

    .line 39
    :goto_1
    monitor-exit p0

    .line 40
    throw p1
.end method

.method public final declared-synchronized b(Lcom/google/android/gms/internal/ads/Om;)V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/ads/hh;

    .line 3
    .line 4
    const/16 v1, 0x15

    .line 5
    .line 6
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/hh;-><init>(I)V

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Aw;->a:Lcom/google/android/gms/internal/ads/iv;

    .line 10
    .line 11
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/iv;->e:Ljava/util/concurrent/Executor;

    .line 12
    .line 13
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Aw;->b:Lcom/google/android/gms/internal/ads/rB;

    .line 14
    .line 15
    invoke-static {v2, v0, v1}, Lcom/google/android/gms/internal/ads/Cw;->d2(LD4/b;Lcom/google/android/gms/internal/ads/RB;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/JB;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Aw;->a:Lcom/google/android/gms/internal/ads/iv;

    .line 20
    .line 21
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/iv;->e:Ljava/util/concurrent/Executor;

    .line 22
    .line 23
    invoke-static {v0, p1, v1}, Lcom/google/android/gms/internal/ads/Cw;->h2(LD4/b;Lcom/google/android/gms/internal/ads/dC;Ljava/util/concurrent/Executor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
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
