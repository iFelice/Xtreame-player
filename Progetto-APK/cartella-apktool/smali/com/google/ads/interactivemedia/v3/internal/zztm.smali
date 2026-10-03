.class final Lcom/google/ads/interactivemedia/v3/internal/zztm;
.super Lcom/google/ads/interactivemedia/v3/internal/zzto;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/zzuu;Lcom/google/ads/interactivemedia/v3/internal/zzgn;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/zzto;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zzuu;Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final bridge synthetic zzs(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    check-cast p1, Lcom/google/ads/interactivemedia/v3/internal/zzgn;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/google/ads/interactivemedia/v3/internal/zzgn;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzai;

    .line 4
    .line 5
    iget-object v1, p1, Lcom/google/ads/interactivemedia/v3/internal/zzgn;->zzb:Ljava/util/concurrent/ExecutorService;

    .line 6
    .line 7
    iget-object v2, p1, Lcom/google/ads/interactivemedia/v3/internal/zzgn;->zzc:Landroid/content/Context;

    .line 8
    .line 9
    check-cast p2, Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {p2}, Lcom/google/ads/interactivemedia/v3/internal/zzqm;->zzc(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    if-eqz v3, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzai;->zzf()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/internal/zzvb;->zza(Ljava/util/concurrent/ExecutorService;)Lcom/google/ads/interactivemedia/v3/internal/zzuv;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzgo;

    .line 28
    .line 29
    invoke-direct {v0, v2}, Lcom/google/ads/interactivemedia/v3/internal/zzgo;-><init>(Landroid/content/Context;)V

    .line 30
    .line 31
    .line 32
    invoke-interface {p2, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzuv;->zza(Ljava/util/concurrent/Callable;)Lcom/google/ads/interactivemedia/v3/internal/zzuu;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    invoke-static {p2}, Lcom/google/ads/interactivemedia/v3/internal/zzuk;->zzb(Ljava/lang/Object;)Lcom/google/ads/interactivemedia/v3/internal/zzuu;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    :goto_0
    if-eqz p2, :cond_1

    .line 42
    .line 43
    return-object p2

    .line 44
    :cond_1
    new-instance p2, Ljava/lang/NullPointerException;

    .line 45
    .line 46
    const/4 v0, 0x1

    .line 47
    new-array v0, v0, [Ljava/lang/Object;

    .line 48
    .line 49
    const/4 v1, 0x0

    .line 50
    aput-object p1, v0, v1

    .line 51
    .line 52
    const-string p1, "AsyncFunction.apply returned null instead of a Future. Did you mean to return immediateFuture(null)? %s"

    .line 53
    .line 54
    invoke-static {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzqm;->zzb(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-direct {p2, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    throw p2
.end method

.method public final synthetic zzt(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/google/ads/interactivemedia/v3/internal/zzuu;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zztg;->zzq(Lcom/google/ads/interactivemedia/v3/internal/zzuu;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method
