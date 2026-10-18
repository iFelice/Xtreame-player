.class public final LB0/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LP2/h;
.implements LJ2/q;


# instance fields
.field public G:Z

.field public final H:Ljava/lang/Object;

.field public I:Ljava/lang/Object;

.field public J:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    .line 7
    new-array v1, v0, [F

    iput-object v1, p0, LB0/c;->H:Ljava/lang/Object;

    .line 8
    new-array v0, v0, [F

    iput-object v0, p0, LB0/c;->I:Ljava/lang/Object;

    .line 9
    new-instance v0, Lc/g;

    invoke-direct {v0}, Lc/g;-><init>()V

    iput-object v0, p0, LB0/c;->J:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(LJ3/k;LJ2/p;)V
    .locals 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Lk2/h;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lk2/h;-><init>(Ljava/lang/Object;I)V

    iput-object v0, p0, LB0/c;->J:Ljava/lang/Object;

    .line 34
    iput-object p1, p0, LB0/c;->I:Ljava/lang/Object;

    .line 35
    iput-object p2, p0, LB0/c;->H:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;LR0/q;Ljava/lang/Boolean;)V
    .locals 2

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object p1, v0

    goto :goto_0

    .line 42
    :cond_0
    invoke-static {p1}, Ln0/c;->f(Landroid/content/Context;)Landroid/media/AudioManager;

    move-result-object p1

    :goto_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    if-eqz p3, :cond_1

    .line 43
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_1

    goto :goto_1

    .line 44
    :cond_1
    invoke-static {p1}, LO/c;->b(Landroid/media/AudioManager;)Landroid/media/Spatializer;

    move-result-object p1

    iput-object p1, p0, LB0/c;->H:Ljava/lang/Object;

    .line 45
    invoke-static {p1}, LO/c;->a(Landroid/media/Spatializer;)I

    move-result p3

    const/4 v0, 0x1

    if-eqz p3, :cond_2

    const/4 v1, 0x1

    :cond_2
    iput-boolean v1, p0, LB0/c;->G:Z

    .line 46
    new-instance p3, LR0/l;

    invoke-direct {p3, p2}, LR0/l;-><init>(LR0/q;)V

    iput-object p3, p0, LB0/c;->J:Ljava/lang/Object;

    .line 47
    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-static {p3}, Lcom/google/android/gms/internal/measurement/H1;->j(Ljava/lang/Object;)V

    invoke-direct {p2, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, LB0/c;->I:Ljava/lang/Object;

    .line 48
    new-instance p3, LD0/O;

    invoke-direct {p3, v0, p2}, LD0/O;-><init>(ILandroid/os/Handler;)V

    iget-object p2, p0, LB0/c;->J:Ljava/lang/Object;

    check-cast p2, Landroid/media/Spatializer$OnSpatializerStateChangedListener;

    invoke-static {p1, p3, p2}, LO/c;->g(Landroid/media/Spatializer;LD0/O;Landroid/media/Spatializer$OnSpatializerStateChangedListener;)V

    return-void

    .line 49
    :cond_3
    :goto_1
    iput-object v0, p0, LB0/c;->H:Ljava/lang/Object;

    .line 50
    iput-boolean v1, p0, LB0/c;->G:Z

    .line 51
    iput-object v0, p0, LB0/c;->I:Ljava/lang/Object;

    .line 52
    iput-object v0, p0, LB0/c;->J:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Landroid/os/Looper;LB0/L;Lp0/G;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, LB0/c;->H:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 12
    invoke-virtual {p5, p2, p1}, Lp0/G;->a(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lp0/I;

    move-result-object p2

    iput-object p2, p0, LB0/c;->J:Ljava/lang/Object;

    .line 13
    new-instance p2, LB0/b;

    .line 14
    invoke-virtual {p5, p3, p1}, Lp0/G;->a(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lp0/I;

    move-result-object p1

    invoke-direct {p2, p0, p1, p4}, LB0/b;-><init>(LB0/c;Lp0/I;LB0/L;)V

    iput-object p2, p0, LB0/c;->I:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lc4/Z;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LB0/c;->J:Ljava/lang/Object;

    invoke-static {p2}, Lcom/bumptech/glide/c;->e(Ljava/lang/String;)V

    iput-object p2, p0, LB0/c;->H:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/b;Ljava/util/ArrayList;Lcom/google/android/gms/internal/measurement/Q1;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LB0/c;->H:Ljava/lang/Object;

    iput-object p2, p0, LB0/c;->I:Ljava/lang/Object;

    iput-object p3, p0, LB0/c;->J:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lr2/b;)V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, LB0/c;->G:Z

    .line 17
    iput-object p1, p0, LB0/c;->H:Ljava/lang/Object;

    .line 18
    iput-object p2, p0, LB0/c;->I:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 19
    iput-object p1, p0, LB0/c;->J:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZLs0/h;)V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_1

    .line 21
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/H1;->d(Z)V

    .line 22
    iput-object p3, p0, LB0/c;->H:Ljava/lang/Object;

    .line 23
    iput-object p1, p0, LB0/c;->I:Ljava/lang/Object;

    .line 24
    iput-boolean p2, p0, LB0/c;->G:Z

    .line 25
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, LB0/c;->J:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lr2/o;)V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 27
    iput-boolean v0, p0, LB0/c;->G:Z

    const/4 v0, 0x0

    .line 28
    iput-object v0, p0, LB0/c;->H:Ljava/lang/Object;

    .line 29
    iput-object v0, p0, LB0/c;->I:Ljava/lang/Object;

    .line 30
    iput-object p1, p0, LB0/c;->J:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lt2/d;Lt2/b;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LB0/c;->J:Ljava/lang/Object;

    .line 37
    iput-object p2, p0, LB0/c;->H:Ljava/lang/Object;

    .line 38
    iget-boolean p2, p2, Lt2/b;->e:Z

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 39
    :cond_0
    iget p1, p1, Lt2/d;->M:I

    .line 40
    new-array p1, p1, [Z

    :goto_0
    iput-object p1, p0, LB0/c;->I:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lw5/b;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x15

    .line 3
    iget v1, p1, Lw5/b;->H:I

    if-lt v1, v0, :cond_0

    and-int/lit8 v0, v1, 0x3

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 4
    iput-object p1, p0, LB0/c;->H:Ljava/lang/Object;

    return-void

    .line 5
    :cond_0
    invoke-static {}, Lq5/e;->a()Lq5/e;

    move-result-object p1

    throw p1
.end method

.method public static d([F[F)V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {p0, v0}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 3
    .line 4
    .line 5
    const/16 v1, 0xa

    .line 6
    .line 7
    aget v2, p1, v1

    .line 8
    .line 9
    mul-float v2, v2, v2

    .line 10
    .line 11
    const/16 v3, 0x8

    .line 12
    .line 13
    aget v4, p1, v3

    .line 14
    .line 15
    mul-float v4, v4, v4

    .line 16
    .line 17
    add-float/2addr v4, v2

    .line 18
    float-to-double v4, v4

    .line 19
    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    .line 20
    .line 21
    .line 22
    move-result-wide v4

    .line 23
    double-to-float v2, v4

    .line 24
    aget v4, p1, v1

    .line 25
    .line 26
    div-float v5, v4, v2

    .line 27
    .line 28
    aput v5, p0, v0

    .line 29
    .line 30
    aget p1, p1, v3

    .line 31
    .line 32
    div-float v0, p1, v2

    .line 33
    .line 34
    const/4 v5, 0x2

    .line 35
    aput v0, p0, v5

    .line 36
    .line 37
    neg-float p1, p1

    .line 38
    div-float/2addr p1, v2

    .line 39
    aput p1, p0, v3

    .line 40
    .line 41
    div-float/2addr v4, v2

    .line 42
    aput v4, p0, v1

    .line 43
    .line 44
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 4

    .line 1
    iget-object v0, p0, LB0/c;->I:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, LP2/h;

    .line 4
    .line 5
    invoke-interface {v0}, LP2/h;->get()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 10
    .line 11
    invoke-static {v0}, Lb7/u;->f(Landroid/net/ConnectivityManager;)Landroid/net/Network;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const/4 v1, 0x0

    .line 16
    const/4 v2, 0x1

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v0, 0x0

    .line 22
    :goto_0
    iput-boolean v0, p0, LB0/c;->G:Z

    .line 23
    .line 24
    :try_start_0
    iget-object v0, p0, LB0/c;->I:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v0, LP2/h;

    .line 27
    .line 28
    invoke-interface {v0}, LP2/h;->get()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 33
    .line 34
    iget-object v3, p0, LB0/c;->J:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast v3, Landroid/net/ConnectivityManager$NetworkCallback;

    .line 37
    .line 38
    invoke-static {v0, v3}, Lh2/a;->k(Landroid/net/ConnectivityManager;Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    .line 40
    .line 41
    return v2

    .line 42
    :catch_0
    move-exception v0

    .line 43
    const/4 v2, 0x5

    .line 44
    const-string v3, "ConnectivityMonitor"

    .line 45
    .line 46
    invoke-static {v3, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    if-eqz v2, :cond_1

    .line 51
    .line 52
    const-string v2, "Failed to register callback"

    .line 53
    .line 54
    invoke-static {v3, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 55
    .line 56
    .line 57
    :cond_1
    return v1
.end method

.method public final b()V
    .locals 2

    .line 1
    iget-object v0, p0, LB0/c;->I:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, LP2/h;

    .line 4
    .line 5
    invoke-interface {v0}, LP2/h;->get()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 10
    .line 11
    iget-object v1, p0, LB0/c;->J:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v1, Landroid/net/ConnectivityManager$NetworkCallback;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final c()V
    .locals 2

    .line 1
    iget-object v0, p0, LB0/c;->J:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lt2/d;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-static {v0, p0, v1}, Lt2/d;->k(Lt2/d;LB0/c;Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final e(III)I
    .locals 2

    .line 1
    iget-boolean v0, p0, LB0/c;->G:Z

    .line 2
    .line 3
    iget-object v1, p0, LB0/c;->H:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Lw5/b;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v1, p2, p1}, Lw5/b;->b(II)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {v1, p1, p2}, Lw5/b;->b(II)Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    :goto_0
    if-eqz p1, :cond_1

    .line 19
    .line 20
    shl-int/lit8 p1, p3, 0x1

    .line 21
    .line 22
    or-int/lit8 p1, p1, 0x1

    .line 23
    .line 24
    return p1

    .line 25
    :cond_1
    shl-int/lit8 p1, p3, 0x1

    .line 26
    .line 27
    return p1
.end method

.method public final f(Ljava/util/UUID;LG0/u;)[B
    .locals 19

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    iget-object v3, v2, LG0/u;->b:Ljava/lang/String;

    .line 8
    .line 9
    iget-boolean v4, v1, LB0/c;->G:Z

    .line 10
    .line 11
    if-nez v4, :cond_0

    .line 12
    .line 13
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    if-eqz v4, :cond_1

    .line 18
    .line 19
    :cond_0
    iget-object v3, v1, LB0/c;->I:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v3, Ljava/lang/String;

    .line 22
    .line 23
    :cond_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    if-nez v4, :cond_5

    .line 28
    .line 29
    new-instance v4, Ljava/util/HashMap;

    .line 30
    .line 31
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 32
    .line 33
    .line 34
    sget-object v5, Lm0/g;->e:Ljava/util/UUID;

    .line 35
    .line 36
    invoke-virtual {v5, v0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v6

    .line 40
    if-eqz v6, :cond_2

    .line 41
    .line 42
    const-string v6, "text/xml"

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_2
    sget-object v6, Lm0/g;->c:Ljava/util/UUID;

    .line 46
    .line 47
    invoke-virtual {v6, v0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v6

    .line 51
    if-eqz v6, :cond_3

    .line 52
    .line 53
    const-string v6, "application/json"

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_3
    const-string v6, "application/octet-stream"

    .line 57
    .line 58
    :goto_0
    const-string v7, "Content-Type"

    .line 59
    .line 60
    invoke-virtual {v4, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v5, v0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    if-eqz v0, :cond_4

    .line 68
    .line 69
    const-string v0, "SOAPAction"

    .line 70
    .line 71
    const-string v5, "http://schemas.microsoft.com/DRM/2007/03/protocols/AcquireLicense"

    .line 72
    .line 73
    invoke-virtual {v4, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    :cond_4
    iget-object v0, v1, LB0/c;->J:Ljava/lang/Object;

    .line 77
    .line 78
    move-object v5, v0

    .line 79
    check-cast v5, Ljava/util/Map;

    .line 80
    .line 81
    monitor-enter v5

    .line 82
    :try_start_0
    iget-object v0, v1, LB0/c;->J:Ljava/lang/Object;

    .line 83
    .line 84
    check-cast v0, Ljava/util/Map;

    .line 85
    .line 86
    invoke-virtual {v4, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 87
    .line 88
    .line 89
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    iget-object v0, v1, LB0/c;->H:Ljava/lang/Object;

    .line 91
    .line 92
    check-cast v0, Ls0/h;

    .line 93
    .line 94
    invoke-interface {v0}, Ls0/h;->a()Ls0/i;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    iget-object v2, v2, LG0/u;->a:[B

    .line 99
    .line 100
    invoke-static {v0, v3, v2, v4}, LQ3/b;->e(Ls0/i;Ljava/lang/String;[BLjava/util/Map;)[B

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    return-object v0

    .line 105
    :catchall_0
    move-exception v0

    .line 106
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 107
    throw v0

    .line 108
    :cond_5
    new-instance v0, LG0/B;

    .line 109
    .line 110
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 111
    .line 112
    .line 113
    move-result-object v8

    .line 114
    sget-object v15, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    .line 115
    .line 116
    const-string v2, "The uri must be set."

    .line 117
    .line 118
    invoke-static {v15, v2}, Lcom/google/android/gms/internal/measurement/H1;->k(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    new-instance v16, Ls0/m;

    .line 122
    .line 123
    const/4 v14, 0x0

    .line 124
    const/16 v17, 0x0

    .line 125
    .line 126
    const-wide/16 v4, 0x0

    .line 127
    .line 128
    const/4 v6, 0x1

    .line 129
    const/4 v7, 0x0

    .line 130
    const-wide/16 v9, 0x0

    .line 131
    .line 132
    const-wide/16 v11, -0x1

    .line 133
    .line 134
    const/4 v13, 0x0

    .line 135
    move-object/from16 v2, v16

    .line 136
    .line 137
    move-object v3, v15

    .line 138
    move-object/from16 v18, v15

    .line 139
    .line 140
    move-object/from16 v15, v17

    .line 141
    .line 142
    invoke-direct/range {v2 .. v15}, Ls0/m;-><init>(Landroid/net/Uri;JI[BLjava/util/Map;JJLjava/lang/String;ILjava/lang/Object;)V

    .line 143
    .line 144
    .line 145
    sget-object v9, Lz4/i0;->M:Lz4/i0;

    .line 146
    .line 147
    new-instance v12, Ljava/lang/IllegalStateException;

    .line 148
    .line 149
    const-string v2, "No license URL"

    .line 150
    .line 151
    invoke-direct {v12, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    const-wide/16 v10, 0x0

    .line 155
    .line 156
    move-object v6, v0

    .line 157
    move-object/from16 v7, v16

    .line 158
    .line 159
    move-object/from16 v8, v18

    .line 160
    .line 161
    invoke-direct/range {v6 .. v12}, LG0/B;-><init>(Ls0/m;Landroid/net/Uri;Ljava/util/Map;JLjava/lang/Exception;)V

    .line 162
    .line 163
    .line 164
    throw v0
.end method

.method public final g(LG0/v;)[B
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p1, LG0/v;->b:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v1, "&signedRequest="

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    iget-object p1, p1, LG0/v;->a:[B

    .line 17
    .line 18
    invoke-static {p1}, Lp0/M;->o([B)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    iget-object v0, p0, LB0/c;->H:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast v0, Ls0/h;

    .line 32
    .line 33
    invoke-interface {v0}, Ls0/h;->a()Ls0/i;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    const/4 v1, 0x0

    .line 38
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-static {v0, p1, v1, v2}, LQ3/b;->e(Ls0/i;Ljava/lang/String;[BLjava/util/Map;)[B

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    return-object p1
.end method

.method public final get()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-boolean v0, p0, LB0/c;->G:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "Glide registry"

    .line 6
    .line 7
    invoke-static {v0}, LJ6/r;->b(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    iput-boolean v0, p0, LB0/c;->G:Z

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    :try_start_0
    iget-object v1, p0, LB0/c;->H:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v1, Lcom/bumptech/glide/b;

    .line 17
    .line 18
    iget-object v2, p0, LB0/c;->I:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v2, Ljava/util/List;

    .line 21
    .line 22
    invoke-static {v1, v2}, LE3/f;->h(Lcom/bumptech/glide/b;Ljava/util/List;)Lcom/bumptech/glide/j;

    .line 23
    .line 24
    .line 25
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    iput-boolean v0, p0, LB0/c;->G:Z

    .line 27
    .line 28
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 29
    .line 30
    .line 31
    return-object v1

    .line 32
    :catchall_0
    move-exception v1

    .line 33
    iput-boolean v0, p0, LB0/c;->G:Z

    .line 34
    .line 35
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 36
    .line 37
    .line 38
    throw v1

    .line 39
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 40
    .line 41
    const-string v1, "Recursive Registry initialization! In your AppGlideModule and LibraryGlideModules, Make sure you\'re using the provided Registry rather calling glide.getRegistry()!"

    .line 42
    .line 43
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    throw v0
.end method

.method public final h()Ljava/io/File;
    .locals 5

    .line 1
    iget-object v0, p0, LB0/c;->J:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lt2/d;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, LB0/c;->H:Ljava/lang/Object;

    .line 7
    .line 8
    move-object v2, v1

    .line 9
    check-cast v2, Lt2/b;

    .line 10
    .line 11
    iget-object v2, v2, Lt2/b;->f:LB0/c;

    .line 12
    .line 13
    if-ne v2, p0, :cond_1

    .line 14
    .line 15
    move-object v2, v1

    .line 16
    check-cast v2, Lt2/b;

    .line 17
    .line 18
    iget-boolean v2, v2, Lt2/b;->e:Z

    .line 19
    .line 20
    const/4 v3, 0x0

    .line 21
    if-nez v2, :cond_0

    .line 22
    .line 23
    iget-object v2, p0, LB0/c;->I:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v2, [Z

    .line 26
    .line 27
    const/4 v4, 0x1

    .line 28
    aput-boolean v4, v2, v3

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catchall_0
    move-exception v1

    .line 32
    goto :goto_1

    .line 33
    :cond_0
    :goto_0
    check-cast v1, Lt2/b;

    .line 34
    .line 35
    iget-object v1, v1, Lt2/b;->d:[Ljava/io/File;

    .line 36
    .line 37
    aget-object v1, v1, v3

    .line 38
    .line 39
    iget-object v2, p0, LB0/c;->J:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast v2, Lt2/d;

    .line 42
    .line 43
    iget-object v2, v2, Lt2/d;->G:Ljava/io/File;

    .line 44
    .line 45
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 46
    .line 47
    .line 48
    monitor-exit v0

    .line 49
    return-object v1

    .line 50
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 51
    .line 52
    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 53
    .line 54
    .line 55
    throw v1

    .line 56
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    throw v1
.end method

.method public final i()V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, LB0/c;->H:Ljava/lang/Object;

    .line 3
    .line 4
    move-object v2, v1

    .line 5
    check-cast v2, Lw5/b;

    .line 6
    .line 7
    iget v2, v2, Lw5/b;->G:I

    .line 8
    .line 9
    if-ge v0, v2, :cond_2

    .line 10
    .line 11
    add-int/lit8 v2, v0, 0x1

    .line 12
    .line 13
    move v3, v2

    .line 14
    :goto_1
    move-object v4, v1

    .line 15
    check-cast v4, Lw5/b;

    .line 16
    .line 17
    iget v4, v4, Lw5/b;->H:I

    .line 18
    .line 19
    if-ge v3, v4, :cond_1

    .line 20
    .line 21
    move-object v4, v1

    .line 22
    check-cast v4, Lw5/b;

    .line 23
    .line 24
    invoke-virtual {v4, v0, v3}, Lw5/b;->b(II)Z

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    move-object v5, v1

    .line 29
    check-cast v5, Lw5/b;

    .line 30
    .line 31
    invoke-virtual {v5, v3, v0}, Lw5/b;->b(II)Z

    .line 32
    .line 33
    .line 34
    move-result v5

    .line 35
    if-eq v4, v5, :cond_0

    .line 36
    .line 37
    move-object v4, v1

    .line 38
    check-cast v4, Lw5/b;

    .line 39
    .line 40
    invoke-virtual {v4, v3, v0}, Lw5/b;->a(II)V

    .line 41
    .line 42
    .line 43
    move-object v4, v1

    .line 44
    check-cast v4, Lw5/b;

    .line 45
    .line 46
    invoke-virtual {v4, v0, v3}, Lw5/b;->a(II)V

    .line 47
    .line 48
    .line 49
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_1
    move v0, v2

    .line 53
    goto :goto_0

    .line 54
    :cond_2
    return-void
.end method

.method public final j()LL5/c;
    .locals 6

    .line 1
    iget-object v0, p0, LB0/c;->J:Ljava/lang/Object;

    .line 2
    .line 3
    move-object v1, v0

    .line 4
    check-cast v1, LL5/c;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    check-cast v0, LL5/c;

    .line 9
    .line 10
    return-object v0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    const/4 v1, 0x0

    .line 13
    const/4 v2, 0x0

    .line 14
    :goto_0
    const/4 v3, 0x6

    .line 15
    const/16 v4, 0x8

    .line 16
    .line 17
    if-ge v1, v3, :cond_1

    .line 18
    .line 19
    invoke-virtual {p0, v1, v4, v2}, LB0/c;->e(III)I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    add-int/lit8 v1, v1, 0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    const/4 v1, 0x7

    .line 27
    invoke-virtual {p0, v1, v4, v2}, LB0/c;->e(III)I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    invoke-virtual {p0, v4, v4, v2}, LB0/c;->e(III)I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    invoke-virtual {p0, v4, v1, v2}, LB0/c;->e(III)I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    const/4 v2, 0x5

    .line 40
    :goto_1
    if-ltz v2, :cond_2

    .line 41
    .line 42
    invoke-virtual {p0, v4, v2, v1}, LB0/c;->e(III)I

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    add-int/lit8 v2, v2, -0x1

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_2
    iget-object v2, p0, LB0/c;->H:Ljava/lang/Object;

    .line 50
    .line 51
    check-cast v2, Lw5/b;

    .line 52
    .line 53
    iget v2, v2, Lw5/b;->H:I

    .line 54
    .line 55
    add-int/lit8 v3, v2, -0x7

    .line 56
    .line 57
    add-int/lit8 v5, v2, -0x1

    .line 58
    .line 59
    :goto_2
    if-lt v5, v3, :cond_3

    .line 60
    .line 61
    invoke-virtual {p0, v4, v5, v0}, LB0/c;->e(III)I

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    add-int/lit8 v5, v5, -0x1

    .line 66
    .line 67
    goto :goto_2

    .line 68
    :cond_3
    add-int/lit8 v3, v2, -0x8

    .line 69
    .line 70
    :goto_3
    if-ge v3, v2, :cond_4

    .line 71
    .line 72
    invoke-virtual {p0, v3, v4, v0}, LB0/c;->e(III)I

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    add-int/lit8 v3, v3, 0x1

    .line 77
    .line 78
    goto :goto_3

    .line 79
    :cond_4
    invoke-static {v1, v0}, LL5/c;->a(II)LL5/c;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    if-eqz v2, :cond_5

    .line 84
    .line 85
    goto :goto_4

    .line 86
    :cond_5
    xor-int/lit16 v1, v1, 0x5412

    .line 87
    .line 88
    xor-int/lit16 v0, v0, 0x5412

    .line 89
    .line 90
    invoke-static {v1, v0}, LL5/c;->a(II)LL5/c;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    :goto_4
    iput-object v2, p0, LB0/c;->J:Ljava/lang/Object;

    .line 95
    .line 96
    if-eqz v2, :cond_6

    .line 97
    .line 98
    return-object v2

    .line 99
    :cond_6
    invoke-static {}, Lq5/e;->a()Lq5/e;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    throw v0
.end method

.method public final k()LL5/f;
    .locals 7

    .line 1
    iget-object v0, p0, LB0/c;->I:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, LL5/f;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    iget-object v0, p0, LB0/c;->H:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v0, Lw5/b;

    .line 11
    .line 12
    iget v0, v0, Lw5/b;->H:I

    .line 13
    .line 14
    add-int/lit8 v1, v0, -0x11

    .line 15
    .line 16
    div-int/lit8 v1, v1, 0x4

    .line 17
    .line 18
    const/4 v2, 0x6

    .line 19
    if-gt v1, v2, :cond_1

    .line 20
    .line 21
    invoke-static {v1}, LL5/f;->c(I)LL5/f;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    return-object v0

    .line 26
    :cond_1
    add-int/lit8 v1, v0, -0xb

    .line 27
    .line 28
    const/4 v2, 0x5

    .line 29
    const/4 v3, 0x0

    .line 30
    const/4 v4, 0x5

    .line 31
    const/4 v5, 0x0

    .line 32
    :goto_0
    if-ltz v4, :cond_3

    .line 33
    .line 34
    add-int/lit8 v6, v0, -0x9

    .line 35
    .line 36
    :goto_1
    if-lt v6, v1, :cond_2

    .line 37
    .line 38
    invoke-virtual {p0, v6, v4, v5}, LB0/c;->e(III)I

    .line 39
    .line 40
    .line 41
    move-result v5

    .line 42
    add-int/lit8 v6, v6, -0x1

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_2
    add-int/lit8 v4, v4, -0x1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_3
    invoke-static {v5}, LL5/f;->b(I)LL5/f;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    if-eqz v4, :cond_4

    .line 53
    .line 54
    iget v5, v4, LL5/f;->a:I

    .line 55
    .line 56
    mul-int/lit8 v5, v5, 0x4

    .line 57
    .line 58
    add-int/lit8 v5, v5, 0x11

    .line 59
    .line 60
    if-ne v5, v0, :cond_4

    .line 61
    .line 62
    iput-object v4, p0, LB0/c;->I:Ljava/lang/Object;

    .line 63
    .line 64
    return-object v4

    .line 65
    :cond_4
    :goto_2
    if-ltz v2, :cond_6

    .line 66
    .line 67
    add-int/lit8 v4, v0, -0x9

    .line 68
    .line 69
    :goto_3
    if-lt v4, v1, :cond_5

    .line 70
    .line 71
    invoke-virtual {p0, v2, v4, v3}, LB0/c;->e(III)I

    .line 72
    .line 73
    .line 74
    move-result v3

    .line 75
    add-int/lit8 v4, v4, -0x1

    .line 76
    .line 77
    goto :goto_3

    .line 78
    :cond_5
    add-int/lit8 v2, v2, -0x1

    .line 79
    .line 80
    goto :goto_2

    .line 81
    :cond_6
    invoke-static {v3}, LL5/f;->b(I)LL5/f;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    if-eqz v1, :cond_7

    .line 86
    .line 87
    iget v2, v1, LL5/f;->a:I

    .line 88
    .line 89
    mul-int/lit8 v2, v2, 0x4

    .line 90
    .line 91
    add-int/lit8 v2, v2, 0x11

    .line 92
    .line 93
    if-ne v2, v0, :cond_7

    .line 94
    .line 95
    iput-object v1, p0, LB0/c;->I:Ljava/lang/Object;

    .line 96
    .line 97
    return-object v1

    .line 98
    :cond_7
    invoke-static {}, Lq5/e;->a()Lq5/e;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    throw v0
.end method

.method public final l()V
    .locals 7

    .line 1
    iget-object v0, p0, LB0/c;->J:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, LL5/c;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const/16 v0, 0x8

    .line 9
    .line 10
    invoke-static {v0}, Lu/h;->c(I)[I

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget-object v1, p0, LB0/c;->J:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v1, LL5/c;

    .line 17
    .line 18
    iget-byte v1, v1, LL5/c;->b:B

    .line 19
    .line 20
    aget v0, v0, v1

    .line 21
    .line 22
    iget-object v1, p0, LB0/c;->H:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v1, Lw5/b;

    .line 25
    .line 26
    iget v2, v1, Lw5/b;->H:I

    .line 27
    .line 28
    const/4 v3, 0x0

    .line 29
    const/4 v4, 0x0

    .line 30
    :goto_0
    if-ge v4, v2, :cond_3

    .line 31
    .line 32
    const/4 v5, 0x0

    .line 33
    :goto_1
    if-ge v5, v2, :cond_2

    .line 34
    .line 35
    invoke-static {v0, v4, v5}, LA0/O;->d(III)Z

    .line 36
    .line 37
    .line 38
    move-result v6

    .line 39
    if-eqz v6, :cond_1

    .line 40
    .line 41
    invoke-virtual {v1, v5, v4}, Lw5/b;->a(II)V

    .line 42
    .line 43
    .line 44
    :cond_1
    add-int/lit8 v5, v5, 0x1

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_3
    return-void
.end method

.method public final m(Z)V
    .locals 2

    .line 1
    iget-boolean p1, p0, LB0/c;->G:Z

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object p1, p0, LB0/c;->J:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p1, Lp0/q;

    .line 9
    .line 10
    new-instance v0, LB0/a;

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    invoke-direct {v0, p0, v1}, LB0/a;-><init>(LB0/c;I)V

    .line 14
    .line 15
    .line 16
    check-cast p1, Lp0/I;

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Lp0/I;->c(Ljava/lang/Runnable;)Z

    .line 19
    .line 20
    .line 21
    const/4 p1, 0x0

    .line 22
    iput-boolean p1, p0, LB0/c;->G:Z

    .line 23
    .line 24
    return-void
.end method

.method public final n()Ljava/lang/String;
    .locals 3

    .line 1
    iget-boolean v0, p0, LB0/c;->G:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, LB0/c;->G:Z

    .line 7
    .line 8
    iget-object v0, p0, LB0/c;->J:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v0, Lc4/Z;

    .line 11
    .line 12
    iget-object v1, p0, LB0/c;->H:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v1, Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {v0}, Lc4/Z;->s()Landroid/content/SharedPreferences;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const/4 v2, 0x0

    .line 21
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iput-object v0, p0, LB0/c;->I:Ljava/lang/Object;

    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, LB0/c;->I:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast v0, Ljava/lang/String;

    .line 30
    .line 31
    return-object v0
.end method

.method public final o(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, LB0/c;->J:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lc4/Z;

    .line 4
    .line 5
    invoke-virtual {v0}, Lc4/Z;->s()Landroid/content/SharedPreferences;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v1, p0, LB0/c;->H:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v1, Ljava/lang/String;

    .line 16
    .line 17
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 18
    .line 19
    .line 20
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, LB0/c;->I:Ljava/lang/Object;

    .line 24
    .line 25
    return-void
.end method
