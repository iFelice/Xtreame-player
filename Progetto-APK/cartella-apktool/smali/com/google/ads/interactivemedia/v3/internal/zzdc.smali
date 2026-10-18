.class public final Lcom/google/ads/interactivemedia/v3/internal/zzdc;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final zza:Lcom/google/ads/interactivemedia/v3/internal/zzde;

.field private final zzb:Lcom/google/ads/interactivemedia/v3/internal/zzdd;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzde;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzde;-><init>()V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzdc;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzde;

    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/zzdd;

    invoke-direct {v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzdd;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zzdb;)V

    iput-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzdc;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzdd;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/ads/interactivemedia/v3/internal/zzdb;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzdc;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzdd;

    return-object v0
.end method

.method public final zzb()Lcom/google/ads/interactivemedia/v3/internal/zzdb;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzdc;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzde;

    return-object v0
.end method
