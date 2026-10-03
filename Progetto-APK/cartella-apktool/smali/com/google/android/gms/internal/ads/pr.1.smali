.class public final Lcom/google/android/gms/internal/ads/pr;
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
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/pr;->a:Lcom/google/android/gms/internal/ads/QJ;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/pr;->b:Lcom/google/android/gms/internal/ads/QJ;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/pr;->c:Lcom/google/android/gms/internal/ads/QJ;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final zzb()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/pr;->a:Lcom/google/android/gms/internal/ads/QJ;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/QJ;->zzb()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/google/android/gms/internal/ads/dw;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/pr;->b:Lcom/google/android/gms/internal/ads/QJ;

    .line 10
    .line 11
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/QJ;->zzb()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Lcom/google/android/gms/internal/ads/pn;

    .line 16
    .line 17
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/pr;->c:Lcom/google/android/gms/internal/ads/QJ;

    .line 18
    .line 19
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/QJ;->zzb()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    check-cast v2, Lcom/google/android/gms/internal/ads/Fn;

    .line 24
    .line 25
    new-instance v3, Lcom/google/android/gms/internal/ads/or;

    .line 26
    .line 27
    invoke-direct {v3, v0, v1, v2}, Lcom/google/android/gms/internal/ads/or;-><init>(Lcom/google/android/gms/internal/ads/dw;Lcom/google/android/gms/internal/ads/pn;Lcom/google/android/gms/internal/ads/Fn;)V

    .line 28
    .line 29
    .line 30
    return-object v3
.end method
