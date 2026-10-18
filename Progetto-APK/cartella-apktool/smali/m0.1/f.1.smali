.class public abstract Lm0/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm0/Y;


# instance fields
.field public final G:Lm0/e0;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lm0/e0;

    .line 5
    .line 6
    invoke-direct {v0}, Lm0/e0;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lm0/f;->G:Lm0/e0;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final a()J
    .locals 5

    .line 1
    move-object v0, p0

    .line 2
    check-cast v0, LB0/O;

    .line 3
    .line 4
    invoke-virtual {v0}, LB0/O;->x()Lm0/f0;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    invoke-virtual {v1}, Lm0/f0;->q()Z

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {v0}, LB0/O;->t()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    const-wide/16 v2, 0x0

    .line 25
    .line 26
    iget-object v4, p0, Lm0/f;->G:Lm0/e0;

    .line 27
    .line 28
    invoke-virtual {v1, v0, v4, v2, v3}, Lm0/f0;->n(ILm0/e0;J)Lm0/e0;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iget-wide v0, v0, Lm0/e0;->m:J

    .line 33
    .line 34
    invoke-static {v0, v1}, Lp0/M;->e0(J)J

    .line 35
    .line 36
    .line 37
    move-result-wide v0

    .line 38
    :goto_0
    return-wide v0
.end method

.method public final b(I)V
    .locals 3

    .line 1
    const/4 p1, 0x0

    .line 2
    const/4 v0, -0x1

    .line 3
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0, v1, v2, p1}, Lm0/f;->i(IJZ)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final c(I)Z
    .locals 1

    .line 1
    move-object v0, p0

    .line 2
    check-cast v0, LB0/O;

    .line 3
    .line 4
    invoke-virtual {v0}, LB0/O;->c0()V

    .line 5
    .line 6
    .line 7
    iget-object v0, v0, LB0/O;->t0:Lm0/U;

    .line 8
    .line 9
    iget-object v0, v0, Lm0/U;->a:Lm0/r;

    .line 10
    .line 11
    iget-object v0, v0, Lm0/r;->a:Landroid/util/SparseBooleanArray;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    return p1
.end method

.method public final d()Z
    .locals 5

    .line 1
    move-object v0, p0

    .line 2
    check-cast v0, LB0/O;

    .line 3
    .line 4
    invoke-virtual {v0}, LB0/O;->x()Lm0/f0;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    invoke-virtual {v1}, Lm0/f0;->q()Z

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    if-nez v2, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0}, LB0/O;->t()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const-wide/16 v2, 0x0

    .line 19
    .line 20
    iget-object v4, p0, Lm0/f;->G:Lm0/e0;

    .line 21
    .line 22
    invoke-virtual {v1, v0, v4, v2, v3}, Lm0/f0;->n(ILm0/e0;J)Lm0/e0;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iget-boolean v0, v0, Lm0/e0;->i:Z

    .line 27
    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    const/4 v0, 0x1

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const/4 v0, 0x0

    .line 33
    :goto_0
    return v0
.end method

.method public final e()Z
    .locals 5

    .line 1
    move-object v0, p0

    .line 2
    check-cast v0, LB0/O;

    .line 3
    .line 4
    invoke-virtual {v0}, LB0/O;->x()Lm0/f0;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    invoke-virtual {v1}, Lm0/f0;->q()Z

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    if-nez v2, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0}, LB0/O;->t()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const-wide/16 v2, 0x0

    .line 19
    .line 20
    iget-object v4, p0, Lm0/f;->G:Lm0/e0;

    .line 21
    .line 22
    invoke-virtual {v1, v0, v4, v2, v3}, Lm0/f0;->n(ILm0/e0;J)Lm0/e0;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0}, Lm0/e0;->a()Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    const/4 v0, 0x1

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const/4 v0, 0x0

    .line 35
    :goto_0
    return v0
.end method

