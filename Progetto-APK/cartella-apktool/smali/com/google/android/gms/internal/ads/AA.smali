.class public final Lcom/google/android/gms/internal/ads/AA;
.super Lcom/google/android/gms/internal/ads/Lz;
.source "SourceFile"


# instance fields
.field public final synthetic J:I

.field public final K:Ljava/util/Iterator;

.field public final synthetic L:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/YA;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/AA;->J:I

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/AA;->L:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Lz;-><init>()V

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/YA;->G:Ljava/util/Set;

    .line 2
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/AA;->K:Ljava/util/Iterator;

    return-void
.end method

.method public constructor <init>(Ljava/util/Iterator;Lcom/google/android/gms/internal/ads/yz;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/AA;->J:I

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/AA;->K:Ljava/util/Iterator;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/AA;->L:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Lz;-><init>()V

    return-void
.end method
