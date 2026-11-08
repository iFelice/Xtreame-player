.class public final LB0/i0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lm0/d0;

.field public final b:Lm0/e0;

.field public final c:LC0/a;

.field public final d:Lp0/q;

.field public final e:LB0/x;

.field public f:J

.field public g:I

.field public h:Z

.field public i:LB0/f0;

.field public j:LB0/f0;

.field public k:LB0/f0;

.field public l:LB0/f0;

.field public m:LB0/f0;

.field public n:I

.field public o:Ljava/lang/Object;

.field public p:J

.field public q:Ljava/util/List;


# direct methods
.method public constructor <init>(LC0/a;Lp0/I;LB0/x;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LB0/i0;->c:LC0/a;

    .line 5
    .line 6
    iput-object p2, p0, LB0/i0;->d:Lp0/q;

    .line 7
    .line 8
    iput-object p3, p0, LB0/i0;->e:LB0/x;

    .line 9
    .line 10
    new-instance p1, Lm0/d0;

    .line 11
    .line 12
    invoke-direct {p1}, Lm0/d0;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object p1, p0, LB0/i0;->a:Lm0/d0;

    .line 16
    .line 17
    new-instance p1, Lm0/e0;

    .line 18
    .line 19
    invoke-direct {p1}, Lm0/e0;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object p1, p0, LB0/i0;->b:Lm0/e0;

    .line 23
    .line 24
    new-instance p1, Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object p1, p0, LB0/i0;->q:Ljava/util/List;

    .line 30
    .line 31
    return-void
.end method

.method public static o(Lm0/f0;Ljava/lang/Object;JJLm0/e0;Lm0/d0;)LO0/y;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-wide/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v3, p6

    .line 6
    .line 7
    move-object/from16 v4, p1

    .line 8
    .line 9
    move-object/from16 v5, p7

    .line 10
    .line 11
    invoke-virtual {v0, v4, v5}, Lm0/f0;->h(Ljava/lang/Object;Lm0/d0;)Lm0/d0;

    .line 12
    .line 13
    .line 14
    iget v6, v5, Lm0/d0;->c:I

    .line 15
    .line 16
    invoke-virtual {v0, v6, v3}, Lm0/f0;->o(ILm0/e0;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual/range {p0 .. p1}, Lm0/f0;->b(Ljava/lang/Object;)I

    .line 20
    .line 21
    .line 22
    move-result v6

    .line 23
    move-object v8, v4

    .line 24
    :goto_0
    iget-object v4, v5, Lm0/d0;->g:Lm0/c;

    .line 25
    .line 26
    iget v4, v4, Lm0/c;->a:I

    .line 27
    .line 28
    const/4 v7, -0x1

    .line 29
    if-eqz v4, :cond_5

    .line 30
    .line 31
    const/4 v9, 0x1

    .line 32
    const/4 v10, 0x0

    .line 33
    if-ne v4, v9, :cond_0

    .line 34
    .line 35
    invoke-virtual {v5, v10}, Lm0/d0;->h(I)Z

    .line 36
    .line 37
    .line 38
    move-result v11

    .line 39
    if-nez v11, :cond_5

    .line 40
    .line 41
    :cond_0
    iget-object v11, v5, Lm0/d0;->g:Lm0/c;

    .line 42
    .line 43
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v5, v10}, Lm0/d0;->i(I)Z

    .line 47
    .line 48
    .line 49
    move-result v11

    .line 50
    if-eqz v11, :cond_5

    .line 51
    .line 52
    const-wide/16 v11, 0x0

    .line 53
    .line 54
    invoke-virtual {v5, v11, v12}, Lm0/d0;->c(J)I

    .line 55
    .line 56
    .line 57
    move-result v13

    .line 58
    if-eq v13, v7, :cond_1

    .line 59
    .line 60
    goto :goto_4

    .line 61
    :cond_1
    iget-wide v13, v5, Lm0/d0;->d:J

    .line 62
    .line 63
    cmp-long v15, v13, v11

    .line 64
    .line 65
    if-nez v15, :cond_2

    .line 66
    .line 67
    goto :goto_3

    .line 68
    :cond_2
    add-int/lit8 v13, v4, -0x1

    .line 69
    .line 70
    invoke-virtual {v5, v13}, Lm0/d0;->h(I)Z

    .line 71
    .line 72
    .line 73
    move-result v13

    .line 74
    if-eqz v13, :cond_3

    .line 75
    .line 76
    const/4 v13, 0x2

    .line 77
    goto :goto_1

    .line 78
    :cond_3
    const/4 v13, 0x1

    .line 79
    :goto_1
    sub-int/2addr v4, v13

    .line 80
    :goto_2
    if-gt v10, v4, :cond_4

    .line 81
    .line 82
    iget-object v13, v5, Lm0/d0;->g:Lm0/c;

    .line 83
    .line 84
    invoke-virtual {v13, v10}, Lm0/c;->a(I)Lm0/b;

    .line 85
    .line 86
    .line 87
    move-result-object v13

    .line 88
    iget-wide v13, v13, Lm0/b;->i:J

    .line 89
    .line 90
    add-long/2addr v11, v13

    .line 91
    add-int/lit8 v10, v10, 0x1

    .line 92
    .line 93
    goto :goto_2

    .line 94
    :cond_4
    iget-wide v13, v5, Lm0/d0;->d:J

    .line 95
    .line 96
    cmp-long v4, v13, v11

    .line 97
    .line 98
    if-gtz v4, :cond_5

    .line 99
    .line 100
    :goto_3
    iget v4, v3, Lm0/e0;->o:I

    .line 101
    .line 102
    if-gt v6, v4, :cond_5

    .line 103
    .line 104
    invoke-virtual {v0, v6, v5, v9}, Lm0/f0;->g(ILm0/d0;Z)Lm0/d0;

    .line 105
    .line 106
    .line 107
    iget-object v8, v5, Lm0/d0;->b:Ljava/lang/Object;

    .line 108
    .line 109
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 110
    .line 111
    .line 112
    add-int/lit8 v6, v6, 0x1

    .line 113
    .line 114
    goto :goto_0

    .line 115
    :cond_5
    :goto_4
    invoke-virtual {v0, v8, v5}, Lm0/f0;->h(Ljava/lang/Object;Lm0/d0;)Lm0/d0;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v5, v1, v2}, Lm0/d0;->c(J)I

    .line 119
    .line 120
    .line 121
    move-result v9

    .line 122
    if-ne v9, v7, :cond_6

    .line 123
    .line 124
    invoke-virtual {v5, v1, v2}, Lm0/d0;->b(J)I

    .line 125
    .line 126
    .line 127
    move-result v0

    .line 128
    new-instance v1, LO0/y;

    .line 129
    .line 130
    move-wide/from16 v2, p4

    .line 131
    .line 132
    invoke-direct {v1, v8, v0, v2, v3}, LO0/y;-><init>(Ljava/lang/Object;IJ)V

    .line 133
    .line 134
    .line 135
    return-object v1

    .line 136
    :cond_6
    move-wide/from16 v2, p4

    .line 137
    .line 138
    invoke-virtual {v5, v9}, Lm0/d0;->f(I)I

    .line 139
    .line 140
    .line 141
    move-result v10

    .line 142
    new-instance v0, LO0/y;

    .line 143
    .line 144
    const/4 v13, -0x1

    .line 145
    move-object v7, v0

    .line 146
    move-wide/from16 v11, p4

    .line 147
    .line 148
    invoke-direct/range {v7 .. v13}, LO0/y;-><init>(Ljava/lang/Object;IIJI)V

    .line 149
    .line 150
    .line 151
    return-object v0
.end method


# virtual methods
.method public final a()LB0/f0;
    .locals 3

    .line 1
    iget-object v0, p0, LB0/i0;->i:LB0/f0;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return-object v1

    .line 7
    :cond_0
    iget-object v2, p0, LB0/i0;->j:LB0/f0;

    .line 8
    .line 9
    if-ne v0, v2, :cond_1

    .line 10
    .line 11
    iget-object v2, v0, LB0/f0;->m:LB0/f0;

    .line 12
    .line 13
    iput-object v2, p0, LB0/i0;->j:LB0/f0;

    .line 14
    .line 15
    :cond_1
    iget-object v2, p0, LB0/i0;->k:LB0/f0;

    .line 16
    .line 17
    if-ne v0, v2, :cond_2

    .line 18
    .line 19
    iget-object v2, v0, LB0/f0;->m:LB0/f0;

    .line 20
    .line 21
    iput-object v2, p0, LB0/i0;->k:LB0/f0;

    .line 22
    .line 23
    :cond_2
    invoke-virtual {v0}, LB0/f0;->i()V

    .line 24
    .line 25
    .line 26
    iget v0, p0, LB0/i0;->n:I

    .line 27
    .line 28
    add-int/lit8 v0, v0, -0x1

    .line 29
    .line 30
    iput v0, p0, LB0/i0;->n:I

    .line 31
    .line 32
    if-nez v0, :cond_3

    .line 33
    .line 34
    iput-object v1, p0, LB0/i0;->l:LB0/f0;

    .line 35
    .line 36
    iget-object v0, p0, LB0/i0;->i:LB0/f0;

    .line 37
    .line 38
    iget-object v1, v0, LB0/f0;->b:Ljava/lang/Object;

    .line 39
    .line 40
    iput-object v1, p0, LB0/i0;->o:Ljava/lang/Object;

    .line 41
    .line 42
    iget-object v0, v0, LB0/f0;->g:LB0/g0;

    .line 43
    .line 44
    iget-object v0, v0, LB0/g0;->a:LO0/y;

    .line 45
    .line 46
    iget-wide v0, v0, LO0/y;->d:J

    .line 47
    .line 48
    iput-wide v0, p0, LB0/i0;->p:J

    .line 49
    .line 50
    :cond_3
    iget-object v0, p0, LB0/i0;->i:LB0/f0;

    .line 51
    .line 52
    iget-object v0, v0, LB0/f0;->m:LB0/f0;

    .line 53
    .line 54
    iput-object v0, p0, LB0/i0;->i:LB0/f0;

    .line 55
    .line 56
    invoke-virtual {p0}, LB0/i0;->l()V

    .line 57
    .line 58
    .line 59
    iget-object v0, p0, LB0/i0;->i:LB0/f0;

    .line 60
    .line 61
    return-object v0
