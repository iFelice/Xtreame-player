.class public final LP0/n;
.super LP0/a;
.source "SourceFile"


# instance fields
.field public final U:I

.field public final V:J

.field public final W:LP0/i;

.field public X:J

.field public volatile Y:Z

.field public Z:Z


# direct methods
.method public constructor <init>(Ls0/i;Ls0/m;Lm0/t;ILjava/lang/Object;JJJJJIJLP0/i;)V
    .locals 3

    .line 1
    move-object v0, p0

    .line 2
    invoke-direct/range {p0 .. p15}, LP0/a;-><init>(Ls0/i;Ls0/m;Lm0/t;ILjava/lang/Object;JJJJJ)V

    .line 3
    .line 4
    .line 5
    move/from16 v1, p16

    .line 6
    .line 7
    iput v1, v0, LP0/n;->U:I

    .line 8
    .line 9
    move-wide/from16 v1, p17

    .line 10
    .line 11
    iput-wide v1, v0, LP0/n;->V:J

    .line 12
    .line 13
    move-object/from16 v1, p19

    .line 14
    .line 15
    iput-object v1, v0, LP0/n;->W:LP0/i;

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final I()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, LP0/n;->Y:Z

    .line 3
    .line 4
    return-void
.end method

.method public final a()J
    .locals 4

    .line 1
    iget v0, p0, LP0/n;->U:I

    .line 2
    .line 3
    int-to-long v0, v0

    .line 4
    iget-wide v2, p0, LP0/p;->P:J

    .line 5
    .line 6
    add-long/2addr v2, v0

    .line 7
    return-wide v2
.end method

.method public final b()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, LP0/n;->Z:Z

    .line 2
    .line 3
    return v0
.end method

