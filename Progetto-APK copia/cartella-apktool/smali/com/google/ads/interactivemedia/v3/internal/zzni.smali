.class public final synthetic Lcom/google/ads/interactivemedia/v3/internal/zzni;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LK3/p;


# instance fields
.field public final synthetic zza:Lcom/google/ads/interactivemedia/v3/internal/zznm;

.field public final synthetic zzb:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/zznm;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzni;->zza:Lcom/google/ads/interactivemedia/v3/internal/zznm;

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzni;->zzb:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Lcom/google/ads/interactivemedia/v3/internal/zznn;

    .line 2
    .line 3
    check-cast p2, Lg4/i;

    .line 4
    .line 5
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zznk;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzni;->zza:Lcom/google/ads/interactivemedia/v3/internal/zznm;

    .line 8
    .line 9
    invoke-direct {v0, v1, p2}, Lcom/google/ads/interactivemedia/v3/internal/zznk;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zznm;Lg4/i;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/g;->getService()Landroid/os/IInterface;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    check-cast p1, Lcom/google/ads/interactivemedia/v3/internal/zzna;

    .line 17
    .line 18
    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzni;->zzb:Landroid/os/Bundle;

    .line 19
    .line 20
    invoke-interface {p1, p2, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzna;->zzf(Landroid/os/Bundle;Lcom/google/ads/interactivemedia/v3/internal/zzmx;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method
