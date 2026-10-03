.class public final Lcom/google/android/gms/internal/ads/K4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/y;
.implements Lcom/google/android/gms/internal/ads/B;
.implements Lcom/google/android/gms/internal/ads/Ny;
.implements Lcom/google/android/gms/internal/ads/i3;
.implements Lcom/google/android/gms/internal/ads/E3;
.implements Lcom/google/android/gms/internal/ads/uy;
.implements Lcom/google/android/gms/internal/ads/dg;
.implements Lcom/google/android/gms/internal/ads/ve;
.implements Lr3/b;
.implements Lt3/b;
.implements Lcom/google/android/gms/internal/ads/dC;
.implements Lcom/google/android/gms/internal/ads/VB;


# instance fields
.field public final synthetic G:I

.field public H:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1d

    .line 13
    iput v0, p0, Lcom/google/android/gms/internal/ads/K4;->G:I

    .line 14
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/K4;->H:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    iput p1, p0, Lcom/google/android/gms/internal/ads/K4;->G:I

    const/16 v0, 0xf

    if-eq p1, v0, :cond_2

    const/16 v0, 0x15

    if-eq p1, v0, :cond_1

    const/16 v0, 0x17

    if-eq p1, v0, :cond_0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/K4;->H:Ljava/lang/Object;

    return-void

    .line 16
    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/WeakHashMap;

    invoke-direct {p1}, Ljava/util/WeakHashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/K4;->H:Ljava/lang/Object;

    return-void

    .line 17
    :cond_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lm0/q;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Lm0/q;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/K4;->H:Ljava/lang/Object;

    return-void

    .line 18
    :cond_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/K4;->H:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ads/K4;->G:I

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/K4;->H:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/net/ConnectivityManager;)V
    .locals 2

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput v0, p0, Lcom/google/android/gms/internal/ads/K4;->G:I

    if-eqz p1, :cond_1

    .line 21
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    new-instance v0, Lk2/h;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lk2/h;-><init>(Ljava/lang/Object;I)V

    invoke-static {p1, v0}, Lc4/J0;->v(Landroid/net/ConnectivityManager;Lk2/h;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-class p1, Lcom/google/android/gms/internal/ads/K4;

    monitor-enter p1

    const/4 v0, 0x0

    :try_start_1
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/K4;->H:Ljava/lang/Object;

    .line 22
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    .line 3
    iput v0, p0, Lcom/google/android/gms/internal/ads/K4;->G:I

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/p3;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/p3;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/K4;->H:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/google/android/gms/internal/ads/K4;->G:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/K4;->H:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x9

    .line 24
    iput v0, p0, Lcom/google/android/gms/internal/ads/K4;->G:I

    .line 25
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/K4;->H:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/util/UUID;)V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x7

    .line 7
    iput v0, p0, Lcom/google/android/gms/internal/ads/K4;->G:I

    .line 8
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/K4;->H:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 10
    iput v0, p0, Lcom/google/android/gms/internal/ads/K4;->G:I

    .line 11
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/K4;->H:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/K4;->H:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/google/android/gms/internal/ads/k;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/k;->J0:Landroid/view/Surface;

    .line 6
    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/k;->z0:Lcom/google/android/gms/internal/ads/x;

    .line 10
    .line 11
    iget-object v3, v2, Lcom/google/android/gms/internal/ads/x;->H:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v3, Landroid/os/Handler;

    .line 14
    .line 15
    if-eqz v3, :cond_0

    .line 16
    .line 17
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 18
    .line 19
    .line 20
    move-result-wide v4

    .line 21
    new-instance v6, Lcom/google/android/gms/internal/ads/v;

    .line 22
    .line 23
    invoke-direct {v6, v2, v1, v4, v5}, Lcom/google/android/gms/internal/ads/v;-><init>(Lcom/google/android/gms/internal/ads/x;Landroid/view/Surface;J)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v3, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 27
    .line 28
    .line 29
    :cond_0
    const/4 v1, 0x1

    .line 30
    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/k;->M0:Z

    .line 31
    .line 32
    :cond_1
    return-void
.end method

