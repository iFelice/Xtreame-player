.class public final Lcom/google/android/gms/internal/ads/dv;
.super Ll3/I;
.source "SourceFile"

# interfaces
.implements Ln3/m;
.implements Lcom/google/android/gms/internal/ads/X5;


# instance fields
.field public final G:Lcom/google/android/gms/internal/ads/fg;

.field public final H:Landroid/content/Context;

.field public I:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final J:Ljava/lang/String;

.field public final K:Lcom/google/android/gms/internal/ads/bv;

.field public final L:Lcom/google/android/gms/internal/ads/av;

.field public final M:Lp3/a;

.field public final N:Lcom/google/android/gms/internal/ads/Fn;

.field public O:J

.field public P:Lcom/google/android/gms/internal/ads/Eh;

.field public Q:Lcom/google/android/gms/internal/ads/Ih;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/fg;Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/bv;Lcom/google/android/gms/internal/ads/av;Lp3/a;Lcom/google/android/gms/internal/ads/Fn;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ll3/I;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dv;->I:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 10
    .line 11
    const-wide/16 v0, -0x1

    .line 12
    .line 13
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/dv;->O:J

    .line 14
    .line 15
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dv;->G:Lcom/google/android/gms/internal/ads/fg;

    .line 16
    .line 17
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/dv;->H:Landroid/content/Context;

    .line 18
    .line 19
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/dv;->J:Ljava/lang/String;

    .line 20
    .line 21
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/dv;->K:Lcom/google/android/gms/internal/ads/bv;

    .line 22
    .line 23
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/dv;->L:Lcom/google/android/gms/internal/ads/av;

    .line 24
    .line 25
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/dv;->M:Lp3/a;

    .line 26
    .line 27
    iput-object p7, p0, Lcom/google/android/gms/internal/ads/dv;->N:Lcom/google/android/gms/internal/ads/Fn;

    .line 28
    .line 29
    iget-object p1, p5, Lcom/google/android/gms/internal/ads/av;->L:Ljava/util/concurrent/atomic/AtomicReference;

    .line 30
    .line 31
    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method


