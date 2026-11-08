.class public abstract Lcom/google/ads/interactivemedia/v3/internal/zzqf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zzf()Lcom/google/ads/interactivemedia/v3/internal/zzqf;
    .locals 1

    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/zzpv;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzpv;

    return-object v0
.end method

.method public static zzg(Ljava/lang/Object;)Lcom/google/ads/interactivemedia/v3/internal/zzqf;
    .locals 1

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    sget-object p0, Lcom/google/ads/interactivemedia/v3/internal/zzpv;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzpv;

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzqi;

    .line 7
    .line 8
    invoke-direct {v0, p0}, Lcom/google/ads/interactivemedia/v3/internal/zzqi;-><init>(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    move-object p0, v0

    .line 12
    :goto_0
    return-object p0
.end method

.method public static zzh(Ljava/lang/Object;)Lcom/google/ads/interactivemedia/v3/internal/zzqf;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzqi;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/google/ads/interactivemedia/v3/internal/zzqi;-><init>(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public abstract equals(Ljava/lang/Object;)Z
.end method

.method public abstract hashCode()I
.end method

.method public abstract zza(Lcom/google/ads/interactivemedia/v3/internal/zzpz;)Lcom/google/ads/interactivemedia/v3/internal/zzqf;
.end method

.method public abstract zzb()Ljava/lang/Object;
.end method

.method public abstract zzc(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract zzd()Ljava/lang/Object;
.end method

.method public abstract zze()Z
.end method
