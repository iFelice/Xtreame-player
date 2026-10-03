.class public final Lcom/google/android/gms/internal/ads/cp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/IJ;


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/QJ;

.field public final b:Lcom/google/android/gms/internal/ads/QJ;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/MJ;Lcom/google/android/gms/internal/ads/Yj;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cp;->a:Lcom/google/android/gms/internal/ads/QJ;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/cp;->b:Lcom/google/android/gms/internal/ads/QJ;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final zzb()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cp;->a:Lcom/google/android/gms/internal/ads/QJ;

    .line 2
    .line 3
    check-cast v0, Lcom/google/android/gms/internal/ads/LJ;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/FJ;->a:Ljava/util/Map;

    .line 6
    .line 7
    sget-object v1, Lcom/google/android/gms/internal/ads/se;->a:Lcom/google/android/gms/internal/ads/re;

    .line 8
    .line 9
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/Cw;->N0(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/cp;->b:Lcom/google/android/gms/internal/ads/QJ;

    .line 13
    .line 14
    check-cast v2, Lcom/google/android/gms/internal/ads/Yj;

    .line 15
    .line 16
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/Yj;->a:Lcom/google/android/gms/internal/ads/QJ;

    .line 17
    .line 18
    check-cast v2, Lcom/google/android/gms/internal/ads/NJ;

    .line 19
    .line 20
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/NJ;->b()Ljava/util/Set;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    new-instance v3, Lcom/google/android/gms/internal/ads/Xj;

    .line 25
    .line 26
    invoke-direct {v3, v2}, Lcom/google/android/gms/internal/ads/mI;-><init>(Ljava/util/Set;)V

    .line 27
    .line 28
    .line 29
    new-instance v2, Lcom/google/android/gms/internal/ads/bp;

    .line 30
    .line 31
    invoke-direct {v2, v0, v1, v3}, Lcom/google/android/gms/internal/ads/bp;-><init>(Ljava/util/Map;Lcom/google/android/gms/internal/ads/re;Lcom/google/android/gms/internal/ads/Xj;)V

    .line 32
    .line 33
    .line 34
    return-object v2
.end method