.end method

.method public final b()V
    .locals 3

    .line 1
    iget v0, p0, LB0/i0;->n:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, LB0/i0;->i:LB0/f0;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/H1;->j(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object v1, v0, LB0/f0;->b:Ljava/lang/Object;

    .line 12
    .line 13
    iput-object v1, p0, LB0/i0;->o:Ljava/lang/Object;

    .line 14
    .line 15
    iget-object v1, v0, LB0/f0;->g:LB0/g0;

    .line 16
    .line 17
    iget-object v1, v1, LB0/g0;->a:LO0/y;

    .line 18
    .line 19
    iget-wide v1, v1, LO0/y;->d:J

    .line 20
    .line 21
    iput-wide v1, p0, LB0/i0;->p:J

    .line 22
    .line 23
    :goto_0
    if-eqz v0, :cond_1

    .line 24
    .line 25
    invoke-virtual {v0}, LB0/f0;->i()V

    .line 26
    .line 27
    .line 28
    iget-object v0, v0, LB0/f0;->m:LB0/f0;

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, LB0/i0;->i:LB0/f0;

    .line 33
    .line 34
    iput-object v0, p0, LB0/i0;->l:LB0/f0;

    .line 35
    .line 36
    iput-object v0, p0, LB0/i0;->j:LB0/f0;

    .line 37
    .line 38
    iput-object v0, p0, LB0/i0;->k:LB0/f0;

    .line 39
    .line 40
    const/4 v0, 0x0

    .line 41
    iput v0, p0, LB0/i0;->n:I

    .line 42
    .line 43
    invoke-virtual {p0}, LB0/i0;->l()V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public final c(Lm0/f0;LB0/f0;J)LB0/g0;
    .locals 22

    .line 1
    move-object/from16 v7, p0

    .line 2
    .line 3
    move-object/from16 v6, p1

    .line 4
    .line 5
    move-object/from16 v14, p2

    .line 6
    .line 7
    iget-object v15, v14, LB0/f0;->g:LB0/g0;

    .line 8
    .line 9
    iget-object v0, v15, LB0/g0;->a:LO0/y;

    .line 10
    .line 11
    iget-object v0, v0, LO0/y;->a:Ljava/lang/Object;

    .line 12
    .line 13
    invoke-virtual {v6, v0}, Lm0/f0;->b(Ljava/lang/Object;)I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    iget v4, v7, LB0/i0;->g:I

    .line 18
    .line 19
    iget-boolean v5, v7, LB0/i0;->h:Z

    .line 20
    .line 21
    iget-object v2, v7, LB0/i0;->a:Lm0/d0;

    .line 22
    .line 23
    iget-object v3, v7, LB0/i0;->b:Lm0/e0;

    .line 24
    .line 25
    move-object/from16 v0, p1

    .line 26
    .line 27
    invoke-virtual/range {v0 .. v5}, Lm0/f0;->d(ILm0/d0;Lm0/e0;IZ)I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    const/4 v1, -0x1

    .line 32
    const/4 v2, 0x0

    .line 33
    if-ne v0, v1, :cond_0

    .line 34
    .line 35
    return-object v2

    .line 36
    :cond_0
    iget-object v1, v7, LB0/i0;->a:Lm0/d0;

    .line 37
    .line 38
    const/4 v3, 0x1

    .line 39
    invoke-virtual {v6, v0, v1, v3}, Lm0/f0;->g(ILm0/d0;Z)Lm0/d0;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    iget v11, v4, Lm0/d0;->c:I

    .line 44
    .line 45
    iget-object v4, v1, Lm0/d0;->b:Ljava/lang/Object;

    .line 46
    .line 47
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    .line 49
    .line 50
    iget-object v5, v15, LB0/g0;->a:LO0/y;

    .line 51
    .line 52
    iget-wide v8, v5, LO0/y;->d:J

    .line 53
    .line 54
    iget-object v10, v7, LB0/i0;->b:Lm0/e0;

    .line 55
    .line 56
    const-wide/16 v12, 0x0

    .line 57
    .line 58
    invoke-virtual {v6, v11, v10, v12, v13}, Lm0/f0;->n(ILm0/e0;J)Lm0/e0;

    .line 59
    .line 60
    .line 61
    move-result-object v10

    .line 62
    iget v10, v10, Lm0/e0;->n:I

    .line 63
    .line 64
    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    if-ne v10, v0, :cond_4

    .line 70
    .line 71
    const-wide v18, -0x7fffffffffffffffL    # -4.9E-324

    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    move-wide/from16 v8, p3

    .line 77
    .line 78
    invoke-static {v12, v13, v8, v9}, Ljava/lang/Math;->max(JJ)J

    .line 79
    .line 80
    .line 81
    move-result-wide v20

    .line 82
    iget-object v9, v7, LB0/i0;->b:Lm0/e0;

    .line 83
    .line 84
    iget-object v10, v7, LB0/i0;->a:Lm0/d0;

    .line 85
    .line 86
    move-object/from16 v8, p1

    .line 87
    .line 88
    move-wide/from16 v12, v18

    .line 89
    .line 90
    move-object v0, v14

    .line 91
    move-object v4, v15

    .line 92
    move-wide/from16 v14, v20

    .line 93
    .line 94
    invoke-virtual/range {v8 .. v15}, Lm0/f0;->k(Lm0/e0;Lm0/d0;IJJ)Landroid/util/Pair;

    .line 95
    .line 96
    .line 97
    move-result-object v8

    .line 98
    if-nez v8, :cond_1

    .line 99
    .line 100
    return-object v2

    .line 101
    :cond_1
    iget-object v2, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 102
    .line 103
    iget-object v8, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 104
    .line 105
    check-cast v8, Ljava/lang/Long;

    .line 106
    .line 107
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    .line 108
    .line 109
    .line 110
    move-result-wide v12

    .line 111
    iget-object v0, v0, LB0/f0;->m:LB0/f0;

    .line 112
    .line 113
    if-eqz v0, :cond_3

    .line 114
    .line 115
    iget-object v8, v0, LB0/f0;->b:Ljava/lang/Object;

    .line 116
    .line 117
    invoke-virtual {v8, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    move-result v8

    .line 121
    if-eqz v8, :cond_3

    .line 122
    .line 123
    iget-object v0, v0, LB0/f0;->g:LB0/g0;

    .line 124
    .line 125
    iget-object v0, v0, LB0/g0;->a:LO0/y;

    .line 126
    .line 127
    iget-wide v8, v0, LO0/y;->d:J

    .line 128
    .line 129
    :cond_2
    :goto_0
    move-object v0, v4

    .line 130
    move-wide/from16 v18, v12

    .line 131
    .line 132
    move-wide/from16 v20, v16

    .line 133
    .line 134
    move-wide v12, v8

    .line 135
    move-object v9, v2

    .line 136
    goto :goto_1

    .line 137
    :cond_3
    invoke-virtual {v7, v2}, LB0/i0;->q(Ljava/lang/Object;)J

    .line 138
    .line 139
    .line 140
    move-result-wide v8

    .line 141
    const-wide/16 v10, -0x1

    .line 142
    .line 143
    cmp-long v0, v8, v10

    .line 144
    .line 145
    if-nez v0, :cond_2

    .line 146
    .line 147
    iget-wide v8, v7, LB0/i0;->f:J

    .line 148
    .line 149
    const-wide/16 v10, 0x1

    .line 150
    .line 151
    add-long/2addr v10, v8

    .line 152
    iput-wide v10, v7, LB0/i0;->f:J

    .line 153
    .line 154
    goto :goto_0

    .line 155
    :cond_4
    move-object v0, v15

    .line 156
    move-wide/from16 v18, v12

    .line 157
    .line 158
    move-wide/from16 v20, v18

    .line 159
    .line 160
    move-wide v12, v8

    .line 161
    move-object v9, v4

    .line 162
    :goto_1
    iget-object v14, v7, LB0/i0;->b:Lm0/e0;

    .line 163
    .line 164
    iget-object v15, v7, LB0/i0;->a:Lm0/d0;

    .line 165
    .line 166
    move-object/from16 v8, p1

    .line 167
    .line 168
    move-wide/from16 v10, v18

    .line 169
    .line 170
    invoke-static/range {v8 .. v15}, LB0/i0;->o(Lm0/f0;Ljava/lang/Object;JJLm0/e0;Lm0/d0;)LO0/y;

    .line 171
    .line 172
    .line 173
    move-result-object v2

    .line 174
    cmp-long v4, v20, v16

    .line 175
    .line 176
    if-eqz v4, :cond_8

    .line 177
    .line 178
    iget-wide v8, v0, LB0/g0;->c:J

    .line 179
    .line 180
    cmp-long v0, v8, v16

    .line 181
    .line 182
    if-eqz v0, :cond_8

    .line 183
    .line 184
    iget-object v0, v5, LO0/y;->a:Ljava/lang/Object;

    .line 185
    .line 186
    invoke-virtual {v6, v0, v1}, Lm0/f0;->h(Ljava/lang/Object;Lm0/d0;)Lm0/d0;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    iget-object v0, v0, Lm0/d0;->g:Lm0/c;

    .line 191
    .line 192
    iget v0, v0, Lm0/c;->a:I

    .line 193
    .line 194
    iget-object v4, v1, Lm0/d0;->g:Lm0/c;

    .line 195
    .line 196
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 197
    .line 198
    .line 199
    const/4 v4, 0x0

    .line 200
    if-lez v0, :cond_5

    .line 201
    .line 202
    invoke-virtual {v1, v4}, Lm0/d0;->i(I)Z

    .line 203
    .line 204
    .line 205
    move-result v5

    .line 206
    if-eqz v5, :cond_5

    .line 207
    .line 208
    if-gt v0, v3, :cond_6

    .line 209
    .line 210
    invoke-virtual {v1, v4}, Lm0/d0;->d(I)J

    .line 211
    .line 212
    .line 213
    move-result-wide v0

    .line 214
    const-wide/high16 v10, -0x8000000000000000L

    .line 215
    .line 216
    cmp-long v5, v0, v10

    .line 217
    .line 218
    if-eqz v5, :cond_5

    .line 219
    .line 220
    goto :goto_2

    .line 221
    :cond_5
    const/4 v3, 0x0

    .line 222
    :cond_6
    :goto_2
    invoke-virtual {v2}, LO0/y;->b()Z

    .line 223
    .line 224
    .line 225
    move-result v0

    .line 226
    if-eqz v0, :cond_7

    .line 227
    .line 228
    if-eqz v3, :cond_7

    .line 229
    .line 230
    move-wide v3, v8

    .line 231
    goto :goto_3

    .line 232
    :cond_7
    if-eqz v3, :cond_8

    .line 233
    .line 234
    move-wide/from16 v18, v8

    .line 235
    .line 236
    :cond_8
    move-wide/from16 v3, v20

    .line 237
    .line 238
    :goto_3
    move-object/from16 v0, p0

    .line 239
    .line 240
    move-object/from16 v1, p1

    .line 241
    .line 242
    move-wide/from16 v5, v18

    .line 243
    .line 244
    invoke-virtual/range {v0 .. v6}, LB0/i0;->e(Lm0/f0;LO0/y;JJ)LB0/g0;

    .line 245
    .line 246
    .line 247
    move-result-object v0

    .line 248
    return-object v0
.end method

.method public final d(Lm0/f0;LB0/f0;J)LB0/g0;
    .locals 18

    .line 1
    move-object/from16 v10, p0

    .line 2
    .line 3
    move-object/from16 v8, p1

    .line 4
    .line 5
    move-object/from16 v0, p2

    .line 6
    .line 7
    iget-object v9, v0, LB0/f0;->g:LB0/g0;

    .line 8
    .line 9
    iget-wide v1, v0, LB0/f0;->p:J

    .line 10
    .line 11
    iget-wide v3, v9, LB0/g0;->e:J

    .line 12
    .line 13
    add-long/2addr v1, v3

    .line 14
    sub-long v1, v1, p3

    .line 15
    .line 16
    iget-boolean v3, v9, LB0/g0;->h:Z

    .line 17
    .line 18
    if-eqz v3, :cond_0

    .line 19
    .line 20
    invoke-virtual {v10, v8, v0, v1, v2}, LB0/i0;->c(Lm0/f0;LB0/f0;J)LB0/g0;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    goto/16 :goto_5

    .line 25
    .line 26
    :cond_0
    iget-object v11, v9, LB0/g0;->a:LO0/y;

    .line 27
    .line 28
    iget-object v3, v11, LO0/y;->a:Ljava/lang/Object;

    .line 29
    .line 30
    iget-object v12, v10, LB0/i0;->a:Lm0/d0;

    .line 31
    .line 32
    invoke-virtual {v8, v3, v12}, Lm0/f0;->h(Ljava/lang/Object;Lm0/d0;)Lm0/d0;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v11}, LO0/y;->b()Z

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    const-wide/high16 v13, -0x8000000000000000L

    .line 40
    .line 41
    const/4 v4, -0x1

    .line 42
    iget-object v15, v11, LO0/y;->a:Ljava/lang/Object;

    .line 43
    .line 44
    iget-boolean v7, v9, LB0/g0;->g:Z

    .line 45
    .line 46
    if-eqz v3, :cond_6

    .line 47
    .line 48
    iget-object v0, v12, Lm0/d0;->g:Lm0/c;

    .line 49
    .line 50
    iget v3, v11, LO0/y;->b:I

    .line 51
    .line 52
    invoke-virtual {v0, v3}, Lm0/c;->a(I)Lm0/b;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    iget v0, v0, Lm0/b;->b:I

    .line 57
    .line 58
    const/16 v16, 0x0

    .line 59
    .line 60
    if-ne v0, v4, :cond_1

    .line 61
    .line 62
    :goto_0
    move-object/from16 v0, v16

    .line 63
    .line 64
    goto/16 :goto_5

    .line 65
    .line 66
    :cond_1
    iget-object v4, v12, Lm0/d0;->g:Lm0/c;

    .line 67
    .line 68
    invoke-virtual {v4, v3}, Lm0/c;->a(I)Lm0/b;

    .line 69
    .line 70
    .line 71
    move-result-object v4

    .line 72
    iget v5, v11, LO0/y;->c:I

    .line 73
    .line 74
    invoke-virtual {v4, v5}, Lm0/b;->a(I)I

    .line 75
    .line 76
    .line 77
    move-result v4

    .line 78
    if-ge v4, v0, :cond_2

    .line 79
    .line 80
    iget-object v2, v11, LO0/y;->a:Ljava/lang/Object;

    .line 81
    .line 82
    iget-wide v5, v9, LB0/g0;->c:J

    .line 83
    .line 84
    iget-wide v11, v11, LO0/y;->d:J

    .line 85
    .line 86
    move-object/from16 v0, p0

    .line 87
    .line 88
    move-object/from16 v1, p1

    .line 89
    .line 90
    move/from16 v17, v7

    .line 91
    .line 92
    move-wide v7, v11

    .line 93
    move/from16 v9, v17

    .line 94
    .line 95
    invoke-virtual/range {v0 .. v9}, LB0/i0;->f(Lm0/f0;Ljava/lang/Object;IIJJZ)LB0/g0;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    goto/16 :goto_5

    .line 100
    .line 101
    :cond_2
    move/from16 v17, v7

    .line 102
    .line 103
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    iget-wide v5, v9, LB0/g0;->c:J

    .line 109
    .line 110
    cmp-long v0, v5, v3

    .line 111
    .line 112
    if-nez v0, :cond_4

    .line 113
    .line 114
    iget v3, v12, Lm0/d0;->c:I

    .line 115
    .line 116
    const-wide/16 v4, 0x0

    .line 117
    .line 118
    invoke-static {v4, v5, v1, v2}, Ljava/lang/Math;->max(JJ)J

    .line 119
    .line 120
    .line 121
    move-result-wide v6

    .line 122
    iget-object v1, v10, LB0/i0;->b:Lm0/e0;

    .line 123
    .line 124
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    move-object/from16 v0, p1

    .line 130
    .line 131
    move-object v2, v12

    .line 132
    invoke-virtual/range {v0 .. v7}, Lm0/f0;->k(Lm0/e0;Lm0/d0;IJJ)Landroid/util/Pair;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    if-nez v0, :cond_3

    .line 137
    .line 138
    goto :goto_0

    .line 139
    :cond_3
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 140
    .line 141
    check-cast v0, Ljava/lang/Long;

    .line 142
    .line 143
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 144
    .line 145
    .line 146
    move-result-wide v5

    .line 147
    :cond_4
    invoke-virtual {v8, v15, v12}, Lm0/f0;->h(Ljava/lang/Object;Lm0/d0;)Lm0/d0;

    .line 148
    .line 149
    .line 150
    iget v0, v11, LO0/y;->b:I

    .line 151
    .line 152
    invoke-virtual {v12, v0}, Lm0/d0;->d(I)J

    .line 153
    .line 154
    .line 155
    move-result-wide v1

    .line 156
    cmp-long v3, v1, v13

    .line 157
    .line 158
    if-nez v3, :cond_5

    .line 159
    .line 160
    iget-wide v0, v12, Lm0/d0;->d:J

    .line 161
    .line 162
    goto :goto_1

    .line 163
    :cond_5
    iget-object v3, v12, Lm0/d0;->g:Lm0/c;

    .line 164
    .line 165
    invoke-virtual {v3, v0}, Lm0/c;->a(I)Lm0/b;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    iget-wide v3, v0, Lm0/b;->i:J

    .line 170
    .line 171
    add-long v0, v3, v1

    .line 172
    .line 173
    :goto_1
    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->max(JJ)J

    .line 174
    .line 175
    .line 176
    move-result-wide v3

    .line 177
    iget-object v2, v11, LO0/y;->a:Ljava/lang/Object;

    .line 178
    .line 179
    iget-wide v5, v9, LB0/g0;->c:J

    .line 180
    .line 181
    iget-wide v11, v11, LO0/y;->d:J

    .line 182
    .line 183
    move-object/from16 v0, p0

    .line 184
    .line 185
    move-object/from16 v1, p1

    .line 186
    .line 187
    move-wide v7, v11

    .line 188
    move/from16 v9, v17

    .line 189
    .line 190
    invoke-virtual/range {v0 .. v9}, LB0/i0;->g(Lm0/f0;Ljava/lang/Object;JJJZ)LB0/g0;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    goto/16 :goto_5

    .line 195
    .line 196
    :cond_6
    move/from16 v17, v7

    .line 197
    .line 198
    iget v3, v11, LO0/y;->e:I

    .line 199
    .line 200
    if-eq v3, v4, :cond_7

    .line 201
    .line 202
    invoke-virtual {v12, v3}, Lm0/d0;->h(I)Z

    .line 203
    .line 204
    .line 205
    move-result v4

    .line 206
    if-eqz v4, :cond_7

    .line 207
    .line 208
    invoke-virtual {v10, v8, v0, v1, v2}, LB0/i0;->c(Lm0/f0;LB0/f0;J)LB0/g0;

    .line 209
    .line 210
    .line 211
    move-result-object v0

    .line 212
    goto :goto_5

    .line 213
    :cond_7
    invoke-virtual {v12, v3}, Lm0/d0;->f(I)I

    .line 214
    .line 215
    .line 216
    move-result v4

    .line 217
    invoke-virtual {v12, v3}, Lm0/d0;->i(I)Z

    .line 218
    .line 219
    .line 220
    move-result v0

    .line 221
    if-eqz v0, :cond_8

    .line 222
    .line 223
    invoke-virtual {v12, v3, v4}, Lm0/d0;->e(II)I

    .line 224
    .line 225
    .line 226
    move-result v0

    .line 227
    const/4 v1, 0x3

    .line 228
    if-ne v0, v1, :cond_8

    .line 229
    .line 230
    const/4 v0, 0x1

    .line 231
    goto :goto_2

    .line 232
    :cond_8
    const/4 v0, 0x0

    .line 233
    :goto_2
    iget-object v1, v12, Lm0/d0;->g:Lm0/c;

    .line 234
    .line 235
    invoke-virtual {v1, v3}, Lm0/c;->a(I)Lm0/b;

    .line 236
    .line 237
    .line 238
    move-result-object v1

    .line 239
    iget v1, v1, Lm0/b;->b:I

    .line 240
    .line 241
    if-eq v4, v1, :cond_a

    .line 242
    .line 243
    if-eqz v0, :cond_9

    .line 244
    .line 245
    goto :goto_3

    .line 246
    :cond_9
    iget-wide v5, v9, LB0/g0;->e:J

    .line 247
    .line 248
    iget-wide v12, v11, LO0/y;->d:J

    .line 249
    .line 250
    iget-object v2, v11, LO0/y;->a:Ljava/lang/Object;

    .line 251
    .line 252
    iget v3, v11, LO0/y;->e:I

    .line 253
    .line 254
    move-object/from16 v0, p0

    .line 255
    .line 256
    move-object/from16 v1, p1

    .line 257
    .line 258
    move-wide v7, v12

    .line 259
    move/from16 v9, v17

    .line 260
    .line 261
    invoke-virtual/range {v0 .. v9}, LB0/i0;->f(Lm0/f0;Ljava/lang/Object;IIJJZ)LB0/g0;

    .line 262
    .line 263
    .line 264
    move-result-object v0

    .line 265
    goto :goto_5

    .line 266
    :cond_a
    :goto_3
    invoke-virtual {v8, v15, v12}, Lm0/f0;->h(Ljava/lang/Object;Lm0/d0;)Lm0/d0;

    .line 267
    .line 268
    .line 269
    invoke-virtual {v12, v3}, Lm0/d0;->d(I)J

    .line 270
    .line 271
    .line 272
    move-result-wide v0

    .line 273
    cmp-long v2, v0, v13

    .line 274
    .line 275
    if-nez v2, :cond_b

    .line 276
    .line 277
    iget-wide v0, v12, Lm0/d0;->d:J

    .line 278
    .line 279
    move-wide v3, v0

    .line 280
    goto :goto_4

    .line 281
    :cond_b
    iget-object v2, v12, Lm0/d0;->g:Lm0/c;

    .line 282
    .line 283
    invoke-virtual {v2, v3}, Lm0/c;->a(I)Lm0/b;

    .line 284
    .line 285
    .line 286
    move-result-object v2

    .line 287
    iget-wide v2, v2, Lm0/b;->i:J

    .line 288
    .line 289
    add-long/2addr v2, v0

    .line 290
    move-wide v3, v2

    .line 291
    :goto_4
    iget-wide v12, v11, LO0/y;->d:J

    .line 292
    .line 293
    const/4 v14, 0x0

    .line 294
    iget-object v2, v11, LO0/y;->a:Ljava/lang/Object;

    .line 295
    .line 296
    iget-wide v5, v9, LB0/g0;->e:J

    .line 297
    .line 298
    move-object/from16 v0, p0

    .line 299
    .line 300
    move-object/from16 v1, p1

    .line 301
    .line 302
    move-wide v7, v12

    .line 303
    move v9, v14

    .line 304
    invoke-virtual/range {v0 .. v9}, LB0/i0;->g(Lm0/f0;Ljava/lang/Object;JJJZ)LB0/g0;

    .line 305
    .line 306
    .line 307
    move-result-object v0

    .line 308
    :goto_5
    return-object v0
.end method

.method public final e(Lm0/f0;LO0/y;JJ)LB0/g0;
    .locals 13

    .line 1
    move-object v0, p2

    .line 2
    iget-object v1, v0, LO0/y;->a:Ljava/lang/Object;

    .line 3
    .line 4
    move-object v12, p0

    .line 5
    iget-object v2, v12, LB0/i0;->a:Lm0/d0;

    .line 6
    .line 7
    move-object v3, p1

    .line 8
    invoke-virtual {p1, v1, v2}, Lm0/f0;->h(Ljava/lang/Object;Lm0/d0;)Lm0/d0;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2}, LO0/y;->b()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    iget-wide v9, v0, LO0/y;->d:J

    .line 18
    .line 19
    const/4 v11, 0x0

    .line 20
    iget-object v4, v0, LO0/y;->a:Ljava/lang/Object;

    .line 21
    .line 22
    iget v5, v0, LO0/y;->b:I

    .line 23
    .line 24
    iget v6, v0, LO0/y;->c:I

    .line 25
    .line 26
    move-object v2, p0

    .line 27
    move-object v3, p1

    .line 28
    move-wide/from16 v7, p3

    .line 29
    .line 30
    invoke-virtual/range {v2 .. v11}, LB0/i0;->f(Lm0/f0;Ljava/lang/Object;IIJJZ)LB0/g0;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    return-object v0

    .line 35
    :cond_0
    iget-wide v9, v0, LO0/y;->d:J

    .line 36
    .line 37
    const/4 v11, 0x0

    .line 38
    iget-object v4, v0, LO0/y;->a:Ljava/lang/Object;

    .line 39
    .line 40
    move-object v2, p0

    .line 41
    move-object v3, p1

    .line 42
    move-wide/from16 v5, p5

    .line 43
    .line 44
    move-wide/from16 v7, p3

    .line 45
    .line 46
    invoke-virtual/range {v2 .. v11}, LB0/i0;->g(Lm0/f0;Ljava/lang/Object;JJJZ)LB0/g0;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    return-object v0
