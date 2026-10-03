.class public final Ly2/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ly2/g;
.implements Ljava/lang/Runnable;
.implements Ljava/lang/Comparable;
.implements LQ2/b;


# instance fields
.field public final G:Ly2/i;

.field public final H:Ljava/util/ArrayList;

.field public final I:LQ2/e;

.field public final J:LJ3/k;

.field public final K:LM/c;

.field public final L:Ly2/k;

.field public final M:LD0/g;

.field public N:Lcom/bumptech/glide/f;

.field public O:Lw2/i;

.field public P:Lcom/bumptech/glide/g;

.field public Q:Ly2/v;

.field public R:I

.field public S:I

.field public T:Ly2/o;

.field public U:Lw2/l;

.field public V:Ly2/j;

.field public W:I

.field public X:J

.field public Y:Z

.field public Z:Ljava/lang/Object;

.field public a0:Ljava/lang/Thread;

.field public b0:Lw2/i;

.field public c0:Lw2/i;

.field public d0:Ljava/lang/Object;

.field public e0:Lw2/a;

.field public f0:Lcom/bumptech/glide/load/data/e;

.field public volatile g0:Ly2/h;

.field public volatile h0:Z

.field public volatile i0:Z

.field public j0:Z

.field public k0:I

.field public l0:I


