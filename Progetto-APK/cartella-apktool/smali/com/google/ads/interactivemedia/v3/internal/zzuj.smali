.class public final Lcom/google/ads/interactivemedia/v3/internal/zzuj;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final zza:Lcom/google/ads/interactivemedia/v3/internal/zzrm;


# direct methods
.method public synthetic constructor <init>(ZLcom/google/ads/interactivemedia/v3/internal/zzrm;Lcom/google/ads/interactivemedia/v3/internal/zzui;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzuj;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzrm;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lcom/google/ads/interactivemedia/v3/internal/zzuu;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zztz;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzuj;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzrm;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2, p2, p1}, Lcom/google/ads/interactivemedia/v3/internal/zztz;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zzri;ZLjava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)V

    .line 7
    .line 8
    .line 9
    return-object v0
.end method
