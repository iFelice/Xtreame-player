.class public final Lcom/google/android/gms/internal/ads/To;
.super Lcom/google/android/gms/internal/ads/So;
.source "SourceFile"


# instance fields
.field public final g:Landroid/content/Context;

.field public final h:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/re;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/So;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/To;->g:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/To;->h:Ljava/util/concurrent/Executor;

    .line 7
    .line 8
    sget-object p2, Lk3/l;->A:Lk3/l;

    .line 9
    .line 10
    iget-object p2, p2, Lk3/l;->r:LB0/w0;

    .line 11
    .line 12
    invoke-virtual {p2}, LB0/w0;->j()Landroid/os/Looper;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    new-instance p2, Lcom/google/android/gms/internal/ads/n6;

    .line 17
    .line 18
    const/4 v5, 0x2

    .line 19
    move-object v0, p2

    .line 20
    move-object v1, p1

    .line 21
    move-object v3, p0

    .line 22
    move-object v4, p0

    .line 23
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/n6;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/b;Lcom/google/android/gms/common/internal/c;I)V

    .line 24
    .line 25
    .line 26
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/So;->f:Lcom/google/android/gms/internal/ads/n6;

    .line 27
    .line 28
    return-void
.end method


# virtual methods
.method public final c(Lcom/google/android/gms/internal/ads/Wc;)LD4/b;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/So;->b:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/So;->c:Z

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/So;->a:Lcom/google/android/gms/internal/ads/te;

    .line 9
    .line 10
    monitor-exit v0

    .line 11
    return-object p1

    .line 12
    :catchall_0
    move-exception p1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v1, 0x1

    .line 15
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/So;->c:Z

    .line 16
    .line 17
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/So;->e:Lcom/google/android/gms/internal/ads/Wc;

    .line 18
    .line 19
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/So;->f:Lcom/google/android/gms/internal/ads/n6;

    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/g;->checkAvailabilityAndConnect()V

    .line 22
    .line 23
    .line 24
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/So;->a:Lcom/google/android/gms/internal/ads/te;

    .line 25
    .line 26
    new-instance v1, Lcom/google/android/gms/internal/ads/Zn;

    .line 27
    .line 28
    const/4 v2, 0x2

    .line 29
    invoke-direct {v1, p0, v2}, Lcom/google/android/gms/internal/ads/Zn;-><init>(Ljava/lang/Object;I)V

    .line 30
    .line 31
    .line 32
    sget-object v2, Lcom/google/android/gms/internal/ads/se;->f:Lcom/google/android/gms/internal/ads/re;

    .line 33
    .line 34
    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/ads/te;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 35
    .line 36
    .line 37
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/To;->g:Landroid/content/Context;

    .line 38
    .line 39
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/So;->a:Lcom/google/android/gms/internal/ads/te;

    .line 40
    .line 41
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/To;->h:Ljava/util/concurrent/Executor;

    .line 42
    .line 43
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/ads/So;->b(Landroid/content/Context;Lcom/google/android/gms/internal/ads/te;Ljava/util/concurrent/Executor;)V

    .line 44
    .line 45
    .line 46
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/So;->a:Lcom/google/android/gms/internal/ads/te;

    .line 47
    .line 48
    monitor-exit v0

    .line 49
    return-object p1

    .line 50
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    throw p1
.end method

.method public final onConnected(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/So;->b:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter p1

    .line 4
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/So;->d:Z

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/So;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 10
    .line 11
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/So;->f:Lcom/google/android/gms/internal/ads/n6;

    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/g;->getService()Landroid/os/IInterface;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/google/android/gms/internal/ads/Lc;

    .line 18
    .line 19
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/So;->e:Lcom/google/android/gms/internal/ads/Wc;

    .line 20
    .line 21
    new-instance v3, Lcom/google/android/gms/internal/ads/Ro;

    .line 22
    .line 23
    invoke-direct {v3, p0}, Lcom/google/android/gms/internal/ads/Ro;-><init>(Lcom/google/android/gms/internal/ads/So;)V

    .line 24
    .line 25
    .line 26
    invoke-interface {v1, v2, v3}, Lcom/google/android/gms/internal/ads/Lc;->W1(Lcom/google/android/gms/internal/ads/Wc;Lcom/google/android/gms/internal/ads/Rc;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catchall_0
    move-exception v1

    .line 31
    :try_start_2
    sget-object v2, Lk3/l;->A:Lk3/l;

    .line 32
    .line 33
    iget-object v2, v2, Lk3/l;->g:Lcom/google/android/gms/internal/ads/le;

    .line 34
    .line 35
    const-string v3, "RemoteSignalsClientTask.onConnected"

    .line 36
    .line 37
    invoke-virtual {v2, v3, v1}, Lcom/google/android/gms/internal/ads/le;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 38
    .line 39
    .line 40
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/So;->a:Lcom/google/android/gms/internal/ads/te;

    .line 41
    .line 42
    new-instance v2, Lcom/google/android/gms/internal/ads/ep;

    .line 43
    .line 44
    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/Bo;-><init>(I)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/te;->c(Ljava/lang/Throwable;)Z

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :catchall_1
    move-exception v0

    .line 52
    goto :goto_1

    .line 53
    :catch_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/So;->a:Lcom/google/android/gms/internal/ads/te;

    .line 54
    .line 55
    new-instance v2, Lcom/google/android/gms/internal/ads/ep;

    .line 56
    .line 57
    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/Bo;-><init>(I)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/te;->c(Ljava/lang/Throwable;)Z

    .line 61
    .line 62
    .line 63
    :cond_0
    :goto_0
    monitor-exit p1

    .line 64
    return-void

    .line 65
    :goto_1
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 66
    throw v0
.end method
