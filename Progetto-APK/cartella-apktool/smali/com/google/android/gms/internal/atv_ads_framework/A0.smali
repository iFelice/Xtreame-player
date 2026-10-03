.class public final Lcom/google/android/gms/internal/atv_ads_framework/A0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/google/android/gms/internal/atv_ads_framework/z0;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/atv_ads_framework/z0;->c:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lcom/google/android/gms/internal/atv_ads_framework/z0;->c:I

    .line 8
    .line 9
    :cond_0
    return v0
.end method

.method public static b(Ljava/lang/Object;)Lcom/google/android/gms/internal/atv_ads_framework/z0;
    .locals 0

    .line 1
    check-cast p0, Lcom/google/android/gms/internal/atv_ads_framework/U;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/google/android/gms/internal/atv_ads_framework/U;->zzc:Lcom/google/android/gms/internal/atv_ads_framework/z0;

    .line 4
    .line 5
    return-object p0
.end method

.method public static c(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p0, Lcom/google/android/gms/internal/atv_ads_framework/U;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/google/android/gms/internal/atv_ads_framework/U;->zzc:Lcom/google/android/gms/internal/atv_ads_framework/z0;

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/google/android/gms/internal/atv_ads_framework/z0;->d:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/google/android/gms/internal/atv_ads_framework/z0;->d:Z

    .line 11
    .line 12
    :cond_0
    return-void
.end method
