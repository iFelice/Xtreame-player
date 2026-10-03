.class public final Lcom/google/ads/interactivemedia/v3/internal/zzpr;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static zza(Lg4/h;Lg4/a;)Lcom/google/ads/interactivemedia/v3/internal/zzuu;
    .locals 3

    .line 1
    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/zzpq;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-direct {p1, p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzpq;-><init>(Ljava/lang/Object;Ljava/lang/Runnable;)V

    .line 5
    .line 6
    .line 7
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zzvb;->zzb()Ljava/util/concurrent/Executor;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/zzpp;

    .line 12
    .line 13
    invoke-direct {v1, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzpp;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zzpq;)V

    .line 14
    .line 15
    .line 16
    check-cast p0, Lg4/r;

    .line 17
    .line 18
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    new-instance v2, Lg4/o;

    .line 22
    .line 23
    invoke-direct {v2, v0, v1}, Lg4/o;-><init>(Ljava/util/concurrent/Executor;Lg4/d;)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lg4/r;->b:LJ2/t;

    .line 27
    .line 28
    invoke-virtual {v0, v2}, LJ2/t;->i(Lg4/p;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Lg4/r;->o()V

    .line 32
    .line 33
    .line 34
    return-object p1
.end method