# direct methods
.method public constructor <init>(LJ3/k;LM/c;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ly2/i;

    .line 5
    .line 6
    invoke-direct {v0}, Ly2/i;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Ly2/l;->G:Ly2/i;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Ly2/l;->H:Ljava/util/ArrayList;

    .line 17
    .line 18
    new-instance v0, LQ2/e;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Ly2/l;->I:LQ2/e;

    .line 24
    .line 25
    new-instance v0, Ly2/k;

    .line 26
    .line 27
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Ly2/l;->L:Ly2/k;

    .line 31
    .line 32
    new-instance v0, LD0/g;

    .line 33
    .line 34
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Ly2/l;->M:LD0/g;

    .line 38
    .line 39
    iput-object p1, p0, Ly2/l;->J:LJ3/k;

    .line 40
    .line 41
    iput-object p2, p0, Ly2/l;->K:LM/c;

    .line 42
    .line 43
    return-void
.end method


# virtual methods
.method public final a(Lw2/i;Ljava/lang/Exception;Lcom/bumptech/glide/load/data/e;Lw2/a;)V
    .locals 2

    .line 1
    invoke-interface {p3}, Lcom/bumptech/glide/load/data/e;->c()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ly2/z;

    .line 5
    .line 6
    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    const-string v1, "Fetching data failed"

    .line 11
    .line 12
    invoke-direct {v0, v1, p2}, Ly2/z;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 13
    .line 14
    .line 15
    invoke-interface {p3}, Lcom/bumptech/glide/load/data/e;->a()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    iput-object p1, v0, Ly2/z;->H:Lw2/i;

    .line 20
    .line 21
    iput-object p4, v0, Ly2/z;->I:Lw2/a;

    .line 22
    .line 23
    iput-object p2, v0, Ly2/z;->J:Ljava/lang/Class;

    .line 24
    .line 25
    iget-object p1, p0, Ly2/l;->H:Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    iget-object p2, p0, Ly2/l;->a0:Ljava/lang/Thread;

    .line 35
    .line 36
    if-eq p1, p2, :cond_0

    .line 37
    .line 38
    const/4 p1, 0x2

    .line 39
    invoke-virtual {p0, p1}, Ly2/l;->p(I)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    invoke-virtual {p0}, Ly2/l;->q()V

    .line 44
    .line 45
    .line 46
    :goto_0
    return-void
.end method

.method public final b()V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-virtual {p0, v0}, Ly2/l;->p(I)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public final c()LQ2/e;
    .locals 1

    .line 1
    iget-object v0, p0, Ly2/l;->I:LQ2/e;

    .line 2
    .line 3
    return-object v0
.end method

.method public final compareTo(Ljava/lang/Object;)I
    .locals 2

    .line 1
    check-cast p1, Ly2/l;

    .line 2
    .line 3
    iget-object v0, p0, Ly2/l;->P:Lcom/bumptech/glide/g;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iget-object v1, p1, Ly2/l;->P:Lcom/bumptech/glide/g;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    sub-int/2addr v0, v1

    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    iget v0, p0, Ly2/l;->W:I

    .line 19
    .line 20
    iget p1, p1, Ly2/l;->W:I

    .line 21
    .line 22
    sub-int/2addr v0, p1

    .line 23
    :cond_0
    return v0
.end method

.method public final d(Lw2/i;Ljava/lang/Object;Lcom/bumptech/glide/load/data/e;Lw2/a;Lw2/i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ly2/l;->b0:Lw2/i;

    .line 2
    .line 3
    iput-object p2, p0, Ly2/l;->d0:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Ly2/l;->f0:Lcom/bumptech/glide/load/data/e;

    .line 6
    .line 7
    iput-object p4, p0, Ly2/l;->e0:Lw2/a;

    .line 8
    .line 9
    iput-object p5, p0, Ly2/l;->c0:Lw2/i;

    .line 10
    .line 11
    iget-object p2, p0, Ly2/l;->G:Ly2/i;

    .line 12
    .line 13
    invoke-virtual {p2}, Ly2/i;->a()Ljava/util/ArrayList;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    const/4 p3, 0x0

    .line 18
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    if-eq p1, p2, :cond_0

    .line 23
    .line 24
    const/4 p3, 0x1

    .line 25
    :cond_0
    iput-boolean p3, p0, Ly2/l;->j0:Z

    .line 26
    .line 27
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    iget-object p2, p0, Ly2/l;->a0:Ljava/lang/Thread;

    .line 32
    .line 33
    if-eq p1, p2, :cond_1

    .line 34
    .line 35
    const/4 p1, 0x3

    .line 36
    invoke-virtual {p0, p1}, Ly2/l;->p(I)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    invoke-virtual {p0}, Ly2/l;->g()V

    .line 41
    .line 42
    .line 43
    :goto_0
    return-void
.end method

.method public final e(Lcom/bumptech/glide/load/data/e;Ljava/lang/Object;Lw2/a;)Ly2/D;
    .locals 5

    .line 1
    const-string v0, "Decoded result "

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez p2, :cond_0

    .line 5
    .line 6
    invoke-interface {p1}, Lcom/bumptech/glide/load/data/e;->c()V

    .line 7
    .line 8
    .line 9
    return-object v1

    .line 10
    :cond_0
    :try_start_0
    sget v2, LP2/i;->b:I

    .line 11
    .line 12
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    .line 13
    .line 14
    .line 15
    move-result-wide v2

    .line 16
    invoke-virtual {p0, p2, p3}, Ly2/l;->f(Ljava/lang/Object;Lw2/a;)Ly2/D;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    const-string p3, "DecodeJob"

    .line 21
    .line 22
    const/4 v4, 0x2

    .line 23
    invoke-static {p3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 24
    .line 25
    .line 26
    move-result p3

    .line 27
    if-eqz p3, :cond_1

    .line 28
    .line 29
    new-instance p3, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p3

    .line 41
    invoke-virtual {p0, v2, v3, p3, v1}, Ly2/l;->j(JLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :catchall_0
    move-exception p2

    .line 46
    goto :goto_1

    .line 47
    :cond_1
    :goto_0
    invoke-interface {p1}, Lcom/bumptech/glide/load/data/e;->c()V

    .line 48
    .line 49
    .line 50
    return-object p2

    .line 51
    :goto_1
    invoke-interface {p1}, Lcom/bumptech/glide/load/data/e;->c()V

    .line 52
    .line 53
    .line 54
    throw p2
.end method

.method public final f(Ljava/lang/Object;Lw2/a;)Ly2/D;
    .locals 8

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Ly2/l;->G:Ly2/i;

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Ly2/i;->c(Ljava/lang/Class;)Ly2/B;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    iget-object v0, p0, Ly2/l;->U:Lw2/l;

    .line 12
    .line 13
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 14
    .line 15
    const/16 v4, 0x1a

    .line 16
    .line 17
    if-ge v3, v4, :cond_1

    .line 18
    .line 19
    :cond_0
    :goto_0
    move-object v6, v0

    .line 20
    goto :goto_3

    .line 21
    :cond_1
    sget-object v3, Lw2/a;->J:Lw2/a;

    .line 22
    .line 23
    if-eq p2, v3, :cond_3

    .line 24
    .line 25
    iget-boolean v1, v1, Ly2/i;->r:Z

    .line 26
    .line 27
    if-eqz v1, :cond_2

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_2
    const/4 v1, 0x0

    .line 31
    goto :goto_2

    .line 32
    :cond_3
    :goto_1
    const/4 v1, 0x1

    .line 33
    :goto_2
    sget-object v3, LF2/p;->i:Lw2/k;

    .line 34
    .line 35
    invoke-virtual {v0, v3}, Lw2/l;->c(Lw2/k;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    check-cast v4, Ljava/lang/Boolean;

    .line 40
    .line 41
    if-eqz v4, :cond_4

    .line 42
    .line 43
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    if-eqz v4, :cond_0

    .line 48
    .line 49
    if-eqz v1, :cond_4

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_4
    new-instance v0, Lw2/l;

    .line 53
    .line 54
    invoke-direct {v0}, Lw2/l;-><init>()V

    .line 55
    .line 56
    .line 57
    iget-object v4, p0, Ly2/l;->U:Lw2/l;

    .line 58
    .line 59
    iget-object v4, v4, Lw2/l;->b:LP2/d;

    .line 60
    .line 61
    iget-object v5, v0, Lw2/l;->b:LP2/d;

    .line 62
    .line 63
    invoke-virtual {v5, v4}, LP2/d;->g(Lr/m;)V

    .line 64
    .line 65
    .line 66
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-virtual {v5, v3, v1}, LP2/d;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :goto_3
    iget-object v0, p0, Ly2/l;->N:Lcom/bumptech/glide/f;

    .line 75
    .line 76
    invoke-virtual {v0}, Lcom/bumptech/glide/f;->b()Lcom/bumptech/glide/j;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/j;->h(Ljava/lang/Object;)Lcom/bumptech/glide/load/data/g;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    :try_start_0
    iget v3, p0, Ly2/l;->R:I

    .line 85
    .line 86
    iget v4, p0, Ly2/l;->S:I

    .line 87
    .line 88
    new-instance v5, Lm2/c;

    .line 89
    .line 90
    const/16 v0, 0x9

    .line 91
    .line 92
    invoke-direct {v5, p0, p2, v0}, Lm2/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 93
    .line 94
    .line 95
    move-object v7, p1

    .line 96
    invoke-virtual/range {v2 .. v7}, Ly2/B;->a(IILm2/c;Lw2/l;Lcom/bumptech/glide/load/data/g;)Ly2/D;

    .line 97
    .line 98
    .line 99
    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    invoke-interface {p1}, Lcom/bumptech/glide/load/data/g;->c()V

    .line 101
    .line 102
    .line 103
    return-object p2

    .line 104
    :catchall_0
    move-exception p2

    .line 105
    invoke-interface {p1}, Lcom/bumptech/glide/load/data/g;->c()V

    .line 106
    .line 107
    .line 108
    throw p2
.end method

.method public final g()V
    .locals 5

    .line 1
    const-string v0, "DecodeJob"

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const-string v0, "Retrieved data"

    .line 11
    .line 12
    iget-wide v1, p0, Ly2/l;->X:J

    .line 13
    .line 14
    new-instance v3, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string v4, "data: "

    .line 17
    .line 18
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object v4, p0, Ly2/l;->d0:Ljava/lang/Object;

    .line 22
    .line 23
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v4, ", cache key: "

    .line 27
    .line 28
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget-object v4, p0, Ly2/l;->b0:Lw2/i;

    .line 32
    .line 33
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v4, ", fetcher: "

    .line 37
    .line 38
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    iget-object v4, p0, Ly2/l;->f0:Lcom/bumptech/glide/load/data/e;

    .line 42
    .line 43
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    invoke-virtual {p0, v1, v2, v0, v3}, Ly2/l;->j(JLjava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    :cond_0
    const/4 v0, 0x0

    .line 54
    :try_start_0
    iget-object v1, p0, Ly2/l;->f0:Lcom/bumptech/glide/load/data/e;

    .line 55
    .line 56
    iget-object v2, p0, Ly2/l;->d0:Ljava/lang/Object;

    .line 57
    .line 58
    iget-object v3, p0, Ly2/l;->e0:Lw2/a;

    .line 59
    .line 60
    invoke-virtual {p0, v1, v2, v3}, Ly2/l;->e(Lcom/bumptech/glide/load/data/e;Ljava/lang/Object;Lw2/a;)Ly2/D;

    .line 61
    .line 62
    .line 63
    move-result-object v1
    :try_end_0
    .catch Ly2/z; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    goto :goto_0

    .line 65
    :catch_0
    move-exception v1

    .line 66
    iget-object v2, p0, Ly2/l;->c0:Lw2/i;

    .line 67
    .line 68
    iget-object v3, p0, Ly2/l;->e0:Lw2/a;

    .line 69
    .line 70
    iput-object v2, v1, Ly2/z;->H:Lw2/i;

    .line 71
    .line 72
    iput-object v3, v1, Ly2/z;->I:Lw2/a;

    .line 73
    .line 74
    iput-object v0, v1, Ly2/z;->J:Ljava/lang/Class;

    .line 75
    .line 76
    iget-object v2, p0, Ly2/l;->H:Ljava/util/ArrayList;

    .line 77
    .line 78
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-object v1, v0

    .line 82
    :goto_0
    if-eqz v1, :cond_6

    .line 83
    .line 84
    iget-object v2, p0, Ly2/l;->e0:Lw2/a;

    .line 85
    .line 86
    iget-boolean v3, p0, Ly2/l;->j0:Z

    .line 87
    .line 88
    instance-of v4, v1, Ly2/A;

    .line 89
    .line 90
    if-eqz v4, :cond_1

    .line 91
    .line 92
    move-object v4, v1

    .line 93
    check-cast v4, Ly2/A;

    .line 94
    .line 95
    invoke-interface {v4}, Ly2/A;->a()V

    .line 96
    .line 97
    .line 98
    :cond_1
    iget-object v4, p0, Ly2/l;->L:Ly2/k;

    .line 99
    .line 100
    iget-object v4, v4, Ly2/k;->c:Ljava/lang/Object;

    .line 101
    .line 102
    check-cast v4, Ly2/C;

    .line 103
    .line 104
    if-eqz v4, :cond_2

    .line 105
    .line 106
    sget-object v0, Ly2/C;->K:Lm2/u;

    .line 107
    .line 108
    invoke-virtual {v0}, Lm2/u;->h()Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    check-cast v0, Ly2/C;

    .line 113
    .line 114
    const/4 v4, 0x0

    .line 115
    iput-boolean v4, v0, Ly2/C;->J:Z

    .line 116
    .line 117
    const/4 v4, 0x1

    .line 118
    iput-boolean v4, v0, Ly2/C;->I:Z

    .line 119
    .line 120
    iput-object v1, v0, Ly2/C;->H:Ly2/D;

    .line 121
    .line 122
    move-object v1, v0

    .line 123
    :cond_2
    invoke-virtual {p0}, Ly2/l;->s()V

    .line 124
    .line 125
    .line 126
    iget-object v4, p0, Ly2/l;->V:Ly2/j;

    .line 127
    .line 128
    check-cast v4, Ly2/t;

    .line 129
    .line 130
    monitor-enter v4

    .line 131
    :try_start_1
    iput-object v1, v4, Ly2/t;->W:Ly2/D;

    .line 132
    .line 133
    iput-object v2, v4, Ly2/t;->X:Lw2/a;

    .line 134
    .line 135
    iput-boolean v3, v4, Ly2/t;->e0:Z

    .line 136
    .line 137
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 138
    invoke-virtual {v4}, Ly2/t;->h()V

    .line 139
    .line 140
    .line 141
    const/4 v1, 0x5

    .line 142
    iput v1, p0, Ly2/l;->k0:I

    .line 143
    .line 144
    :try_start_2
    iget-object v1, p0, Ly2/l;->L:Ly2/k;

    .line 145
    .line 146
    iget-object v2, v1, Ly2/k;->c:Ljava/lang/Object;

    .line 147
    .line 148
    check-cast v2, Ly2/C;

    .line 149
    .line 150
    if-eqz v2, :cond_3

    .line 151
    .line 152
    iget-object v2, p0, Ly2/l;->J:LJ3/k;

    .line 153
    .line 154
    iget-object v3, p0, Ly2/l;->U:Lw2/l;

    .line 155
    .line 156
    invoke-virtual {v1, v2, v3}, Ly2/k;->a(LJ3/k;Lw2/l;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 157
    .line 158
    .line 159
    goto :goto_1

    .line 160
    :catchall_0
    move-exception v1

    .line 161
    goto :goto_2

    .line 162
    :cond_3
    :goto_1
    if-eqz v0, :cond_4

    .line 163
    .line 164
    invoke-virtual {v0}, Ly2/C;->a()V

    .line 165
    .line 166
    .line 167
    :cond_4
    invoke-virtual {p0}, Ly2/l;->l()V

    .line 168
    .line 169
    .line 170
    goto :goto_3

    .line 171
    :goto_2
    if-eqz v0, :cond_5

    .line 172
    .line 173
    invoke-virtual {v0}, Ly2/C;->a()V

    .line 174
    .line 175
    .line 176
    :cond_5
    throw v1

    .line 177
    :catchall_1
    move-exception v0

    .line 178
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 179
    throw v0

    .line 180
    :cond_6
    invoke-virtual {p0}, Ly2/l;->q()V

    .line 181
    .line 182
    .line 183
    :goto_3
    return-void
.end method

.method public final h()Ly2/h;
    .locals 3

    .line 1
    iget v0, p0, Ly2/l;->k0:I

    .line 2
    .line 3
    invoke-static {v0}, Lu/h;->b(I)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    iget-object v2, p0, Ly2/l;->G:Ly2/i;

    .line 9
    .line 10
    if-eq v0, v1, :cond_3

    .line 11
    .line 12
    const/4 v1, 0x2

    .line 13
    if-eq v0, v1, :cond_2

    .line 14
    .line 15
    const/4 v1, 0x3

    .line 16
    if-eq v0, v1, :cond_1

    .line 17
    .line 18
    const/4 v1, 0x5

    .line 19
    if-ne v0, v1, :cond_0

    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    return-object v0

    .line 23
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 24
    .line 25
    iget v1, p0, Ly2/l;->k0:I

    .line 26
    .line 27
    invoke-static {v1}, Lt/a;->o(I)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    const-string v2, "Unrecognized stage: "

    .line 32
    .line 33
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    throw v0

    .line 41
    :cond_1
    new-instance v0, Ly2/H;

    .line 42
    .line 43
    invoke-direct {v0, v2, p0}, Ly2/H;-><init>(Ly2/i;Ly2/g;)V

    .line 44
    .line 45
    .line 46
    return-object v0

    .line 47
    :cond_2
    new-instance v0, Ly2/e;

    .line 48
    .line 49
    invoke-virtual {v2}, Ly2/i;->a()Ljava/util/ArrayList;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-direct {v0, v1, v2, p0}, Ly2/e;-><init>(Ljava/util/List;Ly2/i;Ly2/g;)V

    .line 54
    .line 55
    .line 56
    return-object v0

    .line 57
    :cond_3
    new-instance v0, Ly2/E;

    .line 58
    .line 59
    invoke-direct {v0, v2, p0}, Ly2/E;-><init>(Ly2/i;Ly2/g;)V

    .line 60
    .line 61
    .line 62
    return-object v0
.end method

.method public final i(I)I
    .locals 4

    .line 1
    invoke-static {p1}, Lu/h;->b(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x2

    .line 6
    if-eqz v0, :cond_5

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    const/4 v3, 0x3

    .line 10
    if-eq v0, v2, :cond_4

    .line 11
    .line 12
    const/4 v2, 0x6

    .line 13
    if-eq v0, v1, :cond_2

    .line 14
    .line 15
    if-eq v0, v3, :cond_1

    .line 16
    .line 17
    const/4 v1, 0x5

    .line 18
    if-ne v0, v1, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 22
    .line 23
    invoke-static {p1}, Lt/a;->o(I)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    const-string v1, "Unrecognized stage: "

    .line 28
    .line 29
    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    throw v0

    .line 37
    :cond_1
    :goto_0
    return v2

    .line 38
    :cond_2
    iget-boolean p1, p0, Ly2/l;->Y:Z

    .line 39
    .line 40
    if-eqz p1, :cond_3

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_3
    const/4 v2, 0x4

    .line 44
    :goto_1
    return v2

    .line 45
    :cond_4
    iget-object p1, p0, Ly2/l;->T:Ly2/o;

    .line 46
    .line 47
    check-cast p1, Ly2/n;

    .line 48
    .line 49
    iget p1, p1, Ly2/n;->d:I

    .line 50
    .line 51
    packed-switch p1, :pswitch_data_0

    .line 52
    .line 53
    .line 54
    goto :goto_2

    .line 55
    :pswitch_0
    invoke-virtual {p0, v3}, Ly2/l;->i(I)I

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    :goto_2
    return v3

    .line 60
    :cond_5
    iget-object p1, p0, Ly2/l;->T:Ly2/o;

    .line 61
    .line 62
    check-cast p1, Ly2/n;

    .line 63
    .line 64
    iget p1, p1, Ly2/n;->d:I

    .line 65
    .line 66
    packed-switch p1, :pswitch_data_1

    .line 67
    .line 68
    .line 69
    goto :goto_3

    .line 70
    :pswitch_1
    invoke-virtual {p0, v1}, Ly2/l;->i(I)I

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    :goto_3
    return v1

    .line 75
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    .line 76
    .line 77
    .line 78
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public final j(JLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, " in "

    .line 2
    .line 3
    invoke-static {p3, v0}, La/r;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    .line 5
    .line 6
    move-result-object p3

    .line 7
    invoke-static {p1, p2}, LP2/i;->a(J)D

    .line 8
    .line 9
    .line 10
    move-result-wide p1

    .line 11
    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string p1, ", load key: "

    .line 15
    .line 16
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    iget-object p1, p0, Ly2/l;->Q:Ly2/v;

    .line 20
    .line 21
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    if-eqz p4, :cond_0

    .line 25
    .line 26
    const-string p1, ", "

    .line 27
    .line 28
    invoke-virtual {p1, p4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const-string p1, ""

    .line 34
    .line 35
    :goto_0
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string p1, ", thread: "

    .line 39
    .line 40
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    const-string p2, "DecodeJob"

    .line 59
    .line 60
    invoke-static {p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    .line 62
    .line 63
    return-void
.end method

.method public final k()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Ly2/l;->s()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ly2/z;

    .line 5
    .line 6
    const-string v1, "Failed to load resource"

    .line 7
    .line 8
    new-instance v2, Ljava/util/ArrayList;

    .line 9
    .line 10
    iget-object v3, p0, Ly2/l;->H:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, v1, v2}, Ly2/z;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Ly2/l;->V:Ly2/j;

    .line 19
    .line 20
    check-cast v1, Ly2/t;

    .line 21
    .line 22
    monitor-enter v1

    .line 23
    :try_start_0
    iput-object v0, v1, Ly2/t;->Z:Ly2/z;

    .line 24
    .line 25
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    invoke-virtual {v1}, Ly2/t;->g()V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Ly2/l;->m()V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :catchall_0
    move-exception v0

    .line 34
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    throw v0
.end method

.method public final l()V
    .locals 2

    .line 1
    iget-object v0, p0, Ly2/l;->M:LD0/g;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x1

    .line 5
    :try_start_0
    iput-boolean v1, v0, LD0/g;->b:Z

    .line 6
    .line 7
    invoke-virtual {v0}, LD0/g;->b()Z

    .line 8
    .line 9
    .line 10
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    monitor-exit v0

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0}, Ly2/l;->o()V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void

    .line 18
    :catchall_0
    move-exception v1

    .line 19
    monitor-exit v0

    .line 20
    throw v1
.end method

.method public final m()V
    .locals 2

    .line 1
    iget-object v0, p0, Ly2/l;->M:LD0/g;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x1

    .line 5
    :try_start_0
    iput-boolean v1, v0, LD0/g;->c:Z

    .line 6
    .line 7
    invoke-virtual {v0}, LD0/g;->b()Z

    .line 8
    .line 9
    .line 10
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    monitor-exit v0

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0}, Ly2/l;->o()V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void

    .line 18
    :catchall_0
    move-exception v1

    .line 19
    monitor-exit v0

    .line 20
    throw v1
.end method

.method public final n()V
    .locals 2

    .line 1
    iget-object v0, p0, Ly2/l;->M:LD0/g;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x1

    .line 5
    :try_start_0
    iput-boolean v1, v0, LD0/g;->a:Z

    .line 6
    .line 7
    invoke-virtual {v0}, LD0/g;->b()Z

    .line 8
    .line 9
    .line 10
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    monitor-exit v0

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0}, Ly2/l;->o()V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void

    .line 18
    :catchall_0
    move-exception v1

    .line 19
    monitor-exit v0

    .line 20
    throw v1
.end method

.method public final o()V
    .locals 4

    .line 1
    iget-object v0, p0, Ly2/l;->M:LD0/g;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x0

    .line 5
    :try_start_0
    iput-boolean v1, v0, LD0/g;->b:Z

    .line 6
    .line 7
    iput-boolean v1, v0, LD0/g;->a:Z

    .line 8
    .line 9
    iput-boolean v1, v0, LD0/g;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    .line 11
    monitor-exit v0

    .line 12
    iget-object v0, p0, Ly2/l;->L:Ly2/k;

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    iput-object v2, v0, Ly2/k;->a:Ljava/lang/Object;

    .line 16
    .line 17
    iput-object v2, v0, Ly2/k;->b:Ljava/lang/Object;

    .line 18
    .line 19
    iput-object v2, v0, Ly2/k;->c:Ljava/lang/Object;

    .line 20
    .line 21
    iget-object v0, p0, Ly2/l;->G:Ly2/i;

    .line 22
    .line 23
    iput-object v2, v0, Ly2/i;->c:Lcom/bumptech/glide/f;

    .line 24
    .line 25
    iput-object v2, v0, Ly2/i;->d:Ljava/lang/Object;

    .line 26
    .line 27
    iput-object v2, v0, Ly2/i;->n:Lw2/i;

    .line 28
    .line 29
    iput-object v2, v0, Ly2/i;->g:Ljava/lang/Class;

    .line 30
    .line 31
    iput-object v2, v0, Ly2/i;->k:Ljava/lang/Class;

    .line 32
    .line 33
    iput-object v2, v0, Ly2/i;->i:Lw2/l;

    .line 34
    .line 35
    iput-object v2, v0, Ly2/i;->o:Lcom/bumptech/glide/g;

    .line 36
    .line 37
    iput-object v2, v0, Ly2/i;->j:Ljava/util/Map;

    .line 38
    .line 39
    iput-object v2, v0, Ly2/i;->p:Ly2/o;

    .line 40
    .line 41
    iget-object v3, v0, Ly2/i;->a:Ljava/util/ArrayList;

    .line 42
    .line 43
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 44
    .line 45
    .line 46
    iput-boolean v1, v0, Ly2/i;->l:Z

    .line 47
    .line 48
    iget-object v3, v0, Ly2/i;->b:Ljava/util/ArrayList;

    .line 49
    .line 50
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 51
    .line 52
    .line 53
    iput-boolean v1, v0, Ly2/i;->m:Z

    .line 54
    .line 55
    iput-boolean v1, p0, Ly2/l;->h0:Z

    .line 56
    .line 57
    iput-object v2, p0, Ly2/l;->N:Lcom/bumptech/glide/f;

    .line 58
    .line 59
    iput-object v2, p0, Ly2/l;->O:Lw2/i;

    .line 60
    .line 61
    iput-object v2, p0, Ly2/l;->U:Lw2/l;

    .line 62
    .line 63
    iput-object v2, p0, Ly2/l;->P:Lcom/bumptech/glide/g;

    .line 64
    .line 65
    iput-object v2, p0, Ly2/l;->Q:Ly2/v;

    .line 66
    .line 67
    iput-object v2, p0, Ly2/l;->V:Ly2/j;

    .line 68
    .line 69
    iput v1, p0, Ly2/l;->k0:I

    .line 70
    .line 71
    iput-object v2, p0, Ly2/l;->g0:Ly2/h;

    .line 72
    .line 73
    iput-object v2, p0, Ly2/l;->a0:Ljava/lang/Thread;

    .line 74
    .line 75
    iput-object v2, p0, Ly2/l;->b0:Lw2/i;

    .line 76
    .line 77
    iput-object v2, p0, Ly2/l;->d0:Ljava/lang/Object;

    .line 78
    .line 79
    iput-object v2, p0, Ly2/l;->e0:Lw2/a;

    .line 80
    .line 81
    iput-object v2, p0, Ly2/l;->f0:Lcom/bumptech/glide/load/data/e;

    .line 82
    .line 83
    const-wide/16 v2, 0x0

    .line 84
    .line 85
    iput-wide v2, p0, Ly2/l;->X:J

    .line 86
    .line 87
    iput-boolean v1, p0, Ly2/l;->i0:Z

    .line 88
    .line 89
    iget-object v0, p0, Ly2/l;->H:Ljava/util/ArrayList;

    .line 90
    .line 91
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 92
    .line 93
    .line 94
    iget-object v0, p0, Ly2/l;->K:LM/c;

    .line 95
    .line 96
    invoke-interface {v0, p0}, LM/c;->a(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    return-void

    .line 100
    :catchall_0
    move-exception v1

    .line 101
    monitor-exit v0

    .line 102
    throw v1
.end method

.method public final p(I)V
    .locals 1

    .line 1
    iput p1, p0, Ly2/l;->l0:I

    .line 2
    .line 3
    iget-object p1, p0, Ly2/l;->V:Ly2/j;

    .line 4
    .line 5
    check-cast p1, Ly2/t;

    .line 6
    .line 7
    iget-boolean v0, p1, Ly2/t;->T:Z

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object p1, p1, Ly2/t;->O:LB2/c;

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-boolean v0, p1, Ly2/t;->U:Z

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    iget-object p1, p1, Ly2/t;->P:LB2/c;

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    iget-object p1, p1, Ly2/t;->N:LB2/c;

    .line 22
    .line 23
    :goto_0
    invoke-virtual {p1, p0}, LB2/c;->execute(Ljava/lang/Runnable;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public final q()V
    .locals 3

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Ly2/l;->a0:Ljava/lang/Thread;

    .line 6
    .line 7
    sget v0, LP2/i;->b:I

    .line 8
    .line 9
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    iput-wide v0, p0, Ly2/l;->X:J

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    :cond_0
    iget-boolean v1, p0, Ly2/l;->i0:Z

    .line 17
    .line 18
    if-nez v1, :cond_1

    .line 19
    .line 20
    iget-object v1, p0, Ly2/l;->g0:Ly2/h;

    .line 21
    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    iget-object v0, p0, Ly2/l;->g0:Ly2/h;

    .line 25
    .line 26
    invoke-interface {v0}, Ly2/h;->c()Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-nez v0, :cond_1

    .line 31
    .line 32
    iget v1, p0, Ly2/l;->k0:I

    .line 33
    .line 34
    invoke-virtual {p0, v1}, Ly2/l;->i(I)I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    iput v1, p0, Ly2/l;->k0:I

    .line 39
    .line 40
    invoke-virtual {p0}, Ly2/l;->h()Ly2/h;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    iput-object v1, p0, Ly2/l;->g0:Ly2/h;

    .line 45
    .line 46
    iget v1, p0, Ly2/l;->k0:I

    .line 47
    .line 48
    const/4 v2, 0x4

    .line 49
    if-ne v1, v2, :cond_0

    .line 50
    .line 51
    const/4 v0, 0x2

    .line 52
    invoke-virtual {p0, v0}, Ly2/l;->p(I)V

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :cond_1
    iget v1, p0, Ly2/l;->k0:I

    .line 57
    .line 58
    const/4 v2, 0x6

    .line 59
    if-eq v1, v2, :cond_2

    .line 60
    .line 61
    iget-boolean v1, p0, Ly2/l;->i0:Z

    .line 62
    .line 63
    if-eqz v1, :cond_3

    .line 64
    .line 65
    :cond_2
    if-nez v0, :cond_3

    .line 66
    .line 67
    invoke-virtual {p0}, Ly2/l;->k()V

    .line 68
    .line 69
    .line 70
    :cond_3
    return-void
.end method

.method public final r()V
    .locals 3

    .line 1
    iget v0, p0, Ly2/l;->l0:I

    .line 2
    .line 3
    invoke-static {v0}, Lu/h;->b(I)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-eqz v0, :cond_2

    .line 9
    .line 10
    if-eq v0, v1, :cond_1

    .line 11
    .line 12
    const/4 v1, 0x2

    .line 13
    if-ne v0, v1, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0}, Ly2/l;->g()V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 20
    .line 21
    iget v1, p0, Ly2/l;->l0:I

    .line 22
    .line 23
    invoke-static {v1}, Lt/a;->n(I)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    const-string v2, "Unrecognized run reason: "

    .line 28
    .line 29
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    throw v0

    .line 37
    :cond_1
    invoke-virtual {p0}, Ly2/l;->q()V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_2
    invoke-virtual {p0, v1}, Ly2/l;->i(I)I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    iput v0, p0, Ly2/l;->k0:I

    .line 46
    .line 47
    invoke-virtual {p0}, Ly2/l;->h()Ly2/h;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    iput-object v0, p0, Ly2/l;->g0:Ly2/h;

    .line 52
    .line 53
    invoke-virtual {p0}, Ly2/l;->q()V

    .line 54
    .line 55
    .line 56
    :goto_0
    return-void
.end method

.method public final run()V
    .locals 5

    .line 1
    const-string v0, "DecodeJob"

    .line 2
    .line 3
    const-string v1, "DecodeJob threw unexpectedly, isCancelled: "

    .line 4
    .line 5
    iget-object v2, p0, Ly2/l;->f0:Lcom/bumptech/glide/load/data/e;

    .line 6
    .line 7
    :try_start_0
    iget-boolean v3, p0, Ly2/l;->i0:Z

    .line 8
    .line 9
    if-eqz v3, :cond_1

    .line 10
    .line 11
    invoke-virtual {p0}, Ly2/l;->k()V
    :try_end_0
    .catch Ly2/d; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    .line 13
    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    invoke-interface {v2}, Lcom/bumptech/glide/load/data/e;->c()V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void

    .line 20
    :catchall_0
    move-exception v3

    .line 21
    goto :goto_0

    .line 22
    :catch_0
    move-exception v0

    .line 23
    goto :goto_2

    .line 24
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Ly2/l;->r()V
    :try_end_1
    .catch Ly2/d; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 25
    .line 26
    .line 27
    if-eqz v2, :cond_2

    .line 28
    .line 29
    invoke-interface {v2}, Lcom/bumptech/glide/load/data/e;->c()V

    .line 30
    .line 31
    .line 32
    :cond_2
    return-void

    .line 33
    :goto_0
    const/4 v4, 0x3

    .line 34
    :try_start_2
    invoke-static {v0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    if-eqz v4, :cond_3

    .line 39
    .line 40
    new-instance v4, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    iget-boolean v1, p0, Ly2/l;->i0:Z

    .line 46
    .line 47
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string v1, ", stage: "

    .line 51
    .line 52
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    iget v1, p0, Ly2/l;->k0:I

    .line 56
    .line 57
    invoke-static {v1}, Lt/a;->o(I)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-static {v0, v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 69
    .line 70
    .line 71
    goto :goto_1

    .line 72
    :catchall_1
    move-exception v0

    .line 73
    goto :goto_3

    .line 74
    :cond_3
    :goto_1
    iget v0, p0, Ly2/l;->k0:I

    .line 75
    .line 76
    const/4 v1, 0x5

    .line 77
    if-eq v0, v1, :cond_4

    .line 78
    .line 79
    iget-object v0, p0, Ly2/l;->H:Ljava/util/ArrayList;

    .line 80
    .line 81
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0}, Ly2/l;->k()V

    .line 85
    .line 86
    .line 87
    :cond_4
    iget-boolean v0, p0, Ly2/l;->i0:Z

    .line 88
    .line 89
    if-nez v0, :cond_5

    .line 90
    .line 91
    throw v3

    .line 92
    :cond_5
    throw v3

    .line 93
    :goto_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 94
    :goto_3
    if-eqz v2, :cond_6

    .line 95
    .line 96
    invoke-interface {v2}, Lcom/bumptech/glide/load/data/e;->c()V

    .line 97
    .line 98
    .line 99
    :cond_6
    throw v0
.end method

.method public final s()V
    .locals 3

    .line 1
    iget-object v0, p0, Ly2/l;->I:LQ2/e;

    .line 2
    .line 3
    invoke-virtual {v0}, LQ2/e;->a()V

    .line 4
    .line 5
    .line 6
    iget-boolean v0, p0, Ly2/l;->h0:Z

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, Ly2/l;->H:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget-object v0, p0, Ly2/l;->H:Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-static {v0, v1}, Lcom/google/protobuf/U2;->g(Ljava/util/ArrayList;I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Ljava/lang/Throwable;

    .line 28
    .line 29
    :goto_0
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 30
    .line 31
    const-string v2, "Already notified"

    .line 32
    .line 33
    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 34
    .line 35
    .line 36
    throw v1

    .line 37
    :cond_1
    iput-boolean v1, p0, Ly2/l;->h0:Z

    .line 38
    .line 39
    return-void
.end method
