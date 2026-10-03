.class public final LK3/S;
.super LK3/E;
.source "SourceFile"


# instance fields
.field public final b:LK3/s;

.field public final c:Lg4/i;

.field public final d:LK3/q;


# direct methods
.method public constructor <init>(ILK3/s;Lg4/i;LK3/q;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, LK3/T;-><init>(I)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, LK3/S;->c:Lg4/i;

    .line 5
    .line 6
    iput-object p2, p0, LK3/S;->b:LK3/s;

    .line 7
    .line 8
    iput-object p4, p0, LK3/S;->d:LK3/q;

    .line 9
    .line 10
    const/4 p3, 0x2

    .line 11
    if-ne p1, p3, :cond_1

    .line 12
    .line 13
    iget-boolean p1, p2, LK3/s;->b:Z

    .line 14
    .line 15
    if-nez p1, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 19
    .line 20
    const-string p2, "Best-effort write calls cannot pass methods that should auto-resolve missing features."

    .line 21
    .line 22
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    throw p1

    .line 26
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/api/Status;)V
    .locals 1

    .line 1
    iget-object v0, p0, LK3/S;->d:LK3/q;

    .line 2
    .line 3
    check-cast v0, LF2/G;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    iget-object v0, p1, Lcom/google/android/gms/common/api/Status;->I:Landroid/app/PendingIntent;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    new-instance v0, Lcom/google/android/gms/common/api/n;

    .line 13
    .line 14
    invoke-direct {v0, p1}, Lcom/google/android/gms/common/api/h;-><init>(Lcom/google/android/gms/common/api/Status;)V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    new-instance v0, Lcom/google/android/gms/common/api/h;

    .line 19
    .line 20
    invoke-direct {v0, p1}, Lcom/google/android/gms/common/api/h;-><init>(Lcom/google/android/gms/common/api/Status;)V

    .line 21
    .line 22
    .line 23
    :goto_0
    iget-object p1, p0, LK3/S;->c:Lg4/i;

    .line 24
    .line 25
    invoke-virtual {p1, v0}, Lg4/i;->c(Ljava/lang/Exception;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public final b(Ljava/lang/RuntimeException;)V
    .locals 1

    .line 1
    iget-object v0, p0, LK3/S;->c:Lg4/i;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lg4/i;->c(Ljava/lang/Exception;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final c(LK3/z;)V
    .locals 2

    .line 1
    iget-object v0, p0, LK3/S;->c:Lg4/i;

    .line 2
    .line 3
    :try_start_0
    iget-object v1, p0, LK3/S;->b:LK3/s;

    .line 4
    .line 5
    iget-object p1, p1, LK3/z;->H:Lcom/google/android/gms/common/api/e;

    .line 6
    .line 7
    check-cast v1, LK3/O;

    .line 8
    .line 9
    iget-object v1, v1, LK3/O;->d:LK3/r;

    .line 10
    .line 11
    iget-object v1, v1, LK3/r;->c:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v1, LK3/p;

    .line 14
    .line 15
    invoke-interface {v1, p1, v0}, LK3/p;->accept(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :catch_0
    move-exception p1

    .line 20
    invoke-virtual {v0, p1}, Lg4/i;->c(Ljava/lang/Exception;)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :catch_1
    move-exception p1

    .line 25
    invoke-static {p1}, LK3/T;->e(Landroid/os/RemoteException;)Lcom/google/android/gms/common/api/Status;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {p0, p1}, LK3/S;->a(Lcom/google/android/gms/common/api/Status;)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :catch_2
    move-exception p1

    .line 34
    throw p1
.end method

.method public final d(Lcom/google/android/gms/internal/atv_ads_framework/x0;Z)V
    .locals 3

    .line 1
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    iget-object v0, p1, Lcom/google/android/gms/internal/atv_ads_framework/x0;->I:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v0, Ljava/util/Map;

    .line 8
    .line 9
    iget-object v1, p0, LK3/S;->c:Lg4/i;

    .line 10
    .line 11
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    iget-object p2, v1, Lg4/i;->a:Lg4/r;

    .line 15
    .line 16
    new-instance v0, Lm2/l;

    .line 17
    .line 18
    const/16 v2, 0x10

    .line 19
    .line 20
    invoke-direct {v0, p1, v1, v2}, Lm2/l;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p2, v0}, Lg4/r;->a(Lg4/d;)Lg4/r;

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public final f(LK3/z;)Z
    .locals 0

    .line 1
    iget-object p1, p0, LK3/S;->b:LK3/s;

    .line 2
    .line 3
    iget-boolean p1, p1, LK3/s;->b:Z

    .line 4
    .line 5
    return p1
.end method

.method public final g(LK3/z;)[LJ3/d;
    .locals 0

    .line 1
    iget-object p1, p0, LK3/S;->b:LK3/s;

    .line 2
    .line 3
    iget-object p1, p1, LK3/s;->a:[LJ3/d;

    .line 4
    .line 5
    return-object p1
.end method
