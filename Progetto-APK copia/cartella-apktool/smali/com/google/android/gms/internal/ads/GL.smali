.class public final Lcom/google/android/gms/internal/ads/GL;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Landroid/os/Handler;

.field public final c:LB0/r;

.field public final d:Lf/G;

.field public final e:LD0/e;

.field public f:Lcom/google/android/gms/internal/ads/EL;

.field public g:Lcom/google/android/gms/internal/ads/IL;

.field public h:Lcom/google/android/gms/internal/ads/bH;

.field public i:Z

.field public final j:Lcom/google/android/gms/internal/ads/bM;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/bM;Lcom/google/android/gms/internal/ads/bH;Lcom/google/android/gms/internal/ads/IL;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/GL;->a:Landroid/content/Context;

    .line 9
    .line 10
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/GL;->j:Lcom/google/android/gms/internal/ads/bM;

    .line 11
    .line 12
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/GL;->h:Lcom/google/android/gms/internal/ads/bH;

    .line 13
    .line 14
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/GL;->g:Lcom/google/android/gms/internal/ads/IL;

    .line 15
    .line 16
    sget p2, Lcom/google/android/gms/internal/ads/Et;->a:I

    .line 17
    .line 18
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    if-eqz p2, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    :goto_0
    new-instance v2, Landroid/os/Handler;

    .line 30
    .line 31
    const/4 p3, 0x0

    .line 32
    invoke-direct {v2, p2, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 33
    .line 34
    .line 35
    iput-object v2, p0, Lcom/google/android/gms/internal/ads/GL;->b:Landroid/os/Handler;

    .line 36
    .line 37
    sget p2, Lcom/google/android/gms/internal/ads/Et;->a:I

    .line 38
    .line 39
    const/16 p4, 0x17

    .line 40
    .line 41
    if-lt p2, p4, :cond_1

    .line 42
    .line 43
    new-instance p2, LB0/r;

    .line 44
    .line 45
    invoke-direct {p2, p0}, LB0/r;-><init>(Lcom/google/android/gms/internal/ads/GL;)V

    .line 46
    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_1
    move-object p2, p3

    .line 50
    :goto_1
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/GL;->c:LB0/r;

    .line 51
    .line 52
    new-instance p2, Lf/G;

    .line 53
    .line 54
    const/16 p4, 0xd

    .line 55
    .line 56
    invoke-direct {p2, p4, p0}, Lf/G;-><init>(ILjava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/GL;->d:Lf/G;

    .line 60
    .line 61
    sget-object p2, Lcom/google/android/gms/internal/ads/EL;->c:Lcom/google/android/gms/internal/ads/EL;

    .line 62
    .line 63
    sget-object p2, Lcom/google/android/gms/internal/ads/Et;->c:Ljava/lang/String;

    .line 64
    .line 65
    const-string p4, "Amazon"

    .line 66
    .line 67
    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result p4

    .line 71
    if-nez p4, :cond_3

    .line 72
    .line 73
    const-string p4, "Xiaomi"

    .line 74
    .line 75
    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result p2

    .line 79
    if-eqz p2, :cond_2

    .line 80
    .line 81
    goto :goto_2

    .line 82
    :cond_2
    move-object v4, p3

    .line 83
    goto :goto_3

    .line 84
    :cond_3
    :goto_2
    const-string p2, "external_surround_sound_enabled"

    .line 85
    .line 86
    invoke-static {p2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 87
    .line 88
    .line 89
    move-result-object p2

    .line 90
    move-object v4, p2

    .line 91
    :goto_3
    if-eqz v4, :cond_4

    .line 92
    .line 93
    new-instance p3, LD0/e;

    .line 94
    .line 95
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    const/4 v5, 0x1

    .line 100
    move-object v0, p3

    .line 101
    move-object v1, p0

    .line 102
    invoke-direct/range {v0 .. v5}, LD0/e;-><init>(Ljava/lang/Object;Landroid/os/Handler;Landroid/content/ContentResolver;Landroid/net/Uri;I)V

    .line 103
    .line 104
    .line 105
    :cond_4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/GL;->e:LD0/e;

    .line 106
    .line 107
    return-void
.end method


# virtual methods
.method public final a(Landroid/media/AudioDeviceInfo;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/GL;->g:Lcom/google/android/gms/internal/ads/IL;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    move-object v0, v1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/IL;->a:Landroid/media/AudioDeviceInfo;

    .line 9
    .line 10
    :goto_0
    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    return-void

    .line 17
    :cond_1
    if-eqz p1, :cond_2

    .line 18
    .line 19
    new-instance v1, Lcom/google/android/gms/internal/ads/IL;

    .line 20
    .line 21
    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/IL;-><init>(Landroid/media/AudioDeviceInfo;)V

    .line 22
    .line 23
    .line 24
    :cond_2
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/GL;->g:Lcom/google/android/gms/internal/ads/IL;

    .line 25
    .line 26
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/GL;->a:Landroid/content/Context;

    .line 27
    .line 28
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/GL;->h:Lcom/google/android/gms/internal/ads/bH;

    .line 29
    .line 30
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/EL;->b(Landroid/content/Context;Lcom/google/android/gms/internal/ads/bH;Lcom/google/android/gms/internal/ads/IL;)Lcom/google/android/gms/internal/ads/EL;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/GL;->b(Lcom/google/android/gms/internal/ads/EL;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public final b(Lcom/google/android/gms/internal/ads/EL;)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/GL;->i:Z

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/GL;->f:Lcom/google/android/gms/internal/ads/EL;

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/EL;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_3

    .line 12
    .line 13
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/GL;->f:Lcom/google/android/gms/internal/ads/EL;

    .line 14
    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/GL;->j:Lcom/google/android/gms/internal/ads/bM;

    .line 16
    .line 17
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/bM;->a:Lcom/google/android/gms/internal/ads/lM;

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/lM;->T:Landroid/os/Looper;

    .line 27
    .line 28
    if-eq v2, v1, :cond_2

    .line 29
    .line 30
    if-nez v2, :cond_0

    .line 31
    .line 32
    const-string p1, "null"

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    :goto_0
    if-nez v1, :cond_1

    .line 44
    .line 45
    const-string v0, "null"

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_1
    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    :goto_1
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 57
    .line 58
    const-string v2, "Current looper ("

    .line 59
    .line 60
    const-string v3, ") is not the playback looper ("

    .line 61
    .line 62
    const-string v4, ")"

    .line 63
    .line 64
    invoke-static {v2, v0, v3, p1, v4}, LA0/O;->C(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-direct {v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    throw v1

    .line 72
    :cond_2
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/lM;->q:Lcom/google/android/gms/internal/ads/EL;

    .line 73
    .line 74
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/EL;->equals(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    if-nez v1, :cond_3

    .line 79
    .line 80
    iput-object p1, v0, Lcom/google/android/gms/internal/ads/lM;->q:Lcom/google/android/gms/internal/ads/EL;

    .line 81
    .line 82
    iget-object p1, v0, Lcom/google/android/gms/internal/ads/lM;->l:Lcom/google/android/gms/internal/ads/nM;

    .line 83
    .line 84
    if-eqz p1, :cond_3

    .line 85
    .line 86
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/nM;->a:Lcom/google/android/gms/internal/ads/oM;

    .line 87
    .line 88
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/aK;->a:Ljava/lang/Object;

    .line 89
    .line 90
    monitor-enter v0

    .line 91
    :try_start_0
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/aK;->q:Lcom/google/android/gms/internal/ads/XK;

    .line 92
    .line 93
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    if-eqz p1, :cond_3

    .line 95
    .line 96
    check-cast p1, Lcom/google/android/gms/internal/ads/sO;

    .line 97
    .line 98
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/sO;->d()V

    .line 99
    .line 100
    .line 101
    goto :goto_2

    .line 102
    :catchall_0
    move-exception p1

    .line 103
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 104
    throw p1

    .line 105
    :cond_3
    :goto_2
    return-void
.end method
