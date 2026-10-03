.class public final Lcom/google/android/gms/internal/ads/ci;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/IJ;


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/QJ;

.field public final b:Lcom/google/android/gms/internal/ads/QJ;

.field public final c:Lcom/google/android/gms/internal/ads/QJ;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/MJ;Lcom/google/android/gms/internal/ads/MJ;Lcom/google/android/gms/internal/ads/MJ;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ci;->a:Lcom/google/android/gms/internal/ads/QJ;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ci;->b:Lcom/google/android/gms/internal/ads/QJ;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/ci;->c:Lcom/google/android/gms/internal/ads/QJ;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/bi;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ci;->a:Lcom/google/android/gms/internal/ads/QJ;

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
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ci;->b:Lcom/google/android/gms/internal/ads/QJ;

    .line 12
    .line 13
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/QJ;->zzb()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/google/android/gms/internal/ads/Fn;

    .line 18
    .line 19
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ci;->c:Lcom/google/android/gms/internal/ads/QJ;

    .line 20
    .line 21
    check-cast v2, Lcom/google/android/gms/internal/ads/Ci;

    .line 22
    .line 23
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/Ci;->a:La3/b;

    .line 24
    .line 25
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/Ci;->a(La3/b;)Lcom/google/android/gms/internal/ads/Ov;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    new-instance v3, Lcom/google/android/gms/internal/ads/bi;

    .line 30
    .line 31
    invoke-direct {v3, v0, v1, v2}, Lcom/google/android/gms/internal/ads/bi;-><init>(Lcom/google/android/gms/internal/ads/Ef;Lcom/google/android/gms/internal/ads/Fn;Lcom/google/android/gms/internal/ads/Ov;)V

    .line 32
    .line 33
    .line 34
    return-object v3
.end method

.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ci;->a()Lcom/google/android/gms/internal/ads/bi;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
