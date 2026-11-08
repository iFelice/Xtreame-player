.class public final synthetic Lcom/google/ads/interactivemedia/v3/impl/zzbf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/ads/interactivemedia/v3/impl/zzbk;

.field public final synthetic zzb:Ljava/lang/String;

.field public final synthetic zzc:Lcom/google/ads/interactivemedia/v3/internal/zzvd;


# direct methods
.method public synthetic constructor <init>(Lcom/google/ads/interactivemedia/v3/impl/zzbk;Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/internal/zzvd;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzbf;->zza:Lcom/google/ads/interactivemedia/v3/impl/zzbk;

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/impl/zzbf;->zzb:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/impl/zzbf;->zzc:Lcom/google/ads/interactivemedia/v3/internal/zzvd;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzbf;->zza:Lcom/google/ads/interactivemedia/v3/impl/zzbk;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzbf;->zzb:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/zzbf;->zzc:Lcom/google/ads/interactivemedia/v3/internal/zzvd;

    invoke-virtual {v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/impl/zzbk;->zzf(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/internal/zzvd;)V

    return-void
.end method
