.class public final Lcom/google/android/gms/internal/ads/ZN;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/UN;


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/UN;

.field public final b:J


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/UN;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ZN;->a:Lcom/google/android/gms/internal/ads/UN;

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/ZN;->b:J

    return-void
.end method


# virtual methods
.method public final a(J)I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ZN;->a:Lcom/google/android/gms/internal/ads/UN;

    .line 2
    .line 3
    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/ZN;->b:J

    .line 4
    .line 5
    sub-long/2addr p1, v1

    .line 6
    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/UN;->a(J)I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    return p1
.end method

.method public final b(Lcom/google/android/gms/internal/ads/Om;Lcom/google/android/gms/internal/ads/VJ;I)I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ZN;->a:Lcom/google/android/gms/internal/ads/UN;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/UN;->b(Lcom/google/android/gms/internal/ads/Om;Lcom/google/android/gms/internal/ads/VJ;I)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    const/4 p3, -0x4

    .line 8
    if-ne p1, p3, :cond_0

    .line 9
    .line 10
    iget-wide v0, p2, Lcom/google/android/gms/internal/ads/VJ;->g:J

    .line 11
    .line 12
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/ZN;->b:J

    .line 13
    .line 14
    add-long/2addr v0, v2

    .line 15
    iput-wide v0, p2, Lcom/google/android/gms/internal/ads/VJ;->g:J

    .line 16
    .line 17
    return p3

    .line 18
    :cond_0
    return p1
.end method

.method public final zzd()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ZN;->a:Lcom/google/android/gms/internal/ads/UN;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/UN;->zzd()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final zze()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ZN;->a:Lcom/google/android/gms/internal/ads/UN;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/UN;->zze()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method
