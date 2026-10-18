.class public final Lcom/google/android/gms/internal/ads/lN;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/VN;


# instance fields
.field public final G:Lcom/google/android/gms/internal/ads/VN;

.field public final H:Lcom/google/android/gms/internal/ads/uA;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/VN;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/lN;->G:Lcom/google/android/gms/internal/ads/VN;

    .line 5
    .line 6
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/uA;->t(Ljava/util/Collection;)Lcom/google/android/gms/internal/ads/uA;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/lN;->H:Lcom/google/android/gms/internal/ads/uA;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final b(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lN;->G:Lcom/google/android/gms/internal/ads/VN;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/VN;->b(J)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final c()Lcom/google/android/gms/internal/ads/uA;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lN;->H:Lcom/google/android/gms/internal/ads/uA;

    return-object v0
.end method

.method public final j(Lcom/google/android/gms/internal/ads/EK;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lN;->G:Lcom/google/android/gms/internal/ads/VN;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/VN;->j(Lcom/google/android/gms/internal/ads/EK;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final zzb()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lN;->G:Lcom/google/android/gms/internal/ads/VN;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/VN;->zzb()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public final zzc()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lN;->G:Lcom/google/android/gms/internal/ads/VN;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/VN;->zzc()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public final zzp()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lN;->G:Lcom/google/android/gms/internal/ads/VN;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/VN;->zzp()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method
