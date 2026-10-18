.class public final synthetic Lcom/google/ads/interactivemedia/v3/impl/zzp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/ads/interactivemedia/v3/impl/zzy;

.field public final synthetic zzb:Lcom/google/ads/interactivemedia/v3/internal/zzuu;

.field public final synthetic zzc:Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;

.field public final synthetic zzd:Lcom/google/ads/interactivemedia/v3/api/AdsRequest;

.field public final synthetic zze:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/google/ads/interactivemedia/v3/impl/zzy;Lcom/google/ads/interactivemedia/v3/internal/zzuu;Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;Lcom/google/ads/interactivemedia/v3/api/AdsRequest;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzp;->zza:Lcom/google/ads/interactivemedia/v3/impl/zzy;

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/impl/zzp;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzuu;

    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/impl/zzp;->zzc:Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;

    iput-object p4, p0, Lcom/google/ads/interactivemedia/v3/impl/zzp;->zzd:Lcom/google/ads/interactivemedia/v3/api/AdsRequest;

    iput-object p5, p0, Lcom/google/ads/interactivemedia/v3/impl/zzp;->zze:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzp;->zza:Lcom/google/ads/interactivemedia/v3/impl/zzy;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzp;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzuu;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/zzp;->zzc:Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/impl/zzp;->zzd:Lcom/google/ads/interactivemedia/v3/api/AdsRequest;

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/impl/zzp;->zze:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/ads/interactivemedia/v3/impl/zzy;->zzp(Lcom/google/ads/interactivemedia/v3/internal/zzuu;Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;Lcom/google/ads/interactivemedia/v3/api/AdsRequest;Ljava/lang/String;)V

    return-void
.end method
