.class public final LC0/C;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final h:LB0/y;

.field public static final i:Ljava/util/Random;


# instance fields
.field public final a:Lm0/e0;

.field public final b:Lm0/d0;

.field public final c:Ljava/util/HashMap;

.field public d:LC0/G;

.field public e:Lm0/f0;

.field public f:Ljava/lang/String;

.field public g:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, LB0/y;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, LB0/y;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, LC0/C;->h:LB0/y;

    .line 8
    .line 9
    new-instance v0, Ljava/util/Random;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 12
    .line 13
    .line 14
    sput-object v0, LC0/C;->i:Ljava/util/Random;

    .line 15
    .line 16
    return-void
.end method

.method public constructor <init>()V
    .locals 2

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
    iput-object v0, p0, LC0/C;->a:Lm0/e0;

    .line 10
    .line 11
    new-instance v0, Lm0/d0;

    .line 12
    .line 13
    invoke-direct {v0}, Lm0/d0;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, LC0/C;->b:Lm0/d0;

    .line 17
    .line 18
    new-instance v0, Ljava/util/HashMap;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, LC0/C;->c:Ljava/util/HashMap;

    .line 24
    .line 25
    sget-object v0, Lm0/f0;->a:Lm0/c0;

    .line 26
    .line 27
    iput-object v0, p0, LC0/C;->e:Lm0/f0;

    .line 28
    .line 29
    const-wide/16 v0, -0x1

    .line 30
    .line 31
    iput-wide v0, p0, LC0/C;->g:J

    .line 32
    .line 33
    return-void
.end method


# virtual methods
.method public final a(LC0/B;)V
    .locals 4

    .line 1
    iget-wide v0, p1, LC0/B;->c:J

    .line 2
    .line 3
    const-wide/16 v2, -0x1

    .line 4
    .line 5
    cmp-long p1, v0, v2

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iput-wide v0, p0, LC0/C;->g:J

    .line 10
    .line 11
    :cond_0
    const/4 p1, 0x0

    .line 12
    iput-object p1, p0, LC0/C;->f:Ljava/lang/String;

    .line 13
    .line 14
    return-void
.end method