.method public final f()Z
    .locals 5

    .line 1
    move-object v0, p0

    .line 2
    check-cast v0, LB0/O;

    .line 3
    .line 4
    invoke-virtual {v0}, LB0/O;->x()Lm0/f0;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    invoke-virtual {v1}, Lm0/f0;->q()Z

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    if-nez v2, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0}, LB0/O;->t()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const-wide/16 v2, 0x0

    .line 19
    .line 20
    iget-object v4, p0, Lm0/f;->G:Lm0/e0;

    .line 21
    .line 22
    invoke-virtual {v1, v0, v4, v2, v3}, Lm0/f0;->n(ILm0/e0;J)Lm0/e0;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iget-boolean v0, v0, Lm0/e0;->h:Z

    .line 27
    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    const/4 v0, 0x1

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const/4 v0, 0x0

    .line 33
    :goto_0
    return v0
.end method

.method public final g()Z
    .locals 3

    .line 1
    move-object v0, p0

    .line 2
    check-cast v0, LB0/O;

    .line 3
    .line 4
    invoke-virtual {v0}, LB0/O;->C()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    const/4 v2, 0x3

    .line 9
    if-ne v1, v2, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, LB0/O;->B()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0}, LB0/O;->c0()V

    .line 18
    .line 19
    .line 20
    iget-object v0, v0, LB0/O;->N0:LB0/v0;

    .line 21
    .line 22
    iget v0, v0, LB0/v0;->n:I

    .line 23
    .line 24
    if-nez v0, :cond_0

    .line 25
    .line 26
    const/4 v0, 0x1

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 v0, 0x0

    .line 29
    :goto_0
    return v0
.end method

.method public final h()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    move-object v1, p0

    .line 3
    check-cast v1, LB0/O;

    .line 4
    .line 5
    invoke-virtual {v1, v0}, LB0/O;->S(Z)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public abstract i(IJZ)V
.end method

