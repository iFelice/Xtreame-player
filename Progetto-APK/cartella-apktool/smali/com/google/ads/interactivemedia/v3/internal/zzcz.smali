.class public final Lcom/google/ads/interactivemedia/v3/internal/zzcz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/internal/zzcs;


# static fields
.field private static zza:Lcom/google/ads/interactivemedia/v3/internal/zzcz;


# instance fields
.field private zzb:F

.field private zzc:Lcom/google/ads/interactivemedia/v3/internal/zzcn;

.field private zzd:Lcom/google/ads/interactivemedia/v3/internal/zzcr;


# direct methods
.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/zzco;Lcom/google/ads/interactivemedia/v3/internal/zzcm;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzcz;->zzb:F

    return-void
.end method

.method public static zzb()Lcom/google/ads/interactivemedia/v3/internal/zzcz;
    .locals 3

    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/zzcz;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzcz;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzcm;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzcm;-><init>()V

    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/zzco;

    invoke-direct {v1}, Lcom/google/ads/interactivemedia/v3/internal/zzco;-><init>()V

    new-instance v2, Lcom/google/ads/interactivemedia/v3/internal/zzcz;

    invoke-direct {v2, v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzcz;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zzco;Lcom/google/ads/interactivemedia/v3/internal/zzcm;)V

    sput-object v2, Lcom/google/ads/interactivemedia/v3/internal/zzcz;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzcz;

    :cond_0
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/zzcz;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzcz;

    return-object v0
.end method


# virtual methods
.method public final zza()F
    .locals 1

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzcz;->zzb:F

    return v0
.end method

.method public final zzc(Z)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zzdz;->zzd()Lcom/google/ads/interactivemedia/v3/internal/zzdz;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzdz;->zzi()V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zzdz;->zzd()Lcom/google/ads/interactivemedia/v3/internal/zzdz;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzdz;->zzh()V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final zzd(Landroid/content/Context;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzcl;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzcl;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Landroid/os/Handler;

    .line 7
    .line 8
    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 9
    .line 10
    .line 11
    new-instance v2, Lcom/google/ads/interactivemedia/v3/internal/zzcn;

    .line 12
    .line 13
    invoke-direct {v2, v1, p1, v0, p0}, Lcom/google/ads/interactivemedia/v3/internal/zzcn;-><init>(Landroid/os/Handler;Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/internal/zzcl;Lcom/google/ads/interactivemedia/v3/internal/zzcz;)V

    .line 14
    .line 15
    .line 16
    iput-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzcz;->zzc:Lcom/google/ads/interactivemedia/v3/internal/zzcn;

    .line 17
    .line 18
    return-void
.end method

.method public final zze(F)V
    .locals 2

    .line 1
    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzcz;->zzb:F

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzcz;->zzd:Lcom/google/ads/interactivemedia/v3/internal/zzcr;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zzcr;->zza()Lcom/google/ads/interactivemedia/v3/internal/zzcr;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzcz;->zzd:Lcom/google/ads/interactivemedia/v3/internal/zzcr;

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzcz;->zzd:Lcom/google/ads/interactivemedia/v3/internal/zzcr;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzcr;->zzb()Ljava/util/Collection;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    check-cast v1, Lcom/google/ads/interactivemedia/omid/library/adsession/zze;

    .line 34
    .line 35
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/omid/library/adsession/zze;->zzh()Lcom/google/ads/interactivemedia/v3/internal/zzdf;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {v1, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzdf;->zzl(F)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    return-void
.end method

.method public final zzf()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zzcq;->zza()Lcom/google/ads/interactivemedia/v3/internal/zzcq;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lcom/google/ads/interactivemedia/v3/internal/zzct;->zze(Lcom/google/ads/interactivemedia/v3/internal/zzcs;)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zzcq;->zza()Lcom/google/ads/interactivemedia/v3/internal/zzcq;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzct;->zzf()V

    .line 13
    .line 14
    .line 15
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zzdz;->zzd()Lcom/google/ads/interactivemedia/v3/internal/zzdz;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzdz;->zzi()V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzcz;->zzc:Lcom/google/ads/interactivemedia/v3/internal/zzcn;

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzcn;->zza()V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public final zzg()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zzdz;->zzd()Lcom/google/ads/interactivemedia/v3/internal/zzdz;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzdz;->zzj()V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zzcq;->zza()Lcom/google/ads/interactivemedia/v3/internal/zzcq;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzct;->zzg()V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzcz;->zzc:Lcom/google/ads/interactivemedia/v3/internal/zzcn;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzcn;->zzb()V

    .line 18
    .line 19
    .line 20
    return-void
.end method
