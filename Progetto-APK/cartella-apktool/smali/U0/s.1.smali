.class public final LU0/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LU0/S;
.implements LU0/t;


# instance fields
.field public final G:I

.field public final H:I

.field public I:Lz4/H;

.field public J:Lm0/t;

.field public K:I

.field public L:J

.field public M:J

.field public N:LU0/O;

.field public O:Ljava/util/concurrent/Executor;

.field public P:Z

.field public final synthetic Q:LU0/x;


# direct methods
.method public constructor <init>(LU0/x;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LU0/s;->Q:LU0/x;

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput p1, p0, LU0/s;->H:I

    .line 8
    .line 9
    invoke-static {p2}, Lp0/M;->N(Landroid/content/Context;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    const/4 p1, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p1, 0x5

    .line 18
    :goto_0
    iput p1, p0, LU0/s;->G:I

    .line 19
    .line 20
    sget-object p1, Lz4/H;->H:Lz4/F;

    .line 21
    .line 22
    sget-object p1, Lz4/d0;->K:Lz4/d0;

    .line 23
    .line 24
    iput-object p1, p0, LU0/s;->I:Lz4/H;

    .line 25
    .line 26
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    iput-wide p1, p0, LU0/s;->M:J

    .line 32
    .line 33
    sget-object p1, LU0/O;->k:LU4/b;

    .line 34
    .line 35
    iput-object p1, p0, LU0/s;->N:LU0/O;

    .line 36
    .line 37
    sget-object p1, LU0/x;->z:Lm/a;

    .line 38
    .line 39
    iput-object p1, p0, LU0/s;->O:Ljava/util/concurrent/Executor;

    .line 40
    .line 41
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    .line 1
    iget-wide v0, p0, LU0/s;->M:J

    .line 2
    .line 3
    iget-object v2, p0, LU0/s;->Q:LU0/x;

    .line 4
    .line 5
    iput-wide v0, v2, LU0/x;->v:J

    .line 6
    .line 7
    iget-wide v3, v2, LU0/x;->u:J

    .line 8
    .line 9
    cmp-long v5, v3, v0

    .line 10
    .line 11
    if-ltz v5, :cond_0

    .line 12
    .line 13
    iget-object v0, v2, LU0/x;->e:LU0/d;

    .line 14
    .line 15
    invoke-virtual {v0}, LU0/d;->a()V

    .line 16
    .line 17
    .line 18
    const/4 v0, 0x1

    .line 19
    iput-boolean v0, v2, LU0/x;->w:Z

    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public final b()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, LU0/s;->P:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, LU0/s;->Q:LU0/x;

    .line 6
    .line 7
    iget v1, v0, LU0/x;->s:I

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    iget-boolean v1, v0, LU0/x;->w:Z

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    iget-object v0, v0, LU0/x;->e:LU0/d;

    .line 16
    .line 17
    invoke-virtual {v0}, LU0/d;->b()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    const/4 v0, 0x1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 v0, 0x0

    .line 26
    :goto_0
    return v0
.end method

.method public final c()Landroid/view/Surface;
    .locals 3

    .line 1
    iget-boolean v0, p0, LU0/s;->P:Z

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/H1;->i(Z)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, LU0/s;->Q:LU0/x;

    .line 7
    .line 8
    iget-object v0, v0, LU0/x;->n:Lm0/v0;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    check-cast v0, LA0/Y;

    .line 14
    .line 15
    iget-object v1, v0, LA0/Y;->h:Lm0/s0;

    .line 16
    .line 17
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/H1;->j(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    iget-object v0, v0, LA0/Y;->h:Lm0/s0;

    .line 21
    .line 22
    check-cast v0, LA0/x;

    .line 23
    .line 24
    iget-object v0, v0, LA0/x;->f:LA0/N;

    .line 25
    .line 26
    iget-object v0, v0, LA0/N;->g:Landroid/util/SparseArray;

    .line 27
    .line 28
    const/4 v1, 0x1

    .line 29
    invoke-static {v0, v1}, Lp0/M;->k(Landroid/util/SparseArray;I)Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/H1;->i(Z)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    check-cast v0, LA0/M;

    .line 41
    .line 42
    iget-object v0, v0, LA0/M;->a:LA0/a0;

    .line 43
    .line 44
    invoke-virtual {v0}, LA0/a0;->c()Landroid/view/Surface;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    return-object v0
.end method

.method public final d()V
    .locals 2

    .line 1
    iget-object v0, p0, LU0/s;->Q:LU0/x;

    .line 2
    .line 3
    iget-boolean v1, v0, LU0/x;->d:Z

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    iget-object v0, v0, LU0/x;->e:LU0/d;

    .line 8
    .line 9
    invoke-virtual {v0}, LU0/d;->d()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public final e(IJLm0/t;Ljava/util/List;)V
    .locals 8

    .line 1
    iget-boolean v0, p0, LU0/s;->P:Z

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/H1;->i(Z)V

    .line 4
    .line 5
    .line 6
    invoke-static {p5}, Lz4/H;->s(Ljava/util/Collection;)Lz4/H;

    .line 7
    .line 8
    .line 9
    move-result-object p5

    .line 10
    iput-object p5, p0, LU0/s;->I:Lz4/H;

    .line 11
    .line 12
    const/4 p5, 0x1

    .line 13
    iput p5, p0, LU0/s;->K:I

    .line 14
    .line 15
    iput-object p4, p0, LU0/s;->J:Lm0/t;

    .line 16
    .line 17
    iget-object v0, p0, LU0/s;->Q:LU0/x;

    .line 18
    .line 19
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    iput-wide v1, v0, LU0/x;->v:J

    .line 25
    .line 26
    const/4 v3, 0x0

    .line 27
    iput-boolean v3, v0, LU0/x;->w:Z

    .line 28
    .line 29
    invoke-virtual {p0, p4}, LU0/s;->v(Lm0/t;)V

    .line 30
    .line 31
    .line 32
    iget-wide v4, p0, LU0/s;->M:J

    .line 33
    .line 34
    cmp-long p4, v4, v1

    .line 35
    .line 36
    if-nez p4, :cond_0

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    const/4 p5, 0x0

    .line 40
    :goto_0
    iget-boolean p4, v0, LU0/x;->d:Z

    .line 41
    .line 42
    if-nez p4, :cond_1

    .line 43
    .line 44
    iget p4, p0, LU0/s;->H:I

    .line 45
    .line 46
    if-nez p4, :cond_3

    .line 47
    .line 48
    if-eqz p5, :cond_3

    .line 49
    .line 50
    :cond_1
    if-eqz p5, :cond_2

    .line 51
    .line 52
    const-wide/high16 p4, -0x4000000000000000L    # -2.0

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_2
    const-wide/16 p4, 0x1

    .line 56
    .line 57
    add-long/2addr p4, v4

    .line 58
    :goto_1
    iget-object v0, v0, LU0/x;->i:Lc/g;

    .line 59
    .line 60
    new-instance v7, LU0/w;

    .line 61
    .line 62
    iget-wide v1, p0, LU0/s;->L:J

    .line 63
    .line 64
    add-long v3, p2, v1

    .line 65
    .line 66
    move-object v1, v7

    .line 67
    move v2, p1

    .line 68
    move-wide v5, p4

    .line 69
    invoke-direct/range {v1 .. v6}, LU0/w;-><init>(IJJ)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, v7, p4, p5}, Lc/g;->b(Ljava/lang/Object;J)V

    .line 73
    .line 74
    .line 75
    :cond_3
    return-void
.end method

.method public final f()V
    .locals 2

    .line 1
    iget-object v0, p0, LU0/s;->Q:LU0/x;

    .line 2
    .line 3
    iget-boolean v1, v0, LU0/x;->d:Z

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    iget-object v0, v0, LU0/x;->e:LU0/d;

    .line 8
    .line 9
    invoke-virtual {v0}, LU0/d;->f()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public final g(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, LU0/s;->L:J

    .line 2
    .line 3
    return-void
.end method

.method public final h(I)V
    .locals 1

    .line 1
    iget v0, p0, LU0/s;->H:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, LU0/s;->Q:LU0/x;

    .line 6
    .line 7
    iget-object v0, v0, LU0/x;->e:LU0/d;

    .line 8
    .line 9
    invoke-virtual {v0, p1}, LU0/d;->h(I)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public final i()V
    .locals 4

    .line 1
    iget-object v0, p0, LU0/s;->Q:LU0/x;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    sget-object v1, Lp0/F;->c:Lp0/F;

    .line 7
    .line 8
    iget v2, v1, Lp0/F;->a:I

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    iget v1, v1, Lp0/F;->b:I

    .line 12
    .line 13
    invoke-virtual {v0, v3, v2, v1}, LU0/x;->b(Landroid/view/Surface;II)V

    .line 14
    .line 15
    .line 16
    iput-object v3, v0, LU0/x;->r:Landroid/util/Pair;

    .line 17
    .line 18
    return-void
.end method

.method public final isInitialized()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, LU0/s;->P:Z

    .line 2
    .line 3
    return v0
.end method

.method public final j(LD0/U;)V
    .locals 1

    .line 1
    sget-object v0, LD4/a;->G:LD4/a;

    .line 2
    .line 3
    iput-object p1, p0, LU0/s;->N:LU0/O;

    .line 4
    .line 5
    iput-object v0, p0, LU0/s;->O:Ljava/util/concurrent/Executor;

    .line 6
    .line 7
    return-void
.end method

.method public final k(Z)V
    .locals 8

    .line 1
    iget-boolean v0, p0, LU0/s;->P:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, LU0/s;->Q:LU0/x;

    .line 6
    .line 7
    iget-object v0, v0, LU0/x;->n:Lm0/v0;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    check-cast v0, LA0/Y;

    .line 13
    .line 14
    iget-object v1, v0, LA0/Y;->h:Lm0/s0;

    .line 15
    .line 16
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/H1;->j(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    iget-object v0, v0, LA0/Y;->h:Lm0/s0;

    .line 20
    .line 21
    check-cast v0, LA0/x;

    .line 22
    .line 23
    iget-object v1, v0, LA0/x;->f:LA0/N;

    .line 24
    .line 25
    iget-object v1, v1, LA0/N;->k:LA0/a0;

    .line 26
    .line 27
    if-eqz v1, :cond_0

    .line 28
    .line 29
    const/4 v2, 0x1

    .line 30
    :try_start_0
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/H1;->j(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, LA0/a0;->a()V

    .line 34
    .line 35
    .line 36
    iget-object v3, v0, LA0/x;->g:LA0/h0;

    .line 37
    .line 38
    invoke-virtual {v3}, LA0/h0;->a()V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1}, LA0/a0;->g()V

    .line 42
    .line 43
    .line 44
    new-instance v3, Ljava/util/concurrent/CountDownLatch;

    .line 45
    .line 46
    invoke-direct {v3, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 47
    .line 48
    .line 49
    new-instance v4, LA0/p;

    .line 50
    .line 51
    const/4 v5, 0x0

    .line 52
    invoke-direct {v4, v3, v5}, LA0/p;-><init>(Ljava/lang/Object;I)V

    .line 53
    .line 54
    .line 55
    iget-object v6, v1, LA0/a0;->H:Ljava/lang/Object;

    .line 56
    .line 57
    monitor-enter v6
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    :try_start_1
    iput-object v4, v1, LA0/a0;->I:LA0/g0;

    .line 59
    .line 60
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 61
    :try_start_2
    iget-object v4, v0, LA0/x;->g:LA0/h0;

    .line 62
    .line 63
    iget-object v6, v0, LA0/x;->k:LA0/D;

    .line 64
    .line 65
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    new-instance v7, LA0/p;

    .line 69
    .line 70
    invoke-direct {v7, v6, v2}, LA0/p;-><init>(Ljava/lang/Object;I)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v4, v7, v2}, LA0/h0;->f(LA0/g0;Z)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 77
    .line 78
    .line 79
    const/4 v3, 0x0

    .line 80
    invoke-virtual {v1, v3}, LA0/a0;->i(LA0/p;)V

    .line 81
    .line 82
    .line 83
    iget-object v1, v0, LA0/x;->g:LA0/h0;

    .line 84
    .line 85
    new-instance v3, LA0/q;

    .line 86
    .line 87
    invoke-direct {v3, v0, v5}, LA0/q;-><init>(LA0/x;I)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v1, v3}, LA0/h0;->c(LA0/g0;)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 91
    .line 92
    .line 93
    goto :goto_1

    .line 94
    :catch_0
    move-exception v1

    .line 95
    goto :goto_0

    .line 96
    :catchall_0
    move-exception v1

    .line 97
    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 98
    :try_start_4
    throw v1
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    .line 99
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 100
    .line 101
    .line 102
    move-result-object v3

    .line 103
    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    .line 104
    .line 105
    .line 106
    iget-object v3, v0, LA0/x;->i:Ljava/util/concurrent/Executor;

    .line 107
    .line 108
    new-instance v4, LA0/o;

    .line 109
    .line 110
    invoke-direct {v4, v0, v1, v2}, LA0/o;-><init>(LA0/x;Ljava/lang/InterruptedException;I)V

    .line 111
    .line 112
    .line 113
    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 114
    .line 115
    .line 116
    :cond_0
    :goto_1
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    iput-wide v0, p0, LU0/s;->M:J

    .line 122
    .line 123
    iget-object v0, p0, LU0/s;->Q:LU0/x;

    .line 124
    .line 125
    invoke-static {v0, p1}, LU0/x;->a(LU0/x;Z)V

    .line 126
    .line 127
    .line 128
    return-void
.end method

.method public final l(Lm0/t;)Z
    .locals 2

    .line 1
    iget-boolean v0, p0, LU0/s;->P:Z

    .line 2
    .line 3
    xor-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/H1;->i(Z)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, LU0/s;->Q:LU0/x;

    .line 9
    .line 10
    iget v1, p0, LU0/s;->H:I

    .line 11
    .line 12
    invoke-virtual {v0, p1, v1}, LU0/x;->d(Lm0/t;I)Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    iput-boolean p1, p0, LU0/s;->P:Z

    .line 17
    .line 18
    return p1
.end method

.method public final m(Ljava/util/List;)V
    .locals 1

    .line 1
    iget-object v0, p0, LU0/s;->I:Lz4/H;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lz4/H;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-static {p1}, Lz4/H;->s(Ljava/util/Collection;)Lz4/H;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iput-object p1, p0, LU0/s;->I:Lz4/H;

    .line 15
    .line 16
    iget-object p1, p0, LU0/s;->J:Lm0/t;

    .line 17
    .line 18
    if-eqz p1, :cond_1

    .line 19
    .line 20
    invoke-virtual {p0, p1}, LU0/s;->v(Lm0/t;)V

    .line 21
    .line 22
    .line 23
    :cond_1
    return-void
.end method

.method public final n(Landroid/view/Surface;Lp0/F;)V
    .locals 2

    .line 1
    iget-object v0, p0, LU0/s;->Q:LU0/x;

    .line 2
    .line 3
    iget-object v1, v0, LU0/x;->r:Landroid/util/Pair;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v1, Landroid/view/Surface;

    .line 10
    .line 11
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    iget-object v1, v0, LU0/x;->r:Landroid/util/Pair;

    .line 18
    .line 19
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v1, Lp0/F;

    .line 22
    .line 23
    invoke-virtual {v1, p2}, Lp0/F;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    iput-object v1, v0, LU0/x;->r:Landroid/util/Pair;

    .line 35
    .line 36
    iget v1, p2, Lp0/F;->a:I

    .line 37
    .line 38
    iget p2, p2, Lp0/F;->b:I

    .line 39
    .line 40
    invoke-virtual {v0, p1, v1, p2}, LU0/x;->b(Landroid/view/Surface;II)V

    .line 41
    .line 42
    .line 43
    :goto_0
    return-void
.end method

.method public final o(JJ)V
    .locals 2

    .line 1
    iget-wide v0, p0, LU0/s;->L:J

    .line 2
    .line 3
    add-long/2addr p1, v0

    .line 4
    iget-object v0, p0, LU0/s;->Q:LU0/x;

    .line 5
    .line 6
    iget-object v0, v0, LU0/x;->e:LU0/d;

    .line 7
    .line 8
    invoke-virtual {v0, p1, p2, p3, p4}, LU0/d;->o(JJ)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final p(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, LU0/s;->Q:LU0/x;

    .line 2
    .line 3
    iget-boolean v1, v0, LU0/x;->d:Z

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    iget-object v0, v0, LU0/x;->e:LU0/d;

    .line 8
    .line 9
    invoke-virtual {v0, p1}, LU0/d;->p(Z)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public final q(Z)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    iget-boolean p1, p0, LU0/s;->P:Z

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p1, 0x0

    .line 12
    :goto_0
    iget-object v2, p0, LU0/s;->Q:LU0/x;

    .line 13
    .line 14
    iget-object v3, v2, LU0/x;->e:LU0/d;

    .line 15
    .line 16
    if-eqz p1, :cond_1

    .line 17
    .line 18
    iget p1, v2, LU0/x;->s:I

    .line 19
    .line 20
    if-nez p1, :cond_1

    .line 21
    .line 22
    const/4 v0, 0x1

    .line 23
    :cond_1
    iget-object p1, v3, LU0/d;->G:LU0/E;

    .line 24
    .line 25
    invoke-virtual {p1, v0}, LU0/E;->b(Z)Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    return p1
.end method

.method public final r(JLU0/P;)Z
    .locals 4

    .line 1
    iget-boolean v0, p0, LU0/s;->P:Z

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/H1;->i(Z)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, LU0/s;->Q:LU0/x;

    .line 7
    .line 8
    iget v1, v0, LU0/x;->x:I

    .line 9
    .line 10
    const/4 v2, -0x1

    .line 11
    const/4 v3, 0x0

    .line 12
    if-eq v1, v2, :cond_4

    .line 13
    .line 14
    iget v2, v0, LU0/x;->y:I

    .line 15
    .line 16
    if-ne v1, v2, :cond_4

    .line 17
    .line 18
    iget-object v0, v0, LU0/x;->n:Lm0/v0;

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    check-cast v0, LA0/Y;

    .line 24
    .line 25
    iget-object v1, v0, LA0/Y;->h:Lm0/s0;

    .line 26
    .line 27
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/H1;->j(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    iget-object v0, v0, LA0/Y;->h:Lm0/s0;

    .line 31
    .line 32
    check-cast v0, LA0/x;

    .line 33
    .line 34
    iget-object v0, v0, LA0/x;->f:LA0/N;

    .line 35
    .line 36
    iget-object v0, v0, LA0/N;->k:LA0/a0;

    .line 37
    .line 38
    if-eqz v0, :cond_0

    .line 39
    .line 40
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/H1;->j(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, LA0/a0;->d()I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    goto :goto_0

    .line 48
    :cond_0
    const/4 v0, 0x0

    .line 49
    :goto_0
    iget v1, p0, LU0/s;->G:I

    .line 50
    .line 51
    if-lt v0, v1, :cond_1

    .line 52
    .line 53
    return v3

    .line 54
    :cond_1
    iget-object v0, p0, LU0/s;->Q:LU0/x;

    .line 55
    .line 56
    iget-object v0, v0, LU0/x;->n:Lm0/v0;

    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 59
    .line 60
    .line 61
    check-cast v0, LA0/Y;

    .line 62
    .line 63
    iget-object v1, v0, LA0/Y;->h:Lm0/s0;

    .line 64
    .line 65
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/H1;->j(Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    iget-object v0, v0, LA0/Y;->h:Lm0/s0;

    .line 69
    .line 70
    check-cast v0, LA0/x;

    .line 71
    .line 72
    iget-object v1, v0, LA0/x;->v:Lm0/u;

    .line 73
    .line 74
    const-string v2, "registerInputStream must be called before registering input frames"

    .line 75
    .line 76
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/measurement/H1;->k(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    iget-object v1, v0, LA0/x;->m:Lp0/i;

    .line 80
    .line 81
    monitor-enter v1

    .line 82
    :try_start_0
    iget-boolean v2, v1, Lp0/i;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    .line 84
    monitor-exit v1

    .line 85
    if-eqz v2, :cond_3

    .line 86
    .line 87
    iget-boolean v1, v0, LA0/x;->w:Z

    .line 88
    .line 89
    if-eqz v1, :cond_2

    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_2
    iget-object v1, v0, LA0/x;->f:LA0/N;

    .line 93
    .line 94
    iget-object v1, v1, LA0/N;->k:LA0/a0;

    .line 95
    .line 96
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/H1;->j(Ljava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    iget-object v0, v0, LA0/x;->v:Lm0/u;

    .line 100
    .line 101
    invoke-virtual {v1, v0}, LA0/a0;->e(Lm0/u;)V

    .line 102
    .line 103
    .line 104
    iget-wide v0, p0, LU0/s;->L:J

    .line 105
    .line 106
    add-long/2addr p1, v0

    .line 107
    iput-wide p1, p0, LU0/s;->M:J

    .line 108
    .line 109
    const-wide/16 v0, 0x3e8

    .line 110
    .line 111
    mul-long p1, p1, v0

    .line 112
    .line 113
    check-cast p3, LU0/h;

    .line 114
    .line 115
    invoke-virtual {p3, p1, p2}, LU0/h;->a(J)V

    .line 116
    .line 117
    .line 118
    const/4 p1, 0x1

    .line 119
    return p1

    .line 120
    :cond_3
    :goto_1
    return v3

    .line 121
    :catchall_0
    move-exception p1

    .line 122
    monitor-exit v1

    .line 123
    throw p1

    .line 124
    :cond_4
    return v3
.end method

.method public final release()V
    .locals 8

    .line 1
    iget-object v0, p0, LU0/s;->Q:LU0/x;

    .line 2
    .line 3
    iget v1, v0, LU0/x;->t:I

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    if-ne v1, v2, :cond_0

    .line 7
    .line 8
    goto :goto_2

    .line 9
    :cond_0
    iget-object v1, v0, LU0/x;->m:Lp0/I;

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    iget-object v1, v1, Lp0/I;->a:Landroid/os/Handler;

    .line 15
    .line 16
    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    :cond_1
    iget-object v1, v0, LU0/x;->n:Lm0/v0;

    .line 20
    .line 21
    if-eqz v1, :cond_4

    .line 22
    .line 23
    check-cast v1, LA0/Y;

    .line 24
    .line 25
    iget-boolean v4, v1, LA0/Y;->k:Z

    .line 26
    .line 27
    if-eqz v4, :cond_2

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_2
    iget-object v4, v1, LA0/Y;->h:Lm0/s0;

    .line 31
    .line 32
    const/4 v5, 0x1

    .line 33
    if-eqz v4, :cond_3

    .line 34
    .line 35
    check-cast v4, LA0/x;

    .line 36
    .line 37
    iput-boolean v5, v4, LA0/x;->w:Z

    .line 38
    .line 39
    :try_start_0
    iget-object v6, v4, LA0/x;->g:LA0/h0;

    .line 40
    .line 41
    new-instance v7, LA0/q;

    .line 42
    .line 43
    invoke-direct {v7, v4, v5}, LA0/q;-><init>(LA0/x;I)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v6, v7}, LA0/h0;->e(LA0/q;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :catch_0
    move-exception v0

    .line 51
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 56
    .line 57
    .line 58
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 59
    .line 60
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 61
    .line 62
    .line 63
    throw v1

    .line 64
    :cond_3
    :goto_0
    iput-boolean v5, v1, LA0/Y;->k:Z

    .line 65
    .line 66
    :cond_4
    :goto_1
    iput-object v3, v0, LU0/x;->r:Landroid/util/Pair;

    .line 67
    .line 68
    iput v2, v0, LU0/x;->t:I

    .line 69
    .line 70
    :goto_2
    return-void
.end method

.method public final s()V
    .locals 6

    .line 1
    iget-boolean v0, p0, LU0/s;->P:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, LU0/s;->Q:LU0/x;

    .line 7
    .line 8
    iget-wide v1, v0, LU0/x;->u:J

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    invoke-static {v0, v3}, LU0/x;->a(LU0/x;Z)V

    .line 12
    .line 13
    .line 14
    iget-object v3, v0, LU0/x;->n:Lm0/v0;

    .line 15
    .line 16
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    check-cast v3, LA0/Y;

    .line 20
    .line 21
    iget-object v3, v3, LA0/Y;->h:Lm0/s0;

    .line 22
    .line 23
    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/H1;->j(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    check-cast v3, LA0/x;

    .line 27
    .line 28
    iget-object v4, v3, LA0/x;->u:LA0/U;

    .line 29
    .line 30
    if-eqz v4, :cond_2

    .line 31
    .line 32
    iget v4, v4, LA0/U;->j:I

    .line 33
    .line 34
    if-nez v4, :cond_1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    new-instance v4, LA0/q;

    .line 38
    .line 39
    const/4 v5, 0x2

    .line 40
    invoke-direct {v4, v3, v5}, LA0/q;-><init>(LA0/x;I)V

    .line 41
    .line 42
    .line 43
    const/4 v5, 0x1

    .line 44
    iget-object v3, v3, LA0/x;->g:LA0/h0;

    .line 45
    .line 46
    invoke-virtual {v3, v4, v5}, LA0/h0;->f(LA0/g0;Z)V

    .line 47
    .line 48
    .line 49
    :goto_0
    iput-wide v1, v0, LU0/x;->u:J

    .line 50
    .line 51
    return-void

    .line 52
    :cond_2
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 53
    .line 54
    const-string v1, "Replaying when enableReplayableCache is set to false"

    .line 55
    .line 56
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    throw v0
.end method

.method public final setPlaybackSpeed(F)V
    .locals 1

    .line 1
    iget v0, p0, LU0/s;->H:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, LU0/s;->Q:LU0/x;

    .line 6
    .line 7
    iget-object v0, v0, LU0/x;->e:LU0/d;

    .line 8
    .line 9
    invoke-virtual {v0, p1}, LU0/d;->setPlaybackSpeed(F)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public final t(LU0/B;)V
    .locals 1

    .line 1
    iget v0, p0, LU0/s;->H:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, LU0/s;->Q:LU0/x;

    .line 6
    .line 7
    iput-object p1, v0, LU0/x;->o:LU0/B;

    .line 8
    .line 9
    iget-object v0, v0, LU0/x;->e:LU0/d;

    .line 10
    .line 11
    iput-object p1, v0, LU0/d;->O:LU0/B;

    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public final u()V
    .locals 12

    .line 1
    iget-object v0, p0, LU0/s;->Q:LU0/x;

    .line 2
    .line 3
    iget-object v1, v0, LU0/x;->i:Lc/g;

    .line 4
    .line 5
    invoke-virtual {v1}, Lc/g;->m()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    iget-object v2, v0, LU0/x;->e:LU0/d;

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {v2}, LU0/d;->u()V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    new-instance v1, Lc/g;

    .line 18
    .line 19
    invoke-direct {v1}, Lc/g;-><init>()V

    .line 20
    .line 21
    .line 22
    const/4 v3, 0x1

    .line 23
    const/4 v4, 0x1

    .line 24
    :goto_0
    iget-object v5, v0, LU0/x;->i:Lc/g;

    .line 25
    .line 26
    invoke-virtual {v5}, Lc/g;->m()I

    .line 27
    .line 28
    .line 29
    move-result v5

    .line 30
    if-lez v5, :cond_4

    .line 31
    .line 32
    iget-object v5, v0, LU0/x;->i:Lc/g;

    .line 33
    .line 34
    invoke-virtual {v5}, Lc/g;->j()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v5

    .line 38
    check-cast v5, LU0/w;

    .line 39
    .line 40
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    if-eqz v4, :cond_3

    .line 44
    .line 45
    iget v4, v5, LU0/w;->b:I

    .line 46
    .line 47
    if-eqz v4, :cond_2

    .line 48
    .line 49
    if-ne v4, v3, :cond_1

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_1
    invoke-virtual {v2}, LU0/d;->u()V

    .line 53
    .line 54
    .line 55
    goto :goto_2

    .line 56
    :cond_2
    :goto_1
    new-instance v4, LU0/w;

    .line 57
    .line 58
    iget-wide v10, v5, LU0/w;->c:J

    .line 59
    .line 60
    iget-wide v8, v5, LU0/w;->a:J

    .line 61
    .line 62
    const/4 v7, 0x0

    .line 63
    move-object v6, v4

    .line 64
    invoke-direct/range {v6 .. v11}, LU0/w;-><init>(IJJ)V

    .line 65
    .line 66
    .line 67
    move-object v5, v4

    .line 68
    :goto_2
    const/4 v4, 0x0

    .line 69
    :cond_3
    iget-wide v6, v5, LU0/w;->c:J

    .line 70
    .line 71
    invoke-virtual {v1, v5, v6, v7}, Lc/g;->b(Ljava/lang/Object;J)V

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_4
    iput-object v1, v0, LU0/x;->i:Lc/g;

    .line 76
    .line 77
    return-void
.end method

.method public final v(Lm0/t;)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Lm0/t;->a()Lm0/s;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, LU0/s;->Q:LU0/x;

    .line 6
    .line 7
    iget-object p1, p1, Lm0/t;->E:Lm0/i;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    invoke-virtual {p1}, Lm0/i;->e()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    sget-object p1, Lm0/i;->h:Lm0/i;

    .line 22
    .line 23
    :goto_0
    iput-object p1, v0, Lm0/s;->D:Lm0/i;

    .line 24
    .line 25
    new-instance p1, Lm0/t;

    .line 26
    .line 27
    invoke-direct {p1, v0}, Lm0/t;-><init>(Lm0/s;)V

    .line 28
    .line 29
    .line 30
    iget v0, p0, LU0/s;->K:I

    .line 31
    .line 32
    const/4 v1, 0x2

    .line 33
    const/4 v2, 0x1

    .line 34
    if-ne v0, v2, :cond_1

    .line 35
    .line 36
    const/4 v0, 0x1

    .line 37
    goto :goto_1

    .line 38
    :cond_1
    const/4 v0, 0x2

    .line 39
    :goto_1
    iget-object v3, p0, LU0/s;->Q:LU0/x;

    .line 40
    .line 41
    iget-object v3, v3, LU0/x;->n:Lm0/v0;

    .line 42
    .line 43
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    iget-object v4, p0, LU0/s;->I:Lz4/H;

    .line 47
    .line 48
    check-cast v3, LA0/Y;

    .line 49
    .line 50
    iget-object v5, v3, LA0/Y;->h:Lm0/s0;

    .line 51
    .line 52
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/H1;->j(Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    iget-object v5, v3, LA0/Y;->h:Lm0/s0;

    .line 56
    .line 57
    new-instance v6, Lz4/E;

    .line 58
    .line 59
    const/4 v7, 0x4

    .line 60
    invoke-direct {v6, v7}, Lz4/B;-><init>(I)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v6, v4}, Lz4/B;->j0(Ljava/util/List;)Lz4/B;

    .line 64
    .line 65
    .line 66
    iget-object v3, v3, LA0/Y;->j:Lz4/H;

    .line 67
    .line 68
    invoke-virtual {v6, v3}, Lz4/B;->j0(Ljava/util/List;)Lz4/B;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v6}, Lz4/E;->m0()Lz4/d0;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    check-cast v5, LA0/x;

    .line 76
    .line 77
    iget-boolean v4, v5, LA0/x;->w:Z

    .line 78
    .line 79
    if-eqz v4, :cond_2

    .line 80
    .line 81
    goto/16 :goto_6

    .line 82
    .line 83
    :cond_2
    if-eq v0, v2, :cond_4

    .line 84
    .line 85
    if-eq v0, v1, :cond_4

    .line 86
    .line 87
    const/4 v1, 0x3

    .line 88
    if-eq v0, v1, :cond_4

    .line 89
    .line 90
    if-ne v0, v7, :cond_3

    .line 91
    .line 92
    goto :goto_2

    .line 93
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 94
    .line 95
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    throw p1

    .line 103
    :cond_4
    :goto_2
    invoke-static {}, LA0/g;->a()V

    .line 104
    .line 105
    .line 106
    iget v1, p1, Lm0/t;->B:F

    .line 107
    .line 108
    const/high16 v4, 0x3f800000    # 1.0f

    .line 109
    .line 110
    cmpl-float v6, v1, v4

    .line 111
    .line 112
    if-lez v6, :cond_5

    .line 113
    .line 114
    invoke-virtual {p1}, Lm0/t;->a()Lm0/s;

    .line 115
    .line 116
    .line 117
    move-result-object v6

    .line 118
    iget v7, p1, Lm0/t;->v:I

    .line 119
    .line 120
    int-to-float v7, v7

    .line 121
    mul-float v7, v7, v1

    .line 122
    .line 123
    float-to-int v1, v7

    .line 124
    iput v1, v6, Lm0/s;->u:I

    .line 125
    .line 126
    iput v4, v6, Lm0/s;->A:F

    .line 127
    .line 128
    new-instance v1, Lm0/t;

    .line 129
    .line 130
    invoke-direct {v1, v6}, Lm0/t;-><init>(Lm0/s;)V

    .line 131
    .line 132
    .line 133
    goto :goto_3

    .line 134
    :cond_5
    cmpg-float v6, v1, v4

    .line 135
    .line 136
    if-gez v6, :cond_6

    .line 137
    .line 138
    invoke-virtual {p1}, Lm0/t;->a()Lm0/s;

    .line 139
    .line 140
    .line 141
    move-result-object v6

    .line 142
    iget v7, p1, Lm0/t;->w:I

    .line 143
    .line 144
    int-to-float v7, v7

    .line 145
    div-float/2addr v7, v1

    .line 146
    float-to-int v1, v7

    .line 147
    iput v1, v6, Lm0/s;->v:I

    .line 148
    .line 149
    iput v4, v6, Lm0/s;->A:F

    .line 150
    .line 151
    new-instance v1, Lm0/t;

    .line 152
    .line 153
    invoke-direct {v1, v6}, Lm0/t;-><init>(Lm0/s;)V

    .line 154
    .line 155
    .line 156
    goto :goto_3

    .line 157
    :cond_6
    move-object v1, p1

    .line 158
    :goto_3
    new-instance v4, Lm0/u;

    .line 159
    .line 160
    const-wide/16 v6, 0x0

    .line 161
    .line 162
    invoke-direct {v4, v1, v6, v7}, Lm0/u;-><init>(Lm0/t;J)V

    .line 163
    .line 164
    .line 165
    iput-object v4, v5, LA0/x;->v:Lm0/u;

    .line 166
    .line 167
    :try_start_0
    iget-object v1, v5, LA0/x;->m:Lp0/i;

    .line 168
    .line 169
    invoke-virtual {v1}, Lp0/i;->a()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    .line 171
    .line 172
    goto :goto_4

    .line 173
    :catch_0
    move-exception v1

    .line 174
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 175
    .line 176
    .line 177
    move-result-object v4

    .line 178
    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V

    .line 179
    .line 180
    .line 181
    iget-object v4, v5, LA0/x;->i:Ljava/util/concurrent/Executor;

    .line 182
    .line 183
    new-instance v6, LA0/o;

    .line 184
    .line 185
    const/4 v7, 0x0

    .line 186
    invoke-direct {v6, v5, v1, v7}, LA0/o;-><init>(LA0/x;Ljava/lang/InterruptedException;I)V

    .line 187
    .line 188
    .line 189
    invoke-interface {v4, v6}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 190
    .line 191
    .line 192
    :goto_4
    iget-object v1, v5, LA0/x;->r:Ljava/lang/Object;

    .line 193
    .line 194
    monitor-enter v1

    .line 195
    :try_start_1
    new-instance v4, LA0/w;

    .line 196
    .line 197
    invoke-direct {v4, v0, p1, v3}, LA0/w;-><init>(ILm0/t;Lz4/d0;)V

    .line 198
    .line 199
    .line 200
    iget-boolean p1, v5, LA0/x;->p:Z

    .line 201
    .line 202
    if-nez p1, :cond_7

    .line 203
    .line 204
    iput-boolean v2, v5, LA0/x;->p:Z

    .line 205
    .line 206
    iget-object p1, v5, LA0/x;->m:Lp0/i;

    .line 207
    .line 208
    invoke-virtual {p1}, Lp0/i;->e()V

    .line 209
    .line 210
    .line 211
    iget-object p1, v5, LA0/x;->g:LA0/h0;

    .line 212
    .line 213
    new-instance v0, LA0/d;

    .line 214
    .line 215
    invoke-direct {v0, v2, v5, v4}, LA0/d;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {p1, v0, v2}, LA0/h0;->f(LA0/g0;Z)V

    .line 219
    .line 220
    .line 221
    goto :goto_5

    .line 222
    :catchall_0
    move-exception p1

    .line 223
    goto :goto_7

    .line 224
    :cond_7
    iput-object v4, v5, LA0/x;->o:LA0/w;

    .line 225
    .line 226
    iget-object p1, v5, LA0/x;->m:Lp0/i;

    .line 227
    .line 228
    invoke-virtual {p1}, Lp0/i;->e()V

    .line 229
    .line 230
    .line 231
    iget-object p1, v5, LA0/x;->f:LA0/N;

    .line 232
    .line 233
    iget-object p1, p1, LA0/N;->k:LA0/a0;

    .line 234
    .line 235
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 236
    .line 237
    .line 238
    invoke-virtual {p1}, LA0/a0;->k()V

    .line 239
    .line 240
    .line 241
    :goto_5
    monitor-exit v1

    .line 242
    :goto_6
    return-void

    .line 243
    :goto_7
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 244
    throw p1
.end method
