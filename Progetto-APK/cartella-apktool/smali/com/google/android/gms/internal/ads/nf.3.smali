.class public final Lcom/google/android/gms/internal/ads/nf;
.super Lcom/google/android/gms/internal/ads/jf;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/He;


# instance fields
.field public J:Lcom/google/android/gms/internal/ads/vf;

.field public K:Ljava/lang/String;

.field public L:Z

.field public M:Z

.field public N:Lcom/google/android/gms/internal/ads/bf;

.field public O:J

.field public P:J


# direct methods
.method public static final u(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "MD5"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lp3/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    const-string v0, "cache:"

    .line 12
    .line 13
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public static v(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string p0, "/"

    .line 22
    .line 23
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string p0, ":"

    .line 30
    .line 31
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    return-object p0
.end method


# virtual methods
.method public final a(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final b(JZ)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/jf;->I:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    move-object v2, v0

    .line 8
    check-cast v2, Lcom/google/android/gms/internal/ads/Oe;

    .line 9
    .line 10
    if-eqz v2, :cond_0

    .line 11
    .line 12
    sget-object v0, Lcom/google/android/gms/internal/ads/se;->e:Lcom/google/android/gms/internal/ads/re;

    .line 13
    .line 14
    new-instance v7, Lcom/google/android/gms/internal/ads/Te;

    .line 15
    .line 16
    const/4 v6, 0x1

    .line 17
    move-object v1, v7

    .line 18
    move v3, p3

    .line 19
    move-wide v4, p1

    .line 20
    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/Te;-><init>(Ljava/lang/Object;ZJI)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ads/re;->execute(Ljava/lang/Runnable;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void
.end method

.method public final c(Ljava/lang/Exception;)V
    .locals 2

    .line 1
    const-string v0, "Precache exception"

    .line 2
    .line 3
    invoke-static {v0, p1}, Lp3/h;->h(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lk3/l;->A:Lk3/l;

    .line 7
    .line 8
    iget-object v0, v0, Lk3/l;->g:Lcom/google/android/gms/internal/ads/le;

    .line 9
    .line 10
    const-string v1, "VideoStreamExoPlayerCache.onException"

    .line 11
    .line 12
    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/le;->h(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final e(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1

    .line 1
    const-string p1, "Precache error"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lp3/h;->h(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4
    .line 5
    .line 6
    sget-object p1, Lk3/l;->A:Lk3/l;

    .line 7
    .line 8
    iget-object p1, p1, Lk3/l;->g:Lcom/google/android/gms/internal/ads/le;

    .line 9
    .line 10
    const-string v0, "VideoStreamExoPlayerCache.onError"

    .line 11
    .line 12
    invoke-virtual {p1, v0, p2}, Lcom/google/android/gms/internal/ads/le;->h(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final h()V
    .locals 1

    .line 1
    const-string v0, "Precache onRenderedFirstFrame"

    .line 2
    .line 3
    invoke-static {v0}, Lp3/h;->g(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final i(II)V
    .locals 0

    .line 1
    return-void
.end method

.method public final j()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/nf;->J:Lcom/google/android/gms/internal/ads/vf;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/vf;->P:Lcom/google/android/gms/internal/ads/He;

    .line 7
    .line 8
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/vf;->M:Lcom/google/android/gms/internal/ads/aL;

    .line 9
    .line 10
    if-eqz v2, :cond_0

    .line 11
    .line 12
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/aL;->b(Lcom/google/android/gms/internal/ads/eL;)V

    .line 13
    .line 14
    .line 15
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/vf;->M:Lcom/google/android/gms/internal/ads/aL;

    .line 16
    .line 17
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/aL;->n()V

    .line 18
    .line 19
    .line 20
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/vf;->M:Lcom/google/android/gms/internal/ads/aL;

    .line 21
    .line 22
    sget-object v0, Lcom/google/android/gms/internal/ads/vf;->b0:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void
.end method

.method public final l()V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x1

    .line 3
    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/nf;->L:Z

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/nf;->j()V

    .line 9
    .line 10
    .line 11
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/nf;->K:Ljava/lang/String;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/nf;->u(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/nf;->K:Ljava/lang/String;

    .line 21
    .line 22
    const-string v2, "externalAbort"

    .line 23
    .line 24
    const-string v3, "Programmatic precache abort."

    .line 25
    .line 26
    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/google/android/gms/internal/ads/jf;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void

    .line 30
    :catchall_0
    move-exception v0

    .line 31
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    throw v0
.end method

.method public final n(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/nf;->J:Lcom/google/android/gms/internal/ads/vf;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/vf;->H:Lcom/google/android/gms/internal/ads/qf;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    int-to-long v1, p1

    .line 7
    const-wide/16 v3, 0x3e8

    .line 8
    .line 9
    mul-long v1, v1, v3

    .line 10
    .line 11
    :try_start_0
    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/qf;->d:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    .line 13
    monitor-exit v0

    .line 14
    return-void

    .line 15
    :catchall_0
    move-exception p1

    .line 16
    monitor-exit v0

    .line 17
    throw p1
.end method

.method public final o(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/nf;->J:Lcom/google/android/gms/internal/ads/vf;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/vf;->H:Lcom/google/android/gms/internal/ads/qf;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    int-to-long v1, p1

    .line 7
    const-wide/16 v3, 0x3e8

    .line 8
    .line 9
    mul-long v1, v1, v3

    .line 10
    .line 11
    :try_start_0
    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/qf;->e:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    .line 13
    monitor-exit v0

    .line 14
    return-void

    .line 15
    :catchall_0
    move-exception p1

    .line 16
    monitor-exit v0

    .line 17
    throw p1
.end method

.method public final p(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/nf;->J:Lcom/google/android/gms/internal/ads/vf;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/vf;->H:Lcom/google/android/gms/internal/ads/qf;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    int-to-long v1, p1

    .line 7
    const-wide/16 v3, 0x3e8

    .line 8
    .line 9
    mul-long v1, v1, v3

    .line 10
    .line 11
    :try_start_0
    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/qf;->c:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    .line 13
    monitor-exit v0

    .line 14
    return-void

    .line 15
    :catchall_0
    move-exception p1

    .line 16
    monitor-exit v0

    .line 17
    throw p1
.end method

.method public final q(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/nf;->J:Lcom/google/android/gms/internal/ads/vf;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/vf;->H:Lcom/google/android/gms/internal/ads/qf;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    int-to-long v1, p1

    .line 7
    const-wide/16 v3, 0x3e8

    .line 8
    .line 9
    mul-long v1, v1, v3

    .line 10
    .line 11
    :try_start_0
    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/qf;->b:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    .line 13
    monitor-exit v0

    .line 14
    return-void

    .line 15
    :catchall_0
    move-exception p1

    .line 16
    monitor-exit v0

    .line 17
    throw p1
.end method

.method public final r(Ljava/lang/String;)Z
    .locals 1

    .line 1
    filled-new-array {p1}, [Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/nf;->s(Ljava/lang/String;[Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public final s(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 44

    .line 1
    move-object/from16 v15, p0

    .line 2
    .line 3
    move-object/from16 v13, p1

    .line 4
    .line 5
    move-object/from16 v0, p2

    .line 6
    .line 7
    iput-object v13, v15, Lcom/google/android/gms/internal/ads/nf;->K:Ljava/lang/String;

    .line 8
    .line 9
    const-string v18, "error"

    .line 10
    .line 11
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/nf;->u(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v14

    .line 15
    const/4 v11, 0x0

    .line 16
    :try_start_0
    array-length v1, v0

    .line 17
    new-array v1, v1, [Landroid/net/Uri;

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    :goto_0
    array-length v3, v0

    .line 21
    if-ge v2, v3, :cond_0

    .line 22
    .line 23
    aget-object v3, v0, v2

    .line 24
    .line 25
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    aput-object v3, v1, v2

    .line 30
    .line 31
    add-int/lit8 v2, v2, 0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :catch_0
    move-exception v0

    .line 35
    move-object/from16 v31, v14

    .line 36
    .line 37
    move-object v3, v15

    .line 38
    const/16 v30, 0x0

    .line 39
    .line 40
    goto/16 :goto_c

    .line 41
    .line 42
    :cond_0
    iget-object v0, v15, Lcom/google/android/gms/internal/ads/nf;->J:Lcom/google/android/gms/internal/ads/vf;

    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    invoke-static {v11}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-virtual {v0, v1, v2, v11}, Lcom/google/android/gms/internal/ads/vf;->o([Landroid/net/Uri;Ljava/nio/ByteBuffer;Z)V

    .line 52
    .line 53
    .line 54
    iget-object v0, v15, Lcom/google/android/gms/internal/ads/jf;->I:Ljava/lang/ref/WeakReference;

    .line 55
    .line 56
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    check-cast v0, Lcom/google/android/gms/internal/ads/Oe;

    .line 61
    .line 62
    if-eqz v0, :cond_1

    .line 63
    .line 64
    invoke-interface {v0, v14, v15}, Lcom/google/android/gms/internal/ads/Oe;->h(Ljava/lang/String;Lcom/google/android/gms/internal/ads/jf;)V

    .line 65
    .line 66
    .line 67
    :cond_1
    sget-object v0, Lk3/l;->A:Lk3/l;

    .line 68
    .line 69
    iget-object v0, v0, Lk3/l;->j:LP3/b;

    .line 70
    .line 71
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 72
    .line 73
    .line 74
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 75
    .line 76
    .line 77
    move-result-wide v19

    .line 78
    sget-object v0, Lcom/google/android/gms/internal/ads/Q7;->w:Lcom/google/android/gms/internal/ads/J7;

    .line 79
    .line 80
    sget-object v1, Ll3/q;->d:Ll3/q;

    .line 81
    .line 82
    iget-object v2, v1, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 83
    .line 84
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    check-cast v0, Ljava/lang/Long;

    .line 89
    .line 90
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 91
    .line 92
    .line 93
    move-result-wide v9

    .line 94
    sget-object v0, Lcom/google/android/gms/internal/ads/Q7;->v:Lcom/google/android/gms/internal/ads/J7;

    .line 95
    .line 96
    iget-object v2, v1, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 97
    .line 98
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    check-cast v0, Ljava/lang/Long;

    .line 103
    .line 104
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 105
    .line 106
    .line 107
    move-result-wide v2

    .line 108
    const-wide/16 v4, 0x3e8

    .line 109
    .line 110
    mul-long v7, v2, v4

    .line 111
    .line 112
    sget-object v0, Lcom/google/android/gms/internal/ads/Q7;->q:Lcom/google/android/gms/internal/ads/J7;

    .line 113
    .line 114
    iget-object v2, v1, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 115
    .line 116
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    check-cast v0, Ljava/lang/Integer;

    .line 121
    .line 122
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 123
    .line 124
    .line 125
    move-result v0

    .line 126
    int-to-long v5, v0

    .line 127
    sget-object v0, Lcom/google/android/gms/internal/ads/Q7;->I1:Lcom/google/android/gms/internal/ads/J7;

    .line 128
    .line 129
    iget-object v1, v1, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 130
    .line 131
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    check-cast v0, Ljava/lang/Boolean;

    .line 136
    .line 137
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 138
    .line 139
    .line 140
    move-result v0

    .line 141
    const-wide/16 v21, -0x1

    .line 142
    .line 143
    move-wide/from16 v1, v21

    .line 144
    .line 145
    :goto_1
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 147
    .line 148
    .line 149
    move-result-wide v3

    .line 150
    sub-long v3, v3, v19

    .line 151
    .line 152
    cmp-long v12, v3, v7

    .line 153
    .line 154
    if-gtz v12, :cond_e

    .line 155
    .line 156
    iget-boolean v3, v15, Lcom/google/android/gms/internal/ads/nf;->L:Z

    .line 157
    .line 158
    if-nez v3, :cond_d

    .line 159
    .line 160
    iget-boolean v3, v15, Lcom/google/android/gms/internal/ads/nf;->M:Z

    .line 161
    .line 162
    const/16 v23, 0x1

    .line 163
    .line 164
    if-eqz v3, :cond_2

    .line 165
    .line 166
    monitor-exit p0

    .line 167
    move-object v3, v15

    .line 168
    goto/16 :goto_9

    .line 169
    .line 170
    :cond_2
    iget-object v3, v15, Lcom/google/android/gms/internal/ads/nf;->J:Lcom/google/android/gms/internal/ads/vf;

    .line 171
    .line 172
    iget-object v3, v3, Lcom/google/android/gms/internal/ads/vf;->M:Lcom/google/android/gms/internal/ads/aL;

    .line 173
    .line 174
    if-eqz v3, :cond_c

    .line 175
    .line 176
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/aL;->e()J

    .line 177
    .line 178
    .line 179
    move-result-wide v24

    .line 180
    const-wide/16 v26, 0x0

    .line 181
    .line 182
    cmp-long v3, v24, v26

    .line 183
    .line 184
    if-lez v3, :cond_b

    .line 185
    .line 186
    iget-object v3, v15, Lcom/google/android/gms/internal/ads/nf;->J:Lcom/google/android/gms/internal/ads/vf;

    .line 187
    .line 188
    iget-object v3, v3, Lcom/google/android/gms/internal/ads/vf;->M:Lcom/google/android/gms/internal/ads/aL;

    .line 189
    .line 190
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/aL;->d()J

    .line 191
    .line 192
    .line 193
    move-result-wide v28

    .line 194
    cmp-long v3, v28, v1

    .line 195
    .line 196
    if-eqz v3, :cond_8

    .line 197
    .line 198
    cmp-long v1, v28, v26

    .line 199
    .line 200
    if-lez v1, :cond_3

    .line 201
    .line 202
    const/16 v16, 0x1

    .line 203
    .line 204
    goto :goto_2

    .line 205
    :cond_3
    const/16 v16, 0x0

    .line 206
    .line 207
    :goto_2
    if-eqz v0, :cond_5

    .line 208
    .line 209
    iget-object v1, v15, Lcom/google/android/gms/internal/ads/nf;->J:Lcom/google/android/gms/internal/ads/vf;

    .line 210
    .line 211
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/vf;->Y:Lcom/google/android/gms/internal/ads/rf;

    .line 212
    .line 213
    if-eqz v2, :cond_4

    .line 214
    .line 215
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/vf;->Y:Lcom/google/android/gms/internal/ads/rf;

    .line 216
    .line 217
    iget-boolean v2, v2, Lcom/google/android/gms/internal/ads/rf;->o:Z

    .line 218
    .line 219
    if-eqz v2, :cond_4

    .line 220
    .line 221
    move-wide/from16 v1, v26

    .line 222
    .line 223
    goto :goto_3

    .line 224
    :cond_4
    iget v1, v1, Lcom/google/android/gms/internal/ads/vf;->Q:I

    .line 225
    .line 226
    int-to-long v1, v1

    .line 227
    :goto_3
    move-wide/from16 v30, v1

    .line 228
    .line 229
    goto :goto_4

    .line 230
    :cond_5
    move-wide/from16 v30, v21

    .line 231
    .line 232
    :goto_4
    if-eqz v0, :cond_6

    .line 233
    .line 234
    iget-object v1, v15, Lcom/google/android/gms/internal/ads/nf;->J:Lcom/google/android/gms/internal/ads/vf;

    .line 235
    .line 236
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/vf;->s()J

    .line 237
    .line 238
    .line 239
    move-result-wide v1

    .line 240
    move-wide/from16 v32, v1

    .line 241
    .line 242
    goto :goto_5

    .line 243
    :cond_6
    move-wide/from16 v32, v21

    .line 244
    .line 245
    :goto_5
    if-eqz v0, :cond_7

    .line 246
    .line 247
    iget-object v1, v15, Lcom/google/android/gms/internal/ads/nf;->J:Lcom/google/android/gms/internal/ads/vf;

    .line 248
    .line 249
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/vf;->n()J

    .line 250
    .line 251
    .line 252
    move-result-wide v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 253
    move-wide/from16 v34, v1

    .line 254
    .line 255
    goto :goto_6

    .line 256
    :cond_7
    move-wide/from16 v34, v21

    .line 257
    .line 258
    :goto_6
    :try_start_2
    sget-object v1, Lcom/google/android/gms/internal/ads/vf;->a0:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 259
    .line 260
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 261
    .line 262
    .line 263
    move-result v17

    .line 264
    sget-object v1, Lcom/google/android/gms/internal/ads/vf;->b0:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 265
    .line 266
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 267
    .line 268
    .line 269
    move-result v36

    .line 270
    sget-object v12, Lp3/d;->b:LE1/W;

    .line 271
    .line 272
    new-instance v4, Lcom/google/android/gms/internal/ads/ef;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 273
    .line 274
    move-object v1, v4

    .line 275
    move-object/from16 v2, p0

    .line 276
    .line 277
    move-object/from16 v3, p1

    .line 278
    .line 279
    move/from16 p2, v0

    .line 280
    .line 281
    move-object v0, v4

    .line 282
    move-object v4, v14

    .line 283
    move-wide/from16 v37, v5

    .line 284
    .line 285
    move-wide/from16 v5, v28

    .line 286
    .line 287
    move-wide/from16 v39, v7

    .line 288
    .line 289
    move-wide/from16 v7, v24

    .line 290
    .line 291
    move-wide/from16 v41, v9

    .line 292
    .line 293
    move-wide/from16 v9, v30

    .line 294
    .line 295
    move-object/from16 v43, v12

    .line 296
    .line 297
    const/16 v30, 0x0

    .line 298
    .line 299
    move-wide/from16 v11, v32

    .line 300
    .line 301
    move-object/from16 v31, v14

    .line 302
    .line 303
    move-wide/from16 v13, v34

    .line 304
    .line 305
    move/from16 v15, v16

    .line 306
    .line 307
    move/from16 v16, v17

    .line 308
    .line 309
    move/from16 v17, v36

    .line 310
    .line 311
    :try_start_3
    invoke-direct/range {v1 .. v17}, Lcom/google/android/gms/internal/ads/ef;-><init>(Lcom/google/android/gms/internal/ads/jf;Ljava/lang/String;Ljava/lang/String;JJJJJZII)V

    .line 312
    .line 313
    .line 314
    move-object/from16 v1, v43

    .line 315
    .line 316
    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 317
    .line 318
    .line 319
    move-wide/from16 v1, v28

    .line 320
    .line 321
    goto :goto_7

    .line 322
    :catchall_0
    move-exception v0

    .line 323
    move-object/from16 v31, v14

    .line 324
    .line 325
    const/16 v30, 0x0

    .line 326
    .line 327
    goto :goto_8

    .line 328
    :cond_8
    move/from16 p2, v0

    .line 329
    .line 330
    move-wide/from16 v37, v5

    .line 331
    .line 332
    move-wide/from16 v39, v7

    .line 333
    .line 334
    move-wide/from16 v41, v9

    .line 335
    .line 336
    move-object/from16 v31, v14

    .line 337
    .line 338
    const/16 v30, 0x0

    .line 339
    .line 340
    :goto_7
    cmp-long v0, v28, v24

    .line 341
    .line 342
    if-ltz v0, :cond_9

    .line 343
    .line 344
    sget-object v0, Lp3/d;->b:LE1/W;

    .line 345
    .line 346
    new-instance v8, Lcom/google/android/gms/internal/ads/hf;

    .line 347
    .line 348
    const/4 v7, 0x0

    .line 349
    move-object v1, v8

    .line 350
    move-object/from16 v2, p0

    .line 351
    .line 352
    move-object/from16 v3, p1

    .line 353
    .line 354
    move-object/from16 v4, v31

    .line 355
    .line 356
    move-wide/from16 v5, v24

    .line 357
    .line 358
    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/hf;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;JI)V

    .line 359
    .line 360
    .line 361
    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 362
    .line 363
    .line 364
    move-object/from16 v3, p0

    .line 365
    .line 366
    :try_start_4
    monitor-exit p0

    .line 367
    goto :goto_9

    .line 368
    :catchall_1
    move-exception v0

    .line 369
    :goto_8
    move-object/from16 v3, p0

    .line 370
    .line 371
    goto/16 :goto_b

    .line 372
    .line 373
    :cond_9
    move-object/from16 v3, p0

    .line 374
    .line 375
    iget-object v0, v3, Lcom/google/android/gms/internal/ads/nf;->J:Lcom/google/android/gms/internal/ads/vf;

    .line 376
    .line 377
    iget v0, v0, Lcom/google/android/gms/internal/ads/vf;->Q:I

    .line 378
    .line 379
    int-to-long v4, v0

    .line 380
    cmp-long v0, v4, v37

    .line 381
    .line 382
    if-ltz v0, :cond_a

    .line 383
    .line 384
    cmp-long v0, v28, v26

    .line 385
    .line 386
    if-lez v0, :cond_a

    .line 387
    .line 388
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 389
    :goto_9
    return v23

    .line 390
    :cond_a
    move-wide/from16 v4, v41

    .line 391
    .line 392
    goto :goto_a

    .line 393
    :catchall_2
    move-exception v0

    .line 394
    goto/16 :goto_b

    .line 395
    .line 396
    :catchall_3
    move-exception v0

    .line 397
    move-object/from16 v31, v14

    .line 398
    .line 399
    move-object v3, v15

    .line 400
    const/16 v30, 0x0

    .line 401
    .line 402
    goto/16 :goto_b

    .line 403
    .line 404
    :cond_b
    move/from16 p2, v0

    .line 405
    .line 406
    move-wide/from16 v37, v5

    .line 407
    .line 408
    move-wide/from16 v39, v7

    .line 409
    .line 410
    move-object/from16 v31, v14

    .line 411
    .line 412
    move-object v3, v15

    .line 413
    const/16 v30, 0x0

    .line 414
    .line 415
    move-wide v4, v9

    .line 416
    :goto_a
    :try_start_5
    invoke-virtual {v3, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 417
    .line 418
    .line 419
    :try_start_6
    monitor-exit p0

    .line 420
    move-object/from16 v13, p1

    .line 421
    .line 422
    move/from16 v0, p2

    .line 423
    .line 424
    move-object v15, v3

    .line 425
    move-wide v9, v4

    .line 426
    move-object/from16 v14, v31

    .line 427
    .line 428
    move-wide/from16 v5, v37

    .line 429
    .line 430
    move-wide/from16 v7, v39

    .line 431
    .line 432
    const/4 v11, 0x0

    .line 433
    goto/16 :goto_1

    .line 434
    .line 435
    :catch_1
    const-string v18, "interrupted"

    .line 436
    .line 437
    new-instance v0, Ljava/io/IOException;

    .line 438
    .line 439
    const-string v1, "Wait interrupted."

    .line 440
    .line 441
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 442
    .line 443
    .line 444
    throw v0

    .line 445
    :cond_c
    move-object/from16 v31, v14

    .line 446
    .line 447
    move-object v3, v15

    .line 448
    const/16 v30, 0x0

    .line 449
    .line 450
    const-string v18, "exoPlayerReleased"

    .line 451
    .line 452
    new-instance v0, Ljava/io/IOException;

    .line 453
    .line 454
    const-string v1, "ExoPlayer was released during preloading."

    .line 455
    .line 456
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 457
    .line 458
    .line 459
    throw v0

    .line 460
    :cond_d
    move-object/from16 v31, v14

    .line 461
    .line 462
    move-object v3, v15

    .line 463
    const/16 v30, 0x0

    .line 464
    .line 465
    const-string v18, "externalAbort"

    .line 466
    .line 467
    new-instance v0, Ljava/io/IOException;

    .line 468
    .line 469
    const-string v1, "Abort requested before buffering finished. "

    .line 470
    .line 471
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 472
    .line 473
    .line 474
    throw v0

    .line 475
    :cond_e
    move-wide/from16 v39, v7

    .line 476
    .line 477
    move-object/from16 v31, v14

    .line 478
    .line 479
    move-object v3, v15

    .line 480
    const/16 v30, 0x0

    .line 481
    .line 482
    const-string v18, "downloadTimeout"

    .line 483
    .line 484
    new-instance v0, Ljava/io/IOException;

    .line 485
    .line 486
    new-instance v1, Ljava/lang/StringBuilder;

    .line 487
    .line 488
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 489
    .line 490
    .line 491
    const-string v2, "Timeout reached. Limit: "

    .line 492
    .line 493
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 494
    .line 495
    .line 496
    move-wide/from16 v4, v39

    .line 497
    .line 498
    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 499
    .line 500
    .line 501
    const-string v2, " ms"

    .line 502
    .line 503
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 504
    .line 505
    .line 506
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 507
    .line 508
    .line 509
    move-result-object v1

    .line 510
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 511
    .line 512
    .line 513
    throw v0

    .line 514
    :goto_b
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 515
    :try_start_7
    throw v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    .line 516
    :catch_2
    move-exception v0

    .line 517
    :goto_c
    move-object/from16 v1, v18

    .line 518
    .line 519
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 520
    .line 521
    .line 522
    move-result-object v2

    .line 523
    new-instance v4, Ljava/lang/StringBuilder;

    .line 524
    .line 525
    const-string v5, "Failed to preload url "

    .line 526
    .line 527
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 528
    .line 529
    .line 530
    move-object/from16 v5, p1

    .line 531
    .line 532
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 533
    .line 534
    .line 535
    const-string v6, " Exception: "

    .line 536
    .line 537
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 538
    .line 539
    .line 540
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 541
    .line 542
    .line 543
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 544
    .line 545
    .line 546
    move-result-object v2

    .line 547
    invoke-static {v2}, Lp3/h;->g(Ljava/lang/String;)V

    .line 548
    .line 549
    .line 550
    const-string v2, "VideoStreamExoPlayerCache.preload"

    .line 551
    .line 552
    sget-object v4, Lk3/l;->A:Lk3/l;

    .line 553
    .line 554
    iget-object v4, v4, Lk3/l;->g:Lcom/google/android/gms/internal/ads/le;

    .line 555
    .line 556
    invoke-virtual {v4, v2, v0}, Lcom/google/android/gms/internal/ads/le;->h(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 557
    .line 558
    .line 559
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/nf;->j()V

    .line 560
    .line 561
    .line 562
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/nf;->v(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    .line 563
    .line 564
    .line 565
    move-result-object v0

    .line 566
    move-object/from16 v2, v31

    .line 567
    .line 568
    invoke-virtual {v3, v5, v2, v1, v0}, Lcom/google/android/gms/internal/ads/jf;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 569
    .line 570
    .line 571
    return v30
.end method

.method public final t(Ljava/lang/String;[Ljava/lang/String;Lcom/google/android/gms/internal/ads/bf;)Z
    .locals 4

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/nf;->K:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/nf;->N:Lcom/google/android/gms/internal/ads/bf;

    .line 4
    .line 5
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/nf;->u(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p3

    .line 9
    const/4 v0, 0x0

    .line 10
    :try_start_0
    array-length v1, p2

    .line 11
    new-array v1, v1, [Landroid/net/Uri;

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    :goto_0
    array-length v3, p2

    .line 15
    if-ge v2, v3, :cond_0

    .line 16
    .line 17
    aget-object v3, p2, v2

    .line 18
    .line 19
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    aput-object v3, v1, v2

    .line 24
    .line 25
    add-int/lit8 v2, v2, 0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :catch_0
    move-exception p2

    .line 29
    goto :goto_1

    .line 30
    :cond_0
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/nf;->J:Lcom/google/android/gms/internal/ads/vf;

    .line 31
    .line 32
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-virtual {p2, v1, v2, v0}, Lcom/google/android/gms/internal/ads/vf;->o([Landroid/net/Uri;Ljava/nio/ByteBuffer;Z)V

    .line 40
    .line 41
    .line 42
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/jf;->I:Ljava/lang/ref/WeakReference;

    .line 43
    .line 44
    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    check-cast p2, Lcom/google/android/gms/internal/ads/Oe;

    .line 49
    .line 50
    if-eqz p2, :cond_1

    .line 51
    .line 52
    invoke-interface {p2, p3, p0}, Lcom/google/android/gms/internal/ads/Oe;->h(Ljava/lang/String;Lcom/google/android/gms/internal/ads/jf;)V

    .line 53
    .line 54
    .line 55
    :cond_1
    sget-object p2, Lk3/l;->A:Lk3/l;

    .line 56
    .line 57
    iget-object p2, p2, Lk3/l;->j:LP3/b;

    .line 58
    .line 59
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    .line 61
    .line 62
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 63
    .line 64
    .line 65
    move-result-wide v1

    .line 66
    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/nf;->O:J

    .line 67
    .line 68
    const-wide/16 v1, -0x1

    .line 69
    .line 70
    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/nf;->P:J

    .line 71
    .line 72
    sget-object p2, Lo3/O;->l:Lo3/J;

    .line 73
    .line 74
    new-instance v1, Lcom/google/android/gms/internal/ads/Pf;

    .line 75
    .line 76
    const/16 v2, 0xf

    .line 77
    .line 78
    invoke-direct {v1, p0, v2}, Lcom/google/android/gms/internal/ads/Pf;-><init>(Ljava/lang/Object;I)V

    .line 79
    .line 80
    .line 81
    const-wide/16 v2, 0x0

    .line 82
    .line 83
    invoke-virtual {p2, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    .line 85
    .line 86
    const/4 p1, 0x1

    .line 87
    return p1

    .line 88
    :goto_1
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    new-instance v2, Ljava/lang/StringBuilder;

    .line 93
    .line 94
    const-string v3, "Failed to preload url "

    .line 95
    .line 96
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    const-string v3, " Exception: "

    .line 103
    .line 104
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    invoke-static {v1}, Lp3/h;->g(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    sget-object v1, Lk3/l;->A:Lk3/l;

    .line 118
    .line 119
    iget-object v1, v1, Lk3/l;->g:Lcom/google/android/gms/internal/ads/le;

    .line 120
    .line 121
    const-string v2, "VideoStreamExoPlayerCache.preload"

    .line 122
    .line 123
    invoke-virtual {v1, v2, p2}, Lcom/google/android/gms/internal/ads/le;->h(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/nf;->j()V

    .line 127
    .line 128
    .line 129
    const-string v1, "error"

    .line 130
    .line 131
    invoke-static {v1, p2}, Lcom/google/android/gms/internal/ads/nf;->v(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object p2

    .line 135
    invoke-virtual {p0, p1, p3, v1, p2}, Lcom/google/android/gms/internal/ads/jf;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    return v0
.end method
