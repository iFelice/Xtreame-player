.class public final LO0/t;
.super LO0/h;
.source "SourceFile"


# instance fields
.field public final k:LO0/a;

.field public final l:Z

.field public final m:Lm0/e0;

.field public final n:Lm0/d0;

.field public o:LO0/r;

.field public p:LO0/q;

.field public q:Z

.field public r:Z

.field public s:Z


# direct methods
.method public constructor <init>(LO0/a;Z)V
    .locals 2

    .line 1
    invoke-direct {p0}, LO0/h;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LO0/t;->k:LO0/a;

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    if-eqz p2, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1}, LO0/a;->i()Z

    .line 10
    .line 11
    .line 12
    move-result p2

    .line 13
    if-eqz p2, :cond_0

    .line 14
    .line 15
    const/4 p2, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p2, 0x0

    .line 18
    :goto_0
    iput-boolean p2, p0, LO0/t;->l:Z

    .line 19
    .line 20
    new-instance p2, Lm0/e0;

    .line 21
    .line 22
    invoke-direct {p2}, Lm0/e0;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object p2, p0, LO0/t;->m:Lm0/e0;

    .line 26
    .line 27
    new-instance p2, Lm0/d0;

    .line 28
    .line 29
    invoke-direct {p2}, Lm0/d0;-><init>()V

    .line 30
    .line 31
    .line 32
    iput-object p2, p0, LO0/t;->n:Lm0/d0;

    .line 33
    .line 34
    invoke-virtual {p1}, LO0/a;->g()Lm0/f0;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    if-eqz p2, :cond_1

    .line 39
    .line 40
    new-instance p1, LO0/r;

    .line 41
    .line 42
    const/4 v1, 0x0

    .line 43
    invoke-direct {p1, p2, v1, v1}, LO0/r;-><init>(Lm0/f0;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    iput-object p1, p0, LO0/t;->o:LO0/r;

    .line 47
    .line 48
    iput-boolean v0, p0, LO0/t;->s:Z

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_1
    invoke-virtual {p1}, LO0/a;->h()Lm0/I;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    new-instance p2, LO0/r;

    .line 56
    .line 57
    new-instance v0, LO0/s;

    .line 58
    .line 59
    invoke-direct {v0, p1}, LO0/s;-><init>(Lm0/I;)V

    .line 60
    .line 61
    .line 62
    sget-object p1, Lm0/e0;->q:Ljava/lang/Object;

    .line 63
    .line 64
    sget-object v1, LO0/r;->e:Ljava/lang/Object;

    .line 65
    .line 66
    invoke-direct {p2, v0, p1, v1}, LO0/r;-><init>(Lm0/f0;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    iput-object p2, p0, LO0/t;->o:LO0/r;

    .line 70
    .line 71
    :goto_1
    return-void
.end method


# virtual methods
.method public final bridge synthetic b(LO0/y;LS0/d;J)LO0/w;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, LO0/t;->t(LO0/y;LS0/d;J)LO0/q;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public final g()Lm0/f0;
    .locals 1

    .line 1
    iget-object v0, p0, LO0/t;->k:LO0/a;

    .line 2
    .line 3
    invoke-virtual {v0}, LO0/a;->g()Lm0/f0;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final h()Lm0/I;
    .locals 1

    .line 1
    iget-object v0, p0, LO0/t;->k:LO0/a;

    .line 2
    .line 3
    invoke-virtual {v0}, LO0/a;->h()Lm0/I;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final i()Z
    .locals 1

    .line 1
    iget-object v0, p0, LO0/t;->k:LO0/a;

    .line 2
    .line 3
    invoke-virtual {v0}, LO0/a;->i()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final l(Ls0/O;)V
    .locals 0

    .line 1
    iput-object p1, p0, LO0/h;->j:Ls0/O;

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    invoke-static {p1}, Lp0/M;->n(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, LO0/h;->i:Landroid/os/Handler;

    .line 9
    .line 10
    iget-boolean p1, p0, LO0/t;->l:Z

    .line 11
    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    const/4 p1, 0x1

    .line 15
    iput-boolean p1, p0, LO0/t;->q:Z

    .line 16
    .line 17
    invoke-virtual {p0}, LO0/t;->u()V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public final n(LO0/w;)V
    .locals 2

    .line 1
    move-object v0, p1

    .line 2
    check-cast v0, LO0/q;

    .line 3
    .line 4
    iget-object v1, v0, LO0/q;->K:LO0/w;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    iget-object v1, v0, LO0/q;->J:LO0/a;

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    iget-object v0, v0, LO0/q;->K:LO0/w;

    .line 14
    .line 15
    invoke-virtual {v1, v0}, LO0/a;->n(LO0/w;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, LO0/t;->p:LO0/q;

    .line 19
    .line 20
    if-ne p1, v0, :cond_1

    .line 21
    .line 22
    const/4 p1, 0x0

    .line 23
    iput-object p1, p0, LO0/t;->p:LO0/q;

    .line 24
    .line 25
    :cond_1
    return-void
.end method

.method public final p()V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, LO0/t;->r:Z

    .line 3
    .line 4
    iput-boolean v0, p0, LO0/t;->q:Z

    .line 5
    .line 6
    iget-object v0, p0, LO0/h;->h:Ljava/util/HashMap;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    check-cast v2, LO0/g;

    .line 27
    .line 28
    iget-object v3, v2, LO0/g;->a:LO0/a;

    .line 29
    .line 30
    iget-object v4, v2, LO0/g;->b:LO0/z;

    .line 31
    .line 32
    invoke-virtual {v3, v4}, LO0/a;->o(LO0/z;)V

    .line 33
    .line 34
    .line 35
    iget-object v3, v2, LO0/g;->a:LO0/a;

    .line 36
    .line 37
    iget-object v2, v2, LO0/g;->c:LO0/f;

    .line 38
    .line 39
    invoke-virtual {v3, v2}, LO0/a;->r(LO0/E;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v3, v2}, LO0/a;->q(LG0/p;)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method public final s(Lm0/I;)V
    .locals 4

    .line 1
    iget-boolean v0, p0, LO0/t;->s:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, LO0/t;->o:LO0/r;

    .line 6
    .line 7
    new-instance v1, LO0/M;

    .line 8
    .line 9
    iget-object v2, p0, LO0/t;->o:LO0/r;

    .line 10
    .line 11
    iget-object v2, v2, LO0/n;->b:Lm0/f0;

    .line 12
    .line 13
    invoke-direct {v1, v2, p1}, LO0/M;-><init>(Lm0/f0;Lm0/I;)V

    .line 14
    .line 15
    .line 16
    new-instance v2, LO0/r;

    .line 17
    .line 18
    iget-object v3, v0, LO0/r;->c:Ljava/lang/Object;

    .line 19
    .line 20
    iget-object v0, v0, LO0/r;->d:Ljava/lang/Object;

    .line 21
    .line 22
    invoke-direct {v2, v1, v3, v0}, LO0/r;-><init>(Lm0/f0;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    iput-object v2, p0, LO0/t;->o:LO0/r;

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    new-instance v0, LO0/r;

    .line 29
    .line 30
    new-instance v1, LO0/s;

    .line 31
    .line 32
    invoke-direct {v1, p1}, LO0/s;-><init>(Lm0/I;)V

    .line 33
    .line 34
    .line 35
    sget-object v2, Lm0/e0;->q:Ljava/lang/Object;

    .line 36
    .line 37
    sget-object v3, LO0/r;->e:Ljava/lang/Object;

    .line 38
    .line 39
    invoke-direct {v0, v1, v2, v3}, LO0/r;-><init>(Lm0/f0;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    iput-object v0, p0, LO0/t;->o:LO0/r;

    .line 43
    .line 44
    :goto_0
    iget-object v0, p0, LO0/t;->k:LO0/a;

    .line 45
    .line 46
    invoke-virtual {v0, p1}, LO0/a;->s(Lm0/I;)V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method public final t(LO0/y;LS0/d;J)LO0/q;
    .locals 1

    .line 1
    new-instance v0, LO0/q;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2, p3, p4}, LO0/q;-><init>(LO0/y;LS0/d;J)V

    .line 4
    .line 5
    .line 6
    iget-object p2, v0, LO0/q;->J:LO0/a;

    .line 7
    .line 8
    const/4 p3, 0x1

    .line 9
    if-nez p2, :cond_0

    .line 10
    .line 11
    const/4 p2, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p2, 0x0

    .line 14
    :goto_0
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/H1;->i(Z)V

    .line 15
    .line 16
    .line 17
    iget-object p2, p0, LO0/t;->k:LO0/a;

    .line 18
    .line 19
    iput-object p2, v0, LO0/q;->J:LO0/a;

    .line 20
    .line 21
    iget-boolean p2, p0, LO0/t;->r:Z

    .line 22
    .line 23
    if-eqz p2, :cond_2

    .line 24
    .line 25
    iget-object p2, p0, LO0/t;->o:LO0/r;

    .line 26
    .line 27
    iget-object p2, p2, LO0/r;->d:Ljava/lang/Object;

    .line 28
    .line 29
    iget-object p3, p1, LO0/y;->a:Ljava/lang/Object;

    .line 30
    .line 31
    if-eqz p2, :cond_1

    .line 32
    .line 33
    sget-object p2, LO0/r;->e:Ljava/lang/Object;

    .line 34
    .line 35
    invoke-virtual {p3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result p2

    .line 39
    if-eqz p2, :cond_1

    .line 40
    .line 41
    iget-object p2, p0, LO0/t;->o:LO0/r;

    .line 42
    .line 43
    iget-object p3, p2, LO0/r;->d:Ljava/lang/Object;

    .line 44
    .line 45
    :cond_1
    invoke-virtual {p1, p3}, LO0/y;->a(Ljava/lang/Object;)LO0/y;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {v0, p1}, LO0/q;->b(LO0/y;)V

    .line 50
    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_2
    iput-object v0, p0, LO0/t;->p:LO0/q;

    .line 54
    .line 55
    iget-boolean p1, p0, LO0/t;->q:Z

    .line 56
    .line 57
    if-nez p1, :cond_3

    .line 58
    .line 59
    iput-boolean p3, p0, LO0/t;->q:Z

    .line 60
    .line 61
    invoke-virtual {p0}, LO0/t;->u()V

    .line 62
    .line 63
    .line 64
    :cond_3
    :goto_1
    return-object v0
.end method

.method public final u()V
    .locals 6

    .line 1
    iget-object v0, p0, LO0/h;->h:Ljava/util/HashMap;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 5
    .line 6
    .line 7
    move-result v2

    .line 8
    xor-int/lit8 v2, v2, 0x1

    .line 9
    .line 10
    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/H1;->d(Z)V

    .line 11
    .line 12
    .line 13
    new-instance v2, LO0/e;

    .line 14
    .line 15
    invoke-direct {v2, p0}, LO0/e;-><init>(LO0/h;)V

    .line 16
    .line 17
    .line 18
    new-instance v3, LO0/f;

    .line 19
    .line 20
    invoke-direct {v3, p0}, LO0/f;-><init>(LO0/h;)V

    .line 21
    .line 22
    .line 23
    new-instance v4, LO0/g;

    .line 24
    .line 25
    iget-object v5, p0, LO0/t;->k:LO0/a;

    .line 26
    .line 27
    invoke-direct {v4, v5, v2, v3}, LO0/g;-><init>(LO0/a;LO0/e;LO0/f;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, LO0/h;->i:Landroid/os/Handler;

    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    iget-object v1, v5, LO0/a;->c:LO0/D;

    .line 39
    .line 40
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    new-instance v4, LO0/C;

    .line 44
    .line 45
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 46
    .line 47
    .line 48
    iput-object v0, v4, LO0/C;->a:Landroid/os/Handler;

    .line 49
    .line 50
    iput-object v3, v4, LO0/C;->b:LO0/E;

    .line 51
    .line 52
    iget-object v0, v1, LO0/D;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 53
    .line 54
    invoke-virtual {v0, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    iget-object v0, p0, LO0/h;->i:Landroid/os/Handler;

    .line 58
    .line 59
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    .line 61
    .line 62
    iget-object v1, v5, LO0/a;->d:LG0/o;

    .line 63
    .line 64
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 65
    .line 66
    .line 67
    new-instance v4, LG0/n;

    .line 68
    .line 69
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 70
    .line 71
    .line 72
    iput-object v0, v4, LG0/n;->a:Landroid/os/Handler;

    .line 73
    .line 74
    iput-object v3, v4, LG0/n;->b:LG0/p;

    .line 75
    .line 76
    iget-object v0, v1, LG0/o;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 77
    .line 78
    invoke-virtual {v0, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    iget-object v0, p0, LO0/h;->j:Ls0/O;

    .line 82
    .line 83
    iget-object v1, p0, LO0/a;->g:LC0/I;

    .line 84
    .line 85
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/H1;->j(Ljava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v5, v2, v0, v1}, LO0/a;->k(LO0/z;Ls0/O;LC0/I;)V

    .line 89
    .line 90
    .line 91
    iget-object v0, p0, LO0/a;->b:Ljava/util/HashSet;

    .line 92
    .line 93
    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    xor-int/lit8 v0, v0, 0x1

    .line 98
    .line 99
    if-nez v0, :cond_0

    .line 100
    .line 101
    invoke-virtual {v5, v2}, LO0/a;->c(LO0/z;)V

    .line 102
    .line 103
    .line 104
    :cond_0
    return-void
.end method

.method public final v(J)Z
    .locals 6

    .line 1
    iget-object v0, p0, LO0/t;->p:LO0/q;

    .line 2
    .line 3
    iget-object v1, p0, LO0/t;->o:LO0/r;

    .line 4
    .line 5
    iget-object v2, v0, LO0/q;->G:LO0/y;

    .line 6
    .line 7
    iget-object v2, v2, LO0/y;->a:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-virtual {v1, v2}, LO0/r;->b(Ljava/lang/Object;)I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/4 v2, -0x1

    .line 14
    const/4 v3, 0x0

    .line 15
    if-ne v1, v2, :cond_0

    .line 16
    .line 17
    return v3

    .line 18
    :cond_0
    iget-object v2, p0, LO0/t;->o:LO0/r;

    .line 19
    .line 20
    iget-object v4, p0, LO0/t;->n:Lm0/d0;

    .line 21
    .line 22
    invoke-virtual {v2, v1, v4, v3}, LO0/r;->g(ILm0/d0;Z)Lm0/d0;

    .line 23
    .line 24
    .line 25
    iget-wide v1, v4, Lm0/d0;->d:J

    .line 26
    .line 27
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    cmp-long v5, v1, v3

    .line 33
    .line 34
    if-eqz v5, :cond_1

    .line 35
    .line 36
    cmp-long v3, p1, v1

    .line 37
    .line 38
    if-ltz v3, :cond_1

    .line 39
    .line 40
    const-wide/16 p1, 0x1

    .line 41
    .line 42
    sub-long/2addr v1, p1

    .line 43
    const-wide/16 p1, 0x0

    .line 44
    .line 45
    invoke-static {p1, p2, v1, v2}, Ljava/lang/Math;->max(JJ)J

    .line 46
    .line 47
    .line 48
    move-result-wide p1

    .line 49
    :cond_1
    iput-wide p1, v0, LO0/q;->M:J

    .line 50
    .line 51
    const/4 p1, 0x1

    .line 52
    return p1
.end method