.method public final j(IJ)V
    .locals 1

    .line 1
    move-object p1, p0

    .line 2
    check-cast p1, LB0/O;

    .line 3
    .line 4
    invoke-virtual {p1}, LB0/O;->t()I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-virtual {p0, p1, p2, p3, v0}, Lm0/f;->i(IJZ)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final k()V
    .locals 11

    .line 1
    move-object v0, p0

    .line 2
    check-cast v0, LB0/O;

    .line 3
    .line 4
    invoke-virtual {v0}, LB0/O;->x()Lm0/f0;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    invoke-virtual {v1}, Lm0/f0;->q()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    const/16 v2, 0x9

    .line 13
    .line 14
    if-nez v1, :cond_9

    .line 15
    .line 16
    invoke-virtual {v0}, LB0/O;->F()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    goto/16 :goto_3

    .line 23
    .line 24
    :cond_0
    invoke-virtual {v0}, LB0/O;->x()Lm0/f0;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v1}, Lm0/f0;->q()Z

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    const/4 v6, 0x0

    .line 38
    if-eqz v3, :cond_1

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_1
    invoke-virtual {v0}, LB0/O;->t()I

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    invoke-virtual {v0}, LB0/O;->c0()V

    .line 46
    .line 47
    .line 48
    iget v7, v0, LB0/O;->k0:I

    .line 49
    .line 50
    const/4 v8, 0x1

    .line 51
    if-ne v7, v8, :cond_2

    .line 52
    .line 53
    const/4 v7, 0x0

    .line 54
    :cond_2
    invoke-virtual {v0}, LB0/O;->c0()V

    .line 55
    .line 56
    .line 57
    iget-boolean v9, v0, LB0/O;->l0:Z

    .line 58
    .line 59
    invoke-virtual {v1, v9, v3, v7}, Lm0/f0;->e(ZII)I

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    const/4 v3, -0x1

    .line 64
    if-eq v1, v3, :cond_7

    .line 65
    .line 66
    invoke-virtual {v0}, LB0/O;->x()Lm0/f0;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-virtual {v1}, Lm0/f0;->q()Z

    .line 71
    .line 72
    .line 73
    move-result v7

    .line 74
    if-eqz v7, :cond_3

    .line 75
    .line 76
    const/4 v1, -0x1

    .line 77
    goto :goto_0

    .line 78
    :cond_3
    invoke-virtual {v0}, LB0/O;->t()I

    .line 79
    .line 80
    .line 81
    move-result v7

    .line 82
    invoke-virtual {v0}, LB0/O;->c0()V

    .line 83
    .line 84
    .line 85
    iget v9, v0, LB0/O;->k0:I

    .line 86
    .line 87
    if-ne v9, v8, :cond_4

    .line 88
    .line 89
    const/4 v9, 0x0

    .line 90
    :cond_4
    invoke-virtual {v0}, LB0/O;->c0()V

    .line 91
    .line 92
    .line 93
    iget-boolean v10, v0, LB0/O;->l0:Z

    .line 94
    .line 95
    invoke-virtual {v1, v10, v7, v9}, Lm0/f0;->e(ZII)I

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    :goto_0
    if-ne v1, v3, :cond_5

    .line 100
    .line 101
    invoke-virtual {p0, v2}, Lm0/f;->b(I)V

    .line 102
    .line 103
    .line 104
    goto :goto_2

    .line 105
    :cond_5
    invoke-virtual {v0}, LB0/O;->t()I

    .line 106
    .line 107
    .line 108
    move-result v2

    .line 109
    if-ne v1, v2, :cond_6

    .line 110
    .line 111
    invoke-virtual {v0}, LB0/O;->t()I

    .line 112
    .line 113
    .line 114
    move-result v0

    .line 115
    invoke-virtual {p0, v0, v4, v5, v8}, Lm0/f;->i(IJZ)V

    .line 116
    .line 117
    .line 118
    goto :goto_2

    .line 119
    :cond_6
    invoke-virtual {p0, v1, v4, v5, v6}, Lm0/f;->i(IJZ)V

    .line 120
    .line 121
    .line 122
    goto :goto_2

    .line 123
    :cond_7
    :goto_1
    invoke-virtual {p0}, Lm0/f;->e()Z

    .line 124
    .line 125
    .line 126
    move-result v1

    .line 127
    if-eqz v1, :cond_8

    .line 128
    .line 129
    invoke-virtual {p0}, Lm0/f;->d()Z

    .line 130
    .line 131
    .line 132
    move-result v1

    .line 133
    if-eqz v1, :cond_8

    .line 134
    .line 135
    invoke-virtual {v0}, LB0/O;->t()I

    .line 136
    .line 137
    .line 138
    move-result v0

    .line 139
    invoke-virtual {p0, v0, v4, v5, v6}, Lm0/f;->i(IJZ)V

    .line 140
    .line 141
    .line 142
    goto :goto_2

    .line 143
    :cond_8
    invoke-virtual {p0, v2}, Lm0/f;->b(I)V

    .line 144
    .line 145
    .line 146
    :goto_2
    return-void

    .line 147
    :cond_9
    :goto_3
    invoke-virtual {p0, v2}, Lm0/f;->b(I)V

    .line 148
    .line 149
    .line 150
    return-void
.end method

