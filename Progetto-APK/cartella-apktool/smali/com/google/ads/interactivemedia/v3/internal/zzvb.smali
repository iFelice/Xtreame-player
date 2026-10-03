.class public final Lcom/google/ads/interactivemedia/v3/internal/zzvb;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static zza(Ljava/util/concurrent/ExecutorService;)Lcom/google/ads/interactivemedia/v3/internal/zzuv;
    .locals 1

    .line 1
    instance-of v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzuv;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p0, Lcom/google/ads/interactivemedia/v3/internal/zzuv;

    .line 6
    .line 7
    goto :goto_1

    .line 8
    :cond_0
    instance-of v0, p0, Ljava/util/concurrent/ScheduledExecutorService;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzva;

    .line 13
    .line 14
    check-cast p0, Ljava/util/concurrent/ScheduledExecutorService;

    .line 15
    .line 16
    invoke-direct {v0, p0}, Lcom/google/ads/interactivemedia/v3/internal/zzva;-><init>(Ljava/util/concurrent/ScheduledExecutorService;)V

    .line 17
    .line 18
    .line 19
    :goto_0
    move-object p0, v0

    .line 20
    goto :goto_1

    .line 21
    :cond_1
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzux;

    .line 22
    .line 23
    invoke-direct {v0, p0}, Lcom/google/ads/interactivemedia/v3/internal/zzux;-><init>(Ljava/util/concurrent/ExecutorService;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :goto_1
    return-object p0
.end method

.method public static zzb()Ljava/util/concurrent/Executor;
    .locals 1

    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/zzua;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzua;

    return-object v0
.end method

.method public static zzc(Ljava/util/concurrent/Executor;Lcom/google/ads/interactivemedia/v3/internal/zztg;)Ljava/util/concurrent/Executor;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/zzua;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzua;

    .line 5
    .line 6
    if-ne p0, v0, :cond_0

    .line 7
    .line 8
    return-object p0

    .line 9
    :cond_0
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzuw;

    .line 10
    .line 11
    invoke-direct {v0, p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzuw;-><init>(Ljava/util/concurrent/Executor;Lcom/google/ads/interactivemedia/v3/internal/zztg;)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method
