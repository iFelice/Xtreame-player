.class public final Ly2/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ly2/u;
.implements LA2/g;
.implements Ly2/w;


# static fields
.field public static final h:Z


# instance fields
.field public final a:Lm2/e;

.field public final b:LU1/f;

.field public final c:LA2/f;

.field public final d:Ll/s1;

.field public final e:LP0/j;

.field public final f:LF/d;

.field public final g:Ly2/c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "Engine"

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    sput-boolean v0, Ly2/p;->h:Z

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>(LA2/f;LA2/d;LB2/c;LB2/c;LB2/c;LB2/c;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ly2/p;->c:LA2/f;

    .line 5
    .line 6
    new-instance v0, LJ3/k;

    .line 7
    .line 8
    invoke-direct {v0, p2}, LJ3/k;-><init>(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    new-instance p2, Ly2/c;

    .line 12
    .line 13
    invoke-direct {p2}, Ly2/c;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p2, p0, Ly2/p;->g:Ly2/c;

    .line 17
    .line 18
    monitor-enter p0

    .line 19
    :try_start_0
    monitor-enter p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    :try_start_1
    iput-object p0, p2, Ly2/c;->e:Ly2/w;

    .line 21
    .line 22
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 23
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 24
    new-instance p2, LU1/f;

    .line 25
    .line 26
    const/16 v1, 0x10

    .line 27
    .line 28
    const/4 v2, 0x0

    .line 29
    invoke-direct {p2, v1, v2}, LU1/f;-><init>(ILjava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    iput-object p2, p0, Ly2/p;->b:LU1/f;

    .line 33
    .line 34
    new-instance p2, Lm2/e;

    .line 35
    .line 36
    const/16 v1, 0x9

    .line 37
    .line 38
    invoke-direct {p2, v1, v2}, Lm2/e;-><init>(ILjava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    iput-object p2, p0, Ly2/p;->a:Lm2/e;

    .line 42
    .line 43
    new-instance p2, Ll/s1;

    .line 44
    .line 45
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 46
    .line 47
    .line 48
    new-instance v1, LD0/U;

    .line 49
    .line 50
    const/16 v2, 0x1a

    .line 51
    .line 52
    invoke-direct {v1, p2, v2}, LD0/U;-><init>(Ljava/lang/Object;I)V

    .line 53
    .line 54
    .line 55
    new-instance v2, LM/d;

    .line 56
    .line 57
    const/16 v3, 0x96

    .line 58
    .line 59
    invoke-direct {v2, v3}, LM/d;-><init>(I)V

    .line 60
    .line 61
    .line 62
    sget-object v3, LQ2/d;->a:LF2/G;

    .line 63
    .line 64
    new-instance v4, Lm2/u;

    .line 65
    .line 66
    const/16 v5, 0x1c

    .line 67
    .line 68
    invoke-direct {v4, v2, v1, v3, v5}, Lm2/u;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 69
    .line 70
    .line 71
    iput-object v4, p2, Ll/s1;->g:Ljava/lang/Object;

    .line 72
    .line 73
    iput-object p3, p2, Ll/s1;->a:Ljava/lang/Object;

    .line 74
    .line 75
    iput-object p4, p2, Ll/s1;->b:Ljava/lang/Object;

    .line 76
    .line 77
    iput-object p5, p2, Ll/s1;->c:Ljava/lang/Object;

    .line 78
    .line 79
    iput-object p6, p2, Ll/s1;->d:Ljava/lang/Object;

    .line 80
    .line 81
    iput-object p0, p2, Ll/s1;->e:Ljava/lang/Object;

    .line 82
    .line 83
    iput-object p0, p2, Ll/s1;->f:Ljava/lang/Object;

    .line 84
    .line 85
    iput-object p2, p0, Ly2/p;->d:Ll/s1;

    .line 86
    .line 87
    new-instance p2, LF/d;

    .line 88
    .line 89
    invoke-direct {p2, v0}, LF/d;-><init>(LJ3/k;)V

    .line 90
    .line 91
    .line 92
    iput-object p2, p0, Ly2/p;->f:LF/d;

    .line 93
    .line 94
    new-instance p2, LP0/j;

    .line 95
    .line 96
    const/4 p3, 0x2

    .line 97
    invoke-direct {p2, p3}, LP0/j;-><init>(I)V

    .line 98
    .line 99
    .line 100
    iput-object p2, p0, Ly2/p;->e:LP0/j;

    .line 101
    .line 102
    iput-object p0, p1, LA2/f;->e:Ljava/lang/Object;

    .line 103
    .line 104
    return-void

    .line 105
    :catchall_0
    move-exception p1

    .line 106
    goto :goto_0

    .line 107
    :catchall_1
    move-exception p1

    .line 108
    :try_start_3
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 109
    :try_start_4
    throw p1

    .line 110
    :goto_0
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 111
    throw p1
.end method

.method public static d(Ljava/lang/String;JLw2/i;)V
    .locals 1

    .line 1
    const-string v0, " in "

    .line 2
    .line 3
    invoke-static {p0, v0}, La/r;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {p1, p2}, LP2/i;->a(J)D

    .line 8
    .line 9
    .line 10
    move-result-wide p1

    .line 11
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string p1, "ms, key: "

    .line 15
    .line 16
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    const-string p1, "Engine"

    .line 27
    .line 28
    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public static g(Ly2/D;)V
    .locals 1

    .line 1
    instance-of v0, p0, Ly2/x;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p0, Ly2/x;

    .line 6
    .line 7
    invoke-virtual {p0}, Ly2/x;->c()V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 12
    .line 13
    const-string v0, "Cannot release anything but an EngineResource"

    .line 14
    .line 15
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    throw p0
.end method


# virtual methods
.method public final a(Lcom/bumptech/glide/f;Ljava/lang/Object;Lw2/i;IILjava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/g;Ly2/o;LP2/d;ZZLw2/l;ZZZZLL2/g;Ljava/util/concurrent/Executor;)Ly2/k;
    .locals 24

    .line 1
    move-object/from16 v15, p0

    .line 2
    .line 3
    sget-boolean v0, Ly2/p;->h:Z

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    sget v0, LP2/i;->b:I

    .line 8
    .line 9
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    :goto_0
    move-wide v13, v0

    .line 14
    goto :goto_1

    .line 15
    :cond_0
    const-wide/16 v0, 0x0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :goto_1
    iget-object v0, v15, Ly2/p;->b:LU1/f;

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    new-instance v0, Ly2/v;

    .line 24
    .line 25
    move-object v1, v0

    .line 26
    move-object/from16 v2, p2

    .line 27
    .line 28
    move-object/from16 v3, p3

    .line 29
    .line 30
    move/from16 v4, p4

    .line 31
    .line 32
    move/from16 v5, p5

    .line 33
    .line 34
    move-object/from16 v6, p10

    .line 35
    .line 36
    move-object/from16 v7, p6

    .line 37
    .line 38
    move-object/from16 v8, p7

    .line 39
    .line 40
    move-object/from16 v9, p13

    .line 41
    .line 42
    invoke-direct/range {v1 .. v9}, Ly2/v;-><init>(Ljava/lang/Object;Lw2/i;IILP2/d;Ljava/lang/Class;Ljava/lang/Class;Lw2/l;)V

    .line 43
    .line 44
    .line 45
    monitor-enter p0

    .line 46
    move/from16 v12, p14

    .line 47
    .line 48
    :try_start_0
    invoke-virtual {v15, v0, v12, v13, v14}, Ly2/p;->c(Ly2/v;ZJ)Ly2/x;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    if-nez v1, :cond_1

    .line 53
    .line 54
    move-object/from16 v1, p0

    .line 55
    .line 56
    move-object/from16 v2, p1

    .line 57
    .line 58
    move-object/from16 v3, p2

    .line 59
    .line 60
    move-object/from16 v4, p3

    .line 61
    .line 62
    move/from16 v5, p4

    .line 63
    .line 64
    move/from16 v6, p5

    .line 65
    .line 66
    move-object/from16 v7, p6

    .line 67
    .line 68
    move-object/from16 v8, p7

    .line 69
    .line 70
    move-object/from16 v9, p8

    .line 71
    .line 72
    move-object/from16 v10, p9

    .line 73
    .line 74
    move-object/from16 v11, p10

    .line 75
    .line 76
    move/from16 v12, p11

    .line 77
    .line 78
    move-wide/from16 v22, v13

    .line 79
    .line 80
    move/from16 v13, p12

    .line 81
    .line 82
    move-object/from16 v14, p13

    .line 83
    .line 84
    move/from16 v15, p14

    .line 85
    .line 86
    move/from16 v16, p15

    .line 87
    .line 88
    move/from16 v17, p16

    .line 89
    .line 90
    move/from16 v18, p17

    .line 91
    .line 92
    move-object/from16 v19, p18

    .line 93
    .line 94
    move-object/from16 v20, p19

    .line 95
    .line 96
    move-object/from16 v21, v0

    .line 97
    .line 98
    invoke-virtual/range {v1 .. v23}, Ly2/p;->h(Lcom/bumptech/glide/f;Ljava/lang/Object;Lw2/i;IILjava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/g;Ly2/o;LP2/d;ZZLw2/l;ZZZZLL2/g;Ljava/util/concurrent/Executor;Ly2/v;J)Ly2/k;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    monitor-exit p0

    .line 103
    return-object v0

    .line 104
    :catchall_0
    move-exception v0

    .line 105
    goto :goto_2

    .line 106
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    sget-object v0, Lw2/a;->K:Lw2/a;

    .line 108
    .line 109
    const/4 v2, 0x0

    .line 110
    move-object/from16 v3, p18

    .line 111
    .line 112
    check-cast v3, LL2/h;

    .line 113
    .line 114
    invoke-virtual {v3, v1, v0, v2}, LL2/h;->k(Ly2/D;Lw2/a;Z)V

    .line 115
    .line 116
    .line 117
    const/4 v0, 0x0

    .line 118
    return-object v0

    .line 119
    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 120
    throw v0
.end method

.method public final b(Lw2/i;)Ly2/x;
    .locals 9

    .line 1
    iget-object v0, p0, Ly2/p;->c:LA2/f;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, v0, LP2/k;->a:Ljava/util/LinkedHashMap;

    .line 5
    .line 6
    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    check-cast v1, LP2/j;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    monitor-exit v0

    .line 16
    move-object v1, v2

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    :try_start_1
    iget-wide v3, v0, LP2/k;->c:J

    .line 19
    .line 20
    iget v5, v1, LP2/j;->b:I

    .line 21
    .line 22
    int-to-long v5, v5

    .line 23
    sub-long/2addr v3, v5

    .line 24
    iput-wide v3, v0, LP2/k;->c:J

    .line 25
    .line 26
    iget-object v1, v1, LP2/j;->a:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27
    .line 28
    monitor-exit v0

    .line 29
    :goto_0
    move-object v4, v1

    .line 30
    check-cast v4, Ly2/D;

    .line 31
    .line 32
    if-nez v4, :cond_1

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_1
    instance-of v0, v4, Ly2/x;

    .line 36
    .line 37
    if-eqz v0, :cond_2

    .line 38
    .line 39
    move-object v2, v4

    .line 40
    check-cast v2, Ly2/x;

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_2
    new-instance v2, Ly2/x;

    .line 44
    .line 45
    const/4 v5, 0x1

    .line 46
    const/4 v6, 0x1

    .line 47
    move-object v3, v2

    .line 48
    move-object v7, p1

    .line 49
    move-object v8, p0

    .line 50
    invoke-direct/range {v3 .. v8}, Ly2/x;-><init>(Ly2/D;ZZLw2/i;Ly2/w;)V

    .line 51
    .line 52
    .line 53
    :goto_1
    if-eqz v2, :cond_3

    .line 54
    .line 55
    invoke-virtual {v2}, Ly2/x;->a()V

    .line 56
    .line 57
    .line 58
    iget-object v0, p0, Ly2/p;->g:Ly2/c;

    .line 59
    .line 60
    invoke-virtual {v0, p1, v2}, Ly2/c;->a(Lw2/i;Ly2/x;)V

    .line 61
    .line 62
    .line 63
    :cond_3
    return-object v2

    .line 64
    :catchall_0
    move-exception p1

    .line 65
    monitor-exit v0

    .line 66
    throw p1
.end method

.method public final c(Ly2/v;ZJ)Ly2/x;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p2, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    iget-object p2, p0, Ly2/p;->g:Ly2/c;

    .line 6
    .line 7
    monitor-enter p2

    .line 8
    :try_start_0
    iget-object v1, p2, Ly2/c;->c:Ljava/util/HashMap;

    .line 9
    .line 10
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    check-cast v1, Ly2/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    .line 16
    if-nez v1, :cond_1

    .line 17
    .line 18
    monitor-exit p2

    .line 19
    move-object v2, v0

    .line 20
    goto :goto_1

    .line 21
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    check-cast v2, Ly2/x;

    .line 26
    .line 27
    if-nez v2, :cond_2

    .line 28
    .line 29
    invoke-virtual {p2, v1}, Ly2/c;->b(Ly2/b;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :catchall_0
    move-exception p1

    .line 34
    goto :goto_2

    .line 35
    :cond_2
    :goto_0
    monitor-exit p2

    .line 36
    :goto_1
    if-eqz v2, :cond_3

    .line 37
    .line 38
    invoke-virtual {v2}, Ly2/x;->a()V

    .line 39
    .line 40
    .line 41
    :cond_3
    if-eqz v2, :cond_5

    .line 42
    .line 43
    sget-boolean p2, Ly2/p;->h:Z

    .line 44
    .line 45
    if-eqz p2, :cond_4

    .line 46
    .line 47
    const-string p2, "Loaded resource from active resources"

    .line 48
    .line 49
    invoke-static {p2, p3, p4, p1}, Ly2/p;->d(Ljava/lang/String;JLw2/i;)V

    .line 50
    .line 51
    .line 52
    :cond_4
    return-object v2

    .line 53
    :cond_5
    invoke-virtual {p0, p1}, Ly2/p;->b(Lw2/i;)Ly2/x;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    if-eqz p2, :cond_7

    .line 58
    .line 59
    sget-boolean v0, Ly2/p;->h:Z

    .line 60
    .line 61
    if-eqz v0, :cond_6

    .line 62
    .line 63
    const-string v0, "Loaded resource from cache"

    .line 64
    .line 65
    invoke-static {v0, p3, p4, p1}, Ly2/p;->d(Ljava/lang/String;JLw2/i;)V

    .line 66
    .line 67
    .line 68
    :cond_6
    return-object p2

    .line 69
    :cond_7
    return-object v0

    .line 70
    :goto_2
    monitor-exit p2

    .line 71
    throw p1
.end method

.method public final declared-synchronized e(Ly2/t;Lw2/i;Ly2/x;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    if-eqz p3, :cond_0

    .line 3
    .line 4
    :try_start_0
    iget-boolean v0, p3, Ly2/x;->G:Z

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Ly2/p;->g:Ly2/c;

    .line 9
    .line 10
    invoke-virtual {v0, p2, p3}, Ly2/c;->a(Lw2/i;Ly2/x;)V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :catchall_0
    move-exception p1

    .line 15
    goto :goto_3

    .line 16
    :cond_0
    :goto_0
    iget-object p3, p0, Ly2/p;->a:Lm2/e;

    .line 17
    .line 18
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    iget-boolean v0, p1, Ly2/t;->V:Z

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    iget-object p3, p3, Lm2/e;->I:Ljava/lang/Object;

    .line 26
    .line 27
    :goto_1
    check-cast p3, Ljava/util/Map;

    .line 28
    .line 29
    goto :goto_2

    .line 30
    :cond_1
    iget-object p3, p3, Lm2/e;->H:Ljava/lang/Object;

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :goto_2
    invoke-interface {p3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    if-eqz p1, :cond_2

    .line 42
    .line 43
    invoke-interface {p3, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    .line 45
    .line 46
    :cond_2
    monitor-exit p0

    .line 47
    return-void

    .line 48
    :goto_3
    monitor-exit p0

    .line 49
    throw p1
.end method

.method public final f(Lw2/i;Ly2/x;)V
    .locals 3

    .line 1
    iget-object v0, p0, Ly2/p;->g:Ly2/c;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, v0, Ly2/c;->c:Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    check-cast v1, Ly2/b;

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    iput-object v2, v1, Ly2/b;->c:Ly2/D;

    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    .line 19
    .line 20
    :cond_0
    monitor-exit v0

    .line 21
    iget-boolean v0, p2, Ly2/x;->G:Z

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    iget-object v0, p0, Ly2/p;->c:LA2/f;

    .line 26
    .line 27
    invoke-virtual {v0, p1, p2}, LP2/k;->d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    check-cast p1, Ly2/D;

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    iget-object p1, p0, Ly2/p;->e:LP0/j;

    .line 35
    .line 36
    const/4 v0, 0x0

    .line 37
    invoke-virtual {p1, p2, v0}, LP0/j;->b(Ly2/D;Z)V

    .line 38
    .line 39
    .line 40
    :goto_0
    return-void

    .line 41
    :catchall_0
    move-exception p1

    .line 42
    monitor-exit v0

    .line 43
    throw p1
.end method

.method public final h(Lcom/bumptech/glide/f;Ljava/lang/Object;Lw2/i;IILjava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/g;Ly2/o;LP2/d;ZZLw2/l;ZZZZLL2/g;Ljava/util/concurrent/Executor;Ly2/v;J)Ly2/k;
    .locals 16

    .line 1
    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p8

    move-object/from16 v7, p9

    move-object/from16 v8, p13

    move/from16 v9, p17

    move-object/from16 v10, p18

    move-object/from16 v11, p19

    move-object/from16 v12, p20

    move-wide/from16 v13, p21

    .line 2
    iget-object v15, v1, Ly2/p;->a:Lm2/e;

    if-eqz v9, :cond_0

    .line 3
    iget-object v15, v15, Lm2/e;->I:Ljava/lang/Object;

    .line 4
    :goto_0
    check-cast v15, Ljava/util/Map;

    goto :goto_1

    .line 5
    :cond_0
    iget-object v15, v15, Lm2/e;->H:Ljava/lang/Object;

    goto :goto_0

    .line 6
    :goto_1
    invoke-interface {v15, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ly2/t;

    if-eqz v15, :cond_2

    .line 7
    invoke-virtual {v15, v10, v11}, Ly2/t;->a(LL2/g;Ljava/util/concurrent/Executor;)V

    .line 8
    sget-boolean v0, Ly2/p;->h:Z

    if-eqz v0, :cond_1

    .line 9
    const-string v0, "Added to existing load"

    invoke-static {v0, v13, v14, v12}, Ly2/p;->d(Ljava/lang/String;JLw2/i;)V

    .line 10
    :cond_1
    new-instance v0, Ly2/k;

    invoke-direct {v0, v1, v10, v15}, Ly2/k;-><init>(Ly2/p;LL2/g;Ly2/t;)V

    return-object v0

    .line 11
    :cond_2
    iget-object v15, v1, Ly2/p;->d:Ll/s1;

    .line 12
    iget-object v15, v15, Ll/s1;->g:Ljava/lang/Object;

    check-cast v15, LM/c;

    invoke-interface {v15}, LM/c;->h()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ly2/t;

    .line 13
    const-string v13, "Argument must not be null"

    invoke-static {v15, v13}, Ln0/c;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    monitor-enter v15

    .line 15
    :try_start_0
    iput-object v12, v15, Ly2/t;->R:Lw2/i;

    move/from16 v13, p14

    .line 16
    iput-boolean v13, v15, Ly2/t;->S:Z

    move/from16 v13, p15

    .line 17
    iput-boolean v13, v15, Ly2/t;->T:Z

    move/from16 v13, p16

    .line 18
    iput-boolean v13, v15, Ly2/t;->U:Z

    .line 19
    iput-boolean v9, v15, Ly2/t;->V:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    monitor-exit v15

    .line 21
    iget-object v13, v1, Ly2/p;->f:LF/d;

    .line 22
    iget-object v14, v13, LF/d;->J:Ljava/lang/Object;

    check-cast v14, LM/c;

    invoke-interface {v14}, LM/c;->h()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ly2/l;

    .line 23
    const-string v10, "Argument must not be null"

    invoke-static {v14, v10}, Ln0/c;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    iget v10, v13, LF/d;->H:I

    add-int/lit8 v11, v10, 0x1

    iput v11, v13, LF/d;->H:I

    .line 25
    iget-object v11, v14, Ly2/l;->G:Ly2/i;

    iput-object v0, v11, Ly2/i;->c:Lcom/bumptech/glide/f;

    .line 26
    iput-object v2, v11, Ly2/i;->d:Ljava/lang/Object;

    .line 27
    iput-object v3, v11, Ly2/i;->n:Lw2/i;

    .line 28
    iput v4, v11, Ly2/i;->e:I

    .line 29
    iput v5, v11, Ly2/i;->f:I

    .line 30
    iput-object v7, v11, Ly2/i;->p:Ly2/o;

    move-object/from16 v13, p6

    .line 31
    iput-object v13, v11, Ly2/i;->g:Ljava/lang/Class;

    .line 32
    iget-object v13, v14, Ly2/l;->J:LJ3/k;

    iput-object v13, v11, Ly2/i;->h:LJ3/k;

    move-object/from16 v13, p7

    .line 33
    iput-object v13, v11, Ly2/i;->k:Ljava/lang/Class;

    .line 34
    iput-object v6, v11, Ly2/i;->o:Lcom/bumptech/glide/g;

    .line 35
    iput-object v8, v11, Ly2/i;->i:Lw2/l;

    move-object/from16 v13, p10

    .line 36
    iput-object v13, v11, Ly2/i;->j:Ljava/util/Map;

    move/from16 v13, p11

    .line 37
    iput-boolean v13, v11, Ly2/i;->q:Z

    move/from16 v13, p12

    .line 38
    iput-boolean v13, v11, Ly2/i;->r:Z

    .line 39
    iput-object v0, v14, Ly2/l;->N:Lcom/bumptech/glide/f;

    .line 40
    iput-object v3, v14, Ly2/l;->O:Lw2/i;

    .line 41
    iput-object v6, v14, Ly2/l;->P:Lcom/bumptech/glide/g;

    .line 42
    iput-object v12, v14, Ly2/l;->Q:Ly2/v;

    .line 43
    iput v4, v14, Ly2/l;->R:I

    .line 44
    iput v5, v14, Ly2/l;->S:I

    .line 45
    iput-object v7, v14, Ly2/l;->T:Ly2/o;

    .line 46
    iput-boolean v9, v14, Ly2/l;->Y:Z

    .line 47
    iput-object v8, v14, Ly2/l;->U:Lw2/l;

    .line 48
    iput-object v15, v14, Ly2/l;->V:Ly2/j;

    .line 49
    iput v10, v14, Ly2/l;->W:I

    const/4 v0, 0x1

    .line 50
    iput v0, v14, Ly2/l;->l0:I

    .line 51
    iput-object v2, v14, Ly2/l;->Z:Ljava/lang/Object;

    .line 52
    iget-object v0, v1, Ly2/p;->a:Lm2/e;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    iget-boolean v2, v15, Ly2/t;->V:Z

    if-eqz v2, :cond_3

    .line 54
    iget-object v0, v0, Lm2/e;->I:Ljava/lang/Object;

    :goto_2
    check-cast v0, Ljava/util/Map;

    goto :goto_3

    :cond_3
    iget-object v0, v0, Lm2/e;->H:Ljava/lang/Object;

    goto :goto_2

    .line 55
    :goto_3
    invoke-interface {v0, v12, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p18

    move-object/from16 v2, p19

    .line 56
    invoke-virtual {v15, v0, v2}, Ly2/t;->a(LL2/g;Ljava/util/concurrent/Executor;)V

    .line 57
    invoke-virtual {v15, v14}, Ly2/t;->k(Ly2/l;)V

    .line 58
    sget-boolean v2, Ly2/p;->h:Z

    if-eqz v2, :cond_4

    .line 59
    const-string v2, "Started new load"

    move-wide/from16 v3, p21

    invoke-static {v2, v3, v4, v12}, Ly2/p;->d(Ljava/lang/String;JLw2/i;)V

    .line 60
    :cond_4
    new-instance v2, Ly2/k;

    invoke-direct {v2, v1, v0, v15}, Ly2/k;-><init>(Ly2/p;LL2/g;Ly2/t;)V

    return-object v2

    :catchall_0
    move-exception v0

    .line 61
    monitor-exit v15

    throw v0
.end method
