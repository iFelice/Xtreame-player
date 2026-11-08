.class public final Lcom/google/android/gms/internal/ads/B0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/M;


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/M;

.field public final b:J


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/M;J)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/B0;->a:Lcom/google/android/gms/internal/ads/M;

    .line 5
    .line 6
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/M;->zzf()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    cmp-long p1, v0, p2

    .line 11
    .line 12
    if-ltz p1, :cond_0

    .line 13
    .line 14
    const/4 p1, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p1, 0x0

    .line 17
    :goto_0
    invoke-static {p1}, Lo3/r;->J(Z)V

    .line 18
    .line 19
    .line 20
    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/B0;->b:J

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final b([BIIZ)Z
    .locals 1

    .line 1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/B0;->a:Lcom/google/android/gms/internal/ads/M;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-interface {p2, p1, v0, p3, p4}, Lcom/google/android/gms/internal/ads/M;->b([BIIZ)Z

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    return p1
.end method

.method public final c(I[BI)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/B0;->a:Lcom/google/android/gms/internal/ads/M;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/M;->c(I[BI)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final d([BIIZ)Z
    .locals 1

    .line 1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/B0;->a:Lcom/google/android/gms/internal/ads/M;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-interface {p2, p1, v0, p3, p4}, Lcom/google/android/gms/internal/ads/M;->d([BIIZ)Z

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    return p1
.end method

.method public final e([BII)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/B0;->a:Lcom/google/android/gms/internal/ads/M;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/HL;->e([BII)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final g(I[BI)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/B0;->a:Lcom/google/android/gms/internal/ads/M;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/M;->g(I[BI)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final h(I[BI)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/B0;->a:Lcom/google/android/gms/internal/ads/M;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/M;->h(I[BI)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final q(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/B0;->a:Lcom/google/android/gms/internal/ads/M;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/M;->q(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final zzc()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/B0;->a:Lcom/google/android/gms/internal/ads/M;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/M;->zzc()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final zzd()J
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/B0;->a:Lcom/google/android/gms/internal/ads/M;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/M;->zzd()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/B0;->b:J

    .line 8
    .line 9
    sub-long/2addr v0, v2

    .line 10
    return-wide v0
.end method

.method public final zze()J
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/B0;->a:Lcom/google/android/gms/internal/ads/M;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/M;->zze()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/B0;->b:J

    .line 8
    .line 9
    sub-long/2addr v0, v2

    .line 10
    return-wide v0
.end method

.method public final zzf()J
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/B0;->a:Lcom/google/android/gms/internal/ads/M;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/M;->zzf()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/B0;->b:J

    .line 8
    .line 9
    sub-long/2addr v0, v2

    .line 10
    return-wide v0
.end method

.method public final zzg(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/B0;->a:Lcom/google/android/gms/internal/ads/M;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/M;->zzg(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final zzj()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/B0;->a:Lcom/google/android/gms/internal/ads/M;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/M;->zzj()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
