.class public final synthetic Lcom/google/android/gms/internal/ads/qK;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/bo;


# instance fields
.field public final synthetic G:Lcom/google/android/gms/internal/ads/vK;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/vK;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/qK;->G:Lcom/google/android/gms/internal/ads/vK;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/cL;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/qK;->G:Lcom/google/android/gms/internal/ads/vK;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/vK;->C:Lcom/google/android/gms/internal/ads/ac;

    .line 6
    .line 7
    check-cast p1, Lcom/google/android/gms/internal/ads/tL;

    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/tL;->d()Lcom/google/android/gms/internal/ads/dL;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    new-instance v1, Lcom/google/android/gms/internal/ads/mL;

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    invoke-direct {v1, v2, v2}, Lcom/google/android/gms/internal/ads/mL;-><init>(II)V

    .line 17
    .line 18
    .line 19
    const/16 v2, 0xd

    .line 20
    .line 21
    invoke-virtual {p1, v0, v2, v1}, Lcom/google/android/gms/internal/ads/tL;->i(Lcom/google/android/gms/internal/ads/dL;ILcom/google/android/gms/internal/ads/bo;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method
