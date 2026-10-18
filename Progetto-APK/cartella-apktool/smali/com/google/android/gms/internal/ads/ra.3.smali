.class public final Lcom/google/android/gms/internal/ads/ra;
.super Lq3/a;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ll3/c1;

.field public final c:Ll3/J;

.field public final d:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v5, Lcom/google/android/gms/internal/ads/ab;

    .line 5
    .line 6
    invoke-direct {v5}, Lcom/google/android/gms/internal/ads/ab;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/ra;->d:J

    .line 14
    .line 15
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ra;->a:Landroid/content/Context;

    .line 16
    .line 17
    sget-object v0, Ll3/c1;->a:Ll3/c1;

    .line 18
    .line 19
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ra;->b:Ll3/c1;

    .line 20
    .line 21
    sget-object v0, Ll3/p;->f:Ll3/p;

    .line 22
    .line 23
    iget-object v1, v0, Ll3/p;->b:Ll3/n;

    .line 24
    .line 25
    new-instance v3, Ll3/d1;

    .line 26
    .line 27
    invoke-direct {v3}, Ll3/d1;-><init>()V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    new-instance v6, Ll3/j;

    .line 34
    .line 35
    move-object v0, v6

    .line 36
    move-object v2, p1

    .line 37
    move-object v4, p2

    .line 38
    invoke-direct/range {v0 .. v5}, Ll3/j;-><init>(Ll3/n;Landroid/content/Context;Ll3/d1;Ljava/lang/String;Lcom/google/android/gms/internal/ads/ab;)V

    .line 39
    .line 40
    .line 41
    const/4 p2, 0x0

    .line 42
    invoke-virtual {v6, p1, p2}, Ll3/o;->d(Landroid/content/Context;Z)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    check-cast p1, Ll3/J;

    .line 47
    .line 48
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ra;->c:Ll3/J;

    .line 49
    .line 50
    return-void
.end method


# virtual methods
.method public final b(Landroid/app/Activity;)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const-string v0, "The activity for show is null, will proceed with show using the context provided when loading the ad."

    .line 4
    .line 5
    invoke-static {v0}, Lp3/h;->g(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ra;->c:Ll3/J;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    new-instance v1, LR3/b;

    .line 13
    .line 14
    invoke-direct {v1, p1}, LR3/b;-><init>(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    invoke-interface {v0, v1}, Ll3/J;->D2(LR3/a;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :catch_0
    move-exception p1

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    return-void

    .line 24
    :goto_0
    const-string v0, "#007 Could not call remote method."

    .line 25
    .line 26
    invoke-static {v0, p1}, Lp3/h;->i(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public final c(Ll3/G0;Lcom/google/android/gms/internal/measurement/p2;)V
    .locals 7

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ra;->c:Ll3/J;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/ra;->d:J

    .line 6
    .line 7
    iput-wide v1, p1, Ll3/G0;->k:J

    .line 8
    .line 9
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ra;->b:Ll3/c1;

    .line 10
    .line 11
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ra;->a:Landroid/content/Context;

    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    invoke-static {v2, p1}, Ll3/c1;->a(Landroid/content/Context;Ll3/G0;)Ll3/b1;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    new-instance v1, Ll3/Z0;

    .line 21
    .line 22
    invoke-direct {v1, p2, p0}, Ll3/Z0;-><init>(Lcom/google/android/gms/internal/measurement/p2;Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    invoke-interface {v0, p1, v1}, Ll3/J;->S2(Ll3/b1;Ll3/z;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :catch_0
    move-exception p1

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    return-void

    .line 32
    :goto_0
    const-string v0, "#007 Could not call remote method."

    .line 33
    .line 34
    invoke-static {v0, p1}, Lp3/h;->i(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 35
    .line 36
    .line 37
    new-instance p1, Lf3/j;

    .line 38
    .line 39
    const-string v3, "Internal Error."

    .line 40
    .line 41
    const-string v4, "com.google.android.gms.ads"

    .line 42
    .line 43
    const/4 v2, 0x0

    .line 44
    const/4 v5, 0x0

    .line 45
    const/4 v6, 0x0

    .line 46
    move-object v1, p1

    .line 47
    invoke-direct/range {v1 .. v6}, Lf3/j;-><init>(ILjava/lang/String;Ljava/lang/String;LB0/w0;Lf3/p;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/measurement/p2;->h(Lf3/j;)V

    .line 51
    .line 52
    .line 53
    return-void
.end method
