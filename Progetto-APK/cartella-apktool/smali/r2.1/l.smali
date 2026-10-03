.class public final Lr2/l;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;

.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;

.field public g:Ljava/lang/Object;

.field public h:Ljava/lang/Object;

.field public i:Ljava/lang/Object;

.field public j:Ljava/lang/Object;

.field public k:Ljava/lang/Object;


# direct methods
.method public constructor <init>(LA0/w;Lcom/google/android/gms/internal/ads/x;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/K4;

    .line 2
    .line 3
    new-instance v1, Landroid/os/Handler;

    .line 4
    .line 5
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/K4;-><init>(Landroid/os/Handler;)V

    .line 13
    .line 14
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    .line 17
    .line 18
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 19
    .line 20
    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v1, p0, Lr2/l;->a:Ljava/lang/Object;

    .line 24
    .line 25
    new-instance v1, Ljava/util/HashSet;

    .line 26
    .line 27
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v1, p0, Lr2/l;->b:Ljava/lang/Object;

    .line 31
    .line 32
    new-instance v1, Ljava/util/concurrent/PriorityBlockingQueue;

    .line 33
    .line 34
    invoke-direct {v1}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object v1, p0, Lr2/l;->c:Ljava/lang/Object;

    .line 38
    .line 39
    new-instance v1, Ljava/util/concurrent/PriorityBlockingQueue;

    .line 40
    .line 41
    invoke-direct {v1}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    .line 42
    .line 43
    .line 44
    iput-object v1, p0, Lr2/l;->d:Ljava/lang/Object;

    .line 45
    .line 46
    new-instance v1, Ljava/util/ArrayList;

    .line 47
    .line 48
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 49
    .line 50
    .line 51
    iput-object v1, p0, Lr2/l;->e:Ljava/lang/Object;

    .line 52
    .line 53
    new-instance v1, Ljava/util/ArrayList;

    .line 54
    .line 55
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 56
    .line 57
    .line 58
    iput-object v1, p0, Lr2/l;->f:Ljava/lang/Object;

    .line 59
    .line 60
    iput-object p1, p0, Lr2/l;->g:Ljava/lang/Object;

    .line 61
    .line 62
    iput-object p2, p0, Lr2/l;->h:Ljava/lang/Object;

    .line 63
    .line 64
    const/4 p1, 0x4

    .line 65
    new-array p1, p1, [Lcom/google/android/gms/internal/ads/s3;

    .line 66
    .line 67
    iput-object p1, p0, Lr2/l;->i:Ljava/lang/Object;

    .line 68
    .line 69
    iput-object v0, p0, Lr2/l;->k:Ljava/lang/Object;

    .line 70
    .line 71
    return-void
.end method


# virtual methods
.method public final a(Lr2/k;)V
    .locals 2

    .line 1
    iput-object p0, p1, Lr2/k;->N:Lr2/l;

    .line 2
    .line 3
    iget-object v0, p0, Lr2/l;->b:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Ljava/util/Set;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    iget-object v1, p0, Lr2/l;->b:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v1, Ljava/util/Set;

    .line 11
    .line 12
    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    iget-object v0, p0, Lr2/l;->a:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iput-object v0, p1, Lr2/k;->M:Ljava/lang/Integer;

    .line 29
    .line 30
    const-string v0, "add-to-queue"

    .line 31
    .line 32
    invoke-virtual {p1, v0}, Lr2/k;->a(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Lr2/l;->b()V

    .line 36
    .line 37
    .line 38
    iget-boolean v0, p1, Lr2/k;->O:Z

    .line 39
    .line 40
    if-nez v0, :cond_0

    .line 41
    .line 42
    iget-object v0, p0, Lr2/l;->d:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast v0, Ljava/util/concurrent/PriorityBlockingQueue;

    .line 45
    .line 46
    invoke-virtual {v0, p1}, Ljava/util/concurrent/PriorityBlockingQueue;->add(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    iget-object v0, p0, Lr2/l;->c:Ljava/lang/Object;

    .line 51
    .line 52
    check-cast v0, Ljava/util/concurrent/PriorityBlockingQueue;

    .line 53
    .line 54
    invoke-virtual {v0, p1}, Ljava/util/concurrent/PriorityBlockingQueue;->add(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    :goto_0
    return-void

    .line 58
    :catchall_0
    move-exception p1

    .line 59
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 60
    throw p1
.end method

.method public final b()V
    .locals 3

    .line 1
    iget-object v0, p0, Lr2/l;->f:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/List;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lr2/l;->f:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v1, Ljava/util/List;

    .line 9
    .line 10
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-nez v2, :cond_0

    .line 19
    .line 20
    monitor-exit v0

    .line 21
    return-void

    .line 22
    :catchall_0
    move-exception v1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-static {v1}, LA0/O;->I(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    const/4 v1, 0x0

    .line 32
    throw v1

    .line 33
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    throw v1
.end method

.method public final c(Lcom/google/android/gms/internal/ads/v3;)V
    .locals 2

    .line 1
    iput-object p0, p1, Lcom/google/android/gms/internal/ads/v3;->N:Lr2/l;

    .line 2
    .line 3
    iget-object v0, p0, Lr2/l;->b:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Ljava/util/Set;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    iget-object v1, p0, Lr2/l;->b:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v1, Ljava/util/Set;

    .line 11
    .line 12
    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    iget-object v0, p0, Lr2/l;->a:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iput-object v0, p1, Lcom/google/android/gms/internal/ads/v3;->M:Ljava/lang/Integer;

    .line 29
    .line 30
    const-string v0, "add-to-queue"

    .line 31
    .line 32
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/v3;->d(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Lr2/l;->d()V

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lr2/l;->c:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast v0, Ljava/util/concurrent/PriorityBlockingQueue;

    .line 41
    .line 42
    invoke-virtual {v0, p1}, Ljava/util/concurrent/PriorityBlockingQueue;->add(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :catchall_0
    move-exception p1

    .line 47
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 48
    throw p1
.end method

.method public final d()V
    .locals 3

    .line 1
    iget-object v0, p0, Lr2/l;->f:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/List;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lr2/l;->f:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v1, Ljava/util/List;

    .line 9
    .line 10
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-nez v2, :cond_0

    .line 19
    .line 20
    monitor-exit v0

    .line 21
    return-void

    .line 22
    :catchall_0
    move-exception v1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-static {v1}, LA0/O;->I(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    const/4 v1, 0x0

    .line 32
    throw v1

    .line 33
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    throw v1
.end method

.method public final e()V
    .locals 7

    .line 1
    iget-object v0, p0, Lr2/l;->j:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/google/android/gms/internal/ads/n3;

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/n3;->J:Z

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 11
    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lr2/l;->i:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v0, [Lcom/google/android/gms/internal/ads/s3;

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    const/4 v3, 0x0

    .line 19
    :goto_0
    const/4 v4, 0x4

    .line 20
    if-ge v3, v4, :cond_2

    .line 21
    .line 22
    aget-object v4, v0, v3

    .line 23
    .line 24
    if-eqz v4, :cond_1

    .line 25
    .line 26
    iput-boolean v1, v4, Lcom/google/android/gms/internal/ads/s3;->J:Z

    .line 27
    .line 28
    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V

    .line 29
    .line 30
    .line 31
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_2
    iget-object v0, p0, Lr2/l;->c:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast v0, Ljava/util/concurrent/PriorityBlockingQueue;

    .line 37
    .line 38
    iget-object v1, p0, Lr2/l;->d:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast v1, Ljava/util/concurrent/PriorityBlockingQueue;

    .line 41
    .line 42
    iget-object v3, p0, Lr2/l;->g:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast v3, LA0/w;

    .line 45
    .line 46
    iget-object v5, p0, Lr2/l;->k:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast v5, Lcom/google/android/gms/internal/ads/K4;

    .line 49
    .line 50
    new-instance v6, Lcom/google/android/gms/internal/ads/n3;

    .line 51
    .line 52
    invoke-direct {v6, v0, v1, v3, v5}, Lcom/google/android/gms/internal/ads/n3;-><init>(Ljava/util/concurrent/PriorityBlockingQueue;Ljava/util/concurrent/PriorityBlockingQueue;LA0/w;Lcom/google/android/gms/internal/ads/K4;)V

    .line 53
    .line 54
    .line 55
    iput-object v6, p0, Lr2/l;->j:Ljava/lang/Object;

    .line 56
    .line 57
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 58
    .line 59
    .line 60
    :goto_1
    if-ge v2, v4, :cond_3

    .line 61
    .line 62
    iget-object v0, p0, Lr2/l;->d:Ljava/lang/Object;

    .line 63
    .line 64
    check-cast v0, Ljava/util/concurrent/PriorityBlockingQueue;

    .line 65
    .line 66
    iget-object v1, p0, Lr2/l;->h:Ljava/lang/Object;

    .line 67
    .line 68
    check-cast v1, Lcom/google/android/gms/internal/ads/r3;

    .line 69
    .line 70
    iget-object v3, p0, Lr2/l;->g:Ljava/lang/Object;

    .line 71
    .line 72
    check-cast v3, LA0/w;

    .line 73
    .line 74
    iget-object v5, p0, Lr2/l;->k:Ljava/lang/Object;

    .line 75
    .line 76
    check-cast v5, Lcom/google/android/gms/internal/ads/K4;

    .line 77
    .line 78
    new-instance v6, Lcom/google/android/gms/internal/ads/s3;

    .line 79
    .line 80
    invoke-direct {v6, v0, v1, v3, v5}, Lcom/google/android/gms/internal/ads/s3;-><init>(Ljava/util/concurrent/PriorityBlockingQueue;Lcom/google/android/gms/internal/ads/r3;LA0/w;Lcom/google/android/gms/internal/ads/K4;)V

    .line 81
    .line 82
    .line 83
    iget-object v0, p0, Lr2/l;->i:Ljava/lang/Object;

    .line 84
    .line 85
    check-cast v0, [Lcom/google/android/gms/internal/ads/s3;

    .line 86
    .line 87
    aput-object v6, v0, v2

    .line 88
    .line 89
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 90
    .line 91
    .line 92
    add-int/lit8 v2, v2, 0x1

    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_3
    return-void
.end method
