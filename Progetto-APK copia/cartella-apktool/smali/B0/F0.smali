.class public final LB0/F0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:LB0/h;

.field public final b:I

.field public final c:LB0/h;

.field public d:I

.field public e:Z

.field public f:Z


# direct methods
.method public constructor <init>(LB0/h;LB0/h;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LB0/F0;->a:LB0/h;

    .line 5
    .line 6
    iput p3, p0, LB0/F0;->b:I

    .line 7
    .line 8
    iput-object p2, p0, LB0/F0;->c:LB0/h;

    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    iput p1, p0, LB0/F0;->d:I

    .line 12
    .line 13
    iput-boolean p1, p0, LB0/F0;->e:Z

    .line 14
    .line 15
    iput-boolean p1, p0, LB0/F0;->f:Z

    .line 16
    .line 17
    return-void
.end method

.method public static c(LR0/t;)[Lm0/t;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_0

    .line 3
    .line 4
    move-object v1, p0

    .line 5
    check-cast v1, LR0/c;

    .line 6
    .line 7
    iget-object v1, v1, LR0/c;->c:[I

    .line 8
    .line 9
    array-length v1, v1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v1, 0x0

    .line 12
    :goto_0
    new-array v2, v1, [Lm0/t;

    .line 13
    .line 14
    :goto_1
    if-ge v0, v1, :cond_1

    .line 15
    .line 16
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    move-object v3, p0

    .line 20
    check-cast v3, LR0/c;

    .line 21
    .line 22
    iget-object v3, v3, LR0/c;->d:[Lm0/t;

    .line 23
    .line 24
    aget-object v3, v3, v0

    .line 25
    .line 26
    aput-object v3, v2, v0

    .line 27
    .line 28
    add-int/lit8 v0, v0, 0x1

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_1
    return-object v2
.end method

.method public static h(LB0/h;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, LB0/h;->getState()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    :goto_0
    return p0
.end method

.method public static l(LB0/h;J)V
    .locals 1

    .line 1
    invoke-virtual {p0}, LB0/h;->setCurrentStreamFinal()V

    .line 2
    .line 3
    .line 4
    instance-of v0, p0, LQ0/g;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    check-cast p0, LQ0/g;

    .line 9
    .line 10
    invoke-virtual {p0}, LB0/h;->isCurrentStreamFinal()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/H1;->i(Z)V

    .line 15
    .line 16
    .line 17
    iput-wide p1, p0, LQ0/g;->Y:J

    .line 18
    .line 19
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(LB0/h;LB0/o;)V
    .locals 2

    .line 1
    iget-object v0, p0, LB0/F0;->a:LB0/h;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, p1, :cond_1

    .line 5
    .line 6
    iget-object v0, p0, LB0/F0;->c:LB0/h;

    .line 7
    .line 8
    if-ne v0, p1, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    goto :goto_1

    .line 13
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 14
    :goto_1
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/H1;->i(Z)V

    .line 15
    .line 16
    .line 17
    invoke-static {p1}, LB0/F0;->h(LB0/h;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_2

    .line 22
    .line 23
    return-void

    .line 24
    :cond_2
    iget-object v0, p2, LB0/o;->I:LB0/h;

    .line 25
    .line 26
    if-ne p1, v0, :cond_3

    .line 27
    .line 28
    const/4 v0, 0x0

    .line 29
    iput-object v0, p2, LB0/o;->J:LB0/e0;

    .line 30
    .line 31
    iput-object v0, p2, LB0/o;->I:LB0/h;

    .line 32
    .line 33
    iput-boolean v1, p2, LB0/o;->K:Z

    .line 34
    .line 35
    :cond_3
    invoke-virtual {p1}, LB0/h;->getState()I

    .line 36
    .line 37
    .line 38
    move-result p2

    .line 39
    const/4 v0, 0x2

    .line 40
    if-ne p2, v0, :cond_4

    .line 41
    .line 42
    invoke-virtual {p1}, LB0/h;->stop()V

    .line 43
    .line 44
    .line 45
    :cond_4
    invoke-virtual {p1}, LB0/h;->disable()V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public final b()I
    .locals 2

    .line 1
    iget-object v0, p0, LB0/F0;->a:LB0/h;

    .line 2
    .line 3
    invoke-static {v0}, LB0/F0;->h(LB0/h;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, LB0/F0;->c:LB0/h;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-static {v1}, LB0/F0;->h(LB0/h;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v1, 0x0

    .line 20
    :goto_0
    add-int/2addr v0, v1

    .line 21
    return v0
.end method

.method public final d(LB0/f0;)LB0/h;
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_2

    .line 3
    .line 4
    iget-object p1, p1, LB0/f0;->c:[LO0/U;

    .line 5
    .line 6
    iget v1, p0, LB0/F0;->b:I

    .line 7
    .line 8
    aget-object v2, p1, v1

    .line 9
    .line 10
    if-nez v2, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object v2, p0, LB0/F0;->a:LB0/h;

    .line 14
    .line 15
    invoke-virtual {v2}, LB0/h;->getStream()LO0/U;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    aget-object v4, p1, v1

    .line 20
    .line 21
    if-ne v3, v4, :cond_1

    .line 22
    .line 23
    return-object v2

    .line 24
    :cond_1
    iget-object v2, p0, LB0/F0;->c:LB0/h;

    .line 25
    .line 26
    if-eqz v2, :cond_2

    .line 27
    .line 28
    invoke-virtual {v2}, LB0/h;->getStream()LO0/U;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    aget-object p1, p1, v1

    .line 33
    .line 34
    if-ne v3, p1, :cond_2

    .line 35
    .line 36
    return-object v2

    .line 37
    :cond_2
    :goto_0
    return-object v0
.end method

.method public final e(LB0/h;LB0/f0;)Z
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    iget-object v1, p2, LB0/f0;->c:[LO0/U;

    .line 6
    .line 7
    iget v2, p0, LB0/F0;->b:I

    .line 8
    .line 9
    aget-object v1, v1, v2

    .line 10
    .line 11
    invoke-virtual {p1}, LB0/h;->getStream()LO0/U;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    if-eqz v3, :cond_3

    .line 16
    .line 17
    invoke-virtual {p1}, LB0/h;->getStream()LO0/U;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    if-ne v3, v1, :cond_1

    .line 22
    .line 23
    if-eqz v1, :cond_3

    .line 24
    .line 25
    invoke-virtual {p1}, LB0/h;->hasReadStreamToEnd()Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-nez v1, :cond_3

    .line 30
    .line 31
    iget-object v1, p2, LB0/f0;->m:LB0/f0;

    .line 32
    .line 33
    iget-object v3, p2, LB0/f0;->g:LB0/g0;

    .line 34
    .line 35
    iget-boolean v3, v3, LB0/g0;->g:Z

    .line 36
    .line 37
    if-eqz v3, :cond_1

    .line 38
    .line 39
    if-eqz v1, :cond_1

    .line 40
    .line 41
    iget-boolean v3, v1, LB0/f0;->e:Z

    .line 42
    .line 43
    if-eqz v3, :cond_1

    .line 44
    .line 45
    instance-of v3, p1, LQ0/g;

    .line 46
    .line 47
    if-nez v3, :cond_3

    .line 48
    .line 49
    instance-of v3, p1, LL0/b;

    .line 50
    .line 51
    if-nez v3, :cond_3

    .line 52
    .line 53
    invoke-virtual {p1}, LB0/h;->getReadingPositionUs()J

    .line 54
    .line 55
    .line 56
    move-result-wide v3

    .line 57
    invoke-virtual {v1}, LB0/f0;->e()J

    .line 58
    .line 59
    .line 60
    move-result-wide v5

    .line 61
    cmp-long v1, v3, v5

    .line 62
    .line 63
    if-ltz v1, :cond_1

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_1
    iget-object p2, p2, LB0/f0;->m:LB0/f0;

    .line 67
    .line 68
    if-eqz p2, :cond_2

    .line 69
    .line 70
    iget-object p2, p2, LB0/f0;->c:[LO0/U;

    .line 71
    .line 72
    aget-object p2, p2, v2

    .line 73
    .line 74
    invoke-virtual {p1}, LB0/h;->getStream()LO0/U;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    if-ne p2, p1, :cond_2

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_2
    const/4 v0, 0x0

    .line 82
    :cond_3
    :goto_0
    return v0
.end method

.method public final f()Z
    .locals 2

    .line 1
    iget v0, p0, LB0/F0;->d:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-eq v0, v1, :cond_2

    .line 5
    .line 6
    const/4 v1, 0x4

    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v1, 0x3

    .line 11
    if-ne v0, v1, :cond_1

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_1
    const/4 v0, 0x0

    .line 15
    goto :goto_1

    .line 16
    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 17
    :goto_1
    return v0
.end method

.method public final g()Z
    .locals 2

    .line 1
    iget v0, p0, LB0/F0;->d:I

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    const/4 v1, 0x2

    .line 6
    if-eq v0, v1, :cond_2

    .line 7
    .line 8
    const/4 v1, 0x4

    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, LB0/F0;->c:LB0/h;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, LB0/h;->getState()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    const/4 v0, 0x1

    .line 24
    goto :goto_1

    .line 25
    :cond_1
    const/4 v0, 0x0

    .line 26
    goto :goto_1

    .line 27
    :cond_2
    :goto_0
    iget-object v0, p0, LB0/F0;->a:LB0/h;

    .line 28
    .line 29
    invoke-static {v0}, LB0/F0;->h(LB0/h;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    :goto_1
    return v0
.end method

.method public final i(Z)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    iget-boolean p1, p0, LB0/F0;->e:Z

    .line 5
    .line 6
    if-eqz p1, :cond_1

    .line 7
    .line 8
    iget-object p1, p0, LB0/F0;->a:LB0/h;

    .line 9
    .line 10
    invoke-virtual {p1}, LB0/h;->reset()V

    .line 11
    .line 12
    .line 13
    iput-boolean v0, p0, LB0/F0;->e:Z

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-boolean p1, p0, LB0/F0;->f:Z

    .line 17
    .line 18
    if-eqz p1, :cond_1

    .line 19
    .line 20
    iget-object p1, p0, LB0/F0;->c:LB0/h;

    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, LB0/h;->reset()V

    .line 26
    .line 27
    .line 28
    iput-boolean v0, p0, LB0/F0;->f:Z

    .line 29
    .line 30
    :cond_1
    :goto_0
    return-void
.end method

.method public final j(LB0/h;LB0/f0;LR0/y;LB0/o;)I
    .locals 12

    .line 1
    move-object v0, p0

    .line 2
    move-object v1, p1

    .line 3
    move-object v2, p2

    .line 4
    move-object v3, p3

    .line 5
    const/4 v4, 0x1

    .line 6
    if-eqz v1, :cond_9

    .line 7
    .line 8
    invoke-virtual {p1}, LB0/h;->getState()I

    .line 9
    .line 10
    .line 11
    move-result v5

    .line 12
    if-eqz v5, :cond_9

    .line 13
    .line 14
    iget-object v5, v0, LB0/F0;->a:LB0/h;

    .line 15
    .line 16
    if-ne v1, v5, :cond_0

    .line 17
    .line 18
    iget v6, v0, LB0/F0;->d:I

    .line 19
    .line 20
    const/4 v7, 0x2

    .line 21
    if-eq v6, v7, :cond_9

    .line 22
    .line 23
    const/4 v7, 0x4

    .line 24
    if-ne v6, v7, :cond_0

    .line 25
    .line 26
    goto/16 :goto_1

    .line 27
    .line 28
    :cond_0
    iget-object v6, v0, LB0/F0;->c:LB0/h;

    .line 29
    .line 30
    const/4 v9, 0x3

    .line 31
    if-ne v1, v6, :cond_1

    .line 32
    .line 33
    iget v6, v0, LB0/F0;->d:I

    .line 34
    .line 35
    if-ne v6, v9, :cond_1

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_1
    invoke-virtual {p1}, LB0/h;->getStream()LO0/U;

    .line 39
    .line 40
    .line 41
    move-result-object v6

    .line 42
    iget-object v7, v2, LB0/f0;->c:[LO0/U;

    .line 43
    .line 44
    iget v8, v0, LB0/F0;->b:I

    .line 45
    .line 46
    aget-object v10, v7, v8

    .line 47
    .line 48
    const/4 v11, 0x0

    .line 49
    if-eq v6, v10, :cond_2

    .line 50
    .line 51
    const/4 v6, 0x1

    .line 52
    goto :goto_0

    .line 53
    :cond_2
    const/4 v6, 0x0

    .line 54
    :goto_0
    invoke-virtual {p3, v8}, LR0/y;->b(I)Z

    .line 55
    .line 56
    .line 57
    move-result v10

    .line 58
    if-eqz v10, :cond_3

    .line 59
    .line 60
    if-nez v6, :cond_3

    .line 61
    .line 62
    return v4

    .line 63
    :cond_3
    invoke-virtual {p1}, LB0/h;->isCurrentStreamFinal()Z

    .line 64
    .line 65
    .line 66
    move-result v6

    .line 67
    if-nez v6, :cond_4

    .line 68
    .line 69
    iget-object v3, v3, LR0/y;->c:[LR0/t;

    .line 70
    .line 71
    aget-object v3, v3, v8

    .line 72
    .line 73
    invoke-static {v3}, LB0/F0;->c(LR0/t;)[Lm0/t;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    aget-object v4, v7, v8

    .line 78
    .line 79
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 80
    .line 81
    .line 82
    invoke-virtual {p2}, LB0/f0;->e()J

    .line 83
    .line 84
    .line 85
    move-result-wide v5

    .line 86
    iget-wide v7, v2, LB0/f0;->p:J

    .line 87
    .line 88
    iget-object v2, v2, LB0/f0;->g:LB0/g0;

    .line 89
    .line 90
    iget-object v10, v2, LB0/g0;->a:LO0/y;

    .line 91
    .line 92
    move-object v1, p1

    .line 93
    move-object v2, v3

    .line 94
    move-object v3, v4

    .line 95
    move-wide v4, v5

    .line 96
    move-wide v6, v7

    .line 97
    move-object v8, v10

    .line 98
    invoke-virtual/range {v1 .. v8}, LB0/h;->replaceStream([Lm0/t;LO0/U;JJLO0/y;)V

    .line 99
    .line 100
    .line 101
    return v9

    .line 102
    :cond_4
    invoke-virtual {p1}, LB0/h;->isEnded()Z

    .line 103
    .line 104
    .line 105
    move-result v2

    .line 106
    if-eqz v2, :cond_8

    .line 107
    .line 108
    move-object/from16 v2, p4

    .line 109
    .line 110
    invoke-virtual {p0, p1, v2}, LB0/F0;->a(LB0/h;LB0/o;)V

    .line 111
    .line 112
    .line 113
    if-eqz v10, :cond_5

    .line 114
    .line 115
    invoke-virtual {p0}, LB0/F0;->f()Z

    .line 116
    .line 117
    .line 118
    move-result v2

    .line 119
    if-eqz v2, :cond_7

    .line 120
    .line 121
    :cond_5
    if-ne v1, v5, :cond_6

    .line 122
    .line 123
    const/4 v11, 0x1

    .line 124
    :cond_6
    invoke-virtual {p0, v11}, LB0/F0;->i(Z)V

    .line 125
    .line 126
    .line 127
    :cond_7
    return v4

    .line 128
    :cond_8
    return v11

    .line 129
    :cond_9
    :goto_1
    return v4
.end method

.method public final k()V
    .locals 1

    .line 1
    iget-object v0, p0, LB0/F0;->a:LB0/h;

    .line 2
    .line 3
    invoke-static {v0}, LB0/F0;->h(LB0/h;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    invoke-virtual {p0, v0}, LB0/F0;->i(Z)V

    .line 11
    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, LB0/F0;->c:LB0/h;

    .line 14
    .line 15
    if-eqz v0, :cond_2

    .line 16
    .line 17
    invoke-virtual {v0}, LB0/h;->getState()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    const/4 v0, 0x0

    .line 25
    invoke-virtual {p0, v0}, LB0/F0;->i(Z)V

    .line 26
    .line 27
    .line 28
    :cond_2
    :goto_0
    return-void
.end method

.method public final m()V
    .locals 4

    .line 1
    iget-object v0, p0, LB0/F0;->a:LB0/h;

    .line 2
    .line 3
    invoke-virtual {v0}, LB0/h;->getState()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x1

    .line 8
    if-ne v1, v2, :cond_0

    .line 9
    .line 10
    iget v1, p0, LB0/F0;->d:I

    .line 11
    .line 12
    const/4 v3, 0x4

    .line 13
    if-eq v1, v3, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0}, LB0/h;->start()V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-object v0, p0, LB0/F0;->c:LB0/h;

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    invoke-virtual {v0}, LB0/h;->getState()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-ne v1, v2, :cond_1

    .line 28
    .line 29
    iget v1, p0, LB0/F0;->d:I

    .line 30
    .line 31
    const/4 v2, 0x3

    .line 32
    if-eq v1, v2, :cond_1

    .line 33
    .line 34
    invoke-virtual {v0}, LB0/h;->start()V

    .line 35
    .line 36
    .line 37
    :cond_1
    :goto_0
    return-void
.end method
