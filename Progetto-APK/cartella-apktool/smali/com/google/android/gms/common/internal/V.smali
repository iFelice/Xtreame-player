.class public final Lcom/google/android/gms/common/internal/V;
.super Lcom/google/android/gms/common/internal/m;
.source "SourceFile"


# instance fields
.field public final d:Ljava/util/HashMap;

.field public final e:Landroid/content/Context;

.field public volatile f:LX3/d;

.field public final g:LO3/a;

.field public final h:J

.field public final i:J

.field public volatile j:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/google/android/gms/common/internal/V;->d:Ljava/util/HashMap;

    .line 10
    .line 11
    new-instance v0, LH2/g;

    .line 12
    .line 13
    invoke-direct {v0, p0}, LH2/g;-><init>(Lcom/google/android/gms/common/internal/V;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iput-object p1, p0, Lcom/google/android/gms/common/internal/V;->e:Landroid/content/Context;

    .line 21
    .line 22
    new-instance p1, LX3/d;

    .line 23
    .line 24
    const/4 v1, 0x2

    .line 25
    invoke-direct {p1, p2, v0, v1}, LX3/d;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;I)V

    .line 26
    .line 27
    .line 28
    iput-object p1, p0, Lcom/google/android/gms/common/internal/V;->f:LX3/d;

    .line 29
    .line 30
    invoke-static {}, LO3/a;->a()LO3/a;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    iput-object p1, p0, Lcom/google/android/gms/common/internal/V;->g:LO3/a;

    .line 35
    .line 36
    const-wide/16 p1, 0x1388

    .line 37
    .line 38
    iput-wide p1, p0, Lcom/google/android/gms/common/internal/V;->h:J

    .line 39
    .line 40
    const-wide/32 p1, 0x493e0

    .line 41
    .line 42
    .line 43
    iput-wide p1, p0, Lcom/google/android/gms/common/internal/V;->i:J

    .line 44
    .line 45
    const/4 p1, 0x0

    .line 46
    iput-object p1, p0, Lcom/google/android/gms/common/internal/V;->j:Ljava/util/concurrent/Executor;

    .line 47
    .line 48
    return-void
.end method


# virtual methods
.method public final c(Lcom/google/android/gms/common/internal/T;Lcom/google/android/gms/common/internal/O;Ljava/lang/String;Ljava/util/concurrent/Executor;)LJ3/b;
    .locals 5

    .line 1
    const-string v0, "Trying to bind a GmsServiceConnection that was already connected before.  config="

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/common/internal/V;->d:Ljava/util/HashMap;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/common/internal/V;->d:Ljava/util/HashMap;

    .line 7
    .line 8
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    check-cast v2, Lcom/google/android/gms/common/internal/U;

    .line 13
    .line 14
    if-nez p4, :cond_0

    .line 15
    .line 16
    iget-object p4, p0, Lcom/google/android/gms/common/internal/V;->j:Ljava/util/concurrent/Executor;

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    move-exception p1

    .line 20
    goto :goto_3

    .line 21
    :cond_0
    :goto_0
    if-nez v2, :cond_1

    .line 22
    .line 23
    new-instance v2, Lcom/google/android/gms/common/internal/U;

    .line 24
    .line 25
    invoke-direct {v2, p0, p1}, Lcom/google/android/gms/common/internal/U;-><init>(Lcom/google/android/gms/common/internal/V;Lcom/google/android/gms/common/internal/T;)V

    .line 26
    .line 27
    .line 28
    iget-object v0, v2, Lcom/google/android/gms/common/internal/U;->a:Ljava/util/HashMap;

    .line 29
    .line 30
    invoke-virtual {v0, p2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    invoke-static {v2, p3, p4}, Lcom/google/android/gms/common/internal/U;->a(Lcom/google/android/gms/common/internal/U;Ljava/lang/String;Ljava/util/concurrent/Executor;)LJ3/b;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    iget-object p3, p0, Lcom/google/android/gms/common/internal/V;->d:Ljava/util/HashMap;

    .line 38
    .line 39
    invoke-virtual {p3, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    goto :goto_2

    .line 43
    :cond_1
    iget-object v3, p0, Lcom/google/android/gms/common/internal/V;->f:LX3/d;

    .line 44
    .line 45
    const/4 v4, 0x0

    .line 46
    invoke-virtual {v3, v4, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    iget-object v3, v2, Lcom/google/android/gms/common/internal/U;->a:Ljava/util/HashMap;

    .line 50
    .line 51
    invoke-virtual {v3, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    if-nez v3, :cond_6

    .line 56
    .line 57
    iget-object p1, v2, Lcom/google/android/gms/common/internal/U;->a:Ljava/util/HashMap;

    .line 58
    .line 59
    invoke-virtual {p1, p2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    iget p1, v2, Lcom/google/android/gms/common/internal/U;->b:I

    .line 63
    .line 64
    const/4 v0, 0x1

    .line 65
    const/4 v3, 0x0

    .line 66
    if-eq p1, v0, :cond_3

    .line 67
    .line 68
    const/4 p2, 0x2

    .line 69
    if-eq p1, p2, :cond_2

    .line 70
    .line 71
    :goto_1
    move-object p2, v3

    .line 72
    goto :goto_2

    .line 73
    :cond_2
    invoke-static {v2, p3, p4}, Lcom/google/android/gms/common/internal/U;->a(Lcom/google/android/gms/common/internal/U;Ljava/lang/String;Ljava/util/concurrent/Executor;)LJ3/b;

    .line 74
    .line 75
    .line 76
    move-result-object p2

    .line 77
    goto :goto_2

    .line 78
    :cond_3
    iget-object p1, v2, Lcom/google/android/gms/common/internal/U;->f:Landroid/content/ComponentName;

    .line 79
    .line 80
    iget-object p3, v2, Lcom/google/android/gms/common/internal/U;->d:Landroid/os/IBinder;

    .line 81
    .line 82
    invoke-virtual {p2, p1, p3}, Lcom/google/android/gms/common/internal/O;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    .line 83
    .line 84
    .line 85
    goto :goto_1

    .line 86
    :goto_2
    iget-boolean p1, v2, Lcom/google/android/gms/common/internal/U;->c:Z

    .line 87
    .line 88
    if-eqz p1, :cond_4

    .line 89
    .line 90
    sget-object p1, LJ3/b;->K:LJ3/b;

    .line 91
    .line 92
    monitor-exit v1

    .line 93
    return-object p1

    .line 94
    :cond_4
    if-nez p2, :cond_5

    .line 95
    .line 96
    new-instance p2, LJ3/b;

    .line 97
    .line 98
    const/4 p1, -0x1

    .line 99
    invoke-direct {p2, p1}, LJ3/b;-><init>(I)V

    .line 100
    .line 101
    .line 102
    :cond_5
    monitor-exit v1

    .line 103
    return-object p2

    .line 104
    :cond_6
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 105
    .line 106
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/T;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    throw p2

    .line 118
    :goto_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    throw p1
.end method
