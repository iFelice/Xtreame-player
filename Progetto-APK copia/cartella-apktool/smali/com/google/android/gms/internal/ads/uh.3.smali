.class public final Lcom/google/android/gms/internal/ads/uh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/pj;
.implements Lcom/google/android/gms/internal/ads/Ij;
.implements Lcom/google/android/gms/internal/ads/Aj;
.implements Ll3/a;
.implements Lcom/google/android/gms/internal/ads/yj;
.implements Lcom/google/android/gms/internal/ads/Kk;


# instance fields
.field public final G:Landroid/content/Context;

.field public final H:Ljava/util/concurrent/Executor;

.field public final I:Ljava/util/concurrent/Executor;

.field public final J:Ljava/util/concurrent/ScheduledExecutorService;

.field public final K:Lcom/google/android/gms/internal/ads/Tv;

.field public final L:Lcom/google/android/gms/internal/ads/Ov;

.field public final M:Lcom/google/android/gms/internal/ads/hx;

.field public final N:Lcom/google/android/gms/internal/ads/bw;

.field public final O:Lcom/google/android/gms/internal/ads/H4;

.field public final P:Lcom/google/android/gms/internal/ads/e8;

.field public final Q:Ljava/lang/ref/WeakReference;

.field public final R:Ljava/lang/ref/WeakReference;

.field public final S:Lcom/google/android/gms/internal/ads/Zi;

.field public T:Z

