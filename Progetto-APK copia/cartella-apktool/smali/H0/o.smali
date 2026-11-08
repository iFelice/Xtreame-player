.class public final LH0/o;
.super LO0/a;
.source "SourceFile"

# interfaces
.implements LI0/v;


# instance fields
.field public final h:LH0/k;

.field public final i:LH0/c;

.field public final j:LU4/b;

.field public final k:LG0/r;

.field public final l:LU4/b;

.field public final m:Z

.field public final n:I

.field public final o:Z

.field public final p:LI0/w;

.field public final q:J

.field public final r:J

.field public s:Lm0/D;

.field public t:Ls0/O;

.field public u:Lm0/I;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "media3.exoplayer.hls"

    .line 2
    .line 3
    invoke-static {v0}, Lm0/J;->a(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public constructor <init>(Lm0/I;LH0/c;LH0/k;LU4/b;LG0/r;LU4/b;LI0/c;JZI)V
    .locals 0

    .line 1
    invoke-direct {p0}, LO0/a;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LH0/o;->u:Lm0/I;

    .line 5
    .line 6
    iget-object p1, p1, Lm0/I;->c:Lm0/D;

    .line 7
    .line 8
    iput-object p1, p0, LH0/o;->s:Lm0/D;

    .line 9
    .line 10
    iput-object p2, p0, LH0/o;->i:LH0/c;

    .line 11
    .line 12
    iput-object p3, p0, LH0/o;->h:LH0/k;

    .line 13
    .line 14
    iput-object p4, p0, LH0/o;->j:LU4/b;

    .line 15
    .line 16
    iput-object p5, p0, LH0/o;->k:LG0/r;

    .line 17
    .line 18
    iput-object p6, p0, LH0/o;->l:LU4/b;

    .line 19
    .line 20
    iput-object p7, p0, LH0/o;->p:LI0/w;

    .line 21
    .line 22
    iput-wide p8, p0, LH0/o;->q:J

    .line 23
    .line 24
    iput-boolean p10, p0, LH0/o;->m:Z

    .line 25
    .line 26
    iput p11, p0, LH0/o;->n:I

    .line 27
    .line 28
    const/4 p1, 0x0

    .line 29
    iput-boolean p1, p0, LH0/o;->o:Z

    .line 30
    .line 31
    const-wide/16 p1, 0x0

    .line 32
    .line 33
    iput-wide p1, p0, LH0/o;->r:J

    .line 34
    .line 35
    return-void
.end method

.method public static t(JLz4/H;)LI0/g;
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    if-ge v1, v2, :cond_2

    .line 8
    .line 9
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    check-cast v2, LI0/g;

    .line 14
    .line 15
    iget-wide v3, v2, LI0/j;->K:J

    .line 16
    .line 17
    cmp-long v5, v3, p0

    .line 18
    .line 19
    if-gtz v5, :cond_0

    .line 20
    .line 21
    iget-boolean v3, v2, LI0/g;->R:Z

    .line 22
    .line 23
    if-eqz v3, :cond_0

    .line 24
    .line 25
    move-object v0, v2

    .line 26
    goto :goto_1

    .line 27
    :cond_0
    if-lez v5, :cond_1

    .line 28
    .line 29
    goto :goto_2

    .line 30
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_2
    :goto_2
    return-object v0
.end method


# virtual methods
.method public final b(LO0/y;LS0/d;J)LO0/w;
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p1}, LO0/a;->a(LO0/y;)LO0/D;

    .line 4
    .line 5
    .line 6
    move-result-object v9

    .line 7
    new-instance v7, LG0/o;

    .line 8
    .line 9
    iget-object v1, v0, LO0/a;->d:LG0/o;

    .line 10
    .line 11
    iget-object v1, v1, LG0/o;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    move-object/from16 v3, p1

    .line 15
    .line 16
    invoke-direct {v7, v1, v2, v3}, LG0/o;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILO0/y;)V

    .line 17
    .line 18
    .line 19
    new-instance v18, LH0/n;

    .line 20
    .line 21
    iget-object v5, v0, LH0/o;->t:Ls0/O;

    .line 22
    .line 23
    iget-object v15, v0, LO0/a;->g:LC0/I;

    .line 24
    .line 25
    invoke-static {v15}, Lcom/google/android/gms/internal/measurement/H1;->j(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    iget v13, v0, LH0/o;->n:I

    .line 29
    .line 30
    iget-boolean v14, v0, LH0/o;->o:Z

    .line 31
    .line 32
    iget-object v2, v0, LH0/o;->h:LH0/k;

    .line 33
    .line 34
    iget-object v3, v0, LH0/o;->p:LI0/w;

    .line 35
    .line 36
    iget-object v4, v0, LH0/o;->i:LH0/c;

    .line 37
    .line 38
    iget-object v6, v0, LH0/o;->k:LG0/r;

    .line 39
    .line 40
    iget-object v8, v0, LH0/o;->l:LU4/b;

    .line 41
    .line 42
    iget-object v11, v0, LH0/o;->j:LU4/b;

    .line 43
    .line 44
    iget-boolean v12, v0, LH0/o;->m:Z

    .line 45
    .line 46
    move-object/from16 p1, v2

    .line 47
    .line 48
    iget-wide v1, v0, LH0/o;->r:J

    .line 49
    .line 50
    move-wide/from16 v16, v1

    .line 51
    .line 52
    move-object/from16 v1, v18

    .line 53
    .line 54
    move-object/from16 v10, p2

    .line 55
    .line 56
    move-object/from16 v2, p1

    .line 57
    .line 58
    invoke-direct/range {v1 .. v17}, LH0/n;-><init>(LH0/k;LI0/w;LH0/c;Ls0/O;LG0/r;LG0/o;LU4/b;LO0/D;LS0/d;LU4/b;ZIZLC0/I;J)V

    .line 59
    .line 60
    .line 61
    return-object v18
.end method

.method public final declared-synchronized h()Lm0/I;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, LH0/o;->u:Lm0/I;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return-object v0

    .line 6
    :catchall_0
    move-exception v0

    .line 7
    monitor-exit p0

    .line 8
    throw v0
.end method

.method public final j()V
    .locals 2

    .line 1
    iget-object v0, p0, LH0/o;->p:LI0/w;

    .line 2
    .line 3
    check-cast v0, LI0/c;

    .line 4
    .line 5
    iget-object v1, v0, LI0/c;->M:LS0/m;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v1}, LS0/m;->b()V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-object v1, v0, LI0/c;->Q:Landroid/net/Uri;

    .line 13
    .line 14
    if-eqz v1, :cond_2

    .line 15
    .line 16
    iget-object v0, v0, LI0/c;->J:Ljava/util/HashMap;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, LI0/b;

    .line 23
    .line 24
    iget-object v1, v0, LI0/b;->H:LS0/m;

    .line 25
    .line 26
    invoke-virtual {v1}, LS0/m;->b()V

    .line 27
    .line 28
    .line 29
    iget-object v0, v0, LI0/b;->P:Ljava/io/IOException;

    .line 30
    .line 31
    if-nez v0, :cond_1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    throw v0

    .line 35
    :cond_2
    :goto_0
    return-void
