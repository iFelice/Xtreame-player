.class public final Lcom/google/ads/interactivemedia/v3/impl/zzh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/api/AdProgressInfo;


# instance fields
.field private final zza:D

.field private final zzb:D

.field private final zzc:I

.field private final zzd:I

.field private final zze:D

.field private final zzf:D


# direct methods
.method public constructor <init>(DDIIDDLjava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzh;->zza:D

    iput-wide p3, p0, Lcom/google/ads/interactivemedia/v3/impl/zzh;->zzb:D

    iput p5, p0, Lcom/google/ads/interactivemedia/v3/impl/zzh;->zzc:I

    iput p6, p0, Lcom/google/ads/interactivemedia/v3/impl/zzh;->zzd:I

    iput-wide p7, p0, Lcom/google/ads/interactivemedia/v3/impl/zzh;->zze:D

    iput-wide p9, p0, Lcom/google/ads/interactivemedia/v3/impl/zzh;->zzf:D

    return-void
.end method


# virtual methods
.method public final getAdBreakDuration()D
    .locals 2

    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzh;->zze:D

    return-wide v0
.end method

.method public final getAdPeriodDuration()D
    .locals 2

    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzh;->zzf:D

    return-wide v0
.end method

.method public final getAdPosition()I
    .locals 1

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzh;->zzc:I

    return v0
.end method

.method public final getCurrentTime()D
    .locals 2

    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzh;->zza:D

    return-wide v0
.end method

.method public final getDuration()D
    .locals 2

    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzh;->zzb:D

    return-wide v0
.end method

.method public final getTotalAds()I
    .locals 1

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzh;->zzd:I

    return v0
.end method