.method public final b()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/K4;->H:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/google/android/gms/internal/ads/k;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/k;->J0:Landroid/view/Surface;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    const/4 v2, 0x1

    .line 11
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/k;->n0(II)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public final c(J)J
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/K4;->H:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/google/android/gms/internal/ads/Q;

    .line 4
    .line 5
    iget v1, v0, Lcom/google/android/gms/internal/ads/Q;->e:I

    .line 6
    .line 7
    int-to-long v1, v1

    .line 8
    mul-long p1, p1, v1

    .line 9
    .line 10
    const-wide/32 v1, 0xf4240

    .line 11
    .line 12
    .line 13
    div-long/2addr p1, v1

    .line 14
    const-wide/16 v1, -0x1

    .line 15
    .line 16
    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/Q;->j:J

    .line 17
    .line 18
    add-long/2addr v3, v1

    .line 19
    invoke-static {p1, p2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    .line 20
    .line 21
    .line 22
    move-result-wide p1

    .line 23
    const-wide/16 v0, 0x0

    .line 24
    .line 25
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    .line 26
    .line 27
    .line 28
    move-result-wide p1

    .line 29
    return-wide p1
.end method

.method public final d(Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/K4;->H:Ljava/lang/Object;

    .line 3
    .line 4
    check-cast v0, Ljava/util/Map;

    .line 5
    .line 6
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 13
    .line 14
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 15
    .line 16
    .line 17
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/K4;->H:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v1, Ljava/util/Map;

    .line 20
    .line 21
    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception p1

    .line 26
    goto :goto_1

    .line 27
    :cond_0
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/K4;->H:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v0, Ljava/util/Map;

    .line 31
    .line 32
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    check-cast p1, Ljava/util/concurrent/atomic/AtomicReference;

    .line 37
    .line 38
    return-object p1

    .line 39
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 40
    throw p1
.end method

.method public final e(Lcom/google/android/gms/internal/ads/v3;Lcom/google/android/gms/internal/ads/y3;)V
    .locals 7

    .line 1
    const-string v0, "post-error"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/v3;->d(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v3, Lcom/google/android/gms/internal/ads/x3;

    .line 7
    .line 8
    invoke-direct {v3, p2}, Lcom/google/android/gms/internal/ads/x3;-><init>(Lcom/google/android/gms/internal/ads/y3;)V

    .line 9
    .line 10
    .line 11
    new-instance p2, LK/a;

    .line 12
    .line 13
    const/4 v4, 0x0

    .line 14
    const/4 v6, 0x0

    .line 15
    const/16 v5, 0x12

    .line 16
    .line 17
    move-object v1, p2

    .line 18
    move-object v2, p1

    .line 19
    invoke-direct/range {v1 .. v6}, LK/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/K4;->H:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast p1, Ljava/util/concurrent/Executor;

    .line 25
    .line 26
    check-cast p1, Lcom/google/android/gms/internal/ads/p3;

    .line 27
    .line 28
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/p3;->G:Landroid/os/Handler;

    .line 29
    .line 30
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public final f(Lcom/google/android/gms/internal/ads/v3;Lcom/google/android/gms/internal/ads/x3;Lcom/google/android/gms/internal/ads/Ha;)V
    .locals 7

    .line 1
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/v3;->K:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x1

    .line 5
    :try_start_0
    iput-boolean v1, p1, Lcom/google/android/gms/internal/ads/v3;->O:Z

    .line 6
    .line 7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    const-string v0, "post-response"

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/v3;->d(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    new-instance v0, LK/a;

    .line 14
    .line 15
    const/16 v5, 0x12

    .line 16
    .line 17
    const/4 v6, 0x0

    .line 18
    move-object v1, v0

    .line 19
    move-object v2, p1

    .line 20
    move-object v3, p2

    .line 21
    move-object v4, p3

    .line 22
    invoke-direct/range {v1 .. v6}, LK/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 23
    .line 24
    .line 25
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/K4;->H:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast p1, Ljava/util/concurrent/Executor;

    .line 28
    .line 29
    check-cast p1, Lcom/google/android/gms/internal/ads/p3;

    .line 30
    .line 31
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/p3;->G:Landroid/os/Handler;

    .line 32
    .line 33
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :catchall_0
    move-exception p1

    .line 38
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    throw p1
.end method

.method public final g()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/K4;->H:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/google/android/gms/internal/ads/K4;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/K4;->H:Ljava/lang/Object;

    .line 6
    .line 7
    move-object v1, v0

    .line 8
    check-cast v1, LD0/g;

    .line 9
    .line 10
    iget-boolean v1, v1, LD0/g;->a:Z

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    check-cast v0, LD0/g;

    .line 15
    .line 16
    iget-boolean v0, v0, LD0/g;->b:Z

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    const/4 v0, 0x1

    .line 21
    return v0

    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
    return v0
.end method

.method public final h(IZ)V
    .locals 0

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/K4;->H:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p2, Lm0/q;

    .line 6
    .line 7
    invoke-virtual {p2, p1}, Lm0/q;->c(I)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public final zza()J
    .locals 3

    iget v0, p0, Lcom/google/android/gms/internal/ads/K4;->G:I

    packed-switch v0, :pswitch_data_0

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/K4;->H:Ljava/lang/Object;

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    .line 3
    :pswitch_0
    const-class v0, Lcom/google/android/gms/internal/ads/K4;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/K4;->H:Ljava/lang/Object;

    check-cast v1, Landroid/net/NetworkCapabilities;

    if-eqz v1, :cond_2

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    monitor-exit v0

    const-wide/16 v0, 0x2

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/K4;->H:Ljava/lang/Object;

    check-cast v1, Landroid/net/NetworkCapabilities;

    const/4 v2, 0x1

    .line 5
    invoke-virtual {v1, v2}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    monitor-exit v0

    const-wide/16 v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/K4;->H:Ljava/lang/Object;

    check-cast v1, Landroid/net/NetworkCapabilities;

    const/4 v2, 0x0

    .line 7
    invoke-virtual {v1, v2}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 8
    monitor-exit v0

    const-wide/16 v0, 0x0

    goto :goto_0

    .line 9
    :cond_2
    monitor-exit v0

    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final zza()Lcom/google/android/gms/internal/ads/kC;
    .locals 2

    .line 10
    new-instance v0, Lcom/google/android/gms/internal/ads/wA;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/K4;->H:Ljava/lang/Object;

    check-cast v1, [B

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/wA;-><init>([B)V

    return-object v0
.end method

.method public final zza()Ljava/io/File;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/K4;->H:Ljava/lang/Object;

    check-cast v0, Ljava/io/File;

    return-object v0
.end method

.method public final zza()V
    .locals 12

    iget v0, p0, Lcom/google/android/gms/internal/ads/K4;->G:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/K4;->H:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    .line 12
    :pswitch_0
    sget-object v0, Lk3/l;->A:Lk3/l;

    iget-object v0, v0, Lk3/l;->j:LP3/b;

    .line 13
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/K4;->H:Ljava/lang/Object;

    check-cast v0, Lt2/c;

    iget-wide v9, v0, Lt2/c;->G:J

    sub-long/2addr v2, v9

    iget-object v4, v0, Lt2/c;->J:Ljava/io/Serializable;

    move-object v8, v4

    check-cast v8, Ljava/util/ArrayList;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 16
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "LoadNewJavascriptEngine(onEngLoaded) latency is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ms."

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 18
    invoke-static {v1}, Lo3/I;->k(Ljava/lang/String;)V

    .line 19
    sget-object v1, Lo3/O;->l:Lo3/J;

    new-instance v2, Lcom/google/android/gms/internal/ads/za;

    iget-object v3, v0, Lt2/c;->I:Ljava/lang/Object;

    move-object v5, v3

    check-cast v5, Lcom/google/android/gms/internal/ads/Ja;

    iget-object v3, v0, Lt2/c;->K:Ljava/lang/Object;

    move-object v6, v3

    check-cast v6, Lcom/google/android/gms/internal/ads/Ia;

    iget-object v0, v0, Lt2/c;->H:Ljava/lang/Object;

    move-object v7, v0

    check-cast v7, Lcom/google/android/gms/internal/ads/xa;

    const/4 v11, 0x0

    move-object v4, v2

    invoke-direct/range {v4 .. v11}, Lcom/google/android/gms/internal/ads/za;-><init>(Lcom/google/android/gms/internal/ads/Ja;Lcom/google/android/gms/internal/ads/Ia;Lcom/google/android/gms/internal/ads/xa;Ljava/util/ArrayList;JI)V

    sget-object v0, Lcom/google/android/gms/internal/ads/Q7;->b:Lcom/google/android/gms/internal/ads/J7;

    .line 20
    sget-object v3, Ll3/q;->d:Ll3/q;

    iget-object v3, v3, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 21
    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    move-result-object v0

    .line 22
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v3, v0

    .line 23
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_0
    .end packed-switch
.end method

.method public final zza(IJ)V
    .locals 2

    .line 24
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p2

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/K4;->H:Ljava/lang/Object;

    check-cast p2, Lcom/google/android/gms/internal/ads/cy;

    invoke-virtual {p2, p1, v0, v1}, Lcom/google/android/gms/internal/ads/cy;->c(IJ)V

    return-void
.end method

.method public final zza(Ljava/lang/Object;)V
    .locals 3

    iget v0, p0, Lcom/google/android/gms/internal/ads/K4;->G:I

    packed-switch v0, :pswitch_data_0

    .line 25
    check-cast p1, Lcom/google/android/gms/internal/ads/xa;

    .line 26
    sget-object v0, Lcom/google/android/gms/internal/ads/se;->e:Lcom/google/android/gms/internal/ads/re;

    new-instance v1, Lcom/google/android/gms/internal/ads/Ha;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0, p1}, Lcom/google/android/gms/internal/ads/Ha;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/re;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 27
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/K4;->H:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/Ja;

    check-cast p1, Lcom/google/android/gms/internal/ads/xa;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/xa;->G:Lcom/google/android/gms/internal/ads/Ef;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/Ef;->a0()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 29
    iput p1, v0, Lcom/google/android/gms/internal/ads/Ja;->g:I

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_0
    .end packed-switch
.end method

.method public final zza(Ljava/lang/Throwable;)V
    .locals 1

    iget p1, p0, Lcom/google/android/gms/internal/ads/K4;->G:I

    packed-switch p1, :pswitch_data_0

    .line 30
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/K4;->H:Ljava/lang/Object;

    check-cast p1, Lf/H;

    .line 31
    iget-object p1, p1, Lf/H;->b:Ljava/lang/Object;

    check-cast p1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, -0x1

    .line 32
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void

    .line 33
    :pswitch_0
    sget-object p1, Lcom/google/android/gms/internal/ads/Fd;->l:Ljava/util/List;

    .line 34
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/K4;->H:Ljava/lang/Object;

    check-cast v0, LD4/b;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void

    :pswitch_data_0
    .packed-switch 0x19
        :pswitch_0
    .end packed-switch
.end method

.method public final zzb(IJLjava/lang/String;)V
    .locals 9

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long v4, v0, p2

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/K4;->H:Ljava/lang/Object;

    move-object v2, p2

    check-cast v2, Lcom/google/android/gms/internal/ads/cy;

    const/4 v7, 0x0

    const/4 v6, 0x0

    move v3, p1

    move-object v8, p4

    .line 2
    invoke-virtual/range {v2 .. v8}, Lcom/google/android/gms/internal/ads/cy;->d(IJLjava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)Lg4/r;

    return-void
.end method

.method public final zzb(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/K4;->G:I

    packed-switch v0, :pswitch_data_0

    .line 3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/K4;->H:Ljava/lang/Object;

    check-cast p1, Lf/H;

    .line 4
    iget-object p1, p1, Lf/H;->b:Ljava/lang/Object;

    check-cast p1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x1

    .line 5
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void

    .line 6
    :pswitch_0
    check-cast p1, Ljava/lang/Void;

    .line 7
    sget-object p1, Lcom/google/android/gms/internal/ads/Fd;->l:Ljava/util/List;

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/K4;->H:Ljava/lang/Object;

    check-cast v0, LD4/b;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void

    :pswitch_data_0
    .packed-switch 0x19
        :pswitch_0
    .end packed-switch
.end method

.method public final zzb([Ljava/security/MessageDigest;JI)V
    .locals 2

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/K4;->H:Ljava/lang/Object;

    check-cast v0, Ljava/nio/ByteBuffer;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/K4;->H:Ljava/lang/Object;

    check-cast v1, Ljava/nio/ByteBuffer;

    long-to-int p3, p2

    .line 10
    invoke-virtual {v1, p3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/K4;->H:Ljava/lang/Object;

    check-cast p2, Ljava/nio/ByteBuffer;

    add-int/2addr p3, p4

    .line 11
    invoke-virtual {p2, p3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/K4;->H:Ljava/lang/Object;

    check-cast p2, Ljava/nio/ByteBuffer;

    .line 12
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object p2

    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    array-length p3, p1

    const/4 p4, 0x0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    .line 14
    aget-object v1, p1, v0

    .line 15
    invoke-virtual {p2, p4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 16
    invoke-virtual {v1, p2}, Ljava/security/MessageDigest;->update(Ljava/nio/ByteBuffer;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 17
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