.end method

.method public final f(Lm0/f0;Ljava/lang/Object;IIJJZ)LB0/g0;
    .locals 18

    .line 1
    move/from16 v7, p3

    .line 2
    .line 3
    move/from16 v8, p4

    .line 4
    .line 5
    new-instance v9, LO0/y;

    .line 6
    .line 7
    const/4 v6, -0x1

    .line 8
    move-object v0, v9

    .line 9
    move-object/from16 v1, p2

    .line 10
    .line 11
    move/from16 v2, p3

    .line 12
    .line 13
    move/from16 v3, p4

    .line 14
    .line 15
    move-wide/from16 v4, p7

    .line 16
    .line 17
    invoke-direct/range {v0 .. v6}, LO0/y;-><init>(Ljava/lang/Object;IIJI)V

    .line 18
    .line 19
    .line 20
    move-object/from16 v15, p0

    .line 21
    .line 22
    iget-object v0, v15, LB0/i0;->a:Lm0/d0;

    .line 23
    .line 24
    move-object/from16 v1, p1

    .line 25
    .line 26
    move-object/from16 v2, p2

    .line 27
    .line 28
    invoke-virtual {v1, v2, v0}, Lm0/f0;->h(Ljava/lang/Object;Lm0/d0;)Lm0/d0;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v1, v7, v8}, Lm0/d0;->a(II)J

    .line 33
    .line 34
    .line 35
    move-result-wide v10

    .line 36
    invoke-virtual {v0, v7}, Lm0/d0;->f(I)I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-ne v8, v1, :cond_0

    .line 41
    .line 42
    iget-object v1, v0, Lm0/d0;->g:Lm0/c;

    .line 43
    .line 44
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    :cond_0
    invoke-virtual {v0, v7}, Lm0/d0;->i(I)Z

    .line 48
    .line 49
    .line 50
    move-result v12

    .line 51
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    const-wide/16 v2, 0x0

    .line 57
    .line 58
    cmp-long v4, v10, v0

    .line 59
    .line 60
    if-eqz v4, :cond_1

    .line 61
    .line 62
    cmp-long v0, v2, v10

    .line 63
    .line 64
    if-ltz v0, :cond_1

    .line 65
    .line 66
    const-wide/16 v0, 0x1

    .line 67
    .line 68
    sub-long v0, v10, v0

    .line 69
    .line 70
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    .line 71
    .line 72
    .line 73
    move-result-wide v0

    .line 74
    move-wide v2, v0

    .line 75
    :cond_1
    new-instance v16, LB0/g0;

    .line 76
    .line 77
    const/4 v13, 0x0

    .line 78
    const/4 v14, 0x0

    .line 79
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    const/16 v17, 0x0

    .line 85
    .line 86
    move-object/from16 v0, v16

    .line 87
    .line 88
    move-object v1, v9

    .line 89
    move-wide/from16 v4, p5

    .line 90
    .line 91
    move-wide v8, v10

    .line 92
    move/from16 v10, p9

    .line 93
    .line 94
    move v11, v12

    .line 95
    move/from16 v12, v17

    .line 96
    .line 97
    invoke-direct/range {v0 .. v14}, LB0/g0;-><init>(LO0/y;JJJJZZZZZ)V

    .line 98
    .line 99
    .line 100
    return-object v16