.method public final declared-synchronized b(LC0/b;)V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, LC0/C;->f:Ljava/lang/String;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v1, p0, LC0/C;->c:Ljava/util/HashMap;

    .line 7
    .line 8
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, LC0/B;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v0}, LC0/C;->a(LC0/B;)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception p1

    .line 22
    goto :goto_2

    .line 23
    :cond_0
    :goto_0
    iget-object v0, p0, LC0/C;->c:Ljava/util/HashMap;

    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_2

    .line 38
    .line 39
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    check-cast v1, LC0/B;

    .line 44
    .line 45
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 46
    .line 47
    .line 48
    iget-boolean v2, v1, LC0/B;->e:Z

    .line 49
    .line 50
    if-eqz v2, :cond_1

    .line 51
    .line 52
    iget-object v2, p0, LC0/C;->d:LC0/G;

    .line 53
    .line 54
    if-eqz v2, :cond_1

    .line 55
    .line 56
    iget-object v1, v1, LC0/B;->a:Ljava/lang/String;

    .line 57
    .line 58
    check-cast v2, LC0/F;

    .line 59
    .line 60
    invoke-virtual {v2, p1, v1}, LC0/F;->e(LC0/b;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_2
    monitor-exit p0

    .line 65
    return-void

    .line 66
    :goto_2
    monitor-exit p0

    .line 67
    throw p1
.end method

.method public final c(ILO0/y;)LC0/B;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    iget-object v3, v0, LC0/C;->c:Ljava/util/HashMap;

    .line 8
    .line 9
    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 10
    .line 11
    .line 12
    move-result-object v4

    .line 13
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object v4

    .line 17
    const/4 v5, 0x0

    .line 18
    const-wide v6, 0x7fffffffffffffffL

    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v8

    .line 27
    if-eqz v8, :cond_7

    .line 28
    .line 29
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v8

    .line 33
    check-cast v8, LC0/B;

    .line 34
    .line 35
    iget-wide v9, v8, LC0/B;->c:J

    .line 36
    .line 37
    const-wide/16 v11, -0x1

    .line 38
    .line 39
    cmp-long v13, v9, v11

    .line 40
    .line 41
    if-nez v13, :cond_2

    .line 42
    .line 43
    iget v9, v8, LC0/B;->b:I

    .line 44
    .line 45
    if-ne v1, v9, :cond_2

    .line 46
    .line 47
    if-eqz v2, :cond_2

    .line 48
    .line 49
    iget-object v9, v8, LC0/B;->g:LC0/C;

    .line 50
    .line 51
    iget-object v10, v9, LC0/C;->c:Ljava/util/HashMap;

    .line 52
    .line 53
    iget-object v13, v9, LC0/C;->f:Ljava/lang/String;

    .line 54
    .line 55
    invoke-virtual {v10, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v10

    .line 59
    check-cast v10, LC0/B;

    .line 60
    .line 61
    if-eqz v10, :cond_1

    .line 62
    .line 63
    iget-wide v13, v10, LC0/B;->c:J

    .line 64
    .line 65
    cmp-long v10, v13, v11

    .line 66
    .line 67
    if-eqz v10, :cond_1

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_1
    iget-wide v9, v9, LC0/C;->g:J

    .line 71
    .line 72
    const-wide/16 v13, 0x1

    .line 73
    .line 74
    add-long/2addr v13, v9

    .line 75
    :goto_1
    iget-wide v9, v2, LO0/y;->d:J

    .line 76
    .line 77
    cmp-long v15, v9, v13

    .line 78
    .line 79
    if-ltz v15, :cond_2

    .line 80
    .line 81
    iput-wide v9, v8, LC0/B;->c:J

    .line 82
    .line 83
    :cond_2
    iget-object v9, v8, LC0/B;->d:LO0/y;

    .line 84
    .line 85
    if-nez v2, :cond_3

    .line 86
    .line 87
    iget v10, v8, LC0/B;->b:I

    .line 88
    .line 89
    if-ne v1, v10, :cond_0

    .line 90
    .line 91
    goto :goto_2

    .line 92
    :cond_3
    iget-wide v13, v2, LO0/y;->d:J

    .line 93
    .line 94
    if-nez v9, :cond_4

    .line 95
    .line 96
    invoke-virtual/range {p2 .. p2}, LO0/y;->b()Z

    .line 97
    .line 98
    .line 99
    move-result v10

    .line 100
    if-nez v10, :cond_0

    .line 101
    .line 102
    iget-wide v11, v8, LC0/B;->c:J

    .line 103
    .line 104
    cmp-long v10, v13, v11

    .line 105
    .line 106
    if-nez v10, :cond_0

    .line 107
    .line 108
    goto :goto_2

    .line 109
    :cond_4
    iget-wide v10, v9, LO0/y;->d:J

    .line 110
    .line 111
    cmp-long v12, v13, v10

    .line 112
    .line 113
    if-nez v12, :cond_0

    .line 114
    .line 115
    iget v10, v2, LO0/y;->b:I

    .line 116
    .line 117
    iget v11, v9, LO0/y;->b:I

    .line 118
    .line 119
    if-ne v10, v11, :cond_0

    .line 120
    .line 121
    iget v10, v2, LO0/y;->c:I

    .line 122
    .line 123
    iget v11, v9, LO0/y;->c:I

    .line 124
    .line 125
    if-ne v10, v11, :cond_0

    .line 126
    .line 127
    :goto_2
    iget-wide v10, v8, LC0/B;->c:J

    .line 128
    .line 129
    const-wide/16 v12, -0x1

    .line 130
    .line 131
    cmp-long v14, v10, v12

    .line 132
    .line 133
    if-eqz v14, :cond_6

    .line 134
    .line 135
    cmp-long v12, v10, v6

    .line 136
    .line 137
    if-gez v12, :cond_5

    .line 138
    .line 139
    goto :goto_3

    .line 140
    :cond_5
    if-nez v12, :cond_0

    .line 141
    .line 142
    sget-object v10, Lp0/M;->a:Ljava/lang/String;

    .line 143
    .line 144
    iget-object v10, v5, LC0/B;->d:LO0/y;

    .line 145
    .line 146
    if-eqz v10, :cond_0

    .line 147
    .line 148
    if-eqz v9, :cond_0

    .line 149
    .line 150
    move-object v5, v8

    .line 151
    goto/16 :goto_0

    .line 152
    .line 153
    :cond_6
    :goto_3
    move-object v5, v8

    .line 154
    move-wide v6, v10

    .line 155
    goto/16 :goto_0

    .line 156
    .line 157
    :cond_7
    if-nez v5, :cond_8

    .line 158
    .line 159
    sget-object v4, LC0/C;->h:LB0/y;

    .line 160
    .line 161
    invoke-virtual {v4}, LB0/y;->get()Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object v4

    .line 165
    check-cast v4, Ljava/lang/String;

    .line 166
    .line 167
    new-instance v5, LC0/B;

    .line 168
    .line 169
    invoke-direct {v5, v0, v4, v1, v2}, LC0/B;-><init>(LC0/C;Ljava/lang/String;ILO0/y;)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    :cond_8
    return-object v5
.end method

.method public final declared-synchronized d(Lm0/f0;LO0/y;)Ljava/lang/String;
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p2, LO0/y;->a:Ljava/lang/Object;

    .line 3
    .line 4
    iget-object v1, p0, LC0/C;->b:Lm0/d0;

    .line 5
    .line 6
    invoke-virtual {p1, v0, v1}, Lm0/f0;->h(Ljava/lang/Object;Lm0/d0;)Lm0/d0;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iget p1, p1, Lm0/d0;->c:I

    .line 11
    .line 12
    invoke-virtual {p0, p1, p2}, LC0/C;->c(ILO0/y;)LC0/B;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iget-object p1, p1, LC0/B;->a:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    monitor-exit p0

    .line 19
    return-object p1

    .line 20
    :catchall_0
    move-exception p1

    .line 21
    monitor-exit p0

    .line 22
    throw p1
.end method

.method public final e(LC0/b;)V
    .locals 7

    .line 1
    iget-object v0, p1, LC0/b;->b:Lm0/f0;

    .line 2
    .line 3
    invoke-virtual {v0}, Lm0/f0;->q()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, LC0/C;->c:Ljava/util/HashMap;

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget-object p1, p0, LC0/C;->f:Ljava/lang/String;

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    check-cast p1, LC0/B;

    .line 20
    .line 21
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, p1}, LC0/C;->a(LC0/B;)V

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void

    .line 28
    :cond_1
    iget-object v0, p0, LC0/C;->f:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    check-cast v0, LC0/B;

    .line 35
    .line 36
    iget v1, p1, LC0/b;->c:I

    .line 37
    .line 38
    iget-object v2, p1, LC0/b;->d:LO0/y;

    .line 39
    .line 40
    invoke-virtual {p0, v1, v2}, LC0/C;->c(ILO0/y;)LC0/B;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    iget-object v3, v3, LC0/B;->a:Ljava/lang/String;

    .line 45
    .line 46
    iput-object v3, p0, LC0/C;->f:Ljava/lang/String;

    .line 47
    .line 48
    invoke-virtual {p0, p1}, LC0/C;->f(LC0/b;)V

    .line 49
    .line 50
    .line 51
    if-eqz v2, :cond_3

    .line 52
    .line 53
    invoke-virtual {v2}, LO0/y;->b()Z

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    if-eqz p1, :cond_3

    .line 58
    .line 59
    iget-wide v3, v2, LO0/y;->d:J

    .line 60
    .line 61
    if-eqz v0, :cond_2

    .line 62
    .line 63
    iget-wide v5, v0, LC0/B;->c:J

    .line 64
    .line 65
    cmp-long p1, v5, v3

    .line 66
    .line 67
    if-nez p1, :cond_2

    .line 68
    .line 69
    iget-object p1, v0, LC0/B;->d:LO0/y;

    .line 70
    .line 71
    if-eqz p1, :cond_2

    .line 72
    .line 73
    iget v0, p1, LO0/y;->b:I

    .line 74
    .line 75
    iget v5, v2, LO0/y;->b:I

    .line 76
    .line 77
    if-ne v0, v5, :cond_2

    .line 78
    .line 79
    iget p1, p1, LO0/y;->c:I

    .line 80
    .line 81
    iget v0, v2, LO0/y;->c:I

    .line 82
    .line 83
    if-eq p1, v0, :cond_3

    .line 84
    .line 85
    :cond_2
    new-instance p1, LO0/y;

    .line 86
    .line 87
    iget-object v0, v2, LO0/y;->a:Ljava/lang/Object;

    .line 88
    .line 89
    invoke-direct {p1, v0, v3, v4}, LO0/y;-><init>(Ljava/lang/Object;J)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0, v1, p1}, LC0/C;->c(ILO0/y;)LC0/B;

    .line 93
    .line 94
    .line 95
    iget-object p1, p0, LC0/C;->d:LC0/G;

    .line 96
    .line 97
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 98
    .line 99
    .line 100
    :cond_3
    return-void
