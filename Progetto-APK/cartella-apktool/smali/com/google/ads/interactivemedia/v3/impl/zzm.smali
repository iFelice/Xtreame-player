.class public final synthetic Lcom/google/ads/interactivemedia/v3/impl/zzm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/ads/interactivemedia/v3/impl/zzy;

.field public final synthetic zzb:Lcom/google/ads/interactivemedia/v3/internal/zzuu;

.field public final synthetic zzc:Lcom/google/ads/interactivemedia/v3/api/StreamRequest;

.field public final synthetic zzd:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/google/ads/interactivemedia/v3/impl/zzy;Lcom/google/ads/interactivemedia/v3/internal/zzuu;Lcom/google/ads/interactivemedia/v3/api/StreamRequest;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzm;->zza:Lcom/google/ads/interactivemedia/v3/impl/zzy;

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/impl/zzm;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzuu;

    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/impl/zzm;->zzc:Lcom/google/ads/interactivemedia/v3/api/StreamRequest;

    iput-object p4, p0, Lcom/google/ads/interactivemedia/v3/impl/zzm;->zzd:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzm;->zza:Lcom/google/ads/interactivemedia/v3/impl/zzy;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzm;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzuu;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/zzm;->zzc:Lcom/google/ads/interactivemedia/v3/api/StreamRequest;

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/impl/zzm;->zzd:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/ads/interactivemedia/v3/impl/zzy;->zzq(Lcom/google/ads/interactivemedia/v3/internal/zzuu;Lcom/google/ads/interactivemedia/v3/api/StreamRequest;Ljava/lang/String;)V

    return-void
.end method