.end method

.method public final g(Lm0/f0;Ljava/lang/Object;JJJZ)LB0/g0;
    .locals 26

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    move-wide/from16 v3, p3

    .line 8
    .line 9
    iget-object v5, v0, LB0/i0;->a:Lm0/d0;

    .line 10
    .line 11
    invoke-virtual {v1, v2, v5}, Lm0/f0;->h(Ljava/lang/Object;Lm0/d0;)Lm0/d0;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v5, v3, v4}, Lm0/d0;->b(J)I

    .line 15
    .line 16
    .line 17
    move-result v6

    .line 18
    const/4 v7, 0x1

    .line 19
    const/4 v8, 0x0

    .line 20
    const/4 v9, -0x1

    .line 21
    if-ne v6, v9, :cond_0

    .line 22
    .line 23
    iget-object v10, v5, Lm0/d0;->g:Lm0/c;

    .line 24
    .line 25
    iget v10, v10, Lm0/c;->a:I

    .line 26
    .line 27
    if-lez v10, :cond_5

    .line 28
    .line 29
    invoke-virtual {v5, v8}, Lm0/d0;->i(I)Z

    .line 30
    .line 31
    .line 32
    move-result v10

    .line 33
    if-eqz v10, :cond_5

    .line 34
    .line 35
    goto :goto_3

    .line 36
    :cond_0
    invoke-virtual {v5, v6}, Lm0/d0;->i(I)Z

    .line 37
    .line 38
    .line 39
    move-result v10

    .line 40
    if-eqz v10, :cond_5

    .line 41
    .line 42
    invoke-virtual {v5, v6}, Lm0/d0;->d(I)J

    .line 43
    .line 44
    .line 45
    move-result-wide v10

    .line 46
    iget-wide v12, v5, Lm0/d0;->d:J

    .line 47
    .line 48
    cmp-long v14, v10, v12

    .line 49
    .line 50
    if-nez v14, :cond_5

    .line 51
    .line 52
    iget-object v10, v5, Lm0/d0;->g:Lm0/c;

    .line 53
    .line 54
    invoke-virtual {v10, v6}, Lm0/c;->a(I)Lm0/b;

    .line 55
    .line 56
    .line 57
    move-result-object v10

    .line 58
    iget v11, v10, Lm0/b;->b:I

    .line 59
    .line 60
    if-ne v11, v9, :cond_2

    .line 61
    .line 62
    :cond_1
    :goto_0
    const/4 v10, 0x1

    .line 63
    goto :goto_2

    .line 64
    :cond_2
    const/4 v12, 0x0

    .line 65
    :goto_1
    if-ge v12, v11, :cond_4

    .line 66
    .line 67
    iget-object v13, v10, Lm0/b;->f:[I

    .line 68
    .line 69
    aget v13, v13, v12

    .line 70
    .line 71
    if-eqz v13, :cond_1

    .line 72
    .line 73
    if-ne v13, v7, :cond_3

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_3
    add-int/lit8 v12, v12, 0x1

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_4
    const/4 v10, 0x0

    .line 80
    :goto_2
    xor-int/2addr v10, v7

    .line 81
    if-eqz v10, :cond_5

    .line 82
    .line 83
    const/4 v6, -0x1

    .line 84
    :goto_3
    const/4 v10, 0x1

    .line 85
    goto :goto_4

    .line 86
    :cond_5
    const/4 v10, 0x0

    .line 87
    :goto_4
    new-instance v12, LO0/y;

    .line 88
    .line 89
    move-wide/from16 v13, p7

    .line 90
    .line 91
    invoke-direct {v12, v2, v6, v13, v14}, LO0/y;-><init>(Ljava/lang/Object;IJ)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v12}, LO0/y;->b()Z

    .line 95
    .line 96
    .line 97
    move-result v2

    .line 98
    if-nez v2, :cond_6

    .line 99
    .line 100
    if-ne v6, v9, :cond_6

    .line 101
    .line 102
    const/4 v2, 0x1

    .line 103
    goto :goto_5

    .line 104
    :cond_6
    const/4 v2, 0x0

    .line 105
    :goto_5
    invoke-virtual {v0, v1, v12}, LB0/i0;->j(Lm0/f0;LO0/y;)Z

    .line 106
    .line 107
    .line 108
    move-result v24

    .line 109
    invoke-virtual {v0, v1, v12, v2}, LB0/i0;->i(Lm0/f0;LO0/y;Z)Z

    .line 110
    .line 111
    .line 112
    move-result v25

    .line 113
    if-eq v6, v9, :cond_7

    .line 114
    .line 115
    invoke-virtual {v5, v6}, Lm0/d0;->i(I)Z

    .line 116
    .line 117
    .line 118
    move-result v1

    .line 119
    if-eqz v1, :cond_7

    .line 120
    .line 121
    invoke-virtual {v5, v6}, Lm0/d0;->h(I)Z

    .line 122
    .line 123
    .line 124
    move-result v1

    .line 125
    if-nez v1, :cond_7

    .line 126
    .line 127
    const/16 v22, 0x1

    .line 128
    .line 129
    goto :goto_6

    .line 130
    :cond_7
    const/16 v22, 0x0

    .line 131
    .line 132
    :goto_6
    if-eq v6, v9, :cond_8

    .line 133
    .line 134
    invoke-virtual {v5, v6}, Lm0/d0;->h(I)Z

    .line 135
    .line 136
    .line 137
    move-result v1

    .line 138
    if-eqz v1, :cond_8

    .line 139
    .line 140
    invoke-virtual {v5, v6}, Lm0/d0;->i(I)Z

    .line 141
    .line 142
    .line 143
    move-result v1

    .line 144
    if-eqz v1, :cond_8

    .line 145
    .line 146
    const/4 v1, 0x1

    .line 147
    goto :goto_7

    .line 148
    :cond_8
    const/4 v1, 0x0

    .line 149
    :goto_7
    const-wide v13, -0x7fffffffffffffffL    # -4.9E-324

    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    if-eq v6, v9, :cond_9

    .line 155
    .line 156
    if-nez v1, :cond_9

    .line 157
    .line 158
    invoke-virtual {v5, v6}, Lm0/d0;->d(I)J

    .line 159
    .line 160
    .line 161
    move-result-wide v15

    .line 162
    move-wide/from16 v17, v15

    .line 163
    .line 164
    goto :goto_8

    .line 165
    :cond_9
    if-eqz v10, :cond_a

    .line 166
    .line 167
    iget-wide v7, v5, Lm0/d0;->d:J

    .line 168
    .line 169
    move-wide/from16 v17, v7

    .line 170
    .line 171
    goto :goto_8

    .line 172
    :cond_a
    move-wide/from16 v17, v13

    .line 173
    .line 174
    :goto_8
    cmp-long v7, v17, v13

    .line 175
    .line 176
    if-eqz v7, :cond_c

    .line 177
    .line 178
    const-wide/high16 v7, -0x8000000000000000L

    .line 179
    .line 180
    cmp-long v9, v17, v7

    .line 181
    .line 182
    if-nez v9, :cond_b

    .line 183
    .line 184
    goto :goto_9

    .line 185
    :cond_b
    move-wide/from16 v19, v17

    .line 186
    .line 187
    goto :goto_a

    .line 188
    :cond_c
    :goto_9
    iget-wide v7, v5, Lm0/d0;->d:J

    .line 189
    .line 190
    move-wide/from16 v19, v7

    .line 191
    .line 192
    :goto_a
    cmp-long v5, v19, v13

    .line 193
    .line 194
    if-eqz v5, :cond_f

    .line 195
    .line 196
    cmp-long v5, v3, v19

    .line 197
    .line 198
    if-ltz v5, :cond_f

    .line 199
    .line 200
    if-nez v25, :cond_e

    .line 201
    .line 202
    if-nez v10, :cond_d

    .line 203
    .line 204
    goto :goto_b

    .line 205
    :cond_d
    const/4 v7, 0x0

    .line 206
    goto :goto_c

    .line 207
    :cond_e
    :goto_b
    const/4 v7, 0x1

    .line 208
    :goto_c
    int-to-long v3, v7

    .line 209
    sub-long v3, v19, v3

    .line 210
    .line 211
    const-wide/16 v5, 0x0

    .line 212
    .line 213
    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->max(JJ)J

    .line 214
    .line 215
    .line 216
    move-result-wide v3

    .line 217
    :cond_f
    move-wide v13, v3

    .line 218
    new-instance v1, LB0/g0;

    .line 219
    .line 220
    move-object v11, v1

    .line 221
    move-wide/from16 v15, p5

    .line 222
    .line 223
    move/from16 v21, p9

    .line 224
    .line 225
    move/from16 v23, v2

    .line 226
    .line 227
    invoke-direct/range {v11 .. v25}, LB0/g0;-><init>(LO0/y;JJJJZZZZZ)V

    .line 228
    .line 229
    .line 230
    return-object v1
