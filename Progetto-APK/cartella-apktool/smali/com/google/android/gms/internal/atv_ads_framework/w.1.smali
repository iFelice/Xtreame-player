.class public final Lcom/google/android/gms/internal/atv_ads_framework/w;
.super Lcom/google/android/gms/internal/atv_ads_framework/r;
.source "SourceFile"


# instance fields
.field public final transient I:Lcom/google/android/gms/internal/atv_ads_framework/q;

.field public final transient J:Lcom/google/android/gms/internal/atv_ads_framework/o;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/atv_ads_framework/q;Lcom/google/android/gms/internal/atv_ads_framework/x;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/atv_ads_framework/w;->I:Lcom/google/android/gms/internal/atv_ads_framework/q;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/atv_ads_framework/w;->J:Lcom/google/android/gms/internal/atv_ads_framework/o;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final b([Ljava/lang/Object;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/atv_ads_framework/w;->J:Lcom/google/android/gms/internal/atv_ads_framework/o;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/atv_ads_framework/o;->b([Ljava/lang/Object;)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/atv_ads_framework/w;->I:Lcom/google/android/gms/internal/atv_ads_framework/q;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/atv_ads_framework/q;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x1

    .line 10
    return p1

    .line 11
    :cond_0
    const/4 p1, 0x0

    .line 12
    return p1
.end method

.method public final synthetic iterator()Ljava/util/Iterator;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/atv_ads_framework/w;->J:Lcom/google/android/gms/internal/atv_ads_framework/o;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/atv_ads_framework/o;->r(I)Lcom/google/android/gms/internal/atv_ads_framework/m;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    return-object v0
.end method

.method public final l()Lcom/google/android/gms/internal/atv_ads_framework/o;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/atv_ads_framework/w;->J:Lcom/google/android/gms/internal/atv_ads_framework/o;

    return-object v0
.end method

.method public final p()Lcom/google/android/gms/internal/ads/gB;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/atv_ads_framework/w;->J:Lcom/google/android/gms/internal/atv_ads_framework/o;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/atv_ads_framework/o;->r(I)Lcom/google/android/gms/internal/atv_ads_framework/m;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    return-object v0
.end method

.method public final size()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/atv_ads_framework/w;->I:Lcom/google/android/gms/internal/atv_ads_framework/q;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Map;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method
