.class public final Lk2/h;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p2, p0, Lk2/h;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lk2/h;->b:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private final a(Landroid/net/NetworkCapabilities;)V
    .locals 2

    .line 1
    const-class v0, Lcom/google/android/gms/internal/ads/K4;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lk2/h;->b:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast v1, Lcom/google/android/gms/internal/ads/K4;

    .line 7
    .line 8
    iput-object p1, v1, Lcom/google/android/gms/internal/ads/K4;->H:Ljava/lang/Object;

    .line 9
    .line 10
    monitor-exit v0

    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception p1

    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    throw p1
.end method

.method private final b()V
    .locals 3

    .line 1
    const-class v0, Lcom/google/android/gms/internal/ads/K4;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lk2/h;->b:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast v1, Lcom/google/android/gms/internal/ads/K4;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    iput-object v2, v1, Lcom/google/android/gms/internal/ads/K4;->H:Ljava/lang/Object;

    .line 10
    .line 11
    monitor-exit v0

    .line 12
    return-void

    .line 13
    :catchall_0
    move-exception v1

    .line 14
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    throw v1
.end method

.method private final c(Landroid/net/Network;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lk2/h;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/google/android/gms/internal/cast/w;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/google/android/gms/internal/cast/w;->h:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-static {v1}, Lcom/bumptech/glide/c;->h(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    monitor-enter v1

    .line 11
    :try_start_0
    iget-object v2, v0, Lcom/google/android/gms/internal/cast/w;->d:Ljava/util/Map;

    .line 12
    .line 13
    if-eqz v2, :cond_2

    .line 14
    .line 15
    iget-object v2, v0, Lcom/google/android/gms/internal/cast/w;->e:Ljava/util/List;

    .line 16
    .line 17
    if-nez v2, :cond_0

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_0
    sget-object v2, Lcom/google/android/gms/internal/cast/w;->j:LH3/b;

    .line 21
    .line 22
    const-string v3, "the network is lost"

    .line 23
    .line 24
    const/4 v4, 0x0

    .line 25
    new-array v4, v4, [Ljava/lang/Object;

    .line 26
    .line 27
    invoke-virtual {v2, v3, v4}, LH3/b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    iget-object v2, v0, Lcom/google/android/gms/internal/cast/w;->e:Ljava/util/List;

    .line 31
    .line 32
    invoke-interface {v2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-eqz v2, :cond_1

    .line 37
    .line 38
    iget-object v2, v0, Lcom/google/android/gms/internal/cast/w;->d:Ljava/util/Map;

    .line 39
    .line 40
    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :catchall_0
    move-exception p1

    .line 45
    goto :goto_3

    .line 46
    :cond_1
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    invoke-virtual {v0}, Lcom/google/android/gms/internal/cast/w;->b()V

    .line 48
    .line 49
    .line 50
    goto :goto_2

    .line 51
    :cond_2
    :goto_1
    :try_start_1
    monitor-exit v1

    .line 52
    :goto_2
    return-void

    .line 53
    :goto_3
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    throw p1
.end method


# virtual methods
.method public final onAvailable(Landroid/net/Network;)V
    .locals 2

    .line 1
    iget v0, p0, Lk2/h;->a:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    :pswitch_0
    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onAvailable(Landroid/net/Network;)V

    .line 8
    .line 9
    .line 10
    :pswitch_1
    return-void

    .line 11
    :pswitch_2
    iget-object p1, p0, Lk2/h;->b:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast p1, Lcom/google/android/gms/internal/ads/le;

    .line 14
    .line 15
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/le;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 16
    .line 17
    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :pswitch_3
    new-instance p1, Lc0/a;

    .line 22
    .line 23
    invoke-direct {p1, v1, p0, v1}, Lc0/a;-><init>(ILjava/lang/Object;Z)V

    .line 24
    .line 25
    .line 26
    invoke-static {}, LP2/o;->f()Landroid/os/Handler;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    nop

    .line 35
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 3

    .line 1
    iget v0, p0, Lk2/h;->a:I

    .line 2
    .line 3
    sparse-switch v0, :sswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2}, Landroid/net/ConnectivityManager$NetworkCallback;->onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :sswitch_0
    const-class p1, Lcom/google/android/gms/internal/pal/r1;

    .line 11
    .line 12
    monitor-enter p1

    .line 13
    :try_start_0
    iget-object v0, p0, Lk2/h;->b:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v0, Lcom/google/android/gms/internal/pal/r1;

    .line 16
    .line 17
    iput-object p2, v0, Lcom/google/android/gms/internal/pal/r1;->H:Ljava/lang/Object;

    .line 18
    .line 19
    monitor-exit p1

    .line 20
    return-void

    .line 21
    :catchall_0
    move-exception p2

    .line 22
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    throw p2

    .line 24
    :sswitch_1
    invoke-direct {p0, p2}, Lk2/h;->a(Landroid/net/NetworkCapabilities;)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :sswitch_2
    const-string v0, "network"

    .line 29
    .line 30
    invoke-static {p1, v0}, Lz4/q0;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    const-string p1, "capabilities"

    .line 34
    .line 35
    invoke-static {p2, p1}, Lz4/q0;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-static {}, Ld2/n;->d()Ld2/n;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    sget-object v0, Lk2/j;->a:Ljava/lang/String;

    .line 43
    .line 44
    new-instance v1, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    const-string v2, "Network capabilities changed: "

    .line 47
    .line 48
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    invoke-virtual {p1, v0, p2}, Ld2/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    iget-object p1, p0, Lk2/h;->b:Ljava/lang/Object;

    .line 62
    .line 63
    check-cast p1, Lk2/i;

    .line 64
    .line 65
    iget-object p2, p1, Lk2/i;->f:Landroid/net/ConnectivityManager;

    .line 66
    .line 67
    invoke-static {p2}, Lk2/j;->a(Landroid/net/ConnectivityManager;)Li2/a;

    .line 68
    .line 69
    .line 70
    move-result-object p2

    .line 71
    invoke-virtual {p1, p2}, Lk2/f;->c(Ljava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    return-void

    .line 75
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x2 -> :sswitch_1
        0x5 -> :sswitch_0
    .end sparse-switch
.end method

.method public final onLinkPropertiesChanged(Landroid/net/Network;Landroid/net/LinkProperties;)V
    .locals 2

    .line 1
    iget v0, p0, Lk2/h;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2}, Landroid/net/ConnectivityManager$NetworkCallback;->onLinkPropertiesChanged(Landroid/net/Network;Landroid/net/LinkProperties;)V

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :pswitch_0
    iget-object v0, p0, Lk2/h;->b:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v0, Lcom/google/android/gms/internal/cast/w;

    .line 13
    .line 14
    sget-object v1, Lcom/google/android/gms/internal/cast/w;->j:LH3/b;

    .line 15
    .line 16
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/cast/w;->a(Landroid/net/Network;Landroid/net/LinkProperties;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    nop

    .line 21
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public final onLost(Landroid/net/Network;)V
    .locals 2

    .line 1
    iget v0, p0, Lk2/h;->a:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    const-class v0, Lcom/google/android/gms/internal/pal/r1;

    .line 8
    .line 9
    monitor-enter v0

    .line 10
    :try_start_0
    iget-object p1, p0, Lk2/h;->b:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast p1, Lcom/google/android/gms/internal/pal/r1;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    iput-object v1, p1, Lcom/google/android/gms/internal/pal/r1;->H:Ljava/lang/Object;

    .line 16
    .line 17
    monitor-exit v0

    .line 18
    return-void

    .line 19
    :catchall_0
    move-exception p1

    .line 20
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    throw p1

    .line 22
    :pswitch_0
    invoke-direct {p0, p1}, Lk2/h;->c(Landroid/net/Network;)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :pswitch_1
    iget-object p1, p0, Lk2/h;->b:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast p1, Lcom/google/android/gms/internal/ads/le;

    .line 29
    .line 30
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/le;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 31
    .line 32
    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :pswitch_2
    invoke-direct {p0}, Lk2/h;->b()V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :pswitch_3
    new-instance p1, Lc0/a;

    .line 41
    .line 42
    const/4 v0, 0x1

    .line 43
    invoke-direct {p1, v0, p0, v1}, Lc0/a;-><init>(ILjava/lang/Object;Z)V

    .line 44
    .line 45
    .line 46
    invoke-static {}, LP2/o;->f()Landroid/os/Handler;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :pswitch_4
    const-string v0, "network"

    .line 55
    .line 56
    invoke-static {p1, v0}, Lz4/q0;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-static {}, Ld2/n;->d()Ld2/n;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    sget-object v0, Lk2/j;->a:Ljava/lang/String;

    .line 64
    .line 65
    const-string v1, "Network connection lost"

    .line 66
    .line 67
    invoke-virtual {p1, v0, v1}, Ld2/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    iget-object p1, p0, Lk2/h;->b:Ljava/lang/Object;

    .line 71
    .line 72
    check-cast p1, Lk2/i;

    .line 73
    .line 74
    iget-object v0, p1, Lk2/i;->f:Landroid/net/ConnectivityManager;

    .line 75
    .line 76
    invoke-static {v0}, Lk2/j;->a(Landroid/net/ConnectivityManager;)Li2/a;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-virtual {p1, v0}, Lk2/f;->c(Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    return-void

    .line 84
    nop

    .line 85
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onUnavailable()V
    .locals 5

    .line 1
    iget v0, p0, Lk2/h;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Landroid/net/ConnectivityManager$NetworkCallback;->onUnavailable()V

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :pswitch_0
    iget-object v0, p0, Lk2/h;->b:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v0, Lcom/google/android/gms/internal/cast/w;

    .line 13
    .line 14
    iget-object v1, v0, Lcom/google/android/gms/internal/cast/w;->h:Ljava/lang/Object;

    .line 15
    .line 16
    invoke-static {v1}, Lcom/bumptech/glide/c;->h(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    monitor-enter v1

    .line 20
    :try_start_0
    iget-object v2, v0, Lcom/google/android/gms/internal/cast/w;->d:Ljava/util/Map;

    .line 21
    .line 22
    if-eqz v2, :cond_1

    .line 23
    .line 24
    iget-object v2, v0, Lcom/google/android/gms/internal/cast/w;->e:Ljava/util/List;

    .line 25
    .line 26
    if-nez v2, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    sget-object v2, Lcom/google/android/gms/internal/cast/w;->j:LH3/b;

    .line 30
    .line 31
    const-string v3, "all networks are unavailable."

    .line 32
    .line 33
    const/4 v4, 0x0

    .line 34
    new-array v4, v4, [Ljava/lang/Object;

    .line 35
    .line 36
    invoke-virtual {v2, v3, v4}, LH3/b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    iget-object v2, v0, Lcom/google/android/gms/internal/cast/w;->d:Ljava/util/Map;

    .line 40
    .line 41
    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 42
    .line 43
    .line 44
    iget-object v2, v0, Lcom/google/android/gms/internal/cast/w;->e:Ljava/util/List;

    .line 45
    .line 46
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 47
    .line 48
    .line 49
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    invoke-virtual {v0}, Lcom/google/android/gms/internal/cast/w;->b()V

    .line 51
    .line 52
    .line 53
    goto :goto_1

    .line 54
    :catchall_0
    move-exception v0

    .line 55
    goto :goto_2

    .line 56
    :cond_1
    :goto_0
    :try_start_1
    monitor-exit v1

    .line 57
    :goto_1
    return-void

    .line 58
    :goto_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 59
    throw v0

    .line 60
    nop

    .line 61
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method