.end method

.method public final l(Ls0/O;)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iput-object v1, v0, LH0/o;->t:Ls0/O;

    .line 6
    .line 7
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    iget-object v2, v0, LO0/a;->g:LC0/I;

    .line 15
    .line 16
    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/H1;->j(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    iget-object v3, v0, LH0/o;->k:LG0/r;

    .line 20
    .line 21
    invoke-interface {v3, v1, v2}, LG0/r;->f(Landroid/os/Looper;LC0/I;)V

    .line 22
    .line 23
    .line 24
    invoke-interface {v3}, LG0/r;->prepare()V

    .line 25
    .line 26
    .line 27
    const/4 v1, 0x0

    .line 28
    invoke-virtual {v0, v1}, LO0/a;->a(LO0/y;)LO0/D;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-virtual/range {p0 .. p0}, LH0/o;->h()Lm0/I;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    iget-object v3, v3, Lm0/I;->b:Lm0/E;

    .line 37
    .line 38
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    iget-object v4, v0, LH0/o;->p:LI0/w;

    .line 42
    .line 43
    check-cast v4, LI0/c;

    .line 44
    .line 45
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    invoke-static {v1}, Lp0/M;->n(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    iput-object v1, v4, LI0/c;->N:Landroid/os/Handler;

    .line 53
    .line 54
    iput-object v2, v4, LI0/c;->L:LO0/D;

    .line 55
    .line 56
    iput-object v0, v4, LI0/c;->O:LI0/v;

    .line 57
    .line 58
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 59
    .line 60
    .line 61
    move-result-object v11

    .line 62
    iget-object v6, v3, Lm0/E;->a:Landroid/net/Uri;

    .line 63
    .line 64
    const-string v1, "The uri must be set."

    .line 65
    .line 66
    invoke-static {v6, v1}, Lcom/google/android/gms/internal/measurement/H1;->k(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    new-instance v1, Ls0/m;

    .line 70
    .line 71
    const-wide/16 v14, -0x1

    .line 72
    .line 73
    const/16 v16, 0x0

    .line 74
    .line 75
    const-wide/16 v7, 0x0

    .line 76
    .line 77
    const/4 v9, 0x1

    .line 78
    const/4 v10, 0x0

    .line 79
    const-wide/16 v12, 0x0

    .line 80
    .line 81
    const/16 v17, 0x1

    .line 82
    .line 83
    const/16 v18, 0x0

    .line 84
    .line 85
    move-object v5, v1

    .line 86
    invoke-direct/range {v5 .. v18}, Ls0/m;-><init>(Landroid/net/Uri;JI[BLjava/util/Map;JJLjava/lang/String;ILjava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    new-instance v2, LS0/p;

    .line 90
    .line 91
    iget-object v3, v4, LI0/c;->G:LH0/c;

    .line 92
    .line 93
    iget-object v3, v3, LH0/c;->a:Ls0/h;

    .line 94
    .line 95
    invoke-interface {v3}, Ls0/h;->a()Ls0/i;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    iget-object v5, v4, LI0/c;->H:LI0/s;

    .line 100
    .line 101
    invoke-interface {v5}, LI0/s;->H()LS0/o;

    .line 102
    .line 103
    .line 104
    move-result-object v5

    .line 105
    const/4 v6, 0x4

    .line 106
    invoke-direct {v2, v3, v1, v6, v5}, LS0/p;-><init>(Ls0/i;Ls0/m;ILS0/o;)V

    .line 107
    .line 108
    .line 109
    iget-object v1, v4, LI0/c;->M:LS0/m;

    .line 110
    .line 111
    if-nez v1, :cond_0

    .line 112
    .line 113
    const/4 v1, 0x1

    .line 114
    goto :goto_0

    .line 115
    :cond_0
    const/4 v1, 0x0

    .line 116
    :goto_0
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/H1;->i(Z)V

    .line 117
    .line 118
    .line 119
    new-instance v1, LS0/m;

    .line 120
    .line 121
    const-string v3, "DefaultHlsPlaylistTracker:MultivariantPlaylist"

    .line 122
    .line 123
    invoke-direct {v1, v3}, LS0/m;-><init>(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    iput-object v1, v4, LI0/c;->M:LS0/m;

    .line 127
    .line 128
    iget-object v3, v4, LI0/c;->I:LU4/b;

    .line 129
    .line 130
    iget v5, v2, LS0/p;->I:I

    .line 131
    .line 132
    invoke-virtual {v3, v5}, LU4/b;->Y(I)I

    .line 133
    .line 134
    .line 135
    move-result v3

    .line 136
    invoke-virtual {v1, v2, v4, v3}, LS0/m;->g(LS0/j;LS0/h;I)V

    .line 137
    .line 138
    .line 139
    return-void
.end method

.method public final n(LO0/w;)V
    .locals 12

    .line 1
    check-cast p1, LH0/n;

    .line 2
    .line 3
    iget-object v0, p1, LH0/n;->H:LI0/w;

    .line 4
    .line 5
    check-cast v0, LI0/c;

    .line 6
    .line 7
    iget-object v0, v0, LI0/c;->K:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    iget-object v0, p1, LH0/n;->b0:[LH0/t;

    .line 13
    .line 14
    array-length v1, v0

    .line 15
    const/4 v2, 0x0

    .line 16
    const/4 v3, 0x0

    .line 17
    :goto_0
    const/4 v4, 0x0

    .line 18
    if-ge v3, v1, :cond_3

    .line 19
    .line 20
    aget-object v5, v0, v3

    .line 21
    .line 22
    iget-boolean v6, v5, LH0/t;->j0:Z

    .line 23
    .line 24
    if-eqz v6, :cond_1

    .line 25
    .line 26
    iget-object v6, v5, LH0/t;->b0:[LH0/s;

    .line 27
    .line 28
    array-length v7, v6

    .line 29
    const/4 v8, 0x0

    .line 30
    :goto_1
    if-ge v8, v7, :cond_1

    .line 31
    .line 32
    aget-object v9, v6, v8

    .line 33
    .line 34
    invoke-virtual {v9}, LO0/T;->k()V

    .line 35
    .line 36
    .line 37
    iget-object v10, v9, LO0/T;->h:LG0/l;

    .line 38
    .line 39
    if-eqz v10, :cond_0

    .line 40
    .line 41
    iget-object v11, v9, LO0/T;->e:LG0/o;

    .line 42
    .line 43
    invoke-interface {v10, v11}, LG0/l;->c(LG0/o;)V

    .line 44
    .line 45
    .line 46
    iput-object v4, v9, LO0/T;->h:LG0/l;

    .line 47
    .line 48
    iput-object v4, v9, LO0/T;->g:Lm0/t;

    .line 49
    .line 50
    :cond_0
    add-int/lit8 v8, v8, 0x1

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_1
    iget-object v6, v5, LH0/t;->J:LH0/j;

    .line 54
    .line 55
    iget-object v7, v6, LH0/j;->s:LR0/t;

    .line 56
    .line 57
    check-cast v7, LR0/c;

    .line 58
    .line 59
    iget-object v8, v7, LR0/c;->c:[I

    .line 60
    .line 61
    invoke-interface {v7}, LR0/t;->b()I

    .line 62
    .line 63
    .line 64
    move-result v7

    .line 65
    aget v7, v8, v7

    .line 66
    .line 67
    iget-object v8, v6, LH0/j;->e:[Landroid/net/Uri;

    .line 68
    .line 69
    aget-object v7, v8, v7

    .line 70
    .line 71
    iget-object v8, v6, LH0/j;->g:LI0/w;

    .line 72
    .line 73
    check-cast v8, LI0/c;

    .line 74
    .line 75
    iget-object v8, v8, LI0/c;->J:Ljava/util/HashMap;

    .line 76
    .line 77
    invoke-virtual {v8, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v7

    .line 81
    check-cast v7, LI0/b;

    .line 82
    .line 83
    if-eqz v7, :cond_2

    .line 84
    .line 85
    iput-boolean v2, v7, LI0/b;->Q:Z

    .line 86
    .line 87
    :cond_2
    iput-object v4, v6, LH0/j;->o:LO0/b;

    .line 88
    .line 89
    iget-object v6, v5, LH0/t;->P:LS0/m;

    .line 90
    .line 91
    invoke-virtual {v6, v5}, LS0/m;->f(LS0/k;)V

    .line 92
    .line 93
    .line 94
    iget-object v6, v5, LH0/t;->X:Landroid/os/Handler;

    .line 95
    .line 96
    invoke-virtual {v6, v4}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    const/4 v4, 0x1

    .line 100
    iput-boolean v4, v5, LH0/t;->n0:Z

    .line 101
    .line 102
    iget-object v4, v5, LH0/t;->Y:Ljava/util/ArrayList;

    .line 103
    .line 104
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 105
    .line 106
    .line 107
    add-int/lit8 v3, v3, 0x1

    .line 108
    .line 109
    goto :goto_0

    .line 110
    :cond_3
    iput-object v4, p1, LH0/n;->Y:LO0/v;

    .line 111
    .line 112
    return-void
.end method

.method public final p()V
    .locals 5

    .line 1
    iget-object v0, p0, LH0/o;->p:LI0/w;

    .line 2
    .line 3
    check-cast v0, LI0/c;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    iput-object v1, v0, LI0/c;->Q:Landroid/net/Uri;

    .line 7
    .line 8
    iput-object v1, v0, LI0/c;->R:LI0/l;

    .line 9
    .line 10
    iput-object v1, v0, LI0/c;->P:LI0/o;

    .line 11
    .line 12
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    iput-wide v2, v0, LI0/c;->T:J

    .line 18
    .line 19
    iget-object v2, v0, LI0/c;->M:LS0/m;

    .line 20
    .line 21
    invoke-virtual {v2, v1}, LS0/m;->f(LS0/k;)V

    .line 22
    .line 23
    .line 24
    iput-object v1, v0, LI0/c;->M:LS0/m;

    .line 25
    .line 26
    iget-object v2, v0, LI0/c;->J:Ljava/util/HashMap;

    .line 27
    .line 28
    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    if-eqz v4, :cond_0

    .line 41
    .line 42
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    check-cast v4, LI0/b;

    .line 47
    .line 48
    iget-object v4, v4, LI0/b;->H:LS0/m;

    .line 49
    .line 50
    invoke-virtual {v4, v1}, LS0/m;->f(LS0/k;)V

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_0
    iget-object v3, v0, LI0/c;->N:Landroid/os/Handler;

    .line 55
    .line 56
    invoke-virtual {v3, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    iput-object v1, v0, LI0/c;->N:Landroid/os/Handler;

    .line 60
    .line 61
    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 62
    .line 63
    .line 64
    iget-object v0, p0, LH0/o;->k:LG0/r;

    .line 65
    .line 66
    invoke-interface {v0}, LG0/r;->release()V

    .line 67
    .line 68
    .line 69
    return-void
.end method

.method public final declared-synchronized s(Lm0/I;)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iput-object p1, p0, LH0/o;->u:Lm0/I;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return-void

    .line 6
    :catchall_0
    move-exception p1

    .line 7
    monitor-exit p0

    .line 8
    throw p1
.end method

.method public final u(LI0/l;)V
    .locals 42

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-boolean v2, v1, LI0/l;->p:Z

    .line 6
    .line 7
    iget-wide v5, v1, LI0/l;->h:J

    .line 8
    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    invoke-static {v5, v6}, Lp0/M;->e0(J)J

    .line 12
    .line 13
    .line 14
    move-result-wide v7

    .line 15
    move-wide v12, v7

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    :goto_0
    const/4 v7, 0x1

    .line 23
    const/4 v8, 0x2

    .line 24
    iget v9, v1, LI0/l;->d:I

    .line 25
    .line 26
    if-eq v9, v8, :cond_2

    .line 27
    .line 28
    if-ne v9, v7, :cond_1

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_1
    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    goto :goto_2

    .line 37
    :cond_2
    :goto_1
    move-wide v10, v12

    .line 38
    :goto_2
    new-instance v14, LF/i;

    .line 39
    .line 40
    iget-object v15, v0, LH0/o;->p:LI0/w;

    .line 41
    .line 42
    check-cast v15, LI0/c;

    .line 43
    .line 44
    iget-object v8, v15, LI0/c;->P:LI0/o;

    .line 45
    .line 46
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    const/4 v7, 0x3

    .line 50
    invoke-direct {v14, v7, v8, v1}, LF/i;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    iget-boolean v7, v15, LI0/c;->S:Z

    .line 54
    .line 55
    iget-wide v3, v1, LI0/l;->u:J

    .line 56
    .line 57
    const-wide/16 v20, 0x0

    .line 58
    .line 59
    iget-object v8, v1, LI0/l;->r:Lz4/H;

    .line 60
    .line 61
    move-object/from16 v24, v14

    .line 62
    .line 63
    iget-boolean v14, v1, LI0/l;->g:Z

    .line 64
    .line 65
    move-wide/from16 v28, v12

    .line 66
    .line 67
    iget-wide v12, v1, LI0/l;->e:J

    .line 68
    .line 69
    if-eqz v7, :cond_12

    .line 70
    .line 71
    move-wide/from16 v30, v10

    .line 72
    .line 73
    iget-wide v10, v15, LI0/c;->T:J

    .line 74
    .line 75
    sub-long v32, v5, v10

    .line 76
    .line 77
    iget-boolean v7, v1, LI0/l;->o:Z

    .line 78
    .line 79
    if-eqz v7, :cond_3

    .line 80
    .line 81
    add-long v10, v32, v3

    .line 82
    .line 83
    move-wide/from16 v34, v10

    .line 84
    .line 85
    goto :goto_3

    .line 86
    :cond_3
    const-wide v34, -0x7fffffffffffffffL    # -4.9E-324

    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    :goto_3
    if-eqz v2, :cond_4

    .line 92
    .line 93
    iget-wide v10, v0, LH0/o;->q:J

    .line 94
    .line 95
    invoke-static {v10, v11}, Lp0/M;->z(J)J

    .line 96
    .line 97
    .line 98
    move-result-wide v10

    .line 99
    invoke-static {v10, v11}, Lp0/M;->R(J)J

    .line 100
    .line 101
    .line 102
    move-result-wide v10

    .line 103
    add-long/2addr v5, v3

    .line 104
    sub-long/2addr v10, v5

    .line 105
    move-wide/from16 v38, v10

    .line 106
    .line 107
    goto :goto_4

    .line 108
    :cond_4
    move-wide/from16 v38, v20

    .line 109
    .line 110
    :goto_4
    iget-object v2, v0, LH0/o;->s:Lm0/D;

    .line 111
    .line 112
    iget-wide v5, v2, Lm0/D;->a:J

    .line 113
    .line 114
    iget-object v2, v1, LI0/l;->v:LI0/k;

    .line 115
    .line 116
    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    cmp-long v15, v5, v10

    .line 122
    .line 123
    if-eqz v15, :cond_5

    .line 124
    .line 125
    invoke-static {v5, v6}, Lp0/M;->R(J)J

    .line 126
    .line 127
    .line 128
    move-result-wide v5

    .line 129
    :goto_5
    move-wide/from16 v36, v5

    .line 130
    .line 131
    goto :goto_7

    .line 132
    :cond_5
    cmp-long v5, v12, v10

    .line 133
    .line 134
    if-eqz v5, :cond_6

    .line 135
    .line 136
    sub-long v5, v3, v12

    .line 137
    .line 138
    goto :goto_6

    .line 139
    :cond_6
    iget-wide v5, v2, LI0/k;->d:J

    .line 140
    .line 141
    cmp-long v15, v5, v10

    .line 142
    .line 143
    if-eqz v15, :cond_7

    .line 144
    .line 145
    move-wide/from16 v18, v5

    .line 146
    .line 147
    iget-wide v5, v1, LI0/l;->n:J

    .line 148
    .line 149
    cmp-long v15, v5, v10

    .line 150
    .line 151
    if-eqz v15, :cond_7

    .line 152
    .line 153
    move-wide/from16 v5, v18

    .line 154
    .line 155
    goto :goto_6

    .line 156
    :cond_7
    iget-wide v5, v2, LI0/k;->c:J

    .line 157
    .line 158
    cmp-long v15, v5, v10

    .line 159
    .line 160
    if-eqz v15, :cond_8

    .line 161
    .line 162
    goto :goto_6

    .line 163
    :cond_8
    const-wide/16 v5, 0x3

    .line 164
    .line 165
    iget-wide v10, v1, LI0/l;->m:J

    .line 166
    .line 167
    mul-long v5, v5, v10

    .line 168
    .line 169
    :goto_6
    add-long v5, v5, v38

    .line 170
    .line 171
    goto :goto_5

    .line 172
    :goto_7
    add-long v3, v3, v38

    .line 173
    .line 174
    move-wide/from16 v40, v3

    .line 175
    .line 176
    invoke-static/range {v36 .. v41}, Lp0/M;->j(JJJ)J

    .line 177
    .line 178
    .line 179
    move-result-wide v5

    .line 180
    invoke-virtual/range {p0 .. p0}, LH0/o;->h()Lm0/I;

    .line 181
    .line 182
    .line 183
    move-result-object v10

    .line 184
    iget-object v10, v10, Lm0/I;->c:Lm0/D;

    .line 185
    .line 186
    iget v11, v10, Lm0/D;->d:F

    .line 187
    .line 188
    const/4 v15, 0x0

    .line 189
    const v22, -0x800001

    .line 190
    .line 191
    .line 192
    cmpl-float v11, v11, v22

    .line 193
    .line 194
    if-nez v11, :cond_9

    .line 195
    .line 196
    iget v10, v10, Lm0/D;->e:F

    .line 197
    .line 198
    cmpl-float v10, v10, v22

    .line 199
    .line 200
    if-nez v10, :cond_9

    .line 201
    .line 202
    iget-wide v10, v2, LI0/k;->c:J

    .line 203
    .line 204
    const-wide v18, -0x7fffffffffffffffL    # -4.9E-324

    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    cmp-long v22, v10, v18

    .line 210
    .line 211
    if-nez v22, :cond_9

    .line 212
    .line 213
    iget-wide v10, v2, LI0/k;->d:J

    .line 214
    .line 215
    cmp-long v2, v10, v18

    .line 216
    .line 217
    if-nez v2, :cond_9

    .line 218
    .line 219
    const/4 v2, 0x1

    .line 220
    goto :goto_8

    .line 221
    :cond_9
    const/4 v2, 0x0

    .line 222
    :goto_8
    new-instance v10, Lm0/C;

    .line 223
    .line 224
    invoke-direct {v10}, Lm0/C;-><init>()V

    .line 225
    .line 226
    .line 227
    invoke-static {v5, v6}, Lp0/M;->e0(J)J

    .line 228
    .line 229
    .line 230
    move-result-wide v5

    .line 231
    iput-wide v5, v10, Lm0/C;->a:J

    .line 232
    .line 233
    const/high16 v5, 0x3f800000    # 1.0f

    .line 234
    .line 235
    if-eqz v2, :cond_a

    .line 236
    .line 237
    const/high16 v6, 0x3f800000    # 1.0f

    .line 238
    .line 239
    goto :goto_9

    .line 240
    :cond_a
    iget-object v6, v0, LH0/o;->s:Lm0/D;

    .line 241
    .line 242
    iget v6, v6, Lm0/D;->d:F

    .line 243
    .line 244
    :goto_9
    iput v6, v10, Lm0/C;->d:F

    .line 245
    .line 246
    if-eqz v2, :cond_b

    .line 247
    .line 248
    goto :goto_a

    .line 249
    :cond_b
    iget-object v2, v0, LH0/o;->s:Lm0/D;

    .line 250
    .line 251
    iget v5, v2, Lm0/D;->e:F

    .line 252
    .line 253
    :goto_a
    iput v5, v10, Lm0/C;->e:F

    .line 254
    .line 255
    new-instance v2, Lm0/D;

    .line 256
    .line 257
    invoke-direct {v2, v10}, Lm0/D;-><init>(Lm0/C;)V

    .line 258
    .line 259
    .line 260
    iput-object v2, v0, LH0/o;->s:Lm0/D;

    .line 261
    .line 262
    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    cmp-long v10, v12, v5

    .line 268
    .line 269
    if-eqz v10, :cond_c

    .line 270
    .line 271
    goto :goto_b

    .line 272
    :cond_c
    iget-wide v5, v2, Lm0/D;->a:J

    .line 273
    .line 274
    invoke-static {v5, v6}, Lp0/M;->R(J)J

    .line 275
    .line 276
    .line 277
    move-result-wide v5

    .line 278
    sub-long v12, v3, v5

    .line 279
    .line 280
    :goto_b
    if-eqz v14, :cond_d

    .line 281
    .line 282
    move-wide/from16 v20, v12

    .line 283
    .line 284
    :goto_c
    const/4 v2, 0x2

    .line 285
    goto :goto_e

    .line 286
    :cond_d
    iget-object v2, v1, LI0/l;->s:Lz4/H;

    .line 287
    .line 288
    invoke-static {v12, v13, v2}, LH0/o;->t(JLz4/H;)LI0/g;

    .line 289
    .line 290
    .line 291
    move-result-object v2

    .line 292
    if-eqz v2, :cond_e

    .line 293
    .line 294
    iget-wide v2, v2, LI0/j;->K:J

    .line 295
    .line 296
    :goto_d
    move-wide/from16 v20, v2

    .line 297
    .line 298
    goto :goto_c

    .line 299
    :cond_e
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    .line 300
    .line 301
    .line 302
    move-result v2

    .line 303
    if-eqz v2, :cond_f

    .line 304
    .line 305
    goto :goto_c

    .line 306
    :cond_f
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 307
    .line 308
    .line 309
    move-result-object v2

    .line 310
    const/4 v3, 0x1

    .line 311
    invoke-static {v8, v2, v3}, Lp0/M;->c(Lz4/H;Ljava/lang/Long;Z)I

    .line 312
    .line 313
    .line 314
    move-result v2

    .line 315
    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 316
    .line 317
    .line 318
    move-result-object v2

    .line 319
    check-cast v2, LI0/i;

    .line 320
    .line 321
    iget-object v3, v2, LI0/i;->S:Lz4/H;

    .line 322
    .line 323
    invoke-static {v12, v13, v3}, LH0/o;->t(JLz4/H;)LI0/g;

    .line 324
    .line 325
    .line 326
    move-result-object v3

    .line 327
    if-eqz v3, :cond_10

    .line 328
    .line 329
    iget-wide v2, v3, LI0/j;->K:J

    .line 330
    .line 331
    goto :goto_d

    .line 332
    :cond_10
    iget-wide v2, v2, LI0/j;->K:J

    .line 333
    .line 334
    goto :goto_d

    .line 335
    :goto_e
    if-ne v9, v2, :cond_11

    .line 336
    .line 337
    iget-boolean v2, v1, LI0/l;->f:Z

    .line 338
    .line 339
    if-eqz v2, :cond_11

    .line 340
    .line 341
    const/4 v2, 0x1

    .line 342
    goto :goto_f

    .line 343
    :cond_11
    const/4 v2, 0x0

    .line 344
    :goto_f
    new-instance v3, LO0/Y;

    .line 345
    .line 346
    const/4 v4, 0x1

    .line 347
    xor-int/lit8 v23, v7, 0x1

    .line 348
    .line 349
    invoke-virtual/range {p0 .. p0}, LH0/o;->h()Lm0/I;

    .line 350
    .line 351
    .line 352
    move-result-object v26

    .line 353
    iget-object v4, v0, LH0/o;->s:Lm0/D;

    .line 354
    .line 355
    move-object/from16 v27, v4

    .line 356
    .line 357
    iget-wide v4, v1, LI0/l;->u:J

    .line 358
    .line 359
    move-wide/from16 v16, v4

    .line 360
    .line 361
    const/16 v22, 0x1

    .line 362
    .line 363
    move-object v9, v3

    .line 364
    move-wide/from16 v10, v30

    .line 365
    .line 366
    move-wide/from16 v12, v28

    .line 367
    .line 368
    move-object/from16 v5, v24

    .line 369
    .line 370
    move-wide/from16 v14, v34

    .line 371
    .line 372
    move-wide/from16 v18, v32

    .line 373
    .line 374
    move/from16 v24, v2

    .line 375
    .line 376
    move-object/from16 v25, v5

    .line 377
    .line 378
    invoke-direct/range {v9 .. v27}, LO0/Y;-><init>(JJJJJJZZZLF/i;Lm0/I;Lm0/D;)V

    .line 379
    .line 380
    .line 381
    goto :goto_12

    .line 382
    :cond_12
    move-wide/from16 v30, v10

    .line 383
    .line 384
    move-object/from16 v5, v24

    .line 385
    .line 386
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    .line 387
    .line 388
    .line 389
    .line 390
    .line 391
    cmp-long v2, v12, v6

    .line 392
    .line 393
    if-eqz v2, :cond_16

    .line 394
    .line 395
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    .line 396
    .line 397
    .line 398
    move-result v2

    .line 399
    if-eqz v2, :cond_13

    .line 400
    .line 401
    goto :goto_11

    .line 402
    :cond_13
    if-nez v14, :cond_15

    .line 403
    .line 404
    cmp-long v2, v12, v3

    .line 405
    .line 406
    if-nez v2, :cond_14

    .line 407
    .line 408
    goto :goto_10

    .line 409
    :cond_14
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 410
    .line 411
    .line 412
    move-result-object v2

    .line 413
    const/4 v3, 0x1

    .line 414
    invoke-static {v8, v2, v3}, Lp0/M;->c(Lz4/H;Ljava/lang/Long;Z)I

    .line 415
    .line 416
    .line 417
    move-result v2

    .line 418
    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 419
    .line 420
    .line 421
    move-result-object v2

    .line 422
    check-cast v2, LI0/i;

    .line 423
    .line 424
    iget-wide v2, v2, LI0/j;->K:J

    .line 425
    .line 426
    move-wide/from16 v20, v2

    .line 427
    .line 428
    goto :goto_11

    .line 429
    :cond_15
    :goto_10
    move-wide/from16 v20, v12

    .line 430
    .line 431
    :cond_16
    :goto_11
    new-instance v3, LO0/Y;

    .line 432
    .line 433
    move-object v9, v3

    .line 434
    invoke-virtual/range {p0 .. p0}, LH0/o;->h()Lm0/I;

    .line 435
    .line 436
    .line 437
    move-result-object v26

    .line 438
    const/16 v22, 0x1

    .line 439
    .line 440
    const/16 v27, 0x0

    .line 441
    .line 442
    iget-wide v1, v1, LI0/l;->u:J

    .line 443
    .line 444
    move-wide v14, v1

    .line 445
    move-wide/from16 v16, v1

    .line 446
    .line 447
    const-wide/16 v18, 0x0

    .line 448
    .line 449
    const/16 v23, 0x0

    .line 450
    .line 451
    const/16 v24, 0x1

    .line 452
    .line 453
    move-wide/from16 v10, v30

    .line 454
    .line 455
    move-wide/from16 v12, v28

    .line 456
    .line 457
    move-object/from16 v25, v5

    .line 458
    .line 459
    invoke-direct/range {v9 .. v27}, LO0/Y;-><init>(JJJJJJZZZLF/i;Lm0/I;Lm0/D;)V

    .line 460
    .line 461
    .line 462
    :goto_12
    invoke-virtual {v0, v3}, LO0/a;->m(Lm0/f0;)V

    .line 463
    .line 464
    .line 465
    return-void
.end method
