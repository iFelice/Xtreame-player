.class final Lcom/google/ads/interactivemedia/v3/internal/zzyo;
.super Lcom/google/ads/interactivemedia/v3/internal/zzwj;
.source "SourceFile"


# instance fields
.field private final zza:Lcom/google/ads/interactivemedia/v3/internal/zzwj;

.field private final zzb:Lcom/google/ads/interactivemedia/v3/internal/zzya;


# direct methods
.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/zzvr;Ljava/lang/reflect/Type;Lcom/google/ads/interactivemedia/v3/internal/zzwj;Lcom/google/ads/interactivemedia/v3/internal/zzya;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzwj;-><init>()V

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzzw;

    invoke-direct {v0, p1, p3, p2}, Lcom/google/ads/interactivemedia/v3/internal/zzzw;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zzvr;Lcom/google/ads/interactivemedia/v3/internal/zzwj;Ljava/lang/reflect/Type;)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzyo;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzwj;

    iput-object p4, p0, Lcom/google/ads/interactivemedia/v3/internal/zzyo;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzya;

    return-void
.end method


# virtual methods
.method public final bridge synthetic read(Lcom/google/ads/interactivemedia/v3/internal/zzacc;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzr()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x9

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzm()V

    .line 10
    .line 11
    .line 12
    const/4 p1, 0x0

    .line 13
    goto :goto_1

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzyo;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzya;

    .line 15
    .line 16
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzya;->zza()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Ljava/util/Collection;

    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzi()V

    .line 23
    .line 24
    .line 25
    :goto_0
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzp()Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzyo;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzwj;

    .line 32
    .line 33
    invoke-virtual {v1, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzwj;->read(Lcom/google/ads/interactivemedia/v3/internal/zzacc;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzk()V

    .line 42
    .line 43
    .line 44
    move-object p1, v0

    .line 45
    :goto_1
    return-object p1
.end method

.method public final bridge synthetic write(Lcom/google/ads/interactivemedia/v3/internal/zzace;Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p2, Ljava/util/Collection;

    .line 2
    .line 3
    if-nez p2, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzace;->zzg()Lcom/google/ads/interactivemedia/v3/internal/zzace;

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzace;->zzb()Lcom/google/ads/interactivemedia/v3/internal/zzace;

    .line 10
    .line 11
    .line 12
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzyo;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzwj;

    .line 27
    .line 28
    invoke-virtual {v1, p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzwj;->write(Lcom/google/ads/interactivemedia/v3/internal/zzace;Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzace;->zzd()Lcom/google/ads/interactivemedia/v3/internal/zzace;

    .line 33
    .line 34
    .line 35
    return-void
.end method
