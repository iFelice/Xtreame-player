.class public LO0/T;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LW0/L;


# instance fields
.field public A:Lm0/t;

.field public B:Lm0/t;

.field public C:J

.field public D:Z

.field public E:Z

.field public F:J

.field public G:Z

.field public final a:LO0/P;

.field public final b:Lt0/d;

.field public final c:LF/d;

.field public final d:LG0/r;

.field public final e:LG0/o;

.field public f:LO0/S;

.field public g:Lm0/t;

.field public h:LG0/l;

.field public i:I

.field public j:[J

.field public k:[J

.field public l:[I

.field public m:[I

.field public n:[J

.field public o:[LW0/K;

.field public p:I

.field public q:I

.field public r:I

.field public s:I

.field public t:J

.field public u:J

.field public v:J

.field public w:Z

.field public x:Z

.field public y:Z

.field public z:Z


# direct methods
.method public constructor <init>(LS0/d;LG0/r;LG0/o;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, LO0/T;->d:LG0/r;

    .line 5
    .line 6
    iput-object p3, p0, LO0/T;->e:LG0/o;

    .line 7
    .line 8
    new-instance p2, LO0/P;

    .line 9
    .line 10
    invoke-direct {p2, p1}, LO0/P;-><init>(LS0/d;)V

    .line 11
    .line 12
    .line 13
    iput-object p2, p0, LO0/T;->a:LO0/P;

    .line 14
    .line 15
    new-instance p1, Lt0/d;

    .line 16
    .line 17
    const/4 p2, 0x1

    .line 18
    invoke-direct {p1, p2}, Lt0/d;-><init>(I)V

    .line 19
    .line 20
    .line 21
    iput-object p1, p0, LO0/T;->b:Lt0/d;

    .line 22
    .line 23
    const/16 p1, 0x3e8

    .line 24
    .line 25
    iput p1, p0, LO0/T;->i:I

    .line 26
    .line 27
    new-array p3, p1, [J

    .line 28
    .line 29
    iput-object p3, p0, LO0/T;->j:[J

    .line 30
    .line 31
    new-array p3, p1, [J

    .line 32
    .line 33
    iput-object p3, p0, LO0/T;->k:[J

    .line 34
    .line 35
    new-array p3, p1, [J

    .line 36
    .line 37
    iput-object p3, p0, LO0/T;->n:[J

    .line 38
    .line 39
    new-array p3, p1, [I

    .line 40
    .line 41
    iput-object p3, p0, LO0/T;->m:[I

    .line 42
    .line 43
    new-array p3, p1, [I

    .line 44
    .line 45
    iput-object p3, p0, LO0/T;->l:[I

    .line 46
    .line 47
    new-array p1, p1, [LW0/K;

    .line 48
    .line 49
    iput-object p1, p0, LO0/T;->o:[LW0/K;

    .line 50
    .line 51
    new-instance p1, LF/d;

    .line 52
    .line 53
    new-instance p3, LN/i;

    .line 54
    .line 55
    const/16 v0, 0x12

    .line 56
    .line 57
    invoke-direct {p3, v0}, LN/i;-><init>(I)V

    .line 58
    .line 59
    .line 60
    invoke-direct {p1, p3}, LF/d;-><init>(LN/i;)V

    .line 61
    .line 62
    .line 63
    iput-object p1, p0, LO0/T;->c:LF/d;

    .line 64
    .line 65
    const-wide/high16 v0, -0x8000000000000000L

    .line 66
    .line 67
    iput-wide v0, p0, LO0/T;->t:J

    .line 68
    .line 69
    iput-wide v0, p0, LO0/T;->u:J

    .line 70
    .line 71
    iput-wide v0, p0, LO0/T;->v:J

    .line 72
    .line 73
    iput-boolean p2, p0, LO0/T;->y:Z

    .line 74
    .line 75
    iput-boolean p2, p0, LO0/T;->x:Z

    .line 76
    .line 77
    iput-boolean p2, p0, LO0/T;->D:Z

    .line 78
    .line 79
    return-void
.end method


# virtual methods
.method public final A()V
    .locals 2

    .line 1
    iget-object v0, p0, LO0/T;->h:LG0/l;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-interface {v0}, LG0/l;->getState()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    if-eq v0, v1, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object v0, p0, LO0/T;->h:LG0/l;

    .line 14
    .line 15
    invoke-interface {v0}, LG0/l;->getError()LG0/k;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    throw v0

    .line 23
    :cond_1
    :goto_0
    return-void
.end method

.method public final B(Lm0/t;LB0/Z;)V
    .locals 6

    .line 1
    iget-object v0, p0, LO0/T;->g:Lm0/t;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v1, 0x0

    .line 8
    :goto_0
    if-nez v0, :cond_1

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    goto :goto_1

    .line 12
    :cond_1
    iget-object v0, v0, Lm0/t;->s:Lm0/n;

    .line 13
    .line 14
    :goto_1
    iput-object p1, p0, LO0/T;->g:Lm0/t;

    .line 15
    .line 16
    iget-object v2, p1, Lm0/t;->s:Lm0/n;

    .line 17
    .line 18
    iget-object v3, p0, LO0/T;->d:LG0/r;

    .line 19
    .line 20
    if-eqz v3, :cond_2

    .line 21
    .line 22
    invoke-interface {v3, p1}, LG0/r;->m(Lm0/t;)I

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    invoke-virtual {p1}, Lm0/t;->a()Lm0/s;

    .line 27
    .line 28
    .line 29
    move-result-object v5

    .line 30
    iput v4, v5, Lm0/s;->O:I

    .line 31
    .line 32
    invoke-virtual {v5}, Lm0/s;->a()Lm0/t;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    goto :goto_2

    .line 37
    :cond_2
    move-object v4, p1

    .line 38
    :goto_2
    iput-object v4, p2, LB0/Z;->b:Lm0/t;

    .line 39
    .line 40
    iget-object v4, p0, LO0/T;->h:LG0/l;

    .line 41
    .line 42
    iput-object v4, p2, LB0/Z;->a:LG0/l;

    .line 43
    .line 44
    if-nez v3, :cond_3

    .line 45
    .line 46
    return-void

    .line 47
    :cond_3
    if-nez v1, :cond_4

    .line 48
    .line 49
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-eqz v0, :cond_4

    .line 54
    .line 55
    return-void

    .line 56
    :cond_4
    iget-object v0, p0, LO0/T;->h:LG0/l;

    .line 57
    .line 58
    iget-object v1, p0, LO0/T;->e:LG0/o;

    .line 59
    .line 60
    invoke-interface {v3, v1, p1}, LG0/r;->l(LG0/o;Lm0/t;)LG0/l;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    iput-object p1, p0, LO0/T;->h:LG0/l;

    .line 65
    .line 66
    iput-object p1, p2, LB0/Z;->a:LG0/l;

    .line 67
    .line 68
    if-eqz v0, :cond_5

    .line 69
    .line 70
    invoke-interface {v0, v1}, LG0/l;->c(LG0/o;)V

    .line 71
    .line 72
    .line 73
    :cond_5
    return-void
.end method

.method public final declared-synchronized C()J
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, LO0/T;->s:I

    .line 3
    .line 4
    invoke-virtual {p0, v0}, LO0/T;->u(I)I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    invoke-virtual {p0}, LO0/T;->x()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    iget-object v1, p0, LO0/T;->j:[J

    .line 15
    .line 16
    aget-wide v0, v1, v0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    move-exception v0

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    iget-wide v0, p0, LO0/T;->C:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    .line 23
    :goto_0
    monitor-exit p0

    .line 24
    return-wide v0

    .line 25
    :goto_1
    monitor-exit p0

    .line 26
    throw v0
.end method

.method public final D(LB0/Z;Lw0/g;IZ)I
    .locals 10

    .line 1
    and-int/lit8 v0, p3, 0x2

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    iget-object v3, p0, LO0/T;->b:Lt0/d;

    .line 11
    .line 12
    monitor-enter p0

    .line 13
    :try_start_0
    iput-boolean v1, p2, Lw0/g;->J:Z

    .line 14
    .line 15
    invoke-virtual {p0}, LO0/T;->x()Z

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    const/4 v5, 0x4

    .line 20
    const/4 v6, -0x4

    .line 21
    const/4 v7, -0x3

    .line 22
    const/4 v8, -0x5

    .line 23
    if-nez v4, :cond_5

    .line 24
    .line 25
    if-nez p4, :cond_4

    .line 26
    .line 27
    iget-boolean p4, p0, LO0/T;->w:Z

    .line 28
    .line 29
    if-eqz p4, :cond_1

    .line 30
    .line 31
    goto :goto_3

    .line 32
    :cond_1
    iget-object p4, p0, LO0/T;->B:Lm0/t;

    .line 33
    .line 34
    if-eqz p4, :cond_3

    .line 35
    .line 36
    if-nez v0, :cond_2

    .line 37
    .line 38
    iget-object v0, p0, LO0/T;->g:Lm0/t;

    .line 39
    .line 40
    if-eq p4, v0, :cond_3

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :catchall_0
    move-exception p1

    .line 44
    goto/16 :goto_8

    .line 45
    .line 46
    :cond_2
    :goto_1
    invoke-virtual {p0, p4, p1}, LO0/T;->B(Lm0/t;LB0/Z;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    .line 48
    .line 49
    monitor-exit p0

    .line 50
    :goto_2
    const/4 v7, -0x5

    .line 51
    goto :goto_6

    .line 52
    :cond_3
    monitor-exit p0

    .line 53
    goto :goto_6

    .line 54
    :cond_4
    :goto_3
    :try_start_1
    invoke-virtual {p2, v5}, Lw0/a;->setFlags(I)V

    .line 55
    .line 56
    .line 57
    const-wide/high16 v3, -0x8000000000000000L

    .line 58
    .line 59
    iput-wide v3, p2, Lw0/g;->K:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 60
    .line 61
    monitor-exit p0

    .line 62
    :goto_4
    const/4 v7, -0x4

    .line 63
    goto :goto_6

    .line 64
    :cond_5
    :try_start_2
    iget-object v4, p0, LO0/T;->c:LF/d;

    .line 65
    .line 66
    invoke-virtual {p0}, LO0/T;->t()I

    .line 67
    .line 68
    .line 69
    move-result v9

    .line 70
    invoke-virtual {v4, v9}, LF/d;->f(I)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v4

    .line 74
    check-cast v4, LO0/Q;

    .line 75
    .line 76
    iget-object v4, v4, LO0/Q;->a:Lm0/t;

    .line 77
    .line 78
    if-nez v0, :cond_a

    .line 79
    .line 80
    iget-object v0, p0, LO0/T;->g:Lm0/t;

    .line 81
    .line 82
    if-eq v4, v0, :cond_6

    .line 83
    .line 84
    goto :goto_5

    .line 85
    :cond_6
    iget p1, p0, LO0/T;->s:I

    .line 86
    .line 87
    invoke-virtual {p0, p1}, LO0/T;->u(I)I

    .line 88
    .line 89
    .line 90
    move-result p1

    .line 91
    invoke-virtual {p0, p1}, LO0/T;->z(I)Z

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    if-nez v0, :cond_7

    .line 96
    .line 97
    iput-boolean v2, p2, Lw0/g;->J:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 98
    .line 99
    monitor-exit p0

    .line 100
    goto :goto_6

    .line 101
    :cond_7
    :try_start_3
    iget-object v0, p0, LO0/T;->m:[I

    .line 102
    .line 103
    aget v0, v0, p1

    .line 104
    .line 105
    invoke-virtual {p2, v0}, Lw0/a;->setFlags(I)V

    .line 106
    .line 107
    .line 108
    iget v0, p0, LO0/T;->s:I

    .line 109
    .line 110
    iget v4, p0, LO0/T;->p:I

    .line 111
    .line 112
    sub-int/2addr v4, v2

    .line 113
    if-ne v0, v4, :cond_9

    .line 114
    .line 115
    if-nez p4, :cond_8

    .line 116
    .line 117
    iget-boolean p4, p0, LO0/T;->w:Z

    .line 118
    .line 119
    if-eqz p4, :cond_9

    .line 120
    .line 121
    :cond_8
    const/high16 p4, 0x20000000

    .line 122
    .line 123
    invoke-virtual {p2, p4}, Lw0/a;->addFlag(I)V

    .line 124
    .line 125
    .line 126
    :cond_9
    iget-object p4, p0, LO0/T;->n:[J

    .line 127
    .line 128
    aget-wide v7, p4, p1

    .line 129
    .line 130
    iput-wide v7, p2, Lw0/g;->K:J

    .line 131
    .line 132
    iget-object p4, p0, LO0/T;->l:[I

    .line 133
    .line 134
    aget p4, p4, p1

    .line 135
    .line 136
    iput p4, v3, Lt0/d;->H:I

    .line 137
    .line 138
    iget-object p4, p0, LO0/T;->k:[J

    .line 139
    .line 140
    aget-wide v7, p4, p1

    .line 141
    .line 142
    iput-wide v7, v3, Lt0/d;->I:J

    .line 143
    .line 144
    iget-object p4, p0, LO0/T;->o:[LW0/K;

    .line 145
    .line 146
    aget-object p1, p4, p1

    .line 147
    .line 148
    iput-object p1, v3, Lt0/d;->J:Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 149
    .line 150
    monitor-exit p0

    .line 151
    goto :goto_4

    .line 152
    :cond_a
    :goto_5
    :try_start_4
    invoke-virtual {p0, v4, p1}, LO0/T;->B(Lm0/t;LB0/Z;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 153
    .line 154
    .line 155
    monitor-exit p0

    .line 156
    goto :goto_2

    .line 157
    :goto_6
    if-ne v7, v6, :cond_e

    .line 158
    .line 159
    invoke-virtual {p2}, Lw0/a;->isEndOfStream()Z

    .line 160
    .line 161
    .line 162
    move-result p1

    .line 163
    if-nez p1, :cond_e

    .line 164
    .line 165
    and-int/lit8 p1, p3, 0x1

    .line 166
    .line 167
    if-eqz p1, :cond_b

    .line 168
    .line 169
    const/4 v1, 0x1

    .line 170
    :cond_b
    and-int/lit8 p1, p3, 0x4

    .line 171
    .line 172
    if-nez p1, :cond_d

    .line 173
    .line 174
    if-eqz v1, :cond_c

    .line 175
    .line 176
    iget-object p1, p0, LO0/T;->a:LO0/P;

    .line 177
    .line 178
    iget-object p3, p0, LO0/T;->b:Lt0/d;

    .line 179
    .line 180
    iget-object p4, p1, LO0/P;->e:LO0/O;

    .line 181
    .line 182
    iget-object p1, p1, LO0/P;->c:Lp0/E;

    .line 183
    .line 184
    invoke-static {p4, p2, p3, p1}, LO0/P;->f(LO0/O;Lw0/g;Lt0/d;Lp0/E;)LO0/O;

    .line 185
    .line 186
    .line 187
    goto :goto_7

    .line 188
    :cond_c
    iget-object p1, p0, LO0/T;->a:LO0/P;

    .line 189
    .line 190
    iget-object p3, p0, LO0/T;->b:Lt0/d;

    .line 191
    .line 192
    iget-object p4, p1, LO0/P;->e:LO0/O;

    .line 193
    .line 194
    iget-object v0, p1, LO0/P;->c:Lp0/E;

    .line 195
    .line 196
    invoke-static {p4, p2, p3, v0}, LO0/P;->f(LO0/O;Lw0/g;Lt0/d;Lp0/E;)LO0/O;

    .line 197
    .line 198
    .line 199
    move-result-object p2

    .line 200
    iput-object p2, p1, LO0/P;->e:LO0/O;

    .line 201
    .line 202
    :cond_d
    :goto_7
    if-nez v1, :cond_e

    .line 203
    .line 204
    iget p1, p0, LO0/T;->s:I

    .line 205
    .line 206
    add-int/2addr p1, v2

    .line 207
    iput p1, p0, LO0/T;->s:I

    .line 208
    .line 209
    :cond_e
    return v7

    .line 210
    :goto_8
    monitor-exit p0

    .line 211
    throw p1
.end method

.method public final E(Z)V
    .locals 9

    .line 1
    iget-object v0, p0, LO0/T;->a:LO0/P;

    .line 2
    .line 3
    iget-object v1, v0, LO0/P;->d:LO0/O;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, LO0/P;->a(LO0/O;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, v0, LO0/P;->d:LO0/O;

    .line 9
    .line 10
    iget-object v2, v1, LO0/O;->c:LS0/a;

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    const/4 v4, 0x1

    .line 14
    if-nez v2, :cond_0

    .line 15
    .line 16
    const/4 v2, 0x1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v2, 0x0

    .line 19
    :goto_0
    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/H1;->i(Z)V

    .line 20
    .line 21
    .line 22
    const-wide/16 v5, 0x0

    .line 23
    .line 24
    iput-wide v5, v1, LO0/O;->a:J

    .line 25
    .line 26
    iget v2, v0, LO0/P;->b:I

    .line 27
    .line 28
    int-to-long v7, v2

    .line 29
    iput-wide v7, v1, LO0/O;->b:J

    .line 30
    .line 31
    iget-object v1, v0, LO0/P;->d:LO0/O;

    .line 32
    .line 33
    iput-object v1, v0, LO0/P;->e:LO0/O;

    .line 34
    .line 35
    iput-object v1, v0, LO0/P;->f:LO0/O;

    .line 36
    .line 37
    iput-wide v5, v0, LO0/P;->g:J

    .line 38
    .line 39
    iget-object v0, v0, LO0/P;->a:LS0/d;

    .line 40
    .line 41
    invoke-virtual {v0}, LS0/d;->b()V

    .line 42
    .line 43
    .line 44
    iput v3, p0, LO0/T;->p:I

    .line 45
    .line 46
    iput v3, p0, LO0/T;->q:I

    .line 47
    .line 48
    iput v3, p0, LO0/T;->r:I

    .line 49
    .line 50
    iput v3, p0, LO0/T;->s:I

    .line 51
    .line 52
    iput-boolean v4, p0, LO0/T;->x:Z

    .line 53
    .line 54
    const-wide/high16 v0, -0x8000000000000000L

    .line 55
    .line 56
    iput-wide v0, p0, LO0/T;->t:J

    .line 57
    .line 58
    iput-wide v0, p0, LO0/T;->u:J

    .line 59
    .line 60
    iput-wide v0, p0, LO0/T;->v:J

    .line 61
    .line 62
    iput-boolean v3, p0, LO0/T;->w:Z

    .line 63
    .line 64
    :goto_1
    iget-object v0, p0, LO0/T;->c:LF/d;

    .line 65
    .line 66
    iget-object v1, v0, LF/d;->I:Ljava/lang/Object;

    .line 67
    .line 68
    check-cast v1, Landroid/util/SparseArray;

    .line 69
    .line 70
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    if-ge v3, v1, :cond_1

    .line 75
    .line 76
    iget-object v1, v0, LF/d;->J:Ljava/lang/Object;

    .line 77
    .line 78
    check-cast v1, Lp0/j;

    .line 79
    .line 80
    iget-object v0, v0, LF/d;->I:Ljava/lang/Object;

    .line 81
    .line 82
    check-cast v0, Landroid/util/SparseArray;

    .line 83
    .line 84
    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-interface {v1, v0}, Lp0/j;->accept(Ljava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    add-int/lit8 v3, v3, 0x1

    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_1
    const/4 v1, -0x1

    .line 95
    iput v1, v0, LF/d;->H:I

    .line 96
    .line 97
    iget-object v0, v0, LF/d;->I:Ljava/lang/Object;

    .line 98
    .line 99
    check-cast v0, Landroid/util/SparseArray;

    .line 100
    .line 101
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 102
    .line 103
    .line 104
    if-eqz p1, :cond_2

    .line 105
    .line 106
    const/4 p1, 0x0

    .line 107
    iput-object p1, p0, LO0/T;->A:Lm0/t;

    .line 108
    .line 109
    iput-object p1, p0, LO0/T;->B:Lm0/t;

    .line 110
    .line 111
    iput-boolean v4, p0, LO0/T;->y:Z

    .line 112
    .line 113
    iput-boolean v4, p0, LO0/T;->D:Z

    .line 114
    .line 115
    :cond_2
    return-void
.end method

.method public final declared-synchronized F()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x0

    .line 3
    :try_start_0
    iput v0, p0, LO0/T;->s:I

    .line 4
    .line 5
    iget-object v0, p0, LO0/T;->a:LO0/P;

    .line 6
    .line 7
    iget-object v1, v0, LO0/P;->d:LO0/O;

    .line 8
    .line 9
    iput-object v1, v0, LO0/P;->e:LO0/O;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    .line 11
    monitor-exit p0

    .line 12
    return-void

    .line 13
    :catchall_0
    move-exception v0

    .line 14
    monitor-exit p0

    .line 15
    throw v0
.end method

.method public final declared-synchronized G(I)Z
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, LO0/T;->F()V

    .line 3
    .line 4
    .line 5
    iget v0, p0, LO0/T;->q:I

    .line 6
    .line 7
    if-lt p1, v0, :cond_1

    .line 8
    .line 9
    iget v1, p0, LO0/T;->p:I

    .line 10
    .line 11
    add-int/2addr v1, v0

    .line 12
    if-le p1, v1, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const-wide/high16 v1, -0x8000000000000000L

    .line 16
    .line 17
    iput-wide v1, p0, LO0/T;->t:J

    .line 18
    .line 19
    sub-int/2addr p1, v0

    .line 20
    iput p1, p0, LO0/T;->s:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    .line 22
    monitor-exit p0

    .line 23
    const/4 p1, 0x1

    .line 24
    return p1

    .line 25
    :catchall_0
    move-exception p1

    .line 26
    goto :goto_1

    .line 27
    :cond_1
    :goto_0
    monitor-exit p0

    .line 28
    const/4 p1, 0x0

    .line 29
    return p1

    .line 30
    :goto_1
    monitor-exit p0

    .line 31
    throw p1
.end method

.method public final declared-synchronized H(JZ)Z
    .locals 9

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, LO0/T;->F()V

    .line 3
    .line 4
    .line 5
    iget v0, p0, LO0/T;->s:I

    .line 6
    .line 7
    invoke-virtual {p0, v0}, LO0/T;->u(I)I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    invoke-virtual {p0}, LO0/T;->x()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v7, 0x0

    .line 16
    if-eqz v0, :cond_7

    .line 17
    .line 18
    iget-object v0, p0, LO0/T;->n:[J

    .line 19
    .line 20
    aget-wide v3, v0, v2

    .line 21
    .line 22
    cmp-long v0, p1, v3

    .line 23
    .line 24
    if-ltz v0, :cond_7

    .line 25
    .line 26
    iget-wide v0, p0, LO0/T;->v:J

    .line 27
    .line 28
    cmp-long v3, p1, v0

    .line 29
    .line 30
    if-lez v3, :cond_0

    .line 31
    .line 32
    if-nez p3, :cond_0

    .line 33
    .line 34
    goto :goto_3

    .line 35
    :cond_0
    iget-boolean v0, p0, LO0/T;->D:Z

    .line 36
    .line 37
    const/4 v8, -0x1

    .line 38
    if-eqz v0, :cond_5

    .line 39
    .line 40
    iget v0, p0, LO0/T;->p:I

    .line 41
    .line 42
    iget v1, p0, LO0/T;->s:I

    .line 43
    .line 44
    sub-int/2addr v0, v1

    .line 45
    const/4 v1, 0x0

    .line 46
    :goto_0
    if-ge v1, v0, :cond_3

    .line 47
    .line 48
    iget-object v3, p0, LO0/T;->n:[J

    .line 49
    .line 50
    aget-wide v4, v3, v2

    .line 51
    .line 52
    cmp-long v3, v4, p1

    .line 53
    .line 54
    if-ltz v3, :cond_1

    .line 55
    .line 56
    goto :goto_2

    .line 57
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 58
    .line 59
    iget v3, p0, LO0/T;->i:I

    .line 60
    .line 61
    if-ne v2, v3, :cond_2

    .line 62
    .line 63
    const/4 v2, 0x0

    .line 64
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_3
    if-eqz p3, :cond_4

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_4
    const/4 v0, -0x1

    .line 71
    :goto_1
    move v1, v0

    .line 72
    goto :goto_2

    .line 73
    :catchall_0
    move-exception p1

    .line 74
    goto :goto_4

    .line 75
    :cond_5
    iget p3, p0, LO0/T;->p:I

    .line 76
    .line 77
    iget v0, p0, LO0/T;->s:I

    .line 78
    .line 79
    sub-int v3, p3, v0

    .line 80
    .line 81
    const/4 v6, 0x1

    .line 82
    move-object v1, p0

    .line 83
    move-wide v4, p1

    .line 84
    invoke-virtual/range {v1 .. v6}, LO0/T;->o(IIJZ)I

    .line 85
    .line 86
    .line 87
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    :goto_2
    if-ne v1, v8, :cond_6

    .line 89
    .line 90
    monitor-exit p0

    .line 91
    return v7

    .line 92
    :cond_6
    :try_start_1
    iput-wide p1, p0, LO0/T;->t:J

    .line 93
    .line 94
    iget p1, p0, LO0/T;->s:I

    .line 95
    .line 96
    add-int/2addr p1, v1

    .line 97
    iput p1, p0, LO0/T;->s:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 98
    .line 99
    monitor-exit p0

    .line 100
    const/4 p1, 0x1

    .line 101
    return p1

    .line 102
    :cond_7
    :goto_3
    monitor-exit p0

    .line 103
    return v7

    .line 104
    :goto_4
    monitor-exit p0

    .line 105
    throw p1
.end method

.method public final declared-synchronized I(I)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    if-ltz p1, :cond_0

    .line 3
    .line 4
    :try_start_0
    iget v0, p0, LO0/T;->s:I

    .line 5
    .line 6
    add-int/2addr v0, p1

    .line 7
    iget v1, p0, LO0/T;->p:I

    .line 8
    .line 9
    if-gt v0, v1, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :catchall_0
    move-exception p1

    .line 14
    goto :goto_1

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/H1;->d(Z)V

    .line 17
    .line 18
    .line 19
    iget v0, p0, LO0/T;->s:I

    .line 20
    .line 21
    add-int/2addr v0, p1

    .line 22
    iput v0, p0, LO0/T;->s:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    .line 24
    monitor-exit p0

    .line 25
    return-void

    .line 26
    :goto_1
    monitor-exit p0

    .line 27
    throw p1
.end method

.method public final a(IILp0/E;)V
    .locals 8

    .line 1
    :cond_0
    :goto_0
    iget-object p2, p0, LO0/T;->a:LO0/P;

    .line 2
    .line 3
    if-lez p1, :cond_1

    .line 4
    .line 5
    invoke-virtual {p2, p1}, LO0/P;->c(I)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iget-object v1, p2, LO0/P;->f:LO0/O;

    .line 10
    .line 11
    iget-object v2, v1, LO0/O;->c:LS0/a;

    .line 12
    .line 13
    iget-object v3, v2, LS0/a;->a:[B

    .line 14
    .line 15
    iget-wide v4, p2, LO0/P;->g:J

    .line 16
    .line 17
    iget-wide v6, v1, LO0/O;->a:J

    .line 18
    .line 19
    sub-long/2addr v4, v6

    .line 20
    long-to-int v1, v4

    .line 21
    iget v2, v2, LS0/a;->b:I

    .line 22
    .line 23
    add-int/2addr v1, v2

    .line 24
    invoke-virtual {p3, v1, v3, v0}, Lp0/E;->j(I[BI)V

    .line 25
    .line 26
    .line 27
    sub-int/2addr p1, v0

    .line 28
    iget-wide v1, p2, LO0/P;->g:J

    .line 29
    .line 30
    int-to-long v3, v0

    .line 31
    add-long/2addr v1, v3

    .line 32
    iput-wide v1, p2, LO0/P;->g:J

    .line 33
    .line 34
    iget-object v0, p2, LO0/P;->f:LO0/O;

    .line 35
    .line 36
    iget-wide v3, v0, LO0/O;->b:J

    .line 37
    .line 38
    cmp-long v5, v1, v3

    .line 39
    .line 40
    if-nez v5, :cond_0

    .line 41
    .line 42
    iget-object v0, v0, LO0/O;->d:LO0/O;

    .line 43
    .line 44
    iput-object v0, p2, LO0/P;->f:LO0/O;

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method public final b(Lm0/t;)V
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, LO0/T;->p(Lm0/t;)Lm0/t;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    iput-boolean v1, p0, LO0/T;->z:Z

    .line 7
    .line 8
    iput-object p1, p0, LO0/T;->A:Lm0/t;

    .line 9
    .line 10
    monitor-enter p0

    .line 11
    :try_start_0
    iput-boolean v1, p0, LO0/T;->y:Z

    .line 12
    .line 13
    iget-object p1, p0, LO0/T;->B:Lm0/t;

    .line 14
    .line 15
    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    monitor-exit p0

    .line 22
    goto :goto_2

    .line 23
    :cond_0
    :try_start_1
    iget-object p1, p0, LO0/T;->c:LF/d;

    .line 24
    .line 25
    iget-object p1, p1, LF/d;->I:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast p1, Landroid/util/SparseArray;

    .line 28
    .line 29
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    const/4 v2, 0x1

    .line 34
    if-nez p1, :cond_1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    iget-object p1, p0, LO0/T;->c:LF/d;

    .line 38
    .line 39
    iget-object p1, p1, LF/d;->I:Ljava/lang/Object;

    .line 40
    .line 41
    move-object v3, p1

    .line 42
    check-cast v3, Landroid/util/SparseArray;

    .line 43
    .line 44
    check-cast p1, Landroid/util/SparseArray;

    .line 45
    .line 46
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    sub-int/2addr p1, v2

    .line 51
    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    check-cast p1, LO0/Q;

    .line 56
    .line 57
    iget-object p1, p1, LO0/Q;->a:Lm0/t;

    .line 58
    .line 59
    invoke-virtual {p1, v0}, Lm0/t;->equals(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    if-eqz p1, :cond_2

    .line 64
    .line 65
    iget-object p1, p0, LO0/T;->c:LF/d;

    .line 66
    .line 67
    iget-object p1, p1, LF/d;->I:Ljava/lang/Object;

    .line 68
    .line 69
    move-object v0, p1

    .line 70
    check-cast v0, Landroid/util/SparseArray;

    .line 71
    .line 72
    check-cast p1, Landroid/util/SparseArray;

    .line 73
    .line 74
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    .line 75
    .line 76
    .line 77
    move-result p1

    .line 78
    sub-int/2addr p1, v2

    .line 79
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    check-cast p1, LO0/Q;

    .line 84
    .line 85
    iget-object p1, p1, LO0/Q;->a:Lm0/t;

    .line 86
    .line 87
    iput-object p1, p0, LO0/T;->B:Lm0/t;

    .line 88
    .line 89
    goto :goto_1

    .line 90
    :catchall_0
    move-exception p1

    .line 91
    goto :goto_3

    .line 92
    :cond_2
    :goto_0
    iput-object v0, p0, LO0/T;->B:Lm0/t;

    .line 93
    .line 94
    :goto_1
    iget-boolean p1, p0, LO0/T;->D:Z

    .line 95
    .line 96
    iget-object v0, p0, LO0/T;->B:Lm0/t;

    .line 97
    .line 98
    iget-object v3, v0, Lm0/t;->o:Ljava/lang/String;

    .line 99
    .line 100
    iget-object v0, v0, Lm0/t;->k:Ljava/lang/String;

    .line 101
    .line 102
    invoke-static {v3, v0}, Lm0/O;->a(Ljava/lang/String;Ljava/lang/String;)Z

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    and-int/2addr p1, v0

    .line 107
    iput-boolean p1, p0, LO0/T;->D:Z

    .line 108
    .line 109
    iput-boolean v1, p0, LO0/T;->E:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 110
    .line 111
    monitor-exit p0

    .line 112
    const/4 v1, 0x1

    .line 113
    :goto_2
    iget-object p1, p0, LO0/T;->f:LO0/S;

    .line 114
    .line 115
    if-eqz p1, :cond_3

    .line 116
    .line 117
    if-eqz v1, :cond_3

    .line 118
    .line 119
    invoke-interface {p1}, LO0/S;->b()V

    .line 120
    .line 121
    .line 122
    :cond_3
    return-void

    .line 123
    :goto_3
    monitor-exit p0

    .line 124
    throw p1
.end method

.method public final c(Lm0/j;IZ)I
    .locals 8

    .line 1
    iget-object v0, p0, LO0/T;->a:LO0/P;

    .line 2
    .line 3
    invoke-virtual {v0, p2}, LO0/P;->c(I)I

    .line 4
    .line 5
    .line 6
    move-result p2

    .line 7
    iget-object v1, v0, LO0/P;->f:LO0/O;

    .line 8
    .line 9
    iget-object v2, v1, LO0/O;->c:LS0/a;

    .line 10
    .line 11
    iget-object v3, v2, LS0/a;->a:[B

    .line 12
    .line 13
    iget-wide v4, v0, LO0/P;->g:J

    .line 14
    .line 15
    iget-wide v6, v1, LO0/O;->a:J

    .line 16
    .line 17
    sub-long/2addr v4, v6

    .line 18
    long-to-int v1, v4

    .line 19
    iget v2, v2, LS0/a;->b:I

    .line 20
    .line 21
    add-int/2addr v1, v2

    .line 22
    invoke-interface {p1, v3, v1, p2}, Lm0/j;->q([BII)I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    const/4 p2, -0x1

    .line 27
    if-ne p1, p2, :cond_1

    .line 28
    .line 29
    if-eqz p3, :cond_0

    .line 30
    .line 31
    const/4 p1, -0x1

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    new-instance p1, Ljava/io/EOFException;

    .line 34
    .line 35
    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    .line 36
    .line 37
    .line 38
    throw p1

    .line 39
    :cond_1
    iget-wide p2, v0, LO0/P;->g:J

    .line 40
    .line 41
    int-to-long v1, p1

    .line 42
    add-long/2addr p2, v1

    .line 43
    iput-wide p2, v0, LO0/P;->g:J

    .line 44
    .line 45
    iget-object v1, v0, LO0/P;->f:LO0/O;

    .line 46
    .line 47
    iget-wide v2, v1, LO0/O;->b:J

    .line 48
    .line 49
    cmp-long v4, p2, v2

    .line 50
    .line 51
    if-nez v4, :cond_2

    .line 52
    .line 53
    iget-object p2, v1, LO0/O;->d:LO0/O;

    .line 54
    .line 55
    iput-object p2, v0, LO0/P;->f:LO0/O;

    .line 56
    .line 57
    :cond_2
    :goto_0
    return p1
.end method

.method public d(JIIILW0/K;)V
    .locals 12

    .line 1
    move-object v9, p0

    .line 2
    iget-boolean v0, v9, LO0/T;->z:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, v9, LO0/T;->A:Lm0/t;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/H1;->j(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0}, LO0/T;->b(Lm0/t;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    and-int/lit8 v0, p3, 0x1

    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    const/4 v2, 0x0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    const/4 v3, 0x1

    .line 21
    goto :goto_0

    .line 22
    :cond_1
    const/4 v3, 0x0

    .line 23
    :goto_0
    iget-boolean v4, v9, LO0/T;->x:Z

    .line 24
    .line 25
    if-eqz v4, :cond_3

    .line 26
    .line 27
    if-nez v3, :cond_2

    .line 28
    .line 29
    return-void

    .line 30
    :cond_2
    iput-boolean v2, v9, LO0/T;->x:Z

    .line 31
    .line 32
    :cond_3
    iget-wide v4, v9, LO0/T;->F:J

    .line 33
    .line 34
    add-long/2addr v4, p1

    .line 35
    iget-boolean v6, v9, LO0/T;->D:Z

    .line 36
    .line 37
    if-eqz v6, :cond_6

    .line 38
    .line 39
    iget-wide v6, v9, LO0/T;->t:J

    .line 40
    .line 41
    cmp-long v8, v4, v6

    .line 42
    .line 43
    if-gez v8, :cond_4

    .line 44
    .line 45
    return-void

    .line 46
    :cond_4
    if-nez v0, :cond_6

    .line 47
    .line 48
    iget-boolean v0, v9, LO0/T;->E:Z

    .line 49
    .line 50
    if-nez v0, :cond_5

    .line 51
    .line 52
    const-string v0, "SampleQueue"

    .line 53
    .line 54
    new-instance v6, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    const-string v7, "Overriding unexpected non-sync sample for format: "

    .line 57
    .line 58
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    iget-object v7, v9, LO0/T;->B:Lm0/t;

    .line 62
    .line 63
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v6

    .line 70
    invoke-static {v0, v6}, Lp0/x;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    iput-boolean v1, v9, LO0/T;->E:Z

    .line 74
    .line 75
    :cond_5
    or-int/lit8 v0, p3, 0x1

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_6
    move v0, p3

    .line 79
    :goto_1
    iget-boolean v6, v9, LO0/T;->G:Z

    .line 80
    .line 81
    if-eqz v6, :cond_c

    .line 82
    .line 83
    if-eqz v3, :cond_b

    .line 84
    .line 85
    monitor-enter p0

    .line 86
    :try_start_0
    iget v3, v9, LO0/T;->p:I

    .line 87
    .line 88
    if-nez v3, :cond_8

    .line 89
    .line 90
    iget-wide v6, v9, LO0/T;->u:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    .line 92
    cmp-long v3, v4, v6

    .line 93
    .line 94
    if-lez v3, :cond_7

    .line 95
    .line 96
    goto :goto_2

    .line 97
    :cond_7
    const/4 v1, 0x0

    .line 98
    :goto_2
    monitor-exit p0

    .line 99
    if-nez v1, :cond_a

    .line 100
    .line 101
    goto :goto_4

    .line 102
    :catchall_0
    move-exception v0

    .line 103
    goto :goto_3

    .line 104
    :cond_8
    :try_start_1
    invoke-virtual {p0}, LO0/T;->r()J

    .line 105
    .line 106
    .line 107
    move-result-wide v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 108
    cmp-long v1, v6, v4

    .line 109
    .line 110
    if-ltz v1, :cond_9

    .line 111
    .line 112
    monitor-exit p0

    .line 113
    goto :goto_4

    .line 114
    :cond_9
    :try_start_2
    invoke-virtual {p0, v4, v5}, LO0/T;->h(J)I

    .line 115
    .line 116
    .line 117
    move-result v1

    .line 118
    iget v3, v9, LO0/T;->q:I

    .line 119
    .line 120
    add-int/2addr v3, v1

    .line 121
    invoke-virtual {p0, v3}, LO0/T;->m(I)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 122
    .line 123
    .line 124
    monitor-exit p0

    .line 125
    :cond_a
    iput-boolean v2, v9, LO0/T;->G:Z

    .line 126
    .line 127
    goto :goto_5

    .line 128
    :goto_3
    monitor-exit p0

    .line 129
    throw v0

    .line 130
    :cond_b
    :goto_4
    return-void

    .line 131
    :cond_c
    :goto_5
    iget-object v1, v9, LO0/T;->a:LO0/P;

    .line 132
    .line 133
    iget-wide v1, v1, LO0/P;->g:J

    .line 134
    .line 135
    move/from16 v7, p4

    .line 136
    .line 137
    int-to-long v10, v7

    .line 138
    sub-long/2addr v1, v10

    .line 139
    move/from16 v3, p5

    .line 140
    .line 141
    int-to-long v10, v3

    .line 142
    sub-long v10, v1, v10

    .line 143
    .line 144
    move-object v1, p0

    .line 145
    move-wide v2, v4

    .line 146
    move v4, v0

    .line 147
    move-wide v5, v10

    .line 148
    move/from16 v7, p4

    .line 149
    .line 150
    move-object/from16 v8, p6

    .line 151
    .line 152
    invoke-virtual/range {v1 .. v8}, LO0/T;->g(JIJILW0/K;)V

    .line 153
    .line 154
    .line 155
    return-void
.end method

.method public final synthetic e(ILp0/E;)V
    .locals 0

    .line 1
    invoke-static {p0, p2, p1}, LA0/O;->b(LW0/L;Lp0/E;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final f(Lm0/j;IZ)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, LO0/T;->c(Lm0/j;IZ)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public final declared-synchronized g(JIJILW0/K;)V
    .locals 8

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, LO0/T;->p:I

    .line 3
    .line 4
    const/4 v1, 0x1

    .line 5
    const/4 v2, 0x0

    .line 6
    if-lez v0, :cond_1

    .line 7
    .line 8
    sub-int/2addr v0, v1

    .line 9
    invoke-virtual {p0, v0}, LO0/T;->u(I)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    iget-object v3, p0, LO0/T;->k:[J

    .line 14
    .line 15
    aget-wide v4, v3, v0

    .line 16
    .line 17
    iget-object v3, p0, LO0/T;->l:[I

    .line 18
    .line 19
    aget v0, v3, v0

    .line 20
    .line 21
    int-to-long v6, v0

    .line 22
    add-long/2addr v4, v6

    .line 23
    cmp-long v0, v4, p4

    .line 24
    .line 25
    if-gtz v0, :cond_0

    .line 26
    .line 27
    const/4 v0, 0x1

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 v0, 0x0

    .line 30
    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/H1;->d(Z)V

    .line 31
    .line 32
    .line 33
    goto :goto_1

    .line 34
    :catchall_0
    move-exception p1

    .line 35
    goto/16 :goto_5

    .line 36
    .line 37
    :cond_1
    :goto_1
    const/high16 v0, 0x20000000

    .line 38
    .line 39
    and-int/2addr v0, p3

    .line 40
    if-eqz v0, :cond_2

    .line 41
    .line 42
    const/4 v0, 0x1

    .line 43
    goto :goto_2

    .line 44
    :cond_2
    const/4 v0, 0x0

    .line 45
    :goto_2
    iput-boolean v0, p0, LO0/T;->w:Z

    .line 46
    .line 47
    iget-wide v3, p0, LO0/T;->v:J

    .line 48
    .line 49
    invoke-static {v3, v4, p1, p2}, Ljava/lang/Math;->max(JJ)J

    .line 50
    .line 51
    .line 52
    move-result-wide v3

    .line 53
    iput-wide v3, p0, LO0/T;->v:J

    .line 54
    .line 55
    iget v0, p0, LO0/T;->p:I

    .line 56
    .line 57
    invoke-virtual {p0, v0}, LO0/T;->u(I)I

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    iget-object v3, p0, LO0/T;->n:[J

    .line 62
    .line 63
    aput-wide p1, v3, v0

    .line 64
    .line 65
    iget-object p1, p0, LO0/T;->k:[J

    .line 66
    .line 67
    aput-wide p4, p1, v0

    .line 68
    .line 69
    iget-object p1, p0, LO0/T;->l:[I

    .line 70
    .line 71
    aput p6, p1, v0

    .line 72
    .line 73
    iget-object p1, p0, LO0/T;->m:[I

    .line 74
    .line 75
    aput p3, p1, v0

    .line 76
    .line 77
    iget-object p1, p0, LO0/T;->o:[LW0/K;

    .line 78
    .line 79
    aput-object p7, p1, v0

    .line 80
    .line 81
    iget-object p1, p0, LO0/T;->j:[J

    .line 82
    .line 83
    iget-wide p2, p0, LO0/T;->C:J

    .line 84
    .line 85
    aput-wide p2, p1, v0

    .line 86
    .line 87
    iget-object p1, p0, LO0/T;->c:LF/d;

    .line 88
    .line 89
    iget-object p1, p1, LF/d;->I:Ljava/lang/Object;

    .line 90
    .line 91
    check-cast p1, Landroid/util/SparseArray;

    .line 92
    .line 93
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    .line 94
    .line 95
    .line 96
    move-result p1

    .line 97
    if-nez p1, :cond_3

    .line 98
    .line 99
    goto :goto_3

    .line 100
    :cond_3
    iget-object p1, p0, LO0/T;->c:LF/d;

    .line 101
    .line 102
    iget-object p1, p1, LF/d;->I:Ljava/lang/Object;

    .line 103
    .line 104
    move-object p2, p1

    .line 105
    check-cast p2, Landroid/util/SparseArray;

    .line 106
    .line 107
    check-cast p1, Landroid/util/SparseArray;

    .line 108
    .line 109
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    .line 110
    .line 111
    .line 112
    move-result p1

    .line 113
    sub-int/2addr p1, v1

    .line 114
    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    check-cast p1, LO0/Q;

    .line 119
    .line 120
    iget-object p1, p1, LO0/Q;->a:Lm0/t;

    .line 121
    .line 122
    iget-object p2, p0, LO0/T;->B:Lm0/t;

    .line 123
    .line 124
    invoke-virtual {p1, p2}, Lm0/t;->equals(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    move-result p1

    .line 128
    if-nez p1, :cond_5

    .line 129
    .line 130
    :goto_3
    iget-object p1, p0, LO0/T;->B:Lm0/t;

    .line 131
    .line 132
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 133
    .line 134
    .line 135
    iget-object p2, p0, LO0/T;->d:LG0/r;

    .line 136
    .line 137
    if-eqz p2, :cond_4

    .line 138
    .line 139
    iget-object p3, p0, LO0/T;->e:LG0/o;

    .line 140
    .line 141
    invoke-interface {p2, p3, p1}, LG0/r;->n(LG0/o;Lm0/t;)LG0/q;

    .line 142
    .line 143
    .line 144
    move-result-object p2

    .line 145
    goto :goto_4

    .line 146
    :cond_4
    sget-object p2, LG0/q;->c:LN/i;

    .line 147
    .line 148
    :goto_4
    iget-object p3, p0, LO0/T;->c:LF/d;

    .line 149
    .line 150
    iget p4, p0, LO0/T;->q:I

    .line 151
    .line 152
    iget p5, p0, LO0/T;->p:I

    .line 153
    .line 154
    add-int/2addr p4, p5

    .line 155
    new-instance p5, LO0/Q;

    .line 156
    .line 157
    invoke-direct {p5, p1, p2}, LO0/Q;-><init>(Lm0/t;LG0/q;)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {p3, p4, p5}, LF/d;->b(ILO0/Q;)V

    .line 161
    .line 162
    .line 163
    :cond_5
    iget p1, p0, LO0/T;->p:I

    .line 164
    .line 165
    add-int/2addr p1, v1

    .line 166
    iput p1, p0, LO0/T;->p:I

    .line 167
    .line 168
    iget p2, p0, LO0/T;->i:I

    .line 169
    .line 170
    if-ne p1, p2, :cond_6

    .line 171
    .line 172
    add-int/lit16 p1, p2, 0x3e8

    .line 173
    .line 174
    new-array p3, p1, [J

    .line 175
    .line 176
    new-array p4, p1, [J

    .line 177
    .line 178
    new-array p5, p1, [J

    .line 179
    .line 180
    new-array p6, p1, [I

    .line 181
    .line 182
    new-array p7, p1, [I

    .line 183
    .line 184
    new-array v0, p1, [LW0/K;

    .line 185
    .line 186
    iget v1, p0, LO0/T;->r:I

    .line 187
    .line 188
    sub-int/2addr p2, v1

    .line 189
    iget-object v3, p0, LO0/T;->k:[J

    .line 190
    .line 191
    invoke-static {v3, v1, p4, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 192
    .line 193
    .line 194
    iget-object v1, p0, LO0/T;->n:[J

    .line 195
    .line 196
    iget v3, p0, LO0/T;->r:I

    .line 197
    .line 198
    invoke-static {v1, v3, p5, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 199
    .line 200
    .line 201
    iget-object v1, p0, LO0/T;->m:[I

    .line 202
    .line 203
    iget v3, p0, LO0/T;->r:I

    .line 204
    .line 205
    invoke-static {v1, v3, p6, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 206
    .line 207
    .line 208
    iget-object v1, p0, LO0/T;->l:[I

    .line 209
    .line 210
    iget v3, p0, LO0/T;->r:I

    .line 211
    .line 212
    invoke-static {v1, v3, p7, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 213
    .line 214
    .line 215
    iget-object v1, p0, LO0/T;->o:[LW0/K;

    .line 216
    .line 217
    iget v3, p0, LO0/T;->r:I

    .line 218
    .line 219
    invoke-static {v1, v3, v0, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 220
    .line 221
    .line 222
    iget-object v1, p0, LO0/T;->j:[J

    .line 223
    .line 224
    iget v3, p0, LO0/T;->r:I

    .line 225
    .line 226
    invoke-static {v1, v3, p3, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 227
    .line 228
    .line 229
    iget v1, p0, LO0/T;->r:I

    .line 230
    .line 231
    iget-object v3, p0, LO0/T;->k:[J

    .line 232
    .line 233
    invoke-static {v3, v2, p4, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 234
    .line 235
    .line 236
    iget-object v3, p0, LO0/T;->n:[J

    .line 237
    .line 238
    invoke-static {v3, v2, p5, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 239
    .line 240
    .line 241
    iget-object v3, p0, LO0/T;->m:[I

    .line 242
    .line 243
    invoke-static {v3, v2, p6, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 244
    .line 245
    .line 246
    iget-object v3, p0, LO0/T;->l:[I

    .line 247
    .line 248
    invoke-static {v3, v2, p7, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 249
    .line 250
    .line 251
    iget-object v3, p0, LO0/T;->o:[LW0/K;

    .line 252
    .line 253
    invoke-static {v3, v2, v0, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 254
    .line 255
    .line 256
    iget-object v3, p0, LO0/T;->j:[J

    .line 257
    .line 258
    invoke-static {v3, v2, p3, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 259
    .line 260
    .line 261
    iput-object p4, p0, LO0/T;->k:[J

    .line 262
    .line 263
    iput-object p5, p0, LO0/T;->n:[J

    .line 264
    .line 265
    iput-object p6, p0, LO0/T;->m:[I

    .line 266
    .line 267
    iput-object p7, p0, LO0/T;->l:[I

    .line 268
    .line 269
    iput-object v0, p0, LO0/T;->o:[LW0/K;

    .line 270
    .line 271
    iput-object p3, p0, LO0/T;->j:[J

    .line 272
    .line 273
    iput v2, p0, LO0/T;->r:I

    .line 274
    .line 275
    iput p1, p0, LO0/T;->i:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 276
    .line 277
    :cond_6
    monitor-exit p0

    .line 278
    return-void

    .line 279
    :goto_5
    monitor-exit p0

    .line 280
    throw p1
.end method

.method public final h(J)I
    .locals 5

    .line 1
    iget v0, p0, LO0/T;->p:I

    .line 2
    .line 3
    add-int/lit8 v1, v0, -0x1

    .line 4
    .line 5
    invoke-virtual {p0, v1}, LO0/T;->u(I)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    :cond_0
    :goto_0
    iget v2, p0, LO0/T;->s:I

    .line 10
    .line 11
    if-le v0, v2, :cond_1

    .line 12
    .line 13
    iget-object v2, p0, LO0/T;->n:[J

    .line 14
    .line 15
    aget-wide v3, v2, v1

    .line 16
    .line 17
    cmp-long v2, v3, p1

    .line 18
    .line 19
    if-ltz v2, :cond_1

    .line 20
    .line 21
    add-int/lit8 v0, v0, -0x1

    .line 22
    .line 23
    add-int/lit8 v1, v1, -0x1

    .line 24
    .line 25
    const/4 v2, -0x1

    .line 26
    if-ne v1, v2, :cond_0

    .line 27
    .line 28
    iget v1, p0, LO0/T;->i:I

    .line 29
    .line 30
    add-int/lit8 v1, v1, -0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    return v0
.end method

.method public final i(I)J
    .locals 5

    .line 1
    iget-wide v0, p0, LO0/T;->u:J

    .line 2
    .line 3
    invoke-virtual {p0, p1}, LO0/T;->s(I)J

    .line 4
    .line 5
    .line 6
    move-result-wide v2

    .line 7
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    iput-wide v0, p0, LO0/T;->u:J

    .line 12
    .line 13
    iget v0, p0, LO0/T;->p:I

    .line 14
    .line 15
    sub-int/2addr v0, p1

    .line 16
    iput v0, p0, LO0/T;->p:I

    .line 17
    .line 18
    iget v0, p0, LO0/T;->q:I

    .line 19
    .line 20
    add-int/2addr v0, p1

    .line 21
    iput v0, p0, LO0/T;->q:I

    .line 22
    .line 23
    iget v1, p0, LO0/T;->r:I

    .line 24
    .line 25
    add-int/2addr v1, p1

    .line 26
    iput v1, p0, LO0/T;->r:I

    .line 27
    .line 28
    iget v2, p0, LO0/T;->i:I

    .line 29
    .line 30
    if-lt v1, v2, :cond_0

    .line 31
    .line 32
    sub-int/2addr v1, v2

    .line 33
    iput v1, p0, LO0/T;->r:I

    .line 34
    .line 35
    :cond_0
    iget v1, p0, LO0/T;->s:I

    .line 36
    .line 37
    sub-int/2addr v1, p1

    .line 38
    iput v1, p0, LO0/T;->s:I

    .line 39
    .line 40
    const/4 p1, 0x0

    .line 41
    if-gez v1, :cond_1

    .line 42
    .line 43
    iput p1, p0, LO0/T;->s:I

    .line 44
    .line 45
    :cond_1
    :goto_0
    iget-object v1, p0, LO0/T;->c:LF/d;

    .line 46
    .line 47
    iget-object v2, v1, LF/d;->I:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast v2, Landroid/util/SparseArray;

    .line 50
    .line 51
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    add-int/lit8 v2, v2, -0x1

    .line 56
    .line 57
    if-ge p1, v2, :cond_3

    .line 58
    .line 59
    iget-object v2, v1, LF/d;->I:Ljava/lang/Object;

    .line 60
    .line 61
    check-cast v2, Landroid/util/SparseArray;

    .line 62
    .line 63
    add-int/lit8 v3, p1, 0x1

    .line 64
    .line 65
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->keyAt(I)I

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    if-lt v0, v2, :cond_3

    .line 70
    .line 71
    iget-object v2, v1, LF/d;->J:Ljava/lang/Object;

    .line 72
    .line 73
    check-cast v2, Lp0/j;

    .line 74
    .line 75
    iget-object v4, v1, LF/d;->I:Ljava/lang/Object;

    .line 76
    .line 77
    check-cast v4, Landroid/util/SparseArray;

    .line 78
    .line 79
    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v4

    .line 83
    invoke-interface {v2, v4}, Lp0/j;->accept(Ljava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    iget-object v2, v1, LF/d;->I:Ljava/lang/Object;

    .line 87
    .line 88
    check-cast v2, Landroid/util/SparseArray;

    .line 89
    .line 90
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->removeAt(I)V

    .line 91
    .line 92
    .line 93
    iget p1, v1, LF/d;->H:I

    .line 94
    .line 95
    if-lez p1, :cond_2

    .line 96
    .line 97
    add-int/lit8 p1, p1, -0x1

    .line 98
    .line 99
    iput p1, v1, LF/d;->H:I

    .line 100
    .line 101
    :cond_2
    move p1, v3

    .line 102
    goto :goto_0

    .line 103
    :cond_3
    iget p1, p0, LO0/T;->p:I

    .line 104
    .line 105
    if-nez p1, :cond_5

    .line 106
    .line 107
    iget p1, p0, LO0/T;->r:I

    .line 108
    .line 109
    if-nez p1, :cond_4

    .line 110
    .line 111
    iget p1, p0, LO0/T;->i:I

    .line 112
    .line 113
    :cond_4
    add-int/lit8 p1, p1, -0x1

    .line 114
    .line 115
    iget-object v0, p0, LO0/T;->k:[J

    .line 116
    .line 117
    aget-wide v1, v0, p1

    .line 118
    .line 119
    iget-object v0, p0, LO0/T;->l:[I

    .line 120
    .line 121
    aget p1, v0, p1

    .line 122
    .line 123
    int-to-long v3, p1

    .line 124
    add-long/2addr v1, v3

    .line 125
    return-wide v1

    .line 126
    :cond_5
    iget-object p1, p0, LO0/T;->k:[J

    .line 127
    .line 128
    iget v0, p0, LO0/T;->r:I

    .line 129
    .line 130
    aget-wide v0, p1, v0

    .line 131
    .line 132
    return-wide v0
.end method

.method public final j(JZZ)V
    .locals 11

    .line 1
    iget-object v0, p0, LO0/T;->a:LO0/P;

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget v1, p0, LO0/T;->p:I

    .line 5
    .line 6
    const-wide/16 v2, -0x1

    .line 7
    .line 8
    if-eqz v1, :cond_3

    .line 9
    .line 10
    iget-object v4, p0, LO0/T;->n:[J

    .line 11
    .line 12
    iget v6, p0, LO0/T;->r:I

    .line 13
    .line 14
    aget-wide v7, v4, v6

    .line 15
    .line 16
    cmp-long v4, p1, v7

    .line 17
    .line 18
    if-gez v4, :cond_0

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_0
    if-eqz p4, :cond_1

    .line 22
    .line 23
    iget p4, p0, LO0/T;->s:I

    .line 24
    .line 25
    if-eq p4, v1, :cond_1

    .line 26
    .line 27
    add-int/lit8 v1, p4, 0x1

    .line 28
    .line 29
    :cond_1
    move v7, v1

    .line 30
    goto :goto_0

    .line 31
    :catchall_0
    move-exception p1

    .line 32
    goto :goto_3

    .line 33
    :goto_0
    move-object v5, p0

    .line 34
    move-wide v8, p1

    .line 35
    move v10, p3

    .line 36
    invoke-virtual/range {v5 .. v10}, LO0/T;->o(IIJZ)I

    .line 37
    .line 38
    .line 39
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    const/4 p2, -0x1

    .line 41
    if-ne p1, p2, :cond_2

    .line 42
    .line 43
    monitor-exit p0

    .line 44
    goto :goto_2

    .line 45
    :cond_2
    :try_start_1
    invoke-virtual {p0, p1}, LO0/T;->i(I)J

    .line 46
    .line 47
    .line 48
    move-result-wide v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    monitor-exit p0

    .line 50
    goto :goto_2

    .line 51
    :cond_3
    :goto_1
    monitor-exit p0

    .line 52
    :goto_2
    invoke-virtual {v0, v2, v3}, LO0/P;->b(J)V

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :goto_3
    monitor-exit p0

    .line 57
    throw p1
.end method

.method public final k()V
    .locals 3

    .line 1
    iget-object v0, p0, LO0/T;->a:LO0/P;

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget v1, p0, LO0/T;->p:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    monitor-exit p0

    .line 9
    const-wide/16 v1, -0x1

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    :try_start_1
    invoke-virtual {p0, v1}, LO0/T;->i(I)J

    .line 13
    .line 14
    .line 15
    move-result-wide v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16
    monitor-exit p0

    .line 17
    :goto_0
    invoke-virtual {v0, v1, v2}, LO0/P;->b(J)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :catchall_0
    move-exception v0

    .line 22
    monitor-exit p0

    .line 23
    throw v0
.end method

.method public final l(J)V
    .locals 3

    .line 1
    iget v0, p0, LO0/T;->p:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, LO0/T;->r()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    cmp-long v2, p1, v0

    .line 11
    .line 12
    if-lez v2, :cond_1

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_1
    const/4 v0, 0x0

    .line 17
    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/H1;->d(Z)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, p1, p2}, LO0/T;->h(J)I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    iget p2, p0, LO0/T;->q:I

    .line 25
    .line 26
    add-int/2addr p2, p1

    .line 27
    invoke-virtual {p0, p2}, LO0/T;->n(I)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public final m(I)J
    .locals 8

    .line 1
    iget v0, p0, LO0/T;->q:I

    .line 2
    .line 3
    iget v1, p0, LO0/T;->p:I

    .line 4
    .line 5
    add-int/2addr v0, v1

    .line 6
    sub-int/2addr v0, p1

    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x1

    .line 9
    if-ltz v0, :cond_0

    .line 10
    .line 11
    iget v4, p0, LO0/T;->s:I

    .line 12
    .line 13
    sub-int/2addr v1, v4

    .line 14
    if-gt v0, v1, :cond_0

    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v1, 0x0

    .line 19
    :goto_0
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/H1;->d(Z)V

    .line 20
    .line 21
    .line 22
    iget v1, p0, LO0/T;->p:I

    .line 23
    .line 24
    sub-int/2addr v1, v0

    .line 25
    iput v1, p0, LO0/T;->p:I

    .line 26
    .line 27
    iget-wide v4, p0, LO0/T;->u:J

    .line 28
    .line 29
    invoke-virtual {p0, v1}, LO0/T;->s(I)J

    .line 30
    .line 31
    .line 32
    move-result-wide v6

    .line 33
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    .line 34
    .line 35
    .line 36
    move-result-wide v4

    .line 37
    iput-wide v4, p0, LO0/T;->v:J

    .line 38
    .line 39
    if-nez v0, :cond_1

    .line 40
    .line 41
    iget-boolean v0, p0, LO0/T;->w:Z

    .line 42
    .line 43
    if-eqz v0, :cond_1

    .line 44
    .line 45
    const/4 v2, 0x1

    .line 46
    :cond_1
    iput-boolean v2, p0, LO0/T;->w:Z

    .line 47
    .line 48
    iget-object v0, p0, LO0/T;->c:LF/d;

    .line 49
    .line 50
    iget-object v1, v0, LF/d;->I:Ljava/lang/Object;

    .line 51
    .line 52
    check-cast v1, Landroid/util/SparseArray;

    .line 53
    .line 54
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    sub-int/2addr v1, v3

    .line 59
    :goto_1
    if-ltz v1, :cond_2

    .line 60
    .line 61
    iget-object v2, v0, LF/d;->I:Ljava/lang/Object;

    .line 62
    .line 63
    check-cast v2, Landroid/util/SparseArray;

    .line 64
    .line 65
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    if-ge p1, v2, :cond_2

    .line 70
    .line 71
    iget-object v2, v0, LF/d;->J:Ljava/lang/Object;

    .line 72
    .line 73
    check-cast v2, Lp0/j;

    .line 74
    .line 75
    iget-object v4, v0, LF/d;->I:Ljava/lang/Object;

    .line 76
    .line 77
    check-cast v4, Landroid/util/SparseArray;

    .line 78
    .line 79
    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v4

    .line 83
    invoke-interface {v2, v4}, Lp0/j;->accept(Ljava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    iget-object v2, v0, LF/d;->I:Ljava/lang/Object;

    .line 87
    .line 88
    check-cast v2, Landroid/util/SparseArray;

    .line 89
    .line 90
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->removeAt(I)V

    .line 91
    .line 92
    .line 93
    add-int/lit8 v1, v1, -0x1

    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_2
    iget-object p1, v0, LF/d;->I:Ljava/lang/Object;

    .line 97
    .line 98
    check-cast p1, Landroid/util/SparseArray;

    .line 99
    .line 100
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    .line 101
    .line 102
    .line 103
    move-result p1

    .line 104
    if-lez p1, :cond_3

    .line 105
    .line 106
    iget p1, v0, LF/d;->H:I

    .line 107
    .line 108
    iget-object v1, v0, LF/d;->I:Ljava/lang/Object;

    .line 109
    .line 110
    check-cast v1, Landroid/util/SparseArray;

    .line 111
    .line 112
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 113
    .line 114
    .line 115
    move-result v1

    .line 116
    sub-int/2addr v1, v3

    .line 117
    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    .line 118
    .line 119
    .line 120
    move-result p1

    .line 121
    goto :goto_2

    .line 122
    :cond_3
    const/4 p1, -0x1

    .line 123
    :goto_2
    iput p1, v0, LF/d;->H:I

    .line 124
    .line 125
    iget p1, p0, LO0/T;->p:I

    .line 126
    .line 127
    if-eqz p1, :cond_4

    .line 128
    .line 129
    sub-int/2addr p1, v3

    .line 130
    invoke-virtual {p0, p1}, LO0/T;->u(I)I

    .line 131
    .line 132
    .line 133
    move-result p1

    .line 134
    iget-object v0, p0, LO0/T;->k:[J

    .line 135
    .line 136
    aget-wide v1, v0, p1

    .line 137
    .line 138
    iget-object v0, p0, LO0/T;->l:[I

    .line 139
    .line 140
    aget p1, v0, p1

    .line 141
    .line 142
    int-to-long v3, p1

    .line 143
    add-long/2addr v1, v3

    .line 144
    return-wide v1

    .line 145
    :cond_4
    const-wide/16 v0, 0x0

    .line 146
    .line 147
    return-wide v0
.end method

.method public final n(I)V
    .locals 8

    .line 1
    invoke-virtual {p0, p1}, LO0/T;->m(I)J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-object p1, p0, LO0/T;->a:LO0/P;

    .line 6
    .line 7
    iget-wide v2, p1, LO0/P;->g:J

    .line 8
    .line 9
    cmp-long v4, v0, v2

    .line 10
    .line 11
    if-gtz v4, :cond_0

    .line 12
    .line 13
    const/4 v2, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v2, 0x0

    .line 16
    :goto_0
    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/H1;->d(Z)V

    .line 17
    .line 18
    .line 19
    iput-wide v0, p1, LO0/P;->g:J

    .line 20
    .line 21
    const-wide/16 v2, 0x0

    .line 22
    .line 23
    iget v4, p1, LO0/P;->b:I

    .line 24
    .line 25
    cmp-long v5, v0, v2

    .line 26
    .line 27
    if-eqz v5, :cond_4

    .line 28
    .line 29
    iget-object v2, p1, LO0/P;->d:LO0/O;

    .line 30
    .line 31
    iget-wide v5, v2, LO0/O;->a:J

    .line 32
    .line 33
    cmp-long v3, v0, v5

    .line 34
    .line 35
    if-nez v3, :cond_1

    .line 36
    .line 37
    goto :goto_2

    .line 38
    :cond_1
    :goto_1
    iget-wide v0, p1, LO0/P;->g:J

    .line 39
    .line 40
    iget-wide v5, v2, LO0/O;->b:J

    .line 41
    .line 42
    cmp-long v3, v0, v5

    .line 43
    .line 44
    if-lez v3, :cond_2

    .line 45
    .line 46
    iget-object v2, v2, LO0/O;->d:LO0/O;

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_2
    iget-object v0, v2, LO0/O;->d:LO0/O;

    .line 50
    .line 51
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1, v0}, LO0/P;->a(LO0/O;)V

    .line 55
    .line 56
    .line 57
    new-instance v1, LO0/O;

    .line 58
    .line 59
    iget-wide v5, v2, LO0/O;->b:J

    .line 60
    .line 61
    invoke-direct {v1, v4, v5, v6}, LO0/O;-><init>(IJ)V

    .line 62
    .line 63
    .line 64
    iput-object v1, v2, LO0/O;->d:LO0/O;

    .line 65
    .line 66
    iget-wide v3, p1, LO0/P;->g:J

    .line 67
    .line 68
    iget-wide v5, v2, LO0/O;->b:J

    .line 69
    .line 70
    cmp-long v7, v3, v5

    .line 71
    .line 72
    if-nez v7, :cond_3

    .line 73
    .line 74
    move-object v2, v1

    .line 75
    :cond_3
    iput-object v2, p1, LO0/P;->f:LO0/O;

    .line 76
    .line 77
    iget-object v2, p1, LO0/P;->e:LO0/O;

    .line 78
    .line 79
    if-ne v2, v0, :cond_5

    .line 80
    .line 81
    iput-object v1, p1, LO0/P;->e:LO0/O;

    .line 82
    .line 83
    goto :goto_3

    .line 84
    :cond_4
    :goto_2
    iget-object v0, p1, LO0/P;->d:LO0/O;

    .line 85
    .line 86
    invoke-virtual {p1, v0}, LO0/P;->a(LO0/O;)V

    .line 87
    .line 88
    .line 89
    new-instance v0, LO0/O;

    .line 90
    .line 91
    iget-wide v1, p1, LO0/P;->g:J

    .line 92
    .line 93
    invoke-direct {v0, v4, v1, v2}, LO0/O;-><init>(IJ)V

    .line 94
    .line 95
    .line 96
    iput-object v0, p1, LO0/P;->d:LO0/O;

    .line 97
    .line 98
    iput-object v0, p1, LO0/P;->e:LO0/O;

    .line 99
    .line 100
    iput-object v0, p1, LO0/P;->f:LO0/O;

    .line 101
    .line 102
    :cond_5
    :goto_3
    return-void
.end method

.method public final o(IIJZ)I
    .locals 6

    .line 1
    const/4 v0, -0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x0

    .line 4
    :goto_0
    if-ge v2, p2, :cond_4

    .line 5
    .line 6
    iget-object v3, p0, LO0/T;->n:[J

    .line 7
    .line 8
    aget-wide v4, v3, p1

    .line 9
    .line 10
    cmp-long v3, v4, p3

    .line 11
    .line 12
    if-gtz v3, :cond_4

    .line 13
    .line 14
    if-eqz p5, :cond_0

    .line 15
    .line 16
    iget-object v3, p0, LO0/T;->m:[I

    .line 17
    .line 18
    aget v3, v3, p1

    .line 19
    .line 20
    and-int/lit8 v3, v3, 0x1

    .line 21
    .line 22
    if-eqz v3, :cond_2

    .line 23
    .line 24
    :cond_0
    cmp-long v0, v4, p3

    .line 25
    .line 26
    if-nez v0, :cond_1

    .line 27
    .line 28
    move v0, v2

    .line 29
    goto :goto_1

    .line 30
    :cond_1
    move v0, v2

    .line 31
    :cond_2
    add-int/lit8 p1, p1, 0x1

    .line 32
    .line 33
    iget v3, p0, LO0/T;->i:I

    .line 34
    .line 35
    if-ne p1, v3, :cond_3

    .line 36
    .line 37
    const/4 p1, 0x0

    .line 38
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_4
    :goto_1
    return v0
.end method

.method public p(Lm0/t;)Lm0/t;
    .locals 5

    .line 1
    iget-wide v0, p0, LO0/T;->F:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v4, v0, v2

    .line 6
    .line 7
    if-eqz v4, :cond_0

    .line 8
    .line 9
    iget-wide v0, p1, Lm0/t;->t:J

    .line 10
    .line 11
    const-wide v2, 0x7fffffffffffffffL

    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    cmp-long v4, v0, v2

    .line 17
    .line 18
    if-eqz v4, :cond_0

    .line 19
    .line 20
    invoke-virtual {p1}, Lm0/t;->a()Lm0/s;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iget-wide v1, p1, Lm0/t;->t:J

    .line 25
    .line 26
    iget-wide v3, p0, LO0/T;->F:J

    .line 27
    .line 28
    add-long/2addr v1, v3

    .line 29
    iput-wide v1, v0, Lm0/s;->s:J

    .line 30
    .line 31
    invoke-virtual {v0}, Lm0/s;->a()Lm0/t;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    :cond_0
    return-object p1
.end method

.method public final declared-synchronized q()J
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v0, p0, LO0/T;->v:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return-wide v0

    .line 6
    :catchall_0
    move-exception v0

    .line 7
    monitor-exit p0

    .line 8
    throw v0
.end method

.method public final declared-synchronized r()J
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v0, p0, LO0/T;->u:J

    .line 3
    .line 4
    iget v2, p0, LO0/T;->s:I

    .line 5
    .line 6
    invoke-virtual {p0, v2}, LO0/T;->s(I)J

    .line 7
    .line 8
    .line 9
    move-result-wide v2

    .line 10
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    .line 11
    .line 12
    .line 13
    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    monitor-exit p0

    .line 15
    return-wide v0

    .line 16
    :catchall_0
    move-exception v0

    .line 17
    monitor-exit p0

    .line 18
    throw v0
.end method

.method public final s(I)J
    .locals 7

    .line 1
    const-wide/high16 v0, -0x8000000000000000L

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    return-wide v0

    .line 6
    :cond_0
    add-int/lit8 v2, p1, -0x1

    .line 7
    .line 8
    invoke-virtual {p0, v2}, LO0/T;->u(I)I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    const/4 v3, 0x0

    .line 13
    :goto_0
    if-ge v3, p1, :cond_3

    .line 14
    .line 15
    iget-object v4, p0, LO0/T;->n:[J

    .line 16
    .line 17
    aget-wide v5, v4, v2

    .line 18
    .line 19
    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->max(JJ)J

    .line 20
    .line 21
    .line 22
    move-result-wide v0

    .line 23
    iget-object v4, p0, LO0/T;->m:[I

    .line 24
    .line 25
    aget v4, v4, v2

    .line 26
    .line 27
    and-int/lit8 v4, v4, 0x1

    .line 28
    .line 29
    if-eqz v4, :cond_1

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_1
    add-int/lit8 v2, v2, -0x1

    .line 33
    .line 34
    const/4 v4, -0x1

    .line 35
    if-ne v2, v4, :cond_2

    .line 36
    .line 37
    iget v2, p0, LO0/T;->i:I

    .line 38
    .line 39
    add-int/lit8 v2, v2, -0x1

    .line 40
    .line 41
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_3
    :goto_1
    return-wide v0
.end method

.method public final t()I
    .locals 2

    .line 1
    iget v0, p0, LO0/T;->q:I

    .line 2
    .line 3
    iget v1, p0, LO0/T;->s:I

    .line 4
    .line 5
    add-int/2addr v0, v1

    .line 6
    return v0
.end method

.method public final u(I)I
    .locals 1

    .line 1
    iget v0, p0, LO0/T;->r:I

    .line 2
    .line 3
    add-int/2addr v0, p1

    .line 4
    iget p1, p0, LO0/T;->i:I

    .line 5
    .line 6
    if-ge v0, p1, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    sub-int/2addr v0, p1

    .line 10
    :goto_0
    return v0
.end method

.method public final declared-synchronized v(JZ)I
    .locals 8

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, LO0/T;->s:I

    .line 3
    .line 4
    invoke-virtual {p0, v0}, LO0/T;->u(I)I

    .line 5
    .line 6
    .line 7
    move-result v2

    .line 8
    invoke-virtual {p0}, LO0/T;->x()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v7, 0x0

    .line 13
    if-eqz v0, :cond_3

    .line 14
    .line 15
    iget-object v0, p0, LO0/T;->n:[J

    .line 16
    .line 17
    aget-wide v3, v0, v2

    .line 18
    .line 19
    cmp-long v0, p1, v3

    .line 20
    .line 21
    if-gez v0, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iget-wide v0, p0, LO0/T;->v:J

    .line 25
    .line 26
    cmp-long v3, p1, v0

    .line 27
    .line 28
    if-lez v3, :cond_1

    .line 29
    .line 30
    if-eqz p3, :cond_1

    .line 31
    .line 32
    iget p1, p0, LO0/T;->p:I

    .line 33
    .line 34
    iget p2, p0, LO0/T;->s:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    .line 36
    sub-int/2addr p1, p2

    .line 37
    monitor-exit p0

    .line 38
    return p1

    .line 39
    :catchall_0
    move-exception p1

    .line 40
    goto :goto_1

    .line 41
    :cond_1
    :try_start_1
    iget p3, p0, LO0/T;->p:I

    .line 42
    .line 43
    iget v0, p0, LO0/T;->s:I

    .line 44
    .line 45
    sub-int v3, p3, v0

    .line 46
    .line 47
    const/4 v6, 0x1

    .line 48
    move-object v1, p0

    .line 49
    move-wide v4, p1

    .line 50
    invoke-virtual/range {v1 .. v6}, LO0/T;->o(IIJZ)I

    .line 51
    .line 52
    .line 53
    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    const/4 p2, -0x1

    .line 55
    if-ne p1, p2, :cond_2

    .line 56
    .line 57
    monitor-exit p0

    .line 58
    return v7

    .line 59
    :cond_2
    monitor-exit p0

    .line 60
    return p1

    .line 61
    :cond_3
    :goto_0
    monitor-exit p0

    .line 62
    return v7

    .line 63
    :goto_1
    monitor-exit p0

    .line 64
    throw p1
.end method

.method public final declared-synchronized w()Lm0/t;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, LO0/T;->y:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, LO0/T;->B:Lm0/t;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    :goto_0
    monitor-exit p0

    .line 11
    return-object v0

    .line 12
    :catchall_0
    move-exception v0

    .line 13
    monitor-exit p0

    .line 14
    throw v0
.end method

.method public final x()Z
    .locals 2

    .line 1
    iget v0, p0, LO0/T;->s:I

    .line 2
    .line 3
    iget v1, p0, LO0/T;->p:I

    .line 4
    .line 5
    if-eq v0, v1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
.end method

.method public final declared-synchronized y(Z)Z
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, LO0/T;->x()Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    const/4 v1, 0x1

    .line 7
    if-nez v0, :cond_2

    .line 8
    .line 9
    if-nez p1, :cond_1

    .line 10
    .line 11
    iget-boolean p1, p0, LO0/T;->w:Z

    .line 12
    .line 13
    if-nez p1, :cond_1

    .line 14
    .line 15
    iget-object p1, p0, LO0/T;->B:Lm0/t;

    .line 16
    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, LO0/T;->g:Lm0/t;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    .line 21
    if-eq p1, v0, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception p1

    .line 25
    goto :goto_1

    .line 26
    :cond_0
    const/4 v1, 0x0

    .line 27
    :cond_1
    :goto_0
    monitor-exit p0

    .line 28
    return v1

    .line 29
    :cond_2
    :try_start_1
    iget-object p1, p0, LO0/T;->c:LF/d;

    .line 30
    .line 31
    invoke-virtual {p0}, LO0/T;->t()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    invoke-virtual {p1, v0}, LF/d;->f(I)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    check-cast p1, LO0/Q;

    .line 40
    .line 41
    iget-object p1, p1, LO0/Q;->a:Lm0/t;

    .line 42
    .line 43
    iget-object v0, p0, LO0/T;->g:Lm0/t;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 44
    .line 45
    if-eq p1, v0, :cond_3

    .line 46
    .line 47
    monitor-exit p0

    .line 48
    return v1

    .line 49
    :cond_3
    :try_start_2
    iget p1, p0, LO0/T;->s:I

    .line 50
    .line 51
    invoke-virtual {p0, p1}, LO0/T;->u(I)I

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    invoke-virtual {p0, p1}, LO0/T;->z(I)Z

    .line 56
    .line 57
    .line 58
    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 59
    monitor-exit p0

    .line 60
    return p1

    .line 61
    :goto_1
    monitor-exit p0

    .line 62
    throw p1
.end method

.method public final z(I)Z
    .locals 2

    .line 1
    iget-object v0, p0, LO0/T;->h:LG0/l;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-interface {v0}, LG0/l;->getState()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x4

    .line 10
    if-eq v0, v1, :cond_1

    .line 11
    .line 12
    iget-object v0, p0, LO0/T;->m:[I

    .line 13
    .line 14
    aget p1, v0, p1

    .line 15
    .line 16
    const/high16 v0, 0x40000000    # 2.0f

    .line 17
    .line 18
    and-int/2addr p1, v0

    .line 19
    if-nez p1, :cond_0

    .line 20
    .line 21
    iget-object p1, p0, LO0/T;->h:LG0/l;

    .line 22
    .line 23
    invoke-interface {p1}, LG0/l;->b()Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-eqz p1, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 p1, 0x0

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 33
    :goto_1
    return p1
.end method
