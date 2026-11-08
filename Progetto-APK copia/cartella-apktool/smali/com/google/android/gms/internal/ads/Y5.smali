.class public final Lcom/google/android/gms/internal/ads/Y5;
.super Lcom/google/android/gms/internal/ads/e6;
.source "SourceFile"


# instance fields
.field public final G:Lcom/google/android/gms/internal/ads/to;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/to;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/e6;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Y5;->G:Lcom/google/android/gms/internal/ads/to;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final U2(Lcom/google/android/gms/internal/ads/c6;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Y5;->G:Lcom/google/android/gms/internal/ads/to;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v1, Lcom/google/android/gms/internal/ads/Z5;

    .line 6
    .line 7
    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/Z5;-><init>(Lcom/google/android/gms/internal/ads/c6;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/to;->i(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public final b3(Ll3/z0;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Y5;->G:Lcom/google/android/gms/internal/ads/to;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Ll3/z0;->l()Lf3/j;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/to;->h(Lf3/j;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public final zzb(I)V
    .locals 0

    return-void
.end method
