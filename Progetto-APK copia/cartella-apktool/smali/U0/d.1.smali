.class public final LU0/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LU0/S;


# instance fields
.field public final G:LU0/E;

.field public final H:LU0/K;

.field public final I:Ljava/util/ArrayDeque;

.field public J:Landroid/view/Surface;

.field public K:Lm0/t;

.field public L:J

.field public M:LU0/O;

.field public N:Ljava/util/concurrent/Executor;

.field public O:LU0/B;


# direct methods
.method public constructor <init>(LU0/E;Lp0/f;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LU0/d;->G:LU0/E;

    .line 5
    .line 6
    iput-object p2, p1, LU0/E;->l:Lp0/f;

    .line 7
    .line 8
    new-instance p2, LU0/K;

    .line 9
    .line 10
    new-instance v0, Lm2/l;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-direct {v0, p0, v1}, Lm2/l;-><init>(LU0/d;I)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p2, v0, p1}, LU0/K;-><init>(Lm2/l;LU0/E;)V

    .line 17
    .line 18
    .line 19
    iput-object p2, p0, LU0/d;->H:LU0/K;

    .line 20
    .line 21
    new-instance p1, Ljava/util/ArrayDeque;

    .line 22
    .line 23
    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object p1, p0, LU0/d;->I:Ljava/util/ArrayDeque;

    .line 27
    .line 28
    new-instance p1, Lm0/s;

    .line 29
    .line 30
    invoke-direct {p1}, Lm0/s;-><init>()V

    .line 31
    .line 32
    .line 33
    new-instance p2, Lm0/t;

    .line 34
    .line 35
    invoke-direct {p2, p1}, Lm0/t;-><init>(Lm0/s;)V

    .line 36
    .line 37
    .line 38
    iput-object p2, p0, LU0/d;->K:Lm0/t;

    .line 39
    .line 40
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    iput-wide p1, p0, LU0/d;->L:J

    .line 46
    .line 47
    sget-object p1, LU0/O;->k:LU4/b;

    .line 48
    .line 49
    iput-object p1, p0, LU0/d;->M:LU0/O;

    .line 50
    .line 51
    new-instance p1, Lm/a;

    .line 52
    .line 53
    const/4 p2, 0x2

    .line 54
    invoke-direct {p1, p2}, Lm/a;-><init>(I)V

    .line 55
    .line 56
    .line 57
    iput-object p1, p0, LU0/d;->N:Ljava/util/concurrent/Executor;

    .line 58
    .line 59
    new-instance p1, LU0/b;

    .line 60
    .line 61
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 62
    .line 63
    .line 64
    iput-object p1, p0, LU0/d;->O:LU0/B;

    .line 65
    .line 66
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    .line 1
    iget-object v0, p0, LU0/d;->H:LU0/K;

    .line 2
    .line 3
    iget-wide v1, v0, LU0/K;->g:J

    .line 4
    .line 5
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    cmp-long v5, v1, v3

    .line 11
    .line 12
    if-nez v5, :cond_0

    .line 13
    .line 14
    const-wide/high16 v1, -0x8000000000000000L

    .line 15
    .line 16
    iput-wide v1, v0, LU0/K;->g:J

    .line 17
    .line 18
    iput-wide v1, v0, LU0/K;->h:J

    .line 19
    .line 20
    :cond_0
    iget-wide v1, v0, LU0/K;->g:J

    .line 21
    .line 22
    iput-wide v1, v0, LU0/K;->i:J

    .line 23
    .line 24
    return-void
.end method

.method public final b()Z
    .locals 6

    .line 1
    iget-object v0, p0, LU0/d;->H:LU0/K;

    .line 2
    .line 3
    iget-wide v1, v0, LU0/K;->i:J

    .line 4
    .line 5
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    cmp-long v5, v1, v3

    .line 11
    .line 12
    if-eqz v5, :cond_0

    .line 13
    .line 14
    iget-wide v3, v0, LU0/K;->h:J

    .line 15
    .line 16
    cmp-long v0, v3, v1

    .line 17
    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    const/4 v0, 0x1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
    :goto_0
    return v0
.end method

