.class public final synthetic Lcom/google/ads/interactivemedia/v3/impl/zzu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic zza:Lcom/google/ads/interactivemedia/v3/internal/zzgd;


# direct methods
.method public synthetic constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/zzgd;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzu;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzgd;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzu;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzgd;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzgd;->zze()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
