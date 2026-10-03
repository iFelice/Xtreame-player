.class public final Lcom/google/ads/interactivemedia/v3/internal/zzew;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final zza:Z

.field public final zzb:J

.field public final zzc:Ljava/util/List;

.field public final zzd:Ljava/util/List;

.field public final zze:I


# direct methods
.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/impl/data/zzbu;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p1, Lcom/google/ads/interactivemedia/v3/impl/data/zzbu;->disableAppSetId:Z

    .line 5
    .line 6
    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzew;->zza:Z

    .line 7
    .line 8
    iget-wide v0, p1, Lcom/google/ads/interactivemedia/v3/impl/data/zzbu;->appSetIdTimeoutMs:J

    .line 9
    .line 10
    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzew;->zzb:J

    .line 11
    .line 12
    iget-object v0, p1, Lcom/google/ads/interactivemedia/v3/impl/data/zzbu;->gksFirstPartyAdServers:Ljava/util/List;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzew;->zzc:Ljava/util/List;

    .line 15
    .line 16
    iget-object v0, p1, Lcom/google/ads/interactivemedia/v3/impl/data/zzbu;->gksDaiNativeXhrApps:Ljava/util/List;

    .line 17
    .line 18
    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzew;->zzd:Ljava/util/List;

    .line 19
    .line 20
    iget p1, p1, Lcom/google/ads/interactivemedia/v3/impl/data/zzbu;->gksTimeoutMs:I

    .line 21
    .line 22
    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzew;->zze:I

    .line 23
    .line 24
    return-void
.end method
