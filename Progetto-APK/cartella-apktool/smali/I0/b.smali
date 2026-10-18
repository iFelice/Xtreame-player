.class public final LI0/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LS0/h;


# instance fields
.field public final G:Landroid/net/Uri;

.field public final H:LS0/m;

.field public final I:Ls0/i;

.field public J:LI0/l;

.field public K:J

.field public L:J

.field public M:J

.field public N:J

.field public O:Z

.field public P:Ljava/io/IOException;

.field public Q:Z

.field public final synthetic R:LI0/c;


# direct methods
.method public constructor <init>(LI0/c;Landroid/net/Uri;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LI0/b;->R:LI0/c;

    .line 5
    .line 6
    iput-object p2, p0, LI0/b;->G:Landroid/net/Uri;

    .line 7
    .line 8
    new-instance p2, LS0/m;

    .line 9
    .line 10
    const-string v0, "DefaultHlsPlaylistTracker:MediaPlaylist"

    .line 11
    .line 12
    invoke-direct {p2, v0}, LS0/m;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iput-object p2, p0, LI0/b;->H:LS0/m;

    .line 16
    .line 17
    iget-object p1, p1, LI0/c;->G:LH0/c;

    .line 18
    .line 19
    iget-object p1, p1, LH0/c;->a:Ls0/h;

    .line 20
    .line 21
    invoke-interface {p1}, Ls0/h;->a()Ls0/i;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    iput-object p1, p0, LI0/b;->I:Ls0/i;

    .line 26
    .line 27
    return-void
.end method

.method public static a(LI0/b;J)Z
    .locals 8

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    add-long/2addr v0, p1

    .line 6
    iput-wide v0, p0, LI0/b;->N:J

    .line 7
    .line 8
    iget-object p1, p0, LI0/b;->R:LI0/c;

    .line 9
    .line 10
    iget-object p2, p1, LI0/c;->Q:Landroid/net/Uri;

    .line 11
    .line 12
    iget-object p0, p0, LI0/b;->G:Landroid/net/Uri;

    .line 13
    .line 14
    invoke-virtual {p0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    const/4 p2, 0x0

    .line 19
    if-eqz p0, :cond_2

    .line 20
    .line 21
    iget-object p0, p1, LI0/c;->P:LI0/o;

    .line 22
    .line 23
    iget-object p0, p0, LI0/o;->e:Ljava/util/List;

    .line 24
    .line 25
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 30
    .line 31
    .line 32
    move-result-wide v1

    .line 33
    const/4 v3, 0x0

    .line 34
    :goto_0
    if-ge v3, v0, :cond_1

    .line 35
    .line 36
    iget-object v4, p1, LI0/c;->J:Ljava/util/HashMap;

    .line 37
    .line 38
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v5

    .line 42
    check-cast v5, LI0/n;

    .line 43
    .line 44
    iget-object v5, v5, LI0/n;->a:Landroid/net/Uri;

    .line 45
    .line 46
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    check-cast v4, LI0/b;

    .line 51
    .line 52
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    .line 54
    .line 55
    iget-wide v5, v4, LI0/b;->N:J

    .line 56
    .line 57
    cmp-long v7, v1, v5

    .line 58
    .line 59
    if-lez v7, :cond_0

    .line 60
    .line 61
    iget-object p0, v4, LI0/b;->G:Landroid/net/Uri;

    .line 62
    .line 63
    iput-object p0, p1, LI0/c;->Q:Landroid/net/Uri;

    .line 64
    .line 65
    invoke-virtual {p1, p0}, LI0/c;->b(Landroid/net/Uri;)Landroid/net/Uri;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    invoke-virtual {v4, p0}, LI0/b;->f(Landroid/net/Uri;)V

    .line 70
    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_1
    const/4 p2, 0x1

    .line 77
    :cond_2
    :goto_1
    return p2
.end method


# virtual methods
.method public final b()Landroid/net/Uri;
    .locals 8

    .line 1
    iget-object v0, p0, LI0/b;->J:LI0/l;

    .line 2
    .line 3
    iget-object v1, p0, LI0/b;->G:Landroid/net/Uri;

    .line 4
    .line 5
    if-eqz v0, :cond_5

    .line 6
    .line 7
    iget-object v0, v0, LI0/l;->v:LI0/k;

    .line 8
    .line 9
    iget-wide v2, v0, LI0/k;->a:J

    .line 10
    .line 11
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    cmp-long v6, v2, v4

    .line 17
    .line 18
    if-nez v6, :cond_0

    .line 19
    .line 20
    iget-boolean v0, v0, LI0/k;->e:Z

    .line 21
    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_0
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iget-object v1, p0, LI0/b;->J:LI0/l;

    .line 30
    .line 31
    iget-object v2, v1, LI0/l;->v:LI0/k;

    .line 32
    .line 33
    iget-boolean v2, v2, LI0/k;->e:Z

    .line 34
    .line 35
    if-eqz v2, :cond_2

    .line 36
    .line 37
    iget-object v2, v1, LI0/l;->r:Lz4/H;

    .line 38
    .line 39
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    int-to-long v2, v2

    .line 44
    iget-wide v6, v1, LI0/l;->k:J

    .line 45
    .line 46
    add-long/2addr v6, v2

    .line 47
    const-string v1, "_HLS_msn"

    .line 48
    .line 49
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 54
    .line 55
    .line 56
    iget-object v1, p0, LI0/b;->J:LI0/l;

    .line 57
    .line 58
    iget-wide v2, v1, LI0/l;->n:J

    .line 59
    .line 60
    cmp-long v6, v2, v4

    .line 61
    .line 62
    if-eqz v6, :cond_2

    .line 63
    .line 64
    iget-object v1, v1, LI0/l;->s:Lz4/H;

    .line 65
    .line 66
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 71
    .line 72
    .line 73
    move-result v3

    .line 74
    if-nez v3, :cond_1

    .line 75
    .line 76
    invoke-static {v1}, Ly4/k;->G(Ljava/lang/Iterable;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    check-cast v1, LI0/g;

    .line 81
    .line 82
    iget-boolean v1, v1, LI0/g;->S:Z

    .line 83
    .line 84
    if-eqz v1, :cond_1

    .line 85
    .line 86
    add-int/lit8 v2, v2, -0x1

    .line 87
    .line 88
    :cond_1
    const-string v1, "_HLS_part"

    .line 89
    .line 90
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 95
    .line 96
    .line 97
    :cond_2
    iget-object v1, p0, LI0/b;->J:LI0/l;

    .line 98
    .line 99
    iget-object v1, v1, LI0/l;->v:LI0/k;

    .line 100
    .line 101
    iget-wide v2, v1, LI0/k;->a:J

    .line 102
    .line 103
    cmp-long v6, v2, v4

    .line 104
    .line 105
    if-eqz v6, :cond_4

    .line 106
    .line 107
    iget-boolean v1, v1, LI0/k;->b:Z

    .line 108
    .line 109
    if-eqz v1, :cond_3

    .line 110
    .line 111
    const-string v1, "v2"

    .line 112
    .line 113
    goto :goto_0

    .line 114
    :cond_3
    const-string v1, "YES"

    .line 115
    .line 116
    :goto_0
    const-string v2, "_HLS_skip"

    .line 117
    .line 118
    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 119
    .line 120
    .line 121
    :cond_4
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    return-object v0

    .line 126
    :cond_5
    :goto_1
    return-object v1
.end method

.method public final c(LS0/j;JJZ)V
    .locals 12

    .line 1
    move-object v0, p1

    .line 2
    check-cast v0, LS0/p;

    .line 3
    .line 4
    new-instance v2, LO0/p;

    .line 5
    .line 6
    iget-wide v3, v0, LS0/p;->G:J

    .line 7
    .line 8
    iget-object v0, v0, LS0/p;->J:Ls0/M;

    .line 9
    .line 10
    iget-object v1, v0, Ls0/M;->c:Landroid/net/Uri;

    .line 11
    .line 12
    iget-object v0, v0, Ls0/M;->d:Ljava/util/Map;

    .line 13
    .line 14
    move-wide/from16 v3, p4

    .line 15
    .line 16
    invoke-direct {v2, v0, v3, v4}, LO0/p;-><init>(Ljava/util/Map;J)V

    .line 17
    .line 18
    .line 19
    move-object v0, p0

    .line 20
    iget-object v1, v0, LI0/b;->R:LI0/c;

    .line 21
    .line 22
    iget-object v3, v1, LI0/c;->I:LU4/b;

    .line 23
    .line 24
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    iget-object v1, v1, LI0/c;->L:LO0/D;

    .line 28
    .line 29
    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    const/4 v3, 0x4

    .line 40
    const/4 v4, -0x1

    .line 41
    const/4 v5, 0x0

    .line 42
    const/4 v6, 0x0

    .line 43
    const/4 v7, 0x0

    .line 44
    invoke-virtual/range {v1 .. v11}, LO0/D;->c(LO0/p;IILm0/t;ILjava/lang/Object;JJ)V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method public final d(Z)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, LI0/b;->b()Landroid/net/Uri;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object p1, p0, LI0/b;->G:Landroid/net/Uri;

    .line 9
    .line 10
    :goto_0
    invoke-virtual {p0, p1}, LI0/b;->f(Landroid/net/Uri;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final e(Landroid/net/Uri;)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, LI0/b;->R:LI0/c;

    .line 4
    .line 5
    iget-object v2, v1, LI0/c;->H:LI0/s;

    .line 6
    .line 7
    iget-object v3, v1, LI0/c;->P:LI0/o;

    .line 8
    .line 9
    iget-object v4, v0, LI0/b;->J:LI0/l;

    .line 10
    .line 11
    invoke-interface {v2, v3, v4}, LI0/s;->C(LI0/o;LI0/l;)LS0/o;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 16
    .line 17
    .line 18
    move-result-object v9

    .line 19
    const-string v3, "The uri must be set."

    .line 20
    .line 21
    move-object/from16 v4, p1

    .line 22
    .line 23
    invoke-static {v4, v3}, Lcom/google/android/gms/internal/measurement/H1;->k(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    new-instance v15, Ls0/m;

    .line 27
    .line 28
    const/16 v16, 0x1

    .line 29
    .line 30
    const/16 v17, 0x0

    .line 31
    .line 32
    const-wide/16 v5, 0x0

    .line 33
    .line 34
    const/4 v7, 0x1

    .line 35
    const/4 v8, 0x0

    .line 36
    const-wide/16 v10, 0x0

    .line 37
    .line 38
    const-wide/16 v12, -0x1

    .line 39
    .line 40
    const/4 v14, 0x0

    .line 41
    move-object v3, v15

    .line 42
    move-object/from16 v4, p1

    .line 43
    .line 44
    move-object/from16 v18, v15

    .line 45
    .line 46
    move/from16 v15, v16

    .line 47
    .line 48
    move-object/from16 v16, v17

    .line 49
    .line 50
    invoke-direct/range {v3 .. v16}, Ls0/m;-><init>(Landroid/net/Uri;JI[BLjava/util/Map;JJLjava/lang/String;ILjava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    new-instance v3, LS0/p;

    .line 54
    .line 55
    iget-object v4, v0, LI0/b;->I:Ls0/i;

    .line 56
    .line 57
    const/4 v5, 0x4

    .line 58
    move-object/from16 v6, v18

    .line 59
    .line 60
    invoke-direct {v3, v4, v6, v5, v2}, LS0/p;-><init>(Ls0/i;Ls0/m;ILS0/o;)V

    .line 61
    .line 62
    .line 63
    iget v2, v3, LS0/p;->I:I

    .line 64
    .line 65
    iget-object v1, v1, LI0/c;->I:LU4/b;

    .line 66
    .line 67
    invoke-virtual {v1, v2}, LU4/b;->Y(I)I

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    iget-object v2, v0, LI0/b;->H:LS0/m;

    .line 72
    .line 73
    invoke-virtual {v2, v3, v0, v1}, LS0/m;->g(LS0/j;LS0/h;I)V

    .line 74
    .line 75
    .line 76
    return-void
.end method

.method public final f(Landroid/net/Uri;)V
    .locals 7

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    iput-wide v0, p0, LI0/b;->N:J

    .line 4
    .line 5
    iget-boolean v0, p0, LI0/b;->O:Z

    .line 6
    .line 7
    if-nez v0, :cond_2

    .line 8
    .line 9
    iget-object v0, p0, LI0/b;->H:LS0/m;

    .line 10
    .line 11
    invoke-virtual {v0}, LS0/m;->e()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_2

    .line 16
    .line 17
    invoke-virtual {v0}, LS0/m;->d()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 25
    .line 26
    .line 27
    move-result-wide v0

    .line 28
    iget-wide v2, p0, LI0/b;->M:J

    .line 29
    .line 30
    cmp-long v4, v0, v2

    .line 31
    .line 32
    if-gez v4, :cond_1

    .line 33
    .line 34
    const/4 v4, 0x1

    .line 35
    iput-boolean v4, p0, LI0/b;->O:Z

    .line 36
    .line 37
    iget-object v4, p0, LI0/b;->R:LI0/c;

    .line 38
    .line 39
    iget-object v4, v4, LI0/c;->N:Landroid/os/Handler;

    .line 40
    .line 41
    new-instance v5, Lf/t;

    .line 42
    .line 43
    const/16 v6, 0x1a

    .line 44
    .line 45
    invoke-direct {v5, v6, p0, p1}, Lf/t;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    sub-long/2addr v2, v0

    .line 49
    invoke-virtual {v4, v5, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    invoke-virtual {p0, p1}, LI0/b;->e(Landroid/net/Uri;)V

    .line 54
    .line 55
    .line 56
    :cond_2
    :goto_0
    return-void
.end method

.method public final g(LI0/l;LO0/p;)V
    .locals 47

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, LI0/b;->J:LI0/l;

    .line 6
    .line 7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 8
    .line 9
    .line 10
    move-result-wide v3

    .line 11
    iput-wide v3, v0, LI0/b;->K:J

    .line 12
    .line 13
    iget-object v5, v0, LI0/b;->R:LI0/c;

    .line 14
    .line 15
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    if-eqz v2, :cond_6

    .line 19
    .line 20
    iget-wide v10, v1, LI0/l;->k:J

    .line 21
    .line 22
    iget-wide v12, v2, LI0/l;->k:J

    .line 23
    .line 24
    cmp-long v14, v10, v12

    .line 25
    .line 26
    if-lez v14, :cond_0

    .line 27
    .line 28
    goto/16 :goto_3

    .line 29
    .line 30
    :cond_0
    iget-boolean v10, v2, LI0/l;->o:Z

    .line 31
    .line 32
    iget-object v11, v2, LI0/l;->s:Lz4/H;

    .line 33
    .line 34
    iget-object v12, v2, LI0/l;->r:Lz4/H;

    .line 35
    .line 36
    iget-boolean v13, v1, LI0/l;->o:Z

    .line 37
    .line 38
    if-gez v14, :cond_1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    iget-object v14, v1, LI0/l;->r:Lz4/H;

    .line 42
    .line 43
    invoke-interface {v14}, Ljava/util/List;->size()I

    .line 44
    .line 45
    .line 46
    move-result v14

    .line 47
    invoke-interface {v12}, Ljava/util/List;->size()I

    .line 48
    .line 49
    .line 50
    move-result v15

    .line 51
    sub-int/2addr v14, v15

    .line 52
    if-eqz v14, :cond_2

    .line 53
    .line 54
    if-lez v14, :cond_3

    .line 55
    .line 56
    goto/16 :goto_3

    .line 57
    .line 58
    :cond_2
    iget-object v14, v1, LI0/l;->s:Lz4/H;

    .line 59
    .line 60
    invoke-interface {v14}, Ljava/util/List;->size()I

    .line 61
    .line 62
    .line 63
    move-result v14

    .line 64
    invoke-interface {v11}, Ljava/util/List;->size()I

    .line 65
    .line 66
    .line 67
    move-result v15

    .line 68
    if-gt v14, v15, :cond_7

    .line 69
    .line 70
    if-ne v14, v15, :cond_3

    .line 71
    .line 72
    if-eqz v13, :cond_3

    .line 73
    .line 74
    if-nez v10, :cond_3

    .line 75
    .line 76
    goto/16 :goto_3

    .line 77
    .line 78
    :cond_3
    :goto_0
    if-eqz v13, :cond_5

    .line 79
    .line 80
    if-eqz v10, :cond_4

    .line 81
    .line 82
    goto :goto_2

    .line 83
    :cond_4
    new-instance v10, LI0/l;

    .line 84
    .line 85
    move-object v15, v10

    .line 86
    iget-boolean v13, v2, LI0/l;->p:Z

    .line 87
    .line 88
    move/from16 v35, v13

    .line 89
    .line 90
    iget-object v13, v2, LI0/l;->w:Lz4/H;

    .line 91
    .line 92
    move-object/from16 v41, v13

    .line 93
    .line 94
    iget v13, v2, LI0/l;->d:I

    .line 95
    .line 96
    move/from16 v16, v13

    .line 97
    .line 98
    iget-object v13, v2, LI0/p;->a:Ljava/lang/String;

    .line 99
    .line 100
    move-object/from16 v17, v13

    .line 101
    .line 102
    iget-object v13, v2, LI0/p;->b:Ljava/util/List;

    .line 103
    .line 104
    move-object/from16 v18, v13

    .line 105
    .line 106
    iget-wide v13, v2, LI0/l;->e:J

    .line 107
    .line 108
    move-wide/from16 v19, v13

    .line 109
    .line 110
    iget-boolean v13, v2, LI0/l;->g:Z

    .line 111
    .line 112
    move/from16 v21, v13

    .line 113
    .line 114
    iget-wide v13, v2, LI0/l;->h:J

    .line 115
    .line 116
    move-wide/from16 v22, v13

    .line 117
    .line 118
    iget-boolean v13, v2, LI0/l;->i:Z

    .line 119
    .line 120
    move/from16 v24, v13

    .line 121
    .line 122
    iget v13, v2, LI0/l;->j:I

    .line 123
    .line 124
    move/from16 v25, v13

    .line 125
    .line 126
    iget-wide v13, v2, LI0/l;->k:J

    .line 127
    .line 128
    move-wide/from16 v26, v13

    .line 129
    .line 130
    iget v13, v2, LI0/l;->l:I

    .line 131
    .line 132
    move/from16 v28, v13

    .line 133
    .line 134
    iget-wide v13, v2, LI0/l;->m:J

    .line 135
    .line 136
    move-wide/from16 v29, v13

    .line 137
    .line 138
    iget-wide v13, v2, LI0/l;->n:J

    .line 139
    .line 140
    move-wide/from16 v31, v13

    .line 141
    .line 142
    iget-boolean v13, v2, LI0/p;->c:Z

    .line 143
    .line 144
    move/from16 v33, v13

    .line 145
    .line 146
    const/16 v34, 0x1

    .line 147
    .line 148
    iget-object v13, v2, LI0/l;->q:Lm0/n;

    .line 149
    .line 150
    move-object/from16 v36, v13

    .line 151
    .line 152
    iget-object v13, v2, LI0/l;->v:LI0/k;

    .line 153
    .line 154
    move-object/from16 v39, v13

    .line 155
    .line 156
    iget-object v13, v2, LI0/l;->t:Lz4/J;

    .line 157
    .line 158
    move-object/from16 v40, v13

    .line 159
    .line 160
    move-object/from16 v37, v12

    .line 161
    .line 162
    move-object/from16 v38, v11

    .line 163
    .line 164
    invoke-direct/range {v15 .. v41}, LI0/l;-><init>(ILjava/lang/String;Ljava/util/List;JZJZIJIJJZZZLm0/n;Ljava/util/List;Ljava/util/List;LI0/k;Ljava/util/Map;Ljava/util/List;)V

    .line 165
    .line 166
    .line 167
    :goto_1
    const/4 v8, 0x0

    .line 168
    goto/16 :goto_e

    .line 169
    .line 170
    :cond_5
    :goto_2
    move-object v10, v2

    .line 171
    goto :goto_1

    .line 172
    :cond_6
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 173
    .line 174
    .line 175
    :cond_7
    :goto_3
    iget-boolean v10, v1, LI0/l;->p:Z

    .line 176
    .line 177
    iget-wide v11, v1, LI0/l;->k:J

    .line 178
    .line 179
    if-eqz v10, :cond_8

    .line 180
    .line 181
    iget-wide v13, v1, LI0/l;->h:J

    .line 182
    .line 183
    :goto_4
    move-wide/from16 v27, v13

    .line 184
    .line 185
    goto :goto_8

    .line 186
    :cond_8
    iget-object v10, v5, LI0/c;->R:LI0/l;

    .line 187
    .line 188
    if-eqz v10, :cond_9

    .line 189
    .line 190
    iget-wide v13, v10, LI0/l;->h:J

    .line 191
    .line 192
    goto :goto_5

    .line 193
    :cond_9
    const-wide/16 v13, 0x0

    .line 194
    .line 195
    :goto_5
    if-nez v2, :cond_a

    .line 196
    .line 197
    goto :goto_4

    .line 198
    :cond_a
    iget-object v10, v2, LI0/l;->r:Lz4/H;

    .line 199
    .line 200
    invoke-interface {v10}, Ljava/util/List;->size()I

    .line 201
    .line 202
    .line 203
    move-result v15

    .line 204
    iget-wide v8, v2, LI0/l;->k:J

    .line 205
    .line 206
    sub-long v6, v11, v8

    .line 207
    .line 208
    long-to-int v7, v6

    .line 209
    invoke-interface {v10}, Ljava/util/List;->size()I

    .line 210
    .line 211
    .line 212
    move-result v6

    .line 213
    if-ge v7, v6, :cond_b

    .line 214
    .line 215
    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    move-result-object v6

    .line 219
    check-cast v6, LI0/i;

    .line 220
    .line 221
    move-wide/from16 v20, v13

    .line 222
    .line 223
    goto :goto_6

    .line 224
    :cond_b
    move-wide/from16 v20, v13

    .line 225
    .line 226
    const/4 v6, 0x0

    .line 227
    :goto_6
    iget-wide v13, v2, LI0/l;->h:J

    .line 228
    .line 229
    if-eqz v6, :cond_c

    .line 230
    .line 231
    iget-wide v6, v6, LI0/j;->K:J

    .line 232
    .line 233
    :goto_7
    add-long/2addr v13, v6

    .line 234
    goto :goto_4

    .line 235
    :cond_c
    int-to-long v6, v15

    .line 236
    sub-long v8, v11, v8

    .line 237
    .line 238
    cmp-long v10, v6, v8

    .line 239
    .line 240
    if-nez v10, :cond_d

    .line 241
    .line 242
    iget-wide v6, v2, LI0/l;->u:J

    .line 243
    .line 244
    goto :goto_7

    .line 245
    :cond_d
    move-wide/from16 v27, v20

    .line 246
    .line 247
    :goto_8
    iget-boolean v6, v1, LI0/l;->i:Z

    .line 248
    .line 249
    iget-object v7, v1, LI0/l;->r:Lz4/H;

    .line 250
    .line 251
    if-eqz v6, :cond_e

    .line 252
    .line 253
    iget v6, v1, LI0/l;->j:I

    .line 254
    .line 255
    :goto_9
    move/from16 v30, v6

    .line 256
    .line 257
    const/4 v8, 0x0

    .line 258
    goto :goto_d

    .line 259
    :cond_e
    iget-object v6, v5, LI0/c;->R:LI0/l;

    .line 260
    .line 261
    if-eqz v6, :cond_f

    .line 262
    .line 263
    iget v6, v6, LI0/l;->j:I

    .line 264
    .line 265
    goto :goto_a

    .line 266
    :cond_f
    const/4 v6, 0x0

    .line 267
    :goto_a
    if-nez v2, :cond_10

    .line 268
    .line 269
    goto :goto_9

    .line 270
    :cond_10
    iget-wide v8, v2, LI0/l;->k:J

    .line 271
    .line 272
    sub-long/2addr v11, v8

    .line 273
    long-to-int v8, v11

    .line 274
    iget-object v9, v2, LI0/l;->r:Lz4/H;

    .line 275
    .line 276
    invoke-interface {v9}, Ljava/util/List;->size()I

    .line 277
    .line 278
    .line 279
    move-result v10

    .line 280
    if-ge v8, v10, :cond_11

    .line 281
    .line 282
    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 283
    .line 284
    .line 285
    move-result-object v8

    .line 286
    check-cast v8, LI0/i;

    .line 287
    .line 288
    goto :goto_b

    .line 289
    :cond_11
    const/4 v8, 0x0

    .line 290
    :goto_b
    if-eqz v8, :cond_12

    .line 291
    .line 292
    iget v6, v2, LI0/l;->j:I

    .line 293
    .line 294
    iget v8, v8, LI0/j;->J:I

    .line 295
    .line 296
    add-int/2addr v6, v8

    .line 297
    const/4 v8, 0x0

    .line 298
    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 299
    .line 300
    .line 301
    move-result-object v9

    .line 302
    check-cast v9, LI0/i;

    .line 303
    .line 304
    iget v9, v9, LI0/j;->J:I

    .line 305
    .line 306
    sub-int/2addr v6, v9

    .line 307
    :goto_c
    move/from16 v30, v6

    .line 308
    .line 309
    goto :goto_d

    .line 310
    :cond_12
    const/4 v8, 0x0

    .line 311
    goto :goto_c

    .line 312
    :goto_d
    new-instance v10, LI0/l;

    .line 313
    .line 314
    move-object/from16 v20, v10

    .line 315
    .line 316
    iget-boolean v6, v1, LI0/l;->p:Z

    .line 317
    .line 318
    move/from16 v40, v6

    .line 319
    .line 320
    iget-object v6, v1, LI0/l;->w:Lz4/H;

    .line 321
    .line 322
    move-object/from16 v46, v6

    .line 323
    .line 324
    iget v6, v1, LI0/l;->d:I

    .line 325
    .line 326
    move/from16 v21, v6

    .line 327
    .line 328
    iget-object v6, v1, LI0/p;->a:Ljava/lang/String;

    .line 329
    .line 330
    move-object/from16 v22, v6

    .line 331
    .line 332
    iget-object v6, v1, LI0/p;->b:Ljava/util/List;

    .line 333
    .line 334
    move-object/from16 v23, v6

    .line 335
    .line 336
    iget-wide v11, v1, LI0/l;->e:J

    .line 337
    .line 338
    move-wide/from16 v24, v11

    .line 339
    .line 340
    iget-boolean v6, v1, LI0/l;->g:Z

    .line 341
    .line 342
    move/from16 v26, v6

    .line 343
    .line 344
    const/16 v29, 0x1

    .line 345
    .line 346
    iget-wide v11, v1, LI0/l;->k:J

    .line 347
    .line 348
    move-wide/from16 v31, v11

    .line 349
    .line 350
    iget v6, v1, LI0/l;->l:I

    .line 351
    .line 352
    move/from16 v33, v6

    .line 353
    .line 354
    iget-wide v11, v1, LI0/l;->m:J

    .line 355
    .line 356
    move-wide/from16 v34, v11

    .line 357
    .line 358
    iget-wide v11, v1, LI0/l;->n:J

    .line 359
    .line 360
    move-wide/from16 v36, v11

    .line 361
    .line 362
    iget-boolean v6, v1, LI0/p;->c:Z

    .line 363
    .line 364
    move/from16 v38, v6

    .line 365
    .line 366
    iget-boolean v6, v1, LI0/l;->o:Z

    .line 367
    .line 368
    move/from16 v39, v6

    .line 369
    .line 370
    iget-object v6, v1, LI0/l;->q:Lm0/n;

    .line 371
    .line 372
    move-object/from16 v41, v6

    .line 373
    .line 374
    iget-object v6, v1, LI0/l;->s:Lz4/H;

    .line 375
    .line 376
    move-object/from16 v43, v6

    .line 377
    .line 378
    iget-object v6, v1, LI0/l;->v:LI0/k;

    .line 379
    .line 380
    move-object/from16 v44, v6

    .line 381
    .line 382
    iget-object v6, v1, LI0/l;->t:Lz4/J;

    .line 383
    .line 384
    move-object/from16 v45, v6

    .line 385
    .line 386
    move-object/from16 v42, v7

    .line 387
    .line 388
    invoke-direct/range {v20 .. v46}, LI0/l;-><init>(ILjava/lang/String;Ljava/util/List;JZJZIJIJJZZZLm0/n;Ljava/util/List;Ljava/util/List;LI0/k;Ljava/util/Map;Ljava/util/List;)V

    .line 389
    .line 390
    .line 391
    :goto_e
    iput-object v10, v0, LI0/b;->J:LI0/l;

    .line 392
    .line 393
    iget-object v6, v5, LI0/c;->K:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 394
    .line 395
    const/4 v7, 0x1

    .line 396
    iget-object v9, v0, LI0/b;->G:Landroid/net/Uri;

    .line 397
    .line 398
    iget-boolean v11, v10, LI0/l;->o:Z

    .line 399
    .line 400
    if-eq v10, v2, :cond_15

    .line 401
    .line 402
    const/4 v12, 0x0

    .line 403
    iput-object v12, v0, LI0/b;->P:Ljava/io/IOException;

    .line 404
    .line 405
    iput-wide v3, v0, LI0/b;->L:J

    .line 406
    .line 407
    iget-object v1, v5, LI0/c;->Q:Landroid/net/Uri;

    .line 408
    .line 409
    invoke-virtual {v9, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 410
    .line 411
    .line 412
    move-result v1

    .line 413
    if-eqz v1, :cond_14

    .line 414
    .line 415
    iget-object v1, v5, LI0/c;->R:LI0/l;

    .line 416
    .line 417
    if-nez v1, :cond_13

    .line 418
    .line 419
    xor-int/lit8 v1, v11, 0x1

    .line 420
    .line 421
    iput-boolean v1, v5, LI0/c;->S:Z

    .line 422
    .line 423
    iget-wide v7, v10, LI0/l;->h:J

    .line 424
    .line 425
    iput-wide v7, v5, LI0/c;->T:J

    .line 426
    .line 427
    :cond_13
    iput-object v10, v5, LI0/c;->R:LI0/l;

    .line 428
    .line 429
    iget-object v1, v5, LI0/c;->O:LI0/v;

    .line 430
    .line 431
    check-cast v1, LH0/o;

    .line 432
    .line 433
    invoke-virtual {v1, v10}, LH0/o;->u(LI0/l;)V

    .line 434
    .line 435
    .line 436
    :cond_14
    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 437
    .line 438
    .line 439
    move-result-object v1

    .line 440
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 441
    .line 442
    .line 443
    move-result v6

    .line 444
    if-eqz v6, :cond_18

    .line 445
    .line 446
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 447
    .line 448
    .line 449
    move-result-object v6

    .line 450
    check-cast v6, LI0/t;

    .line 451
    .line 452
    invoke-interface {v6}, LI0/t;->b()V

    .line 453
    .line 454
    .line 455
    goto :goto_f

    .line 456
    :cond_15
    const/4 v12, 0x0

    .line 457
    if-nez v11, :cond_18

    .line 458
    .line 459
    iget-object v10, v1, LI0/l;->r:Lz4/H;

    .line 460
    .line 461
    invoke-interface {v10}, Ljava/util/List;->size()I

    .line 462
    .line 463
    .line 464
    move-result v10

    .line 465
    int-to-long v10, v10

    .line 466
    iget-wide v13, v1, LI0/l;->k:J

    .line 467
    .line 468
    add-long/2addr v13, v10

    .line 469
    iget-object v1, v0, LI0/b;->J:LI0/l;

    .line 470
    .line 471
    iget-wide v10, v1, LI0/l;->k:J

    .line 472
    .line 473
    cmp-long v15, v13, v10

    .line 474
    .line 475
    if-gez v15, :cond_16

    .line 476
    .line 477
    new-instance v1, LI0/u;

    .line 478
    .line 479
    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    .line 480
    .line 481
    .line 482
    move-object v13, v1

    .line 483
    goto :goto_11

    .line 484
    :cond_16
    iget-wide v10, v0, LI0/b;->L:J

    .line 485
    .line 486
    sub-long v10, v3, v10

    .line 487
    .line 488
    long-to-double v10, v10

    .line 489
    iget-wide v13, v1, LI0/l;->m:J

    .line 490
    .line 491
    invoke-static {v13, v14}, Lp0/M;->e0(J)J

    .line 492
    .line 493
    .line 494
    move-result-wide v13

    .line 495
    long-to-double v13, v13

    .line 496
    const-wide/high16 v18, 0x400c000000000000L    # 3.5

    .line 497
    .line 498
    mul-double v13, v13, v18

    .line 499
    .line 500
    cmpl-double v1, v10, v13

    .line 501
    .line 502
    if-lez v1, :cond_17

    .line 503
    .line 504
    new-instance v1, LI0/u;

    .line 505
    .line 506
    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    .line 507
    .line 508
    .line 509
    move-object v13, v1

    .line 510
    :goto_10
    const/4 v7, 0x0

    .line 511
    goto :goto_11

    .line 512
    :cond_17
    move-object v13, v12

    .line 513
    goto :goto_10

    .line 514
    :goto_11
    if-eqz v13, :cond_18

    .line 515
    .line 516
    iput-object v13, v0, LI0/b;->P:Ljava/io/IOException;

    .line 517
    .line 518
    new-instance v1, LB0/w0;

    .line 519
    .line 520
    new-instance v12, LO0/u;

    .line 521
    .line 522
    const/4 v8, 0x4

    .line 523
    invoke-direct {v12, v8}, LO0/u;-><init>(I)V

    .line 524
    .line 525
    .line 526
    const/4 v14, 0x1

    .line 527
    const/4 v15, 0x1

    .line 528
    move-object v10, v1

    .line 529
    move-object/from16 v11, p2

    .line 530
    .line 531
    invoke-direct/range {v10 .. v15}, LB0/w0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/io/Serializable;II)V

    .line 532
    .line 533
    .line 534
    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 535
    .line 536
    .line 537
    move-result-object v6

    .line 538
    :goto_12
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 539
    .line 540
    .line 541
    move-result v8

    .line 542
    if-eqz v8, :cond_18

    .line 543
    .line 544
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 545
    .line 546
    .line 547
    move-result-object v8

    .line 548
    check-cast v8, LI0/t;

    .line 549
    .line 550
    invoke-interface {v8, v9, v1, v7}, LI0/t;->c(Landroid/net/Uri;LB0/w0;Z)Z

    .line 551
    .line 552
    .line 553
    goto :goto_12

    .line 554
    :cond_18
    iget-object v1, v0, LI0/b;->J:LI0/l;

    .line 555
    .line 556
    iget-object v6, v1, LI0/l;->v:LI0/k;

    .line 557
    .line 558
    iget-boolean v6, v6, LI0/k;->e:Z

    .line 559
    .line 560
    iget-wide v7, v1, LI0/l;->m:J

    .line 561
    .line 562
    const-wide/16 v10, 0x2

    .line 563
    .line 564
    if-nez v6, :cond_1a

    .line 565
    .line 566
    if-eq v1, v2, :cond_19

    .line 567
    .line 568
    goto :goto_13

    .line 569
    :cond_19
    div-long/2addr v7, v10

    .line 570
    :goto_13
    move-wide/from16 v16, v7

    .line 571
    .line 572
    goto :goto_15

    .line 573
    :cond_1a
    if-ne v1, v2, :cond_1c

    .line 574
    .line 575
    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    .line 576
    .line 577
    .line 578
    .line 579
    .line 580
    iget-wide v1, v1, LI0/l;->n:J

    .line 581
    .line 582
    cmp-long v6, v1, v12

    .line 583
    .line 584
    if-eqz v6, :cond_1b

    .line 585
    .line 586
    div-long/2addr v1, v10

    .line 587
    goto :goto_14

    .line 588
    :cond_1b
    div-long/2addr v7, v10

    .line 589
    move-wide v1, v7

    .line 590
    :goto_14
    move-wide/from16 v16, v1

    .line 591
    .line 592
    goto :goto_15

    .line 593
    :cond_1c
    const-wide/16 v16, 0x0

    .line 594
    .line 595
    :goto_15
    invoke-static/range {v16 .. v17}, Lp0/M;->e0(J)J

    .line 596
    .line 597
    .line 598
    move-result-wide v1

    .line 599
    add-long/2addr v1, v3

    .line 600
    move-object/from16 v3, p2

    .line 601
    .line 602
    iget-wide v3, v3, LO0/p;->b:J

    .line 603
    .line 604
    sub-long/2addr v1, v3

    .line 605
    iput-wide v1, v0, LI0/b;->M:J

    .line 606
    .line 607
    iget-object v1, v0, LI0/b;->J:LI0/l;

    .line 608
    .line 609
    iget-boolean v1, v1, LI0/l;->o:Z

    .line 610
    .line 611
    if-nez v1, :cond_1e

    .line 612
    .line 613
    iget-object v1, v5, LI0/c;->Q:Landroid/net/Uri;

    .line 614
    .line 615
    invoke-virtual {v9, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 616
    .line 617
    .line 618
    move-result v1

    .line 619
    if-nez v1, :cond_1d

    .line 620
    .line 621
    iget-boolean v1, v0, LI0/b;->Q:Z

    .line 622
    .line 623
    if-eqz v1, :cond_1e

    .line 624
    .line 625
    :cond_1d
    invoke-virtual/range {p0 .. p0}, LI0/b;->b()Landroid/net/Uri;

    .line 626
    .line 627
    .line 628
    move-result-object v1

    .line 629
    invoke-virtual {v0, v1}, LI0/b;->f(Landroid/net/Uri;)V

    .line 630
    .line 631
    .line 632
    :cond_1e
    return-void
.end method

.method public final n(LS0/j;JJLjava/io/IOException;I)LS0/g;
    .locals 7

    .line 1
    check-cast p1, LS0/p;

    .line 2
    .line 3
    new-instance p2, LO0/p;

    .line 4
    .line 5
    iget-wide v0, p1, LS0/p;->G:J

    .line 6
    .line 7
    iget-object p3, p1, LS0/p;->J:Ls0/M;

    .line 8
    .line 9
    iget-object v0, p3, Ls0/M;->c:Landroid/net/Uri;

    .line 10
    .line 11
    iget-object p3, p3, Ls0/M;->d:Ljava/util/Map;

    .line 12
    .line 13
    invoke-direct {p2, p3, p4, p5}, LO0/p;-><init>(Ljava/util/Map;J)V

    .line 14
    .line 15
    .line 16
    const-string p3, "_HLS_msn"

    .line 17
    .line 18
    invoke-virtual {v0, p3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p3

    .line 22
    const/4 p4, 0x0

    .line 23
    const/4 p5, 0x1

    .line 24
    if-eqz p3, :cond_0

    .line 25
    .line 26
    const/4 p3, 0x1

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 p3, 0x0

    .line 29
    :goto_0
    instance-of v0, p6, LI0/q;

    .line 30
    .line 31
    iget-object v6, p0, LI0/b;->R:LI0/c;

    .line 32
    .line 33
    iget p1, p1, LS0/p;->I:I

    .line 34
    .line 35
    if-nez p3, :cond_1

    .line 36
    .line 37
    if-eqz v0, :cond_3

    .line 38
    .line 39
    :cond_1
    instance-of p3, p6, Ls0/A;

    .line 40
    .line 41
    if-eqz p3, :cond_2

    .line 42
    .line 43
    move-object p3, p6

    .line 44
    check-cast p3, Ls0/A;

    .line 45
    .line 46
    iget p3, p3, Ls0/A;->J:I

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_2
    const p3, 0x7fffffff

    .line 50
    .line 51
    .line 52
    :goto_1
    if-nez v0, :cond_7

    .line 53
    .line 54
    const/16 v0, 0x190

    .line 55
    .line 56
    if-eq p3, v0, :cond_7

    .line 57
    .line 58
    const/16 v0, 0x1f7

    .line 59
    .line 60
    if-ne p3, v0, :cond_3

    .line 61
    .line 62
    goto :goto_4

    .line 63
    :cond_3
    new-instance v2, LO0/u;

    .line 64
    .line 65
    invoke-direct {v2, p1}, LO0/u;-><init>(I)V

    .line 66
    .line 67
    .line 68
    new-instance p3, LB0/w0;

    .line 69
    .line 70
    const/4 v5, 0x1

    .line 71
    move-object v0, p3

    .line 72
    move-object v1, p2

    .line 73
    move-object v3, p6

    .line 74
    move v4, p7

    .line 75
    invoke-direct/range {v0 .. v5}, LB0/w0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/io/Serializable;II)V

    .line 76
    .line 77
    .line 78
    iget-object p7, v6, LI0/c;->K:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 79
    .line 80
    invoke-virtual {p7}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 81
    .line 82
    .line 83
    move-result-object p7

    .line 84
    const/4 v0, 0x0

    .line 85
    :goto_2
    invoke-interface {p7}, Ljava/util/Iterator;->hasNext()Z

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    if-eqz v1, :cond_4

    .line 90
    .line 91
    invoke-interface {p7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    check-cast v1, LI0/t;

    .line 96
    .line 97
    iget-object v2, p0, LI0/b;->G:Landroid/net/Uri;

    .line 98
    .line 99
    invoke-interface {v1, v2, p3, p4}, LI0/t;->c(Landroid/net/Uri;LB0/w0;Z)Z

    .line 100
    .line 101
    .line 102
    move-result v1

    .line 103
    xor-int/2addr v1, p5

    .line 104
    or-int/2addr v0, v1

    .line 105
    goto :goto_2

    .line 106
    :cond_4
    iget-object p7, v6, LI0/c;->I:LU4/b;

    .line 107
    .line 108
    if-eqz v0, :cond_6

    .line 109
    .line 110
    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 111
    .line 112
    .line 113
    invoke-static {p3}, LU4/b;->Z(LB0/w0;)J

    .line 114
    .line 115
    .line 116
    move-result-wide v0

    .line 117
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    cmp-long p3, v0, v2

    .line 123
    .line 124
    if-eqz p3, :cond_5

    .line 125
    .line 126
    invoke-static {v0, v1, p4}, LS0/m;->c(JZ)LS0/g;

    .line 127
    .line 128
    .line 129
    move-result-object p3

    .line 130
    goto :goto_3

    .line 131
    :cond_5
    sget-object p3, LS0/m;->L:LS0/g;

    .line 132
    .line 133
    goto :goto_3

    .line 134
    :cond_6
    sget-object p3, LS0/m;->K:LS0/g;

    .line 135
    .line 136
    :goto_3
    invoke-virtual {p3}, LS0/g;->a()Z

    .line 137
    .line 138
    .line 139
    move-result p4

    .line 140
    xor-int/2addr p4, p5

    .line 141
    iget-object p5, v6, LI0/c;->L:LO0/D;

    .line 142
    .line 143
    invoke-virtual {p5, p2, p1, p6, p4}, LO0/D;->f(LO0/p;ILjava/io/IOException;Z)V

    .line 144
    .line 145
    .line 146
    if-eqz p4, :cond_8

    .line 147
    .line 148
    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 149
    .line 150
    .line 151
    goto :goto_5

    .line 152
    :cond_7
    :goto_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 153
    .line 154
    .line 155
    move-result-wide v0

    .line 156
    iput-wide v0, p0, LI0/b;->M:J

    .line 157
    .line 158
    invoke-virtual {p0, p4}, LI0/b;->d(Z)V

    .line 159
    .line 160
    .line 161
    iget-object p3, v6, LI0/c;->L:LO0/D;

    .line 162
    .line 163
    sget-object p4, Lp0/M;->a:Ljava/lang/String;

    .line 164
    .line 165
    invoke-virtual {p3, p2, p1, p6, p5}, LO0/D;->f(LO0/p;ILjava/io/IOException;Z)V

    .line 166
    .line 167
    .line 168
    sget-object p3, LS0/m;->K:LS0/g;

    .line 169
    .line 170
    :cond_8
    :goto_5
    return-object p3
.end method

.method public final o(LS0/j;JJ)V
    .locals 14

    .line 1
    move-object v0, p0

    .line 2
    move-object v1, p1

    .line 3
    check-cast v1, LS0/p;

    .line 4
    .line 5
    iget-object v2, v1, LS0/p;->L:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v2, LI0/p;

    .line 8
    .line 9
    new-instance v4, LO0/p;

    .line 10
    .line 11
    iget-object v1, v1, LS0/p;->J:Ls0/M;

    .line 12
    .line 13
    iget-object v3, v1, Ls0/M;->c:Landroid/net/Uri;

    .line 14
    .line 15
    iget-object v1, v1, Ls0/M;->d:Ljava/util/Map;

    .line 16
    .line 17
    move-wide/from16 v5, p4

    .line 18
    .line 19
    invoke-direct {v4, v1, v5, v6}, LO0/p;-><init>(Ljava/util/Map;J)V

    .line 20
    .line 21
    .line 22
    instance-of v1, v2, LI0/l;

    .line 23
    .line 24
    const/4 v5, 0x4

    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    check-cast v2, LI0/l;

    .line 28
    .line 29
    invoke-virtual {p0, v2, v4}, LI0/b;->g(LI0/l;LO0/p;)V

    .line 30
    .line 31
    .line 32
    iget-object v1, v0, LI0/b;->R:LI0/c;

    .line 33
    .line 34
    iget-object v3, v1, LI0/c;->L:LO0/D;

    .line 35
    .line 36
    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    const/4 v6, -0x1

    .line 47
    const/4 v7, 0x0

    .line 48
    const/4 v8, 0x0

    .line 49
    const/4 v9, 0x0

    .line 50
    invoke-virtual/range {v3 .. v13}, LO0/D;->d(LO0/p;IILm0/t;ILjava/lang/Object;JJ)V

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_0
    const-string v1, "Loaded playlist has unexpected type."

    .line 55
    .line 56
    const/4 v2, 0x0

    .line 57
    invoke-static {v1, v2}, Lm0/P;->b(Ljava/lang/String;Ljava/lang/Exception;)Lm0/P;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    iput-object v1, v0, LI0/b;->P:Ljava/io/IOException;

    .line 62
    .line 63
    iget-object v2, v0, LI0/b;->R:LI0/c;

    .line 64
    .line 65
    iget-object v2, v2, LI0/c;->L:LO0/D;

    .line 66
    .line 67
    const/4 v3, 0x1

    .line 68
    invoke-virtual {v2, v4, v5, v1, v3}, LO0/D;->f(LO0/p;ILjava/io/IOException;Z)V

    .line 69
    .line 70
    .line 71
    :goto_0
    iget-object v1, v0, LI0/b;->R:LI0/c;

    .line 72
    .line 73
    iget-object v1, v1, LI0/c;->I:LU4/b;

    .line 74
    .line 75
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 76
    .line 77
    .line 78
    return-void
.end method

.method public final p(LS0/j;JJI)V
    .locals 14

    .line 1
    move-object v0, p1

    .line 2
    check-cast v0, LS0/p;

    .line 3
    .line 4
    if-nez p6, :cond_0

    .line 5
    .line 6
    new-instance v7, LO0/p;

    .line 7
    .line 8
    iget-wide v2, v0, LS0/p;->G:J

    .line 9
    .line 10
    iget-object v4, v0, LS0/p;->H:Ls0/m;

    .line 11
    .line 12
    move-object v1, v7

    .line 13
    move-wide/from16 v5, p2

    .line 14
    .line 15
    invoke-direct/range {v1 .. v6}, LO0/p;-><init>(JLs0/m;J)V

    .line 16
    .line 17
    .line 18
    move-object v13, p0

    .line 19
    move-object v2, v7

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    new-instance v1, LO0/p;

    .line 22
    .line 23
    iget-wide v2, v0, LS0/p;->G:J

    .line 24
    .line 25
    iget-object v2, v0, LS0/p;->J:Ls0/M;

    .line 26
    .line 27
    iget-object v3, v2, Ls0/M;->c:Landroid/net/Uri;

    .line 28
    .line 29
    iget-object v2, v2, Ls0/M;->d:Ljava/util/Map;

    .line 30
    .line 31
    move-wide/from16 v3, p4

    .line 32
    .line 33
    invoke-direct {v1, v2, v3, v4}, LO0/p;-><init>(Ljava/util/Map;J)V

    .line 34
    .line 35
    .line 36
    move-object v13, p0

    .line 37
    move-object v2, v1

    .line 38
    :goto_0
    iget-object v1, v13, LI0/b;->R:LI0/c;

    .line 39
    .line 40
    iget-object v1, v1, LI0/c;->L:LO0/D;

    .line 41
    .line 42
    iget v3, v0, LS0/p;->I:I

    .line 43
    .line 44
    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    const/4 v4, -0x1

    .line 55
    const/4 v5, 0x0

    .line 56
    const/4 v6, 0x0

    .line 57
    const/4 v7, 0x0

    .line 58
    move/from16 v12, p6

    .line 59
    .line 60
    invoke-virtual/range {v1 .. v12}, LO0/D;->g(LO0/p;IILm0/t;ILjava/lang/Object;JJI)V

    .line 61
    .line 62
    .line 63
    return-void
.end method
