.class public final LE0/j;
.super LO0/a;
.source "SourceFile"


# instance fields
.field public A:LS0/m;

.field public B:Ls0/O;

.field public C:LI0/u;

.field public D:Landroid/os/Handler;

.field public E:Lm0/D;

.field public F:Landroid/net/Uri;

.field public final G:Landroid/net/Uri;

.field public H:LF0/c;

.field public I:Z

.field public J:J

.field public K:J

.field public L:J

.field public M:I

.field public N:J

.field public O:I

.field public P:Lm0/I;

.field public final h:Z

.field public final i:Ls0/h;

.field public final j:LE0/a;

.field public final k:LU4/b;

.field public final l:LG0/r;

.field public final m:LU4/b;

.field public final n:Lm2/i;

.field public final o:J

.field public final p:J

.field public final q:LO0/D;

.field public final r:LS0/o;

.field public final s:LE0/i;

.field public final t:Ljava/lang/Object;

.field public final u:Landroid/util/SparseArray;

.field public final v:LE0/e;

.field public final w:LE0/e;

.field public final x:LE0/f;

.field public final y:LS0/n;

.field public z:Ls0/i;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "media3.exoplayer.dash"

    .line 2
    .line 3
    invoke-static {v0}, Lm0/J;->a(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public constructor <init>(Lm0/I;Ls0/h;LS0/o;LE0/a;LU4/b;LG0/r;LU4/b;JJ)V
    .locals 1

    .line 1
    invoke-direct {p0}, LO0/a;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LE0/j;->P:Lm0/I;

    .line 5
    .line 6
    iget-object v0, p1, Lm0/I;->c:Lm0/D;

    .line 7
    .line 8
    iput-object v0, p0, LE0/j;->E:Lm0/D;

    .line 9
    .line 10
    iget-object p1, p1, Lm0/I;->b:Lm0/E;

    .line 11
    .line 12
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    iget-object p1, p1, Lm0/E;->a:Landroid/net/Uri;

    .line 16
    .line 17
    iput-object p1, p0, LE0/j;->F:Landroid/net/Uri;

    .line 18
    .line 19
    iput-object p1, p0, LE0/j;->G:Landroid/net/Uri;

    .line 20
    .line 21
    const/4 p1, 0x0

    .line 22
    iput-object p1, p0, LE0/j;->H:LF0/c;

    .line 23
    .line 24
    iput-object p2, p0, LE0/j;->i:Ls0/h;

    .line 25
    .line 26
    iput-object p3, p0, LE0/j;->r:LS0/o;

    .line 27
    .line 28
    iput-object p4, p0, LE0/j;->j:LE0/a;

    .line 29
    .line 30
    iput-object p6, p0, LE0/j;->l:LG0/r;

    .line 31
    .line 32
    iput-object p7, p0, LE0/j;->m:LU4/b;

    .line 33
    .line 34
    iput-wide p8, p0, LE0/j;->o:J

    .line 35
    .line 36
    iput-wide p10, p0, LE0/j;->p:J

    .line 37
    .line 38
    iput-object p5, p0, LE0/j;->k:LU4/b;

    .line 39
    .line 40
    new-instance p2, Lm2/i;

    .line 41
    .line 42
    const/4 p3, 0x3

    .line 43
    invoke-direct {p2, p3}, Lm2/i;-><init>(I)V

    .line 44
    .line 45
    .line 46
    iput-object p2, p0, LE0/j;->n:Lm2/i;

    .line 47
    .line 48
    const/4 p2, 0x0

    .line 49
    iput-boolean p2, p0, LE0/j;->h:Z

    .line 50
    .line 51
    invoke-virtual {p0, p1}, LO0/a;->a(LO0/y;)LO0/D;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    iput-object p1, p0, LE0/j;->q:LO0/D;

    .line 56
    .line 57
    new-instance p1, Ljava/lang/Object;

    .line 58
    .line 59
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 60
    .line 61
    .line 62
    iput-object p1, p0, LE0/j;->t:Ljava/lang/Object;

    .line 63
    .line 64
    new-instance p1, Landroid/util/SparseArray;

    .line 65
    .line 66
    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    .line 67
    .line 68
    .line 69
    iput-object p1, p0, LE0/j;->u:Landroid/util/SparseArray;

    .line 70
    .line 71
    new-instance p1, LE0/f;

    .line 72
    .line 73
    invoke-direct {p1, p0}, LE0/f;-><init>(LE0/j;)V

    .line 74
    .line 75
    .line 76
    iput-object p1, p0, LE0/j;->x:LE0/f;

    .line 77
    .line 78
    const-wide p3, -0x7fffffffffffffffL    # -4.9E-324

    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    iput-wide p3, p0, LE0/j;->N:J

    .line 84
    .line 85
    iput-wide p3, p0, LE0/j;->L:J

    .line 86
    .line 87
    new-instance p1, LE0/i;

    .line 88
    .line 89
    invoke-direct {p1, p0, p2}, LE0/i;-><init>(LE0/j;I)V

    .line 90
    .line 91
    .line 92
    iput-object p1, p0, LE0/j;->s:LE0/i;

    .line 93
    .line 94
    new-instance p1, LE0/f;

    .line 95
    .line 96
    invoke-direct {p1, p0}, LE0/f;-><init>(LE0/j;)V

    .line 97
    .line 98
    .line 99
    iput-object p1, p0, LE0/j;->y:LS0/n;

    .line 100
    .line 101
    new-instance p1, LE0/e;

    .line 102
    .line 103
    invoke-direct {p1, p0, p2}, LE0/e;-><init>(LE0/j;I)V

    .line 104
    .line 105
    .line 106
    iput-object p1, p0, LE0/j;->v:LE0/e;

    .line 107
    .line 108
    new-instance p1, LE0/e;

    .line 109
    .line 110
    const/4 p2, 0x1

    .line 111
    invoke-direct {p1, p0, p2}, LE0/e;-><init>(LE0/j;I)V

    .line 112
    .line 113
    .line 114
    iput-object p1, p0, LE0/j;->w:LE0/e;

    .line 115
    .line 116
    return-void
.end method

.method public static t(LF0/h;)Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_0
    iget-object v2, p0, LF0/h;->c:Ljava/util/List;

    .line 4
    .line 5
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result v3

    .line 9
    if-ge v1, v3, :cond_2

    .line 10
    .line 11
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    check-cast v2, LF0/a;

    .line 16
    .line 17
    iget v2, v2, LF0/a;->b:I

    .line 18
    .line 19
    const/4 v3, 0x1

    .line 20
    if-eq v2, v3, :cond_1

    .line 21
    .line 22
    const/4 v4, 0x2

    .line 23
    if-ne v2, v4, :cond_0

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    :goto_1
    return v3

    .line 30
    :cond_2
    return v0
.end method


# virtual methods
.method public final b(LO0/y;LS0/d;J)LO0/w;
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v1, LO0/y;->a:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v2, Ljava/lang/Integer;

    .line 8
    .line 9
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    iget v3, v0, LE0/j;->O:I

    .line 14
    .line 15
    sub-int v8, v2, v3

    .line 16
    .line 17
    invoke-virtual/range {p0 .. p1}, LO0/a;->a(LO0/y;)LO0/D;

    .line 18
    .line 19
    .line 20
    move-result-object v14

    .line 21
    new-instance v12, LG0/o;

    .line 22
    .line 23
    iget-object v2, v0, LO0/a;->d:LG0/o;

    .line 24
    .line 25
    iget-object v2, v2, LG0/o;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 26
    .line 27
    const/4 v3, 0x0

    .line 28
    invoke-direct {v12, v2, v3, v1}, LG0/o;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILO0/y;)V

    .line 29
    .line 30
    .line 31
    new-instance v1, LE0/d;

    .line 32
    .line 33
    iget v2, v0, LE0/j;->O:I

    .line 34
    .line 35
    add-int/2addr v2, v8

    .line 36
    iget-object v6, v0, LE0/j;->H:LF0/c;

    .line 37
    .line 38
    iget-object v10, v0, LE0/j;->B:Ls0/O;

    .line 39
    .line 40
    iget-wide v3, v0, LE0/j;->L:J

    .line 41
    .line 42
    iget-object v15, v0, LO0/a;->g:LC0/I;

    .line 43
    .line 44
    invoke-static {v15}, Lcom/google/android/gms/internal/measurement/H1;->j(Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    iget-object v5, v0, LE0/j;->k:LU4/b;

    .line 48
    .line 49
    move-object/from16 v19, v5

    .line 50
    .line 51
    iget-object v5, v0, LE0/j;->x:LE0/f;

    .line 52
    .line 53
    move-object/from16 v20, v5

    .line 54
    .line 55
    iget-object v7, v0, LE0/j;->n:Lm2/i;

    .line 56
    .line 57
    iget-object v9, v0, LE0/j;->j:LE0/a;

    .line 58
    .line 59
    iget-object v11, v0, LE0/j;->l:LG0/r;

    .line 60
    .line 61
    iget-object v13, v0, LE0/j;->m:LU4/b;

    .line 62
    .line 63
    iget-object v5, v0, LE0/j;->y:LS0/n;

    .line 64
    .line 65
    move-object/from16 v17, v5

    .line 66
    .line 67
    move-wide/from16 v21, v3

    .line 68
    .line 69
    move-object v4, v1

    .line 70
    move v5, v2

    .line 71
    move-object v3, v15

    .line 72
    move-wide/from16 v15, v21

    .line 73
    .line 74
    move-object/from16 v18, p2

    .line 75
    .line 76
    move-object/from16 v21, v3

    .line 77
    .line 78
    invoke-direct/range {v4 .. v21}, LE0/d;-><init>(ILF0/c;Lm2/i;ILE0/a;Ls0/O;LG0/r;LG0/o;LU4/b;LO0/D;JLS0/n;LS0/d;LU4/b;LE0/f;LC0/I;)V

    .line 79
    .line 80
    .line 81
    iget-object v3, v0, LE0/j;->u:Landroid/util/SparseArray;

    .line 82
    .line 83
    invoke-virtual {v3, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    return-object v1
.end method

.method public final declared-synchronized h()Lm0/I;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, LE0/j;->P:Lm0/I;
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
    .locals 1

    .line 1
    iget-object v0, p0, LE0/j;->y:LS0/n;

    .line 2
    .line 3
    invoke-interface {v0}, LS0/n;->b()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final l(Ls0/O;)V
    .locals 2

    .line 1
    iput-object p1, p0, LE0/j;->B:Ls0/O;

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object v0, p0, LO0/a;->g:LC0/I;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/H1;->j(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    iget-object v1, p0, LE0/j;->l:LG0/r;

    .line 13
    .line 14
    invoke-interface {v1, p1, v0}, LG0/r;->f(Landroid/os/Looper;LC0/I;)V

    .line 15
    .line 16
    .line 17
    invoke-interface {v1}, LG0/r;->prepare()V

    .line 18
    .line 19
    .line 20
    iget-boolean p1, p0, LE0/j;->h:Z

    .line 21
    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    const/4 p1, 0x0

    .line 25
    invoke-virtual {p0, p1}, LE0/j;->x(Z)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    iget-object p1, p0, LE0/j;->i:Ls0/h;

    .line 30
    .line 31
    invoke-interface {p1}, Ls0/h;->a()Ls0/i;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    iput-object p1, p0, LE0/j;->z:Ls0/i;

    .line 36
    .line 37
    new-instance p1, LS0/m;

    .line 38
    .line 39
    const-string v0, "DashMediaSource"

    .line 40
    .line 41
    invoke-direct {p1, v0}, LS0/m;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    iput-object p1, p0, LE0/j;->A:LS0/m;

    .line 45
    .line 46
    const/4 p1, 0x0

    .line 47
    invoke-static {p1}, Lp0/M;->n(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    iput-object p1, p0, LE0/j;->D:Landroid/os/Handler;

    .line 52
    .line 53
    invoke-virtual {p0}, LE0/j;->z()V

    .line 54
    .line 55
    .line 56
    :goto_0
    return-void
.end method

.method public final n(LO0/w;)V
    .locals 5

    .line 1
    check-cast p1, LE0/d;

    .line 2
    .line 3
    iget-object v0, p1, LE0/d;->S:LE0/t;

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    iput-boolean v1, v0, LE0/t;->O:Z

    .line 7
    .line 8
    iget-object v0, v0, LE0/t;->J:Landroid/os/Handler;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p1, LE0/d;->Y:[LP0/m;

    .line 15
    .line 16
    array-length v2, v0

    .line 17
    const/4 v3, 0x0

    .line 18
    :goto_0
    if-ge v3, v2, :cond_0

    .line 19
    .line 20
    aget-object v4, v0, v3

    .line 21
    .line 22
    invoke-virtual {v4, p1}, LP0/m;->D(LP0/l;)V

    .line 23
    .line 24
    .line 25
    add-int/lit8 v3, v3, 0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    iput-object v1, p1, LE0/d;->X:LO0/v;

    .line 29
    .line 30
    iget-object v0, p0, LE0/j;->u:Landroid/util/SparseArray;

    .line 31
    .line 32
    iget p1, p1, LE0/d;->G:I

    .line 33
    .line 34
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public final p()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, LE0/j;->I:Z

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    iput-object v1, p0, LE0/j;->z:Ls0/i;

    .line 6
    .line 7
    iget-object v2, p0, LE0/j;->A:LS0/m;

    .line 8
    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    invoke-virtual {v2, v1}, LS0/m;->f(LS0/k;)V

    .line 12
    .line 13
    .line 14
    iput-object v1, p0, LE0/j;->A:LS0/m;

    .line 15
    .line 16
    :cond_0
    const-wide/16 v2, 0x0

    .line 17
    .line 18
    iput-wide v2, p0, LE0/j;->J:J

    .line 19
    .line 20
    iput-wide v2, p0, LE0/j;->K:J

    .line 21
    .line 22
    iget-object v2, p0, LE0/j;->G:Landroid/net/Uri;

    .line 23
    .line 24
    iput-object v2, p0, LE0/j;->F:Landroid/net/Uri;

    .line 25
    .line 26
    iput-object v1, p0, LE0/j;->C:LI0/u;

    .line 27
    .line 28
    iget-object v2, p0, LE0/j;->D:Landroid/os/Handler;

    .line 29
    .line 30
    if-eqz v2, :cond_1

    .line 31
    .line 32
    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    iput-object v1, p0, LE0/j;->D:Landroid/os/Handler;

    .line 36
    .line 37
    :cond_1
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    iput-wide v1, p0, LE0/j;->L:J

    .line 43
    .line 44
    iput v0, p0, LE0/j;->M:I

    .line 45
    .line 46
    iput-wide v1, p0, LE0/j;->N:J

    .line 47
    .line 48
    iget-object v0, p0, LE0/j;->u:Landroid/util/SparseArray;

    .line 49
    .line 50
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 51
    .line 52
    .line 53
    iget-object v0, p0, LE0/j;->n:Lm2/i;

    .line 54
    .line 55
    invoke-virtual {v0}, Lm2/i;->a()V

    .line 56
    .line 57
    .line 58
    iget-object v0, p0, LE0/j;->l:LG0/r;

    .line 59
    .line 60
    invoke-interface {v0}, LG0/r;->release()V

    .line 61
    .line 62
    .line 63
    return-void
.end method

.method public final declared-synchronized s(Lm0/I;)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iput-object p1, p0, LE0/j;->P:Lm0/I;
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

.method public final u()V
    .locals 5

    .line 1
    iget-object v0, p0, LE0/j;->A:LS0/m;

    .line 2
    .line 3
    new-instance v1, LE0/f;

    .line 4
    .line 5
    invoke-direct {v1, p0}, LE0/f;-><init>(LE0/j;)V

    .line 6
    .line 7
    .line 8
    sget-object v2, LT0/c;->b:Ljava/lang/Object;

    .line 9
    .line 10
    monitor-enter v2

    .line 11
    :try_start_0
    sget-boolean v3, LT0/c;->c:Z

    .line 12
    .line 13
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    invoke-virtual {v1}, LE0/f;->a()V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    if-nez v0, :cond_1

    .line 21
    .line 22
    new-instance v0, LS0/m;

    .line 23
    .line 24
    const-string v2, "SntpClient"

    .line 25
    .line 26
    invoke-direct {v0, v2}, LS0/m;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    :cond_1
    new-instance v2, LU4/b;

    .line 30
    .line 31
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 32
    .line 33
    .line 34
    new-instance v3, LE0/i;

    .line 35
    .line 36
    const/4 v4, 0x2

    .line 37
    invoke-direct {v3, v1, v4}, LE0/i;-><init>(Ljava/lang/Object;I)V

    .line 38
    .line 39
    .line 40
    const/4 v1, 0x1

    .line 41
    invoke-virtual {v0, v2, v3, v1}, LS0/m;->g(LS0/j;LS0/h;I)V

    .line 42
    .line 43
    .line 44
    :goto_0
    return-void

    .line 45
    :catchall_0
    move-exception v0

    .line 46
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 47
    throw v0
.end method

.method public final v(LS0/p;JJ)V
    .locals 13

    .line 1
    move-object v0, p0

    .line 2
    move-object v1, p1

    .line 3
    new-instance v2, LO0/p;

    .line 4
    .line 5
    iget-wide v3, v1, LS0/p;->G:J

    .line 6
    .line 7
    iget-object v3, v1, LS0/p;->J:Ls0/M;

    .line 8
    .line 9
    iget-object v4, v3, Ls0/M;->c:Landroid/net/Uri;

    .line 10
    .line 11
    iget-object v3, v3, Ls0/M;->d:Ljava/util/Map;

    .line 12
    .line 13
    move-wide/from16 v4, p4

    .line 14
    .line 15
    invoke-direct {v2, v3, v4, v5}, LO0/p;-><init>(Ljava/util/Map;J)V

    .line 16
    .line 17
    .line 18
    iget-object v3, v0, LE0/j;->m:LU4/b;

    .line 19
    .line 20
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    iget-object v3, v0, LE0/j;->q:LO0/D;

    .line 34
    .line 35
    iget v4, v1, LS0/p;->I:I

    .line 36
    .line 37
    const/4 v5, -0x1

    .line 38
    const/4 v6, 0x0

    .line 39
    const/4 v7, 0x0

    .line 40
    const/4 v12, 0x0

    .line 41
    move-object v1, v3

    .line 42
    move v3, v4

    .line 43
    move v4, v5

    .line 44
    move-object v5, v6

    .line 45
    move v6, v7

    .line 46
    move-object v7, v12

    .line 47
    invoke-virtual/range {v1 .. v11}, LO0/D;->c(LO0/p;IILm0/t;ILjava/lang/Object;JJ)V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method public final w(Ljava/io/IOException;)V
    .locals 4

    .line 1
    const-string v0, "DashMediaSource"

    .line 2
    .line 3
    const-string v1, "Failed to resolve time offset."

    .line 4
    .line 5
    invoke-static {v0, v1, p1}, Lp0/x;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 13
    .line 14
    .line 15
    move-result-wide v2

    .line 16
    sub-long/2addr v0, v2

    .line 17
    iput-wide v0, p0, LE0/j;->L:J

    .line 18
    .line 19
    const/4 p1, 0x1

    .line 20
    invoke-virtual {p0, p1}, LE0/j;->x(Z)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final x(Z)V
    .locals 40

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const/4 v2, 0x0

    .line 4
    const/4 v3, 0x0

    .line 5
    :goto_0
    iget-object v0, v1, LE0/j;->u:Landroid/util/SparseArray;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 8
    .line 9
    .line 10
    move-result v4

    .line 11
    if-ge v3, v4, :cond_9

    .line 12
    .line 13
    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->keyAt(I)I

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    iget v6, v1, LE0/j;->O:I

    .line 18
    .line 19
    if-lt v4, v6, :cond_8

    .line 20
    .line 21
    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    move-object v6, v0

    .line 26
    check-cast v6, LE0/d;

    .line 27
    .line 28
    iget-object v7, v1, LE0/j;->H:LF0/c;

    .line 29
    .line 30
    iget v0, v1, LE0/j;->O:I

    .line 31
    .line 32
    sub-int/2addr v4, v0

    .line 33
    iput-object v7, v6, LE0/d;->b0:LF0/c;

    .line 34
    .line 35
    iput v4, v6, LE0/d;->c0:I

    .line 36
    .line 37
    iget-object v0, v6, LE0/d;->S:LE0/t;

    .line 38
    .line 39
    iput-boolean v2, v0, LE0/t;->N:Z

    .line 40
    .line 41
    iput-object v7, v0, LE0/t;->L:LF0/c;

    .line 42
    .line 43
    iget-object v8, v0, LE0/t;->K:Ljava/util/TreeMap;

    .line 44
    .line 45
    invoke-virtual {v8}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    .line 46
    .line 47
    .line 48
    move-result-object v8

    .line 49
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 50
    .line 51
    .line 52
    move-result-object v8

    .line 53
    :cond_0
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 54
    .line 55
    .line 56
    move-result v9

    .line 57
    if-eqz v9, :cond_1

    .line 58
    .line 59
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v9

    .line 63
    check-cast v9, Ljava/util/Map$Entry;

    .line 64
    .line 65
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v9

    .line 69
    check-cast v9, Ljava/lang/Long;

    .line 70
    .line 71
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    .line 72
    .line 73
    .line 74
    move-result-wide v9

    .line 75
    iget-object v11, v0, LE0/t;->L:LF0/c;

    .line 76
    .line 77
    iget-wide v11, v11, LF0/c;->h:J

    .line 78
    .line 79
    cmp-long v13, v9, v11

    .line 80
    .line 81
    if-gez v13, :cond_0

    .line 82
    .line 83
    invoke-interface {v8}, Ljava/util/Iterator;->remove()V

    .line 84
    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_1
    iget-object v8, v6, LE0/d;->Y:[LP0/m;

    .line 88
    .line 89
    if-eqz v8, :cond_4

    .line 90
    .line 91
    array-length v9, v8

    .line 92
    const/4 v10, 0x0

    .line 93
    :goto_2
    if-ge v10, v9, :cond_3

    .line 94
    .line 95
    aget-object v0, v8, v10

    .line 96
    .line 97
    iget-object v0, v0, LP0/m;->K:LE0/b;

    .line 98
    .line 99
    move-object v11, v0

    .line 100
    check-cast v11, LE0/p;

    .line 101
    .line 102
    iget-object v0, v11, LE0/p;->i:[LE0/n;

    .line 103
    .line 104
    :try_start_0
    iput-object v7, v11, LE0/p;->k:LF0/c;

    .line 105
    .line 106
    iput v4, v11, LE0/p;->l:I

    .line 107
    .line 108
    invoke-virtual {v7, v4}, LF0/c;->d(I)J

    .line 109
    .line 110
    .line 111
    move-result-wide v12

    .line 112
    invoke-virtual {v11}, LE0/p;->a()Ljava/util/ArrayList;

    .line 113
    .line 114
    .line 115
    move-result-object v14

    .line 116
    const/4 v15, 0x0

    .line 117
    :goto_3
    array-length v2, v0

    .line 118
    if-ge v15, v2, :cond_2

    .line 119
    .line 120
    iget-object v2, v11, LE0/p;->j:LR0/t;

    .line 121
    .line 122
    check-cast v2, LR0/c;

    .line 123
    .line 124
    iget-object v2, v2, LR0/c;->c:[I

    .line 125
    .line 126
    aget v2, v2, v15

    .line 127
    .line 128
    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object v2

    .line 132
    check-cast v2, LF0/m;

    .line 133
    .line 134
    aget-object v5, v0, v15

    .line 135
    .line 136
    invoke-virtual {v5, v12, v13, v2}, LE0/n;->a(JLF0/m;)LE0/n;

    .line 137
    .line 138
    .line 139
    move-result-object v2

    .line 140
    aput-object v2, v0, v15
    :try_end_0
    .catch LO0/b; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    .line 142
    add-int/lit8 v15, v15, 0x1

    .line 143
    .line 144
    goto :goto_3

    .line 145
    :catch_0
    move-exception v0

    .line 146
    iput-object v0, v11, LE0/p;->m:LO0/b;

    .line 147
    .line 148
    :cond_2
    add-int/lit8 v10, v10, 0x1

    .line 149
    .line 150
    const/4 v2, 0x0

    .line 151
    goto :goto_2

    .line 152
    :cond_3
    iget-object v0, v6, LE0/d;->X:LO0/v;

    .line 153
    .line 154
    invoke-interface {v0, v6}, LO0/V;->r(LO0/W;)V

    .line 155
    .line 156
    .line 157
    :cond_4
    invoke-virtual {v7, v4}, LF0/c;->b(I)LF0/h;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    iget-object v0, v0, LF0/h;->d:Ljava/util/List;

    .line 162
    .line 163
    iput-object v0, v6, LE0/d;->d0:Ljava/util/List;

    .line 164
    .line 165
    iget-object v0, v6, LE0/d;->Z:[LE0/q;

    .line 166
    .line 167
    array-length v2, v0

    .line 168
    const/4 v5, 0x0

    .line 169
    :goto_4
    if-ge v5, v2, :cond_8

    .line 170
    .line 171
    aget-object v8, v0, v5

    .line 172
    .line 173
    iget-object v9, v6, LE0/d;->d0:Ljava/util/List;

    .line 174
    .line 175
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 176
    .line 177
    .line 178
    move-result-object v9

    .line 179
    :cond_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 180
    .line 181
    .line 182
    move-result v10

    .line 183
    if-eqz v10, :cond_7

    .line 184
    .line 185
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    move-result-object v10

    .line 189
    check-cast v10, LF0/g;

    .line 190
    .line 191
    invoke-virtual {v10}, LF0/g;->a()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v11

    .line 195
    iget-object v12, v8, LE0/q;->K:LF0/g;

    .line 196
    .line 197
    invoke-virtual {v12}, LF0/g;->a()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v12

    .line 201
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 202
    .line 203
    .line 204
    move-result v11

    .line 205
    if-eqz v11, :cond_5

    .line 206
    .line 207
    iget-object v9, v7, LF0/c;->m:Ljava/util/List;

    .line 208
    .line 209
    invoke-interface {v9}, Ljava/util/List;->size()I

    .line 210
    .line 211
    .line 212
    move-result v9

    .line 213
    const/4 v11, 0x1

    .line 214
    sub-int/2addr v9, v11

    .line 215
    iget-boolean v11, v7, LF0/c;->d:Z

    .line 216
    .line 217
    if-eqz v11, :cond_6

    .line 218
    .line 219
    if-ne v4, v9, :cond_6

    .line 220
    .line 221
    const/4 v9, 0x1

    .line 222
    goto :goto_5

    .line 223
    :cond_6
    const/4 v9, 0x0

    .line 224
    :goto_5
    invoke-virtual {v8, v10, v9}, LE0/q;->a(LF0/g;Z)V

    .line 225
    .line 226
    .line 227
    :cond_7
    add-int/lit8 v5, v5, 0x1

    .line 228
    .line 229
    goto :goto_4

    .line 230
    :cond_8
    add-int/lit8 v3, v3, 0x1

    .line 231
    .line 232
    const/4 v2, 0x0

    .line 233
    goto/16 :goto_0

    .line 234
    .line 235
    :cond_9
    iget-object v0, v1, LE0/j;->H:LF0/c;

    .line 236
    .line 237
    const/4 v2, 0x0

    .line 238
    invoke-virtual {v0, v2}, LF0/c;->b(I)LF0/h;

    .line 239
    .line 240
    .line 241
    move-result-object v0

    .line 242
    iget-object v2, v1, LE0/j;->H:LF0/c;

    .line 243
    .line 244
    iget-object v2, v2, LF0/c;->m:Ljava/util/List;

    .line 245
    .line 246
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 247
    .line 248
    .line 249
    move-result v2

    .line 250
    const/4 v3, 0x1

    .line 251
    sub-int/2addr v2, v3

    .line 252
    iget-object v3, v1, LE0/j;->H:LF0/c;

    .line 253
    .line 254
    invoke-virtual {v3, v2}, LF0/c;->b(I)LF0/h;

    .line 255
    .line 256
    .line 257
    move-result-object v3

    .line 258
    iget-object v4, v1, LE0/j;->H:LF0/c;

    .line 259
    .line 260
    invoke-virtual {v4, v2}, LF0/c;->d(I)J

    .line 261
    .line 262
    .line 263
    move-result-wide v4

    .line 264
    iget-wide v6, v1, LE0/j;->L:J

    .line 265
    .line 266
    invoke-static {v6, v7}, Lp0/M;->z(J)J

    .line 267
    .line 268
    .line 269
    move-result-wide v6

    .line 270
    invoke-static {v6, v7}, Lp0/M;->R(J)J

    .line 271
    .line 272
    .line 273
    move-result-wide v6

    .line 274
    iget-object v2, v1, LE0/j;->H:LF0/c;

    .line 275
    .line 276
    const/4 v8, 0x0

    .line 277
    invoke-virtual {v2, v8}, LF0/c;->d(I)J

    .line 278
    .line 279
    .line 280
    move-result-wide v9

    .line 281
    iget-wide v11, v0, LF0/h;->b:J

    .line 282
    .line 283
    invoke-static {v11, v12}, Lp0/M;->R(J)J

    .line 284
    .line 285
    .line 286
    move-result-wide v11

    .line 287
    invoke-static {v0}, LE0/j;->t(LF0/h;)Z

    .line 288
    .line 289
    .line 290
    move-result v2

    .line 291
    move-wide v13, v11

    .line 292
    const/4 v8, 0x0

    .line 293
    :goto_6
    iget-object v15, v0, LF0/h;->c:Ljava/util/List;

    .line 294
    .line 295
    move-object/from16 v17, v0

    .line 296
    .line 297
    invoke-interface {v15}, Ljava/util/List;->size()I

    .line 298
    .line 299
    .line 300
    move-result v0

    .line 301
    move/from16 v18, v2

    .line 302
    .line 303
    if-ge v8, v0, :cond_10

    .line 304
    .line 305
    invoke-interface {v15, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 306
    .line 307
    .line 308
    move-result-object v0

    .line 309
    check-cast v0, LF0/a;

    .line 310
    .line 311
    iget-object v15, v0, LF0/a;->c:Ljava/util/List;

    .line 312
    .line 313
    iget v0, v0, LF0/a;->b:I

    .line 314
    .line 315
    const/4 v1, 0x1

    .line 316
    if-eq v0, v1, :cond_a

    .line 317
    .line 318
    const/4 v1, 0x2

    .line 319
    if-eq v0, v1, :cond_a

    .line 320
    .line 321
    const/4 v0, 0x1

    .line 322
    goto :goto_7

    .line 323
    :cond_a
    const/4 v0, 0x0

    .line 324
    :goto_7
    if-eqz v18, :cond_b

    .line 325
    .line 326
    if-nez v0, :cond_f

    .line 327
    .line 328
    :cond_b
    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    .line 329
    .line 330
    .line 331
    move-result v0

    .line 332
    if-eqz v0, :cond_c

    .line 333
    .line 334
    goto :goto_8

    .line 335
    :cond_c
    const/4 v1, 0x0

    .line 336
    invoke-interface {v15, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 337
    .line 338
    .line 339
    move-result-object v0

    .line 340
    check-cast v0, LF0/m;

    .line 341
    .line 342
    invoke-virtual {v0}, LF0/m;->l()LE0/k;

    .line 343
    .line 344
    .line 345
    move-result-object v0

    .line 346
    if-nez v0, :cond_d

    .line 347
    .line 348
    goto :goto_9

    .line 349
    :cond_d
    invoke-interface {v0, v9, v10, v6, v7}, LE0/k;->j(JJ)J

    .line 350
    .line 351
    .line 352
    move-result-wide v1

    .line 353
    const-wide/16 v20, 0x0

    .line 354
    .line 355
    cmp-long v15, v1, v20

    .line 356
    .line 357
    if-nez v15, :cond_e

    .line 358
    .line 359
    goto :goto_9

    .line 360
    :cond_e
    invoke-interface {v0, v9, v10, v6, v7}, LE0/k;->c(JJ)J

    .line 361
    .line 362
    .line 363
    move-result-wide v1

    .line 364
    invoke-interface {v0, v1, v2}, LE0/k;->a(J)J

    .line 365
    .line 366
    .line 367
    move-result-wide v0

    .line 368
    add-long/2addr v0, v11

    .line 369
    invoke-static {v13, v14, v0, v1}, Ljava/lang/Math;->max(JJ)J

    .line 370
    .line 371
    .line 372
    move-result-wide v13

    .line 373
    :cond_f
    :goto_8
    add-int/lit8 v8, v8, 0x1

    .line 374
    .line 375
    move-object/from16 v1, p0

    .line 376
    .line 377
    move-object/from16 v0, v17

    .line 378
    .line 379
    move/from16 v2, v18

    .line 380
    .line 381
    goto :goto_6

    .line 382
    :cond_10
    move-wide v11, v13

    .line 383
    :goto_9
    iget-wide v0, v3, LF0/h;->b:J

    .line 384
    .line 385
    invoke-static {v0, v1}, Lp0/M;->R(J)J

    .line 386
    .line 387
    .line 388
    move-result-wide v0

    .line 389
    invoke-static {v3}, LE0/j;->t(LF0/h;)Z

    .line 390
    .line 391
    .line 392
    move-result v2

    .line 393
    const-wide v8, 0x7fffffffffffffffL

    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    const/4 v10, 0x0

    .line 399
    :goto_a
    iget-object v13, v3, LF0/h;->c:Ljava/util/List;

    .line 400
    .line 401
    invoke-interface {v13}, Ljava/util/List;->size()I

    .line 402
    .line 403
    .line 404
    move-result v14

    .line 405
    if-ge v10, v14, :cond_18

    .line 406
    .line 407
    invoke-interface {v13, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 408
    .line 409
    .line 410
    move-result-object v14

    .line 411
    check-cast v14, LF0/a;

    .line 412
    .line 413
    iget-object v15, v14, LF0/a;->c:Ljava/util/List;

    .line 414
    .line 415
    iget v14, v14, LF0/a;->b:I

    .line 416
    .line 417
    move-object/from16 v18, v3

    .line 418
    .line 419
    const/4 v3, 0x1

    .line 420
    if-eq v14, v3, :cond_11

    .line 421
    .line 422
    const/4 v3, 0x2

    .line 423
    if-eq v14, v3, :cond_12

    .line 424
    .line 425
    const/4 v14, 0x1

    .line 426
    goto :goto_b

    .line 427
    :cond_11
    const/4 v3, 0x2

    .line 428
    :cond_12
    const/4 v14, 0x0

    .line 429
    :goto_b
    if-eqz v2, :cond_13

    .line 430
    .line 431
    if-nez v14, :cond_14

    .line 432
    .line 433
    :cond_13
    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    .line 434
    .line 435
    .line 436
    move-result v14

    .line 437
    if-eqz v14, :cond_15

    .line 438
    .line 439
    :cond_14
    move-wide/from16 v24, v0

    .line 440
    .line 441
    move-wide v0, v4

    .line 442
    goto :goto_d

    .line 443
    :cond_15
    const/4 v14, 0x0

    .line 444
    invoke-interface {v15, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 445
    .line 446
    .line 447
    move-result-object v15

    .line 448
    check-cast v15, LF0/m;

    .line 449
    .line 450
    invoke-virtual {v15}, LF0/m;->l()LE0/k;

    .line 451
    .line 452
    .line 453
    move-result-object v14

    .line 454
    if-nez v14, :cond_16

    .line 455
    .line 456
    add-long/2addr v0, v4

    .line 457
    :goto_c
    move-object/from16 v2, p0

    .line 458
    .line 459
    goto :goto_e

    .line 460
    :cond_16
    invoke-interface {v14, v4, v5, v6, v7}, LE0/k;->j(JJ)J

    .line 461
    .line 462
    .line 463
    move-result-wide v22

    .line 464
    const-wide/16 v19, 0x0

    .line 465
    .line 466
    cmp-long v15, v22, v19

    .line 467
    .line 468
    if-nez v15, :cond_17

    .line 469
    .line 470
    goto :goto_c

    .line 471
    :cond_17
    invoke-interface {v14, v4, v5, v6, v7}, LE0/k;->c(JJ)J

    .line 472
    .line 473
    .line 474
    move-result-wide v24

    .line 475
    add-long v24, v24, v22

    .line 476
    .line 477
    const-wide/16 v22, 0x1

    .line 478
    .line 479
    move-wide/from16 v26, v4

    .line 480
    .line 481
    sub-long v3, v24, v22

    .line 482
    .line 483
    invoke-interface {v14, v3, v4}, LE0/k;->a(J)J

    .line 484
    .line 485
    .line 486
    move-result-wide v22

    .line 487
    add-long v22, v22, v0

    .line 488
    .line 489
    move-wide/from16 v24, v0

    .line 490
    .line 491
    move-wide/from16 v0, v26

    .line 492
    .line 493
    invoke-interface {v14, v3, v4, v0, v1}, LE0/k;->b(JJ)J

    .line 494
    .line 495
    .line 496
    move-result-wide v3

    .line 497
    add-long v3, v3, v22

    .line 498
    .line 499
    invoke-static {v8, v9, v3, v4}, Ljava/lang/Math;->min(JJ)J

    .line 500
    .line 501
    .line 502
    move-result-wide v3

    .line 503
    move-wide v8, v3

    .line 504
    :goto_d
    add-int/lit8 v10, v10, 0x1

    .line 505
    .line 506
    move-wide v4, v0

    .line 507
    move-object/from16 v3, v18

    .line 508
    .line 509
    move-wide/from16 v0, v24

    .line 510
    .line 511
    goto :goto_a

    .line 512
    :cond_18
    move-object/from16 v2, p0

    .line 513
    .line 514
    move-wide v0, v8

    .line 515
    :goto_e
    iget-object v3, v2, LE0/j;->H:LF0/c;

    .line 516
    .line 517
    iget-boolean v3, v3, LF0/c;->d:Z

    .line 518
    .line 519
    if-eqz v3, :cond_1b

    .line 520
    .line 521
    const/4 v3, 0x0

    .line 522
    :goto_f
    invoke-interface {v13}, Ljava/util/List;->size()I

    .line 523
    .line 524
    .line 525
    move-result v4

    .line 526
    if-ge v3, v4, :cond_1a

    .line 527
    .line 528
    invoke-interface {v13, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 529
    .line 530
    .line 531
    move-result-object v4

    .line 532
    check-cast v4, LF0/a;

    .line 533
    .line 534
    iget-object v4, v4, LF0/a;->c:Ljava/util/List;

    .line 535
    .line 536
    const/4 v5, 0x0

    .line 537
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 538
    .line 539
    .line 540
    move-result-object v4

    .line 541
    check-cast v4, LF0/m;

    .line 542
    .line 543
    invoke-virtual {v4}, LF0/m;->l()LE0/k;

    .line 544
    .line 545
    .line 546
    move-result-object v4

    .line 547
    if-eqz v4, :cond_1b

    .line 548
    .line 549
    invoke-interface {v4}, LE0/k;->g()Z

    .line 550
    .line 551
    .line 552
    move-result v4

    .line 553
    if-eqz v4, :cond_19

    .line 554
    .line 555
    goto :goto_10

    .line 556
    :cond_19
    add-int/lit8 v3, v3, 0x1

    .line 557
    .line 558
    goto :goto_f

    .line 559
    :cond_1a
    const/4 v3, 0x1

    .line 560
    goto :goto_11

    .line 561
    :cond_1b
    :goto_10
    const/4 v3, 0x0

    .line 562
    :goto_11
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 563
    .line 564
    .line 565
    .line 566
    .line 567
    if-eqz v3, :cond_1c

    .line 568
    .line 569
    iget-object v8, v2, LE0/j;->H:LF0/c;

    .line 570
    .line 571
    iget-wide v8, v8, LF0/c;->f:J

    .line 572
    .line 573
    cmp-long v10, v8, v4

    .line 574
    .line 575
    if-eqz v10, :cond_1c

    .line 576
    .line 577
    invoke-static {v8, v9}, Lp0/M;->R(J)J

    .line 578
    .line 579
    .line 580
    move-result-wide v8

    .line 581
    sub-long v8, v0, v8

    .line 582
    .line 583
    invoke-static {v11, v12, v8, v9}, Ljava/lang/Math;->max(JJ)J

    .line 584
    .line 585
    .line 586
    move-result-wide v11

    .line 587
    :cond_1c
    sub-long v32, v0, v11

    .line 588
    .line 589
    iget-object v0, v2, LE0/j;->H:LF0/c;

    .line 590
    .line 591
    iget-boolean v1, v0, LF0/c;->d:Z

    .line 592
    .line 593
    if-eqz v1, :cond_32

    .line 594
    .line 595
    iget-wide v0, v0, LF0/c;->a:J

    .line 596
    .line 597
    cmp-long v8, v0, v4

    .line 598
    .line 599
    if-eqz v8, :cond_1d

    .line 600
    .line 601
    const/4 v0, 0x1

    .line 602
    goto :goto_12

    .line 603
    :cond_1d
    const/4 v0, 0x0

    .line 604
    :goto_12
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/H1;->i(Z)V

    .line 605
    .line 606
    .line 607
    iget-object v0, v2, LE0/j;->H:LF0/c;

    .line 608
    .line 609
    iget-wide v0, v0, LF0/c;->a:J

    .line 610
    .line 611
    invoke-static {v0, v1}, Lp0/M;->R(J)J

    .line 612
    .line 613
    .line 614
    move-result-wide v0

    .line 615
    sub-long/2addr v6, v0

    .line 616
    sub-long/2addr v6, v11

    .line 617
    invoke-virtual/range {p0 .. p0}, LE0/j;->h()Lm0/I;

    .line 618
    .line 619
    .line 620
    move-result-object v0

    .line 621
    iget-object v0, v0, Lm0/I;->c:Lm0/D;

    .line 622
    .line 623
    invoke-static {v6, v7}, Lp0/M;->e0(J)J

    .line 624
    .line 625
    .line 626
    move-result-wide v8

    .line 627
    iget-wide v13, v0, Lm0/D;->c:J

    .line 628
    .line 629
    cmp-long v1, v13, v4

    .line 630
    .line 631
    if-eqz v1, :cond_1e

    .line 632
    .line 633
    invoke-static {v8, v9, v13, v14}, Ljava/lang/Math;->min(JJ)J

    .line 634
    .line 635
    .line 636
    move-result-wide v13

    .line 637
    goto :goto_13

    .line 638
    :cond_1e
    iget-object v1, v2, LE0/j;->H:LF0/c;

    .line 639
    .line 640
    iget-object v1, v1, LF0/c;->j:Lm0/C;

    .line 641
    .line 642
    if-eqz v1, :cond_1f

    .line 643
    .line 644
    iget-wide v13, v1, Lm0/C;->c:J

    .line 645
    .line 646
    cmp-long v1, v13, v4

    .line 647
    .line 648
    if-eqz v1, :cond_1f

    .line 649
    .line 650
    invoke-static {v8, v9, v13, v14}, Ljava/lang/Math;->min(JJ)J

    .line 651
    .line 652
    .line 653
    move-result-wide v13

    .line 654
    goto :goto_13

    .line 655
    :cond_1f
    move-wide v13, v8

    .line 656
    :goto_13
    sub-long v18, v6, v32

    .line 657
    .line 658
    invoke-static/range {v18 .. v19}, Lp0/M;->e0(J)J

    .line 659
    .line 660
    .line 661
    move-result-wide v18

    .line 662
    const-wide/16 v20, 0x0

    .line 663
    .line 664
    cmp-long v1, v18, v20

    .line 665
    .line 666
    if-gez v1, :cond_20

    .line 667
    .line 668
    cmp-long v1, v13, v20

    .line 669
    .line 670
    if-lez v1, :cond_20

    .line 671
    .line 672
    const-wide/16 v18, 0x0

    .line 673
    .line 674
    :cond_20
    iget-object v1, v2, LE0/j;->H:LF0/c;

    .line 675
    .line 676
    move-wide/from16 v28, v11

    .line 677
    .line 678
    iget-wide v10, v1, LF0/c;->c:J

    .line 679
    .line 680
    cmp-long v1, v10, v4

    .line 681
    .line 682
    if-eqz v1, :cond_21

    .line 683
    .line 684
    add-long v10, v18, v10

    .line 685
    .line 686
    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->min(JJ)J

    .line 687
    .line 688
    .line 689
    move-result-wide v10

    .line 690
    move-wide/from16 v24, v10

    .line 691
    .line 692
    goto :goto_14

    .line 693
    :cond_21
    move-wide/from16 v24, v18

    .line 694
    .line 695
    :goto_14
    iget-wide v10, v0, Lm0/D;->b:J

    .line 696
    .line 697
    cmp-long v1, v10, v4

    .line 698
    .line 699
    if-eqz v1, :cond_23

    .line 700
    .line 701
    move-wide/from16 v22, v10

    .line 702
    .line 703
    move-wide/from16 v26, v8

    .line 704
    .line 705
    invoke-static/range {v22 .. v27}, Lp0/M;->j(JJJ)J

    .line 706
    .line 707
    .line 708
    move-result-wide v24

    .line 709
    :cond_22
    :goto_15
    move-wide/from16 v8, v24

    .line 710
    .line 711
    goto :goto_16

    .line 712
    :cond_23
    iget-object v1, v2, LE0/j;->H:LF0/c;

    .line 713
    .line 714
    iget-object v1, v1, LF0/c;->j:Lm0/C;

    .line 715
    .line 716
    if-eqz v1, :cond_22

    .line 717
    .line 718
    iget-wide v10, v1, Lm0/C;->b:J

    .line 719
    .line 720
    cmp-long v1, v10, v4

    .line 721
    .line 722
    if-eqz v1, :cond_22

    .line 723
    .line 724
    move-wide/from16 v22, v10

    .line 725
    .line 726
    move-wide/from16 v26, v8

    .line 727
    .line 728
    invoke-static/range {v22 .. v27}, Lp0/M;->j(JJJ)J

    .line 729
    .line 730
    .line 731
    move-result-wide v24

    .line 732
    goto :goto_15

    .line 733
    :goto_16
    cmp-long v1, v8, v13

    .line 734
    .line 735
    if-lez v1, :cond_24

    .line 736
    .line 737
    move-wide v13, v8

    .line 738
    :cond_24
    iget-object v1, v2, LE0/j;->E:Lm0/D;

    .line 739
    .line 740
    iget-wide v10, v1, Lm0/D;->a:J

    .line 741
    .line 742
    cmp-long v1, v10, v4

    .line 743
    .line 744
    if-eqz v1, :cond_25

    .line 745
    .line 746
    goto :goto_17

    .line 747
    :cond_25
    iget-object v1, v2, LE0/j;->H:LF0/c;

    .line 748
    .line 749
    iget-object v10, v1, LF0/c;->j:Lm0/C;

    .line 750
    .line 751
    if-eqz v10, :cond_26

    .line 752
    .line 753
    iget-wide v10, v10, Lm0/C;->a:J

    .line 754
    .line 755
    cmp-long v12, v10, v4

    .line 756
    .line 757
    if-eqz v12, :cond_26

    .line 758
    .line 759
    goto :goto_17

    .line 760
    :cond_26
    iget-wide v10, v1, LF0/c;->g:J

    .line 761
    .line 762
    cmp-long v1, v10, v4

    .line 763
    .line 764
    if-eqz v1, :cond_27

    .line 765
    .line 766
    goto :goto_17

    .line 767
    :cond_27
    iget-wide v10, v2, LE0/j;->o:J

    .line 768
    .line 769
    :goto_17
    cmp-long v1, v10, v8

    .line 770
    .line 771
    if-gez v1, :cond_28

    .line 772
    .line 773
    move-wide v10, v8

    .line 774
    :cond_28
    iget-wide v4, v2, LE0/j;->p:J

    .line 775
    .line 776
    const-wide/16 v22, 0x2

    .line 777
    .line 778
    cmp-long v1, v10, v13

    .line 779
    .line 780
    if-lez v1, :cond_29

    .line 781
    .line 782
    div-long v10, v32, v22

    .line 783
    .line 784
    invoke-static {v4, v5, v10, v11}, Ljava/lang/Math;->min(JJ)J

    .line 785
    .line 786
    .line 787
    move-result-wide v10

    .line 788
    sub-long v10, v6, v10

    .line 789
    .line 790
    invoke-static {v10, v11}, Lp0/M;->e0(J)J

    .line 791
    .line 792
    .line 793
    move-result-wide v34

    .line 794
    move-wide/from16 v36, v8

    .line 795
    .line 796
    move-wide/from16 v38, v13

    .line 797
    .line 798
    invoke-static/range {v34 .. v39}, Lp0/M;->j(JJJ)J

    .line 799
    .line 800
    .line 801
    move-result-wide v10

    .line 802
    :cond_29
    const v1, -0x800001

    .line 803
    .line 804
    .line 805
    iget v12, v0, Lm0/D;->d:F

    .line 806
    .line 807
    cmpl-float v15, v12, v1

    .line 808
    .line 809
    if-eqz v15, :cond_2a

    .line 810
    .line 811
    goto :goto_18

    .line 812
    :cond_2a
    iget-object v12, v2, LE0/j;->H:LF0/c;

    .line 813
    .line 814
    iget-object v12, v12, LF0/c;->j:Lm0/C;

    .line 815
    .line 816
    if-eqz v12, :cond_2b

    .line 817
    .line 818
    iget v12, v12, Lm0/C;->d:F

    .line 819
    .line 820
    goto :goto_18

    .line 821
    :cond_2b
    const v12, -0x800001

    .line 822
    .line 823
    .line 824
    :goto_18
    iget v0, v0, Lm0/D;->e:F

    .line 825
    .line 826
    cmpl-float v15, v0, v1

    .line 827
    .line 828
    if-eqz v15, :cond_2c

    .line 829
    .line 830
    goto :goto_19

    .line 831
    :cond_2c
    iget-object v0, v2, LE0/j;->H:LF0/c;

    .line 832
    .line 833
    iget-object v0, v0, LF0/c;->j:Lm0/C;

    .line 834
    .line 835
    if-eqz v0, :cond_2d

    .line 836
    .line 837
    iget v0, v0, Lm0/C;->e:F

    .line 838
    .line 839
    goto :goto_19

    .line 840
    :cond_2d
    const v0, -0x800001

    .line 841
    .line 842
    .line 843
    :goto_19
    cmpl-float v15, v12, v1

    .line 844
    .line 845
    if-nez v15, :cond_2f

    .line 846
    .line 847
    cmpl-float v1, v0, v1

    .line 848
    .line 849
    if-nez v1, :cond_2f

    .line 850
    .line 851
    iget-object v1, v2, LE0/j;->H:LF0/c;

    .line 852
    .line 853
    iget-object v1, v1, LF0/c;->j:Lm0/C;

    .line 854
    .line 855
    if-eqz v1, :cond_2e

    .line 856
    .line 857
    move v15, v0

    .line 858
    iget-wide v0, v1, Lm0/C;->a:J

    .line 859
    .line 860
    const-wide v18, -0x7fffffffffffffffL    # -4.9E-324

    .line 861
    .line 862
    .line 863
    .line 864
    .line 865
    cmp-long v24, v0, v18

    .line 866
    .line 867
    if-nez v24, :cond_30

    .line 868
    .line 869
    :cond_2e
    const/high16 v12, 0x3f800000    # 1.0f

    .line 870
    .line 871
    const/high16 v0, 0x3f800000    # 1.0f

    .line 872
    .line 873
    goto :goto_1a

    .line 874
    :cond_2f
    move v15, v0

    .line 875
    :cond_30
    move v0, v15

    .line 876
    :goto_1a
    new-instance v1, Lm0/C;

    .line 877
    .line 878
    invoke-direct {v1}, Lm0/C;-><init>()V

    .line 879
    .line 880
    .line 881
    iput-wide v10, v1, Lm0/C;->a:J

    .line 882
    .line 883
    iput-wide v8, v1, Lm0/C;->b:J

    .line 884
    .line 885
    iput-wide v13, v1, Lm0/C;->c:J

    .line 886
    .line 887
    iput v12, v1, Lm0/C;->d:F

    .line 888
    .line 889
    iput v0, v1, Lm0/C;->e:F

    .line 890
    .line 891
    new-instance v0, Lm0/D;

    .line 892
    .line 893
    invoke-direct {v0, v1}, Lm0/D;-><init>(Lm0/C;)V

    .line 894
    .line 895
    .line 896
    iput-object v0, v2, LE0/j;->E:Lm0/D;

    .line 897
    .line 898
    iget-object v0, v2, LE0/j;->H:LF0/c;

    .line 899
    .line 900
    iget-wide v0, v0, LF0/c;->a:J

    .line 901
    .line 902
    invoke-static/range {v28 .. v29}, Lp0/M;->e0(J)J

    .line 903
    .line 904
    .line 905
    move-result-wide v8

    .line 906
    add-long/2addr v8, v0

    .line 907
    iget-object v0, v2, LE0/j;->E:Lm0/D;

    .line 908
    .line 909
    iget-wide v0, v0, Lm0/D;->a:J

    .line 910
    .line 911
    invoke-static {v0, v1}, Lp0/M;->R(J)J

    .line 912
    .line 913
    .line 914
    move-result-wide v0

    .line 915
    sub-long v0, v6, v0

    .line 916
    .line 917
    div-long v6, v32, v22

    .line 918
    .line 919
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    .line 920
    .line 921
    .line 922
    move-result-wide v4

    .line 923
    cmp-long v6, v0, v4

    .line 924
    .line 925
    if-gez v6, :cond_31

    .line 926
    .line 927
    move-wide/from16 v34, v4

    .line 928
    .line 929
    :goto_1b
    move-wide/from16 v25, v8

    .line 930
    .line 931
    move-object/from16 v0, v17

    .line 932
    .line 933
    goto :goto_1c

    .line 934
    :cond_31
    move-wide/from16 v34, v0

    .line 935
    .line 936
    goto :goto_1b

    .line 937
    :cond_32
    move-wide/from16 v28, v11

    .line 938
    .line 939
    move-object/from16 v0, v17

    .line 940
    .line 941
    const-wide v25, -0x7fffffffffffffffL    # -4.9E-324

    .line 942
    .line 943
    .line 944
    .line 945
    .line 946
    const-wide/16 v34, 0x0

    .line 947
    .line 948
    :goto_1c
    iget-wide v0, v0, LF0/h;->b:J

    .line 949
    .line 950
    invoke-static {v0, v1}, Lp0/M;->R(J)J

    .line 951
    .line 952
    .line 953
    move-result-wide v0

    .line 954
    sub-long v30, v28, v0

    .line 955
    .line 956
    new-instance v0, LE0/g;

    .line 957
    .line 958
    iget-object v1, v2, LE0/j;->H:LF0/c;

    .line 959
    .line 960
    iget-wide v4, v1, LF0/c;->a:J

    .line 961
    .line 962
    iget-wide v6, v2, LE0/j;->L:J

    .line 963
    .line 964
    iget v8, v2, LE0/j;->O:I

    .line 965
    .line 966
    invoke-virtual/range {p0 .. p0}, LE0/j;->h()Lm0/I;

    .line 967
    .line 968
    .line 969
    move-result-object v37

    .line 970
    iget-object v9, v2, LE0/j;->H:LF0/c;

    .line 971
    .line 972
    iget-boolean v9, v9, LF0/c;->d:Z

    .line 973
    .line 974
    if-eqz v9, :cond_33

    .line 975
    .line 976
    iget-object v9, v2, LE0/j;->E:Lm0/D;

    .line 977
    .line 978
    :goto_1d
    move-object/from16 v38, v9

    .line 979
    .line 980
    goto :goto_1e

    .line 981
    :cond_33
    const/4 v9, 0x0

    .line 982
    goto :goto_1d

    .line 983
    :goto_1e
    move-object/from16 v22, v0

    .line 984
    .line 985
    move-wide/from16 v23, v4

    .line 986
    .line 987
    move-wide/from16 v27, v6

    .line 988
    .line 989
    move/from16 v29, v8

    .line 990
    .line 991
    move-object/from16 v36, v1

    .line 992
    .line 993
    invoke-direct/range {v22 .. v38}, LE0/g;-><init>(JJJIJJJLF0/c;Lm0/I;Lm0/D;)V

    .line 994
    .line 995
    .line 996
    invoke-virtual {v2, v0}, LO0/a;->m(Lm0/f0;)V

    .line 997
    .line 998
    .line 999
    iget-boolean v0, v2, LE0/j;->h:Z

    .line 1000
    .line 1001
    if-nez v0, :cond_3d

    .line 1002
    .line 1003
    iget-object v0, v2, LE0/j;->D:Landroid/os/Handler;

    .line 1004
    .line 1005
    iget-object v1, v2, LE0/j;->w:LE0/e;

    .line 1006
    .line 1007
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1008
    .line 1009
    .line 1010
    if-eqz v3, :cond_3a

    .line 1011
    .line 1012
    iget-object v0, v2, LE0/j;->D:Landroid/os/Handler;

    .line 1013
    .line 1014
    iget-object v3, v2, LE0/j;->H:LF0/c;

    .line 1015
    .line 1016
    iget-wide v4, v2, LE0/j;->L:J

    .line 1017
    .line 1018
    invoke-static {v4, v5}, Lp0/M;->z(J)J

    .line 1019
    .line 1020
    .line 1021
    move-result-wide v4

    .line 1022
    iget-object v6, v3, LF0/c;->m:Ljava/util/List;

    .line 1023
    .line 1024
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 1025
    .line 1026
    .line 1027
    move-result v6

    .line 1028
    const/4 v7, 0x1

    .line 1029
    sub-int/2addr v6, v7

    .line 1030
    invoke-virtual {v3, v6}, LF0/c;->b(I)LF0/h;

    .line 1031
    .line 1032
    .line 1033
    move-result-object v7

    .line 1034
    iget-wide v8, v7, LF0/h;->b:J

    .line 1035
    .line 1036
    invoke-static {v8, v9}, Lp0/M;->R(J)J

    .line 1037
    .line 1038
    .line 1039
    move-result-wide v8

    .line 1040
    invoke-virtual {v3, v6}, LF0/c;->d(I)J

    .line 1041
    .line 1042
    .line 1043
    move-result-wide v10

    .line 1044
    invoke-static {v4, v5}, Lp0/M;->R(J)J

    .line 1045
    .line 1046
    .line 1047
    move-result-wide v4

    .line 1048
    iget-wide v12, v3, LF0/c;->a:J

    .line 1049
    .line 1050
    invoke-static {v12, v13}, Lp0/M;->R(J)J

    .line 1051
    .line 1052
    .line 1053
    move-result-wide v12

    .line 1054
    iget-wide v14, v3, LF0/c;->e:J

    .line 1055
    .line 1056
    invoke-static {v14, v15}, Lp0/M;->R(J)J

    .line 1057
    .line 1058
    .line 1059
    move-result-wide v14

    .line 1060
    const-wide/32 v16, 0x4c4b40

    .line 1061
    .line 1062
    .line 1063
    const-wide v18, -0x7fffffffffffffffL    # -4.9E-324

    .line 1064
    .line 1065
    .line 1066
    .line 1067
    .line 1068
    cmp-long v3, v14, v18

    .line 1069
    .line 1070
    if-eqz v3, :cond_34

    .line 1071
    .line 1072
    cmp-long v3, v14, v16

    .line 1073
    .line 1074
    if-gez v3, :cond_34

    .line 1075
    .line 1076
    goto :goto_1f

    .line 1077
    :cond_34
    move-wide/from16 v14, v16

    .line 1078
    .line 1079
    :goto_1f
    const/4 v3, 0x0

    .line 1080
    :goto_20
    iget-object v6, v7, LF0/h;->c:Ljava/util/List;

    .line 1081
    .line 1082
    move-object/from16 v16, v7

    .line 1083
    .line 1084
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 1085
    .line 1086
    .line 1087
    move-result v7

    .line 1088
    if-ge v3, v7, :cond_39

    .line 1089
    .line 1090
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1091
    .line 1092
    .line 1093
    move-result-object v6

    .line 1094
    check-cast v6, LF0/a;

    .line 1095
    .line 1096
    iget-object v6, v6, LF0/a;->c:Ljava/util/List;

    .line 1097
    .line 1098
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    .line 1099
    .line 1100
    .line 1101
    move-result v7

    .line 1102
    if-eqz v7, :cond_35

    .line 1103
    .line 1104
    const/4 v7, 0x0

    .line 1105
    goto :goto_21

    .line 1106
    :cond_35
    const/4 v7, 0x0

    .line 1107
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1108
    .line 1109
    .line 1110
    move-result-object v6

    .line 1111
    check-cast v6, LF0/m;

    .line 1112
    .line 1113
    invoke-virtual {v6}, LF0/m;->l()LE0/k;

    .line 1114
    .line 1115
    .line 1116
    move-result-object v6

    .line 1117
    if-eqz v6, :cond_38

    .line 1118
    .line 1119
    add-long v22, v12, v8

    .line 1120
    .line 1121
    invoke-interface {v6, v10, v11, v4, v5}, LE0/k;->d(JJ)J

    .line 1122
    .line 1123
    .line 1124
    move-result-wide v24

    .line 1125
    add-long v24, v24, v22

    .line 1126
    .line 1127
    sub-long v24, v24, v4

    .line 1128
    .line 1129
    const-wide/16 v20, 0x0

    .line 1130
    .line 1131
    cmp-long v6, v24, v20

    .line 1132
    .line 1133
    if-gtz v6, :cond_36

    .line 1134
    .line 1135
    goto :goto_21

    .line 1136
    :cond_36
    const-wide/32 v22, 0x186a0

    .line 1137
    .line 1138
    .line 1139
    sub-long v26, v14, v22

    .line 1140
    .line 1141
    cmp-long v6, v24, v26

    .line 1142
    .line 1143
    if-ltz v6, :cond_37

    .line 1144
    .line 1145
    cmp-long v6, v24, v14

    .line 1146
    .line 1147
    if-lez v6, :cond_38

    .line 1148
    .line 1149
    add-long v22, v14, v22

    .line 1150
    .line 1151
    cmp-long v6, v24, v22

    .line 1152
    .line 1153
    if-gez v6, :cond_38

    .line 1154
    .line 1155
    :cond_37
    move-wide/from16 v14, v24

    .line 1156
    .line 1157
    :cond_38
    :goto_21
    add-int/lit8 v3, v3, 0x1

    .line 1158
    .line 1159
    move-object/from16 v7, v16

    .line 1160
    .line 1161
    goto :goto_20

    .line 1162
    :cond_39
    const-wide/16 v3, 0x3e8

    .line 1163
    .line 1164
    sget-object v5, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    .line 1165
    .line 1166
    invoke-static {v14, v15, v3, v4, v5}, LQ3/b;->d(JJLjava/math/RoundingMode;)J

    .line 1167
    .line 1168
    .line 1169
    move-result-wide v3

    .line 1170
    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1171
    .line 1172
    .line 1173
    :cond_3a
    iget-boolean v0, v2, LE0/j;->I:Z

    .line 1174
    .line 1175
    if-eqz v0, :cond_3b

    .line 1176
    .line 1177
    invoke-virtual/range {p0 .. p0}, LE0/j;->z()V

    .line 1178
    .line 1179
    .line 1180
    goto :goto_22

    .line 1181
    :cond_3b
    if-eqz p1, :cond_3d

    .line 1182
    .line 1183
    iget-object v0, v2, LE0/j;->H:LF0/c;

    .line 1184
    .line 1185
    iget-boolean v1, v0, LF0/c;->d:Z

    .line 1186
    .line 1187
    if-eqz v1, :cond_3d

    .line 1188
    .line 1189
    iget-wide v0, v0, LF0/c;->e:J

    .line 1190
    .line 1191
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 1192
    .line 1193
    .line 1194
    .line 1195
    .line 1196
    cmp-long v5, v0, v3

    .line 1197
    .line 1198
    if-eqz v5, :cond_3d

    .line 1199
    .line 1200
    const-wide/16 v3, 0x0

    .line 1201
    .line 1202
    cmp-long v5, v0, v3

    .line 1203
    .line 1204
    if-nez v5, :cond_3c

    .line 1205
    .line 1206
    const-wide/16 v0, 0x1388

    .line 1207
    .line 1208
    :cond_3c
    iget-wide v5, v2, LE0/j;->J:J

    .line 1209
    .line 1210
    add-long/2addr v5, v0

    .line 1211
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 1212
    .line 1213
    .line 1214
    move-result-wide v0

    .line 1215
    sub-long/2addr v5, v0

    .line 1216
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    .line 1217
    .line 1218
    .line 1219
    move-result-wide v0

    .line 1220
    iget-object v3, v2, LE0/j;->D:Landroid/os/Handler;

    .line 1221
    .line 1222
    iget-object v4, v2, LE0/j;->v:LE0/e;

    .line 1223
    .line 1224
    invoke-virtual {v3, v4, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1225
    .line 1226
    .line 1227
    :cond_3d
    :goto_22
    return-void
.end method

.method public final y(LF0/v;LS0/o;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v1, LS0/p;

    .line 4
    .line 5
    iget-object v2, v0, LE0/j;->z:Ls0/i;

    .line 6
    .line 7
    move-object/from16 v3, p1

    .line 8
    .line 9
    iget-object v3, v3, LF0/v;->c:Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 12
    .line 13
    .line 14
    move-result-object v5

    .line 15
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 16
    .line 17
    .line 18
    move-result-object v10

    .line 19
    const-string v3, "The uri must be set."

    .line 20
    .line 21
    invoke-static {v5, v3}, Lcom/google/android/gms/internal/measurement/H1;->k(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    new-instance v3, Ls0/m;

    .line 25
    .line 26
    const-wide/16 v13, -0x1

    .line 27
    .line 28
    const/4 v15, 0x0

    .line 29
    const-wide/16 v6, 0x0

    .line 30
    .line 31
    const/4 v8, 0x1

    .line 32
    const/4 v9, 0x0

    .line 33
    const-wide/16 v11, 0x0

    .line 34
    .line 35
    const/16 v16, 0x1

    .line 36
    .line 37
    const/16 v17, 0x0

    .line 38
    .line 39
    move-object v4, v3

    .line 40
    invoke-direct/range {v4 .. v17}, Ls0/m;-><init>(Landroid/net/Uri;JI[BLjava/util/Map;JJLjava/lang/String;ILjava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    const/4 v4, 0x5

    .line 44
    move-object/from16 v5, p2

    .line 45
    .line 46
    invoke-direct {v1, v2, v3, v4, v5}, LS0/p;-><init>(Ls0/i;Ls0/m;ILS0/o;)V

    .line 47
    .line 48
    .line 49
    new-instance v2, LE0/i;

    .line 50
    .line 51
    const/4 v3, 0x1

    .line 52
    invoke-direct {v2, v0, v3}, LE0/i;-><init>(LE0/j;I)V

    .line 53
    .line 54
    .line 55
    iget-object v4, v0, LE0/j;->A:LS0/m;

    .line 56
    .line 57
    invoke-virtual {v4, v1, v2, v3}, LS0/m;->g(LS0/j;LS0/h;I)V

    .line 58
    .line 59
    .line 60
    return-void
.end method

.method public final z()V
    .locals 15

    .line 1
    iget-object v0, p0, LE0/j;->D:Landroid/os/Handler;

    .line 2
    .line 3
    iget-object v1, p0, LE0/j;->v:LE0/e;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, LE0/j;->A:LS0/m;

    .line 9
    .line 10
    invoke-virtual {v0}, LS0/m;->d()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    iget-object v0, p0, LE0/j;->A:LS0/m;

    .line 18
    .line 19
    invoke-virtual {v0}, LS0/m;->e()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    const/4 v0, 0x1

    .line 26
    iput-boolean v0, p0, LE0/j;->I:Z

    .line 27
    .line 28
    return-void

    .line 29
    :cond_1
    iget-object v0, p0, LE0/j;->t:Ljava/lang/Object;

    .line 30
    .line 31
    monitor-enter v0

    .line 32
    :try_start_0
    iget-object v2, p0, LE0/j;->F:Landroid/net/Uri;

    .line 33
    .line 34
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    const/4 v0, 0x0

    .line 36
    iput-boolean v0, p0, LE0/j;->I:Z

    .line 37
    .line 38
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 39
    .line 40
    .line 41
    move-result-object v7

    .line 42
    const-string v0, "The uri must be set."

    .line 43
    .line 44
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/measurement/H1;->k(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    new-instance v0, Ls0/m;

    .line 48
    .line 49
    const/4 v13, 0x1

    .line 50
    const/4 v14, 0x0

    .line 51
    const-wide/16 v3, 0x0

    .line 52
    .line 53
    const/4 v5, 0x1

    .line 54
    const/4 v6, 0x0

    .line 55
    const-wide/16 v8, 0x0

    .line 56
    .line 57
    const-wide/16 v10, -0x1

    .line 58
    .line 59
    const/4 v12, 0x0

    .line 60
    move-object v1, v0

    .line 61
    invoke-direct/range {v1 .. v14}, Ls0/m;-><init>(Landroid/net/Uri;JI[BLjava/util/Map;JJLjava/lang/String;ILjava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    new-instance v1, LS0/p;

    .line 65
    .line 66
    iget-object v2, p0, LE0/j;->z:Ls0/i;

    .line 67
    .line 68
    iget-object v3, p0, LE0/j;->r:LS0/o;

    .line 69
    .line 70
    const/4 v4, 0x4

    .line 71
    invoke-direct {v1, v2, v0, v4, v3}, LS0/p;-><init>(Ls0/i;Ls0/m;ILS0/o;)V

    .line 72
    .line 73
    .line 74
    iget-object v0, p0, LE0/j;->s:LE0/i;

    .line 75
    .line 76
    iget-object v2, p0, LE0/j;->m:LU4/b;

    .line 77
    .line 78
    invoke-virtual {v2, v4}, LU4/b;->Y(I)I

    .line 79
    .line 80
    .line 81
    move-result v2

    .line 82
    iget-object v3, p0, LE0/j;->A:LS0/m;

    .line 83
    .line 84
    invoke-virtual {v3, v1, v0, v2}, LS0/m;->g(LS0/j;LS0/h;I)V

    .line 85
    .line 86
    .line 87
    return-void

    .line 88
    :catchall_0
    move-exception v1

    .line 89
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 90
    throw v1
.end method
