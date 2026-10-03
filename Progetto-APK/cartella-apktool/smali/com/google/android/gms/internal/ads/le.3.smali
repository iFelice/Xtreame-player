.class public final Lcom/google/android/gms/internal/ads/le;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Lo3/L;

.field public final c:Lcom/google/android/gms/internal/ads/oe;

.field public d:Z

.field public e:Landroid/content/Context;

.field public f:Lp3/a;

.field public g:Ljava/lang/String;

.field public h:Lcom/google/android/gms/internal/ads/Nd;

.field public i:Ljava/lang/Boolean;

.field public final j:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final k:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final l:Lcom/google/android/gms/internal/ads/ke;

.field public final m:Ljava/lang/Object;

.field public n:LD4/b;

.field public final o:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/le;->a:Ljava/lang/Object;

    .line 10
    .line 11
    new-instance v0, Lo3/L;

    .line 12
    .line 13
    invoke-direct {v0}, Lo3/L;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/le;->b:Lo3/L;

    .line 17
    .line 18
    new-instance v1, Lcom/google/android/gms/internal/ads/oe;

    .line 19
    .line 20
    sget-object v2, Ll3/p;->f:Ll3/p;

    .line 21
    .line 22
    iget-object v2, v2, Ll3/p;->c:Ljava/lang/String;

    .line 23
    .line 24
    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/internal/ads/oe;-><init>(Ljava/lang/String;Lo3/L;)V

    .line 25
    .line 26
    .line 27
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/le;->c:Lcom/google/android/gms/internal/ads/oe;

    .line 28
    .line 29
    const/4 v0, 0x0

    .line 30
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/le;->d:Z

    .line 31
    .line 32
    const/4 v1, 0x0

    .line 33
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/le;->h:Lcom/google/android/gms/internal/ads/Nd;

    .line 34
    .line 35
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/le;->i:Ljava/lang/Boolean;

    .line 36
    .line 37
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 38
    .line 39
    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 40
    .line 41
    .line 42
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/le;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 43
    .line 44
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 45
    .line 46
    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 47
    .line 48
    .line 49
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/le;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 50
    .line 51
    new-instance v0, Lcom/google/android/gms/internal/ads/ke;

    .line 52
    .line 53
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/ke;-><init>()V

    .line 54
    .line 55
    .line 56
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/le;->l:Lcom/google/android/gms/internal/ads/ke;

    .line 57
    .line 58
    new-instance v0, Ljava/lang/Object;

    .line 59
    .line 60
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 61
    .line 62
    .line 63
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/le;->m:Ljava/lang/Object;

    .line 64
    .line 65
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 66
    .line 67
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 68
    .line 69
    .line 70
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/le;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 71
    .line 72
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Z
    .locals 2

    .line 1
    invoke-static {}, LU2/m;->a()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    sget-object v0, Lcom/google/android/gms/internal/ads/Q7;->J7:Lcom/google/android/gms/internal/ads/J7;

    .line 8
    .line 9
    sget-object v1, Ll3/q;->d:Ll3/q;

    .line 10
    .line 11
    iget-object v1, v1, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 12
    .line 13
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Ljava/lang/Boolean;

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/le;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 27
    .line 28
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    return p1

    .line 33
    :cond_1
    :goto_0
    const-string v0, "connectivity"

    .line 34
    .line 35
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    check-cast p1, Landroid/net/ConnectivityManager;

    .line 40
    .line 41
    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    if-eqz p1, :cond_2

    .line 46
    .line 47
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    if-eqz p1, :cond_2

    .line 52
    .line 53
    const/4 p1, 0x1

    .line 54
    return p1

    .line 55
    :cond_2
    const/4 p1, 0x0

    .line 56
    return p1
.end method

