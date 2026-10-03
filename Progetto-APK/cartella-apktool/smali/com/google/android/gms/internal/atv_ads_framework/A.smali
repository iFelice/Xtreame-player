.class public final Lcom/google/android/gms/internal/atv_ads_framework/A;
.super Lcom/google/android/gms/internal/atv_ads_framework/r;
.source "SourceFile"


# instance fields
.field public final transient I:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/atv_ads_framework/A;->I:Ljava/lang/Object;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final b([Ljava/lang/Object;)I
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lcom/google/android/gms/internal/atv_ads_framework/A;->I:Ljava/lang/Object;

    .line 3
    .line 4
    aput-object v1, p1, v0

    .line 5
    .line 6
    const/4 p1, 0x1

    .line 7
    return p1
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/atv_ads_framework/A;->I:Ljava/lang/Object;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/atv_ads_framework/A;->I:Ljava/lang/Object;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final synthetic iterator()Ljava/util/Iterator;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/atv_ads_framework/s;

    iget-object v1, p0, Lcom/google/android/gms/internal/atv_ads_framework/A;->I:Ljava/lang/Object;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/atv_ads_framework/s;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public final l()Lcom/google/android/gms/internal/atv_ads_framework/o;
    .locals 4

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/atv_ads_framework/o;->H:Lcom/google/android/gms/internal/atv_ads_framework/m;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/atv_ads_framework/A;->I:Ljava/lang/Object;

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    new-array v2, v1, [Ljava/lang/Object;

    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    aput-object v0, v2, v3

    .line 10
    .line 11
    :goto_0
    if-ge v3, v1, :cond_1

    .line 12
    .line 13
    aget-object v0, v2, v3

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    add-int/2addr v3, v1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    .line 20
    .line 21
    const-string v1, "at index "

    .line 22
    .line 23
    invoke-static {v1, v3}, La/r;->f(Ljava/lang/String;I)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    throw v0

    .line 31
    :cond_1
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/atv_ads_framework/o;->q(I[Ljava/lang/Object;)Lcom/google/android/gms/internal/atv_ads_framework/t;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    return-object v0
.end method

.method public final p()Lcom/google/android/gms/internal/ads/gB;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/atv_ads_framework/s;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/atv_ads_framework/A;->I:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/atv_ads_framework/s;-><init>(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public final size()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/atv_ads_framework/A;->I:Ljava/lang/Object;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "["

    .line 8
    .line 9
    const-string v2, "]"

    .line 10
    .line 11
    invoke-static {v1, v0, v2}, La/r;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0
.end method
