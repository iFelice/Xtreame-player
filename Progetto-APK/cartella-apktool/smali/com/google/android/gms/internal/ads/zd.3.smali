.class public final Lcom/google/android/gms/internal/ads/zd;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/qd;

.field public final b:Landroid/content/Context;

.field public final c:Lcom/google/android/gms/internal/ads/Dd;

.field public final d:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Ll3/p;->f:Ll3/p;

    .line 6
    .line 7
    iget-object v1, v1, Ll3/p;->b:Ll3/n;

    .line 8
    .line 9
    new-instance v2, Lcom/google/android/gms/internal/ads/ab;

    .line 10
    .line 11
    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/ab;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    new-instance v1, Ll3/b;

    .line 18
    .line 19
    invoke-direct {v1, p1, p2, v2}, Ll3/b;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/ab;)V

    .line 20
    .line 21
    .line 22
    const/4 p2, 0x0

    .line 23
    invoke-virtual {v1, p1, p2}, Ll3/o;->d(Landroid/content/Context;Z)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    check-cast p1, Lcom/google/android/gms/internal/ads/qd;

    .line 28
    .line 29
    new-instance p2, Lcom/google/android/gms/internal/ads/Dd;

    .line 30
    .line 31
    invoke-direct {p2}, Lcom/google/android/gms/internal/ads/sd;-><init>()V

    .line 32
    .line 33
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    .line 36
    .line 37
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 38
    .line 39
    .line 40
    move-result-wide v1

    .line 41
    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/zd;->d:J

    .line 42
    .line 43
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zd;->b:Landroid/content/Context;

    .line 48
    .line 49
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zd;->a:Lcom/google/android/gms/internal/ads/qd;

    .line 50
    .line 51
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zd;->c:Lcom/google/android/gms/internal/ads/Dd;

    .line 52
    .line 53
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lf3/f;Lcom/google/android/gms/internal/ads/to;)V
    .locals 9

    .line 1
    const-string v0, "Context cannot be null."

    .line 2
    .line 3
    invoke-static {p0, v0}, Lcom/bumptech/glide/c;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "AdUnitId cannot be null."

    .line 7
    .line 8
    invoke-static {p1, v0}, Lcom/bumptech/glide/c;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "#008 Must be called on the main UI thread."

    .line 12
    .line 13
    invoke-static {v0}, Lcom/bumptech/glide/c;->d(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/Q7;->a(Landroid/content/Context;)V

    .line 17
    .line 18
    .line 19
    sget-object v0, Lcom/google/android/gms/internal/ads/p8;->i:Lcom/google/android/gms/internal/ads/f8;

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/f8;->l()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Ljava/lang/Boolean;

    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    sget-object v0, Lcom/google/android/gms/internal/ads/Q7;->xa:Lcom/google/android/gms/internal/ads/J7;

    .line 34
    .line 35
    sget-object v1, Ll3/q;->d:Ll3/q;

    .line 36
    .line 37
    iget-object v1, v1, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 38
    .line 39
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    check-cast v0, Ljava/lang/Boolean;

    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-eqz v0, :cond_0

    .line 50
    .line 51
    sget-object v0, Lp3/b;->a:Ljava/util/concurrent/ExecutorService;

    .line 52
    .line 53
    new-instance v8, Lk/g;

    .line 54
    .line 55
    const/4 v6, 0x6

    .line 56
    const/4 v7, 0x0

    .line 57
    move-object v1, v8

    .line 58
    move-object v2, p0

    .line 59
    move-object v3, p1

    .line 60
    move-object v4, p2

    .line 61
    move-object v5, p3

    .line 62
    invoke-direct/range {v1 .. v7}, Lk/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 63
    .line 64
    .line 65
    invoke-interface {v0, v8}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 66
    .line 67
    .line 68
    return-void

    .line 69
    :cond_0
    const-string v0, "Loading on UI thread"

    .line 70
    .line 71
    invoke-static {v0}, Lp3/h;->b(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    new-instance v0, Lcom/google/android/gms/internal/ads/zd;

    .line 75
    .line 76
    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zd;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    iget-object p0, p2, Lf3/f;->a:Ll3/G0;

    .line 80
    .line 81
    invoke-virtual {v0, p0, p3}, Lcom/google/android/gms/internal/ads/zd;->b(Ll3/G0;Lcom/google/android/gms/internal/ads/to;)V

    .line 82
    .line 83
    .line 84
    return-void
.end method


# virtual methods
.method public final b(Ll3/G0;Lcom/google/android/gms/internal/ads/to;)V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zd;->a:Lcom/google/android/gms/internal/ads/qd;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zd;->d:J

    .line 6
    .line 7
    iput-wide v1, p1, Ll3/G0;->k:J

    .line 8
    .line 9
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zd;->b:Landroid/content/Context;

    .line 10
    .line 11
    invoke-static {v1, p1}, Ll3/c1;->a(Landroid/content/Context;Ll3/G0;)Ll3/b1;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    new-instance v1, Lcom/google/android/gms/internal/ads/Ad;

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    invoke-direct {v1, p2, p0, v2}, Lcom/google/android/gms/internal/ads/Ad;-><init>(Lcom/google/android/gms/internal/measurement/p2;Ljava/lang/Object;I)V

    .line 19
    .line 20
    .line 21
    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/internal/ads/qd;->A1(Ll3/b1;Lcom/google/android/gms/internal/ads/xd;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :catch_0
    move-exception p1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    return-void

    .line 28
    :goto_0
    const-string p2, "#007 Could not call remote method."

    .line 29
    .line 30
    invoke-static {p2, p1}, Lp3/h;->i(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method
