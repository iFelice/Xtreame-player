.class public final LB0/f0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:LO0/w;

.field public final b:Ljava/lang/Object;

.field public final c:[LO0/U;

.field public d:Z

.field public e:Z

.field public f:Z

.field public g:LB0/g0;

.field public h:Z

.field public final i:[Z

.field public final j:[LB0/D0;

.field public final k:LR0/w;

.field public final l:LB0/u0;

.field public m:LB0/f0;

.field public n:LO0/Z;

.field public o:LR0/y;

.field public p:J


# direct methods
.method public constructor <init>([LB0/D0;JLR0/w;LS0/d;LB0/u0;LB0/g0;LR0/y;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LB0/f0;->j:[LB0/D0;

    .line 5
    .line 6
    iput-wide p2, p0, LB0/f0;->p:J

    .line 7
    .line 8
    iput-object p4, p0, LB0/f0;->k:LR0/w;

    .line 9
    .line 10
    iput-object p6, p0, LB0/f0;->l:LB0/u0;

    .line 11
    .line 12
    iget-object p2, p7, LB0/g0;->a:LO0/y;

    .line 13
    .line 14
    iget-object p3, p2, LO0/y;->a:Ljava/lang/Object;

    .line 15
    .line 16
    iput-object p3, p0, LB0/f0;->b:Ljava/lang/Object;

    .line 17
    .line 18
    iput-object p7, p0, LB0/f0;->g:LB0/g0;

    .line 19
    .line 20
    sget-object p3, LO0/Z;->d:LO0/Z;

    .line 21
    .line 22
    iput-object p3, p0, LB0/f0;->n:LO0/Z;

    .line 23
    .line 24
    iput-object p8, p0, LB0/f0;->o:LR0/y;

    .line 25
    .line 26
    array-length p3, p1

    .line 27
    new-array p3, p3, [LO0/U;

    .line 28
    .line 29
    iput-object p3, p0, LB0/f0;->c:[LO0/U;

    .line 30
    .line 31
    array-length p1, p1

    .line 32
    new-array p1, p1, [Z

    .line 33
    .line 34
    iput-object p1, p0, LB0/f0;->i:[Z

    .line 35
    .line 36
    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    sget p1, LB0/B0;->k:I

    .line 40
    .line 41
    iget-object p1, p2, LO0/y;->a:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast p1, Landroid/util/Pair;

    .line 44
    .line 45
    iget-object p3, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 46
    .line 47
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 48
    .line 49
    invoke-virtual {p2, p1}, LO0/y;->a(Ljava/lang/Object;)LO0/y;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    iget-object p2, p6, LB0/u0;->d:Ljava/util/HashMap;

    .line 54
    .line 55
    invoke-virtual {p2, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object p2

    .line 59
    check-cast p2, LB0/s0;

    .line 60
    .line 61
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    .line 63
    .line 64
    iget-object p3, p6, LB0/u0;->g:Ljava/util/HashSet;

    .line 65
    .line 66
    invoke-virtual {p3, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    iget-object p3, p6, LB0/u0;->f:Ljava/util/HashMap;

    .line 70
    .line 71
    invoke-virtual {p3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object p3

    .line 75
    check-cast p3, LB0/r0;

    .line 76
    .line 77
    if-eqz p3, :cond_0

    .line 78
    .line 79
    iget-object p4, p3, LB0/r0;->a:LO0/a;

    .line 80
    .line 81
    iget-object p3, p3, LB0/r0;->b:LO0/z;

    .line 82
    .line 83
    invoke-virtual {p4, p3}, LO0/a;->e(LO0/z;)V

    .line 84
    .line 85
    .line 86
    :cond_0
    iget-object p3, p2, LB0/s0;->c:Ljava/util/ArrayList;

    .line 87
    .line 88
    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    iget-object p3, p2, LB0/s0;->a:LO0/t;

    .line 92
    .line 93
    iget-wide v0, p7, LB0/g0;->b:J

    .line 94
    .line 95
    invoke-virtual {p3, p1, p5, v0, v1}, LO0/t;->t(LO0/y;LS0/d;J)LO0/q;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    iget-object p3, p6, LB0/u0;->c:Ljava/util/IdentityHashMap;

    .line 100
    .line 101
    invoke-virtual {p3, p1, p2}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    invoke-virtual {p6}, LB0/u0;->c()V

    .line 105
    .line 106
    .line 107
    const-wide p2, -0x7fffffffffffffffL    # -4.9E-324

    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    iget-wide p4, p7, LB0/g0;->d:J

    .line 113
    .line 114
    cmp-long p6, p4, p2

    .line 115
    .line 116
    if-eqz p6, :cond_1

    .line 117
    .line 118
    new-instance p2, LO0/d;

    .line 119
    .line 120
    iget-boolean p3, p7, LB0/g0;->f:Z

    .line 121
    .line 122
    xor-int/lit8 p3, p3, 0x1

    .line 123
    .line 124
    invoke-direct {p2, p1, p3, p4, p5}, LO0/d;-><init>(LO0/q;ZJ)V

    .line 125
    .line 126
    .line 127
    move-object p1, p2

    .line 128
    :cond_1
    iput-object p1, p0, LB0/f0;->a:LO0/w;

    .line 129
    .line 130
    return-void
.end method


# virtual methods
.method public final a(LR0/y;JZ[Z)J
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x0

    .line 7
    :goto_0
    iget v4, v1, LR0/y;->a:I

    .line 8
    .line 9
    const/4 v5, 0x1

    .line 10
    if-ge v3, v4, :cond_1

    .line 11
    .line 12
    if-nez p4, :cond_0

    .line 13
    .line 14
    iget-object v4, v0, LB0/f0;->o:LR0/y;

    .line 15
    .line 16
    invoke-virtual {v1, v4, v3}, LR0/y;->a(LR0/y;I)Z

    .line 17
    .line 18
    .line 19
    move-result v4

    .line 20
    if-eqz v4, :cond_0

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_0
    const/4 v5, 0x0

    .line 24
    :goto_1
    iget-object v4, v0, LB0/f0;->i:[Z

    .line 25
    .line 26
    aput-boolean v5, v4, v3

    .line 27
    .line 28
    add-int/lit8 v3, v3, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const/4 v3, 0x0

    .line 32
    :goto_2
    iget-object v4, v0, LB0/f0;->j:[LB0/D0;

    .line 33
    .line 34
    array-length v6, v4

    .line 35
    const/4 v7, -0x2

    .line 36
    iget-object v8, v0, LB0/f0;->c:[LO0/U;

    .line 37
    .line 38
    if-ge v3, v6, :cond_3

    .line 39
    .line 40
    aget-object v4, v4, v3

    .line 41
    .line 42
    invoke-interface {v4}, LB0/D0;->getTrackType()I

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    if-ne v4, v7, :cond_2

    .line 47
    .line 48
    const/4 v4, 0x0

    .line 49
    aput-object v4, v8, v3

    .line 50
    .line 51
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 52
    .line 53
    goto :goto_2

    .line 54
    :cond_3
    invoke-virtual/range {p0 .. p0}, LB0/f0;->b()V

    .line 55
    .line 56
    .line 57
    iput-object v1, v0, LB0/f0;->o:LR0/y;

    .line 58
    .line 59
    invoke-virtual/range {p0 .. p0}, LB0/f0;->c()V

    .line 60
    .line 61
    .line 62
    iget-object v9, v0, LB0/f0;->a:LO0/w;

    .line 63
    .line 64
    iget-object v12, v0, LB0/f0;->c:[LO0/U;

    .line 65
    .line 66
    iget-object v10, v1, LR0/y;->c:[LR0/t;

    .line 67
    .line 68
    iget-object v11, v0, LB0/f0;->i:[Z

    .line 69
    .line 70
    move-object/from16 v13, p5

    .line 71
    .line 72
    move-wide/from16 v14, p2

    .line 73
    .line 74
    invoke-interface/range {v9 .. v15}, LO0/w;->l([LR0/t;[Z[LO0/U;[ZJ)J

    .line 75
    .line 76
    .line 77
    move-result-wide v9

    .line 78
    const/4 v3, 0x0

    .line 79
    :goto_3
    array-length v6, v4

    .line 80
    if-ge v3, v6, :cond_5

    .line 81
    .line 82
    aget-object v6, v4, v3

    .line 83
    .line 84
    invoke-interface {v6}, LB0/D0;->getTrackType()I

    .line 85
    .line 86
    .line 87
    move-result v6

    .line 88
    if-ne v6, v7, :cond_4

    .line 89
    .line 90
    iget-object v6, v0, LB0/f0;->o:LR0/y;

    .line 91
    .line 92
    invoke-virtual {v6, v3}, LR0/y;->b(I)Z

    .line 93
    .line 94
    .line 95
    move-result v6

    .line 96
    if-eqz v6, :cond_4

    .line 97
    .line 98
    new-instance v6, LO0/m;

    .line 99
    .line 100
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 101
    .line 102
    .line 103
    aput-object v6, v8, v3

    .line 104
    .line 105
    :cond_4
    add-int/lit8 v3, v3, 0x1

    .line 106
    .line 107
    goto :goto_3

    .line 108
    :cond_5
    iput-boolean v2, v0, LB0/f0;->f:Z

    .line 109
    .line 110
    const/4 v3, 0x0

    .line 111
    :goto_4
    array-length v6, v8

    .line 112
    if-ge v3, v6, :cond_9

    .line 113
    .line 114
    aget-object v6, v8, v3

    .line 115
    .line 116
    if-eqz v6, :cond_6

    .line 117
    .line 118
    invoke-virtual {v1, v3}, LR0/y;->b(I)Z

    .line 119
    .line 120
    .line 121
    move-result v6

    .line 122
    invoke-static {v6}, Lcom/google/android/gms/internal/measurement/H1;->i(Z)V

    .line 123
    .line 124
    .line 125
    aget-object v6, v4, v3

    .line 126
    .line 127
    invoke-interface {v6}, LB0/D0;->getTrackType()I

    .line 128
    .line 129
    .line 130
    move-result v6

    .line 131
    if-eq v6, v7, :cond_8

    .line 132
    .line 133
    iput-boolean v5, v0, LB0/f0;->f:Z

    .line 134
    .line 135
    goto :goto_6

    .line 136
    :cond_6
    iget-object v6, v1, LR0/y;->c:[LR0/t;

    .line 137
    .line 138
    aget-object v6, v6, v3

    .line 139
    .line 140
    if-nez v6, :cond_7

    .line 141
    .line 142
    const/4 v6, 0x1

    .line 143
    goto :goto_5

    .line 144
    :cond_7
    const/4 v6, 0x0

    .line 145
    :goto_5
    invoke-static {v6}, Lcom/google/android/gms/internal/measurement/H1;->i(Z)V

    .line 146
    .line 147
    .line 148
    :cond_8
    :goto_6
    add-int/lit8 v3, v3, 0x1

    .line 149
    .line 150
    goto :goto_4

    .line 151
    :cond_9
    return-wide v9
.end method

.method public final b()V
    .locals 3

    .line 1
    iget-object v0, p0, LB0/f0;->m:LB0/f0;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    :goto_0
    iget-object v1, p0, LB0/f0;->o:LR0/y;

    .line 7
    .line 8
    iget v2, v1, LR0/y;->a:I

    .line 9
    .line 10
    if-ge v0, v2, :cond_1

    .line 11
    .line 12
    invoke-virtual {v1, v0}, LR0/y;->b(I)Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    iget-object v2, p0, LB0/f0;->o:LR0/y;

    .line 17
    .line 18
    iget-object v2, v2, LR0/y;->c:[LR0/t;

    .line 19
    .line 20
    aget-object v2, v2, v0

    .line 21
    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    if-eqz v2, :cond_0

    .line 25
    .line 26
    invoke-interface {v2}, LR0/t;->e()V

    .line 27
    .line 28
    .line 29
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    return-void
.end method

.method public final c()V
    .locals 3

    .line 1
    iget-object v0, p0, LB0/f0;->m:LB0/f0;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    :goto_0
    iget-object v1, p0, LB0/f0;->o:LR0/y;

    .line 7
    .line 8
    iget v2, v1, LR0/y;->a:I

    .line 9
    .line 10
    if-ge v0, v2, :cond_1

    .line 11
    .line 12
    invoke-virtual {v1, v0}, LR0/y;->b(I)Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    iget-object v2, p0, LB0/f0;->o:LR0/y;

    .line 17
    .line 18
    iget-object v2, v2, LR0/y;->c:[LR0/t;

    .line 19
    .line 20
    aget-object v2, v2, v0

    .line 21
    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    if-eqz v2, :cond_0

    .line 25
    .line 26
    invoke-interface {v2}, LR0/t;->c()V

    .line 27
    .line 28
    .line 29
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    return-void
.end method

.method public final d()J
    .locals 5

    .line 1
    iget-boolean v0, p0, LB0/f0;->e:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, LB0/f0;->g:LB0/g0;

    .line 6
    .line 7
    iget-wide v0, v0, LB0/g0;->b:J

    .line 8
    .line 9
    return-wide v0

    .line 10
    :cond_0
    iget-boolean v0, p0, LB0/f0;->f:Z

    .line 11
    .line 12
    const-wide/high16 v1, -0x8000000000000000L

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    iget-object v0, p0, LB0/f0;->a:LO0/w;

    .line 17
    .line 18
    invoke-interface {v0}, LO0/W;->u()J

    .line 19
    .line 20
    .line 21
    move-result-wide v3

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    move-wide v3, v1

    .line 24
    :goto_0
    cmp-long v0, v3, v1

    .line 25
    .line 26
    if-nez v0, :cond_2

    .line 27
    .line 28
    iget-object v0, p0, LB0/f0;->g:LB0/g0;

    .line 29
    .line 30
    iget-wide v3, v0, LB0/g0;->e:J

    .line 31
    .line 32
    :cond_2
    return-wide v3
.end method

.method public final e()J
    .locals 4

    .line 1
    iget-object v0, p0, LB0/f0;->g:LB0/g0;

    .line 2
    .line 3
    iget-wide v0, v0, LB0/g0;->b:J

    .line 4
    .line 5
    iget-wide v2, p0, LB0/f0;->p:J

    .line 6
    .line 7
    add-long/2addr v0, v2

    .line 8
    return-wide v0
.end method

.method public final f(FLm0/f0;Z)V
    .locals 6

    .line 1
    const/4 p3, 0x1

    .line 2
    iput-boolean p3, p0, LB0/f0;->e:Z

    .line 3
    .line 4
    iget-object p3, p0, LB0/f0;->a:LO0/w;

    .line 5
    .line 6
    invoke-interface {p3}, LO0/w;->s()LO0/Z;

    .line 7
    .line 8
    .line 9
    move-result-object p3

    .line 10
    iput-object p3, p0, LB0/f0;->n:LO0/Z;

    .line 11
    .line 12
    invoke-virtual {p0, p1, p2}, LB0/f0;->j(FLm0/f0;)LR0/y;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    iget-object p1, p0, LB0/f0;->g:LB0/g0;

    .line 17
    .line 18
    iget-wide p2, p1, LB0/g0;->b:J

    .line 19
    .line 20
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    iget-wide v4, p1, LB0/g0;->e:J

    .line 26
    .line 27
    cmp-long p1, v4, v2

    .line 28
    .line 29
    if-eqz p1, :cond_0

    .line 30
    .line 31
    cmp-long p1, p2, v4

    .line 32
    .line 33
    if-ltz p1, :cond_0

    .line 34
    .line 35
    const-wide/16 p1, 0x1

    .line 36
    .line 37
    sub-long/2addr v4, p1

    .line 38
    const-wide/16 p1, 0x0

    .line 39
    .line 40
    invoke-static {p1, p2, v4, v5}, Ljava/lang/Math;->max(JJ)J

    .line 41
    .line 42
    .line 43
    move-result-wide p1

    .line 44
    move-wide v2, p1

    .line 45
    goto :goto_0

    .line 46
    :cond_0
    move-wide v2, p2

    .line 47
    :goto_0
    iget-object p1, p0, LB0/f0;->j:[LB0/D0;

    .line 48
    .line 49
    array-length p1, p1

    .line 50
    new-array v5, p1, [Z

    .line 51
    .line 52
    const/4 v4, 0x0

    .line 53
    move-object v0, p0

    .line 54
    invoke-virtual/range {v0 .. v5}, LB0/f0;->a(LR0/y;JZ[Z)J

    .line 55
    .line 56
    .line 57
    move-result-wide p1

    .line 58
    iget-wide v0, p0, LB0/f0;->p:J

    .line 59
    .line 60
    iget-object p3, p0, LB0/f0;->g:LB0/g0;

    .line 61
    .line 62
    iget-wide v2, p3, LB0/g0;->b:J

    .line 63
    .line 64
    sub-long/2addr v2, p1

    .line 65
    add-long/2addr v2, v0

    .line 66
    iput-wide v2, p0, LB0/f0;->p:J

    .line 67
    .line 68
    invoke-virtual {p3, p1, p2}, LB0/g0;->b(J)LB0/g0;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    iput-object p1, p0, LB0/f0;->g:LB0/g0;

    .line 73
    .line 74
    return-void
.end method

.method public final g()Z
    .locals 5

    .line 1
    iget-boolean v0, p0, LB0/f0;->e:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-boolean v0, p0, LB0/f0;->f:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, LB0/f0;->a:LO0/w;

    .line 10
    .line 11
    invoke-interface {v0}, LO0/W;->u()J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    const-wide/high16 v2, -0x8000000000000000L

    .line 16
    .line 17
    cmp-long v4, v0, v2

    .line 18
    .line 19
    if-nez v4, :cond_1

    .line 20
    .line 21
    :cond_0
    const/4 v0, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    const/4 v0, 0x0

    .line 24
    :goto_0
    return v0
.end method

.method public final h()Z
    .locals 5

    .line 1
    iget-boolean v0, p0, LB0/f0;->e:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {p0}, LB0/f0;->g()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, LB0/f0;->d()J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    iget-object v2, p0, LB0/f0;->g:LB0/g0;

    .line 16
    .line 17
    iget-wide v2, v2, LB0/g0;->b:J

    .line 18
    .line 19
    sub-long/2addr v0, v2

    .line 20
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    cmp-long v4, v0, v2

    .line 26
    .line 27
    if-ltz v4, :cond_1

    .line 28
    .line 29
    :cond_0
    const/4 v0, 0x1

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const/4 v0, 0x0

    .line 32
    :goto_0
    return v0
.end method

.method public final i()V
    .locals 3

    .line 1
    invoke-virtual {p0}, LB0/f0;->b()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, LB0/f0;->a:LO0/w;

    .line 5
    .line 6
    :try_start_0
    instance-of v1, v0, LO0/d;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    .line 8
    iget-object v2, p0, LB0/f0;->l:LB0/u0;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    :try_start_1
    check-cast v0, LO0/d;

    .line 13
    .line 14
    iget-object v0, v0, LO0/d;->G:LO0/w;

    .line 15
    .line 16
    invoke-virtual {v2, v0}, LB0/u0;->f(LO0/w;)V

    .line 17
    .line 18
    .line 19
    goto :goto_1

    .line 20
    :catch_0
    move-exception v0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {v2, v0}, LB0/u0;->f(LO0/w;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 23
    .line 24
    .line 25
    goto :goto_1

    .line 26
    :goto_0
    const-string v1, "MediaPeriodHolder"

    .line 27
    .line 28
    const-string v2, "Period release failed."

    .line 29
    .line 30
    invoke-static {v1, v2, v0}, Lp0/x;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 31
    .line 32
    .line 33
    :goto_1
    return-void
.end method

.method public final j(FLm0/f0;)LR0/y;
    .locals 28

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget-object v0, v1, LB0/f0;->k:LR0/w;

    .line 4
    .line 5
    iget-object v2, v1, LB0/f0;->j:[LB0/D0;

    .line 6
    .line 7
    iget-object v3, v1, LB0/f0;->n:LO0/Z;

    .line 8
    .line 9
    iget-object v4, v1, LB0/f0;->g:LB0/g0;

    .line 10
    .line 11
    iget-object v4, v4, LB0/g0;->a:LO0/y;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    array-length v4, v2

    .line 17
    const/4 v5, 0x1

    .line 18
    add-int/2addr v4, v5

    .line 19
    new-array v4, v4, [I

    .line 20
    .line 21
    array-length v6, v2

    .line 22
    add-int/2addr v6, v5

    .line 23
    new-array v7, v6, [[Lm0/g0;

    .line 24
    .line 25
    array-length v8, v2

    .line 26
    add-int/2addr v8, v5

    .line 27
    new-array v8, v8, [[[I

    .line 28
    .line 29
    const/4 v9, 0x0

    .line 30
    :goto_0
    if-ge v9, v6, :cond_0

    .line 31
    .line 32
    iget v10, v3, LO0/Z;->a:I

    .line 33
    .line 34
    new-array v11, v10, [Lm0/g0;

    .line 35
    .line 36
    aput-object v11, v7, v9

    .line 37
    .line 38
    new-array v10, v10, [[I

    .line 39
    .line 40
    aput-object v10, v8, v9

    .line 41
    .line 42
    add-int/lit8 v9, v9, 0x1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    array-length v6, v2

    .line 46
    new-array v14, v6, [I

    .line 47
    .line 48
    const/4 v9, 0x0

    .line 49
    :goto_1
    if-ge v9, v6, :cond_1

    .line 50
    .line 51
    aget-object v10, v2, v9

    .line 52
    .line 53
    invoke-interface {v10}, LB0/D0;->supportsMixedMimeTypeAdaptation()I

    .line 54
    .line 55
    .line 56
    move-result v10

    .line 57
    aput v10, v14, v9

    .line 58
    .line 59
    add-int/lit8 v9, v9, 0x1

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_1
    const/4 v6, 0x0

    .line 63
    :goto_2
    iget v9, v3, LO0/Z;->a:I

    .line 64
    .line 65
    const/4 v12, 0x5

    .line 66
    if-ge v6, v9, :cond_a

    .line 67
    .line 68
    invoke-virtual {v3, v6}, LO0/Z;->a(I)Lm0/g0;

    .line 69
    .line 70
    .line 71
    move-result-object v9

    .line 72
    iget v10, v9, Lm0/g0;->c:I

    .line 73
    .line 74
    if-ne v10, v12, :cond_2

    .line 75
    .line 76
    const/4 v10, 0x1

    .line 77
    goto :goto_3

    .line 78
    :cond_2
    const/4 v10, 0x0

    .line 79
    :goto_3
    array-length v11, v2

    .line 80
    const/4 v12, 0x0

    .line 81
    const/4 v15, 0x0

    .line 82
    const/16 v16, 0x1

    .line 83
    .line 84
    :goto_4
    array-length v5, v2

    .line 85
    if-ge v12, v5, :cond_7

    .line 86
    .line 87
    aget-object v5, v2, v12

    .line 88
    .line 89
    move-object/from16 v19, v3

    .line 90
    .line 91
    const/4 v3, 0x0

    .line 92
    const/4 v13, 0x0

    .line 93
    :goto_5
    iget v1, v9, Lm0/g0;->a:I

    .line 94
    .line 95
    if-ge v13, v1, :cond_3

    .line 96
    .line 97
    iget-object v1, v9, Lm0/g0;->d:[Lm0/t;

    .line 98
    .line 99
    aget-object v1, v1, v13

    .line 100
    .line 101
    invoke-interface {v5, v1}, LB0/D0;->supportsFormat(Lm0/t;)I

    .line 102
    .line 103
    .line 104
    move-result v1

    .line 105
    const/16 v18, 0x7

    .line 106
    .line 107
    and-int/lit8 v1, v1, 0x7

    .line 108
    .line 109
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    .line 110
    .line 111
    .line 112
    move-result v3

    .line 113
    add-int/lit8 v13, v13, 0x1

    .line 114
    .line 115
    goto :goto_5

    .line 116
    :cond_3
    const/16 v18, 0x7

    .line 117
    .line 118
    aget v1, v4, v12

    .line 119
    .line 120
    if-nez v1, :cond_4

    .line 121
    .line 122
    const/4 v1, 0x1

    .line 123
    goto :goto_6

    .line 124
    :cond_4
    const/4 v1, 0x0

    .line 125
    :goto_6
    if-gt v3, v15, :cond_5

    .line 126
    .line 127
    if-ne v3, v15, :cond_6

    .line 128
    .line 129
    if-eqz v10, :cond_6

    .line 130
    .line 131
    if-nez v16, :cond_6

    .line 132
    .line 133
    if-eqz v1, :cond_6

    .line 134
    .line 135
    :cond_5
    move/from16 v16, v1

    .line 136
    .line 137
    move v15, v3

    .line 138
    move v11, v12

    .line 139
    :cond_6
    add-int/lit8 v12, v12, 0x1

    .line 140
    .line 141
    move-object/from16 v1, p0

    .line 142
    .line 143
    move-object/from16 v3, v19

    .line 144
    .line 145
    goto :goto_4

    .line 146
    :cond_7
    move-object/from16 v19, v3

    .line 147
    .line 148
    array-length v1, v2

    .line 149
    if-ne v11, v1, :cond_8

    .line 150
    .line 151
    iget v1, v9, Lm0/g0;->a:I

    .line 152
    .line 153
    new-array v1, v1, [I

    .line 154
    .line 155
    goto :goto_8

    .line 156
    :cond_8
    aget-object v1, v2, v11

    .line 157
    .line 158
    iget v3, v9, Lm0/g0;->a:I

    .line 159
    .line 160
    new-array v3, v3, [I

    .line 161
    .line 162
    const/4 v5, 0x0

    .line 163
    :goto_7
    iget v10, v9, Lm0/g0;->a:I

    .line 164
    .line 165
    if-ge v5, v10, :cond_9

    .line 166
    .line 167
    iget-object v10, v9, Lm0/g0;->d:[Lm0/t;

    .line 168
    .line 169
    aget-object v10, v10, v5

    .line 170
    .line 171
    invoke-interface {v1, v10}, LB0/D0;->supportsFormat(Lm0/t;)I

    .line 172
    .line 173
    .line 174
    move-result v10

    .line 175
    aput v10, v3, v5

    .line 176
    .line 177
    add-int/lit8 v5, v5, 0x1

    .line 178
    .line 179
    goto :goto_7

    .line 180
    :cond_9
    move-object v1, v3

    .line 181
    :goto_8
    aget v3, v4, v11

    .line 182
    .line 183
    aget-object v5, v7, v11

    .line 184
    .line 185
    aput-object v9, v5, v3

    .line 186
    .line 187
    aget-object v5, v8, v11

    .line 188
    .line 189
    aput-object v1, v5, v3

    .line 190
    .line 191
    const/4 v1, 0x1

    .line 192
    add-int/2addr v3, v1

    .line 193
    aput v3, v4, v11

    .line 194
    .line 195
    add-int/lit8 v6, v6, 0x1

    .line 196
    .line 197
    move-object/from16 v1, p0

    .line 198
    .line 199
    move-object/from16 v3, v19

    .line 200
    .line 201
    const/4 v5, 0x1

    .line 202
    goto/16 :goto_2

    .line 203
    .line 204
    :cond_a
    const/16 v18, 0x7

    .line 205
    .line 206
    array-length v1, v2

    .line 207
    new-array v11, v1, [LO0/Z;

    .line 208
    .line 209
    array-length v1, v2

    .line 210
    new-array v1, v1, [Ljava/lang/String;

    .line 211
    .line 212
    array-length v3, v2

    .line 213
    new-array v10, v3, [I

    .line 214
    .line 215
    const/4 v3, 0x0

    .line 216
    :goto_9
    array-length v5, v2

    .line 217
    if-ge v3, v5, :cond_b

    .line 218
    .line 219
    aget v5, v4, v3

    .line 220
    .line 221
    new-instance v6, LO0/Z;

    .line 222
    .line 223
    aget-object v9, v7, v3

    .line 224
    .line 225
    invoke-static {v5, v9}, Lp0/M;->T(I[Ljava/lang/Object;)[Ljava/lang/Object;

    .line 226
    .line 227
    .line 228
    move-result-object v9

    .line 229
    check-cast v9, [Lm0/g0;

    .line 230
    .line 231
    invoke-direct {v6, v9}, LO0/Z;-><init>([Lm0/g0;)V

    .line 232
    .line 233
    .line 234
    aput-object v6, v11, v3

    .line 235
    .line 236
    aget-object v6, v8, v3

    .line 237
    .line 238
    invoke-static {v5, v6}, Lp0/M;->T(I[Ljava/lang/Object;)[Ljava/lang/Object;

    .line 239
    .line 240
    .line 241
    move-result-object v5

    .line 242
    check-cast v5, [[I

    .line 243
    .line 244
    aput-object v5, v8, v3

    .line 245
    .line 246
    aget-object v5, v2, v3

    .line 247
    .line 248
    invoke-interface {v5}, LB0/D0;->getName()Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object v5

    .line 252
    aput-object v5, v1, v3

    .line 253
    .line 254
    aget-object v5, v2, v3

    .line 255
    .line 256
    invoke-interface {v5}, LB0/D0;->getTrackType()I

    .line 257
    .line 258
    .line 259
    move-result v5

    .line 260
    aput v5, v10, v3

    .line 261
    .line 262
    add-int/lit8 v3, v3, 0x1

    .line 263
    .line 264
    goto :goto_9

    .line 265
    :cond_b
    array-length v1, v2

    .line 266
    aget v1, v4, v1

    .line 267
    .line 268
    new-instance v3, LO0/Z;

    .line 269
    .line 270
    array-length v2, v2

    .line 271
    aget-object v2, v7, v2

    .line 272
    .line 273
    invoke-static {v1, v2}, Lp0/M;->T(I[Ljava/lang/Object;)[Ljava/lang/Object;

    .line 274
    .line 275
    .line 276
    move-result-object v1

    .line 277
    check-cast v1, [Lm0/g0;

    .line 278
    .line 279
    invoke-direct {v3, v1}, LO0/Z;-><init>([Lm0/g0;)V

    .line 280
    .line 281
    .line 282
    new-instance v1, LR0/v;

    .line 283
    .line 284
    move-object v9, v1

    .line 285
    const/4 v2, 0x5

    .line 286
    move-object v12, v14

    .line 287
    const/4 v4, 0x7

    .line 288
    move-object v13, v8

    .line 289
    move-object v5, v14

    .line 290
    move-object v14, v3

    .line 291
    invoke-direct/range {v9 .. v14}, LR0/v;-><init>([I[LO0/Z;[I[[[ILO0/Z;)V

    .line 292
    .line 293
    .line 294
    check-cast v0, LR0/q;

    .line 295
    .line 296
    iget-object v3, v0, LR0/q;->c:Ljava/lang/Object;

    .line 297
    .line 298
    monitor-enter v3

    .line 299
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 300
    .line 301
    .line 302
    move-result-object v6

    .line 303
    iput-object v6, v0, LR0/q;->g:Ljava/lang/Thread;

    .line 304
    .line 305
    iget-object v6, v0, LR0/q;->f:LR0/k;

    .line 306
    .line 307
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 308
    iget-object v3, v0, LR0/q;->j:Ljava/lang/Boolean;

    .line 309
    .line 310
    if-nez v3, :cond_c

    .line 311
    .line 312
    iget-object v3, v0, LR0/q;->d:Landroid/content/Context;

    .line 313
    .line 314
    if-eqz v3, :cond_c

    .line 315
    .line 316
    invoke-static {v3}, Lp0/M;->P(Landroid/content/Context;)Z

    .line 317
    .line 318
    .line 319
    move-result v3

    .line 320
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 321
    .line 322
    .line 323
    move-result-object v3

    .line 324
    iput-object v3, v0, LR0/q;->j:Ljava/lang/Boolean;

    .line 325
    .line 326
    :cond_c
    iget-boolean v3, v6, LR0/k;->P:Z

    .line 327
    .line 328
    const/16 v7, 0x20

    .line 329
    .line 330
    if-eqz v3, :cond_d

    .line 331
    .line 332
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 333
    .line 334
    if-lt v3, v7, :cond_d

    .line 335
    .line 336
    iget-object v3, v0, LR0/q;->h:LB0/c;

    .line 337
    .line 338
    if-nez v3, :cond_d

    .line 339
    .line 340
    new-instance v3, LB0/c;

    .line 341
    .line 342
    iget-object v9, v0, LR0/q;->d:Landroid/content/Context;

    .line 343
    .line 344
    iget-object v10, v0, LR0/q;->j:Ljava/lang/Boolean;

    .line 345
    .line 346
    invoke-direct {v3, v9, v0, v10}, LB0/c;-><init>(Landroid/content/Context;LR0/q;Ljava/lang/Boolean;)V

    .line 347
    .line 348
    .line 349
    iput-object v3, v0, LR0/q;->h:LB0/c;

    .line 350
    .line 351
    :cond_d
    iget v3, v1, LR0/v;->a:I

    .line 352
    .line 353
    new-array v9, v3, [LR0/r;

    .line 354
    .line 355
    const/4 v10, 0x0

    .line 356
    :goto_a
    iget-object v11, v1, LR0/v;->c:[LO0/Z;

    .line 357
    .line 358
    iget-object v12, v1, LR0/v;->b:[I

    .line 359
    .line 360
    iget v13, v1, LR0/v;->a:I

    .line 361
    .line 362
    const/4 v14, 0x2

    .line 363
    if-ge v10, v13, :cond_f

    .line 364
    .line 365
    aget v13, v12, v10

    .line 366
    .line 367
    if-ne v14, v13, :cond_e

    .line 368
    .line 369
    aget-object v13, v11, v10

    .line 370
    .line 371
    iget v13, v13, LO0/Z;->a:I

    .line 372
    .line 373
    if-lez v13, :cond_e

    .line 374
    .line 375
    const/4 v10, 0x1

    .line 376
    goto :goto_b

    .line 377
    :cond_e
    add-int/lit8 v10, v10, 0x1

    .line 378
    .line 379
    goto :goto_a

    .line 380
    :cond_f
    const/4 v10, 0x0

    .line 381
    :goto_b
    new-instance v13, LR0/e;

    .line 382
    .line 383
    invoke-direct {v13, v0, v6, v10, v5}, LR0/e;-><init>(LR0/q;LR0/k;Z[I)V

    .line 384
    .line 385
    .line 386
    new-instance v10, LK/b;

    .line 387
    .line 388
    invoke-direct {v10, v4}, LK/b;-><init>(I)V

    .line 389
    .line 390
    .line 391
    const/4 v15, 0x1

    .line 392
    invoke-static {v15, v1, v8, v13, v10}, LR0/q;->l(ILR0/v;[[[ILR0/n;LK/b;)Landroid/util/Pair;

    .line 393
    .line 394
    .line 395
    move-result-object v10

    .line 396
    if-eqz v10, :cond_10

    .line 397
    .line 398
    iget-object v13, v10, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 399
    .line 400
    check-cast v13, Ljava/lang/Integer;

    .line 401
    .line 402
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    .line 403
    .line 404
    .line 405
    move-result v13

    .line 406
    iget-object v15, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 407
    .line 408
    check-cast v15, LR0/r;

    .line 409
    .line 410
    aput-object v15, v9, v13

    .line 411
    .line 412
    :cond_10
    if-nez v10, :cond_11

    .line 413
    .line 414
    const/4 v10, 0x0

    .line 415
    goto :goto_c

    .line 416
    :cond_11
    iget-object v10, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 417
    .line 418
    check-cast v10, LR0/r;

    .line 419
    .line 420
    iget-object v15, v10, LR0/r;->a:Lm0/g0;

    .line 421
    .line 422
    iget-object v10, v10, LR0/r;->b:[I

    .line 423
    .line 424
    const/16 v16, 0x0

    .line 425
    .line 426
    aget v10, v10, v16

    .line 427
    .line 428
    iget-object v15, v15, Lm0/g0;->d:[Lm0/t;

    .line 429
    .line 430
    aget-object v10, v15, v10

    .line 431
    .line 432
    iget-object v10, v10, Lm0/t;->d:Ljava/lang/String;

    .line 433
    .line 434
    :goto_c
    iget-object v15, v6, Lm0/k0;->u:Lm0/i0;

    .line 435
    .line 436
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 437
    .line 438
    .line 439
    iget-boolean v15, v6, Lm0/k0;->k:Z

    .line 440
    .line 441
    iget-object v4, v0, LR0/q;->d:Landroid/content/Context;

    .line 442
    .line 443
    if-eqz v15, :cond_12

    .line 444
    .line 445
    if-eqz v4, :cond_12

    .line 446
    .line 447
    invoke-static {v4}, Lp0/M;->v(Landroid/content/Context;)Landroid/graphics/Point;

    .line 448
    .line 449
    .line 450
    move-result-object v15

    .line 451
    goto :goto_d

    .line 452
    :cond_12
    const/4 v15, 0x0

    .line 453
    :goto_d
    new-instance v7, LR0/d;

    .line 454
    .line 455
    invoke-direct {v7, v6, v5, v15, v10}, LR0/d;-><init>(LR0/k;Ljava/lang/Object;Landroid/graphics/Point;Ljava/lang/String;)V

    .line 456
    .line 457
    .line 458
    new-instance v5, LK/b;

    .line 459
    .line 460
    const/4 v15, 0x6

    .line 461
    invoke-direct {v5, v15}, LK/b;-><init>(I)V

    .line 462
    .line 463
    .line 464
    invoke-static {v14, v1, v8, v7, v5}, LR0/q;->l(ILR0/v;[[[ILR0/n;LK/b;)Landroid/util/Pair;

    .line 465
    .line 466
    .line 467
    move-result-object v5

    .line 468
    iget-boolean v7, v6, Lm0/k0;->A:Z

    .line 469
    .line 470
    iget-object v15, v6, Lm0/k0;->u:Lm0/i0;

    .line 471
    .line 472
    const/4 v13, 0x4

    .line 473
    if-nez v7, :cond_14

    .line 474
    .line 475
    if-nez v5, :cond_13

    .line 476
    .line 477
    goto :goto_e

    .line 478
    :cond_13
    const/4 v2, 0x0

    .line 479
    goto :goto_f

    .line 480
    :cond_14
    :goto_e
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 481
    .line 482
    .line 483
    new-instance v7, LB0/x;

    .line 484
    .line 485
    const/16 v14, 0x14

    .line 486
    .line 487
    invoke-direct {v7, v6, v14}, LB0/x;-><init>(Ljava/lang/Object;I)V

    .line 488
    .line 489
    .line 490
    new-instance v14, LK/b;

    .line 491
    .line 492
    invoke-direct {v14, v2}, LK/b;-><init>(I)V

    .line 493
    .line 494
    .line 495
    invoke-static {v13, v1, v8, v7, v14}, LR0/q;->l(ILR0/v;[[[ILR0/n;LK/b;)Landroid/util/Pair;

    .line 496
    .line 497
    .line 498
    move-result-object v2

    .line 499
    :goto_f
    if-eqz v2, :cond_15

    .line 500
    .line 501
    iget-object v5, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 502
    .line 503
    check-cast v5, Ljava/lang/Integer;

    .line 504
    .line 505
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 506
    .line 507
    .line 508
    move-result v5

    .line 509
    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 510
    .line 511
    check-cast v2, LR0/r;

    .line 512
    .line 513
    aput-object v2, v9, v5

    .line 514
    .line 515
    goto :goto_10

    .line 516
    :cond_15
    if-eqz v5, :cond_16

    .line 517
    .line 518
    iget-object v2, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 519
    .line 520
    check-cast v2, Ljava/lang/Integer;

    .line 521
    .line 522
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 523
    .line 524
    .line 525
    move-result v2

    .line 526
    iget-object v5, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 527
    .line 528
    check-cast v5, LR0/r;

    .line 529
    .line 530
    aput-object v5, v9, v2

    .line 531
    .line 532
    :cond_16
    :goto_10
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 533
    .line 534
    .line 535
    iget-boolean v2, v6, Lm0/k0;->x:Z

    .line 536
    .line 537
    if-eqz v2, :cond_1a

    .line 538
    .line 539
    if-nez v4, :cond_17

    .line 540
    .line 541
    goto :goto_11

    .line 542
    :cond_17
    const-string v2, "captioning"

    .line 543
    .line 544
    invoke-virtual {v4, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 545
    .line 546
    .line 547
    move-result-object v2

    .line 548
    check-cast v2, Landroid/view/accessibility/CaptioningManager;

    .line 549
    .line 550
    if-eqz v2, :cond_1a

    .line 551
    .line 552
    invoke-virtual {v2}, Landroid/view/accessibility/CaptioningManager;->isEnabled()Z

    .line 553
    .line 554
    .line 555
    move-result v4

    .line 556
    if-nez v4, :cond_18

    .line 557
    .line 558
    goto :goto_11

    .line 559
    :cond_18
    invoke-virtual {v2}, Landroid/view/accessibility/CaptioningManager;->getLocale()Ljava/util/Locale;

    .line 560
    .line 561
    .line 562
    move-result-object v2

    .line 563
    if-nez v2, :cond_19

    .line 564
    .line 565
    goto :goto_11

    .line 566
    :cond_19
    sget-object v4, Lp0/M;->a:Ljava/lang/String;

    .line 567
    .line 568
    invoke-virtual {v2}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    .line 569
    .line 570
    .line 571
    move-result-object v2

    .line 572
    goto :goto_12

    .line 573
    :cond_1a
    :goto_11
    const/4 v2, 0x0

    .line 574
    :goto_12
    new-instance v4, LO0/A;

    .line 575
    .line 576
    const/4 v5, 0x1

    .line 577
    invoke-direct {v4, v6, v10, v2, v5}, LO0/A;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 578
    .line 579
    .line 580
    new-instance v2, LK/b;

    .line 581
    .line 582
    const/16 v5, 0x8

    .line 583
    .line 584
    invoke-direct {v2, v5}, LK/b;-><init>(I)V

    .line 585
    .line 586
    .line 587
    const/4 v5, 0x3

    .line 588
    invoke-static {v5, v1, v8, v4, v2}, LR0/q;->l(ILR0/v;[[[ILR0/n;LK/b;)Landroid/util/Pair;

    .line 589
    .line 590
    .line 591
    move-result-object v2

    .line 592
    if-eqz v2, :cond_1b

    .line 593
    .line 594
    iget-object v4, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 595
    .line 596
    check-cast v4, Ljava/lang/Integer;

    .line 597
    .line 598
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 599
    .line 600
    .line 601
    move-result v4

    .line 602
    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 603
    .line 604
    check-cast v2, LR0/r;

    .line 605
    .line 606
    aput-object v2, v9, v4

    .line 607
    .line 608
    :cond_1b
    const/4 v2, 0x0

    .line 609
    :goto_13
    if-ge v2, v3, :cond_23

    .line 610
    .line 611
    aget v4, v12, v2

    .line 612
    .line 613
    const/4 v7, 0x2

    .line 614
    if-eq v4, v7, :cond_22

    .line 615
    .line 616
    const/4 v7, 0x1

    .line 617
    if-eq v4, v7, :cond_22

    .line 618
    .line 619
    if-eq v4, v5, :cond_22

    .line 620
    .line 621
    if-eq v4, v13, :cond_22

    .line 622
    .line 623
    aget-object v4, v11, v2

    .line 624
    .line 625
    aget-object v7, v8, v2

    .line 626
    .line 627
    const/4 v10, 0x0

    .line 628
    const/4 v14, 0x0

    .line 629
    const/4 v15, 0x0

    .line 630
    const/16 v21, 0x0

    .line 631
    .line 632
    :goto_14
    iget v5, v4, LO0/Z;->a:I

    .line 633
    .line 634
    if-ge v10, v5, :cond_20

    .line 635
    .line 636
    invoke-virtual {v4, v10}, LO0/Z;->a(I)Lm0/g0;

    .line 637
    .line 638
    .line 639
    move-result-object v5

    .line 640
    aget-object v23, v7, v10

    .line 641
    .line 642
    move-object/from16 v24, v4

    .line 643
    .line 644
    move-object/from16 v13, v21

    .line 645
    .line 646
    move-object/from16 v21, v15

    .line 647
    .line 648
    move v15, v14

    .line 649
    const/4 v14, 0x0

    .line 650
    :goto_15
    iget v4, v5, Lm0/g0;->a:I

    .line 651
    .line 652
    if-ge v14, v4, :cond_1f

    .line 653
    .line 654
    aget v4, v23, v14

    .line 655
    .line 656
    move-object/from16 v25, v7

    .line 657
    .line 658
    iget-boolean v7, v6, LR0/k;->Q:Z

    .line 659
    .line 660
    invoke-static {v4, v7}, LA0/O;->u(IZ)Z

    .line 661
    .line 662
    .line 663
    move-result v4

    .line 664
    if-eqz v4, :cond_1d

    .line 665
    .line 666
    iget-object v4, v5, Lm0/g0;->d:[Lm0/t;

    .line 667
    .line 668
    aget-object v4, v4, v14

    .line 669
    .line 670
    new-instance v7, LR0/i;

    .line 671
    .line 672
    move-object/from16 v26, v5

    .line 673
    .line 674
    aget v5, v23, v14

    .line 675
    .line 676
    invoke-direct {v7, v4, v5}, LR0/i;-><init>(Lm0/t;I)V

    .line 677
    .line 678
    .line 679
    if-eqz v13, :cond_1c

    .line 680
    .line 681
    sget-object v4, Lz4/x;->a:Lz4/v;

    .line 682
    .line 683
    iget-boolean v5, v13, LR0/i;->H:Z

    .line 684
    .line 685
    move-object/from16 v27, v11

    .line 686
    .line 687
    iget-boolean v11, v7, LR0/i;->H:Z

    .line 688
    .line 689
    invoke-virtual {v4, v11, v5}, Lz4/v;->c(ZZ)Lz4/x;

    .line 690
    .line 691
    .line 692
    move-result-object v4

    .line 693
    iget-boolean v5, v7, LR0/i;->G:Z

    .line 694
    .line 695
    iget-boolean v11, v13, LR0/i;->G:Z

    .line 696
    .line 697
    invoke-virtual {v4, v5, v11}, Lz4/x;->c(ZZ)Lz4/x;

    .line 698
    .line 699
    .line 700
    move-result-object v4

    .line 701
    invoke-virtual {v4}, Lz4/x;->e()I

    .line 702
    .line 703
    .line 704
    move-result v4

    .line 705
    if-lez v4, :cond_1e

    .line 706
    .line 707
    goto :goto_16

    .line 708
    :cond_1c
    move-object/from16 v27, v11

    .line 709
    .line 710
    :goto_16
    move-object v13, v7

    .line 711
    move v15, v14

    .line 712
    move-object/from16 v21, v26

    .line 713
    .line 714
    goto :goto_17

    .line 715
    :cond_1d
    move-object/from16 v26, v5

    .line 716
    .line 717
    move-object/from16 v27, v11

    .line 718
    .line 719
    :cond_1e
    :goto_17
    add-int/lit8 v14, v14, 0x1

    .line 720
    .line 721
    move-object/from16 v7, v25

    .line 722
    .line 723
    move-object/from16 v5, v26

    .line 724
    .line 725
    move-object/from16 v11, v27

    .line 726
    .line 727
    goto :goto_15

    .line 728
    :cond_1f
    move-object/from16 v25, v7

    .line 729
    .line 730
    move-object/from16 v27, v11

    .line 731
    .line 732
    add-int/lit8 v10, v10, 0x1

    .line 733
    .line 734
    move v14, v15

    .line 735
    move-object/from16 v15, v21

    .line 736
    .line 737
    move-object/from16 v4, v24

    .line 738
    .line 739
    move-object/from16 v21, v13

    .line 740
    .line 741
    const/4 v13, 0x4

    .line 742
    goto :goto_14

    .line 743
    :cond_20
    move-object/from16 v27, v11

    .line 744
    .line 745
    if-nez v15, :cond_21

    .line 746
    .line 747
    const/4 v4, 0x0

    .line 748
    goto :goto_18

    .line 749
    :cond_21
    new-instance v4, LR0/r;

    .line 750
    .line 751
    filled-new-array {v14}, [I

    .line 752
    .line 753
    .line 754
    move-result-object v5

    .line 755
    invoke-direct {v4, v15, v5}, LR0/r;-><init>(Lm0/g0;[I)V

    .line 756
    .line 757
    .line 758
    :goto_18
    aput-object v4, v9, v2

    .line 759
    .line 760
    goto :goto_19

    .line 761
    :cond_22
    move-object/from16 v27, v11

    .line 762
    .line 763
    :goto_19
    add-int/lit8 v2, v2, 0x1

    .line 764
    .line 765
    move-object/from16 v11, v27

    .line 766
    .line 767
    const/4 v5, 0x3

    .line 768
    const/4 v13, 0x4

    .line 769
    goto/16 :goto_13

    .line 770
    .line 771
    :cond_23
    iget v2, v1, LR0/v;->a:I

    .line 772
    .line 773
    new-instance v4, Ljava/util/HashMap;

    .line 774
    .line 775
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 776
    .line 777
    .line 778
    const/4 v5, 0x0

    .line 779
    :goto_1a
    iget-object v7, v1, LR0/v;->c:[LO0/Z;

    .line 780
    .line 781
    if-ge v5, v2, :cond_24

    .line 782
    .line 783
    aget-object v7, v7, v5

    .line 784
    .line 785
    invoke-static {v7, v6, v4}, LR0/q;->f(LO0/Z;LR0/k;Ljava/util/HashMap;)V

    .line 786
    .line 787
    .line 788
    add-int/lit8 v5, v5, 0x1

    .line 789
    .line 790
    goto :goto_1a

    .line 791
    :cond_24
    iget-object v5, v1, LR0/v;->f:LO0/Z;

    .line 792
    .line 793
    invoke-static {v5, v6, v4}, LR0/q;->f(LO0/Z;LR0/k;Ljava/util/HashMap;)V

    .line 794
    .line 795
    .line 796
    const/4 v5, 0x0

    .line 797
    :goto_1b
    const/4 v10, -0x1

    .line 798
    if-ge v5, v2, :cond_27

    .line 799
    .line 800
    iget-object v11, v1, LR0/v;->b:[I

    .line 801
    .line 802
    aget v11, v11, v5

    .line 803
    .line 804
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 805
    .line 806
    .line 807
    move-result-object v11

    .line 808
    invoke-virtual {v4, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 809
    .line 810
    .line 811
    move-result-object v11

    .line 812
    check-cast v11, Lm0/h0;

    .line 813
    .line 814
    if-nez v11, :cond_25

    .line 815
    .line 816
    goto :goto_1d

    .line 817
    :cond_25
    iget-object v12, v11, Lm0/h0;->b:Lz4/H;

    .line 818
    .line 819
    invoke-virtual {v12}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 820
    .line 821
    .line 822
    move-result v13

    .line 823
    if-nez v13, :cond_26

    .line 824
    .line 825
    aget-object v13, v7, v5

    .line 826
    .line 827
    iget-object v11, v11, Lm0/h0;->a:Lm0/g0;

    .line 828
    .line 829
    invoke-virtual {v13, v11}, LO0/Z;->b(Lm0/g0;)I

    .line 830
    .line 831
    .line 832
    move-result v13

    .line 833
    if-eq v13, v10, :cond_26

    .line 834
    .line 835
    new-instance v10, LR0/r;

    .line 836
    .line 837
    invoke-static {v12}, Ly4/k;->g0(Ljava/util/Collection;)[I

    .line 838
    .line 839
    .line 840
    move-result-object v12

    .line 841
    invoke-direct {v10, v11, v12}, LR0/r;-><init>(Lm0/g0;[I)V

    .line 842
    .line 843
    .line 844
    goto :goto_1c

    .line 845
    :cond_26
    const/4 v10, 0x0

    .line 846
    :goto_1c
    aput-object v10, v9, v5

    .line 847
    .line 848
    :goto_1d
    add-int/lit8 v5, v5, 0x1

    .line 849
    .line 850
    goto :goto_1b

    .line 851
    :cond_27
    iget v2, v1, LR0/v;->a:I

    .line 852
    .line 853
    const/4 v4, 0x0

    .line 854
    :goto_1e
    if-ge v4, v2, :cond_2a

    .line 855
    .line 856
    iget-object v5, v1, LR0/v;->c:[LO0/Z;

    .line 857
    .line 858
    aget-object v5, v5, v4

    .line 859
    .line 860
    iget-object v7, v6, LR0/k;->U:Landroid/util/SparseArray;

    .line 861
    .line 862
    invoke-virtual {v7, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 863
    .line 864
    .line 865
    move-result-object v7

    .line 866
    check-cast v7, Ljava/util/Map;

    .line 867
    .line 868
    if-eqz v7, :cond_29

    .line 869
    .line 870
    invoke-interface {v7, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 871
    .line 872
    .line 873
    move-result v7

    .line 874
    if-eqz v7, :cond_29

    .line 875
    .line 876
    iget-object v7, v6, LR0/k;->U:Landroid/util/SparseArray;

    .line 877
    .line 878
    invoke-virtual {v7, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 879
    .line 880
    .line 881
    move-result-object v7

    .line 882
    check-cast v7, Ljava/util/Map;

    .line 883
    .line 884
    if-eqz v7, :cond_28

    .line 885
    .line 886
    invoke-interface {v7, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 887
    .line 888
    .line 889
    move-result-object v5

    .line 890
    invoke-static {v5}, LA0/O;->I(Ljava/lang/Object;)V

    .line 891
    .line 892
    .line 893
    :cond_28
    const/4 v5, 0x0

    .line 894
    aput-object v5, v9, v4

    .line 895
    .line 896
    :cond_29
    add-int/lit8 v4, v4, 0x1

    .line 897
    .line 898
    goto :goto_1e

    .line 899
    :cond_2a
    const/4 v2, 0x0

    .line 900
    :goto_1f
    if-ge v2, v3, :cond_2d

    .line 901
    .line 902
    iget-object v4, v1, LR0/v;->b:[I

    .line 903
    .line 904
    aget v4, v4, v2

    .line 905
    .line 906
    iget-object v5, v6, LR0/k;->V:Landroid/util/SparseBooleanArray;

    .line 907
    .line 908
    invoke-virtual {v5, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 909
    .line 910
    .line 911
    move-result v5

    .line 912
    if-nez v5, :cond_2b

    .line 913
    .line 914
    iget-object v5, v6, Lm0/k0;->E:Lz4/L;

    .line 915
    .line 916
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 917
    .line 918
    .line 919
    move-result-object v4

    .line 920
    invoke-virtual {v5, v4}, Lz4/C;->contains(Ljava/lang/Object;)Z

    .line 921
    .line 922
    .line 923
    move-result v4

    .line 924
    if-eqz v4, :cond_2c

    .line 925
    .line 926
    :cond_2b
    const/4 v5, 0x0

    .line 927
    goto :goto_20

    .line 928
    :cond_2c
    const/4 v5, 0x0

    .line 929
    goto :goto_21

    .line 930
    :goto_20
    aput-object v5, v9, v2

    .line 931
    .line 932
    :goto_21
    add-int/lit8 v2, v2, 0x1

    .line 933
    .line 934
    goto :goto_1f

    .line 935
    :cond_2d
    const/4 v5, 0x0

    .line 936
    iget-object v2, v0, LR0/q;->e:LR0/s;

    .line 937
    .line 938
    iget-object v0, v0, LR0/w;->b:LS0/c;

    .line 939
    .line 940
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/H1;->j(Ljava/lang/Object;)V

    .line 941
    .line 942
    .line 943
    check-cast v2, LU4/b;

    .line 944
    .line 945
    invoke-virtual {v2, v9, v0}, LU4/b;->Q([LR0/r;LS0/c;)[LR0/t;

    .line 946
    .line 947
    .line 948
    move-result-object v0

    .line 949
    new-array v2, v3, [LB0/E0;

    .line 950
    .line 951
    const/4 v4, 0x0

    .line 952
    :goto_22
    const/4 v7, -0x2

    .line 953
    if-ge v4, v3, :cond_31

    .line 954
    .line 955
    iget-object v9, v1, LR0/v;->b:[I

    .line 956
    .line 957
    aget v9, v9, v4

    .line 958
    .line 959
    iget-object v11, v6, LR0/k;->V:Landroid/util/SparseBooleanArray;

    .line 960
    .line 961
    invoke-virtual {v11, v4}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 962
    .line 963
    .line 964
    move-result v11

    .line 965
    if-nez v11, :cond_30

    .line 966
    .line 967
    iget-object v11, v6, Lm0/k0;->E:Lz4/L;

    .line 968
    .line 969
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 970
    .line 971
    .line 972
    move-result-object v9

    .line 973
    invoke-virtual {v11, v9}, Lz4/C;->contains(Ljava/lang/Object;)Z

    .line 974
    .line 975
    .line 976
    move-result v9

    .line 977
    if-eqz v9, :cond_2e

    .line 978
    .line 979
    goto :goto_23

    .line 980
    :cond_2e
    iget-object v9, v1, LR0/v;->b:[I

    .line 981
    .line 982
    aget v9, v9, v4

    .line 983
    .line 984
    if-eq v9, v7, :cond_2f

    .line 985
    .line 986
    aget-object v7, v0, v4

    .line 987
    .line 988
    if-eqz v7, :cond_30

    .line 989
    .line 990
    :cond_2f
    sget-object v7, LB0/E0;->c:LB0/E0;

    .line 991
    .line 992
    goto :goto_24

    .line 993
    :cond_30
    :goto_23
    move-object v7, v5

    .line 994
    :goto_24
    aput-object v7, v2, v4

    .line 995
    .line 996
    add-int/lit8 v4, v4, 0x1

    .line 997
    .line 998
    goto :goto_22

    .line 999
    :cond_31
    iget-boolean v3, v6, LR0/k;->R:Z

    .line 1000
    .line 1001
    if-eqz v3, :cond_3b

    .line 1002
    .line 1003
    const/4 v3, 0x0

    .line 1004
    const/4 v4, -0x1

    .line 1005
    const/4 v9, -0x1

    .line 1006
    :goto_25
    iget v11, v1, LR0/v;->a:I

    .line 1007
    .line 1008
    if-ge v3, v11, :cond_39

    .line 1009
    .line 1010
    iget-object v11, v1, LR0/v;->b:[I

    .line 1011
    .line 1012
    aget v11, v11, v3

    .line 1013
    .line 1014
    aget-object v12, v0, v3

    .line 1015
    .line 1016
    const/4 v13, 0x1

    .line 1017
    if-eq v11, v13, :cond_33

    .line 1018
    .line 1019
    const/4 v13, 0x2

    .line 1020
    if-ne v11, v13, :cond_32

    .line 1021
    .line 1022
    goto :goto_26

    .line 1023
    :cond_32
    const/16 v13, 0x20

    .line 1024
    .line 1025
    goto :goto_29

    .line 1026
    :cond_33
    const/4 v13, 0x2

    .line 1027
    :goto_26
    if-eqz v12, :cond_32

    .line 1028
    .line 1029
    aget-object v14, v8, v3

    .line 1030
    .line 1031
    iget-object v15, v1, LR0/v;->c:[LO0/Z;

    .line 1032
    .line 1033
    aget-object v15, v15, v3

    .line 1034
    .line 1035
    check-cast v12, LR0/c;

    .line 1036
    .line 1037
    iget-object v5, v12, LR0/c;->a:Lm0/g0;

    .line 1038
    .line 1039
    invoke-virtual {v15, v5}, LO0/Z;->b(Lm0/g0;)I

    .line 1040
    .line 1041
    .line 1042
    move-result v5

    .line 1043
    const/4 v15, 0x0

    .line 1044
    :goto_27
    iget-object v13, v12, LR0/c;->c:[I

    .line 1045
    .line 1046
    array-length v7, v13

    .line 1047
    if-ge v15, v7, :cond_35

    .line 1048
    .line 1049
    aget-object v7, v14, v5

    .line 1050
    .line 1051
    aget v13, v13, v15

    .line 1052
    .line 1053
    aget v7, v7, v13

    .line 1054
    .line 1055
    const/16 v13, 0x20

    .line 1056
    .line 1057
    and-int/2addr v7, v13

    .line 1058
    if-eq v7, v13, :cond_34

    .line 1059
    .line 1060
    goto :goto_29

    .line 1061
    :cond_34
    add-int/lit8 v15, v15, 0x1

    .line 1062
    .line 1063
    const/4 v7, -0x2

    .line 1064
    goto :goto_27

    .line 1065
    :cond_35
    const/4 v7, 0x1

    .line 1066
    const/16 v13, 0x20

    .line 1067
    .line 1068
    if-ne v11, v7, :cond_37

    .line 1069
    .line 1070
    if-eq v9, v10, :cond_36

    .line 1071
    .line 1072
    :goto_28
    const/4 v3, 0x0

    .line 1073
    goto :goto_2a

    .line 1074
    :cond_36
    move v9, v3

    .line 1075
    goto :goto_29

    .line 1076
    :cond_37
    if-eq v4, v10, :cond_38

    .line 1077
    .line 1078
    goto :goto_28

    .line 1079
    :cond_38
    move v4, v3

    .line 1080
    :goto_29
    add-int/lit8 v3, v3, 0x1

    .line 1081
    .line 1082
    const/4 v5, 0x0

    .line 1083
    const/4 v7, -0x2

    .line 1084
    goto :goto_25

    .line 1085
    :cond_39
    const/4 v3, 0x1

    .line 1086
    :goto_2a
    if-eq v9, v10, :cond_3a

    .line 1087
    .line 1088
    if-eq v4, v10, :cond_3a

    .line 1089
    .line 1090
    const/4 v5, 0x1

    .line 1091
    goto :goto_2b

    .line 1092
    :cond_3a
    const/4 v5, 0x0

    .line 1093
    :goto_2b
    and-int/2addr v3, v5

    .line 1094
    if-eqz v3, :cond_3b

    .line 1095
    .line 1096
    new-instance v3, LB0/E0;

    .line 1097
    .line 1098
    const/4 v5, 0x1

    .line 1099
    const/4 v7, 0x0

    .line 1100
    invoke-direct {v3, v7, v5}, LB0/E0;-><init>(IZ)V

    .line 1101
    .line 1102
    .line 1103
    aput-object v3, v2, v9

    .line 1104
    .line 1105
    aput-object v3, v2, v4

    .line 1106
    .line 1107
    :cond_3b
    iget-object v3, v6, Lm0/k0;->u:Lm0/i0;

    .line 1108
    .line 1109
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1110
    .line 1111
    .line 1112
    invoke-static {v2, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 1113
    .line 1114
    .line 1115
    move-result-object v0

    .line 1116
    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 1117
    .line 1118
    check-cast v2, [LR0/t;

    .line 1119
    .line 1120
    array-length v3, v2

    .line 1121
    new-array v3, v3, [Ljava/util/List;

    .line 1122
    .line 1123
    const/4 v4, 0x0

    .line 1124
    :goto_2c
    array-length v5, v2

    .line 1125
    if-ge v4, v5, :cond_3d

    .line 1126
    .line 1127
    aget-object v5, v2, v4

    .line 1128
    .line 1129
    if-eqz v5, :cond_3c

    .line 1130
    .line 1131
    invoke-static {v5}, Lz4/H;->x(Ljava/lang/Object;)Lz4/d0;

    .line 1132
    .line 1133
    .line 1134
    move-result-object v5

    .line 1135
    goto :goto_2d

    .line 1136
    :cond_3c
    sget-object v5, Lz4/H;->H:Lz4/F;

    .line 1137
    .line 1138
    sget-object v5, Lz4/d0;->K:Lz4/d0;

    .line 1139
    .line 1140
    :goto_2d
    aput-object v5, v3, v4

    .line 1141
    .line 1142
    add-int/lit8 v4, v4, 0x1

    .line 1143
    .line 1144
    goto :goto_2c

    .line 1145
    :cond_3d
    new-instance v2, Lz4/E;

    .line 1146
    .line 1147
    const/4 v4, 0x4

    .line 1148
    invoke-direct {v2, v4}, Lz4/B;-><init>(I)V

    .line 1149
    .line 1150
    .line 1151
    const/4 v4, 0x0

    .line 1152
    :goto_2e
    iget v5, v1, LR0/v;->a:I

    .line 1153
    .line 1154
    if-ge v4, v5, :cond_49

    .line 1155
    .line 1156
    iget-object v5, v1, LR0/v;->c:[LO0/Z;

    .line 1157
    .line 1158
    aget-object v6, v5, v4

    .line 1159
    .line 1160
    aget-object v7, v3, v4

    .line 1161
    .line 1162
    const/4 v8, 0x0

    .line 1163
    :goto_2f
    iget v9, v6, LO0/Z;->a:I

    .line 1164
    .line 1165
    if-ge v8, v9, :cond_48

    .line 1166
    .line 1167
    invoke-virtual {v6, v8}, LO0/Z;->a(I)Lm0/g0;

    .line 1168
    .line 1169
    .line 1170
    move-result-object v9

    .line 1171
    aget-object v11, v5, v4

    .line 1172
    .line 1173
    invoke-virtual {v11, v8}, LO0/Z;->a(I)Lm0/g0;

    .line 1174
    .line 1175
    .line 1176
    move-result-object v11

    .line 1177
    iget v11, v11, Lm0/g0;->a:I

    .line 1178
    .line 1179
    new-array v12, v11, [I

    .line 1180
    .line 1181
    const/4 v13, 0x0

    .line 1182
    const/4 v14, 0x0

    .line 1183
    :goto_30
    if-ge v13, v11, :cond_3f

    .line 1184
    .line 1185
    iget-object v15, v1, LR0/v;->e:[[[I

    .line 1186
    .line 1187
    aget-object v15, v15, v4

    .line 1188
    .line 1189
    aget-object v15, v15, v8

    .line 1190
    .line 1191
    aget v15, v15, v13

    .line 1192
    .line 1193
    const/16 v16, 0x7

    .line 1194
    .line 1195
    and-int/lit8 v15, v15, 0x7

    .line 1196
    .line 1197
    const/4 v10, 0x4

    .line 1198
    if-eq v15, v10, :cond_3e

    .line 1199
    .line 1200
    goto :goto_31

    .line 1201
    :cond_3e
    add-int/lit8 v15, v14, 0x1

    .line 1202
    .line 1203
    aput v13, v12, v14

    .line 1204
    .line 1205
    move v14, v15

    .line 1206
    :goto_31
    add-int/lit8 v13, v13, 0x1

    .line 1207
    .line 1208
    const/4 v10, -0x1

    .line 1209
    goto :goto_30

    .line 1210
    :cond_3f
    const/4 v10, 0x4

    .line 1211
    invoke-static {v12, v14}, Ljava/util/Arrays;->copyOf([II)[I

    .line 1212
    .line 1213
    .line 1214
    move-result-object v11

    .line 1215
    const/16 v12, 0x10

    .line 1216
    .line 1217
    const/4 v12, 0x0

    .line 1218
    const/16 v13, 0x10

    .line 1219
    .line 1220
    const/4 v14, 0x0

    .line 1221
    const/4 v15, 0x0

    .line 1222
    const/16 v20, 0x0

    .line 1223
    .line 1224
    :goto_32
    array-length v10, v11

    .line 1225
    if-ge v14, v10, :cond_41

    .line 1226
    .line 1227
    aget v10, v11, v14

    .line 1228
    .line 1229
    move-object/from16 v22, v3

    .line 1230
    .line 1231
    aget-object v3, v5, v4

    .line 1232
    .line 1233
    invoke-virtual {v3, v8}, LO0/Z;->a(I)Lm0/g0;

    .line 1234
    .line 1235
    .line 1236
    move-result-object v3

    .line 1237
    iget-object v3, v3, Lm0/g0;->d:[Lm0/t;

    .line 1238
    .line 1239
    aget-object v3, v3, v10

    .line 1240
    .line 1241
    iget-object v3, v3, Lm0/t;->o:Ljava/lang/String;

    .line 1242
    .line 1243
    add-int/lit8 v10, v20, 0x1

    .line 1244
    .line 1245
    if-nez v20, :cond_40

    .line 1246
    .line 1247
    move-object v12, v3

    .line 1248
    const/16 v17, 0x1

    .line 1249
    .line 1250
    goto :goto_33

    .line 1251
    :cond_40
    invoke-static {v12, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1252
    .line 1253
    .line 1254
    move-result v3

    .line 1255
    const/16 v17, 0x1

    .line 1256
    .line 1257
    xor-int/lit8 v3, v3, 0x1

    .line 1258
    .line 1259
    or-int/2addr v3, v15

    .line 1260
    move v15, v3

    .line 1261
    :goto_33
    iget-object v3, v1, LR0/v;->e:[[[I

    .line 1262
    .line 1263
    aget-object v3, v3, v4

    .line 1264
    .line 1265
    aget-object v3, v3, v8

    .line 1266
    .line 1267
    aget v3, v3, v14

    .line 1268
    .line 1269
    and-int/lit8 v3, v3, 0x18

    .line 1270
    .line 1271
    invoke-static {v13, v3}, Ljava/lang/Math;->min(II)I

    .line 1272
    .line 1273
    .line 1274
    move-result v13

    .line 1275
    add-int/lit8 v14, v14, 0x1

    .line 1276
    .line 1277
    move/from16 v20, v10

    .line 1278
    .line 1279
    move-object/from16 v3, v22

    .line 1280
    .line 1281
    goto :goto_32

    .line 1282
    :cond_41
    move-object/from16 v22, v3

    .line 1283
    .line 1284
    const/16 v17, 0x1

    .line 1285
    .line 1286
    if-eqz v15, :cond_42

    .line 1287
    .line 1288
    iget-object v3, v1, LR0/v;->d:[I

    .line 1289
    .line 1290
    aget v3, v3, v4

    .line 1291
    .line 1292
    invoke-static {v13, v3}, Ljava/lang/Math;->min(II)I

    .line 1293
    .line 1294
    .line 1295
    move-result v13

    .line 1296
    :cond_42
    if-eqz v13, :cond_43

    .line 1297
    .line 1298
    const/4 v3, 0x1

    .line 1299
    goto :goto_34

    .line 1300
    :cond_43
    const/4 v3, 0x0

    .line 1301
    :goto_34
    iget v10, v9, Lm0/g0;->a:I

    .line 1302
    .line 1303
    new-array v11, v10, [I

    .line 1304
    .line 1305
    new-array v10, v10, [Z

    .line 1306
    .line 1307
    const/4 v12, 0x0

    .line 1308
    :goto_35
    iget v13, v9, Lm0/g0;->a:I

    .line 1309
    .line 1310
    if-ge v12, v13, :cond_47

    .line 1311
    .line 1312
    iget-object v13, v1, LR0/v;->e:[[[I

    .line 1313
    .line 1314
    aget-object v13, v13, v4

    .line 1315
    .line 1316
    aget-object v13, v13, v8

    .line 1317
    .line 1318
    aget v13, v13, v12

    .line 1319
    .line 1320
    const/4 v14, 0x7

    .line 1321
    and-int/2addr v13, v14

    .line 1322
    aput v13, v11, v12

    .line 1323
    .line 1324
    const/4 v13, 0x0

    .line 1325
    :goto_36
    invoke-interface {v7}, Ljava/util/List;->size()I

    .line 1326
    .line 1327
    .line 1328
    move-result v15

    .line 1329
    if-ge v13, v15, :cond_46

    .line 1330
    .line 1331
    invoke-interface {v7, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1332
    .line 1333
    .line 1334
    move-result-object v15

    .line 1335
    check-cast v15, LR0/t;

    .line 1336
    .line 1337
    check-cast v15, LR0/c;

    .line 1338
    .line 1339
    iget-object v14, v15, LR0/c;->a:Lm0/g0;

    .line 1340
    .line 1341
    invoke-virtual {v14, v9}, Lm0/g0;->equals(Ljava/lang/Object;)Z

    .line 1342
    .line 1343
    .line 1344
    move-result v14

    .line 1345
    if-eqz v14, :cond_44

    .line 1346
    .line 1347
    invoke-virtual {v15, v12}, LR0/c;->n(I)I

    .line 1348
    .line 1349
    .line 1350
    move-result v14

    .line 1351
    const/4 v15, -0x1

    .line 1352
    if-eq v14, v15, :cond_45

    .line 1353
    .line 1354
    const/4 v13, 0x1

    .line 1355
    goto :goto_37

    .line 1356
    :cond_44
    const/4 v15, -0x1

    .line 1357
    :cond_45
    add-int/lit8 v13, v13, 0x1

    .line 1358
    .line 1359
    const/4 v14, 0x7

    .line 1360
    goto :goto_36

    .line 1361
    :cond_46
    const/4 v15, -0x1

    .line 1362
    const/4 v13, 0x0

    .line 1363
    :goto_37
    aput-boolean v13, v10, v12

    .line 1364
    .line 1365
    add-int/lit8 v12, v12, 0x1

    .line 1366
    .line 1367
    goto :goto_35

    .line 1368
    :cond_47
    const/4 v15, -0x1

    .line 1369
    new-instance v12, Lm0/l0;

    .line 1370
    .line 1371
    invoke-direct {v12, v9, v3, v11, v10}, Lm0/l0;-><init>(Lm0/g0;Z[I[Z)V

    .line 1372
    .line 1373
    .line 1374
    invoke-virtual {v2, v12}, Lz4/B;->g0(Ljava/lang/Object;)V

    .line 1375
    .line 1376
    .line 1377
    add-int/lit8 v8, v8, 0x1

    .line 1378
    .line 1379
    move-object/from16 v3, v22

    .line 1380
    .line 1381
    const/4 v10, -0x1

    .line 1382
    goto/16 :goto_2f

    .line 1383
    .line 1384
    :cond_48
    move-object/from16 v22, v3

    .line 1385
    .line 1386
    const/4 v15, -0x1

    .line 1387
    const/16 v17, 0x1

    .line 1388
    .line 1389
    add-int/lit8 v4, v4, 0x1

    .line 1390
    .line 1391
    const/4 v10, -0x1

    .line 1392
    goto/16 :goto_2e

    .line 1393
    .line 1394
    :cond_49
    const/16 v17, 0x1

    .line 1395
    .line 1396
    const/4 v3, 0x0

    .line 1397
    :goto_38
    iget-object v4, v1, LR0/v;->f:LO0/Z;

    .line 1398
    .line 1399
    iget v5, v4, LO0/Z;->a:I

    .line 1400
    .line 1401
    if-ge v3, v5, :cond_4a

    .line 1402
    .line 1403
    invoke-virtual {v4, v3}, LO0/Z;->a(I)Lm0/g0;

    .line 1404
    .line 1405
    .line 1406
    move-result-object v4

    .line 1407
    iget v5, v4, Lm0/g0;->a:I

    .line 1408
    .line 1409
    new-array v5, v5, [I

    .line 1410
    .line 1411
    const/4 v6, 0x0

    .line 1412
    invoke-static {v5, v6}, Ljava/util/Arrays;->fill([II)V

    .line 1413
    .line 1414
    .line 1415
    iget v7, v4, Lm0/g0;->a:I

    .line 1416
    .line 1417
    new-array v7, v7, [Z

    .line 1418
    .line 1419
    new-instance v8, Lm0/l0;

    .line 1420
    .line 1421
    invoke-direct {v8, v4, v6, v5, v7}, Lm0/l0;-><init>(Lm0/g0;Z[I[Z)V

    .line 1422
    .line 1423
    .line 1424
    invoke-virtual {v2, v8}, Lz4/B;->g0(Ljava/lang/Object;)V

    .line 1425
    .line 1426
    .line 1427
    add-int/lit8 v3, v3, 0x1

    .line 1428
    .line 1429
    goto :goto_38

    .line 1430
    :cond_4a
    const/4 v6, 0x0

    .line 1431
    new-instance v3, Lm0/m0;

    .line 1432
    .line 1433
    invoke-virtual {v2}, Lz4/E;->m0()Lz4/d0;

    .line 1434
    .line 1435
    .line 1436
    move-result-object v2

    .line 1437
    invoke-direct {v3, v2}, Lm0/m0;-><init>(Lz4/d0;)V

    .line 1438
    .line 1439
    .line 1440
    new-instance v2, LR0/y;

    .line 1441
    .line 1442
    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 1443
    .line 1444
    check-cast v4, [LB0/E0;

    .line 1445
    .line 1446
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 1447
    .line 1448
    check-cast v0, [LR0/t;

    .line 1449
    .line 1450
    invoke-direct {v2, v4, v0, v3, v1}, LR0/y;-><init>([LB0/E0;[LR0/t;Lm0/m0;Ljava/lang/Object;)V

    .line 1451
    .line 1452
    .line 1453
    const/4 v0, 0x0

    .line 1454
    :goto_39
    iget v1, v2, LR0/y;->a:I

    .line 1455
    .line 1456
    if-ge v0, v1, :cond_4f

    .line 1457
    .line 1458
    invoke-virtual {v2, v0}, LR0/y;->b(I)Z

    .line 1459
    .line 1460
    .line 1461
    move-result v1

    .line 1462
    if-eqz v1, :cond_4d

    .line 1463
    .line 1464
    iget-object v1, v2, LR0/y;->c:[LR0/t;

    .line 1465
    .line 1466
    aget-object v1, v1, v0

    .line 1467
    .line 1468
    if-nez v1, :cond_4c

    .line 1469
    .line 1470
    move-object/from16 v1, p0

    .line 1471
    .line 1472
    iget-object v3, v1, LB0/f0;->j:[LB0/D0;

    .line 1473
    .line 1474
    aget-object v3, v3, v0

    .line 1475
    .line 1476
    invoke-interface {v3}, LB0/D0;->getTrackType()I

    .line 1477
    .line 1478
    .line 1479
    move-result v3

    .line 1480
    const/4 v4, -0x2

    .line 1481
    if-ne v3, v4, :cond_4b

    .line 1482
    .line 1483
    goto :goto_3a

    .line 1484
    :cond_4b
    const/4 v3, 0x0

    .line 1485
    goto :goto_3b

    .line 1486
    :cond_4c
    move-object/from16 v1, p0

    .line 1487
    .line 1488
    const/4 v4, -0x2

    .line 1489
    :goto_3a
    const/4 v3, 0x1

    .line 1490
    :goto_3b
    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/H1;->i(Z)V

    .line 1491
    .line 1492
    .line 1493
    goto :goto_3d

    .line 1494
    :cond_4d
    move-object/from16 v1, p0

    .line 1495
    .line 1496
    const/4 v4, -0x2

    .line 1497
    iget-object v3, v2, LR0/y;->c:[LR0/t;

    .line 1498
    .line 1499
    aget-object v3, v3, v0

    .line 1500
    .line 1501
    if-nez v3, :cond_4e

    .line 1502
    .line 1503
    const/4 v3, 0x1

    .line 1504
    goto :goto_3c

    .line 1505
    :cond_4e
    const/4 v3, 0x0

    .line 1506
    :goto_3c
    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/H1;->i(Z)V

    .line 1507
    .line 1508
    .line 1509
    :goto_3d
    add-int/lit8 v0, v0, 0x1

    .line 1510
    .line 1511
    goto :goto_39

    .line 1512
    :cond_4f
    move-object/from16 v1, p0

    .line 1513
    .line 1514
    iget-object v0, v2, LR0/y;->c:[LR0/t;

    .line 1515
    .line 1516
    array-length v3, v0

    .line 1517
    const/4 v15, 0x0

    .line 1518
    :goto_3e
    if-ge v15, v3, :cond_51

    .line 1519
    .line 1520
    aget-object v4, v0, v15

    .line 1521
    .line 1522
    move/from16 v5, p1

    .line 1523
    .line 1524
    if-eqz v4, :cond_50

    .line 1525
    .line 1526
    invoke-interface {v4, v5}, LR0/t;->g(F)V

    .line 1527
    .line 1528
    .line 1529
    :cond_50
    add-int/lit8 v15, v15, 0x1

    .line 1530
    .line 1531
    goto :goto_3e

    .line 1532
    :cond_51
    return-object v2

    .line 1533
    :catchall_0
    move-exception v0

    .line 1534
    move-object/from16 v1, p0

    .line 1535
    .line 1536
    :goto_3f
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1537
    throw v0

    .line 1538
    :catchall_1
    move-exception v0

    .line 1539
    goto :goto_3f
.end method

.method public final k()V
    .locals 6

    .line 1
    iget-object v0, p0, LB0/f0;->a:LO0/w;

    .line 2
    .line 3
    instance-of v1, v0, LO0/d;

    .line 4
    .line 5
    if-eqz v1, :cond_1

    .line 6
    .line 7
    iget-object v1, p0, LB0/f0;->g:LB0/g0;

    .line 8
    .line 9
    iget-wide v1, v1, LB0/g0;->d:J

    .line 10
    .line 11
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    cmp-long v5, v1, v3

    .line 17
    .line 18
    if-nez v5, :cond_0

    .line 19
    .line 20
    const-wide/high16 v1, -0x8000000000000000L

    .line 21
    .line 22
    :cond_0
    check-cast v0, LO0/d;

    .line 23
    .line 24
    const-wide/16 v3, 0x0

    .line 25
    .line 26
    iput-wide v3, v0, LO0/d;->K:J

    .line 27
    .line 28
    iput-wide v1, v0, LO0/d;->L:J

    .line 29
    .line 30
    :cond_1
    return-void
.end method
