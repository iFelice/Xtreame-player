.class public final Lcom/google/android/gms/internal/ads/KA;
.super LS3/e;
.source "SourceFile"


# instance fields
.field public final synthetic c:Lf/b;


# direct methods
.method public constructor <init>(Lf/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/KA;->c:Lf/b;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final K()Lcom/google/android/gms/internal/ads/LA;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/KA;->c:Lf/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Lf/b;->b0()Ljava/util/Map;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lcom/google/android/gms/internal/ads/Jz;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    new-instance v2, Lcom/google/android/gms/internal/ads/LA;

    .line 13
    .line 14
    invoke-direct {v2, v0, v1}, Lcom/google/android/gms/internal/ads/LA;-><init>(Ljava/util/Map;Lcom/google/android/gms/internal/ads/Jz;)V

    .line 15
    .line 16
    .line 17
    return-object v2
.end method
