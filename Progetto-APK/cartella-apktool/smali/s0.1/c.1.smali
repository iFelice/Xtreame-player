.class public abstract Ls0/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls0/i;


# instance fields
.field public final a:Z

.field public final b:Ljava/util/ArrayList;

.field public c:I

.field public d:Ls0/m;


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Ls0/c;->a:Z

    .line 5
    .line 6
    new-instance p1, Ljava/util/ArrayList;

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 10
    .line 11
    .line 12
    iput-object p1, p0, Ls0/c;->b:Ljava/util/ArrayList;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public k()Ljava/util/Map;
    .locals 1

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final p(Ls0/O;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Ls0/c;->b:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    iget p1, p0, Ls0/c;->c:I

    .line 16
    .line 17
    add-int/lit8 p1, p1, 0x1

    .line 18
    .line 19
    iput p1, p0, Ls0/c;->c:I

    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public final s(I)V
    .locals 7

    .line 1
    iget-object v0, p0, Ls0/c;->d:Ls0/m;

    .line 2
    .line 3
    sget-object v1, Lp0/M;->a:Ljava/lang/String;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    :goto_0
    iget v2, p0, Ls0/c;->c:I

    .line 7
    .line 8
    if-ge v1, v2, :cond_2

    .line 9
    .line 10
    iget-object v2, p0, Ls0/c;->b:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    check-cast v2, Ls0/O;

    .line 17
    .line 18
    iget-boolean v3, p0, Ls0/c;->a:Z

    .line 19
    .line 20
    check-cast v2, LS0/f;

    .line 21
    .line 22
    monitor-enter v2

    .line 23
    :try_start_0
    sget-object v4, LS0/f;->p:Lz4/d0;

    .line 24
    .line 25
    if-eqz v3, :cond_1

    .line 26
    .line 27
    iget v3, v0, Ls0/m;->i:I

    .line 28
    .line 29
    const/16 v4, 0x8

    .line 30
    .line 31
    and-int/2addr v3, v4

    .line 32
    if-ne v3, v4, :cond_0

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_0
    iget-wide v3, v2, LS0/f;->i:J

    .line 36
    .line 37
    int-to-long v5, p1

    .line 38
    add-long/2addr v3, v5

    .line 39
    iput-wide v3, v2, LS0/f;->i:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    .line 41
    monitor-exit v2

    .line 42
    goto :goto_2

    .line 43
    :catchall_0
    move-exception p1

    .line 44
    goto :goto_3

    .line 45
    :cond_1
    :goto_1
    monitor-exit v2

    .line 46
    :goto_2
    add-int/lit8 v1, v1, 0x1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :goto_3
    monitor-exit v2

    .line 50
    throw p1

    .line 51
    :cond_2
    return-void
.end method

.method public final t()V
    .locals 14

    .line 1
    iget-object v0, p0, Ls0/c;->d:Ls0/m;

    .line 2
    .line 3
    sget-object v1, Lp0/M;->a:Ljava/lang/String;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x0

    .line 7
    :goto_0
    iget v3, p0, Ls0/c;->c:I

    .line 8
    .line 9
    if-ge v2, v3, :cond_6

    .line 10
    .line 11
    iget-object v3, p0, Ls0/c;->b:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    check-cast v3, Ls0/O;

    .line 18
    .line 19
    iget-boolean v4, p0, Ls0/c;->a:Z

    .line 20
    .line 21
    check-cast v3, LS0/f;

    .line 22
    .line 23
    monitor-enter v3

    .line 24
    :try_start_0
    sget-object v5, LS0/f;->p:Lz4/d0;

    .line 25
    .line 26
    if-eqz v4, :cond_5

    .line 27
    .line 28
    iget v4, v0, Ls0/m;->i:I

    .line 29
    .line 30
    const/16 v5, 0x8

    .line 31
    .line 32
    and-int/2addr v4, v5

    .line 33
    if-ne v4, v5, :cond_0

    .line 34
    .line 35
    goto :goto_3

    .line 36
    :cond_0
    iget v4, v3, LS0/f;->g:I

    .line 37
    .line 38
    const/4 v11, 0x1

    .line 39
    if-lez v4, :cond_1

    .line 40
    .line 41
    const/4 v4, 0x1

    .line 42
    goto :goto_1

    .line 43
    :cond_1
    const/4 v4, 0x0

    .line 44
    :goto_1
    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/H1;->i(Z)V

    .line 45
    .line 46
    .line 47
    iget-object v4, v3, LS0/f;->d:Lp0/f;

    .line 48
    .line 49
    check-cast v4, Lp0/G;

    .line 50
    .line 51
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    .line 53
    .line 54
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 55
    .line 56
    .line 57
    move-result-wide v12

    .line 58
    iget-wide v4, v3, LS0/f;->h:J

    .line 59
    .line 60
    sub-long v4, v12, v4

    .line 61
    .line 62
    long-to-int v6, v4

    .line 63
    iget-wide v4, v3, LS0/f;->j:J

    .line 64
    .line 65
    int-to-long v7, v6

    .line 66
    add-long/2addr v4, v7

    .line 67
    iput-wide v4, v3, LS0/f;->j:J

    .line 68
    .line 69
    iget-wide v4, v3, LS0/f;->k:J

    .line 70
    .line 71
    iget-wide v7, v3, LS0/f;->i:J

    .line 72
    .line 73
    add-long/2addr v4, v7

    .line 74
    iput-wide v4, v3, LS0/f;->k:J

    .line 75
    .line 76
    if-lez v6, :cond_4

    .line 77
    .line 78
    long-to-float v4, v7

    .line 79
    const/high16 v5, 0x45fa0000    # 8000.0f

    .line 80
    .line 81
    mul-float v4, v4, v5

    .line 82
    .line 83
    int-to-float v5, v6

    .line 84
    div-float/2addr v4, v5

    .line 85
    iget-object v5, v3, LS0/f;->f:LS0/r;

    .line 86
    .line 87
    long-to-double v7, v7

    .line 88
    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    .line 89
    .line 90
    .line 91
    move-result-wide v7

    .line 92
    double-to-int v7, v7

    .line 93
    invoke-virtual {v5, v7, v4}, LS0/r;->a(IF)V

    .line 94
    .line 95
    .line 96
    iget-wide v4, v3, LS0/f;->j:J

    .line 97
    .line 98
    const-wide/16 v7, 0x7d0

    .line 99
    .line 100
    cmp-long v9, v4, v7

    .line 101
    .line 102
    if-gez v9, :cond_2

    .line 103
    .line 104
    iget-wide v4, v3, LS0/f;->k:J

    .line 105
    .line 106
    const-wide/32 v7, 0x80000

    .line 107
    .line 108
    .line 109
    cmp-long v9, v4, v7

    .line 110
    .line 111
    if-ltz v9, :cond_3

    .line 112
    .line 113
    goto :goto_2

    .line 114
    :catchall_0
    move-exception v0

    .line 115
    goto :goto_5

    .line 116
    :cond_2
    :goto_2
    iget-object v4, v3, LS0/f;->f:LS0/r;

    .line 117
    .line 118
    invoke-virtual {v4}, LS0/r;->b()F

    .line 119
    .line 120
    .line 121
    move-result v4

    .line 122
    float-to-long v4, v4

    .line 123
    iput-wide v4, v3, LS0/f;->l:J

    .line 124
    .line 125
    :cond_3
    iget-wide v7, v3, LS0/f;->i:J

    .line 126
    .line 127
    iget-wide v9, v3, LS0/f;->l:J

    .line 128
    .line 129
    move-object v5, v3

    .line 130
    invoke-virtual/range {v5 .. v10}, LS0/f;->b(IJJ)V

    .line 131
    .line 132
    .line 133
    iput-wide v12, v3, LS0/f;->h:J

    .line 134
    .line 135
    const-wide/16 v4, 0x0

    .line 136
    .line 137
    iput-wide v4, v3, LS0/f;->i:J

    .line 138
    .line 139
    :cond_4
    iget v4, v3, LS0/f;->g:I

    .line 140
    .line 141
    sub-int/2addr v4, v11

    .line 142
    iput v4, v3, LS0/f;->g:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    .line 144
    monitor-exit v3

    .line 145
    goto :goto_4

    .line 146
    :cond_5
    :goto_3
    monitor-exit v3

    .line 147
    :goto_4
    add-int/lit8 v2, v2, 0x1

    .line 148
    .line 149
    goto/16 :goto_0

    .line 150
    .line 151
    :goto_5
    monitor-exit v3

    .line 152
    throw v0

    .line 153
    :cond_6
    const/4 v0, 0x0

    .line 154
    iput-object v0, p0, Ls0/c;->d:Ls0/m;

    .line 155
    .line 156
    return-void
.end method

.method public final u()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget v1, p0, Ls0/c;->c:I

    .line 3
    .line 4
    if-ge v0, v1, :cond_0

    .line 5
    .line 6
    iget-object v1, p0, Ls0/c;->b:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    check-cast v1, Ls0/O;

    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    add-int/lit8 v0, v0, 0x1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    return-void
.end method

.method public final v(Ls0/m;)V
    .locals 4

    .line 1
    iput-object p1, p0, Ls0/c;->d:Ls0/m;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    :goto_0
    iget v1, p0, Ls0/c;->c:I

    .line 5
    .line 6
    if-ge v0, v1, :cond_3

    .line 7
    .line 8
    iget-object v1, p0, Ls0/c;->b:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    check-cast v1, Ls0/O;

    .line 15
    .line 16
    iget-boolean v2, p0, Ls0/c;->a:Z

    .line 17
    .line 18
    check-cast v1, LS0/f;

    .line 19
    .line 20
    monitor-enter v1

    .line 21
    :try_start_0
    sget-object v3, LS0/f;->p:Lz4/d0;

    .line 22
    .line 23
    if-eqz v2, :cond_2

    .line 24
    .line 25
    iget v2, p1, Ls0/m;->i:I

    .line 26
    .line 27
    const/16 v3, 0x8

    .line 28
    .line 29
    and-int/2addr v2, v3

    .line 30
    if-ne v2, v3, :cond_0

    .line 31
    .line 32
    goto :goto_2

    .line 33
    :cond_0
    iget v2, v1, LS0/f;->g:I

    .line 34
    .line 35
    if-nez v2, :cond_1

    .line 36
    .line 37
    iget-object v2, v1, LS0/f;->d:Lp0/f;

    .line 38
    .line 39
    check-cast v2, Lp0/G;

    .line 40
    .line 41
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 45
    .line 46
    .line 47
    move-result-wide v2

    .line 48
    iput-wide v2, v1, LS0/f;->h:J

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :catchall_0
    move-exception p1

    .line 52
    goto :goto_4

    .line 53
    :cond_1
    :goto_1
    iget v2, v1, LS0/f;->g:I

    .line 54
    .line 55
    add-int/lit8 v2, v2, 0x1

    .line 56
    .line 57
    iput v2, v1, LS0/f;->g:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    .line 59
    monitor-exit v1

    .line 60
    goto :goto_3

    .line 61
    :cond_2
    :goto_2
    monitor-exit v1

    .line 62
    :goto_3
    add-int/lit8 v0, v0, 0x1

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :goto_4
    monitor-exit v1

    .line 66
    throw p1

    .line 67
    :cond_3
    return-void
.end method
