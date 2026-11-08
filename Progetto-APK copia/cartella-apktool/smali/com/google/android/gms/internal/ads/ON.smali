.class public final Lcom/google/android/gms/internal/ads/ON;
.super Lcom/google/android/gms/internal/ads/eN;
.source "SourceFile"


# instance fields
.field public final h:Lcom/google/android/gms/internal/ads/VB;

.field public final i:Lcom/google/android/gms/internal/ads/xM;

.field public final j:I

.field public k:Z

.field public l:J

.field public m:Z

.field public n:Z

.field public o:Lcom/google/android/gms/internal/ads/lJ;

.field public p:Lcom/google/android/gms/internal/ads/x6;

.field public final q:Lcom/google/android/gms/internal/ads/MN;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/x6;Lcom/google/android/gms/internal/ads/VB;Lcom/google/android/gms/internal/ads/MN;Lcom/google/android/gms/internal/ads/GH;I)V
    .locals 0

    .line 1
    sget-object p4, Lcom/google/android/gms/internal/ads/xM;->q:Lcom/google/android/gms/internal/ads/y1;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/eN;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ON;->p:Lcom/google/android/gms/internal/ads/x6;

    .line 7
    .line 8
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ON;->h:Lcom/google/android/gms/internal/ads/VB;

    .line 9
    .line 10
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/ON;->q:Lcom/google/android/gms/internal/ads/MN;

    .line 11
    .line 12
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/ON;->i:Lcom/google/android/gms/internal/ads/xM;

    .line 13
    .line 14
    iput p5, p0, Lcom/google/android/gms/internal/ads/ON;->j:I

    .line 15
    .line 16
    const/4 p1, 0x1

    .line 17
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/ON;->k:Z

    .line 18
    .line 19
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/ON;->l:J

    .line 25
    .line 26
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/vN;)V
    .locals 6

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/KN;

    .line 2
    .line 3
    iget-boolean v0, p1, Lcom/google/android/gms/internal/ads/KN;->Z:Z

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/KN;->W:[Lcom/google/android/gms/internal/ads/TN;

    .line 9
    .line 10
    array-length v2, v0

    .line 11
    const/4 v3, 0x0

    .line 12
    :goto_0
    if-ge v3, v2, :cond_1

    .line 13
    .line 14
    aget-object v4, v0, v3

    .line 15
    .line 16
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/TN;->n()V

    .line 17
    .line 18
    .line 19
    iget-object v5, v4, Lcom/google/android/gms/internal/ads/TN;->A:Lcom/google/android/gms/internal/ads/yM;

    .line 20
    .line 21
    if-eqz v5, :cond_0

    .line 22
    .line 23
    iput-object v1, v4, Lcom/google/android/gms/internal/ads/TN;->A:Lcom/google/android/gms/internal/ads/yM;

    .line 24
    .line 25
    iput-object v1, v4, Lcom/google/android/gms/internal/ads/TN;->f:Lcom/google/android/gms/internal/ads/p0;

    .line 26
    .line 27
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/KN;->O:Lcom/google/android/gms/internal/ads/JO;

    .line 31
    .line 32
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/JO;->c:Lcom/google/android/gms/internal/ads/GO;

    .line 33
    .line 34
    const/4 v3, 0x1

    .line 35
    if-eqz v2, :cond_2

    .line 36
    .line 37
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/GO;->a(Z)V

    .line 38
    .line 39
    .line 40
    :cond_2
    new-instance v2, Lcom/google/android/gms/internal/ads/Zn;

    .line 41
    .line 42
    const/16 v4, 0x19

    .line 43
    .line 44
    invoke-direct {v2, p1, v4}, Lcom/google/android/gms/internal/ads/Zn;-><init>(Ljava/lang/Object;I)V

    .line 45
    .line 46
    .line 47
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/JO;->a:Ljava/util/concurrent/ExecutorService;

    .line 48
    .line 49
    invoke-interface {v4, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 50
    .line 51
    .line 52
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/JO;->b:Lcom/google/android/gms/internal/ads/Zn;

    .line 53
    .line 54
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Zn;->run()V

    .line 55
    .line 56
    .line 57
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/KN;->T:Landroid/os/Handler;

    .line 58
    .line 59
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    iput-object v1, p1, Lcom/google/android/gms/internal/ads/KN;->U:Lcom/google/android/gms/internal/ads/uN;

    .line 63
    .line 64
    iput-boolean v3, p1, Lcom/google/android/gms/internal/ads/KN;->q0:Z

    .line 65
    .line 66
    return-void
.end method

.method public final b(Lcom/google/android/gms/internal/ads/wN;Lcom/google/android/gms/internal/ads/CO;J)Lcom/google/android/gms/internal/ads/vN;
    .locals 14

    .line 1
    move-object v12, p0

    .line 2
    move-object v0, p1

    .line 3
    iget-object v1, v12, Lcom/google/android/gms/internal/ads/ON;->h:Lcom/google/android/gms/internal/ads/VB;

    .line 4
    .line 5
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/VB;->zza()Lcom/google/android/gms/internal/ads/kC;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    iget-object v1, v12, Lcom/google/android/gms/internal/ads/ON;->o:Lcom/google/android/gms/internal/ads/lJ;

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-interface {v2, v1}, Lcom/google/android/gms/internal/ads/kC;->f(Lcom/google/android/gms/internal/ads/lJ;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ON;->c()Lcom/google/android/gms/internal/ads/x6;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/x6;->b:Lcom/google/android/gms/internal/ads/e5;

    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    new-instance v13, Lcom/google/android/gms/internal/ads/KN;

    .line 26
    .line 27
    iget-object v3, v12, Lcom/google/android/gms/internal/ads/eN;->g:Lcom/google/android/gms/internal/ads/zL;

    .line 28
    .line 29
    invoke-static {v3}, Lo3/r;->x(Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    new-instance v3, Lcom/google/android/gms/internal/ads/bD;

    .line 33
    .line 34
    iget-object v4, v12, Lcom/google/android/gms/internal/ads/ON;->q:Lcom/google/android/gms/internal/ads/MN;

    .line 35
    .line 36
    iget-object v4, v4, Lcom/google/android/gms/internal/ads/MN;->G:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast v4, Lcom/google/android/gms/internal/ads/O;

    .line 39
    .line 40
    invoke-direct {v3, v4}, Lcom/google/android/gms/internal/ads/bD;-><init>(Lcom/google/android/gms/internal/ads/O;)V

    .line 41
    .line 42
    .line 43
    new-instance v5, Lcom/google/android/gms/internal/ads/vM;

    .line 44
    .line 45
    iget-object v4, v12, Lcom/google/android/gms/internal/ads/eN;->d:Lcom/google/android/gms/internal/ads/vM;

    .line 46
    .line 47
    iget-object v4, v4, Lcom/google/android/gms/internal/ads/vM;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 48
    .line 49
    invoke-direct {v5, v4, p1}, Lcom/google/android/gms/internal/ads/vM;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;Lcom/google/android/gms/internal/ads/wN;)V

    .line 50
    .line 51
    .line 52
    iget-object v4, v12, Lcom/google/android/gms/internal/ads/eN;->c:Lcom/google/android/gms/internal/ads/f8;

    .line 53
    .line 54
    new-instance v6, Lcom/google/android/gms/internal/ads/f8;

    .line 55
    .line 56
    iget-object v4, v4, Lcom/google/android/gms/internal/ads/f8;->J:Ljava/lang/Object;

    .line 57
    .line 58
    check-cast v4, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 59
    .line 60
    const/16 v7, 0x8

    .line 61
    .line 62
    invoke-direct {v6, v4, p1, v7}, Lcom/google/android/gms/internal/ads/f8;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 63
    .line 64
    .line 65
    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    invoke-static {v7, v8}, Lcom/google/android/gms/internal/ads/Et;->t(J)J

    .line 71
    .line 72
    .line 73
    move-result-wide v10

    .line 74
    iget-object v4, v12, Lcom/google/android/gms/internal/ads/ON;->i:Lcom/google/android/gms/internal/ads/xM;

    .line 75
    .line 76
    iget v9, v12, Lcom/google/android/gms/internal/ads/ON;->j:I

    .line 77
    .line 78
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/e5;->a:Landroid/net/Uri;

    .line 79
    .line 80
    move-object v0, v13

    .line 81
    move-object v7, p0

    .line 82
    move-object/from16 v8, p2

    .line 83
    .line 84
    invoke-direct/range {v0 .. v11}, Lcom/google/android/gms/internal/ads/KN;-><init>(Landroid/net/Uri;Lcom/google/android/gms/internal/ads/kC;Lcom/google/android/gms/internal/ads/bD;Lcom/google/android/gms/internal/ads/xM;Lcom/google/android/gms/internal/ads/vM;Lcom/google/android/gms/internal/ads/f8;Lcom/google/android/gms/internal/ads/ON;Lcom/google/android/gms/internal/ads/CO;IJ)V

    .line 85
    .line 86
    .line 87
    return-object v13
.end method

.method public final declared-synchronized c()Lcom/google/android/gms/internal/ads/x6;
    .locals 1

    .line 1
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ON;->p:Lcom/google/android/gms/internal/ads/x6;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final j(Lcom/google/android/gms/internal/ads/lJ;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ON;->o:Lcom/google/android/gms/internal/ads/lJ;

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/eN;->g:Lcom/google/android/gms/internal/ads/zL;

    .line 11
    .line 12
    invoke-static {p1}, Lo3/r;->x(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ON;->t()V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final m()V
    .locals 0

    .line 1
    return-void
.end method

.method public final declared-synchronized p(Lcom/google/android/gms/internal/ads/x6;)V
    .locals 0

    .line 1
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ON;->p:Lcom/google/android/gms/internal/ads/x6;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final r()V
    .locals 0

    .line 1
    return-void
.end method

.method public final s(JZZ)V
    .locals 3

    .line 1
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    cmp-long v2, p1, v0

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    iget-wide p1, p0, Lcom/google/android/gms/internal/ads/ON;->l:J

    .line 11
    .line 12
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/ON;->k:Z

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/ON;->l:J

    .line 17
    .line 18
    cmp-long v2, v0, p1

    .line 19
    .line 20
    if-nez v2, :cond_1

    .line 21
    .line 22
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/ON;->m:Z

    .line 23
    .line 24
    if-ne v0, p3, :cond_1

    .line 25
    .line 26
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/ON;->n:Z

    .line 27
    .line 28
    if-ne v0, p4, :cond_1

    .line 29
    .line 30
    return-void

    .line 31
    :cond_1
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/ON;->l:J

    .line 32
    .line 33
    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/ON;->m:Z

    .line 34
    .line 35
    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/ON;->n:Z

    .line 36
    .line 37
    const/4 p1, 0x0

    .line 38
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/ON;->k:Z

    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ON;->t()V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public final t()V
    .locals 9

    .line 1
    new-instance v8, Lcom/google/android/gms/internal/ads/XN;

    .line 2
    .line 3
    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/ON;->l:J

    .line 4
    .line 5
    iget-boolean v5, p0, Lcom/google/android/gms/internal/ads/ON;->m:Z

    .line 6
    .line 7
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/ON;->n:Z

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ON;->c()Lcom/google/android/gms/internal/ads/x6;

    .line 10
    .line 11
    .line 12
    move-result-object v6

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v0, v6, Lcom/google/android/gms/internal/ads/x6;->c:Lcom/google/android/gms/internal/ads/A4;

    .line 16
    .line 17
    :goto_0
    move-object v7, v0

    .line 18
    goto :goto_1

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    goto :goto_0

    .line 21
    :goto_1
    move-object v0, v8

    .line 22
    move-wide v1, v3

    .line 23
    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/XN;-><init>(JJZLcom/google/android/gms/internal/ads/x6;Lcom/google/android/gms/internal/ads/A4;)V

    .line 24
    .line 25
    .line 26
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/ON;->k:Z

    .line 27
    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    new-instance v0, Lcom/google/android/gms/internal/ads/LN;

    .line 31
    .line 32
    invoke-direct {v0, v8}, Lcom/google/android/gms/internal/ads/nN;-><init>(Lcom/google/android/gms/internal/ads/Ie;)V

    .line 33
    .line 34
    .line 35
    move-object v8, v0

    .line 36
    :cond_1
    invoke-virtual {p0, v8}, Lcom/google/android/gms/internal/ads/eN;->k(Lcom/google/android/gms/internal/ads/Ie;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method