.method public final c()Landroid/view/Surface;
    .locals 1

    .line 1
    iget-object v0, p0, LU0/d;->J:Landroid/view/Surface;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/H1;->j(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public final d()V
    .locals 1

    .line 1
    iget-object v0, p0, LU0/d;->G:LU0/E;

    .line 2
    .line 3
    invoke-virtual {v0}, LU0/E;->e()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final e(IJLm0/t;Ljava/util/List;)V
    .locals 9

    .line 1
    invoke-interface {p5}, Ljava/util/List;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result p5

    .line 5
    invoke-static {p5}, Lcom/google/android/gms/internal/measurement/H1;->i(Z)V

    .line 6
    .line 7
    .line 8
    iget p5, p4, Lm0/t;->v:I

    .line 9
    .line 10
    iget-object v0, p0, LU0/d;->K:Lm0/t;

    .line 11
    .line 12
    iget v1, v0, Lm0/t;->v:I

    .line 13
    .line 14
    const-wide/16 v2, 0x1

    .line 15
    .line 16
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    iget-object v6, p0, LU0/d;->H:LU0/K;

    .line 22
    .line 23
    iget v7, p4, Lm0/t;->w:I

    .line 24
    .line 25
    if-ne p5, v1, :cond_0

    .line 26
    .line 27
    iget v0, v0, Lm0/t;->w:I

    .line 28
    .line 29
    if-eq v7, v0, :cond_2

    .line 30
    .line 31
    :cond_0
    iget-wide v0, v6, LU0/K;->g:J

    .line 32
    .line 33
    cmp-long v8, v0, v4

    .line 34
    .line 35
    if-nez v8, :cond_1

    .line 36
    .line 37
    const-wide/16 v0, 0x0

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    add-long/2addr v0, v2

    .line 41
    :goto_0
    new-instance v8, Lm0/w0;

    .line 42
    .line 43
    invoke-direct {v8, p5, v7}, Lm0/w0;-><init>(II)V

    .line 44
    .line 45
    .line 46
    iget-object p5, v6, LU0/K;->d:Lc/g;

    .line 47
    .line 48
    invoke-virtual {p5, v8, v0, v1}, Lc/g;->b(Ljava/lang/Object;J)V

    .line 49
    .line 50
    .line 51
    :cond_2
    iget-object p5, p0, LU0/d;->K:Lm0/t;

    .line 52
    .line 53
    iget p5, p5, Lm0/t;->z:F

    .line 54
    .line 55
    iget v0, p4, Lm0/t;->z:F

    .line 56
    .line 57
    cmpl-float p5, v0, p5

    .line 58
    .line 59
    if-eqz p5, :cond_3

    .line 60
    .line 61
    iget-object p5, p0, LU0/d;->G:LU0/E;

    .line 62
    .line 63
    invoke-virtual {p5, v0}, LU0/E;->g(F)V

    .line 64
    .line 65
    .line 66
    :cond_3
    iput-object p4, p0, LU0/d;->K:Lm0/t;

    .line 67
    .line 68
    iget-wide p4, p0, LU0/d;->L:J

    .line 69
    .line 70
    cmp-long v0, p2, p4

    .line 71
    .line 72
    if-eqz v0, :cond_6

    .line 73
    .line 74
    iget-object p4, v6, LU0/K;->f:Lp0/z;

    .line 75
    .line 76
    iget p4, p4, Lp0/z;->c:I

    .line 77
    .line 78
    if-nez p4, :cond_4

    .line 79
    .line 80
    iget-object p4, v6, LU0/K;->b:LU0/E;

    .line 81
    .line 82
    invoke-virtual {p4, p1}, LU0/E;->f(I)V

    .line 83
    .line 84
    .line 85
    iput-wide p2, v6, LU0/K;->k:J

    .line 86
    .line 87
    goto :goto_2

    .line 88
    :cond_4
    iget-wide p4, v6, LU0/K;->g:J

    .line 89
    .line 90
    cmp-long p1, p4, v4

    .line 91
    .line 92
    if-nez p1, :cond_5

    .line 93
    .line 94
    const-wide/high16 p4, -0x4000000000000000L    # -2.0

    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_5
    add-long/2addr p4, v2

    .line 98
    :goto_1
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    iget-object v0, v6, LU0/K;->e:Lc/g;

    .line 103
    .line 104
    invoke-virtual {v0, p1, p4, p5}, Lc/g;->b(Ljava/lang/Object;J)V

    .line 105
    .line 106
    .line 107
    :goto_2
    iput-wide p2, p0, LU0/d;->L:J

    .line 108
    .line 109
    :cond_6
    return-void
.end method

.method public final f()V
    .locals 1

    .line 1
    iget-object v0, p0, LU0/d;->G:LU0/E;

    .line 2
    .line 3
    invoke-virtual {v0}, LU0/E;->d()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final g(J)V
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw p1
.end method

.method public final h(I)V
    .locals 2

    .line 1
    iget-object v0, p0, LU0/d;->G:LU0/E;

    .line 2
    .line 3
    iget-object v0, v0, LU0/E;->b:LU0/I;

    .line 4
    .line 5
    iget v1, v0, LU0/I;->g:I

    .line 6
    .line 7
    if-ne v1, p1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iput p1, v0, LU0/I;->g:I

    .line 11
    .line 12
    const/4 p1, 0x1

    .line 13
    invoke-virtual {v0, p1}, LU0/I;->d(Z)V

    .line 14
    .line 15
    .line 16
    :goto_0
    return-void
.end method

.method public final i()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, LU0/d;->J:Landroid/view/Surface;

    .line 3
    .line 4
    iget-object v1, p0, LU0/d;->G:LU0/E;

    .line 5
    .line 6
    invoke-virtual {v1, v0}, LU0/E;->h(Landroid/view/Surface;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final isInitialized()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public final j(LD0/U;)V
    .locals 1

    .line 1
    sget-object v0, LD4/a;->G:LD4/a;

    .line 2
    .line 3
    iput-object p1, p0, LU0/d;->M:LU0/O;

    .line 4
    .line 5
    iput-object v0, p0, LU0/d;->N:Ljava/util/concurrent/Executor;

    .line 6
    .line 7
    return-void
.end method

.method public final k(Z)V
    .locals 8

    .line 1
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    const-wide/16 v2, 0x0

    .line 7
    .line 8
    const/4 v4, 0x1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, LU0/d;->G:LU0/E;

    .line 12
    .line 13
    iget-object v5, p1, LU0/E;->b:LU0/I;

    .line 14
    .line 15
    iput-wide v2, v5, LU0/I;->j:J

    .line 16
    .line 17
    const-wide/16 v6, -0x1

    .line 18
    .line 19
    iput-wide v6, v5, LU0/I;->m:J

    .line 20
    .line 21
    iput-wide v6, v5, LU0/I;->k:J

    .line 22
    .line 23
    iput-wide v0, p1, LU0/E;->h:J

    .line 24
    .line 25
    iput-wide v0, p1, LU0/E;->f:J

    .line 26
    .line 27
    iget v5, p1, LU0/E;->e:I

    .line 28
    .line 29
    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    .line 30
    .line 31
    .line 32
    move-result v5

    .line 33
    iput v5, p1, LU0/E;->e:I

    .line 34
    .line 35
    iput-wide v0, p1, LU0/E;->i:J

    .line 36
    .line 37
    :cond_0
    iget-object p1, p0, LU0/d;->H:LU0/K;

    .line 38
    .line 39
    iget-object v5, p1, LU0/K;->f:Lp0/z;

    .line 40
    .line 41
    const/4 v6, 0x0

    .line 42
    iput v6, v5, Lp0/z;->a:I

    .line 43
    .line 44
    const/4 v7, -0x1

    .line 45
    iput v7, v5, Lp0/z;->b:I

    .line 46
    .line 47
    iput v6, v5, Lp0/z;->c:I

    .line 48
    .line 49
    iput-wide v0, p1, LU0/K;->g:J

    .line 50
    .line 51
    iput-wide v0, p1, LU0/K;->h:J

    .line 52
    .line 53
    iput-wide v0, p1, LU0/K;->i:J

    .line 54
    .line 55
    iget-object v0, p1, LU0/K;->e:Lc/g;

    .line 56
    .line 57
    invoke-virtual {v0}, Lc/g;->m()I

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-lez v1, :cond_3

    .line 62
    .line 63
    invoke-virtual {v0}, Lc/g;->m()I

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    if-lez v1, :cond_1

    .line 68
    .line 69
    const/4 v1, 0x1

    .line 70
    goto :goto_0

    .line 71
    :cond_1
    const/4 v1, 0x0

    .line 72
    :goto_0
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/H1;->d(Z)V

    .line 73
    .line 74
    .line 75
    :goto_1
    invoke-virtual {v0}, Lc/g;->m()I

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    if-le v1, v4, :cond_2

    .line 80
    .line 81
    invoke-virtual {v0}, Lc/g;->j()Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_2
    invoke-virtual {v0}, Lc/g;->j()Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 90
    .line 91
    .line 92
    check-cast v0, Ljava/lang/Long;

    .line 93
    .line 94
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 95
    .line 96
    .line 97
    move-result-wide v0

    .line 98
    iput-wide v0, p1, LU0/K;->k:J

    .line 99
    .line 100
    :cond_3
    iget-object p1, p1, LU0/K;->d:Lc/g;

    .line 101
    .line 102
    invoke-virtual {p1}, Lc/g;->m()I

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    if-lez v0, :cond_6

    .line 107
    .line 108
    invoke-virtual {p1}, Lc/g;->m()I

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    if-lez v0, :cond_4

    .line 113
    .line 114
    const/4 v6, 0x1

    .line 115
    :cond_4
    invoke-static {v6}, Lcom/google/android/gms/internal/measurement/H1;->d(Z)V

    .line 116
    .line 117
    .line 118
    :goto_2
    invoke-virtual {p1}, Lc/g;->m()I

    .line 119
    .line 120
    .line 121
    move-result v0

    .line 122
    if-le v0, v4, :cond_5

    .line 123
    .line 124
    invoke-virtual {p1}, Lc/g;->j()Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    goto :goto_2

    .line 128
    :cond_5
    invoke-virtual {p1}, Lc/g;->j()Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 133
    .line 134
    .line 135
    check-cast v0, Lm0/w0;

    .line 136
    .line 137
    invoke-virtual {p1, v0, v2, v3}, Lc/g;->b(Ljava/lang/Object;J)V

    .line 138
    .line 139
    .line 140
    :cond_6
    iget-object p1, p0, LU0/d;->I:Ljava/util/ArrayDeque;

    .line 141
    .line 142
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->clear()V

    .line 143
    .line 144
    .line 145
    return-void
.end method

.method public final l(Lm0/t;)Z
    .locals 0

    .line 1
    const/4 p1, 0x1

    .line 2
    return p1
.end method

.method public final m(Ljava/util/List;)V
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw p1
.end method

.method public final n(Landroid/view/Surface;Lp0/F;)V
    .locals 0

    .line 1
    iput-object p1, p0, LU0/d;->J:Landroid/view/Surface;

    .line 2
    .line 3
    iget-object p2, p0, LU0/d;->G:LU0/E;

    .line 4
    .line 5
    invoke-virtual {p2, p1}, LU0/E;->h(Landroid/view/Surface;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final o(JJ)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, LU0/d;->H:LU0/K;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3, p4}, LU0/K;->a(JJ)V
    :try_end_0
    .catch LB0/w; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :catch_0
    move-exception p1

    .line 8
    new-instance p2, LU0/Q;

    .line 9
    .line 10
    iget-object p3, p0, LU0/d;->K:Lm0/t;

    .line 11
    .line 12
    invoke-direct {p2, p1, p3}, LU0/Q;-><init>(Ljava/lang/Exception;Lm0/t;)V

    .line 13
    .line 14
    .line 15
    throw p2
.end method

.method public final p(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, LU0/d;->G:LU0/E;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, LU0/E;->c(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final q(Z)Z
    .locals 1

    .line 1
    iget-object v0, p0, LU0/d;->G:LU0/E;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, LU0/E;->b(Z)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final r(JLU0/P;)Z
    .locals 1

    .line 1
    iget-object v0, p0, LU0/d;->I:Ljava/util/ArrayDeque;

    .line 2
    .line 3
    invoke-virtual {v0, p3}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    iget-object p3, p0, LU0/d;->H:LU0/K;

    .line 7
    .line 8
    iget-object v0, p3, LU0/K;->f:Lp0/z;

    .line 9
    .line 10
    invoke-virtual {v0, p1, p2}, Lp0/z;->d(J)V

    .line 11
    .line 12
    .line 13
    iput-wide p1, p3, LU0/K;->g:J

    .line 14
    .line 15
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    iput-wide p1, p3, LU0/K;->i:J

    .line 21
    .line 22
    iget-object p1, p0, LU0/d;->N:Ljava/util/concurrent/Executor;

    .line 23
    .line 24
    new-instance p2, La/b;

    .line 25
    .line 26
    const/16 p3, 0x13

    .line 27
    .line 28
    invoke-direct {p2, p0, p3}, La/b;-><init>(Ljava/lang/Object;I)V

    .line 29
    .line 30
    .line 31
    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 32
    .line 33
    .line 34
    const/4 p1, 0x1

    .line 35
    return p1
.end method

.method public final release()V
    .locals 0

    .line 1
    return-void
.end method

.method public final s()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw v0
.end method

.method public final setPlaybackSpeed(F)V
    .locals 1

    .line 1
    iget-object v0, p0, LU0/d;->G:LU0/E;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, LU0/E;->i(F)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final t(LU0/B;)V
    .locals 0

    .line 1
    iput-object p1, p0, LU0/d;->O:LU0/B;

    .line 2
    .line 3
    return-void
.end method

.method public final u()V
    .locals 2

    .line 1
    iget-object v0, p0, LU0/d;->G:LU0/E;

    .line 2
    .line 3
    iget v1, v0, LU0/E;->e:I

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    iput v1, v0, LU0/E;->e:I

    .line 9
    .line 10
    :cond_0
    return-void
.end method
