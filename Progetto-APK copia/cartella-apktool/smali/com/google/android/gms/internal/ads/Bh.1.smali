.class public final Lcom/google/android/gms/internal/ads/Bh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/G5;
.implements Lcom/google/android/gms/internal/ads/Bj;
.implements Ln3/m;
.implements Lcom/google/android/gms/internal/ads/Aj;


# instance fields
.field public final G:Lcom/google/android/gms/internal/ads/xh;

.field public final H:Lcom/google/android/gms/internal/ads/yh;

.field public final I:Ljava/util/HashSet;

.field public final J:Lcom/google/android/gms/internal/ads/Va;

.field public final K:Ljava/util/concurrent/Executor;

.field public final L:LP3/a;

.field public final M:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final N:Lcom/google/android/gms/internal/ads/Ah;

.field public O:Z

.field public P:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/Wa;Lcom/google/android/gms/internal/ads/yh;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/xh;LP3/a;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashSet;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Bh;->I:Ljava/util/HashSet;

    .line 10
    .line 11
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Bh;->M:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 18
    .line 19
    new-instance v0, Lcom/google/android/gms/internal/ads/Ah;

    .line 20
    .line 21
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/Ah;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Bh;->N:Lcom/google/android/gms/internal/ads/Ah;

    .line 25
    .line 26
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/Bh;->O:Z

    .line 27
    .line 28
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 29
    .line 30
    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Bh;->P:Ljava/lang/ref/WeakReference;

    .line 34
    .line 35
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/Bh;->G:Lcom/google/android/gms/internal/ads/xh;

    .line 36
    .line 37
    sget-object p4, Lcom/google/android/gms/internal/ads/Pa;->a:Ljava/nio/charset/Charset;

    .line 38
    .line 39
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Wa;->a()V

    .line 40
    .line 41
    .line 42
    new-instance p4, Lcom/google/android/gms/internal/ads/Va;

    .line 43
    .line 44
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/Wa;->b:LD4/b;

    .line 45
    .line 46
    invoke-direct {p4, p1}, Lcom/google/android/gms/internal/ads/Va;-><init>(LD4/b;)V

    .line 47
    .line 48
    .line 49
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/Bh;->J:Lcom/google/android/gms/internal/ads/Va;

    .line 50
    .line 51
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Bh;->H:Lcom/google/android/gms/internal/ads/yh;

    .line 52
    .line 53
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/Bh;->K:Ljava/util/concurrent/Executor;

    .line 54
    .line 55
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/Bh;->L:LP3/a;

    .line 56
    .line 57
    return-void
.end method


# virtual methods
.method public final declared-synchronized F(Lcom/google/android/gms/internal/ads/F5;)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Bh;->N:Lcom/google/android/gms/internal/ads/Ah;

    .line 3
    .line 4
    iget-boolean v1, p1, Lcom/google/android/gms/internal/ads/F5;->j:Z

    .line 5
    .line 6
    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/Ah;->a:Z

    .line 7
    .line 8
    iput-object p1, v0, Lcom/google/android/gms/internal/ads/Ah;->e:Lcom/google/android/gms/internal/ads/F5;

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/Bh;->a()V
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
    move-exception p1

    .line 16
    monitor-exit p0

    .line 17
    throw p1
.end method

.method public final declared-synchronized O2()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Bh;->N:Lcom/google/android/gms/internal/ads/Ah;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/Ah;->b:Z

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/Bh;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    .line 10
    monitor-exit p0

    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception v0

    .line 13
    monitor-exit p0

    .line 14
    throw v0
.end method

.method public final Y()V
    .locals 0

    .line 1
    return-void
.end method

