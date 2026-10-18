.class public final Lc4/c1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Lcom/google/android/gms/common/internal/b;
.implements Lcom/google/android/gms/common/internal/c;


# instance fields
.field public volatile a:Z

.field public volatile b:Lcom/google/android/gms/internal/ads/Gc;

.field public final synthetic c:Lc4/d1;


# direct methods
.method public constructor <init>(Lc4/d1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lc4/c1;->c:Lc4/d1;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 7

    .line 1
    iget-object v0, p0, Lc4/c1;->c:Lc4/d1;

    .line 2
    .line 3
    invoke-virtual {v0}, Lc4/z;->m()V

    .line 4
    .line 5
    .line 6
    iget-object v0, v0, Lc1/d;->G:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lc4/l0;

    .line 9
    .line 10
    iget-object v2, v0, Lc4/l0;->G:Landroid/content/Context;

    .line 11
    .line 12
    monitor-enter p0

    .line 13
    :try_start_0
    iget-boolean v0, p0, Lc4/c1;->a:Z

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lc4/c1;->c:Lc4/d1;

    .line 18
    .line 19
    iget-object v0, v0, Lc1/d;->G:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v0, Lc4/l0;

    .line 22
    .line 23
    iget-object v0, v0, Lc4/l0;->O:Lc4/T;

    .line 24
    .line 25
    invoke-static {v0}, Lc4/l0;->k(Lc4/s0;)V

    .line 26
    .line 27
    .line 28
    iget-object v0, v0, Lc4/T;->T:Lc4/Q;

    .line 29
    .line 30
    const-string v1, "Connection attempt already in progress"

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Lc4/Q;->a(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    monitor-exit p0

    .line 36
    return-void

    .line 37
    :catchall_0
    move-exception v0

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    iget-object v0, p0, Lc4/c1;->b:Lcom/google/android/gms/internal/ads/Gc;

    .line 40
    .line 41
    if-eqz v0, :cond_2

    .line 42
    .line 43
    iget-object v0, p0, Lc4/c1;->b:Lcom/google/android/gms/internal/ads/Gc;

    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/g;->isConnecting()Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-nez v0, :cond_1

    .line 50
    .line 51
    iget-object v0, p0, Lc4/c1;->b:Lcom/google/android/gms/internal/ads/Gc;

    .line 52
    .line 53
    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/g;->isConnected()Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-eqz v0, :cond_2

    .line 58
    .line 59
    :cond_1
    iget-object v0, p0, Lc4/c1;->c:Lc4/d1;

    .line 60
    .line 61
    iget-object v0, v0, Lc1/d;->G:Ljava/lang/Object;

    .line 62
    .line 63
    check-cast v0, Lc4/l0;

    .line 64
    .line 65
    iget-object v0, v0, Lc4/l0;->O:Lc4/T;

    .line 66
    .line 67
    invoke-static {v0}, Lc4/l0;->k(Lc4/s0;)V

    .line 68
    .line 69
    .line 70
    iget-object v0, v0, Lc4/T;->T:Lc4/Q;

    .line 71
    .line 72
    const-string v1, "Already awaiting connection attempt"

    .line 73
    .line 74
    invoke-virtual {v0, v1}, Lc4/Q;->a(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    monitor-exit p0

    .line 78
    return-void

    .line 79
    :cond_2
    new-instance v0, Lcom/google/android/gms/internal/ads/Gc;

    .line 80
    .line 81
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    const/4 v6, 0x1

    .line 86
    move-object v1, v0

    .line 87
    move-object v4, p0

    .line 88
    move-object v5, p0

    .line 89
    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/Gc;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/b;Lcom/google/android/gms/common/internal/c;I)V

    .line 90
    .line 91
    .line 92
    iput-object v0, p0, Lc4/c1;->b:Lcom/google/android/gms/internal/ads/Gc;

    .line 93
    .line 94
    iget-object v0, p0, Lc4/c1;->c:Lc4/d1;

    .line 95
    .line 96
    iget-object v0, v0, Lc1/d;->G:Ljava/lang/Object;

    .line 97
    .line 98
    check-cast v0, Lc4/l0;

    .line 99
    .line 100
    iget-object v0, v0, Lc4/l0;->O:Lc4/T;

    .line 101
    .line 102
    invoke-static {v0}, Lc4/l0;->k(Lc4/s0;)V

    .line 103
    .line 104
    .line 105
    iget-object v0, v0, Lc4/T;->T:Lc4/Q;

    .line 106
    .line 107
    const-string v1, "Connecting to remote service"

    .line 108
    .line 109
    invoke-virtual {v0, v1}, Lc4/Q;->a(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    const/4 v0, 0x1

    .line 113
    iput-boolean v0, p0, Lc4/c1;->a:Z

    .line 114
    .line 115
    iget-object v0, p0, Lc4/c1;->b:Lcom/google/android/gms/internal/ads/Gc;

    .line 116
    .line 117
    invoke-static {v0}, Lcom/bumptech/glide/c;->h(Ljava/lang/Object;)V

    .line 118
    .line 119
    .line 120
    iget-object v0, p0, Lc4/c1;->b:Lcom/google/android/gms/internal/ads/Gc;

    .line 121
    .line 122
    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/g;->checkAvailabilityAndConnect()V

    .line 123
    .line 124
    .line 125
    monitor-exit p0

    .line 126
    return-void

    .line 127
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    throw v0
.end method

.method public final onConnected(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lc4/c1;->c:Lc4/d1;

    .line 2
    .line 3
    iget-object p1, p1, Lc1/d;->G:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p1, Lc4/l0;

    .line 6
    .line 7
    iget-object p1, p1, Lc4/l0;->P:Lc4/j0;

    .line 8
    .line 9
    invoke-static {p1}, Lc4/l0;->k(Lc4/s0;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Lc4/j0;->u()V

    .line 13
    .line 14
    .line 15
    monitor-enter p0

    .line 16
    :try_start_0
    iget-object p1, p0, Lc4/c1;->b:Lcom/google/android/gms/internal/ads/Gc;

    .line 17
    .line 18
    invoke-static {p1}, Lcom/bumptech/glide/c;->h(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, Lc4/c1;->b:Lcom/google/android/gms/internal/ads/Gc;

    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/g;->getService()Landroid/os/IInterface;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    check-cast p1, Lc4/G;

    .line 28
    .line 29
    iget-object v0, p0, Lc4/c1;->c:Lc4/d1;

    .line 30
    .line 31
    iget-object v0, v0, Lc1/d;->G:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast v0, Lc4/l0;

    .line 34
    .line 35
    iget-object v0, v0, Lc4/l0;->P:Lc4/j0;

    .line 36
    .line 37
    invoke-static {v0}, Lc4/l0;->k(Lc4/s0;)V

    .line 38
    .line 39
    .line 40
    new-instance v1, Lc4/b1;

    .line 41
    .line 42
    const/4 v2, 0x1

    .line 43
    invoke-direct {v1, p0, p1, v2}, Lc4/b1;-><init>(Lc4/c1;Lc4/G;I)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v1}, Lc4/j0;->x(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :catchall_0
    move-exception p1

    .line 51
    goto :goto_1

    .line 52
    :catch_0
    const/4 p1, 0x0

    .line 53
    :try_start_1
    iput-object p1, p0, Lc4/c1;->b:Lcom/google/android/gms/internal/ads/Gc;

    .line 54
    .line 55
    const/4 p1, 0x0

    .line 56
    iput-boolean p1, p0, Lc4/c1;->a:Z

    .line 57
    .line 58
    :goto_0
    monitor-exit p0

    .line 59
    return-void

    .line 60
    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 61
    throw p1
.end method

.method public final onConnectionFailed(LJ3/b;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lc4/c1;->c:Lc4/d1;

    .line 2
    .line 3
    iget-object v1, v0, Lc1/d;->G:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Lc4/l0;

    .line 6
    .line 7
    iget-object v1, v1, Lc4/l0;->P:Lc4/j0;

    .line 8
    .line 9
    invoke-static {v1}, Lc4/l0;->k(Lc4/s0;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1}, Lc4/j0;->u()V

    .line 13
    .line 14
    .line 15
    iget-object v0, v0, Lc1/d;->G:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v0, Lc4/l0;

    .line 18
    .line 19
    iget-object v0, v0, Lc4/l0;->O:Lc4/T;

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    iget-boolean v2, v0, Lc4/s0;->H:Z

    .line 25
    .line 26
    if-eqz v2, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    move-object v0, v1

    .line 30
    :goto_0
    if-eqz v0, :cond_1

    .line 31
    .line 32
    iget-object v0, v0, Lc4/T;->O:Lc4/Q;

    .line 33
    .line 34
    const-string v2, "Service connection failed"

    .line 35
    .line 36
    invoke-virtual {v0, p1, v2}, Lc4/Q;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    :cond_1
    monitor-enter p0

    .line 40
    const/4 v0, 0x0

    .line 41
    :try_start_0
    iput-boolean v0, p0, Lc4/c1;->a:Z

    .line 42
    .line 43
    iput-object v1, p0, Lc4/c1;->b:Lcom/google/android/gms/internal/ads/Gc;

    .line 44
    .line 45
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    iget-object v0, p0, Lc4/c1;->c:Lc4/d1;

    .line 47
    .line 48
    iget-object v0, v0, Lc1/d;->G:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast v0, Lc4/l0;

    .line 51
    .line 52
    iget-object v0, v0, Lc4/l0;->P:Lc4/j0;

    .line 53
    .line 54
    invoke-static {v0}, Lc4/l0;->k(Lc4/s0;)V

    .line 55
    .line 56
    .line 57
    new-instance v1, LK3/V;

    .line 58
    .line 59
    const/16 v2, 0x10

    .line 60
    .line 61
    invoke-direct {v1, v2, p0, p1}, LK3/V;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, v1}, Lc4/j0;->x(Ljava/lang/Runnable;)V

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :catchall_0
    move-exception p1

    .line 69
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 70
    throw p1
.end method

.method public final onConnectionSuspended(I)V
    .locals 2

    .line 1
    iget-object p1, p0, Lc4/c1;->c:Lc4/d1;

    .line 2
    .line 3
    iget-object p1, p1, Lc1/d;->G:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p1, Lc4/l0;

    .line 6
    .line 7
    iget-object v0, p1, Lc4/l0;->P:Lc4/j0;

    .line 8
    .line 9
    invoke-static {v0}, Lc4/l0;->k(Lc4/s0;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lc4/j0;->u()V

    .line 13
    .line 14
    .line 15
    iget-object v0, p1, Lc4/l0;->O:Lc4/T;

    .line 16
    .line 17
    invoke-static {v0}, Lc4/l0;->k(Lc4/s0;)V

    .line 18
    .line 19
    .line 20
    const-string v1, "Service connection suspended"

    .line 21
    .line 22
    iget-object v0, v0, Lc4/T;->S:Lc4/Q;

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Lc4/Q;->a(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget-object p1, p1, Lc4/l0;->P:Lc4/j0;

    .line 28
    .line 29
    invoke-static {p1}, Lc4/l0;->k(Lc4/s0;)V

    .line 30
    .line 31
    .line 32
    new-instance v0, Lcom/google/android/gms/internal/cast/X;

    .line 33
    .line 34
    const/4 v1, 0x4

    .line 35
    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/cast/X;-><init>(Ljava/lang/Object;I)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, v0}, Lc4/j0;->x(Ljava/lang/Runnable;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lc4/c1;->c:Lc4/d1;

    .line 2
    .line 3
    iget-object p1, p1, Lc1/d;->G:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p1, Lc4/l0;

    .line 6
    .line 7
    iget-object p1, p1, Lc4/l0;->P:Lc4/j0;

    .line 8
    .line 9
    invoke-static {p1}, Lc4/l0;->k(Lc4/s0;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Lc4/j0;->u()V

    .line 13
    .line 14
    .line 15
    monitor-enter p0

    .line 16
    const/4 p1, 0x0

    .line 17
    if-nez p2, :cond_0

    .line 18
    .line 19
    :try_start_0
    iput-boolean p1, p0, Lc4/c1;->a:Z

    .line 20
    .line 21
    iget-object p1, p0, Lc4/c1;->c:Lc4/d1;

    .line 22
    .line 23
    iget-object p1, p1, Lc1/d;->G:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast p1, Lc4/l0;

    .line 26
    .line 27
    iget-object p1, p1, Lc4/l0;->O:Lc4/T;

    .line 28
    .line 29
    invoke-static {p1}, Lc4/l0;->k(Lc4/s0;)V

    .line 30
    .line 31
    .line 32
    iget-object p1, p1, Lc4/T;->L:Lc4/Q;

    .line 33
    .line 34
    const-string p2, "Service connected with null binder"

    .line 35
    .line 36
    invoke-virtual {p1, p2}, Lc4/Q;->a(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    return-void

    .line 41
    :catchall_0
    move-exception p1

    .line 42
    goto/16 :goto_4

    .line 43
    .line 44
    :cond_0
    const/4 v0, 0x0

    .line 45
    :try_start_1
    invoke-interface {p2}, Landroid/os/IBinder;->getInterfaceDescriptor()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    const-string v2, "com.google.android.gms.measurement.internal.IMeasurementService"

    .line 50
    .line 51
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    if-eqz v2, :cond_2

    .line 56
    .line 57
    const-string v1, "com.google.android.gms.measurement.internal.IMeasurementService"

    .line 58
    .line 59
    invoke-interface {p2, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    instance-of v2, v1, Lc4/G;

    .line 64
    .line 65
    if-eqz v2, :cond_1

    .line 66
    .line 67
    check-cast v1, Lc4/G;

    .line 68
    .line 69
    :goto_0
    move-object v0, v1

    .line 70
    goto :goto_1

    .line 71
    :cond_1
    new-instance v1, Lc4/F;

    .line 72
    .line 73
    invoke-direct {v1, p2}, Lc4/F;-><init>(Landroid/os/IBinder;)V

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :goto_1
    iget-object p2, p0, Lc4/c1;->c:Lc4/d1;

    .line 78
    .line 79
    iget-object p2, p2, Lc1/d;->G:Ljava/lang/Object;

    .line 80
    .line 81
    check-cast p2, Lc4/l0;

    .line 82
    .line 83
    iget-object p2, p2, Lc4/l0;->O:Lc4/T;

    .line 84
    .line 85
    invoke-static {p2}, Lc4/l0;->k(Lc4/s0;)V

    .line 86
    .line 87
    .line 88
    iget-object p2, p2, Lc4/T;->T:Lc4/Q;

    .line 89
    .line 90
    const-string v1, "Bound to IMeasurementService interface"

    .line 91
    .line 92
    invoke-virtual {p2, v1}, Lc4/Q;->a(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    goto :goto_2

    .line 96
    :cond_2
    iget-object p2, p0, Lc4/c1;->c:Lc4/d1;

    .line 97
    .line 98
    iget-object p2, p2, Lc1/d;->G:Ljava/lang/Object;

    .line 99
    .line 100
    check-cast p2, Lc4/l0;

    .line 101
    .line 102
    iget-object p2, p2, Lc4/l0;->O:Lc4/T;

    .line 103
    .line 104
    invoke-static {p2}, Lc4/l0;->k(Lc4/s0;)V

    .line 105
    .line 106
    .line 107
    iget-object p2, p2, Lc4/T;->L:Lc4/Q;

    .line 108
    .line 109
    const-string v2, "Got binder with a wrong descriptor"

    .line 110
    .line 111
    invoke-virtual {p2, v1, v2}, Lc4/Q;->b(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 112
    .line 113
    .line 114
    goto :goto_2

    .line 115
    :catch_0
    :try_start_2
    iget-object p2, p0, Lc4/c1;->c:Lc4/d1;

    .line 116
    .line 117
    iget-object p2, p2, Lc1/d;->G:Ljava/lang/Object;

    .line 118
    .line 119
    check-cast p2, Lc4/l0;

    .line 120
    .line 121
    iget-object p2, p2, Lc4/l0;->O:Lc4/T;

    .line 122
    .line 123
    invoke-static {p2}, Lc4/l0;->k(Lc4/s0;)V

    .line 124
    .line 125
    .line 126
    iget-object p2, p2, Lc4/T;->L:Lc4/Q;

    .line 127
    .line 128
    const-string v1, "Service connect failed to get IMeasurementService"

    .line 129
    .line 130
    invoke-virtual {p2, v1}, Lc4/Q;->a(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    :goto_2
    if-nez v0, :cond_3

    .line 134
    .line 135
    iput-boolean p1, p0, Lc4/c1;->a:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 136
    .line 137
    :try_start_3
    invoke-static {}, LO3/a;->a()LO3/a;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    iget-object p2, p0, Lc4/c1;->c:Lc4/d1;

    .line 142
    .line 143
    iget-object v0, p2, Lc1/d;->G:Ljava/lang/Object;

    .line 144
    .line 145
    check-cast v0, Lc4/l0;

    .line 146
    .line 147
    iget-object v0, v0, Lc4/l0;->G:Landroid/content/Context;

    .line 148
    .line 149
    iget-object p2, p2, Lc4/d1;->I:Lc4/c1;

    .line 150
    .line 151
    invoke-virtual {p1, v0, p2}, LO3/a;->b(Landroid/content/Context;Landroid/content/ServiceConnection;)V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 152
    .line 153
    .line 154
    goto :goto_3

    .line 155
    :cond_3
    :try_start_4
    iget-object p2, p0, Lc4/c1;->c:Lc4/d1;

    .line 156
    .line 157
    iget-object p2, p2, Lc1/d;->G:Ljava/lang/Object;

    .line 158
    .line 159
    check-cast p2, Lc4/l0;

    .line 160
    .line 161
    iget-object p2, p2, Lc4/l0;->P:Lc4/j0;

    .line 162
    .line 163
    invoke-static {p2}, Lc4/l0;->k(Lc4/s0;)V

    .line 164
    .line 165
    .line 166
    new-instance v1, Lc4/b1;

    .line 167
    .line 168
    invoke-direct {v1, p0, v0, p1}, Lc4/b1;-><init>(Lc4/c1;Lc4/G;I)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {p2, v1}, Lc4/j0;->x(Ljava/lang/Runnable;)V

    .line 172
    .line 173
    .line 174
    :catch_1
    :goto_3
    monitor-exit p0

    .line 175
    return-void

    .line 176
    :goto_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 177
    throw p1
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lc4/c1;->c:Lc4/d1;

    .line 2
    .line 3
    iget-object v0, v0, Lc1/d;->G:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Lc4/l0;

    .line 6
    .line 7
    iget-object v1, v0, Lc4/l0;->P:Lc4/j0;

    .line 8
    .line 9
    invoke-static {v1}, Lc4/l0;->k(Lc4/s0;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1}, Lc4/j0;->u()V

    .line 13
    .line 14
    .line 15
    iget-object v1, v0, Lc4/l0;->O:Lc4/T;

    .line 16
    .line 17
    invoke-static {v1}, Lc4/l0;->k(Lc4/s0;)V

    .line 18
    .line 19
    .line 20
    const-string v2, "Service disconnected"

    .line 21
    .line 22
    iget-object v1, v1, Lc4/T;->S:Lc4/Q;

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Lc4/Q;->a(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget-object v0, v0, Lc4/l0;->P:Lc4/j0;

    .line 28
    .line 29
    invoke-static {v0}, Lc4/l0;->k(Lc4/s0;)V

    .line 30
    .line 31
    .line 32
    new-instance v1, LK3/V;

    .line 33
    .line 34
    const/16 v2, 0xf

    .line 35
    .line 36
    invoke-direct {v1, v2, p0, p1}, LK3/V;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1}, Lc4/j0;->x(Ljava/lang/Runnable;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method