.end method

.method public final h(Lm0/f0;LB0/g0;)LB0/g0;
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    iget-object v3, v2, LB0/g0;->a:LO0/y;

    .line 8
    .line 9
    invoke-virtual {v3}, LO0/y;->b()Z

    .line 10
    .line 11
    .line 12
    move-result v4

    .line 13
    const/4 v5, 0x0

    .line 14
    const/4 v6, 0x1

    .line 15
    const/4 v7, -0x1

    .line 16
    iget v8, v3, LO0/y;->e:I

    .line 17
    .line 18
    if-nez v4, :cond_0

    .line 19
    .line 20
    if-ne v8, v7, :cond_0

    .line 21
    .line 22
    const/4 v13, 0x1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 v13, 0x0

    .line 25
    :goto_0
    invoke-virtual {v0, v1, v3}, LB0/i0;->j(Lm0/f0;LO0/y;)Z

    .line 26
    .line 27
    .line 28
    move-result v14

    .line 29
    invoke-virtual {v0, v1, v3, v13}, LB0/i0;->i(Lm0/f0;LO0/y;Z)Z

    .line 30
    .line 31
    .line 32
    move-result v15

    .line 33
    iget-object v4, v2, LB0/g0;->a:LO0/y;

    .line 34
    .line 35
    iget-object v4, v4, LO0/y;->a:Ljava/lang/Object;

    .line 36
    .line 37
    iget-object v9, v0, LB0/i0;->a:Lm0/d0;

    .line 38
    .line 39
    invoke-virtual {v1, v4, v9}, Lm0/f0;->h(Ljava/lang/Object;Lm0/d0;)Lm0/d0;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v3}, LO0/y;->b()Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    if-nez v1, :cond_2

    .line 52
    .line 53
    if-ne v8, v7, :cond_1

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_1
    invoke-virtual {v9, v8}, Lm0/d0;->d(I)J

    .line 57
    .line 58
    .line 59
    move-result-wide v16

    .line 60
    goto :goto_2

    .line 61
    :cond_2
    :goto_1
    move-wide/from16 v16, v10

    .line 62
    .line 63
    :goto_2
    invoke-virtual {v3}, LO0/y;->b()Z

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    iget v4, v3, LO0/y;->b:I

    .line 68
    .line 69
    if-eqz v1, :cond_3

    .line 70
    .line 71
    iget v1, v3, LO0/y;->c:I

    .line 72
    .line 73
    invoke-virtual {v9, v4, v1}, Lm0/d0;->a(II)J

    .line 74
    .line 75
    .line 76
    move-result-wide v10

    .line 77
    goto :goto_4

    .line 78
    :cond_3
    cmp-long v1, v16, v10

    .line 79
    .line 80
    if-eqz v1, :cond_5

    .line 81
    .line 82
    const-wide/high16 v10, -0x8000000000000000L

    .line 83
    .line 84
    cmp-long v1, v16, v10

    .line 85
    .line 86
    if-nez v1, :cond_4

    .line 87
    .line 88
    goto :goto_3

    .line 89
    :cond_4
    move-wide/from16 v10, v16

    .line 90
    .line 91
    goto :goto_4

    .line 92
    :cond_5
    :goto_3
    iget-wide v10, v9, Lm0/d0;->d:J

    .line 93
    .line 94
    :goto_4
    invoke-virtual {v3}, LO0/y;->b()Z

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    if-eqz v1, :cond_6

    .line 99
    .line 100
    invoke-virtual {v9, v4}, Lm0/d0;->i(I)Z

    .line 101
    .line 102
    .line 103
    move-result v1

    .line 104
    move v12, v1

    .line 105
    goto :goto_5

    .line 106
    :cond_6
    if-eq v8, v7, :cond_7

    .line 107
    .line 108
    invoke-virtual {v9, v8}, Lm0/d0;->i(I)Z

    .line 109
    .line 110
    .line 111
    move-result v1

    .line 112
    if-eqz v1, :cond_7

    .line 113
    .line 114
    const/4 v12, 0x1

    .line 115
    goto :goto_5

    .line 116
    :cond_7
    const/4 v12, 0x0

    .line 117
    :goto_5
    new-instance v18, LB0/g0;

    .line 118
    .line 119
    iget-boolean v9, v2, LB0/g0;->f:Z

    .line 120
    .line 121
    iget-wide v4, v2, LB0/g0;->b:J

    .line 122
    .line 123
    iget-wide v6, v2, LB0/g0;->c:J

    .line 124
    .line 125
    move-object/from16 v1, v18

    .line 126
    .line 127
    move-object v2, v3

    .line 128
    move-wide v3, v4

    .line 129
    move-wide v5, v6

    .line 130
    move-wide/from16 v7, v16

    .line 131
    .line 132
    move/from16 v16, v9

    .line 133
    .line 134
    move-wide v9, v10

    .line 135
    move/from16 v11, v16

    .line 136
    .line 137
    invoke-direct/range {v1 .. v15}, LB0/g0;-><init>(LO0/y;JJJJZZZZZ)V

    .line 138
    .line 139
    .line 140
    return-object v18