# virtual methods
.method public final declared-synchronized A()V
    .locals 0

    .line 1
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public final C0(Ll3/w;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final D()V
    .locals 0

    .line 1
    return-void
.end method

.method public final D2(LR3/a;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final E0(Ll3/h1;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dv;->K:Lcom/google/android/gms/internal/ads/bv;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/bv;->O:Lcom/google/android/gms/internal/ads/Xv;

    .line 4
    .line 5
    iput-object p1, v0, Lcom/google/android/gms/internal/ads/Xv;->i:Ll3/h1;

    .line 6
    .line 7
    return-void
.end method

.method public final declared-synchronized G0(Ll3/Y0;)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    monitor-exit p0

    .line 3
    return-void
.end method

.method public final H2(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public final I()V
    .locals 0

    .line 1
    return-void
.end method

.method public final L()V
    .locals 0

    .line 1
    return-void
.end method

.method public final N2(Ll3/q0;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final O2()V
    .locals 0

    .line 1
    return-void
.end method

.method public final P()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public final declared-synchronized R()Z
    .locals 1

    .line 1
    monitor-enter p0

    monitor-exit p0

    const/4 v0, 0x0

    return v0
.end method

.method public final S()V
    .locals 0

    .line 1
    return-void
.end method

.method public final S2(Ll3/b1;Ll3/z;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final U()V
    .locals 0

    .line 1
    return-void
.end method

.method public final Y()V
    .locals 0

    .line 1
    return-void
.end method

.method public final declared-synchronized a2(Ll3/Y;)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    monitor-exit p0

    .line 3
    return-void
.end method

.method public final declared-synchronized c0(Lcom/google/android/gms/internal/ads/Z7;)V
    .locals 0

    .line 1
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public final d3(Ll3/a0;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final declared-synchronized e()Ljava/lang/String;
    .locals 1

    .line 1
    monitor-enter p0

    monitor-exit p0

    const/4 v0, 0x0

    return-object v0
.end method

.method public final declared-synchronized f()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    const-string v0, "destroy must be called on the main UI thread."

    .line 3
    .line 4
    invoke-static {v0}, Lcom/bumptech/glide/c;->d(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dv;->Q:Lcom/google/android/gms/internal/ads/Ih;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Ih;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    .line 13
    .line 14
    monitor-exit p0

    .line 15
    return-void

    .line 16
    :catchall_0
    move-exception v0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    monitor-exit p0

    .line 19
    return-void

    .line 20
    :goto_0
    monitor-exit p0

    .line 21
    throw v0
.end method

.method public final g1(Lcom/google/android/gms/internal/ads/gd;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final h2(Ll3/t;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final declared-synchronized h3(Ll3/b1;)Z
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    const-string v0, "is_sdk_preload"

    .line 3
    .line 4
    iget-object v1, p1, Ll3/b1;->I:Landroid/os/Bundle;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto :goto_1

    .line 14
    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/p8;->b:Lcom/google/android/gms/internal/ads/f8;

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/f8;->l()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Ljava/lang/Boolean;

    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    sget-object v0, Lcom/google/android/gms/internal/ads/Q7;->xa:Lcom/google/android/gms/internal/ads/J7;

    .line 29
    .line 30
    sget-object v1, Ll3/q;->d:Ll3/q;

    .line 31
    .line 32
    iget-object v1, v1, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 33
    .line 34
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    check-cast v0, Ljava/lang/Boolean;

    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-eqz v0, :cond_1

    .line 45
    .line 46
    const/4 v0, 0x1

    .line 47
    goto :goto_0

    .line 48
    :cond_1
    const/4 v0, 0x0

    .line 49
    goto :goto_0

    .line 50
    :catchall_0
    move-exception p1

    .line 51
    goto :goto_3

    .line 52
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dv;->M:Lp3/a;

    .line 53
    .line 54
    iget v1, v1, Lp3/a;->I:I

    .line 55
    .line 56
    sget-object v3, Lcom/google/android/gms/internal/ads/Q7;->ya:Lcom/google/android/gms/internal/ads/J7;

    .line 57
    .line 58
    sget-object v4, Ll3/q;->d:Ll3/q;

    .line 59
    .line 60
    iget-object v4, v4, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 61
    .line 62
    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    check-cast v3, Ljava/lang/Integer;

    .line 67
    .line 68
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 69
    .line 70
    .line 71
    move-result v3

    .line 72
    if-lt v1, v3, :cond_2

    .line 73
    .line 74
    if-nez v0, :cond_3

    .line 75
    .line 76
    :cond_2
    const-string v0, "loadAd must be called on the main UI thread."

    .line 77
    .line 78
    invoke-static {v0}, Lcom/bumptech/glide/c;->d(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    :cond_3
    :goto_1
    sget-object v0, Lk3/l;->A:Lk3/l;

    .line 82
    .line 83
    iget-object v0, v0, Lk3/l;->c:Lo3/O;

    .line 84
    .line 85
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dv;->H:Landroid/content/Context;

    .line 86
    .line 87
    invoke-static {v0}, Lo3/O;->f(Landroid/content/Context;)Z

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    if-eqz v0, :cond_5

    .line 92
    .line 93
    iget-object v0, p1, Ll3/b1;->Y:Ll3/L;

    .line 94
    .line 95
    if-eqz v0, :cond_4

    .line 96
    .line 97
    goto :goto_2

    .line 98
    :cond_4
    const-string p1, "Failed to load the ad because app ID is missing."

    .line 99
    .line 100
    invoke-static {p1}, Lp3/h;->d(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/dv;->L:Lcom/google/android/gms/internal/ads/av;

    .line 104
    .line 105
    const/4 v0, 0x4

    .line 106
    const/4 v1, 0x0

    .line 107
    invoke-static {v0, v1, v1}, Lo3/r;->H(ILjava/lang/String;Ll3/z0;)Ll3/z0;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/av;->y(Ll3/z0;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    .line 113
    .line 114
    monitor-exit p0

    .line 115
    return v2

    .line 116
    :cond_5
    :goto_2
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dv;->j3()Z

    .line 117
    .line 118
    .line 119
    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 120
    if-eqz v0, :cond_6

    .line 121
    .line 122
    monitor-exit p0

    .line 123
    return v2

    .line 124
    :cond_6
    :try_start_2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 125
    .line 126
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 127
    .line 128
    .line 129
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dv;->I:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 130
    .line 131
    new-instance v0, LX1/i;

    .line 132
    .line 133
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 134
    .line 135
    .line 136
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dv;->K:Lcom/google/android/gms/internal/ads/bv;

    .line 137
    .line 138
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dv;->J:Ljava/lang/String;

    .line 139
    .line 140
    new-instance v3, Lcom/google/android/gms/internal/ads/Xu;

    .line 141
    .line 142
    const/4 v4, 0x2

    .line 143
    invoke-direct {v3, p0, v4}, Lcom/google/android/gms/internal/ads/Xu;-><init>(Ljava/lang/Object;I)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v1, p1, v2, v0, v3}, Lcom/google/android/gms/internal/ads/bv;->b(Ll3/b1;Ljava/lang/String;LQ3/b;Lcom/google/android/gms/internal/ads/ns;)Z

    .line 147
    .line 148
    .line 149
    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 150
    monitor-exit p0

    .line 151
    return p1

    .line 152
    :goto_3
    monitor-exit p0

    .line 153
    throw p1
.end method

.method public final declared-synchronized j3()Z
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dv;->K:Lcom/google/android/gms/internal/ads/bv;

    .line 3
    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/bv;->a()Z

    .line 5
    .line 6
    .line 7
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    monitor-exit p0

    .line 9
    return v0

    .line 10
    :catchall_0
    move-exception v0

    .line 11
    monitor-exit p0

    .line 12
    throw v0
.end method

.method public final k2(Lcom/google/android/gms/internal/ads/f6;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dv;->L:Lcom/google/android/gms/internal/ads/av;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/av;->H:Ljava/util/concurrent/atomic/AtomicReference;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final declared-synchronized k3()V
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dv;->Q:Lcom/google/android/gms/internal/ads/Ih;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    sget-object v1, Lk3/l;->A:Lk3/l;

    .line 7
    .line 8
    iget-object v1, v1, Lk3/l;->j:LP3/b;

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 14
    .line 15
    .line 16
    move-result-wide v1

    .line 17
    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/dv;->O:J

    .line 18
    .line 19
    sub-long/2addr v1, v3

    .line 20
    const/4 v3, 0x1

    .line 21
    invoke-virtual {v0, v3, v1, v2}, Lcom/google/android/gms/internal/ads/Ih;->d(IJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    .line 23
    .line 24
    monitor-exit p0

    .line 25
    return-void

    .line 26
    :catchall_0
    move-exception v0

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    monitor-exit p0

    .line 29
    return-void

    .line 30
    :goto_0
    monitor-exit p0

    .line 31
    throw v0
.end method

.method public final p0(Ll3/U;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final r()V
    .locals 0

    .line 1
    return-void
.end method

.method public final r1(I)V
    .locals 2

    .line 1
    if-eqz p1, :cond_3

    .line 2
    .line 3
    add-int/lit8 p1, p1, -0x1

    .line 4
    .line 5
    const/4 v0, 0x2

    .line 6
    if-eqz p1, :cond_2

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    if-eq p1, v1, :cond_1

    .line 10
    .line 11
    if-eq p1, v0, :cond_0

    .line 12
    .line 13
    const/4 p1, 0x6

    .line 14
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/dv;->z3(I)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    const/4 p1, 0x3

    .line 19
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/dv;->z3(I)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_1
    const/4 p1, 0x4

    .line 24
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/dv;->z3(I)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/dv;->z3(I)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_3
    const/4 p1, 0x0

    .line 33
    throw p1
.end method

.method public final declared-synchronized s3(Z)V
    .locals 0

    .line 1
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public final declared-synchronized t()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    const-string v0, "resume must be called on the main UI thread."

    .line 3
    .line 4
    invoke-static {v0}, Lcom/bumptech/glide/c;->d(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    .line 7
    monitor-exit p0

    .line 8
    return-void

    .line 9
    :catchall_0
    move-exception v0

    .line 10
    monitor-exit p0

    .line 11
    throw v0
.end method

.method public final declared-synchronized u0(Ll3/d1;)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    const-string p1, "setAdSize must be called on the main UI thread."

    .line 3
    .line 4
    invoke-static {p1}, Lcom/bumptech/glide/c;->d(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    .line 7
    monitor-exit p0

    .line 8
    return-void

    .line 9
    :catchall_0
    move-exception p1

    .line 10
    monitor-exit p0

    .line 11
    throw p1
.end method

.method public final u3()V
    .locals 0

    .line 1
    return-void
.end method

.method public final declared-synchronized v()V
    .locals 0

    .line 1
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public final declared-synchronized v0()V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dv;->Q:Lcom/google/android/gms/internal/ads/Ih;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    sget-object v0, Lk3/l;->A:Lk3/l;

    .line 8
    .line 9
    iget-object v1, v0, Lk3/l;->j:LP3/b;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 15
    .line 16
    .line 17
    move-result-wide v1

    .line 18
    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/dv;->O:J

    .line 19
    .line 20
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dv;->Q:Lcom/google/android/gms/internal/ads/Ih;

    .line 21
    .line 22
    iget v1, v1, Lcom/google/android/gms/internal/ads/Ih;->k:I

    .line 23
    .line 24
    if-lez v1, :cond_1

    .line 25
    .line 26
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dv;->G:Lcom/google/android/gms/internal/ads/fg;

    .line 27
    .line 28
    new-instance v3, Lcom/google/android/gms/internal/ads/Eh;

    .line 29
    .line 30
    check-cast v2, Lcom/google/android/gms/internal/ads/Bg;

    .line 31
    .line 32
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/Bg;->e:Lcom/google/android/gms/internal/ads/MJ;

    .line 33
    .line 34
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/QJ;->zzb()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    check-cast v2, Ljava/util/concurrent/ScheduledExecutorService;

    .line 39
    .line 40
    iget-object v0, v0, Lk3/l;->j:LP3/b;

    .line 41
    .line 42
    invoke-direct {v3, v2, v0}, Lcom/google/android/gms/internal/ads/Eh;-><init>(Ljava/util/concurrent/ScheduledExecutorService;LP3/b;)V

    .line 43
    .line 44
    .line 45
    iput-object v3, p0, Lcom/google/android/gms/internal/ads/dv;->P:Lcom/google/android/gms/internal/ads/Eh;

    .line 46
    .line 47
    new-instance v0, Lcom/google/android/gms/internal/ads/cv;

    .line 48
    .line 49
    const/4 v2, 0x1

    .line 50
    invoke-direct {v0, p0, v2}, Lcom/google/android/gms/internal/ads/cv;-><init>(Lcom/google/android/gms/internal/ads/dv;I)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v3, v1, v0}, Lcom/google/android/gms/internal/ads/Eh;->c(ILcom/google/android/gms/internal/ads/cv;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    .line 55
    .line 56
    monitor-exit p0

    .line 57
    return-void

    .line 58
    :catchall_0
    move-exception v0

    .line 59
    goto :goto_1

    .line 60
    :cond_1
    :goto_0
    monitor-exit p0

    .line 61
    return-void

    .line 62
    :goto_1
    monitor-exit p0

    .line 63
    throw v0
.end method

.method public final declared-synchronized y0()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    const-string v0, "pause must be called on the main UI thread."

    .line 3
    .line 4
    invoke-static {v0}, Lcom/bumptech/glide/c;->d(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    .line 7
    monitor-exit p0

    .line 8
    return-void

    .line 9
    :catchall_0
    move-exception v0

    .line 10
    monitor-exit p0

    .line 11
    throw v0
.end method

.method public final declared-synchronized z3(I)V
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dv;->I:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_3

    .line 11
    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dv;->L:Lcom/google/android/gms/internal/ads/av;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/av;->a()V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dv;->P:Lcom/google/android/gms/internal/ads/Eh;

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    sget-object v1, Lk3/l;->A:Lk3/l;

    .line 22
    .line 23
    iget-object v1, v1, Lk3/l;->f:LJ2/t;

    .line 24
    .line 25
    invoke-virtual {v1, v0}, LJ2/t;->q(Lcom/google/android/gms/internal/ads/Eh;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dv;->Q:Lcom/google/android/gms/internal/ads/Ih;

    .line 29
    .line 30
    if-eqz v0, :cond_2

    .line 31
    .line 32
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/dv;->O:J

    .line 33
    .line 34
    const-wide/16 v2, -0x1

    .line 35
    .line 36
    cmp-long v4, v0, v2

    .line 37
    .line 38
    if-nez v4, :cond_1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    sget-object v0, Lk3/l;->A:Lk3/l;

    .line 42
    .line 43
    iget-object v0, v0, Lk3/l;->j:LP3/b;

    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 49
    .line 50
    .line 51
    move-result-wide v0

    .line 52
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/dv;->O:J

    .line 53
    .line 54
    sub-long v2, v0, v2

    .line 55
    .line 56
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dv;->Q:Lcom/google/android/gms/internal/ads/Ih;

    .line 57
    .line 58
    invoke-virtual {v0, p1, v2, v3}, Lcom/google/android/gms/internal/ads/Ih;->d(IJ)V

    .line 59
    .line 60
    .line 61
    goto :goto_1

    .line 62
    :catchall_0
    move-exception p1

    .line 63
    goto :goto_2

    .line 64
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dv;->f()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    .line 66
    .line 67
    monitor-exit p0

    .line 68
    return-void

    .line 69
    :cond_3
    monitor-exit p0

    .line 70
    return-void

    .line 71
    :goto_2
    monitor-exit p0

    .line 72
    throw p1
.end method

.method public final zzd()Landroid/os/Bundle;
    .locals 1

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public final declared-synchronized zzg()Ll3/d1;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    monitor-exit p0

    .line 3
    const/4 v0, 0x0

    .line 4
    return-object v0
.end method

.method public final zzi()Ll3/w;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public final zzj()Ll3/U;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public final declared-synchronized zzk()Ll3/x0;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    monitor-exit p0

    .line 3
    const/4 v0, 0x0

    .line 4
    return-object v0
.end method

.method public final declared-synchronized zzl()Ll3/B0;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    monitor-exit p0

    .line 3
    const/4 v0, 0x0

    .line 4
    return-object v0
.end method

.method public final zzn()LR3/a;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public final declared-synchronized zzr()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dv;->J:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized zzs()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    monitor-exit p0

    const/4 v0, 0x0

    return-object v0
.end method
