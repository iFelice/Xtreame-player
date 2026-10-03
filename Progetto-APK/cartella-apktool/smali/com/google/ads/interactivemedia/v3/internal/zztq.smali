.class abstract Lcom/google/ads/interactivemedia/v3/internal/zztq;
.super Lcom/google/ads/interactivemedia/v3/internal/zztw;
.source "SourceFile"


# instance fields
.field private zza:Lcom/google/ads/interactivemedia/v3/internal/zzri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzut;

    .line 2
    .line 3
    const-class v1, Lcom/google/ads/interactivemedia/v3/internal/zztq;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzut;-><init>(Ljava/lang/Class;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/zzri;ZZ)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    invoke-direct {p0, p2}, Lcom/google/ads/interactivemedia/v3/internal/zztw;-><init>(I)V

    .line 6
    .line 7
    .line 8
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zztq;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzri;

    .line 9
    .line 10
    return-void
.end method

.method private final zzA(Lcom/google/ads/interactivemedia/v3/internal/zzri;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zztw;->zzx()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-ltz p1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    const-string v1, "Less than 0 remaining futures"

    .line 11
    .line 12
    invoke-static {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzqh;->zzi(ZLjava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    if-nez p1, :cond_1

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zztw;->zzz()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zztq;->zzs()V

    .line 21
    .line 22
    .line 23
    const/4 p1, 0x2

    .line 24
    invoke-virtual {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zztq;->zzv(I)V

    .line 25
    .line 26
    .line 27
    :cond_1
    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zztq;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzri;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "futures="

    .line 10
    .line 11
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0

    .line 16
    :cond_0
    invoke-super {p0}, Lcom/google/ads/interactivemedia/v3/internal/zztg;->zza()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    return-object v0
.end method

.method public final zzb()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zztq;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzri;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {p0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zztq;->zzv(I)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zztg;->isCancelled()Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v1, 0x0

    .line 15
    :goto_0
    and-int/2addr v1, v2

    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zztg;->zzr()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzri;->zze()Lcom/google/ads/interactivemedia/v3/internal/zzss;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-eqz v2, :cond_1

    .line 31
    .line 32
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    check-cast v2, Ljava/util/concurrent/Future;

    .line 37
    .line 38
    invoke-interface {v2, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 39
    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    return-void
.end method

.method public abstract zzs()V
.end method

.method public final zzt()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zztq;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzri;

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zztq;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzri;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zztq;->zzs()V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zztp;

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    invoke-direct {v0, p0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zztp;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zztq;Lcom/google/ads/interactivemedia/v3/internal/zzri;)V

    .line 22
    .line 23
    .line 24
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/zztq;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzri;

    .line 25
    .line 26
    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/internal/zzri;->zze()Lcom/google/ads/interactivemedia/v3/internal/zzss;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    if-eqz v3, :cond_2

    .line 35
    .line 36
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    check-cast v3, Lcom/google/ads/interactivemedia/v3/internal/zzuu;

    .line 41
    .line 42
    invoke-interface {v3}, Ljava/util/concurrent/Future;->isDone()Z

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    if-eqz v4, :cond_1

    .line 47
    .line 48
    invoke-direct {p0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zztq;->zzA(Lcom/google/ads/interactivemedia/v3/internal/zzri;)V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    sget-object v4, Lcom/google/ads/interactivemedia/v3/internal/zzua;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzua;

    .line 53
    .line 54
    invoke-interface {v3, v0, v4}, Lcom/google/ads/interactivemedia/v3/internal/zzuu;->zzo(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_2
    return-void
.end method

.method public final synthetic zzu(Lcom/google/ads/interactivemedia/v3/internal/zzri;)V
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zztq;->zzA(Lcom/google/ads/interactivemedia/v3/internal/zzri;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public zzv(I)V
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zztq;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzri;

    return-void
.end method
