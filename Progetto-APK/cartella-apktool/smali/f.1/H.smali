.class public abstract Lf/H;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/Object;

.field public final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/te;

    .line 12
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/te;-><init>()V

    iput-object v0, p0, Lf/H;->a:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    .line 13
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lf/H;->b:Ljava/lang/Object;

    iget-object v0, p0, Lf/H;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/te;

    new-instance v1, Lcom/google/android/gms/internal/ads/K4;

    const/16 v2, 0x1a

    invoke-direct {v1, p0, v2}, Lcom/google/android/gms/internal/ads/K4;-><init>(Ljava/lang/Object;I)V

    .line 14
    sget-object v2, Lcom/google/android/gms/internal/ads/se;->f:Lcom/google/android/gms/internal/ads/re;

    .line 15
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/Cw;->h2(LD4/b;Lcom/google/android/gms/internal/ads/dC;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public constructor <init>(LT6/a;)V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lf/H;->a:Ljava/lang/Object;

    .line 18
    instance-of v0, p1, LT6/e;

    if-eqz v0, :cond_0

    .line 19
    check-cast p1, LT6/e;

    .line 20
    iget-object p1, p1, LT6/e;->H:LV6/b;

    .line 21
    iput-object p1, p0, Lf/H;->b:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public constructor <init>(LY/d0;LJ/c;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lf/H;->a:Ljava/lang/Object;

    .line 27
    iput-object p2, p0, Lf/H;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/Rp;Lo3/L;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf/H;->b:Ljava/lang/Object;

    iput-object p2, p0, Lf/H;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lf/K;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf/H;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lw5/a;)V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lf/H;->a:Ljava/lang/Object;

    .line 24
    new-instance v0, Lcom/google/android/gms/internal/ads/bD;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/bD;-><init>(Lw5/a;)V

    iput-object v0, p0, Lf/H;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 4

    .line 2
    const/4 v0, 0x5

    const-string v1, "Can not use ChaCha20Poly1305 in FIPS-mode."

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq p2, v0, :cond_1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/Cw;->f0(I)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 4
    invoke-virtual {p0, v3, p1}, Lf/H;->k(I[B)Lcom/google/android/gms/internal/ads/OD;

    move-result-object p2

    iput-object p2, p0, Lf/H;->a:Ljava/lang/Object;

    .line 5
    invoke-virtual {p0, v2, p1}, Lf/H;->k(I[B)Lcom/google/android/gms/internal/ads/OD;

    move-result-object p1

    iput-object p1, p0, Lf/H;->b:Ljava/lang/Object;

    return-void

    .line 6
    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    invoke-direct {p1, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :cond_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {v3}, Lcom/google/android/gms/internal/pal/y4;->y(I)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 8
    invoke-virtual {p0, v3, p1}, Lf/H;->l(I[B)Lcom/google/android/gms/internal/pal/R3;

    move-result-object p2

    iput-object p2, p0, Lf/H;->a:Ljava/lang/Object;

    .line 9
    invoke-virtual {p0, v2, p1}, Lf/H;->l(I[B)Lcom/google/android/gms/internal/pal/R3;

    move-result-object p1

    iput-object p1, p0, Lf/H;->b:Ljava/lang/Object;

    return-void

    .line 10
    :cond_2
    new-instance p1, Ljava/security/GeneralSecurityException;

    invoke-direct {p1, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a(I[D)V
    .locals 4

    .line 1
    iget-object v0, p0, Lf/H;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, LT6/a;

    .line 4
    .line 5
    instance-of v1, v0, LT6/e;

    .line 6
    .line 7
    if-eqz v1, :cond_3

    .line 8
    .line 9
    check-cast v0, LT6/e;

    .line 10
    .line 11
    iget-object v0, v0, LT6/e;->M:Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, [D

    .line 22
    .line 23
    if-eqz v0, :cond_3

    .line 24
    .line 25
    iget-object v1, p0, Lf/H;->b:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast v1, LV6/b;

    .line 28
    .line 29
    invoke-virtual {v1, p1}, LV6/b;->f(I)Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-nez v1, :cond_0

    .line 34
    .line 35
    const/4 v1, 0x0

    .line 36
    aget-wide v2, v0, v1

    .line 37
    .line 38
    aput-wide v2, p2, v1

    .line 39
    .line 40
    iget-object v1, p0, Lf/H;->b:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast v1, LV6/b;

    .line 43
    .line 44
    invoke-virtual {v1, p1, v2, v3}, LV6/b;->k(ID)V

    .line 45
    .line 46
    .line 47
    :cond_0
    iget-object v1, p0, Lf/H;->b:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast v1, LV6/b;

    .line 50
    .line 51
    invoke-virtual {v1, p1}, LV6/b;->d(I)Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-nez v1, :cond_1

    .line 56
    .line 57
    const/4 v1, 0x1

    .line 58
    aget-wide v2, v0, v1

    .line 59
    .line 60
    aput-wide v2, p2, v1

    .line 61
    .line 62
    iget-object v1, p0, Lf/H;->b:Ljava/lang/Object;

    .line 63
    .line 64
    check-cast v1, LV6/b;

    .line 65
    .line 66
    invoke-virtual {v1, p1, v2, v3}, LV6/b;->j(ID)V

    .line 67
    .line 68
    .line 69
    :cond_1
    iget-object v1, p0, Lf/H;->b:Ljava/lang/Object;

    .line 70
    .line 71
    check-cast v1, LV6/b;

    .line 72
    .line 73
    invoke-virtual {v1, p1}, LV6/b;->g(I)Z

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    if-nez v1, :cond_2

    .line 78
    .line 79
    const/4 v1, 0x2

    .line 80
    aget-wide v2, v0, v1

    .line 81
    .line 82
    aput-wide v2, p2, v1

    .line 83
    .line 84
    iget-object v1, p0, Lf/H;->b:Ljava/lang/Object;

    .line 85
    .line 86
    check-cast v1, LV6/b;

    .line 87
    .line 88
    invoke-virtual {v1, p1, v2, v3}, LV6/b;->m(ID)V

    .line 89
    .line 90
    .line 91
    :cond_2
    iget-object v1, p0, Lf/H;->b:Ljava/lang/Object;

    .line 92
    .line 93
    check-cast v1, LV6/b;

    .line 94
    .line 95
    invoke-virtual {v1, p1}, LV6/b;->e(I)Z

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    if-nez v1, :cond_3

    .line 100
    .line 101
    const/4 v1, 0x3

    .line 102
    aget-wide v2, v0, v1

    .line 103
    .line 104
    aput-wide v2, p2, v1

    .line 105
    .line 106
    iget-object p2, p0, Lf/H;->b:Ljava/lang/Object;

    .line 107
    .line 108
    check-cast p2, LV6/b;

    .line 109
    .line 110
    invoke-virtual {p2, p1, v2, v3}, LV6/b;->l(ID)V

    .line 111
    .line 112
    .line 113
    :cond_3
    return-void
.end method

.method public final b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lf/H;->a:Ljava/lang/Object;

    .line 2
    .line 3
    move-object v1, v0

    .line 4
    check-cast v1, Landroid/content/BroadcastReceiver;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    :try_start_0
    iget-object v1, p0, Lf/H;->b:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v1, Lf/K;

    .line 11
    .line 12
    iget-object v1, v1, Lf/K;->Q:Landroid/content/Context;

    .line 13
    .line 14
    check-cast v0, Landroid/content/BroadcastReceiver;

    .line 15
    .line 16
    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    .line 18
    .line 19
    :catch_0
    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Lf/H;->a:Ljava/lang/Object;

    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method public final c()V
    .locals 3

    .line 1
    iget-object v0, p0, Lf/H;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, LY/d0;

    .line 4
    .line 5
    iget-object v1, p0, Lf/H;->b:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, LJ/c;

    .line 8
    .line 9
    iget-object v2, v0, LY/d0;->e:Ljava/util/HashSet;

    .line 10
    .line 11
    invoke-virtual {v2, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    invoke-virtual {v2}, Ljava/util/HashSet;->isEmpty()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    invoke-virtual {v0}, LY/d0;->b()V

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void
.end method

.method public abstract d()Landroid/content/IntentFilter;
.end method

.method public abstract e()I
.end method

.method public final f(I)[D
    .locals 10

    .line 1
    iget-object v0, p0, Lf/H;->b:Ljava/lang/Object;

    .line 2
    .line 3
    move-object v1, v0

    .line 4
    check-cast v1, LV6/b;

    .line 5
    .line 6
    iget-object v1, v1, LV6/b;->d0:[D

    .line 7
    .line 8
    aget-wide v2, v1, p1

    .line 9
    .line 10
    move-object v1, v0

    .line 11
    check-cast v1, LV6/b;

    .line 12
    .line 13
    iget-object v1, v1, LV6/b;->e0:[D

    .line 14
    .line 15
    aget-wide v4, v1, p1

    .line 16
    .line 17
    move-object v1, v0

    .line 18
    check-cast v1, LV6/b;

    .line 19
    .line 20
    iget-object v1, v1, LV6/b;->f0:[D

    .line 21
    .line 22
    aget-wide v6, v1, p1

    .line 23
    .line 24
    check-cast v0, LV6/b;

    .line 25
    .line 26
    iget-object v0, v0, LV6/b;->g0:[D

    .line 27
    .line 28
    aget-wide v8, v0, p1

    .line 29
    .line 30
    const/4 p1, 0x4

    .line 31
    new-array p1, p1, [D

    .line 32
    .line 33
    const/4 v0, 0x0

    .line 34
    aput-wide v2, p1, v0

    .line 35
    .line 36
    const/4 v0, 0x1

    .line 37
    aput-wide v4, p1, v0

    .line 38
    .line 39
    const/4 v0, 0x2

    .line 40
    aput-wide v6, p1, v0

    .line 41
    .line 42
    const/4 v0, 0x3

    .line 43
    aput-wide v8, p1, v0

    .line 44
    .line 45
    return-object p1
.end method

.method public final g()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lf/H;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, LY/d0;

    .line 4
    .line 5
    iget-object v0, v0, LY/d0;->c:LY/s;

    .line 6
    .line 7
    iget-object v0, v0, LY/s;->m0:Landroid/view/View;

    .line 8
    .line 9
    invoke-static {v0}, LA0/O;->f(Landroid/view/View;)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    iget-object v1, p0, Lf/H;->a:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v1, LY/d0;

    .line 16
    .line 17
    iget v1, v1, LY/d0;->a:I

    .line 18
    .line 19
    if-eq v0, v1, :cond_1

    .line 20
    .line 21
    const/4 v2, 0x2

    .line 22
    if-eq v0, v2, :cond_0

    .line 23
    .line 24
    if-eq v1, v2, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 v0, 0x0

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 30
    :goto_1
    return v0
.end method

.method public abstract h()V
.end method

.method public abstract i()Ljava/lang/String;
.end method

.method public final j()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lf/H;->b()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lf/H;->d()Landroid/content/IntentFilter;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Landroid/content/IntentFilter;->countActions()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    iget-object v1, p0, Lf/H;->a:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v1, Landroid/content/BroadcastReceiver;

    .line 18
    .line 19
    if-nez v1, :cond_1

    .line 20
    .line 21
    new-instance v1, Lf/G;

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    invoke-direct {v1, p0, v2}, Lf/G;-><init>(Ljava/lang/Object;I)V

    .line 25
    .line 26
    .line 27
    iput-object v1, p0, Lf/H;->a:Ljava/lang/Object;

    .line 28
    .line 29
    :cond_1
    iget-object v1, p0, Lf/H;->b:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast v1, Lf/K;

    .line 32
    .line 33
    iget-object v1, v1, Lf/K;->Q:Landroid/content/Context;

    .line 34
    .line 35
    iget-object v2, p0, Lf/H;->a:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast v2, Landroid/content/BroadcastReceiver;

    .line 38
    .line 39
    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public abstract k(I[B)Lcom/google/android/gms/internal/ads/OD;
.end method

.method public abstract l(I[B)Lcom/google/android/gms/internal/pal/R3;
.end method

.method public final m(Ljava/nio/ByteBuffer;[B[B[B)V
    .locals 58

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
    move-object/from16 v3, p3

    .line 8
    .line 9
    invoke-virtual/range {p1 .. p1}, Ljava/nio/Buffer;->remaining()I

    .line 10
    .line 11
    .line 12
    move-result v4

    .line 13
    array-length v5, v3

    .line 14
    const/16 v6, 0x10

    .line 15
    .line 16
    add-int/2addr v5, v6

    .line 17
    const-string v7, "Given ByteBuffer output is too small"

    .line 18
    .line 19
    if-lt v4, v5, :cond_7

    .line 20
    .line 21
    invoke-virtual/range {p1 .. p1}, Ljava/nio/Buffer;->position()I

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    iget-object v5, v0, Lf/H;->a:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast v5, Lcom/google/android/gms/internal/ads/PD;

    .line 28
    .line 29
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    invoke-virtual/range {p1 .. p1}, Ljava/nio/Buffer;->remaining()I

    .line 33
    .line 34
    .line 35
    move-result v8

    .line 36
    array-length v9, v3

    .line 37
    if-lt v8, v9, :cond_6

    .line 38
    .line 39
    invoke-static/range {p3 .. p3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    array-length v7, v2

    .line 44
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/PD;->a()I

    .line 45
    .line 46
    .line 47
    move-result v8

    .line 48
    if-ne v7, v8, :cond_5

    .line 49
    .line 50
    invoke-virtual {v3}, Ljava/nio/Buffer;->remaining()I

    .line 51
    .line 52
    .line 53
    move-result v7

    .line 54
    div-int/lit8 v8, v7, 0x40

    .line 55
    .line 56
    add-int/lit8 v9, v8, 0x1

    .line 57
    .line 58
    const/4 v10, 0x0

    .line 59
    const/4 v11, 0x0

    .line 60
    :goto_0
    if-ge v11, v9, :cond_1

    .line 61
    .line 62
    iget v12, v5, Lcom/google/android/gms/internal/ads/PD;->c:I

    .line 63
    .line 64
    add-int/2addr v12, v11

    .line 65
    invoke-virtual {v5, v12, v2}, Lcom/google/android/gms/internal/ads/PD;->c(I[B)Ljava/nio/ByteBuffer;

    .line 66
    .line 67
    .line 68
    move-result-object v12

    .line 69
    const/16 v13, 0x40

    .line 70
    .line 71
    if-ne v11, v8, :cond_0

    .line 72
    .line 73
    rem-int/lit8 v13, v7, 0x40

    .line 74
    .line 75
    invoke-static {v1, v3, v12, v13}, Lcom/google/android/gms/internal/pal/y4;->u(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;I)V

    .line 76
    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_0
    invoke-static {v1, v3, v12, v13}, Lcom/google/android/gms/internal/pal/y4;->u(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;I)V

    .line 80
    .line 81
    .line 82
    :goto_1
    add-int/lit8 v11, v11, 0x1

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_1
    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 86
    .line 87
    .line 88
    invoke-virtual/range {p1 .. p1}, Ljava/nio/Buffer;->limit()I

    .line 89
    .line 90
    .line 91
    move-result v3

    .line 92
    add-int/lit8 v3, v3, -0x10

    .line 93
    .line 94
    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 95
    .line 96
    .line 97
    iget-object v3, v0, Lf/H;->b:Ljava/lang/Object;

    .line 98
    .line 99
    check-cast v3, Lcom/google/android/gms/internal/ads/PD;

    .line 100
    .line 101
    invoke-virtual {v3, v10, v2}, Lcom/google/android/gms/internal/ads/PD;->c(I[B)Ljava/nio/ByteBuffer;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    const/16 v3, 0x20

    .line 106
    .line 107
    new-array v4, v3, [B

    .line 108
    .line 109
    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 110
    .line 111
    .line 112
    invoke-virtual/range {p1 .. p1}, Ljava/nio/Buffer;->remaining()I

    .line 113
    .line 114
    .line 115
    move-result v2

    .line 116
    rem-int/lit8 v5, v2, 0x10

    .line 117
    .line 118
    if-nez v5, :cond_2

    .line 119
    .line 120
    move v7, v2

    .line 121
    goto :goto_2

    .line 122
    :cond_2
    add-int/lit8 v7, v2, 0x10

    .line 123
    .line 124
    sub-int/2addr v7, v5

    .line 125
    :goto_2
    add-int/lit8 v5, v7, 0x10

    .line 126
    .line 127
    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 128
    .line 129
    .line 130
    move-result-object v5

    .line 131
    sget-object v8, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 132
    .line 133
    invoke-virtual {v5, v8}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 134
    .line 135
    .line 136
    move-result-object v5

    .line 137
    move-object/from16 v8, p4

    .line 138
    .line 139
    invoke-virtual {v5, v8}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v5, v10}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v5, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v5, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 149
    .line 150
    .line 151
    const-wide/16 v7, 0x0

    .line 152
    .line 153
    invoke-virtual {v5, v7, v8}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 154
    .line 155
    .line 156
    int-to-long v11, v2

    .line 157
    invoke-virtual {v5, v11, v12}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->array()[B

    .line 161
    .line 162
    .line 163
    move-result-object v2

    .line 164
    invoke-static {v10, v4}, Lcom/google/android/gms/internal/pal/y4;->S(I[B)J

    .line 165
    .line 166
    .line 167
    move-result-wide v11

    .line 168
    const-wide/32 v13, 0x3ffffff

    .line 169
    .line 170
    .line 171
    and-long/2addr v11, v13

    .line 172
    const/4 v5, 0x3

    .line 173
    invoke-static {v5, v4}, Lcom/google/android/gms/internal/pal/y4;->S(I[B)J

    .line 174
    .line 175
    .line 176
    move-result-wide v15

    .line 177
    const/4 v9, 0x2

    .line 178
    shr-long/2addr v15, v9

    .line 179
    const-wide/32 v17, 0x3ffff03

    .line 180
    .line 181
    .line 182
    and-long v15, v15, v17

    .line 183
    .line 184
    const/4 v7, 0x6

    .line 185
    invoke-static {v7, v4}, Lcom/google/android/gms/internal/pal/y4;->S(I[B)J

    .line 186
    .line 187
    .line 188
    move-result-wide v17

    .line 189
    const/4 v8, 0x4

    .line 190
    shr-long v17, v17, v8

    .line 191
    .line 192
    const-wide/32 v19, 0x3ffc0ff

    .line 193
    .line 194
    .line 195
    and-long v17, v17, v19

    .line 196
    .line 197
    const/16 v3, 0x9

    .line 198
    .line 199
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/pal/y4;->S(I[B)J

    .line 200
    .line 201
    .line 202
    move-result-wide v20

    .line 203
    shr-long v20, v20, v7

    .line 204
    .line 205
    const-wide/32 v22, 0x3f03fff

    .line 206
    .line 207
    .line 208
    and-long v20, v20, v22

    .line 209
    .line 210
    const/16 v3, 0xc

    .line 211
    .line 212
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/pal/y4;->S(I[B)J

    .line 213
    .line 214
    .line 215
    move-result-wide v22

    .line 216
    const/16 v3, 0x8

    .line 217
    .line 218
    shr-long v22, v22, v3

    .line 219
    .line 220
    const-wide/32 v24, 0xfffff

    .line 221
    .line 222
    .line 223
    and-long v22, v22, v24

    .line 224
    .line 225
    const-wide/16 v24, 0x5

    .line 226
    .line 227
    mul-long v26, v15, v24

    .line 228
    .line 229
    mul-long v28, v17, v24

    .line 230
    .line 231
    mul-long v30, v20, v24

    .line 232
    .line 233
    mul-long v32, v22, v24

    .line 234
    .line 235
    const/16 v3, 0x11

    .line 236
    .line 237
    new-array v8, v3, [B

    .line 238
    .line 239
    const/4 v7, 0x0

    .line 240
    const-wide/16 v35, 0x0

    .line 241
    .line 242
    const-wide/16 v37, 0x0

    .line 243
    .line 244
    const-wide/16 v39, 0x0

    .line 245
    .line 246
    const-wide/16 v41, 0x0

    .line 247
    .line 248
    const-wide/16 v43, 0x0

    .line 249
    .line 250
    :goto_3
    array-length v9, v2

    .line 251
    const/16 v5, 0x18

    .line 252
    .line 253
    const/16 v46, 0x1a

    .line 254
    .line 255
    if-ge v7, v9, :cond_4

    .line 256
    .line 257
    sub-int/2addr v9, v7

    .line 258
    invoke-static {v6, v9}, Ljava/lang/Math;->min(II)I

    .line 259
    .line 260
    .line 261
    move-result v9

    .line 262
    invoke-static {v2, v7, v8, v10, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 263
    .line 264
    .line 265
    const/16 v47, 0x1

    .line 266
    .line 267
    aput-byte v47, v8, v9

    .line 268
    .line 269
    if-eq v9, v6, :cond_3

    .line 270
    .line 271
    add-int/lit8 v9, v9, 0x1

    .line 272
    .line 273
    invoke-static {v8, v9, v3, v10}, Ljava/util/Arrays;->fill([BIIB)V

    .line 274
    .line 275
    .line 276
    :cond_3
    invoke-static {v10, v8}, Lcom/google/android/gms/internal/pal/y4;->S(I[B)J

    .line 277
    .line 278
    .line 279
    move-result-wide v47

    .line 280
    and-long v47, v47, v13

    .line 281
    .line 282
    add-long v43, v43, v47

    .line 283
    .line 284
    const/4 v9, 0x3

    .line 285
    invoke-static {v9, v8}, Lcom/google/android/gms/internal/pal/y4;->S(I[B)J

    .line 286
    .line 287
    .line 288
    move-result-wide v47

    .line 289
    const/16 v45, 0x2

    .line 290
    .line 291
    shr-long v47, v47, v45

    .line 292
    .line 293
    and-long v47, v47, v13

    .line 294
    .line 295
    add-long v37, v37, v47

    .line 296
    .line 297
    const/4 v3, 0x6

    .line 298
    invoke-static {v3, v8}, Lcom/google/android/gms/internal/pal/y4;->S(I[B)J

    .line 299
    .line 300
    .line 301
    move-result-wide v47

    .line 302
    const/16 v34, 0x4

    .line 303
    .line 304
    shr-long v47, v47, v34

    .line 305
    .line 306
    and-long v47, v47, v13

    .line 307
    .line 308
    add-long v35, v35, v47

    .line 309
    .line 310
    const/16 v9, 0x9

    .line 311
    .line 312
    invoke-static {v9, v8}, Lcom/google/android/gms/internal/pal/y4;->S(I[B)J

    .line 313
    .line 314
    .line 315
    move-result-wide v48

    .line 316
    shr-long v48, v48, v3

    .line 317
    .line 318
    and-long v48, v48, v13

    .line 319
    .line 320
    add-long v39, v39, v48

    .line 321
    .line 322
    const/16 v3, 0xc

    .line 323
    .line 324
    invoke-static {v3, v8}, Lcom/google/android/gms/internal/pal/y4;->S(I[B)J

    .line 325
    .line 326
    .line 327
    move-result-wide v48

    .line 328
    const/16 v3, 0x8

    .line 329
    .line 330
    shr-long v48, v48, v3

    .line 331
    .line 332
    and-long v48, v48, v13

    .line 333
    .line 334
    aget-byte v3, v8, v6

    .line 335
    .line 336
    shl-int/2addr v3, v5

    .line 337
    int-to-long v9, v3

    .line 338
    or-long v9, v48, v9

    .line 339
    .line 340
    add-long v41, v41, v9

    .line 341
    .line 342
    mul-long v9, v43, v11

    .line 343
    .line 344
    mul-long v48, v37, v32

    .line 345
    .line 346
    add-long v48, v48, v9

    .line 347
    .line 348
    mul-long v9, v35, v30

    .line 349
    .line 350
    add-long v9, v9, v48

    .line 351
    .line 352
    mul-long v48, v39, v28

    .line 353
    .line 354
    add-long v48, v48, v9

    .line 355
    .line 356
    mul-long v9, v41, v26

    .line 357
    .line 358
    add-long v9, v9, v48

    .line 359
    .line 360
    mul-long v48, v43, v15

    .line 361
    .line 362
    mul-long v50, v37, v11

    .line 363
    .line 364
    add-long v50, v50, v48

    .line 365
    .line 366
    mul-long v48, v35, v32

    .line 367
    .line 368
    add-long v48, v48, v50

    .line 369
    .line 370
    mul-long v50, v39, v30

    .line 371
    .line 372
    add-long v50, v50, v48

    .line 373
    .line 374
    mul-long v48, v41, v28

    .line 375
    .line 376
    add-long v48, v48, v50

    .line 377
    .line 378
    shr-long v50, v9, v46

    .line 379
    .line 380
    add-long v48, v48, v50

    .line 381
    .line 382
    mul-long v50, v43, v17

    .line 383
    .line 384
    mul-long v52, v37, v15

    .line 385
    .line 386
    add-long v52, v52, v50

    .line 387
    .line 388
    mul-long v50, v35, v11

    .line 389
    .line 390
    add-long v50, v50, v52

    .line 391
    .line 392
    mul-long v52, v39, v32

    .line 393
    .line 394
    add-long v52, v52, v50

    .line 395
    .line 396
    mul-long v50, v41, v30

    .line 397
    .line 398
    add-long v50, v50, v52

    .line 399
    .line 400
    shr-long v52, v48, v46

    .line 401
    .line 402
    add-long v50, v50, v52

    .line 403
    .line 404
    and-long v52, v50, v13

    .line 405
    .line 406
    mul-long v54, v43, v20

    .line 407
    .line 408
    mul-long v56, v37, v17

    .line 409
    .line 410
    add-long v56, v56, v54

    .line 411
    .line 412
    mul-long v54, v35, v15

    .line 413
    .line 414
    add-long v54, v54, v56

    .line 415
    .line 416
    mul-long v56, v39, v11

    .line 417
    .line 418
    add-long v56, v56, v54

    .line 419
    .line 420
    mul-long v54, v41, v32

    .line 421
    .line 422
    add-long v54, v54, v56

    .line 423
    .line 424
    shr-long v50, v50, v46

    .line 425
    .line 426
    add-long v54, v54, v50

    .line 427
    .line 428
    and-long v50, v54, v13

    .line 429
    .line 430
    mul-long v43, v43, v22

    .line 431
    .line 432
    mul-long v37, v37, v20

    .line 433
    .line 434
    add-long v37, v37, v43

    .line 435
    .line 436
    mul-long v35, v35, v17

    .line 437
    .line 438
    add-long v35, v35, v37

    .line 439
    .line 440
    mul-long v39, v39, v15

    .line 441
    .line 442
    add-long v39, v39, v35

    .line 443
    .line 444
    mul-long v41, v41, v11

    .line 445
    .line 446
    add-long v41, v41, v39

    .line 447
    .line 448
    shr-long v35, v54, v46

    .line 449
    .line 450
    add-long v41, v41, v35

    .line 451
    .line 452
    and-long v35, v41, v13

    .line 453
    .line 454
    and-long/2addr v9, v13

    .line 455
    shr-long v37, v41, v46

    .line 456
    .line 457
    mul-long v37, v37, v24

    .line 458
    .line 459
    add-long v37, v37, v9

    .line 460
    .line 461
    and-long v43, v37, v13

    .line 462
    .line 463
    and-long v9, v48, v13

    .line 464
    .line 465
    shr-long v37, v37, v46

    .line 466
    .line 467
    add-long v37, v9, v37

    .line 468
    .line 469
    add-int/lit8 v7, v7, 0x10

    .line 470
    .line 471
    move-wide/from16 v41, v35

    .line 472
    .line 473
    move-wide/from16 v39, v50

    .line 474
    .line 475
    move-wide/from16 v35, v52

    .line 476
    .line 477
    const/16 v3, 0x11

    .line 478
    .line 479
    const/4 v5, 0x3

    .line 480
    const/4 v10, 0x0

    .line 481
    goto/16 :goto_3

    .line 482
    .line 483
    :cond_4
    shr-long v2, v37, v46

    .line 484
    .line 485
    add-long v35, v35, v2

    .line 486
    .line 487
    and-long v2, v35, v13

    .line 488
    .line 489
    shr-long v7, v35, v46

    .line 490
    .line 491
    add-long v39, v39, v7

    .line 492
    .line 493
    and-long v7, v39, v13

    .line 494
    .line 495
    shr-long v9, v39, v46

    .line 496
    .line 497
    add-long v41, v41, v9

    .line 498
    .line 499
    and-long v9, v41, v13

    .line 500
    .line 501
    shr-long v11, v41, v46

    .line 502
    .line 503
    mul-long v11, v11, v24

    .line 504
    .line 505
    add-long v11, v11, v43

    .line 506
    .line 507
    and-long v15, v11, v13

    .line 508
    .line 509
    and-long v17, v37, v13

    .line 510
    .line 511
    shr-long v11, v11, v46

    .line 512
    .line 513
    add-long v17, v17, v11

    .line 514
    .line 515
    add-long v24, v15, v24

    .line 516
    .line 517
    shr-long v11, v24, v46

    .line 518
    .line 519
    add-long v11, v17, v11

    .line 520
    .line 521
    shr-long v20, v11, v46

    .line 522
    .line 523
    add-long v20, v2, v20

    .line 524
    .line 525
    shr-long v22, v20, v46

    .line 526
    .line 527
    add-long v22, v7, v22

    .line 528
    .line 529
    shr-long v26, v22, v46

    .line 530
    .line 531
    add-long v26, v9, v26

    .line 532
    .line 533
    const-wide/32 v28, -0x4000000

    .line 534
    .line 535
    .line 536
    add-long v26, v26, v28

    .line 537
    .line 538
    const/16 v28, 0x3f

    .line 539
    .line 540
    shr-long v5, v26, v28

    .line 541
    .line 542
    not-long v0, v5

    .line 543
    and-long v17, v17, v5

    .line 544
    .line 545
    and-long/2addr v11, v13

    .line 546
    and-long/2addr v11, v0

    .line 547
    or-long v11, v17, v11

    .line 548
    .line 549
    and-long/2addr v2, v5

    .line 550
    and-long v17, v20, v13

    .line 551
    .line 552
    and-long v17, v17, v0

    .line 553
    .line 554
    or-long v2, v2, v17

    .line 555
    .line 556
    and-long/2addr v7, v5

    .line 557
    and-long v17, v22, v13

    .line 558
    .line 559
    and-long v17, v17, v0

    .line 560
    .line 561
    or-long v7, v7, v17

    .line 562
    .line 563
    and-long/2addr v15, v5

    .line 564
    and-long v13, v24, v13

    .line 565
    .line 566
    and-long/2addr v13, v0

    .line 567
    or-long/2addr v13, v15

    .line 568
    shl-long v15, v11, v46

    .line 569
    .line 570
    or-long/2addr v13, v15

    .line 571
    const-wide v15, 0xffffffffL

    .line 572
    .line 573
    .line 574
    .line 575
    .line 576
    and-long/2addr v13, v15

    .line 577
    const/16 v15, 0x10

    .line 578
    .line 579
    invoke-static {v15, v4}, Lcom/google/android/gms/internal/pal/y4;->S(I[B)J

    .line 580
    .line 581
    .line 582
    move-result-wide v20

    .line 583
    add-long v20, v20, v13

    .line 584
    .line 585
    const/4 v13, 0x6

    .line 586
    shr-long/2addr v11, v13

    .line 587
    const/16 v13, 0x14

    .line 588
    .line 589
    shl-long v14, v2, v13

    .line 590
    .line 591
    or-long/2addr v11, v14

    .line 592
    const-wide v14, 0xffffffffL

    .line 593
    .line 594
    .line 595
    .line 596
    .line 597
    and-long/2addr v11, v14

    .line 598
    invoke-static {v13, v4}, Lcom/google/android/gms/internal/pal/y4;->S(I[B)J

    .line 599
    .line 600
    .line 601
    move-result-wide v16

    .line 602
    add-long v16, v16, v11

    .line 603
    .line 604
    const/16 v11, 0x20

    .line 605
    .line 606
    shr-long v12, v20, v11

    .line 607
    .line 608
    add-long v16, v16, v12

    .line 609
    .line 610
    const/16 v12, 0xc

    .line 611
    .line 612
    shr-long/2addr v2, v12

    .line 613
    const/16 v12, 0xe

    .line 614
    .line 615
    shl-long v12, v7, v12

    .line 616
    .line 617
    or-long/2addr v2, v12

    .line 618
    and-long/2addr v2, v14

    .line 619
    const/16 v12, 0x18

    .line 620
    .line 621
    invoke-static {v12, v4}, Lcom/google/android/gms/internal/pal/y4;->S(I[B)J

    .line 622
    .line 623
    .line 624
    move-result-wide v12

    .line 625
    add-long/2addr v12, v2

    .line 626
    shr-long v2, v16, v11

    .line 627
    .line 628
    add-long/2addr v12, v2

    .line 629
    const/16 v2, 0x1c

    .line 630
    .line 631
    invoke-static {v2, v4}, Lcom/google/android/gms/internal/pal/y4;->S(I[B)J

    .line 632
    .line 633
    .line 634
    move-result-wide v2

    .line 635
    const/16 v4, 0x10

    .line 636
    .line 637
    new-array v11, v4, [B

    .line 638
    .line 639
    move-wide/from16 p2, v2

    .line 640
    .line 641
    and-long v2, v20, v14

    .line 642
    .line 643
    const/4 v4, 0x0

    .line 644
    invoke-static {v4, v2, v3, v11}, Lcom/google/android/gms/internal/pal/y4;->c0(IJ[B)V

    .line 645
    .line 646
    .line 647
    and-long v2, v16, v14

    .line 648
    .line 649
    const/4 v4, 0x4

    .line 650
    invoke-static {v4, v2, v3, v11}, Lcom/google/android/gms/internal/pal/y4;->c0(IJ[B)V

    .line 651
    .line 652
    .line 653
    and-long v2, v12, v14

    .line 654
    .line 655
    const/16 v4, 0x8

    .line 656
    .line 657
    invoke-static {v4, v2, v3, v11}, Lcom/google/android/gms/internal/pal/y4;->c0(IJ[B)V

    .line 658
    .line 659
    .line 660
    const/16 v2, 0x12

    .line 661
    .line 662
    shr-long v2, v7, v2

    .line 663
    .line 664
    and-long/2addr v5, v9

    .line 665
    and-long v0, v26, v0

    .line 666
    .line 667
    or-long/2addr v0, v5

    .line 668
    shl-long/2addr v0, v4

    .line 669
    or-long/2addr v0, v2

    .line 670
    and-long/2addr v0, v14

    .line 671
    move-wide/from16 v2, p2

    .line 672
    .line 673
    add-long/2addr v0, v2

    .line 674
    const/16 v2, 0x20

    .line 675
    .line 676
    shr-long v2, v12, v2

    .line 677
    .line 678
    add-long/2addr v0, v2

    .line 679
    and-long/2addr v0, v14

    .line 680
    const/16 v2, 0xc

    .line 681
    .line 682
    invoke-static {v2, v0, v1, v11}, Lcom/google/android/gms/internal/pal/y4;->c0(IJ[B)V

    .line 683
    .line 684
    .line 685
    invoke-virtual/range {p1 .. p1}, Ljava/nio/Buffer;->limit()I

    .line 686
    .line 687
    .line 688
    move-result v0

    .line 689
    const/16 v1, 0x10

    .line 690
    .line 691
    add-int/2addr v0, v1

    .line 692
    move-object/from16 v1, p1

    .line 693
    .line 694
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 695
    .line 696
    .line 697
    invoke-virtual {v1, v11}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 698
    .line 699
    .line 700
    return-void

    .line 701
    :cond_5
    new-instance v0, Ljava/security/GeneralSecurityException;

    .line 702
    .line 703
    new-instance v1, Ljava/lang/StringBuilder;

    .line 704
    .line 705
    const-string v2, "The nonce length (in bytes) must be "

    .line 706
    .line 707
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 708
    .line 709
    .line 710
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/PD;->a()I

    .line 711
    .line 712
    .line 713
    move-result v2

    .line 714
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 715
    .line 716
    .line 717
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 718
    .line 719
    .line 720
    move-result-object v1

    .line 721
    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 722
    .line 723
    .line 724
    throw v0

    .line 725
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 726
    .line 727
    invoke-direct {v0, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 728
    .line 729
    .line 730
    throw v0

    .line 731
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 732
    .line 733
    invoke-direct {v0, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 734
    .line 735
    .line 736
    throw v0
.end method

.method public final n(Ljava/nio/ByteBuffer;[B[B)[B
    .locals 10

    .line 1
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x10

    .line 6
    .line 7
    if-lt v0, v1, :cond_7

    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    new-array v1, v1, [B

    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    add-int/lit8 v2, v2, -0x10

    .line 20
    .line 21
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    add-int/lit8 v2, v2, -0x10

    .line 35
    .line 36
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 37
    .line 38
    .line 39
    const/4 v2, 0x0

    .line 40
    if-nez p3, :cond_0

    .line 41
    .line 42
    new-array p3, v2, [B

    .line 43
    .line 44
    :cond_0
    :try_start_0
    iget-object v3, p0, Lf/H;->b:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast v3, Lcom/google/android/gms/internal/ads/PD;

    .line 47
    .line 48
    invoke-virtual {v3, v2, p2}, Lcom/google/android/gms/internal/ads/PD;->c(I[B)Ljava/nio/ByteBuffer;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    const/16 v4, 0x20

    .line 53
    .line 54
    new-array v4, v4, [B

    .line 55
    .line 56
    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 57
    .line 58
    .line 59
    array-length v3, p3

    .line 60
    and-int/lit8 v5, v3, 0xf

    .line 61
    .line 62
    if-nez v5, :cond_1

    .line 63
    .line 64
    move v6, v3

    .line 65
    goto :goto_0

    .line 66
    :cond_1
    add-int/lit8 v6, v3, 0x10

    .line 67
    .line 68
    sub-int/2addr v6, v5

    .line 69
    :goto_0
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    .line 70
    .line 71
    .line 72
    move-result v5

    .line 73
    rem-int/lit8 v7, v5, 0x10

    .line 74
    .line 75
    if-nez v7, :cond_2

    .line 76
    .line 77
    move v8, v5

    .line 78
    goto :goto_1

    .line 79
    :cond_2
    add-int/lit8 v8, v5, 0x10

    .line 80
    .line 81
    sub-int/2addr v8, v7

    .line 82
    :goto_1
    add-int/2addr v8, v6

    .line 83
    add-int/lit8 v7, v8, 0x10

    .line 84
    .line 85
    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 86
    .line 87
    .line 88
    move-result-object v7

    .line 89
    sget-object v9, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 90
    .line 91
    invoke-virtual {v7, v9}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 92
    .line 93
    .line 94
    move-result-object v7

    .line 95
    invoke-virtual {v7, p3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v7, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v7, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 105
    .line 106
    .line 107
    int-to-long v8, v3

    .line 108
    invoke-virtual {v7, v8, v9}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 109
    .line 110
    .line 111
    int-to-long v5, v5

    .line 112
    invoke-virtual {v7, v5, v6}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->array()[B

    .line 116
    .line 117
    .line 118
    move-result-object p3

    .line 119
    invoke-static {v4, p3}, Lcom/google/android/gms/internal/ads/Cw;->k0([B[B)[B

    .line 120
    .line 121
    .line 122
    move-result-object p3

    .line 123
    invoke-static {p3, v1}, Ljava/security/MessageDigest;->isEqual([B[B)Z

    .line 124
    .line 125
    .line 126
    move-result p3
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    if-eqz p3, :cond_6

    .line 128
    .line 129
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 130
    .line 131
    .line 132
    iget-object p3, p0, Lf/H;->a:Ljava/lang/Object;

    .line 133
    .line 134
    check-cast p3, Lcom/google/android/gms/internal/ads/PD;

    .line 135
    .line 136
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 137
    .line 138
    .line 139
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    .line 140
    .line 141
    .line 142
    move-result v0

    .line 143
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    array-length v1, p2

    .line 148
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/PD;->a()I

    .line 149
    .line 150
    .line 151
    move-result v3

    .line 152
    if-ne v1, v3, :cond_5

    .line 153
    .line 154
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    .line 155
    .line 156
    .line 157
    move-result v1

    .line 158
    div-int/lit8 v3, v1, 0x40

    .line 159
    .line 160
    :goto_2
    add-int/lit8 v4, v3, 0x1

    .line 161
    .line 162
    if-ge v2, v4, :cond_4

    .line 163
    .line 164
    iget v4, p3, Lcom/google/android/gms/internal/ads/PD;->c:I

    .line 165
    .line 166
    add-int/2addr v4, v2

    .line 167
    invoke-virtual {p3, v4, p2}, Lcom/google/android/gms/internal/ads/PD;->c(I[B)Ljava/nio/ByteBuffer;

    .line 168
    .line 169
    .line 170
    move-result-object v4

    .line 171
    const/16 v5, 0x40

    .line 172
    .line 173
    if-ne v2, v3, :cond_3

    .line 174
    .line 175
    rem-int/lit8 v5, v1, 0x40

    .line 176
    .line 177
    invoke-static {v0, p1, v4, v5}, Lcom/google/android/gms/internal/ads/Cw;->c0(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;I)V

    .line 178
    .line 179
    .line 180
    goto :goto_3

    .line 181
    :cond_3
    invoke-static {v0, p1, v4, v5}, Lcom/google/android/gms/internal/ads/Cw;->c0(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;I)V

    .line 182
    .line 183
    .line 184
    :goto_3
    add-int/lit8 v2, v2, 0x1

    .line 185
    .line 186
    goto :goto_2

    .line 187
    :cond_4
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    .line 188
    .line 189
    .line 190
    move-result-object p1

    .line 191
    return-object p1

    .line 192
    :cond_5
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/PD;->a()I

    .line 193
    .line 194
    .line 195
    move-result p1

    .line 196
    new-instance p2, Ljava/security/GeneralSecurityException;

    .line 197
    .line 198
    const-string p3, "The nonce length (in bytes) must be "

    .line 199
    .line 200
    invoke-static {p3, p1}, La/r;->f(Ljava/lang/String;I)Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object p1

    .line 204
    invoke-direct {p2, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    throw p2

    .line 208
    :cond_6
    :try_start_1
    new-instance p1, Ljava/security/GeneralSecurityException;

    .line 209
    .line 210
    const-string p2, "invalid MAC"

    .line 211
    .line 212
    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    throw p1
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_0

    .line 216
    :catch_0
    move-exception p1

    .line 217
    new-instance p2, Ljavax/crypto/AEADBadTagException;

    .line 218
    .line 219
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object p1

    .line 223
    invoke-direct {p2, p1}, Ljavax/crypto/AEADBadTagException;-><init>(Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    throw p2

    .line 227
    :cond_7
    new-instance p1, Ljava/security/GeneralSecurityException;

    .line 228
    .line 229
    const-string p2, "ciphertext too short"

    .line 230
    .line 231
    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 232
    .line 233
    .line 234
    throw p1
.end method

.method public final o()I
    .locals 1

    .line 1
    iget-object v0, p0, Lf/H;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public final p()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/Exception;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lf/H;->a:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v1, Lcom/google/android/gms/internal/ads/te;

    .line 9
    .line 10
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/te;->c(Ljava/lang/Throwable;)Z

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final q(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lf/H;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/google/android/gms/internal/ads/te;

    .line 4
    .line 5
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/te;->c(Ljava/lang/Throwable;)Z

    .line 6
    .line 7
    .line 8
    sget-object v0, Lcom/google/android/gms/internal/ads/Q7;->a7:Lcom/google/android/gms/internal/ads/J7;

    .line 9
    .line 10
    sget-object v1, Ll3/q;->d:Ll3/q;

    .line 11
    .line 12
    iget-object v1, v1, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 13
    .line 14
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Ljava/lang/Boolean;

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    sget-object v0, Lk3/l;->A:Lk3/l;

    .line 27
    .line 28
    iget-object v0, v0, Lk3/l;->g:Lcom/google/android/gms/internal/ads/le;

    .line 29
    .line 30
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/le;->h(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 31
    .line 32
    .line 33
    :cond_0
    return-void
.end method

.method public final r(Lcom/google/android/gms/internal/ads/ve;Lcom/google/android/gms/internal/ads/ue;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/x;

    .line 2
    .line 3
    const/16 v1, 0x10

    .line 4
    .line 5
    invoke-direct {v0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/x;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lf/H;->a:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast p1, Lcom/google/android/gms/internal/ads/te;

    .line 11
    .line 12
    sget-object p2, Lcom/google/android/gms/internal/ads/se;->f:Lcom/google/android/gms/internal/ads/re;

    .line 13
    .line 14
    invoke-static {p1, v0, p2}, Lcom/google/android/gms/internal/ads/Cw;->h2(LD4/b;Lcom/google/android/gms/internal/ads/dC;Ljava/util/concurrent/Executor;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method