.method public final l(IJ)V
    .locals 5

    .line 1
    move-object v0, p0

    .line 2
    check-cast v0, LB0/O;

    .line 3
    .line 4
    invoke-virtual {v0}, LB0/O;->v()J

    .line 5
    .line 6
    .line 7
    move-result-wide v1

    .line 8
    add-long/2addr v1, p2

    .line 9
    invoke-virtual {v0}, LB0/O;->A()J

    .line 10
    .line 11
    .line 12
    move-result-wide p2

    .line 13
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    cmp-long v0, p2, v3

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    invoke-static {v1, v2, p2, p3}, Ljava/lang/Math;->min(JJ)J

    .line 23
    .line 24
    .line 25
    move-result-wide v1

    .line 26
    :cond_0
    const-wide/16 p2, 0x0

    .line 27
    .line 28
    invoke-static {v1, v2, p2, p3}, Ljava/lang/Math;->max(JJ)J

    .line 29
    .line 30
    .line 31
    move-result-wide p2

    .line 32
    invoke-virtual {p0, p1, p2, p3}, Lm0/f;->j(IJ)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public final m()V
    .locals 13

    .line 1
    move-object v0, p0

    .line 2
    check-cast v0, LB0/O;

    .line 3
    .line 4
    invoke-virtual {v0}, LB0/O;->x()Lm0/f0;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    invoke-virtual {v1}, Lm0/f0;->q()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    const/4 v2, 0x7

    .line 13
    if-nez v1, :cond_f

    .line 14
    .line 15
    invoke-virtual {v0}, LB0/O;->F()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    goto/16 :goto_5

    .line 22
    .line 23
    :cond_0
    invoke-virtual {v0}, LB0/O;->x()Lm0/f0;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v1}, Lm0/f0;->q()Z

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    const/4 v4, -0x1

    .line 32
    const/4 v5, 0x1

    .line 33
    const/4 v6, 0x0

    .line 34
    if-eqz v3, :cond_1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    invoke-virtual {v0}, LB0/O;->t()I

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    invoke-virtual {v0}, LB0/O;->c0()V

    .line 42
    .line 43
    .line 44
    iget v7, v0, LB0/O;->k0:I

    .line 45
    .line 46
    if-ne v7, v5, :cond_2

    .line 47
    .line 48
    const/4 v7, 0x0

    .line 49
    :cond_2
    invoke-virtual {v0}, LB0/O;->c0()V

    .line 50
    .line 51
    .line 52
    iget-boolean v8, v0, LB0/O;->l0:Z

    .line 53
    .line 54
    invoke-virtual {v1, v8, v3, v7}, Lm0/f0;->l(ZII)I

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    if-eq v1, v4, :cond_3

    .line 59
    .line 60
    const/4 v1, 0x1

    .line 61
    goto :goto_1

    .line 62
    :cond_3
    :goto_0
    const/4 v1, 0x0

    .line 63
    :goto_1
    invoke-virtual {p0}, Lm0/f;->e()Z

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    if-eqz v3, :cond_9

    .line 73
    .line 74
    invoke-virtual {p0}, Lm0/f;->f()Z

    .line 75
    .line 76
    .line 77
    move-result v3

    .line 78
    if-nez v3, :cond_9

    .line 79
    .line 80
    if-eqz v1, :cond_8

    .line 81
    .line 82
    invoke-virtual {v0}, LB0/O;->x()Lm0/f0;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    invoke-virtual {v1}, Lm0/f0;->q()Z

    .line 87
    .line 88
    .line 89
    move-result v3

    .line 90
    if-eqz v3, :cond_4

    .line 91
    .line 92
    const/4 v1, -0x1

    .line 93
    goto :goto_2

    .line 94
    :cond_4
    invoke-virtual {v0}, LB0/O;->t()I

    .line 95
    .line 96
    .line 97
    move-result v3

    .line 98
    invoke-virtual {v0}, LB0/O;->c0()V

    .line 99
    .line 100
    .line 101
    iget v9, v0, LB0/O;->k0:I

    .line 102
    .line 103
    if-ne v9, v5, :cond_5

    .line 104
    .line 105
    const/4 v9, 0x0

    .line 106
    :cond_5
    invoke-virtual {v0}, LB0/O;->c0()V

    .line 107
    .line 108
    .line 109
    iget-boolean v10, v0, LB0/O;->l0:Z

    .line 110
    .line 111
    invoke-virtual {v1, v10, v3, v9}, Lm0/f0;->l(ZII)I

    .line 112
    .line 113
    .line 114
    move-result v1

    .line 115
    :goto_2
    if-ne v1, v4, :cond_6

    .line 116
    .line 117
    invoke-virtual {p0, v2}, Lm0/f;->b(I)V

    .line 118
    .line 119
    .line 120
    goto :goto_4

    .line 121
    :cond_6
    invoke-virtual {v0}, LB0/O;->t()I

    .line 122
    .line 123
    .line 124
    move-result v2

    .line 125
    if-ne v1, v2, :cond_7

    .line 126
    .line 127
    invoke-virtual {v0}, LB0/O;->t()I

    .line 128
    .line 129
    .line 130
    move-result v0

    .line 131
    invoke-virtual {p0, v0, v7, v8, v5}, Lm0/f;->i(IJZ)V

    .line 132
    .line 133
    .line 134
    goto :goto_4

    .line 135
    :cond_7
    invoke-virtual {p0, v1, v7, v8, v6}, Lm0/f;->i(IJZ)V

    .line 136
    .line 137
    .line 138
    goto :goto_4

    .line 139
    :cond_8
    invoke-virtual {p0, v2}, Lm0/f;->b(I)V

    .line 140
    .line 141
    .line 142
    goto :goto_4

    .line 143
    :cond_9
    if-eqz v1, :cond_e

    .line 144
    .line 145
    invoke-virtual {v0}, LB0/O;->v()J

    .line 146
    .line 147
    .line 148
    move-result-wide v9

    .line 149
    invoke-virtual {v0}, LB0/O;->c0()V

    .line 150
    .line 151
    .line 152
    iget-wide v11, v0, LB0/O;->c0:J

    .line 153
    .line 154
    cmp-long v1, v9, v11

    .line 155
    .line 156
    if-gtz v1, :cond_e

    .line 157
    .line 158
    invoke-virtual {v0}, LB0/O;->x()Lm0/f0;

    .line 159
    .line 160
    .line 161
    move-result-object v1

    .line 162
    invoke-virtual {v1}, Lm0/f0;->q()Z

    .line 163
    .line 164
    .line 165
    move-result v3

    .line 166
    if-eqz v3, :cond_a

    .line 167
    .line 168
    const/4 v1, -0x1

    .line 169
    goto :goto_3

    .line 170
    :cond_a
    invoke-virtual {v0}, LB0/O;->t()I

    .line 171
    .line 172
    .line 173
    move-result v3

    .line 174
    invoke-virtual {v0}, LB0/O;->c0()V

    .line 175
    .line 176
    .line 177
    iget v9, v0, LB0/O;->k0:I

    .line 178
    .line 179
    if-ne v9, v5, :cond_b

    .line 180
    .line 181
    const/4 v9, 0x0

    .line 182
    :cond_b
    invoke-virtual {v0}, LB0/O;->c0()V

    .line 183
    .line 184
    .line 185
    iget-boolean v10, v0, LB0/O;->l0:Z

    .line 186
    .line 187
    invoke-virtual {v1, v10, v3, v9}, Lm0/f0;->l(ZII)I

    .line 188
    .line 189
    .line 190
    move-result v1

    .line 191
    :goto_3
    if-ne v1, v4, :cond_c

    .line 192
    .line 193
    invoke-virtual {p0, v2}, Lm0/f;->b(I)V

    .line 194
    .line 195
    .line 196
    goto :goto_4

    .line 197
    :cond_c
    invoke-virtual {v0}, LB0/O;->t()I

    .line 198
    .line 199
    .line 200
    move-result v2

    .line 201
    if-ne v1, v2, :cond_d

    .line 202
    .line 203
    invoke-virtual {v0}, LB0/O;->t()I

    .line 204
    .line 205
    .line 206
    move-result v0

    .line 207
    invoke-virtual {p0, v0, v7, v8, v5}, Lm0/f;->i(IJZ)V

    .line 208
    .line 209
    .line 210
    goto :goto_4

    .line 211
    :cond_d
    invoke-virtual {p0, v1, v7, v8, v6}, Lm0/f;->i(IJZ)V

    .line 212
    .line 213
    .line 214
    goto :goto_4

    .line 215
    :cond_e
    const-wide/16 v0, 0x0

    .line 216
    .line 217
    invoke-virtual {p0, v2, v0, v1}, Lm0/f;->j(IJ)V

    .line 218
    .line 219
    .line 220
    :goto_4
    return-void

    .line 221
    :cond_f
    :goto_5
    invoke-virtual {p0, v2}, Lm0/f;->b(I)V

    .line 222
    .line 223
    .line 224
    return-void
.end method
