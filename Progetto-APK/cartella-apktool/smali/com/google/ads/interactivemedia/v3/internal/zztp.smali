.class public final synthetic Lcom/google/ads/interactivemedia/v3/internal/zztp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/ads/interactivemedia/v3/internal/zztq;


# direct methods
.method public synthetic constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/zztq;Lcom/google/ads/interactivemedia/v3/internal/zzri;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zztp;->zza:Lcom/google/ads/interactivemedia/v3/internal/zztq;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zztp;->zza:Lcom/google/ads/interactivemedia/v3/internal/zztq;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zztq;->zzu(Lcom/google/ads/interactivemedia/v3/internal/zzri;)V

    return-void
.end method