.field public final U:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/re;Ljava/util/concurrent/Executor;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/internal/ads/Tv;Lcom/google/android/gms/internal/ads/Ov;Lcom/google/android/gms/internal/ads/hx;Lcom/google/android/gms/internal/ads/bw;Landroid/view/View;Lcom/google/android/gms/internal/ads/Ef;Lcom/google/android/gms/internal/ads/H4;Lcom/google/android/gms/internal/ads/e8;Lcom/google/android/gms/internal/ads/Zi;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/uh;->U:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/uh;->G:Landroid/content/Context;

    .line 12
    .line 13
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/uh;->H:Ljava/util/concurrent/Executor;

    .line 14
    .line 15
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/uh;->I:Ljava/util/concurrent/Executor;

    .line 16
    .line 17
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/uh;->J:Ljava/util/concurrent/ScheduledExecutorService;

    .line 18
    .line 19
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/uh;->K:Lcom/google/android/gms/internal/ads/Tv;

    .line 20
    .line 21
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/uh;->L:Lcom/google/android/gms/internal/ads/Ov;

    .line 22
    .line 23
    iput-object p7, p0, Lcom/google/android/gms/internal/ads/uh;->M:Lcom/google/android/gms/internal/ads/hx;

    .line 24
    .line 25
    iput-object p8, p0, Lcom/google/android/gms/internal/ads/uh;->N:Lcom/google/android/gms/internal/ads/bw;

    .line 26
    .line 27
    iput-object p11, p0, Lcom/google/android/gms/internal/ads/uh;->O:Lcom/google/android/gms/internal/ads/H4;

    .line 28
    .line 29
    new-instance p1, Ljava/lang/ref/WeakReference;

    .line 30
    .line 31
    invoke-direct {p1, p9}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/uh;->Q:Ljava/lang/ref/WeakReference;

    .line 35
    .line 36
    new-instance p1, Ljava/lang/ref/WeakReference;

    .line 37
    .line 38
    invoke-direct {p1, p10}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/uh;->R:Ljava/lang/ref/WeakReference;

    .line 42
    .line 43
    iput-object p12, p0, Lcom/google/android/gms/internal/ads/uh;->P:Lcom/google/android/gms/internal/ads/e8;

    .line 44
    .line 45
    iput-object p13, p0, Lcom/google/android/gms/internal/ads/uh;->S:Lcom/google/android/gms/internal/ads/Zi;

    .line 46
    .line 47
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uh;->L:Lcom/google/android/gms/internal/ads/Ov;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/Ov;->g:Ljava/util/List;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/uh;->M:Lcom/google/android/gms/internal/ads/hx;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/uh;->K:Lcom/google/android/gms/internal/ads/Tv;

    .line 8
    .line 9
    invoke-virtual {v2, v3, v0, v1}, Lcom/google/android/gms/internal/ads/hx;->a(Lcom/google/android/gms/internal/ads/Tv;Lcom/google/android/gms/internal/ads/Ov;Ljava/util/List;)Ljava/util/ArrayList;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/uh;->N:Lcom/google/android/gms/internal/ads/bw;

    .line 14
    .line 15
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/bw;->a(Ljava/util/ArrayList;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final b()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uh;->L:Lcom/google/android/gms/internal/ads/Ov;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/Ov;->i:Ljava/util/List;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/uh;->M:Lcom/google/android/gms/internal/ads/hx;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/uh;->K:Lcom/google/android/gms/internal/ads/Tv;

    .line 8
    .line 9
    invoke-virtual {v2, v3, v0, v1}, Lcom/google/android/gms/internal/ads/hx;->a(Lcom/google/android/gms/internal/ads/Tv;Lcom/google/android/gms/internal/ads/Ov;Ljava/util/List;)Ljava/util/ArrayList;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/uh;->N:Lcom/google/android/gms/internal/ads/bw;

    .line 14
    .line 15
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/bw;->a(Ljava/util/ArrayList;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final c()Ljava/util/List;
    .locals 6

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/Q7;->Ia:Lcom/google/android/gms/internal/ads/J7;

    .line 2
    .line 3
    sget-object v1, Ll3/q;->d:Ll3/q;

    .line 4
    .line 5
    iget-object v1, v1, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Ljava/lang/Boolean;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/uh;->L:Lcom/google/android/gms/internal/ads/Ov;

    .line 18
    .line 19
    if-eqz v0, :cond_3

    .line 20
    .line 21
    sget-object v0, Lk3/l;->A:Lk3/l;

    .line 22
    .line 23
    iget-object v0, v0, Lk3/l;->c:Lo3/O;

    .line 24
    .line 25
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uh;->G:Landroid/content/Context;

    .line 26
    .line 27
    invoke-static {v0}, Lo3/O;->b(Landroid/content/Context;)Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-nez v2, :cond_0

    .line 32
    .line 33
    goto :goto_2

    .line 34
    :cond_0
    const-string v2, "display"

    .line 35
    .line 36
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    instance-of v2, v0, Landroid/hardware/display/DisplayManager;

    .line 41
    .line 42
    if-eqz v2, :cond_1

    .line 43
    .line 44
    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 45
    .line 46
    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    array-length v0, v0

    .line 51
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    goto :goto_0

    .line 56
    :cond_1
    const/4 v0, 0x0

    .line 57
    :goto_0
    if-eqz v0, :cond_3

    .line 58
    .line 59
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    const/16 v2, 0x14

    .line 64
    .line 65
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    new-instance v2, Ljava/util/ArrayList;

    .line 70
    .line 71
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 72
    .line 73
    .line 74
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/Ov;->d:Ljava/util/List;

    .line 75
    .line 76
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 81
    .line 82
    .line 83
    move-result v3

    .line 84
    if-eqz v3, :cond_2

    .line 85
    .line 86
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    check-cast v3, Ljava/lang/String;

    .line 91
    .line 92
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    .line 97
    .line 98
    .line 99
    move-result-object v3

    .line 100
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v4

    .line 104
    const-string v5, "dspct"

    .line 105
    .line 106
    invoke-virtual {v3, v5, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 107
    .line 108
    .line 109
    move-result-object v3

    .line 110
    invoke-virtual {v3}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v3

    .line 114
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    goto :goto_1

    .line 118
    :cond_2
    return-object v2

    .line 119
    :cond_3
    :goto_2
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/Ov;->d:Ljava/util/List;

    .line 120
    .line 121
    return-object v0
.end method

.method public final d(Ll3/z0;)V
    .locals 6

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/Q7;->n1:Lcom/google/android/gms/internal/ads/J7;

    .line 2
    .line 3
    sget-object v1, Ll3/q;->d:Ll3/q;

    .line 4
    .line 5
    iget-object v1, v1, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Ljava/lang/Boolean;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    iget p1, p1, Ll3/z0;->G:I

    .line 20
    .line 21
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uh;->L:Lcom/google/android/gms/internal/ads/Ov;

    .line 22
    .line 23
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/Ov;->o:Ljava/util/List;

    .line 24
    .line 25
    new-instance v2, Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 28
    .line 29
    .line 30
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    if-eqz v3, :cond_0

    .line 39
    .line 40
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    check-cast v3, Ljava/lang/String;

    .line 45
    .line 46
    new-instance v4, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    const-string v5, "2."

    .line 49
    .line 50
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    const-string v5, "@gw_mpe@"

    .line 61
    .line 62
    invoke-static {v3, v5, v4}, Lcom/google/android/gms/internal/ads/hx;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/uh;->M:Lcom/google/android/gms/internal/ads/hx;

    .line 71
    .line 72
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/uh;->K:Lcom/google/android/gms/internal/ads/Tv;

    .line 73
    .line 74
    invoke-virtual {p1, v1, v0, v2}, Lcom/google/android/gms/internal/ads/hx;->a(Lcom/google/android/gms/internal/ads/Tv;Lcom/google/android/gms/internal/ads/Ov;Ljava/util/List;)Ljava/util/ArrayList;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uh;->N:Lcom/google/android/gms/internal/ads/bw;

    .line 79
    .line 80
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/bw;->a(Ljava/util/ArrayList;)V

    .line 81
    .line 82
    .line 83
    :cond_1
    return-void
.end method

.method public final e()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uh;->L:Lcom/google/android/gms/internal/ads/Ov;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/Ov;->u0:Ljava/util/AbstractCollection;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/uh;->M:Lcom/google/android/gms/internal/ads/hx;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/uh;->K:Lcom/google/android/gms/internal/ads/Tv;

    .line 8
    .line 9
    invoke-virtual {v2, v3, v0, v1}, Lcom/google/android/gms/internal/ads/hx;->a(Lcom/google/android/gms/internal/ads/Tv;Lcom/google/android/gms/internal/ads/Ov;Ljava/util/List;)Ljava/util/ArrayList;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/uh;->N:Lcom/google/android/gms/internal/ads/bw;

    .line 14
    .line 15
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/bw;->a(Ljava/util/ArrayList;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final g(Lcom/google/android/gms/internal/ads/dd;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    .line 1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/uh;->L:Lcom/google/android/gms/internal/ads/Ov;

    .line 2
    .line 3
    iget-object p3, p2, Lcom/google/android/gms/internal/ads/Ov;->h:Ljava/util/List;

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uh;->M:Lcom/google/android/gms/internal/ads/hx;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    new-instance v1, Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 13
    .line 14
    .line 15
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/hx;->h:LP3/a;

    .line 16
    .line 17
    check-cast v2, LP3/b;

    .line 18
    .line 19
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 23
    .line 24
    .line 25
    move-result-wide v2

    .line 26
    :try_start_0
    move-object v4, p1

    .line 27
    check-cast v4, Lcom/google/android/gms/internal/ads/bd;

    .line 28
    .line 29
    iget-object v4, v4, Lcom/google/android/gms/internal/ads/bd;->G:Ljava/lang/String;

    .line 30
    .line 31
    check-cast p1, Lcom/google/android/gms/internal/ads/bd;

    .line 32
    .line 33
    iget p1, p1, Lcom/google/android/gms/internal/ads/bd;->H:I

    .line 34
    .line 35
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    sget-object v5, Lcom/google/android/gms/internal/ads/Q7;->m3:Lcom/google/android/gms/internal/ads/J7;

    .line 40
    .line 41
    sget-object v6, Ll3/q;->d:Ll3/q;

    .line 42
    .line 43
    iget-object v6, v6, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 44
    .line 45
    invoke-virtual {v6, v5}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v5

    .line 49
    check-cast v5, Ljava/lang/Boolean;

    .line 50
    .line 51
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 52
    .line 53
    .line 54
    move-result v5

    .line 55
    sget-object v6, Lcom/google/android/gms/internal/ads/rz;->G:Lcom/google/android/gms/internal/ads/rz;

    .line 56
    .line 57
    if-eqz v5, :cond_2

    .line 58
    .line 59
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/hx;->g:Lcom/google/android/gms/internal/ads/Vv;

    .line 60
    .line 61
    if-nez v5, :cond_0

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_0
    iget-object v5, v5, Lcom/google/android/gms/internal/ads/Vv;->a:Lcom/google/android/gms/internal/ads/Uv;

    .line 65
    .line 66
    if-nez v5, :cond_1

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_1
    new-instance v6, Lcom/google/android/gms/internal/ads/Az;

    .line 70
    .line 71
    invoke-direct {v6, v5}, Lcom/google/android/gms/internal/ads/Az;-><init>(Ljava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_2
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/hx;->f:Lcom/google/android/gms/internal/ads/Uv;

    .line 76
    .line 77
    if-nez v5, :cond_3

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_3
    new-instance v6, Lcom/google/android/gms/internal/ads/Az;

    .line 81
    .line 82
    invoke-direct {v6, v5}, Lcom/google/android/gms/internal/ads/Az;-><init>(Ljava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    :goto_0
    new-instance v5, Lcom/google/android/gms/internal/ads/u1;

    .line 86
    .line 87
    const/16 v7, 0x14

    .line 88
    .line 89
    invoke-direct {v5, v7}, Lcom/google/android/gms/internal/ads/u1;-><init>(I)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v6, v5}, Lcom/google/android/gms/internal/ads/wz;->a(Lcom/google/android/gms/internal/ads/u1;)Lcom/google/android/gms/internal/ads/wz;

    .line 93
    .line 94
    .line 95
    move-result-object v5

    .line 96
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/wz;->b()Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v5

    .line 100
    check-cast v5, Ljava/lang/String;

    .line 101
    .line 102
    new-instance v7, Lcom/google/android/gms/internal/ads/u1;

    .line 103
    .line 104
    const/16 v8, 0x15

    .line 105
    .line 106
    invoke-direct {v7, v8}, Lcom/google/android/gms/internal/ads/u1;-><init>(I)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/ads/wz;->a(Lcom/google/android/gms/internal/ads/u1;)Lcom/google/android/gms/internal/ads/wz;

    .line 110
    .line 111
    .line 112
    move-result-object v6

    .line 113
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/wz;->b()Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v6

    .line 117
    check-cast v6, Ljava/lang/String;

    .line 118
    .line 119
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 120
    .line 121
    .line 122
    move-result-object p3

    .line 123
    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 124
    .line 125
    .line 126
    move-result v7

    .line 127
    if-eqz v7, :cond_4

    .line 128
    .line 129
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object v7

    .line 133
    check-cast v7, Ljava/lang/String;

    .line 134
    .line 135
    invoke-static {v5}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v8

    .line 139
    const-string v9, "@gw_rwd_userid@"

    .line 140
    .line 141
    invoke-static {v7, v9, v8}, Lcom/google/android/gms/internal/ads/hx;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v7

    .line 145
    invoke-static {v6}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v8

    .line 149
    const-string v9, "@gw_rwd_custom_data@"

    .line 150
    .line 151
    invoke-static {v7, v9, v8}, Lcom/google/android/gms/internal/ads/hx;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v7

    .line 155
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v8

    .line 159
    const-string v9, "@gw_tmstmp@"

    .line 160
    .line 161
    invoke-static {v7, v9, v8}, Lcom/google/android/gms/internal/ads/hx;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v7

    .line 165
    invoke-static {v4}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v8

    .line 169
    const-string v9, "@gw_rwd_itm@"

    .line 170
    .line 171
    invoke-static {v7, v9, v8}, Lcom/google/android/gms/internal/ads/hx;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v7

    .line 175
    const-string v8, "@gw_rwd_amt@"

    .line 176
    .line 177
    invoke-static {v7, v8, p1}, Lcom/google/android/gms/internal/ads/hx;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v7

    .line 181
    iget-object v8, v0, Lcom/google/android/gms/internal/ads/hx;->b:Ljava/lang/String;

    .line 182
    .line 183
    const-string v9, "@gw_sdkver@"

    .line 184
    .line 185
    invoke-static {v7, v9, v8}, Lcom/google/android/gms/internal/ads/hx;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v7

    .line 189
    iget-object v8, v0, Lcom/google/android/gms/internal/ads/hx;->e:Landroid/content/Context;

    .line 190
    .line 191
    iget-boolean v9, p2, Lcom/google/android/gms/internal/ads/Ov;->W:Z

    .line 192
    .line 193
    iget-object v10, p2, Lcom/google/android/gms/internal/ads/Ov;->w0:Ljava/util/HashMap;

    .line 194
    .line 195
    invoke-static {v7, v8, v9, v10}, Lcom/bumptech/glide/c;->D(Ljava/lang/String;Landroid/content/Context;ZLjava/util/HashMap;)Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v7

    .line 199
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 200
    .line 201
    .line 202
    goto :goto_1

    .line 203
    :catch_0
    move-exception p1

    .line 204
    const-string p2, "Unable to determine award type and amount."

    .line 205
    .line 206
    invoke-static {p2, p1}, Lp3/h;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 207
    .line 208
    .line 209
    :cond_4
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/uh;->N:Lcom/google/android/gms/internal/ads/bw;

    .line 210
    .line 211
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/bw;->a(Ljava/util/ArrayList;)V

    .line 212
    .line 213
    .line 214
    return-void
.end method

.method public final i()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uh;->L:Lcom/google/android/gms/internal/ads/Ov;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/Ov;->d:Ljava/util/List;

    .line 4
    .line 5
    if-eqz v1, :cond_7

    .line 6
    .line 7
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    goto/16 :goto_1

    .line 14
    .line 15
    :cond_0
    sget-object v1, Lcom/google/android/gms/internal/ads/Q7;->l3:Lcom/google/android/gms/internal/ads/J7;

    .line 16
    .line 17
    sget-object v2, Ll3/q;->d:Ll3/q;

    .line 18
    .line 19
    iget-object v3, v2, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 20
    .line 21
    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Ljava/lang/Boolean;

    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    const/4 v3, 0x0

    .line 32
    if-eqz v1, :cond_1

    .line 33
    .line 34
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/uh;->Q:Ljava/lang/ref/WeakReference;

    .line 35
    .line 36
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/uh;->O:Lcom/google/android/gms/internal/ads/H4;

    .line 37
    .line 38
    iget-object v4, v4, Lcom/google/android/gms/internal/ads/H4;->b:Lcom/google/android/gms/internal/ads/E4;

    .line 39
    .line 40
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    check-cast v1, Landroid/view/View;

    .line 45
    .line 46
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/uh;->G:Landroid/content/Context;

    .line 47
    .line 48
    invoke-interface {v4, v5, v1, v3}, Lcom/google/android/gms/internal/ads/E4;->zzh(Landroid/content/Context;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    move-object v8, v1

    .line 53
    goto :goto_0

    .line 54
    :cond_1
    move-object v8, v3

    .line 55
    :goto_0
    sget-object v1, Lcom/google/android/gms/internal/ads/Q7;->m0:Lcom/google/android/gms/internal/ads/J7;

    .line 56
    .line 57
    iget-object v2, v2, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 58
    .line 59
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    check-cast v1, Ljava/lang/Boolean;

    .line 64
    .line 65
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    if-eqz v1, :cond_2

    .line 70
    .line 71
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/uh;->K:Lcom/google/android/gms/internal/ads/Tv;

    .line 72
    .line 73
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/Tv;->b:Lcom/google/android/gms/internal/ads/xc;

    .line 74
    .line 75
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/xc;->I:Ljava/lang/Object;

    .line 76
    .line 77
    check-cast v1, Lcom/google/android/gms/internal/ads/Qv;

    .line 78
    .line 79
    iget-boolean v1, v1, Lcom/google/android/gms/internal/ads/Qv;->h:Z

    .line 80
    .line 81
    if-nez v1, :cond_3

    .line 82
    .line 83
    :cond_2
    sget-object v1, Lcom/google/android/gms/internal/ads/q8;->h:Lcom/google/android/gms/internal/ads/f8;

    .line 84
    .line 85
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/f8;->l()Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    check-cast v1, Ljava/lang/Boolean;

    .line 90
    .line 91
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    if-nez v1, :cond_4

    .line 96
    .line 97
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/uh;->c()Ljava/util/List;

    .line 98
    .line 99
    .line 100
    move-result-object v10

    .line 101
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/uh;->L:Lcom/google/android/gms/internal/ads/Ov;

    .line 102
    .line 103
    const/4 v7, 0x0

    .line 104
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/uh;->M:Lcom/google/android/gms/internal/ads/hx;

    .line 105
    .line 106
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/uh;->K:Lcom/google/android/gms/internal/ads/Tv;

    .line 107
    .line 108
    const/4 v9, 0x0

    .line 109
    invoke-virtual/range {v4 .. v10}, Lcom/google/android/gms/internal/ads/hx;->b(Lcom/google/android/gms/internal/ads/Tv;Lcom/google/android/gms/internal/ads/Ov;ZLjava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/ArrayList;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/uh;->N:Lcom/google/android/gms/internal/ads/bw;

    .line 114
    .line 115
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/bw;->a(Ljava/util/ArrayList;)V

    .line 116
    .line 117
    .line 118
    return-void

    .line 119
    :cond_4
    sget-object v1, Lcom/google/android/gms/internal/ads/q8;->g:Lcom/google/android/gms/internal/ads/f8;

    .line 120
    .line 121
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/f8;->l()Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    check-cast v1, Ljava/lang/Boolean;

    .line 126
    .line 127
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 128
    .line 129
    .line 130
    move-result v1

    .line 131
    if-eqz v1, :cond_6

    .line 132
    .line 133
    const/4 v1, 0x1

    .line 134
    iget v0, v0, Lcom/google/android/gms/internal/ads/Ov;->b:I

    .line 135
    .line 136
    if-eq v0, v1, :cond_5

    .line 137
    .line 138
    const/4 v1, 0x2

    .line 139
    if-eq v0, v1, :cond_5

    .line 140
    .line 141
    const/4 v1, 0x5

    .line 142
    if-ne v0, v1, :cond_6

    .line 143
    .line 144
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uh;->R:Ljava/lang/ref/WeakReference;

    .line 145
    .line 146
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    check-cast v0, Lcom/google/android/gms/internal/ads/Ef;

    .line 151
    .line 152
    :cond_6
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/Cw;->N1(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/fC;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/aC;->r(LD4/b;)Lcom/google/android/gms/internal/ads/aC;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    sget-object v1, Lcom/google/android/gms/internal/ads/Q7;->O0:Lcom/google/android/gms/internal/ads/J7;

    .line 161
    .line 162
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object v1

    .line 166
    check-cast v1, Ljava/lang/Long;

    .line 167
    .line 168
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 169
    .line 170
    .line 171
    move-result-wide v1

    .line 172
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/uh;->J:Ljava/util/concurrent/ScheduledExecutorService;

    .line 173
    .line 174
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 175
    .line 176
    invoke-static {v0, v1, v2, v4, v3}, Lcom/google/android/gms/internal/ads/Cw;->e2(LD4/b;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)LD4/b;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    check-cast v0, Lcom/google/android/gms/internal/ads/aC;

    .line 181
    .line 182
    new-instance v1, Lcom/google/android/gms/internal/ads/x;

    .line 183
    .line 184
    const/16 v2, 0x13

    .line 185
    .line 186
    const/4 v3, 0x0

    .line 187
    invoke-direct {v1, p0, v8, v2, v3}, Lcom/google/android/gms/internal/ads/x;-><init>(Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 188
    .line 189
    .line 190
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/uh;->H:Ljava/util/concurrent/Executor;

    .line 191
    .line 192
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/Cw;->h2(LD4/b;Lcom/google/android/gms/internal/ads/dC;Ljava/util/concurrent/Executor;)V

    .line 193
    .line 194
    .line 195
    :cond_7
    :goto_1
    return-void
.end method

.method public final m(II)V
    .locals 3

    .line 1
    if-lez p1, :cond_2

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uh;->Q:Ljava/lang/ref/WeakReference;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/view/View;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_1
    :goto_0
    new-instance v0, Lcom/google/android/gms/internal/ads/sh;

    .line 28
    .line 29
    const/4 v1, 0x1

    .line 30
    invoke-direct {v0, p0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/sh;-><init>(Lcom/google/android/gms/internal/ads/uh;III)V

    .line 31
    .line 32
    .line 33
    int-to-long p1, p2

    .line 34
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 35
    .line 36
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/uh;->J:Ljava/util/concurrent/ScheduledExecutorService;

    .line 37
    .line 38
    invoke-interface {v2, v0, p1, p2, v1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/uh;->i()V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public final declared-synchronized n()V
    .locals 8

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/uh;->T:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    new-instance v7, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/uh;->c()Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uh;->L:Lcom/google/android/gms/internal/ads/Ov;

    .line 16
    .line 17
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/Ov;->f:Ljava/util/List;

    .line 18
    .line 19
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uh;->N:Lcom/google/android/gms/internal/ads/bw;

    .line 23
    .line 24
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/uh;->M:Lcom/google/android/gms/internal/ads/hx;

    .line 25
    .line 26
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/uh;->K:Lcom/google/android/gms/internal/ads/Tv;

    .line 27
    .line 28
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/uh;->L:Lcom/google/android/gms/internal/ads/Ov;

    .line 29
    .line 30
    const/4 v6, 0x0

    .line 31
    const/4 v4, 0x1

    .line 32
    const/4 v5, 0x0

    .line 33
    invoke-virtual/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/hx;->b(Lcom/google/android/gms/internal/ads/Tv;Lcom/google/android/gms/internal/ads/Ov;ZLjava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/ArrayList;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/bw;->a(Ljava/util/ArrayList;)V

    .line 38
    .line 39
    .line 40
    goto/16 :goto_2

    .line 41
    .line 42
    :catchall_0
    move-exception v0

    .line 43
    goto/16 :goto_3

    .line 44
    .line 45
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uh;->N:Lcom/google/android/gms/internal/ads/bw;

    .line 46
    .line 47
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/uh;->M:Lcom/google/android/gms/internal/ads/hx;

    .line 48
    .line 49
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/uh;->K:Lcom/google/android/gms/internal/ads/Tv;

    .line 50
    .line 51
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/uh;->L:Lcom/google/android/gms/internal/ads/Ov;

    .line 52
    .line 53
    iget-object v4, v3, Lcom/google/android/gms/internal/ads/Ov;->m:Ljava/util/List;

    .line 54
    .line 55
    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/hx;->a(Lcom/google/android/gms/internal/ads/Tv;Lcom/google/android/gms/internal/ads/Ov;Ljava/util/List;)Ljava/util/ArrayList;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/bw;->a(Ljava/util/ArrayList;)V

    .line 60
    .line 61
    .line 62
    sget-object v0, Lcom/google/android/gms/internal/ads/Q7;->q3:Lcom/google/android/gms/internal/ads/J7;

    .line 63
    .line 64
    sget-object v1, Ll3/q;->d:Ll3/q;

    .line 65
    .line 66
    iget-object v1, v1, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 67
    .line 68
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    check-cast v0, Ljava/lang/Boolean;

    .line 73
    .line 74
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    if-eqz v0, :cond_3

    .line 79
    .line 80
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uh;->S:Lcom/google/android/gms/internal/ads/Zi;

    .line 81
    .line 82
    if-eqz v0, :cond_3

    .line 83
    .line 84
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/Zi;->b:Lcom/google/android/gms/internal/ads/Ov;

    .line 85
    .line 86
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/Ov;->m:Ljava/util/List;

    .line 87
    .line 88
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/Zi;->c:Lcom/google/android/gms/internal/ads/mr;

    .line 89
    .line 90
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/mr;->c()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    new-instance v2, Ljava/util/ArrayList;

    .line 95
    .line 96
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 97
    .line 98
    .line 99
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 104
    .line 105
    .line 106
    move-result v3

    .line 107
    if-eqz v3, :cond_1

    .line 108
    .line 109
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v3

    .line 113
    check-cast v3, Ljava/lang/String;

    .line 114
    .line 115
    const-string v4, "@gw_adnetstatus@"

    .line 116
    .line 117
    invoke-static {v3, v4, v0}, Lcom/google/android/gms/internal/ads/hx;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v3

    .line 121
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    goto :goto_0

    .line 125
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uh;->S:Lcom/google/android/gms/internal/ads/Zi;

    .line 126
    .line 127
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/Zi;->c:Lcom/google/android/gms/internal/ads/mr;

    .line 128
    .line 129
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/mr;->a()J

    .line 130
    .line 131
    .line 132
    move-result-wide v0

    .line 133
    new-instance v3, Ljava/util/ArrayList;

    .line 134
    .line 135
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 139
    .line 140
    .line 141
    move-result-object v2

    .line 142
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 143
    .line 144
    .line 145
    move-result v4

    .line 146
    if-eqz v4, :cond_2

    .line 147
    .line 148
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object v4

    .line 152
    check-cast v4, Ljava/lang/String;

    .line 153
    .line 154
    const/16 v5, 0xa

    .line 155
    .line 156
    invoke-static {v0, v1, v5}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v5

    .line 160
    const-string v6, "@gw_ttr@"

    .line 161
    .line 162
    invoke-static {v4, v6, v5}, Lcom/google/android/gms/internal/ads/hx;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v4

    .line 166
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    .line 168
    .line 169
    goto :goto_1

    .line 170
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uh;->N:Lcom/google/android/gms/internal/ads/bw;

    .line 171
    .line 172
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/uh;->M:Lcom/google/android/gms/internal/ads/hx;

    .line 173
    .line 174
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/uh;->S:Lcom/google/android/gms/internal/ads/Zi;

    .line 175
    .line 176
    iget-object v4, v2, Lcom/google/android/gms/internal/ads/Zi;->a:Lcom/google/android/gms/internal/ads/Tv;

    .line 177
    .line 178
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/Zi;->b:Lcom/google/android/gms/internal/ads/Ov;

    .line 179
    .line 180
    invoke-virtual {v1, v4, v2, v3}, Lcom/google/android/gms/internal/ads/hx;->a(Lcom/google/android/gms/internal/ads/Tv;Lcom/google/android/gms/internal/ads/Ov;Ljava/util/List;)Ljava/util/ArrayList;

    .line 181
    .line 182
    .line 183
    move-result-object v1

    .line 184
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/bw;->a(Ljava/util/ArrayList;)V

    .line 185
    .line 186
    .line 187
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uh;->N:Lcom/google/android/gms/internal/ads/bw;

    .line 188
    .line 189
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/uh;->M:Lcom/google/android/gms/internal/ads/hx;

    .line 190
    .line 191
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/uh;->K:Lcom/google/android/gms/internal/ads/Tv;

    .line 192
    .line 193
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/uh;->L:Lcom/google/android/gms/internal/ads/Ov;

    .line 194
    .line 195
    iget-object v4, v3, Lcom/google/android/gms/internal/ads/Ov;->f:Ljava/util/List;

    .line 196
    .line 197
    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/hx;->a(Lcom/google/android/gms/internal/ads/Tv;Lcom/google/android/gms/internal/ads/Ov;Ljava/util/List;)Ljava/util/ArrayList;

    .line 198
    .line 199
    .line 200
    move-result-object v1

    .line 201
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/bw;->a(Ljava/util/ArrayList;)V

    .line 202
    .line 203
    .line 204
    :goto_2
    const/4 v0, 0x1

    .line 205
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/uh;->T:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 206
    .line 207
    monitor-exit p0

    .line 208
    return-void

    .line 209
    :goto_3
    monitor-exit p0

    .line 210
    throw v0
.end method

.method public final x()V
    .locals 6

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/Q7;->m0:Lcom/google/android/gms/internal/ads/J7;

    .line 2
    .line 3
    sget-object v1, Ll3/q;->d:Ll3/q;

    .line 4
    .line 5
    iget-object v1, v1, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Ljava/lang/Boolean;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/uh;->K:Lcom/google/android/gms/internal/ads/Tv;

    .line 18
    .line 19
    const/4 v2, 0x1

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/Tv;->b:Lcom/google/android/gms/internal/ads/xc;

    .line 23
    .line 24
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/xc;->I:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v0, Lcom/google/android/gms/internal/ads/Qv;

    .line 27
    .line 28
    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/Qv;->h:Z

    .line 29
    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/q8;->d:Lcom/google/android/gms/internal/ads/f8;

    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/f8;->l()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    check-cast v0, Ljava/lang/Boolean;

    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-eqz v0, :cond_1

    .line 46
    .line 47
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uh;->P:Lcom/google/android/gms/internal/ads/e8;

    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    const/4 v1, 0x0

    .line 53
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/Cw;->N1(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/fC;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/aC;->r(LD4/b;)Lcom/google/android/gms/internal/ads/aC;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    sget-object v3, Lcom/google/android/gms/internal/ads/q8;->c:Lcom/google/android/gms/internal/ads/f8;

    .line 62
    .line 63
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/f8;->l()Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    check-cast v3, Ljava/lang/Long;

    .line 68
    .line 69
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 70
    .line 71
    .line 72
    move-result-wide v3

    .line 73
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 74
    .line 75
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/e8;->c:Ljava/util/concurrent/ScheduledExecutorService;

    .line 76
    .line 77
    invoke-static {v1, v3, v4, v5, v0}, Lcom/google/android/gms/internal/ads/Cw;->e2(LD4/b;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)LD4/b;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    check-cast v0, Lcom/google/android/gms/internal/ads/aC;

    .line 82
    .line 83
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/aC;->r(LD4/b;)Lcom/google/android/gms/internal/ads/aC;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    new-instance v1, Lcom/google/android/gms/internal/ads/u1;

    .line 88
    .line 89
    const/4 v3, 0x4

    .line 90
    invoke-direct {v1, v3}, Lcom/google/android/gms/internal/ads/u1;-><init>(I)V

    .line 91
    .line 92
    .line 93
    sget-object v3, Lcom/google/android/gms/internal/ads/se;->f:Lcom/google/android/gms/internal/ads/re;

    .line 94
    .line 95
    const-class v4, Ljava/lang/Throwable;

    .line 96
    .line 97
    invoke-static {v0, v4, v1, v3}, Lcom/google/android/gms/internal/ads/Cw;->w1(LD4/b;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/vz;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/sB;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    new-instance v1, Lcom/google/android/gms/internal/ads/Of;

    .line 102
    .line 103
    invoke-direct {v1, p0, v2}, Lcom/google/android/gms/internal/ads/Of;-><init>(Ljava/lang/Object;I)V

    .line 104
    .line 105
    .line 106
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/uh;->H:Ljava/util/concurrent/Executor;

    .line 107
    .line 108
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/Cw;->h2(LD4/b;Lcom/google/android/gms/internal/ads/dC;Ljava/util/concurrent/Executor;)V

    .line 109
    .line 110
    .line 111
    return-void

    .line 112
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uh;->L:Lcom/google/android/gms/internal/ads/Ov;

    .line 113
    .line 114
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/Ov;->c:Ljava/util/List;

    .line 115
    .line 116
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/uh;->M:Lcom/google/android/gms/internal/ads/hx;

    .line 117
    .line 118
    invoke-virtual {v4, v1, v0, v3}, Lcom/google/android/gms/internal/ads/hx;->a(Lcom/google/android/gms/internal/ads/Tv;Lcom/google/android/gms/internal/ads/Ov;Ljava/util/List;)Ljava/util/ArrayList;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    sget-object v1, Lk3/l;->A:Lk3/l;

    .line 123
    .line 124
    iget-object v1, v1, Lk3/l;->g:Lcom/google/android/gms/internal/ads/le;

    .line 125
    .line 126
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/uh;->G:Landroid/content/Context;

    .line 127
    .line 128
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/le;->a(Landroid/content/Context;)Z

    .line 129
    .line 130
    .line 131
    move-result v1

    .line 132
    if-eq v2, v1, :cond_2

    .line 133
    .line 134
    goto :goto_1

    .line 135
    :cond_2
    const/4 v2, 0x2

    .line 136
    :goto_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/uh;->N:Lcom/google/android/gms/internal/ads/bw;

    .line 137
    .line 138
    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/ads/bw;->c(ILjava/util/ArrayList;)V

    .line 139
    .line 140
    .line 141
    return-void
.end method

.method public final zza()V
    .locals 0

    return-void
.end method

.method public final zzb()V
    .locals 0

    return-void
.end method

.method public final zzc()V
    .locals 0

    return-void
.end method

.method public final zzr()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uh;->U:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

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
    sget-object v0, Lcom/google/android/gms/internal/ads/Q7;->u3:Lcom/google/android/gms/internal/ads/J7;

    .line 13
    .line 14
    sget-object v2, Ll3/q;->d:Ll3/q;

    .line 15
    .line 16
    iget-object v3, v2, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 17
    .line 18
    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Ljava/lang/Integer;

    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    iget-object v2, v2, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 29
    .line 30
    if-lez v0, :cond_1

    .line 31
    .line 32
    sget-object v1, Lcom/google/android/gms/internal/ads/Q7;->v3:Lcom/google/android/gms/internal/ads/J7;

    .line 33
    .line 34
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    check-cast v1, Ljava/lang/Integer;

    .line 39
    .line 40
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/uh;->m(II)V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/ads/Q7;->t3:Lcom/google/android/gms/internal/ads/J7;

    .line 49
    .line 50
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    check-cast v0, Ljava/lang/Boolean;

    .line 55
    .line 56
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-eqz v0, :cond_2

    .line 61
    .line 62
    new-instance v0, Lcom/google/android/gms/internal/ads/rh;

    .line 63
    .line 64
    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/rh;-><init>(Lcom/google/android/gms/internal/ads/uh;I)V

    .line 65
    .line 66
    .line 67
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/uh;->I:Ljava/util/concurrent/Executor;

    .line 68
    .line 69
    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 70
    .line 71
    .line 72
    return-void

    .line 73
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/uh;->i()V

    .line 74
    .line 75
    .line 76
    return-void
.end method
