.class public final Lcom/google/android/gms/internal/ads/kx;
.super Lcom/google/android/gms/internal/ads/e6;
.source "SourceFile"


# instance fields
.field public final synthetic G:Lcom/google/android/gms/internal/ads/pC;

.field public final synthetic H:Ll3/T0;

.field public final synthetic I:Lcom/google/android/gms/internal/ads/lx;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/lx;Lcom/google/android/gms/internal/ads/pC;Ll3/T0;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/kx;->G:Lcom/google/android/gms/internal/ads/pC;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/kx;->H:Ll3/T0;

    .line 4
    .line 5
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/kx;->I:Lcom/google/android/gms/internal/ads/lx;

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/e6;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final U2(Lcom/google/android/gms/internal/ads/c6;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/Om;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/kx;->I:Lcom/google/android/gms/internal/ads/lx;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/kx;->G:Lcom/google/android/gms/internal/ads/pC;

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/Om;-><init>(Lcom/google/android/gms/internal/ads/lx;Lcom/google/android/gms/internal/ads/pC;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/Om;->zzb(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final b3(Ll3/z0;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Ll3/z0;->l()Lf3/j;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lf3/j;->toString()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/kx;->H:Ll3/T0;

    .line 10
    .line 11
    iget-object v1, v1, Ll3/T0;->G:Ljava/lang/String;

    .line 12
    .line 13
    new-instance v2, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string v3, "Failed to load app open ad with error parcel: "

    .line 16
    .line 17
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v0, " for ad unit: "

    .line 24
    .line 25
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-static {v0}, Lp3/h;->g(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    new-instance v0, Lcom/google/android/gms/internal/ads/Om;

    .line 39
    .line 40
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/kx;->I:Lcom/google/android/gms/internal/ads/lx;

    .line 41
    .line 42
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/kx;->G:Lcom/google/android/gms/internal/ads/pC;

    .line 43
    .line 44
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/Om;-><init>(Lcom/google/android/gms/internal/ads/lx;Lcom/google/android/gms/internal/ads/pC;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/Om;->i(Ll3/z0;)V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method public final zzb(I)V
    .locals 0

    return-void
.end method
