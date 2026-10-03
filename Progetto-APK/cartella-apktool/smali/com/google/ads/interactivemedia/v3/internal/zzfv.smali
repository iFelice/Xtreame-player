.class public final synthetic Lcom/google/ads/interactivemedia/v3/internal/zzfv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg4/e;


# instance fields
.field public final synthetic zza:Lcom/google/ads/interactivemedia/v3/internal/zzgd;

.field public final synthetic zzb:Lcom/google/ads/interactivemedia/v3/internal/zzft;


# direct methods
.method public synthetic constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/zzgd;Lcom/google/ads/interactivemedia/v3/internal/zzft;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzfv;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzgd;

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzfv;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzft;

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Exception;)V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzfv;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzgd;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzfv;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzft;

    invoke-virtual {v0, v1, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzgd;->zzh(Lcom/google/ads/interactivemedia/v3/internal/zzft;Ljava/lang/Exception;)V

    return-void
.end method
