.class public final LP0/o;
.super LP0/f;
.source "SourceFile"


# instance fields
.field public final P:LP0/i;

.field public Q:LP0/h;

.field public R:J

.field public volatile S:Z


# direct methods
.method public constructor <init>(Ls0/i;Ls0/m;Lm0/t;ILjava/lang/Object;LP0/i;)V
    .locals 11

    .line 1
    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    const/4 v3, 0x2

    .line 7
    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    move-object v0, p0

    .line 13
    move-object v1, p1

    .line 14
    move-object v2, p2

    .line 15
    move-object v4, p3

    .line 16
    move v5, p4

    .line 17
    move-object/from16 v6, p5

    .line 18
    .line 19
    invoke-direct/range {v0 .. v10}, LP0/f;-><init>(Ls0/i;Ls0/m;ILm0/t;ILjava/lang/Object;JJ)V

    .line 20
    .line 21
    .line 22
    move-object/from16 v1, p6

    .line 23
    .line 24
    iput-object v1, v0, LP0/o;->P:LP0/i;

    .line 25
    .line 26
    return-void
.end method


# virtual methods
.method public final I()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, LP0/o;->S:Z

    .line 3
    .line 4
    return-void
.end method

.method public final p()V
    .locals 8

    .line 1
    iget-wide v0, p0, LP0/o;->R:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v4, v0, v2

    .line 6
    .line 7
    if-nez v4, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, LP0/o;->P:LP0/i;

    .line 10
    .line 11
    iget-object v2, p0, LP0/o;->Q:LP0/h;

    .line 12
    .line 13
    move-object v1, v0

    .line 14
    check-cast v1, LP0/e;

    .line 15
    .line 16
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    invoke-virtual/range {v1 .. v6}, LP0/e;->a(LP0/h;JJ)V

    .line 27
    .line 28
    .line 29
    :cond_0
    :try_start_0
    iget-object v0, p0, LP0/f;->H:Ls0/m;

    .line 30
    .line 31
    iget-wide v1, p0, LP0/o;->R:J

    .line 32
    .line 33
    invoke-virtual {v0, v1, v2}, Ls0/m;->c(J)Ls0/m;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    new-instance v7, LW0/n;

    .line 38
    .line 39
    iget-object v2, p0, LP0/f;->O:Ls0/M;

    .line 40
    .line 41
    iget-wide v3, v0, Ls0/m;->f:J

    .line 42
    .line 43
    invoke-virtual {v2, v0}, Ls0/M;->a(Ls0/m;)J

    .line 44
    .line 45
    .line 46
    move-result-wide v5

    .line 47
    move-object v1, v7

    .line 48
    invoke-direct/range {v1 .. v6}, LW0/n;-><init>(Lm0/j;JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 49
    .line 50
    .line 51
    :goto_0
    :try_start_1
    iget-boolean v0, p0, LP0/o;->S:Z

    .line 52
    .line 53
    if-nez v0, :cond_2

    .line 54
    .line 55
    iget-object v0, p0, LP0/o;->P:LP0/i;

    .line 56
    .line 57
    check-cast v0, LP0/e;

    .line 58
    .line 59
    sget-object v1, LP0/e;->P:LW0/w;

    .line 60
    .line 61
    iget-object v0, v0, LP0/e;->G:LW0/s;

    .line 62
    .line 63
    invoke-interface {v0, v7, v1}, LW0/s;->h(LW0/t;LW0/w;)I

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    const/4 v1, 0x1

    .line 68
    if-eq v0, v1, :cond_1

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_1
    const/4 v1, 0x0

    .line 72
    :goto_1
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/H1;->i(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 73
    .line 74
    .line 75
    if-nez v0, :cond_2

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :catchall_0
    move-exception v0

    .line 79
    goto :goto_2

    .line 80
    :cond_2
    :try_start_2
    iget-wide v0, v7, LW0/n;->d:J

    .line 81
    .line 82
    iget-object v2, p0, LP0/f;->H:Ls0/m;

    .line 83
    .line 84
    iget-wide v2, v2, Ls0/m;->f:J

    .line 85
    .line 86
    sub-long/2addr v0, v2

    .line 87
    iput-wide v0, p0, LP0/o;->R:J

    .line 88
    .line 89
    iget-object v0, p0, LP0/o;->P:LP0/i;

    .line 90
    .line 91
    check-cast v0, LP0/e;

    .line 92
    .line 93
    iget-object v0, v0, LP0/e;->N:LW0/F;

    .line 94
    .line 95
    instance-of v1, v0, LW0/l;

    .line 96
    .line 97
    if-eqz v1, :cond_3

    .line 98
    .line 99
    check-cast v0, LW0/l;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 100
    .line 101
    :cond_3
    iget-object v0, p0, LP0/f;->O:Ls0/M;

    .line 102
    .line 103
    invoke-static {v0}, Ln0/c;->d(Ls0/i;)V

    .line 104
    .line 105
    .line 106
    return-void

    .line 107
    :catchall_1
    move-exception v0

    .line 108
    goto :goto_3

    .line 109
    :goto_2
    :try_start_3
    iget-wide v1, v7, LW0/n;->d:J

    .line 110
    .line 111
    iget-object v3, p0, LP0/f;->H:Ls0/m;

    .line 112
    .line 113
    iget-wide v3, v3, Ls0/m;->f:J

    .line 114
    .line 115
    sub-long/2addr v1, v3

    .line 116
    iput-wide v1, p0, LP0/o;->R:J

    .line 117
    .line 118
    iget-object v1, p0, LP0/o;->P:LP0/i;

    .line 119
    .line 120
    check-cast v1, LP0/e;

    .line 121
    .line 122
    iget-object v1, v1, LP0/e;->N:LW0/F;

    .line 123
    .line 124
    instance-of v2, v1, LW0/l;

    .line 125
    .line 126
    if-eqz v2, :cond_4

    .line 127
    .line 128
    check-cast v1, LW0/l;

    .line 129
    .line 130
    :cond_4
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 131
    :goto_3
    iget-object v1, p0, LP0/f;->O:Ls0/M;

    .line 132
    .line 133
    invoke-static {v1}, Ln0/c;->d(Ls0/i;)V

    .line 134
    .line 135
    .line 136
    throw v0
.end method