.end method

.method public final declared-synchronized f(LC0/b;)V
    .locals 9

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, LC0/C;->d:LC0/G;

    .line 3
    .line 4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    iget-object v0, p1, LC0/b;->b:Lm0/f0;

    .line 8
    .line 9
    invoke-virtual {v0}, Lm0/f0;->q()Z

    .line 10
    .line 11
    .line 12
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    monitor-exit p0

    .line 16
    return-void

    .line 17
    :cond_0
    :try_start_1
    iget-object v0, p1, LC0/b;->d:LO0/y;

    .line 18
    .line 19
    if-eqz v0, :cond_3

    .line 20
    .line 21
    iget-wide v0, v0, LO0/y;->d:J

    .line 22
    .line 23
    iget-object v2, p0, LC0/C;->c:Ljava/util/HashMap;

    .line 24
    .line 25
    iget-object v3, p0, LC0/C;->f:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    check-cast v2, LC0/B;

    .line 32
    .line 33
    const-wide/16 v3, -0x1

    .line 34
    .line 35
    if-eqz v2, :cond_1

    .line 36
    .line 37
    iget-wide v5, v2, LC0/B;->c:J

    .line 38
    .line 39
    cmp-long v2, v5, v3

    .line 40
    .line 41
    if-eqz v2, :cond_1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    iget-wide v5, p0, LC0/C;->g:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 45
    .line 46
    const-wide/16 v7, 0x1

    .line 47
    .line 48
    add-long/2addr v5, v7

    .line 49
    :goto_0
    cmp-long v2, v0, v5

    .line 50
    .line 51
    if-gez v2, :cond_2

    .line 52
    .line 53
    monitor-exit p0

    .line 54
    return-void

    .line 55
    :cond_2
    :try_start_2
    iget-object v0, p0, LC0/C;->c:Ljava/util/HashMap;

    .line 56
    .line 57
    iget-object v1, p0, LC0/C;->f:Ljava/lang/String;

    .line 58
    .line 59
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    check-cast v0, LC0/B;

    .line 64
    .line 65
    if-eqz v0, :cond_3

    .line 66
    .line 67
    iget-wide v1, v0, LC0/B;->c:J

    .line 68
    .line 69
    cmp-long v5, v1, v3

    .line 70
    .line 71
    if-nez v5, :cond_3

    .line 72
    .line 73
    iget v0, v0, LC0/B;->b:I

    .line 74
    .line 75
    iget v1, p1, LC0/b;->c:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 76
    .line 77
    if-eq v0, v1, :cond_3

    .line 78
    .line 79
    monitor-exit p0

    .line 80
    return-void

    .line 81
    :catchall_0
    move-exception p1

    .line 82
    goto/16 :goto_2

    .line 83
    .line 84
    :cond_3
    :try_start_3
    iget v0, p1, LC0/b;->c:I

    .line 85
    .line 86
    iget-object v1, p1, LC0/b;->d:LO0/y;

    .line 87
    .line 88
    invoke-virtual {p0, v0, v1}, LC0/C;->c(ILO0/y;)LC0/B;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    iget-object v1, p0, LC0/C;->f:Ljava/lang/String;

    .line 93
    .line 94
    if-nez v1, :cond_4

    .line 95
    .line 96
    iget-object v1, v0, LC0/B;->a:Ljava/lang/String;

    .line 97
    .line 98
    iput-object v1, p0, LC0/C;->f:Ljava/lang/String;

    .line 99
    .line 100
    :cond_4
    iget-object v1, p1, LC0/b;->d:LO0/y;

    .line 101
    .line 102
    const/4 v2, 0x1

    .line 103
    if-eqz v1, :cond_5

    .line 104
    .line 105
    invoke-virtual {v1}, LO0/y;->b()Z

    .line 106
    .line 107
    .line 108
    move-result v1

    .line 109
    if-eqz v1, :cond_5

    .line 110
    .line 111
    new-instance v1, LO0/y;

    .line 112
    .line 113
    iget-object v3, p1, LC0/b;->d:LO0/y;

    .line 114
    .line 115
    iget-object v4, v3, LO0/y;->a:Ljava/lang/Object;

    .line 116
    .line 117
    iget-wide v5, v3, LO0/y;->d:J

    .line 118
    .line 119
    iget v3, v3, LO0/y;->b:I

    .line 120
    .line 121
    invoke-direct {v1, v4, v3, v5, v6}, LO0/y;-><init>(Ljava/lang/Object;IJ)V

    .line 122
    .line 123
    .line 124
    iget v3, p1, LC0/b;->c:I

    .line 125
    .line 126
    invoke-virtual {p0, v3, v1}, LC0/C;->c(ILO0/y;)LC0/B;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    iget-boolean v3, v1, LC0/B;->e:Z

    .line 131
    .line 132
    if-nez v3, :cond_5

    .line 133
    .line 134
    iput-boolean v2, v1, LC0/B;->e:Z

    .line 135
    .line 136
    iget-object v1, p1, LC0/b;->b:Lm0/f0;

    .line 137
    .line 138
    iget-object v3, p1, LC0/b;->d:LO0/y;

    .line 139
    .line 140
    iget-object v3, v3, LO0/y;->a:Ljava/lang/Object;

    .line 141
    .line 142
    iget-object v4, p0, LC0/C;->b:Lm0/d0;

    .line 143
    .line 144
    invoke-virtual {v1, v3, v4}, Lm0/f0;->h(Ljava/lang/Object;Lm0/d0;)Lm0/d0;

    .line 145
    .line 146
    .line 147
    iget-object v1, p0, LC0/C;->b:Lm0/d0;

    .line 148
    .line 149
    iget-object v3, p1, LC0/b;->d:LO0/y;

    .line 150
    .line 151
    iget v3, v3, LO0/y;->b:I

    .line 152
    .line 153
    invoke-virtual {v1, v3}, Lm0/d0;->d(I)J

    .line 154
    .line 155
    .line 156
    move-result-wide v3

    .line 157
    invoke-static {v3, v4}, Lp0/M;->e0(J)J

    .line 158
    .line 159
    .line 160
    move-result-wide v3

    .line 161
    iget-object v1, p0, LC0/C;->b:Lm0/d0;

    .line 162
    .line 163
    iget-wide v5, v1, Lm0/d0;->e:J

    .line 164
    .line 165
    invoke-static {v5, v6}, Lp0/M;->e0(J)J

    .line 166
    .line 167
    .line 168
    move-result-wide v5

    .line 169
    add-long/2addr v3, v5

    .line 170
    const-wide/16 v5, 0x0

    .line 171
    .line 172
    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->max(JJ)J

    .line 173
    .line 174
    .line 175
    iget-object v1, p0, LC0/C;->d:LC0/G;

    .line 176
    .line 177
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 178
    .line 179
    .line 180
    :cond_5
    iget-boolean v1, v0, LC0/B;->e:Z

    .line 181
    .line 182
    if-nez v1, :cond_6

    .line 183
    .line 184
    iput-boolean v2, v0, LC0/B;->e:Z

    .line 185
    .line 186
    iget-object v1, p0, LC0/C;->d:LC0/G;

    .line 187
    .line 188
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 189
    .line 190
    .line 191
    :cond_6
    iget-object v1, v0, LC0/B;->a:Ljava/lang/String;

    .line 192
    .line 193
    iget-object v3, p0, LC0/C;->f:Ljava/lang/String;

    .line 194
    .line 195
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 196
    .line 197
    .line 198
    move-result v1

    .line 199
    if-eqz v1, :cond_8

    .line 200
    .line 201
    iget-boolean v1, v0, LC0/B;->f:Z

    .line 202
    .line 203
    if-nez v1, :cond_8

    .line 204
    .line 205
    iput-boolean v2, v0, LC0/B;->f:Z

    .line 206
    .line 207
    iget-object v1, p0, LC0/C;->d:LC0/G;

    .line 208
    .line 209
    iget-object v0, v0, LC0/B;->a:Ljava/lang/String;

    .line 210
    .line 211
    check-cast v1, LC0/F;

    .line 212
    .line 213
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 214
    .line 215
    .line 216
    iget-object v2, p1, LC0/b;->d:LO0/y;

    .line 217
    .line 218
    if-eqz v2, :cond_7

    .line 219
    .line 220
    invoke-virtual {v2}, LO0/y;->b()Z

    .line 221
    .line 222
    .line 223
    move-result v2

    .line 224
    if-eqz v2, :cond_7

    .line 225
    .line 226
    goto :goto_1

    .line 227
    :cond_7
    invoke-virtual {v1}, LC0/F;->b()V

    .line 228
    .line 229
    .line 230
    iput-object v0, v1, LC0/F;->j:Ljava/lang/String;

    .line 231
    .line 232
    invoke-static {}, LC0/E;->i()Landroid/media/metrics/PlaybackMetrics$Builder;

    .line 233
    .line 234
    .line 235
    move-result-object v0

    .line 236
    invoke-static {v0}, LC0/D;->c(Landroid/media/metrics/PlaybackMetrics$Builder;)Landroid/media/metrics/PlaybackMetrics$Builder;

    .line 237
    .line 238
    .line 239
    move-result-object v0

    .line 240
    invoke-static {v0}, LC0/D;->q(Landroid/media/metrics/PlaybackMetrics$Builder;)Landroid/media/metrics/PlaybackMetrics$Builder;

    .line 241
    .line 242
    .line 243
    move-result-object v0

    .line 244
    iput-object v0, v1, LC0/F;->k:Landroid/media/metrics/PlaybackMetrics$Builder;

    .line 245
    .line 246
    iget-object v0, p1, LC0/b;->b:Lm0/f0;

    .line 247
    .line 248
    iget-object p1, p1, LC0/b;->d:LO0/y;

    .line 249
    .line 250
    invoke-virtual {v1, v0, p1}, LC0/F;->c(Lm0/f0;LO0/y;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 251
    .line 252
    .line 253
    :cond_8
    :goto_1
    monitor-exit p0

    .line 254
    return-void

    .line 255
    :goto_2
    monitor-exit p0

    .line 256
    throw p1
.end method

.method public final declared-synchronized g(LC0/b;I)V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, LC0/C;->d:LC0/G;

    .line 3
    .line 4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    if-nez p2, :cond_0

    .line 8
    .line 9
    const/4 p2, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p2, 0x0

    .line 12
    :goto_0
    iget-object v0, p0, LC0/C;->c:Ljava/util/HashMap;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_4

    .line 27
    .line 28
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    check-cast v1, LC0/B;

    .line 33
    .line 34
    invoke-virtual {v1, p1}, LC0/B;->a(LC0/b;)Z

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-eqz v2, :cond_1

    .line 39
    .line 40
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 41
    .line 42
    .line 43
    iget-boolean v2, v1, LC0/B;->e:Z

    .line 44
    .line 45
    if-eqz v2, :cond_1

    .line 46
    .line 47
    iget-object v2, v1, LC0/B;->a:Ljava/lang/String;

    .line 48
    .line 49
    iget-object v3, p0, LC0/C;->f:Ljava/lang/String;

    .line 50
    .line 51
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    if-eqz p2, :cond_2

    .line 56
    .line 57
    if-eqz v2, :cond_2

    .line 58
    .line 59
    iget-boolean v3, v1, LC0/B;->f:Z

    .line 60
    .line 61
    :cond_2
    if-eqz v2, :cond_3

    .line 62
    .line 63
    invoke-virtual {p0, v1}, LC0/C;->a(LC0/B;)V

    .line 64
    .line 65
    .line 66
    goto :goto_2

    .line 67
    :catchall_0
    move-exception p1

    .line 68
    goto :goto_3

    .line 69
    :cond_3
    :goto_2
    iget-object v2, p0, LC0/C;->d:LC0/G;

    .line 70
    .line 71
    iget-object v1, v1, LC0/B;->a:Ljava/lang/String;

    .line 72
    .line 73
    check-cast v2, LC0/F;

    .line 74
    .line 75
    invoke-virtual {v2, p1, v1}, LC0/F;->e(LC0/b;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_4
    invoke-virtual {p0, p1}, LC0/C;->e(LC0/b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    .line 81
    .line 82
    monitor-exit p0

    .line 83
    return-void

    .line 84
    :goto_3
    monitor-exit p0

    .line 85
    throw p1
.end method
