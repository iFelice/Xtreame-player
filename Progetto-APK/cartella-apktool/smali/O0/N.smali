.class public final LO0/N;
.super LO0/a;
.source "SourceFile"


# instance fields
.field public final h:Ls0/h;

.field public final i:LB0/x;

.field public final j:LG0/r;

.field public final k:LU4/b;

.field public final l:I

.field public final m:I

.field public final n:Lm0/t;

.field public final o:Ly4/t;

.field public p:Z

.field public q:J

.field public r:Z

.field public s:Z

.field public t:Ls0/O;

.field public u:Lm0/I;


# direct methods
.method public constructor <init>(Lm0/I;Ls0/h;LB0/x;LG0/r;LU4/b;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, LO0/a;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LO0/N;->u:Lm0/I;

    .line 5
    .line 6
    iput-object p2, p0, LO0/N;->h:Ls0/h;

    .line 7
    .line 8
    iput-object p3, p0, LO0/N;->i:LB0/x;

    .line 9
    .line 10
    iput-object p4, p0, LO0/N;->j:LG0/r;

    .line 11
    .line 12
    iput-object p5, p0, LO0/N;->k:LU4/b;

    .line 13
    .line 14
    iput p6, p0, LO0/N;->l:I

    .line 15
    .line 16
    const/4 p1, 0x0

    .line 17
    iput-object p1, p0, LO0/N;->n:Lm0/t;

    .line 18
    .line 19
    const/4 p2, 0x0

    .line 20
    iput p2, p0, LO0/N;->m:I

    .line 21
    .line 22
    const/4 p2, 0x1

    .line 23
    iput-boolean p2, p0, LO0/N;->p:Z

    .line 24
    .line 25
    const-wide p2, -0x7fffffffffffffffL    # -4.9E-324

    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    iput-wide p2, p0, LO0/N;->q:J

    .line 31
    .line 32
    iput-object p1, p0, LO0/N;->o:Ly4/t;

    .line 33
    .line 34
    return-void
.end method


# virtual methods
.method public final b(LO0/y;LS0/d;J)LO0/w;
    .locals 19

    .line 1
    move-object/from16 v14, p0

    .line 2
    .line 3
    iget-object v0, v14, LO0/N;->h:Ls0/h;

    .line 4
    .line 5
    invoke-interface {v0}, Ls0/h;->a()Ls0/i;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    iget-object v0, v14, LO0/N;->t:Ls0/O;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-interface {v2, v0}, Ls0/i;->p(Ls0/O;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-virtual/range {p0 .. p0}, LO0/N;->h()Lm0/I;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iget-object v0, v0, Lm0/I;->b:Lm0/E;

    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    new-instance v17, LO0/L;

    .line 26
    .line 27
    iget-object v1, v14, LO0/a;->g:LC0/I;

    .line 28
    .line 29
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/H1;->j(Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    iget-object v1, v14, LO0/N;->i:LB0/x;

    .line 33
    .line 34
    iget-object v1, v1, LB0/x;->H:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast v1, LW0/v;

    .line 37
    .line 38
    new-instance v3, Lm2/u;

    .line 39
    .line 40
    invoke-direct {v3, v1}, Lm2/u;-><init>(LW0/v;)V

    .line 41
    .line 42
    .line 43
    new-instance v5, LG0/o;

    .line 44
    .line 45
    iget-object v1, v14, LO0/a;->d:LG0/o;

    .line 46
    .line 47
    iget-object v1, v1, LG0/o;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 48
    .line 49
    const/4 v4, 0x0

    .line 50
    move-object/from16 v6, p1

    .line 51
    .line 52
    invoke-direct {v5, v1, v4, v6}, LG0/o;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILO0/y;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual/range {p0 .. p1}, LO0/a;->a(LO0/y;)LO0/D;

    .line 56
    .line 57
    .line 58
    move-result-object v7

    .line 59
    iget-wide v8, v0, Lm0/E;->h:J

    .line 60
    .line 61
    invoke-static {v8, v9}, Lp0/M;->R(J)J

    .line 62
    .line 63
    .line 64
    move-result-wide v15

    .line 65
    iget-object v1, v14, LO0/N;->o:Ly4/t;

    .line 66
    .line 67
    if-eqz v1, :cond_1

    .line 68
    .line 69
    invoke-interface {v1}, Ly4/t;->get()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    check-cast v1, LT0/a;

    .line 74
    .line 75
    :goto_0
    move-object/from16 v18, v1

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_1
    const/4 v1, 0x0

    .line 79
    goto :goto_0

    .line 80
    :goto_1
    iget v12, v14, LO0/N;->m:I

    .line 81
    .line 82
    iget-object v13, v14, LO0/N;->n:Lm0/t;

    .line 83
    .line 84
    iget-object v1, v0, Lm0/E;->a:Landroid/net/Uri;

    .line 85
    .line 86
    iget-object v4, v14, LO0/N;->j:LG0/r;

    .line 87
    .line 88
    iget-object v6, v14, LO0/N;->k:LU4/b;

    .line 89
    .line 90
    iget-object v10, v0, Lm0/E;->e:Ljava/lang/String;

    .line 91
    .line 92
    iget v11, v14, LO0/N;->l:I

    .line 93
    .line 94
    move-object/from16 v0, v17

    .line 95
    .line 96
    move-object/from16 v8, p0

    .line 97
    .line 98
    move-object/from16 v9, p2

    .line 99
    .line 100
    move-wide v14, v15

    .line 101
    move-object/from16 v16, v18

    .line 102
    .line 103
    invoke-direct/range {v0 .. v16}, LO0/L;-><init>(Landroid/net/Uri;Ls0/i;Lm2/u;LG0/r;LG0/o;LU4/b;LO0/D;LO0/N;LS0/d;Ljava/lang/String;IILm0/t;JLT0/a;)V

    .line 104
    .line 105
    .line 106
    return-object v17
.end method

.method public final declared-synchronized h()Lm0/I;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, LO0/N;->u:Lm0/I;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return-object v0

    .line 6
    :catchall_0
    move-exception v0

    .line 7
    monitor-exit p0

    .line 8
    throw v0
.end method

.method public final j()V
    .locals 0

    .line 1
    return-void
.end method

.method public final l(Ls0/O;)V
    .locals 2

    .line 1
    iput-object p1, p0, LO0/N;->t:Ls0/O;

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
    iget-object v0, p0, LO0/a;->g:LC0/I;

    .line 11
    .line 12
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/H1;->j(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, LO0/N;->j:LG0/r;

    .line 16
    .line 17
    invoke-interface {v1, p1, v0}, LG0/r;->f(Landroid/os/Looper;LC0/I;)V

    .line 18
    .line 19
    .line 20
    invoke-interface {v1}, LG0/r;->prepare()V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, LO0/N;->t()V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public final n(LO0/w;)V
    .locals 7

    .line 1
    check-cast p1, LO0/L;

    .line 2
    .line 3
    iget-boolean v0, p1, LO0/L;->e0:Z

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    iget-object v0, p1, LO0/L;->b0:[LO0/T;

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
    invoke-virtual {v4}, LO0/T;->k()V

    .line 17
    .line 18
    .line 19
    iget-object v5, v4, LO0/T;->h:LG0/l;

    .line 20
    .line 21
    if-eqz v5, :cond_0

    .line 22
    .line 23
    iget-object v6, v4, LO0/T;->e:LG0/o;

    .line 24
    .line 25
    invoke-interface {v5, v6}, LG0/l;->c(LG0/o;)V

    .line 26
    .line 27
    .line 28
    iput-object v1, v4, LO0/T;->h:LG0/l;

    .line 29
    .line 30
    iput-object v1, v4, LO0/T;->g:Lm0/t;

    .line 31
    .line 32
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    iget-object v0, p1, LO0/L;->T:LS0/m;

    .line 36
    .line 37
    invoke-virtual {v0, p1}, LS0/m;->f(LS0/k;)V

    .line 38
    .line 39
    .line 40
    iget-object v0, p1, LO0/L;->Y:Landroid/os/Handler;

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    iput-object v1, p1, LO0/L;->Z:LO0/v;

    .line 46
    .line 47
    const/4 v0, 0x1

    .line 48
    iput-boolean v0, p1, LO0/L;->w0:Z

    .line 49
    .line 50
    return-void
.end method

.method public final p()V
    .locals 1

    .line 1
    iget-object v0, p0, LO0/N;->j:LG0/r;

    .line 2
    .line 3
    invoke-interface {v0}, LG0/r;->release()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final declared-synchronized s(Lm0/I;)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iput-object p1, p0, LO0/N;->u:Lm0/I;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return-void

    .line 6
    :catchall_0
    move-exception p1

    .line 7
    monitor-exit p0

    .line 8
    throw p1
.end method

.method public final t()V
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v14, LO0/Y;

    .line 4
    .line 5
    iget-wide v8, v0, LO0/N;->q:J

    .line 6
    .line 7
    iget-boolean v6, v0, LO0/N;->r:Z

    .line 8
    .line 9
    iget-boolean v1, v0, LO0/N;->s:Z

    .line 10
    .line 11
    invoke-virtual/range {p0 .. p0}, LO0/N;->h()Lm0/I;

    .line 12
    .line 13
    .line 14
    move-result-object v7

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    iget-object v1, v7, Lm0/I;->c:Lm0/D;

    .line 18
    .line 19
    :goto_0
    move-object/from16 v19, v1

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_0
    const/4 v1, 0x0

    .line 23
    goto :goto_0

    .line 24
    :goto_1
    const/16 v16, 0x0

    .line 25
    .line 26
    const/16 v17, 0x0

    .line 27
    .line 28
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    const-wide/16 v10, 0x0

    .line 39
    .line 40
    const-wide/16 v12, 0x0

    .line 41
    .line 42
    const/4 v15, 0x0

    .line 43
    move-object v1, v14

    .line 44
    move/from16 v18, v6

    .line 45
    .line 46
    move-object/from16 v20, v7

    .line 47
    .line 48
    move-wide v6, v8

    .line 49
    move-object/from16 v21, v14

    .line 50
    .line 51
    move/from16 v14, v18

    .line 52
    .line 53
    move-object/from16 v18, v20

    .line 54
    .line 55
    invoke-direct/range {v1 .. v19}, LO0/Y;-><init>(JJJJJJZZZLF/i;Lm0/I;Lm0/D;)V

    .line 56
    .line 57
    .line 58
    iget-boolean v1, v0, LO0/N;->p:Z

    .line 59
    .line 60
    if-eqz v1, :cond_1

    .line 61
    .line 62
    new-instance v14, LO0/M;

    .line 63
    .line 64
    move-object/from16 v1, v21

    .line 65
    .line 66
    invoke-direct {v14, v0, v1}, LO0/M;-><init>(LO0/N;LO0/Y;)V

    .line 67
    .line 68
    .line 69
    goto :goto_2

    .line 70
    :cond_1
    move-object/from16 v1, v21

    .line 71
    .line 72
    move-object v14, v1

    .line 73
    :goto_2
    invoke-virtual {v0, v14}, LO0/a;->m(Lm0/f0;)V

    .line 74
    .line 75
    .line 76
    return-void
.end method

.method public final u(JLW0/F;Z)V
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
    iget-wide p1, p0, LO0/N;->q:J

    .line 11
    .line 12
    :cond_0
    invoke-interface {p3}, LW0/F;->f()Z

    .line 13
    .line 14
    .line 15
    move-result p3

    .line 16
    iget-boolean v0, p0, LO0/N;->p:Z

    .line 17
    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    iget-wide v0, p0, LO0/N;->q:J

    .line 21
    .line 22
    cmp-long v2, v0, p1

    .line 23
    .line 24
    if-nez v2, :cond_1

    .line 25
    .line 26
    iget-boolean v0, p0, LO0/N;->r:Z

    .line 27
    .line 28
    if-ne v0, p3, :cond_1

    .line 29
    .line 30
    iget-boolean v0, p0, LO0/N;->s:Z

    .line 31
    .line 32
    if-ne v0, p4, :cond_1

    .line 33
    .line 34
    return-void

    .line 35
    :cond_1
    iput-wide p1, p0, LO0/N;->q:J

    .line 36
    .line 37
    iput-boolean p3, p0, LO0/N;->r:Z

    .line 38
    .line 39
    iput-boolean p4, p0, LO0/N;->s:Z

    .line 40
    .line 41
    const/4 p1, 0x0

    .line 42
    iput-boolean p1, p0, LO0/N;->p:Z

    .line 43
    .line 44
    invoke-virtual {p0}, LO0/N;->t()V

    .line 45
    .line 46
    .line 47
    return-void
.end method
