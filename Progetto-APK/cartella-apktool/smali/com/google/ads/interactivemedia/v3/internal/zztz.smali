.class final Lcom/google/ads/interactivemedia/v3/internal/zztz;
.super Lcom/google/ads/interactivemedia/v3/internal/zztq;
.source "SourceFile"


# instance fields
.field private zza:Lcom/google/ads/interactivemedia/v3/internal/zzty;


# direct methods
.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/zzri;ZLjava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)V
    .locals 0

    .line 1
    const/4 p2, 0x0

    .line 2
    invoke-direct {p0, p1, p2, p2}, Lcom/google/ads/interactivemedia/v3/internal/zztq;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zzri;ZZ)V

    .line 3
    .line 4
    .line 5
    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/zztx;

    .line 6
    .line 7
    invoke-direct {p1, p0, p4, p3}, Lcom/google/ads/interactivemedia/v3/internal/zztx;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zztz;Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zztz;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzty;

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zztq;->zzt()V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public static bridge synthetic zzA(Lcom/google/ads/interactivemedia/v3/internal/zztz;Lcom/google/ads/interactivemedia/v3/internal/zzty;)V
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zztz;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzty;

    return-void
.end method


# virtual methods
.method public final zzp()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zztz;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzty;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzus;->zzh()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final zzs()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zztz;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzty;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzty;->zzf()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final zzv(I)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zztq;->zzv(I)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    if-ne p1, v0, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zztz;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzty;

    .line 9
    .line 10
    :cond_0
    return-void
.end method
