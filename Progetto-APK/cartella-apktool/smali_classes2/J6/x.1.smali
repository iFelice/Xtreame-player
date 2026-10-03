.class public abstract LJ6/x;
.super LO6/i;
.source "SourceFile"


# instance fields
.field public I:I


# direct methods
.method public constructor <init>(I)V
    .locals 3

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    const/4 v2, 0x0

    .line 4
    invoke-direct {p0, v0, v1, v2}, LO6/i;-><init>(JZ)V

    .line 5
    .line 6
    .line 7
    iput p1, p0, LJ6/x;->I:I

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public c(Ljava/util/concurrent/CancellationException;)V
    .locals 0

    .line 1
    return-void
.end method

.method public abstract d()Lx6/e;
.end method

.method public e(Ljava/lang/Object;)Ljava/lang/Throwable;
    .locals 2

    .line 1
    instance-of v0, p1, LJ6/k;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    check-cast p1, LJ6/k;

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move-object p1, v1

    .line 10
    :goto_0
    if-eqz p1, :cond_1

    .line 11
    .line 12
    iget-object v1, p1, LJ6/k;->a:Ljava/lang/Throwable;

    .line 13
    .line 14
    :cond_1
    return-object v1
.end method

.method public f(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    return-object p1
.end method

.method public final g(Ljava/lang/Throwable;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/YB;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, "Fatal exception in coroutines machinery for "

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v2, ". Please read KDoc to \'handleFatalException\' method and report this incident to maintainers"

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-direct {v0, v1, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, LJ6/x;->d()Lx6/e;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-interface {p1}, Lx6/e;->getContext()Lx6/j;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-static {p1, v0}, Lz4/q0;->w(Lx6/j;Ljava/lang/Throwable;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public abstract h()Ljava/lang/Object;
.end method

.method public final run()V
    .locals 8

    .line 1
    :try_start_0
    invoke-virtual {p0}, LJ6/x;->d()Lx6/e;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "null cannot be cast to non-null type kotlinx.coroutines.internal.DispatchedContinuation<T of kotlinx.coroutines.DispatchedTask>"

    .line 6
    .line 7
    invoke-static {v0, v1}, Lz4/q0;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    check-cast v0, LN6/d;

    .line 11
    .line 12
    iget-object v1, v0, LN6/d;->K:Lx6/e;

    .line 13
    .line 14
    iget-object v0, v0, LN6/d;->M:Ljava/lang/Object;

    .line 15
    .line 16
    invoke-interface {v1}, Lx6/e;->getContext()Lx6/j;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-static {v2, v0}, LN6/e;->d(Lx6/j;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    sget-object v3, LN6/e;->c:Lp3/e;

    .line 25
    .line 26
    if-eq v0, v3, :cond_0

    .line 27
    .line 28
    invoke-static {v1, v2}, La7/b;->i(Lx6/e;Lx6/j;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 29
    .line 30
    .line 31
    :cond_0
    :try_start_1
    invoke-interface {v1}, Lx6/e;->getContext()Lx6/j;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    invoke-virtual {p0}, LJ6/x;->h()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    invoke-virtual {p0, v4}, LJ6/x;->e(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 40
    .line 41
    .line 42
    move-result-object v5

    .line 43
    if-nez v5, :cond_2

    .line 44
    .line 45
    iget v6, p0, LJ6/x;->I:I

    .line 46
    .line 47
    const/4 v7, 0x1

    .line 48
    if-eq v6, v7, :cond_1

    .line 49
    .line 50
    const/4 v7, 0x2

    .line 51
    if-ne v6, v7, :cond_2

    .line 52
    .line 53
    :cond_1
    sget-object v6, LJ6/n;->H:LJ6/n;

    .line 54
    .line 55
    invoke-interface {v3, v6}, Lx6/j;->k(Lx6/i;)Lx6/h;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    check-cast v3, LJ6/J;

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :catchall_0
    move-exception v1

    .line 63
    goto :goto_2

    .line 64
    :cond_2
    const/4 v3, 0x0

    .line 65
    :goto_0
    if-eqz v3, :cond_3

    .line 66
    .line 67
    invoke-interface {v3}, LJ6/J;->isActive()Z

    .line 68
    .line 69
    .line 70
    move-result v6

    .line 71
    if-nez v6, :cond_3

    .line 72
    .line 73
    check-cast v3, LJ6/Q;

    .line 74
    .line 75
    invoke-virtual {v3}, LJ6/Q;->l()Ljava/util/concurrent/CancellationException;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    invoke-virtual {p0, v3}, LJ6/x;->c(Ljava/util/concurrent/CancellationException;)V

    .line 80
    .line 81
    .line 82
    invoke-static {v3}, Lz4/q0;->n(Ljava/lang/Throwable;)Lt6/d;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    invoke-interface {v1, v3}, Lx6/e;->b(Ljava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_3
    if-eqz v5, :cond_4

    .line 91
    .line 92
    invoke-static {v5}, Lz4/q0;->n(Ljava/lang/Throwable;)Lt6/d;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    invoke-interface {v1, v3}, Lx6/e;->b(Ljava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_4
    invoke-virtual {p0, v4}, LJ6/x;->f(Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v3

    .line 104
    invoke-interface {v1, v3}, Lx6/e;->b(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 105
    .line 106
    .line 107
    :goto_1
    :try_start_2
    invoke-static {v2, v0}, LN6/e;->a(Lx6/j;Ljava/lang/Object;)V

    .line 108
    .line 109
    .line 110
    goto :goto_4

    .line 111
    :catchall_1
    move-exception v0

    .line 112
    goto :goto_3

    .line 113
    :goto_2
    invoke-static {v2, v0}, LN6/e;->a(Lx6/j;Ljava/lang/Object;)V

    .line 114
    .line 115
    .line 116
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 117
    :goto_3
    invoke-virtual {p0, v0}, LJ6/x;->g(Ljava/lang/Throwable;)V

    .line 118
    .line 119
    .line 120
    :goto_4
    return-void
.end method