.method public final declared-synchronized a()V
    .locals 6

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Bh;->P:Ljava/lang/ref/WeakReference;

    .line 3
    .line 4
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-eqz v0, :cond_2

    .line 9
    .line 10
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/Bh;->O:Z

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Bh;->M:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 17
    .line 18
    .line 19
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Bh;->N:Lcom/google/android/gms/internal/ads/Ah;

    .line 23
    .line 24
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Bh;->L:LP3/a;

    .line 25
    .line 26
    check-cast v1, LP3/b;

    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 32
    .line 33
    .line 34
    move-result-wide v1

    .line 35
    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/Ah;->c:J

    .line 36
    .line 37
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Bh;->H:Lcom/google/android/gms/internal/ads/yh;

    .line 38
    .line 39
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Bh;->N:Lcom/google/android/gms/internal/ads/Ah;

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/yh;->a(Lcom/google/android/gms/internal/ads/Ah;)Lorg/json/JSONObject;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Bh;->I:Ljava/util/HashSet;

    .line 46
    .line 47
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    const/4 v3, 0x0

    .line 56
    if-eqz v2, :cond_0

    .line 57
    .line 58
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    check-cast v2, Lcom/google/android/gms/internal/ads/Ef;

    .line 63
    .line 64
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/Bh;->K:Ljava/util/concurrent/Executor;

    .line 65
    .line 66
    new-instance v5, Lcom/google/android/gms/internal/ads/zh;

    .line 67
    .line 68
    invoke-direct {v5, v2, v0, v3}, Lcom/google/android/gms/internal/ads/zh;-><init>(Lcom/google/android/gms/internal/ads/Ef;Lorg/json/JSONObject;I)V

    .line 69
    .line 70
    .line 71
    invoke-interface {v4, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :catchall_0
    move-exception v0

    .line 76
    goto :goto_2

    .line 77
    :catch_0
    move-exception v0

    .line 78
    goto :goto_1

    .line 79
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Bh;->J:Lcom/google/android/gms/internal/ads/Va;

    .line 80
    .line 81
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 82
    .line 83
    .line 84
    new-instance v2, Lcom/google/android/gms/internal/ads/Va;

    .line 85
    .line 86
    const/4 v4, 0x1

    .line 87
    invoke-direct {v2, v4, v1, v0}, Lcom/google/android/gms/internal/ads/Va;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 88
    .line 89
    .line 90
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/Va;->c:Ljava/lang/Object;

    .line 91
    .line 92
    check-cast v0, LD4/b;

    .line 93
    .line 94
    sget-object v1, Lcom/google/android/gms/internal/ads/se;->f:Lcom/google/android/gms/internal/ads/re;

    .line 95
    .line 96
    invoke-static {v0, v2, v1}, Lcom/google/android/gms/internal/ads/Cw;->d2(LD4/b;Lcom/google/android/gms/internal/ads/RB;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/JB;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    const-string v2, "ActiveViewListener.callActiveViewJs"

    .line 101
    .line 102
    new-instance v4, Lcom/google/android/gms/internal/ads/J;

    .line 103
    .line 104
    const/4 v5, 0x2

    .line 105
    invoke-direct {v4, v2, v5, v3}, Lcom/google/android/gms/internal/ads/J;-><init>(Ljava/lang/String;II)V

    .line 106
    .line 107
    .line 108
    invoke-static {v0, v4, v1}, Lcom/google/android/gms/internal/ads/Cw;->h2(LD4/b;Lcom/google/android/gms/internal/ads/dC;Ljava/util/concurrent/Executor;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 109
    .line 110
    .line 111
    monitor-exit p0

    .line 112
    return-void

    .line 113
    :goto_1
    :try_start_2
    const-string v1, "Failed to call ActiveViewJS"

    .line 114
    .line 115
    invoke-static {v1, v0}, Lo3/I;->l(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 116
    .line 117
    .line 118
    monitor-exit p0

    .line 119
    return-void

    .line 120
    :cond_1
    monitor-exit p0

    .line 121
    return-void

    .line 122
    :cond_2
    :try_start_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/Bh;->b()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 123
    .line 124
    .line 125
    monitor-exit p0

    .line 126
    return-void

    .line 127
    :goto_2
    monitor-exit p0

    .line 128
    throw v0
.end method

.method public final declared-synchronized b()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/Bh;->c()V

    .line 3
    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/Bh;->O:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    monitor-exit p0

    .line 9
    return-void

    .line 10
    :catchall_0
    move-exception v0

    .line 11
    monitor-exit p0

    .line 12
    throw v0
.end method

.method public final c()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Bh;->I:Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const-string v2, "/untrackActiveViewUnit"

    .line 12
    .line 13
    const-string v3, "/updateActiveView"

    .line 14
    .line 15
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/Bh;->G:Lcom/google/android/gms/internal/ads/xh;

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Lcom/google/android/gms/internal/ads/Ef;

    .line 24
    .line 25
    iget-object v5, v4, Lcom/google/android/gms/internal/ads/xh;->e:Lcom/google/android/gms/internal/ads/wh;

    .line 26
    .line 27
    invoke-interface {v1, v3, v5}, Lcom/google/android/gms/internal/ads/Ef;->D0(Ljava/lang/String;Lcom/google/android/gms/internal/ads/N9;)V

    .line 28
    .line 29
    .line 30
    iget-object v3, v4, Lcom/google/android/gms/internal/ads/xh;->f:Lcom/google/android/gms/internal/ads/wh;

    .line 31
    .line 32
    invoke-interface {v1, v2, v3}, Lcom/google/android/gms/internal/ads/Ef;->D0(Ljava/lang/String;Lcom/google/android/gms/internal/ads/N9;)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    iget-object v0, v4, Lcom/google/android/gms/internal/ads/xh;->e:Lcom/google/android/gms/internal/ads/wh;

    .line 37
    .line 38
    iget-object v1, v4, Lcom/google/android/gms/internal/ads/xh;->b:Lcom/google/android/gms/internal/ads/Wa;

    .line 39
    .line 40
    iget-object v5, v1, Lcom/google/android/gms/internal/ads/Wa;->b:LD4/b;

    .line 41
    .line 42
    new-instance v6, Lcom/google/android/gms/internal/ads/Ta;

    .line 43
    .line 44
    const/4 v7, 0x0

    .line 45
    invoke-direct {v6, v7, v3, v0}, Lcom/google/android/gms/internal/ads/Ta;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    sget-object v0, Lcom/google/android/gms/internal/ads/se;->f:Lcom/google/android/gms/internal/ads/re;

    .line 49
    .line 50
    invoke-static {v5, v6, v0}, Lcom/google/android/gms/internal/ads/Cw;->b2(LD4/b;Lcom/google/android/gms/internal/ads/vz;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/KB;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    iput-object v3, v1, Lcom/google/android/gms/internal/ads/Wa;->b:LD4/b;

    .line 55
    .line 56
    new-instance v5, Lcom/google/android/gms/internal/ads/Ta;

    .line 57
    .line 58
    iget-object v4, v4, Lcom/google/android/gms/internal/ads/xh;->f:Lcom/google/android/gms/internal/ads/wh;

    .line 59
    .line 60
    invoke-direct {v5, v7, v2, v4}, Lcom/google/android/gms/internal/ads/Ta;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    invoke-static {v3, v5, v0}, Lcom/google/android/gms/internal/ads/Cw;->b2(LD4/b;Lcom/google/android/gms/internal/ads/vz;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/KB;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    iput-object v0, v1, Lcom/google/android/gms/internal/ads/Wa;->b:LD4/b;

    .line 68
    .line 69
    return-void
.end method

.method public final k3()V
    .locals 0

    .line 1
    return-void
.end method

.method public final declared-synchronized m(Landroid/content/Context;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Bh;->N:Lcom/google/android/gms/internal/ads/Ah;

    .line 3
    .line 4
    const-string v0, "u"

    .line 5
    .line 6
    iput-object v0, p1, Lcom/google/android/gms/internal/ads/Ah;->d:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/Bh;->a()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/Bh;->c()V

    .line 12
    .line 13
    .line 14
    const/4 p1, 0x1

    .line 15
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/Bh;->O:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    .line 17
    monitor-exit p0

    .line 18
    return-void

    .line 19
    :catchall_0
    move-exception p1

    .line 20
    monitor-exit p0

    .line 21
    throw p1
.end method

.method public final declared-synchronized p(Landroid/content/Context;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Bh;->N:Lcom/google/android/gms/internal/ads/Ah;

    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p1, Lcom/google/android/gms/internal/ads/Ah;->b:Z

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/Bh;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    .line 10
    monitor-exit p0

    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception p1

    .line 13
    monitor-exit p0

    .line 14
    throw p1
.end method

.method public final declared-synchronized q(Landroid/content/Context;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Bh;->N:Lcom/google/android/gms/internal/ads/Ah;

    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p1, Lcom/google/android/gms/internal/ads/Ah;->b:Z

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/Bh;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    .line 10
    monitor-exit p0

    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception p1

    .line 13
    monitor-exit p0

    .line 14
    throw p1
.end method

.method public final r1(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final declared-synchronized u3()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Bh;->N:Lcom/google/android/gms/internal/ads/Ah;

    .line 3
    .line 4
    const/4 v1, 0x1

    .line 5
    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/Ah;->b:Z

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/Bh;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    .line 10
    monitor-exit p0

    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception v0

    .line 13
    monitor-exit p0

    .line 14
    throw v0
.end method

.method public final v0()V
    .locals 0

    .line 1
    return-void
.end method

.method public final declared-synchronized zzr()V
    .locals 8

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Bh;->M:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    .line 4
    const/4 v1, 0x1

    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Bh;->G:Lcom/google/android/gms/internal/ads/xh;

    .line 13
    .line 14
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/xh;->e:Lcom/google/android/gms/internal/ads/wh;

    .line 15
    .line 16
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/xh;->b:Lcom/google/android/gms/internal/ads/Wa;

    .line 17
    .line 18
    const-string v4, "/updateActiveView"

    .line 19
    .line 20
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/Wa;->a()V

    .line 21
    .line 22
    .line 23
    iget-object v5, v3, Lcom/google/android/gms/internal/ads/Wa;->b:LD4/b;

    .line 24
    .line 25
    new-instance v6, Lcom/google/android/gms/internal/ads/Va;

    .line 26
    .line 27
    invoke-direct {v6, v2, v4, v1}, Lcom/google/android/gms/internal/ads/Va;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    sget-object v1, Lcom/google/android/gms/internal/ads/se;->f:Lcom/google/android/gms/internal/ads/re;

    .line 31
    .line 32
    invoke-static {v5, v6, v1}, Lcom/google/android/gms/internal/ads/Cw;->d2(LD4/b;Lcom/google/android/gms/internal/ads/RB;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/JB;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    iput-object v4, v3, Lcom/google/android/gms/internal/ads/Wa;->b:LD4/b;

    .line 37
    .line 38
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/xh;->f:Lcom/google/android/gms/internal/ads/wh;

    .line 39
    .line 40
    const-string v5, "/untrackActiveViewUnit"

    .line 41
    .line 42
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/Wa;->a()V

    .line 43
    .line 44
    .line 45
    iget-object v6, v3, Lcom/google/android/gms/internal/ads/Wa;->b:LD4/b;

    .line 46
    .line 47
    new-instance v7, Lcom/google/android/gms/internal/ads/Va;

    .line 48
    .line 49
    invoke-direct {v7, v2, v5, v4}, Lcom/google/android/gms/internal/ads/Va;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    invoke-static {v6, v7, v1}, Lcom/google/android/gms/internal/ads/Cw;->d2(LD4/b;Lcom/google/android/gms/internal/ads/RB;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/JB;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    iput-object v1, v3, Lcom/google/android/gms/internal/ads/Wa;->b:LD4/b;

    .line 57
    .line 58
    iput-object p0, v0, Lcom/google/android/gms/internal/ads/xh;->d:Lcom/google/android/gms/internal/ads/Bh;

    .line 59
    .line 60
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/Bh;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    .line 62
    .line 63
    monitor-exit p0

    .line 64
    return-void

    .line 65
    :catchall_0
    move-exception v0

    .line 66
    goto :goto_0

    .line 67
    :cond_0
    monitor-exit p0

    .line 68
    return-void

    .line 69
    :goto_0
    monitor-exit p0

    .line 70
    throw v0
.end method
