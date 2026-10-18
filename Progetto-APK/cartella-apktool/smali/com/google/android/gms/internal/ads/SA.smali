.class public final Lcom/google/android/gms/internal/ads/SA;
.super Lcom/google/android/gms/internal/ads/zA;
.source "SourceFile"


# instance fields
.field public final transient J:Lcom/google/android/gms/internal/ads/xA;

.field public final transient K:Lcom/google/android/gms/internal/ads/uA;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/xA;Lcom/google/android/gms/internal/ads/TA;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/SA;->J:Lcom/google/android/gms/internal/ads/xA;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/SA;->K:Lcom/google/android/gms/internal/ads/uA;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final b([Ljava/lang/Object;I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/SA;->K:Lcom/google/android/gms/internal/ads/uA;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/uA;->b([Ljava/lang/Object;I)I

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
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/SA;->J:Lcom/google/android/gms/internal/ads/xA;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/xA;->get(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/SA;->K:Lcom/google/android/gms/internal/ads/uA;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/uA;->A(I)Lcom/google/android/gms/internal/ads/sA;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    return-object v0
.end method

.method public final l()Lcom/google/android/gms/internal/ads/uA;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/SA;->K:Lcom/google/android/gms/internal/ads/uA;

    return-object v0
.end method

.method public final n()Lcom/google/android/gms/internal/ads/gB;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/SA;->K:Lcom/google/android/gms/internal/ads/uA;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/uA;->A(I)Lcom/google/android/gms/internal/ads/sA;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    return-object v0
.end method

.method public final o()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    return v0
.end method

.method public final size()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/SA;->J:Lcom/google/android/gms/internal/ads/xA;

    .line 2
    .line 3
    check-cast v0, Lcom/google/android/gms/internal/ads/UA;

    .line 4
    .line 5
    iget v0, v0, Lcom/google/android/gms/internal/ads/UA;->L:I

    .line 6
    .line 7
    return v0
.end method