.end method

.method public final i(Lm0/f0;LO0/y;Z)Z
    .locals 7

    .line 1
    iget-object p2, p2, LO0/y;->a:Ljava/lang/Object;

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Lm0/f0;->b(Ljava/lang/Object;)I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    iget-object p2, p0, LB0/i0;->a:Lm0/d0;

    .line 8
    .line 9
    const/4 v6, 0x0

    .line 10
    invoke-virtual {p1, v1, p2, v6}, Lm0/f0;->g(ILm0/d0;Z)Lm0/d0;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    iget p2, p2, Lm0/d0;->c:I

    .line 15
    .line 16
    const-wide/16 v2, 0x0

    .line 17
    .line 18
    iget-object v0, p0, LB0/i0;->b:Lm0/e0;

    .line 19
    .line 20
    invoke-virtual {p1, p2, v0, v2, v3}, Lm0/f0;->n(ILm0/e0;J)Lm0/e0;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    iget-boolean p2, p2, Lm0/e0;->i:Z

    .line 25
    .line 26
    if-nez p2, :cond_0

    .line 27
    .line 28
    iget v4, p0, LB0/i0;->g:I

    .line 29
    .line 30
    iget-boolean v5, p0, LB0/i0;->h:Z

    .line 31
    .line 32
    iget-object v2, p0, LB0/i0;->a:Lm0/d0;

    .line 33
    .line 34
    iget-object v3, p0, LB0/i0;->b:Lm0/e0;

    .line 35
    .line 36
    move-object v0, p1

    .line 37
    invoke-virtual/range {v0 .. v5}, Lm0/f0;->d(ILm0/d0;Lm0/e0;IZ)I

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    const/4 p2, -0x1

    .line 42
    if-ne p1, p2, :cond_0

    .line 43
    .line 44
    if-eqz p3, :cond_0

    .line 45
    .line 46
    const/4 v6, 0x1

    .line 47
    :cond_0
    return v6
.end method

.method public final j(Lm0/f0;LO0/y;)Z
    .locals 6

    .line 1
    invoke-virtual {p2}, LO0/y;->b()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget v0, p2, LO0/y;->e:I

    .line 10
    .line 11
    const/4 v3, -0x1

    .line 12
    if-ne v0, v3, :cond_0

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    :goto_0
    if-nez v0, :cond_1

    .line 18
    .line 19
    return v1

    .line 20
    :cond_1
    iget-object p2, p2, LO0/y;->a:Ljava/lang/Object;

    .line 21
    .line 22
    iget-object v0, p0, LB0/i0;->a:Lm0/d0;

    .line 23
    .line 24
    invoke-virtual {p1, p2, v0}, Lm0/f0;->h(Ljava/lang/Object;Lm0/d0;)Lm0/d0;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iget v0, v0, Lm0/d0;->c:I

    .line 29
    .line 30
    invoke-virtual {p1, p2}, Lm0/f0;->b(Ljava/lang/Object;)I

    .line 31
    .line 32
    .line 33
    move-result p2

    .line 34
    const-wide/16 v3, 0x0

    .line 35
    .line 36
    iget-object v5, p0, LB0/i0;->b:Lm0/e0;

    .line 37
    .line 38
    invoke-virtual {p1, v0, v5, v3, v4}, Lm0/f0;->n(ILm0/e0;J)Lm0/e0;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    iget p1, p1, Lm0/e0;->o:I

    .line 43
    .line 44
    if-ne p1, p2, :cond_2

    .line 45
    .line 46
    const/4 v1, 0x1

    .line 47
    :cond_2
    return v1
.end method

.method public final k()V
    .locals 3

    .line 1
    iget-object v0, p0, LB0/i0;->m:LB0/f0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, LB0/f0;->h()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, LB0/i0;->m:LB0/f0;

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    :goto_0
    iget-object v1, p0, LB0/i0;->q:Ljava/util/List;

    .line 17
    .line 18
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-ge v0, v1, :cond_2

    .line 23
    .line 24
    iget-object v1, p0, LB0/i0;->q:Ljava/util/List;

    .line 25
    .line 26
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    check-cast v1, LB0/f0;

    .line 31
    .line 32
    invoke-virtual {v1}, LB0/f0;->h()Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-nez v2, :cond_1

    .line 37
    .line 38
    iput-object v1, p0, LB0/i0;->m:LB0/f0;

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_2
    :goto_1
    return-void
.end method