.method public final d(LP0/c;)V
    .locals 13

    .line 1
    iget-object v0, p0, LP0/f;->J:Lm0/t;

    .line 2
    .line 3
    iget-object v1, v0, Lm0/t;->n:Ljava/lang/String;

    .line 4
    .line 5
    invoke-static {v1}, Lm0/O;->m(Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    const/4 v1, 0x1

    .line 13
    iget v2, v0, Lm0/t;->N:I

    .line 14
    .line 15
    iget v0, v0, Lm0/t;->O:I

    .line 16
    .line 17
    if-gt v2, v1, :cond_1

    .line 18
    .line 19
    if-le v0, v1, :cond_3

    .line 20
    .line 21
    :cond_1
    const/4 v3, -0x1

    .line 22
    if-eq v2, v3, :cond_3

    .line 23
    .line 24
    if-ne v0, v3, :cond_2

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_2
    const/4 v3, 0x4

    .line 28
    invoke-virtual {p1, v3}, LP0/c;->a(I)LW0/L;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    mul-int v2, v2, v0

    .line 33
    .line 34
    iget-wide v3, p0, LP0/f;->N:J

    .line 35
    .line 36
    iget-wide v5, p0, LP0/f;->M:J

    .line 37
    .line 38
    sub-long/2addr v3, v5

    .line 39
    int-to-long v5, v2

    .line 40
    div-long v11, v3, v5

    .line 41
    .line 42
    :goto_0
    if-ge v1, v2, :cond_3

    .line 43
    .line 44
    int-to-long v3, v1

    .line 45
    mul-long v5, v3, v11

    .line 46
    .line 47
    new-instance v0, Lp0/E;

    .line 48
    .line 49
    invoke-direct {v0}, Lp0/E;-><init>()V

    .line 50
    .line 51
    .line 52
    const/4 v3, 0x0

    .line 53
    invoke-interface {p1, v3, v0}, LW0/L;->e(ILp0/E;)V

    .line 54
    .line 55
    .line 56
    const/4 v7, 0x0

    .line 57
    const/4 v8, 0x0

    .line 58
    const/4 v9, 0x0

    .line 59
    const/4 v10, 0x0

    .line 60
    move-object v4, p1

    .line 61
    invoke-interface/range {v4 .. v10}, LW0/L;->d(JIIILW0/K;)V

    .line 62
    .line 63
    .line 64
    add-int/lit8 v1, v1, 0x1

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_3
    :goto_1
    return-void
.end method

.method public final p()V
    .locals 15

    .line 1
    iget-object v6, p0, LP0/a;->S:LP0/c;

    .line 2
    .line 3
    invoke-static {v6}, Lcom/google/android/gms/internal/measurement/H1;->j(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    iget-wide v0, p0, LP0/n;->X:J

    .line 7
    .line 8
    const-wide/16 v2, 0x0

    .line 9
    .line 10
    const/4 v7, 0x0

    .line 11
    const/4 v8, 0x1

    .line 12
    cmp-long v4, v0, v2

    .line 13
    .line 14
    if-nez v4, :cond_4

    .line 15
    .line 16
    iget-wide v0, p0, LP0/n;->V:J

    .line 17
    .line 18
    iget-object v2, v6, LP0/c;->b:[LO0/T;

    .line 19
    .line 20
    array-length v3, v2

    .line 21
    const/4 v4, 0x0

    .line 22
    :goto_0
    if-ge v4, v3, :cond_1

    .line 23
    .line 24
    aget-object v5, v2, v4

    .line 25
    .line 26
    iget-wide v9, v5, LO0/T;->F:J

    .line 27
    .line 28
    cmp-long v11, v9, v0

    .line 29
    .line 30
    if-eqz v11, :cond_0

    .line 31
    .line 32
    iput-wide v0, v5, LO0/T;->F:J

    .line 33
    .line 34
    iput-boolean v8, v5, LO0/T;->z:Z

    .line 35
    .line 36
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    iget-object v0, p0, LP0/n;->W:LP0/i;

    .line 40
    .line 41
    iget-wide v1, p0, LP0/a;->Q:J

    .line 42
    .line 43
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    cmp-long v5, v1, v3

    .line 49
    .line 50
    if-nez v5, :cond_2

    .line 51
    .line 52
    move-wide v9, v3

    .line 53
    goto :goto_1

    .line 54
    :cond_2
    iget-wide v9, p0, LP0/n;->V:J

    .line 55
    .line 56
    sub-long/2addr v1, v9

    .line 57
    move-wide v9, v1

    .line 58
    :goto_1
    iget-wide v1, p0, LP0/a;->R:J

    .line 59
    .line 60
    cmp-long v5, v1, v3

    .line 61
    .line 62
    if-nez v5, :cond_3

    .line 63
    .line 64
    move-wide v4, v3

    .line 65
    goto :goto_2

    .line 66
    :cond_3
    iget-wide v3, p0, LP0/n;->V:J

    .line 67
    .line 68
    sub-long/2addr v1, v3

    .line 69
    move-wide v4, v1

    .line 70
    :goto_2
    check-cast v0, LP0/e;

    .line 71
    .line 72
    move-object v1, v6

    .line 73
    move-wide v2, v9

    .line 74
    invoke-virtual/range {v0 .. v5}, LP0/e;->a(LP0/h;JJ)V

    .line 75
    .line 76
    .line 77
    :cond_4
    :try_start_0
    iget-object v0, p0, LP0/f;->H:Ls0/m;

    .line 78
    .line 79
    iget-wide v1, p0, LP0/n;->X:J

    .line 80
    .line 81
    invoke-virtual {v0, v1, v2}, Ls0/m;->c(J)Ls0/m;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    new-instance v1, LW0/n;

    .line 86
    .line 87
    iget-object v10, p0, LP0/f;->O:Ls0/M;

    .line 88
    .line 89
    iget-wide v11, v0, Ls0/m;->f:J

    .line 90
    .line 91
    invoke-virtual {v10, v0}, Ls0/M;->a(Ls0/m;)J

    .line 92
    .line 93
    .line 94
    move-result-wide v13

    .line 95
    move-object v9, v1

    .line 96
    invoke-direct/range {v9 .. v14}, LW0/n;-><init>(Lm0/j;JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 97
    .line 98
    .line 99
    :goto_3
    :try_start_1
    iget-boolean v0, p0, LP0/n;->Y:Z

    .line 100
    .line 101
    if-nez v0, :cond_6

    .line 102
    .line 103
    iget-object v0, p0, LP0/n;->W:LP0/i;

    .line 104
    .line 105
    check-cast v0, LP0/e;

    .line 106
    .line 107
    sget-object v2, LP0/e;->P:LW0/w;

    .line 108
    .line 109
    iget-object v0, v0, LP0/e;->G:LW0/s;

    .line 110
    .line 111
    invoke-interface {v0, v1, v2}, LW0/s;->h(LW0/t;LW0/w;)I

    .line 112
    .line 113
    .line 114
    move-result v0

    .line 115
    if-eq v0, v8, :cond_5

    .line 116
    .line 117
    const/4 v2, 0x1

    .line 118
    goto :goto_4

    .line 119
    :cond_5
    const/4 v2, 0x0

    .line 120
    :goto_4
    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/H1;->i(Z)V

    .line 121
    .line 122
    .line 123
    if-nez v0, :cond_6

    .line 124
    .line 125
    goto :goto_3

    .line 126
    :catchall_0
    move-exception v0

    .line 127
    goto :goto_5

    .line 128
    :cond_6
    invoke-virtual {p0, v6}, LP0/n;->d(LP0/c;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 129
    .line 130
    .line 131
    :try_start_2
    iget-wide v0, v1, LW0/n;->d:J

    .line 132
    .line 133
    iget-object v2, p0, LP0/f;->H:Ls0/m;

    .line 134
    .line 135
    iget-wide v2, v2, Ls0/m;->f:J

    .line 136
    .line 137
    sub-long/2addr v0, v2

    .line 138
    iput-wide v0, p0, LP0/n;->X:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 139
    .line 140
    iget-object v0, p0, LP0/f;->O:Ls0/M;

    .line 141
    .line 142
    invoke-static {v0}, Ln0/c;->d(Ls0/i;)V

    .line 143
    .line 144
    .line 145
    iget-boolean v0, p0, LP0/n;->Y:Z

    .line 146
    .line 147
    xor-int/2addr v0, v8

    .line 148
    iput-boolean v0, p0, LP0/n;->Z:Z

    .line 149
    .line 150
    return-void

    .line 151
    :catchall_1
    move-exception v0

    .line 152
    goto :goto_6

    .line 153
    :goto_5
    :try_start_3
    iget-wide v1, v1, LW0/n;->d:J

    .line 154
    .line 155
    iget-object v3, p0, LP0/f;->H:Ls0/m;

    .line 156
    .line 157
    iget-wide v3, v3, Ls0/m;->f:J

    .line 158
    .line 159
    sub-long/2addr v1, v3

    .line 160
    iput-wide v1, p0, LP0/n;->X:J

    .line 161
    .line 162
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 163
    :goto_6
    iget-object v1, p0, LP0/f;->O:Ls0/M;

    .line 164
    .line 165
    invoke-static {v1}, Ln0/c;->d(Ls0/i;)V

    .line 166
    .line 167
    .line 168
    throw v0
.end method
