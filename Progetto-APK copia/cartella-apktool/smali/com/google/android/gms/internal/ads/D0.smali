.class public final Lcom/google/android/gms/internal/ads/D0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/N;


# instance fields
.field public final G:J

.field public final H:Lcom/google/android/gms/internal/ads/N;


# direct methods
.method public constructor <init>(JLcom/google/android/gms/internal/ads/N;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/D0;->G:J

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/D0;->H:Lcom/google/android/gms/internal/ads/N;

    return-void
.end method


# virtual methods
.method public final f()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/D0;->H:Lcom/google/android/gms/internal/ads/N;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/N;->f()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final g(Lcom/google/android/gms/internal/ads/Y;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/C0;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p1}, Lcom/google/android/gms/internal/ads/C0;-><init>(Lcom/google/android/gms/internal/ads/D0;Lcom/google/android/gms/internal/ads/Y;Lcom/google/android/gms/internal/ads/Y;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/D0;->H:Lcom/google/android/gms/internal/ads/N;

    .line 7
    .line 8
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/N;->g(Lcom/google/android/gms/internal/ads/Y;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final h(II)Lcom/google/android/gms/internal/ads/e0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/D0;->H:Lcom/google/android/gms/internal/ads/N;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/N;->h(II)Lcom/google/android/gms/internal/ads/e0;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
