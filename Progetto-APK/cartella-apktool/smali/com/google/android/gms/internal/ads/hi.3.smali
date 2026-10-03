.class public final Lcom/google/android/gms/internal/ads/hi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/IJ;


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/QJ;

.field public final b:Lcom/google/android/gms/internal/ads/QJ;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/MJ;Lcom/google/android/gms/internal/ads/MJ;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/hi;->a:Lcom/google/android/gms/internal/ads/QJ;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/hi;->b:Lcom/google/android/gms/internal/ads/QJ;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final zzb()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hi;->a:Lcom/google/android/gms/internal/ads/QJ;

    .line 2
    .line 3
    check-cast v0, Lcom/google/android/gms/internal/ads/ai;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/ai;->a:Lcom/google/android/gms/internal/ads/xc;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/xc;->K:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v0, Lcom/google/android/gms/internal/ads/Ef;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/hi;->b:Lcom/google/android/gms/internal/ads/QJ;

    .line 12
    .line 13
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/QJ;->zzb()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Ljava/util/concurrent/Executor;

    .line 18
    .line 19
    new-instance v2, Lcom/google/android/gms/internal/ads/gi;

    .line 20
    .line 21
    invoke-direct {v2, v0, v1}, Lcom/google/android/gms/internal/ads/gi;-><init>(Lcom/google/android/gms/internal/ads/Ef;Ljava/util/concurrent/Executor;)V

    .line 22
    .line 23
    .line 24
    return-object v2
.end method
