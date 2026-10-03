.class public final Ly2/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ly2/j;
.implements LQ2/b;


# static fields
.field public static final f0:LU1/f;


# instance fields
.field public final G:Ly2/s;

.field public final H:LQ2/e;

.field public final I:Ly2/w;

.field public final J:LM/c;

.field public final K:LU1/f;

.field public final L:Ly2/u;

.field public final M:LB2/c;

.field public final N:LB2/c;

.field public final O:LB2/c;

.field public final P:LB2/c;

.field public final Q:Ljava/util/concurrent/atomic/AtomicInteger;

.field public R:Lw2/i;

.field public S:Z

.field public T:Z

.field public U:Z

.field public V:Z

.field public W:Ly2/D;

.field public X:Lw2/a;

.field public Y:Z

.field public Z:Ly2/z;

.field public a0:Z

.field public b0:Ly2/x;

.field public c0:Ly2/l;

.field public volatile d0:Z

.field public e0:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, LU1/f;

    .line 2
    .line 3
    const/16 v1, 0xf

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, LU1/f;-><init>(ILjava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Ly2/t;->f0:LU1/f;

    .line 10
    .line 11
    return-void
.end method

.method public constructor <init>(LB2/c;LB2/c;LB2/c;LB2/c;Ly2/u;Ly2/w;LM/c;)V
    .locals 4

    .line 1
    sget-object v0, Ly2/t;->f0:LU1/f;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ly2/s;

    .line 7
    .line 8
    new-instance v2, Ljava/util/ArrayList;

    .line 9
    .line 10
    const/4 v3, 0x2

    .line 11
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 12
    .line 13
    .line 14
    invoke-direct {v1, v2}, Ly2/s;-><init>(Ljava/util/ArrayList;)V

    .line 15
    .line 16
    .line 17
    iput-object v1, p0, Ly2/t;->G:Ly2/s;

    .line 18
    .line 19
    new-instance v1, LQ2/e;

    .line 20
    .line 21
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object v1, p0, Ly2/t;->H:LQ2/e;

    .line 25
    .line 26
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 27
    .line 28
    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 29
    .line 30
    .line 31
    iput-object v1, p0, Ly2/t;->Q:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 32
    .line 33
    iput-object p1, p0, Ly2/t;->M:LB2/c;

    .line 34
    .line 35
    iput-object p2, p0, Ly2/t;->N:LB2/c;

    .line 36
    .line 37
    iput-object p3, p0, Ly2/t;->O:LB2/c;

    .line 38
    .line 39
    iput-object p4, p0, Ly2/t;->P:LB2/c;

    .line 40
    .line 41
    iput-object p5, p0, Ly2/t;->L:Ly2/u;

    .line 42
    .line 43
    iput-object p6, p0, Ly2/t;->I:Ly2/w;

    .line 44
    .line 45
    iput-object p7, p0, Ly2/t;->J:LM/c;

    .line 46
    .line 47
    iput-object v0, p0, Ly2/t;->K:LU1/f;

    .line 48
    .line 49
    return-void
.end method


# virtual methods
.method public final declared-synchronized a(LL2/g;Ljava/util/concurrent/Executor;)V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Ly2/t;->H:LQ2/e;

    .line 3
    .line 4
    invoke-virtual {v0}, LQ2/e;->a()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Ly2/t;->G:Ly2/s;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    new-instance v1, Ly2/r;

    .line 13
    .line 14
    invoke-direct {v1, p1, p2}, Ly2/r;-><init>(LL2/g;Ljava/util/concurrent/Executor;)V

    .line 15
    .line 16
    .line 17
    iget-object v0, v0, Ly2/s;->G:Ljava/util/List;

    .line 18
    .line 19
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    iget-boolean v0, p0, Ly2/t;->Y:Z

    .line 23
    .line 24
    const/4 v1, 0x1

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    invoke-virtual {p0, v1}, Ly2/t;->e(I)V

    .line 28
    .line 29
    .line 30
    new-instance v0, Ly2/q;

    .line 31
    .line 32
    invoke-direct {v0, p0, p1, v1}, Ly2/q;-><init>(Ly2/t;LL2/g;I)V

    .line 33
    .line 34
    .line 35
    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :catchall_0
    move-exception p1

    .line 40
    goto :goto_1

    .line 41
    :cond_0
    iget-boolean v0, p0, Ly2/t;->a0:Z

    .line 42
    .line 43
    const/4 v2, 0x0

    .line 44
    if-eqz v0, :cond_1

    .line 45
    .line 46
    invoke-virtual {p0, v1}, Ly2/t;->e(I)V

    .line 47
    .line 48
    .line 49
    new-instance v0, Ly2/q;

    .line 50
    .line 51
    invoke-direct {v0, p0, p1, v2}, Ly2/q;-><init>(Ly2/t;LL2/g;I)V

    .line 52
    .line 53
    .line 54
    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    iget-boolean p1, p0, Ly2/t;->d0:Z

    .line 59
    .line 60
    xor-int/2addr p1, v1

    .line 61
    const-string p2, "Cannot add callbacks to a cancelled EngineJob"

    .line 62
    .line 63
    invoke-static {p2, p1}, Ln0/c;->a(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    .line 65
    .line 66
    :goto_0
    monitor-exit p0

    .line 67
    return-void

    .line 68
    :goto_1
    monitor-exit p0

    .line 69
    throw p1
.end method

.method public final b()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Ly2/t;->f()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Ly2/t;->d0:Z

    .line 10
    .line 11
    iget-object v1, p0, Ly2/t;->c0:Ly2/l;

    .line 12
    .line 13
    iput-boolean v0, v1, Ly2/l;->i0:Z

    .line 14
    .line 15
    iget-object v0, v1, Ly2/l;->g0:Ly2/h;

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    invoke-interface {v0}, Ly2/h;->cancel()V

    .line 20
    .line 21
    .line 22
    :cond_1
    iget-object v0, p0, Ly2/t;->L:Ly2/u;

    .line 23
    .line 24
    iget-object v1, p0, Ly2/t;->R:Lw2/i;

    .line 25
    .line 26
    check-cast v0, Ly2/p;

    .line 27
    .line 28
    monitor-enter v0

    .line 29
    :try_start_0
    iget-object v2, v0, Ly2/p;->a:Lm2/e;

    .line 30
    .line 31
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    iget-boolean v3, p0, Ly2/t;->V:Z

    .line 35
    .line 36
    if-eqz v3, :cond_2

    .line 37
    .line 38
    iget-object v2, v2, Lm2/e;->I:Ljava/lang/Object;

    .line 39
    .line 40
    :goto_0
    check-cast v2, Ljava/util/Map;

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_2
    iget-object v2, v2, Lm2/e;->H:Ljava/lang/Object;

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :goto_1
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    invoke-virtual {p0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    if-eqz v3, :cond_3

    .line 55
    .line 56
    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    .line 58
    .line 59
    goto :goto_2

    .line 60
    :catchall_0
    move-exception v1

    .line 61
    goto :goto_3

    .line 62
    :cond_3
    :goto_2
    monitor-exit v0

    .line 63
    return-void

    .line 64
    :goto_3
    monitor-exit v0

    .line 65
    throw v1
.end method

.method public final c()LQ2/e;
    .locals 1

    .line 1
    iget-object v0, p0, Ly2/t;->H:LQ2/e;

    .line 2
    .line 3
    return-object v0
.end method

.method public final d()V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Ly2/t;->H:LQ2/e;

    .line 3
    .line 4
    invoke-virtual {v0}, LQ2/e;->a()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Ly2/t;->f()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const-string v1, "Not yet complete!"

    .line 12
    .line 13
    invoke-static {v1, v0}, Ln0/c;->a(Ljava/lang/String;Z)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Ly2/t;->Q:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-ltz v0, :cond_0

    .line 23
    .line 24
    const/4 v1, 0x1

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 v1, 0x0

    .line 27
    :goto_0
    const-string v2, "Can\'t decrement below 0"

    .line 28
    .line 29
    invoke-static {v2, v1}, Ln0/c;->a(Ljava/lang/String;Z)V

    .line 30
    .line 31
    .line 32
    if-nez v0, :cond_1

    .line 33
    .line 34
    iget-object v0, p0, Ly2/t;->b0:Ly2/x;

    .line 35
    .line 36
    invoke-virtual {p0}, Ly2/t;->i()V

    .line 37
    .line 38
    .line 39
    goto :goto_1

    .line 40
    :catchall_0
    move-exception v0

    .line 41
    goto :goto_2

    .line 42
    :cond_1
    const/4 v0, 0x0

    .line 43
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    if-eqz v0, :cond_2

    .line 45
    .line 46
    invoke-virtual {v0}, Ly2/x;->c()V

    .line 47
    .line 48
    .line 49
    :cond_2
    return-void

    .line 50
    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 51
    throw v0
.end method

.method public final declared-synchronized e(I)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Ly2/t;->f()Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    const-string v1, "Not yet complete!"

    .line 7
    .line 8
    invoke-static {v1, v0}, Ln0/c;->a(Ljava/lang/String;Z)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Ly2/t;->Q:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndAdd(I)I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    iget-object p1, p0, Ly2/t;->b0:Ly2/x;

    .line 20
    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    invoke-virtual {p1}, Ly2/x;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    move-exception p1

    .line 28
    goto :goto_1

    .line 29
    :cond_0
    :goto_0
    monitor-exit p0

    .line 30
    return-void

    .line 31
    :goto_1
    monitor-exit p0

    .line 32
    throw p1
.end method

.method public final f()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Ly2/t;->a0:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-boolean v0, p0, Ly2/t;->Y:Z

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    iget-boolean v0, p0, Ly2/t;->d0:Z

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 17
    :goto_1
    return v0
.end method

.method public final g()V
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Ly2/t;->H:LQ2/e;

    .line 3
    .line 4
    invoke-virtual {v0}, LQ2/e;->a()V

    .line 5
    .line 6
    .line 7
    iget-boolean v0, p0, Ly2/t;->d0:Z

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Ly2/t;->i()V

    .line 12
    .line 13
    .line 14
    monitor-exit p0

    .line 15
    return-void

    .line 16
    :catchall_0
    move-exception v0

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    iget-object v0, p0, Ly2/t;->G:Ly2/s;

    .line 19
    .line 20
    iget-object v0, v0, Ly2/s;->G:Ljava/util/List;

    .line 21
    .line 22
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-nez v0, :cond_3

    .line 27
    .line 28
    iget-boolean v0, p0, Ly2/t;->a0:Z

    .line 29
    .line 30
    if-nez v0, :cond_2

    .line 31
    .line 32
    const/4 v0, 0x1

    .line 33
    iput-boolean v0, p0, Ly2/t;->a0:Z

    .line 34
    .line 35
    iget-object v1, p0, Ly2/t;->R:Lw2/i;

    .line 36
    .line 37
    iget-object v2, p0, Ly2/t;->G:Ly2/s;

    .line 38
    .line 39
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    new-instance v3, Ljava/util/ArrayList;

    .line 43
    .line 44
    iget-object v2, v2, Ly2/s;->G:Ljava/util/List;

    .line 45
    .line 46
    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 47
    .line 48
    .line 49
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    add-int/2addr v2, v0

    .line 54
    invoke-virtual {p0, v2}, Ly2/t;->e(I)V

    .line 55
    .line 56
    .line 57
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    iget-object v0, p0, Ly2/t;->L:Ly2/u;

    .line 59
    .line 60
    const/4 v2, 0x0

    .line 61
    check-cast v0, Ly2/p;

    .line 62
    .line 63
    invoke-virtual {v0, p0, v1, v2}, Ly2/p;->e(Ly2/t;Lw2/i;Ly2/x;)V

    .line 64
    .line 65
    .line 66
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    if-eqz v1, :cond_1

    .line 75
    .line 76
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    check-cast v1, Ly2/r;

    .line 81
    .line 82
    iget-object v2, v1, Ly2/r;->b:Ljava/util/concurrent/Executor;

    .line 83
    .line 84
    new-instance v3, Ly2/q;

    .line 85
    .line 86
    iget-object v1, v1, Ly2/r;->a:LL2/g;

    .line 87
    .line 88
    const/4 v4, 0x0

    .line 89
    invoke-direct {v3, p0, v1, v4}, Ly2/q;-><init>(Ly2/t;LL2/g;I)V

    .line 90
    .line 91
    .line 92
    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 93
    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_1
    invoke-virtual {p0}, Ly2/t;->d()V

    .line 97
    .line 98
    .line 99
    return-void

    .line 100
    :cond_2
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 101
    .line 102
    const-string v1, "Already failed once"

    .line 103
    .line 104
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    throw v0

    .line 108
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 109
    .line 110
    const-string v1, "Received an exception without any callbacks to notify"

    .line 111
    .line 112
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    throw v0

    .line 116
    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 117
    throw v0
.end method

.method public final h()V
    .locals 7

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Ly2/t;->H:LQ2/e;

    .line 3
    .line 4
    invoke-virtual {v0}, LQ2/e;->a()V

    .line 5
    .line 6
    .line 7
    iget-boolean v0, p0, Ly2/t;->d0:Z

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Ly2/t;->W:Ly2/D;

    .line 12
    .line 13
    invoke-interface {v0}, Ly2/D;->b()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Ly2/t;->i()V

    .line 17
    .line 18
    .line 19
    monitor-exit p0

    .line 20
    return-void

    .line 21
    :catchall_0
    move-exception v0

    .line 22
    goto/16 :goto_1

    .line 23
    .line 24
    :cond_0
    iget-object v0, p0, Ly2/t;->G:Ly2/s;

    .line 25
    .line 26
    iget-object v0, v0, Ly2/s;->G:Ljava/util/List;

    .line 27
    .line 28
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-nez v0, :cond_3

    .line 33
    .line 34
    iget-boolean v0, p0, Ly2/t;->Y:Z

    .line 35
    .line 36
    if-nez v0, :cond_2

    .line 37
    .line 38
    iget-object v0, p0, Ly2/t;->K:LU1/f;

    .line 39
    .line 40
    iget-object v2, p0, Ly2/t;->W:Ly2/D;

    .line 41
    .line 42
    iget-boolean v3, p0, Ly2/t;->S:Z

    .line 43
    .line 44
    iget-object v5, p0, Ly2/t;->R:Lw2/i;

    .line 45
    .line 46
    iget-object v6, p0, Ly2/t;->I:Ly2/w;

    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    .line 50
    .line 51
    new-instance v0, Ly2/x;

    .line 52
    .line 53
    const/4 v4, 0x1

    .line 54
    move-object v1, v0

    .line 55
    invoke-direct/range {v1 .. v6}, Ly2/x;-><init>(Ly2/D;ZZLw2/i;Ly2/w;)V

    .line 56
    .line 57
    .line 58
    iput-object v0, p0, Ly2/t;->b0:Ly2/x;

    .line 59
    .line 60
    const/4 v0, 0x1

    .line 61
    iput-boolean v0, p0, Ly2/t;->Y:Z

    .line 62
    .line 63
    iget-object v1, p0, Ly2/t;->G:Ly2/s;

    .line 64
    .line 65
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 66
    .line 67
    .line 68
    new-instance v2, Ljava/util/ArrayList;

    .line 69
    .line 70
    iget-object v1, v1, Ly2/s;->G:Ljava/util/List;

    .line 71
    .line 72
    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 73
    .line 74
    .line 75
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    add-int/2addr v1, v0

    .line 80
    invoke-virtual {p0, v1}, Ly2/t;->e(I)V

    .line 81
    .line 82
    .line 83
    iget-object v1, p0, Ly2/t;->R:Lw2/i;

    .line 84
    .line 85
    iget-object v3, p0, Ly2/t;->b0:Ly2/x;

    .line 86
    .line 87
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    iget-object v4, p0, Ly2/t;->L:Ly2/u;

    .line 89
    .line 90
    check-cast v4, Ly2/p;

    .line 91
    .line 92
    invoke-virtual {v4, p0, v1, v3}, Ly2/p;->e(Ly2/t;Lw2/i;Ly2/x;)V

    .line 93
    .line 94
    .line 95
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 100
    .line 101
    .line 102
    move-result v2

    .line 103
    if-eqz v2, :cond_1

    .line 104
    .line 105
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    check-cast v2, Ly2/r;

    .line 110
    .line 111
    iget-object v3, v2, Ly2/r;->b:Ljava/util/concurrent/Executor;

    .line 112
    .line 113
    new-instance v4, Ly2/q;

    .line 114
    .line 115
    iget-object v2, v2, Ly2/r;->a:LL2/g;

    .line 116
    .line 117
    invoke-direct {v4, p0, v2, v0}, Ly2/q;-><init>(Ly2/t;LL2/g;I)V

    .line 118
    .line 119
    .line 120
    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 121
    .line 122
    .line 123
    goto :goto_0

    .line 124
    :cond_1
    invoke-virtual {p0}, Ly2/t;->d()V

    .line 125
    .line 126
    .line 127
    return-void

    .line 128
    :cond_2
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 129
    .line 130
    const-string v1, "Already have resource"

    .line 131
    .line 132
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    throw v0

    .line 136
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 137
    .line 138
    const-string v1, "Received a resource without any callbacks to notify"

    .line 139
    .line 140
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    throw v0

    .line 144
    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 145
    throw v0
.end method

.method public final declared-synchronized i()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Ly2/t;->R:Lw2/i;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Ly2/t;->G:Ly2/s;

    .line 7
    .line 8
    iget-object v0, v0, Ly2/s;->G:Ljava/util/List;

    .line 9
    .line 10
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Ly2/t;->R:Lw2/i;

    .line 15
    .line 16
    iput-object v0, p0, Ly2/t;->b0:Ly2/x;

    .line 17
    .line 18
    iput-object v0, p0, Ly2/t;->W:Ly2/D;

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    iput-boolean v1, p0, Ly2/t;->a0:Z

    .line 22
    .line 23
    iput-boolean v1, p0, Ly2/t;->d0:Z

    .line 24
    .line 25
    iput-boolean v1, p0, Ly2/t;->Y:Z

    .line 26
    .line 27
    iput-boolean v1, p0, Ly2/t;->e0:Z

    .line 28
    .line 29
    iget-object v1, p0, Ly2/t;->c0:Ly2/l;

    .line 30
    .line 31
    invoke-virtual {v1}, Ly2/l;->n()V

    .line 32
    .line 33
    .line 34
    iput-object v0, p0, Ly2/t;->c0:Ly2/l;

    .line 35
    .line 36
    iput-object v0, p0, Ly2/t;->Z:Ly2/z;

    .line 37
    .line 38
    iput-object v0, p0, Ly2/t;->X:Lw2/a;

    .line 39
    .line 40
    iget-object v0, p0, Ly2/t;->J:LM/c;

    .line 41
    .line 42
    invoke-interface {v0, p0}, LM/c;->a(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    .line 44
    .line 45
    monitor-exit p0

    .line 46
    return-void

    .line 47
    :catchall_0
    move-exception v0

    .line 48
    goto :goto_0

    .line 49
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 50
    .line 51
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 52
    .line 53
    .line 54
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 55
    :goto_0
    monitor-exit p0

    .line 56
    throw v0
.end method

.method public final declared-synchronized j(LL2/g;)V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Ly2/t;->H:LQ2/e;

    .line 3
    .line 4
    invoke-virtual {v0}, LQ2/e;->a()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Ly2/t;->G:Ly2/s;

    .line 8
    .line 9
    new-instance v1, Ly2/r;

    .line 10
    .line 11
    sget-object v2, LP2/g;->b:Lf/v;

    .line 12
    .line 13
    invoke-direct {v1, p1, v2}, Ly2/r;-><init>(LL2/g;Ljava/util/concurrent/Executor;)V

    .line 14
    .line 15
    .line 16
    iget-object p1, v0, Ly2/s;->G:Ljava/util/List;

    .line 17
    .line 18
    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, Ly2/t;->G:Ly2/s;

    .line 22
    .line 23
    iget-object p1, p1, Ly2/s;->G:Ljava/util/List;

    .line 24
    .line 25
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-eqz p1, :cond_1

    .line 30
    .line 31
    invoke-virtual {p0}, Ly2/t;->b()V

    .line 32
    .line 33
    .line 34
    iget-boolean p1, p0, Ly2/t;->Y:Z

    .line 35
    .line 36
    if-nez p1, :cond_0

    .line 37
    .line 38
    iget-boolean p1, p0, Ly2/t;->a0:Z

    .line 39
    .line 40
    if-eqz p1, :cond_1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :catchall_0
    move-exception p1

    .line 44
    goto :goto_1

    .line 45
    :cond_0
    :goto_0
    iget-object p1, p0, Ly2/t;->Q:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 46
    .line 47
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    if-nez p1, :cond_1

    .line 52
    .line 53
    invoke-virtual {p0}, Ly2/t;->i()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    .line 55
    .line 56
    :cond_1
    monitor-exit p0

    .line 57
    return-void

    .line 58
    :goto_1
    monitor-exit p0

    .line 59
    throw p1
.end method

.method public final declared-synchronized k(Ly2/l;)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iput-object p1, p0, Ly2/t;->c0:Ly2/l;

    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    invoke-virtual {p1, v0}, Ly2/l;->i(I)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x2

    .line 10
    if-eq v0, v1, :cond_3

    .line 11
    .line 12
    const/4 v1, 0x3

    .line 13
    if-ne v0, v1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-boolean v0, p0, Ly2/t;->T:Z

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    iget-object v0, p0, Ly2/t;->O:LB2/c;

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_1
    iget-boolean v0, p0, Ly2/t;->U:Z

    .line 24
    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    iget-object v0, p0, Ly2/t;->P:LB2/c;

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_2
    iget-object v0, p0, Ly2/t;->N:LB2/c;

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_3
    :goto_0
    iget-object v0, p0, Ly2/t;->M:LB2/c;

    .line 34
    .line 35
    :goto_1
    invoke-virtual {v0, p1}, LB2/c;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    .line 37
    .line 38
    monitor-exit p0

    .line 39
    return-void

    .line 40
    :catchall_0
    move-exception p1

    .line 41
    monitor-exit p0

    .line 42
    throw p1
.end method