.method public final l()V
    .locals 4

    .line 1
    invoke-static {}, Lz4/H;->q()Lz4/E;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, LB0/i0;->i:LB0/f0;

    .line 6
    .line 7
    :goto_0
    if-eqz v1, :cond_0

    .line 8
    .line 9
    iget-object v2, v1, LB0/f0;->g:LB0/g0;

    .line 10
    .line 11
    iget-object v2, v2, LB0/g0;->a:LO0/y;

    .line 12
    .line 13
    invoke-virtual {v0, v2}, Lz4/B;->g0(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    iget-object v1, v1, LB0/f0;->m:LB0/f0;

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-object v1, p0, LB0/i0;->j:LB0/f0;

    .line 20
    .line 21
    if-nez v1, :cond_1

    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    goto :goto_1

    .line 25
    :cond_1
    iget-object v1, v1, LB0/f0;->g:LB0/g0;

    .line 26
    .line 27
    iget-object v1, v1, LB0/g0;->a:LO0/y;

    .line 28
    .line 29
    :goto_1
    new-instance v2, LB0/h0;

    .line 30
    .line 31
    const/4 v3, 0x0

    .line 32
    invoke-direct {v2, p0, v0, v1, v3}, LB0/h0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, LB0/i0;->d:Lp0/q;

    .line 36
    .line 37
    check-cast v0, Lp0/I;

    .line 38
    .line 39
    invoke-virtual {v0, v2}, Lp0/I;->c(Ljava/lang/Runnable;)Z

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public final m(J)V
    .locals 4

    .line 1
    iget-object v0, p0, LB0/i0;->l:LB0/f0;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v1, v0, LB0/f0;->m:LB0/f0;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v1, 0x0

    .line 12
    :goto_0
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/H1;->i(Z)V

    .line 13
    .line 14
    .line 15
    iget-boolean v1, v0, LB0/f0;->e:Z

    .line 16
    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    iget-object v1, v0, LB0/f0;->a:LO0/w;

    .line 20
    .line 21
    iget-wide v2, v0, LB0/f0;->p:J

    .line 22
    .line 23
    sub-long/2addr p1, v2

    .line 24
    invoke-interface {v1, p1, p2}, LO0/W;->w(J)V

    .line 25
    .line 26
    .line 27
    :cond_1
    return-void
.end method

.method public final n(LB0/f0;)I
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/H1;->j(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, LB0/i0;->l:LB0/f0;

    .line 5
    .line 6
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    return v1

    .line 14
    :cond_0
    iput-object p1, p0, LB0/i0;->l:LB0/f0;

    .line 15
    .line 16
    :goto_0
    iget-object p1, p1, LB0/f0;->m:LB0/f0;

    .line 17
    .line 18
    if-eqz p1, :cond_3

    .line 19
    .line 20
    iget-object v0, p0, LB0/i0;->j:LB0/f0;

    .line 21
    .line 22
    if-ne p1, v0, :cond_1

    .line 23
    .line 24
    iget-object v0, p0, LB0/i0;->i:LB0/f0;

    .line 25
    .line 26
    iput-object v0, p0, LB0/i0;->j:LB0/f0;

    .line 27
    .line 28
    iput-object v0, p0, LB0/i0;->k:LB0/f0;

    .line 29
    .line 30
    const/4 v1, 0x3

    .line 31
    :cond_1
    iget-object v0, p0, LB0/i0;->k:LB0/f0;

    .line 32
    .line 33
    if-ne p1, v0, :cond_2

    .line 34
    .line 35
    iget-object v0, p0, LB0/i0;->j:LB0/f0;

    .line 36
    .line 37
    iput-object v0, p0, LB0/i0;->k:LB0/f0;

    .line 38
    .line 39
    or-int/lit8 v0, v1, 0x2

    .line 40
    .line 41
    move v1, v0

    .line 42
    :cond_2
    invoke-virtual {p1}, LB0/f0;->i()V

    .line 43
    .line 44
    .line 45
    iget v0, p0, LB0/i0;->n:I

    .line 46
    .line 47
    add-int/lit8 v0, v0, -0x1

    .line 48
    .line 49
    iput v0, p0, LB0/i0;->n:I

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_3
    iget-object p1, p0, LB0/i0;->l:LB0/f0;

    .line 53
    .line 54
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    .line 56
    .line 57
    iget-object v0, p1, LB0/f0;->m:LB0/f0;

    .line 58
    .line 59
    if-nez v0, :cond_4

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_4
    invoke-virtual {p1}, LB0/f0;->b()V

    .line 63
    .line 64
    .line 65
    const/4 v0, 0x0

    .line 66
    iput-object v0, p1, LB0/f0;->m:LB0/f0;

    .line 67
    .line 68
    invoke-virtual {p1}, LB0/f0;->c()V

    .line 69
    .line 70
    .line 71
    :goto_1
    invoke-virtual {p0}, LB0/i0;->l()V

    .line 72
    .line 73
    .line 74
    return v1
.end method

.method public final p(Lm0/f0;Ljava/lang/Object;J)LO0/y;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    iget-object v3, v0, LB0/i0;->a:Lm0/d0;

    .line 8
    .line 9
    invoke-virtual {v1, v2, v3}, Lm0/f0;->h(Ljava/lang/Object;Lm0/d0;)Lm0/d0;

    .line 10
    .line 11
    .line 12
    move-result-object v4

    .line 13
    iget v4, v4, Lm0/d0;->c:I

    .line 14
    .line 15
    iget-object v5, v0, LB0/i0;->o:Ljava/lang/Object;

    .line 16
    .line 17
    const/4 v6, -0x1

    .line 18
    const/4 v7, 0x0

    .line 19
    if-eqz v5, :cond_1

    .line 20
    .line 21
    invoke-virtual {v1, v5}, Lm0/f0;->b(Ljava/lang/Object;)I

    .line 22
    .line 23
    .line 24
    move-result v5

    .line 25
    if-eq v5, v6, :cond_1

    .line 26
    .line 27
    invoke-virtual {v1, v5, v3, v7}, Lm0/f0;->g(ILm0/d0;Z)Lm0/d0;

    .line 28
    .line 29
    .line 30
    move-result-object v5

    .line 31
    iget v5, v5, Lm0/d0;->c:I

    .line 32
    .line 33
    if-ne v5, v4, :cond_1

    .line 34
    .line 35
    iget-wide v4, v0, LB0/i0;->p:J

    .line 36
    .line 37
    :cond_0
    :goto_0
    move-wide v8, v4

    .line 38
    goto :goto_3

    .line 39
    :cond_1
    iget-object v5, v0, LB0/i0;->i:LB0/f0;

    .line 40
    .line 41
    :goto_1
    if-eqz v5, :cond_3

    .line 42
    .line 43
    iget-object v8, v5, LB0/f0;->b:Ljava/lang/Object;

    .line 44
    .line 45
    invoke-virtual {v8, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v8

    .line 49
    if-eqz v8, :cond_2

    .line 50
    .line 51
    iget-object v4, v5, LB0/f0;->g:LB0/g0;

    .line 52
    .line 53
    iget-object v4, v4, LB0/g0;->a:LO0/y;

    .line 54
    .line 55
    iget-wide v4, v4, LO0/y;->d:J

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_2
    iget-object v5, v5, LB0/f0;->m:LB0/f0;

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_3
    iget-object v5, v0, LB0/i0;->i:LB0/f0;

    .line 62
    .line 63
    :goto_2
    if-eqz v5, :cond_5

    .line 64
    .line 65
    iget-object v8, v5, LB0/f0;->b:Ljava/lang/Object;

    .line 66
    .line 67
    invoke-virtual {v1, v8}, Lm0/f0;->b(Ljava/lang/Object;)I

    .line 68
    .line 69
    .line 70
    move-result v8

    .line 71
    if-eq v8, v6, :cond_4

    .line 72
    .line 73
    invoke-virtual {v1, v8, v3, v7}, Lm0/f0;->g(ILm0/d0;Z)Lm0/d0;

    .line 74
    .line 75
    .line 76
    move-result-object v8

    .line 77
    iget v8, v8, Lm0/d0;->c:I

    .line 78
    .line 79
    if-ne v8, v4, :cond_4

    .line 80
    .line 81
    iget-object v4, v5, LB0/f0;->g:LB0/g0;

    .line 82
    .line 83
    iget-object v4, v4, LB0/g0;->a:LO0/y;

    .line 84
    .line 85
    iget-wide v4, v4, LO0/y;->d:J

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_4
    iget-object v5, v5, LB0/f0;->m:LB0/f0;

    .line 89
    .line 90
    goto :goto_2

    .line 91
    :cond_5
    invoke-virtual {v0, v2}, LB0/i0;->q(Ljava/lang/Object;)J

    .line 92
    .line 93
    .line 94
    move-result-wide v4

    .line 95
    const-wide/16 v8, -0x1

    .line 96
    .line 97
    cmp-long v10, v4, v8

    .line 98
    .line 99
    if-eqz v10, :cond_6

    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_6
    iget-wide v4, v0, LB0/i0;->f:J

    .line 103
    .line 104
    const-wide/16 v8, 0x1

    .line 105
    .line 106
    add-long/2addr v8, v4

    .line 107
    iput-wide v8, v0, LB0/i0;->f:J

    .line 108
    .line 109
    iget-object v8, v0, LB0/i0;->i:LB0/f0;

    .line 110
    .line 111
    if-nez v8, :cond_0

    .line 112
    .line 113
    iput-object v2, v0, LB0/i0;->o:Ljava/lang/Object;

    .line 114
    .line 115
    iput-wide v4, v0, LB0/i0;->p:J

    .line 116
    .line 117
    goto :goto_0

    .line 118
    :goto_3
    invoke-virtual {v1, v2, v3}, Lm0/f0;->h(Ljava/lang/Object;Lm0/d0;)Lm0/d0;

    .line 119
    .line 120
    .line 121
    iget v4, v3, Lm0/d0;->c:I

    .line 122
    .line 123
    iget-object v5, v0, LB0/i0;->b:Lm0/e0;

    .line 124
    .line 125
    invoke-virtual {v1, v4, v5}, Lm0/f0;->o(ILm0/e0;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual/range {p1 .. p2}, Lm0/f0;->b(Ljava/lang/Object;)I

    .line 129
    .line 130
    .line 131
    move-result v4

    .line 132
    const/4 v10, 0x0

    .line 133
    :goto_4
    iget v11, v5, Lm0/e0;->n:I

    .line 134
    .line 135
    if-lt v4, v11, :cond_a

    .line 136
    .line 137
    const/4 v11, 0x1

    .line 138
    invoke-virtual {v1, v4, v3, v11}, Lm0/f0;->g(ILm0/d0;Z)Lm0/d0;

    .line 139
    .line 140
    .line 141
    iget-object v12, v3, Lm0/d0;->g:Lm0/c;

    .line 142
    .line 143
    iget v12, v12, Lm0/c;->a:I

    .line 144
    .line 145
    if-lez v12, :cond_7

    .line 146
    .line 147
    goto :goto_5

    .line 148
    :cond_7
    const/4 v11, 0x0

    .line 149
    :goto_5
    or-int/2addr v10, v11

    .line 150
    iget-wide v12, v3, Lm0/d0;->d:J

    .line 151
    .line 152
    invoke-virtual {v3, v12, v13}, Lm0/d0;->c(J)I

    .line 153
    .line 154
    .line 155
    move-result v12

    .line 156
    if-eq v12, v6, :cond_8

    .line 157
    .line 158
    iget-object v2, v3, Lm0/d0;->b:Ljava/lang/Object;

    .line 159
    .line 160
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 161
    .line 162
    .line 163
    :cond_8
    if-eqz v10, :cond_9

    .line 164
    .line 165
    if-eqz v11, :cond_a

    .line 166
    .line 167
    iget-wide v11, v3, Lm0/d0;->d:J

    .line 168
    .line 169
    const-wide/16 v13, 0x0

    .line 170
    .line 171
    cmp-long v15, v11, v13

    .line 172
    .line 173
    if-eqz v15, :cond_9

    .line 174
    .line 175
    goto :goto_6

    .line 176
    :cond_9
    add-int/lit8 v4, v4, -0x1

    .line 177
    .line 178
    goto :goto_4

    .line 179
    :cond_a
    :goto_6
    iget-object v7, v0, LB0/i0;->b:Lm0/e0;

    .line 180
    .line 181
    iget-object v10, v0, LB0/i0;->a:Lm0/d0;

    .line 182
    .line 183
    move-object/from16 v1, p1

    .line 184
    .line 185
    move-wide/from16 v3, p3

    .line 186
    .line 187
    move-wide v5, v8

    .line 188
    move-object v8, v10

    .line 189
    invoke-static/range {v1 .. v8}, LB0/i0;->o(Lm0/f0;Ljava/lang/Object;JJLm0/e0;Lm0/d0;)LO0/y;

    .line 190
    .line 191
    .line 192
    move-result-object v1

    .line 193
    return-object v1
.end method

.method public final q(Ljava/lang/Object;)J
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, LB0/i0;->q:Ljava/util/List;

    .line 3
    .line 4
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-ge v0, v1, :cond_1

    .line 9
    .line 10
    iget-object v1, p0, LB0/i0;->q:Ljava/util/List;

    .line 11
    .line 12
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    check-cast v1, LB0/f0;

    .line 17
    .line 18
    iget-object v2, v1, LB0/f0;->b:Ljava/lang/Object;

    .line 19
    .line 20
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_0

    .line 25
    .line 26
    iget-object p1, v1, LB0/f0;->g:LB0/g0;

    .line 27
    .line 28
    iget-object p1, p1, LB0/g0;->a:LO0/y;

    .line 29
    .line 30
    iget-wide v0, p1, LO0/y;->d:J

    .line 31
    .line 32
    return-wide v0

    .line 33
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const-wide/16 v0, -0x1

    .line 37
    .line 38
    return-wide v0
.end method

.method public final r(Lm0/f0;)I
    .locals 7

    .line 1
    iget-object v0, p0, LB0/i0;->i:LB0/f0;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    return p1

    .line 7
    :cond_0
    iget-object v1, v0, LB0/f0;->b:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-virtual {p1, v1}, Lm0/f0;->b(Ljava/lang/Object;)I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    move v2, v1

    .line 14
    :goto_0
    iget v5, p0, LB0/i0;->g:I

    .line 15
    .line 16
    iget-boolean v6, p0, LB0/i0;->h:Z

    .line 17
    .line 18
    iget-object v3, p0, LB0/i0;->a:Lm0/d0;

    .line 19
    .line 20
    iget-object v4, p0, LB0/i0;->b:Lm0/e0;

    .line 21
    .line 22
    move-object v1, p1

    .line 23
    invoke-virtual/range {v1 .. v6}, Lm0/f0;->d(ILm0/d0;Lm0/e0;IZ)I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    iget-object v1, v0, LB0/f0;->m:LB0/f0;

    .line 31
    .line 32
    if-eqz v1, :cond_1

    .line 33
    .line 34
    iget-object v3, v0, LB0/f0;->g:LB0/g0;

    .line 35
    .line 36
    iget-boolean v3, v3, LB0/g0;->h:Z

    .line 37
    .line 38
    if-nez v3, :cond_1

    .line 39
    .line 40
    move-object v0, v1

    .line 41
    goto :goto_1

    .line 42
    :cond_1
    const/4 v3, -0x1

    .line 43
    if-eq v2, v3, :cond_4

    .line 44
    .line 45
    if-nez v1, :cond_2

    .line 46
    .line 47
    goto :goto_2

    .line 48
    :cond_2
    iget-object v3, v1, LB0/f0;->b:Ljava/lang/Object;

    .line 49
    .line 50
    invoke-virtual {p1, v3}, Lm0/f0;->b(Ljava/lang/Object;)I

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    if-eq v3, v2, :cond_3

    .line 55
    .line 56
    goto :goto_2

    .line 57
    :cond_3
    move-object v0, v1

    .line 58
    goto :goto_0

    .line 59
    :cond_4
    :goto_2
    invoke-virtual {p0, v0}, LB0/i0;->n(LB0/f0;)I

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    iget-object v2, v0, LB0/f0;->g:LB0/g0;

    .line 64
    .line 65
    invoke-virtual {p0, p1, v2}, LB0/i0;->h(Lm0/f0;LB0/g0;)LB0/g0;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    iput-object p1, v0, LB0/f0;->g:LB0/g0;

    .line 70
    .line 71
    return v1
.end method

.method public final s(Lm0/f0;JJJ)I
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, LB0/i0;->i:LB0/f0;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    :goto_0
    const/4 v4, 0x0

    .line 9
    if-eqz v2, :cond_d

    .line 10
    .line 11
    iget-object v5, v2, LB0/f0;->g:LB0/g0;

    .line 12
    .line 13
    if-nez v3, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0, v1, v5}, LB0/i0;->h(Lm0/f0;LB0/g0;)LB0/g0;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    move-wide/from16 v6, p2

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_0
    move-wide/from16 v6, p2

    .line 23
    .line 24
    invoke-virtual {v0, v1, v3, v6, v7}, LB0/i0;->d(Lm0/f0;LB0/f0;J)LB0/g0;

    .line 25
    .line 26
    .line 27
    move-result-object v8

    .line 28
    if-eqz v8, :cond_c

    .line 29
    .line 30
    iget-wide v9, v5, LB0/g0;->b:J

    .line 31
    .line 32
    iget-wide v11, v8, LB0/g0;->b:J

    .line 33
    .line 34
    cmp-long v13, v9, v11

    .line 35
    .line 36
    if-nez v13, :cond_c

    .line 37
    .line 38
    iget-object v9, v5, LB0/g0;->a:LO0/y;

    .line 39
    .line 40
    iget-object v10, v8, LB0/g0;->a:LO0/y;

    .line 41
    .line 42
    invoke-virtual {v9, v10}, LO0/y;->equals(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v9

    .line 46
    if-eqz v9, :cond_c

    .line 47
    .line 48
    move-object v3, v8

    .line 49
    :goto_1
    iget-wide v8, v5, LB0/g0;->c:J

    .line 50
    .line 51
    invoke-virtual {v3, v8, v9}, LB0/g0;->a(J)LB0/g0;

    .line 52
    .line 53
    .line 54
    move-result-object v8

    .line 55
    iput-object v8, v2, LB0/f0;->g:LB0/g0;

    .line 56
    .line 57
    iget-wide v8, v3, LB0/g0;->e:J

    .line 58
    .line 59
    iget-wide v10, v5, LB0/g0;->e:J

    .line 60
    .line 61
    cmp-long v12, v10, v8

    .line 62
    .line 63
    if-eqz v12, :cond_b

    .line 64
    .line 65
    invoke-virtual {v2}, LB0/f0;->k()V

    .line 66
    .line 67
    .line 68
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    cmp-long v1, v8, v6

    .line 74
    .line 75
    if-nez v1, :cond_1

    .line 76
    .line 77
    const-wide v8, 0x7fffffffffffffffL

    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    goto :goto_2

    .line 83
    :cond_1
    iget-wide v12, v2, LB0/f0;->p:J

    .line 84
    .line 85
    add-long/2addr v8, v12

    .line 86
    :goto_2
    iget-object v1, v0, LB0/i0;->j:LB0/f0;

    .line 87
    .line 88
    const/4 v12, 0x1

    .line 89
    const-wide/high16 v13, -0x8000000000000000L

    .line 90
    .line 91
    if-ne v2, v1, :cond_3

    .line 92
    .line 93
    iget-object v1, v2, LB0/f0;->g:LB0/g0;

    .line 94
    .line 95
    iget-boolean v1, v1, LB0/g0;->g:Z

    .line 96
    .line 97
    if-nez v1, :cond_3

    .line 98
    .line 99
    cmp-long v1, p4, v13

    .line 100
    .line 101
    if-eqz v1, :cond_2

    .line 102
    .line 103
    cmp-long v1, p4, v8

    .line 104
    .line 105
    if-ltz v1, :cond_3

    .line 106
    .line 107
    :cond_2
    const/4 v1, 0x1

    .line 108
    goto :goto_3

    .line 109
    :cond_3
    const/4 v1, 0x0

    .line 110
    :goto_3
    iget-object v15, v0, LB0/i0;->k:LB0/f0;

    .line 111
    .line 112
    if-ne v2, v15, :cond_5

    .line 113
    .line 114
    cmp-long v15, p6, v13

    .line 115
    .line 116
    if-eqz v15, :cond_4

    .line 117
    .line 118
    cmp-long v15, p6, v8

    .line 119
    .line 120
    if-ltz v15, :cond_5

    .line 121
    .line 122
    :cond_4
    const/4 v8, 0x1

    .line 123
    goto :goto_4

    .line 124
    :cond_5
    const/4 v8, 0x0

    .line 125
    :goto_4
    invoke-virtual {v0, v2}, LB0/i0;->n(LB0/f0;)I

    .line 126
    .line 127
    .line 128
    move-result v2

    .line 129
    if-eqz v2, :cond_6

    .line 130
    .line 131
    return v2

    .line 132
    :cond_6
    cmp-long v2, v10, v6

    .line 133
    .line 134
    if-nez v2, :cond_7

    .line 135
    .line 136
    iget-wide v9, v5, LB0/g0;->d:J

    .line 137
    .line 138
    cmp-long v5, v9, v13

    .line 139
    .line 140
    if-nez v5, :cond_7

    .line 141
    .line 142
    iget-wide v9, v3, LB0/g0;->d:J

    .line 143
    .line 144
    cmp-long v3, v9, v6

    .line 145
    .line 146
    if-eqz v3, :cond_7

    .line 147
    .line 148
    cmp-long v3, v9, v13

    .line 149
    .line 150
    if-eqz v3, :cond_7

    .line 151
    .line 152
    const/4 v3, 0x1

    .line 153
    goto :goto_5

    .line 154
    :cond_7
    const/4 v3, 0x0

    .line 155
    :goto_5
    if-eqz v1, :cond_9

    .line 156
    .line 157
    if-nez v2, :cond_8

    .line 158
    .line 159
    if-eqz v3, :cond_9

    .line 160
    .line 161
    :cond_8
    const/4 v4, 0x1

    .line 162
    :cond_9
    if-eqz v8, :cond_a

    .line 163
    .line 164
    or-int/lit8 v4, v4, 0x2

    .line 165
    .line 166
    :cond_a
    return v4

    .line 167
    :cond_b
    iget-object v3, v2, LB0/f0;->m:LB0/f0;

    .line 168
    .line 169
    move-object/from16 v16, v3

    .line 170
    .line 171
    move-object v3, v2

    .line 172
    move-object/from16 v2, v16

    .line 173
    .line 174
    goto/16 :goto_0

    .line 175
    .line 176
    :cond_c
    invoke-virtual {v0, v3}, LB0/i0;->n(LB0/f0;)I

    .line 177
    .line 178
    .line 179
    move-result v1

    .line 180
    return v1

    .line 181
    :cond_d
    return v4
.end method