.method public final b()Landroid/content/res/Resources;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/le;->f:Lp3/a;

    .line 2
    .line 3
    iget-boolean v0, v0, Lp3/a;->J:Z

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/le;->e:Landroid/content/Context;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/ads/Q7;->ha:Lcom/google/android/gms/internal/ads/J7;

    .line 16
    .line 17
    sget-object v2, Ll3/q;->d:Ll3/q;

    .line 18
    .line 19
    iget-object v2, v2, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 20
    .line 21
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Ljava/lang/Boolean;

    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_1

    .line 32
    .line 33
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/le;->e:Landroid/content/Context;

    .line 34
    .line 35
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/H1;->J(Landroid/content/Context;)LS3/c;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    iget-object v1, v1, LS3/c;->a:Landroid/content/Context;

    .line 40
    .line 41
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    return-object v0

    .line 46
    :catch_0
    move-exception v1

    .line 47
    goto :goto_0

    .line 48
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/le;->e:Landroid/content/Context;

    .line 49
    .line 50
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/H1;->J(Landroid/content/Context;)LS3/c;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    iget-object v1, v1, LS3/c;->a:Landroid/content/Context;

    .line 55
    .line 56
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
    :try_end_0
    .catch Lp3/j; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    .line 58
    .line 59
    return-object v0

    .line 60
    :goto_0
    const-string v2, "Cannot load resource from dynamite apk or local jar"

    .line 61
    .line 62
    invoke-static {v2, v1}, Lp3/h;->h(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 63
    .line 64
    .line 65
    return-object v0
.end method

.method public final c()Lcom/google/android/gms/internal/ads/Nd;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/le;->a:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/le;->h:Lcom/google/android/gms/internal/ads/Nd;

    .line 5
    .line 6
    monitor-exit v0

    .line 7
    return-object v1

    .line 8
    :catchall_0
    move-exception v1

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    throw v1
.end method

.method public final d()Lo3/L;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/le;->a:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/le;->b:Lo3/L;

    .line 5
    .line 6
    monitor-exit v0

    .line 7
    return-object v1

    .line 8
    :catchall_0
    move-exception v1

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    throw v1
.end method

.method public final e()LD4/b;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/le;->e:Landroid/content/Context;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    sget-object v0, Lcom/google/android/gms/internal/ads/Q7;->B2:Lcom/google/android/gms/internal/ads/J7;

    .line 6
    .line 7
    sget-object v1, Ll3/q;->d:Ll3/q;

    .line 8
    .line 9
    iget-object v1, v1, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 10
    .line 11
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Ljava/lang/Boolean;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/le;->m:Ljava/lang/Object;

    .line 25
    .line 26
    monitor-enter v0

    .line 27
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/le;->n:LD4/b;

    .line 28
    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    monitor-exit v0

    .line 32
    return-object v1

    .line 33
    :catchall_0
    move-exception v1

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    sget-object v1, Lcom/google/android/gms/internal/ads/se;->a:Lcom/google/android/gms/internal/ads/re;

    .line 36
    .line 37
    new-instance v2, Lcom/google/android/gms/internal/ads/he;

    .line 38
    .line 39
    const/4 v3, 0x0

    .line 40
    invoke-direct {v2, p0, v3}, Lcom/google/android/gms/internal/ads/he;-><init>(Ljava/lang/Object;I)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/IB;->b(Ljava/util/concurrent/Callable;)LD4/b;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/le;->n:LD4/b;

    .line 48
    .line 49
    monitor-exit v0

    .line 50
    return-object v1

    .line 51
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    throw v1

    .line 53
    :cond_2
    :goto_1
    new-instance v0, Ljava/util/ArrayList;

    .line 54
    .line 55
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 56
    .line 57
    .line 58
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Cw;->N1(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/fC;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    return-object v0
.end method

.method public final f()Ljava/lang/Boolean;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/le;->a:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/le;->i:Ljava/lang/Boolean;

    .line 5
    .line 6
    monitor-exit v0

    .line 7
    return-object v1

    .line 8
    :catchall_0
    move-exception v1

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    throw v1
.end method

.method public final g(Landroid/content/Context;Lp3/a;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/le;->a:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/le;->d:Z

    .line 5
    .line 6
    if-nez v1, :cond_3

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/le;->e:Landroid/content/Context;

    .line 13
    .line 14
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/le;->f:Lp3/a;

    .line 15
    .line 16
    sget-object v1, Lk3/l;->A:Lk3/l;

    .line 17
    .line 18
    iget-object v1, v1, Lk3/l;->f:LJ2/t;

    .line 19
    .line 20
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/le;->c:Lcom/google/android/gms/internal/ads/oe;

    .line 21
    .line 22
    invoke-virtual {v1, v2}, LJ2/t;->n(Lcom/google/android/gms/internal/ads/O5;)V

    .line 23
    .line 24
    .line 25
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/le;->b:Lo3/L;

    .line 26
    .line 27
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/le;->e:Landroid/content/Context;

    .line 28
    .line 29
    invoke-virtual {v1, v2}, Lo3/L;->F(Landroid/content/Context;)V

    .line 30
    .line 31
    .line 32
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/le;->e:Landroid/content/Context;

    .line 33
    .line 34
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/le;->f:Lp3/a;

    .line 35
    .line 36
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/Bc;->d(Landroid/content/Context;Lp3/a;)Lcom/google/android/gms/internal/ads/Cc;

    .line 37
    .line 38
    .line 39
    sget-object v1, Lcom/google/android/gms/internal/ads/Q7;->P1:Lcom/google/android/gms/internal/ads/J7;

    .line 40
    .line 41
    sget-object v2, Ll3/q;->d:Ll3/q;

    .line 42
    .line 43
    iget-object v3, v2, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 44
    .line 45
    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    check-cast v1, Ljava/lang/Boolean;

    .line 50
    .line 51
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    const/4 v3, 0x1

    .line 56
    if-nez v1, :cond_0

    .line 57
    .line 58
    const-string v1, "CsiReporterFactory: CSI is not enabled. No CSI reporter created."

    .line 59
    .line 60
    invoke-static {v1}, Lo3/I;->k(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    const/4 v1, 0x0

    .line 64
    goto :goto_0

    .line 65
    :catchall_0
    move-exception p1

    .line 66
    goto :goto_2

    .line 67
    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/ads/Nd;

    .line 68
    .line 69
    invoke-direct {v1, v3}, Lcom/google/android/gms/internal/ads/Nd;-><init>(I)V

    .line 70
    .line 71
    .line 72
    :goto_0
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/le;->h:Lcom/google/android/gms/internal/ads/Nd;

    .line 73
    .line 74
    if-eqz v1, :cond_1

    .line 75
    .line 76
    new-instance v1, Ln3/j;

    .line 77
    .line 78
    invoke-direct {v1, p0}, Ln3/j;-><init>(Lcom/google/android/gms/internal/ads/le;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v1}, Lo3/n;->b()LD4/b;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    const-string v4, "AppState.registerCsiReporter"

    .line 86
    .line 87
    invoke-static {v1, v4}, Lf/b;->d0(LD4/b;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    :cond_1
    invoke-static {}, LU2/m;->a()Z

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    if-eqz v1, :cond_2

    .line 95
    .line 96
    sget-object v1, Lcom/google/android/gms/internal/ads/Q7;->J7:Lcom/google/android/gms/internal/ads/J7;

    .line 97
    .line 98
    iget-object v2, v2, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 99
    .line 100
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    check-cast v1, Ljava/lang/Boolean;

    .line 105
    .line 106
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 107
    .line 108
    .line 109
    move-result v1

    .line 110
    if-eqz v1, :cond_2

    .line 111
    .line 112
    const-string v1, "connectivity"

    .line 113
    .line 114
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    check-cast v1, Landroid/net/ConnectivityManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    .line 120
    :try_start_1
    new-instance v2, Lk2/h;

    .line 121
    .line 122
    const/4 v4, 0x3

    .line 123
    invoke-direct {v2, p0, v4}, Lk2/h;-><init>(Ljava/lang/Object;I)V

    .line 124
    .line 125
    .line 126
    invoke-static {v1, v2}, Lc4/J0;->v(Landroid/net/ConnectivityManager;Lk2/h;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 127
    .line 128
    .line 129
    goto :goto_1

    .line 130
    :catch_0
    move-exception v1

    .line 131
    :try_start_2
    const-string v2, "Failed to register network callback"

    .line 132
    .line 133
    invoke-static {v2, v1}, Lp3/h;->h(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 134
    .line 135
    .line 136
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/le;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 137
    .line 138
    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 139
    .line 140
    .line 141
    :cond_2
    :goto_1
    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/le;->d:Z

    .line 142
    .line 143
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/le;->e()LD4/b;

    .line 144
    .line 145
    .line 146
    :cond_3
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 147
    sget-object v0, Lk3/l;->A:Lk3/l;

    .line 148
    .line 149
    iget-object v0, v0, Lk3/l;->c:Lo3/O;

    .line 150
    .line 151
    iget-object p2, p2, Lp3/a;->G:Ljava/lang/String;

    .line 152
    .line 153
    invoke-virtual {v0, p1, p2}, Lo3/O;->w(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    return-void

    .line 157
    :goto_2
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 158
    throw p1
.end method

.method public final h(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/le;->e:Landroid/content/Context;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/le;->f:Lp3/a;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/Bc;->d(Landroid/content/Context;Lp3/a;)Lcom/google/android/gms/internal/ads/Cc;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sget-object v1, Lcom/google/android/gms/internal/ads/B8;->g:Lcom/google/android/gms/internal/ads/f8;

    .line 10
    .line 11
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/f8;->l()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Ljava/lang/Double;

    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/Double;->floatValue()F

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    invoke-interface {v0, p2, p1, v1}, Lcom/google/android/gms/internal/ads/Cc;->c(Ljava/lang/Throwable;Ljava/lang/String;F)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final i(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/le;->e:Landroid/content/Context;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/le;->f:Lp3/a;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/Bc;->d(Landroid/content/Context;Lp3/a;)Lcom/google/android/gms/internal/ads/Cc;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/Cc;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final j(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/le;->e:Landroid/content/Context;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/le;->f:Lp3/a;

    .line 4
    .line 5
    sget-object v2, Lcom/google/android/gms/internal/ads/Bc;->Q:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v2

    .line 8
    :try_start_0
    sget-object v3, Lcom/google/android/gms/internal/ads/Bc;->S:Lcom/google/android/gms/internal/ads/Cc;

    .line 9
    .line 10
    if-nez v3, :cond_1

    .line 11
    .line 12
    sget-object v3, Lcom/google/android/gms/internal/ads/Q7;->Z6:Lcom/google/android/gms/internal/ads/J7;

    .line 13
    .line 14
    sget-object v4, Ll3/q;->d:Ll3/q;

    .line 15
    .line 16
    iget-object v5, v4, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 17
    .line 18
    invoke-virtual {v5, v3}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    check-cast v3, Ljava/lang/Boolean;

    .line 23
    .line 24
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    if-eqz v3, :cond_0

    .line 29
    .line 30
    sget-object v3, Lcom/google/android/gms/internal/ads/Q7;->Y6:Lcom/google/android/gms/internal/ads/J7;

    .line 31
    .line 32
    iget-object v4, v4, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 33
    .line 34
    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    check-cast v3, Ljava/lang/Boolean;

    .line 39
    .line 40
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    if-nez v3, :cond_0

    .line 45
    .line 46
    new-instance v3, Lcom/google/android/gms/internal/ads/Bc;

    .line 47
    .line 48
    invoke-direct {v3, v0, v1}, Lcom/google/android/gms/internal/ads/Bc;-><init>(Landroid/content/Context;Lp3/a;)V

    .line 49
    .line 50
    .line 51
    sput-object v3, Lcom/google/android/gms/internal/ads/Bc;->S:Lcom/google/android/gms/internal/ads/Cc;

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :catchall_0
    move-exception p1

    .line 55
    goto :goto_1

    .line 56
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/Aa;

    .line 57
    .line 58
    const/4 v1, 0x7

    .line 59
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/Aa;-><init>(I)V

    .line 60
    .line 61
    .line 62
    sput-object v0, Lcom/google/android/gms/internal/ads/Bc;->S:Lcom/google/android/gms/internal/ads/Cc;

    .line 63
    .line 64
    :cond_1
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    sget-object v0, Lcom/google/android/gms/internal/ads/Bc;->S:Lcom/google/android/gms/internal/ads/Cc;

    .line 66
    .line 67
    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/Cc;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 68
    .line 69
    .line 70
    return-void

    .line 71
    :goto_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 72
    throw p1
.end method

.method public final k(Ljava/lang/Boolean;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/le;->a:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/le;->i:Ljava/lang/Boolean;

    .line 5
    .line 6
    monitor-exit v0

    .line 7
    return-void

    .line 8
    :catchall_0
    move-exception p1

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    throw p1
.end method
