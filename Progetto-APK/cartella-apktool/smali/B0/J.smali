.class public final synthetic LB0/J;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic G:Landroid/content/Context;

.field public final synthetic H:Z

.field public final synthetic I:LB0/O;

.field public final synthetic J:LC0/I;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;LB0/O;LC0/I;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LB0/J;->G:Landroid/content/Context;

    .line 5
    .line 6
    iput-boolean p4, p0, LB0/J;->H:Z

    .line 7
    .line 8
    iput-object p2, p0, LB0/J;->I:LB0/O;

    .line 9
    .line 10
    iput-object p3, p0, LB0/J;->J:LC0/I;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, LB0/J;->G:Landroid/content/Context;

    .line 2
    .line 3
    iget-boolean v1, p0, LB0/J;->H:Z

    .line 4
    .line 5
    iget-object v2, p0, LB0/J;->I:LB0/O;

    .line 6
    .line 7
    iget-object v3, p0, LB0/J;->J:LC0/I;

    .line 8
    .line 9
    const-string v4, "media_metrics"

    .line 10
    .line 11
    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    invoke-static {v4}, LC0/D;->b(Ljava/lang/Object;)Landroid/media/metrics/MediaMetricsManager;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    if-nez v4, :cond_0

    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    new-instance v5, LC0/F;

    .line 24
    .line 25
    invoke-static {v4}, LC0/D;->e(Landroid/media/metrics/MediaMetricsManager;)Landroid/media/metrics/PlaybackSession;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    invoke-direct {v5, v0, v4}, LC0/F;-><init>(Landroid/content/Context;Landroid/media/metrics/PlaybackSession;)V

    .line 30
    .line 31
    .line 32
    move-object v0, v5

    .line 33
    :goto_0
    if-nez v0, :cond_1

    .line 34
    .line 35
    const-string v0, "ExoPlayerImpl"

    .line 36
    .line 37
    const-string v1, "MediaMetricsService unavailable."

    .line 38
    .line 39
    invoke-static {v0, v1}, Lp0/x;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_1
    if-eqz v1, :cond_2

    .line 44
    .line 45
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    iget-object v1, v2, LB0/O;->X:LC0/a;

    .line 49
    .line 50
    check-cast v1, LC0/A;

    .line 51
    .line 52
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    .line 54
    .line 55
    iget-object v1, v1, LC0/A;->L:Lx/e;

    .line 56
    .line 57
    invoke-virtual {v1, v0}, Lx/e;->a(Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    :cond_2
    iget-object v0, v0, LC0/F;->d:Landroid/media/metrics/PlaybackSession;

    .line 61
    .line 62
    invoke-static {v0}, LC0/D;->a(Landroid/media/metrics/PlaybackSession;)Landroid/media/metrics/LogSessionId;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    monitor-enter v3

    .line 67
    :try_start_0
    iget-object v1, v3, LC0/I;->b:LC0/H;

    .line 68
    .line 69
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 70
    .line 71
    .line 72
    iget-object v2, v1, LC0/H;->a:Landroid/media/metrics/LogSessionId;

    .line 73
    .line 74
    invoke-static {}, LC0/E;->h()Landroid/media/metrics/LogSessionId;

    .line 75
    .line 76
    .line 77
    move-result-object v4

    .line 78
    invoke-static {v2, v4}, LC0/E;->z(Landroid/media/metrics/LogSessionId;Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result v2

    .line 82
    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/H1;->i(Z)V

    .line 83
    .line 84
    .line 85
    iput-object v0, v1, LC0/H;->a:Landroid/media/metrics/LogSessionId;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    .line 87
    monitor-exit v3

    .line 88
    :goto_1
    return-void

    .line 89
    :catchall_0
    move-exception v0

    .line 90
    monitor-exit v3

    .line 91
    throw v0
.end method
